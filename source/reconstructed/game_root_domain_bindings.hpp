#pragma once
#include "game_root_helpers.hpp"
#include "frame_residuals_analysis.hpp"
#include "movement_analysis.hpp"

namespace rust_internal_re {
// [I] These adapters borrow both owned snapshots. Other callbacks are retained.
MovementTickCalls bind_game_roots_tick(Snapshot &, const Snapshot &, const GameRootEnvironment &,
                                       const GameRootEffects &, MovementTickCalls = {});
BoneQueries bind_game_roots_bones(Snapshot &, const Snapshot &, const GameRootEnvironment &,
                                  const GameRootEffects &, BoneQueries = {});
InstantHitQueries bind_game_roots_instant(Snapshot &, const Snapshot &, const GameRootEnvironment &,
                                          const GameRootEffects &, InstantHitQueries = {});
FrameDependencyApi bind_game_roots_dependencies(Snapshot &, const Snapshot &,
                                                const GameRootEnvironment &,
                                                const GameRootEffects &, FrameDependencyApi = {});
FrameRaidApi bind_game_roots_raid(Snapshot &, const Snapshot &, const GameRootEnvironment &,
                                  const GameRootEffects &, FrameRaidApi = {});
void check_game_root_domain_bindings();
} // namespace rust_internal_re
