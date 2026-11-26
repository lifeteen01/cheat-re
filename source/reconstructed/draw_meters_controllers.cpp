#include "draw_meters_internal.hpp"
namespace rust_internal_re {
using namespace draw_meters_detail;
void draw_meters_integer_35bab8(DrawMetersContext &c, DrawMetersIntegerGeometry g, float value,
                                float maximum) {
    const auto col = thresholds(value, maximum, false);
    float_rect(c, {float(g.x), float(g.y)}, {float(g.width), float(g.height)}, 0xff000000);
    const auto available = add(g.width, -2);
    const auto width = re::re_min(available, world_cvttss2si((float(available) * value) / maximum));
    if (width > 0)
        float_rect(c, {float(add(g.x, 1)), float(add(g.y, 1))},
                   {float(width), float(add(g.height, -2))}, col);
}
void draw_meters_colored_35b850(DrawMetersContext &c, Vec2 p, float value, float maximum,
                                float width, float height, const DrawMetersColor &background) {
    const auto col = thresholds(value, maximum, true);
    float_rect(c, {p.x - f(0x40866666), p.y - f(0x40866666)},
               {width + f(0x41066666), height + f(0x41066666)}, 0xff363e43);
    const auto bg = font_text_color_2ef80c(color(c, background, 0x35b9fd));
    float_rect(c, p, {width, height + 1}, bg);
    const float inner_width = ((width - 2) * value) / maximum;
    float_rect(c, {p.x + 1, p.y + 1}, {inner_width, height - 1}, col);
}
void draw_meters_violation_35b508(DrawMetersContext &c, Vec2 center, float first, float first_max,
                                  float second, float second_max) {
    const float outer = read<float>(c.image, 0x3ed668, 0x35b523) * f(0x43f2bc29);
    const float raw = outer - f(0x41860973), inner = raw > 0 ? raw : 0;
    const float middle = (inner + outer) * 0.5f;
    if (first > 0)
        draw_meters_ring_35ac38(
            c, {center, first, first_max, outer, middle, {{0, 1, 0, 1}, {}}, true});
    if (second > 0)
        draw_meters_ring_35ac38(
            c, {center, second, second_max, middle, inner, {{0, 1, 1, 192.0f / 255}, {}}, false});
}
void draw_meters_violation_35c938(DrawMetersContext &c, Vec2 center, float first, float first_max,
                                  float second, float second_max, float third, float third_max) {
    const float radius = read<float>(c.image, 0x3ed668, 0x35c969) * f(0x43f2bc29),
                inner = radius - f(0x41072183);
    draw_meters_ring_35ac38(c, {center,
                                third,
                                third_max,
                                radius + f(0x41072183),
                                radius,
                                {{1, 165.0f / 255, 0, 1}, {}},
                                true});
    if (first > 0)
        draw_meters_ring_35ac38(
            c, {center, first, first_max, radius, inner, {{0, 1, 0, 1}, {}}, true});
    if (second > 0) {
        const float raw = inner - f(0x41072183), in = raw > 0 ? raw : 0;
        draw_meters_ring_35ac38(
            c, {center, second, second_max, inner, in, {{0, 1, 1, 192.0f / 255}, {}}, false});
    }
}
void draw_meters_segmented_36232c(DrawMetersContext &c, DrawMetersIntegerGeometry g, float value,
                                  float maximum, ReI32 count) {
    const auto win = window(c);
    const float height = float(g.height), rounding = height * 0.125f;
    const float ratio = clamp(value / maximum, 0, 1), inside_height = height - 2,
                inside_width = float(g.width) - 2, unit = inside_width / float(count);
    const auto active = world_cvttss2si(ceil_literal(float(count) * ratio));
    const auto first_key = window_list(c, win, 0x36249b);
    const Vec2 minimum{float(g.x), float(g.y)},
        maximum_point{float(add(g.x, g.width)), float(add(g.y, g.height))};
    filled(c, first_key, minimum, maximum_point, 0xe61e1e1e, rounding);
    const float x = minimum.x + 1, y = minimum.y + 1;
    const auto last = add(count, -1);
    for (ReI32 i = 0; i < active; i = add(i, 1)) {
        bound(c, ReUSize(i) + 1, 0x36258c);
        const float start = float(i) * unit;
        const float left = start + x;
        const float width = i == last ? inside_width - start : unit;
        const auto rgb = draw_meters_interpolate_362200({1, 0, 0, 1}, {0, 1, 0, 1}, 1 - ratio);
        const auto key = window_list(c, win, 0x3625ca);
        const float corner = i == 0 || i == last ? rounding : 0;
        filled(c, key, {left, y}, {(width + left) - 1, y + inside_height},
               font_text_color_2ef80c(rgb), corner);
    }
    for (ReI32 i = 1; i < count; i = add(i, 1)) {
        bound(c, ReUSize(i), 0x36268c);
        const auto key = window_list(c, win, 0x36268c);
        // [C] R12D is initialized once to50, all separators use the same gray.
        const float at = float(i) * unit + x;
        const auto gray =
            font_text_color_2ef80c({50.0f / 255, 50.0f / 255, 50.0f / 255, 150.0f / 255});
        line(c, key, {at, y}, {at, y + inside_height}, gray);
    }
    const auto final_key = window_list(c, win, 0x362712);
    outlined(c, final_key, minimum, maximum_point, 0xff464646, rounding, 0, 1);
}
void draw_meters_pulse_35b0fc(DrawMetersContext &c, Vec2 center, float value, float maximum,
                              float width, float height) {
    const auto key = draw_meters_foreground_3925a4(c);
    const float ratio = value / maximum, rounding = height * 0.5f;
    const float x = center.x - width * 0.5f, y = center.y - rounding, right = x + width,
                bottom = y + height;
    filled(c, key, {x + 1, y + 1}, {right - 1, bottom - 1}, 0xc8282828, rounding);
    if (value > 0) {
        const float left = (x + f(0x402c49ba)) + 1.5f, available = (width - f(0x40ac49ba)) - 3;
        const float end = clamp(available * ratio, 1, available) + left;
        ReU32 col = (cvtt64low((1 - ratio) * 255) | 0xffff0000u) << 8;
        col |= cvtt64low(ratio * 255);
        filled(c, key, {left, (y + f(0x402c49ba)) + 1.5f}, {end, (bottom - f(0x402c49ba)) - 1.5f},
               col, (height - f(0x40ac49ba) - 3) * 0.5f);
    }
    outlined(c, key, {x + 1, y + 1}, {right - 1, bottom - 1}, 0xff646464, rounding, 0xf0, 1.5f);
    if (ratio > 0.5f) {
        const auto context = read<Address>(c.image, 0x405b28, 0x3926ac);
        const auto phase = read<float>(c.image, 0x3fdac4, 0x35b3d2);
        const auto delta = read<float>(c.image, context + 0x18, 0x35b3da);
        const float next = phase + (delta + delta);
        write(c.image, 0x3fdac4, next, 0x35b3e7);
        const float pulse = (scalar(c, 0x2e0198, next, 0x35b3ef) + 1) * 0.5f;
        for (ReI32 i = 0; i < 2; ++i) {
            const float half = float(i) * 0.5f, extent = half + (pulse + 1);
            const auto alpha = cvtt64low(((1 - half) * pulse) * 100);
            outlined(c, key, {x - extent, y - extent}, {right + extent, bottom + extent},
                     (alpha << 24) | 0xffffff, rounding + extent, 0xf0, 1.5f);
        }
    }
}
} // namespace rust_internal_re
