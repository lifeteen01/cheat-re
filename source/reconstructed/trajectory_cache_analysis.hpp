#pragma once
#include "movement_main_analysis.hpp"
#include "interaction_workers.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
// [I] Optional supplied CRT formatter permits matching captured native locale /
// nonfinite spelling. Default uses the host C %f backend, not invented key text.
using TrajectoryFloatFormatter=re::ReFunction<re::ReString(float)>;
Address cache_melee_trajectory_2e1ff4(const Snapshot&,MovementMainState&,float speed,
    Address definition,const TrajectoryFloatFormatter& = {});
InteractionCalls bind_interaction_trajectory_cache(const Snapshot&,MovementMainState&,
    InteractionCalls = {},TrajectoryFloatFormatter = {});
void check_trajectory_cache_reconstruction();
} // namespace rust_internal_re
