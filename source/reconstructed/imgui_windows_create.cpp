#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
Address viewport(ImguiWindowsState &s) {
    const auto v = context(s) + 0x48d8;
    return read<Address>(s, element(s, v, 0, 8, 0x39287c), 0x392881);
}
namespace {
Address settings(ImguiWindowsState &s, ReU32 id) {
    const auto v = context(s) + 0x5c20;
    const auto data = read<Address>(s, v + 8, 0x39e390);
    if (!data)
        return 0;
    auto record = data + 4;
    for (ReUSize steps = 0; steps < 100000; ++steps) {
        if (read<ReU32>(s, record, 0x391da5) == id &&
            !read<ReU8>(s, record + 0xe, 0x391da9))
            return record;
        const auto length = read<ReI32>(s, record - 4, 0x39e3b8);
        record += Address(ReI64(length));
        const auto end = read<Address>(s, v + 8, 0x39ebac) +
                         Address(ReI64(read<ReI32>(s, v, 0x39ebac))) + 4;
        if (record == end)
            return 0;
    }
    { __builtin_trap(); }
}
void defaults(ImguiWindowsState &s, Address w, Address record) {
    const auto vp = viewport(s);
    const auto offset = read<float>(s, 0x28db30, 0x393cd6);
    const auto p = read<Vec2>(s, vp + 4, 0x393cf1);
    write(s, w + 0x20, Vec2{p.x + offset, p.y + offset}, 0x393d03);
    write(s, w + 0xdd, ReU16(0x0f0f), 0x393d08);
    write(s, w + 0xdc, ReU8(0x0f), 0x393d11);
    if (record) {
        allow_condition(s, w, 4, false);
        write(s, w + 0x20,
              Vec2{float(read<ReI16>(s, record + 4, 0x38cf0d)),
                   float(read<ReI16>(s, record + 6, 0x38cefa))},
              0x38cf31);
        const auto x = read<ReI16>(s, record + 8, 0x38cf36);
        if (x > 0) {
            const auto y = read<ReI16>(s, record + 10, 0x38cf3d);
            if (y > 0) {
                const Vec2 size{float(x), float(y)};
                write(s, w + 0x30, size, 0x38cf7a);
                write(s, w + 0x28, size, 0x38cf84);
            }
        }
        write(s, w + 0xb9, read<ReU8>(s, record + 12, 0x38cf8e), 0x38cf96);
    }
    const auto position = read<Vec2>(s, w + 0x20, 0x393d3b);
    for (auto a : {0x120u, 0x118u, 0x110u})
        write(s, w + a, position, 0x393d45);
    bool grows = false;
    if (read<ReU8>(s, w + 0x14, 0x393d37) & 0x40)
        write(s, w + 0xd0, ReU16(0x0202), 0x393d77);
    else {
        const auto size = read<Vec2>(s, w + 0x28, 0x393d87);
        if (size.x <= 0)
            write(s, w + 0xd0, ReU8(2), 0x393d8d);
        if (size.y <= 0)
            write(s, w + 0xd1, ReU8(2), 0x393d9a);
        grows = read<ReI8>(s, w + 0xd0, 0x393da1) > 0 ||
                read<ReI8>(s, w + 0xd1, 0x393daa) > 0;
    }
    write(s, w + 0xd3, ReU8(grows), 0x393db5);
}
} // namespace
Address create_window(ImguiWindowsState &s, const ImguiWindowsApi &api, re::ReStringView text,
                      ReU32 flags) {
    auto &owner = control(s);
    const auto c = context(s);
    const auto allocate = [&](ReUSize n) {
        const auto p = draw_core_allocate_395158(*owner.image, n, api.allocation_leaf);
        if (!p)
            { __builtin_trap(); }
        return p;
    };
    const auto w = allocate(0x3d8);
    for (Address i = 8; i < 0x3d8; ++i)
        write(s, w + i, ReU8(0), 0x38b883);
    write(s, w, c, 0x38b88d);
    text = text.substr(0, text.find('\0'));
    const auto name = allocate(text.size() + 1);
    for (ReUSize i = 0; i < text.size(); ++i)
        write(s, name + i, ReU8(text[i]), 0x3c8d4c);
    write(s, name + text.size(), ReU8(0), 0x3c8d4c);
    write(s, w + 8, name, 0x38b8a0);
    write(s, w + 0x78, ReU32(text.size() + 1), 0x38b8b0);
    const auto id = menu_controls_hash_39334c(text);
    write(s, w + 0x10, id, 0x38b8bf);
    const auto id_bytes = re::re_bit_cast<re::ReArray<ReByte, 4>>(id);
    push_bytes(s, api, w + 0xf0, id_bytes, 0x39eee8);
    write(s, w + 0x7c, menu_controls_hash_39334c("#MOVE", id), 0x38b8ff);
    const auto maximum = read<float>(s, 0x28db54, 0x38b8ef);
    write(s, w + 0x94, Vec2{maximum, maximum}, 0x38b91b);
    const auto half = read<float>(s, 0x28d250, 0x38b907);
    write(s, w + 0x9c, Vec2{half, half}, 0x38b94b);
    write(s, w + 0xdd, ReU16(0), 0x38b93e);
    write(s, w + 0xdc, ReU8(0), 0x38b945);
    write(s, w + 0xd1, ReU8(0xff), 0x38b950);
    write(s, w + 0xd0, ReU8(0xff), 0x38b957);
    write(s, w + 0xd4, ReI32(-1), 0x38b95e);
    write(s, w + 0xe0, Vec2{maximum, maximum}, 0x38b983);
    write(s, w + 0xe8, Vec2{maximum, maximum}, 0x38b97b);
    write(s, w + 0x260, ReI32(-1), 0x38b98b);
    write(s, w + 0x264, -1.0f, 0x38b991);
    write(s, w + 0x290, 1.0f, 0x38b99b);
    write(s, w + 0x294, ReI32(-1), 0x38b9a5);
    write(s, w + 0x298, w + 0x2a0, 0x38b9ab);
    write(s, w + 0x2d8, c + 0x3c38, 0x38b9be);
    write(s, w + 0x2e0, name, 0x38b9c9);
    write(s, w + 0x14, flags, 0x390920);
    s.window_ids[id] = w;
    Address record = 0;
    if (!(flags & 0x100)) {
        record = settings(s, id);
        if (record)
            write(s, w + 0x294, ReU32(record - read<Address>(s, c + 0x5c28, 0x39ee98)),
                  0x390961);
    }
    defaults(s, w, record);
    const auto bytes = re::re_bit_cast<re::ReArray<ReByte, 8>>(w);
    push_bytes(s, api, c + 0x3ea8, bytes, 0x39097e);
    if (!owner.draw)
        { __builtin_trap(); }
    auto list = DrawCoreList{};
    list.splitter.count = 0;
    owner.draw->lists[w + 0x2a0] = re::re_move(list);
    return w;
}
// [C] 0x38b6d4..0x38b9e7: full window struct initialization and field setup.
// Semantics: modeled by window_detail::create_window() above.
StaticDispatchResult describe_window_init_38b6d4() {
    StaticDispatchResult out{};
    out.events.push_back({0x38b6fa, "[C] initialize 15 ImVector headers via 0x2d4870"});
    out.events.push_back({0x38b7b7, "[C] initialize draw command sub-structure at +0x100 via 0x38ba0c"});
    out.events.push_back({0x38b7bc, "[C] initialize 7 ClipRect fields (0x1e8-0x248) via 0x38bb2c"});
    out.events.push_back({0x38b817, "[C] initialize 2 scalar fields (0x258, 0x25c) via 0x38bb64"});
    out.events.push_back({0x38b82f, "[C] initialize string buffer at 0x270, draw list at 0x280"});
    out.events.push_back({0x38b847, "[C] initialize embedded draw list at 0x2a0 via 0x38a4ac"});
    out.events.push_back({0x38b869, "[C] setup draw channel vector at +0x3a8 via 0x2dfe34"});
    out.events.push_back({0x38b883, "[C] memset struct+8..+0x3d8 to zero via 0x3c8d70"});
    out.events.push_back({0x38b88d, "[C] store context pointer at struct+0"});
    out.events.push_back({0x38b893, "[C] duplicate name string via 0x39347c, store at +8"});
    out.events.push_back({0x38b8b6, "[C] hash name via 0x39334c -> +0x10 (window ID)"});
    out.events.push_back({0x38b8ca, "[C] hash '#MOVE' + id -> +0x7c (move ID)"});
    out.events.push_back({0x38b8ef, "[C] initialize scroll targets +0x94/+0x9c to max/half"});
    out.events.push_back({0x38b93e, "[C] clear allow-condition bytes, set autofit to -1"});
    out.events.push_back({0x38b98b, "[C] set frame=-1, time=-1.0, scale=1.0, settings=-1"});
    out.events.push_back({0x38b9ab, "[C] set draw list ptr=+0x2a0, shared data=ctx+0x3c38"});
    out.events.push_back({0x38b9c5, "[C] copy display name ptr from +8 to +0x2e0"});
    return out;
}
// [C] 0x393cbc..0x393dca: apply default geometry and auto-fit state to new window.
// Semantics: modeled by the local defaults() above.
void defaults_entry_393cbc(ImguiWindowsState &s, Address w, Address record) {
    defaults(s, w, record);
}
// [C] 0x38cef0..0x38cfa1: apply stored settings record to window position and size.
// Reads i16 position/size from the settings record, converts to float, writes to window.
void settings_apply_38cef0(ImguiWindowsState &s, Address w, Address record) {
    const Vec2 pos{float(read<ReI16>(s, record + 4, 0x38cf0d)),
                   float(read<ReI16>(s, record + 6, 0x38cefa))};
    write(s, w + 0x20, pos, 0x38cf31);
    if (read<ReI16>(s, record + 8, 0x38cf36) > 0 &&
        read<ReI16>(s, record + 10, 0x38cf3d) > 0) {
        const Vec2 sz{float(read<ReI16>(s, record + 8, 0x38cf51)),
                      float(read<ReI16>(s, record + 10, 0x38cf44))};
        write(s, w + 0x30, sz, 0x38cf7a);
        write(s, w + 0x28, sz, 0x38cf84);
    }
    write(s, w + 0xb9, read<ReU8>(s, record + 12, 0x38cf8e), 0x38cf96);
}
// [C] 0x39347c..0x3934ad: allocate buffer and copy NUL-terminated string.
// strlen -> allocate -> memcpy during window name creation.
StaticDispatchResult describe_string_alloc_39347c() {
    StaticDispatchResult out{};
    out.events.push_back({0x393489, "[C] strlen(source) via 0x3ca904"});
    out.events.push_back({0x393495, "[C] allocate (len+1) bytes via 0x395158"});
    out.events.push_back({0x3934ad, "[C] memcpy source to new buffer via 0x3c8d4c"});
    return out;
}
// [C] 0x38b9e8..0x38ba0b: initialize draw command index and vertex sub-arrays.
StaticDispatchResult describe_draw_cmd_init_38b9e8() {
    StaticDispatchResult out{};
    out.events.push_back({0x38b9f5, "[C] initialize index sub-array at struct+0x8 via 0x38b058"});
    out.events.push_back({0x38b9fe, "[C] initialize vertex sub-array at struct+0x44 via 0x38b1f4"});
    return out;
}
} // namespace rust_internal_re::window_detail
