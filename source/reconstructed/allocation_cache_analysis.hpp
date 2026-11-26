#pragma once
#include "registry_analysis.hpp"
#include "metadata_export_analysis.hpp"
#include "game_base_analysis.hpp"
#include "interaction_workers.hpp"
namespace rust_internal_re {
struct AllocationCacheEnvironment {
    Address module{},initial_loader_node{},literal_storage{};
    ReUSize literal_capacity{512};
    MetadataLimits limits{};
};
struct AllocationCacheApi {
    MetadataApi metadata;
    // [I] Typed offline foreign effects. Targets/context are evidence keys only;
    // callback implementations must operate on owned data, never execute them.
    // [U] Matching IL2CPP object_new implementation and Unity curve evaluation.
    re::ReFunction<Address(Address target,Address context,Address klass)> object_new;
    re::ReFunction<float(Address target,Address context,Address receiver,float argument)> evaluate_curve;
    // [I] Optional observation of excluded 2cbd24 setup. Supplies all meaningful
    // numeric inputs (fourth native input is zero); cannot fabricate a stack.
    re::ReFunction<void(Address root,Address context,Address target)> observe_context;
};
// [C] Curve cache: target3f7f90, flag3f7f98, context3f7fa0; flag stores precede
// metadata/setup. MethodInfo's first qword is loaded even for a zero result.
GameBaseResult<Address> prepare_curve_cache_32c2d9(Snapshot&,const AllocationCacheEnvironment&,
    const AllocationCacheApi&);
// [I] Standalone convenience composes preparation then the literal wrapper.
// [C] Wrapper32b728 packages receiver and binary32 argument, marks two arguments
// and return-kind0x100. [I] Executor remains detection-only; typed effect below.
GameBaseResult<float> evaluate_curve_32b728(Snapshot&,Address receiver,float argument,
    const AllocationCacheEnvironment&,const AllocationCacheApi&);
// [C/I] Packaging/effect stage uses a target captured by an earlier preparation;
// it performs no lazy setup or global target reload after a random callback.
GameBaseResult<float> evaluate_prepared_curve_32b728(Snapshot&,Address prepared_target,
    Address receiver,float argument,const AllocationCacheEnvironment&,const AllocationCacheApi&);
// [C] 2e3ce4 has its own target/flag/context cells and cached2dee4c resolver.
GameBaseResult<Address> allocate_object_2e3ce4(Snapshot&,Address klass,
    const AllocationCacheEnvironment&,const AllocationCacheApi&);
// [C] Repeats class resolution per invocation; invalid class/object returns zero.
GameBaseResult<Address> allocate_melee_hit_test_2e1432(Snapshot&,
    const AllocationCacheEnvironment&,const AllocationCacheApi&);
// [I] Bindings throw on analysis failure, preserving writes performed before it.
// A native zero/false result remains an ordinary value, never a missing callback.
ProjectileBoundaries bind_projectile_curve_cache(Snapshot&,const AllocationCacheEnvironment&,
    const AllocationCacheApi&,ProjectileBoundaries = {});
InteractionCalls bind_interaction_hit_allocation(Snapshot&,const AllocationCacheEnvironment&,
    const AllocationCacheApi&,InteractionCalls = {});
void check_allocation_cache_reconstruction();
} // namespace rust_internal_re
