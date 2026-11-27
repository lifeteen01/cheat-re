#include "game_root_helpers.hpp"
namespace rust_internal_re {
namespace {
void expect(bool value, const char *why) {
    if (!value)
        { __builtin_trap(); }
}
template<class T>void put(Snapshot& s, Address p, T v) { expect(s.write(p, v), "fixture write"); }
} // namespace
void check_game_root_helpers() {
    Snapshot globals(0, re::ReVector<ReByte>(0x420000, ReByte(0xaa)));
    const GameRootEnvironment env{0, 0x180000, 64, {}};
    put(globals, 0x3d6f00, Address(0x100000));
    put(globals, 0x3d6f10, ReU32(0));
    put(globals, 0x3d5e60, Address(0x1234));
    GameRootEffects effects;
    ReUSize observed = 0, called = 0;
    effects.observe_context = [&](const MetadataWrapperCall &q) {
        ++observed;
        expect(q.target == 0x5558c90 && q.dispatcher == 0x1234 &&
                   globals.read<ReU32>(0x3d6f10) == 3,
               "local-player native target/flags commit before context observer");
        put(globals, 0x3d5e60, Address(0x5678));
    };
    effects.local_player = [&](const MetadataWrapperCall &q) {
        ++called;
        expect(q.dispatcher == 0x5678 && q.context == 0x3d6f20 &&
                   globals.read<ReU64>(q.context + 0x80) == ReU64(0) &&
                   globals.read<Address>(q.context + 0x78) == 0xaaaaaaaaaaaaaaaaULL,
               "local-player root reload and concrete no-argument context packaging");
        return Address(0x200000);
    };
    const auto cold = game_root_local_player_2dda9c(globals, env, effects);
    expect(cold.status == GameBaseStatus::complete && cold.value == 0x200000 && observed == 1 &&
               called == 1 && globals.read<Address>(0x3d6f08) == Address(0x5558c90),
           "cold local-player native cache and effect result");
    expect(game_root_local_player_2dda9c(globals, env, effects).value == 0x200000 &&
               observed == 1 && called == 2,
           "warm local-player skips setup but invokes typed effect");
    {
        Snapshot narrow(0x3d6f00, re::ReVector<ReByte>(0x200, ReByte(0xaa)));
        put(narrow, 0x3d6f10, ReU32(1));
        put(narrow, 0x3d6f08, Address(0x5558c90));
        const auto result = game_root_local_player_2dda9c(narrow, {}, effects);
        expect(result.status == GameBaseStatus::missing_bytes && result.site == 0x2ddaea &&
                   narrow.read<ReU32>(0x3d6f10) == 3,
               "local-player flag2 store precedes missing dispatcher root");
        const auto warm = game_root_local_player_2dda9c(narrow, {}, effects);
        expect(warm.status == GameBaseStatus::missing_bytes && warm.site == 0x2ddaf6,
               "warm local-player still acquires dispatcher root");
    }
    {
        const auto missing = game_root_local_player_2dda9c(globals, env, {});
        expect(missing.status == GameBaseStatus::missing_boundary && missing.site == 0x2dda18 &&
                   globals.read<ReU64>(0x3d6fa0) == 0,
               "missing local-player matching effect stops after known argument packaging");
    }
    Snapshot heap(0x100000, re::ReVector<ReByte>(0x2000));
    constexpr Address klass = 0x100100, fields = 0x100300, camera = 0x100500;
    put(heap, klass + 0xb8, fields);
    put(heap, fields + 0x38, camera);
    int resolutions = 0;
    effects.metadata.domain_get_33479c = [] { return Address(1); };
    effects.metadata.assemblies_33480c = [](Address) { return re::ReVector<Address>{2}; };
    effects.metadata.assembly_image_3344b0 = [](Address) { return Address(3); };
    effects.metadata.class_from_name_334528 = [&](Address im, Address ns, Address name) {
        ++resolutions;
        const re::ReArray<char, 11> wanted{'M', 'a', 'i', 'n', 'C', 'a', 'm', 'e', 'r', 'a', 0};
        expect(im == 3 && globals.read<ReU8>(ns) == 0 &&
                   globals.read<re::ReArray<char, 11>>(name) == wanted,
               "concrete MainCamera/empty-namespace literals reach class selector");
        return klass;
    };
    expect(game_root_camera_2e069c(globals, heap, env, effects).value == camera,
           "MainCamera metadata and static-fields pointer chain");
    expect(game_root_camera_2e069c(globals, heap, env, effects).value == camera && resolutions == 2,
           "camera class acquisition is repeated rather than introducing a native cache");
    put(heap, fields + 0x38, Address(0));
    expect(game_root_camera_2e069c(globals, heap, env, effects).value == 0,
           "invalid camera object returns native zero");
    const auto unavailable = game_root_camera_2e069c(globals, Snapshot(0, {}), env, effects);
    expect(unavailable.status == GameBaseStatus::missing_bytes && unavailable.site == 0x2e06ed,
           "missing camera static-fields bytes do not become native zero");
    const auto insufficient = game_root_camera_2e069c(globals, heap, {0, 0x180000, 1, {}}, effects);
    expect(insufficient.status == GameBaseStatus::missing_bytes && insufficient.site == 0x2df87c &&
               globals.read<ReU8>(0x180000) == 0,
           "camera literal scratch failure retains preceding empty-namespace materialization");
    constexpr Address gate_cell = 0x100000 + 0xf069320;
    Snapshot gate_game(gate_cell, re::ReVector<ReByte>(0x2000));
    const Address gate_class = gate_cell + 0x100, gate_fields = gate_cell + 0x300,
                  gate_object = gate_cell + 0x500;
    put(gate_game, gate_cell, gate_class);
    put(gate_game, gate_class + 0xb8, gate_fields);
    put(gate_game, gate_fields + 0x20, gate_object);
    put(gate_game, gate_object + 0x20, ReU8(2));
    const auto gate = game_root_gate_2e0e4c(globals, gate_game, env);
    expect(gate.status == GameBaseStatus::complete && gate.value == 2,
           "global game gate preserves raw noncanonical boolean byte");
    auto aim = bind_game_roots_aim(globals, gate_game, env, effects);
    expect(aim.object(0x2dda9c, 0) == 0x200000 && aim.predicate(0x2e0e4c, 0, 0),
           "aim root bindings compose cache and raw-byte truth conversion");
    auto projectile = bind_game_roots_projectile(globals, gate_game, env, effects);
    expect(projectile.address(0x2dda9c, 0, 0) == 0x200000 && projectile.predicate(0x2e0e4c, 0),
           "projectile root bindings compose typed result classes");
    auto interaction = bind_game_roots_interaction(globals, gate_game, env, effects);
    expect(interaction.object({0x2dda9c}) == 0x200000 && interaction.predicate({0x2e0e4c}),
           "interaction root bindings retain call role");
    auto movement = bind_game_roots_movement(globals, gate_game, env, effects);
    expect(movement.pointer(0x2dda9c, {}) == 0x200000 && movement.predicate(0x2e0e4c, {}),
           "movement zero-argument root bindings");
    expect(bind_game_roots_launcher(globals, env, effects).local_player_2dda9c() == 0x200000,
           "launcher root binding");
    auto unity = bind_game_roots_frame(globals, gate_game, env, effects);
    expect(re::re_get<bool>(*unity.external(0x2e0e4c, {})) &&
               re::re_get<Address>(*unity.external(0x2dda9c, {})) == 0x200000 &&
               !unity.external(0x123456, {}),
           "Unity/frame root adapter preserves unknown-role fallback");
    put(gate_game, gate_cell, Address(0));
    expect(game_root_gate_2e0e4c(globals, gate_game, env).value == 0,
           "invalid first gate class returns zero before deeper reads");
    expect(game_root_gate_2e0e4c(globals, Snapshot(0, {}), env).status ==
               GameBaseStatus::missing_bytes,
           "missing gate global is a typed failure");
    bool stopped = false;
    {
        (void)aim.object(0x123456, 0);
    }
    expect(stopped, "missing unknown root adapter role does not fabricate a result");
}
} // namespace rust_internal_re
