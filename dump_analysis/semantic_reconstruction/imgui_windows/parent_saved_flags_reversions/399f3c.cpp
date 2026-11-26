#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
namespace {
Address draw_key(ImguiWindowsState &s, Address w) {
    return read<Address>(s, w + 0x298, 0x399ec3);
}
void rectangle(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, ClipRect rect,
               std::uint32_t color, float rounding, std::uint32_t flags, bool filled,
               float thickness = 1) {
    // [C]3a1244/3a1148 transparent-entry return. No metrics/geometry is fabricated.
    if (!(color & 0xff000000))
        return;
    if (!api.controls.rectangle)
        throw RendererMissing(filled ? 0x3a1244 : 0x3a1148, filled ? 0x3a1244 : 0x3a1148,
                              "window rectangle geometry backend absent");
    api.controls.rectangle({draw_key(s, w),
                            {rect.x, rect.y},
                            {rect.z, rect.w},
                            color,
                            rounding,
                            thickness,
                            flags,
                            filled});
}
void line(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, Vec2 a, Vec2 b,
          std::uint32_t color, float thickness) {
    if (!(color & 0xff000000))
        return;
    if (!api.controls.line)
        throw RendererMissing(0x3a01f4, 0x3a01f4, "window line geometry backend absent");
    api.controls.line({draw_key(s, w), a, b, color, thickness});
}
void render_frame(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, ClipRect bounds,
                  std::uint32_t color, float rounding) {
    // [C]3992a0..39940e, border=true path exercised by window decorations.
    rectangle(s, api, w, bounds, color, rounding, 0, true);
    const auto c = context(s);
    const auto border = read<float>(s, c + 0x3818, 0x399314);
    if (border > read<float>(s, 0x28d24c, 0x39931c)) {
        const auto one = read<float>(s, 0x28d254, 0x399329);
        auto shadow = bounds;
        shadow.x += one;
        shadow.y += one;
        shadow.z += one;
        shadow.w += one;
        const auto shadow_color = menu_detail::style_color(control(s), 7, one);
        rectangle(s, api, w, shadow, shadow_color, rounding, 0, false, border);
        rectangle(s, api, w, bounds, menu_detail::style_color(control(s), 6, one), rounding, 0,
                  false, border);
    }
}
void outer_borders(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w) {
    // [C]39a308 entry/border and39a575 tail. Held-border path39a3ce..39a575 [U].
    const auto c = context(s);
    const auto border = read<float>(s, w + 0x5c, 0x39a341),
               rounding = read<float>(s, w + 0x58, 0x39a35b);
    const auto flags = read<std::uint8_t>(s, w + 0x14, 0x39a363);
    if (border > 0 && !(flags & 0x80)) {
        const auto color =
            menu_detail::style_color(control(s), 6, read<float>(s, 0x28d254, 0x39a375));
        const auto p = read<Vec2>(s, w + 0x20, 0x39a388), size = read<Vec2>(s, w + 0x28, 0x39a382);
        rectangle(s, api, w, {p.x, p.y, p.x + size.x, p.y + size.y}, color, rounding, 0, false,
                  border);
    }
    if (read<std::int8_t>(s, w + 0xc1, 0x39a3bd) != -1)
        throw RendererMissing(0x39a3ce, 0x392a9c,
                              "held resize-border rectangle/path closure remains untranslated");
    const auto frame_border = read<float>(s, c + 0x3818, 0x39a575);
    if (frame_border > 0 && !(read<std::uint8_t>(s, w + 0x14, 0x39a589) & 1)) {
        const auto height = title_height(s, w), one = read<float>(s, 0x28d254, 0x39a59c);
        const auto y = (height + read<float>(s, w + 0x24, 0x39a5a7)) - one;
        const auto color = menu_detail::style_color(control(s), 6, one);
        const auto x = read<float>(s, w + 0x20, 0x39a5bf),
                   width = read<float>(s, w + 0x28, 0x39a5cf);
        line(s, api, w, {x + border, y}, {(x + width) - border, y}, color, frame_border);
    }
}
} // namespace
void decorations(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, ClipRect title,
                 bool highlight, bool handle_grips, std::int32_t grip_count,
                 const std::array<std::uint32_t, 4> &colors, float grip_size) {
    const auto c = context(s);
    const auto border = read<float>(s, w + 0x5c, 0x399dbf),
               rounding = read<float>(s, w + 0x58, 0x399dd3);
    write(s, w + 0xbb, std::uint8_t(0), 0x399deb);
    const auto one = read<float>(s, 0x28d254, 0x399e24);
    if (read<std::uint8_t>(s, w + 0xb9, 0x399df1)) {
        const auto backup = read<float>(s, c + 0x3818, 0x399df9);
        write(s, c + 0x3818, border, 0x399e03);
        const auto index = highlight && !read<std::uint8_t>(s, c + 0x4926, 0x399e15) ? 12u : 13u;
        render_frame(s, api, w, title, menu_detail::style_color(control(s), index, one), rounding);
        write(s, c + 0x3818, backup, 0x399e4a);
        return;
    }
    auto flags = read<std::uint32_t>(s, w + 0x14, 0x399e59);
    const bool no_title = flags & 1;
    if (!(flags & 0x80)) {
        const auto color_index = (flags & 0x6000000) ? 5u : ((flags & 0x1000000) ? 4u : 3u);
        auto color = menu_detail::style_color(control(s), color_index, one);
        if (read<std::uint8_t>(s, c + 0x47e0, 0x399e83) & 0x40) {
            const auto alpha = read<float>(s, c + 0x4840, 0x399e92);
            const auto clamped = alpha < 0 ? 0 : menu_detail::minss(one, alpha);
            const auto multiplier = read<float>(s, 0x28d6e4, 0x399ea1),
                       half = read<float>(s, 0x28d250, 0x399eae);
            color = (color & 0x00ffffffu) |
                    (std::uint32_t(menu_detail::cvtt(clamped * multiplier + half)) << 24);
        }
        const auto p = read<Vec2>(s, w + 0x20, 0x399ed2), size = read<Vec2>(s, w + 0x28, 0x399eca);
        const auto height = title_height(s, w);
        rectangle(s, api, w, {p.x, p.y + height, p.x + size.x, p.y + size.y}, color, rounding,
                  no_title ? 0u : 0xc0u, true);
        flags = read<std::uint32_t>(s, w + 0x14, 0x399f3c);
    }
    if (read<float>(s, c + 0x38ac, 0x399f54) > 0 && (flags & 0x5000000) != 0x1000000 &&
        read<float>(s, c + 0x3c24, 0x399f71) > 0) {
        if (!api.shadow_39a64c)
            throw RendererMissing(0x399f83, 0x39a64c, "window shadow local controller required");
        api.shadow_39a64c(w);
    }
    if (!no_title)
        rectangle(s, api, w, title,
                  menu_detail::style_color(control(s), highlight ? 12u : 11u, one), rounding, 0x30,
                  true);
    if (flags & 0x400) {
        const auto p = read<Vec2>(s, w + 0x20, 0x3951ec), full = read<Vec2>(s, w + 0x30, 0x3951ec),
                   actual = read<Vec2>(s, w + 0x28, 0x398d44);
        const auto title_h = title_height(s, w), menu_h = menu_height(s, w);
        ClipRect menu{p.x, p.y + title_h, p.x + full.x, (p.y + title_h) + menu_h};
        menu.x = menu_detail::maxss(menu.x, p.x);
        menu.y = menu_detail::maxss(menu.y, p.y);
        menu.z = menu_detail::minss(menu.z, p.x + actual.x);
        menu.w = menu_detail::minss(menu.w, p.y + actual.y);
        rectangle(s, api, w, {menu.x + border, menu.y, menu.z - border, menu.w},
                  menu_detail::style_color(control(s), 14, one), no_title ? rounding : 0, 0x30,
                  true);
        const auto frame_border = read<float>(s, c + 0x3818, 0x39a07f);
        if (frame_border > 0 && p.y + actual.y > menu.w)
            line(s, api, w, {menu.x, menu.w}, {menu.z, menu.w},
                 menu_detail::style_color(control(s), 6, one), frame_border);
    }
    if (read<std::uint8_t>(s, w + 0xb4, 0x39a0f5)) {
        if (!api.scrollbar_3c3234)
            throw RendererMissing(0x39a101, 0x3c3234, "horizontal scrollbar controller required");
        api.scrollbar_3c3234(0);
    }
    if (read<std::uint8_t>(s, w + 0xb5, 0x39a106)) {
        if (!api.scrollbar_3c3234)
            throw RendererMissing(0x39a115, 0x3c3234, "vertical scrollbar controller required");
        api.scrollbar_3c3234(1);
    }
    if (handle_grips) {
        if (!(flags & 2) && grip_count > 0) {
            if (grip_count > 4)
                throw RendererMissing(0x39a156, 0, "native grip color array overflow");
            for (int i = 0; i < grip_count; ++i)
                if (colors[std::size_t(i)] & 0xff000000) {
                    (void)grip_size;
                    throw RendererMissing(
                        0x39a167, 0x399d88,
                        "nontransparent resize-grip path39a167..39a2c3 remains untranslated");
                }
        }
        outer_borders(s, api, w);
    }
}
} // namespace rust_internal_re::window_detail
