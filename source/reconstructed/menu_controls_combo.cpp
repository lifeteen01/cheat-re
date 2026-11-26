#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
template <class F, class... A>
decltype(auto) call(const F &f, Rva at, Rva dependency, A &&...args) {
    if (!f)
        { __builtin_trap(); }
    return f(re::re_forward<A>(args)...);
}
ReI32 &integer(MenuControlsState &s, const MenuControlRequest &r) {
    if (r.owned_integer)
        return *r.owned_integer;
    if (!s.config || !s.config->values.contains(r.value))
        { __builtin_trap(); }
    { __builtin_trap(); }
}
ReI32 current(MenuControlsState &s, const MenuControlRequest &r) {
    if (r.owned_integer)
        return integer(s, r);
    if (!s.config || !s.config->values.contains(r.value))
        { __builtin_trap(); }
    return re::re_bit_cast<ReI32>(s.config->values.at(r.value));
}
void selected(MenuControlsState &s, const MenuControlRequest &r, ReI32 index) {
    if (r.owned_integer)
        *r.owned_integer = index;
    else
        s.config->values.at(r.value) = re::re_bit_cast<ReU32>(index);
}
const re::ReString &choice(const MenuControlRequest &r, ReI32 index) {
    if (index < 0 || ReUSize(index) >= r.choices.size())
        __builtin_trap();
    return r.choices[ReUSize(index)];
}
} // namespace
void rotation_start(MenuControlsState &s) {
    const auto w = window(s), draw = read<Address>(s, w + 0x298, 0x392ecc);
    if (!s.draw || !s.draw->lists.contains(draw))
        { __builtin_trap(); }
    s.rotation_begin = s.draw->lists.at(draw).vertices.size;
    write(s, 0x402dd0, s.rotation_begin, 0x388d54);
}
void rotation_end(MenuControlsState &s, float angle) {
    const auto draw = read<Address>(s, window(s) + 0x298, 0x392ecc);
    if (!s.draw || !s.draw->lists.contains(draw))
        { __builtin_trap(); }
    auto &v = s.draw->lists.at(draw).vertices;
    const auto begin = read<ReI32>(s, 0x402dd0, 0x388cca);
    Vec2 lo{re::ReNumericLimits<float>::max(), re::ReNumericLimits<float>::max()},
        hi{-re::ReNumericLimits<float>::max(), -re::ReNumericLimits<float>::max()};
    for (auto i = begin; i < v.size; ++i) {
        Vec2 p;
        re::re_memcpy(&p, v.at(i).data(), sizeof(p));
        lo.x = minss(lo.x, p.x);
        lo.y = minss(lo.y, p.y);
        hi.x = maxss(hi.x, p.x);
        hi.y = maxss(hi.y, p.y);
    }
    const Vec2 center{(lo.x + hi.x) * 0.5f, (lo.y + hi.y) * 0.5f};
    const float sn = re::re_sinf(angle), cs = re::re_cosf(angle);
    const Vec2 offset{center.x * sn - center.y * cs - center.x,
                      center.x * cs + center.y * sn - center.y};
    for (auto i = begin; i < v.size; ++i) {
        auto value = v.at(i);
        Vec2 p;
        re::re_memcpy(&p, value.data(), sizeof(p));
        const Vec2 rotated{p.x * sn - p.y * cs - offset.x, p.x * cs + p.y * sn - offset.y};
        re::re_memcpy(value.data(), &rotated, sizeof(rotated));
        v.write(i, value);
    }
}
MenuControlResult combo(MenuControlsState &s, const MenuControlsApi &api,
                        const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    out.id = id(s, r.label);
    auto &a = s.combos[{r.role == MenuControlRole::combo_strings ? 0x3bb780u : 0x3bb6a8u,
                        menu_controls_hash_39334c(r.label)}];
    const auto scale = read<float>(s, 0x248ee8, 0x3be466);
    const auto measured =
        renderer_measure_38f79c(*s.image, c, choice(r, current(s, r)), {}, true, -1).size;
    a.fields[4] = animate(s, a.fields[4], measured.x, 17);
    const auto p = read<Vec2>(s, w + 0x100, 0x3be430);
    (void)renderer_measure_38f79c(*s.image, c, r.label, {}, true, -1);
    const auto height =
        2 * read<float>(s, c + 0x3810, 0x3925cc) + read<float>(s, c + 0x3c30, 0x3925cc);
    const auto itemflags = read<ReU32>(s, c + 0x4788, 0x3be479);
    const auto width = item_width(s) - ((itemflags & 0x800) ? 25 * scale : 0);
    const ClipRect row{p.x, p.y, p.x + width, p.y + height};
    const auto box_width =
        float(cvtt(a.fields[4])) + 2 * read<float>(s, c + 0x380c, 0x3be4e6) + 20 * scale;
    const ClipRect box{row.z - box_width, row.y, row.z, row.w};
    item_size(s, {width, height}, -1);
    (void)item_add(s, api, row, out.id);
    const auto behavior = menu_controls_button_behavior_3bc7e0(s, api, box, out.id, 0);
    out.pressed = behavior.pressed;
    register_control(s, r, a.registered);
    if (itemflags & 0x800) {
        same_line(s, 0, 10 * scale);
        write(s, w + 0x104, (box.y + box.w) * 0.5f - 15 * scale * 0.5f, 0x3be76c);
        favorite_387664(s, api, r);
    }
    if (behavior.pressed)
        a.fields[3] = a.fields[3] == 0 ? 1.0f : 0.0f;
    const bool open = a.fields[3] != 0;
    a.fields[0] = animate(s, a.fields[0], open ? 1 : 0, 14);
    a.fields[2] = animate(s, a.fields[2], behavior.hovered ? 1 : 0, 14);
    a.fields[1] = animate(s, a.fields[1], read<float>(s, open ? 0x2a9428 : 0x2a9424, 0x3be86c), 14);
    const auto tc = lerp_color(lerp_color(unpack_color(style_color(s, 2)),
                                          unpack_color(style_color(s, 1, 0.7f)), a.fields[2]),
                               unpack_color(style_color(s, 1)), a.fields[0]);
    const auto ac = lerp_color(lerp_color(unpack_color(style_color(s, 2)),
                                          unpack_color(style_color(s, 1, 0.7f)), a.fields[2]),
                               unpack_color(style_color(s, 0)), a.fields[0]);
    re::re_copy(tc.begin(), tc.end(), a.fields.begin() + 5);
    re::re_copy(ac.begin(), ac.end(), a.fields.begin() + 9);
    const auto draw = read<Address>(s, w + 0x298, 0x3bea07);
    const auto rounding = read<float>(s, c + 0x3814, 0x3bea0e);
    call(api.rectangle, 0x3bea37, 0x3a1244,
         MenuControlRectangle{
             draw, {box.x, box.y}, {box.z, box.w}, style_color(s, 8), rounding, 1, 0, true});
    rotation_start(s);
    const auto padding = read<Vec2>(s, c + 0x380c, 0x3bea68);
    emit_text(s, api, draw, {box.z - padding.x - 12 * scale, (box.y + box.w) * 0.5f - 5 * scale},
              pack_color(ac), raw_text(s, 0x2ad8ec), false, cached_font(s, 2, 10), 10 * scale);
    rotation_end(s, a.fields[1]);
    emit_text(s, api, draw,
              {row.x, (row.y + row.w) * 0.5f - read<float>(s, c + 0x3c30, 0x3beb61) * 0.5f},
              pack_color(tc), r.label);
    emit_text(s, api, draw, {box.x + padding.x, box.y + padding.y}, pack_color(tc),
              choice(r, current(s, r)));
    if (a.fields[0] > 0.05f) {
        call(api.push_vec2_398c60, 0x3bec3a, 0x398c60, 14u, Vec2{});
        call(api.begin_window_38cfa4, 0x3bec4e, 0x38cfa4, re::ReStringView(r.label), 0xafu);
        const auto popup_height =
            (float(re::re_min<ReUSize>(r.choices.size(), 5)) * height + 2 * rounding) *
            a.fields[0];
        call(api.window_size_39bc6c, 0x3becbe, 0x39bc6c, Vec2{box_width, popup_height});
        call(api.window_position_39bb20, 0x3bece0, 0x39bb20, Vec2{box.x, box.w});
        const auto pw = window(s), pd = read<Address>(s, pw + 0x298, 0x392ecc);
        const auto pp = read<Vec2>(s, pw + 0x20, 0x392ef8), ps = read<Vec2>(s, pw + 0x28, 0x392f14);
        const Vec2 maximum{pp.x + ps.x, pp.y + ps.y};
        call(api.rectangle, 0x3bed52, 0x3a1244,
             MenuControlRectangle{pd, pp, maximum, style_color(s, 4), rounding, 1, 0xc0, true});
        call(api.rectangle, 0x3bedba, 0x3a1148,
             MenuControlRectangle{
                 pd, {box.x, box.y}, maximum, style_color(s, 6), rounding, 1, 0xc0, false});
        call(
            api.line, 0x3bee25, 0x3a01f4,
            MenuControlLine{draw, {box.x, box.w - rounding}, {box.x, box.w}, style_color(s, 6), 1});
        call(api.line, 0x3bee99, 0x3a01f4,
             MenuControlLine{
                 draw, {box.z - 1, box.w - rounding}, {box.z - 1, box.w}, style_color(s, 6), 1});
        call(api.bring_focus_38f160, 0x3beea6, 0x38f160, window(s));
        call(api.bring_display_38f0bc, 0x3beeb3, 0x38f0bc, window(s));
        if (!call(api.window_hovered_3947ec, 0x3beeba, 0x3947ec, 0u) &&
            call(api.mouse_clicked_3943e4, 0x3beec9, 0x3943e4, 0, false) && !behavior.hovered)
            a.fields[3] = 0;
        write(s, pw + 0x141, ReU8(1), 0x39b46a);
        write(s, pw + 0x104,
              read<float>(s, pw + 0x24, 0x39b45d) - read<float>(s, pw + 0x88, 0x39b462) + rounding,
              0x39b47a);
        call(api.local_layout, 0x3beeea, 0x38ec90, Rva(0x38ec90));
        for (ReUSize i = 0; i < r.choices.size(); ++i) {
            MenuControlRequest q;
            q.role = MenuControlRole::selectable;
            q.primitive = 0x3c38a8;
            q.label = r.choices[i];
            q.minimum = current(s, r) == ReI32(i);
            q.size = {read<float>(s, pw + 0x28, 0x392f42), height};
            if (selectable(s, api, q).pressed) {
                selected(s, r, ReI32(i));
                a.fields[3] = 0;
                out.changed = true;
            }
        }
        if (r.choices.size() > 5) {
            item_size(s, {0, 9 * scale}, -1);
            const auto cursor = read<Vec2>(s, window(s) + 0x100, 0x3bfe4c);
            (void)item_add(s, api, {cursor.x, cursor.y, cursor.x, cursor.y + 9 * scale}, 0);
        }
        call(api.local_layout, 0x3befac, 0x390efc, Rva(0x390efc));
        call(api.end_window_390994, 0x3befb1, 0x390994);
        call(api.pop_style_39896c, 0x3befbb, 0x39896c, 1);
    }
    return out;
}
} // namespace rust_internal_re::menu_detail
