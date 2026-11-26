#include "menu_tooltip_analysis.hpp"
#include "menu_controls_internal.hpp"
#include "frame_failure.hpp"
namespace rust_internal_re {
namespace {
using namespace menu_detail;
template <class F, class... A>
decltype(auto) need(const F &function, Rva site, Rva dependency, A &&...args) {
    if (!function)
        { __builtin_trap(); }
    return function(re::re_forward<A>(args)...);
}
// [C]3795a4 interpolates, packs39045c, then unpacks3364d4.
re::ReArray<float, 4> quantized_lerp(re::ReArray<float, 4> a, re::ReArray<float, 4> b, float factor) {
    return unpack_color(pack_color(lerp_color(a, b, factor)));
}
void run(MenuControlsState &s, MenuTooltipState &state, const MenuTooltipApi &api,
         re::ReStringView label, re::ReStringView description, re::ReStringView glyph,
         MenuControlResult &result) {
    // [C]3811c4 hashes before the current-window getter; hash collisions share state.
    auto &animation = state.animation_405880[menu_controls_hash_39334c(label)];
    const auto w = window(s);
    result.id = id(s, label);
    const auto scale = read<float>(s, 0x248ee8, 0x364f26);
    const auto p = read<Vec2>(s, w + 0x100, 0x389f8f);
    const Vec2 size{16.0f * scale, 16.0f * scale};
    const ClipRect bounds{p.x, p.y, p.x + size.x, p.y + size.y};
    item_size(s, size, -1.0f);
    (void)item_add(s, api.controls, bounds, result.id);
    const auto button = menu_controls_button_behavior_3bc7e0(s, api.controls, bounds, result.id, 0);
    result.pressed = button.pressed;
    animation[1] = animate(s, animation[1], button.hovered ? 1.0f : 0.0f, 14.0f);
    const auto first = unpack_color(style_color(s, 1));
    const auto second = unpack_color(style_color(s, 2));
    const auto glyph_color = font_text_color_2ef80c(quantized_lerp(second, first, animation[1]));
    const auto draw = read<Address>(s, w + 0x298, 0x38a0ae);
    // [C] Font family2, size16; explicit font/size reach3a31f8.
    emit_text(s, api.controls, draw, {bounds.x, bounds.y}, glyph_color, glyph, false,
              cached_font(s, 2, 16.0f), 16.0f * read<float>(s, 0x248ee8, 0x38a0be));
    if (!(animation[1] > 0.05f))
        return;
    const auto foreground = need(api.foreground_3925a4, 0x38a132, 0x3925a4);
    const auto rounding = read<float>(s, 0x248ee8, 0x38a137) * 3.0f;
    const auto background_color = style_color(s, 8, animation[1]);
    auto measured = renderer_measure_38f79c(*s.image, context(s), description, {}, false, -1).size;
    auto padding_scale = read<float>(s, 0x248ee8, 0x364f26);
    Vec2 maximum{bounds.x + 16.0f * padding_scale + measured.x,
                 bounds.w + 20.0f * padding_scale + measured.y};
    Vec2 minimum{bounds.x, bounds.w + read<float>(s, 0x248ee8, 0x38a1d2) * 4.0f};
    need(api.controls.rectangle, 0x38a21b, 0x3a1244,
         MenuControlRectangle{foreground, minimum, maximum, background_color, rounding, 1, 0, true});
    // [C] Repeated foreground/style/measurement reads remain separate effects.
    const auto outline_draw = need(api.foreground_3925a4, 0x38a220, 0x3925a4);
    const auto outline_rounding = read<float>(s, 0x248ee8, 0x38a225) * 3.0f;
    const auto outline_color = style_color(s, 6, animation[1]);
    measured = renderer_measure_38f79c(*s.image, context(s), description, {}, false, -1).size;
    padding_scale = read<float>(s, 0x248ee8, 0x364f26);
    maximum = {bounds.x + 16.0f * padding_scale + measured.x,
               bounds.w + 20.0f * padding_scale + measured.y};
    minimum = {bounds.x, bounds.w + read<float>(s, 0x248ee8, 0x38a2c0) * 4.0f};
    need(api.controls.rectangle, 0x38a308, 0x3a1148,
         MenuControlRectangle{outline_draw, minimum, maximum, outline_color, outline_rounding,
                              1.0f, 0, false});
    const auto text_draw = need(api.foreground_3925a4, 0x38a30d, 0x3925a4);
    const auto text_color = style_color(s, 1, animation[1]);
    padding_scale = read<float>(s, 0x248ee8, 0x364f26);
    emit_text(s, api.controls, text_draw,
              {bounds.x + 8.0f * padding_scale, bounds.w + 12.0f * padding_scale}, text_color,
              description, false);
}
} // namespace
MenuControlResult menu_tooltip_389f18(MenuControlsState &s, MenuTooltipState &state,
                                    const MenuTooltipApi &api, re::ReStringView label,
                                    re::ReStringView description, re::ReStringView glyph) {
    MenuControlResult out;
    {
        run(s, state, api, label, description, glyph, out);
    }
    return out;
}
MenuTooltipApi bind_menu_tooltip_foreground(DrawMetersContext &context, MenuTooltipApi api) {
    api.foreground_3925a4 = [&context]() { return draw_meters_foreground_3925a4(context); };
    return api;
}
MenuControlsApi bind_menu_tooltip(MenuControlsState &s, MenuTooltipState &state,
                                 const MenuTooltipApi &api, MenuControlsApi fallback) {
    fallback.tooltip_389f18 = [&s, &state, api](re::ReStringView label, re::ReStringView description,
                                             re::ReStringView glyph) {
        const auto result = menu_tooltip_389f18(s, state, api, label, description, glyph);
        if (result.result.status != UnityStatus::complete)
            __builtin_trap();
    };
    return fallback;
}
} // namespace rust_internal_re
