#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
void ensure(bool yes, const char *why) {
    if (!yes)
        { /* FREESTANDING_TODO: was throw runtime_error(why) */ }
}
WorldEspConfig zero() {
    WorldEspConfig c;
    c.zero_unspecified = true;
    return c;
}
struct Image {
    static constexpr Address base = 0x2000000, e = base + 0x100, local = base + 0x1000,
                             a = base + 0x2000, z = base + 0x3000;
    Snapshot im{base, re::ReVector<ReByte>(0x10000)};
    template <class T> void put(Address p, T x) {
        ensure(im.write(p, x), "extended fixture write");
    }
    void wide(Address p, re::ReSpan<const char16_t> text) {
        ReUSize i = 0;
        for (char16_t ch : text)
            put(p + 0x14 + 2 * i++, ch);
        put(p + 0x14 + 2 * i, char16_t(0));
    }
};
void names_and_owners() {
    {static const ReU16 w1[]={'A',0x00e9,0x0800};ensure(encode_world_name_393c38(re::ReSpan<const ReU16>(w1,3)) == re::ReString("A\xc3\xa9\xe0\xa0\x80"),
           "per-word UTF8 widths");}
    const re::ReVector<ReU16> surrogate{ReU16(0xd83d), ReU16(0xde00)};
    ensure(encode_world_name_393c38(surrogate) == re::ReString("\xed\xa0\xbd\xed\xb8\x80"),
           "surrogates encoded as separate words");
    {static const ReU16 w2[]={0x0800,'A'};static const ReU16 w3[]={'A','B','C'};ensure(encode_world_name_393c38(re::ReSpan<const ReU16>(w2,2), 3) == "A" &&
               encode_world_name_393c38(re::ReSpan<const ReU16>(w3,3), 1).empty(),
           "capacity skips large encoding while retaining later fitting word");}
    WorldNameState names;
    WorldNameBackend rng;
    int calls = 0;
    rng.random_2e3d5c = [&](float low, float high) {
        ++calls;
        if (calls == 1) {
            ensure(low == 4 && high == 8, "name length range");
            return 4.0f;
        }
        return 0.0f;
    };
    ensure(streamer_world_name_3661ac("owner", names, rng) == "baba" && calls == 6,
           "streamer alternating alphabets");
    ensure(streamer_world_name_3661ac("owner", names, rng) == "baba" && calls == 6,
           "streamer cache retains mapping without RNG");
    Image f;
    f.put(Image::e + 0x348, Image::a);
    f.wide(Image::a, u"Alice");
    f.put(Image::e + 0x370, Image::z);
    f.put(Image::z + 0x20, Image::z + 0x100);
    f.put(Image::z + 0x118, ReI32(1));
    auto c = zero();
    c.booleans[0x3ef601] = true;
    c.colors[0x3ec098] = {1, 0, 0, 1};
    c.colors[0x3ec0f8] = {0, 1, 0, 1};
    WorldDrawData d;
    d.record = {Image::e, 67, "PlayerCorpse", 0};
    d.distance = 9;
    d.projected = true;
    WorldClassifierBackend game;
    game.bounds_query_3664cc = [](Address) {
        WorldBoundsData box;
        box.words[7] = box.words[8] = box.words[9] = 1;
        box.words[13] = box.words[17] = box.words[12] = 1;
        return re::ReOptional(box);
    };
    WorldDrawBackend draw;
    int projections = 0;
    draw.world_projection_36cd20 = [&](Vec3 v, ProjectionBounds) {
        ++projections;
        return re::ReOptional<Vec2>({v.x, v.z});
    };
    WorldLabelRows rows;
    WorldLocalEffects effects;
    auto style =
        decode_world_owner_category_3024e7(f.im, d, c, rows, effects, names, rng, draw, game);
    ensure(effects.drawings.size() == 12 && projections == 8 && style.label == "Corpse [Alice]" &&
               style.color[1] == 1 && !style.world,
           "corpse wireframe independent of display toggle and nonempty inventory color");
    effects = {};
    draw.world_projection_36cd20 = [](Vec3, ProjectionBounds) -> re::ReOptional<Vec2> { return {}; };
    (void)decode_world_owner_category_3024e7(f.im, d, c, rows, effects, names, rng, draw, game);
    ensure(effects.drawings.empty(), "failed corpse projection suppresses wireframe");
    d.record.category = 70;
    f.put(Image::e + 0x2e8, Image::a);
    effects = {};
    style = decode_world_owner_category_3024e7(f.im, d, c, rows, effects, names, rng, draw, game);
    ensure(style.label == "World Backpack [Alice]" && effects.drawings.empty(),
           "backpack separate owner chain");
}
void turret_and_dropped() {
    ensure(world_item_name_316574(0).empty(), "unknown weapon ID empty");
    ensure(world_item_name_316574(0x242e02a) == "Watergun" &&
               world_item_name_316574(0x210e4192) == "Pump Shotgun",
           "literal item IDs");
    Image f;
    auto c = zero();
    WorldDrawData d;
    d.record = {Image::e, 73, "AutoTurret", 0};
    d.projected = true;
    c.booleans[0x3e86e8] = true;
    c.vector_booleans[{0x3f02f8, 0}] = c.vector_booleans[{0x3f02f8, 2}] =
        c.vector_booleans[{0x3f02f8, 3}] = true;
    f.put(Image::e + 0x510, 25.0f);
    f.put(Image::e + 0x1d8, ReU16(0x82));
    f.put(Image::e + 0x3c8, Image::a);
    f.put(Image::a + 0x20, ReI32(0));
    f.put(Image::e + 0x2cc, 42.9f);
    f.put(Image::e + 0x2d0, 100.0f);
    f.put(Image::e + 0x4e0, Image::z);
    WorldDrawBackend draw;
    WorldClassifierBackend game;
    int rays = 0;
    game.transform_position_3747d4 = [](Address p) {
        ensure(p == Image::z, "turret Transform identity");
        return re::ReOptional<Vec3>({1, 2, 3});
    };
    draw.world_projection_36cd20 = [](Vec3 v, ProjectionBounds) {
        return re::ReOptional<Vec2>({v.x, v.z});
    };
    draw.raycast_2e8fac = [&](Vec3 origin, Vec3 direction, float range, ReU32 mask,
                              ReI32 query) {
        ++rays;
        ensure(origin.x == 1 && direction.x == 0 && direction.y == 0 && direction.z == 25 &&
                   range == 25 && mask == 0x40a10000 && query == 0,
               "turret ray literal arguments");
        return WorldRaycastResult{true, {9, 8, 7}};
    };
    WorldLabelRows rows;
    auto style = decode_world_turret_3012f9(f.im, d, c, rows, draw, game);
    ensure(style.world && rows.draw_line && rows.line_to.x == 9 && rows.line_to.y == 7 &&
               rays == 1 && rows.values[2] == 42 && rows.rows[2] == "[Safe]" &&
               rows.rows[3] == "[On]",
           "turret ray projection health/status");
    c.vector_booleans[{0x3f02f8, 6}] = true;
    rows = {};
    style = decode_world_turret_3012f9(f.im, d, c, rows, draw, game);
    ensure(!style.world && !rows.draw_line && rays == 1, "turret flags filter before ray");
    d.record.category = 71;
    d.record.label = "world rifle";
    f.put(Image::e + 0x220, Image::a);
    f.put(Image::a + 0x10, Image::z);
    f.put(Image::a + 0x30, ReI32(3));
    f.put(Image::z + 0x58, ReU16(0));
    f.put(Image::z + 0x28, Image::z + 0x100);
    f.wide(Image::z + 0x100, u"m16a2");
    c = zero();
    c.booleans[0x3e8e18] = true;
    c.booleans[0x3e9958] = c.booleans[0x3ef481] = true;
    c.vector_booleans[{0x3f06e8, 17}] = c.vector_booleans[{0x3f04a8, 0}] = true;
    c.integers[0x3ee338] = 50;
    WorldLocalEffects effects;
    rows = {};
    style = decode_world_dropped_303718(f.im, d, c, rows, effects);
    ensure(style.world && style.label == "M-16" && rows.rows[2] == "[3]" &&
               effects.interactions.size() == 1 && effects.interactions[0].mode == 0,
           "dropped special shortname amount and mode0 pickup");
    // Replace definition/display chains for trash and backpack branches.
    f.wide(Image::z + 0x100, u"rock");
    f.put(Image::z + 0x40, Image::z + 0x200);
    f.put(Image::z + 0x220, Image::z + 0x300);
    f.wide(Image::z + 0x300, u"Rock");
    c.booleans[0x3e9688] = true;
    effects = {};
    style = decode_world_dropped_303718(f.im, d, c, rows, effects);
    ensure(!style.world && effects.interactions.empty(), "trash filter precedes pickup");
    c.booleans[0x3e9688] = false;
    c.booleans[0x3e8e18] = false;
    c.booleans[0x3e8e68] = true;
    f.put(Image::z + 0x58, ReU16(4));
    f.wide(Image::z + 0x300, u"Large Backpack");
    c.vector_booleans[{0x3f04a8, 4}] = true;
    effects = {};
    style = decode_world_dropped_303718(f.im, d, c, rows, effects);
    ensure(!style.world && effects.interactions.empty(),
           "backpack pickup exclusion and separate display option14");
    c.vector_booleans[{0x3f04a8, 14}] = true;
    style = decode_world_dropped_303718(f.im, d, c, rows, effects);
    ensure(style.world, "backpack display option14");
    c.vector_booleans[{0x3f04a8, 15}] = true;
    effects = {};
    style = decode_world_dropped_303718(f.im, d, c, rows, effects);
    ensure(style.world && effects.interactions.size() == 1,
           "all-category option bypasses backpack pickup exclusion");
}
void interactions_fishing_worker() {
    Image f;
    WorldClassifierBackend game;
    WorldBoundsData box;
    box.words[4] = 1;
    box.words[13] = box.words[17] = box.words[12] = 1;
    game.bounds_query_3664cc = [&](Address) { return re::ReOptional(box); };
    WorldInteractionState state;
    WorldInteractionBackend calls;
    int clocks = 0, rpcs = 0;
    calls.time_2e6240 = [&]() { return float(++clocks); };
    calls.rpc_366c30 = [&](Address e, re::ReStringView rpc) {
        ensure(e == Image::e && rpc == "RPC_OpenLoot", "literal interaction RPC");
        ++rpcs;
    };
    WorldInteraction request{0, Image::e, Image::local, {}, 2, false, false};
    ensure(replay_world_interaction_317928(f.im, request, {}, state, calls, game) && clocks == 2 &&
               rpcs == 1 && state.loot_requested_3e40b8,
           "interaction range/two time samples/loot latch");
    request.argument_28 = true;
    ensure(!replay_world_interaction_317928(f.im, request, {}, state, calls, game) && clocks == 4,
           "open flag rejection occurs after cooldown update");
    calls.time_2e6240 = [&]() {
        ++clocks;
        return state.deadline_3f0970;
    };
    ensure(!replay_world_interaction_317928(f.im, request, {}, state, calls, game) && clocks == 5,
           "cooldown equality takes only one time sample");
    box.words[4] = re::ReNumericLimits<float>::quiet_NaN();
    ensure(!replay_world_interaction_317928(f.im, request, {}, state, calls, game) && clocks == 6,
           "unordered closest projections return local point and reach cooldown");
    box.words[4] = 3;
    ensure(!replay_world_interaction_317928(f.im, request, {}, state, calls, game) && clocks == 6,
           "distant bounds fail before time");
    box.words[4] = 1;
    state = {};
    calls.time_2e6240 = [&]() { return float(++clocks); };
    auto c = zero();
    c.booleans[0x3e4108] = true;
    c.booleans[0x3e4158] = true;
    f.put(Image::e + 0x48, Image::a);
    f.put(Image::a + 0x38, ReU32(7));
    f.put(Image::e + 0x338, ReI32(2));
    WorldFishingState fishing;
    WorldFishingFrame frame;
    frame.local = Image::local;
    frame.key96_edge = true;
    frame.looked_at = EntityIdentity{Image::e, 0, "BoxStorage", "box", 0};
    game.position_3747d4 = [](Address) { return re::ReOptional<Vec3>({1, 2, 3}); };
    WorldDrawBackend draw;
    int projections = 0;
    draw.world_projection_36cd20 = [&](Vec3, ProjectionBounds) {
        ++projections;
        return re::ReOptional<Vec2>({20, 30});
    };
    re::ReVector<WorldDrawCommand> out;
    replay_world_fishing_2fb7fc(f.im, c, frame, fishing, state, calls, game, draw, out);
    ensure(fishing.boxes_218820.size() == 1 && out.size() == 1 &&
               re::re_get<WorldTextDraw>(out[0]).text == "Pole/Bait Box (3m)" && projections == 2,
           "fishing key cache and repeated projection label");
    out.clear();
    fishing.throw_position_3e6070 = {1, 0, 0};
    fishing.status_3e60a0 = 8;
    replay_world_fishing_2fb7fc(f.im, c, frame, fishing, state, calls, game, draw, out);
    ensure(fishing.boxes_218820.size() == 1 && out.size() == 3 &&
               re::re_get<WorldTextDraw>(out[1]).text == "No lure.",
           "fishing dedup and throw status");
    WorldWorkerFrame worker;
    worker.local = Image::local;
    worker.camera = Image::local + 0x500;
    worker.viewport = {100, 100};
    worker.local_2f8180 = true;
    WorldWorkerState ws;
    WorldWorkerBackend backend;
    backend.draw = draw;
    backend.game = game;
    backend.entity_valid_2e0e9c = [](Address) { return true; };
    c = zero();
    c.booleans[0x3e79c8] = true;
    c.integers[0x3ee888] = 10;
    const re::ReArray<WorldEspRecord, 1> records{{{Image::e, 1, "StoneOre", 0}}};
    out.clear();
    replay_world_worker_2fb72c(f.im, records, c, worker, ws, backend, out);
    ensure(out.size() == 2 && re::re_get<WorldTextDraw>(out[0]).text == "StoneOre" &&
               re::re_get<WorldTextDraw>(out[1]).text == "3m",
           "whole worker projects/routes/labels entity");
    c.booleans[0x3e6e88] = true;
    c.integers[0x3ee888] = 2;
    out.clear();
    replay_world_worker_2fb72c(f.im, records, c, worker, ws, backend, out);
    ensure(out.empty(), "world label distance rejection also bypasses missing chams backend");
}
void overlay_players() {
    re::ReArray<WorldPlayerLabel, 6> shuffled{{{"Indicator3", "old", 4, 11},
                                              {"HeldEntity", "old", 2, 12},
                                              {"DisplayName", "old", 3, 13},
                                              {"Indicator2", "old", 1, 14},
                                              {"Indicator", "old", 4, 15},
                                              {"Indicator0", "old", 4, 16}}};
    const re::ReArray<re::ReString, 6> texts{"Alice",  "Rifle",   "123m",
                                           "Online", "Outside", "Crawling"};
    const auto prepared = prepare_copied_world_labels(shuffled, texts, 99);
    ensure(prepared[0].key == "Indicator3" && prepared[0].text == "Crawling" &&
               prepared[0].icon_id == 11 && prepared[2].text == "Alice" &&
               prepared[1].icon_id == 99,
           "widget keys updated before original-order draw, other icons preserved");
    ensure(prepare_copied_world_labels(shuffled, texts)[1].icon_id == 12,
           "absent icon update retains copied icon");
    shuffled[2].key = "HeldEntity";
    bool missing = false;
    {
        (void)prepare_copied_world_labels(shuffled, texts);
    }
    ensure(missing, "duplicate key does not replace missing DisplayName");
    auto c = zero();
    WorldOverlayState state;
    WorldOverlayBackend overlay;
    c.booleans[0x3fc608] = true;
    c.integers[0x3fcfa8] = 0;
    re::ReVector<WorldDrawCommand> out;
    draw_world_crosshair_3643b4(50, 60, {1, 1, 1, 1}, c, state, overlay, out);
    ensure(out.size() == 2 && re::re_get<WorldFloatRectangleDraw>(out[0]).position.y == 55 &&
               re::re_get<WorldFloatRectangleDraw>(out[1]).size.x == 11,
           "crosshair type0 literal rectangles");
    c.integers[0x3fcfa8] = 3;
    c.floats[0x3fcb98] = 10;
    c.floats[0x3fcc38] = 2;
    state.rotation_3fdac0 = 91;
    overlay.delta_time_3926ac = []() { return 0.5f; };
    overlay.sin_2e0198 = [](float x) { return re::re_sinf(x); };
    overlay.cos_2dff68 = [](float x) { return re::re_cosf(x); };
    overlay.atan_35cb40 = [](float x) { return re::re_atanf(x); };
    out.clear();
    draw_world_crosshair_3643b4(50, 60, {1, 1, 1, 1}, c, state, overlay, out);
    ensure(out.size() == 8 && state.rotation_3fdac0 == 1,
           "crosshair type3 resets strict>90 then emits four spokes/hooks and advances rotation");
    c = zero();
    c.booleans[0x3e7248] = c.booleans[0x3ea178] = c.booleans[0x3e73d8] = c.booleans[0x3e7838] =
        c.booleans[0x3e7658] = true;
    c.integers[0x3d8148] = 100;
    c.colors[0x3ecab8] = {1, 0, 0, 1};
    c.colors[0x3ec5d8] = {0, 1, 0, 1};
    c.colors[0x3ec7b8] = {0, 0, 1, 1};
    PlayerStateFields p;
    p.dead = true;
    WorldPlayerInputs input;
    input.registry_kind = 2;
    input.distance = 5;
    auto selected = select_world_overlay_player_3106c9(p, input, c);
    ensure(selected.selected && selected.color[2] == 1, "dead color overrides enemy color");
    p.dead = false;
    p.wounded = true;
    p.model_state_flags = 0x1000;
    selected = select_world_overlay_player_3106c9(p, input, c);
    ensure(selected.selected && selected.color[1] == 1,
           "model wounded acceptance does not force wounded-flag color");
    WorldPlayerBackend bones;
    re::ReVector<int> order;
    int projections = 0;
    bones.bone_368be8 = [&](Address, int n) {
        order.push_back(n);
        return re::ReOptional<Vec3>({float(n), 0, 1});
    };
    bones.draw.world_projection_36cd20 = [&](Vec3 v, ProjectionBounds) {
        ++projections;
        return re::ReOptional<Vec2>({v.x, v.z});
    };
    c.booleans[0x3e7608] = true;
    out.clear();
    ensure(draw_world_skeleton_30f089_31336a(Image::e, false, {}, selected.color, c, bones, out) &&
               order.size() == 19 && order[0] == 53 && order[1] == 52 && order.back() == 0 &&
               out.size() == 18,
           "player skeleton exact19 bones/18 edges");
    const auto line = re::re_get<WorldLineDraw>(out[0]);
    ensure(line.from.x == 53 && line.to.x == 52, "skeleton native edge direction");
    bones.draw.world_projection_36cd20 = [&](Vec3, ProjectionBounds) -> re::ReOptional<Vec2> {
        ++projections;
        if (projections == 3)
            return {};
        return Vec2{};
    };
    projections = 0;
    order.clear();
    out.clear();
    ensure(!draw_world_skeleton_30f089_31336a(Image::e, true, {}, selected.color, c, bones, out) &&
               out.empty() && order == re::ReVector<int>{47, 46, 14},
           "NPC skeleton aborts on failed projection before all draws");
    c = zero();
    c.floats[0x3ed7a8] = 3;
    WorldPlayerLabel label{"DisplayName", "Alice", 3, 0};
    WorldPlayerLabelState labels;
    WorldLabelFonts fonts;
    fonts.current_405b28_3c28 = 123;
    fonts.fonts[123] = {8, 1};
    bones.label_fonts = &fonts;
    bones.background_draw_list_392198 = [](WorldLabelFonts &selected) {
        ensure(selected.current_405b28_3c28 == 123, "selected label font");
    };
    bones.measure_font_3a3874 = [&](const WorldFontMeasureRequest &request) {
        ensure(request.font == 123 && request.maximum_width == re::ReNumericLimits<float>::max() &&
                   request.wrap_width == 0 && fonts.fonts[123].scale_64 == 2,
               "label measurement exact font/scale/width/wrap arguments");
        return Vec2{20, request.size};
    };
    const re::ReArray<Vec2, 4> quad{{{10, 10}, {10, 50}, {30, 50}, {30, 10}}};
    auto layout = draw_world_player_label_37bc98(quad, label, {1, 1, 1, 1}, c, labels, bones, out);
    ensure(layout.position.x == 10 && layout.position.y == -9 && labels.counters_3e5cc8[3] == 1,
           "above label centered with spacing and measured height");
    layout = draw_world_player_label_37bc98(quad, label, {1, 1, 1, 1}, c, labels, bones, out);
    ensure(layout.position.y == -25 && fonts.fonts[123].scale_64 == 1 &&
               re::re_get<WorldTextDraw>(out.back()).helper == 0x361bcc &&
               re::re_get<WorldTextDraw>(out.back()).font == 123,
           "same-side stack and native font restoration/text helper");
    out.clear();
    draw_world_corner_box_37b724(quad, {1, 1, 1, 1}, 0.25f, out);
    ensure(out.size() == 8 && re::re_get<WorldLineDraw>(out[0]).to.x == 15,
           "corner box interpolates all8 native edge pieces");
    const auto rotated = rotate_world_vector_320db4({1, 2, 3}, {0, 0, 0, 0});
    ensure(rotated.x == 1 && rotated.y == 2 && rotated.z == 3,
           "zero quaternion rotation is literal identity polynomial");
}

