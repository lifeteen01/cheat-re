#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
bool pressed(MenuControlsState &s, ReI32 key, bool repeat) {
    const auto c = context(s), data = key_data(s, key);
    if (!read<ReU8>(s, data, 0x394288))
        return false;
    const auto t = read<float>(s, data + 4, 0x39428d);
    if (t == 0)
        return key_owner(s, key, 0);
    if (!repeat || !(t > read<float>(s, c + 0x3c, 0x3942af)))
        return false;
    return menu_controls_typematic_38f85c(t - read<float>(s, c + 0x18, 0x3942b8), t,
                                          read<float>(s, c + 0x3c, 0x3942af),
                                          read<float>(s, c + 0x40, 0x3942b8)) > 0 &&
           key_owner(s, key, 0);
}
} // namespace
bool key_capture(MenuControlsState &s, const MenuControlsApi &api, re::ReStringView label,
                 Rva key) {
    const auto c = context(s), w = window(s);
    const auto scale = read<float>(s, 0x248ee8, 0x3853ef);
    if (!api.push_vec2_398c60)
        { __builtin_trap(); }
    api.push_vec2_398c60(11, {10 * scale, read<float>(s, 0x293194, 0x385408) * scale});
    const auto value = id(s, label);
    if (!s.config || !s.config->values.contains(key))
        { __builtin_trap(); }
    auto &bits = s.config->values.at(key);
    const auto name = frame_key_name(*s.config, re::re_bit_cast<ReI32>(bits), false);
    const auto shown =
        read<ReU32>(s, c + 0x3f68, 0x38544d) == value ? re::ReString("???") : name;
    const auto measured = measure_cached(s, 1, 12, shown);
    const auto font = cached_font(s, 1, 12);
    auto &a = s.checkboxes[{6, menu_controls_hash_39334c(label, 6)}];
    a.key_width = animate(s, a.key_width, measured.x, 17);
    const auto padding = read<Vec2>(s, c + 0x380c, 0x385530);
    const auto p = read<Vec2>(s, w + 0x100, 0x385551);
    const auto width = item_width(s);
    const auto height = measured.y + 2 * padding.y;
    const ClipRect row{p.x, p.y, p.x + width, p.y + height};
    const auto label_size = renderer_measure_38f79c(*s.image, c, label, {}, true, -1).size;
    const auto boxwidth = label_size.x > 0 ? 2 * padding.x + a.key_width : item_width(s);
    const ClipRect box{row.z - boxwidth, row.y, row.z, row.w};
    item_size(s, {width, height}, padding.y);
    (void)item_add(s, api, row, value, box);
    const auto hovered = hoverable(s, api, box, value);
    const bool clicked = read<ReU8>(s, c + 0x3748, 0x385650);
    if (hovered && clicked) {
        if (read<ReU32>(s, c + 0x3f68, 0x385655) != value) {
            write(s, c + 0xe10, 0u, 0x385666);
            write(s, c + 0xe14, ReU8(0), 0x385674);
            for (Address i = 0; i < 0x28c; ++i)
                write(s, c + 0xb30 + i, ReU8(0), 0x38567a);
            bits = 0x3a;
        }
        set_active(s, api, value, w);
        focus_window(s, api, w, 0);
    } else if (!hovered && clicked && read<ReU32>(s, c + 0x3f68, 0x3856ad) == value)
        set_active(s, api, 0, 0);
    bool changed = false;
    if (read<ReU32>(s, c + 0x3f68, 0x3856bd) == value) {
        if (read<ReU8>(s, c + 0x3748, 0x3856c9) &&
            read<ReU32>(s, c + 0x3f98, 0x3856ce) == value) {
            bits = 0x22b;
            changed = true;
            set_active(s, api, 0, 0);
        } else if (pressed(s, 0x20e, true)) {
            bits = 0x3e7;
            set_active(s, api, 0, 0);
        } else {
            const auto input = [&](int k) {
                if (!api.key_input_2e5e4c)
                    __builtin_trap();
                return api.key_input_2e5e4c(k, false);
            };
            int found = -1;
            for (int k = 0; k <= 0x13f; ++k) {
                if (k >= 1 && k <= 4 && k != 3)
                    continue;
                if (input(k)) {
                    found = k;
                    break;
                }
            }
            if (found == -1)
                for (int k = 0x22c; k <= 0x22f; ++k)
                    if (input(k)) {
                        found = k;
                        break;
                    }
            if (found != -1) {
                bits = ReU32(found);
                set_active(s, api, 0, 0);
                changed = true;
            }
        }
    }
    re::ReString display = "NONE";
    const bool active = read<ReU32>(s, c + 0x3f68, 0x3857ad) == value;
    if (active)
        display = "???";
    else if (bits != 0x3e7)
        display = name;
    a.enabled_hover = animate(s, a.enabled_hover, active || hovered ? 1 : 0, 14);
    a.checked = animate(s, a.checked, active ? 1 : 0, 14);
    a.hover = animate(s, a.hover, hovered ? 1 : 0, 14);
    a.color = lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1)),
                         a.enabled_hover);
    const auto draw = read<Address>(s, w + 0x298, 0x3858fb);
    if (!api.glow_rectangle_3a2010)
        { __builtin_trap(); }
    api.glow_rectangle_3a2010({draw,
                               {box.x, box.y},
                               {box.z, box.w},
                               style_color(s, 0, a.checked),
                               read<float>(s, 0x28db28, 0x385917) * scale,
                               {},
                               0,
                               0});
    if (!api.rectangle)
        { __builtin_trap(); }
    api.rectangle({draw,
                   {box.x, box.y},
                   {box.z, box.w},
                   pack_color(lerp_color(unpack_color(style_color(s, 6)),
                                         unpack_color(style_color(s, 0)), a.checked)),
                   read<float>(s, c + 0x3814, 0x385965),
                   1,
                   0,
                   false});
    emit_text(s, api, draw,
              {row.x, row.y + height * 0.5f - read<float>(s, c + 0x3c30, 0x385a41) * 0.5f},
              style_color(s, 1), label);
    emit_text(s, api, draw, {box.x + padding.x, box.y + padding.y}, pack_color(a.color), display,
              false, font, 12 * scale);
    if (!api.pop_style_39896c)
        { __builtin_trap(); }
    api.pop_style_39896c(1);
    return changed;
}
} // namespace rust_internal_re::menu_detail
