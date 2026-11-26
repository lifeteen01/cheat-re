#include "frame_world_controllers_internal.hpp"
#include "menu_pages_analysis.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
struct ConfigStop {
    UnityStatus status;
    Rva r;
};
[[noreturn]] void stop(UnityStatus status, Rva r) {
    __builtin_trap();
}
void check(FrameDependencyResult r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class F> FrameDependencyResult protect_config(F &&f) {
    {
        f();
        return {};
    }
}
template <class F, class... A> auto effect(Rva r, const F &f, A &&...a) {
    if (!f)
        stop(UnityStatus::missing_dependency, r);
    return f(re::re_forward<A>(a)...);
}
re::ReStringView ctext(re::ReStringView s) {
    return s.substr(0, s.find('\0'));
}
re::ReString normalize(re::ReStringView s) {
    return normalize_menu_config_name_2d6384(s);
}
bool select(FrameDependencyState &s, re::ReStringView input) {
    auto n = normalize(input);
    if (n.empty())
        return false;
    s.selected_config = re::re_move(n);
    return true;
}
re::ReString current_path(FrameDependencyState &s) {
    if (!select(s, s.selected_config))
        s.selected_config = "DefaultCfg.bin";
    return s.directory + "\\" + s.selected_config;
}
void refresh(FrameDependencyState &s, const FrameWorldConfigApi &a) {
    check(refresh_frame_configs_2d91c4(s, a.frame));
    // [C]2d92ad normalizes the CURRENT selected string after GetFiles callbacks.
    if (!select(s, s.selected_config))
        s.selected_config = "DefaultCfg.bin";
}
void prepare(FrameDependencyState &s, const FrameWorldConfigApi &a, const UnityCacheSpec &spec) {
    auto &cache = s.caches[spec.flags];
    if (!(cache.flags & 1)) {
        cache.flags |= 1;
        const auto result = effect(spec.wrapper, a.frame.unity.resolve_target, spec);
        if (result.status != MetadataStatus::complete)
            stop(UnityStatus::unresolved_target, spec.wrapper);
        cache.target = result.value;
    }
    if (!(cache.flags & 2)) {
        cache.flags |= 2;
        if (!effect(spec.wrapper, a.frame.unity.detect_context, spec, cache.target))
            stop(UnityStatus::missing_dependency, spec.wrapper);
        cache.context_detected = true;
    }
}
constexpr UnityCacheSpec delete_spec{0x2d5a18,     0x3d6730, 0x3d6728,    0x3d6740,
                                     0x3349ac,     0,        "System.IO", "FileSystem",
                                     "DeleteFile", "",       -1,          -1};
constexpr UnityCacheSpec write_spec{0x2d65dc,    0x3d6be0, 0x3d6bd8,
                                    0x3d6bf0,    0x334a90, 0,
                                    "System.IO", "File",   "InternalWriteAllBytes",
                                    "",          2,        -1};
constexpr UnityCacheSpec array_spec{
    0x2d8d74,           0x3d6558, 0x3d6550,           0x3d6560, 0x3caed0, 0,
    "GameAssembly.dll", "",       "il2cpp_array_new", "",       2,        -1};
Address byte_array(FrameDependencyState &s, const FrameWorldConfigApi &a,
                   re::ReSpan<const ReByte> data) {
    const auto klass = effect(0x334224, a.frame.unity.resolve_class, re::ReStringView("System"),
                              re::ReStringView("Byte"));
    if (klass.status != MetadataStatus::complete)
        stop(UnityStatus::unresolved_target, 0x334224);
    prepare(s, a, array_spec);
    const Address array = effect(0x2d8d74, a.array_new_2d8d74, klass.value, data.size());
    if (array) {
        if (!a.managed_bytes)
            stop(UnityStatus::unreadable_snapshot, 0x2d57bc);
        for (ReUSize i = 0; i < data.size(); ++i)
            if (!a.managed_bytes->write(array + 0x20 + i, data[i]))
                stop(UnityStatus::unreadable_snapshot, 0x2d57bc);
    }
    return array;
}
re::ReString number(const FrameWorldConfigApi &a, float v) {
    if (a.format_float_2d9540)
        return a.format_float_2d9540(v);
    if (!re::re_isfinite(v))
        stop(UnityStatus::missing_dependency, 0x2d9540);
    // [I] Host CRT/C-locale finite %f formatting is an explicit adaptation.
    re::ReArray<char, 128> data{};
    const int n = re::re_snprintf(data.data(), data.size(), "%f", double(v));
    if (n < 0 || ReUSize(n) >= data.size())
        stop(UnityStatus::malformed_input, 0x2d955c);
    return re::ReString(data.data(), ReUSize(n));
}
void store(FrameSettingsFile &file, ReI32 key, re::ReString text) {
    auto it = file.values.find(key);
    if (bool(it) && **it == text)
        return;
    file.values[key] = re::re_move(text);
    file.changed = true;
}
template <class T> const T &value(const FrameSettingObject &o) {
    auto p = re::re_get_if<T>(&o.value);
    if (!p)
        stop(UnityStatus::callback_type_mismatch, o.object);
    return *p;
}
re::ReString serialize(const FrameSettingObject &o, const FrameWorldConfigApi &a) {
    switch (o.kind) {
    case FrameSettingKind::boolean:
        return value<bool>(o) ? "true" : "false";
    case FrameSettingKind::integer:
        return re::re_to_string(value<ReI32>(o));
    case FrameSettingKind::scalar:
        return number(a, value<float>(o));
    case FrameSettingKind::key: {
        const auto k = value<FrameConfigKey>(o);
        return re::re_to_string(k.key) + "|" + re::re_to_string(unsigned(k.active)) + "|" +
               re::re_to_string(k.mode) + "|" + re::re_to_string(unsigned(k.latched));
    }
    case FrameSettingKind::color: {
        const auto v = value<ClipRect>(o);
        const auto w = number(a, v.w), z = number(a, v.z), y = number(a, v.y), x = number(a, v.x);
        return x + ";" + y + ";" + z + ";" + w;
    }
    case FrameSettingKind::vector2: {
        const auto v = value<Vec2>(o);
        const auto y = number(a, v.y), x = number(a, v.x);
        return x + ";" + y;
    }
    case FrameSettingKind::vector3: {
        const auto v = value<Vec3>(o);
        const auto z = number(a, v.z), y = number(a, v.y), x = number(a, v.x);
        return x + ";" + y + ";" + z;
    }
    case FrameSettingKind::text:
        return value<re::ReString>(o);
    case FrameSettingKind::booleans: {
        re::ReString text;
        for (bool b : value<re::ReVector<bool>>(o)) {
            if (!text.empty())
                text += ",";
            text += b ? "1" : "0";
        }
        return text;
    }
    case FrameSettingKind::texts: {
        const auto &v = value<re::ReVector<re::ReString>>(o);
        if (v.empty())
            return "EMPTY";
        re::ReString text = v[0];
        for (ReUSize i = 1; i < v.size(); ++i) {
            text += ';';
            text += v[i];
        }
        return text;
    }
    }
    stop(UnityStatus::malformed_input, o.object);
}
void ensure(FrameDependencyState &s, const FrameWorldConfigApi &a) {
    // [C]Reuse concrete ensure-directory specialization, without refreshing files.
    re::ReString unused;
    check(frame_config_path(s, a.frame, false, unused));
}
} // namespace
FrameDependencyResult frame_world_save_2dd634(FrameDependencyState &s,
                                              FrameConfigurationState &settings,
                                              const FrameWorldConfigApi &a) {
    return protect_config([&] {
        settings.saved_windows.clear();
        for (const auto &w : settings.windows) {
            const auto y = number(a, w.position.y), x = number(a, w.position.x);
            settings.saved_windows.push_back(w.name + "|" + re::re_to_string(w.index) + "|" +
                                             re::re_to_string(unsigned(w.enabled)) + "|" + x + "|" +
                                             y);
        }
        for (auto &o : settings.objects) {
            if (o.object == 0x3d6e60) {
                if (o.kind != FrameSettingKind::texts)
                    stop(UnityStatus::callback_type_mismatch, o.object);
                o.value = settings.saved_windows;
            }
            const auto hash = ReU32(entity_name_hash_2d6354(ctext(o.lookup_name)));
            store(s.settings, re::re_bit_cast<ReI32>(hash), serialize(o, a));
        }
        // [C]2dd9cc ensures directory, forms/reassigns only the path, then saves.
        ensure(s, a);
        s.settings.path = current_path(s);
        s.settings.bytes.clear();
        if (!a.save || !a.save->native_key_order)
            stop(UnityStatus::unreadable_snapshot, 0x2d9123);
        re::ReVector<ReI32> seen;
        for (auto key : *a.save->native_key_order) {
            auto it = s.settings.values.find(key);
            if (!it ||
                re::re_find(seen.begin(), seen.end(), key) != seen.end())
                stop(UnityStatus::malformed_input, 0x2d9132);
            seen.push_back(key);
            s.settings.bytes +=
                re::re_to_string(re::re_bit_cast<ReU32>(key)) + "=" + **it + "\n";
        }
        if (seen.size() != s.settings.values.size())
            stop(UnityStatus::unreadable_snapshot, 0x2d9199);
        s.settings.changed = false;
        const auto data =
            re::ReSpan<const ReByte>(re::re_as_bytes(static_cast<const void*>(s.settings.bytes.data()), s.settings.bytes.size()), s.settings.bytes.size());
        const Address array = byte_array(s, a, data);
        if (!array)
            return;
        prepare(s, a, write_spec);
        const Address path = effect(0x2ce5dc, a.managed_string_2ce5dc, ctext(s.settings.path));
        effect(0x2d65dc, a.write_bytes_2d65dc, path, array);
        s.settings.hash = ReU32(entity_name_hash_2d6354(ctext(s.settings.bytes)));
    });
}
FrameDependencyResult frame_world_commands_2d60d0(re::ReVector<FrameWorldFileCommand> &queue,
                                                  FrameDependencyState &s,
                                                  FrameConfigurationState &settings,
                                                  const FrameWorldConfigApi &a) {
    return protect_config([&] {
        const auto count = queue.size();
        for (ReUSize i = 0; i < count; ++i) {
            const auto command = queue.at(i); // [C] copy exactly one record before dispatch.
            const auto filename = ctext(command.filename);
            switch (command.operation) {
            case 0: {
                if (!filename.empty())
                    (void)select(s, filename);
                const auto path = current_path(s);
                check(prepare_frame_dependency_cache(s, a.frame, 0x2d5be4));
                auto exists = effect(0x2d5be4, a.frame.exists_2d5be4, re::ReStringView(path));
                if (!exists)
                    stop(UnityStatus::missing_dependency, 0x2d5be4);
                if (*exists)
                    check(reload_frame_configuration_2dd2ec(s, settings, a.frame));
                refresh(s, a);
                break;
            }
            case 1:
                if (!filename.empty())
                    (void)select(s, filename);
                check(frame_world_save_2dd634(s, settings, a));
                refresh(s, a);
                break;
            case 2: {
                if (filename.empty())
                    break;
                const auto normalized = normalize(filename);
                if (normalized.empty())
                    break;
                // [C]2d56b8 repeats normalization on the first normalized result.
                const auto second = normalize(normalized);
                if (second.empty())
                    break;
                const re::ReString path = s.directory + "\\" + second;
                // [C]DeleteFile converts its path BEFORE lazy method/cache setup.
                const Address managed = effect(0x2ce5dc, a.managed_string_2ce5dc, ctext(path));
                prepare(s, a, delete_spec);
                effect(0x2d5a18, a.delete_file_2d5a18, managed);
                refresh(s, a);
                if (s.selected_config == normalized)
                    s.selected_config = s.configs.empty() ? "DefaultCfg.bin" : s.configs[0];
                break;
            }
            default:
                break;
            }
        }
        queue.clear(); // [C] native clears only after every dispatch returns.
    });
}
} // namespace rust_internal_re
