#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class F> void overlay_need(const F &f, Rva at, Rva target) {
    if (!f)
        { __builtin_trap(); }
}
float degrees_to_radians(float x) {
    return float(double(x) * 3.1415926535 / 180.0);
}
float radians_to_degrees(float x) {
    return float(double(x * 180.0f) / 3.1415926535);
}
} // namespace
// [C] Entire3643b4..364a46. Type3 uses actual Unity Mathf methods through typed boundaries.
void draw_world_crosshair_3643b4(ReI32 x, ReI32 y, re::ReArray<float, 4> color,
                                 const WorldEspConfig &c, WorldOverlayState &s,
                                 WorldOverlayBackend &b, WorldDrawOutput out) {
    if (!c.boolean(0x3fc608))
        return;
    const auto type = c.integer(0x3fcfa8);
    const auto integer_sub = [](ReI32 value, ReU32 minus) {
        return re::re_bit_cast<ReI32>(ReU32(value) - minus);
    };
    const auto rect = [&](Rva site, float px, float py, float w, float h) {
        out.emplace_back(WorldFloatRectangleDraw{site, {px, py}, {w, h}, color});
    };
    if (type == 0) {
        rect(0x36450e, float(x), float(integer_sub(y, 5)), 1, 11);
        rect(0x36455b, float(integer_sub(x, 5)), float(y), 11, 1);
    }
    if (type == 1) {
        rect(0x364620, float(integer_sub(x, 5)), float(integer_sub(y, 1)), 10, 2);
        rect(0x36466d, float(integer_sub(x, 1)), float(integer_sub(y, 5)), 2, 10);
    }
    const Vec2 center{float(x), float(y)};
    if (type == 2)
        out.emplace_back(WorldCircleDraw{0x3646a0, center, 3, color, true});
    if (type == 3) {
        const float radius = c.real(0x3fcb98);
        if (s.rotation_3fdac0 > 90)
            s.rotation_3fdac0 = 0;
        overlay_need(b.delta_time_3926ac, 0x3646ef, 0x3926ac);
        const float increment = c.real(0x3fcc38) * b.delta_time_3926ac();
        overlay_need(b.atan_35cb40, 0x36472a, 0x35cb40);
        overlay_need(b.sin_2e0198, 0x36474b, 0x2e0198);
        overlay_need(b.cos_2dff68, 0x364769, 0x2dff68);
        for (float angle : {90.0f, 180.0f, 270.0f, 360.0f}) {
            const float spread = b.atan_35cb40(radius / radius);
            const float primary = angle + s.rotation_3fdac0;
            const float px = b.sin_2e0198(degrees_to_radians(primary)) * radius;
            const float py = b.cos_2dff68(degrees_to_radians(primary)) * radius;
            const float secondary = (angle + s.rotation_3fdac0) + radians_to_degrees(spread);
            const float qx =
                b.sin_2e0198(degrees_to_radians(secondary)) * (radius / b.cos_2dff68(spread));
            const float qy =
                b.cos_2dff68(degrees_to_radians(secondary)) * (radius / b.cos_2dff68(spread));
            const Vec2 tip{center.x + px, center.y - py}, hook{center.x + qx, center.y - qy};
            out.emplace_back(WorldLineDraw{0x364842, center, tip, color, 1.5f});
            out.emplace_back(WorldLineDraw{0x3648ab, tip, hook, color, 1.5f});
        }
        s.rotation_3fdac0 += increment;
    }
    if (type == 4) {
        const float gap = c.real(0x3fcbe8);
        rect(0x364981, float(integer_sub(x, 2)), (float(y) - gap) - 4, 4, 4);
        rect(0x3649a2, float(integer_sub(x, 2)), float(y) + gap, 4, 4);
        rect(0x3649d2, (float(x) - gap) - 4, float(integer_sub(y, 2)), 4, 4);
        rect(0x3649f3, float(x) + gap, float(integer_sub(y, 2)), 4, 4);
    }
}
// [C] Concrete save/toggle/marker bodies309ff4..30a1c3 and30a7ce..30ab62.
void update_world_overlay_controls_309ff4(const WorldEspConfig &c, const WorldOverlayFrame &f,
                                          WorldOverlayState &s, WorldOverlayBackend &b,
                                          WorldDrawOutput out) {
    const auto key = [&](Rva cell, Rva site) {
        overlay_need(b.key_edge_2e89e4, site, 0x2e89e4);
        return b.key_edge_2e89e4(cell, true);
    };
    if (!c.boolean(0x3ea498))
        s.battle_3e5cb8 = false;
    else if (key(0x3efc58, 0x30a006))
        s.battle_3e5cb8 = !s.battle_3e5cb8;
    if (!c.boolean(0x3e9ae8))
        s.house_3f0038 = {};
    else if (key(0x3efa18, 0x30a038))
        s.house_3f0038 = f.camera_position;
    if (!c.boolean(0x3ea1c8))
        s.saved_3effd8 = {};
    else if (key(0x3ef9b8, 0x30a089))
        s.saved_3effd8 = f.camera_position;
    if (c.boolean(0x3ea6c8) && vector_inequality_2df5dc(s.marker_3e6050, {})) {
        overlay_need(b.draw.world_projection_36cd20, 0x30a13e, 0x36cd20);
        if (const auto at = b.draw.world_projection_36cd20(s.marker_3e6050, f.projection_bounds)) {
            const float distance = length(s.marker_3e6050 - f.local_position);
            const float limited = distance < 150 ? distance : 150; // [C] MINSS source on unordered.
            const float radius = (1.0f - limited / 150.0f) * 3.0f + 3.0f;
            out.emplace_back(WorldCircleDraw{0x30a1be, *at, radius, c.color(0x3ecb78), true});
        }
    }
}
void draw_world_saved_positions_30a7ce(const WorldEspConfig &c, const WorldOverlayFrame &f,
                                       const WorldOverlayState &s, WorldOverlayBackend &b,
                                       WorldDrawOutput out) {
    const auto label = [&](Vec3 where, Vec3 project, re::ReStringView prefix, Rva color, Rva site) {
        if (!vector_inequality_2df5dc(where, {}))
            return;
        const auto text = re::ReString(prefix) + "(" +
                          re::re_to_string(world_cvttss2si(length(f.camera_position - where))) + "m)";
        overlay_need(b.draw.world_projection_36cd20, site, 0x36cd20);
        if (const auto at = b.draw.world_projection_36cd20(project, f.projection_bounds))
            out.emplace_back(WorldTextDraw{site, *at, text, c.color(color), 1});
    };
    label(s.house_3f0038, s.house_3f0038, "House", 0x3eb198, 0x30a97e);
    // [C] Native distance uses SavedPos3effd8, but projection deliberately reads3effd8 via getter3eff90+48.
    label(s.saved_3effd8, s.saved_3effd8, "SavedPos", 0x3eb1f8, 0x30ab54);
}
} // namespace rust_internal_re
