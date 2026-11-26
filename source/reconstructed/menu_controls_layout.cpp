#include "menu_controls_internal.hpp"
namespace rust_internal_re::menu_detail {
void same_line(MenuControlsState &s, float offset, float spacing) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x39ac0e);
    if (read<ReU8>(s, w + 0xbb, 0x39ac15))
        return;
    float x;
    if (offset == 0) {
        if (0 > spacing)
            spacing = read<float>(s, c + 0x381c, 0x39ac31);
        x = spacing + read<float>(s, w + 0x108, 0x39ac39);
    } else {
        x = read<float>(s, w + 0x20, 0x39ac43) - read<float>(s, w + 0x84, 0x39ac48) + offset;
        x += maxss(0, spacing);
        x += read<float>(s, w + 0x14c, 0x39ac5f);
        x += read<float>(s, w + 0x148, 0x39ac67);
    }
    write(s, w + 0x100, x, 0x39ac6f);
    write(s, w + 0x104, read<float>(s, w + 0x10c, 0x39ac77), 0x39ac7d);
    write(s, w + 0x128, read<Vec2>(s, w + 0x130, 0x39ac83), 0x39ac91);
    write(s, w + 0x138, read<float>(s, w + 0x13c, 0x39ac8b), 0x39ac99);
    write(s, w + 0x140, ReU8(1), 0x39ac9f);
}
void item_size(MenuControlsState &s, Vec2 size, float baseline) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x394b54);
    if (read<ReU8>(s, w + 0xbb, 0x394b5b))
        return;
    const auto oldbaseline = read<float>(s, w + 0x138, 0x394b74);
    const auto pad = baseline >= 0 ? maxss(0, oldbaseline - baseline) : 0.0f;
    const auto cursor = read<Vec2>(s, w + 0x100, 0x394b8b);
    const auto previous = read<Vec2>(s, w + 0x108, 0x394ba3);
    const auto line_y = read<ReU8>(s, w + 0x140, 0x394b85) ? previous.y : cursor.y;
    const auto height =
        maxss(read<float>(s, w + 0x12c, 0x394bba), cursor.y - line_y + size.y + pad);
    const auto x = cursor.x + size.x;
    write(s, w + 0x10c, line_y, 0x394be4);
    write(s, w + 0x108, x, 0x394bf0);
    write(s, w + 0x100,
          float(cvtt(read<float>(s, w + 0x144, 0x394bd7) + read<float>(s, w + 0x20, 0x394bdf) +
                     read<float>(s, w + 0x148, 0x394bf8))),
          0x394c0b);
    const auto spacing = read<float>(s, c + 0x3820, 0x394c13);
    const auto next = float(cvtt(line_y + height + spacing));
    write(s, w + 0x104, next, 0x394c2f);
    write(s, w + 0x118, maxss(read<float>(s, w + 0x118, 0x394c1c), x), 0x394c3c);
    write(s, w + 0x11c, maxss(read<float>(s, w + 0x11c, 0x394c4d), next - spacing), 0x394c5d);
    write(s, w + 0x134, height, 0x394c6b);
    write(s, w + 0x12c, 0.0f, 0x394c73);
    write(s, w + 0x13c, maxss(oldbaseline, baseline), 0x394c7f);
    write(s, w + 0x138, 0.0f, 0x394c87);
    write(s, w + 0x140, ReU16(0), 0x394c8e);
    if (!read<ReI32>(s, w + 0x1b4, 0x394c96))
        same_line(s, 0, -1);
}
bool item_add(MenuControlsState &s, const MenuControlsApi &api, ClipRect b, ReU32 value,
              re::ReOptional<ClipRect> nav, ReU32 flags) {
    const auto c = context(s), w = read<Address>(s, c + 0x3f08, 0x394902);
    flags |= read<ReU32>(s, c + 0x4788, 0x3948fb);
    write(s, c + 0x47a4, value, 0x394909);
    write(s, c + 0x47b0, b, 0x394912);
    write(s, c + 0x47a8, flags, 0x39491d);
    write(s, c + 0x47ac, 0u, 0x394924);
    write(s, c + 0x47c0, nav.value_or(b), 0x39492e);
    if (value) {
        if (read<ReU32>(s, c + 0x3f68, 0x394cb4) == value)
            write(s, c + 0x3f6c, value, 0x394cb4);
        if (read<ReU32>(s, c + 0x3f98, 0x394cb4) == value)
            write(s, c + 0x3f9c, ReU8(1), 0x394cb4);
        if (!(flags & 8)) {
            const auto layer = read<ReU32>(s, w + 0x158, 0x394951);
            write(s, w + 0x15e,
                  ReU16(read<ReU16>(s, w + 0x15e, 0x39494a) | (1u << (layer & 31))),
                  0x39495a);
            if (read<ReU32>(s, c + 0x48f0, 0x394961) == value ||
                read<ReU8>(s, c + 0x4928, 0x394969)) {
                const auto nw = read<Address>(s, c + 0x48e8, 0x394972);
                if (read<Address>(s, nw + 0x390, 0x394980) ==
                        read<Address>(s, w + 0x390, 0x394979) &&
                    (w == nw || ((read<ReU32>(s, nw + 0x14, 0x39498e) |
                                  read<ReU32>(s, w + 0x14, 0x394991)) &
                                 0x800000))) {
                    if (api.nav_process_395964)
                        api.nav_process_395964();
                    else
                        nav_process(s, api);
                }
            }
        }
    }
    write(s, c + 0x4790, 0u, 0x3949a6);
    if (overlaps(b, read<ClipRect>(s, w + 0x238, 0x39499f)))
        write(s, c + 0x47ac, read<ReU32>(s, c + 0x47ac, 0x3949e5) | 0x200u, 0x3949e5);
    else if ((!value || (value != read<ReU32>(s, c + 0x3f68, 0x3949c0) &&
                         value != read<ReU32>(s, c + 0x3f98, 0x3949c8) &&
                         value != read<ReU32>(s, c + 0x48f0, 0x3949d0))) &&
             !read<ReU8>(s, c + 0x5c90, 0x3949d8))
        return false;
    if (mouse_hover(s, b, true))
        write(s, c + 0x47ac, read<ReU32>(s, c + 0x47ac, 0x394a00) | 1u, 0x394a00);
    return true;
}
} // namespace rust_internal_re::menu_detail
