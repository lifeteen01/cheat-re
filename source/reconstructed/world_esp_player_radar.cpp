#include "world_esp_analysis.hpp"
namespace rust_internal_re {
Vec3 rotate_world_vector_320db4(Vec3 v, re::ReArray<float, 4> q) {
    const float yy2 = q[1] + q[1], zz2 = q[2] + q[2], xx2 = q[0] + q[0];
    const float zz = zz2 * q[2], xz = zz2 * q[0], wz = zz2 * q[3], xy = yy2 * q[0];
    const float xx = xx2 * q[0], wx = xx2 * q[3], wy = yy2 * q[3], yy = yy2 * q[1], yz = zz2 * q[1];
    const float x = ((1.0f - (zz + yy)) * v.x + (xy - wz) * v.y) + (wy + xz) * v.z;
    const float y = ((1.0f - (zz + xx)) * v.y + (wz + xy) * v.x) + (yz - wx) * v.z;
    const float z = ((1.0f - (yy + xx)) * v.z + (xz - wy) * v.x) + (wx + yz) * v.y;
    return {x, y, z};
}
// [C] 2f986c retains canceling scale and signed wrapping integer addition.
Vec2 world_oof_point_2f986c(float degrees, float scale, ReI32 x, ReI32 y,
                            ReI32 radius, WorldOverlayBackend &b) {
    if (!b.sin_2e0198 || !b.cos_2dff68)
        { __builtin_trap(); }
    const float radians = float(double(degrees + 45.0f) * 0.017453293005625408);
    const float cosine = b.cos_2dff68(radians), sine = b.sin_2e0198(radians) * scale;
    const float negative_cosine =
        re::re_bit_cast<float>(re::re_bit_cast<ReU32>(cosine) ^ 0x80000000u) * scale;
    const auto dy = world_cvttss2si(((negative_cosine - sine) / scale) * float(radius));
    const auto dx = world_cvttss2si(((sine - cosine * scale) / scale) * float(radius));
    const auto sum = [](ReI32 a, ReI32 z) {
        return re::re_bit_cast<ReI32>(ReU32(a) + ReU32(z));
    };
    return {float(sum(dx, x)), float(sum(dy, y))};
}
void draw_world_player_radar_311ce4(const WorldPlayerRadarData &d,
                                    const WorldPlayerSelection &selection, const WorldEspConfig &c,
                                    WorldOverlayBackend &b, WorldDrawOutput out) {
    if (c.boolean(0x3e6e38) && d.map_open)
        return;
    const auto color = selection.color;
    if (c.boolean(0x3ea538) && !selection.npc && !selection.sleeping && !selection.dead &&
        !d.flag_100) {
        bool on_screen = false;
        if (!b.draw.world_projection_36cd20)
            { __builtin_trap(); }
        if (const auto at = b.draw.world_projection_36cd20(d.position, d.projection_bounds))
            on_screen = world_screen_gate_317130(*at, d.viewport);
        if (!on_screen) {
            const float angle = (re::re_atan2f(d.camera_position.z - d.position.z,
                                            d.camera_position.x - d.position.x) *
                                     57.2958f -
                                 180.0f) -
                                d.camera_yaw;
            const auto x = world_cvttss2si(d.viewport.x) / 2, y = world_cvttss2si(d.viewport.y) / 2;
            const auto tip = world_oof_point_2f986c(angle, 5, x, y, 150, b),
                       right = world_oof_point_2f986c(angle + 2, 5, x, y, 140, b),
                       left = world_oof_point_2f986c(angle - 2, 5, x, y, 140, b);
            if (c.integer(0x3ee798) == 0)
                out.emplace_back(WorldCircleDraw{
                    0x311f0c,
                    {((right.x + tip.x) + left.x) / 3.0f, ((right.y + tip.y) + left.y) / 3.0f},
                    c.real(0x3ed758),
                    color,
                    true});
            else if (c.integer(0x3ee798) == 1)
                out.emplace_back(WorldTriangleDraw{0x311f94, tip, right, left, color});
        }
    }
    if (!c.boolean(0x3ea038) || (selection.npc && !c.boolean(0x3ea088)))
        return;
    const float direction_length = c.real(selection.npc ? 0x3edb18 : 0x3edb68);
    const float direction_width = c.real(selection.npc ? 0x3edbb8 : 0x3edc08);
    // [C] Quaternion rotates the literal(0,0,direction_length); direction computed even if hidden.
    const Vec3 endpoint =
        d.position + rotate_world_vector_320db4({0, 0, direction_length}, d.rotation);
    const auto radial = [&](Vec3 position) {
        const Vec2 delta{d.camera_position.x - position.x, d.camera_position.z - position.z};
        const float distance = (length(delta) * 100.0f) / 100.0f;
        const float limit = c.real(0x3ed938), scale = limit < distance ? limit : distance;
        const Vec2 normalized{delta.x / length(delta), delta.y / length(delta)};
        const auto point = normalized * scale;
        const auto rotated = b.draw.rotate_317b1c
                                 ? b.draw.rotate_317b1c(point, 360 - d.camera_yaw)
                                 : rotate_world_radar_317b1c(point, 360 - d.camera_yaw);
        return Vec2{d.radar_position.x - rotated.x, d.radar_position.y + rotated.y};
    };
    const auto at = radial(d.position), to = radial(endpoint);
    const float radius = c.real(selection.npc ? 0x3ed988 : 0x3ed9d8);
    out.emplace_back(WorldCircleDraw{0x312250, at, radius, color, true});
    if (c.boolean(0x3ea3a8))
        out.emplace_back(WorldTextDraw{0x3122bf,
                                       {at.x, (at.y + radius) + 6.325f},
                                       re::re_to_string(world_cvttss2si(d.distance)),
                                       color,
                                       3});
    if (!selection.sleeping && !d.flag_100 && c.boolean(0x3ea358))
        out.emplace_back(WorldLineDraw{0x31235c, at, to, color, direction_width});
}
} // namespace rust_internal_re
