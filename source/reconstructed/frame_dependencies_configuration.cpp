#include "frame_dependencies_configuration.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {
    UnityStatus status;
    Rva r;
};
[[noreturn]] void stop(UnityStatus s, Rva r) {
    __builtin_trap();
}
void check(const FrameDependencyResult &r) {
    if (r.status != UnityStatus::complete)
        stop(r.status, r.stopped_at);
}
template <class F> FrameDependencyResult protect(F &&f) {
    FrameDependencyResult r;
    {
        f();
    }
    return r;
}
template <class T> T &value(FrameSettingObject &object) {
    if (auto p = re::re_get_if<T>(&object.value))
        return *p;
    stop(UnityStatus::callback_type_mismatch, object.object);
}
re::ReStringView nul_prefix(re::ReStringView text) {
    return text.substr(0, text.find('\0'));
}
ReI32 key_hash(re::ReStringView key) {
    return re::re_bit_cast<ReI32>(
        static_cast<ReU32>(entity_name_hash_2d6354(nul_prefix(key))));
}
float number(re::ReStringView s) {
    double d{};
    check(frame_number_3c87f0(s, d));
    return static_cast<float>(d);
}
} // namespace
re::ReSpan<const FrameSettingVirtualSpec> frame_setting_virtual_specs() {
    static constexpr FrameSettingVirtualSpec specs[] = {
        {0x28d8d8, 0x2ddcfc, 0x2ddd22, FrameSettingKind::boolean},
        {0x28d880, 0x2ddcc0, 0x2ddce6, FrameSettingKind::integer},
        {0x28d778, 0x2ddc7c, 0x2ddca5, FrameSettingKind::scalar},
        {0x28d750, 0x2ddc00, 0x2ddc4a, FrameSettingKind::key},
        {0x28f948, 0x2e9fdc, 0x2ea017, FrameSettingKind::color},
        {0x28eec0, 0x2e9f18, 0x2e9f49, FrameSettingKind::vector2},
        {0x28efd0, 0x2e9f60, 0x2e9faa, FrameSettingKind::vector3},
        {0x2937e8, 0x323008, 0x32305c, FrameSettingKind::text},
        {0x28dd98, 0x2e3f60, 0x2e3fb4, FrameSettingKind::booleans},
        {0x28d6b8, 0x2d9734, 0x2d9788, FrameSettingKind::texts}};
    return specs;
}
ReI32 frame_decimal_3c88ec(re::ReStringView text) {
    ReU32 result = 0;
    for (unsigned char c : nul_prefix(text)) {
        const auto signed_c = c < 128 ? ReI32(c) : ReI32(c) - 256;
        result = result * 10u + static_cast<ReU32>(signed_c) - 48u;
    }
    return re::re_bit_cast<ReI32>(result);
}
FrameDependencyResult frame_number_3c87f0(re::ReStringView text, double &output,
                                          ReUSize limit) {
    return protect([&] {
        auto at = [&](ReUSize i) -> ReI32 {
            const auto c = i < text.size() ? static_cast<unsigned char>(text[i]) : 0;
            return c < 128 ? ReI32(c) : ReI32(c) - 256;
        };
        ReUSize p = 0;
        ReU32 exponent = 0;
        double d = 0;
        auto c = at(p++);
        while (c >= '0' && c <= '9') {
            d = d * 10.0 + double(c - '0');
            c = at(p++);
        }
        if (c == '.') {
            c = at(p++);
            while (c >= '0' && c <= '9') {
                d = d * 10.0 + double(c - '0');
                --exponent;
                c = at(p++);
            }
        }
        if (c == 'e' || c == 'E') {
            c = at(p++);
            bool negative = false;
            if (c == '+' || c == '-') {
                negative = c == '-';
                c = at(p++);
            }
            ReU32 parsed = 0;
            while (c >= '0' && c <= '9') {
                parsed = parsed * 10u + ReU32(c - '0');
                c = at(p++);
            }
            exponent += negative ? 0u - parsed : parsed;
        }
        const auto signed_exponent = re::re_bit_cast<ReI32>(exponent);
        const ReU64 magnitude =
            signed_exponent < 0 ? ReU64(0u - exponent) : exponent;
        if (magnitude > limit)
            stop(UnityStatus::analysis_limit, 0x3c88d5);
        if (signed_exponent > 0)
            for (ReU64 i = 0; i < magnitude; ++i)
                d = d * 10.0;
        if (signed_exponent < 0)
            for (ReU64 i = 0; i < magnitude; ++i)
                d = d * 0.1;
        output = d;
    });
}
FrameDependencyResult apply_frame_setting_virtual(FrameSettingsFile &file,
                                                  FrameSettingObject &object,
                                                  re::ReVector<re::ReString> *saved) {
    return protect([&] {
        const auto found = file.values.find(key_hash(object.lookup_name));
        const re::ReString text = !found ? re::ReString{} : **found;
        switch (object.kind) {
        case FrameSettingKind::boolean: {
            auto &v = value<bool>(object);
            if (!text.empty())
                v = text == "true";
            break;
        }
        case FrameSettingKind::integer: {
            auto &v = value<ReI32>(object);
            if (!text.empty())
                v = frame_decimal_3c88ec(text);
            break;
        }
        case FrameSettingKind::scalar: {
            auto &v = value<float>(object);
            if (!text.empty())
                v = number(text);
            break;
        }
        case FrameSettingKind::text: {
            auto &v = value<re::ReString>(object);
            if (!text.empty())
                v = text;
            break;
        }
        case FrameSettingKind::key: {
            auto &v = value<FrameConfigKey>(object);
            if (text.empty() || text == "EMPTY")
                break;
            const auto fields = frame_split_2d93fc(text, "|");
            if (fields.size() < 4)
                break;
            v.key = frame_parse_integer_2d8cc0(fields[0]);
            v.active = frame_parse_integer_2d8cc0(fields[1]) != 0;
            v.mode = frame_parse_integer_2d8cc0(fields[2]);
            v.latched = frame_parse_integer_2d8cc0(fields[3]) != 0;
            break;
        }
        case FrameSettingKind::color: {
            auto &v = value<ClipRect>(object);
            if (text.empty())
                break;
            const auto fields = frame_split_2d93fc(text, ";");
            if (fields.size() != 4)
                break;
            const auto x = number(fields[0]), y = number(fields[1]), z = number(fields[2]),
                       w = number(fields[3]);
            v = {x, y, z, w};
            break;
        }
        case FrameSettingKind::vector2: {
            auto &v = value<Vec2>(object);
            if (text.empty())
                break;
            const auto fields = frame_split_2d93fc(text, ";");
            if (fields.size() != 2)
                break;
            const auto x = number(fields[0]), y = number(fields[1]);
            v = {x, y};
            break;
        }
        case FrameSettingKind::vector3: {
            auto &v = value<Vec3>(object);
            if (text.empty())
                break;
            const auto fields = frame_split_2d93fc(text, ";");
            if (fields.size() != 3)
                break;
            const auto x = number(fields[0]), y = number(fields[1]), z = number(fields[2]);
            v = {x, y, z};
            break;
        }
        case FrameSettingKind::booleans: {
            auto &v = value<re::ReVector<bool>>(object);
            if (text.empty() || text == "EMPTY")
                break;
            re::ReVector<bool> result;
            for (const auto &f : frame_split_2d93fc(text, ","))
                result.push_back(frame_parse_integer_2d8cc0(f) != 0);
            v = re::re_move(result);
            break;
        }
        case FrameSettingKind::texts: {
            auto &v = value<re::ReVector<re::ReString>>(object);
            if (object.object == 0x3d6e60 && saved) {
                if (!text.empty() && text != "EMPTY")
                    *saved = frame_split_2d93fc(text, ";");
                v = *saved;
            } else if (!text.empty() && text != "EMPTY")
                v = frame_split_2d93fc(text, ";");
            break;
        }
        }
    });
}
FrameDependencyResult reload_frame_configuration_2dd2ec(FrameDependencyState &state,
                                                        FrameConfigurationState &settings,
                                                        const FrameDependencyApi &api) {
    return protect([&] {
        check(reload_frame_settings_2dd5e8(state, api));
        for (auto &object : settings.objects)
            check(apply_frame_setting_virtual(state.settings, object, &settings.saved_windows));
        if (settings.windows.size() != settings.saved_windows.size())
            return;
        re::ReVector<FrameWindowSetting> ordered;
        for (const auto &line : settings.saved_windows) {
            const auto fields = frame_split_2d93fc(line, "|");
            if (fields.size() < 5)
                continue;
            const auto item = re::re_find_if(settings.windows.begin(), settings.windows.end(),
                                           [&](const auto &v) { return v.name == fields[0]; });
            if (!item)
                continue;
            item->index = frame_parse_integer_2d8cc0(fields[1]);
            item->enabled = frame_parse_integer_2d8cc0(fields[2]) != 0;
            const float y = static_cast<float>(frame_parse_integer_2d8cc0(fields[4])) / 1000.0f;
            const float x = static_cast<float>(frame_parse_integer_2d8cc0(fields[3])) / 1000.0f;
            item->position = {x, y};
            ordered.push_back(*item);
        }
        // [C] Mismatched output count keeps original ORDER but retains all prior
        // in-place window field writes. Duplicate names can replace with copies.
        if (ordered.size() == settings.windows.size())
            settings.windows = re::re_move(ordered);
    });
}
FrameDependencyResult initialize_frame_configuration_2dd284(FrameDependencyState &state,
                                                            FrameConfigurationState &settings,
                                                            const FrameDependencyApi &api) {
    return protect([&] {
        check(initialize_frame_settings_2dd284_head(state, api));
        check(reload_frame_configuration_2dd2ec(state, settings, api));
    });
}
UnityFrameApi bind_frame_configuration(FrameDependencyState &state,
                                       FrameConfigurationState &settings,
                                       const FrameDependencyApi &api, FrameDependencyResult &result,
                                       UnityFrameApi frame) {
    const auto prior = frame.domain;
    frame.domain = [&state, &settings, api, &result,
                    prior](Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (r != 0x2dd284)
            return prior ? prior(r, args) : re::re_nullopt;
        result = initialize_frame_configuration_2dd284(state, settings, api);
        if (result.status != UnityStatus::complete)
            return {};
        return re::ReMonostate{};
    };
    return frame;
}
} // namespace rust_internal_re
