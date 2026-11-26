#include "imgui_window_details_internal.hpp"
#include "draw_shapes_analysis.hpp"
namespace rust_internal_re::window_details {
void rect(ImguiWindowDetailsState &, const ImguiWindowsApi &api, Address key, ClipRect b,
          ReU32 color, float rounding, float thickness, ReU32 flags, bool filled) {
    if (!(color & 0xff000000))
        return;
    if (!api.controls.rectangle)
        __builtin_trap();
    api.controls.rectangle(
        {key, {b.x, b.y}, {b.z, b.w}, color, rounding, thickness, flags, filled});
}
void line(ImguiWindowDetailsState &, const ImguiWindowsApi &api, Address key, Vec2 a, Vec2 b,
          ReU32 color, float thickness) {
    if (!(color & 0xff000000))
        return;
    if (!api.controls.line)
        { __builtin_trap(); }
    api.controls.line({key, a, b, color, thickness});
}
void circle(ImguiWindowDetailsState &, const ImguiWindowsApi &api, Address key, Vec2 p,
            float radius, ReU32 color) {
    if (!(color & 0xff000000))
        return;
    if (!api.controls.circle)
        { __builtin_trap(); }
    api.controls.circle({key, p, radius, 0, {}, 0, color, 0, true});
}
void refresh_nav(ImguiWindowDetailsState &s) {
    const auto c = context(s);
    const bool v =
        read<ReU8>(s, c + 0x4941, 0x396775) || read<ReU8>(s, c + 0x4929, 0x39677d);
    write(s, c + 0x4928, ReU8(v), 0x396787);
}
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
// [C]3921c0 tail to3786d8: no pool-size/validity gate in the supplied native leaf.
Address imgui_window_details_table_3921c0(ImguiWindowDetailsState &s, ReI32 index) {
    using namespace window_details;
    const auto base = read<Address>(s, context(s) + 0x4b70, 0x3786e2);
    return base + Address(ReI64(index) * 0x238);
}
// [C]395500 incl39b690/39676c; zero rectangles are actual38bb2c stores.
void imgui_window_details_nav_initialize_395500(ImguiWindowDetailsState &s, Address w, bool force) {
    using namespace window_details;
    const auto flags = read<ReU32>(s, w + 0x14, 0x39550a);
    const auto c = context(s);
    if (flags & 0x40000) {
        write(s, c + 0x48f0, 0u, 0x39551d);
        write(s, c + 0x48f4, read<ReU32>(s, w + 0x3c8, 0x395527), 0x39552d);
        return;
    }
    if (w != read<Address>(s, w + 0x378, 0x395535) &&
        !(read<ReU32>(s, w + 0x14, 0x39553e) & 0x4000000) &&
        read<ReU32>(s, w + 0x3a0, 0x395547) && !force) {
        write(s, c + 0x48f0, read<ReU32>(s, w + 0x3a0, 0x395554), 0x39555a);
        write(s, c + 0x48f4, read<ReU32>(s, w + 0x3c8, 0x395527), 0x39552d);
        return;
    }
    const auto scope = read<ReU32>(s, w + 0x3c8, 0x39556c);
    const auto layer = read<ReI32>(s, c + 0x4920, 0x395576);
    const auto nav = read<Address>(s, c + 0x48e8, 0x39b697);
    write(s, c + 0x48f4, scope, 0x39b69e);
    write(s, c + 0x48f0, 0u, 0x39b6a5);
    write(s, c + 0x4920, layer, 0x39b6ac);
    const auto index = Address(ReI64(layer));
    write(s, nav + 0x3a0 + index * 4, 0u, 0x39b6b6);
    const auto nav_again = read<Address>(s, c + 0x48e8, 0x39b6c1);
    write(s, nav_again + 0x3a8 + index * 16, ClipRect{}, 0x39b6cc);
    write(s, c + 0x4929, ReU16(1), 0x395588);
    write(s, c + 0x492c, 0u, 0x395591);
    write(s, c + 0x4930, ClipRect{}, 0x3955a3);
    refresh_nav(s);
}
// [C]3997ac incl temporary drawlist clip stack, thick and thin border branches.
void imgui_window_details_nav_highlight_3997ac(ImguiWindowDetailsState &s,
                                               const ImguiWindowsApi &api, ClipRect bounds,
                                               ReU32 id, ReU32 flags) {
    using namespace window_details;
    const auto c = context(s);
    if (id != read<ReU32>(s, c + 0x48f0, 0x3997dc))
        return;
    if (read<ReU8>(s, c + 0x4926, 0x3997e8) && !(flags & 4))
        return;
    const auto w = read<Address>(s, c + 0x3f08, 0x3997fb);
    if (read<ReU8>(s, w + 0x161, 0x399802))
        return;
    const auto rounding = (flags & 8) ? 0 : read<float>(s, c + 0x3814, 0x39981b);
    const auto clip = read<ClipRect>(s, w + 0x238, 0x39982d);
    bounds = intersect(bounds, clip);
    const auto one = read<float>(s, 0x28d254, 0x39983e);
    if (flags & 1) {
        const auto amount = read<float>(s, 0x293178, 0x399850);
        bounds = expand(bounds, {amount, amount});
        const bool contained = contains(clip, bounds);
        const auto key = draw_key(s, w, 0x399883);
        if (!contained)
            draw_core_push_clip_3a7268(draw(s, key, 0x399895), {bounds.x, bounds.y},
                                       {bounds.z, bounds.w}, false);
        const auto color = menu_detail::style_color(controls(s), 0x32, one);
        const auto thickness = read<float>(s, 0x293134, 0x3998f1);
        rect(s, api, key, {bounds.x + one, bounds.y + one, bounds.z - one, bounds.w - one}, color,
             rounding, thickness);
        if (!contained) {
            const auto pop_key = draw_key(s, w, 0x399923);
            auto &list = draw(s, pop_key, 0x39992a);
            list.clip_stack.pop();
            if (list.clip_stack.size)
                list.header.clip = list.clip_stack.at(list.clip_stack.size - 1);
            else {
                const auto shared = read<Address>(s, pop_key + 0x38, 0x3a6e51);
                list.header.clip = read<re::ReArray<float, 4>>(s, shared + 0x1c, 0x3a6e67);
            }
            draw_core_clip_changed_3a8d94(list);
        }
    }
    if (flags & 2) {
        const auto color = menu_detail::style_color(controls(s), 0x32, one);
        rect(s, api, draw_key(s, w, 0x399942), bounds, color, rounding, one);
    }
}
// [C]39a64c issues TWO identical shadow calls and rereads window dimensions.
void imgui_window_details_shadow_39a64c(ImguiWindowDetailsState &s, const ImguiWindowsApi &api,
                                        Address w) {
    using namespace window_details;
    const auto c = context(s);
    const auto factor = read<float>(s, 0x28d254, 0x39a669);
    const auto thickness = read<float>(s, c + 0x38ac, 0x39a683);
    const auto color = menu_detail::style_color(controls(s), 0x36, factor);
    const auto angle = read<float>(s, c + 0x38b4, 0x39a691);
    const auto sine = draw_shapes_sine_3c8e6c(angle);
    const auto cosine = font_text_cosine_3c899c(angle);
    const auto distance = read<float>(s, c + 0x38b0, 0x39a6c2);
    const Vec2 offset{cosine * distance, sine * distance};
    for (int pass = 0; pass < 2; ++pass) {
        const auto key = draw_key(s, w, pass ? 0x39a731 : 0x39a6da);
        const auto rounding = read<float>(s, w + 0x58, pass ? 0x39a73c : 0x39a6e5);
        const auto p = read<Vec2>(s, w + 0x20, 0x39a6f1);
        const auto size = read<Vec2>(s, w + 0x28, 0x39a6ea);
        if (!(color & 0xff000000))
            continue;
        if (!api.controls.glow_rectangle_3a2010)
            __builtin_trap();
        api.controls.glow_rectangle_3a2010(
            {key, p, {p.x + size.x, p.y + size.y}, color, thickness, offset, 0x200, rounding});
    }
}
} // namespace rust_internal_re
