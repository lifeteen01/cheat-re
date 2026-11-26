#pragma once
#include "server_analysis.hpp"
#include "hooks_analysis.hpp"

namespace rust_internal_re {
// [I] Owned analysis state; names suffix the observed global RVAs. No live ABI.
// [C] re::ReVector models the 12-byte value lists at 0x248eb8 and 0x218960.
struct MovementTickState {
    ReU32 initialization_3f8470{};
    Address original_3f8468{};
    float refreshed_3f2124{}, refreshed_3f81c4{}, elapsed_3d72ec{};
    bool manipulation_3d72a0{}, special_3f81c8{};
    bool flag_3f8558{}, flag_3f8559{};
    ReU32 counter_3f855c{};
    bool frozen_3d82a1{}, previous_frozen_3f8560{};
    Vec3 frozen_position_3f81b8{};
    bool interactive_3efb41{}, previous_interactive_3f81a0{};
    Vec3 anchor_3f81a8{}, interactive_start_3f83f8{}, interactive_last_3f8458{};
    float teleport_distance_3ed6b8{};
    Vec3 velocity_3e6060{};
    re::ReVector<Vec3> special_positions_248eb8, interactive_positions_218960;
};
struct MovementTickInput {
    Address argument{}, return_address{}, game_assembly_3d6f00{};
    bool special_teleport{}, pierce{}, desync_not_visible{}, should_attempt_desync{};
    bool byte_3f2b08{};
    // [U] State/config predicates inside the already reconstructed limiter remain inputs.
    TickLimiterInput limiter;
    // [I] Analysis safeguard against callback-grown lists, not a native limit.
    ReUSize replay_limit{1000000};
};
// [U] Required callbacks only on reached branches. Numeric arguments/results are
// [I] analysis values; these signatures do not assert native calling conventions.
struct MovementTickCalls {
    re::ReFunction<Address(Rva)> resolve_original_2ce5d8;
    re::ReFunction<void(Rva, Address)> initialize_dispatch_2cbd24;
    re::ReFunction<ReU32(Address, Address)> original_2cb9fc;
    re::ReFunction<bool()> predicate_2e0e4c;
    re::ReFunction<Address()> context_2e069c, player_2dda9c, target_2e02b0;
    re::ReFunction<float()> time_31581c, time_2e6240;
    re::ReFunction<ReU32()> mask_2e6a6c;
    re::ReFunction<bool(Vec3, Vec3, ReU32, float, float)> query_2e2320;
    re::ReFunction<Address(Address)> record_36a2c8, transform_32cc9c;
    re::ReFunction<Address(Address)> correction_object_3680d4, state_369400;
    re::ReFunction<Vec3(Address, int)> point_368be8;
    re::ReFunction<Vec3(Address)> position_369790;
    re::ReFunction<Vec3(Address)> position_3747d4;
    re::ReFunction<void(Address, Vec3)> position_374ec8;
    re::ReFunction<void(Address, Vec3, Address, bool)> correction_32a9f8;
    re::ReFunction<void(Address, int)> flags_372c1c;
    re::ReFunction<void(Address)> update_36ace0;
};
enum class MovementReplayStatus { returned, snapshot_bounds, replay_limit };
struct MovementTickResult {
    MovementReplayStatus status{MovementReplayStatus::returned};
    bool value{}, matching_caller{}, refreshed{}, limiter_reached{};
    float clamped_elapsed{}, raw_elapsed{};
    ReUSize snapshot_stores{}, special_replays{}, interactive_replays{};
    re::ReOptional<TickLimiterResult> limiter;
};
// [C] Entire 0x32cea8..0x32db5b control flow, reusing 0x32d9ca..0x32db1e.
// [U] Game/physics calls and metadata dispatch are explicit boundaries above.
MovementTickResult replay_movement_tick_32cea8(Snapshot&, MovementTickState&,
    MovementBudgetState&, SpeedBudgetState&, const MovementTickInput&,
    const MovementTickCalls&, const MovementPhysics&, const SpeedBoundaries&);

enum class ColliderMethod { set_is_trigger, shrink_radius, restore_radius };
// [I] Owned equivalents of the lazy bits, method pointers and one shared radius latch.
struct ColliderDetourState {
    ReU32 initialization_3f24a0{};
    Address original_3f2498{}, trigger_3f2588{}, shrink_3f2670{}, restore_3f2758{};
    bool smooth_latch_3ef841{}, radius_latch_3f2668{};
};
struct ColliderDetourInput {
    Address object{}, second{}, third{};
    bool smooth_flyhack_3f2488{}, fly_3efa81{}, frozen_3d82a1{};
};
struct ColliderDetourCalls {
    re::ReFunction<Address(Address)> capture_322ef8;
    re::ReFunction<Address(Rva)> resolve_original_2ce5d8;
    re::ReFunction<void(Rva, Address)> initialize_dispatch_2cbd24;
    re::ReFunction<void(Address, Address, Address, Address)> original_2cba50;
    // [C] Resolution returns MethodInfo, whose first qword is dereferenced.
    // [C] UnityEngine / Collider.set_isTrigger or CapsuleCollider.set_radius;
    // [C] 0x3349ac receives literal selectors -1 and -1 (0x322c5d..0x322c6b).
    re::ReFunction<Address(ColliderMethod, ReI32, ReI32)> resolve_method_3349ac;
    re::ReFunction<void(Address, Address, bool)> trigger_3214f4;
    re::ReFunction<void(Address, Address, float)> radius_32225c;
};
struct ColliderDetourResult {
    MovementReplayStatus status{MovementReplayStatus::returned};
    Address captured_collider{};
    bool original_called{}, trigger_called{}, radius_changed{}, radius_restored{};
};
// [C] Full 0x322aec..0x322ef6, including capture-before-original and 0.5 restoration.
ColliderDetourResult replay_collider_322aec(const Snapshot&, ColliderDetourState&,
                                         const ColliderDetourInput&, const ColliderDetourCalls&);
void check_movement_reconstruction();
} // namespace rust_internal_re
