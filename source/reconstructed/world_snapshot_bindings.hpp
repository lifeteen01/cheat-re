#pragma once
#include "world_esp_analysis.hpp"
#include "game_helpers_analysis.hpp"
namespace rust_internal_re {
// [I] Compose only byte-translated helper roles. Existing backend fields for
// matching Unity effects, names/inventory/ImGui primitives remain supplied.
WorldSimulationBackend bind_world_simulation_helpers(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,SnapshotBindingQueries,WorldSimulationBackend = {});
WorldPlayerRunBackend bind_world_player_helpers(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,SnapshotBindingQueries,WorldPlayerRunBackend = {});
void check_world_snapshot_bindings();
} // namespace rust_internal_re
