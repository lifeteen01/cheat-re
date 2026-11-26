#include "menu_controls_internal.hpp"
namespace rust_internal_re {
namespace {
using namespace menu_detail;
void import(MenuControlsState &s) {
    if (s.groups_imported)
        return;
    const auto v = context(s) + 0x48a0;
    const auto n = read<ReI32>(s, v, 0x37adf4);
    if (n < 0 || n > 100000)
        { __builtin_trap(); }
    const auto pointer = n ? read<Address>(s, v + 8, 0x39e348) : Address(0);
    for (int i = 0; i < n; ++i)
        s.groups.push_back(read<MenuGroupBackup>(s, pointer + Address(i) * 48, 0x39e348));
    s.groups_imported = true;
}
void begin(MenuControlsState &s) {
    import(s);
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x38eca6);
    MenuGroupBackup b;
    b.window_id = read<ReU32>(s, w + 0x10, 0x38ecc8);
    b.cursor = read<Vec2>(s, w + 0x100, 0x38ecd8);
    b.maximum = read<Vec2>(s, w + 0x118, 0x38ece5);
    b.indent = read<float>(s, w + 0x144, 0x38ecf2);
    b.group_offset = read<float>(s, w + 0x14c, 0x38ecff);
    b.line = read<Vec2>(s, w + 0x128, 0x38ed0c);
    b.baseline = read<float>(s, w + 0x138, 0x38ed19);
    b.active_alive = read<ReU32>(s, c + 0x3f6c, 0x38ed22);
    b.hovered = read<ReU32>(s, c + 0x3f54, 0x38ed2b) != 0;
    b.previous_alive = read<ReU8>(s, c + 0x3f9c, 0x38ed38);
    s.groups.push_back(b);
    write(s, c + 0x48a0, ReI32(s.groups.size()), 0x37adf4);
    write(s, w + 0x118, b.cursor, 0x38ed5a);
    const auto offset =
        b.cursor.x - read<float>(s, w + 0x20, 0x38ed4d) - read<float>(s, w + 0x148, 0x38ed65);
    write(s, w + 0x14c, offset, 0x38ed6d);
    write(s, w + 0x144, offset, 0x38ed7d);
    write(s, w + 0x128, Vec2{}, 0x38ed8e);
    if (read<ReU8>(s, c + 0x5c90, 0x38ed96))
        write(s, c + 0x5cc0, 0xff7fffffu, 0x38ed9f);
}
void end(MenuControlsState &s, const MenuControlsApi &api,
         const re::ReFunction<void(Rva)> &fallback) {
    import(s);
    if (s.groups.empty())
        __builtin_trap();
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x390f10);
    const auto b = s.groups.back();
    if (read<ReU8>(s, w + 0x141, 0x390f26)) {
        write(s, w + 0x141, ReU8(0), 0x3911a4);
        const auto maximum = read<Vec2>(s, w + 0x118, 0x39119d),
                   cursor = read<Vec2>(s, w + 0x100, 0x3911af);
        write(s, w + 0x118, Vec2{maxss(maximum.x, cursor.x), maxss(maximum.y, cursor.y)}, 0x3911bf);
    }
    (void)fallback;
    const auto maximum = read<Vec2>(s, w + 0x118, 0x390f3c);
    const ClipRect box{b.cursor.x, b.cursor.y, maxss(maximum.x, b.cursor.x),
                       maxss(maximum.y, b.cursor.y)};
    write(s, w + 0x100, b.cursor, 0x390f6e);
    write(s, w + 0x118, Vec2{maxss(b.maximum.x, maximum.x), maxss(b.maximum.y, maximum.y)},
          0x390f85);
    write(s, w + 0x144, b.indent, 0x390f8e);
    write(s, w + 0x14c, b.group_offset, 0x390f9c);
    write(s, w + 0x128, b.line, 0x390faa);
    write(s, w + 0x138, b.baseline, 0x390fb6);
    if (read<ReU8>(s, c + 0x5c90, 0x390fbd))
        write(s, c + 0x5cc0, 0xff7fffffu, 0x390fc6);
    if (b.emit_item) {
        write(s, w + 0x138, maxss(read<float>(s, w + 0x13c, 0x390fdf), b.baseline), 0x390ff2);
        item_size(s, {box.z - box.x, box.w - box.y}, -1);
        (void)item_add(s, api, box, 0, {}, 1);
        const auto active = read<ReU32>(s, c + 0x3f68, 0x39102c);
        const bool active_inside = b.active_alive != active &&
                                   read<ReU32>(s, c + 0x3f6c, 0x391037) == active &&
                                   active != 0;
        const bool previous_inside =
            !b.previous_alive && read<ReU8>(s, c + 0x3f9c, 0x39104f) == 1;
        if (active_inside)
            write(s, c + 0x47a4, active, 0x39105d);
        else if (previous_inside)
            write(s, c + 0x47a4, read<ReU32>(s, c + 0x3f98, 0x391069), 0x39106f);
        write(s, c + 0x47b0, box, 0x39107a);
        auto status = read<ReU32>(s, c + 0x47ac, 0x391091);
        if (!b.hovered && read<ReU32>(s, c + 0x3f54, 0x391088))
            status |= 0x80;
        if (active_inside && read<ReU8>(s, c + 0x3f79, 0x39109d))
            status |= 4;
        const auto before = status;
        status |= 0x20;
        if (previous_inside && active != read<ReU32>(s, c + 0x3f98, 0x3910c2))
            status = before | 0x60;
        write(s, c + 0x47ac, status, 0x3910cd);
    }
    s.groups.resize(s.groups.size()-1);
    write(s, c + 0x48a0, ReI32(s.groups.size()), 0x39eea0);
}
} // namespace
MenuControlsApi bind_menu_controls_groups(MenuControlsState &s, MenuControlsApi api) {
    const auto prior = api.local_layout;
    const auto effects = api;
    api.local_layout = [&s, prior, effects](Rva target) {
        if (target == 0x38ec90)
            begin(s);
        else if (target == 0x390efc)
            end(s, effects, prior);
        else if (prior)
            prior(target);
        else
            { __builtin_trap(); }
    };
    return api;
}
} // namespace rust_internal_re