void simulation_tracers_tail() {
    ensure(world_floor_320c2c(2.9f) == 2 && world_floor_320c2c(-2.1f) == -3 &&
               world_floor_320c2c(-0.0f) == 0,
           "literal floor positive/negative/zero");
    WorldDrawBackend draw;
    int rays = 0;
    draw.raycast_2e8fac = [&](Vec3 origin, Vec3 velocity, float distance, ReU32 mask,
                              int query) {
        ensure(mask == 0x1234 && query == 0 && velocity.x == 32,
               "simulation raw velocity/mask/query");
        if (rays++ == 0)
            ensure(origin.x == 0 && distance == sample_sqrt_2e3c88(0),
                   "simulation first ray sample zero distance");
        return WorldRaycastResult{};
    };
    WorldSimulationRequest request;
    request.velocity = {32, 0, 0};
    request.gravity = {0, -32, 0};
    request.duration = 0.0625f;
    request.mask = 0x1234;
    auto result = simulate_world_31885c_3185a0(request, draw);
    ensure(rays == 2 && result.points.size() == 3 && result.position.x == 2 &&
               result.position.y == -0.03125f && result.velocity.y == -2,
           "two-step trajectory uses position before gravity update");
    draw.raycast_2e8fac = [](Vec3, Vec3, float, ReU32, int) {
        return WorldRaycastResult{true, {99, 99, 99}, {0, 1, 0}, 1};
    };
    result = simulate_world_31885c_3185a0(request, draw);
    ensure(result.hit && result.normal.y == 1 && result.position.x == 0 &&
               result.points.size() == 1,
           "simulation stores hit normal and keeps pre-hit path point");
    auto c = zero();
    c.booleans[0x3e9cc8] = true;
    c.floats[0x3ed5c8] = 2;
    re::ReVector<re::ReVector<WorldTracePoint>> traces{{{{1, 2, 3}, 1}, {{2, 2, 3}, 3}},
                                                     {{{9, 9, 9}, 0}}};
    int projected = 0;
    draw.world_projection_36cd20 = [&](Vec3 v, ProjectionBounds) {
        ++projected;
        return re::ReOptional<Vec2>({v.x, v.y});
    };
    re::ReVector<WorldDrawCommand> out;
    draw_world_tracers_30ab62(traces, 3, {}, c, draw, out);
    ensure(traces.size() == 1 && traces[0].size() == 2 && out.size() == 1 && projected == 2,
           "trace lifetime equality retained, expired empty trace erased");
    WorldGridData terrain;
    terrain.size_3743f8.x = 1463;
    terrain.inverse_374370 = {0.001f, 0, 0.001f};
    ensure(world_grid_315518({0, 0, 0}, terrain) == "A9" &&
               world_grid_315518({}, re::re_nullopt) == "No Grid",
           "grid dimensions/inversion/default literal");
    WorldOverlayTailState tail;
    WorldInteractionBackend backend;
    int times = 0;
    re::ReVector<re::ReString> rpc;
    backend.time_2e6240 = [&]() { return float(++times); };
    backend.rpc_366c30 = [&](Address, re::ReStringView name) { rpc.emplace_back(name); };
    c.booleans[0x3e98b8] = true;
    const re::ReArray<WorldHandcuffCandidate, 1> candidate{{{Image::e, true, false, true, 2}}};
    replay_world_handcuff_tail_3141bb(candidate, c, tail, backend, [](Address) { return false; });
    ensure(rpc == re::ReVector<re::ReString>{"RPC_ReqEquipHood", "RPC_ReqForceMountNearest",
                                           "RPC_ReqDoRestrainedPush", "RPC_ReqForceMountNearest"} &&
               tail.index_3f12f8 == 0 && times == 4,
           "handcuff cooldown and ordered RPCs/wrapped index");
    backend.time_2e6240 = [&]() {
        times += 10;
        return float(times);
    };
    WorldRegistryBackend registry;
    registry.terrain_315a24 = [&]() { return re::ReOptional(terrain); };
    registry.visibility_2e2320 = [](Vec3 from, Vec3 to, ReU32 mask, float a, float z) {
        ensure(from.y == to.y + 100 && mask == 0x200000 && a == 0 && z == 0,
               "registry upward line arguments");
        return false;
    };
    re::ReArray<WorldRegistryCandidate, 1> player{
        {{Image::e, true, true, true, false, 42, "42", "Alice", {}}}};
    refresh_world_registry_3143c7(player, Image::local, tail, backend, registry);
    ensure(tail.history_218850.size() == 1 && tail.history_218850[0].grid == "A9 [Inside Base]" &&
               tail.history_218850[0].team == 0,
           "new registry history row with literal team0");
    player[0].name = "Bob";
    refresh_world_registry_3143c7(player, Image::local, tail, backend, registry);
    ensure(tail.history_218850[0].previous_name == "Alice" &&
               tail.history_218850[0].current_name == "Bob" &&
               tail.registry_3d7260["42"].name == "Bob",
           "registry name change preserves preceding name");
    c.integers[0x3eece8] = 1;
    c.booleans[0x3e9ea8] = true;
    c.vector_booleans[{0x3f0268, 1}] = true;
    WorldViolationValues values;
    out.clear();
    (void)draw_world_violation_bars_30c3e0({}, {}, values, c, out);
    ensure(out.size() == 2 && re::re_get<WorldNativeMeterDraw>(out[1]).position.y == 20,
           "violation spacing uses20 loaded unconditionally at30ae3b");
}

