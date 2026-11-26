#pragma once
#include "projectile_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
struct ProjectileLeafEnvironment {
    Address module{},literal_storage{},spread_output{},spread_direction{};
    ReUSize literal_capacity{512};MetadataLimits limits{};
};
struct ProjectileLeafCall {Rva wrapper{};Address dispatcher{},target{},context{};};
struct ProjectileLeafApi {
    MetadataApi metadata;
    // [U] Supplied result of Random.Range; its local wrapper closure is tracked separately.
    re::ReFunction<float(float,float)> random_2e3d5c;
    re::ReFunction<float(const ProjectileLeafCall&,Address receiver,float)> evaluate;
    re::ReFunction<void(const ProjectileLeafCall&,Address output,float spread,Address direction,ReU8)> spread;
    // [I] Detection-only context observation; never execute numeric addresses.
    re::ReFunction<void(const ProjectileLeafCall&)> observe_context;
};
GameBaseResult<float> projectile_curve_3727e0(Snapshot&,Address,ReI32 index,ReI32 count,
    const ProjectileLeafEnvironment&,const ProjectileLeafApi&);
GameBaseResult<float> projectile_curve_372954(Snapshot&,Address,
    const ProjectileLeafEnvironment&,const ProjectileLeafApi&);
GameBaseResult<Address> projectile_spread_32bd4c(Snapshot&,Address output,float spread,Address direction,
    ReU8,const ProjectileLeafEnvironment&,const ProjectileLeafApi&);
ProjectileBoundaries bind_projectile_leaf_helpers(Snapshot&,const ProjectileLeafEnvironment&,
    const ProjectileLeafApi&,ProjectileBoundaries = {});
void check_projectile_leaf_helpers();
} // namespace rust_internal_re
