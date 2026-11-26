#include "imgui_window_details_internal.hpp"
#include "menu_color_picker_analysis.hpp"
#include "imgui_navigation_analysis.hpp"
namespace rust_internal_re::window_details {
namespace {
MenuButtonResult behavior(ImguiWindowDetailsState &s, const ImguiWindowsApi &api, ClipRect b,
                          ReU32 id) {
    return menu_controls_button_behavior_3bc7e0(controls(s), api.controls, b, id, 0);
}
void text_clipped(ImguiWindowDetailsState &s, const ImguiWindowDetailsApi &api,
                  const ImguiWindowsApi &windows_api, ClipRect bounds, re::ReStringView text,
                  Vec2 measured, Vec2 align, ClipRect clip) {
    const auto end = re::re_min(text.find('\0'), text.find("##"));
    text = text.substr(0, end);
    if (text.empty())
        return;
    const auto c = context(s);
    const auto key = draw_key(s, read<Address>(s, c + 0x3f08, 0x399aac), 0x399ac8);
    const bool need_clip = measured.x + bounds.x >= clip.z || measured.y + bounds.y >= clip.w ||
                           clip.x > bounds.x || clip.y > bounds.y;
    Vec2 p{bounds.x, bounds.y};
    if (align.x > 0)
        p.x = menu_detail::maxss(p.x, ((bounds.z - p.x) - measured.x) * align.x + p.x);
    if (align.y > 0)
        p.y = menu_detail::maxss(p.y, ((bounds.w - p.y) - measured.y) * align.y + p.y);
    const auto color = menu_detail::style_color(controls(s), 1, read<float>(s, 0x28d254, 0x399c4f));
    if (color & 0xff000000) {
        if (!api.fonts || !api.text_sink)
            __builtin_trap();
        FontTextRequest request;
        request.draw_list = key;
        request.position = p;
        request.color = color;
        request.bytes = text;
        request.end = text.size();
        if (need_clip)
            request.fine_clip = re::ReArray<float, 4>{clip.x, clip.y, clip.z, clip.w};
        font_text_draw_3a31f8(*api.fonts, *api.text_sink, request);
    }
    if (read<ReU8>(s, c + 0x5c90, 0x399ad9)) {
        if (api.log_rendered_text_394e5c)
            api.log_rendered_text_394e5c({bounds.x, bounds.y}, text);
        else
            imgui_window_details_log_text_394e5c(s, windows_api, Vec2{bounds.x, bounds.y}, text);
    }
}
ReU32 window_id(ImguiWindowDetailsState &s, Address w, re::ReStringView label) {
    const auto n = read<ReI32>(s, w + 0xf0, 0x39262b);
    const auto data = read<Address>(s, w + 0xf8, 0x39262b);
    return menu_controls_hash_39334c(
        label, read<ReU32>(s, data + Address(ReI64(sub(n, 1))) * 4, 0x392639));
}
bool mouse_dragging(ImguiWindowDetailsState &s) {
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0xe10, 0x39449a))
        return false;
    auto threshold = read<float>(s, 0x293260, 0x3be2ab);
    if (0 > threshold)
        threshold = read<float>(s, c + 0x38, 0x394473);
    const auto distance = read<float>(s, c + 0x37a0, 0x39447f);
    return distance >= threshold * threshold;
}
void start_move(ImguiWindowDetailsState &s, const ImguiWindowsApi &api, Address w) {
    const auto c = context(s);
    const auto effective = window_detail::effective_controls(windows(s), api);
    menu_detail::focus_window(controls(s), effective, w, 0);
    menu_detail::set_active(controls(s), effective, read<ReU32>(s, w + 0x7c, 0x39be83), w);
    write(s, c + 0x4926, ReU8(1), 0x39be8e);
    const auto click = read<Vec2>(s, c + 0x36f8, 0x39be95);
    const auto root = read<Address>(s, w + 0x378, 0x39be9c);
    const auto p = read<Vec2>(s, root + 0x20, 0x39bea8);
    write(s, c + 0x3f7c, Vec2{click.x - p.x, click.y - p.y}, 0x39beb5);
    write(s, c + 0x3f76, ReU8(1), 0x39bebd);
    write(s, c + 0x4778, 0xfu, 0x39b1d7);
    write(s, c + 0x477c, ReU8(1), 0x39b1e1);
    imgui_navigation_cancel_395810(controls(s));
    if (!(read<ReU8>(s, w + 0x14, 0x39bec9) & 4)) {
        const auto r = read<Address>(s, w + 0x378, 0x39becf);
        if (!(read<ReU8>(s, r + 0x14, 0x39bed6) & 4))
            write(s, c + 0x3f20, w, 0x39bedc);
    }
}
bool collapse_button(ImguiWindowDetailsState &s, const ImguiWindowDetailsApi &details,
                     const ImguiWindowsApi &api, ReU32 id, Vec2 position) {
    const auto c = context(s);
    const auto w = current(s);
    const auto twice = read<float>(s, 0x293134, 0x3be135);
    const auto padding = read<Vec2>(s, c + 0x380c, 0x3be154);
    const auto font = read<float>(s, c + 0x3c30, 0x3be160);
    const ClipRect b{position.x, position.y, (position.x + font) + padding.x * twice,
                     (position.y + font) + padding.y * twice};
    (void)menu_detail::item_add(controls(s), api.controls, b, id);
    const auto action = behavior(s, api, b, id);
    const auto one = read<float>(s, 0x28d254, 0x3be1f6);
    const auto color = menu_detail::style_color(
        controls(s), action.held && action.hovered ? 24u : (action.hovered ? 23u : 22u), one);
    const auto text_color = menu_detail::style_color(controls(s), 1, one);
    if (action.hovered || action.held) {
        const auto radius =
            read<float>(s, c + 0x3c30, 0x3be220) * read<float>(s, 0x28d250, 0x3be22d) + one;
        circle(s, api, draw_key(s, w, 0x3be239), {(b.x + b.z) * 0.5f, (b.y + b.w) * 0.5f}, radius,
               color);
    }
    const auto collapsed = read<ReU8>(s, w + 0xb9, 0x3be262);
    if (!api.controls.arrow_3a7400)
        { __builtin_trap(); }
    api.controls.arrow_3a7400(draw_key(s, w, 0x3be27d), {b.x + padding.x, b.y + padding.y},
                              text_color, collapsed ? 1 : 3, one);
    if (menu_color_picker_item_active_393ff4(controls(s)) && mouse_dragging(s)) {
        if (details.start_mouse_move_39be68)
            details.start_mouse_move_39be68(w);
        else
            start_move(s, api, w);
    }
    return action.pressed;
}
bool close_button(ImguiWindowDetailsState &s, const ImguiWindowsApi &api, ReU32 id,
                  Vec2 position) {
    const auto c = context(s);
    const auto w = current(s);
    const auto twice = read<float>(s, 0x293134, 0x3bde62);
    const auto padding = read<Vec2>(s, c + 0x380c, 0x3bde71);
    const auto font = read<float>(s, c + 0x3c30, 0x3bde85);
    const ClipRect bounds{position.x, position.y, (position.x + font) + padding.x * twice,
                          (position.y + font) + padding.y * twice};
    auto hit = bounds;
    const auto outer = read<ClipRect>(s, w + 0x1e8, 0x3bdecd);
    const auto area = (outer.z - outer.x) * (outer.w - outer.y);
    const auto button_area = (bounds.z - bounds.x) * (bounds.w - bounds.y);
    if (read<float>(s, 0x28dafc, 0x3bdee9) > area / button_area) {
        const auto scale = read<float>(s, 0x2ad9a8, 0x3bdf07);
        hit = expand(hit, {trunc((hit.z - hit.x) * scale), trunc((hit.w - hit.y) * scale)});
    }
    const auto visible = menu_detail::item_add(controls(s), api.controls, hit, id);
    const auto action = behavior(s, api, hit, id);
    if (!visible)
        return action.pressed;
    const auto one = read<float>(s, 0x28d254, 0x3bdf6f);
    const auto color = menu_detail::style_color(controls(s), action.held ? 24u : 23u, one);
    const auto half = read<float>(s, 0x28d250, 0x3bdf99);
    Vec2 center{(bounds.x + bounds.z) * half, (bounds.y + bounds.w) * half};
    if (action.hovered)
        circle(s, api, draw_key(s, w, 0x3bdfc0), center,
               menu_detail::maxss(twice, read<float>(s, c + 0x3c30, 0x3bdfa7) * half + one), color);
    auto radius = read<float>(s, c + 0x3c30, 0x3bdfda) * half;
    radius *= read<float>(s, 0x2ad988, 0x3bdfef);
    radius -= one;
    const auto text_color = menu_detail::style_color(controls(s), 1, one);
    center.x -= half;
    center.y -= half;
    line(s, api, draw_key(s, w, 0x3be01e), {center.x + radius, center.y + radius},
         {center.x - radius, center.y - radius}, text_color, one);
    line(s, api, draw_key(s, w, 0x3be088), {center.x + radius, center.y - radius},
         {center.x - radius, center.y + radius}, text_color, one);
    return action.pressed;
}
} // namespace
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
void imgui_window_details_title_39a7a8(ImguiWindowDetailsState &s,
                                       const ImguiWindowDetailsApi &details,
                                       const ImguiWindowsApi &api, Address w, ClipRect title,
                                       re::ReStringView name, re::ReOptional<Address> open) {
    using namespace window_details;
    const auto c = context(s);
    auto flags = read<ReU32>(s, w + 0x14, 0x39a7d0);
    const auto menu_direction = (flags & 0x20) ? -1 : read<ReI32>(s, c + 0x37f8, 0x39a802);
    const bool collapse = !(flags & 0x20) && menu_direction != -1;
    const auto backup = read<ReU32>(s, c + 0x4788, 0x39a80f);
    write(s, c + 0x4788, backup | 0x10u, 0x39a81b);
    write(s, w + 0x158, 1u, 0x39a821);
    const auto padding = read<float>(s, c + 0x380c, 0x39a82f);
    const auto font = read<float>(s, c + 0x3c30, 0x39a837);
    float left = padding, right = padding;
    Vec2 close_position{}, collapse_position{};
    if (open) {
        right += font;
        close_position = {title.z - right - read<float>(s, c + 0x380c, 0x39a86f), title.y};
    }
    if (collapse) {
        if (menu_direction == 1) {
            right += font;
            collapse_position = {title.z - right - read<float>(s, c + 0x380c, 0x39a8b2), title.y};
        } else if (menu_direction == 0) {
            collapse_position = {(left + title.x) - read<float>(s, c + 0x380c, 0x39a8dd), title.y};
            left += font;
        } // [C]2d4870 writes a literal zero Vec2 for other style values.
        const auto id = window_id(s, w, "#COLLAPSE");
        if (collapse_button(s, details, api, id, collapse_position))
            write(s, w + 0xba, ReU8(1), 0x39a92a);
    }
    if (open) {
        const auto id = window_id(s, w, "#CLOSE");
        if (close_button(s, api, id, close_position))
            write(s, *open, ReU8(0), 0x39a969);
    }
    write(s, w + 0x158, 0u, 0x39a971);
    write(s, c + 0x4788, backup, 0x39a97c);
    flags &= 0x100000;
    const auto marker_width = flags ? font * read<float>(s, 0x2930d4, 0x39a98b) : 0;
    const auto measured = renderer_measure_38f79c(*controls(s).image, c, name, {}, true,
                                                  read<float>(s, 0x293260, 0x39a9aa))
                              .size;
    const Vec2 label{measured.x + marker_width, measured.y};
    if (left > read<float>(s, c + 0x380c, 0x39a9e0))
        left += read<float>(s, c + 0x3824, 0x39a9ed);
    if (right > read<float>(s, c + 0x380c, 0x39a9f5))
        right += read<float>(s, c + 0x3824, 0x39a9fb);
    const auto one = read<float>(s, 0x28d254, 0x39aa04);
    const auto align = read<Vec2>(s, c + 0x37f0, 0x39aa14);
    if (align.x > read<float>(s, 0x28d24c, 0x39aa1f) && align.x < one) {
        const auto half = read<float>(s, 0x28d250, 0x39aa2e);
        auto weight = one - (re::re_fabs(align.x - half) + re::re_fabs(align.x - half));
        weight = weight < 0 ? 0 : menu_detail::minss(one, weight);
        const auto spare = (((title.z - title.x) - left) - right) - label.x;
        const auto balance = menu_detail::minss(menu_detail::maxss(left, right), spare) * weight;
        left = menu_detail::maxss(left, balance);
        right = menu_detail::maxss(right, balance);
    }
    const ClipRect bounds{left + title.x, title.y, title.z - right, title.w};
    ClipRect clip{bounds.x, bounds.y,
                  menu_detail::minss(bounds.z + read<float>(s, c + 0x3824, 0x39aac8), title.z),
                  bounds.w};
    if (flags) {
        auto x = clamp(((bounds.z - bounds.x) - label.x) * align.x + bounds.x + label.x, bounds.x,
                       bounds.z);
        const auto y = (bounds.y + bounds.w) * read<float>(s, 0x28d250, 0x39ab4b);
        if (x > bounds.x) {
            const auto color = menu_detail::style_color(controls(s), 1, one);
            const auto key = draw_key(s, w, 0x39ab63);
            const auto shared = read<Address>(s, key + 0x38, 0x3a7624);
            const auto radius =
                read<float>(s, shared + 0x10, 0x3a763d) * read<float>(s, 0x2930a8, 0x3a7642);
            if (color & 0xff000000) {
                if (!api.controls.circle)
                    { __builtin_trap(); }
                api.controls.circle({key, {x, y}, radius, 0, {}, 0, color, 8, true});
            }
            x -= trunc(marker_width * read<float>(s, 0x28d250, 0x39ab7d));
            clip.z = menu_detail::minss(clip.z, x);
        }
    }
    text_clipped(s, details, api, bounds, name, label, align, clip);
}
// [C] 0x3bde30..3be110: close button with area-adjusted hit region and X-cross geometry.
bool imgui_window_details_close_button_3bde30(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                                               ReU32 id, Vec2 position) {
    using namespace window_details;
    return close_button(s, api, id, position);
}
// [C] 0x3be114..3be2ea: collapse button with arrow, hover circle and drag-to-move.
bool imgui_window_details_collapse_button_3be114(ImguiWindowDetailsState &s,
                                                  const ImguiWindowDetailsApi &details,
                                                  const ImguiWindowsApi &api, ReU32 id,
                                                  Vec2 position) {
    using namespace window_details;
    return collapse_button(s, details, api, id, position);
}
// [C] 0x399afc..399cc0: clipped text rendering with alignment and optional logging.
void imgui_window_details_text_clipped_399afc(ImguiWindowDetailsState &s,
                                               const ImguiWindowDetailsApi &details,
                                               const ImguiWindowsApi &api, ClipRect bounds,
                                               re::ReStringView text, Vec2 measured, Vec2 align,
                                               ClipRect clip) {
    using namespace window_details;
    text_clipped(s, details, api, bounds, text, measured, align, clip);
}
// [C] 0x399a64..399afa: text render dispatch with end-finding and optional logging.
void imgui_window_details_text_render_399a64(ImguiWindowDetailsState &s,
                                              const ImguiWindowDetailsApi &details,
                                              const ImguiWindowsApi &api, ClipRect bounds,
                                              re::ReStringView text, Vec2 measured, Vec2 align,
                                              ClipRect clip) {
    using namespace window_details;
    text_clipped(s, details, api, bounds, text, measured, align, clip);
}
// [C] 0x394490..3944a7: check if mouse is dragging with threshold from button index.
bool imgui_window_details_mouse_dragging_394490(ImguiWindowDetailsState &s, int button) {
    using namespace window_details;
    // 394490 checks e10+button, then delegates to 394464 threshold check.
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0xe10 + Address(ReI64(button)), 0x39449a))
        return false;
    return mouse_dragging(s);
}
} // namespace rust_internal_re
