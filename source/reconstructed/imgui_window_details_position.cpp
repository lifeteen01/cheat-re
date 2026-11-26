#include "imgui_window_details_internal.hpp"
namespace rust_internal_re::window_details {
// [C]3929e8: main viewport rectangle, independently inset only on sufficiently large axes.
namespace {
ClipRect allowed_extent(ImguiWindowDetailsState &s) {
    const auto c = context(s);
    const auto vp = window_detail::viewport(windows(s));
    const auto p = read<Vec2>(s, vp + 4, 0x392828);
    const auto size = read<Vec2>(s, vp + 0xc, 0x392828);
    const auto pad = read<Vec2>(s, c + 0x3894, 0x392a16);
    const Vec2 inset{size.x > pad.x + pad.x ? pad.x : 0, size.y > pad.y + pad.y ? pad.y : 0};
    return {p.x + inset.x, p.y + inset.y, (p.x + size.x) - inset.x, (p.y + size.y) - inset.y};
}
Vec2 preferred_position(ImguiWindowDetailsState &s) {
    const auto c = context(s);
    if (!read<ReU8>(s, c + 0x4926, 0x3952ce) &&
        read<ReU8>(s, c + 0x4927, 0x3952db)) {
        const auto nav = read<Address>(s, c + 0x48e8, 0x3952e8);
        if (nav) {
            const auto layer = read<ReI32>(s, c + 0x4920, 0x3952f8);
            const auto local =
                read<ClipRect>(s, nav + 0x3a8 + Address(ReI64(layer)) * 16, 0x39e234);
            const auto start = read<Vec2>(s, nav + 0x110, 0x39e23a);
            ClipRect bounds{local.x + start.x, local.y + start.y, local.z + start.x,
                            local.w + start.y};
            if (read<ReI32>(s, nav + 0x260, 0x39531f) !=
                read<ReI32>(s, c + 0x3e60, 0x395319)) {
                const auto target = read<Vec2>(s, nav + 0x94, 0x395327);
                const auto maximum = read<float>(s, 0x28db54, 0x39532f);
                if (target.x != maximum || target.y != maximum) {
                    const auto scroll = window_detail::scroll_target(windows(s), nav);
                    const auto current_scroll = read<Vec2>(s, nav + 0x84, 0x395359);
                    const Vec2 delta{current_scroll.x - scroll.x, current_scroll.y - scroll.y};
                    bounds.x += delta.x;
                    bounds.y += delta.y;
                    bounds.z += delta.x;
                    bounds.w += delta.y;
                }
            }
            const auto y = bounds.w - menu_detail::minss(read<float>(s, c + 0x3810, 0x395385),
                                                         bounds.w - bounds.y);
            const auto x = menu_detail::minss(read<float>(s, c + 0x380c, 0x3953a7) *
                                                  read<float>(s, 0x293178, 0x3953af),
                                              bounds.z - bounds.x) +
                           bounds.x;
            const auto vp = window_detail::viewport(windows(s));
            const auto p = read<Vec2>(s, vp + 4, 0x3953d9);
            const auto size = read<Vec2>(s, vp + 0xc, 0x3953e0);
            return {trunc(clamp(x, p.x, p.x + size.x)), trunc(clamp(y, p.y, p.y + size.y))};
        }
    }
    const auto mouse = read<Vec2>(s, c + 0xe08, 0x394550);
    const auto invalid = read<float>(s, 0x2aa15c, 0x394557);
    const bool valid = mouse.x >= invalid && mouse.y >= invalid;
    const auto p = valid ? mouse : read<Vec2>(s, c + 0x4c10, 0x39542b);
    return {p.x + read<float>(s, 0x28d254, 0x395437), p.y};
}
} // namespace
// [C]3915b4..391925 including basic blocks after the firstRET391799.
Vec2 popup_position(ImguiWindowDetailsState &s, Vec2 reference, Vec2 size, ReI32 &direction,
                    ClipRect outer, ClipRect avoid, ReI32 mode,
                    re::ReOptional<Address> direction_address) {
    const auto set_direction = [&](ReI32 value) {
        direction = value;
        if (direction_address)
            write(s, *direction_address, value, 0x3917b5);
    };
    const Vec2 base{clamp(reference.x, outer.x, outer.z - size.x),
                    clamp(reference.y, outer.y, outer.w - size.y)};
    if (mode == 1) {
        const auto order = read<re::ReArray<ReI32, 4>>(s, 0x2aa170, 0x39161b);
        for (int i = direction == -1 ? 0 : -1; i < 4; ++i) {
            const auto d = i == -1 ? direction : order[ReUSize(i)];
            if (i != -1 && d == direction)
                continue;
            Vec2 candidate{}; // [C]39164c ->2d4870 clears both components on every attempt.
            if (d == 3)
                candidate = {avoid.x, avoid.w};
            else if (d == 1)
                candidate = {avoid.x, avoid.y - size.y};
            else if (d == 2)
                candidate = {avoid.z - size.x, avoid.y - size.y};
            else if (d == 0)
                candidate = {avoid.z - size.x, avoid.w};
            if (contains(outer,
                         {candidate.x, candidate.y, candidate.x + size.x, candidate.y + size.y})) {
                set_direction(d);
                return candidate;
            }
        }
    } else if (mode == 0 || mode == 2) {
        const auto order = read<re::ReArray<ReI32, 4>>(s, 0x2aa160, 0x3917cc);
        for (int i = direction == -1 ? 0 : -1; i < 4; ++i) {
            const auto d = i == -1 ? direction : order[ReUSize(i)];
            if (i != -1 && d == direction)
                continue;
            const auto available_x =
                d == 0 ? avoid.x - outer.x : outer.z - (d == 1 ? avoid.z : outer.x);
            const auto available_y =
                d == 2 ? avoid.y - outer.y : outer.w - (d == 3 ? avoid.w : outer.y);
            if (size.x > available_x && ReU32(d) <= 1)
                continue;
            if (size.y > available_y && ReU32(d) - 2u <= 1)
                continue;
            const auto x = d == 0 ? avoid.x - size.x : d == 1 ? avoid.z : base.x;
            const auto y = d == 2 ? avoid.y - size.y : d == 3 ? avoid.w : base.y;
            set_direction(d);
            return {menu_detail::maxss(x, outer.x), menu_detail::maxss(y, outer.y)};
        }
    }
    set_direction(-1);
    if (mode == 2) {
        const auto amount = read<float>(s, 0x293134, 0x39185f);
        return {reference.x + amount, reference.y + amount};
    }
    return {
        menu_detail::maxss(menu_detail::minss(size.x + reference.x, outer.z) - size.x, outer.x),
        menu_detail::maxss(menu_detail::minss(size.y + reference.y, outer.w) - size.y, outer.y)};
}
} // namespace rust_internal_re::window_details
namespace rust_internal_re {
Vec2 imgui_window_details_auto_position_39138c(ImguiWindowDetailsState &s, Address w) {
    using namespace window_details;
    const auto c = context(s);
    const auto outer = allowed_extent(s);
    const auto flags = read<ReU32>(s, w + 0x14, 0x3913bc);
    Vec2 reference;
    ClipRect avoid;
    int mode = 0;
    if (flags & 0x10000000) {
        const auto stack = c + 0x3ed8;
        const auto n = read<ReI32>(s, stack, 0x3913d0);
        const auto parent = read<Address>(
            s, window_detail::element(windows(s), stack, n - 2, 0x58, 0x3913d5), 0x3913e6);
        const auto spacing = read<float>(s, c + 0x3824, 0x3913da);
        const auto maximum = read<float>(s, 0x28db54, 0x391405);
        const auto negative = read<float>(s, 0x2a9444, 0x391416);
        if (read<ReU8>(s, parent + 0x163, 0x3913ee))
            avoid = {negative, read<float>(s, parent + 0x23c, 0x39140d), maximum,
                     read<float>(s, parent + 0x244, 0x3913fc)};
        else {
            const auto p = read<Vec2>(s, parent + 0x20, 0x391420);
            const auto size = read<Vec2>(s, parent + 0x28, 0x391431);
            avoid = {p.x + spacing, negative,
                     ((p.x + size.x) - spacing) - read<float>(s, parent + 0xac, 0x391447), maximum};
        }
        reference = read<Vec2>(s, w + 0x20, 0x39145b);
    } else if (flags & 0x4000000) {
        reference = read<Vec2>(s, w + 0x20, 0x3914a2);
        avoid = {reference.x, reference.y, reference.x, reference.y};
    } else if (flags & 0x2000000) {
        auto scale = read<float>(s, c + 0x389c, 0x3914c7);
        reference = preferred_position(s);
        const auto narrow = read<float>(s, 0x28e1e0, 0x3914fe);
        const auto wide = read<float>(s, 0x2931bc, 0x391512);
        if (!read<ReU8>(s, c + 0x4926, 0x3914e1) &&
            read<ReU8>(s, c + 0x4927, 0x3914ea) &&
            !(read<ReU8>(s, c + 8, 0x3914f3) & 4))
            avoid = {reference.x - wide, reference.y - narrow, reference.x + wide,
                     reference.y + narrow};
        else {
            scale *= read<float>(s, 0x2931d0, 0x391531);
            avoid = {reference.x - wide, reference.y - narrow, reference.x + scale,
                     reference.y + scale};
        }
        mode = 2;
    } else
        return read<Vec2>(s, w + 0x20, 0x39158d);
    auto direction = read<ReI32>(s, w + 0xd4, 0x391478);
    const auto result = popup_position(s, reference, read<Vec2>(s, w + 0x28, 0x391486), direction,
                                       outer, avoid, mode, w + 0xd4);
    return result;
}
// [C] 0x3952b0..395464: preferred cursor/nav position for popup auto-placement.
Vec2 imgui_window_details_preferred_position_3952b0(ImguiWindowDetailsState &s, Address out) {
    using namespace window_details;
    return preferred_position(s);
}
} // namespace rust_internal_re
