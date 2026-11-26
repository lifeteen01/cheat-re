#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
ReU32 config_bits(MenuControlsState &s, Rva at) {
    if (!s.config)
        { __builtin_trap(); }
    const auto p = s.config->values.find(at);
    if (!p)
        { __builtin_trap(); }
    return **p;
}
void rectangle(const MenuControlsApi &api, Address d, ClipRect b, ReU32 color, float radius,
               bool fill) {
    if (!api.rectangle)
        { __builtin_trap(); }
    api.rectangle({d, {b.x, b.y}, {b.z, b.w}, color, radius, 1, 0, fill});
}
} // namespace
MenuControlResult button(MenuControlsState &s, const MenuControlsApi &api,
                         const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    if (read<ReU8>(s, w + 0xbb, 0x3bcdd3))
        return out;
    out.id = id(s, r.label);
    const auto label = renderer_measure_38f79c(*s.image, c, r.label, {}, true, -1).size;
    auto pos = read<Vec2>(s, w + 0x100, 0x3bce18);
    const auto padding = read<Vec2>(s, c + 0x380c, 0x3bce5a);
    if ((r.flags & 0x8000) && read<float>(s, w + 0x138, 0x3bce2c) > padding.y)
        pos.y += read<float>(s, w + 0x138, 0x3bce2c) - padding.y;
    const auto size = calculate_size(s, r.size, {label.x + 2 * padding.x, label.y + 2 * padding.y});
    const ClipRect box{pos.x, pos.y, pos.x + size.x, pos.y + size.y};
    item_size(s, size, padding.y);
    if (!item_add(s, api, box, out.id))
        return out;
    auto flags = r.flags;
    if (read<ReU8>(s, c + 0x47a8, 0x3bcee2) & 2)
        flags |= 0x400;
    const auto interaction = menu_controls_button_behavior_3bc7e0(s, api, box, out.id, flags);
    out.pressed = interaction.pressed;
    auto &animation = s.buttons[menu_controls_hash_39334c(r.label)];
    animation.enabled = animate(s, animation.enabled, interaction.held ? 1 : 0, 14);
    animation.hover = animate(s, animation.hover, interaction.hovered ? 1 : 0, 14);
    rectangle(api, read<Address>(s, w + 0x298, 0x3bcf81), box,
              style_color(s, 0,
                          1 - animation.hover * read<float>(s, 0x2930a8, 0x3bcf63) -
                              animation.enabled * read<float>(s, 0x2930a8, 0x3bcf63)),
              read<float>(s, c + 0x3814, 0x3bcf88), true);
    emit_text(s, api, read<Address>(s, w + 0x298, 0x3bcfca),
              {(pos.x + size.x * 0.5f) - label.x * 0.5f, (pos.y + size.y * 0.5f) - label.y * 0.5f},
              style_color(s, 1), r.label);
    return out;
}
MenuControlResult checkbox(MenuControlsState &s, const MenuControlsApi &api,
                           const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    out.id = id(s, r.label);
    const auto p = read<Vec2>(s, w + 0x100, 0x3bd18b);
    const auto scale = read<float>(s, 0x248ee8, 0x3bd198);
    const auto label = renderer_measure_38f79c(*s.image, c, r.label, {}, true, -1).size;
    const auto itemflags = read<ReU32>(s, c + 0x4788, 0x3bd1ea);
    const float width = item_width(s) - ((itemflags & 0x800) ? 25 * scale : 0), height = 15 * scale;
    const ClipRect row{p.x, p.y, p.x + width, p.y + height},
        box{p.x + width - 28 * scale, p.y, p.x + width, p.y + height};
    item_size(s, {width, height}, -1);
    (void)item_add(s, api, row, out.id);
    const auto interaction = menu_controls_button_behavior_3bc7e0(s, api, row, out.id, 0);
    out.pressed = interaction.pressed;
    auto bits = config_bits(s, r.value);
    if (interaction.pressed) {
        const auto low = ReU8(bits) == 0 ? 1u : 0u;
        s.config->values[r.value] = (bits & 0xffffff00u) | low;
        out.changed = true;
        bits = s.config->values[r.value];
    }
    const bool enabled = ReU8(bits) != 0;
    auto &a = s.checkboxes[{0, menu_controls_hash_39334c(r.label)}];
    register_control(s, r, a.registered);
    if (itemflags & 0x800) {
        same_line(s, 0, 10 * scale);
        favorite_387664(s, api, r);
    }
    a.enabled_hover = animate(s, a.enabled_hover, interaction.hovered || enabled ? 1 : 0, 14);
    a.hover = animate(s, a.hover, interaction.hovered ? 1 : 0, 14);
    a.checked = animate(s, a.checked, enabled ? 1 : 0, 14);
    a.color = lerp_color(
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1, 0.7f)), a.hover),
        unpack_color(style_color(s, 1)), a.checked);
    const auto draw = read<Address>(s, w + 0x298, 0x3bd61b);
    rectangle(api, draw, box, style_color(s, 6), 22 * scale, false);
    rectangle(api, draw, box, style_color(s, 0, a.checked * 0.4f), 22 * scale, true);
    const Vec2 center{box.x + height * 0.5f + ((box.z - box.x) - height) * a.checked,
                      (box.y + box.w) * 0.5f};
    if (!api.circle)
        { __builtin_trap(); }
    api.circle({draw,
                center,
                10 * scale,
                70 * scale * a.checked,
                {},
                0,
                style_color(s, 0, a.checked * 0.4f),
                12,
                false});
    const auto knob = pack_color(
        lerp_color(unpack_color(style_color(s, 8)), unpack_color(style_color(s, 0)), a.checked));
    api.circle({draw, center, 10 * scale - scale * a.hover, 0, {}, 0, knob, 0, true});
    emit_text(s, api, draw, {row.x, (row.y + row.w) * 0.5f - label.y * 0.5f}, pack_color(a.color),
              r.label);
    const auto child = [&](const MenuControlChild &v) {
        if (!api.begin_child_38e97c)
            { __builtin_trap(); }
        api.begin_child_38e97c(v);
    };
    const auto endchild = [&]() {
        if (!api.end_child_390a88)
            { __builtin_trap(); }
        api.end_child_390a88();
    };
    if (r.color) {
        const auto saved = read<Vec2>(s, w + 0x100, 0x3bd91c);
        write(s, w + 0x100, Vec2{box.x - 34 * scale, row.y}, 0x3bd948);
        child({"cb" + r.label, {24 * scale, height}, 0x80});
        MenuControlRequest cr;
        cr.role = MenuControlRole::color;
        cr.primitive = 0x386438;
        cr.label = r.label + "cb";
        cr.value = r.color;
        cr.size = {24 * scale, height};
        (void)color(s, api, cr);
        endchild();
        write(s, w + 0x100, saved, 0x3bda27);
    }
    if (r.key) {
        const auto code = re::re_bit_cast<ReI32>(config_bits(s, r.key));
        const auto name = frame_key_name(*s.config, code, false);
        const auto measured = measure_cached(s, 1, 12, name);
        a.key_width = animate(s, a.key_width, measured.x, 17);
        const auto saved = read<Vec2>(s, w + 0x100, 0x3bda4b),
                   extent = read<Vec2>(s, w + 0x110, 0x3bda54);
        write(s, w + 0x100, Vec2{box.x - 25 * scale - (r.color ? 34 * scale : 0), row.y}, 0x3bdb35);
        child({"bind" + r.label, {height, height}, 0x80});
        MenuControlRequest kr;
        kr.role = MenuControlRole::keybind;
        kr.primitive = 0x385b70;
        kr.label = "##" + r.label + "binder";
        kr.value = r.key;
        kr.register_search = r.register_search;
        (void)keybind(s, api, kr);
        endchild();
        write(s, w + 0x110, extent, 0x3bdc2d);
        write(s, w + 0x100, saved, 0x3bdc3f);
    }
    if (!r.description.empty()) {
        const auto saved = read<Vec2>(s, w + 0x100, 0x3bdc96),
                   extent = read<Vec2>(s, w + 0x110, 0x3bdca1);
        write(
            s, w + 0x100,
            Vec2{box.x - 26 * scale - (r.color ? 26 * scale : 0) - (r.key ? 25 * scale : 0), row.y},
            0x3bdd33);
        const re::ReString prefix = "tooltip";
        child({prefix + r.label, {16 * scale, 16 * scale}, 0x80});
        if (!api.tooltip_389f18)
            { __builtin_trap(); }
        api.tooltip_389f18(r.label, r.description, raw_text(s, 0x2ad8c8));
        endchild();
        write(s, w + 0x110, extent, 0x3bddc3);
        write(s, w + 0x100, saved, 0x3bddd5);
    }
    return out;
}
} // namespace rust_internal_re::menu_detail
