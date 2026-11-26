#include "world_esp_analysis.hpp"
namespace rust_internal_re {
// [C] 30ab62..30ae1d,2ee4e8,2f0ee0: stable remove-if, per-trace empty erase and native projection order.
void draw_world_tracers_30ab62(re::ReVector<re::ReVector<WorldTracePoint>> &traces, float realtime,
                               ProjectionBounds bounds, const WorldEspConfig &c,
                               WorldDrawBackend &b, WorldDrawOutput out) {
    if (!c.boolean(0x3e9cc8) || traces.empty())
        return;
    const float lifetime = c.real(0x3ed5c8);
    for (auto trace = traces.begin(); trace != traces.end();) {
        auto &points = *trace;
        re::re_erase_if(points, [&](const auto &p) { return realtime - p.time > lifetime; });
        for (ReUSize i = 1; i < points.size(); ++i) {
            if (!b.world_projection_36cd20)
                { __builtin_trap(); }
            const auto from = b.world_projection_36cd20(points[i - 1].position, bounds);
            if (!from)
                continue;
            const auto to = b.world_projection_36cd20(points[i].position, bounds);
            if (!to)
                continue;
            out.emplace_back(WorldGlowLineDraw{0x30ad9d, *from, *to, c.color(0x3ea7d8),
                                               c.color(0x3ea778), 1.25f, c.real(0x3edd98),
                                               c.real(0x3eded8), true, true});
        }
        if (points.empty())
            traces.erase(trace);
        else
            ++trace;
    }
}
// [C] Actual helper argument sets at30c3e0..30c8d0. Shapes identify native callees, not invented bars.
Vec2 draw_world_violation_bars_30c3e0(Vec2 window, Vec2 center, const WorldViolationValues &v,
                                      const WorldEspConfig &c, WorldDrawOutput out) {
    if (!c.boolean(0x3e9ea8))
        return window;
    const auto kind = c.integer(0x3eece8);
    const bool first = c.option(0x3f0268, 1), second = c.option(0x3f0268, 4);
    const auto bar = [&](Rva site, Rva helper, Vec2 at, float value, float max, float w, float h,
                         ReI32 segments = 0) {
        WorldNativeMeterDraw command{site, helper, at, value, max, w, h, segments};
        if (helper != 0x35b0fc) {
            const auto x = world_cvttss2si(at.x), y = world_cvttss2si(at.y);
            command.integer_geometry = re::ReArray<ReI32, 4>{x, y, world_cvttss2si(w), world_cvttss2si(h)};
            command.position = {float(x), float(y)};
        }
        out.emplace_back(command);
    };
    if (first) {
        if (kind == 0) {
            window = {window.x + 119.231f, window.y + 10.0f};
            bar(0x30c47b, 0x35b0fc, window, v.value_3e6094, 6.5f, 240, 16);
            bar(0x30c4b8, 0x35b0fc, {window.x, window.y + 30}, v.value_3e6090, 1.9f, 240, 16);
        } else if (kind == 1 || kind == 2) {
            bar(kind == 1 ? 0x30c4f8 : 0x30c582, kind == 1 ? 0x35bab8 : 0x36232c, window,
                v.value_3e6094, 6.5f, 240, 8, kind == 2 ? 10 : 0);
            bar(kind == 1 ? 0x30c539 : 0x30c5c7, kind == 1 ? 0x35bab8 : 0x36232c,
                {window.x, window.y + 20}, v.value_3e6090, 1.9f, 240, 8, kind == 2 ? 10 : 0);
        }
    }
    if (second) {
        const auto value = v.value_3e6098 + 4.0f;
        if (kind == 0)
            bar(0x30c655, 0x35b0fc, {window.x, window.y + 60}, value, 6, 240, 16);
        else if (kind == 1 || kind == 2)
            bar(kind == 1 ? 0x30c69a : 0x30c6e1, kind == 1 ? 0x35bab8 : 0x36232c,
                {window.x, window.y + 40}, value, 6, 240, 8, kind == 2 ? 10 : 0);
    }
    if (kind == 3) {
        if (first && !second)
            out.emplace_back(WorldViolationCircleDraw{0x30c76a, 0x35b508, center, v.value_3e6090,
                                                      1.9f, v.value_3e6094, 6.5f, 0, 0});
        if (second && first)
            out.emplace_back(WorldViolationCircleDraw{0x30c816, 0x35c938, center, v.value_3e6090,
                                                      1.9f, v.value_3e6094, 6.5f,
                                                      v.value_3e6098 + 4, 6});
        else if (second) {
            const float outer = c.real(0x3ed668) * 485.47f, raw = outer - 8.44568f;
            out.emplace_back(WorldRingMeterDraw{0x30c8cb,
                                                center,
                                                v.value_3e6098 + 4,
                                                6,
                                                outer,
                                                raw > 0 ? raw : 0,
                                                {1, 165.0f / 255, 0, 1},
                                                true});
        }
    }
    return window;
}
} // namespace rust_internal_re
