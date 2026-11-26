#include "re_compat.h"
#include "offset_profile.hpp"

namespace re_base {
namespace {
OffsetProfile fixture() {
    OffsetProfile p;
    p.profile_id = "offline-fixture";
    p.game_build = "unverified";
    p.provenance = "Analyst-authored synthetic fixture; no current game identity";
    p.modules.insert("a.dll", ModuleIdentity{"", 0});
    p.modules.insert("b.dll", ModuleIdentity{"", 0});
    p.offsets.insert("a.function", OffsetEntry{OffsetKind::module_rva, "a.dll", 0x20});
    p.offsets.insert("b.function", OffsetEntry{OffsetKind::module_rva, "b.dll", 0x40});
    p.offsets.insert("object.member", OffsetEntry{OffsetKind::field_offset, "", 0x10});
    return p;
}
re::ReString replace_one(re::ReString text, re::ReStringView before, re::ReStringView after) {
    const auto pos = text.find(before);
    assert(pos != re::ReString::npos);
    text.replace(pos, before.size(), after); return text;
}
void rejected(const re::ReString &text, const OffsetProfile &sentinel) {
    auto p = sentinel;
    const auto before = serialize_offset_profile(p);
    assert(!parse_offset_profile(text, p));
    assert(serialize_offset_profile(p) == before);
}
#if __STDC_HOSTED__
struct ScratchDirectory {
    std::filesystem::path path;
    ScratchDirectory() {
        const auto stamp = std::chrono::steady_clock::now().time_since_epoch().count();
        for (unsigned attempt = 0; attempt < 128; ++attempt) {
            path = std::filesystem::temp_directory_path() / ("offset-profile-check-" + re::re_to_string(stamp) + "-" + re::re_to_string(attempt));
            std::error_code error;
            if (std::filesystem::create_directory(path, error)) return;
        }
        { /* FREESTANDING_TODO: was throw runtime_error("cannot create profile scratch directory") */ }
    }
    ~ScratchDirectory() { std::error_code error; std::filesystem::remove_all(path, error); }
};
#endif
}
void check_offset_profile() {
    auto p = fixture();
    assert(validate_offset_profile(p));
    const auto json = serialize_offset_profile(p);
    OffsetProfile roundtrip;
    assert(parse_offset_profile(json, roundtrip));
    assert(serialize_offset_profile(roundtrip) == json);
    assert(parse_offset_profile(replace_one(json, "\"image_size\": 0", "\"image_size\": 18446744073709551615"), roundtrip));
    assert(roundtrip.modules["a.dll"].image_size == re::ReNumericLimits<ReU64>::max());
    assert(!validate_profile_modules(p, {}));
    for (const auto &text : {re::ReString{}, re::ReString("{}"), re::ReString("[]"), json + "false",
        replace_one(json, "\"schema_version\": 1,", ""),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": 2"),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": true"),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": 1.0"),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": 1e0"),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": \"1\""),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": 01"),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": -1"),
        replace_one(json, "\"schema_version\": 1", "\"schema_version\": 1, \"schema_version\": 1"),
        replace_one(json, "\"profile_id\":", "\"profile_\\u0069d\": \"duplicate\", \"profile_id\":"),
        replace_one(json, "\"schema_version\": 1", "\"unexpected\": 1"),
        replace_one(json, "\"sha256\": \"\"", "\"sha256\": \"\", \"sha256\": \"\""),
        replace_one(json, "\"sha256\": \"\"", "\"extra\": \"\""),
        replace_one(json, "\"kind\": \"module_rva\"", "\"kind\": \"module_rva\", \"kind\": \"field_offset\""),
        replace_one(json, "\"kind\": \"module_rva\"", "\"what\": \"module_rva\""),
        replace_one(json, "\"kind\": \"module_rva\"", "\"kind\": \"unknown\""),
        replace_one(json, "\"module\": \"a.dll\"", "\"module\": \"absent.dll\""),
        replace_one(json, "\"module\": \"\"", "\"module\": \"a.dll\""),
        replace_one(json, "\"value\": \"0x20\"", "\"value\": 32"),
        replace_one(json, "\"value\": \"0x20\"", "\"value\": \"0x100000000\""),
        replace_one(json, "\"value\": \"0x10\"", "\"value\": \"0x1000001\""),
        replace_one(json, "\"image_size\": 0", "\"image_size\": 18446744073709551616"),
        replace_one(json, "\"image_size\": 0", "\"image_size\": 32"),
        replace_one(json, "unverified", "\\q"), replace_one(json, "unverified", "\\u12xz"),
        replace_one(json, "unverified", "\\uD800"), replace_one(json, "unverified", "\\uDC00"),
        replace_one(json, "unverified", "\\uD800\\u0041"), replace_one(json, "unverified", "\\u0000"),
        replace_one(json, "unverified", re::ReString("\xc0\x80", 2)),
        replace_one(json, "unverified", re::ReString("\xed\xa0\x80", 3)),
        replace_one(json, "unverified", re::ReString("\xf4\x90\x80\x80", 4)),
        replace_one(json, "unverified", re::ReString("\x80", 1)),
        replace_one(json, "unverified", re::ReString("\xe2\x82", 2)),
        replace_one(json, "unverified", re::ReString("\x01", 1)),
        replace_one(json, "offline-fixture", re::re_string_fill(257, 'n')),
        replace_one(json, "unverified", re::re_string_fill(4097, 'm')), re::re_string_fill(1024 * 1024 + 1, ' ')}) rejected(text, p);
    // Decoded Unicode including surrogate pairs and all legal JSON escapes roundtrip.
    auto unicode = replace_one(json, "unverified", "\\u00e9\\uD83D\\uDE80\\n\\t\\r\\b\\f\\/\\\\\\\"");
    assert(parse_offset_profile(unicode, roundtrip));
    assert(roundtrip.game_build.substr(0, 6) == re::ReString("\xc3\xa9\xf0\x9f\x9a\x80", 6));
    assert(parse_offset_profile(serialize_offset_profile(roundtrip), roundtrip));
    // Duplicate dynamic map keys, missing offset fields, nesting and trailing comma.
    const auto entry = "\"x\":{\"kind\":\"field_offset\",\"module\":\"\",\"value\":\"0x0\"}";
    auto empty = p; empty.offsets.clear();
    const auto empty_json = serialize_offset_profile(empty);
    rejected(replace_one(empty_json, "\"offsets\": {", re::ReString("\"offsets\": {") + entry + "," + entry), p);
    rejected(replace_one(json, "\"value\": \"0x20\"", "\"value\": {\"nested\": []}"), p);
    rejected(replace_one(json, ", \"value\": \"0x20\"", ""), p);
    rejected(replace_one(json, "\"schema_version\": 1,", "\"schema_version\": 1,,"), p);
    // Entry bounds on parsed and directly constructed profiles.
    auto large = p;
    for (unsigned i = 0; i < 4097; ++i) large.offsets.insert("field." + re::re_to_string(i), OffsetEntry{});
    assert(!validate_offset_profile(large)); assert(serialize_offset_profile(large).empty());
    re::ReString many = "\"offsets\": {";
    for (unsigned i = 0; i < 4097; ++i) {
        if (i) many += ',';
        many += "\"f" + re::re_to_string(i) + "\":{\"kind\":\"field_offset\",\"module\":\"\",\"value\":\"0x0\"}";
    }
    rejected(replace_one(empty_json, "\"offsets\": {", many), p);
    large = p;
    for (unsigned i = 0; i < 129; ++i) large.modules.insert("m" + re::re_to_string(i), ModuleIdentity{});
    assert(!validate_offset_profile(large));
    auto no_modules = empty; no_modules.modules.clear();
    many = "\"modules\": {";
    for (unsigned i = 0; i < 129; ++i) {
        if (i) many += ',';
        many += "\"m" + re::re_to_string(i) + "\":{\"sha256\":\"\",\"image_size\":0}";
    }
    rejected(replace_one(serialize_offset_profile(no_modules), "\"modules\": {", many), p);
    assert(!validate_profile_modules(no_modules, {}));
    // Strict edits leave all original values untouched on error.
    for (re::ReStringView bad : {"", "0", "0X20", "0x", "0x+1", " 0x1", "0x1 ", "0xgg", "0x10000000000000000", "0x100000000"}) {
        const auto before = serialize_offset_profile(p);
        assert(!set_profile_offset(p, "a.function", bad));
        assert(serialize_offset_profile(p) == before);
    }
    assert(!set_profile_offset(p, "new.key", "0x1"));
    assert(!set_profile_offset(p, re::re_string_fill(257, 'k'), "0x1"));
    assert(!set_profile_offset(p, "a.function", re::ReStringView("0x1\0junk", 8)));
    ReU64 value = 0x12345678;
    assert(!get_profile_offset(p, "missing", OffsetKind::module_rva, value)); assert(value == 0x12345678);
    assert(!get_profile_offset(p, "object.member", OffsetKind::module_rva, value)); assert(value == 0x12345678);
    assert(!resolve_profile_address(p, "a.function", OffsetKind::module_rva, re::ReNumericLimits<ReU64>::max() - 0x1f, value));
    assert(value == 0x12345678);
    assert(resolve_profile_address(p, "a.function", OffsetKind::module_rva, re::ReNumericLimits<ReU64>::max() - 0x20, value));
    assert(value == re::ReNumericLimits<ReU64>::max());
    assert(set_profile_offset(p, "a.function", "0x0"));
    assert(resolve_profile_address(p, "a.function", OffsetKind::module_rva, 0, value)); assert(value == 0);
    assert(set_profile_offset(p, "a.function", "0xffffffff"));
    assert(set_profile_offset(p, "object.member", "0x1000000"));
    // Explicit offline measured fixture identities (ASCII "abc" and "hello").
    // These are test bytes, never claimed to be DLLs or a game build.
    p = fixture();
    p.offsets["a.function"].value = 1;
    p.offsets["b.function"].value = 2;
    p.modules["a.dll"] = {"ba7816bf8f01cfea414140de5dae2223b00361a396177a9cb410ff61f20015ad", 3};
    p.modules["b.dll"] = {"2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824", 5};
    auto observed = p.modules;
    assert(validate_profile_modules(p, observed));
    observed.at("a.dll").sha256 = "BA7816BF8F01CFEA414140DE5DAE2223B00361A396177A9CB410FF61F20015AD";
    assert(validate_profile_modules(p, observed));
    observed.at("b.dll").image_size++;
    assert(!validate_profile_modules(p, observed));
    observed = p.modules; observed.at("a.dll").sha256[0] = '0'; assert(!validate_profile_modules(p, observed));
    observed = p.modules; observed.erase("b.dll"); assert(!validate_profile_modules(p, observed));
    observed = p.modules; observed.at("b.dll").sha256.clear(); assert(!validate_profile_modules(p, observed));
    observed = p.modules; p.modules["b.dll"].image_size = 0; assert(!validate_profile_modules(p, observed));
    p.modules["b.dll"].image_size = 5; p.modules["b.dll"].sha256.clear(); assert(!validate_profile_modules(p, observed));
    // Actual edit -> atomic replacement -> reload changes the computed address.
