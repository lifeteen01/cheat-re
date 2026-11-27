#include "game_root_domain_bindings.hpp"

namespace rust_internal_re {
namespace {
void expect(bool value, [[maybe_unused]] const char *message) {
    if (!value)
        { __builtin_trap(); }
}
template<class T>void put(Snapshot& s, Address p, T v) { expect(s.write(p, v), "fixture write"); }
} // namespace
void check_game_root_domain_bindings() {
    Snapshot globals(0, re::ReVector<ReByte>(0x420000));
    // [I] One copied allocation covers both the gate's class cell and camera data.
    constexpr Address assembly = 0x100000, gate_cell = assembly + 0xf069320;
    Snapshot game(gate_cell, re::ReVector<ReByte>(0x2000));
    constexpr Address klass = gate_cell + 0x100, fields = gate_cell + 0x300,
                      object = gate_cell + 0x500;
    put(globals, 0x3d6f00, assembly);
    put(globals, 0x3d6f10, ReU32(3));
    put(globals, 0x3d6f08, Address(0x5558c90));
    put(globals, 0x3d5e60, Address(0x1234));
    put(game, gate_cell, klass);
    put(game, klass + 0xb8, fields);
    put(game, fields + 0x38, object);
    put(game, fields + 0x20, object);
    put(game, object + 0x20, ReU8(2));
    const GameRootEnvironment env{0, 0x180000, 64, {}};
    GameRootEffects effects;
    ReUSize local_calls = 0;
    effects.local_player = [&](const MetadataWrapperCall &) {
        ++local_calls;
        return object;
    };
    effects.metadata.domain_get_33479c = [] { return Address(1); };
    effects.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
    effects.metadata.assembly_image_3344b0 = [](Address) { return Address(3); };
    effects.metadata.class_from_name_334528 = [](Address, Address, Address) { return klass; };
    MovementTickCalls tick_base;
    tick_base.time_31581c = [] { return 13.f; };
    const auto tick = bind_game_roots_tick(globals, game, env, effects, tick_base);
    expect(tick.player_2dda9c() == object && tick.context_2e069c() == object &&
               tick.predicate_2e0e4c() && tick.time_31581c() == 13.f,
           "movement tick roots use concrete bodies and retain other effects");
    BoneQueries bone_base;
    bone_base.width_2e0af0 = [] { return 1920; };
    const auto bones = bind_game_roots_bones(globals, game, env, effects, bone_base);
    expect(bones.local_2dda9c() == object && bones.camera_2e069c() == object &&
               bones.width_2e0af0() == 1920,
           "bone query roots compose without replacing screen queries");
    InstantHitQueries instant_base;
    instant_base.target_2e02b0 = [] { return Address(0x120000); };
    const auto instant = bind_game_roots_instant(globals, game, env, effects, instant_base);
    expect(instant.local_2dda9c() == object && instant.game.object(0x2dda9c, 0) == object &&
               instant.target_2e02b0() == 0x120000 && local_calls == 4,
           "instant-hit roots retain native repeated local-player invocations");
    const auto dependencies = bind_game_roots_dependencies(globals, game, env, effects);
    expect(dependencies.player_2e069c() == object && *dependencies.disconnected_2e0e4c() &&
               re::re_get<Address>(*dependencies.unity.external(0x2dda9c, {})) == object,
           "frame dependencies use concrete direct and generic root adapters");
    const auto raid = bind_game_roots_raid(globals, game, env, effects);
    expect(raid.camera_2e069c() == object && raid.player_2dda9c() == object,
           "raid camera/player callbacks use the same root bodies");
    FrameRaidCollection collection{true, {FrameRaidRecord{}}};
    FrameMenuState menu;
    const auto disconnected = frame_update_raid_collection_36f788(menu, collection, raid);
    expect(disconnected.status == UnityStatus::complete && collection.records.empty(),
           "actual raid controller consumes noncanonical gate byte and clears events");
    // [C] Missing bytes must remain a dependency failure through the frame API.
    Snapshot missing(0, {});
    const auto unavailable = bind_game_roots_raid(globals, missing, env, effects);
    collection.records.push_back({});
    const auto failed = frame_update_raid_collection_36f788(menu, collection, unavailable);
    expect(failed.status == UnityStatus::unreadable_snapshot && failed.stopped_at == 0x2e0e57 &&
               collection.records.size() == 1,
           "raid composition preserves root failure site and pre-clear event collection");
}
} // namespace rust_internal_re
