#include "offset_profile.hpp"
#ifdef _WIN32
#ifndef NOMINMAX
#define NOMINMAX
#endif
#include <windows.h>
#else
#endif
#if __STDC_HOSTED__
#include <fstream>
#include <filesystem>
#ifndef _WIN32
#include <unistd.h>
#endif
#endif

namespace re_base {
namespace {
constexpr ReUSize max_json = 1024 * 1024;
constexpr ReUSize max_modules = 128, max_offsets = 4096;
constexpr ReUSize max_name = 256, max_text = 4096;
constexpr ReU64 max_field = 16 * 1024 * 1024;
ProfileResult fail(ProfileError code, re::ReString message) { return {code, re::re_move(message)}; }
int hex_digit(unsigned char c) {
    if (c >= '0' && c <= '9') return c - '0';
    if (c >= 'a' && c <= 'f') return c - 'a' + 10;
    if (c >= 'A' && c <= 'F') return c - 'A' + 10;
    return -1;
}
ProfileResult parse_hex(re::ReStringView text, ReU64 &out) {
    if (text.size() < 3 || text.size() > 18 || text.substr(0, 2) != "0x")
        return fail(ProfileError::invalid_value, "value must be 0x followed by 1..16 hex digits");
    ReU64 value = 0;
    for (ReUSize i = 2; i < text.size(); ++i) {
        const int digit = hex_digit(static_cast<unsigned char>(text[i]));
        if (digit < 0) return fail(ProfileError::invalid_value, "invalid hexadecimal value");
        value = value * 16 + static_cast<unsigned>(digit);
    }
    out = value;
    return {};
}
bool valid_utf8(re::ReStringView s) {
    for (ReUSize i = 0; i < s.size();) {
        const auto c = static_cast<unsigned char>(s[i++]);
        if (c < 0x80) { if (c == 0) return false; continue; }
        unsigned count = 0;
        ReU32 cp = 0, minimum = 0;
        if (c >= 0xc2 && c <= 0xdf) { count = 1; cp = c & 0x1f; minimum = 0x80; }
        else if (c >= 0xe0 && c <= 0xef) { count = 2; cp = c & 0x0f; minimum = 0x800; }
        else if (c >= 0xf0 && c <= 0xf4) { count = 3; cp = c & 7; minimum = 0x10000; }
        else return false;
        if (s.size() - i < count) return false;
        while (count--) {
            const auto tail = static_cast<unsigned char>(s[i++]);
            if ((tail & 0xc0) != 0x80) return false;
            cp = (cp << 6) | (tail & 0x3f);
        }
        if (cp < minimum || cp > 0x10ffff || (cp >= 0xd800 && cp <= 0xdfff)) return false;
    }
    return true;
}
bool valid_name(re::ReStringView s) {
    return !s.empty() && s.size() <= max_name &&
        re::re_all_of(s.begin(), s.end(), [](unsigned char c) { return c >= 0x21 && c <= 0x7e; });
}
bool valid_hash(re::ReStringView s) {
    return s.empty() || (s.size() == 64 && re::re_all_of(s.begin(), s.end(),
        [](unsigned char c) { return hex_digit(c) >= 0; }));
}
struct ParseFailure { ProfileResult result; };
class Parser {
    re::ReStringView input;
    ReUSize pos{};
    [[noreturn]] void bad(ProfileError code, re::ReString text) const {
        __builtin_trap();
    }
    void ws() { while (pos < input.size() && (input[pos] == ' ' || input[pos] == '\t' || input[pos] == '\r' || input[pos] == '\n')) ++pos; }
    bool take(char c) { ws(); if (pos < input.size() && input[pos] == c) { ++pos; return true; } return false; }
    void expect(char c) { if (!take(c)) { re::ReString msg("expected '"); msg += c; msg += "'"; bad(ProfileError::syntax, re::re_move(msg)); } }
    ReU32 unicode() {
        ReU32 value = 0;
        for (int n = 0; n < 4; ++n) {
            if (pos == input.size()) bad(ProfileError::syntax, "truncated Unicode escape");
            const int digit = hex_digit(static_cast<unsigned char>(input[pos++]));
            if (digit < 0) bad(ProfileError::syntax, "invalid Unicode escape");
            value = value * 16 + static_cast<unsigned>(digit);
        }
        return value;
    }
    static void append_utf8(re::ReString &s, ReU32 cp) {
        if (cp < 0x80) s += static_cast<char>(cp);
        else if (cp < 0x800) { s += static_cast<char>(0xc0 | (cp >> 6)); s += static_cast<char>(0x80 | (cp & 63)); }
        else if (cp < 0x10000) {
            s += static_cast<char>(0xe0 | (cp >> 12)); s += static_cast<char>(0x80 | ((cp >> 6) & 63)); s += static_cast<char>(0x80 | (cp & 63));
        } else {
            s += static_cast<char>(0xf0 | (cp >> 18)); s += static_cast<char>(0x80 | ((cp >> 12) & 63));
            s += static_cast<char>(0x80 | ((cp >> 6) & 63)); s += static_cast<char>(0x80 | (cp & 63));
        }
    }
    re::ReString string(ReUSize limit) {
        expect('"');
        re::ReString value;
        bool ended = false;
        while (pos < input.size()) {
            const auto c = static_cast<unsigned char>(input[pos++]);
            if (c == '"') { ended = true; break; }
            if (c < 0x20) bad(ProfileError::syntax, "unescaped control character");
            if (c != '\\') value += static_cast<char>(c);
            else {
                if (pos == input.size()) bad(ProfileError::syntax, "truncated escape");
                switch (input[pos++]) {
                case '"': value += '"'; break;
                case '\\': value += '\\'; break;
                case '/': value += '/'; break;
                case 'b': value += '\b'; break;
                case 'f': value += '\f'; break;
                case 'n': value += '\n'; break;
                case 'r': value += '\r'; break;
                case 't': value += '\t'; break;
                case 'u': {
                    auto cp = unicode();
                    if (cp >= 0xd800 && cp <= 0xdbff) {
                        if (input.size() - pos < 2 || input[pos] != '\\' || input[pos + 1] != 'u') bad(ProfileError::syntax, "missing low surrogate");
                        pos += 2;
                        const auto low = unicode();
                        if (low < 0xdc00 || low > 0xdfff) bad(ProfileError::syntax, "invalid low surrogate");
                        cp = 0x10000 + ((cp - 0xd800) << 10) + (low - 0xdc00);
                    } else if (cp >= 0xdc00 && cp <= 0xdfff) bad(ProfileError::syntax, "unpaired low surrogate");
                    append_utf8(value, cp);
                    break;
                }
                default: bad(ProfileError::syntax, "invalid string escape");
                }
            }
            if (value.size() > limit) bad(ProfileError::invalid_value, "string limit exceeded");
        }
        if (!ended) bad(ProfileError::syntax, "unterminated string");
        if (!valid_utf8(value)) bad(ProfileError::syntax, "invalid UTF-8 or NUL");
        return value;
    }
    ReU64 number() {
        ws();
        if (pos == input.size() || input[pos] < '0' || input[pos] > '9') bad(ProfileError::syntax, "expected unsigned integer");
        const auto start = pos;
        ReU64 value = 0;
        while (pos < input.size() && input[pos] >= '0' && input[pos] <= '9') {
            const auto digit = static_cast<unsigned>(input[pos++] - '0');
            if (value > (re::ReNumericLimits<ReU64>::max() - digit) / 10) bad(ProfileError::overflow, "integer overflow");
            value = value * 10 + digit;
        }
        if (pos - start > 1 && input[start] == '0') bad(ProfileError::syntax, "leading zero");
        return value;
    }
    template<class F> re::ReSet<re::ReString> object(ReUSize limit, F field) {
        expect('{');
        re::ReSet<re::ReString> seen;
        if (take('}')) return seen;
        do {
            auto key = string(max_name);
            if (!seen.insert(key)) bad(ProfileError::schema, "duplicate key: " + key);
            if (seen.size() > limit) bad(ProfileError::invalid_value, "object entry limit exceeded");
            expect(':'); field(key);
            if (take('}')) return seen;
            expect(',');
        } while (true);
    }
    void required(const re::ReSet<re::ReString> &seen, ReUSize count) {
        if (seen.size() != count) bad(ProfileError::schema, "missing required field");
    }
    [[noreturn]] void unknown(re::ReStringView key) const { bad(ProfileError::schema, "unknown field: " + re::ReString(key)); }
public:
    explicit Parser(re::ReStringView s) : input(s) {}
    OffsetProfile parse() {
        OffsetProfile p;
        const auto root = object(6, [&](const re::ReString &key) {
            if (key == "schema_version") {
                const auto version = number();
                if (version != 1) bad(ProfileError::schema, "unsupported schema_version");
                p.schema_version = 1;
            } else if (key == "profile_id") p.profile_id = string(max_name);
            else if (key == "game_build") p.game_build = string(max_text);
            else if (key == "provenance") p.provenance = string(max_text);
            else if (key == "modules") object(max_modules, [&](const re::ReString &name) {
                ModuleIdentity m;
                const auto fields = object(2, [&](const re::ReString &field) {
                    if (field == "sha256") m.sha256 = string(64);
                    else if (field == "image_size") m.image_size = number();
                    else unknown(field);
                });
                required(fields, 2); p.modules.insert(name, re::re_move(m));
            });
            else if (key == "offsets") object(max_offsets, [&](const re::ReString &name) {
                OffsetEntry entry;
                const auto fields = object(3, [&](const re::ReString &field) {
                    if (field == "kind") {
                        const auto kind = string(32);
                        if (kind == "module_rva") entry.kind = OffsetKind::module_rva;
                        else if (kind == "field_offset") entry.kind = OffsetKind::field_offset;
                        else bad(ProfileError::invalid_value, "unknown offset kind");
                    } else if (field == "module") entry.module = string(max_name);
                    else if (field == "value") {
                        const auto result = parse_hex(string(18), entry.value);
                        if (!result) bad(result.error, result.message);
                    } else unknown(field);
                });
                required(fields, 3); p.offsets.insert(name, re::re_move(entry));
            });
            else unknown(key);
        });
        required(root, 6); ws();
        if (pos != input.size()) bad(ProfileError::syntax, "trailing content");
        return p;
    }
};
re::ReString quote(re::ReStringView text) {
    constexpr char digits[] = "0123456789abcdef";
    re::ReString out = "\"";
    for (unsigned char c : text) {
        if (c == '"' || c == '\\') { out += '\\'; out += static_cast<char>(c); }
        else if (c < 0x20) { out += "\\u00"; out += digits[c >> 4]; out += digits[c & 15]; }
        else out += static_cast<char>(c);
    }
    out += '"';
    return out;
}
re::ReString hex_text(ReU64 value) {
    constexpr char digits[] = "0123456789abcdef";
    re::ReString text;
    do { text += digits[value & 15]; value >>= 4; } while (value);
    for (ReUSize i = 0, j = text.size() - 1; i < j; ++i, --j) { char t = text[i]; text[i] = text[j]; text[j] = t; }
    return "0x" + text;
}
}

ProfileResult validate_offset_profile(const OffsetProfile &p) {
    if (p.schema_version != 1) return fail(ProfileError::schema, "unsupported schema_version");
    if (!valid_name(p.profile_id)) return fail(ProfileError::invalid_value, "invalid profile_id");
    if (p.game_build.empty() || p.provenance.empty() || p.game_build.size() > max_text || p.provenance.size() > max_text ||
        !valid_utf8(p.game_build) || !valid_utf8(p.provenance)) return fail(ProfileError::invalid_value, "invalid build/provenance metadata");
    if (p.modules.size() > max_modules || p.offsets.size() > max_offsets) return fail(ProfileError::invalid_value, "entry limit exceeded");
    for (const auto &[name, m] : p.modules) {
        if (!valid_name(name) || !valid_hash(m.sha256)) return fail(ProfileError::invalid_value, "invalid module identity: " + name);
    }
    for (const auto &[name, e] : p.offsets) {
        if (!valid_name(name)) return fail(ProfileError::invalid_value, "invalid offset name");
        if (e.kind == OffsetKind::module_rva) {
            const auto module = p.modules.find(e.module);
            if (!module) return fail(ProfileError::module_mismatch, "RVA module absent: " + name);
            if (e.value > 0xffffffffULL) return fail(ProfileError::overflow, "RVA exceeds 32 bits: " + name);
            if ((**module).image_size && e.value >= (**module).image_size) return fail(ProfileError::invalid_value, "RVA outside module image: " + name);
        } else if (e.kind == OffsetKind::field_offset) {
            if (!e.module.empty()) return fail(ProfileError::module_mismatch, "field offset must have empty module: " + name);
            if (e.value > max_field) return fail(ProfileError::overflow, "field offset exceeds 16 MiB: " + name);
        } else return fail(ProfileError::kind_mismatch, "invalid offset kind: " + name);
    }
    return {};
}
ProfileResult parse_offset_profile(re::ReStringView text, OffsetProfile &out) {
    if (text.size() > max_json) return fail(ProfileError::invalid_value, "JSON exceeds 1 MiB");
    {
        auto p = Parser(text).parse();
        auto result = validate_offset_profile(p);
        if (!result) return result;
        out = re::re_move(p); return {};
    }
}
re::ReString serialize_offset_profile(const OffsetProfile &p) {
    if (!validate_offset_profile(p)) return {};
    re::ReString out = "{\n  \"schema_version\": 1,\n  \"profile_id\": " + quote(p.profile_id) +
        ",\n  \"game_build\": " + quote(p.game_build) + ",\n  \"provenance\": " + quote(p.provenance) + ",\n  \"modules\": {";
    bool first = true;
    for (const auto &[name, m] : p.modules) {
        if (!first) out += ',';
        first = false;
        out += "\n    " + quote(name) + ": {\"sha256\": " + quote(m.sha256) + ", \"image_size\": " + re::re_to_string(m.image_size);
        out += '}';
    }
    out += "\n  },\n  \"offsets\": {"; first = true;
    for (const auto &[name, e] : p.offsets) {
        if (!first) out += ',';
        first = false;
        out += "\n    " + quote(name) + ": {\"kind\": " + quote(e.kind == OffsetKind::module_rva ? "module_rva" : "field_offset") +
            ", \"module\": " + quote(e.module) + ", \"value\": " + quote(hex_text(e.value));
        out += '}';
    }
    out += "\n  }\n}\n";
    return out.size() <= max_json ? out : re::ReString{};
}
#if __STDC_HOSTED__
ProfileResult load_offset_profile(const std::filesystem::path &path, OffsetProfile &out) {
    std::ifstream file(path, std::ios::binary);
    if (!file) return fail(ProfileError::io, "cannot open profile");
    re::ReString text;
    re::ReArray<char, 8192> chunk{};
    while (file) {
        file.read(chunk.data(), static_cast<std::streamsize>(chunk.size()));
        const auto count = static_cast<ReUSize>(file.gcount());
        if (text.size() + count > max_json) return fail(ProfileError::invalid_value, "JSON exceeds 1 MiB");
        text.append(chunk.data(), count);
    }
    if (!file.eof() || file.bad()) return fail(ProfileError::io, "cannot read profile");
    return parse_offset_profile(text, out);
}
ProfileResult save_offset_profile(const std::filesystem::path &path, const OffsetProfile &p) {
    auto result = validate_offset_profile(p);
    if (!result) return result;
    const auto text = serialize_offset_profile(p);
    if (text.empty()) return fail(ProfileError::invalid_value, "serialized profile exceeds 1 MiB");
    if (path.empty() || path.filename().empty()) return fail(ProfileError::io, "invalid destination path");
#ifdef _WIN32
    std::filesystem::path temporary;
    HANDLE file = INVALID_HANDLE_VALUE;
    static volatile LONG sequence = 0;
    for (unsigned attempt = 0; attempt < 128; ++attempt) {
        temporary = path;
        temporary += L".tmp." + std::to_wstring(GetCurrentProcessId()) + L"." + std::to_wstring(InterlockedIncrement(&sequence));
        file = CreateFileW(temporary.c_str(), GENERIC_WRITE, 0, nullptr, CREATE_NEW, FILE_ATTRIBUTE_NORMAL, nullptr);
        if (file != INVALID_HANDLE_VALUE) break;
        if (GetLastError() != ERROR_FILE_EXISTS && GetLastError() != ERROR_ALREADY_EXISTS) return fail(ProfileError::io, "cannot create temporary profile");
    }
    if (file == INVALID_HANDLE_VALUE) return fail(ProfileError::io, "cannot reserve temporary profile");
    DWORD written = 0;
    bool okay = WriteFile(file, text.data(), static_cast<DWORD>(text.size()), &written, nullptr) != 0 && written == text.size();
    if (okay) okay = FlushFileBuffers(file) != 0;
    if (!CloseHandle(file)) okay = false;
    if (okay) okay = MoveFileExW(temporary.c_str(), path.c_str(), MOVEFILE_REPLACE_EXISTING | MOVEFILE_WRITE_THROUGH) != 0;
    if (!okay) { DeleteFileW(temporary.c_str()); return fail(ProfileError::io, "atomic profile replacement failed"); }
#else
    auto pattern = path.native() + ".tmp.XXXXXX";
    re::ReVector<char> temporary(pattern.begin(), pattern.end()); temporary.push_back('\0');
    const int fd = mkstemp(temporary.data());
    if (fd < 0) return fail(ProfileError::io, "cannot create temporary profile");
    bool okay = true;
    ReUSize offset = 0;
    while (offset < text.size()) {
        const auto written = ::write(fd, text.data() + offset, text.size() - offset);
        if (written < 0 && errno == EINTR) continue;
        if (written <= 0) { okay = false; break; }
        offset += static_cast<ReUSize>(written);
    }
    if (okay && ::fsync(fd) != 0) okay = false;
    if (::close(fd) != 0) okay = false;
    if (okay && ::rename(temporary.data(), path.c_str()) != 0) okay = false;
    if (!okay) { ::unlink(temporary.data()); return fail(ProfileError::io, "atomic profile replacement failed"); }
#endif
    return {};
}
#endif /* __STDC_HOSTED__ */
ProfileResult load_offset_profile(re::ReStringView path, OffsetProfile &out) {
#if __STDC_HOSTED__
    return load_offset_profile(std::filesystem::path(std::string(path.data(), path.size())), out);
#else
    (void)path; (void)out;
    return fail(ProfileError::io, "not supported in freestanding mode");
#endif
}
ProfileResult set_profile_offset(OffsetProfile &p, re::ReStringView key, re::ReStringView hex) {
    auto result = validate_offset_profile(p); if (!result) return result;
    if (!valid_name(key)) return fail(ProfileError::invalid_value, "invalid offset key");
    const auto found = p.offsets.find(re::ReString(key));
    if (!found) return fail(ProfileError::missing_key, "unknown offset key");
    ReU64 value{};
    result = parse_hex(hex, value); if (!result) return result;
    auto candidate = p;
    candidate.offsets[re::ReString(key)].value = value;
    result = validate_offset_profile(candidate); if (!result) return result;
    p = re::re_move(candidate); return {};
}
ProfileResult get_profile_offset(const OffsetProfile &p, re::ReStringView key, OffsetKind expected, ReU64 &out) {
    auto result = validate_offset_profile(p); if (!result) return result;
    if (!valid_name(key)) return fail(ProfileError::invalid_value, "invalid offset key");
    const auto found = p.offsets.find(re::ReString(key));
    if (!found) return fail(ProfileError::missing_key, "unknown offset key");
    if ((**found).kind != expected) return fail(ProfileError::kind_mismatch, "offset kind mismatch");
    out = (**found).value; return {};
}
ProfileResult resolve_profile_address(const OffsetProfile &p, re::ReStringView key, OffsetKind expected, ReU64 base, ReU64 &out) {
    ReU64 value{};
    auto result = get_profile_offset(p, key, expected, value); if (!result) return result;
    if (base > re::ReNumericLimits<ReU64>::max() - value) return fail(ProfileError::overflow, "address addition overflow");
    out = base + value; return {};
}
ProfileResult validate_profile_modules(const OffsetProfile &p, const re::ReMap<re::ReString, ModuleIdentity> &observed) {
    auto result = validate_offset_profile(p); if (!result) return result;
    if (p.modules.empty()) return fail(ProfileError::unverified_build, "profile has no module identities");
    for (const auto &[name, expected] : p.modules) {
        if (expected.sha256.empty() || !expected.image_size) return fail(ProfileError::unverified_build, "module identity unverified: " + name);
        const auto actual = observed.find(name);
        if (!actual) return fail(ProfileError::module_mismatch, "observed module missing: " + name);
        auto hash_eq = [](re::ReStringView a, re::ReStringView b) {
            if (a.size() != b.size()) return false;
            for (ReUSize i = 0; i < a.size(); ++i)
                if (hex_digit(static_cast<unsigned char>(a[i])) != hex_digit(static_cast<unsigned char>(b[i]))) return false;
            return true;
        };
        if (!valid_hash((**actual).sha256) || (**actual).sha256.empty() || (**actual).image_size != expected.image_size ||
            !hash_eq(expected.sha256, (**actual).sha256))
            return fail(ProfileError::module_mismatch, "module fingerprint mismatch: " + name);
    }
    return {};
}
}
