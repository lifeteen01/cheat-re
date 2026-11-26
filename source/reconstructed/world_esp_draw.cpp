#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class F> void draw_need(const F &f, Rva site, Rva dep) {
    if (!f)
        { __builtin_trap(); }
}
const WorldDrawRoute *route(ReU32 category) {
    for (const auto &r : world_draw_routes_2fb72c())
        if (r.category == category)
            return &r;
    return nullptr;
}
float native_min(float a, float b) {
    return a < b ? a : b;
} // [C] MINSS selects source on unordered/equality.
float native_max(float a, float b) {
    return a > b ? a : b;
}
} // namespace
// [C] 0x317b1c..0x317be9; [U] libm trig rounding may differ from sample polynomials.
Vec2 rotate_world_radar_317b1c(Vec2 point, float degrees) {
    ReUSize steps = 0;
    while (degrees > 360) {
        const float next = degrees - 360;
        if (next == degrees || steps++ > 1000000)
            { __builtin_trap(); }
        degrees = next;
    }
    while (0 > degrees) {
        const float next = degrees + 360;
        if (next == degrees || steps++ > 1000000)
            { __builtin_trap(); }
        degrees = next;
    }
    const float radians = degrees * re::re_bit_cast<float>(0x3c8efa35u);
    const float sine = -re::re_sinf(radians), cosine = re::re_cosf(radians);
    return {point.x * cosine - point.y * sine, point.y * cosine + point.x * sine};
}
WorldDrawStyle route_world_draw_scalars_2fb72c(const WorldDrawData &d, const WorldEspConfig &c) {
    WorldDrawStyle s;
    s.label = d.record.label;
    s.color = {1, 1, 1, 1};
    s.icon_multiplier = 1;
    const auto *r = route(d.record.category);
    // [C] No matching route leaves the constructor's draw gates false. Includes 77/78.
    if (!r)
        return s;
    s.route = r->begin;
    const bool on = r->berry_option >= 0 ? c.option(0x3f00b8, ReUSize(r->berry_option))
                                         : (r->toggle && c.boolean(r->toggle));
    const auto cat = d.record.category;
    if (r->color)
        s.color = c.color(r->color);
    if (cat >= 34 && cat <= 39) {
        constexpr re::ReArray<re::ReArray<float, 4>, 6> colors{
            {{0, 0, 0, 1}, {0, 0, 1, 1}, {0, 1, 0, 1}, {1, 0, 0, 1}, {1, 1, 1, 1}, {1, 1, 0, 1}}};
        s.color = colors[cat - 34];
        s.label = "Berry";
    }
    if (cat == 31 || cat == 32)
        s.color = {235.0f / 255.0f, 116.0f / 255.0f, 31.0f / 255.0f, 1};
    if (!r->label.empty())
        s.label = re::ReString(r->label);
    s.maximum_distance = r->maximum_distance ? c.integer(r->maximum_distance) : 0;
    s.chams_index = r->chams_index ? c.integer(r->chams_index) : 0;
    s.icons = r->icons && c.boolean(r->icons);
    s.icon_multiplier = r->icon_multiplier ? c.real(r->icon_multiplier) : 1;
    const bool ore = cat == 1 || cat == 2 || cat == 3 || cat == 4 || cat == 122;
    s.world = on && d.projected && (!ore || d.visible_2f8180) &&
              (!r->require_positive_health || d.health > 0);
    const bool radar = c.boolean(0x3e83c8) || c.boolean(0x3ea2b8);
    s.radar = on && radar && r->radar_allowed && (!ore || d.visible_2f8180);
    s.chams = s.world && r->chams && c.boolean(r->chams);
    if (cat == 5 && !c.option(0x3f04a8, 16))
        s.world = s.radar = s.chams = false;
    if (cat == 84 && (c.boolean(0x3e8828) || !d.visible_2f81e8))
        s.world = false;
    if (cat == 76)
        s.radar = on && c.boolean(0x3e83c8);
    if (c.boolean(0x3e5cb8) && r->battle_option >= 0 &&
        !c.option(0x3f0538, ReUSize(r->battle_option)))
        s.world = s.radar = s.chams = false;
    return s;
}
WorldDrawStyle route_world_draw_2fb72c(const WorldDrawData &d, const WorldEspConfig &c) {
    const auto *r = route(d.record.category);
    if (r && r->special_local_body)
        __builtin_trap();
    return route_world_draw_scalars_2fb72c(d, c);
}
// [C] Index zero retains xmm12=13 from 0x2fc44b; default/one gives 16.
float world_item_font_height_2fd04b(ReI32 item, ReI32 font) {
    float height = 13;
    if (item != 0) {
        switch (item) {
        case 2:
            height = 18;
            break;
        case 3:
            height = 20;
            break;
        case 4:
            height = 22;
            break;
        case 5:
            height = 24;
            break;
        default:
            height = 16;
            break;
        }
    }
    if (font == 2)
        height = 11;
    else if (font == 0)
        height = 10;
    else if (font == 3)
        height = 16;
    return height;
}
void draw_world_radar_305c1e(const WorldDrawData &d, const WorldDrawStyle &s,
                             const WorldEspConfig &c, Vec2 radar_position, Vec2 mouse,
                             WorldDrawBackend &b, WorldDrawOutput out,
                             WorldRadarFeedback *feedback) {
    (void)mouse;
    const bool map_allowed = !(c.boolean(0x3e6e38) && d.map_open);
    const bool only_ore = c.boolean(0x3e6cf8);
    const auto cat = d.record.category;
    const bool ore = cat == 1 || cat == 2 || cat == 3 || cat == 122;
    if (c.boolean(0x3ea038) && map_allowed && s.radar && c.boolean(0x3e83c8) &&
        (!only_ore || ore)) {
        Vec2 delta{d.local_position.x - d.position.x, d.local_position.z - d.position.z};
        const float magnitude = length(delta);
        const float scaled = (magnitude * 100.0f) / 100.0f;
        const float clamp = native_min(c.real(0x3ed938), scaled);
        // [C] 3c7c44 computes the magnitude separately for each division.
        delta = {delta.x / length(delta), delta.y / length(delta)};
        delta = delta * clamp;
        draw_need(b.yaw_31530c, 0x305d44, 0x31530c);
        const float angle = 360.0f - b.yaw_31530c(d.local_entity);
        const auto rotated = b.rotate_317b1c ? b.rotate_317b1c(delta, angle)
                                             : rotate_world_radar_317b1c(delta, angle);
        const Vec2 at{radar_position.x - rotated.x, radar_position.y + rotated.y};
        const float radius = c.real(0x3eda28);
        out.emplace_back(WorldCircleDraw{0x305dec, at, radius, s.color, true});
        if (c.boolean(0x3ea3a8))
            out.emplace_back(WorldTextDraw{0x305e55,
                                           {at.x, (at.y + radius) + 6.325f},
                                           re::re_to_string(world_cvttss2si(d.distance)),
                                           s.color,
                                           3});
    }
    // [C] Map gate above does not guard this separate in-game radar branch.
    if (c.boolean(0x3ea2b8) && s.radar) {
        Vec2 at = d.ingame_screen;
        if (b.ingame_projection_314f08)
            at = b.ingame_projection_314f08(d.position);
        else if (!d.ingame_projected)
            { __builtin_trap(); }
        if (at.x == 0 && at.y == 0)
            return; // [C] 2ef6c4 is inequality, unordered passes.
        draw_need(b.scale_315778, 0x305eda, 0x315778);
        float size = b.scale_315778() + c.real(0x3edac8);
        if (feedback)
            *feedback = {true, at, size};
        const float text_y = (at.y + size) + 6.325f;
        if (c.boolean(0x3ea308) && cat != 5 && cat != 71) {
            size = size * 2.8f;
            out.emplace_back(WorldIconDraw{0x305f69, at, {size, size}, re::re_to_string(cat)});
        } else
            out.emplace_back(WorldDirectionMarkerDraw{0x305faf, at, size, s.color, false, 0});
        const auto text =
            re::re_to_string(world_cvttss2si(length(d.position - d.camera_position))) + "m";
        out.emplace_back(WorldTextDraw{0x306080, {at.x, text_y}, text, {1, 1, 1, 1}, 3});
    }
}
void draw_world_tooltip_3060ab(Vec2 mouse, Vec2 viewport, re::ReStringView title,
                               re::ReStringView body, bool centered, WorldDrawBackend &b,
                               WorldDrawOutput out) {
    draw_need(b.measure_38f79c, 0x30612f, 0x38f79c);
    const Vec2 a = b.measure_38f79c(title), z = b.measure_38f79c(body);
    const float w = native_max(a.x, z.x), height = (a.y + 2.0f) + z.y;
    const Vec2 size{w + 10.0f, height + 10.0f};
    Vec2 at{mouse.x + 12, mouse.y + 12};
    if (at.x + size.x > viewport.x)
        at.x = viewport.x - size.x;
    if (at.y + size.y > viewport.y)
        at.y = viewport.y - size.y;
    if (0.0f > at.x)
        at.x = 0;
    if (0.0f > at.y)
        at.y = 0;
    out = out.capture_background(0x30626f);
    const Vec2 end{at.x + size.x, at.y + size.y};
    out.emplace_back(WorldRectangleDraw{0x3062c0, at, end, 0x8c000000, 4, 0, true});
    out.emplace_back(WorldRectangleDraw{0x306316, at, end, 0x24ffffff, 4, 1, false});
    const float title_x = at.x + 5 + (centered ? (w - a.x) * 0.5f : 0);
    const float body_x = at.x + 5 + (centered ? (w - z.x) * 0.5f : 0);
    const re::ReArray<float, 4> tint{150.0f / 255.0f, 190.0f / 255.0f, 158.0f / 255.0f,
                                    240.0f / 255.0f};
    out.emplace_back(WorldTextDraw{0x306383, {title_x, at.y + 5}, re::ReString(title), tint, 0});
    out.emplace_back(WorldTextDraw{0x3066bb,
                                   {body_x, (at.y + 5 + a.y) + 2},
                                   re::ReString(body),
                                   {1, 1, 1, 235.0f / 255.0f},
                                   0});
}
} // namespace rust_internal_re
