#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
// [I] Observed four-float orientation value; not a game ABI declaration.
struct Orientation { float x{},y{},z{},w{}; };
static_assert(sizeof(Orientation)==16);
Orientation multiply_orientation_373b28(Orientation left, Orientation right);
// [U] Matching-game reads and Quaternion.Inverse remain explicit boundaries.
struct OrientationApi {
    re::ReFunction<Orientation(Address)> rotation_373c60;
    re::ReFunction<Orientation(Orientation)> inverse_3738cc;
};
enum class LauncherStatus { complete, missing_dependency, unreadable_snapshot, analysis_limit };
struct LauncherResult {
    LauncherStatus status{LauncherStatus::complete};
    Rva stopped_at{};
    bool saved{}, worker_called{}, original_called{}, orientation_written{};
};
LauncherResult write_orientation_373d04(Snapshot&, Address related, Orientation desired, const OrientationApi&);
// [C] One global saved value at 0x3d7030, shared across launcher calls.
struct LauncherState { Orientation saved_3d7030; };
struct LauncherApi {
    re::ReFunction<Address()> local_player_2dda9c;
    re::ReFunction<Address(Address)> related_369298;
    re::ReFunction<Orientation(Address)> orientation_3739c4;
    re::ReFunction<Address()> worker_instance_35d31c;
    re::ReFunction<void(Address,Address)> worker_317c3c;
    re::ReFunction<LauncherResult(Address,Address)> worker_replay_317c3c;
    re::ReFunction<void(Address)> original;
    OrientationApi restore;
};
// [C] 0x2dda50 saves orientation, then calls 0x317c3c; 0x2ddbbc restores.
// [C] Worker internals can bind replay_launch_aim_317c3c; [U] game/original ABI remains external.
LauncherResult replay_launcher_2ddb10(Snapshot&, LauncherState&, Address launcher, const LauncherApi&);
void check_launcher_reconstruction();
} // namespace rust_internal_re
