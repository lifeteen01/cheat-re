#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T dropped_read(const Snapshot &im, Address p, Rva site) {
    const auto value = im.read<T>(p);
    if (!value)
        { __builtin_trap(); }
    return *value;
}
re::ReString dropped_wide(const Snapshot &im, Address p, Rva site) {
    const auto wide = read_utf16z_snapshot(im, p + 0x14);
    if (!wide)
        { __builtin_trap(); }
    re::ReString out;
    for (char16_t c : *wide)
        out.push_back(char(ReU8(c)));
    return out;
}
re::ReStringView nul_view(re::ReStringView v) {
    return v.substr(0, v.find('\0'));
}
re::ReOptional<ReUSize> category_option(ReU16 v) {
    if (v <= 10)
        return v;
    if (v == 13)
        return 11;
    if (v == 16)
        return 12;
    if (v == 17)
        return 13;
    return {};
}
} // namespace
// [C] 366724/366758/36679c: no invented item ABI; only observed pointer chains.
WorldDroppedItem read_world_dropped_366724_36679c(const Snapshot &im, Address e) {
    WorldDroppedItem out;
    if (!sample_pointer_range(e)) {
        out.amount = -1;
        return out;
    }
    const auto item = dropped_read<Address>(im, e + 0x220, 0x366739);
    if (!sample_pointer_range(item))
        return out;
    out.amount = dropped_read<ReI32>(im, item + 0x30, 0x366750);
    const auto def = dropped_read<Address>(im, item + 0x10, 0x36677b);
    if (!sample_pointer_range(def))
        return out;
    out.category = dropped_read<ReU16>(im, def + 0x58, 0x36678b);
    const auto shortname = dropped_read<Address>(im, def + 0x28, 0x36682b);
    if (!sample_pointer_range(shortname))
        return out;
    out.short_name = dropped_wide(im, shortname, 0x366852);
    if (out.short_name.empty())
        return out;
    if (entity_name_hash_2d6354(out.short_name) == entity_name_hash_2d6354("m16a2")) {
        out.display_name = "M-16";
        return out;
    }
    const auto phrase = dropped_read<Address>(im, def + 0x40, 0x366929);
    if (!sample_pointer_range(phrase))
        return out;
    const auto english = dropped_read<Address>(im, phrase + 0x20, 0x366950);
    if (sample_pointer_range(english))
        out.display_name = dropped_wide(im, english, 0x366977);
    return out;
}
WorldDrawStyle decode_world_dropped_303718(const Snapshot &im, const WorldDrawData &d,
                                           const WorldEspConfig &c, WorldLabelRows &rows,
                                           WorldLocalEffects &effects) {
    if (d.record.category != 71)
        { __builtin_trap(); }
    WorldDrawStyle s;
    s.color = {1, 1, 1, 1};
    s.icon_multiplier = 1;
    s.route = 0x303718;
    const auto item = read_world_dropped_366724_36679c(im, d.record.entity);
    const auto name = nul_view(item.display_name), prefab = nul_view(d.record.label);
    if (name.empty())
        return s;
    if (c.boolean(0x3e9688)) {
        constexpr re::ReArray<re::ReStringView, 8> trash{
            "Rock", "High Velocity Arrow", "Bone Arrow", "Wooden Arrow", "Snowball", "Grub",
            "Worm", "Nailgun Nails"};
        const auto hash = entity_name_hash_2d6354(name);
        for (auto literal : trash)
            if (hash == entity_name_hash_2d6354(literal))
                return s;
        if (prefab.find("seed") != re::ReStringView::npos ||
            prefab.find("torch") != re::ReStringView::npos)
            return s;
    }
    const auto option = category_option(item.category);
    const bool backpack = name.find("Backpack") != re::ReStringView::npos;
    if (c.option(0x3f06e8, 17) && c.boolean(0x3e9958) && c.boolean(0x3ef481)) {
        bool pickup = c.option(0x3f04a8, 15);
        if (!pickup && option)
            pickup = c.option(0x3f04a8, *option) && !(item.category == 4 && backpack);
        if (pickup)
            effects.emit({0x303eeb, d.record.entity, d.local_entity, d.position, 0, false, false});
    }
    if (!d.projected || !(c.boolean(0x3e8e18) || c.boolean(0x3e8e68)))
        return s;
    const auto assign = [&](bool weapon) {
        s.label = item.display_name;
        s.world = true;
        s.maximum_distance = c.integer(weapon ? 0x3ee338 : 0x3ee2e8);
        s.color = c.color(weapon ? 0x3ec2d8 : 0x3ec278);
        s.chams_index = c.integer(0x3ef1e8);
        s.chams = c.boolean(0x3e8af8);
        s.radar = c.boolean(0x3e83c8) || c.boolean(0x3ea2b8);
        s.icon_multiplier = c.real(0x3ed488);
        // [C] 2ea804 copies shared shader parameters; its second integer argument is unused.
        if (item.amount > 1)
            rows.rows[2] = "[" + re::re_to_string(item.amount) + "]";
        if (c.boolean(0x3e5cb8) && !c.option(0x3f0538, 6))
            s.world = s.radar = s.chams = false;
    };
    const bool weapon_enabled = c.boolean(0x3e8e18);
    if (item.category == 0 && weapon_enabled)
        assign(true);
    if (s.world || !c.boolean(0x3e8e68))
        return s;
    bool show = c.option(0x3f04a8, 15);
    if (!show) {
        bool first = option && c.option(0x3f04a8, *option);
        // [C] Native fallback admits category0 if weapon display is enabled, even after battle gates cleared it.
        if (item.category == 0 && weapon_enabled)
            first = true;
        if (item.category == 4 && backpack)
            first = true;
        if (!first)
            return s;
        show = !backpack || c.option(0x3f04a8, 14);
    }
    if (show)
        assign(false);
    return s;
}
} // namespace rust_internal_re
