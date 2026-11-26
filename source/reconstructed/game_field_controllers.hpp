#pragma once
#include "game_helpers_analysis.hpp"
#include "unity_backend_analysis.hpp"

namespace rust_internal_re {
// [C] Pure guarded model/player predicates, including the full32-bit mask form.
GameBaseResult<bool> game_field_predicate(const Snapshot &, Rva, Address, ReU32 mask = 0);
GameBaseResult<Address> game_field_weapon(Snapshot &, Rva, Address, const GameHelperEnvironment &,
                                          const GameHelperApi &);
// [I] Owned value projection of the native twelve-byte output argument.
GameBaseResult<Vec3> game_field_direction_3691c0(Snapshot &, Address, const GameHelperEnvironment &,
                                                 const GameHelperApi &);
GameBaseResult<bool> game_field_backup_373eb4(Snapshot &globals, Snapshot &game, Address,
                                              ReU8 restore, Address module = 0);
// [C] Installs only into copied bytes; no live code or function pointer executes.
GameBaseResult<bool> game_field_hook_32308c(Snapshot &, Address record, Address slot,
                                            Address replacement);
AimWeaponCalls bind_game_fields_aim(Snapshot &, const GameHelperEnvironment &,
                                    const GameHelperApi &, AimWeaponCalls = {});
ProjectileBoundaries bind_game_fields_projectile(Snapshot &, const GameHelperEnvironment &,
                                                 const GameHelperApi &, ProjectileBoundaries = {});
InteractionCalls bind_game_fields_interaction(Snapshot &, const GameHelperEnvironment &,
                                              const GameHelperApi &, InteractionCalls = {});
MovementMainCalls bind_game_fields_movement(Snapshot &, const GameHelperEnvironment &,
                                            const GameHelperApi &, MovementMainCalls = {});
UnityApi bind_game_fields_frame(Snapshot &, const GameHelperEnvironment &, const GameHelperApi &,
                                UnityApi = {});
void check_game_field_controllers();
} // namespace rust_internal_re
