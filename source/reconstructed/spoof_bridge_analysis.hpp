#pragma once
// [I] Spoof executor integration bridge: connects PE metadata analysis,
// [I] the gate executor, and the hook system into a unified spoofed-call API.
// [C] Context population maps SpoofContextEvidence unwind sizes into ReGateContext fields.
// [U] Live module resolution (kernel32/ntdll) is Windows-only; Linux stubs return failure.
#include "internal_analysis.hpp"
#include "../../freestanding/gate.h"

namespace rust_internal_re {

// [I] Cached module resolution state: resolved once per process lifetime.
// [C] kernel32 provides BaseThreadInitThunk; ntdll provides RtlUserThreadStart.
struct SpoofBridgeState {
    bool initialized{};
    bool valid{};                       // [I] true if modules resolved and evidence is usable
    SpoofContextEvidence evidence{};    // [C] cached unwind metadata for the two system frames
    Address kernel32_base{};            // [C] resolved via PEB walk
    Address ntdll_base{};               // [C] resolved via PEB walk
};

// [I] Initialize the bridge: resolve kernel32/ntdll, compute context evidence template.
// [C] Uses PEB walk from re_win32.h for module resolution.
// Returns false if modules cannot be resolved or evidence is incomplete.
bool spoof_bridge_init();

// [I] Access the cached bridge state (valid only after successful init).
const SpoofBridgeState& spoof_bridge_state();

// [I] Populate a ReGateContext from cached evidence + call target + arguments.
// [C] Maps FrameMetadata unwind sizes into the gate's stack frame layout fields.
// Returns false if the bridge is not initialized or arguments are out of range.
bool spoof_populate_context(ReGateContext& ctx, Address target,
                            ReU32 arg_count, const ReU64* args, ReU8 float_mask);

// [I] Make a spoofed call to target with up to 9 arguments.
// [C] float_mask: bit 0 = arg0 is float, bit 1 = arg1 is float, etc. (first 4 bits used).
// Returns the gate's integer (RAX) and floating (XMM0) return values.
ReGateReturn spoof_call(Address target, ReU32 arg_count,
                        const ReU64* args, ReU8 float_mask);

// [I] Forward a hook's original function through the spoof gate.
// [C] Takes the HookRecord's saved original address as the call target.
ReGateReturn spoof_forward_original(const HookRecord& hook,
                                    ReU32 arg_count, const ReU64* args,
                                    ReU8 float_mask);

// [I] Convenience: spoofed call with no float arguments.
inline ReGateReturn spoof_call_int(Address target, ReU32 arg_count, const ReU64* args) {
    return spoof_call(target, arg_count, args, 0);
}

// [I] Convenience: forward original with no float arguments.
inline ReGateReturn spoof_forward_int(const HookRecord& hook,
                                      ReU32 arg_count, const ReU64* args) {
    return spoof_forward_original(hook, arg_count, args, 0);
}

// [I] Type-safe spoofed call template. Packs arguments into a ReU64 array.
// [U] Float argument detection requires explicit float_mask; this defaults to 0 (all integer).
namespace detail {
template<typename T> struct spoof_is_ptr              { static constexpr bool value = false; };
template<typename T> struct spoof_is_ptr<T*>          { static constexpr bool value = true; };
// [I] Correctly pack an argument into a ReU64 regardless of source type.
// [C] Pointers require reinterpret_cast; floats preserve their bit pattern via re_bit_cast.
template<typename T>
ReU64 pack_arg(T arg) {
    if constexpr (spoof_is_ptr<T>::value) {
        return reinterpret_cast<ReU64>(arg);
    } else if constexpr (re::re_is_same_v<T, float> || re::re_is_same_v<T, double>) {
        return re::re_bit_cast<ReU64>(static_cast<double>(arg));
    } else {
        return static_cast<ReU64>(arg);
    }
}
} // namespace detail
template<typename R, typename... Args>
R spoofed_invoke(Address target, Args... args) {
    constexpr ReU32 count = static_cast<ReU32>(sizeof...(Args));
    static_assert(count <= 9, "spoofed_invoke supports at most 9 arguments");
    ReU64 packed[9]{};
    ReU32 idx = 0;
    // [I] Pack each argument as ReU64 via the type-aware helper.
    ((packed[idx++] = detail::pack_arg(args)), ...);
    auto result = spoof_call(target, count, packed, 0);
    if constexpr (re::re_is_same_v<R, void>) {
        return;
    } else if constexpr (re::re_is_same_v<R, float> || re::re_is_same_v<R, double>) {
        return re::re_bit_cast<R>(result.floating_xmm0);
    } else {
        return static_cast<R>(result.integer_rax);
    }
}

// ---------------------------------------------------------------------------
// Batch-reconstructed functions (03_stack domain)
// ---------------------------------------------------------------------------

// [C] 0x2cc46c..0x2cc476: store two qwords into a pair struct, return struct pointer.
// [C] mov [rcx],rdx; mov rax,rcx; mov [rcx+0x8],r8; ret.
struct AddressPair { Address first{}, second{}; };
inline AddressPair& address_pair_store_2cc46c(AddressPair& out, Address a, Address b) {
    out.first = a; out.second = b; return out;
}

// [C] 0x38a3cc..0x38a3d0: redirect thunk to allocator at 0x3c8bd0.
// [I] No independent logic; equivalent to calling 0x3c8bd0 directly.
inline constexpr Rva allocator_thunk_target_38a3cc = 0x3c8bd0;

// [C] 0x38a3d4..0x38a3f0: integer linear interpolation.
// [C] result = (int)(float(first) + float(second - first) * t).
ReI32 lerp_integer_38a3d4(ReI32 first, ReI32 second, float t);

// [C] 0x3c7e4c..0x3c7e6d: copy 35-byte obfuscated literal from image 0x2adac0.
// [I] Returns output buffer reference, matching the original rdx-return convention.
re::ReArray<ReByte, 35>& obfuscated_literal_35_3c7e4c(re::ReArray<ReByte, 35>& output);

// [C] 0x3c7e28..0x3c7e4b: copy 44-byte obfuscated literal from image 0x2adae8.
re::ReArray<ReByte, 44>& obfuscated_literal_44_3c7e28(re::ReArray<ReByte, 44>& output);

// [C] 0x3caccc..0x3cad0c: resolve "UnityPlayer.dll" and read exception directory.
// [I] Pipeline: string getter 0x3cabb0 -> module name 0x2d852c -> module 0x3cb058 -> PE 0x2ce1d4.
Events describe_module_resolve_3caccc();

// [C] 0x3c7c98..0x3c7cfd: pack single-argument gate context and dispatch via 0x3cdbd4.
// [C] Writes arguments_88[0], floating_d0=0, argument_count=1, frame_78, then tail-calls gate.
Events describe_gate_dispatch_3c7c98();

// [C] 0x3c8c70..0x3c8ce8: lazy two-phase init (module resolve + context observe) then gate dispatch.
// [C] Uses flag bits at 0x40f0b8: bit0 = module resolved, bit1 = context observed.
Events describe_lazy_dispatch_3c8c70();

// [C] 0x3cabc0..0x3cac3c: spoof subsystem initialization sequence.
// [C] Resolves UnityPlayer.dll, allocates dispatcher structs, initializes client.
Events describe_spoof_init_3cabc0();

} // namespace rust_internal_re
