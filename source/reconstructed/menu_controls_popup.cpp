#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
template <class F, class... A>
decltype(auto) require_call(const F &f, Rva at, Rva dependency, A &&...args) {
    if (!f)
        { __builtin_trap(); }
    return f(re::re_forward<A>(args)...);
}
void popup_style(MenuControlsState &s, const MenuControlsApi &api, float opacity,
                 re::ReStringView label) {
    require_call(api.push_color_398bec, 0x386844, 0x398bec, 3u, style_color(s, 8));
    require_call(api.push_float_398cc8, 0x386850, 0x398cc8, 0u, opacity);
    require_call(api.push_float_398cc8, 0x386860, 0x398cc8, 3u,
                 read<float>(s, context(s) + 0x3814, 0x38685b));
    const auto scale = read<float>(s, 0x248ee8, 0x386865);
    require_call(api.push_vec2_398c60, 0x38688c, 0x398c60, 14u, Vec2{10 * scale, 10 * scale});
    require_call(api.push_vec2_398c60, 0x3868b0, 0x398c60, 2u, Vec2{10 * scale, 10 * scale});
    require_call(api.begin_window_38cfa4, 0x3868be, 0x38cfa4, label, 0x6fu);
}
void popup_front(MenuControlsState &s, const MenuControlsApi &api) {
    require_call(api.bring_focus_38f160, 0x38691e, 0x38f160, window(s));
    require_call(api.bring_display_38f0bc, 0x38692b, 0x38f0bc, window(s));
}
void popup_end(const MenuControlsApi &api) {
    require_call(api.end_window_390994, 0x386961, 0x390994);
    require_call(api.pop_style_39896c, 0x38696b, 0x39896c, 4);
    require_call(api.pop_color_39890c, 0x386975, 0x39890c, 1);
}
bool outside_click(const MenuControlsApi &api, bool control_hovered) {
    return !require_call(api.window_hovered_3947ec, 0x386932, 0x3947ec, 0u) &&
           require_call(api.mouse_clicked_3943e4, 0x38693f, 0x3943e4, 0, false) && !control_hovered;
}
Address icon_font(MenuControlsState &s, float size) {
    return cached_font(s, 2, size);
}
} // namespace
MenuControlResult color(MenuControlsState &s, const MenuControlsApi &api,
                        const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    out.id = id(s, r.label);
    const auto p = read<Vec2>(s, w + 0x100, 0x3864a7);
    const ClipRect box{p.x, p.y, p.x + r.size.x, p.y + r.size.y};
    item_size(s, r.size, -1);
    (void)item_add(s, api, box, out.id);
    const auto behavior = menu_controls_button_behavior_3bc7e0(s, api, box, out.id, 0);
    out.pressed = behavior.pressed;
    auto &a = s.color_animation[menu_controls_hash_39334c(r.label, 0x6e)];
    if (behavior.pressed) {
        a.open = !a.open;
        out.changed = true;
    }
    a.enabled = animate(s, a.enabled, a.open ? 1 : 0, 14);
    const auto found = s.colors.find(r.value);
    if (!found)
        { __builtin_trap(); }
    auto rgba = **found;
    const auto draw = read<Address>(s, w + 0x298, 0x386598);
    rgba[3] = read<float>(s, c + 0x37d0, 0x386586);
    require_call(api.rectangle, 0x3865da, 0x3a1244,
                 MenuControlRectangle{draw, p, {box.z, box.w}, pack_color(rgba), 2, 1, 0, true});
    const auto alpha = (1 - (**found)[3]) * read<float>(s, c + 0x37d0, 0x386606) *
                       read<float>(s, 0x2941b0, 0x38660e);
    const auto white = pack_color(re::ReArray<float,4>{1, 1, 1, alpha});
    const auto third = r.size.x / 3;
    require_call(api.rectangle, 0x3866cb, 0x3a1244,
                 MenuControlRectangle{draw,
                                      {(box.x + box.z) * 0.5f - r.size.x / 6, box.y},
                                      {(box.x + box.z) * 0.5f + r.size.x / 6, box.w},
                                      white,
                                      0,
                                      1,
                                      0,
                                      true});
    require_call(api.rectangle, 0x386780, 0x3a1244,
                 MenuControlRectangle{draw, p, {p.x + third, box.w}, white, 2, 1, 0x40, true});
    require_call(api.rectangle, 0x386816, 0x3a1244,
                 MenuControlRectangle{
                     draw, {box.z - third, box.y}, {box.z, box.w}, white, 2, 1, 0x80, true});
    if (a.enabled > 0.01f) {
        popup_style(s, api, a.enabled, r.label);
        const auto scale = read<float>(s, 0x248ee8, 0x3868c3);
        require_call(api.window_position_39bb20, 0x386911, 0x39bb20,
                     Vec2{box.z - read<float>(s, 0x293238, 0x3868f1) * scale,
                          box.y + 10 * scale + 20 * scale * (1 - a.enabled)});
        popup_front(s, api);
        if (outside_click(api, behavior.hovered))
            a.open = false;
        out.changed =
            require_call(api.color_picker_379680, 0x386959, 0x379680, r.label, **found);
        popup_end(api);
    }
    return out;
}
MenuControlResult keybind(MenuControlsState &s, const MenuControlsApi &api,
                          const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    out.id = id(s, r.label);
    const auto scale = read<float>(s, 0x248ee8, 0x385bd7);
    const auto p = read<Vec2>(s, w + 0x100, 0x385bf6);
    const ClipRect box{p.x, p.y, p.x + 15 * scale, p.y + 15 * scale};
    item_size(s, {15 * scale, 15 * scale}, -1);
    (void)item_add(s, api, box, out.id);
    const auto behavior = menu_controls_button_behavior_3bc7e0(s, api, box, out.id, 0);
    out.pressed = behavior.pressed;
    auto &a = s.key_animation[menu_controls_hash_39334c(r.label)];
    a.enabled = animate(s, a.enabled, a.open ? 1 : 0, 14);
    a.hover = animate(s, a.hover, a.open || behavior.hovered ? 1 : 0, 14);
    if (behavior.pressed)
        a.open = !a.open;
    const auto textcolor = pack_color(lerp_color(
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1, 0.7f)), a.hover),
        unpack_color(style_color(s, 1)), a.enabled));
    emit_text(s, api, read<Address>(s, w + 0x298, 0x385d1a), p, textcolor, raw_text(s, 0x2a7724),
              false, icon_font(s, 15), 15 * scale);
    if (a.enabled > 0.01f) {
        popup_style(s, api, a.enabled, r.label);
        require_call(api.window_position_39bb20, 0x385f3b, 0x39bb20,
                     Vec2{box.z - read<float>(s, 0x293220, 0x385f07) * scale,
                          box.w + 10 * scale + 20 * scale * (1 - a.enabled)});
        popup_front(s, api);
        if (outside_click(api, behavior.hovered))
            a.open = false;
        require_call(api.next_item_width_39b704, 0x385f91, 0x39b704, 120 * scale);
        if (api.key_capture_3853b0)
            api.key_capture_3853b0(r.label, r.value);
        else
            out.changed = key_capture(s, api, r.label, r.value);
        if (!r.register_search) {
            if (!s.config || !s.config->values.contains(r.value + 4))
                { __builtin_trap(); }
            auto &mode = s.config->values.at(r.value + 4);
            if (api.mode_button_388e2c ? api.mode_button_388e2c("Hold", mode == 0)
                                       : mode_button(s, api, "Hold", mode == 0)) {
                mode = 0;
                out.changed = true;
            }
            same_line(s, 0, 10 * scale);
            if (api.mode_button_388e2c ? api.mode_button_388e2c("Toggle", mode == 1)
                                       : mode_button(s, api, "Toggle", mode == 1)) {
                mode = 1;
                out.changed = true;
            }
            // [C] Center last mode using copied window available width/current local X.
            const auto measured =
                renderer_measure_38f79c(*s.image, c, "Always Enabled", {}, false, -1).size;
            const auto cw = window(s);
            auto available = read<Vec2>(s, cw + 0x250, 0x39233c);
            if (read<Address>(s, cw + 0x1a8, 0x392392) || read<Address>(s, c + 0x4b48, 0x3923a8))
                available.x = read<float>(s, cw + 0x220, 0x3923b2);
            available.x -= read<float>(s, cw + 0x100, 0x392364);
            const auto offset =
                (available.x - (2 * read<float>(s, c + 0x380c, 0x38602c) + measured.x)) * 0.5f;
            write(s, cw + 0x141, ReU8(1), 0x39b42e);
            write(s, cw + 0x100, read<float>(s, cw + 0x100, 0x392424) + offset, 0x39b43e);
            if (api.mode_button_388e2c ? api.mode_button_388e2c("Always Enabled", mode == 2)
                                       : mode_button(s, api, "Always Enabled", mode == 2)) {
                mode = 2;
                out.changed = true;
            }
        }
        popup_end(api);
    }
    return out;
}
} // namespace rust_internal_re::menu_detail
