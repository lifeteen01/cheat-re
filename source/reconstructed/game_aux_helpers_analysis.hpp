#pragma once
#include "field_getters_analysis.hpp"
#include "unity_backend_analysis.hpp"
namespace rust_internal_re {
// [I] Numeric module address and copied globals/game bytes, never a live ABI.
struct GameAuxEnvironment {
    Address module{};
};
struct GameAuxVectorSpec {
    Rva getter{}, end{};
    ReU32 offset{};
};
re::ReSpan<const GameAuxVectorSpec> game_aux_vector_specs();
// [C] Valid path copies QWORD then DWORD; invalid path3c7bbc stores zero8+4.
// The into form preserves overlapping source/output and partial writes on failure.
GameBaseResult<Address> game_aux_vector_into(Snapshot &, Rva, Address receiver, Address output);
GameBaseResult<Vec3> game_aux_vector(const Snapshot &, Rva, Address receiver);
GameBaseResult<Address> game_aux_pointer_37628c(const Snapshot &, Address);
GameBaseResult<Address> game_aux_static_pointer(const Snapshot &globals, const Snapshot &game, Rva,
                                                const GameAuxEnvironment & = {});
GameBaseResult<bool> game_aux_predicate_374268(const Snapshot &globals, const Snapshot &game,
                                               Address, const GameAuxEnvironment & = {});
// [C] Low byte controls36ad68/36ae90;372c1c ORs all32 bits.
GameBaseResult<bool> game_aux_write(Snapshot &, Rva, Address, ReU32);
AimWeaponCalls bind_game_aux_aim(const Snapshot &globals, const Snapshot &game,
                                 const GameAuxEnvironment & = {}, AimWeaponCalls = {});
ProjectileBoundaries bind_game_aux_projectile(const Snapshot &globals, const Snapshot &game,
                                              const GameAuxEnvironment & = {},
                                              ProjectileBoundaries = {});
InteractionCalls bind_game_aux_interaction(const Snapshot &globals, Snapshot &game,
                                           const GameAuxEnvironment & = {}, InteractionCalls = {});
MovementMainCalls bind_game_aux_movement(const Snapshot &globals, Snapshot &game,
                                         const GameAuxEnvironment & = {}, MovementMainCalls = {});
UnityApi bind_game_aux_frame(const Snapshot &globals, Snapshot &game,
                             const GameAuxEnvironment & = {}, UnityApi = {});
void check_game_aux_helpers_reconstruction();
} // namespace rust_internal_re
