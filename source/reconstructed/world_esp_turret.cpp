#include "world_esp_analysis.hpp"
namespace rust_internal_re {
WorldDrawStyle route_world_draw_scalars_2fb72c(const WorldDrawData &, const WorldEspConfig &);
namespace {
template <class T> T turret_read(const Snapshot &im, Address p, Rva site) {
    auto value = im.read<T>(p);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
} // namespace
WorldDrawStyle decode_world_turret_3012f9(const Snapshot &im, const WorldDrawData &d,
                                          const WorldEspConfig &c, WorldLabelRows &rows,
                                          WorldDrawBackend &draw, WorldClassifierBackend &game) {
    if (d.record.category != 73)
        { __builtin_trap(); }
    const Address e = d.record.entity;
    const float range = turret_read<float>(im, e + 0x510, 0x301324);
    if (c.option(0x3f02f8, 7)) {
        const auto inventory = turret_read<Address>(im, e + 0x90, 0x30134b);
        if (sample_pointer_range(inventory)) {
            const auto count = turret_read<ReI32>(im, inventory + 0x18, 0x30135a);
            if (count > 1000000)
                { __builtin_trap(); }
            for (ReI32 i = 0; i < count; ++i) {
                const auto array = turret_read<Address>(im, inventory + 0x10, 0x301365);
                if (!sample_pointer_range(array))
                    continue;
                const auto item =
                    turret_read<Address>(im, array + 0x20 + 8ULL * ReU32(i), 0x30137f);
                if (!sample_pointer_range(item))
                    continue;
                const auto name =
                    world_item_name_316574(turret_read<ReU32>(im, item + 0x54, 0x301390));
                if (!name.empty())
                    rows.rows[0] = re::ReString(name); // [C] assignment, last nonempty entry wins.
            }
        }
    }
    auto style = route_world_draw_scalars_2fb72c(d, c);
    style.label = "Turret";
    if (!c.boolean(0x3e86e8))
        return style;
    const auto f = turret_read<ReU16>(im, e + 0x1d8, 0x301510);
    const auto related = turret_read<Address>(im, e + 0x3c8, 0x3014f3);
    if (!sample_pointer_range(related) || !style.world)
        return style;
    const auto count = turret_read<ReI32>(im, related + 0x20, 0x301517);
    const float value = turret_read<float>(im, e + 0x2cc, 0x301531),
                maximum = turret_read<float>(im, e + 0x2d0, 0x30153a);
    const bool on = (f & 2) != 0;
    if (c.option(0x3f02f8, 6))
        style.world = style.world && (f & 0x200) != 0;
    if (c.option(0x3f02f8, 5))
        style.world = style.world && on;
    if (count > 0 && c.option(0x3f02f8, 4))
        style.world = false;
    if (c.option(0x3f02f8, 0) && on && style.world) {
        const auto transform = turret_read<Address>(im, e + 0x4e0, 0x301621);
        if (sample_pointer_range(transform)) {
            if (!game.transform_position_3747d4)
                __builtin_trap();
            const auto origin = game.transform_position_3747d4(transform);
            if (!origin)
                __builtin_trap();
            if (!draw.world_projection_36cd20)
                { __builtin_trap(); }
            const auto from = draw.world_projection_36cd20(*origin, d.projection_bounds);
            if (from) {
                // [C] 320db4 rotates (0,0,range) by literal (0,0,0,0).
                // Retain zero*range operations, which matter for infinities/NaNs.
                const Vec3 rotated = rotate_world_vector_320db4({0, 0, range}, {0, 0, 0, 0});
                const Vec3 target = rotated + *origin, direction = target - *origin;
                if (!draw.raycast_2e8fac)
                    __builtin_trap();
                const auto hit = draw.raycast_2e8fac(*origin, direction, range, 0x40a10000, 0);
                const auto to =
                    draw.world_projection_36cd20(hit.hit ? hit.point : target, d.projection_bounds);
                if (to) {
                    rows.draw_line = true;
                    rows.line_from = *from;
                    rows.line_to = *to;
                }
            }
        }
    }
    if (style.world) {
        const int slot = c.option(0x3f02f8, 2) ? 2 : c.option(0x3f02f8, 1) ? 0 : -1;
        if (slot >= 0) {
            rows.values[ReUSize(slot)] = world_cvttss2si(value);
            rows.maximums[ReUSize(slot)] = world_cvttss2si(maximum);
        }
        if (c.option(0x3f02f8, 3)) {
            if (f & 0x80)
                rows.rows[2] = "[Safe]";
            rows.rows[3] = on ? "[On]" : "[Off]";
        }
    }
    return style;
}
} // namespace rust_internal_re
