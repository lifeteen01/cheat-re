#include "launcher_worker_bindings.hpp"
namespace rust_internal_re {
LauncherApi bind_launch_worker_317c3c(Snapshot& im,MovementMainState& state,MovementMainCalls calls,
    LauncherApi api,ReUSize maximum) {
    api.worker_replay_317c3c=[&im,&state,calls,maximum](Address worker,Address player) {
        const auto replay=replay_launch_aim_317c3c(im,state,worker,player,calls,maximum);
        LauncherResult result;
        result.status=replay.status==MovementMainStatus::returned?LauncherStatus::complete:
            replay.status==MovementMainStatus::missing_boundary?LauncherStatus::missing_dependency:
            replay.status==MovementMainStatus::missing_bytes?LauncherStatus::unreadable_snapshot:LauncherStatus::analysis_limit;
        result.stopped_at=replay.boundary;return result;
    };
    return api;
}
} // namespace rust_internal_re
