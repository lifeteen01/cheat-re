#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
template <class F, class... A>
decltype(auto) call(const F &f, Rva at, Rva dependency, A &&...args) {
    if (!f)
        { __builtin_trap(); }
    return f(re::re_forward<A>(args)...);
}
const re::ReString &name(const MenuControlRequest &r, ReUSize i) {
    if (i >= r.choices.size())
        { __builtin_trap(); }
    return r.choices[i];
}
} // namespace
MenuControlResult multiselect(MenuControlsState &s, const MenuControlsApi &api,
                              const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    out.id = id(s, r.label);
    const auto p = read<Vec2>(s, w + 0x100, 0x387d91);
    (void)renderer_measure_38f79c(*s.image, c, r.label, {}, true, -1);
    const auto height =
        2 * read<float>(s, c + 0x3810, 0x3925cc) + read<float>(s, c + 0x3c30, 0x3925cc);
    const auto itemflags = read<ReU32>(s, c + 0x4788, 0x387dda);
    const auto width = item_width(s) - ((itemflags & 0x800) ? 25 : 0);
    const ClipRect row{p.x, p.y, p.x + width, p.y + height};
    const auto bw = read<float>(s, w + 0x28, 0x387e34) * 0.5f;
    const ClipRect box{row.z - bw, row.y, row.z, row.w};
    item_size(s, {width, height}, -1);
    (void)item_add(s, api, row, out.id);
    const auto behavior = menu_controls_button_behavior_3bc7e0(s, api, box, out.id, 0);
    out.pressed = behavior.pressed;
    auto &a = s.combos[{0x380e80, menu_controls_hash_39334c(r.label)}];
    register_control(s, r, a.registered);
    if (itemflags & 0x800) {
        same_line(s, 0, 10);
        write(s, w + 0x104, (box.y + box.w) * 0.5f - 15 * read<float>(s, 0x248ee8, 0x388003) * 0.5f,
              0x38802f);
        favorite_387664(s, api, r);
    }
    if (behavior.pressed)
        a.fields[3] = a.fields[3] == 0 ? 1.0f : 0.0f;
    const bool open = a.fields[3] != 0;
    a.fields[0] = animate(s, a.fields[0], open ? 1 : 0, 14);
    a.fields[1] = animate(s, a.fields[1], read<float>(s, open ? 0x2a9428 : 0x2a9424, 0x388138), 14);
    const auto color_value =
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1)), a.fields[0]);
    re::re_copy(color_value.begin(), color_value.end(), a.fields.begin() + 4);
    const auto draw = read<Address>(s, w + 0x298, 0x3881d3);
    const auto rounding = read<float>(s, c + 0x3814, 0x3881da);
    call(api.rectangle, 0x38820a, 0x3a1148,
         MenuControlRectangle{
             draw, {box.x, box.y}, {box.z, box.w}, style_color(s, 6), rounding, 1, 0, false});
    rotation_start(s);
    const auto padding = read<Vec2>(s, c + 0x380c, 0x388234);
    call(api.arrow_3a7400, 0x388280, 0x3a7400, draw,
         Vec2{box.z - padding.x - read<float>(s, 0x2931a4, 0x388239),
              (box.y + box.w) * 0.5f - read<float>(s, 0x293144, 0x388252)},
         pack_color(color_value), 3, read<float>(s, 0x2930bc, 0x38825f));
    rotation_end(s, a.fields[1]);
    auto values = s.multiselect_values.find(r.value);
    if (!values)
        { __builtin_trap(); }
    re::ReString summary;
    for (ReUSize i = 0; i < (**values).size(); ++i)
        if ((**values)[i]) {
            summary += name(r, i);
            summary += ", ";
        }
    if (!summary.empty())
        summary.resize(summary.size() - 2);
    const float available = bw - 3 * padding.x - 10;
    if (renderer_measure_38f79c(*s.image, c, summary, {}, true, -1).size.x > available &&
        summary.size() != 1) {
        ReUSize i = 0;
        do {
            if (renderer_measure_38f79c(*s.image, c, re::ReStringView(summary).substr(0, i + 1), {},
                                        true, -1)
                    .size.x > available) {
                summary.resize(i);
                if (summary.empty())
                    __builtin_trap();
                if (summary.back() == ',')
                    summary.resize(summary.size()-1);
                summary += "..";
            }
            ++i;
        } while (!summary.empty() && i < summary.size() - 1);
    }
    emit_text(s, api, draw,
              {row.x, row.y + height * 0.5f - read<float>(s, c + 0x3c30, 0x3884e7) * 0.5f},
              style_color(s, 1), r.label);
    emit_text(s, api, draw, {box.x + padding.x, box.y + padding.y}, style_color(s, 1), summary);
    if (a.fields[0] > 0.05f) {
        call(api.push_vec2_398c60, 0x3885b9, 0x398c60, 14u, Vec2{});
        call(api.begin_window_38cfa4, 0x3885c9, 0x38cfa4, re::ReStringView(r.label), 0xafu);
        call(api.window_size_39bc6c, 0x388636, 0x39bc6c,
             Vec2{bw, (float(re::re_min<ReUSize>((**values).size(), 25)) * height +
                       2 * rounding) *
                          a.fields[0]});
        call(api.window_position_39bb20, 0x388658, 0x39bb20, Vec2{box.x, box.w});
        const auto pw = window(s), pd = read<Address>(s, pw + 0x298, 0x392ecc);
        const auto pp = read<Vec2>(s, pw + 0x20, 0x392ef8), ps = read<Vec2>(s, pw + 0x28, 0x392f14);
        const Vec2 maximum{pp.x + ps.x, pp.y + ps.y};
        call(api.rectangle, 0x3886ca, 0x3a1244,
             MenuControlRectangle{pd, pp, maximum, style_color(s, 4), rounding, 1, 0xc0, true});
        call(api.rectangle, 0x388733, 0x3a1148,
             MenuControlRectangle{
                 pd, {box.x, box.y}, maximum, style_color(s, 6), rounding, 1, 0xc0, false});
        call(
            api.line, 0x3887a1, 0x3a01f4,
            MenuControlLine{draw, {box.x, box.w - rounding}, {box.x, box.w}, style_color(s, 6), 1});
        call(api.line, 0x388816, 0x3a01f4,
             MenuControlLine{
                 draw, {box.z - 1, box.w - rounding}, {box.z - 1, box.w}, style_color(s, 6), 1});
        call(api.bring_focus_38f160, 0x388823, 0x38f160, window(s));
        call(api.bring_display_38f0bc, 0x388830, 0x38f0bc, window(s));
        if (!call(api.window_hovered_3947ec, 0x388837, 0x3947ec, 0u) &&
            call(api.mouse_clicked_3943e4, 0x388847, 0x3943e4, 0, false) && !behavior.hovered)
            a.fields[3] = 0;
        write(s, pw + 0x141, ReU8(1), 0x39b46a);
        write(s, pw + 0x104,
              read<float>(s, pw + 0x24, 0x39b45d) - read<float>(s, pw + 0x88, 0x39b462) + rounding,
              0x39b47a);
        call(api.local_layout, 0x388868, 0x38ec90, Rva(0x38ec90));
        for (ReUSize i = 0; i < (**values).size(); ++i) {
            MenuControlRequest q;
            q.role = MenuControlRole::selectable;
            q.primitive = 0x3c38a8;
            q.label = name(r, i);
            q.minimum = (**values)[i] != 0;
            q.size = {read<float>(s, pw + 0x28, 0x392f34), height};
            if (selectable(s, api, q).pressed) {
                (**values)[i] ^= 1;
                out.changed = true;
            }
        }
        if ((**values).size() > 5) {
            const auto cursor = read<Vec2>(s, window(s) + 0x100, 0x3bfe4c);
            item_size(s, {0, 9}, -1);
            (void)item_add(s, api, {cursor.x, cursor.y, cursor.x, cursor.y + 9}, 0);
        }
        call(api.local_layout, 0x388974, 0x390efc, Rva(0x390efc));
        call(api.end_window_390994, 0x388979, 0x390994);
        call(api.pop_style_39896c, 0x388983, 0x39896c, 1);
    }
    return out;
}
} // namespace rust_internal_re::menu_detail
