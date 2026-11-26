#include "world_esp_analysis.hpp"
namespace rust_internal_re {
WorldDrawStyle route_world_draw_scalars_2fb72c(const WorldDrawData &, const WorldEspConfig &);
namespace {
template <class T> T category_read(const Snapshot &im, Address p, Rva site) {
    const auto value = im.read<T>(p);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
} // namespace
re::ReOptional<re::ReString> crate_timer_366a60(const Snapshot &im, Address entity) {
    if (!sample_pointer_range(entity))
        return re::ReString{};
    auto first = im.read<Address>(entity + 0x418);
    if (!first)
        return {};
    if (!sample_pointer_range(*first))
        return re::ReString{};
    auto second = im.read<Address>(*first + 0xe0);
    if (!second)
        return {};
    if (!sample_pointer_range(*second))
        return re::ReString{};
    const auto wide = read_utf16z_snapshot(im, *second + 0x14);
    if (!wide)
        return {};
    re::ReString out;
    out.reserve(wide->size());
    // [C] 366aef -> 2d45c8 wide range, 366b59 -> 2cee44 copies its elements to byte chars.
    for (char16_t x : *wide)
        out.push_back(char(ReU8(x)));
    return out;
}
re::ReOptional<WorldInteraction> plan_collectable_interaction_2ff529(const WorldDrawData &d,
                                                                    const WorldEspConfig &c) {
    const WorldDrawRoute *route = nullptr;
    for (const auto &r : world_draw_routes_2fb72c())
        if (r.category == d.record.category) {
            route = &r;
            break;
        }
    if (!route || route->collect_option < 0)
        return {};
    if (!c.boolean(0x3e9958) || !c.boolean(0x3ef481) ||
        !c.option(0x3f06e8, ReUSize(route->collect_option)))
        return {};
    const auto cat = d.record.category;
    ReU32 mode = 6;
    if (cat == 31 || cat == 32)
        mode = 1;
    else if ((cat >= 34 && cat <= 39) || cat == 44 || cat == 45 || cat == 46 || cat == 48 ||
             cat == 57)
        mode = c.boolean(0x3e99a8) ? 4 : 6;
    return WorldInteraction{0x2ff550, d.record.entity, d.local_entity, d.position,
                            mode,     false,           false};
}
WorldDrawStyle decode_world_category_2fb72c(const Snapshot &im, const WorldDrawData &d,
                                            const WorldEspConfig &c, WorldLabelRows &rows,
                                            WorldLocalEffects &effects) {
    const auto cat = d.record.category;
    if (const auto collect = plan_collectable_interaction_2ff529(d, c))
        effects.emit(*collect);
    switch (cat) {
    case 12:
    case 15:
    case 16:
    case 17:
    case 22:
    case 49:
    case 66:
    case 50:
    case 75:
    case 76:
    case 84:
    case 85:
    case 86:
        break;
    default:
        if (cat == 79 || cat == 80 || cat == 81 || cat == 82 || cat == 93 || cat == 94 ||
            cat == 100 || cat == 101 || cat == 102 || cat == 103 || cat == 104 || cat == 126 ||
            cat == 127) {
            auto actual = d;
            actual.health = category_read<float>(im, d.record.entity + 0x2cc, 0x304492);
            actual.maximum_health = category_read<float>(im, d.record.entity + 0x2d0, 0x30449f);
            const auto index = c.integer(0x3ee838);
            if (index == 0 || index == 1) {
                const ReUSize slot = index == 0 ? 0 : 2;
                rows.values[slot] = world_cvttss2si(actual.health);
                rows.maximums[slot] = world_cvttss2si(actual.maximum_health);
            }
            return route_world_draw_2fb72c(actual, c);
        }
        return route_world_draw_2fb72c(d, c);
    }
    auto style = route_world_draw_scalars_2fb72c(d, c);
    const Address e = d.record.entity;
    const auto flags = [&]() { return category_read<ReU16>(im, e + 0x1d8, 0x3004b8); };
    if (cat == 12) {
        const auto f = flags();
        style.label = "Drone";
        style.world = style.world && (f & 0x180) != 0;
        style.chams = style.chams && (f & 0x180) != 0;
        if (f & 0x200)
            rows.rows[2] = "ALERT";
        return style;
    }
    if (cat == 17) {
        if (c.boolean(0x3e7568) && (flags() & 2))
            rows.rows[2] = "On";
        return style;
    }
    if (cat == 86) {
        const float raw = category_read<float>(im, e + 0x3f0, 0x304e73);
        if (raw > 0 && c.option(0x3f0658, 4)) {
            style.world = style.radar = style.chams = false;
            return style;
        }
        if (!c.boolean(0x3e8eb8))
            return style;
        const auto count = world_cvttss2si(raw);
        const auto days = count / 1440;
        // [C] Native signed magic divisions are /60 and /1440, both toward zero.
        const auto hours = count / 60 - days * 24, minutes = count - (count / 60) * 60;
        const auto timer = "[" + re::re_to_string(days) + "D " + re::re_to_string(hours) + "H " +
                           re::re_to_string(minutes) + "M]";
        rows.tooltip_title = "Tool Cupboard";
        rows.tooltip_body = timer;
        if (style.world) {
            const float value = category_read<float>(im, e + 0x2cc, 0x3051a9),
                        maximum = category_read<float>(im, e + 0x2d0, 0x3051b2);
            const int slot = c.option(0x3f0658, 1) ? 2 : c.option(0x3f0658, 0) ? 0 : -1;
            if (slot >= 0) {
                rows.values[ReUSize(slot)] = world_cvttss2si(value);
                rows.maximums[ReUSize(slot)] = world_cvttss2si(maximum);
            }
            if (c.option(0x3f0658, 2))
                rows.rows[2] = timer;
        }
        if (c.option(0x3f0658, 3)) {
            const auto network = category_read<Address>(im, e + 0x48, 0x30527c);
            if (sample_pointer_range(network))
                rows.rows[3] =
                    re::re_to_string(category_read<ReI32>(im, network + 0x38, 0x30528c));
        }
        return style;
    }
    if (cat == 49 || cat == 66) {
        if (c.boolean(cat == 49 ? 0x3e8ff8 : 0x3e7e78) && c.boolean(0x3e41f8))
            effects.emit({0x30674d, e, d.local_entity, d.position, 2, false, (flags() & 8) != 0});
        return style;
    }
    if (cat == 76)
        return style;
    if (cat == 75 || cat == 85) {
        if (!style.world)
            return style;
        const float value = category_read<float>(im, e + 0x2cc, 0x301ca7);
        const float maximum = category_read<float>(im, e + 0x2d0, 0x301cb0);
        const Rva options = cat == 75 ? 0x3f05c8 : 0x3f0418;
        const int index = c.option(options, 1) ? 2 : c.option(options, 0) ? 0 : -1;
        if (index >= 0) {
            rows.values[ReUSize(index)] = world_cvttss2si(value);
            rows.maximums[ReUSize(index)] = world_cvttss2si(maximum);
        }
        return style;
    }
    if (cat == 84) {
        style.label = "Sam";
        if (!(c.boolean(0x3e87d8) || c.boolean(0x3ea588)))
            return style;
        const auto f = category_read<ReU32>(im, e + 0x1d8, 0x366bc0);
        const auto mask = category_read<ReU32>(im, e + 0x47c, 0x366bdd);
        const bool defender = (f & mask) == mask;
        const bool on =
            category_read<ReU8>(im, e + 0x440, 0x366c12) != 0 || (f & 0x10000) == 0x10000;
        if (!style.world)
            return style;
        const float value = category_read<float>(im, e + 0x2cc, 0x3021f9),
                    maximum = category_read<float>(im, e + 0x2d0, 0x302202);
        if (c.option(0x3f0388, 4) && defender)
            style.world = false;
        if (c.option(0x3f0388, 3))
            style.world = style.world && on;
        const int slot = c.option(0x3f0388, 1) ? 2 : c.option(0x3f0388, 0) ? 0 : -1;
        if (slot >= 0) {
            rows.values[ReUSize(slot)] = world_cvttss2si(value);
            rows.maximums[ReUSize(slot)] = world_cvttss2si(maximum);
        }
        if (c.option(0x3f0388, 2)) {
            rows.rows[2] = on ? "[On]" : "[Off]";
            if (defender)
                rows.rows[3] = "[Defender]";
        }
        return style;
    }
    if (cat == 50) {
        style.label = "LockedCrate";
        if (!c.boolean(0x3e90e8))
            return style;
        const auto f = flags();
        if ((f & 0x100) && c.boolean(0x3e41f8))
            effects.emit({0x2ff788, e, d.local_entity, d.position, 2, false, (f & 8) != 0});
        const auto timer = crate_timer_366a60(im, e);
        if (!timer)
            { __builtin_trap(); }
        if (style.world) {
            if (f & 0x100)
                rows.rows[1] = "[Hacked]";
            else if (f & 0x80)
                rows.rows[1] = "[" + *timer + "]";
        }
        rows.tooltip_title = "Locked Crate";
        rows.tooltip_body = rows.rows[1];
        return style;
    }
    if (cat == 16 || cat == 22) {
        const bool on = c.boolean(cat == 16 ? 0x3e91d8 : 0x3e9228);
        style.label = cat == 16 ? "HeliCrate" : "BradleyCrate";
        if (on) {
            const auto f = flags();
            rows.on_fire_icon = (f & 4) != 0;
            if (f & 4)
                rows.rows[2] = cat == 16 ? "[OnFire]" : "OnFire";
            if (c.boolean(0x3e41f8))
                effects.emit(
                    {0x30674d, e, d.local_entity, d.position, 2, (f & 4) != 0, (f & 8) != 0});
        }
        return style;
    }
    // [C] Patrol-helicopter linked objects +0x2e8 -> +0x20/+0x28; values +0x24, maxima +0x20.
    style.label = "Helicopter";
    if (!c.boolean(0x3e91d8)) {
        effects.helicopter_3d72b8 = 0;
        return style;
    }
    const auto object = category_read<Address>(im, e + 0x2e8, 0x3007aa);
    if (!sample_pointer_range(object))
        return style;
    const auto second = category_read<Address>(im, object + 0x28, 0x3007c1);
    if (!sample_pointer_range(second))
        return style;
    const auto first = category_read<Address>(im, object + 0x20, 0x3007d5);
    if (!sample_pointer_range(first))
        return style;
    const float a = category_read<float>(im, first + 0x24, 0x3007e9),
                z = category_read<float>(im, second + 0x24, 0x3007ef);
    if (d.projected) {
        rows.values[0] = world_cvttss2si(a);
        rows.values[1] = world_cvttss2si(z);
        rows.maximums[0] = world_cvttss2si(category_read<float>(im, first + 0x20, 0x3007fa));
        rows.maximums[1] = world_cvttss2si(category_read<float>(im, second + 0x20, 0x300800));
    }
    effects.helicopter_alert = "HELICOPTER ALERT";
    if (a > 0 || z > 0)
        effects.helicopter_3d72b8 = e;
    else if (!re::re_isnan(a) && !re::re_isnan(z))
        effects.helicopter_3d72b8 = 0;
    return style;
}
} // namespace rust_internal_re
