#pragma once
#include "projectile_leaf_helpers.hpp"
#include "interaction_workers.hpp"
namespace rust_internal_re {
struct UnityMathEnvironment {
    Address module{}, literal_storage{};
    ReUSize literal_capacity{256};
    MetadataLimits limits{};
};
struct UnityMathCall {
    Rva wrapper{};
    Address dispatcher{}, target{}, context{};
};
struct UnityMathEffects {
    MetadataApi metadata;
    // [I] Context observation only. Numeric targets and executors are never run.
    re::ReFunction<void(const UnityMathCall &)> observe_context;
    // [U] Actual Unity Mathf/Random results. Known scalar arguments only;
    // uninitialized native stack/return-slot bytes remain unmaterialized.
    re::ReFunction<float(const UnityMathCall &, re::ReSpan<const float>)> evaluate;
};
GameBaseResult<float> unity_math_scalar(Snapshot &, Rva wrapper, float first, float second,
                                        const UnityMathEnvironment &, const UnityMathEffects &);
ProjectileLeafApi bind_projectile_random(Snapshot &, const UnityMathEnvironment &,
                                         const UnityMathEffects &, ProjectileLeafApi = {});
InteractionCalls bind_interaction_random(Snapshot &, const UnityMathEnvironment &,
                                         const UnityMathEffects &, InteractionCalls = {});
// [C] 0x2dcfd4..0x2dd003: 4-byte XOR string literal decode, key = (i % 52) + 0x37.
void string_xor_decode_4_2dcfd4(ReByte* output, const ReByte* input);
// [C] 0x2dd004..0x2dd033: 7-byte XOR string literal decode, same key scheme.
void string_xor_decode_7_2dd004(ReByte* output, const ReByte* input);
// [C] 0x2d8114..0x2d8143: 6-byte XOR string literal decode, same key scheme.
void string_xor_decode_6_2d8114(ReByte* output, const ReByte* input);
// [C] 0x2de9d4..0x2dea47: Two-float math gate context packer.
// [I] Observable stores replayed; gate execution and native stack values not materialized.
void unity_math_pack_binary_2de9d4(Snapshot& snap, Address context, float first, float second);
void check_unity_math_reconstruction();
} // namespace rust_internal_re
