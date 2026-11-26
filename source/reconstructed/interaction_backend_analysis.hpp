#pragma once
#include "sky_model_analysis.hpp"
#include "interaction_workers.hpp"
namespace rust_internal_re {
struct InteractionBackendEnvironment {
    Address module{},literal_storage{};
    ReUSize literal_capacity{512};
    MetadataLimits limits{};
};
struct InteractionBackendCall {Rva wrapper{};Address dispatcher{},target{},context{};};
struct InteractionBackendApi {
    SkyModelApi shared;
    // [I] Numeric call information is detection data, never an executable target.
    re::ReFunction<void(const InteractionBackendCall&)> observe_context;
    re::ReFunction<void(const InteractionBackendCall&,Address,Address)> console;
    // [U] Output record bytes/size belong to the supplied matching-game ABI.
    // Empty span means an unmaterialized output discarded by that caller.
    re::ReFunction<ReU8(const InteractionBackendCall&,Vec3,Vec3,re::ReSpan<ReByte>,float,ReU32,ReI32)> raycast;
};
GameBaseResult<bool> raycast_2e8fac(Snapshot&,Vec3 origin,Vec3 direction,float distance,
    ReU32 mask,re::ReSpan<ReByte> hit,ReI32 mode,
    const InteractionBackendEnvironment&,const InteractionBackendApi&);
GameBaseResult<bool> close_loot_2e5bec(Snapshot&,const InteractionBackendEnvironment&,const InteractionBackendApi&);
InteractionCalls bind_interaction_backend(Snapshot&,const InteractionBackendEnvironment&,
    const InteractionBackendApi&,InteractionCalls = {});
void check_interaction_backend_reconstruction();
} // namespace rust_internal_re
