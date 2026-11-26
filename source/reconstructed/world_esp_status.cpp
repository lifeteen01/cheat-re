#include "re_compat.h"
#include "world_esp_analysis.hpp"
namespace rust_internal_re {
re::ReString world_two_decimals_30ae4a(float number, WorldOverlayBackend &b) {
    if (!b.round_314a68)
        { __builtin_trap(); }
    const float rounded = b.round_314a68(float(double(number) * 100.0));
    const double displayed = double(rounded) / 100.0;
    // [C]2d955c formats literal%f, then caller truncates after two fraction digits.
    const int size = re::re_snprintf(nullptr, 0, "%f", displayed);
    if (size < 0)
        { __builtin_trap(); }
    re::ReString text = re::re_string_fill(ReUSize(size) + 1, '\0');
    re::re_snprintf(const_cast<char*>(text.data()), text.size(), "%f", displayed);
    text.resize(ReUSize(size));
    if (const auto dot = text.find('.'); dot != re::ReString::npos)
        text.resize(re::re_min(text.size(), dot + 3));
    return text;
}
void draw_world_time_30ae1d(float hour, const WorldEspConfig &c, WorldOverlayBackend &b,
                            WorldDrawOutput out) {
    if (!c.boolean(0x3e9908))
        return;
    const auto numeric = world_two_decimals_30ae4a(hour, b);
    re::ReStringView phase = "Day : ";
    re::ReArray<float, 4> color{0, 1, 0, 1};
    if (hour <= 7) {
        phase = "Night : ";
        color = {1, 0, 0, 1};
    }
    if (hour > 7 && hour <= 8) {
        phase = "Morning : ";
        color = {249.0f / 255, 105.0f / 255, 14.0f / 255, 1};
    }
    if (hour > 19 && hour < 20) {
        phase = "Afternoon : ";
        color = {249.0f / 255, 105.0f / 255, 14.0f / 255, 1};
    }
    if (hour > 20) {
        phase = "Night : ";
        color = {1, 0, 0, 1};
    }
    out.emplace_back(WorldTextDraw{0x30b0db, {100, 10}, re::ReString(phase) + numeric, color, 2});
}
void draw_world_code_status_30a1c3(re::ReSpan<const WorldClassifierState::LockCache> locks,
                                   Vec3 camera, ProjectionBounds bounds, const WorldEspConfig &c,
                                   WorldCodeStatusState &state, WorldDrawBackend &b,
                                   const re::ReFunction<float()> &realtime_31581c,
                                   WorldDrawOutput out) {
    if (!c.boolean(0x3e9598))
        return;
    for (const auto &lock : locks) {
        if (!b.world_projection_36cd20)
            { __builtin_trap(); }
        const auto at = b.world_projection_36cd20(lock.position, bounds);
        if (!at)
            continue;
        const auto id = lock.network_id;
        const float stamp = state.times_3e5df0[id];
        const auto count = state.counts_3e5e30[id];
        const auto remaining = re::re_bit_cast<ReI32>(8u - ReU32(count));
        if (remaining <= 0)
            continue;
        if (!realtime_31581c)
            { __builtin_trap(); }
        const float now = realtime_31581c();
        if (!(stamp > 0))
            continue;
        const auto elapsed = re::re_bit_cast<ReI32>(ReU32(world_cvttss2si(now)) -
                                                         ReU32(world_cvttss2si(stamp)));
        if (elapsed >= 60)
            state.counts_3e5e30[id] = 0;
        if (!(30.0f > length(camera - lock.position)))
            continue;
        const auto text = "[Uses Left : " + re::re_to_string(remaining) +
                          " Timer :" + re::re_to_string(elapsed) + "]";
        constexpr re::ReArray<float, 4> color{1, 1, 1, 155.0f / 255};
        out.emplace_back(WorldTextDraw{0x30a4a1, *at, text, color, 1});
        const auto damage = world_cvttss2si((float(count) + 1.0f) * 5.0f);
        out.emplace_back(WorldTextDraw{
            0x30a58c, {at->x, at->y + 16}, "Damage :" + re::re_to_string(damage), color, 1});
    }
}
} // namespace rust_internal_re
namespace rust_internal_re {
Vec2 draw_world_status_flags_30b140(Vec2 half_screen, const WorldEspConfig &c,
                                    WorldDrawOutput out) {
    Vec2 at{half_screen.x, half_screen.y + 10};
    if (c.boolean(0x3d72a0) && (c.boolean(0x3ea5d8) || c.boolean(0x3ea628))) {
        const auto x = world_cvttss2si((at.x - 50.0f) - 12.0f), y = world_cvttss2si(at.y);
        WorldNativeMeterDraw command{
            0x30b19b, 0x35bab8, {float(x), float(y)}, c.real(0x3d72ec), 1, 120, 4, 0};
        command.integer_geometry = re::ReArray<ReI32, 4>{x, y, ReI32(120), ReI32(4)};
        out.emplace_back(command);
        at.y += 10;
    }
    at.y += 3;
    const auto text = [&](Rva site, re::ReStringView value, float step = 16) {
        out.emplace_back(WorldTextDraw{site, at, re::ReString(value), {1, 0, 0, 1}, 2});
        at.y += step;
    };
    if (c.boolean(0x3e5e79))
        text(0x30b231, "Manipulated", 18);
    if (c.boolean(0x3efc01) && c.integer(0x3efbfc) == 1)
        text(0x30b2e4, "Recoil");
    if (c.boolean(0x3efba1))
        text(0x30b381, "On Ladder");
    if (c.boolean(0x3e5471) && c.integer(0x3e546c) == 1)
        text(0x30b429, "Auto Upgrade");
    if (c.boolean(0x3ef781))
        text(0x30b4c8, "Inf Jump");
    if (c.boolean(0x3ef661))
        text(0x30b560, "Crouching");
    if (c.boolean(0x3e5e78))
        text(0x30b5f8, "Grenade Hit Possible");
    if (c.boolean(0x3e4238) && c.boolean(0x3d8301))
        text(0x30b69d, "LV Possible");
    return at;
}
} // namespace rust_internal_re
namespace rust_internal_re {
Vec2 draw_world_teleport_panel_30c8d0(Vec2 at, re::ReSpan<const Vec3> positions,
                                      ProjectionBounds bounds, const WorldEspConfig &c,
                                      WorldOverlayBackend &b, WorldDrawOutput out) {
    if (!c.boolean(0x3efb41))
        return at;
    const auto distance = world_two_decimals_30ae4a(c.real(0x3ed6b8), b);
    out.emplace_back(
        WorldTextDraw{0x30ca41, at, "Teleport Distance : " + distance + "/5.0m", {1, 0, 0, 1}, 2});
    if (!positions.empty()) {
        at.y += 16;
        out.emplace_back(
            WorldTextDraw{0x30cb63,
                          at,
                          "Simulating " + re::re_to_string(positions.size()) + "/66 Positions",
                          {1, 0, 0, 1},
                          2});
    }
    if (positions.size() > 1) {
        if (!b.draw.world_projection_36cd20)
            { __builtin_trap(); }
        for (ReUSize i = 0; i + 1 < positions.size(); ++i) {
            const auto from = b.draw.world_projection_36cd20(positions[i], bounds);
            if (!from)
                continue;
            const auto to = b.draw.world_projection_36cd20(positions[i + 1], bounds);
            if (!to)
                continue;
            out.emplace_back(WorldGlowLineDraw{
                0x30cd2b, *from, *to, {1, 0, 0, 1}, {1, 0, 0, 1}, 1.45f, 2.571f, 10, true, true});
        }
    }
    return at;
}
} // namespace rust_internal_re
