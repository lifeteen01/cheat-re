#include "world_esp_analysis.hpp"
namespace rust_internal_re {
Vec2 draw_world_looking_alert_310832(const WorldLookingData &d, Vec2 at, const WorldEspConfig &c,
                                     WorldDrawOutput out) {
    if (!c.boolean(0x3e9548) || d.npc || d.sleeping || d.wounded || d.dead || d.friend_record ||
        !d.looking_36a320 || d.name.empty())
        return at;
    auto message = d.name + (d.aiming_369f6c ? " IS AIMING AT YOU " : " IS LOOKING AT YOU ");
    if (!d.held_name.empty())
        message += "WITH " + d.held_name;
    out.emplace_back(WorldTextDraw{0x310a74, at, message, c.color(0x3ea718), 2});
    at.y += 16;
    return at;
}
bool replay_world_friend_keys_31236d(const WorldFriendKeyInput &d, const WorldEspConfig &c,
                                     WorldOverlayTailState &s, WorldPlayerBackend &b,
                                     const re::ReFunction<bool(ReI32, bool)> &key_2e8910) {
    if (!b.draw.world_projection_36cd20)
        { __builtin_trap(); }
    const auto at = b.draw.world_projection_36cd20(d.position, d.projection_bounds);
    if (!at || !world_screen_gate_317130(*at, d.viewport))
        return false;
    if (!sample_pointer_range(d.target) || !d.target_valid || d.dead || d.npc ||
        d.target != d.entity)
        return true;
    if (!key_2e8910)
        { __builtin_trap(); }
    if (key_2e8910(c.integer(0x3ef898), true) && c.boolean(0x3e9b88)) {
        auto &kind = s.registry_3d7260[d.identifier_text].kind;
        if (kind == 1)
            kind = 0;
        else if (kind == 0)
            kind = 1;
    }
    if (key_2e8910(c.integer(0x3ef718), true) && c.boolean(0x3ea178)) {
        auto &kind = s.registry_3d7260[d.identifier_text].kind;
        if (kind == 2)
            kind = 0;
        else if (kind == 0)
            kind = 2;
    }
    return true;
}
void draw_world_player_view_313020(const WorldPlayerViewData &d, const WorldEspConfig &c,
                                   WorldPlayerBackend &b, WorldDrawOutput out) {
    if (d.dead || d.sleeping || d.flag_100)
        return;
    if (c.boolean(0x3e7ab8) && sample_pointer_range(d.target) && d.target_valid &&
        d.target == d.entity) {
        if (!b.draw.world_projection_36cd20)
            { __builtin_trap(); }
        if (const auto at =
                b.draw.world_projection_36cd20(d.head_53_offset_02, d.projection_bounds))
            out.emplace_back(WorldLineDraw{0x313116, d.half_screen, *at, c.color(0x3ec8d8), 1.25f});
    }
    if (!c.boolean(0x3e7888))
        return;
    if (!b.bone_368be8)
        { __builtin_trap(); }
    const auto origin = b.bone_368be8(d.entity, 53);
    if (!origin)
        { __builtin_trap(); }
    const auto endpoint = *origin + rotate_world_vector_320db4({0, 0, 1}, d.rotation);
    if (!b.draw.world_projection_36cd20)
        { __builtin_trap(); }
    const auto to = b.draw.world_projection_36cd20(endpoint, d.projection_bounds);
    if (!to)
        return;
    const auto from = b.draw.world_projection_36cd20(*origin, d.projection_bounds);
    if (!from)
        return;
    out.emplace_back(
        WorldLineDraw{0x313297, {from->x + 1, from->y}, {to->x + 1, to->y}, d.color, 1.25f});
    out.emplace_back(
        WorldLineDraw{0x313303, {from->x, from->y + 1}, {to->x, to->y + 1}, d.color, 1.25f});
    out.emplace_back(WorldLineDraw{0x313365, *from, *to, d.color, 1.25f});
}
} // namespace rust_internal_re
