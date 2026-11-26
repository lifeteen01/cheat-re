#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
bool mode_button(MenuControlsState &s, const MenuControlsApi &api, re::ReStringView label,
                 bool selected) {
    const auto c = context(s), w = window(s);
    const auto value = id(s, label);
    const auto measured = renderer_measure_38f79c(*s.image, c, label, {}, true, -1).size;
    const auto scale = read<float>(s, 0x248ee8, 0x388eac);
    const float width = measured.x + read<float>(s, 0x2931c4, 0x388eb4) * scale,
                height =
                    2 * read<float>(s, c + 0x3810, 0x3925cc) + read<float>(s, c + 0x3c30, 0x3925cc);
    const auto p = read<Vec2>(s, w + 0x100, 0x388ed5);
    const ClipRect box{p.x, p.y, p.x + width, p.y + height};
    item_size(s, {width, height}, -1);
    (void)item_add(s, api, box, value);
    const auto behavior = menu_controls_button_behavior_3bc7e0(s, api, box, value, 0);
    auto &a = s.checkboxes[{0x209, menu_controls_hash_39334c(label, 0x209)}];
    a.enabled_hover = animate(s, a.enabled_hover, behavior.hovered || selected ? 1 : 0, 14);
    a.hover = animate(s, a.hover, behavior.hovered ? 1 : 0, 14);
    a.checked = animate(s, a.checked, selected ? 1 : 0, 14);
    a.key_width = animate(s, a.key_width, behavior.held ? 1 : 0, 14);
    a.color = lerp_color(
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1, 0.7f)), a.hover),
        unpack_color(style_color(s, 1)), a.checked);
    const auto draw = read<Address>(s, w + 0x298, 0x3890e6);
    if (!api.rectangle)
        { __builtin_trap(); }
    api.rectangle({draw,
                   p,
                   {box.z, box.w},
                   pack_color({1, 1, 1,
                               a.checked * read<float>(s, 0x2a923c, 0x3890f2) *
                                   read<float>(s, c + 0x37d0, 0x3890fa)}),
                   2,
                   1,
                   0,
                   true});
    emit_text(
        s, api, draw,
        {(box.x + box.z) * 0.5f - measured.x * 0.5f, (box.y + box.w) * 0.5f - measured.y * 0.5f},
        pack_color(a.color), label);
    return behavior.pressed;
}
} // namespace rust_internal_re::menu_detail
