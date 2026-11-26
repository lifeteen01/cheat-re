#include "world_esp_analysis.hpp"
namespace rust_internal_re {
Vec2 draw_world_sign_status_30b6b3(const Snapshot &im, const re::ReOptional<WorldSignInput> &looked,
                                   Vec2 at, const WorldEspConfig &c, WorldDrawOutput out) {
    const auto text = [&](Rva site, re::ReString value) {
        out.emplace_back(WorldTextDraw{site, at, re::re_move(value), {1, 0, 0, 1}, 2});
        at.y += 16;
    };
    if (c.boolean(0x3e9fe8) && looked && sample_pointer_range(looked->identity.entity)) {
        const auto hash = entity_name_hash_2d6354(looked->identity.class_name);
        if (hash == entity_name_hash_2d6354("PhotoFrame") && looked->component_name_37361c) {
            const auto &name = *looked->component_name_37361c;
            int width = 0, height = 0;
            if (name.find("large") != re::ReString::npos ||
                name.find("landscape") != re::ReString::npos) {
                width = 320;
                height = 240;
            }
            if (name.find("portrait") != re::ReString::npos) {
                width = 320;
                height = 384;
            }
            text(0x30b995,
                 "PhotoFrame must be " + re::re_to_string(width) + "x" + re::re_to_string(height));
        }
        if (hash == entity_name_hash_2d6354("NeonSign") ||
            hash == entity_name_hash_2d6354("Signage")) {
            const auto width = im.read<ReI32>(looked->identity.entity + 0x388),
                       height = im.read<ReI32>(looked->identity.entity + 0x38c);
            if (!width || !height)
                { __builtin_trap(); }
            text(0x30bb3c,
                 "Sign must be " + re::re_to_string(*width) + "x" + re::re_to_string(*height));
        }
    }
    if (c.boolean(0x3efa81) && c.integer(0x3efa7c) == 1)
        text(0x30bc20, "Flyhack");
    if (c.boolean(0x3ef601) && c.integer(0x3ef5fc) == 1)
        text(0x30bcd1, "LTW");
    return at;
}
Vec2 draw_world_authorization_status_30bce7(Vec2 at, const re::ReOptional<re::ReString> &found_code,
                                            const WorldEspConfig &c, WorldDrawOutput out) {
    const auto text = [&](Rva site, re::ReString value, float step = 16) {
        out.emplace_back(WorldTextDraw{site, at, re::re_move(value), {1, 0, 0, 1}, 2});
        at.y += step;
    };
    if (c.boolean(0x3ef5a1) && c.integer(0x3ef598) != 0 && c.integer(0x3ef59c) == 1)
        text(0x30bd8f, "Auto Auth");
    if (c.boolean(0x3d82a1) && c.integer(0x3d829c) == 1)
        text(0x30be3d, "Interactive");
    if (c.boolean(0x3e9598)) {
        if (c.boolean(0x3e5de4)) {
            if (!found_code)
                { __builtin_trap(); }
            text(0x30bf84, "Code : " + *found_code);
        } else
            text(0x30bf84, "Failed Attempts : " + re::re_to_string(c.integer(0x3e5de8)));
    }
    if (c.boolean(0x3ef841) && c.boolean(0x3efa81))
        text(0x30c031, "Noclip  Collision");
    if (c.boolean(0x3efae1) && c.integer(0x3efadc) == 1)
        text(0x30c0e2, "Spider", 18);
    if (c.boolean(0x3e5e71))
        text(0x30c190, "Debugging");
    if (c.boolean(0x3ef541) && c.integer(0x3ef53c) == 1)
        text(0x30c23d, "Resetting Crafting");
    return at;
}
} // namespace rust_internal_re
