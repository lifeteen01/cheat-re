#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
namespace {
void clip_pop(ImguiWindowsState &s) {
    auto &owner = control(s);
    const auto w = menu_detail::window(owner), draw = read<Address>(s, w + 0x298, 0x39879a);
    if (!owner.draw || !owner.draw->lists.contains(draw))
        { __builtin_trap(); }
    auto &list = owner.draw->lists[draw];
    list.clip_stack.pop();
    if (list.clip_stack.size)
        list.header.clip = list.clip_stack.at(list.clip_stack.size - 1);
    else {
        const auto shared = read<Address>(s, draw + 0x38, 0x3a6e51);
        list.header.clip = read<re::ReArray<float, 4>>(s, shared + 0x1c, 0x3a6e67);
    }
    draw_core_clip_changed_3a8d94(list);
    if (!list.clip_stack.size)
        __builtin_trap();
    const auto clip = list.clip_stack.at(list.clip_stack.size - 1);
    write(s, w + 0x238, ClipRect{clip[0], clip[1], clip[2], clip[3]}, 0x3987c8);
}
void focus_pop(ImguiWindowsState &s) {
    const auto c = context(s), v = c + 0x4880;
    const auto n = sub(read<ReI32>(s, v, 0x39eea0), 1);
    write(s, v, n, 0x39eea0);
    if (n < 0)
        { __builtin_trap(); }
    const auto focus = n ? read<ReU32>(s, element(s, v, n - 1, 4, 0x398801), 0x398806) : 0u;
    write(s, c + 0x4784, focus, 0x39880d);
}
void cursor_end(ImguiWindowsState &s, Address w) {
    write(s, w + 0x141, ReU8(0), 0x3911a4);
    const auto maximum = read<Vec2>(s, w + 0x118, 0x39119d),
               cursor = read<Vec2>(s, w + 0x100, 0x3911af);
    write(s, w + 0x118,
          Vec2{menu_detail::maxss(maximum.x, cursor.x), menu_detail::maxss(maximum.y, cursor.y)},
          0x3911bf);
}
} // namespace
void set_current(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w) {
    const auto c = context(s);
    write(s, c + 0x3f08, w, 0x39b35c);
    Address table = 0;
    if (w) {
        const auto index = read<ReI32>(s, w + 0x1b0, 0x39b368);
        if (index != -1) {
            if (!api.table_by_index_3921c0)
                { __builtin_trap(); }
            table = api.table_by_index_3921c0(index);
        }
    }
    write(s, c + 0x4b48, table, 0x39b383);
    if (w) {
        const auto size = font_size(s, w);
        write(s, c + 0x3c48, size, 0x39b397);
        write(s, c + 0x3c30, size, 0x39b39f);
        write(s, w + 0x160,
              ReU8(!read<Address>(s, c + 0x4b48, 0x3970f7) &&
                           !read<Address>(s, w + 0x1a8, 0x397108)),
              0x397118);
    }
}
void end(ImguiWindowsState &s, const ImguiWindowsApi &api) {
    const auto c = context(s), v = c + 0x3ed8;
    const auto n = read<ReI32>(s, v, 0x3909b1);
    if (n <= 1 && read<ReU8>(s, c + 0x3e6d, 0x3909b6))
        return;
    const auto w = read<Address>(s, c + 0x3f08, 0x3909c3);
    if (read<Address>(s, w + 0x1a8, 0x3909ca)) {
        if (!api.end_columns_3b4f94)
            { __builtin_trap(); }
        api.end_columns_3b4f94();
    }
    clip_pop(s);
    focus_pop(s);
    const auto flags = read<ReU32>(s, w + 0x14, 0x3909e3);
    if (!(flags & 0x1000000) && read<ReU8>(s, c + 0x5c90, 0x394de5)) {
        if (!api.log_finish_394dd4)
            { __builtin_trap(); }
        api.log_finish_394dd4();
    }
    if (read<ReU8>(s, w + 0x141, 0x3909f1))
        cursor_end(s, w);
    const auto record = element(s, v, sub(read<ReI32>(s, v, 0x39e370), 1), 0x58, 0x390a02);
    for (auto offset : {0u, 16u, 32u, 44u})
        write(s, c + 0x47a4 + offset,
              read<re::ReArray<ReByte, 16>>(s, record + 8 + offset, 0x390a07), 0x390a0b);
    if (flags & 0x10000000)
        write(s, c + 0x48d0, sub(read<ReI32>(s, c + 0x48d0, 0x390a3c), 1), 0x390a3c);
    if (flags & 0x4000000) {
        const auto size = sub(read<ReI32>(s, c + 0x48c0, 0x39eea0), 1);
        write(s, c + 0x48c0, size, 0x39eea0);
    }
    const auto remaining = sub(read<ReI32>(s, v, 0x39eea0), 1);
    write(s, v, remaining, 0x390a5a);
    if (remaining < 0)
        { __builtin_trap(); }
    set_current(s, api,
                remaining ? read<Address>(s, element(s, v, remaining - 1, 0x58, 0x390a6b), 0x390a70)
                          : 0);
}
void end_child(ImguiWindowsState &s, const ImguiWindowsApi &api) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x390aa5);
    write(s, c + 0x3e6e, ReU8(1), 0x390aac);
    if (read<ReI16>(s, w + 0xc2, 0x390ab3) > 1)
        end(s, api);
    else {
        auto size = read<Vec2>(s, w + 0x28, 0x390acd);
        const auto axes = read<ReU8>(s, w + 0xd2, 0x390ac7);
        if (axes & 1)
            size.x = menu_detail::maxss(4, size.x);
        if (axes & 2)
            size.y = menu_detail::maxss(4, size.y);
        end(s, api);
        const auto parent = current(s);
        const auto p = read<Vec2>(s, parent + 0x100, 0x390b20);
        const ClipRect box{p.x, p.y, p.x + size.x, p.y + size.y};
        menu_detail::item_size(control(s), size, -1);
        const bool has_layers = read<ReU16>(s, w + 0x15c, 0x390b4f) != 0;
        const bool has_scroll = read<ReU8>(s, w + 0x162, 0x390b5e) != 0;
        const auto flags = read<ReU32>(s, w + 0x14, 0x390b6b);
        if ((has_layers || has_scroll) && !(flags & 0x800000)) {
            const auto id = read<ReU32>(s, w + 0x80, 0x390b74);
            (void)menu_detail::item_add(control(s), api.controls, box, id);
            if (!api.nav_highlight_3997ac)
                __builtin_trap();
            api.nav_highlight_3997ac(box, id, 1);
            if (!has_layers && read<Address>(s, c + 0x48e8, 0x390ba9) == w) {
                const auto value = read<ReU32>(s, c + 0x48f0, 0x390bc2);
                api.nav_highlight_3997ac({box.x - 2, box.y - 2, box.z + 2, box.w + 2}, value, 2);
            }
        } else {
            (void)menu_detail::item_add(control(s), api.controls, box, 0);
            if (flags & 0x800000)
                write(s, parent + 0x15e,
                      ReU16(read<ReU16>(s, parent + 0x15e, 0x390c46) |
                                    read<ReU16>(s, w + 0x15e, 0x390c3f)),
                      0x390c46);
        }
        if (read<Address>(s, c + 0x3f10, 0x390c4d) == w)
            write(s, c + 0x47ac, read<ReU32>(s, c + 0x47ac, 0x390c56) | 0x80u, 0x390c56);
    }
    write(s, c + 0x3e6e, ReU8(0), 0x390c5f);
    write(s, c + 0x5cc0, 0xff7fffffu, 0x390c67);
}
// [C] 0x39b348..0x39b3b6: set active window and update font size / table reference
// Semantics: binary entry point for set_current() above.
void set_current_entry_39b348(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w) {
    set_current(s, api, w);
}
// [C] 0x3987d8..0x398818: pop focus scope stack and restore previous scope ID
// Semantics: binary entry point for focus_pop() above.
void focus_pop_entry_3987d8(ImguiWindowsState &s) {
    focus_pop(s);
}
} // namespace rust_internal_re::window_detail
namespace rust_internal_re {
FrameDependencyResult imgui_window_end_390994(ImguiWindowsState &s, const ImguiWindowsApi &api) {
    {
        window_detail::end(s, api);
        return {};
    }
}
FrameDependencyResult imgui_window_end_child_390a88(ImguiWindowsState &s,
                                                    const ImguiWindowsApi &api) {
    {
        window_detail::end_child(s, api);
        return {};
    }
}
} // namespace rust_internal_re
