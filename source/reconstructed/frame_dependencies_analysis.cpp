#include "frame_dependencies_analysis.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva rva;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
template <class F> FrameDependencyResult protect(F &&f) {
    FrameDependencyResult result;
    {
        f(result);
    }
    return result;
}
template <class T, class F, class... A> T effect(Rva r, const F &f, A &&...args) {
    if (!f)
        stop(UnityStatus::missing_dependency, r);
    auto v = f(re::re_forward<A>(args)...);
    if (!v)
        stop(UnityStatus::missing_dependency, r);
    return re::re_move(*v);
}
UnityValue external(const FrameDependencyApi &a, Rva r,
                    std::initializer_list<UnityValue> args = {}) {
    return effect<UnityValue>(r, a.unity.external, r,
                              re::ReSpan<const UnityValue>(args.begin(), args.size()));
}
template <class T>
T get(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    auto v = external(a, r, args);
    if (auto p = re::re_get_if<T>(&v))
        return *p;
    stop(UnityStatus::callback_type_mismatch, r);
}
void call(const FrameDependencyApi &a, Rva r, std::initializer_list<UnityValue> args = {}) {
    (void)get<re::ReMonostate>(a, r, args);
}
void prepare(FrameDependencyState &s, const FrameDependencyApi &a, Rva r) {
    const auto specs = frame_dependency_cache_specs();
    const auto it = re::re_find_if(specs.begin(), specs.end(),
                                 [&](const auto &spec) { return spec.wrapper == r; });
    if (!it)
        stop(UnityStatus::malformed_input, r);
    auto &cache = s.caches[it->flags];
    if (!(cache.flags & 1)) {
        cache.flags |= 1;
        if (!a.unity.resolve_target)
            stop(UnityStatus::missing_dependency, r);
        const auto resolved = a.unity.resolve_target(*it);
        if (resolved.status != MetadataStatus::complete)
            stop(UnityStatus::unresolved_target, r);
        cache.target = resolved.value;
    }
    if (!(cache.flags & 2)) {
        cache.flags |= 2;
        if (!a.unity.detect_context)
            stop(UnityStatus::missing_dependency, r);
        if (!a.unity.detect_context(*it, cache.target))
            stop(UnityStatus::missing_dependency, r);
        cache.context_detected = true;
    }
}
void ensure_directory(FrameDependencyState &s, const FrameDependencyApi &a) {
    const auto attr = effect<FrameAttributeResult>(0x2d5cd8, a.attributes_2d5cd8, s.directory);
    if (attr.status != 0 || attr.attributes == -1 || (attr.attributes & 0x10) == 0) {
        prepare(s, a, 0x2d57f4);
        (void)effect<bool>(0x2d57f4, a.create_directory_2d57f4, s.directory);
    }
}
re::ReString path(FrameDependencyState &s, const FrameDependencyApi &a, bool stash) {
    ensure_directory(s, a);
    return s.directory + "\\" + (stash ? "StashList.bin" : "SamSitelist.bin");
}
bool exists(FrameDependencyState &s, const FrameDependencyApi &a, const re::ReString &p) {
    prepare(s, a, 0x2d5be4);
    return effect<bool>(0x2d5be4, a.exists_2d5be4, p);
}
void check_result(const FrameDependencyResult &r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
// [C] COMISS + JBE does not take the greater-than branch for unordered values.
bool greater(float x, float y) {
    return x > y;
}
} // namespace
re::ReSpan<const UnityCacheSpec> frame_dependency_cache_specs() {
    static constexpr UnityCacheSpec specs[] = {{0x2d5be4, 0x3d6cd0, 0x3d6cc8, 0x3d6ce0, 0x334a90, 0,
                                                "System.IO", "File", "Exists", "", 1, -1},
                                               {0x2d57f4, 0x3d6820, 0x3d6818, 0x3d6830, 0x3349ac, 0,
                                                "System.IO", "FileSystem", "CreateDirectory", "",
                                                -1, -1},
                                               {0x2d61b4, 0x3d6a00, 0x3d69f8, 0x3d6a10, 0x334a90, 0,
                                                "System.IO", "File", "ReadAllBytes", "", 1, -1},
                                               {0x2d5e90, 0x3d6640, 0x3d6638, 0x3d6650, 0x334a90, 0,
                                                "System.IO", "Directory", "GetFiles", "", 2, -1}};
    return specs;
}
MetadataResult resolve_frame_dependency_target(const UnityMetadataAdapter &a,
                                               const UnityCacheSpec &spec) {
    if (spec.resolver != 0x334a90)
        return resolve_unity_backend_target(a, spec);
    if (!a.image || !a.intern)
        return {0, MetadataStatus::missing_dependency, 0};
    const auto klass =
        resolve_class_334224(a.metadata, a.intern(spec.klass), a.intern(spec.name_space), a.limits);
    if (klass.status != MetadataStatus::complete)
        return klass;
    const auto method = select_counted_method_334a90(*a.image, a.metadata, klass.value,
                                                     a.intern(spec.method), spec.count, a.limits);
    if (method.status != MetadataStatus::complete)
        return method;
    const auto pointer = a.image->read<Address>(method.value);
    return pointer ? MetadataResult{*pointer, MetadataStatus::complete, method.visited}
                   : MetadataResult{0, MetadataStatus::unreadable_snapshot, method.visited};
}
FrameDependencyResult prepare_frame_dependency_cache(FrameDependencyState &s,
                                                     const FrameDependencyApi &a, Rva r) {
    return protect([&](auto &) { prepare(s, a, r); });
}
ReI32 frame_parse_integer_2d8cc0(re::ReStringView text, ReI32 base,
                                        ReUSize *consumed) {
    // [I] Restrict API bases to recovered digit alphabet; native caller uses10.
    if (base < 2 || base > 16)
        { __builtin_trap(); }
    ReUSize i = 0;
    auto at = [&](ReUSize n) -> unsigned char {
        return n < text.size() ? static_cast<unsigned char>(text[n]) : 0;
    };
    while (at(i) == ' ' || (at(i) >= 9 && at(i) <= 13))
        ++i;
    const bool negative = at(i) == '-';
    if (negative || at(i) == '+')
        ++i;
    ReU32 bits = 0;
    for (;;) {
        const auto c = at(i);
        int d;
        if (c >= '0' && c <= '9')
            d = c - '0';
        else if (c >= 'a' && c <= 'f')
            d = c - 'a' + 10;
        else if (c >= 'A' && c <= 'F')
            d = c - 'A' + 10;
        else
            break;
        if (d >= base)
            break;
        bits = bits * static_cast<ReU32>(base) + static_cast<ReU32>(d);
        ++i;
    }
    if (consumed)
        *consumed = i;
    if (negative)
        bits = 0u - bits;
    return re::re_bit_cast<ReI32>(bits);
}
re::ReVector<re::ReString> frame_split_2d93fc(re::ReStringView text, re::ReStringView delimiter) {
    if (delimiter.empty())
        return {re::ReString(text)};
    re::ReVector<re::ReString> out;
    ReUSize start = 0;
    for (;;) {
        const auto end = text.find(delimiter, start);
        if (end == re::ReStringView::npos) {
            out.emplace_back(text.substr(start));
            break;
        }
        out.emplace_back(text.substr(start, end - start));
        start = end + delimiter.size();
    }
    return out;
}
FrameDependencyResult decode_frame_settings_2d8e44(FrameSettingsFile &file) {
    return protect([&](auto &result) {
        file.values.clear();
        ReUSize start = 0;
        while (start < file.bytes.size()) {
            auto end = file.bytes.find('\n', start);
            if (end == re::ReString::npos)
                end = file.bytes.size();
            const auto equal = file.bytes.find('=', start);
            if (equal != re::ReString::npos && equal < end) {
                // [C] 3ca9c0 is an unsigned32 parser, saturating to UINT32_MAX
                // on overflow and applying negation only without overflow.
                auto i = start;
                auto at = [&](ReUSize n) -> unsigned char {
                    return n < file.bytes.size() ? static_cast<unsigned char>(file.bytes[n]) : 0;
                };
                while (at(i) == ' ' || (at(i) >= 9 && at(i) <= 13))
                    ++i;
                const bool negative = at(i) == '-';
                if (negative || at(i) == '+')
                    ++i;
                const auto digits = i;
                ReU32 value = 0;
                bool overflow = false;
                while (at(i) >= '0' && at(i) <= '9') {
                    const auto digit = ReU32(at(i) - '0');
                    if (value > 0xffffffffu / 10u ||
                        (value == 0xffffffffu / 10u && digit > 0xffffffffu % 10u))
                        overflow = true;
                    if (!overflow)
                        value = value * 10u + digit;
                    ++i;
                }
                if (digits == i)
                    i = start;
                if (overflow)
                    value = 0xffffffffu;
                else if (negative)
                    value = 0u - value;
                if (at(i) == '=') {
                    file.values.insert(re::re_bit_cast<ReI32>(value),
                                        file.bytes.substr(equal + 1, end - equal - 1));
                    ++result.accepted;
                } else
                    ++result.rejected;
            } else
                ++result.rejected;
            start = end + 1;
        }
        file.changed = false;
    });
}
namespace {
void read_settings(FrameDependencyState &s, const FrameDependencyApi &a, FrameSettingsFile &file) {
    if (!exists(s, a, file.path))
        return;
    prepare(s, a, 0x2d61b4);
    const auto data =
        effect<re::ReOptional<re::ReVector<ReByte>>>(0x2d61b4, a.read_bytes_2d61b4, file.path);
    if (!data)
        return;
    re::ReString text;
    text.reserve(data->size());
    for (const auto b : *data)
        text.push_back(static_cast<char>(static_cast<unsigned char>(b)));
    file.bytes = re::re_move(text);
    check_result(decode_frame_settings_2d8e44(file));
    const auto nul = file.bytes.find('\0');
    file.hash = static_cast<ReU32>(
        entity_name_hash_2d6354(re::ReStringView(file.bytes).substr(0, nul)));
}
} // namespace
FrameDependencyResult read_frame_settings_2d9068(FrameDependencyState &s,
                                                 const FrameDependencyApi &a) {
    return protect([&](auto &) { read_settings(s, a, s.settings); });
}
FrameDependencyResult reload_frame_settings_2dd5e8(FrameDependencyState &s,
                                                   const FrameDependencyApi &a) {
    return protect([&](auto &) {
        ensure_directory(s, a);
        if (s.selected_config.empty())
            s.selected_config = "DefaultCfg.bin";
        s.settings.path = s.directory + "\\" + s.selected_config;
        check_result(read_frame_settings_2d9068(s, a));
    });
}
FrameDependencyResult initialize_frame_settings_2dd284_head(FrameDependencyState &s,
                                                            const FrameDependencyApi &a) {
    return protect([&](auto &) {
        // [C] The initial constructor reads into a fresh temporary, then assigns
        // the entire native object into global3d6dd0 before the tail.
        ensure_directory(s, a);
        if (s.selected_config.empty())
            s.selected_config = "DefaultCfg.bin";
        FrameSettingsFile local;
        local.path = s.directory + "\\" + s.selected_config;
        read_settings(s, a, local);
        s.settings = re::re_move(local);
        // [U] Tail2dd2ec must run separately; this entry's name explicitly says head.
    });
}
FrameDependencyResult frame_config_path(FrameDependencyState &s, const FrameDependencyApi &a,
                                        bool stash, re::ReString &out) {
    return protect([&](auto &) { out = path(s, a, stash); });
}
FrameDependencyResult load_frame_config(FrameDependencyState &s, const FrameDependencyApi &a,
                                        bool stash) {
    return protect([&](auto &result) {
        const auto p = path(s, a, stash);
        if (!exists(s, a, p))
            return;
        prepare(s, a, 0x2d61b4);
        const auto bytes =
            effect<re::ReOptional<re::ReVector<ReByte>>>(0x2d61b4, a.read_bytes_2d61b4, p);
        if (!bytes)
            return;
        // [C] Native string is constructed with array+0x20 and qword length+0x18;
        // embedded NULs survive splitting, but integer parsing stops at the NUL.
        re::ReString text;
        text.reserve(bytes->size());
        for (const auto b : *bytes)
            text.push_back(static_cast<char>(static_cast<unsigned char>(b)));
        re::ReVector<FrameConfigRecord> parsed;
        for (const auto &record : frame_split_2d93fc(text, ",")) {
            const auto fields = frame_split_2d93fc(record, "|");
            if (fields.size() != 7) {
                ++result.rejected;
                continue;
            }
            FrameConfigRecord r;
            r.id = frame_parse_integer_2d8cc0(fields[0]);
            // [C] Native conversion order: z(field3),y(field2),x(field1).
            r.position.z = static_cast<float>(frame_parse_integer_2d8cc0(fields[3])) / 1000.0f;
            r.position.y = static_cast<float>(frame_parse_integer_2d8cc0(fields[2])) / 1000.0f;
            r.position.x = static_cast<float>(frame_parse_integer_2d8cc0(fields[1])) / 1000.0f;
            r.field4 = frame_parse_integer_2d8cc0(fields[4]);
            r.field5 = frame_parse_integer_2d8cc0(fields[5]);
            r.label = fields[6];
            parsed.push_back(re::re_move(r));
            ++result.accepted;
        }
        // [I] Owned vector assignment adapts MSVC vector copy/reallocation/destruction.
        // [C] Replacement happens even when all records were rejected.
        (stash ? s.stashes : s.samsites) = re::re_move(parsed);
    });
}
FrameDependencyResult refresh_frame_configs_2d91c4(FrameDependencyState &s,
                                                   const FrameDependencyApi &a) {
    return protect([&](auto &) {
        ensure_directory(s, a);
        prepare(s, a, 0x2d5e90);
        const auto files = effect<re::ReVector<re::ReOptional<re::ReString>>>(0x2d5e90, a.files_2d5e90,
                                                                           s.directory, "*.bin");
        re::ReVector<re::ReString> names;
        for (const auto &f : files)
            if (f) {
                const auto slash = f->find_last_of("/\\");
                auto n = f->substr(slash == re::ReString::npos ? 0 : slash + 1);
                if (n != "StashList.bin" && n != "SamSitelist.bin")
                    names.push_back(re::re_move(n));
            }
        // [C] Native sort comparator uses string lexicographic ordering. Owned
        // stable sort only differs in identity of indistinguishable equal strings.
        re::re_sort(names.begin(), names.end());
        s.configs = re::re_move(names);
        if (s.selected_config.empty())
            s.selected_config = "DefaultCfg.bin";
    });
}
FrameDependencyResult frame_timer_2e5b7c(FrameDependencyState &s, const FrameDependencyApi &a,
                                         Address key, float interval, bool &out) {
    return protect([&](auto &) {
        const float old = s.deadlines[key];
        const auto now = effect<float>(0x2e6240, a.time, Rva(0x2e6240));
        out = false;
        if (!greater(now, old))
            return;
        const auto second = effect<float>(0x2e6240, a.time, Rva(0x2e6240));
        s.deadlines[key] = second + interval;
        out = true;
    });
}
FrameDependencyResult frame_key_edge_2e89e4(FrameDependencyState &s, const FrameDependencyApi &a,
                                            Address key, bool respect_capture, bool &out) {
    return protect([&](auto &) {
        const auto captured = effect<bool>(0x2e6744, a.input_captured_2e6744);
        out = false;
        if (captured && respect_capture)
            return;
        auto &h = s.hotkeys[key];
        const auto down = effect<bool>(0x2e5e4c, a.key_2e5e4c, h.key, false);
        if (!down) {
            h.latched = false;
            return;
        }
        if (!h.latched) {
            h.latched = true;
            out = true;
        }
    });
}
FrameDependencyResult frame_notify_37f918(FrameDependencyState &s, const FrameDependencyApi &a,
                                          re::ReString text, ReI32 kind, ReI32 extra) {
    return protect([&](auto &) {
        const auto t = effect<float>(0x31581c, a.time, Rva(0x31581c));
        s.notifications.push_back({re::re_move(text), kind, t + 6.0f, extra});
    });
}
FrameDependencyResult update_frame_raids_36f788(FrameDependencyState &s,
                                                const FrameDependencyApi &a,
                                                re::ReOptional<float> raidtime) {
    return protect([&](auto &) {
        if (!s.raid_container_present)
            return;
        if (effect<bool>(0x2e0e4c, a.disconnected_2e0e4c) ||
            effect<Address>(0x2e069c, a.player_2e069c) == 0) {
            s.raids.clear();
            return;
        }
        const auto now = effect<float>(0x31581c, a.time, Rva(0x31581c));
        for (ReUSize i = 0; i < s.raids.size();) {
            auto copy = s.raids[i];
            const auto elapsed = now - copy.last_time;
            if (!raidtime)
                stop(UnityStatus::missing_dependency, 0x3fcb48);
            s.raid_elapsed = elapsed;
            if (greater(*raidtime, elapsed))
                copy = effect<FrameRaid>(0x36e55c, a.update_raid_36e55c, copy, now);
            if (greater(now - copy.last_time, *raidtime))
                s.raids.erase(s.raids.begin() + static_cast<ReISize>(i));
            else
                ++i;
        }
    });
}
FrameDependencyResult begin_frame_backbuffer_35aad8(const FrameDependencyApi &a) {
    return protect([&](auto &) {
        call(a, 0x398b84, {ReI32(3), ClipRect{0, 0, 0, 0}});
        call(a, 0x39b734, {Vec2{0, 0}, ReI32(2), Vec2{0, 0}});
        // [C] Two IO getters each supply one coordinate; callbacks may vary.
        const auto size_y = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac).display.y;
        const auto size_x = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac).display.x;
        call(a, 0x39b770, {Vec2{size_x, size_y}, ReI32(2)});
        (void)get<bool>(a, 0x38cfa4,
                        {re::ReString("BackBuffer"), Address(0), ReI32(0xc0281)});
        call(a, 0x39bb20, {Vec2{0, 0}, ReI32(0)});
        const auto height = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac).display.y;
        const auto width = effect<FrameImGuiIo>(0x3926ac, a.imgui_io_3926ac).display.x;
        call(a, 0x39bc6c, {Vec2{width, height}, ReI32(0)});
    });
}
FrameDependencyResult end_frame_backbuffer_35cb18(const FrameDependencyApi &a) {
    return protect([&](auto &) {
        // [C] 35d200 yields the current ImGui window; +298 supplies its drawlist.
        const auto window = get<Address>(a, 0x35d200);
        if (!a.unity.copied_pointer)
            stop(UnityStatus::missing_dependency, 0x35cb21);
        const auto drawlist = a.unity.copied_pointer(window, 0x298);
        if (!drawlist)
            stop(UnityStatus::unreadable_snapshot, 0x35cb21);
        call(a, 0x3a7360, {*drawlist});
        call(a, 0x390994);
        call(a, 0x39890c, {ReI32(1)});
    });
}
UnityFrameApi bind_frame_dependencies(FrameDependencyState &s, const FrameDependencyApi &a,
                                      FrameDependencyResult &last, UnityFrameApi frame) {
    const auto prior = frame.domain;
    frame.domain = [&s, a, &last,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        switch (r) {
        case 0x2dbb70:
        case 0x2dbb00:
        case 0x2d5be4:
        case 0x2dbbe0:
        case 0x2dbec0:
        case 0x2d91c4:
        case 0x2e5b7c:
        case 0x2e89e4:
        case 0x37f918:
        case 0x35aad8:
        case 0x35cb18:
        case 0x36f788:
            break;
        default:
            return prior ? prior(r, args) : re::re_nullopt;
        }
        re::ReOptional<UnityValue> value;
        last = {};
        auto need = [&]<class T>(ReUSize i) -> T {
            if (i >= args.size())
                stop(UnityStatus::malformed_input, r);
            if (auto p = re::re_get_if<T>(&args[i]))
                return *p;
            stop(UnityStatus::callback_type_mismatch, r);
        };
        last = protect([&](auto &) {
            switch (r) {
            case 0x2dbb70:
            case 0x2dbb00: {
                re::ReString p;
                check_result(frame_config_path(s, a, r == 0x2dbb70, p));
                value = re::re_move(p);
                break;
            }
            case 0x2d5be4:
                value = exists(s, a, need.template operator()<re::ReString>(0));
                break;
            case 0x2dbbe0:
            case 0x2dbec0:
                check_result(load_frame_config(s, a, r == 0x2dbec0));
                value = re::ReMonostate{};
                break;
            case 0x2d91c4:
                check_result(refresh_frame_configs_2d91c4(s, a));
                value = re::ReMonostate{};
                break;
            case 0x2e5b7c: {
                bool b{};
                check_result(frame_timer_2e5b7c(s, a, need.template operator()<Address>(0),
                                                need.template operator()<float>(1), b));
                value = b;
                break;
            }
            case 0x2e89e4: {
                bool b{};
                check_result(frame_key_edge_2e89e4(s, a, need.template operator()<Address>(0),
                                                   need.template operator()<bool>(1), b));
                value = b;
                break;
            }
            case 0x37f918:
                check_result(frame_notify_37f918(s, a, need.template operator()<re::ReString>(0),
                                                 need.template operator()<ReI32>(1),
                                                 need.template operator()<bool>(2) ? 1 : 0));
                value = re::ReMonostate{};
                break;
            case 0x36f788:
                check_result(update_frame_raids_36f788(s, a, s.raid_lifetime));
                value = re::ReMonostate{};
                break;
            case 0x35aad8:
                check_result(begin_frame_backbuffer_35aad8(a));
                value = re::ReMonostate{};
                break;
            case 0x35cb18:
                check_result(end_frame_backbuffer_35cb18(a));
                value = re::ReMonostate{};
                break;
            default:
                if (prior)
                    value = prior(r, args);
                break;
            }
        });
        if (last.status != UnityStatus::complete)
            return re::re_nullopt;
        return value;
    };
    return frame;
}
} // namespace rust_internal_re
