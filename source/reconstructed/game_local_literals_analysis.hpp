#pragma once
#include "game_direct_wrappers_analysis.hpp"
namespace rust_internal_re {
enum class GameLocalLiteralOperationKind { load, constant, store };
struct GameLocalLiteralOperation {
    GameLocalLiteralOperationKind kind{};
    ReU8 slot{}, width{};
    ReU16 offset{};
    ReU64 source_or_value{};
    Rva site{};
};
struct GameLocalLiteralSpec {
    Rva getter{}, end{}, converter{}, guard{}, decode{};
    ReU32 guard_offset{}, count{}, modulus{}, operation_begin{}, operation_count{};
};
re::ReSpan<const GameLocalLiteralSpec> game_local_literal_specs();
struct GameLocalLiteralValue {
    re::ReVector<re::ReOptional<ReU8>> bytes;
    re::ReOptional<Address> address;
    re::ReString text;
    bool terminated{};
};
struct GameLocalLiteralEnvironment {
    GameDirectEnvironment direct;
    // [I] Actual supplied copied buffer keys, never fabricated host/stack pointers.
    // Several getters may map to overlapping native frame scratch when known.
    re::ReMap<Rva, Address> aliases;
    ReUSize maximum_bytes{1048576};
};
GameBaseResult<GameLocalLiteralValue> game_local_literal(Snapshot &image, Snapshot &game,
                                                         Rva getter, Rva converter,
                                                         const GameLocalLiteralEnvironment &);
GameBaseResult<ReU64> game_local_literal_hash(Snapshot &, Snapshot &, Rva, Rva,
                                                      ReU64 seed,
                                                      const GameLocalLiteralEnvironment &);
GameBaseResult<ReU64> game_local_name_hash_2d6354(const Snapshot &, Address,
                                                          ReUSize maximum_bytes = 1048576);
GameBaseResult<int> game_local_literal_compare(Snapshot &, Snapshot &, Address, Rva, Rva,
                                               const GameLocalLiteralEnvironment &);
GameBaseResult<Address> game_local_literal_managed(Snapshot &, Snapshot &, Rva, Rva,
                                                   const GameLocalLiteralEnvironment &,
                                                   const GameDirectEffects &);
InteractionCalls bind_game_local_literals_interaction(Snapshot &, Snapshot &,
                                                      const GameLocalLiteralEnvironment &,
                                                      const GameDirectEffects &,
                                                      InteractionCalls = {});
ProjectileBoundaries bind_game_local_literals_projectile(Snapshot &, Snapshot &,
                                                         const GameLocalLiteralEnvironment &,
                                                         const GameDirectEffects &,
                                                         ProjectileBoundaries = {});
void check_game_local_literals_reconstruction();
} // namespace rust_internal_re
