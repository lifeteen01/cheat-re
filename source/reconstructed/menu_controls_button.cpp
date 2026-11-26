#include "menu_controls_internal.hpp"
namespace rust_internal_re {
// [C/I]3bc7e0..3bcd9b, including branches after its first RET.
MenuButtonResult menu_controls_button_behavior_3bc7e0(MenuControlsState &s,
                                                      const MenuControlsApi &api, ClipRect box,
                                                      ReU32 value, ReU32 flags) {
    using namespace menu_detail;
    const auto c = context(s), w = window(s),
               original_hover = read<Address>(s, c + 0x3f10, 0x3bc821);
    if (!(flags & 7))
        flags |= 1;
    if (!(flags & 0x3f0))
        flags |= 0x20;
    const bool flatten = (flags & 0x800) && original_hover &&
                         read<Address>(s, original_hover + 0x378, 0x3bc85a) == w;
    if (flatten)
        write(s, c + 0x3f10, w, 0x3bc866);
    MenuButtonResult result;
    result.hovered = hoverable(s, api, box, value);
    const bool drag = read<ReU8>(s, c + 0x4a8c, 0x3bc887);
    if (result.hovered && drag && read<ReU32>(s, c + 0x4aac, 0x3bc890) == value &&
        !(read<ReU32>(s, c + 0x4a90, 0x3bc899) & 2))
        result.hovered = false;
    if (drag && (flags & 0x200) && !(read<ReU32>(s, c + 0x4a90, 0x3bc8b6) & 4) &&
        item_hovered(s, 0x80)) {
        result.hovered = true;
        set_hovered(s, value);
        const auto time = read<float>(s, c + 0x3f60, 0x3bc8d8);
        if (0.7f >= time - read<float>(s, c + 0x18, 0x3bc8eb) && time >= 0.7f) {
            result.pressed = true;
            write(s, c + 0x4b08, value, 0x3bc8fc);
            focus_window(s, api, w, 0);
        }
    }
    if (flatten) {
        write(s, c + 0x3f10, original_hover, 0x3bc913);
    }
    if (result.hovered && (flags & 0x1000)) {
        const auto previous = read<ReU32>(s, c + 0x3f58, 0x3bc925);
        if (previous && previous != value)
            result.hovered = false;
    }
    const auto owner = (flags & 0x200000) ? 0u : value;
    if (result.hovered) {
        int clicked = -1, released = -1;
        for (int b = 0; b < 3; ++b)
            if (flags & (1u << b)) {
                if (mouse_clicked(s, b, owner, false) && clicked == -1)
                    clicked = b;
                if (mouse_released(s, b, owner) && released == -1)
                    released = b;
            }
        const bool allow_modifiers =
            !(flags & 0x10000) || (!read<ReU8>(s, c + 0xe24, 0x3bc9c0) &&
                                   !read<ReU8>(s, c + 0xe25, 0x3bc9cd) &&
                                   !read<ReU8>(s, c + 0xe26, 0x3bc9da));
        if (allow_modifiers) {
            if (clicked != -1 && read<ReU32>(s, c + 0x3f68, 0x3bc9f0) != value) {
                if (!(flags & 0x100000))
                    set_key_owner(s, clicked + 0x281, value, 0);
                if (flags & 0x60) {
                    set_active(s, api, value, w);
                    write(s, c + 0x3f94, clicked, 0x3bca28);
                    if (!(flags & 0x40000))
                        set_focus(s, api, value, w);
                    focus_window(s, api, w, 0);
                }
                if ((flags & 0x10) ||
                    ((flags & 0x100) &&
                     read<ReU16>(s, c + 0x3752 + Address(clicked) * 2, 0x3bca58) == 2)) {
                    result.pressed = true;
                    if (flags & 0x20000)
                        set_active(s, api, 0, 0);
                    else
                        set_active(s, api, value, w);
                    if (!(flags & 0x40000))
                        set_focus(s, api, value, w);
                    write(s, c + 0x3f94, clicked, 0x3bca91);
                    focus_window(s, api, w, 0);
                }
            }
            if ((flags & 0x80) && released != -1) {
                if (!(flags & 0x400) ||
                    !(read<float>(s, c + 0x378c + Address(released) * 4, 0x3bcab4) >=
                      read<float>(s, c + 0x3c, 0x3bcabd)))
                    result.pressed = true;
                if (!(flags & 0x40000))
                    set_focus(s, api, value, w);
                set_active(s, api, 0, 0);
            }
            if (read<ReU32>(s, c + 0x3f68, 0x3bcadc) == value && (flags & 0x400)) {
                const auto b = read<ReI32>(s, c + 0x3f94, 0x3bcaeb);
                if (read<float>(s, c + 0x3778 + Address(ReI64(b)) * 4, 0x3bcaf2) > 0 &&
                    mouse_clicked(s, b, owner, true))
                    result.pressed = true;
            }
        }
        if (result.pressed)
            write(s, c + 0x4926, ReU8(1), 0x3bcb24);
    }
    if (read<ReU32>(s, c + 0x48f0, 0x3bcb2b) == value &&
        !read<ReU8>(s, c + 0x4926, 0x3bcb34) &&
        read<ReU8>(s, c + 0x4927, 0x3bcb3d)) {
        const auto active = read<ReU32>(s, c + 0x3f68, 0x3bcb46);
        if ((!active || active == value || active == read<ReU32>(s, w + 0x7c, 0x3bcb55)) &&
            !(flags & 0x80000))
            result.hovered = true;
    }
    if (read<ReU32>(s, c + 0x48fc, 0x3bcb6c) == value) {
        const auto down = read<ReU32>(s, c + 0x48f8, 0x3bcb80);
        bool activated = read<ReU32>(s, c + 0x4900, 0x3bcb79) == value;
        if (!activated && (flags & 0x400)) {
            const auto a = key_data(s, 0x20c), b = key_data(s, 0x20d), d = key_data(s, 0x26e);
            auto duration = maxss(read<float>(s, a + 4, 0x3bcbc1), read<float>(s, b + 4, 0x3bcbbc));
            duration = maxss(duration, read<float>(s, d + 4, 0x3bcbcb));
            activated =
                menu_controls_typematic_38f85c(duration - read<float>(s, c + 0x18, 0x3bcbdd),
                                               duration, read<float>(s, c + 0x3c, 0x3bcbe2),
                                               read<float>(s, c + 0x40, 0x3bcbd5)) > 0;
        }
        if (down == value || activated) {
            result.pressed = true;
            set_active(s, api, value, w);
            write(s, c + 0x3f90, read<ReU32>(s, c + 0x491c, 0x3bcc1a), 0x3bcc20);
            if (!(flags & 0x40000))
                set_focus(s, api, value, w);
        }
    }
    if (read<ReU32>(s, c + 0x3f68, 0x3bcc41) == value) {
        const auto source = read<ReU32>(s, c + 0x3f90, 0x3bcc4e);
        if (source == 1) {
            if (read<ReU8>(s, c + 0x3f74, 0x3bcc5c)) {
                const auto pos = read<Vec2>(s, c + 0xe08, 0x3bcc6d);
                write(s, c + 0x3f7c, Vec2{pos.x - box.x, pos.y - box.y}, 0x3bcc82);
            }
            const auto b = read<ReI32>(s, c + 0x3f94, 0x3bcc8a);
            if (b != -1 && mouse_down(s, b, owner))
                result.held = true;
            else {
                if (b != -1 && ((result.hovered && (flags & 0x20)) || (flags & 0x40)) &&
                    !read<ReU8>(s, c + 0x4a8c, 0x3bccc5)) {
                    const bool doubled =
                        (flags & 0x100) &&
                        read<ReU8>(s, c + 0x3766 + Address(b), 0x3bccd4) &&
                        read<ReU16>(s, c + 0x375c + Address(b) * 2, 0x3bccde) == 2;
                    const bool repeated =
                        (flags & 0x400) && read<float>(s, c + 0x378c + Address(b) * 4, 0x3bccf2) >=
                                               read<float>(s, c + 0x3c, 0x3bccfb);
                    if (!doubled && !repeated && key_owner(s, b + 0x281, owner))
                        result.pressed = true;
                }
                set_active(s, api, 0, 0);
            }
            if (!(flags & 0x40000))
                write(s, c + 0x4926, ReU8(1), 0x3bcd3d);
        } else if (source - 2 <= 1 && read<ReU32>(s, c + 0x48fc, 0x3bcd4d) != value)
            set_active(s, api, 0, 0);
        if (result.pressed)
            write(s, c + 0x3f77, ReU8(1), 0x3bcd60);
    }
    return result;
}
} // namespace rust_internal_re
