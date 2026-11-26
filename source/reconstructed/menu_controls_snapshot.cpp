#include "menu_controls_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace menu_detail;
void settings_dirty(MenuControlsState &s, Address w) {
    if (read<ReU32>(s, w + 0x14, 0x395108) & 0x100)
        return;
    const auto c = context(s);
    if (read<float>(s, c + 0x5bfc, 0x39511b) <= 0)
        write(s, c + 0x5bfc, read<float>(s, c + 0x1c, 0x395124), 0x395127);
}
Address style_meta(MenuControlsState &s, ReU32 i) {
    (void)s;
    return 0x2a9930 + Address(i) * 12;
}
void import_style(MenuControlsState &s) {
    if (s.style_imported)
        return;
    const auto v = context(s) + 0x4860;
    const auto n = read<ReI32>(s, v, 0x39f078);
    const auto data = n ? read<Address>(s, v + 8, 0x39f078) : Address(0);
    if (n < 0 || n > 100000)
        { __builtin_trap(); }
    for (int i = 0; i < n; ++i)
        s.style_stack.push_back(read<MenuStyleBackup>(s, data + Address(i) * 12, 0x39f078));
    s.style_imported = true;
}
void import_color(MenuControlsState &s) {
    if (s.color_imported)
        return;
    const auto v = context(s) + 0x4850;
    const auto n = read<ReI32>(s, v, 0x39ef90);
    const auto data = n ? read<Address>(s, v + 8, 0x39ef90) : Address(0);
    if (n < 0 || n > 100000)
        { __builtin_trap(); }
    for (int i = 0; i < n; ++i)
        s.color_stack.push_back(read<MenuColorBackup>(s, data + Address(i) * 20, 0x39ef90));
    s.color_imported = true;
}
void import_flags(MenuControlsState &s) {
    if (s.flags_imported)
        return;
    const auto v = context(s) + 0x4890;
    const auto n = read<ReI32>(s, v, 0x39eee8);
    const auto data = n ? read<Address>(s, v + 8, 0x39eee8) : Address(0);
    if (n < 0 || n > 100000)
        { __builtin_trap(); }
    for (int i = 0; i < n; ++i)
        s.item_flags_stack.push_back(read<ReU32>(s, data + Address(i) * 4, 0x39eee8));
    s.flags_imported = true;
}
void push_style(MenuControlsState &s, ReU32 i, Vec2 value, ReU32 count) {
    const auto m = style_meta(s, i);
    if (read<ReU32>(s, m, 0x398ce6) != 8 ||
        read<ReU32>(s, m + 4, 0x398ceb) != count)
        return;
    const auto c = context(s), p = c + 0x37d0 + read<ReU32>(s, m + 8, 0x392dc4);
    import_style(s);
    MenuStyleBackup old;
    old.index = i;
    old.value[0] = read<float>(s, p, 0x398d11);
    if (count == 2)
        old.value[1] = read<float>(s, p + 4, 0x398c9e);
    s.style_stack.push_back(old);
    write(s, c + 0x4860, ReI32(s.style_stack.size()), 0x39f078);
    write(s, p, value.x, 0x398d29);
    if (count == 2)
        write(s, p + 4, value.y, 0x398cba);
}
} // namespace
MenuControlsApi bind_menu_controls_snapshot(MenuControlsState &s, MenuControlsApi api) {
    api.push_float_398cc8 = [&s](auto i, float v) { push_style(s, i, {v, 0}, 1); };
    api.push_vec2_398c60 = [&s](auto i, Vec2 v) { push_style(s, i, v, 2); };
    api.pop_style_39896c = [&s](int count) {
        import_style(s);
        count = re::re_min(count, int(s.style_stack.size()));
        for (int i = 0; i < count; ++i) {
            const auto old = s.style_stack.back();
            const auto m = style_meta(s, old.index), c = context(s);
            const auto p = c + 0x37d0 + read<ReU32>(s, m + 8, 0x392dc4);
            if (read<ReU32>(s, m, 0x3989b7) == 8) {
                const auto n = read<ReU32>(s, m + 4, 0x3989c0);
                if (n == 1 || n == 2) {
                    write(s, p, old.value[0], 0x3989c9);
                    if (n == 2)
                        write(s, p + 4, old.value[1], 0x3989db);
                }
            }
            s.style_stack.resize(s.style_stack.size()-1);
        }
        write(s, context(s) + 0x4860, ReI32(s.style_stack.size()), 0x39eea0);
    };
    api.push_color_398bec = [&s](ReU32 i, ReU32 v) {
        import_color(s);
        const auto p = context(s) + 0x38b8 + Address(i) * 16;
        s.color_stack.push_back({i, read<re::ReArray<float, 4>>(s, p, 0x398c24)});
        write(s, context(s) + 0x4850, ReI32(s.color_stack.size()), 0x39ef90);
        write(s, p, unpack_color(v), 0x398c46);
    };
    api.pop_color_39890c = [&s](int count) {
        import_color(s);
        count = re::re_min(count, int(s.color_stack.size()));
        for (int i = 0; i < count; ++i) {
            const auto old = s.color_stack.back();
            write(s, context(s) + 0x38b8 + Address(old.index) * 16, old.value, 0x398944);
            s.color_stack.resize(s.color_stack.size()-1);
        }
        write(s, context(s) + 0x4850, ReI32(s.color_stack.size()), 0x39eea0);
    };
    api.next_item_width_39b704 = [&s](float v) {
        const auto c = context(s);
        write(s, c + 0x4790, read<ReU32>(s, c + 0x4790, 0x39b70b) | 1u, 0x39b70b);
        write(s, c + 0x4794, v, 0x39b712);
    };
    api.bring_focus_38f160 = [&s](Address w) { bring_window_front(s, w, true); };
    api.bring_display_38f0bc = [&s](Address w) { bring_window_front(s, w, false); };
    api.mouse_clicked_3943e4 = [&s](int button, bool repeat) {
        return mouse_clicked(s, button, 0, repeat);
    };
    api.window_hovered_3947ec = [&s](auto flags) { return window_hovered(s, flags); };
    api.begin_disabled_38ec34 = [&s](bool disable) {
        import_flags(s);
        const auto c = context(s);
        auto flags = read<ReU32>(s, c + 0x4788, 0x38ec48);
        if (!(flags & 4) && disable) {
            const auto alpha = read<float>(s, c + 0x37d0, 0x38ec52);
            write(s, c + 0x5bac, alpha, 0x38ec5a);
            write(s, c + 0x37d0, alpha * read<float>(s, c + 0x37d4, 0x38ec62), 0x38ec6a);
        }
        if ((flags & 4) || disable)
            flags |= 4;
        write(s, c + 0x4788, flags, 0x38ec75);
        s.item_flags_stack.push_back(flags);
        write(s, c + 0x4890, ReI32(s.item_flags_stack.size()), 0x39eee8);
        write(s, c + 0x5bb0, ReU16(read<ReU16>(s, c + 0x5bb0, 0x38ec83) + 1),
              0x38ec83);
    };
    api.end_disabled_390c80 = [&s]() {
        import_flags(s);
        const auto c = context(s);
        write(s, c + 0x5bb0, ReU16(read<ReU16>(s, c + 0x5bb0, 0x390c96) - 1),
              0x390c96);
        const auto old = read<ReU32>(s, c + 0x4788, 0x390ca4);
        if (s.item_flags_stack.empty())
            { __builtin_trap(); }
        s.item_flags_stack.resize(s.item_flags_stack.size()-1);
        write(s, c + 0x4890, ReI32(s.item_flags_stack.size()), 0x39eea0);
        if (s.item_flags_stack.empty())
            { __builtin_trap(); }
        const auto flags = s.item_flags_stack.back();
        write(s, c + 0x4788, flags, 0x390cbc);
        if ((old & 4) && !(flags & 4))
            write(s, c + 0x37d0, read<float>(s, c + 0x5bac, 0x390ccd), 0x390cd3);
    };
    api.window_position_39bb20 = [&s](Vec2 value) {
        const auto w = window(s);
        const auto old = read<Vec2>(s, w + 0x20, 0x39bbb6);
        auto flags = read<ReU32>(s, w + 0xdc, 0x39bb7e);
        flags = (flags & 0xffffff00u) | (flags & 0xf1u);
        write(s, w + 0xdc, flags, 0x39bb9e);
        const auto maximum = read<float>(s, 0x28db54, 0x39bb8b);
        write(s, w + 0xe0, Vec2{maximum, maximum}, 0x39bbc9);
        value = {float(cvtt(value.x)), float(cvtt(value.y))};
        write(s, w + 0x20, value, 0x39bbe7);
        const Vec2 delta{value.x - old.x, value.y - old.y};
        if (delta.x != 0 || delta.y != 0) {
            settings_dirty(s, w);
            for (auto offset : {0x100u, 0x118u, 0x120u, 0x110u}) {
                auto v = read<Vec2>(s, w + offset, 0x38cc48);
                v.x += delta.x;
                v.y += delta.y;
                write(s, w + offset, v, 0x38cc48);
            }
        }
    };
    api.window_size_39bc6c = [&s](Vec2 v) {
        const auto w = window(s);
        const auto old = read<Vec2>(s, w + 0x30, 0x39bcb9);
        auto flags = read<ReU32>(s, w + 0xdc, 0x39bcac);
        const auto byte = ReU32(read<ReU8>(s, w + 0xdd, 0x39bca1) & 0xf1u);
        flags = (flags & 0xffff00ffu) | (byte << 8);
        write(s, w + 0xdc, flags, 0x39bccf);
        const bool x = v.x > 0 || re::re_isnan(v.x), y = v.y > 0 || re::re_isnan(v.y);
        write(s, w + 0xd0, ReU8(x ? 0 : 2), 0x39bce0);
        write(s, w + 0xd1, ReU8(y ? 0 : 2), 0x39bcf1);
        auto next = old;
        if (x) {
            next.x = float(cvtt(v.x));
            write(s, w + 0x30, next.x, 0x39bd13);
        } else
            write(s, w + 0xd3, ReU8(0), 0x39bcfc);
        if (y) {
            next.y = float(cvtt(v.y));
            write(s, w + 0x34, next.y, 0x39bd33);
        } else
            write(s, w + 0xd3, ReU8(0), 0x39bd1e);
        if (next.x != old.x || next.y != old.y)
            settings_dirty(s, w);
    };
    return bind_menu_controls_groups(s, api);
}
} // namespace rust_internal_re
