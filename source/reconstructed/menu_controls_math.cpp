#include "menu_controls_internal.hpp"
namespace rust_internal_re {
ReU32 menu_controls_hash_39334c(re::ReStringView text, ReU32 seed,
                                        re::ReOptional<ReUSize> count) {
    const auto supplied_count = count.value_or(0);
    ReU32 hash = ~seed;
    const auto nul = text.find('\0');
    const auto end =
        supplied_count ? supplied_count : (nul == re::ReStringView::npos ? text.size() : nul);
    if (end > text.size())
        { __builtin_trap(); }
    for (ReUSize i = 0; i < end; ++i) {
        const auto c = ReU8(text[i]);
        if (c == '#' && i + 2 < end && text[i + 1] == '#' && text[i + 2] == '#')
            hash = ~seed;
        ReU32 table = (hash ^ c) & 255u;
        for (int bit = 0; bit < 8; ++bit)
            table = (table >> 1) ^ ((table & 1) ? 0xedb88320u : 0u);
        hash = (hash >> 8) ^ table;
    }
    return ~hash;
}
ReI32 menu_controls_typematic_38f85c(float previous, float current, float delay,
                                            float rate) {
    using menu_detail::cvtt;
    if (current == 0)
        return 1;
    if (previous >= current)
        return 0;
    if (0 >= rate)
        return delay > previous && current >= delay ? 1 : 0;
    const auto first = delay > previous ? -1 : cvtt((previous - delay) / rate),
               last = delay > current ? -1 : cvtt((current - delay) / rate);
    return re::re_bit_cast<ReI32>(ReU32(last) - ReU32(first));
}
re::ReVector<MenuControlRequest> &menu_controls_favorites(MenuControlsState &s) {
    return s.favorites_27f988;
}
} // namespace rust_internal_re
namespace rust_internal_re::menu_detail {
ReU32 anonymous_id(MenuControlsState &s, Address window, ClipRect rectangle) {
    const auto count = read<ReI32>(s, window + 0xf0, 0x39e304);
    const auto index = re::re_bit_cast<ReI32>(ReU32(count) - 1);
    const auto data = read<Address>(s, window + 0xf8, 0x39e30b);
    const auto seed = read<ReU32>(s, data + Address(ReI64(index)) * 4, 0x392680);
    const auto y = read<float>(s, window + 0x114, 0x39e1e6);
    const auto x = read<float>(s, window + 0x110, 0x39e1f1);
    rectangle = {rectangle.x - x, rectangle.y - y, rectangle.z - x, rectangle.w - y};
    const auto bytes = re::re_bit_cast<re::ReArray<ReU8, 16>>(rectangle);
    auto hash = ~seed;
    for (const auto byte : bytes) {
        auto table = (hash ^ byte) & 255u;
        for (int i = 0; i < 8; ++i)
            table = (table >> 1) ^ ((table & 1) ? 0xedb88320u : 0u);
        hash = (hash >> 8) ^ table;
    }
    return ~hash; // [C] Raw binary CRC393314 has no string ### reset.
}
ReU32 id(MenuControlsState &s, re::ReStringView label) {
    const auto w = window(s);
    const auto count = read<ReI32>(s, w + 0xf0, 0x39262b);
    const auto data = read<Address>(s, w + 0xf8, 0x39262b);
    const auto index = re::re_bit_cast<ReI32>(ReU32(count) - 1);
    return menu_controls_hash_39334c(
        label, read<ReU32>(s, data + Address(ReI64(index)) * 4, 0x392639));
}
bool mouse_hover(MenuControlsState &s, ClipRect bounds, bool clip) {
    const auto c = context(s);
    if (clip) {
        const auto w = read<Address>(s, c + 0x3f08, 0x3944d9);
        const auto b = read<ClipRect>(s, w + 0x238, 0x3901b8);
        bounds.x = maxss(bounds.x, b.x);
        bounds.y = maxss(bounds.y, b.y);
        bounds.z = minss(bounds.z, b.z);
        bounds.w = minss(bounds.w, b.w);
    }
    const auto pad = read<Vec2>(s, c + 0x3834, 0x3944f1);
    bounds.x -= pad.x;
    bounds.y -= pad.y;
    bounds.z += pad.x;
    bounds.w += pad.y;
    return contains(bounds, read<Vec2>(s, c + 0xe08, 0x39452f));
}
void set_hovered(MenuControlsState &s, ReU32 value) {
    const auto c = context(s);
    write(s, c + 0x3f54, value, 0x39b52c);
    write(s, c + 0x3f5c, ReU8(0), 0x39b52c);
    if (value && read<ReU32>(s, c + 0x3f58, 0x39b52c) != value) {
        write(s, c + 0x3f60, ReU64(0), 0x39b54d);
    }
}
namespace {
Address owner_data(MenuControlsState &s, ReI32 key) {
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
            key = read<ReU8>(s, context(s) + 0x79, 0x390850) ? 0x28b : 0x288;
            break;
        default:
            break;
        }
    }
    const auto delta = re::re_bit_cast<ReI32>(ReU32(key) - 0x200u);
    return context(s) + Address(ReI64(delta)) * 12 + 0x3fb0;
}
} // namespace
bool key_owner(MenuControlsState &s, ReI32 key, ReU32 owner) {
    if (ReU32(key) - 0x200u > 0x8bu && key != 0x1000 && key != 0x2000 && key != 0x4000 &&
        key != 0x8000 && key != 0x800)
        return true; // [C]3945fc named/modifier key predicate.
    const auto c = context(s);
    if (read<ReU8>(s, c + 0x477c, 0x39bf2a) &&
        owner != read<ReU32>(s, c + 0x3f68, 0x39bf33) && owner &&
        ReU32(key) - 0x200u <= 0x68)
        return false;
    const auto data = owner_data(s, key);
    if (!owner)
        return !read<ReU8>(s, data + 8, 0x39bf55);
    const auto current = read<ReU32>(s, data, 0x39bf5d);
    return current == owner ||
           (!read<ReU8>(s, data + 8, 0x39bf61) && current == 0xffffffffu);
}
void set_key_owner(MenuControlsState &s, ReI32 key, ReU32 owner,
                   ReU32 flags) {
    const auto data = owner_data(s, key);
    write(s, data + 4, owner, 0x39b5ac);
    write(s, data + 9, ReU8((flags & 0x80) != 0), 0x39b5af);
    write(s, data, owner, 0x39b5b7);
    write(s, data + 8, ReU8((flags & 0xc0) != 0), 0x39b5be);
}
bool mouse_down(MenuControlsState &s, ReI32 button, ReU32 owner) {
    return read<ReU8>(s, context(s) + 0xe10 + Address(ReI64(button)), 0x39443a) &&
           key_owner(s, button + 0x281, owner);
}
bool mouse_released(MenuControlsState &s, ReI32 button, ReU32 owner) {
    return read<ReU8>(s, context(s) + 0x3766 + Address(ReI64(button)), 0x3945d2) &&
           key_owner(s, button + 0x281, owner);
}
bool mouse_clicked(MenuControlsState &s, ReI32 button, ReU32 owner, bool repeat) {
    const auto c = context(s), index = Address(ReI64(button));
    if (!read<ReU8>(s, c + 0xe10 + index, 0x394376))
        return false;
    const auto duration = read<float>(s, c + 0x3778 + index * 4, 0x394380);
    if (0 > duration)
        return false;
    if (duration != 0) {
        if (!repeat)
            return false;
        const auto delay = read<float>(s, c + 0x3c, 0x39439e);
        if (!(duration > delay))
            return false;
        if (menu_controls_typematic_38f85c(duration - read<float>(s, c + 0x18, 0x3943ac), duration,
                                           delay, read<float>(s, c + 0x40, 0x3943a4)) <= 0)
            return false;
    }
    return key_owner(s, button + 0x281, owner);
}
} // namespace rust_internal_re::menu_detail
