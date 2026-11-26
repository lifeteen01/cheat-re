#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
void local(const MenuControlsApi &api, Rva target) {
    if (!api.local_layout)
        { __builtin_trap(); }
    api.local_layout(target);
}
void nav_id(MenuControlsState &s, Address w, ReU32 value, ClipRect rect) {
    const auto c = context(s);
    const auto layer = read<ReU32>(s, w + 0x158, 0x3c3ca3);
    const auto scope = read<ReU32>(s, c + 0x4784, 0x3c3c99);
    const auto offset = read<Vec2>(s, w + 0x110, 0x39e1e6);
    rect.x -= offset.x;
    rect.z -= offset.x;
    rect.y -= offset.y;
    rect.w -= offset.y;
    write(s, c + 0x48f4, scope, 0x39b69e);
    write(s, c + 0x48f0, value, 0x39b6a5);
    write(s, c + 0x4920, layer, 0x39b6ac);
    const auto nav = read<Address>(s, c + 0x48e8, 0x39b697);
    write(s, nav + 0x3a0 + Address(layer) * 4, value, 0x39b6b6);
    write(s, nav + 0x3a8 + Address(layer) * 16, rect, 0x39b6cc);
    write(s, c + 0x4926, ReU8(1), 0x3c3cb2);
}
} // namespace
MenuControlResult selectable(MenuControlsState &s, const MenuControlsApi &api,
                             const MenuControlRequest &r) {
    const auto c = context(s), w = window(s);
    MenuControlResult out;
    if (read<ReU8>(s, w + 0xbb, 0x3c3903))
        return out;
    out.id = id(s, r.label);
    const auto &text = r.register_search ? r.description : r.label;
    const auto label = renderer_measure_38f79c(*s.image, c, text, {}, true, -1).size;
    auto size = r.size;
    if (size.y == 0)
        size.y = label.y;
    if (size.x == 0)
        size.x = label.x;
    const auto p = read<Vec2>(s, w + 0x100, 0x3c39a9);
    const auto y = p.y + read<float>(s, w + 0x138, 0x3c3992);
    item_size(s, size, 0);
    const bool span = (r.flags & 2) != 0;
    const auto x = span ? read<float>(s, w + 0x228, 0x3c39c2) : p.x;
    if (r.size.x == 0 || (r.flags & 0x1000000))
        size.x = maxss(label.x, read<float>(s, w + (span ? 0x230 : 0x220), 0x3c39e8) - x);
    ClipRect box{x, y, x + size.x, y + size.y};
    if (!(r.flags & 0x4000000)) {
        const auto sx = span ? 0.0f : read<float>(s, c + 0x381c, 0x3c3a60),
                   sy = read<float>(s, c + 0x3820, 0x3c3a69);
        const auto hx = float(cvtt(sx * 0.5f)), hy = float(cvtt(sy * 0.5f));
        box.x -= hx;
        box.y -= hy;
        box.z += sx - hx;
        box.w += sy - hy;
    }
    const auto saved_x = read<float>(s, w + 0x238, 0x3c3ae6),
               saved_z = read<float>(s, w + 0x240, 0x3c3aef);
    if (span) {
        write(s, w + 0x238, read<float>(s, w + 0x228, 0x3c3afc), 0x3c3b03);
        write(s, w + 0x240, read<float>(s, w + 0x230, 0x3c3b0a), 0x3c3b11);
    }
    const bool disabled = r.flags & 8;
    const auto added = item_add(s, api, box, out.id, {}, disabled ? 4 : 0);
    if (span) {
        write(s, w + 0x238, saved_x, 0x3c3b41);
        write(s, w + 0x240, saved_z, 0x3c3b4a);
    }
    if (!added)
        return out;
    const bool already_disabled = read<ReU32>(s, c + 0x4788, 0x3c3b5b) & 4;
    if (disabled && !already_disabled) {
        if (!api.begin_disabled_38ec34)
            { __builtin_trap(); }
        api.begin_disabled_38ec34(true);
    }
    if (span) {
        if (read<Address>(s, w + 0x1a8, 0x3c3b7c))
            local(api, 0x3b54fc);
        else if (read<Address>(s, c + 0x4b48, 0x3c3b8d))
            local(api, 0x3b5890);
    }
    ReU32 behavior_flags = r.flags & 0x100000 ? 0x20000 : 0;
    if (r.flags & 0x8000000)
        behavior_flags += 0x100000;
    if (r.flags & 0x400000)
        behavior_flags |= 0x10;
    if (r.flags & 0x800000)
        behavior_flags |= 0x80;
    if (r.flags & 4)
        behavior_flags |= 0x120;
    if (r.flags & 0x10)
        behavior_flags |= 0x1000;
    const auto behavior = menu_controls_button_behavior_3bc7e0(s, api, box, out.id, behavior_flags);
    out.pressed = behavior.pressed;
    bool selected = r.minimum != 0;
    bool set_nav = false;
    if ((r.flags & 0x200000) && read<ReU32>(s, c + 0x4908, 0x3c3c30) != 0 &&
        read<ReU32>(s, c + 0x490c, 0x3c3c46) ==
            read<ReU32>(s, c + 0x4784, 0x3c3c3f) &&
        read<ReU32>(s, c + 0x4908, 0x3c3c53) == out.id) {
        out.pressed = true;
        selected = true;
        set_nav = true;
    } else
        set_nav = out.pressed || (behavior.hovered && (r.flags & 0x2000000));
    if (set_nav && !read<ReU8>(s, c + 0x4927, 0x3c3c65) &&
        read<Address>(s, c + 0x48e8, 0x3c3c6f) == w &&
        read<ReU32>(s, c + 0x4920, 0x3c3c7f) == read<ReU32>(s, w + 0x158, 0x3c3c78))
        nav_id(s, w, out.id, box);
    if (out.pressed) {
        const auto active = read<ReU32>(s, c + 0x3f68, 0x395137);
        if (!active || active == out.id)
            write(s, c + 0x3f78, ReU16(0x101), 0x395145);
        write(s, c + 0x47ac, read<ReU32>(s, c + 0x47ac, 0x39514e) | 4u, 0x39514e);
    }
    if (r.flags & 0x10) {
        if (read<ReU32>(s, c + 0x3f54, 0x39b565) ==
            read<ReU32>(s, c + 0x47a4, 0x39b55f))
            write(s, c + 0x3f5c, ReU8(1), 0x39b56d);
        if (read<ReU32>(s, c + 0x3f68, 0x39b574) ==
            read<ReU32>(s, c + 0x47a4, 0x39b55f))
            write(s, c + 0x3f75, ReU8(1), 0x39b57c);
    }
    if (selected != (r.minimum != 0))
        write(s, c + 0x47ac, read<ReU32>(s, c + 0x47ac, 0x3c3cdb) | 8u, 0x3c3cdb);
    if (span) {
        if (read<Address>(s, w + 0x1a8, 0x3c3ce7))
            local(api, 0x3b54ac);
        else if (read<Address>(s, c + 0x4b48, 0x3c3d17))
            local(api, 0x3b5824);
    }
    auto &a = s.checkboxes[{0x3bb858, menu_controls_hash_39334c(r.label)}];
    a.enabled_hover = animate(s, a.enabled_hover, behavior.hovered || selected ? 1 : 0, 14);
    a.hover = animate(s, a.hover, behavior.hovered ? 1 : 0, 14);
    a.checked = animate(s, a.checked, selected ? 1 : 0, 14);
    a.color = lerp_color(
        lerp_color(unpack_color(style_color(s, 2)), unpack_color(style_color(s, 1)), a.hover),
        unpack_color(style_color(s, 0)), a.checked);
    const auto draw = read<Address>(s, w + 0x298, 0x3c3e8b);
    if (!api.rectangle)
        { __builtin_trap(); }
    api.rectangle({draw,
                   {box.x, box.y},
                   {box.z, box.w},
                   pack_color({1, 1, 1,
                               a.hover * read<float>(s, 0x2a923c, 0x3c3e98) *
                                   read<float>(s, c + 0x37d0, 0x3c3eb0)}),
                   0,
                   1,
                   0,
                   true});
    if (!api.circle)
        { __builtin_trap(); }
    api.circle({draw,
                {box.x + read<float>(s, c + 0x380c, 0x3c3f0e) + 5, (box.y + box.w) * 0.5f},
                a.checked * 2,
                0,
                {},
                0,
                style_color(s, 0, a.checked),
                0,
                true});
    emit_text(s, api, draw,
              {box.x + read<float>(s, c + 0x380c, 0x3c3f84) + float(cvtt(a.checked * 14)),
               (box.y + box.w) * 0.5f - label.y * 0.5f},
              pack_color(a.color), text);
    if (out.pressed && (read<ReU32>(s, w + 0x14, 0x3c3ff2) & 0x4000000) && !(r.flags & 1) &&
        !(read<ReU8>(s, c + 0x47a8, 0x3c4002) & 0x20)) {
        if (!api.close_current_popup_390260)
            { __builtin_trap(); }
        api.close_current_popup_390260();
    }
    if (disabled && !already_disabled) {
        if (!api.end_disabled_390c80)
            { __builtin_trap(); }
        api.end_disabled_390c80();
    }
    return out;
}
} // namespace rust_internal_re::menu_detail
