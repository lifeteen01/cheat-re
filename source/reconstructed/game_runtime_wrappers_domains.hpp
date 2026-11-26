#pragma once
#include "game_runtime_wrappers_analysis.hpp"
#include "frame_residuals_analysis.hpp"
#include "world_esp_analysis.hpp"
namespace rust_internal_re {
MovementTickCalls bind_game_runtime_tick(Snapshot &, Snapshot &, const GameRuntimeEnvironment &,
                                         const GameRuntimeEffects &, MovementTickCalls = {});
FrameRaidApi bind_game_runtime_raid(Snapshot &, Snapshot &, const GameRuntimeEnvironment &,
                                    const GameRuntimeEffects &, FrameRaidApi = {});
WorldInteractionBackend bind_game_runtime_world_interaction(Snapshot &, Snapshot &,
                                                            const GameRuntimeEnvironment &,
                                                            const GameRuntimeEffects &,
                                                            WorldInteractionBackend = {});
WorldFullOverlayBackend bind_game_runtime_world_overlay(Snapshot &, Snapshot &,
                                                        const GameRuntimeEnvironment &,
                                                        const GameRuntimeEffects &,
                                                        WorldFullOverlayBackend = {});
WorldWorkerBackend bind_game_runtime_world_worker(Snapshot &, Snapshot &,
                                                  const GameRuntimeEnvironment &,
                                                  const GameRuntimeEffects &,
                                                  WorldWorkerBackend = {});
} // namespace rust_internal_re
