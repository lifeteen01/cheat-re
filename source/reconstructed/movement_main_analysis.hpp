#pragma once
#include "movement_analysis.hpp"
#include "server_analysis.hpp"
#include "hooks_analysis.hpp"
#include "entities_analysis.hpp"
#include "aim_weapon_analysis.hpp"
#include "launcher_analysis.hpp"

namespace rust_internal_re {
// [I] Owned arguments, never native call frames. Integer and binary32 result
// classes stay separate, particularly 37261c IDs and 32a770's three-way result.
using MovementMainArgument=re::ReVariant<Address,ReI32,ReU32,bool,float,Vec3,re::ReArray<float,4>,re::ReString>;
using MovementMainArguments=re::ReSpan<const MovementMainArgument>;
struct MovementMainRayHit {
    bool hit{};
    Vec3 point{};
    float distance{};
    Address collider{};
};
// [I] Values projected from the copied 0x50-byte solver record, not an ABI.
struct MovementMainGrenadeSolution { bool solved{}; Vec3 direction{}; };
struct MovementMainCalls {
    // [U] Game getters, predicates, setters, exports and physics. Each reached
    // dependency must be supplied; an empty function stops the replay explicitly.
    re::ReFunction<Address(Rva,MovementMainArguments)> pointer;
    re::ReFunction<ReU32(Rva,MovementMainArguments)> integer;
    re::ReFunction<float(Rva,MovementMainArguments)> scalar;
    re::ReFunction<bool(Rva,MovementMainArguments)> predicate;
    re::ReFunction<Vec3(Rva,MovementMainArguments)> vector;
    // [I] 369e70 returns an owned re::ReString projection, not a C-string pointer.
    re::ReFunction<re::ReString(Rva,MovementMainArguments)> string;
    re::ReFunction<re::ReArray<float,4>(Rva,MovementMainArguments)> quaternion;
    re::ReFunction<void(Rva,MovementMainArguments)> effect;
    re::ReFunction<Address(re::ReStringView,re::ReStringView,re::ReStringView,
                          ReI32,ReI32)> method_info_3349ac;
    re::ReFunction<MovementMainRayHit(Vec3,Vec3,float,ReU32,int)> raycast_2e8fac;
    // [I] Optional adapter override; absent uses concrete server predictor and
    // owned state.prediction_tables. No default fabricated direction is supplied.
    re::ReFunction<Vec3(Address,Vec3,Vec3,Vec3)> prediction_2e2374;
};
struct MovementMainEntityRecord {Address entity{};ReU8 byte8{};};
struct MovementMainPredictionTable {
    TrajectoryParameters parameters;
    re::ReVector<TrajectoryTable> candidates;
};
struct MovementMainState {
    // [I] Owned byte-addressed globals/config preserve aliasing and callback
    // changes. Values are keyed by the evidence RVA. No host pointers stored.
    Snapshot globals{0,re::ReVector<ReByte>(0x400000)};
    re::ReVector<Vec3> interactive_positions_218960;
    re::ReVector<MovementMainEntityRecord> entities_2187d0;
    re::ReVector<Vec3> directions_3f4af0, points_3f4b08;
    // [C] 328aca reads beyond logical vector size; caller-supplied copied capacity.
    re::ReVector<Vec3> candidate_backing_tail;
    re::ReVector<re::ReString> codes_218888, tried_248e98;
    re::ReString last_code_218868, demo_name_3f45b8, unlock_code_3f4628, lock_code_3f4698;
    re::ReMap<ReU32,ReU32> attempts_3e5e30;
    re::ReMap<ReU32,float> attempt_time_3e5df0;
    re::ReMap<re::ReString,ReU32> player_kind_3d7260;
    re::ReMap<ReU64,Address> low_velocity_tables;
    re::ReMap<Address,MovementMainPredictionTable> prediction_tables;
    // [U] 3183e3's four-field format has only three initialized arguments in
    // 317c3c. The fourth native stack qword (+28) is an explicit copied input.
    re::ReOptional<double> launch_format_fourth;
    // [C] Packed vector<bool> 3f4728 observations, indices 0..5.
    re::ReArray<bool,6> layers_3f4728{};
};
struct MovementMainInput { Address movement{},second{},model_state{}; ReUSize iteration_limit{1000000}; };
enum class MovementMainStatus { returned,missing_bytes,missing_boundary,iteration_limit,invalid_size };
struct MovementMainResult {
    MovementMainStatus status{MovementMainStatus::returned};
    Rva boundary{};
    Address missing_address{};
    ReUSize snapshot_stores{},global_stores{},calls{},iterations{};
    bool original_called{},collision_tail_called{};
};
// [C] Main body 324b30..32911e, including 329119's tail jump to 329aa0.
// [U] Matching-game/export boundaries and explicit unavailable copied data stop.
MovementMainResult replay_movement_main_324b30(Snapshot&,MovementMainState&,
    const MovementMainInput&,const MovementMainCalls&);
// [C] Full transitive launch worker, including trap/grenade/projectile branches.
MovementMainResult replay_launch_aim_317c3c(Snapshot&,MovementMainState&,Address instance,
    Address player,const MovementMainCalls&,ReUSize iteration_limit=1000000);
void check_movement_main_reconstruction();
} // namespace rust_internal_re