void status_windows() {
    auto c = zero();
    c.booleans[0x3e9908] = true;
    WorldOverlayBackend overlay;
    overlay.round_314a68 = [](float value) { return re::re_nearbyintf(value); };
    re::ReVector<WorldDrawCommand> out;
    draw_world_time_30ae1d(7, c, overlay, out);
    ensure(re::re_get<WorldTextDraw>(out.back()).text == "Night : 7.00", "time7 is Night");
    draw_world_time_30ae1d(20, c, overlay, out);
    ensure(re::re_get<WorldTextDraw>(out.back()).text == "Day : 20.00",
           "time20 remains Day at strict thresholds");
    draw_world_time_30ae1d(19.5f, c, overlay, out);
    ensure(re::re_get<WorldTextDraw>(out.back()).text == "Afternoon : 19.50",
           "time19..20 Afternoon and two-digit truncation");
    c.booleans[0x3e9598] = true;
    WorldCodeStatusState state;
    state.times_3e5df0[1] = 1;
    state.counts_3e5e30[1] = 2;
    const re::ReArray<WorldClassifierState::LockCache, 1> lock{{{{1, 0, 0}, 1}}};
    WorldDrawBackend draw;
    draw.world_projection_36cd20 = [](Vec3, ProjectionBounds) {
        return re::ReOptional<Vec2>({50, 60});
    };
    out.clear();
    draw_world_code_status_30a1c3(lock, {}, {}, c, state, draw, []() { return 62.0f; }, out);
    ensure(out.size() == 2 && state.counts_3e5e30[1] == 0 &&
               re::re_get<WorldTextDraw>(out[0]).text == "[Uses Left : 6 Timer :61]" &&
               re::re_get<WorldTextDraw>(out[1]).text == "Damage :15",
           "code expiry resets counter but current-frame labels retain captured count");
    WorldWindowFrame frame;
    frame.busy_218818 = true;
    WorldWindowState windows;
    windows.radar_3efda8 = {100, 200};
    windows.radar_reset_3e5cb9 = true;
    WorldWindowBackend ui;
    re::ReVector<int> conditions;
    re::ReVector<ReUSize> styles;
    int ends = 0;
    ui.position_39b734 = [&](Vec2 at, int condition, Vec2 pivot) {
        ensure(at.x == 80 && at.y == 180 && pivot.x == 0,
               "radar next-window corner and zero pivot");
        conditions.push_back(condition);
    };
    ui.style_392ca4 = [&](ReUSize offset, re::ReArray<float, 4> value) {
        ensure(value[0] == 0, "zeroed window style");
        styles.push_back(offset);
    };
    ui.size_39b770 = [](Vec2 size, int condition) {
        ensure(size.x == 40 && size.y == 40 && condition == 0, "radar diameter and condition");
    };
    ui.begin_38cfa4 = [](re::ReStringView name, ReU32 flags) {
        ensure(name == "Radar" && flags == 0xab, "radar busy flags");
    };
    ui.current_position_39246c = []() { return Vec2{15, 25}; };
    ui.end_390994 = [&]() { ++ends; };
    c.booleans[0x3ea038] = true;
    c.floats[0x3ed938] = 20;
    layout_world_radar_window_309a27(c, frame, windows, ui);
    ensure(conditions == re::ReVector<int>{2, 1} &&
               styles == re::ReVector<ReUSize>{0x448, 0x118} && ends == 1 &&
               windows.radar_3efda8.x == 35 && windows.radar_3efda8.y == 45 &&
               !windows.radar_reset_3e5cb9,
           "radar reset/style/current-window position/end ordering");
}

