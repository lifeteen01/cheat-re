#pragma once
#include "entities_analysis.hpp"
namespace rust_internal_re {
struct HitOverrideConfig {
    bool helicopter{}, chams{}, enabled{};
    ReI32 bone_index{};
    Address helicopter_3d72b8{};
};
struct HitOverrideApi {
    re::ReFunction<bool(Address)> valid_2e0e9c;
    re::ReFunction<Address(ReU32)> entity_32b308;
    re::ReFunction<void(Address)> chams_36a464;
    re::ReFunction<float(float,float)> random_2e3d5c;
    re::ReFunction<void(Address,Address)> original;
};
enum class HitOverrideStatus { complete, missing_boundary, missing_bytes, string_limit };
struct HitOverrideResult {
    HitOverrideStatus status{HitOverrideStatus::complete};
    Rva stopped_at{};
    Address hit{};
    ReUSize bone_writes{}, chams_calls{};
    bool original_called{};
};
// [C] Numeric hashed bone identifiers, not verified source bone names.
ReU32 choose_hit_bone_32b4ec(ReI32 setting,float random);
HitOverrideResult replay_hit_override_32b3a8(Snapshot&,Address argument,const HitOverrideConfig&,const HitOverrideApi&);
HitOverrideResult replay_hit_hook_32b62c(Snapshot&,Address argument,Address second,const HitOverrideConfig&,const HitOverrideApi&);
void check_hit_override_reconstruction();
} // namespace rust_internal_re
