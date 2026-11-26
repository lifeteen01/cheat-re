#pragma once
#include "entities_analysis.hpp"
#include "server_analysis.hpp"

namespace rust_internal_re {
// [I] Offline interfaces only. Addresses are keys into Snapshot; no live ABI or calls.
// [U] Callbacks must provide matching-build results and may mutate only owned data.
// Missing callbacks/bytes stop explicitly; no boundary defaults to success.
// [I] Workers return status; directly invoked helpers throw std::runtime_error.
enum class AimWeaponStatus { returned, missing_bytes, missing_boundary, nonprogressing_math, analysis_limit };
struct AimWeaponResult { AimWeaponStatus status{AimWeaponStatus::returned}; Rva boundary{}; };
struct AimPredictionRequest {
    Vec3 origin, point, motion;
    Address table_context{}; // [C] fifth argument, global 0x3e5718, at 0x2f9bf4 etc.
};
struct AimWeaponCalls {
    re::ReFunction<bool(Address)> valid_2e0e9c;
    // [C] RVA selects the original getter; object is its observed receiver.
    re::ReFunction<Address(Rva,Address)> object;
    re::ReFunction<Vec3(Rva,Address)> vector;
    re::ReFunction<float(Rva,Address)> scalar;
    re::ReFunction<ReU32(Rva,Address)> integer;
    re::ReFunction<bool(Rva,Address,ReU8)> predicate;
    // [C] nullopt means the class-name getter returned an out-of-range pointer.
    re::ReFunction<re::ReOptional<ReU64>(Address)> class_hash_2e5a54_2d6354;
    re::ReFunction<Vec3(Address,int)> bone_368be8;
    re::ReFunction<int(Address,int)> choose_bone_368cb0;
    re::ReFunction<bool(int,bool)> key_2e5e4c;
    re::ReFunction<Vec3(const AimPredictionRequest&)> prediction_2e2374;
    // [C] 0x2d9540 formats a scalar into an owned string; it is NOT a lock.
    re::ReFunction<void(float)> format_2d9540;
    re::ReFunction<void()> destroy_formatted_2cc4f4;
    re::ReFunction<void(Address,Address)> helicopter_2fa300; // context, local player
    // [U] quaternion getter 0x374aa4 + conversion 0x31530c, observed Euler y.
    re::ReFunction<float(Address)> transform_euler_y;
    // [C] 0x2ef724 looks up cheat-owned baseline record in global 0x3e5f10.
    re::ReFunction<Address(ReU32)> baseline_2ef724;
};
struct AimConfig {
    bool aimbot{}, aimmarker{}, psilent{}, target_helicopter{}, active_3d72a0{};
    ReI32 player_maximum_distance{};
    bool increase_velocity{}, instant_hit{}, byte_3d8301{}, byte_3e4238{};
    float projectile_speed{}, scalar_3e6084{};
    bool smooth{}; float smoothing{};
};
struct AimState {
    Vec3 marker_3e6050{}, motion_3d7248{}, compensation_3e6060{};
    Address table_context_3e5718{};
};
// [C] Complete worker control flow 0x2f9988..0x2fa2fd; game getters/prediction
// and the separate helicopter worker remain explicit boundaries above.
AimWeaponResult replay_aim_2f9988(Snapshot&, AimState&, const AimConfig&,
    Address context, Address local, const re::ReFunction<Address()>& select_2e02b0,
    const AimWeaponCalls&);

// [C] Literal polynomial math 0x3c85e8/0x3c86ac, angle construction 0x2f80bc,
// repeated wrap 0x316fd0 and single-step wrap 0x2f84e8.
float approximate_asin_3c85e8(float);
float approximate_atan2_3c86ac(float y,float x);
float approximate_sqrt_2e3c88(float); // [C] inverse-root seed + two Newton steps, reciprocal.
Vec2 aim_angles_2f80bc(Vec3 origin,Vec3 point);
bool wrap_angles_316fd0(Vec2&); // [I] false prevents a native non-progress loop.
Vec2 wrap_once_2f84e8(Vec2);
float clamp_dispatch_2ed2ac(float value,float low,float high);

struct AimPointConfig {
    int primary{}, secondary{}, first_priority{}, second_priority{}, second_key{};
    bool fat_bullet{}, pierce{}, psilent{};
};
// [C] Whole point selector 0x369790..0x369c1b including secondary-key override
// and mixed x/z-from-first, y-from-second bone + 0.05 branches.
Vec3 aim_point_369790(Address,const AimPointConfig&,const AimWeaponCalls&);

struct TargetRecord { Address entity{}; ReU8 category{}; }; // [C] stride 0x10.
struct TargetConfig {
    bool keep{}, active_3d72a0{}, auto_enemy{}, pierce{}, visibility_check{};
    bool scientist{}, wounded{}, sleepers{};
    ReI32 player_maximum_distance{}, scientist_maximum_distance{}, fov{};
    ReI32 screen_width{}, screen_height{};
};
struct TargetState { Address retained_3e3e90{}; };
struct TargetSelectionInput {
    bool gate_2e0e4c{}; Address camera_2e069c{}, local_2dda9c{};
    ProjectionBounds projection_argument_3d72a8{};
    // [U] 0x2cb3a4 is a no-op constructor: initial stack bytes are not recovered.
    // Caller supplies them; a failed projector can retain previous scratch data.
    Vec2 initial_projection_scratch{};
    re::ReSpan<const TargetRecord> records; // [I] copied 0x2187d0 container view.
};
struct TargetCalls {
    AimWeaponCalls game;
    re::ReFunction<bool(Address,Vec3,Vec2&,ProjectionBounds)> project_36cd20;
    // [U] Identity string construction 0x369e70 / map 0x2df608; returns +0x24.
    re::ReFunction<ReU32(Address,ReU8)> record_kind;
};
bool target_eligible_36aec4(Address,ReU8,const TargetConfig&,const AimWeaponCalls&);
Address select_target_2e02b0(TargetState&,const TargetSelectionInput&,
    const TargetConfig&,const TargetCalls&);

// [C] Helpers 0x3716e0 and 0x371eb8 compare these IDs and require category 0.
// [C] Complete ID predicates 0x371828 / 0x3719e8 are pure membership tables.
// [U] Definition retrieval and its ID/category fields are explicit inputs.
enum class WeaponKindQuery { melee_3721b4, projectile_371464, server_371eb8, thrown_3716e0 };
bool melee_id_371828(ReU32);
bool projectile_id_3719e8(ReU32);
Address classify_weapon_subset(WeaponKindQuery,Address held,Address definition,
    ReU32 id,ReU32 category);

struct WeaponConfig {
    bool no_melee_slow{}, eoka_tap{}, auto_fire{}; int eoka_index{}; float success_rate{};
    bool byte_3d82a1{}, no_weapon_bob{}, byte_3efba1{}, byte_3efc01{};
    bool fast_fire{}; float view_value{}; bool full_auto{}, no_sway{};
    bool rage_recoil{}, recoil_mod{}; ReI32 recoil_percent{}, recoil_percent1{};
};
// [C] Whole 0x319024..0x3192da dispatcher and called recoil 0x36bc14..0x36be9a.
// [U] This dispatcher does not implement all weapon modifications in the sample.
AimWeaponResult replay_weapon_319024(Snapshot&,const WeaponConfig&,Address local,
    const AimWeaponCalls&);
AimWeaponResult replay_recoil_36bc14(Snapshot&,const WeaponConfig&,Address weapon,
    bool enabled,Address local,const AimWeaponCalls&);
void full_auto_36b434(Snapshot&,Address);
void no_sway_36be9c(Snapshot&,Address);
void check_aim_weapon_reconstruction();
} // namespace rust_internal_re