#if __STDC_HOSTED__
    p = fixture();
    ScratchDirectory scratch;
    const auto path = scratch.path / "profile.json";
    assert(save_offset_profile(path, p));
    assert(load_offset_profile(path, roundtrip));
    assert(resolve_profile_address(roundtrip, "a.function", OffsetKind::module_rva, 0x1000, value)); assert(value == 0x1020);
    assert(set_profile_offset(roundtrip, "a.function", "0x34"));
    assert(save_offset_profile(path, roundtrip));
    assert(load_offset_profile(path, p));
    assert(resolve_profile_address(p, "a.function", OffsetKind::module_rva, 0x1000, value)); assert(value == 0x1034);
    const auto good = serialize_offset_profile(p);
    auto invalid_p = p; invalid_p.schema_version = 0;
    assert(!save_offset_profile(path, invalid_p));
    assert(load_offset_profile(path, roundtrip)); assert(serialize_offset_profile(roundtrip) == good);
    assert(!save_offset_profile(scratch.path, p)); // Replacement of directory must fail.
    assert(!save_offset_profile(scratch.path / "missing" / "profile.json", p));
    assert(load_offset_profile(path, roundtrip)); assert(serialize_offset_profile(roundtrip) == good);
    assert(!load_offset_profile(scratch.path / "absent.json", p)); assert(serialize_offset_profile(p) == good);
    { std::ofstream bad(path, std::ios::binary); bad << "{}"; }
    assert(!load_offset_profile(path, p)); assert(serialize_offset_profile(p) == good);
    { std::ofstream bad(path, std::ios::binary); bad << re::re_string_fill(1024 * 1024 + 1, ' '); }
    assert(!load_offset_profile(path, p)); assert(serialize_offset_profile(p) == good);
    for (const auto &entry_path : std::filesystem::directory_iterator(scratch.path)) assert(entry_path.path() == path);
#endif
    // Invalid directly constructed kinds/names/UTF-8 cannot bypass parsing validation.
    auto invalid = fixture(); invalid.offsets["a.function"].kind = static_cast<OffsetKind>(9); assert(!validate_offset_profile(invalid));
    invalid = fixture(); invalid.provenance = re::ReString("\xc0\x80", 2); assert(!validate_offset_profile(invalid));
    invalid = fixture(); invalid.modules["a.dll"].sha256 = "not a digest"; assert(!validate_offset_profile(invalid));
    invalid = fixture(); invalid.profile_id = "bad name"; assert(!validate_offset_profile(invalid));
}
}
