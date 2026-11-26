#pragma once
#include "metadata_argument_bindings.hpp"
#include "game_helpers_analysis.hpp"
#include "unity_backend_analysis.hpp"
namespace rust_internal_re {
struct GameRootEnvironment {
    Address module{}, literal_storage{};
    ReUSize literal_capacity{64};
    MetadataLimits metadata_limits;
};
struct GameRootEffects {
    MetadataApi metadata;
    // [U] Matching no-argument GameAssembly effect, never a numeric pointer call.
    re::ReFunction<Address(const MetadataWrapperCall &)> local_player;
    // [I] Optional evidence observation only; no executable context constructed.
    re::ReFunction<void(const MetadataWrapperCall &)> observe_context;
};
GameBaseResult<Address> game_root_local_player_2dda9c(Snapshot &, const GameRootEnvironment &,
                                                      const GameRootEffects &);
GameBaseResult<Address> game_root_camera_2e069c(Snapshot &globals, const Snapshot &game,
                                                const GameRootEnvironment &,
                                                const GameRootEffects &);
GameBaseResult<ReU8> game_root_gate_2e0e4c(const Snapshot &globals, const Snapshot &game,
                                                   const GameRootEnvironment &);
AimWeaponCalls bind_game_roots_aim(Snapshot &, const Snapshot &, const GameRootEnvironment &,
                                   const GameRootEffects &, AimWeaponCalls = {});
ProjectileBoundaries bind_game_roots_projectile(Snapshot &, const Snapshot &,
                                                const GameRootEnvironment &,
                                                const GameRootEffects &, ProjectileBoundaries = {});
InteractionCalls bind_game_roots_interaction(Snapshot &, const Snapshot &,
                                             const GameRootEnvironment &, const GameRootEffects &,
                                             InteractionCalls = {});
MovementMainCalls bind_game_roots_movement(Snapshot &, const Snapshot &,
                                           const GameRootEnvironment &, const GameRootEffects &,
                                           MovementMainCalls = {});
LauncherApi bind_game_roots_launcher(Snapshot &, const GameRootEnvironment &,
                                     const GameRootEffects &, LauncherApi = {});
UnityApi bind_game_roots_frame(Snapshot &, const Snapshot &, const GameRootEnvironment &,
                               const GameRootEffects &, UnityApi = {});
void check_game_root_helpers();
} // namespace rust_internal_re
