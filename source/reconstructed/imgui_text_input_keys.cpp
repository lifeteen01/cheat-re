#include "imgui_text_input_internal.hpp"
namespace rust_internal_re::text_input_detail {
namespace {
ReU32 chord_resolve(MenuControlsState &s, ReU32 chord) {
    if (chord & 0x800u) {
        chord &= ~0x800u;
        chord |= read<ReU8>(s, context(s) + 0x79, 0x3907f7) ? 0x8000u : 0x1000u;
    }
    return chord;
}
ReU32 modifier_key(ReU32 modifiers) {
    switch (modifiers) {
    case 0x1000:
        return 0x288;
    case 0x2000:
        return 0x289;
    case 0x4000:
        return 0x28a;
    case 0x8000:
        return 0x28b;
    default:
        return modifiers;
    }
}
ReU32 score(MenuControlsState &s, Address w, ReU32 owner, ReU32 flags) {
    if (flags & 0x100u) {
        const auto c = context(s);
        if (owner && owner == read<ReU32>(s, c + 0x3f68, 0x38f6d1))
            return 1;
        auto focused = read<Address>(s, c + 0x48e8, 0x38f6df);
        if (!focused ||
            read<Address>(s, focused + 0x378, 0x38f6f2) != read<Address>(s, w + 0x378, 0x38f6eb))
            return 255;
        ReU32 value = 3;
        for (ReUSize steps = 0; focused; ++steps) {
            if (steps >= 1000000)
                __builtin_trap();
            if (focused == w)
                return value;
            if (read<Address>(s, focused + 0x378, 0x38f705) == focused)
                break;
            focused = read<Address>(s, focused + 0x368, 0x38f70e);
            ++value;
        }
        return 255;
    }
    if (flags & 0x400u)
        return 2;
    return flags & 0x200u ? 254u : 0u;
}
Address routing(MenuControlsState &s, const ImguiTextInputApi &api, ReU32 chord) {
    const auto c = context(s);
    chord = chord_resolve(s, chord);
    const auto modifiers = ReU16(chord & 0xf800u);
    auto key = chord & 0xffff07ffu;
    if (!key)
        key = modifier_key(modifiers);
    const auto head = c + Address(key) * 2 + 0x4240;
    auto index = read<ReU16>(s, head, 0x392c29);
    for (ReUSize steps = 0; index != 0xffff; ++steps) {
        if (steps >= api.maximum_characters)
            __builtin_trap();
        const auto count = read<ReI32>(s, c + 0x4758, 0x3786bc);
        const auto signed_index = ReI16(index);
        if (signed_index < 0 || signed_index >= count)
            __builtin_trap();
        const auto data = read<Address>(s, c + 0x4760, 0x3786bc);
        const auto entry = data + Address(signed_index) * 16;
        if (read<ReU16>(s, entry + 2, 0x392c43) == modifiers)
            return entry;
        index = read<ReU16>(s, entry, 0x392c4b);
    }
    const auto count = read<ReI32>(s, c + 0x4758, 0x392c5b);
    if (count < 0 || count >= 32767)
        __builtin_trap();
    const auto data = reserve_vector(s, api, c + 0x4758, count + 1, 16);
    const auto entry = data + Address(ReI16(count)) * 16;
    // [C]38b00c leaves padding5..7 uninitialized: do not materialize it.
    write(s, entry, ReU32(0xffff), 0x38b00f);
    write(s, entry + 0xc, 0xffffffffu, 0x38b015);
    write(s, entry + 8, 0xffffffffu, 0x38b018);
    write(s, entry + 4, ReU8(255), 0x38b01e);
    write(s, c + 0x4758, count + 1, 0x39f030);
    write(s, entry + 2, modifiers, 0x392c7d);
    write(s, entry, read<ReU16>(s, head, 0x392c81), 0x392c8a);
    write(s, head, ReU16(count), 0x392c8d);
    return entry;
}
} // namespace
Address reserve_vector(MenuControlsState &s, const ImguiTextInputApi &api, Address descriptor,
                       ReI32 required, ReUSize stride) {
    auto data = read<Address>(s, descriptor + 8, 0x37a69c);
    const auto capacity = read<ReI32>(s, descriptor + 4, 0x37a69c);
    const auto count = read<ReI32>(s, descriptor, 0x37a69c);
    if (required < 0 || count < 0 || capacity < count ||
        ReUSize(required) > api.maximum_characters)
        __builtin_trap();
    if (required <= capacity)
        return data;
    const auto wanted = draw_core_growth_362efc(capacity, required);
    const auto new_data =
        draw_core_allocate_395158(*s.image, ReUSize(wanted) * stride, api.allocation.allocate);
    if (!new_data)
        { __builtin_trap(); }
    // [I] Standard-vector relocation over copied storage, numeric addresses only.
    const auto old_data = read<Address>(s, descriptor + 8, 0x37a69c);
    const auto live_count = read<ReI32>(s, descriptor, 0x37a69c);
    if (live_count < 0 || live_count > wanted || ReUSize(live_count) > api.maximum_characters)
        __builtin_trap();
    for (ReUSize i = 0; i < ReUSize(live_count) * stride; ++i)
        write(s, new_data + i, read<ReU8>(s, old_data + i, 0x3c8d4c), 0x3c8d4c);
    if (old_data)
        draw_core_free_39517c(*s.image, old_data, api.allocation.free);
    write(s, descriptor + 8, new_data, 0x37a69c);
    write(s, descriptor + 4, wanted, 0x37a69c);
    return new_data;
}
bool key_pressed(MenuControlsState &s, ReU32 value, ReU32 owner, bool repeat) {
    const auto data = key_data(s, ReI32(value));
    if (!read<ReU8>(s, data, 0x394288))
        return false;
    const auto duration = read<float>(s, data + 4, 0x39428d);
    if (0.0f > duration)
        return false;
    if (duration != 0) {
        if (!repeat)
            return false;
        const auto c = context(s);
        const auto delay = read<float>(s, c + 0x3c, 0x392d54);
        const auto rate = read<float>(s, c + 0x40, 0x392d54);
        if (!(duration > delay) ||
            menu_controls_typematic_38f85c(duration - read<float>(s, c + 0x18, 0x3927d0), duration,
                                           delay, rate) <= 0)
            return false;
    }
    return key_owner(s, ReI32(value), owner);
}
bool route_shortcut(MenuControlsState &s, const ImguiTextInputApi &api, ReU32 chord,
                    ReU32 owner, ReU32 flags) {
    const auto c = context(s);
    if (!(flags & 0xf00u))
        flags |= 0x800u;
    if ((flags & 0x2000u) && !read<Address>(s, c + 0x48e8, 0x39b8dc))
        return false;
    if (flags & 0x1000u)
        return true;
    const auto priority = score(s, read<Address>(s, c + 0x3f08, 0x39b8f1), owner, flags);
    if (priority == 255)
        return false;
    const auto entry = routing(s, api, chord);
    if (owner == 0 || owner == 0xffffffffu)
        owner = read<ReU32>(s, c + 0x4784, 0x392bcb);
    if (priority < read<ReU8>(s, entry + 4, 0x39b91f)) {
        write(s, entry + 0xc, owner, 0x39b927);
        write(s, entry + 4, ReU8(priority), 0x39b92a);
    }
    return read<ReU32>(s, entry + 8, 0x39b92d) == owner;
}
bool shortcut(MenuControlsState &s, const ImguiTextInputApi &api, ReU32 chord,
              ReU32 owner, bool repeat) {
    const auto c = context(s);
    const auto flags = (repeat ? 1u : 0u) | 0x100u;
    if (!route_shortcut(s, api, chord, owner, flags))
        return false;
    chord = chord_resolve(s, chord);
    if ((chord & 0xf800u) != read<ReU32>(s, c + 0xe28, 0x39be2d))
        return false;
    auto value = chord & 0xffff07ffu;
    if (!value)
        value = modifier_key(chord);
    return key_pressed(s, value, owner, repeat);
}
} // namespace rust_internal_re::text_input_detail
