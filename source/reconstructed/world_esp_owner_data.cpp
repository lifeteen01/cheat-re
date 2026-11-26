#include "world_esp_analysis.hpp"
namespace rust_internal_re {
WorldDrawStyle route_world_draw_scalars_2fb72c(const WorldDrawData &, const WorldEspConfig &);
namespace {
template <class T> T owner_read(const Snapshot &im, Address address, Rva site) {
    auto v = im.read<T>(address);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
} // namespace
WorldDrawStyle decode_world_owner_category_3024e7(const Snapshot &im, const WorldDrawData &d,
                                                  const WorldEspConfig &c, WorldLabelRows &,
                                                  WorldLocalEffects &effects, WorldNameState &names,
                                                  WorldNameBackend &random, WorldDrawBackend &draw,
                                                  WorldClassifierBackend &game) {
    const bool corpse = d.record.category == 67;
    if (!corpse && d.record.category != 70)
        { __builtin_trap(); }
    const Address e = d.record.entity;
    if (corpse && c.boolean(0x3ef601) && 10.0f > d.distance) {
        if (!game.bounds_query_3664cc)
            { __builtin_trap(); }
        const auto bounds = game.bounds_query_3664cc(e);
        if (!bounds)
            { __builtin_trap(); }
        if (!draw.world_projection_36cd20)
            { __builtin_trap(); }
        const auto &a = bounds->words;
        const Vec3 x = Vec3{a[13], a[14], a[15]} * a[7], y = Vec3{a[16], a[17], a[18]} * a[8],
                   z = Vec3{a[10], a[11], a[12]} * a[9];
        const Vec3 center = bounds->center();
        const re::ReArray<Vec3, 8> corners{((center + x) + y) + z, ((center + x) + y) - z,
                                          ((center - x) + y) - z, ((center - x) + y) + z,
                                          ((center + x) - y) + z, ((center + x) - y) - z,
                                          ((center - x) - y) - z, ((center - x) - y) + z};
        re::ReArray<Vec2, 8> screen{};
        bool all = true;
        for (ReUSize i = 0; i < 8; ++i) {
            const auto projected = draw.world_projection_36cd20(corners[i], d.projection_bounds);
            if (!projected) {
                all = false;
                break;
            }
            screen[i] = *projected;
        }
        if (all) {
            constexpr re::ReArray<re::ReArray<ReUSize, 2>, 12> edges{{{0, 1},
                                                                        {1, 2},
                                                                        {2, 3},
                                                                        {3, 0},
                                                                        {4, 5},
                                                                        {5, 6},
                                                                        {6, 7},
                                                                        {7, 4},
                                                                        {0, 4},
                                                                        {1, 5},
                                                                        {2, 6},
                                                                        {3, 7}}};
            constexpr re::ReArray<Rva, 12> sites{0x302a57, 0x302ab8, 0x302b19, 0x302b7a,
                                                0x302bdb, 0x302c3c, 0x302c9d, 0x302cfe,
                                                0x302d5f, 0x302dc0, 0x302e21, 0x302e82};
            const auto color = c.color(0x3ec098);
            for (ReUSize i = 0; i < 12; ++i)
                effects.drawings.emplace_back(WorldLineDraw{sites[i], screen[edges[i][0]],
                                                            screen[edges[i][1]], color, 1.25f});
        }
    }
    auto style = route_world_draw_scalars_2fb72c(d, c);
    if (corpse) {
        // [C] 366140: e+370 -> +20 -> signed count+18 >0.
        const auto inventory = owner_read<Address>(im, e + 0x370, 0x366150);
        if (sample_pointer_range(inventory)) {
            const auto list = owner_read<Address>(im, inventory + 0x20, 0x366163);
            if (sample_pointer_range(list) &&
                owner_read<ReI32>(im, list + 0x18, 0x366173) > 0)
                style.color = c.color(0x3ec0f8);
        }
    }
    auto name = world_owner_name_3663d4_3665b8(im, e, corpse, c, names, random);
    if (!name)
        __builtin_trap();
    style.label = corpse ? "Corpse" : "World Backpack";
    if (!name->empty())
        style.label += " [" + *name + "]";
    return style;
}
} // namespace rust_internal_re
