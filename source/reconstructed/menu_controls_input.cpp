#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
namespace {
bool child_of(MenuControlsState &s, Address w, Address parent) {
    if (read<Address>(s, w + 0x378, 0x3948bc) == parent)
        return true;
    for (; w; w = read<Address>(s, w + 0x370, 0x3948bc))
        if (w == parent)
            return true;
    return false;
}
bool content_hoverable(MenuControlsState &s, Address w, ReU32 flags) {
    const auto nav = read<Address>(s, context(s) + 0x48e8, 0x394799);
    if (!nav)
        return true;
    const auto root = read<Address>(s, nav + 0x378, 0x39479e);
    if (!root || !read<ReU8>(s, root + 0xb7, 0x3947aa))
        return true;
    const auto own = read<Address>(s, w + 0x378, 0x3947b3);
    if (root == own)
        return true;
    const auto f = read<ReU32>(s, root + 0x14, 0x3947bf);
    return (!(f & 0x8000000u) && (!(f & 0x4000000u) || (flags & 0x20))) || child_of(s, own, root);
}
void set_nav_window(MenuControlsState &s, Address w) {
    const auto c = context(s);
    if (read<Address>(s, c + 0x48e8, 0x39b6d8) == w)
        return;
    write(s, c + 0x48e8, w, 0x39b6d8);
    write(s, c + 0x4940, ReU16(0), 0x39b6d8);
    write(s, c + 0x4929, ReU8(0), 0x39b6d8);
    write(s, c + 0x4928,
          ReU8(read<ReU8>(s, c + 0x4941, 0x396775) ||
                       read<ReU8>(s, c + 0x4929, 0x39677d)),
          0x396787);
}
void bring_front(MenuControlsState &s, Address w, bool focus) {
    const auto v = context(s) + (focus ? 0x3eb8 : 0x3ea8);
    const auto count = read<ReI32>(s, v, focus ? 0x38f18b : 0x38f0f1);
    const auto data = read<Address>(s, v + 8, 0x38bb84);
    if (count <= 0)
        __builtin_trap();
    const auto last = read<Address>(s, data + Address(count - 1) * 8, 0x39e314);
    if (last == w || (!focus && read<Address>(s, last + 0x378, 0x38f0e8) == w))
        return;
    auto index = focus ? ReI32(read<ReI16>(s, w + 0xca, 0x38f18e)) : count - 2;
    if (!focus) {
        while (index >= 0 && read<Address>(s, data + Address(index) * 8, 0x38f105) != w)
            --index;
        if (index < 0)
            return;
    }
    for (auto i = index; i < count - 1; ++i) {
        const auto moved = read<Address>(s, data + Address(ReI64(i + 1)) * 8, 0x38f1b9);
        write(s, data + Address(ReI64(i)) * 8, moved, 0x38f1bf);
        if (focus)
            write(s, moved + 0xca,
                  ReU16(read<ReU16>(s, moved + 0xca, 0x38f1d0) - 1), 0x38f1d0);
    }
    write(s, data + Address(count - 1) * 8, w, 0x38f14f);
    if (focus)
        write(s, w + 0xca, ReU16(count - 1), 0x38f1e8);
}
void close_popups(MenuControlsState &s, const MenuControlsApi &api, Address w) {
    const auto v = context(s) + 0x48b0;
    const auto count = read<ReI32>(s, v, 0x3903e7);
    if (!count)
        return;
    const auto data = read<Address>(s, v + 8, 0x38bb90);
    ReI32 i = 0;
    if (w)
        for (; i < count; ++i) {
            const auto p = read<Address>(s, data + Address(i) * 56 + 8, 0x390401);
            if (!p || (read<ReU32>(s, p + 0x14, 0x39040a) & 0x1000000u))
                continue;
            auto j = i;
            for (; j < count; ++j) {
                const auto q = read<Address>(s, data + Address(j) * 56 + 8, 0x39041f);
                if (q && child_of(s, w, q))
                    break;
            }
            if (j == count)
                break;
        }
    if (i < count) {
        if (!api.close_popup_39031c)
            { __builtin_trap(); }
        api.close_popup_39031c(i, false);
    }
}
} // namespace
void nav_window(MenuControlsState &s, Address w) {
    set_nav_window(s, w);
}
void bring_window_front(MenuControlsState &s, Address w, bool focus) {
    bring_front(s, w, focus);
}
bool window_hovered(MenuControlsState &s, ReU32 flags) {
    const auto c = context(s);
    const auto hovered = read<Address>(s, c + 0x3f10, 0x394804);
    if (!hovered)
        return false;
    if (flags & 0xb)
        __builtin_trap();
    if (!(flags & 4) && hovered != read<Address>(s, c + 0x3f08, 0x394815))
        return false;
    if (!content_hoverable(s, hovered, flags))
        return false;
    if (flags & 0x80)
        return true;
    const auto active = read<ReU32>(s, c + 0x3f68, 0x394868);
    return !active || read<ReU8>(s, c + 0x3f75, 0x394872) ||
           active == read<ReU32>(s, hovered + 0x7c, 0x39487b);
}

