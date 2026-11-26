#include "game_input_physics_fixture.hpp"
#include "game_input_physics_internal.hpp"

namespace rust_internal_re {
using namespace game_input_fixture;
using namespace game_input_detail;
namespace {
void key_checks() {
    Fixture f;
    f.cursor_word = 0x100;
    auto r = game_input_key_2e5e4c(f.image, f.image, 3, true, f.env, f.effects);
    require(r.status == GameBaseStatus::complete && !r.value &&
                f.calls == re::ReVector<Rva>{0x2e6744},
            "suppressed key still loads IO/cursor before avoiding keyboard");
    f.calls.clear();
    r = game_input_key_2e5e4c(f.image, f.image, 3, false, f.env, f.effects);
    require(r.value && f.calls == re::ReVector<Rva>{0x2e6744, 0x2e5eec, 0x2e5ff8, 0x2e68b8},
            "suppressionfalse still queries cursor and dispatches held-key mode2");
    f.cursor_word = 0;
    f.pressed_word = 0x80;
    f.released_word = 0x100;
    require(required(game_input_key_mode_2e9c7c(f.image, f.image, 3, 0, f.env, f.effects)) &&
                !required(game_input_key_mode_2e9c7c(f.image, f.image, 3, 1, f.env, f.effects)) &&
                required(game_input_key_mode_2e9c7c(f.image, f.image, 3, 2, f.env, f.effects)),
            "mode0 pressed,1 released,2 held and low-byte normalization");
    f.calls.clear();
    require(!required(game_input_key_mode_2e9c7c(f.image, f.image, -1, 2, f.env, f.effects)) &&
                f.calls == re::ReVector<Rva>{0x2e5eec, 0x2e5ff8},
            "negative key still resolves keyboard/get_keys before bounds rejection");
    f.calls.clear();
    require(!required(game_input_key_mode_2e9c7c(f.image, f.image, 600, 2, f.env, f.effects)) &&
                f.calls == re::ReVector<Rva>{0x2e5eec, 0x2e5ff8},
            "key equal to signed array count is rejected");
    f.keyboard_result = 0;
    f.calls.clear();
    require(!required(game_input_key_mode_2e9c7c(f.image, f.image, 3, 2, f.env, f.effects)) &&
                f.calls == re::ReVector<Rva>{0x2e5eec},
            "invalid keyboard stops before get_keys");
    f.keyboard_result = f.keyboard;
    f.array_result = 0;
    require(!required(game_input_key_mode_2e9c7c(f.image, f.image, 3, 2, f.env, f.effects)),
            "invalid key array returns nativefalse");
    f.array_result = f.array;
    f.set(f.array + 0x20 + 3 * 8, Address(0));
    require(!required(game_input_key_mode_2e9c7c(f.image, f.image, 3, 2, f.env, f.effects)),
            "invalid button is rejected after index range");
    f.set(f.array + 0x20 + 3 * 8, f.button);
    f.calls.clear();
    require(
        !required(game_input_key_mode_2e9c7c(f.image, f.image, 3, INT32_MIN, f.env, f.effects)) &&
            f.calls == re::ReVector<Rva>{0x2e5eec, 0x2e5ff8},
        "mode integer does not truncate into0/1/2");

    Fixture retained_io;
    constexpr Address other_context = 0x4c0000;
    for (Address n = 0; n < 5; ++n) {
        retained_io.set(retained_io.io_context + 8 + 0xe08 + n, ReU8(1));
        retained_io.set(other_context + 8 + 0xe08 + n, ReU8(0));
    }
    retained_io.on_predicate = [&](Rva wrapper) {
        if (wrapper == 0x2e6744)
            retained_io.set(0x405b28, other_context);
    };
    for (ReI32 key = 0x22b; key <= 0x22f; ++key) {
        retained_io.set(0x405b28, retained_io.io_context);
        retained_io.calls.clear();
        require(required(game_input_key_2e5e4c(retained_io.image, retained_io.image, key, false,
                                               retained_io.env, retained_io.effects)) &&
                    retained_io.calls == re::ReVector<Rva>{0x2e6744},
                "five mouse pseudo-key bytes read retained original IO after cursor mutation");
    }
    retained_io.held_word = 0;
    retained_io.calls.clear();
    require(!required(game_input_key_2e5e4c(retained_io.image, retained_io.image, 0x22b, false,
                                            retained_io.env, retained_io.effects)) &&
                retained_io.calls == re::ReVector<Rva>{0x2e6744, 0x2e5eec, 0x2e5ff8, 0x2e68b8},
            "zero mouse byte falls back to keyboard using original pseudo-key ID");

    Fixture edges;
    auto edge = [&](ReI32 key, bool suppress = true) {
        return required(game_input_edge_2e8910(edges.image, edges.image, edges.keys, key, suppress,
                                               edges.env, edges.effects));
    };
    require(edge(3) && !edge(3) && edge(4) && edges.keys.entries.size() == 2 &&
                edges.get<ReU32>(0x3e4cf0) == 1,
            "global edge map shares per-key latches and distinct IDs");
    edges.cursor_word = 1;
    require(!edge(3) && edges.keys.entries[*key_find(edges.keys, 3)].previous == 1,
            "suppressed edge does not clear the retained key state");
    edges.cursor_word = 0;
    edges.held_word = 0;
    require(!edge(3) && edges.keys.entries[*key_find(edges.keys, 3)].previous == 0,
            "released key is inserted/updated even when returned edge is false");
    edges.held_word = 1;
    require(edge(3), "key can rise after observed release");
    edges.calls.clear();
    require(edge(5) && re::re_count(edges.calls.begin(), edges.calls.end(), 0x2e6744) == 2,
            "edge queries cursor twice on unsuppressed path, inner key suppressionfalse");
    for (ReI32 key = 6; key < 30; ++key)
        (void)edge(key);
    require(edges.keys.buckets == 64 && edges.keys.entries.size() == 27,
            "native unordered-map initial8 bucket growth to64 keeps concrete key data");
    for (const auto &entry : edges.keys.entries)
        require(entry.previous == 1 && key_find(edges.keys, entry.key).has_value(),
                "rehash/list specialization preserves all key payloads");
    // [I]The returned lookup iterator is consumed before default insertion;
    // the fresh insertion result is used for the final byte store.
    edges.held_word = 0;
    require(!edge(-1) && edges.keys.entries[*key_find(edges.keys, -1)].previous == 0,
            "signed negative ID remains a distinct full32 map key even when queryfalse");
    key_initialize(edges.keys);
    edges.keys.maximum_load = re::ReNumericLimits<float>::quiet_NaN();
    edges.held_word = 1;
    for (ReI32 k = 0; k < 9; ++k)
        (void)edge(k);
    require(edges.keys.buckets == 8 && edges.keys.entries.size() == 9,
            "unordered native COMISS/SETA load-factor test does not request a rehash");
    Fixture blocked;
    blocked.cursor_word = 1;
    require(!required(game_input_edge_2e8910(blocked.image, blocked.image, blocked.keys, 3, true,
                                             blocked.env, blocked.effects)) &&
                !blocked.keys.initialized && blocked.get<ReU32>(0x3e4cf0) == 0,
            "suppression before once-flag/owned map initialization");
    Fixture foreign_header;
    foreign_header.set(0x3e4cf0, ReU32(1));
    auto stopped =
        game_input_edge_2e8910(foreign_header.image, foreign_header.image, foreign_header.keys, 3,
                               false, foreign_header.env, foreign_header.effects);
    require(stopped.status == GameBaseStatus::missing_bytes && stopped.site == 0x2d8880,
            "warm map requires explicit owned-state import, never invented empty history");
}
void binder_checks() {
    Fixture f;
    auto aim = bind_game_input_physics_aim(f.image, f.image, f.env, f.effects);
    require(aim.key_2e5e4c(3, true), "aim binder reaches concrete key controller");
    auto frame = bind_game_input_physics_frame(f.image, f.image, f.keys, f.env, f.effects);
    const re::ReArray<UnityValue, 2> args{ReI32(3), true};
    const auto value = frame.external(0x2e8910, args);
    require(value && re::re_get<bool>(*value), "frame binder reaches shared edge state");
    auto dependencies =
        bind_game_input_physics_dependencies(f.image, f.image, f.keys, f.env, f.effects);
    require(dependencies.key_2e5e4c(3, false) == true &&
                dependencies.input_captured_2e6744() == false,
            "frame-dependency input callbacks consume concrete controls");
    auto movement = bind_game_input_physics_movement(f.image, f.image, f.keys, f.env, f.effects);
    const re::ReArray<MovementMainArgument, 2> movement_args{ReI32(3), true};
    require(movement.predicate(0x2e5e4c, movement_args), "movement key binder");
    f.effects.query = [](const GameInputCall &, const GameInputPhysicsRequest &q) {
        require(q.mask == 0xfedcba98 && q.first.x == 1 && q.second.y == 5 && q.radius == 0,
                "projectile binder preserves endpoint order/full mask");
        return ReU8(1);
    };
    auto projectile = bind_game_input_physics_projectile(f.image, f.env, f.effects);
    require(projectile.query_2e2320({1, 2, 3}, {4, 5, 6}, 0xfedcba98, 0, 0),
            "projectile query binder supplies local cache/staging before final typed result");
}
} // namespace
void check_game_input_physics_reconstruction() {
    argument_checks();
    metadata_checks();
    query_checks();
    key_checks();
    binder_checks();
}
} // namespace rust_internal_re
