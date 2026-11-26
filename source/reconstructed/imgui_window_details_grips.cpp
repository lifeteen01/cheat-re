#include "imgui_window_details_internal.hpp"
namespace rust_internal_re::window_details {
namespace {
const DrawShapesShared &shapes(const ImguiWindowDetailsApi &api, Address key, Rva at) {
    if (!api.shape_resources || !api.shape_resources->contains(key))
        { __builtin_trap(); }
    return **api.shape_resources->find(key);
}
Vec2 interpolate(Vec2 minimum, Vec2 maximum, Vec2 ratio) {
    return {(maximum.x - minimum.x) * ratio.x + minimum.x,
            (maximum.y - minimum.y) * ratio.y + minimum.y};
}
ClipRect border_rect(ImguiWindowDetailsState &s, Address w, int border, float padding,
                     float thickness) {
    const auto p = read<Vec2>(s, w + 0x20, 0x398d44);
    const auto size = read<Vec2>(s, w + 0x28, 0x398d44);
    Vec2 maximum{p.x + size.x, p.y + size.y};
    if (thickness == read<float>(s, 0x28d24c, 0x392ad4)) {
        const auto one = read<float>(s, 0x28d254, 0x392adf);
        maximum.x -= one;
        maximum.y -= one;
    }
    switch (border) {
    case 0:
        return {p.x - thickness, p.y + padding, p.x + thickness, maximum.y - padding};
    case 1:
        return {maximum.x - thickness, p.y + padding, maximum.x + thickness, maximum.y - padding};
    case 2:
        return {p.x + padding, p.y - thickness, maximum.x - padding, p.y + thickness};
    case 3:
        return {p.x + padding, maximum.y - thickness, maximum.x - padding, maximum.y + thickness};
    default:
        return {};
    }
}
void arc(ImguiWindowDetailsState &s, const ImguiWindowDetailsApi &api, Address key, Vec2 center,
         float radius, float begin, float end) {
    auto &list = draw(s, key, 0x3a684c);
    if (read<float>(s, 0x28d250, 0x3a684c) > radius) {
        list.path.push(center);
        return;
    }
    draw_shapes_arc_3a684c(list, shapes(api, key, 0x3a684c), center, radius, begin, end, 0);
}
void outer_borders(ImguiWindowDetailsState &s, const ImguiWindowDetailsApi &details,
                   const ImguiWindowsApi &api, Address w) {
    const auto c = context(s);
    const auto border = read<float>(s, w + 0x5c, 0x39a341);
    const auto rounding = read<float>(s, w + 0x58, 0x39a35b);
    if (border > 0 && !(read<ReU8>(s, w + 0x14, 0x39a363) & 0x80)) {
        const auto color =
            menu_detail::style_color(controls(s), 6, read<float>(s, 0x28d254, 0x39a375));
        const auto p = read<Vec2>(s, w + 0x20, 0x39a388);
        const auto size = read<Vec2>(s, w + 0x28, 0x39a382);
        rect(s, api, draw_key(s, w, 0x39a369), {p.x, p.y, p.x + size.x, p.y + size.y}, color,
             rounding, border);
    }
    const auto held = read<ReI8>(s, w + 0xc1, 0x39a3bd);
    if (held != -1) {
        const auto record = Address(0x2a94c0) + Address(ReI64(held)) * 28;
        const auto b = border_rect(s, w, held, rounding, 0);
        const auto first_key = draw_key(s, w, 0x39a3f7);
        const auto angle = read<float>(s, record + 0x18, 0x39a402);
        const auto direction = read<Vec2>(s, record, 0x39a40d);
        const Vec2 offset{direction.x * rounding, direction.y * rounding};
        const auto half = read<float>(s, 0x28d250, 0x39a415);
        const auto first_ratio = read<Vec2>(s, record + 8, 0x39a440);
        const auto p0 = interpolate({b.x, b.y}, {b.z, b.w}, first_ratio);
        const Vec2 first{(p0.x + half) + offset.x, (p0.y + half) + offset.y};
        const auto delta = read<float>(s, 0x2aa148, 0x39a472);
        arc(s, details, first_key, first, rounding, angle - delta, angle);
        const auto second_key = draw_key(s, w, 0x39a49e);
        const auto angle_again = read<float>(s, record + 0x18, 0x39a4ac);
        const auto direction_again = read<Vec2>(s, record, 0x39a4bb);
        const Vec2 offset_again{direction_again.x * rounding, direction_again.y * rounding};
        const auto second_ratio = read<Vec2>(s, record + 0x10, 0x39a4e9);
        const auto p1 = interpolate({b.x, b.y}, {b.z, b.w}, second_ratio);
        const Vec2 second{(p1.x + half) + offset_again.x, (p1.y + half) + offset_again.y};
        arc(s, details, second_key, second, rounding, angle_again, angle_again + delta);
        const auto color =
            menu_detail::style_color(controls(s), 30, read<float>(s, 0x28d254, 0x39a53e));
        const auto thickness = menu_detail::maxss(read<float>(s, 0x293134, 0x39a550), border);
        const auto key = draw_key(s, w, 0x39a563);
        auto &list = draw(s, key, 0x398758);
        if (color & 0xff000000)
            draw_shapes_path_stroke_398758(list, shapes(details, key, 0x398758), color, 0,
                                           thickness);
        else
            list.path.resize_existing(0);
    }
    const auto thickness = read<float>(s, c + 0x3818, 0x39a575);
    if (thickness > 0 && !(read<ReU8>(s, w + 0x14, 0x39a589) & 1)) {
        const auto height = window_detail::title_height(windows(s), w);
        const auto one = read<float>(s, 0x28d254, 0x39a59c);
        const auto y = (height + read<float>(s, w + 0x24, 0x39a5a7)) - one;
        const auto color = menu_detail::style_color(controls(s), 6, one);
        const auto x = read<float>(s, w + 0x20, 0x39a5bf);
        const auto width = read<float>(s, w + 0x28, 0x39a5cf);
        line(s, api, draw_key(s, w, 0x39a5f8), {x + border, y}, {(x + width) - border, y}, color,
             thickness);
    }
}
} // namespace
ClipRect resize_border_rect(ImguiWindowDetailsState &s, Address w, int index, float padding,
                            float thickness) {
    return border_rect(s, w, index, padding, thickness);
}
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
// [C] Released decoration prefix is reused with its final-grips gate disabled;
// the remaining native grip/held-border paths are concretely composed below.
void imgui_window_details_decorations_399d88(ImguiWindowDetailsState &s,
                                             const ImguiWindowDetailsApi &details,
                                             const ImguiWindowsApi &api, Address w, ClipRect title,
                                             bool highlight, bool handle, ReI32 grip_count,
                                             const re::ReArray<ReU32, 4> &colors,
                                             float grip_size) {
    using namespace window_details;
    // Capture values that native keeps in registers across drawing calls. Optional
    // peeks do not move the released prefix's required missing-byte stop order.
    const auto *image = controls(s).image;
    const auto saved_collapsed = image ? image->read<ReU8>(w + 0xb9) : re::re_nullopt;
    const auto saved_flags = image ? image->read<ReU32>(w + 0x14) : re::re_nullopt;
    const auto saved_border = image ? image->read<float>(w + 0x5c) : re::re_nullopt;
    const auto saved_rounding = image ? image->read<float>(w + 0x58) : re::re_nullopt;
    window_detail::decorations(windows(s), api, w, title, highlight, false, grip_count, colors,
                               grip_size);
    if (!saved_collapsed)
        { __builtin_trap(); }
    if (*saved_collapsed || !handle)
        return;
    if (!saved_flags || !saved_border || !saved_rounding)
        { __builtin_trap(); }
    const auto flags = *saved_flags;
    if (!(flags & 2) && grip_count > 0) {
        if (grip_count > 4)
            { __builtin_trap(); }
        const auto border = *saved_border;
        const auto rounding = *saved_rounding;
        for (int i = 0; i < grip_count; ++i) {
            const auto color = colors[ReUSize(i)];
            if (!(color & 0xff000000))
                continue;
            const auto record = Address(0x2a9460) + Address(i) * 24;
            const auto p = read<Vec2>(s, w + 0x20, 0x39a16e);
            const auto size = read<Vec2>(s, w + 0x28, 0x39a167);
            const auto ratio = read<Vec2>(s, record, 0x39a18e);
            const auto corner = interpolate(p, {p.x + size.x, p.y + size.y}, ratio);
            const auto direction = read<Vec2>(s, record + 8, 0x39a1da);
            const Vec2 first_size = i & 1 ? Vec2{border, grip_size} : Vec2{grip_size, border};
            const auto first_key = draw_key(s, w, 0x39a193);
            draw(s, first_key, 0x378a40)
                .path.push(
                    {corner.x + direction.x * first_size.x, corner.y + direction.y * first_size.y});
            const auto second_key = draw_key(s, w, 0x39a1fd);
            const Vec2 second_size = i & 1 ? Vec2{grip_size, border} : Vec2{border, grip_size};
            const auto direction_again = read<Vec2>(s, record + 8, 0x39a23f);
            draw(s, second_key, 0x378a40)
                .path.push({corner.x + direction_again.x * second_size.x,
                            corner.y + direction_again.y * second_size.y});
            const auto arc_direction = read<Vec2>(s, record + 8, 0x39a26a);
            const Vec2 center{(border + rounding) * arc_direction.x + corner.x,
                              (border + rounding) * arc_direction.y + corner.y};
            const auto begin = read<ReI32>(s, record + 0x10, 0x39a28b);
            const auto end = read<ReI32>(s, record + 0x14, 0x39a293);
            const auto key = draw_key(s, w, 0x39a29c);
            auto &list = draw(s, key, 0x3a6b38);
            if (read<float>(s, 0x28d250, 0x3a6b3c) > rounding)
                list.path.push(center);
            else
                draw_shapes_arc_fast_3a8eec(list, shapes(details, key, 0x3a6b6d), center, rounding,
                                            re::re_bit_cast<ReI32>(ReU32(begin) * 4u),
                                            re::re_bit_cast<ReI32>(ReU32(end) * 4u),
                                            0);
            const auto fill_key = draw_key(s, w, 0x39a2ac);
            draw_shapes_path_fill_378a14(draw(s, fill_key, 0x378a14),
                                         shapes(details, fill_key, 0x378a14), color);
        }
    }
    outer_borders(s, details, api, w);
}
// [C] 0x392a9c..392bb9: resize border rect for given index, padding and thickness.
ClipRect imgui_window_details_border_rect_392a9c(ImguiWindowDetailsState &s, Address w, int index,
                                                  float padding, float thickness) {
    using namespace window_details;
    return border_rect(s, w, index, padding, thickness);
}
} // namespace rust_internal_re
