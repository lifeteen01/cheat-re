#include "menu_color_picker_internal.hpp"
namespace rust_internal_re::picker_detail {
void gradient(MenuControlsState &s, const MenuColorPickerApi &api, Address key, ClipRect box,
              re::ReArray<ReU32, 4> colors) {
    if (!((colors[0] | colors[1] | colors[2] | colors[3]) & 0xff000000u))
        return;
    draw_shapes_gradient_3a12d8(list(s, key, 0x3a12d8), shared(api, key, 0x3a12d8), {box.x, box.y},
                                {box.z, box.w}, colors);
}
void circle(MenuControlsState &s, const MenuColorPickerApi &api, Address key, Vec2 center,
            float radius, ReU32 color, bool filled) {
    if (!(color & 0xff000000u) || !(radius > 0))
        return;
    auto &d = list(s, key, filled ? 0x39f874 : 0x39f7ac);
    const auto &resource = shared(api, key, filled ? 0x39f874 : 0x39f7ac);
    if (filled)
        draw_shapes_circle_filled_39f874(d, resource, center, radius, color, 0);
    else
        draw_shapes_circle_39f7ac(d, resource, center, radius, color, 0, 1.0f);
}
void rounded_border(MenuControlsState &s, const MenuColorPickerApi &api, ClipRect box,
                    ReU32 border, float rounding) {
    // [C]378a88 reached flags0xf0: both opposite corner pairs reduce
    // allowed width/height by half before the native -1 limit.
    rounding = minss(rounding, re::re_fabs(width(box)) * 0.5f - 1.0f);
    rounding = minss(rounding, re::re_fabs(height(box)) * 0.5f - 1.0f);
    if (0.0f >= rounding)
        return;
    // [C] Native reserves a transparent central quad even when all four
    // corner colors are zero; this is distinct from3a12d8's alpha gate.
    auto key = draw(s, window(s), 0x378ba4);
    auto &d = list(s, key, 0x378bc7);
    const auto &resource = shared(api, key, 0x378ba4);
    draw_core_reserve_3a719c(d, 6, 4);
    auto vertex = [&](Vec2 p) {
        DrawVertex value{};
        re::re_memcpy(value.data(), &p, sizeof(p));
        re::re_memcpy(value.data() + 8, &resource.white_uv, sizeof(resource.white_uv));
        return value;
    };
    const re::ReArray<DrawVertex, 4> vertices{vertex({box.x, box.y}), vertex({box.z, box.y}),
                                             vertex({box.z, box.w}), vertex({box.x, box.w})};
    constexpr re::ReArray<ReU16, 6> indices{0, 1, 2, 0, 2, 3};
    draw_core_write_relative(d, vertices, indices);
    const re::ReArray<Vec2, 4> outer{
        {{box.x, box.y}, {box.z, box.y}, {box.z, box.w}, {box.x, box.w}}};
    const re::ReArray<Vec2, 4> center{{{box.x + rounding, box.y + rounding},
                                      {box.z - rounding, box.y + rounding},
                                      {box.z - rounding, box.w - rounding},
                                      {box.x + rounding, box.w - rounding}}};
    constexpr re::ReArray<re::ReArray<float, 2>, 4> angles{
        {{3.1f, 4.82f}, {4.62f, 6.34f}, {6.24f, 7.96f}, {7.77f, 9.5f}}};
    for (ReUSize i = 0; i < 4; ++i) {
        key = draw(s, window(s), 0x378cfa);
        auto &current = list(s, key, 0x378d05);
        current.path.push(outer[i]);
        draw_shapes_arc_3a684c(current, shared(api, key, 0x378d54), center[i], rounding,
                               angles[i][0], angles[i][1], 0);
        draw_shapes_path_fill_378a14(current, shared(api, key, 0x378d64), border);
    }
}
bool invisible(MenuControlsState &s, const MenuColorPickerApi &api, re::ReStringView label,
               Vec2 size) {
    const auto w = window(s);
    if (read<ReU8>(s, w + 0xbb, 0x3c2de3))
        return false;
    const auto value = id(s, label);
    size = calculate_size(s, size, {});
    const auto p = read<Vec2>(s, w + 0x100, 0x3c2e18);
    const ClipRect box{p.x, p.y, p.x + size.x, p.y + size.y};
    item_size(s, size, -1);
    if (!item_add(s, api.controls, box, value))
        return false;
    return menu_controls_button_behavior_3bc7e0(s, api.controls, box, value, 0).pressed;
}
void checkerboard(MenuControlsState &s, const MenuColorPickerApi &api, Address key, ClipRect box,
                  float grid) {
    // [C]3a7654 reached specialization: tint0, offset0, rounding0,
    // flags0. Composite bases are0xffcccccc /0xff808080, then style alpha.
    const auto alpha = read<float>(s, context(s) + 0x37d0, 0x3922dc);
    ReU32 alpha_byte = 255;
    if (!(alpha >= 1.0f)) {
        const auto scaled = 255.0f * alpha;
        const auto integer = !re::re_isfinite(scaled) || scaled < -0x1p63f || scaled >= 0x1p63f
                                 ? INT64_MIN
                                 : ReI64(scaled);
        alpha_byte = ReU32(ReU64(integer));
    }
    const auto light = (alpha_byte << 24) | 0xccccccu;
    const auto dark = (alpha_byte << 24) | 0x808080u;
    auto &d = list(s, key, 0x3a7726);
    const auto &r = shared(api, key, 0x3a7726);
    draw_shapes_rect_filled_3a1244(d, r, {box.x, box.y}, {box.z, box.w}, light, 0, 0xf0);
    if (!(box.w > box.y))
        return;
    if (!(grid > 0) || !re::re_isfinite(grid))
        { __builtin_trap(); }
    ReUSize iterations = 0;
    ReU32 row = 0;
    for (float y = box.y; box.w > y; y += grid, ++row) {
        if (++iterations > 1000000)
            { __builtin_trap(); }
        const auto y0 = clamp(y, box.y, box.w), y1 = minss(y + grid, box.w);
        if (y0 >= y1)
            continue;
        for (float x = box.x + float(row & 1u) * grid; box.z > x; x += grid + grid) {
            if (++iterations > 1000000)
                { __builtin_trap(); }
            const auto x0 = clamp(x, box.x, box.z), x1 = minss(x + grid, box.z);
            if (!(x0 >= x1))
                draw_shapes_rect_filled_3a1244(d, r, {x0, y0}, {x1, y1}, dark, 0, 0x100);
        }
    }
}
} // namespace rust_internal_re::picker_detail