void set_active(MenuControlsState &s, const MenuControlsApi &api, ReU32 value, Address w) {
    const auto c = context(s);
    auto old = read<ReU32>(s, c + 0x3f68, 0x39b0e7);
    if (old) {
        const auto moving = read<Address>(s, c + 0x3f20, 0x39b0f1);
        if (moving && read<ReU32>(s, moving + 0x7c, 0x39b0fd) == old)
            write(s, c + 0x3f20, Address(0), 0x39b102);
        if (read<ReU32>(s, c + 0x4c20, 0x39b10d) == old) {
            if (!api.deactivate_text_3c04d0)
                { __builtin_trap(); }
            api.deactivate_text_3c04d0(old);
        }
    }
    old = read<ReU32>(s, c + 0x3f68, 0x39b11a);
    write(s, c + 0x3f74, ReU8(old != value), 0x39b123);
    if (old != value) {
        write(s, c + 0x3f70, 0.0f, 0x39b12b);
        write(s, c + 0x3f77, ReU16(0), 0x39b135);
        write(s, c + 0x3f94, ReI32(-1), 0x39b13e);
        if (value) {
            write(s, c + 0x3fa8, value, 0x39b14c);
            write(s, c + 0x3fac, 0.0f, 0x39b152);
        }
    }
    write(s, c + 0x3f68, value, 0x39b15c);
    write(s, c + 0x3f75, ReU16(0), 0x39b162);
    write(s, c + 0x3f88, w, 0x39b16b);
    write(s, c + 0x3f79, ReU8(0), 0x39b172);
    if (value) {
        write(s, c + 0x3f6c, value, 0x39b17d);
        const auto source = read<ReU32>(s, c + 0x48f8, 0x39b183) == value ||
                                    read<ReU32>(s, c + 0x4908, 0x39b190) == value
                                ? read<ReI32>(s, c + 0x491c, 0x39b198)
                                : 1;
        write(s, c + 0x3f90, source, 0x39b19e);
    }
    write(s, c + 0x4778, 0u, 0x39b1a9);
    write(s, c + 0x477c, ReU8(0), 0x39b1b3);
    write(s, c + 0x4780, 0u, 0x39b1ba);
}
void set_focus(MenuControlsState &s, const MenuControlsApi &, ReU32 value, Address w) {
    const auto c = context(s);
    set_nav_window(s, w);
    const auto layer = read<ReI32>(s, w + 0x158, 0x39b4ae);
    write(s, c + 0x48f0, value, 0x39b4be);
    write(s, c + 0x4920, layer, 0x39b4c4);
    write(s, c + 0x48f4, read<ReU32>(s, c + 0x4784, 0x39b4b5), 0x39b4cb);
    write(s, w + 0x3a0 + Address(ReI64(layer)) * 4, value, 0x39b4d1);
    if (read<ReU32>(s, c + 0x47a4, 0x39b4d9) == value) {
        auto b = read<ClipRect>(s, c + 0x47c0, 0x39b4e1);
        const auto offset = read<Vec2>(s, w + 0x110, 0x39e1e6);
        b.x -= offset.x;
        b.z -= offset.x;
        b.y -= offset.y;
        b.w -= offset.y;
        write(s, w + 0x3a8 + Address(ReI64(layer)) * 16, b, 0x39b4fb);
    }
    const auto source = read<ReU32>(s, c + 0x3f90, 0x39b504);
    write(s, c + (source - 2 <= 1 ? 0x4927 : 0x4926), ReU8(1), 0x39b512);
}
void focus_window(MenuControlsState &s, const MenuControlsApi &api, Address w,
                  ReU32 flags) {
    const auto c = context(s);
    if ((flags & 2) && read<Address>(s, c + 0x48e8, 0x391f16) != w) {
        if (!api.top_modal_391928)
            { __builtin_trap(); }
        const auto modal = api.top_modal_391928();
        if (modal) {
            if (w && read<Address>(s, w + 0x378, 0x391f32) == w &&
                !(read<ReU32>(s, w + 0x14, 0x391f3f) & 0x2000)) {
                if (!api.modal_order_38f020)
                    { __builtin_trap(); }
                api.modal_order_38f020(w, modal);
            }
            return;
        }
    }
    if ((flags & 1) && w) {
        const auto last = read<Address>(s, w + 0x398, 0x395cf8);
        if (last && read<ReU8>(s, last + 0xb7, 0x395d04))
            w = last;
    }
    if (read<Address>(s, c + 0x48e8, 0x391f72) != w) {
        set_nav_window(s, w);
        if (w && read<ReU8>(s, c + 0x4927, 0x391f88))
            write(s, c + 0x4925, ReU8(1), 0x391f91);
        write(s, c + 0x48f0, w ? read<ReU32>(s, w + 0x3a0, 0x391f98) : 0u, 0x391fa2);
        write(s, c + 0x4920, 0u, 0x391fa8);
        write(s, c + 0x48f4, w ? read<ReU32>(s, w + 0x3c8, 0x391fb7) : 0u, 0x391fc3);
        write(s, c + 0x4924, ReU8(0), 0x391fcc);
        close_popups(s, api, w);
    }
    const auto root = w ? read<Address>(s, w + 0x378, 0x391fdd) : 0;
    const auto active = read<ReU32>(s, c + 0x3f68, 0x391fed);
    if (active) {
        const auto aw = read<Address>(s, c + 0x3f88, 0x391ff6);
        if (aw && read<Address>(s, aw + 0x378, 0x392002) != root &&
            !read<ReU8>(s, c + 0x3f76, 0x39200b))
            set_active(s, api, 0, 0);
    }
    if (w) {
        bring_front(s, root, true);
        if (!((read<ReU32>(s, root + 0x14, 0x392026) |
               read<ReU32>(s, w + 0x14, 0x392029)) &
              0x2000))
            bring_front(s, root, false);
    }
}
bool hoverable(MenuControlsState &s, const MenuControlsApi &api, ClipRect bounds,
               ReU32 value) {
    const auto c = context(s);
    const auto h = read<ReU32>(s, c + 0x3f54, 0x394a2d);
    if (h && h != value && !read<ReU8>(s, c + 0x3f5c, 0x394a3b))
        return false;
    const auto w = read<Address>(s, c + 0x3f08, 0x394a48);
    if (read<Address>(s, c + 0x3f10, 0x394a4f) != w)
        return false;
    const auto active = read<ReU32>(s, c + 0x3f68, 0x394a58);
    if (active && active != value && !read<ReU8>(s, c + 0x3f75, 0x394a66))
        return false;
    if (!mouse_hover(s, bounds, true))
        return false;
    const auto flags = read<ReU32>(
        s, c + (read<ReU32>(s, c + 0x47a4, 0x394a7f) == value ? 0x47a8 : 0x4788), 0x394a90);
    if (!(flags & 0x100) && !content_hoverable(s, w, 0)) {
        write(s, c + 0x3f5d, ReU8(1), 0x394ac5);
        return false;
    }
    if (value)
        set_hovered(s, value);
    if (flags & 4) {
        if (read<ReU32>(s, c + 0x3f68, 0x394ab8) == value)
            set_active(s, api, 0, 0);
        write(s, c + 0x3f5d, ReU8(1), 0x394ac5);
        return false;
    }
    if (value) {
        if (read<ReU8>(s, c + 0x5d03, 0x394adf) &&
            read<ReU32>(s, c + 0x3f58, 0x394ae8) == value) {
            if (!api.rectangle)
                { __builtin_trap(); }
            api.rectangle({read<Address>(s, w + 0x298, 0x3925a4),
                           {bounds.x, bounds.y},
                           {bounds.z, bounds.w},
                           0xff00ffff,
                           0,
                           1,
                           0,
                           false});
        }
        if (read<ReU32>(s, c + 0x5d08, 0x394b29) == value)
            { __builtin_trap(); }
    }
    return !read<ReU8>(s, c + 0x4927, 0x394b32);
}
Address key_data(MenuControlsState &s, ReI32 key) {
    const auto c = context(s);
    if (ReU32(key) & 0xf800u) {
        switch (key) {
        case 0x1000:
            key = 0x288;
            break;
        case 0x2000:
            key = 0x289;
            break;
        case 0x4000:
            key = 0x28a;
            break;
        case 0x8000:
            key = 0x28b;
            break;
        case 0x800:
            key = read<ReU8>(s, c + 0x79, 0x390850) ? 0x28b : 0x288;
            break;
        default:
            break;
        }
    }
    if (ReU32(key) < 0x200u) {
        const auto mapped =
            read<ReI32>(s, c + 0x100 + Address(ReI64(key)) * 4, 0x3926e4);
        if (mapped != -1)
            key = mapped;
    }
    return c + 0xe2c + Address(ReI64(key)) * 16;
}
bool item_hovered(MenuControlsState &s, ReU32 flags) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x3940d0);
    const auto last = read<ReU32>(s, c + 0x47a4, 0x394153);
    const auto itemflags = read<ReU32>(s, c + 0x47a8, 0x3940ec);
    if (read<ReU8>(s, c + 0x4927, 0x3940c9) &&
        !(read<ReU8>(s, c + 0x4926, 0x3940d9) || (flags & 0x400))) {
        if ((itemflags & 4) && !(flags & 0x200))
            return false;
        return last && read<ReU32>(s, c + 0x48f0, 0x394093) == last;
    }
    const auto status = read<ReU32>(s, c + 0x47ac, 0x39411f);
    if (!(status & 1))
        return false;
    if (read<Address>(s, c + 0x3f10, 0x39412a) != w && !((status & 0x80) || (flags & 0x100)))
        return false;
    const auto active = read<ReU32>(s, c + 0x3f68, 0x394149);
    if (!(flags & 0x80) && active && active != last &&
        !read<ReU8>(s, c + 0x3f75, 0x39415b) &&
        active != read<ReU32>(s, w + 0x7c, 0x394164))
        return false;
    if (!content_hoverable(s, w, flags) && !(itemflags & 0x100))
        return false;
    if ((itemflags & 4) && !(flags & 0x200))
        return false;
    if (last == read<ReU32>(s, w + 0x7c, 0x394196) &&
        read<ReU8>(s, w + 0xb8, 0x3941a1))
        return false;
    const auto delay = flags & 0x800    ? read<float>(s, c + 0x44, 0x3941b4)
                       : flags & 0x1000 ? read<float>(s, c + 0x48, 0x3941c1)
                                        : 0.0f;
    if (delay > 0) {
        const auto delayed_id =
            last ? last : anonymous_id(s, w, read<ClipRect>(s, c + 0x47b0, 0x392682));
        if ((flags & 0x2000) && read<ReU32>(s, c + 0x4c04, 0x3941f3) != delayed_id)
            write(s, c + 0x4c08, 0.0f, 0x3941fb);
        write(s, c + 0x4c00, delayed_id, 0x394210);
        return read<float>(s, c + 0x4c08, 0x394205) >= delay;
    }
    return true;
}
} // namespace rust_internal_re::menu_detail
