#include "game_input_physics_fixture.hpp"
#include "game_input_physics_internal.hpp"

namespace rust_internal_re::game_input_fixture {
using namespace game_input_detail;
void metadata_checks() {
    Fixture f;
    require(literal_string(f.image, 0, 0x2e56d4) == "get_keys" &&
                literal_string(f.image, 0, 0x3238f4) ==
                    "UnityEngine.Physics::IgnoreLayerCollision()" &&
                literal_string(f.image, 0, 0x323b58) == "il2cpp_resolve_icall" &&
                literal_string(f.image, 0, 0x2cc730).empty(),
            "fresh literal data produce exact selector/icall names");
    f.text(0x28dfb8, "get_keys");
    require(literal_string(f.image, 0, 0x2e56d4) == "get_keys",
            "zero literal sentinel bypasses XOR instead of decoding plaintext twice");
    require(required(game_input_captured_2e6744(f.image, f.env, f.effects)) == false &&
                required(game_input_object(f.image, 0x2e5eec, 0, f.env, f.effects)) == f.keyboard &&
                required(game_input_object(f.image, 0x2e5ff8, f.keyboard, f.env, f.effects)) ==
                    f.array &&
                required(game_input_button(f.image, 0x2e68b8, f.button, f.env, f.effects)) &&
                !required(game_input_button(f.image, 0x2e90d8, f.button, f.env, f.effects)) &&
                !required(game_input_button(f.image, 0x2e8e88, f.button, f.env, f.effects)),
            "six cold metadata wrappers resolve and consume typed results");
    require(f.classes ==
                    re::ReVector<re::RePair<re::ReString, re::ReString>>{
                        {"UnityEngine", "Cursor"},
                        {"UnityEngine.InputSystem", "Keyboard"},
                        {"UnityEngine.InputSystem", "Keyboard"},
                        {"UnityEngine.InputSystem.Controls", "ButtonControl"},
                        {"UnityEngine.InputSystem.Controls", "ButtonControl"},
                        {"UnityEngine.InputSystem.Controls", "ButtonControl"}} &&
                f.get<Address>(0x3e4708) == 0x70000200 && f.get<ReU32>(0x3e4260) == 3 &&
                f.get<ReU32>(0x3e4350) == 3 && f.observations.size() == 6,
            "class/namespace selection and specific get_keys target/cache cells");
    f.effects.metadata = {};
    f.effects.observe_context = {};
    f.env.literal_storage = 0;
    f.cursor_word = 0x100;
    f.held_word = 0x100;
    require(required(game_input_captured_2e6744(f.image, f.env, f.effects)) &&
                !required(game_input_button(f.image, 0x2e68b8, f.button, f.env, f.effects)),
            "warm cursor tests full return word while button tests AL only; no cold dependencies");

    Fixture reloaded;
    reloaded.on_class = [&] { reloaded.set(0x3e4260, ReU32(3)); };
    require(!required(game_input_captured_2e6744(reloaded.image, reloaded.env, reloaded.effects)) &&
                reloaded.observations.empty() && reloaded.get<Address>(0x3e4258) == 0x70000000,
            "flags reread after metadata mutation skips already-set context bit2");
    Fixture ordering;
    ordering.on_observe = [&](const GameInputCall &call) {
        require(call.dispatcher == 0x11112222 && ordering.get<ReU32>(0x3e4260) == 3,
                "context observes acquired root after bit2 store");
        ordering.set(0x3d5e60, Address(0x33334444));
    };
    ordering.effects.predicate = [&](const GameInputCall &call, Address) {
        require(call.dispatcher == 0x33334444 && call.target == 0x70000000 &&
                    ordering.get<Address>(call.context + 0x80) == 0,
                "effect root reload and zero-argument stores follow observer");
        return ReU64(0);
    };
    require(!required(game_input_captured_2e6744(ordering.image, ordering.env, ordering.effects)),
            "context/effect stage consumes independently loaded dispatcher");
    Fixture no_observer;
    no_observer.effects.observe_context = {};
    const auto absent =
        game_input_captured_2e6744(no_observer.image, no_observer.env, no_observer.effects);
    require(absent.status == GameBaseStatus::missing_boundary && absent.site == 0x2e6824 &&
                no_observer.get<ReU32>(0x3e4260) == 3 &&
                no_observer.get<Address>(0x3e4270 + 0x80) == 0xa5a5a5a5a5a5a5a5,
            "missing detection observer preserves target and bit2 but precedes argument stores");
    Snapshot missing_root(0x3e4258, re::ReVector<ReByte>(0x300, ReByte(0xa5)));
    require(missing_root.write(0x3e4260, ReU32(1)) &&
                missing_root.write(0x3e4258, Address(0x70000000)),
            "root fixture fields");
    const auto stopped = game_input_captured_2e6744(missing_root, {}, {});
    require(stopped.status == GameBaseStatus::missing_bytes && stopped.site == 0x2e680a &&
                missing_root.read<ReU32>(0x3e4260) == 1,
            "missing setup root stops before bit2 store");
    Fixture failed_leaf;
    failed_leaf.effects.predicate = [](const GameInputCall &, Address) -> ReU64 {
        { (void)(MetadataStatus::analysis_limit, 0x123456); __builtin_trap(); }
    };
    auto failure =
        game_input_captured_2e6744(failed_leaf.image, failed_leaf.env, failed_leaf.effects);
    require(failure.status == GameBaseStatus::analysis_limit && failure.site == 0x123456 &&
                failed_leaf.get<Address>(0x3e4270 + 0x80) == 0,
            "typed leaf failure preserves exact site/status after packaging");
    failed_leaf.effects.predicate = [](const GameInputCall &, Address) -> ReU64 {
        { __builtin_trap(); }
    };
    failure = game_input_captured_2e6744(failed_leaf.image, failed_leaf.env, failed_leaf.effects);
    require(failure.status == GameBaseStatus::missing_boundary && failure.site == 0x234567,
            "renderer-style typed dependency failure retains its site");

    Fixture layer;
    layer.loader();
    require(
        required(game_input_ignore_329aa0(layer.image, layer.image, 12, 11, 0x80, layer.env,
                                          layer.effects)) &&
            layer.calls == re::ReVector<Rva>{0x32a938, 0x329aa0} &&
            layer.observations == re::ReVector<Rva>{0x32a938, 0x329aa0} &&
            layer.get<Address>(0x3f2838) == 0x1d0210 &&
            layer.get<Address>(0x3f2928) == 0x71caffee && layer.get<ReU32>(0x3f2840) == 3 &&
            layer.get<ReU32>(0x3f2930) == 3,
        "copied prefix module walk, literal export acquisition, icall and collision-layer effect");
    layer.effects.resolve_icall = {};
    layer.env.copied_gs30 = {};
    require(required(game_input_ignore_329aa0(layer.image, layer.image, 12, 11, 0x80, layer.env,
                                              layer.effects)) &&
                layer.calls.size() == 3,
            "warm layer skips module/PE/icall resolution");
    // [C]Signed e_lfanew, unchecked ordinal and forwarder-looking numeric RVA.
    layer.text(0x4e0300, "il2cpp_resolve_icall");
    layer.set(0x1d0300, ReU16(0xffff));
    layer.set(0x1d0000 + 0x340 + 0xffff * 4, ReU32(0x220));
    require(game_input_export_3caed0(layer.image, layer.image, 0x1d0000, 0x4e0300) == 0x1d0220,
            "literal PE reader adds no signature, ordinal-count or forwarder rejection");
    layer.set(0x1d0000 + 0x200 + 0x18, ReU32(0));
    require(game_input_export_3caed0(layer.image, layer.image, 0x1d0000, UINT64_MAX) == 0,
            "zero export-name count returns before requested-name read");
    Fixture no_gs;
    auto layer_failure =
        game_input_ignore_329aa0(no_gs.image, no_gs.image, 12, 11, 1, no_gs.env, no_gs.effects);
    require(layer_failure.status == GameBaseStatus::missing_bytes &&
                layer_failure.site == 0x3cb067 && no_gs.get<ReU32>(0x3f2930) == 1 &&
                no_gs.get<ReU32>(0x3f2840) == 1 &&
                no_gs.get<Address>(0x3f2838) == 0xa5a5a5a5a5a5a5a5,
            "unavailable captured GS pointer preserves both nested first-flag prefixes");
    Fixture no_icall;
    no_icall.loader();
    no_icall.effects.resolve_icall = {};
    layer_failure = game_input_ignore_329aa0(no_icall.image, no_icall.image, 12, 11, 1,
                                             no_icall.env, no_icall.effects);
    require(layer_failure.status == GameBaseStatus::missing_boundary &&
                layer_failure.site == 0x2cb9fc && no_icall.get<ReU32>(0x3f2840) == 3 &&
                no_icall.get<Address>(0x3f2850 + 0x80) == 1 &&
                no_icall.get<ReU32>(0x3f2930) == 1 &&
                no_icall.get<Address>(0x3f2928) == 0xa5a5a5a5a5a5a5a5,
            "missing actual icall result follows inner stores and precedes outer target store");
}
} // namespace rust_internal_re::game_input_fixture
