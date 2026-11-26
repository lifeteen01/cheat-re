#include "draw_meters_internal.hpp"
namespace rust_internal_re {
namespace {
template <class T> T argument(re::ReSpan<const UnityValue> values, ReUSize i, Rva role) {
    if (i >= values.size())
        { __builtin_trap(); }
    if (const auto *value = re::re_get_if<T>(&values[i]))
        return *value;
    { __builtin_trap(); }
}
DrawMetersIntegerGeometry integer_geometry(const WorldNativeMeterDraw &q) {
    if (!q.integer_geometry)
        __builtin_trap();
    const auto &g = *q.integer_geometry;
    return {g[0], g[1], g[2], g[3]};
}
Rva meter_role(Rva site) {
    constexpr re::RePair<Rva, Rva> roles[]{
        {0x30a7ba, 0x35b850}, {0x30b19b, 0x35bab8}, {0x30c47b, 0x35b0fc}, {0x30c4b8, 0x35b0fc},
        {0x30c655, 0x35b0fc}, {0x30c4f8, 0x35bab8}, {0x30c539, 0x35bab8}, {0x30c69a, 0x35bab8},
        {0x30c582, 0x36232c}, {0x30c5c7, 0x36232c}, {0x30c6e1, 0x36232c}, {0x30c76a, 0x35b508},
        {0x30c816, 0x35c938}, {0x30c8cb, 0x35ac38}};
    for (auto [source, target] : roles)
        if (source == site)
            return target;
    return 0;
}
} // namespace
DrawShapesMath bind_draw_meters_math(Snapshot &image, const UnityMathEnvironment &env,
                                     const UnityMathEffects &effects) {
    const auto bind = [&image, env, effects](Rva wrapper) {
        return [&image, env, effects, wrapper](float value) {
            const auto result = unity_math_scalar(image, wrapper, value, 0, env, effects);
            if (result.status != GameBaseStatus::complete)
                __builtin_trap();
            return result.value;
        };
    };
    return {bind(0x2e0198), bind(0x2dff68)};
}
bool draw_meters_world(DrawMetersContext &context, const WorldDrawCommand &command) {
    return re::re_visit(
        [&](const auto &q) -> bool {
            using T = re::re_decay_t<decltype(q)>;
            if constexpr (re::re_is_same_v<T, WorldNativeMeterDraw> ||
                          re::re_is_same_v<T, WorldViolationCircleDraw> ||
                          re::re_is_same_v<T, WorldRingMeterDraw> ||
                          re::re_is_same_v<T, WorldColoredMeterDraw>) {
                const auto role = meter_role(q.site);
                if (!role)
                    { __builtin_trap(); }
                if constexpr (!re::re_is_same_v<T, WorldRingMeterDraw>) {
                    if (q.helper != role)
                        __builtin_trap();
                }
                if constexpr (re::re_is_same_v<T, WorldNativeMeterDraw>) {
                    if (role == 0x35b0fc)
                        draw_meters_pulse_35b0fc(context, q.position, q.value, q.maximum, q.width,
                                                 q.height);
                    else if (role == 0x35bab8)
                        draw_meters_integer_35bab8(context, integer_geometry(q), q.value,
                                                   q.maximum);
                    else if (role == 0x36232c)
                        draw_meters_segmented_36232c(context, integer_geometry(q), q.value,
                                                     q.maximum, q.segments);
                    else
                        { __builtin_trap(); }
                } else if constexpr (re::re_is_same_v<T, WorldViolationCircleDraw>) {
                    if (role == 0x35b508)
                        draw_meters_violation_35b508(context, q.center, q.first, q.first_max,
                                                     q.second, q.second_max);
                    else if (role == 0x35c938)
                        draw_meters_violation_35c938(context, q.center, q.first, q.first_max,
                                                     q.second, q.second_max, q.third, q.third_max);
                    else
                        __builtin_trap();
                } else if constexpr (re::re_is_same_v<T, WorldRingMeterDraw>) {
                    if (role != 0x35ac38)
                        { __builtin_trap(); }
                    draw_meters_ring_35ac38(
                        context,
                        {q.center, q.value, q.maximum, q.outer, q.inner, {q.color, {}}, q.filled});
                } else if constexpr (re::re_is_same_v<T, WorldColoredMeterDraw>) {
                    if (role != 0x35b850)
                        { __builtin_trap(); }
                    draw_meters_colored_35b850(context, q.position, q.value, q.maximum, q.width,
                                               q.height, {q.color, {}});
                }
                return true;
            }
            return false;
        },
        command);
}
re::ReOptional<UnityValue> draw_meters_frame_role(DrawMetersContext &context, Rva role,
                                                 re::ReSpan<const UnityValue> values) {
    if (role != 0x35ac38 && role != 0x35b0fc && role != 0x35bab8 && role != 0x35b850 &&
        role != 0x35b508 && role != 0x35c938 && role != 0x36232c)
        return {};
    // [C] [I] Slot0 is the unused native receiver, followed by literal ABI-order values.
    const auto real = [&](ReUSize i) { return argument<float>(values, i, role); };
    const auto integer = [&](ReUSize i) { return argument<ReI32>(values, i, role); };
    if (role == 0x35bab8 || role == 0x36232c) {
        DrawMetersIntegerGeometry geometry{integer(1), integer(2), integer(5), integer(6)};
        if (role == 0x35bab8)
            draw_meters_integer_35bab8(context, geometry, real(3), real(4));
        else
            draw_meters_segmented_36232c(context, geometry, real(3), real(4), integer(7));
    } else {
        const Vec2 center{real(1), real(2)};
        if (role == 0x35ac38)
            draw_meters_ring_35ac38(context, {center,
                                              real(3),
                                              real(4),
                                              real(5),
                                              real(6),
                                              {{}, argument<Address>(values, 7, role)},
                                              argument<bool>(values, 8, role)});
        else if (role == 0x35b0fc)
            draw_meters_pulse_35b0fc(context, center, real(3), real(4), real(5), real(6));
        else if (role == 0x35b850)
            draw_meters_colored_35b850(context, center, real(3), real(4), real(5), real(6),
                                       {{}, argument<Address>(values, 7, role)});
        else if (role == 0x35b508)
            draw_meters_violation_35b508(context, center, real(3), real(4), real(5), real(6));
        else
            draw_meters_violation_35c938(context, center, real(3), real(4), real(5), real(6),
                                         real(7), real(8));
    }
    return UnityValue{re::ReMonostate{}};
}
UnityApi bind_draw_meters_frame(DrawMetersContext &context, UnityApi fallback) {
    auto out = fallback;
    out.external = [&context, prior = fallback.external](Rva role,
                                                         re::ReSpan<const UnityValue> args) {
        if (auto value = draw_meters_frame_role(context, role, args))
            return value;
        return prior ? prior(role, args) : re::re_nullopt;
    };
    return out;
}
re::ReFunction<void(const WorldDrawCommand &)>
bind_draw_meters_world(DrawMetersContext &context,
                       re::ReFunction<void(const WorldDrawCommand &)> fallback) {
    return [&context, prior = re::re_move(fallback)](const WorldDrawCommand &command) {
        if (draw_meters_world(context, command))
            return;
        if (prior) {
            prior(command);
            return;
        }
        const auto site = re::re_visit([](const auto &q) { return q.site; }, command);
        { __builtin_trap(); }
    };
}
} // namespace rust_internal_re
