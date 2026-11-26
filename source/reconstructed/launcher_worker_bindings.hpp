#pragma once
#include "movement_main_analysis.hpp"
namespace rust_internal_re {
// [I] Closures borrow the owned snapshot/state. Game/original/restoration calls
// stay in the supplied LauncherApi; the worker body is always the concrete replay.
LauncherApi bind_launch_worker_317c3c(Snapshot&,MovementMainState&,MovementMainCalls,
    LauncherApi = {},ReUSize maximum=1000000);
} // namespace rust_internal_re
