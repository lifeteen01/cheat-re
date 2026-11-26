#pragma once
#include "internal_analysis.hpp"
#include "launcher_analysis.hpp"
#include "projectile_analysis.hpp"

namespace rust_internal_re {
// [I] Offline call values only; no address is ever converted to a host pointer.
// [C] integer arguments remain integer (notably item IDs/UIDs/counts/grades).
struct InteractionCall {
    Rva rva{}; Address self{}, other{}, third{};
    ReI32 integer{}, integer2{};
    Vec3 first{}, second{}; float scalar{}, scalar2{};
    Rva literal{}, slot{};
};
struct InteractionCalls {
    re::ReFunction<Address(const InteractionCall&)> object;
    re::ReFunction<ReI32(const InteractionCall&)> integer;
    re::ReFunction<bool(const InteractionCall&)> predicate;
    re::ReFunction<float(const InteractionCall&)> scalar;
    re::ReFunction<Vec3(const InteractionCall&)> vector;
    re::ReFunction<void(const InteractionCall&)> action;
    // [U] Matching-build copied class-name bytes, including pointer-range rejection.
    re::ReFunction<re::ReOptional<re::ReString>(Address)> class_name_2e5a54;
    re::ReFunction<Orientation(Address)> orientation_3739c4;
    OrientationApi orientation; // [C] shared concrete setter writes related +0x5c.
    re::ReFunction<ProjectilePrediction(Vec3,Vec3,Vec3,Address)> prediction_2e2374;
    // [U] Formatting/concatenation/hash cache fold 0x2e1ff4..0x2e20f1.
    // Inputs are speed, definition +38,+34,+44; null means allocation failed.
    re::ReFunction<Address(float,float,float,float)> trajectory_cache;
    // [C] Full binding retains the definition address and its native field rereads.
    re::ReFunction<Address(float,Address)> trajectory_cache_definition;
    // [U] IL2CPP class resolution/allocation 0x2e1432..0x2e149b.
    re::ReFunction<Address()> allocate_hit_test;
    // [C] String representation of second hook argument, consumed by strstr("Strike").
    re::ReFunction<re::ReString(Address)> argument_string;
    // [U] Copied string returned by 0x36b530 (ammo display name).
    re::ReFunction<re::ReString(Address)> ammo_name_36b530;
};
// [I] Frozen configuration/global input values; callbacks may mutate Snapshot/state
// but do not alter this copy during a replay. Names retain source RVAs.
struct InteractionConfig {
    bool rage_3d7c98{}, frozen_3d82a1{}, heli_melee_3d7d38{}, player_melee_3d7f68{};
    bool ore_3d7f18{}, farm_3d8241{}, hit_chams_3d7dd8{};
    bool increase_velocity_3d7ce8{}, psilent_3d7e78{}, active_3d72a0{};
    bool mask_byte_3e5228{}, fat_3d8058{}, fat_ready_3e5e79{}, pierce_3d7ec8{}, pierce_ready_3d8301{};
    bool reload_3e5048{}, auto_melee_3e4eb8{}, other_melee_3e5278{};
    bool autofire_3e5098{}, aim_ready_3e4238{}, aim_ready2_3e4239{};
    bool rapid_3e50e8{}, instant_3d7fb8{}, mode_3e4ff8{}, busy_218818{};
    bool periodic_3e4f08{}, drop_loot_3e5188{}, refill_3e4fa8{}, drop_wear_3e52c8{};
    bool upgrade_gate_3e5471{}, upgrade_tool_3e5138{}, trade_3e4e68{};
    bool transfer_3e4f58{}, close_loot_3e41f8{}, locks_3e51d8{}, force_return_3e4250{};
    float elapsed_3d72ec{}, charge_3e4254{}, rapid_threshold_3e5318{}, speed_3d80a8{};
    Address heli_3d72b8{}, player_3d72c0{}, farm_target_3d72c8{}, other_target_3e4248{};
    Address game_assembly_3d6f00{}, trajectory_3e5718{};
    ReI32 player_maximum_distance_3d8148{};
    Vec3 fat_point_3d72d0{}, pierce_point_3d72e0{}, motion_3d7248{};
    ReI32 bone_3d80f8{}, grade_3e5368{}, old_grade_3e53b8{}, trade_key_3e5408{}, lock_key_3e54c8{};
    ReI32 drop_loot_key_3e5528{}, drop_wear_key_3e55e8{}, transfer_key_3e5588{};
    re::ReArray<bool,8> transfer_categories_3e56f8{};
    // [U] Native reads stale stack +a0 when the destination getter is invalid.
    // Caller must supply the actual copied scratch bits to replay that path.
    re::ReOptional<ReU64> destination_scratch;
    // [I] Stops pathological native count/repeat loops; no native limit claimed.
    ReUSize iteration_limit{1000000};
};
struct InteractionState {
    bool refill_latch_3e5814{}, lock_taken_3e5ad8{}, unlock_3e5ad9{}, pickup_3e5ada{}, equipped_3e5adb{};
    ReU32 dispatch_bits_3e5828{}, melee_bits_3e3fd0{}, forwarding_bits_3e5bd8{};
    Address melee_original_3e3fc8{}, forwarding_original_3e5bd0{};
    ReI32 frame_3e5bc8{};
    re::ReMap<Rva,Address> dispatch_code; // [C] cached code pointer by dispatch slot.
    re::ReMap<Rva,float> deadlines; // [C] 0x2e5b7c distinct timer cells.
    re::ReMap<ReI32,bool> trade_key_latches; // [C] 0x2e8910 shared key map.
    re::ReMap<Rva,bool> key_latches; // [C] 0x2e89e4 +8 cells.
};
enum class InteractionStatus { returned, missing_dependency, snapshot_bounds, stale_stack_required, iteration_limit };
struct InteractionResult {
    InteractionStatus status{InteractionStatus::returned}; Rva dependency{};
    ReUSize actions{}, iterations{}; float value{};
    bool original_called{}, restored{}, worker_called{};
};
// [C] Entire bodies, including alternate branches after intermediate returns.
InteractionResult replay_automation_2e6b20(Snapshot&,InteractionState&,InteractionConfig,const InteractionCalls&);
InteractionResult replay_melee_2e12e0(Snapshot&,InteractionState&,InteractionConfig,Address weapon,Address argument,const InteractionCalls&);
InteractionResult replay_interaction_forward_2e91fc(Snapshot&,InteractionState&,InteractionConfig,Address argument,const InteractionCalls&);
InteractionResult replay_weapon_additional_range_32bb60(Snapshot&,Address held,const InteractionCalls&);
ProjectileBoundaries bind_projectile_interaction_range(Snapshot&,const InteractionCalls&,ProjectileBoundaries={});
// [C] Sample-local helpers; game magnitudes/time getters are explicit boundaries.
float interaction_range_2e091c(float reach,float elapsed,float magnitude,float fixed_delta,float smooth_delta,float delta);
ReI32 melee_bone_2e18bf(ReI32,float random);
Orientation interaction_look_rotation_2e0ff0(Vec3 forward,Vec3 up);
void check_interaction_workers_reconstruction();
} // namespace rust_internal_re
