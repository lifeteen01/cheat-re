#include "world_esp_analysis.hpp"

namespace rust_internal_re {
namespace {
template <class M, class K> typename M::mapped_type config_read(const M &m, K k, bool zero, Rva r) {
    if (auto it = m.find(k); bool(it))
        return **it;
    if (zero)
        return {};
    { __builtin_trap(); }
}
bool any_literal(re::ReStringView alternatives,
                 const re::ReFunction<bool(re::ReStringView)> &predicate) {
    while (!alternatives.empty()) {
        const auto p = alternatives.find('|');
        if (predicate(alternatives.substr(0, p)))
            return true;
        if (p == re::ReStringView::npos)
            break;
        alternatives.remove_prefix(p + 1);
    }
    return false;
}
re::ReStringView zview(re::ReStringView text) {
    return text.substr(0, text.find('\0'));
}
bool class_is(const EntityIdentity &e, re::ReStringView alternatives) {
    const auto hash = entity_name_hash_2d6354(e.class_name);
    return any_literal(alternatives,
                       [&](re::ReStringView x) { return hash == entity_name_hash_2d6354(x); });
}
bool prefab_has(const EntityIdentity &e, re::ReStringView x) {
    return zview(e.prefab_name).find(x) != re::ReStringView::npos;
}
template <class F> void need(const F &f, Rva site, Rva dep) {
    if (!f)
        { __builtin_trap(); }
}
} // namespace
bool WorldEspConfig::boolean(Rva r) const {
    return config_read(booleans, r, zero_unspecified, r);
}
ReI32 WorldEspConfig::integer(Rva r) const {
    return config_read(integers, r, zero_unspecified, r);
}
float WorldEspConfig::real(Rva r) const {
    return config_read(floats, r, zero_unspecified, r);
}
re::ReArray<float, 4> WorldEspConfig::color(Rva r) const {
    return config_read(colors, r, zero_unspecified, r);
}
bool WorldEspConfig::option(Rva r, ReUSize i) const {
    return config_read(vector_booleans, re::RePair{r, i}, zero_unspecified, r);
}
ReI32 world_cvttss2si(float f) {
    if (!(f >= -2147483648.0f && f < 2147483648.0f))
        return INT32_MIN;
    return ReI32(f);
}
bool vector_inequality_2df5dc(Vec3 a, Vec3 b) {
    return a.x != b.x || a.y != b.y || a.z != b.z;
}

re::ReVector<WorldEspRecord> classify_world_31acd0(const EntityIdentity &e,
                                                  const WorldEspConfig &c) {
    re::ReVector<WorldEspRecord> out;
    for (const auto &r : world_classifier_rules_31acd0()) {
        if (!r.classes.empty() && !class_is(e, r.classes))
            continue;
        if (!r.prefab_any.empty() &&
            !any_literal(r.prefab_any, [&](re::ReStringView x) { return prefab_has(e, x); }))
            continue;
        if (!r.prefab_excluded.empty() && prefab_has(e, r.prefab_excluded))
            continue;
        bool enabled = r.any_config[0] == 0;
        for (Rva x : r.any_config)
            if (x && c.boolean(x)) {
                enabled = true;
                break;
            }
        if (!enabled || (r.all_config && !c.boolean(r.all_config)))
            continue;
        if (r.berry_option >= 0 && !c.option(0x3f00b8, ReUSize(r.berry_option)))
            continue;
        using E = WorldClassifierRule::Extra;
        switch (r.extra) {
        case E::ore_outer:
            // [C] NodePath is absent from the OUTER gate, 0x31b481..0x31b4a3.
            if (!(c.boolean(0x3e79c8) || c.boolean(0x3e7a68) || c.boolean(0x3e7b08) ||
                  c.boolean(0x3e7a18)))
                continue;
            break;
        case E::dud:
            if (!c.option(0x3f04a8, 16))
                continue;
            break;
        case E::pedal_trike:
            if (prefab_has(e, "pedalbike"))
                continue;
            break;
        case E::motor:
            if (prefab_has(e, "motorbike_sidecar"))
                continue;
            break;
        case E::workbench3:
            if (prefab_has(e, "workbench2"))
                continue;
            break;
        case E::candy:
            if (prefab_has(e, "collectableegg"))
                continue;
            break;
        case E::sam_uncached:
            if (c.boolean(0x3e8828))
                continue;
            break;
        default:
            break;
        }
        out.push_back({e.entity, r.category, re::ReString(r.label), r.site});
    }
    return out;
}

// [C] 0x3176bc and 0x3177b4 search entity keys BEFORE invoking validators.
// [I] Owning vectors replace the native container allocator, preserving existing record contents.
bool insert_world_record_3176bc(WorldEspRecords &out, WorldEspRecord r, WorldRecordValidation &v,
                                const re::ReFunction<void(Address, bool)> &restore) {
    if (re::re_any_of(out.world.begin(), out.world.end(),
                    [&](const auto &x) { return x.entity == r.entity; }))
        return false;
    if (v.blocked || !v.camera_valid || !v.local_valid || r.entity == 0)
        return false;
    if (!v.entity_valid) {
        if (v.restore_collider_enabled && v.collider_marked &&
            sample_pointer_range(v.stored_collider)) {
            need(restore, 0x321461, 0x375d30);
            restore(v.stored_collider, false);
            v.collider_marked = false;
        }
        return false;
    }
    out.world.push_back(re::re_move(r));
    return true;
}
bool insert_player_record_3177b4(WorldEspRecords &out, WorldEspPlayerRecord r,
                                 const WorldRecordValidation &v) {
    if (re::re_any_of(out.players.begin(), out.players.end(),
                    [&](const auto &x) { return x.entity == r.entity; }))
        return false;
    if (v.blocked || !v.camera_valid || !v.local_valid || r.entity == 0 || !v.entity_valid)
        return false;
    out.players.push_back(r);
    return true;
}

static void classifier_side_effects_ordered(const Snapshot &im, const EntityIdentity &e,
                                            const WorldEspConfig &c, const WorldClassifierFrame &f,
                                            WorldClassifierState &s, WorldClassifierBackend &b,
                                            const re::ReFunction<void(Rva)> &before,
                                            const re::ReFunction<void(WorldEspRecord)> &append) {
    before(0x31b001);
    const auto assign_nearest = [&](bool on, re::ReStringView cl, Address candidate,
                                    Address &value) {
        if (!on)
            value = 0;
        else if (class_is(e, cl) && sample_pointer_range(candidate) && candidate == e.entity)
            value = e.entity;
    };
    assign_nearest(c.boolean(0x3d7f18) || c.boolean(0x3d8241) || c.boolean(0x3e7978),
                   "OreResourceEntity", f.nearest_ore_2f9138, s.ore_3d72c8);
    assign_nearest(c.boolean(0x3e5278), "TreeEntity", f.nearest_tree_2f96f4, s.tree_3e4248);
    assign_nearest(c.boolean(0x3e9db8), "CodeLock|DigitSendCodeLock", f.nearest_lock_2f8db0,
                   s.lock_3e5f00);
    assign_nearest(c.boolean(0x3ef5a1), "CodeLock|DigitSendCodeLock", f.nearest_lock_2f8f74,
                   s.lock_3e5f08);
    before(0x31e04e);
    const bool nohit = c.boolean(0x3e9818), corpse = c.boolean(0x3ef601);
    const auto restore = [&](re::ReMap<Address, Address> &map) {
        const Address collider = map[e.entity];
        if (sample_pointer_range(collider)) {
            need(b.set_collider_enabled_375d30, 0x31e0a3, 0x375d30);
            b.set_collider_enabled_375d30(collider, false);
            s.collider_active_3e61f0[e.entity] = false;
        }
    };
    const auto restore_both = [&]() {
        if (s.collider_active_3e61f0[e.entity]) {
            restore(s.collider_3e6170);
            restore(s.collider_3e61b0);
        }
    };
    const auto distance = [&](Rva site) {
        auto d = entity_bounds_distance_3666b0(e.entity, f.local_position_369164, b);
        if (!d)
            { __builtin_trap(); }
        return *d;
    };
    const auto create = [&](Vec3 multiplier, re::ReOptional<float> fixed_y, bool fixed,
                            re::ReMap<Address, Address> &map, ReU32 category,
                            re::ReStringView label, Rva site) {
        Vec3 size = multiplier;
        if (!fixed) {
            need(b.bounds_query_3664cc, site, 0x3664cc);
            const auto bounds = b.bounds_query_3664cc(e.entity);
            if (!bounds)
                { __builtin_trap(); }
            const auto ext = bounds->extents();
            size = {ext.x * multiplier.x, ext.y * multiplier.y, ext.z * multiplier.z};
            if (fixed_y)
                size.y = *fixed_y;
        }
        need(b.box_collider_370508_372efc, site, 0x372efc);
        const auto collider = b.box_collider_370508_372efc(e.entity);
        if (!collider || !sample_pointer_range(*collider))
            return;
        need(b.set_box_size_370968, site, 0x370968);
        b.set_box_size_370968(*collider, size);
        map[e.entity] = *collider;
        s.collider_active_3e61f0[e.entity] = true;
        if (category)
            append({e.entity, category, re::ReString(label), site});
    };
    if (!nohit && !corpse)
        restore_both();
    else {
        if (class_is(e, "FlameTurret") && c.real(0x3ed708) == 14.0f && !c.boolean(0x3e9548)) {
            if (nohit && !f.local_dead_3693b0) {
                if (distance(0x31e16c) < 10.0f) {
                    if (!s.collider_active_3e61f0[e.entity])
                        create({2, 4, 2}, {}, false, s.collider_3e6170, 75, "FlameTurret",
                               0x31e2d9);
                } else if (s.collider_active_3e61f0[e.entity])
                    restore(s.collider_3e6170);
            } else
                restore_both();
        }
        if (class_is(e, "SimpleBuildingBlock")) {
            if (nohit && !f.local_dead_3693b0) {
                if (distance(0x31e422) < 15.0f) {
                    if (!s.collider_active_3e61f0[e.entity]) {
                        if (prefab_has(e, "external.high.stone.prefab") ||
                            prefab_has(e, "wall.external.high.adobe"))
                            create({2, 3.5f, 1.35f}, {}, false, s.collider_3e6170, 77, "XDWALL",
                                   0x31e5e7);
                        if (prefab_has(e, "external.high.wood.prefab"))
                            create({2.2f, 3.75f, 1.9f}, {}, false, s.collider_3e6170, 78, "XDWALL2",
                                   0x31e762);
                    }
                } else if (s.collider_active_3e61f0[e.entity])
                    restore(s.collider_3e6170);
            } else
                restore_both();
        }
        if (class_is(e, "Barricade")) {
            if (nohit && !f.local_dead_3693b0) {
                if (distance(0x31e899) < 15.0f) {
                    if (!s.collider_active_3e61f0[e.entity] &&
                        (prefab_has(e, "barricade.woodwire") ||
                         prefab_has(e, "barricade.metal.prefab")))
                        create({3.4f, 4.8f, 2.3f}, {}, true, s.collider_3e61b0, 0, "", 0x31e9c7);
                } else if (s.collider_active_3e61f0[e.entity])
                    restore(s.collider_3e61b0);
            } else
                restore_both();
        }
        if (class_is(e, "Landmine")) {
            if (nohit && !f.local_dead_3693b0) {
                if (distance(0x31eb16) < 15.0f) {
                    if (!s.collider_active_3e61f0[e.entity])
                        create({2, 1, 2}, 1.5f, false, s.collider_3e61b0, 0, "", 0x31ec0a);
                } else if (s.collider_active_3e61f0[e.entity])
                    restore(s.collider_3e61b0);
            } else
                restore_both();
        }
        if (class_is(e, "PlayerCorpse")) {
            if (corpse && !f.local_dead_3693b0) {
                if (distance(0x31ed5f) < 10.0f) {
                    if (!s.collider_active_3e61f0[e.entity])
                        create({2, 2, 2}, {}, false, s.collider_3e61b0, 0, "", 0x31ee60);
                } else if (s.collider_active_3e61f0[e.entity])
                    restore(s.collider_3e61b0);
            } else
                restore_both();
        }
    }
    before(0x31f010);
    if ((c.boolean(0x3e87d8) || c.boolean(0x3ea588)) && class_is(e, "SamSite") &&
        c.boolean(0x3e8828)) {
        const auto net = im.read<Address>(e.entity + 0x48);
        if (!net || !sample_pointer_range(*net))
            return;
        const auto id = im.read<ReU32>(*net + 0x38);
        if (!id)
            { __builtin_trap(); }
        if (re::re_any_of(s.sam_218780.begin(), s.sam_218780.end(),
                        [&](const auto &x) { return x.network_id == *id; }))
            return;
        need(b.world_seed_317bec, 0x31f12d, 0x317bec);
        const auto seed = b.world_seed_317bec();
        if (!seed)
            return;
        need(b.position_3747d4, 0x31f13d, 0x3747d4);
        const auto position = b.position_3747d4(e.entity);
        if (!position)
            return;
        s.sam_218780.push_back({e.entity, *position, *id, *seed, "SamSite"});
        need(b.persist_sam_2dc1a0, 0x31f1aa, 0x2dc1a0);
        b.persist_sam_2dc1a0();
        need(b.notification_37f918, 0x31f1ec, 0x37f918);
        b.notification_37f918("Successfully saved sam");
    }
}

void classifier_side_effects_31acd0(const Snapshot &im, const EntityIdentity &e,
                                    const WorldEspConfig &c, const WorldClassifierFrame &f,
                                    WorldClassifierState &s, WorldClassifierBackend &b,
                                    re::ReVector<WorldEspRecord> &records) {
    classifier_side_effects_ordered(
        im, e, c, f, s, b, [](Rva) {},
        [&](WorldEspRecord record) { records.push_back(re::re_move(record)); });
}

void replay_classifier_31acd0(const Snapshot &im, re::ReSpan<const EntityIdentity> entities,
                              const WorldEspConfig &c, WorldClassifierRun &run,
                              WorldClassifierState &state, WorldClassifierBackend &b,
                              WorldEspRecords &records) {
    if (run.blocked || !run.camera_valid || !run.local_valid)
        return;
    const auto validation = [&](Address e) -> WorldRecordValidation & {
        auto it = run.validations.find(e);
        if (!it)
            { __builtin_trap(); }
        return **it;
    };
    const auto player_append = [&](Address e, ReU8 byte,
                                   re::ReVector<WorldEspPlayerRecord> &target) {
        if (re::re_any_of(target.begin(), target.end(), [&](const auto &x) { return x.entity == e; }))
            return;
        const auto &v = validation(e);
        if (!v.blocked && v.camera_valid && v.local_valid && e && v.entity_valid)
            target.push_back({e, byte});
    };
    const auto bone_distance = [&](Address e, Rva site) {
        need(b.bone53_368be8, site, 0x368be8);
        const auto bone = b.bone53_368be8(e);
        if (!bone)
            { __builtin_trap(); }
        return length(run.camera_position - *bone);
    };
    for (const auto &e : entities) {
        auto plans = classify_world_31acd0(e, c);
        re::re_sort(plans.begin(), plans.end(),
                         [](const auto &a, const auto &z) { return a.site < z.site; });
        const auto append = [&](WorldEspRecord plan) {
            if (re::re_any_of(records.world.begin(), records.world.end(),
                            [&](const auto &x) { return x.entity == plan.entity; }))
                return;
            insert_world_record_3176bc(records, re::re_move(plan), validation(e.entity),
                                       b.set_collider_enabled_375d30);
        };
        ReUSize next = 0;
        const auto before = [&](Rva site) {
            while (next < plans.size() && plans[next].site < site)
                append(re::re_move(plans[next++]));
        };
        classifier_side_effects_ordered(im, e, c, run.nearest, state, b, before, append);
        before(0x31fa76);
        if (class_is(e, "ScientistNPC2")) {
            const float distance = bone_distance(e.entity, 0x31fab3);
            if (float(c.integer(0x3d8198)) >= distance)
                player_append(e.entity, 1, records.players);
        }
        if (e.tag != 6 || e.entity == run.local_entity)
            continue;
        if (!c.boolean(0x3d7f68))
            state.melee_3d72c0 = 0;
        else if (sample_pointer_range(run.nearest.nearest_other_2f94ac)) {
            need(b.preferred_36a0e0, 0x31fb33, 0x36a0e0);
            if (b.preferred_36a0e0(e.entity)) {
                // [C] This result is discarded by the native branch.
                if (!entity_bounds_distance_3666b0(e.entity, run.nearest.local_position_369164, b))
                    __builtin_trap();
            }
            if (run.nearest.nearest_other_2f94ac == e.entity)
                state.melee_3d72c0 = e.entity;
        }
        player_append(e.entity, 0, records.tracked); // [C] root+0 container, 0x31787c.
        auto fields = read_player_state_31fb93(im, e.entity);
        if (!fields)
            { __builtin_trap(); }
        PlayerSelectionInput p{};
        p.tag = e.tag;
        p.state = *fields;
        p.record_kind = run.player_record_kind[e.entity];
        p.show_players = c.boolean(0x3e7248);
        p.show_npcs = c.boolean(0x3e7428);
        p.show_wounded = c.boolean(0x3e7838);
        p.show_safe_zone = c.boolean(0x3e7658);
        p.show_sleepers = c.boolean(0x3e7338);
        p.show_dead = c.boolean(0x3e73d8);
        p.show_team = c.boolean(0x3e9b88);
        p.show_enemy = c.boolean(0x3ea178);
        p.enemy_options = {c.option(0x3f0778, 0), c.option(0x3f0778, 1)};
        p.player_maximum_distance = c.integer(0x3d8148);
        p.npc_maximum_distance = c.integer(0x3d8198);
        p.distance = re::ReNumericLimits<
            float>::quiet_NaN(); // [I] defer native distance gate until other filters pass.
        if (select_player_31acd0(p) != PlayerRejection::none)
            continue;
        p.distance = bone_distance(e.entity, 0x31fda3);
        if (select_player_31acd0(p) == PlayerRejection::none)
            player_append(e.entity, 0, records.players);
    }
}

Address nearest_world_object(Rva helper, re::ReSpan<const NearestWorldCandidate> objects,
                             bool enabled, const WorldEspConfig *config) {
    if (!enabled)
        return 0;
    if (helper != 0x2f8db0 && helper != 0x2f8f74 && helper != 0x2f96f4 && helper != 0x2f9138 &&
        helper != 0x2f94ac)
        { __builtin_trap(); }
    Address result = 0, preferred = 0;
    ReI32 best = 0;
    float best_player = 9999;
    for (const auto &x : objects) {
        if (!x.pointer_valid)
            continue;
        if (helper == 0x2f94ac) {
            if (x.player_record_byte || !x.entity_valid ||
                !vector_inequality_2df5dc(x.bone_53, {}) || !x.model_valid || x.sleeping ||
                x.dead || x.wounded || x.friend_record)
                continue;
            const auto d = world_cvttss2si(x.distance_3666b0);
            if (x.preferred_36a0e0 && 75.0f > float(d) && !preferred) {
                preferred = x.identity.entity;
                continue;
            }
            if (best_player > float(d)) {
                result = x.identity.entity;
                best_player = float(d);
            }
            continue;
        }
        const bool tree = helper == 0x2f96f4, ore = helper == 0x2f9138;
        if (!class_is(x.identity, tree  ? "TreeEntity"
                                  : ore ? "OreResourceEntity"
                                        : "CodeLock|DigitSendCodeLock"))
            continue;
        if (helper == 0x2f8db0 && x.word_1d8 == 0x10)
            continue;
        if (helper == 0x2f8f74 && x.byte_298 != 0)
            continue;
        if (tree && !x.transform_valid)
            continue;
        if (ore) {
            if (!config)
                { __builtin_trap(); }
            const bool stone = prefab_has(x.identity, "stone"),
                       sulfur = prefab_has(x.identity, "sulfur"),
                       metal = prefab_has(x.identity, "metal");
            if (!stone && !sulfur && !metal)
                continue;
            if ((stone && !config->boolean(0x3e79c8)) || (sulfur && !config->boolean(0x3e7b08)) ||
                (metal && !config->boolean(0x3e7a68)))
                continue;
            if (prefab_has(x.identity, "assets/bundled/prefabs/radtown/ore_stone.prefab") ||
                prefab_has(x.identity, "assets/bundled/prefabs/radtown/ore_metal.prefab") ||
                prefab_has(x.identity, "assets/bundled/prefabs/radtown/ore_sulfur.prefab"))
                continue;
        }
        const auto d = world_cvttss2si(x.distance_3666b0);
        if (result == 0 || d <= best) {
            result = x.identity.entity;
            best = d;
        }
    }
    return preferred ? preferred : result;
}
} // namespace rust_internal_re