void inventory_player_controller() {
    auto c = zero();
    c.floats[0x3edde8] = 1;
    WorldInventoryLists inventory;
    inventory.hotbar = {WorldInventoryItem{true, true, Image::a, 2, 100, 50}, re::re_nullopt};
    inventory.clothing = {WorldInventoryItem{true, false, Image::z, 1, 0, 0}};
    WorldDrawBackend draw;
    draw.measure_38f79c = [](re::ReStringView text) { return Vec2{float(text.size() * 10), 10}; };
    re::ReVector<WorldDrawCommand> out;
    ensure(draw_world_inventory_tooltip_310f94(inventory, {}, {1000, 1000}, c, draw, out) &&
               out.size() == 13,
           "inventory tooltip full panel/two groups/condition/icon/count draw arguments");
    const auto icon = re::re_find_if(out.begin(), out.end(), [](const auto &command) {
        return re::re_holds_alternative<WorldImageDraw>(command);
    });
    ensure(bool(icon) && re::re_get<WorldImageDraw>(*icon).min.x == 21 &&
               re::re_get<WorldImageDraw>(*icon).min.y == 30 &&
               re::re_get<WorldImageDraw>(*icon).max.x == 44,
           "inventory icon exact4/1/23 scale offsets");
    Image f;
    f.put(Image::e + 0x708, ReU32(0));
    f.put(Image::e + 0x2c0, ReU8(0));
    f.put(Image::e + 0x54, ReU32(0xf4e1d514));
    f.put(Image::e + 0x350, Address(0));
    f.put(Image::e + 0x338, Image::a);
    f.wide(Image::a, u"Alice");
    f.put(Image::e + 0x640, Image::z);
    f.wide(Image::z, u"42");
    c = zero();
    c.booleans[0x3e7248] = c.booleans[0x3e7798] = true;
    c.integers[0x3d8148] = 100;
    WorldPlayerFrame frame;
    frame.viewport = {100, 100};
    frame.camera_position = {0, 1, 0};
    frame.player_labels = re::ReArray<WorldPlayerLabel, 6>{};
    constexpr re::ReArray<re::ReStringView, 6> widget_keys{
        "DisplayName", "HeldEntity", "Indicator", "Indicator0", "Indicator2", "Indicator3"};
    for (ReUSize i = 0; i < widget_keys.size(); ++i)
        (*frame.player_labels)[i].key = widget_keys[i];
    (*frame.player_labels)[0].side = 3;
    WorldPlayerRunState state;
    WorldPlayerRunBackend backend;
    backend.entity_valid_2e0e9c = [](Address) { return true; };
    constexpr Address component_transform = Image::e + 0x300;
    bool component_requested{};
    backend.component_transform_315a54 = [&](Address receiver) {
        ensure(receiver == Image::e, "component lookup receives the entity");
        component_requested = true;
        return component_transform;
    };
    backend.game.position_3747d4 = [&](Address receiver) {
        ensure(component_requested && receiver == component_transform,
               "position follows component lookup and receives its distinct Transform");
        return re::ReOptional<Vec3>({0, 0, 1});
    };
    backend.player.bone_368be8 = [](Address, int n) {
        return re::ReOptional<Vec3>({0, n == 7 ? 1.0f : 2.0f, 1});
    };
    backend.player.draw.world_projection_36cd20 = [](Vec3, ProjectionBounds) {
        return re::ReOptional<Vec2>({20, 30});
    };
    backend.rotation_36920c = [](Address) { return re::ReArray<float, 4>{0, 0, 0, 1}; };
    WorldLabelFonts fonts;
    fonts.current_405b28_3c28 = 123;
    fonts.fonts[123] = {8, 1};
    backend.player.label_fonts = &fonts;
    backend.player.background_draw_list_392198 = [](WorldLabelFonts &) {};
    backend.player.measure_font_3a3874 = [](const WorldFontMeasureRequest &request) {
        return Vec2{float(request.text.size() * 10), request.size};
    };
    const re::ReArray<WorldEspPlayerRecord, 1> records{{{Image::e, 0}}};
    out.clear();
    replay_world_player_overlay_30ea17(f.im, records, c, frame, state, backend, out);
    ensure(out.size() == 6 && re::re_get<WorldTextDraw>(out[0]).text == "Alice" &&
               state.tail.registry_3d7260.contains("42") && state.handcuffs.empty() &&
               !state.tooltip_drawn,
           "player controller selection/name/label order with inactive callbacks absent");
    c.booleans[0x3e9548] = true;
    backend.looking_36a320 = [](Address) { return false; };
    out.clear();
    replay_world_player_overlay_30ea17(f.im, records, c, frame, state, backend, out);
    ensure(out.size() == 6, "false looking predicate does not require held/aiming callbacks");
    backend.component_transform_315a54 = [](Address) { return Address(0); };
    backend.game.position_3747d4 = [](Address) -> re::ReOptional<Vec3> {
        { /* FREESTANDING_TODO: was throw runtime_error("invalid component Transform reached position getter") */ }
    };
    out.clear();
    replay_world_player_overlay_30ea17(f.im, records, c, frame, state, backend, out);
    ensure(out.empty(), "invalid component Transform skips player output");
    backend.component_transform_315a54 = {};
    bool missing_component{};
    {
        replay_world_player_overlay_30ea17(f.im, records, c, frame, state, backend, out);
    }
    ensure(missing_component, "missing component lookup cannot silently use the entity as Transform");
}

