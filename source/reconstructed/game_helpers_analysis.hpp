#pragma once
#include "field_getters_analysis.hpp"
#include "metadata_wrapper_analysis.hpp"
#include "hit_override_analysis.hpp"
namespace rust_internal_re {
// [I] Numeric target/context keys only. No executable pointer conversion exists.
struct GameHelperCall {
    Rva wrapper{}, executor{};
    Address dispatcher{}, target{}, context{}, receiver{}, argument{};
    ReU32 integer{};
    re::ReString text;
};
struct GameHelperDirectSpec {
    Rva wrapper{},end{},flags{},target{},context{},game_offset{},executor{};
};
re::ReSpan<const GameHelperDirectSpec> game_helper_direct_specs();
struct GameHelperApi {
    // [I] May be supplied by bind_metadata_wrappers; all nine export wrapper
    // bodies/cache states then remain in the existing metadata reconstruction.
    MetadataApi metadata;
    // [U] Actual matching GameAssembly/Unity effects, separately typed.
    re::ReFunction<Address(const GameHelperCall&)> object;
    re::ReFunction<Vec3(const GameHelperCall&)> vector;
    re::ReFunction<Orientation(const GameHelperCall&)> orientation;
    // [I] Optional detection-only observer of excluded context setup 2cbd24.
    re::ReFunction<void(const GameHelperCall&)> observe_context;
};
// [I] Owned adaptation of native 3e60b0's Address -> byte default-inserting map.
// Native nodes hold the key at +10 and a zero-initialized byte at +18.
struct GameHelperVisibilityRegistry {re::ReMap<Address,ReU8> entries;};
struct GameHelperEnvironment {
    Address module{},initial_loader_node{},literal_storage{};
    ReUSize literal_capacity{512};
    MetadataLimits limits{};
    // [U] 36920c/3739c4 leave the caller's output untouched on invalid receivers.
    // The direction caller's actual stale stack quaternion is an explicit input.
    re::ReOptional<Orientation> direction_scratch;
    // [I] When provided, owns authoritative visibility-map contents. Without it,
    // copied native map lookup is concrete; missing-key allocation is ledgered.
    GameHelperVisibilityRegistry* visibility{};
};
GameBaseResult<Address> game_helper_object(Snapshot&,Rva,Address,
    const GameHelperEnvironment&,const GameHelperApi&,ReU32 integer=0);
GameBaseResult<Vec3> game_helper_vector(Snapshot&,Rva,Address,
    const GameHelperEnvironment&,const GameHelperApi&);
GameBaseResult<Orientation> game_helper_orientation(Snapshot&,Rva,Address,
    const GameHelperEnvironment&,const GameHelperApi&,re::ReOptional<Orientation> initial={});
// [C] 37224c is a raw uint32_t list count; it does not return float.
GameBaseResult<ReU32> game_helper_integer(Snapshot&,Rva,Address,
    const GameHelperEnvironment&,const GameHelperApi&);
GameBaseResult<float> game_helper_scalar(Snapshot&,Rva,Address,
    const GameHelperEnvironment&,const GameHelperApi&);
GameBaseResult<bool> game_helper_predicate(Snapshot&,Rva,Address,
    const GameHelperEnvironment&,const GameHelperApi&);
// [C] Literal binary32 quaternion/vector multiplication 2ef834, no normalization.
Vec3 quaternion_vector_2ef834(Orientation,Vec3);
// [I] Returned closures borrow Snapshot and the optional visibility registry.
// Unknown calls reach their supplied fallback; missing bytes/effects throw the
// existing typed SnapshotBindingFailure, with all preceding cache writes retained.
AimWeaponCalls bind_game_helpers_aim(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,AimWeaponCalls = {});
ProjectileBoundaries bind_game_helpers_projectile(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,ProjectileBoundaries = {});
InteractionCalls bind_game_helpers_interaction(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,InteractionCalls = {});
MovementMainCalls bind_game_helpers_movement(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,MovementMainCalls = {});
HitOverrideApi bind_game_helpers_hit(Snapshot&,const GameHelperEnvironment&,
    const GameHelperApi&,HitOverrideApi = {});
void check_game_helpers_reconstruction();
} // namespace rust_internal_re
