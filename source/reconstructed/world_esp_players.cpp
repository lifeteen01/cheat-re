#include "world_esp_analysis.hpp"
namespace rust_internal_re {
WorldPlayerSelection select_world_overlay_player_3106c9(const PlayerStateFields &p,
                                                        const WorldPlayerInputs &in,
                                                        const WorldEspConfig &c) {
    WorldPlayerSelection s;
    s.npc = p.npc;
    s.sleeping = p.sleeping;
    s.dead = p.dead;
    const bool wounded = p.wounded;
    if (wounded && !c.boolean(0x3e7838))
        return s;
    if (p.safe_zone && !c.boolean(0x3e7658))
        return s;
    if (!c.boolean(p.npc ? 0x3e7428 : 0x3e7248))
        return s;
    // [C] Team getter2cd32c returns zero. Only registry kind1 can set friend here.
    s.friend_record = in.registry_kind == 1;
    const bool show_sleepers =
        c.boolean(0x3e7338) || (in.registry_kind == 2 && c.option(0x3f0778, 0));
    const bool show_dead = c.boolean(0x3e73d8) || (in.registry_kind == 2 && c.option(0x3f0778, 1));
    if (p.dead && !show_dead)
        return s;
    if (s.sleeping && !show_sleepers)
        return s;
    if (s.friend_record && !c.boolean(0x3e9b88))
        return s;
    if (in.registry_kind == 2 && !c.boolean(0x3ea178))
        return s;
    if (!s.friend_record && c.boolean(0x3e9f48)) {
        if (!in.visible_36b244)
            { __builtin_trap(); }
        s.visible = *in.visible_36b244;
        if (c.boolean(0x3e78d8) && !s.visible)
            return s;
    }
    if (!s.friend_record && c.boolean(0x3e7298) && !p.npc) {
        if (!in.outside_36a1a0)
            { __builtin_trap(); }
        s.outside = *in.outside_36a1a0;
    }
    if (in.distance > float(c.integer(p.npc ? 0x3d8198 : 0x3d8148)))
        return s;
    s.color = c.color(0x3ecab8);
    if (s.visible && c.boolean(0x3e9f48))
        s.color = c.color(0x3ec638);
    if (p.flags & 0x40)
        s.color = c.color(0x3ec698);
    if (p.safe_zone)
        s.color = c.color(0x3ec6f8);
    if (s.sleeping)
        s.color = c.color(0x3ec758);
    if (p.npc)
        s.color = c.color(0x3ec818);
    if (s.friend_record)
        s.color = c.color(0x3ec878);
    if (in.registry_kind == 2)
        s.color = c.color(0x3ec5d8);
    if (p.dead)
        s.color = c.color(0x3ec7b8);
    s.selected = true;
    return s;
}
bool draw_world_skeleton_30f089_31336a(Address entity, bool npc, ProjectionBounds bounds,
                                       re::ReArray<float, 4> color, const WorldEspConfig &c,
                                       WorldPlayerBackend &b, WorldDrawOutput out) {
    if (!c.boolean(0x3e7608))
        return false;
    if (!b.bone_368be8)
        __builtin_trap();
    if (!b.draw.world_projection_36cd20)
        __builtin_trap();
    re::ReArray<Vec2, 19> screen{};
    ReUSize i = 0;
    for (const auto &bone : world_skeleton_bones(npc)) {
        const auto position = b.bone_368be8(entity, bone.bone);
        if (!position)
            { __builtin_trap(); }
        const auto projected = b.draw.world_projection_36cd20(*position, bounds);
        if (!projected)
            return false; // [C] Any failure suppresses all18 segments; no partial skeleton.
        screen[i++] = *projected;
    }
    for (const auto &edge : world_skeleton_edges(npc))
        out.emplace_back(WorldLineDraw{edge.site, screen[edge.first], screen[edge.second], color,
                                       c.real(0x3ed618)});
    return true;
}
WorldFacingQuad world_facing_quad_30ec65(Vec3 position, Vec3 camera) {
    const auto normalized = [](Vec3 v) {
        const float n = length(v);
        return n > 0 ? Vec3{v.x / n, v.y / n, v.z / n} : Vec3{};
    };
    const auto cross = [](Vec3 a, Vec3 z) {
        return Vec3{a.y * z.z - a.z * z.y, a.z * z.x - a.x * z.z, a.x * z.y - a.y * z.x};
    };
    WorldFacingQuad q;
    q.center = position + Vec3{0, 0.9f, 0};
    const Vec3 delta = camera - q.center;
    q.forward = normalized(delta);
    const Vec3 cross_right = cross(Vec3{0, 1, 0}, q.forward);
    q.right = normalized(cross_right);
    const Vec3 cross_up = cross(q.forward, q.right);
    q.up = normalized(cross_up);
    const auto r = q.right * 0.5f, u = q.up * 0.9f;
    q.corners = {q.center + r + u, q.center + r - u, q.center - r - u, q.center - r + u};
    return q;
}
} // namespace rust_internal_re