void simulation_dispatch_and_full_overlay() {
    Image f;
    auto c = zero();
    WorldSimulationState state;
    WorldSimulationBackend b;
    re::ReVector<WorldDrawCommand> out;
    re::ReVector<int> calls;
    b.direction_368100 = [&](Address) {
        calls.push_back(1);
        return Vec3{1, 0, 0};
    };
    b.held_368a84 = [&](Address) {
        calls.push_back(2);
        return Address(0);
    };
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(calls == re::ReVector<int>{1, 2} && state.cache.empty(),
           "simulation queries direction before invalid-held exit");
    b.held_368a84 = [](Address) { return Image::e; };
    b.local_position_369164 = [](Address) { return Vec3{}; };
    b.object_3716e0 = b.object_371464 = [](Address) { return Address(0); };
    b.object_3721b4 = [](Address) { return Image::a; };
    b.object_371eb8 = [](Address) { return Image::z; };
    b.magazine_371630 = [](Address) { return Image::a; };
    b.projectile_372abc = [](Address) { return Image::z; };
    f.put(Image::a + 0x398, ReU8(1));
    f.put(Image::a + 0x40, 10.0f);
    f.put(Image::z + 0x34, 0.1f);
    f.put(Image::z + 0x38, 2.0f);
    f.put(Image::z + 0x44, 3.0f);
    const auto key = entity_name_hash_2d6354("10.00/0.10/2.00/3.00");
    state.cache.insert(key, WorldSimulationCacheEntry{{10, 0.1f, 2, 3}, {}});
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(state.active_key_3e5718 == key && state.cache.size() == 1 && out.empty(),
           "first branch priority/cache hit precedes disabled draw gate");
    c.booleans[0x3ea678] = c.booleans[0x3e70b8] = true;
    int rays = 0, projections = 0;
    b.overlay.draw.raycast_2e8fac = [&](Vec3 position, Vec3 velocity, float distance,
                                        ReU32 mask, int query) {
        ++rays;
        ensure(position.x == 0 && velocity.x == 10 && distance == sample_sqrt_2e3c88(0) &&
                   mask == (0x48a12101u | 0x48a30900u) && query == 0,
               "simulation dispatch supplies actual start/velocity/first-distance/mask/query");
        return WorldRaycastResult{true, {}, {0, 1, 0}, 1};
    };
    b.overlay.sin_2e0198 = [](float value) { return re::re_sinf(value); };
    b.overlay.cos_2dff68 = [](float value) { return re::re_cosf(value); };
    b.overlay.draw.world_projection_36cd20 = [&](Vec3 point, ProjectionBounds) {
        ++projections;
        return re::ReOptional<Vec2>({point.x, point.z});
    };
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(rays == 1 && projections == 50 && out.size() == 1 &&
               re::re_get<WorldPolygonDraw>(out[0]).site == 0x30d51c,
           "enabled first branch simulates and runs all50 ring projections before polygon");
    c.booleans[0x3ea678] = false;
    out.clear();
    b.object_3721b4 = [](Address) { return Address(0); };
    b.modification_36b938 = [](Address) { return Image::a; };
    b.thrown_projectile_372b30 = [](Address) { return Image::z; };
    f.put(Image::z + 0x3c, 5.0f);
    f.put(Image::z + 0x3ac, 2.0f);
    bool missing = false;
    {
        replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    }
    ensure(missing && state.active_key_3e5718 == key,
           "branch1 refuses missing fourth format argument before cache publication");
    state.branch1_fourth_vararg = 4;
    const auto thrown_key = entity_name_hash_2d6354("10.00/2.00/0.10/4.00");
    state.cache.insert(thrown_key, WorldSimulationCacheEntry{{10, 0.1f, 2, 0}, {}});
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(state.active_key_3e5718 == thrown_key,
           "branch1 cache format is speed/gravity/drag/copied fourth");
    b.object_371eb8 = [](Address) { return Address(0); };
    b.object_3716e0 = [](Address) { return Image::a; };
    f.put(Image::a + 0x3f8, 1.0f);
    missing = false;
    {
        replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    }
    ensure(missing, "branch3 refuses three missing format arguments");
    state.branch3_varargs = re::ReArray<double, 3>{1, 2, 3};
    const auto grenade_key = entity_name_hash_2d6354("0.55/1.00/2.00/3.00");
    state.cache.insert(grenade_key, WorldSimulationCacheEntry{{0.546875f, 0, 1, 0}, {}});
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(state.active_key_3e5718 == grenade_key,
           "branch3 double subtraction and copied volatile format arguments");
    state.cache.erase(grenade_key);
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(state.cache.at(grenade_key).tables.size() == 3601 &&
               state.cache.at(grenade_key).parameters.gravity_scale == 1 &&
               state.cache.at(grenade_key).parameters.drag == 0,
           "branch3 cache miss constructs full shared tables despite disabled drawing");
    b.object_3716e0 = [](Address) { return Address(0); };
    b.object_371464 = [](Address) { return Image::a; };
    b.held_item_37154c = [](Address) { return Image::e; };
    b.item_identifier_37261c = [](Address) { return ReU32(0); };
    f.put(Image::a + 0x3ac, 2.0f);
    f.put(Image::a + 0x44, 3.0f);
    f.put(Image::a + 0x40, 1.0f);
    int attachments = 0;
    b.attachments_36b758 = [&](Address) {
        return ++attachments == 1 ? re::ReNumericLimits<float>::quiet_NaN() : 1.2f;
    };
    c.booleans[0x3d7fb8] = true;
    const auto arrow_key = entity_name_hash_2d6354("14.35/0.10/2.00/3.00");
    state.cache.insert(arrow_key, WorldSimulationCacheEntry{{14.352f, 0.1f, 2, 3}, {}});
    replay_world_simulation_worker_30cf87(f.im, Image::local, {}, c, state, b, out);
    ensure(attachments == 2 && state.active_key_3e5718 == arrow_key,
           "branch2 unordered attachment takes multiplier branch and repeats attachment getter");
    WorldFullOverlayFrame frame;
    frame.width = 101;
    frame.height = 81;
    WorldFullOverlayState root;
    WorldFullOverlayBackend backend;
    c.booleans[0x3fc608] = true;
    c.integers[0x3fcfa8] = 0;
    replay_world_overlay_3098a4(f.im, c, frame, root, backend, out);
    ensure(out.size() == 2 && re::re_get<WorldFloatRectangleDraw>(out[0]).position.x == 50,
           "root crosshair before invalid-local guard with integer screen center");
    frame.local = Image::local;
    frame.camera = Image::z;
    frame.camera_transform_valid = true;
    re::ReVector<re::ReString> windows;
    int ends = 0, directions = 0;
    backend.windows.position_39b734 = [](Vec2, int, Vec2) {};
    backend.windows.style_392ca4 = [](ReUSize, re::ReArray<float, 4>) {};
    backend.windows.size_39b770 = [](Vec2, int) {};
    backend.windows.begin_38cfa4 = [&](re::ReStringView name, ReU32) {
        windows.emplace_back(name);
    };
    backend.windows.current_position_39246c = []() { return Vec2{10, 20}; };
    backend.windows.end_390994 = [&]() { ++ends; };
    backend.simulation.direction_368100 = [&](Address) {
        ++directions;
        ensure(ends == 2, "root closes both windows before weapon dispatch");
        return Vec3{};
    };
    backend.simulation.held_368a84 = [](Address) { return Address(0); };
    backend.interaction.time_2e6240 = []() { return 0.0f; };
    out.clear();
    replay_world_overlay_3098a4(f.im, c, frame, root, backend, out);
    ensure(windows == re::ReVector<re::ReString>{"Anti Violations Bar", "Warning Bar Window"} &&
               directions == 1 && out.size() == 2 && root.windows.warning_3efd08.y == 20 &&
               root.players.warning_cursor.x == 126,
           "whole root window/dispatch/empty-player/tail order");
}

