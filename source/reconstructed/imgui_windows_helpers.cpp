#include "imgui_windows_internal.hpp"
#include "aim_iteration_analysis.hpp"
namespace rust_internal_re::window_detail {
void dirty(ImguiWindowsState &s, Address w) {
    if (read<ReU32>(s, w + 0x14, 0x395108) & 0x100)
        return;
    const auto c = context(s);
    if (read<float>(s, c + 0x5bfc, 0x39511b) <= 0)
        write(s, c + 0x5bfc, read<float>(s, c + 0x1c, 0x395124), 0x395127);
}
namespace {
ReU32 signed_byte(ImguiWindowsState &s, Address p, Rva at) {
    return ReU32(ReI32(read<ReI8>(s, p, at)));
}
} // namespace
void push_bytes(ImguiWindowsState &s, const ImguiWindowsApi &api, Address v,
                re::ReSpan<const ReByte> bytes, Rva at, ReUSize initialized) {
    const auto n = read<ReI32>(s, v, at), capacity = read<ReI32>(s, v + 4, at);
    auto data = read<Address>(s, v + 8, at);
    if (n < 0 || capacity < n || bytes.empty())
        { __builtin_trap(); }
    if (n == INT32_MAX)
        { __builtin_trap(); }
    if (n + 1 > capacity) {
        if (!api.reserve_storage)
            __builtin_trap();
        const auto next = draw_core_growth_362efc(capacity, n + 1);
        if (next < 0 || ReU64(next) * bytes.size() > 100000000)
            { __builtin_trap(); }
        const auto replacement = api.reserve_storage(ReUSize(next) * bytes.size());
        re::ReVector<ReByte> old;
        old.reserve(ReUSize(n) * bytes.size());
        for (ReUSize i = 0; i < ReUSize(n) * bytes.size(); ++i)
            old.push_back(read<ReByte>(s, data + i, 0x3c8d4c));
        for (ReUSize i = 0; i < old.size(); ++i)
            write(s, replacement + i, old[i], 0x3c8d4c);
        write(s, v + 8, replacement, at);
        write(s, v + 4, next, at);
        data = replacement;
    }
    for (ReUSize i = 0; i < (initialized ? initialized : bytes.size()); ++i)
        write(s, data + ReUSize(n) * bytes.size() + i, bytes[i], at);
    write(s, v, n + 1, at);
}
void allow_condition(ImguiWindowsState &s, Address w, ReU32 flags, bool enabled) {
    for (auto offset : {0xdcu, 0xddu, 0xdeu}) {
        auto value = signed_byte(s, w + offset, 0x39baa8);
        value = enabled ? value | flags : value & ~flags;
        write(s, w + offset, ReU8(value), 0x39bac8);
    }
}
void roots(ImguiWindowsState &s, Address w, ReU32 flags, Address parent) {
    write(s, w + 0x368, parent, 0x39e0f8);
    for (auto offset : {0x390u, 0x388u, 0x380u, 0x378u})
        write(s, w + offset, w, 0x39e106);
    if (parent) {
        if ((flags & 0x3000000) == 0x1000000)
            write(s, w + 0x378, read<Address>(s, parent + 0x378, 0x39e131), 0x39e138);
        if (flags & 0x4000000)
            write(s, w + 0x380, read<Address>(s, parent + 0x380, 0x39e145), 0x39e14c);
        if (!(flags & 0x8000000) && (flags & 0x5000000))
            write(s, w + 0x388, read<Address>(s, parent + 0x388, 0x39e161), 0x39e168);
    }
    auto nav = w;
    while (read<ReU32>(s, nav + 0x14, 0x39e180) & 0x800000) {
        nav = read<Address>(s, nav + 0x368, 0x39e176);
        if (!nav)
            { __builtin_trap(); }
        write(s, w + 0x390, nav, 0x39e17d);
    }
}
void focus_order(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w, bool created,
                 ReU32 flags) {
    const auto explicit_child = bool((flags & 0x1000000) && ((flags & 0x14000000) != 0x4000000));
    const auto old = read<ReU8>(s, w + 0xbf, 0x39d6af);
    const auto v = context(s) + 0x3eb8;
    if (created || explicit_child != bool(old)) {
        if (!explicit_child) {
            const auto bytes = re::re_bit_cast<re::ReArray<ReByte, 8>>(w);
            push_bytes(s, api, v, bytes, 0x37a658);
            write(s, w + 0xca, ReU16(read<ReU16>(s, v, 0x39d6e2) - 1), 0x39d6e8);
        } else if (!created && bool(old) != explicit_child) {
            const auto index = ReI32(read<ReI16>(s, w + 0xca, 0x39d6fa)),
                       n = read<ReI32>(s, v, 0x39d725);
            const auto data = read<Address>(s, v + 8, 0x39d732);
            for (auto i = index + 1; i < n; ++i) {
                const auto moved = read<Address>(s, element(s, v, i, 8, 0x39d711), 0x39d716);
                write(s, moved + 0xca,
                      ReU16(read<ReU16>(s, moved + 0xca, 0x39d719) - 1), 0x39d719);
                write(s, data + Address(i - 1) * 8, moved, 0x39ebc0);
            }
            write(s, v, n - 1, 0x39ebc0);
            write(s, w + 0xca, ReU16(0xffff), 0x39d742);
        }
    }
    write(s, w + 0xbf, ReU8(explicit_child), 0x39d749);
}
void position(ImguiWindowsState &s, Address w, Vec2 value, ReU32 condition) {
    if (condition && !(condition & signed_byte(s, w + 0xdc, 0x39bb66)))
        return;
    const auto old = read<Vec2>(s, w + 0x20, 0x39bbb6);
    const auto flags = read<ReU32>(s, w + 0xdc, 0x39bb7e);
    write(s, w + 0xdc, (flags & 0xffffff00u) | (flags & 0xf1u), 0x39bb9e);
    const auto maximum = read<float>(s, 0x28db54, 0x39bb8b);
    write(s, w + 0xe0, Vec2{maximum, maximum}, 0x39bbc9);
    value = {float(menu_detail::cvtt(value.x)), float(menu_detail::cvtt(value.y))};
    write(s, w + 0x20, value, 0x39bbe7);
    const Vec2 d{value.x - old.x, value.y - old.y};
    if (d.x != 0 || d.y != 0) {
        dirty(s, w);
        for (auto offset : {0x100u, 0x118u, 0x120u, 0x110u}) {
            auto v = read<Vec2>(s, w + offset, 0x38cc48);
            v.x += d.x;
            v.y += d.y;
            write(s, w + offset, v, 0x38cc48);
        }
    }
}
void size(ImguiWindowsState &s, Address w, Vec2 value, ReU32 condition) {
    if (condition && !(condition & signed_byte(s, w + 0xdd, 0x39bc91)))
        return;
    const auto old = read<Vec2>(s, w + 0x30, 0x39bcb9);
    const auto flags = read<ReU32>(s, w + 0xdc, 0x39bcac);
    write(s, w + 0xdc,
          (flags & 0xffff00ffu) |
              (ReU32(read<ReU8>(s, w + 0xdd, 0x39bca1) & 0xf1) << 8),
          0x39bccf);
    const bool x = value.x > 0 || re::re_isnan(value.x), y = value.y > 0 || re::re_isnan(value.y);
    write(s, w + 0xd0, ReU8(x ? 0 : 2), 0x39bce0);
    write(s, w + 0xd1, ReU8(y ? 0 : 2), 0x39bcf1);
    auto next = old;
    if (x) {
        next.x = float(menu_detail::cvtt(value.x));
        write(s, w + 0x30, next.x, 0x39bd13);
    } else
        write(s, w + 0xd3, ReU8(0), 0x39bcfc);
    if (y) {
        next.y = float(menu_detail::cvtt(value.y));
        write(s, w + 0x34, next.y, 0x39bd33);
    } else
        write(s, w + 0xd3, ReU8(0), 0x39bd1e);
    if (next.x != old.x || next.y != old.y)
        dirty(s, w);
}
void collapsed(ImguiWindowsState &s, Address w, ReU8 value, ReU32 condition) {
    if (condition && !(condition & signed_byte(s, w + 0xde, 0x39ba6d)))
        return;
    const auto flags = read<ReU32>(s, w + 0xdc, 0x39ba81);
    const auto allowed = read<ReU8>(s, w + 0xde, 0x39ba79);
    write(s, w + 0xb9, ReU8(value), 0x39ba9a);
    write(s, w + 0xdc, (flags & 0xff00ffffu) | (ReU32(allowed & 0xf1) << 16), 0x39baa0);
}
// [C] 0x39d67c..0x39d75c: manage window focus-order vector insertion/removal
// Binary entry point for window_detail::focus_order()
void focus_order_entry_39d67c(ImguiWindowsState &s, const ImguiWindowsApi &api, Address w,
                              bool created, ReU32 flags) {
    focus_order(s, api, w, created, flags);
}
// [C] 0x3934b4..0x39351a: ensure buffer capacity and copy NUL-terminated string
// Resizes the destination buffer if the source string exceeds current capacity,
// then copies the source via memcpy.  Used during window rename.
StaticDispatchResult describe_string_realloc_3934b4() {
    StaticDispatchResult out{};
    out.events.push_back({0x3934c8, "[C] determine capacity from *arg2 or strlen(arg1)+1"});
    out.events.push_back({0x3934de, "[C] strlen(source) to compute needed size"});
    out.events.push_back({0x3934ef, "[C] free old buffer if capacity insufficient via 0x39517c"});
    out.events.push_back({0x3934f7, "[C] allocate new buffer of needed size via 0x395158"});
    out.events.push_back({0x39351a, "[C] memcpy source to destination buffer via 0x3c8d4c"});
    return out;
}
// [C] 0x39ba10..0x39ba65: insert or update entry in sorted key-value ImVector
// Performs a lower_bound search; if the key is found the value is overwritten,
// otherwise a new {key, value} pair is constructed and inserted in order.
StaticDispatchResult describe_sorted_set_39ba10() {
    StaticDispatchResult out{};
    out.events.push_back({0x39ba21, "[C] lower_bound search via 0x3950c4"});
    out.events.push_back({0x39ba2c, "[C] end iterator via 0x39ebb4"});
    out.events.push_back({0x39ba3a, "[C] if key found: update value at pos+0x8"});
    out.events.push_back({0x39ba4a, "[C] construct new entry via 0x38b238"});
    out.events.push_back({0x39ba58, "[C] insert at position via 0x39eddc"});
    return out;
}
// [C] 0x392f48..0x392f85: compute viewport work rectangle from position and size
ClipRect viewport_work_rect_392f48(ImguiWindowsState &s, Address vp) {
    const auto pos = read<Vec2>(s, vp + 0x14, 0x392f6a);
    const auto sz = read<Vec2>(s, vp + 0x1c, 0x392f5b);
    return {pos.x, pos.y, pos.x + sz.x, pos.y + sz.y};
}
// [C] 0x39ba68..0x39baa7: apply collapsed state with condition check
// Binary entry point for window_detail::collapsed()
void collapsed_entry_39ba68(ImguiWindowsState &s, Address w, ReU8 value, ReU32 condition) {
    collapsed(s, w, value, condition);
}
// [C] 0x39b660..0x39b68e: store last-item ID, status flags and bounding rectangle
void set_last_item_39b660(ImguiWindowsState &s, ReU32 id, ReU32 status, ReU32 flags,
                          const ClipRect &rect) {
    const auto c = context(s);
    write(s, c + 0x47a4, id, 0x39b667);
    write(s, c + 0x47a8, status, 0x39b66d);
    write(s, c + 0x47ac, flags, 0x39b673);
    write(s, c + 0x47c0, rect, 0x39b67e);
    write(s, c + 0x47b0, rect, 0x39b686);
}
} // namespace rust_internal_re::window_detail
