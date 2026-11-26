#pragma once
#include "server_analysis.hpp"

namespace rust_internal_re {
// [I] Owned snapshot replay only. Addresses below are numeric keys, never host pointers.
// [C] Ranges 0x32c0d4..0x32cae8 and 0x330b38..0x332163.
enum class ProjectileReplayStatus { completed, rejected, missing_boundary, out_of_snapshot, safety_limit };
struct ProjectileReplayResult {
    ProjectileReplayStatus status{ProjectileReplayStatus::completed};
    Rva stop_site{}, dependency{};
    ReUSize shots_processed{}, direct_hits{}, heli_hits{};
};
struct ProjectilePrediction {
    Vec3 direction{};
    bool empty{}; // [C] return from 0x2e3b58; true skips the aim replacement.
};
struct ProjectileShotEntry { Address object{},iterator{}; };
// [I] Typed dependency/effect interfaces. Local helpers use concrete shared binders;
// unbound reached roles stop explicitly. Generic calls pass the original callee RVA.
// [U] The game/Unity implementation, native ABI, caches and serialization are not inferred.
// [I] A missing reached callback stops with its site/dependency, retaining preceding writes.
struct ProjectileBoundaries {
    re::ReFunction<Address(Rva, Address, ReI32)> address;
    re::ReFunction<ReU32(Rva, Address, ReI32)> integer;
    re::ReFunction<bool(Rva, Address)> predicate;
    re::ReFunction<float(Rva, Address, ReI32, ReI32)> scalar;
    re::ReFunction<Vec3(Rva, Address, ReI32)> vector;
    re::ReFunction<Vec3(Rva, Address, Vec3)> transform;
    re::ReFunction<void(Rva, Address, Vec3)> set_position;
    re::ReFunction<float(float, float)> random_2e3d5c;
    re::ReFunction<ProjectilePrediction(Vec3, Vec3, Vec3, Address)> prediction_2e2374;
    re::ReFunction<Vec3(float, Vec3, bool)> spread_32bd4c;
    re::ReFunction<bool(Vec3, Vec3, ReU32, float, float)> query_2e2320;
    // [C] material getter/converter pairs at 0x330c04..0x330cf2.
    re::ReFunction<Address(Rva, Rva)> material;
    re::ReFunction<ReU64(Address)> hash_name_2d6354;
    re::ReFunction<ReU64(Rva, Rva, ReU64)> hash_literal_2e5b4c;
    // [C] 0x3ca884 is a zero-equals string comparison; getter RVA identifies literal.
    re::ReFunction<int(Address, Rva, Rva)> compare_class;
    re::ReFunction<Address(Address)> managed_string_2ce5dc;
    re::ReFunction<void(Address, Address, Vec3, Vec3)> hit_374168;
    // [C] 0x32c47f..0x32c502 searches a pointer vector by projectile +0x138.
    // [C] id +0x30 is converted by 0x2d4060, found via 0x32b838, sentinel
    // compared by 0x2cc534, mapped value read through 0x2d4de8.
    re::ReFunction<re::ReOptional<Address>(ReU32)> lookup_shot;
    re::ReFunction<void(ReU32)> erase_shot_32cb8c;
    // [C] Concrete bindings preserve the matched iterator through subsequent calls.
    // [I] Legacy ID-only callbacks above remain available for independent consumers.
    re::ReFunction<re::ReOptional<ProjectileShotEntry>(ReU32)> lookup_shot_entry;
    re::ReFunction<void(Address)> erase_shot_iterator;
    // [C] Required setup stage32c2d9..32c3c4 runs BEFORE random32c3ca.
    // [I] Concrete cache binder preserves the prepared target through evaluation.
    re::ReFunction<void()> prepare_curve_32c2d9;
    // [C] Evaluate wrapper 0x32b728 receives curve +0x428 and random [0,1].
    re::ReFunction<float(Address, float)> evaluate_curve_32b728;
};
// [I] Adapter to the existing concrete predictor. Callers bind a numeric table key
// to an owned span and supply the unresolved predicate/instant-hit inputs.
// [C] 0x2e2374 supplies target-origin and reference gravity byte zero.
ProjectilePrediction predict_projectile_2e2374(Vec3 origin, Vec3 target, Vec3 motion,
    re::ReSpan<const TrajectoryTable>, bool predicate_2f824c, bool instant_hit);
// [C] Helpers recovered from original static listing and independently byte-checked workers.
Vec3 move_towards_330830(Vec3 from, Vec3 to, float distance);
Vec3 closest_segment_2e5a80(Vec3 start, Vec3 end, Vec3 point);
ReI32 select_projectile_bone_330dab(ReI32 setting, float random, bool scientist);
ProjectileReplayResult replay_shot_32c0d4(Snapshot&, Address argument, const ProjectileBoundaries&, ReUSize maximum_shots=100000);
ProjectileReplayResult replay_projectile_330b38(Snapshot&, Address projectile, const ProjectileBoundaries&);
// [C] 0x32ba6c..0x32ba9a: validates entity, compares expected u32 against entity+0x138.
bool match_projectile_id_32ba6c(const Snapshot&, Address value_ptr, Address entity);
void check_projectile_reconstruction();
} // namespace rust_internal_re