void player_actions() {
    auto c = zero();
    c.booleans[0x3e9548] = true;
    re::ReVector<WorldDrawCommand> out;
    const auto next = draw_world_looking_alert_310832(
        {false, false, false, false, false, true, true, "Alice", "M-16"}, {10, 20}, c, out);
    ensure(next.y == 36 &&
               re::re_get<WorldTextDraw>(out.back()).text == "Alice IS AIMING AT YOU WITH M-16",
           "looking alert exact text and cursor increment");
    WorldPlayerBackend b;
    b.draw.world_projection_36cd20 = [](Vec3 v, ProjectionBounds) {
        return re::ReOptional<Vec2>({v.x, v.y});
    };
    WorldOverlayTailState state;
    state.registry_3d7260["42"].kind = 1;
    c.booleans[0x3e9b88] = c.booleans[0x3ea178] = true;
    c.integers[0x3ef898] = 10;
    c.integers[0x3ef718] = 11;
    re::ReVector<int> keys;
    ensure(replay_world_friend_keys_31236d(
               {Image::e, Image::e, true, false, false, {20, 30, 1}, {100, 100}, {}, "42"}, c,
               state, b,
               [&](int key, bool edge) {
                   ensure(edge, "friend and enemy key-edge argument");
                   keys.push_back(key);
                   return true;
               }),
           "friend-key visible foot gate");
    ensure(keys == re::ReVector<int>{10, 11} && state.registry_3d7260["42"].kind == 2,
           "friend removal precedes enemy addition within one frame");
    c.booleans[0x3e7888] = true;
    b.bone_368be8 = [](Address, int bone) {
        ensure(bone == 53, "view queries literal head bone53");
        return re::ReOptional<Vec3>({1, 2, 3});
    };
    out.clear();
    draw_world_player_view_313020(
        {Image::e, 0, false, false, false, false, {}, {}, {}, {0, 0, 0, 0}, {1, 0, 0, 1}}, c, b,
        out);
    ensure(out.size() == 3 && re::re_get<WorldLineDraw>(out[0]).from.x == 2 &&
               re::re_get<WorldLineDraw>(out[1]).from.y == 3 &&
               re::re_get<WorldLineDraw>(out[2]).from.x == 1,
           "view triple-line offsets preserve zero-quaternion polynomial");
}

} // namespace
void check_world_esp_extended() {
    player_actions();
    simulation_dispatch_and_full_overlay();
    inventory_player_controller();
    status_windows();
    simulation_tracers_tail();
    overlay_players();
    names_and_owners();
    turret_and_dropped();
    interactions_fishing_worker();
}
} // namespace rust_internal_re
