#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class F> void require_label_callback(const F &f, Rva site, Rva dep) {
    if (!f)
        { __builtin_trap(); }
}
} // namespace
bool world_screen_gate_317130(Vec2 p, Vec2 viewport) {
    return p.x >= 0 && p.y >= 0 && viewport.x >= p.x && viewport.y >= p.y;
}
void draw_world_label_306752(const WorldDrawData &d, const WorldDrawStyle &s,
                             const WorldLabelRows &rows, const WorldEspConfig &c, Vec2 viewport,
                             WorldDrawOutput out) {
    if (!s.world || d.distance > float(s.maximum_distance) || (c.boolean(0x3e6e38) && d.map_open) ||
        !world_screen_gate_317130(d.screen, viewport))
        return;
    if (rows.draw_line)
        out.emplace_back(WorldLineDraw{0x30680a, rows.line_from, rows.line_to, s.color, 1});
    const float font = world_item_font_height_2fd04b(c.integer(0x3ee7e8), c.integer(0x3eed38));
    const float icon_size = s.icon_multiplier * font;
    float step = 16;
    if (s.icons && s.icon_multiplier > 1.5f)
        step = ((s.icon_multiplier - 1.5f) * 0.15f + 1.0f) * 16.0f;
    if (s.icons)
        out.emplace_back(
            WorldIconDraw{rows.on_fire_icon ? Rva(0x306a14) : Rva(0x306a5d),
                          d.screen,
                          {icon_size, icon_size},
                          rows.on_fire_icon ? "OnFire" : re::re_to_string(d.record.category)});
    else
        out.emplace_back(WorldTextDraw{0x306abc, d.screen, s.label, s.color, 1});
    float offset = 0;
    constexpr re::ReArray<Rva, 5> sites{0x306b1b, 0x306b76, 0x306bd1, 0x306c2c, 0x306c87};
    for (ReUSize i = 0; i < rows.rows.size(); ++i)
        if (!rows.rows[i].empty()) {
            offset += step;
            out.emplace_back(WorldTextDraw{
                sites[i], {d.screen.x, offset + d.screen.y}, rows.rows[i], s.color, 1});
        }
    if (!rows.suppress_distance) {
        offset += step;
        out.emplace_back(WorldTextDraw{0x306d20,
                                       {d.screen.x, offset + d.screen.y},
                                       re::re_to_string(world_cvttss2si(d.distance)) + "m",
                                       {1, 1, 1, 1},
                                       1});
    }
    if (rows.values[0] > 0) {
        offset += step * 0.8f;
        out.emplace_back(WorldBarDraw{0x306db2, world_cvttss2si(d.screen.x - step * 1.04f),
                                      world_cvttss2si(offset + d.screen.y),
                                      world_cvttss2si(step * 2.31f), world_cvttss2si(step * 0.38f),
                                      float(rows.values[0]), float(rows.maximums[0])});
    }
    if (rows.values[1] > 0) {
        if (rows.values[0] <= 0)
            offset += step * 0.54f;
        offset += step * 0.54f;
        out.emplace_back(WorldBarDraw{0x306e61, world_cvttss2si(d.screen.x - step * 1.04f),
                                      world_cvttss2si(offset + d.screen.y),
                                      world_cvttss2si(step * 2.31f), world_cvttss2si(step * 0.38f),
                                      float(rows.values[1]), float(rows.maximums[1])});
    }
    if (rows.values[2] > 0) {
        offset += step;
        offset += d.screen.y;
        const auto text =
            "[" + re::re_to_string(rows.values[2]) + "/" + re::re_to_string(rows.maximums[2]) + "]";
        out.emplace_back(WorldTextDraw{0x306eb0, {d.screen.x, offset}, text, s.color, 1});
    }
}
bool world_renderer_selected_306f4c(re::ReStringView label, ReU32 i) {
    // [C] Native strcmp-like helper compares literal record strings, not category IDs.
    if (label == "PatrolHelicopter" || label == "AttackHelicopter")
        return i < 20;
    if (label == "Minicopter")
        return i >= 1;
    if (label == "ScrapHelicopter")
        return i < 15;
    if (label == "BradleyAPC")
        return i < 25;
    if (label == "Rowboat")
        return i < 2;
    if (label == "RHIB")
        return i >= 4;
    if (label == "Tugboat")
        return i > 2;
    if (label == "StoneOre" || label == "MetalOre" || label == "SulfurOre")
        return i <= 3;
    return true;
}
void apply_world_chams_306ebe(re::ReStringView label, re::ReSpan<const Address> renderers,
                              const WorldEspConfig &c, WorldShaderState &state,
                              WorldShaderBackend &b) {
    if (renderers.size() > ReUSize(INT32_MAX))
        { __builtin_trap(); }
    for (ReUSize i = 0; i < renderers.size(); ++i) {
        if (!world_renderer_selected_306f4c(label, ReU32(i)) ||
            !sample_pointer_range(renderers[i]))
            continue;
        require_label_callback(b.material_370fac, 0x3071ad, 0x370fac);
        const auto material = b.material_370fac(renderers[i]);
        if (!sample_pointer_range(material))
            continue;
        require_label_callback(b.shader_370e84, 0x3071c8, 0x370e84);
        if (!sample_pointer_range(b.shader_370e84(material)))
            continue;
        const auto index =
            c.integer(0x3ef008); // [C] ItemChamsIndex, despite per-category index stores.
        if (index < 0 || index >= 7)
            __builtin_trap();
        const auto n = ReUSize(index);
        const auto bundle = state.bundles_3e5e88[n];
        if (!bundle)
            continue;
        auto &shader = state.shaders_3e5ec0[n];
        if (!shader) {
            require_label_callback(b.load_375abc, 0x307483, 0x375abc);
            shader = b.load_375abc(bundle, re::re_to_string(index), "Shader", "UnityEngine");
            if (!shader)
                continue;
        }
        require_label_callback(b.assign_shader_3710dc, 0x30749f, 0x3710dc);
        b.assign_shader_3710dc(material, shader);
        require_label_callback(b.set_color_370d64, 0x3074e1, 0x370d64);
        b.set_color_370d64(material, "_b", c.color(0x3ef3d8));
        b.set_color_370d64(material, "_a", c.color(0x3ef3c8));
    }
}
} // namespace rust_internal_re
