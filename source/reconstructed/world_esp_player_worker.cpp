#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T player_read(const Snapshot &im, Address p, Rva site) {
    const auto v = im.read<T>(p);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
template <class F> void player_need(const F &f, Rva site, Rva target) {
    if (!f)
        { __builtin_trap(); }
}
re::ReString player_name(const Snapshot &im, Address e, bool npc, const WorldEspConfig &c,
                        WorldNameState &names, WorldNameBackend &rng) {
    if (npc)
        return "Scientist";
    const auto pointer = player_read<Address>(im, e + 0x338, 0x3690a9);
    if (!sample_pointer_range(pointer) || !sample_pointer_range(pointer + 0x14))
        return {};
    const auto wide = read_utf16z_snapshot(im, pointer + 0x14);
    if (!wide)
        { __builtin_trap(); }
    auto value = encode_world_name_393c38(*wide);
    if (!value.empty() && c.boolean(0x3fc4c8))
        value = streamer_world_name_3661ac(value, names, rng);
    return value;
}
re::ReString identifier_text(const Snapshot &im, Address e) {
    const auto pointer = player_read<Address>(im, e + 0x640, 0x369e98);
    if (!sample_pointer_range(pointer))
        return {};
    const auto words = read_utf16z_snapshot(im, pointer + 0x14);
    if (!words)
        { __builtin_trap(); }
    re::ReString out;
    for (auto word : *words)
        out.push_back(char(ReU8(word)));
    return out;
}
WorldHeldName npc_held(const Snapshot &im, Address e) {
    WorldHeldName held;
    const auto list = player_read<Address>(im, e + 0x90, 0x3100f1);
    if (!sample_pointer_range(list))
        return held;
    if (player_read<ReI32>(im, list + 0x18, 0x310100) <= 0)
        return held;
    const auto array = player_read<Address>(im, list + 0x10, 0x310106);
    if (!sample_pointer_range(array))
        return held;
    const auto item = player_read<Address>(im, array + 0x20, 0x310116);
    if (!sample_pointer_range(item))
        return held;
    held.identifier = player_read<ReU32>(im, item + 0x54, 0x310127);
    held.name = world_item_name_316574(held.identifier);
    return held;
}
} // namespace
// [C/I]30ea17..3141bb player-record controller; registry/config/widget layouts are owned copied inputs.
void replay_world_player_overlay_30ea17(const Snapshot &im,
                                        re::ReSpan<const WorldEspPlayerRecord> records,
                                        const WorldEspConfig &c, const WorldPlayerFrame &f,
                                        WorldPlayerRunState &s, WorldPlayerRunBackend &b,
                                        WorldDrawOutput out) {
    s.handcuffs.clear();
    s.tooltip_drawn = false;
    auto overlay = b.overlay;
    overlay.draw = b.player.draw;
    for (const auto &record : records) {
        const auto e = record.entity;
        if (!sample_pointer_range(e))
            continue;
        player_need(b.entity_valid_2e0e9c, 0x30eacd, 0x2e0e9c);
        if (!b.entity_valid_2e0e9c(e))
            continue;
        if (c.boolean(0x3e98b8) && record.category_byte == 0) {
            const auto distance = entity_bounds_distance_3666b0(e, f.local_position, b.game);
            if (!distance)
                __builtin_trap();
            const auto flags = player_read<ReU32>(im, e + 0x708, 0x30eb26);
            if ((flags & 0x10000000) && 2.8f >= *distance)
                s.handcuffs.push_back({e, true, (flags & 0x40) != 0, true, *distance});
        }
        player_need(b.player.bone_368be8, 0x30eb5f, 0x368be8);
        const auto bone = [&](int id, Rva site) {
            const auto v = b.player.bone_368be8(e, id);
            if (!v)
                { __builtin_trap(); }
            return *v;
        };
        const auto foot = bone(7, 0x30eb5f) + Vec3{0, -0.9f, 0},
                   head = bone(53, 0x30eba2) + Vec3{0, 0.2f, 0};
        if (!vector_inequality_2df5dc(foot, {}) || !vector_inequality_2df5dc(head, {}))
            continue;
        player_need(b.component_transform_315a54, 0x30ec1e, 0x315a54);
        const auto transform = b.component_transform_315a54(e);
        if (!sample_pointer_range(transform))
            continue;
        player_need(b.game.position_3747d4, 0x30ec40, 0x3747d4);
        const auto position = b.game.position_3747d4(transform);
        if (!position)
            continue;
        auto quad = world_facing_quad_30ec65(*position, f.camera_position);
        player_need(b.player.draw.world_projection_36cd20, 0x30ff01, 0x36cd20);
        const auto project_quad = [&](float top) -> re::ReOptional<re::ReArray<Vec2, 4>> {
            auto corners = quad.corners;
            corners[0].y = corners[3].y = top;
            re::ReArray<Vec2, 4> screen{};
            for (ReUSize i = 0; i < 4; ++i) {
                const auto at =
                    b.player.draw.world_projection_36cd20(corners[i], f.projection_bounds);
                if (!at)
                    return {};
                screen[i] = *at;
            }
            return screen;
        };
        if (record.category_byte != 0) {
            if (!c.boolean(0x3e7428))
                continue;
            const float health = player_read<float>(im, e + 0x2cc, 0x30ee8c);
            if (0 >= health)
                continue;
            const float distance = length(f.camera_position - quad.center);
            if (!(float(c.integer(0x3d8198)) >= distance))
                continue;
            const auto color = c.color(0x3ec818);
            const auto npc_head = bone(47, 0x30eee5) + Vec3{0, 0.2f, 0};
            if (c.boolean(0x3e7ab8) && sample_pointer_range(f.target_2e02b0) && f.target_valid &&
                f.target_2e02b0 == e) {
                const auto at =
                    b.player.draw.world_projection_36cd20(bone(47, 0x30ef6a), f.projection_bounds);
                if (at)
                    out.emplace_back(
                        WorldLineDraw{0x30f00c, f.half_screen, *at, c.color(0x3ec8d8), 1.25f});
            }
            (void)draw_world_skeleton_30f089_31336a(e, true, f.projection_bounds, color, c,
                                                    b.player, out);
            const auto screen = project_quad(npc_head.y);
            if (!screen)
                continue;
            WorldHeldName held;
            if (c.boolean(0x3e76a8))
                held = npc_held(im, e);
            WorldPlayerLabelData data{};
            data.npc = data.special_npc = true;
            data.name = "Scientist";
            data.held_name = held.name;
            data.distance = distance;
            const auto texts = world_player_label_texts_31265f(data, c);
            if (!f.npc_labels && !b.prepare_npc_labels)
                { __builtin_trap(); }
            const auto icon =
                c.boolean(0x3e76f8) ? re::ReOptional<ReU32>(held.identifier) : re::re_nullopt;
            auto labels = b.prepare_npc_labels
                              ? b.prepare_npc_labels(texts, icon)
                              : prepare_copied_world_labels(*f.npc_labels, texts, icon);
            if (c.boolean(0x3e9d18))
                draw_world_corner_box_37b724(*screen, color, c.real(0x402d68), out);
            WorldPlayerLabelState counters;
            for (const auto &label : labels)
                (void)draw_world_player_label_37bc98(*screen, label, color, c, counters, b.player,
                                                     out);
            const Vec2 bottom{((*screen)[1].x + (*screen)[2].x) / 2,
                              ((*screen)[1].y + (*screen)[2].y) / 2};
            const float y =
                (float(counters.counters_3e5cc8[4]) * 16 + (bottom.y + c.real(0x3ed7a8))) + 4;
            out.emplace_back(WorldBarDraw{0x310695, world_cvttss2si(bottom.x - (16 * 2.31f) * 0.5f),
                                          world_cvttss2si(y), world_cvttss2si(16 * 2.31f),
                                          world_cvttss2si(16 * 0.38f), health,
                                          player_read<float>(im, e + 0x2d0, 0x310672)});
            continue;
        }
        const auto fields = read_player_state_31fb93(im, e);
        if (!fields)
            { __builtin_trap(); }
        const auto &p = *fields;
        if ((p.wounded && !c.boolean(0x3e7838)) || (p.safe_zone && !c.boolean(0x3e7658)) ||
            !c.boolean(p.npc ? 0x3e7428 : 0x3e7248))
            continue;
        const auto id = identifier_text(im, e);
        const auto kind = s.tail.registry_3d7260[id].kind;
        re::ReOptional<WorldHeldName> held;
        re::ReOptional<re::ReString> name;
        const auto get_name = [&]() -> const re::ReString & {
            if (!name)
                name = player_name(im, e, p.npc, c, s.names, b.names);
            return *name;
        };
        const auto get_held = [&]() -> const WorldHeldName & {
            if (!held) {
                player_need(b.held_name_368a84_37154c_372398, 0x3108e4, 0x368a84);
                held = b.held_name_368a84_37154c_372398(e);
            }
            return *held;
        };
        if (c.boolean(0x3e9548) && !p.npc && !(p.flags & 0x10) && !(p.flags & 0x40) && !p.dead &&
            kind != 1) {
            player_need(b.looking_36a320, 0x310885, 0x36a320);
            if (b.looking_36a320(e) && !get_name().empty()) {
                player_need(b.aiming_369f6c, 0x310946, 0x369f6c);
                s.warning_cursor = draw_world_looking_alert_310832({false, false, false, false,
                                                                    false, true, b.aiming_369f6c(e),
                                                                    get_name(), get_held().name},
                                                                   s.warning_cursor, c, out);
            }
        }
        WorldPlayerInputs input{ReU32(kind), length(f.camera_position - foot), {}, {}};
        const bool early_rejected =
            (p.dead && !(c.boolean(0x3e73d8) || (kind == 2 && c.option(0x3f0778, 1)))) ||
            (p.sleeping && !(c.boolean(0x3e7338) || (kind == 2 && c.option(0x3f0778, 0)))) ||
            (kind == 1 && !c.boolean(0x3e9b88)) || (kind == 2 && !c.boolean(0x3ea178));
        if (early_rejected)
            continue;
        if (kind != 1 && c.boolean(0x3e9f48)) {
            player_need(b.visible_36b244, 0x310bc6, 0x36b244);
            input.visible_36b244 = b.visible_36b244(e);
        }
        if (kind != 1 && !p.npc && c.boolean(0x3e7298) &&
            !(c.boolean(0x3e9f48) && c.boolean(0x3e78d8) &&
              !input.visible_36b244.value_or(false))) {
            player_need(b.outside_36a1a0, 0x310bfd, 0x36a1a0);
            input.outside_36a1a0 = b.outside_36a1a0(e);
        }
        const auto selection = select_world_overlay_player_3106c9(p, input, c);
        if (!selection.selected)
            continue;
        player_need(b.rotation_36920c, 0x310d47, 0x36920c);
        const auto rotation = b.rotation_36920c(e);
        const float yaw = 0; // queried inside the marker body only when its projection succeeds.
        draw_world_ingame_player_310d4c(
            {e, p.npc, foot, f.mouse, f.viewport, input.distance, yaw, selection.color}, c,
            b.player.draw, b.inventory, s.tooltip_drawn, out);
        if (c.boolean(0x3e6e38) && f.map_open)
            continue;
        draw_world_player_radar_311ce4({foot, f.camera_position, f.camera_yaw, input.distance,
                                        rotation, f.viewport, f.radar_position, f.projection_bounds,
                                        f.map_open, (p.flags & 0x100) != 0},
                                       selection, c, overlay, out);
        if (!replay_world_friend_keys_31236d({e, f.friend_target_314bb4, f.friend_target_valid,
                                              p.dead, p.npc, foot, f.viewport, f.projection_bounds,
                                              id},
                                             c, s.tail, b.player, b.key_2e8910))
            continue;
        if (const auto screen = project_quad(head.y)) {
            WorldPlayerLabelData data{};
            data.npc = p.npc;
            data.dead = p.dead;
            data.friend_record = selection.friend_record;
            data.outside = selection.outside;
            data.flag_100 = (p.flags & 0x10) && (p.flags & 0x100);
            data.wounded = (p.flags & 0x40) != 0;
            data.model_wounded = (p.model_state_flags & 0x1000) != 0;
            data.distance = input.distance;
            if (c.boolean(0x3e7798) || c.boolean(0x3e7748))
                data.name = get_name();
            if (c.boolean(0x3e76a8) && !p.dead)
                data.held_name = get_held().name;
            const auto texts = world_player_label_texts_31265f(data, c);
            if (!f.player_labels && !b.prepare_player_labels)
                __builtin_trap();
            const auto icon = held ? re::ReOptional<ReU32>(held->identifier) : re::re_nullopt;
            auto labels = b.prepare_player_labels
                              ? b.prepare_player_labels(texts, icon)
                              : prepare_copied_world_labels(*f.player_labels, texts, icon);
            if (c.boolean(0x3e9d18) && !(p.flags & 0x10))
                draw_world_corner_box_37b724(*screen, selection.color, c.real(0x402d68), out);
            WorldPlayerLabelState counters;
            for (const auto &label : labels)
                (void)draw_world_player_label_37bc98(*screen, label, selection.color, c, counters,
                                                     b.player, out);
        }
        draw_world_player_view_313020({e, f.target_2e02b0, f.target_valid, p.dead, p.sleeping,
                                       (p.flags & 0x100) != 0, head, f.half_screen,
                                       f.projection_bounds, rotation, selection.color},
                                      c, b.player, out);
        (void)draw_world_skeleton_30f089_31336a(e, false, f.projection_bounds, selection.color, c,
                                                b.player, out);
    }
}
} // namespace rust_internal_re
