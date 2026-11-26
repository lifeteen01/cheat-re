#include "imgui_window_details_internal.hpp"
namespace rust_internal_re::window_details {
namespace {
float saturate(float value, float one) {
    return 0 > value ? 0 : menu_detail::minss(one, value);
}
ReI64 sub64(ReI64 a, ReI64 b) {
    return re::re_bit_cast<ReI64>(ReU64(a) - ReU64(b));
}
ReU32 scroll_id(ImguiWindowDetailsState &s, Address w, int axis) {
    const auto n = read<ReI32>(s, w + 0xf0, 0x39262b);
    const auto data = read<Address>(s, w + 0xf8, 0x39262b);
    const auto seed = read<ReU32>(s, data + Address(ReI64(sub(n, 1))) * 4, 0x392639);
    return menu_controls_hash_39334c(axis ? "#SCROLLY" : "#SCROLLX", seed);
}
ClipRect scrollbar_rect(ImguiWindowDetailsState &s, Address w, int axis) {
    const auto p = read<Vec2>(s, w + 0x20, 0x398d44);
    const auto size = read<Vec2>(s, w + 0x28, 0x398d44);
    const auto opposite = read<float>(s, w + 0xac + Address(axis ^ 1) * 4, 0x3bff87);
    const auto border = read<float>(s, w + 0x5c, axis ? 0x3bffd2 : 0x3bffa3);
    if (axis)
        return {menu_detail::maxss((p.x + size.x) - border - opposite, p.x),
                read<float>(s, w + 0x1fc, 0x3bfffd), p.x + size.x,
                read<float>(s, w + 0x204, 0x3bffe6)};
    return {read<float>(s, w + 0x1f8, 0x3bffb1),
            menu_detail::maxss((p.y + size.y) - border - opposite, p.y),
            read<float>(s, w + 0x200, 0x3bffc2), p.y + size.y};
}
// [C]3c3390..3c3890. Signed64 scroll math and owned input/render effects.
bool scrollbar(ImguiWindowDetailsState &s, const ImguiWindowsApi &api, ClipRect bounds,
               ReU32 id, int axis, ReI64 &scroll, ReI64 visible,
               ReI64 content, ReU32 flags) {
    const auto c = context(s);
    const auto w = current(s);
    if (read<ReU8>(s, w + 0xbb, 0x3c33ea))
        return false;
    const float width = bounds.z - bounds.x, height = bounds.w - bounds.y;
    if (0 >= width || 0 >= height)
        return false;
    const auto one = read<float>(s, 0x28d254, 0x3c343b);
    float alpha = one;
    if (axis == 1) {
        const auto padding = read<float>(s, c + 0x3810, 0x3c344a);
        const auto font = read<float>(s, c + 0x3c30, 0x3c3452);
        if ((padding + padding) + font > height)
            alpha = saturate((height - font) / (padding + padding), one);
    }
    if (0 >= alpha)
        return false;
    const auto two = read<float>(s, 0x293134, 0x3c3492);
    const auto half = read<float>(s, 0x28d250, 0x3c34b3);
    const auto inset_cap = read<float>(s, 0x293158, 0x3c349d);
    const bool allow_interaction = alpha >= one;
    const Vec2 inset{clamp(trunc((width - two) * half), 0, inset_cap),
                     clamp(trunc((height - two) * half), 0, inset_cap)};
    const ClipRect track{bounds.x + inset.x, bounds.y + inset.y, bounds.z - inset.x,
                         bounds.w - inset.y};
    const auto length = axis ? track.w - track.y : track.z - track.x;
    const auto denominator = re::re_max<ReI64>(re::re_max(content, visible), 1);
    const auto thumb_size = clamp((float(visible) / float(denominator)) * length,
                                  read<float>(s, c + 0x384c, 0x3c3578), length);
    (void)menu_detail::item_add(controls(s), api.controls, bounds, id, {}, 8);
    const auto action =
        menu_controls_button_behavior_3bc7e0(controls(s), api.controls, track, id, 0x40000);
    const auto scroll_max = re::re_max<ReI64>(1, sub64(content, visible));
    const auto maximum = float(scroll_max);
    const auto free_length = length - thumb_size;
    auto position = (saturate(float(scroll) / maximum, one) * free_length) / length;
    if (action.held && allow_interaction) {
        const auto thumb_fraction = thumb_size / length;
        if (one > thumb_fraction) {
            const auto mouse = read<float>(s, c + 0xe08 + Address(axis) * 4, 0x3c365b);
            const auto minimum = axis ? track.y : track.x;
            const auto fraction = saturate((mouse - minimum) / length, one);
            menu_detail::set_hovered(controls(s), id);
            bool seek = false;
            if (read<ReU8>(s, c + 0x3f74, 0x3c367a)) {
                if (position > fraction || fraction > position + thumb_fraction) {
                    write(s, c + 0x5ba8, 0.0f, 0x3c36b5);
                    seek = true;
                } else
                    write(s, c + 0x5ba8, (fraction - position) - thumb_fraction * half, 0x3c36ab);
            }
            const auto normalized = saturate(
                ((fraction - read<float>(s, c + 0x5ba8, 0x3c36c8)) - thumb_fraction * half) /
                    (one - thumb_fraction),
                one);
            scroll = cvtt64(normalized * maximum);
            position = (saturate(float(scroll) / maximum, one) * free_length) / length;
            if (seek)
                write(s, c + 0x5ba8, (fraction - position) - thumb_fraction * half, 0x3c372a);
        }
    }
    const auto background = menu_detail::style_color(controls(s), 15, one);
    const auto grab = menu_detail::style_color(controls(s),
                                               action.held      ? 18u
                                               : action.hovered ? 17u
                                                                : 16u,
                                               alpha);
    const auto key = draw_key(s, w, 0x3c377a);
    rect(s, api, key, bounds, background, read<float>(s, w + 0x58, 0x3c376a), 1, flags, true);
    ClipRect thumb = track;
    if (axis) {
        thumb.y = (track.w - track.y) * position + track.y;
        thumb.w = thumb.y + thumb_size;
    } else {
        thumb.x = (track.z - track.x) * position + track.x;
        thumb.z = thumb.x + thumb_size;
    }
    rect(s, api, draw_key(s, w, 0x3c3826), thumb, grab, read<float>(s, c + 0x3848, 0x3c382d), 1, 0,
         true);
    return action.held;
}
} // namespace
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
void imgui_window_details_scrollbar_3c3234(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                                           ReI32 axis) {
    using namespace window_details;
    if (axis != 0 && axis != 1)
        { __builtin_trap(); }
    const auto w = current(s);
    const auto id = scroll_id(s, w, axis);
    const auto bounds = scrollbar_rect(s, w, axis);
    ReU32 flags;
    if (!axis)
        flags = read<ReU8>(s, w + 0xb5, 0x3c3284) ? 0x140u : 0x1c0u;
    else {
        const auto bits = read<ReU32>(s, w + 0x14, 0x3c3295) & 0x401u;
        flags = read<ReU8>(s, w + 0xb4, 0x3c32ae) ? 0x100u : 0x180u;
        if (bits == 1)
            flags |= 0x20u;
    }
    auto scroll = cvtt64(read<float>(s, w + 0x84 + Address(axis) * 4, 0x3c32dd));
    const auto padding = read<float>(s, w + 0x50 + Address(axis) * 4, 0x3c32fa);
    const auto content = read<float>(s, w + 0x38 + Address(axis) * 4, 0x3c3311);
    const auto total = cvtt64((padding + padding) + content);
    const auto maximum = read<float>(s, w + 0x200 + Address(axis) * 4, 0x3c334e);
    const auto minimum = read<float>(s, w + 0x1f8 + Address(axis) * 4, 0x3c3352);
    (void)scrollbar(s, api, bounds, id, axis, scroll, cvtt64(maximum - minimum), total, flags);
    write(s, w + 0x84 + Address(axis) * 4, float(scroll), 0x3c3377);
}
// [C] 0x3bff58..3c001f: scrollbar rect computation for given axis.
ClipRect imgui_window_details_scrollbar_rect_3bff58(ImguiWindowDetailsState &s, Address w,
                                                     ReI32 axis) {
    using namespace window_details;
    return scrollbar_rect(s, w, axis);
}
} // namespace rust_internal_re
