#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
void require(bool v, re::ReStringView why) {
    if (!v)
        __builtin_trap();
}
re::ReString first_literal(re::ReStringView x) {
    return re::ReString(x.substr(0, x.find('|')));
}
WorldEspConfig zero_config() {
    WorldEspConfig c;
    c.zero_unspecified = true;
    return c;
}
void classifier_tables() {
    re::ReSet<ReU32> categories;
    for (const auto &r : world_classifier_rules_31acd0()) {
        categories.insert(r.category);
        EntityIdentity e{0x1000100, 0, first_literal(r.classes), first_literal(r.prefab_any), 0};
        auto c = zero_config();
        for (const auto key : r.any_config)
            if (key)
                c.booleans[key] = true;
        if (r.all_config)
            c.booleans[r.all_config] = true;
        if (r.berry_option >= 0)
            c.vector_booleans[{0x3f00b8, ReUSize(r.berry_option)}] = true;
        c.booleans[0x3e79c8] = true;
        c.vector_booleans[{0x3f04a8, 16}] = true;
        const auto records = classify_world_31acd0(e, c);
        require(re::re_any_of(records.begin(), records.end(),
                            [&](const auto &x) {
                                return x.category == r.category && x.site == r.site &&
                                       x.label == r.label;
                            }),
                "every classifier table rule produces literal category/site/label");
        if (!r.classes.empty()) {
            e.class_name = "unrelated";
            const auto negative = classify_world_31acd0(e, c);
            require(re::re_none_of(negative.begin(), negative.end(),
                                 [&](const auto &x) { return x.category == r.category; }),
                    "each class hash gate rejects unrelated class");
        }
    }
    require(categories.size() == 100 && world_classifier_rules_31acd0().size() == 102,
            "100 classifier IDs, 102 label rules");
    auto c = zero_config();
    c.booleans[0x3e7978] = true;
    EntityIdentity e{0x1000100, 0, "OreResourceEntity", "stone", 0};
    require(classify_world_31acd0(e, c).empty(), "NodePath alone does not enter ore outer gate");
    c.booleans[0x3e7a68] = true;
    require(classify_world_31acd0(e, c).size() == 1, "NodePath inside outer gate enables stone");
    e.prefab_name = "assets/bundled/prefabs/radtown/ore_stone.prefab";
    require(classify_world_31acd0(e, c).empty(), "radtown ore excluded");
    c = zero_config();
    c.booleans[0x3e6fc8] = true;
    c.booleans[0x3e6f78] = true;
    e.class_name = "Bike";
    e.prefab_name = "pedalbike_pedaltrike_motorbike_sidecar_motorbike.prefab";
    auto v = classify_world_31acd0(e, c);
    require(v.size() == 2 && v[0].label == "PedalBike" && v[1].label == "MotorBike Sidecar",
            "bike subtype priorities and independent pedal/motor branches");
    e.class_name = "CollectableEasterEgg";
    e.prefab_name = "collectableegg";
    c = zero_config();
    c.vector_booleans[{0x3f00b8, 6}] = true;
    v = classify_world_31acd0(e, c);
    require(v.size() == 1 && v[0].category == 32, "egg replaces candy category");
    e.prefab_name = "halloween";
    v = classify_world_31acd0(e, c);
    require(v.size() == 1 && v[0].category == 31, "candy default category");
    e.class_name = "CCTV_RC";
    c = zero_config();
    c.booleans[0x3e6ca8] = true;
    v = classify_world_31acd0(e, c);
    require(v.size() == 1 && v[0].category == 9, "decoded immediate-only CCTV class");
}
void insertion_and_nearest() {
    WorldEspRecords out;
    WorldRecordValidation v{false, true, true, true, false, false, 0};
    WorldEspRecord r{0x1000100, 1, "StoneOre", 0x31b606};
    require(insert_world_record_3176bc(out, r, v, {}), "world insertion");
    r.category = 122;
    r.label = "changed";
    WorldRecordValidation invalid{};
    require(!insert_world_record_3176bc(out, r, invalid, {}), "duplicate lookup before validator");
    require(out.world.front().category == 1 && out.world.front().label == "StoneOre",
            "duplicate retains original category/label");
    v.entity_valid = false;
    v.restore_collider_enabled = true;
    v.collider_marked = true;
    v.stored_collider = 0x1000500;
    r.entity = 0x1000200;
    bool restore = false;
    require(!insert_world_record_3176bc(
                out, r, v,
                [&](Address p, bool enabled) { restore = p == v.stored_collider && !enabled; }) &&
                restore,
            "failed world validator restores marked collider");
    require(!insert_player_record_3177b4(out, {r.entity, 1}, v), "invalid player record rejected");
    v.entity_valid = true;
    require(insert_player_record_3177b4(out, {r.entity, 1}, v), "player insertion");
    require(!insert_player_record_3177b4(out, {r.entity, 0}, v) &&
                out.players.front().category_byte == 1,
            "first player category wins duplicate");
    re::ReArray<NearestWorldCandidate, 3> objects{};
    for (ReUSize i = 0; i < objects.size(); ++i) {
        auto &x = objects[i];
        x.identity = {0x1000100 + i * 0x100, 0, "CodeLock", "", 0};
        x.pointer_valid = true;
        x.distance_3666b0 = 2.1f + float(i) * 0.2f;
    }
    require(nearest_world_object(0x2f8db0, objects, true) == objects[2].identity.entity,
            "truncated integer ties prefer later entity");
    objects[2].word_1d8 = 0x10;
    require(nearest_world_object(0x2f8db0, objects, true) == objects[1].identity.entity,
            "lock exact word 0x10 excluded");
    objects[2].word_1d8 = 0;
    objects[2].distance_3666b0 = re::ReNumericLimits<float>::quiet_NaN();
    require(nearest_world_object(0x2f8db0, objects, true) == objects[2].identity.entity,
            "CVTTSS2SI unordered indefinite INT_MIN retained");
    for (auto &x : objects) {
        x.entity_valid = x.model_valid = true;
        x.player_record_byte = 0;
        x.bone_53 = {1, 2, 3};
        x.distance_3666b0 = 10;
    }
    objects[0].preferred_36a0e0 = true;
    objects[1].distance_3666b0 = 1;
    require(nearest_world_object(0x2f94ac, objects, true) == objects[0].identity.entity,
            "first preferred candidate within truncated 75 overrides nearest");
    objects[0].friend_record = true;
    require(nearest_world_object(0x2f94ac, objects, true) == objects[1].identity.entity,
            "friend rejected and strict player distance tie retained");
}
void collider_and_cache() {
    constexpr Address base = 0x1000000, entity = base + 0x100, collider = base + 0x2000;
    Snapshot im(base, re::ReVector<ReByte>(0x3000));
    auto c = zero_config();
    c.booleans[0x3e9818] = true;
    EntityIdentity e{entity, 0, "SimpleBuildingBlock", "external.high.stone.prefab", 0};
    WorldClassifierFrame f{};
    WorldClassifierState s;
    WorldClassifierBackend b;
    re::ReVector<WorldEspRecord> records;
    Vec3 size{};
    int creations = 0, restores = 0;
    float bounds_center = 16;
    b.bounds_query_3664cc = [&](Address) {
        WorldBoundsData v{};
        v.words[4] = bounds_center;
        v.words[7] = 2;
        v.words[8] = 3;
        v.words[9] = 4;
        v.words[13] = 1;
        v.words[17] = 1;
        v.words[12] = 1;
        return re::ReOptional<WorldBoundsData>(v);
    };
    b.box_collider_370508_372efc = [&](Address) {
        ++creations;
        return re::ReOptional<Address>(collider);
    };
    b.set_box_size_370968 = [&](Address p, Vec3 x) {
        require(p == collider, "collider target");
        size = x;
    };
    b.set_collider_enabled_375d30 = [&](Address p, bool enabled) {
        require(p == collider && !enabled, "native restoration passes false");
        ++restores;
    };
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(creations == 1 && size.x == 4 && size.y == 10.5f &&
                re::re_fabsf(size.z - 5.4f) < 0.00001f && records.size() == 1 &&
                records[0].category == 77,
            "stone collider scales and XDWALL insertion");
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(creations == 1, "active collider suppresses repeated creation");
    bounds_center = 17;
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(restores == 1 && !s.collider_active_3e61f0[entity],
            "strict collider distance restores at equality");
    e.class_name = "PlayerCorpse";
    c.booleans[0x3ef601] = true;
    bounds_center = 4;
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(size.x == 4 && size.y == 6 && size.z == 8, "corpse bounds doubles all axes");
    c.booleans[0x3e9818] = false;
    c.booleans[0x3ef601] = false;
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(!s.collider_active_3e61f0[entity], "disabled shared collider gate restores");
    e.class_name = "TreeEntity";
    s.tree_3e4248 = 123;
    f.nearest_tree_2f96f4 = entity;
    c.booleans[0x3e5278] = true;
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(s.tree_3e4248 == entity, "nearest tree publish");
    c.booleans[0x3e5278] = false;
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(s.tree_3e4248 == 0, "disabled nearest side effect clears");
    e.class_name = "SamSite";
    c.booleans[0x3e87d8] = c.booleans[0x3e8828] = true;
    require(im.write(entity + 0x48, base + 0x200) && im.write(base + 0x238, ReU32(42)),
            "SAM fixture writes");
    int saves = 0, notes = 0;
    b.world_seed_317bec = []() { return re::ReOptional<ReU32>(77); };
    b.position_3747d4 = [](Address) { return re::ReOptional<Vec3>({1, 2, 3}); };
    b.persist_sam_2dc1a0 = [&]() { ++saves; };
    b.notification_37f918 = [&](re::ReStringView text) {
        require(text == "Successfully saved sam", "SAM literal notification");
        ++notes;
    };
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    classifier_side_effects_31acd0(im, e, c, f, s, b, records);
    require(s.sam_218780.size() == 1 && saves == 1 && notes == 1 &&
                s.sam_218780[0].network_id == 42,
            "SAM cache network ID dedup/persist/notification");
}
void full_classifier_order() {
    constexpr Address base = 0x1200000, e = base + 0x100;
    Snapshot im(base, re::ReVector<ReByte>(0x2000));
    require(im.write(e + 0x708, ReU32(0)) && im.write(e + 0x2c0, ReU8(0)) &&
                im.write(e + 0x54, ReU32(1)) && im.write(e + 0x350, Address(0)),
            "player controller fixture");
    EntityIdentity identity{e, 0, "ScientistNPC2", "npc", 6};
    auto c = zero_config();
    c.booleans[0x3e7428] = true;
    c.integers[0x3d8198] = 6;
    WorldClassifierRun run{};
    run.camera_valid = run.local_valid = true;
    run.local_entity = base + 0x1800;
    run.validations[e] = {false, true, true, true, false, false, 0};
    WorldClassifierState state;
    WorldClassifierBackend backend;
    int bones = 0;
    backend.bone53_368be8 = [&](Address entity) {
        require(entity == e, "controller bone entity");
        ++bones;
        return re::ReOptional<Vec3>({3, 0, 4});
    };
    WorldEspRecords records;
    const re::ReArray<EntityIdentity, 1> identities{identity};
    replay_classifier_31acd0(im, identities, c, run, state, backend, records);
    require(bones == 2 && records.players.size() == 1 && records.players[0].category_byte == 1 &&
                records.tracked.size() == 1,
            "ScientistNPC2 wins insertion before selected-player append; root tracked independent");
    identity.class_name = "BasePlayer";
    identity.entity = e + 0x900;
    require(im.write(identity.entity + 0x708, ReU32(0)) &&
                im.write(identity.entity + 0x2c0, ReU8(0)) &&
                im.write(identity.entity + 0x54, ReU32(0xf4e1d514)) &&
                im.write(identity.entity + 0x350, Address(0)),
            "second player fields");
    run.validations[identity.entity] = {false, true, true, true, false, false, 0};
    const re::ReArray<EntityIdentity, 1> other{identity};
    replay_classifier_31acd0(im, other, c, run, state, backend, records);
    require(records.tracked.size() == 2 && records.players.size() == 1 && bones == 2,
            "tracked insertion precedes disabled player ESP; no distance callback on rejected "
            "selection");
}
void category_snapshot_data() {
    constexpr Address base = 0x1400000, e = base + 0x100, a = base + 0x1000, z = base + 0x1200,
                      text = base + 0x1500;
    Snapshot im(base, re::ReVector<ReByte>(0x3000));
    const auto put = [&](Address p, auto value) {
        require(im.write(p, value), "category snapshot fixture write");
    };
    auto c = zero_config();
    WorldDrawData d{};
    d.record = {e, 12, "Drone", 0};
    d.projected = true;
    d.local_entity = base + 0x2800;
    c.booleans[0x3e99f8] = true;
    put(e + 0x1d8, ReU16(0x200));
    WorldLabelRows rows;
    WorldLocalEffects effects;
    auto style = decode_world_category_2fb72c(im, d, c, rows, effects);
    require(!style.world && rows.rows[2] == "ALERT",
            "drone alert bit independent of visible 0x180 mask");
    put(e + 0x1d8, ReU16(0x280));
    rows = {};
    style = decode_world_category_2fb72c(im, d, c, rows, effects);
    require(style.world && style.label == "Drone", "drone mask enables world label");
    d.record.category = 50;
    c.booleans[0x3e90e8] = c.booleans[0x3e41f8] = true;
    put(e + 0x1d8, ReU16(0x108));
    put(e + 0x418, a);
    put(a + 0xe0, text);
    put(text + 0x14, char16_t('1'));
    put(text + 0x16, char16_t(0x100));
    put(text + 0x18, char16_t('2'));
    put(text + 0x1a, char16_t(0));
    const auto timer = crate_timer_366a60(im, e);
    require(timer && timer->size() == 3 && (*timer)[1] == 0 && (*timer)[2] == '2',
            "crate wide timer copies low bytes and preserves embedded converted NUL");
    rows = {};
    style = decode_world_category_2fb72c(im, d, c, rows, effects);
    require(style.label == "LockedCrate" && rows.rows[1] == "[Hacked]" &&
                effects.interactions.size() == 1 && !effects.interactions[0].argument_20 &&
                effects.interactions[0].argument_28,
            "crate hacked status and literal interaction flags");
    d.record.category = 75;
    c.booleans[0x3e8738] = true;
    c.vector_booleans[{0x3f05c8, 1}] = true;
    put(e + 0x2cc, 42.9f);
    put(e + 0x2d0, 100.0f);
    rows = {};
    (void)decode_world_category_2fb72c(im, d, c, rows, effects);
    require(rows.values[2] == 42 && rows.maximums[2] == 100,
            "flame trap text health option uses native truncation");
    d.record.category = 84;
    d.visible_2f81e8 = true;
    c.booleans[0x3e87d8] = true;
    c.vector_booleans[{0x3f0388, 2}] = c.vector_booleans[{0x3f0388, 4}] = true;
    put(e + 0x1d8, ReU32(0x10000));
    put(e + 0x47c, ReU32(0));
    put(e + 0x440, ReU8(0));
    rows = {};
    style = decode_world_category_2fb72c(im, d, c, rows, effects);
    require(!style.world && rows.rows[2] == "[On]" && rows.rows[3] == "[Defender]",
            "SAM zero mask is true; defender filter and status order");
    d.record.category = 15;
    c.booleans[0x3e91d8] = true;
    put(e + 0x2e8, a);
    put(a + 0x20, z);
    put(a + 0x28, z + 0x100);
    put(z + 0x24, 25.9f);
    put(z + 0x20, 100.0f);
    put(z + 0x124, 50.9f);
    put(z + 0x120, 200.0f);
    rows = {};
    style = decode_world_category_2fb72c(im, d, c, rows, effects);
    require(style.label == "Helicopter" && rows.values[0] == 25 && rows.values[1] == 50 &&
                effects.helicopter_3d72b8 == e,
            "linked helicopter health and nearest alert object");
    put(z + 0x24, 0.0f);
    put(z + 0x124, 0.0f);
    (void)decode_world_category_2fb72c(im, d, c, rows, effects);
    require(effects.helicopter_3d72b8 == 0, "both helicopter values nonpositive clear global");
}
void cached_draw_and_save() {
    auto c = zero_config();
    c.booleans[0x3e87d8] = c.booleans[0x3e8828] = true;
    c.integers[0x3eebf8] = 10;
    c.floats[0x3edac8] = 2;
    CachedWorldFrame frame{};
    frame.world_seed = 9;
    frame.local_369fac = true;
    frame.projection_bounds = {0, 0, 800, 600};
    re::ReArray<CachedWorldObject, 2> objects{
        {{0, {3, 0, 4}, 42, 9, "SamSite"}, {0, {3, 0, 4}, 43, 0, "wrong seed"}}};
    WorldDrawBackend b;
    b.ingame_projection_314f08 = [](Vec3) { return Vec2{10, 20}; };
    b.scale_315778 = []() { return 3.0f; };
    b.world_projection_36cd20 = [](Vec3, ProjectionBounds bounds) {
        require(bounds.width == 800 && bounds.height == 600, "four-float cached projection bounds");
        return re::ReOptional<Vec2>({50, 60});
    };
    re::ReVector<WorldDrawCommand> out;
    draw_cached_world_2fc460(objects, true, frame, c, b, out);
    require(out.size() == 4 && re::re_get<WorldTextDraw>(out[1]).text == "5m" &&
                re::re_get<WorldTextDraw>(out[3]).position.y == 73,
            "cached SAM seed filter and fixed prefix label spacing");
    frame.local_369fac = false;
    out.clear();
    draw_cached_world_2fc460(objects, true, frame, c, b, out);
    require(out.empty(), "cached SAM local predicate skips both radar and world labels");
    frame.local_369fac = true;
    c.integers[0x3eebf8] = 5;
    draw_cached_world_2fc460(objects, true, frame, c, b, out);
    require(out.size() == 2, "cached SAM strict local distance limit does not gate in-game marker");
    c.booleans[0x3e8f58] = true;
    c.integers[0x3ee8d8] = 10;
    out.clear();
    draw_cached_world_2fc460(objects, false, frame, c, b, out);
    require(out.size() == 2, "stash local radar disabled still draws world labels");
    c.booleans[0x3e5cb8] = true;
    out.clear();
    draw_cached_world_2fc460(objects, false, frame, c, b, out);
    require(out.empty(), "battle mode suppresses saved stash drawing");
    constexpr Address base = 0x1600000, e = base + 0x100, network = base + 0x1000;
    Snapshot im(base, re::ReVector<ReByte>(0x2000));
    require(im.write(e + 0x48, network) && im.write(network + 0x38, ReU32(77)),
            "looked-at cache fixture");
    EntityIdentity identity{e, 0, "StashContainer", "stash", 0};
    WorldClassifierState state;
    WorldClassifierBackend cb;
    int saves = 0, notes = 0;
    cb.world_seed_317bec = []() { return re::ReOptional<ReU32>(9); };
    cb.position_3747d4 = [](Address) { return re::ReOptional<Vec3>({1, 2, 3}); };
    cb.persist_stash_2dc590 = [&]() { ++saves; };
    cb.notification_37f918 = [&](re::ReStringView text) {
        require(text == "Successfully saved stash", "stash note literal");
        ++notes;
    };
    cache_looked_at_world_2fc2c6(im, identity, c, state, cb);
    cache_looked_at_world_2fc2c6(im, identity, c, state, cb);
    require(state.stash_218768.size() == 1 && saves == 1 && notes == 1,
            "stash ID dedup and persistence occur even while battle mode suppresses drawing");
}
void shader_and_labels() {
    require(world_renderer_selected_306f4c("PatrolHelicopter", 19) &&
                !world_renderer_selected_306f4c("PatrolHelicopter", 20) &&
                !world_renderer_selected_306f4c("RHIB", 3) &&
                world_renderer_selected_306f4c("RHIB", 4) &&
                !world_renderer_selected_306f4c("Tugboat", 2) &&
                world_renderer_selected_306f4c("Tugboat", 3),
            "literal renderer inequalities");
    auto c = zero_config();
    c.integers[0x3ef008] = 2;
    c.colors[0x3ef3d8] = {1, 2, 3, 4};
    c.colors[0x3ef3c8] = {5, 6, 7, 8};
    WorldShaderState state{};
    state.bundles_3e5e88[2] = 0x1003000;
    WorldShaderBackend b;
    re::ReVector<re::ReString> operations;
    int loads = 0;
    b.material_370fac = [](Address r) { return r + 0x100; };
    b.shader_370e84 = [](Address m) { return m + 0x100; };
    b.load_375abc = [&](Address bundle, re::ReStringView key, re::ReStringView type,
                        re::ReStringView ns) {
        require(bundle == 0x1003000 && key == "2" && type == "Shader" && ns == "UnityEngine",
                "literal Unity shader load arguments");
        ++loads;
        return Address(0x1005000);
    };
    b.assign_shader_3710dc = [&](Address, Address shader) {
        require(shader == 0x1005000, "cached shader value");
        operations.push_back("shader");
    };
    b.set_color_370d64 = [&](Address, re::ReStringView key, re::ReArray<float, 4> value) {
        require((key == "_b" && value[0] == 1) || (key == "_a" && value[0] == 5),
                "shader property values");
        operations.emplace_back(key);
    };
    const re::ReArray<Address, 2> renderers{0x1001000, 0x1002000};
    apply_world_chams_306ebe("StoneOre", renderers, c, state, b);
    require(loads == 1 &&
                operations == re::ReVector<re::ReString>{"shader", "_b", "_a", "shader", "_b", "_a"},
            "shader loaded once and assigned before _b then _a for each selected material");
    WorldDrawData d{};
    d.record = {0x1000100, 1, "StoneOre", 0};
    d.screen = {50, 60};
    d.distance = 12;
    WorldDrawStyle style{};
    style.world = true;
    style.label = "StoneOre";
    style.maximum_distance = 100;
    style.color = {1, 1, 1, 1};
    WorldLabelRows rows{};
    rows.rows[1] = "second";
    rows.values = {10, 20, 30};
    rows.maximums = {100, 100, 100};
    re::ReVector<WorldDrawCommand> commands;
    draw_world_label_306752(d, style, rows, c, {100, 100}, commands);
    require(commands.size() == 6 && re::re_get<WorldTextDraw>(commands[1]).position.y == 76 &&
                re::re_get<WorldTextDraw>(commands[2]).text == "12m" &&
                re::re_get<WorldTextDraw>(commands[5]).text == "[30/100]",
            "shared label rows compact spacing, distance and numeric health formatting");
    require(world_screen_gate_317130({100, 100}, {100, 100}) &&
                !world_screen_gate_317130({101, 100}, {100, 100}),
            "shared label screen bounds include maximum edge");
    c.booleans[0x3e71a8] = c.booleans[0x3ea038] = c.booleans[0x3ea128] = c.booleans[0x3e9ef8] =
        true;
    c.integers[0x3d81e8] = 90;
    c.floats[0x3ed938] = 80;
    commands.clear();
    draw_world_overlay_geometry_309994(c, 101, 99, {10, 20}, false, commands);
    require(commands.size() == 9 && re::re_get<WorldCircleDraw>(commands[0]).position.x == 50 &&
                re::re_get<WorldCircleDraw>(commands[0]).position.y == 49 &&
                re::re_get<WorldCircleDraw>(commands[4]).radius == 60 &&
                re::re_get<WorldCircleDraw>(commands[7]).radius == 0,
            "overlay integer center and six native radar circles including zero radius");
}
void bounds_and_coverage() {
    WorldBoundsData box{};
    box.words[7] = box.words[8] = box.words[9] = 1;
    box.words[13] = box.words[17] = box.words[12] = 1;
    const auto near = closest_world_bounds_365f90(box, {4, -3, 2});
    require(near.x == 1 && near.y == -1 && near.z == 1,
            "bounds closest point clamps each observed axis");
    const auto inside = closest_world_bounds_365f90(box, {0.25f, -0.5f, 0.75f});
    require(inside.x == 0.25f && inside.y == -0.5f && inside.z == 0.75f,
            "all-three-inside returns original point");
    WorldClassifierBackend backend;
    backend.bounds_query_3664cc = [&](Address) { return re::ReOptional<WorldBoundsData>(box); };
    const auto distance = entity_bounds_distance_3666b0(0x1000100, {}, backend);
    require(distance && re::re_bit_cast<ReU32>(*distance) ==
                            re::re_bit_cast<ReU32>(sample_sqrt_2e3c88(0)),
            "inside bounds distance preserves sample non-IEEE zero magnitude");
    constexpr re::ReArray<re::RePair<Rva, Rva>, 3> roots{
        {{0x31acd0, 0x31fe4a}, {0x2fb72c, 0x307637}, {0x3098a4, 0x314929}}};
    for (const auto [begin, end] : roots) {
        Rva next = begin;
        for (const auto &r : world_esp_coverage())
            if (r.begin >= begin && r.begin < end) {
                require(r.begin == next && r.end > r.begin, "range ledger is contiguous");
                next = r.end;
            }
        require(next == end, "every native range accounted including late branches");
    }
    auto c = zero_config();
    c.booleans[0x3e9958] = c.booleans[0x3ef481] = true;
    c.vector_booleans[{0x3f06e8, 15}] = true;
    c.booleans[0x3e99a8] = true;
    WorldDrawData d{};
    d.record.category = 57;
    auto action = plan_collectable_interaction_2ff529(d, c);
    require(action && action->mode == 4, "wheat literal collect option15 and autoeat mode4");
    d.record.category = 31;
    c.vector_booleans[{0x3f06e8, 12}] = true;
    action = plan_collectable_interaction_2ff529(d, c);
    require(action && action->mode == 1 && !action->argument_20 && !action->argument_28,
            "candy literal mode1/option12 arguments");
}
void draw_math_and_routes() {
    const float nan = re::ReNumericLimits<float>::quiet_NaN();
    require(vector_inequality_2df5dc({nan, 0, 0}, {nan, 0, 0}) &&
                !vector_inequality_2df5dc({-0.0f, 0, 0}, {}),
            "vector inequality handles NaN and signed zero");
    require(world_cvttss2si(nan) == INT32_MIN && world_cvttss2si(2147483648.0f) == INT32_MIN &&
                world_cvttss2si(-2.9f) == -2,
            "native conversion boundaries");
    require(world_item_font_height_2fd04b(0, 1) == 13 &&
                world_item_font_height_2fd04b(5, 1) == 24 &&
                world_item_font_height_2fd04b(5, 2) == 11,
            "font index retention and override");
    auto c = zero_config();
    WorldDrawData d{};
    d.record = {0x1000100, 1, "StoneOre", 0};
    d.projected = d.visible_2f8180 = true;
    d.distance = 12;
    d.local_entity = 0x1000200;
    c.booleans[0x3e79c8] = c.booleans[0x3e83c8] = c.booleans[0x3ea038] = true;
    c.colors[0x3eb618] = {0.2f, 0.4f, 0.6f, 1};
    c.integers[0x3ee888] = 100;
    c.floats[0x3ed938] = 20;
    c.floats[0x3eda28] = 3;
    auto style = route_world_draw_2fb72c(d, c);
    require(style.world && style.radar && style.maximum_distance == 100, "ore concrete routing");
    c.booleans[0x3e5cb8] = true;
    style = route_world_draw_2fb72c(d, c);
    require(!style.world && !style.radar && !style.chams, "battle option clears all gates");
    c.vector_booleans[{0x3f0538, 0}] = true;
    style = route_world_draw_2fb72c(d, c);
    require(style.world && style.radar, "literal battle option zero");
    re::ReSet<ReU32> routed;
    for (const auto &r : world_draw_routes_2fb72c())
        routed.insert(r.category);
    require(routed.size() == 100 && routed.contains(93) && routed.contains(94) &&
                routed.contains(31) && routed.contains(32),
            "draw arithmetic pair routes included");
    d.position = {0, 0, 0};
    d.local_position = {3, 0, 4};
    WorldDrawBackend b;
    b.yaw_31530c = [&](Address p) {
        require(p == d.local_entity, "radar yaw comes from local entity");
        return 360.0f;
    };
    b.rotate_317b1c = [](Vec2 x, float angle) {
        require(angle == 0, "360 minus local yaw");
        return x;
    };
    re::ReVector<WorldDrawCommand> commands;
    draw_world_radar_305c1e(d, style, c, {100, 200}, {}, b, commands);
    require(commands.size() == 1 && re::re_holds_alternative<WorldCircleDraw>(commands[0]),
            "radar emits literal circle call");
    const auto point = re::re_get<WorldCircleDraw>(commands[0]).position;
    require(re::re_fabsf(point.x - 97) < 0.0001f && re::re_fabsf(point.y - 204) < 0.0001f,
            "normalize/scale/flip radar coordinates");
    c.booleans[0x3e6e38] = true;
    d.map_open = true;
    commands.clear();
    draw_world_radar_305c1e(d, style, c, {}, {}, b, commands);
    require(commands.empty(), "map gate skips 2D radar");
    c.booleans[0x3ea2b8] = true;
    c.floats[0x3edac8] = 2;
    d.ingame_projected = true;
    d.ingame_screen = {20, 30};
    d.camera_position = {0, 0, 5};
    b.scale_315778 = []() { return 3.0f; };
    draw_world_radar_305c1e(d, style, c, {}, {}, b, commands);
    require(commands.size() == 2 && re::re_get<WorldTextDraw>(commands.back()).text == "5m",
            "in-game radar separate map gate and distance label");
    b.measure_38f79c = [](re::ReStringView x) { return Vec2{float(x.size() * 10), 10}; };
    commands.clear();
    draw_world_tooltip_3060ab({98, 98}, {100, 100}, "Long title", "body", true, b, commands);
    require(commands.size() == 4 && re::re_get<WorldRectangleDraw>(commands[0]).min.x == 0 &&
                re::re_get<WorldRectangleDraw>(commands[0]).min.y == 68,
            "tooltip clamps oversized width and bottom edge");
    d.record.category = 50;
    bool stopped = false;
    {
        (void)route_world_draw_2fb72c(d, c);
    }
    require(stopped, "scalar route requires rich Snapshot decoder");
    auto missing = WorldEspConfig{};
    stopped = false;
    {
        (void)missing.boolean(123);
    }
    require(stopped, "missing copied configuration does not default to success");
}
} // namespace
void check_world_esp_extended();
void check_world_esp_output();
void check_world_esp_reconstruction() {
    check_world_esp_output();
    check_world_esp_extended();
    classifier_tables();
    insertion_and_nearest();
    collider_and_cache();
    full_classifier_order();
    category_snapshot_data();
    cached_draw_and_save();
    shader_and_labels();
    bounds_and_coverage();
    draw_math_and_routes();
}
} // namespace rust_internal_re
