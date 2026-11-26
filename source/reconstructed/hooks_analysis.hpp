#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
// [I] Analysis-only call intents: targets/arguments are numeric evidence, never called.
// [U] Target ABI, return values and game side effects are unresolved.
enum class HookCallRole { saved_original, set_active, instant_loot_callback };
struct HookCallIntent {
    Rva site{};
    HookCallRole role{};
    Address target{};
    re::ReArray<Address,3> arguments{};
    unsigned argument_count{};
};
struct HookReplayResult {
    bool complete{true}; // [I] Reached the modeled return, assuming unresolved calls return normally.
    ReUSize stores{}; // [I] Stores into Snapshot bytes; separate latch changes are exposed through state.
    re::ReVector<HookCallIntent> calls;
    re::ReString limitation;
};
// [C] 0x332554..0x332636; flags/fields are raw offsets, not verified Unity declarations.
HookReplayResult replay_water_332554(Snapshot&, Address object, bool no_water_blur, bool water, Address original);
// [C] 0x3f8850 is ONE shared latch, not per-SmokeGrenade state (0x32f06c/0x32f09a).
struct SmokeHookState { bool suppression_latch{}; };
HookReplayResult replay_smoke_32f038(const Snapshot&, Address object, bool no_smoke, SmokeHookState&, Address original);
// [U] local_player is the caller-supplied result of 0x2dda9c; other original arguments opaque.
HookReplayResult replay_position_32a9f8(Snapshot&, Address object, Address position, Address third_argument,
                                     bool copy_position, Address local_player, Address original);
struct InstantLootInputs {
    bool enabled{};
    Address item_icon{}, display_class{}, allocated_closure{}, callback{}, original{};
    ReU8 original_second_argument{};
    // [U] Result of 0x3217ec -> GameAssembly+0x544fe10, whose identity is unresolved.
    re::ReOptional<ReI32> helper_result;
};
HookReplayResult replay_instant_loot_3215cc(Snapshot&, const InstantLootInputs&);
// [C] 0x2eaa28's 0x334960 output is MethodInfo, dereferenced on each scan comparison.
bool install_resolved_method_scan_copy(Snapshot&, HookRecord&, Address klass, Address method_info, Address detour);
// [U] Outputs of 0x334960 and 0x320b04 supplied explicitly, after +0x328 initial checks.
struct EntryEligibility { Address matched_method_info{}; re::ReOptional<ReI32> helper_320b04_result; };
bool install_entry_316458_copy(Snapshot&, HookRecord&, Address klass, Address expected, Address detour, const EntryEligibility&);
// [C] 0x2ce1f0 compares BeginAddress equality and uses directory byte Size as record count.
// [I] Copied-image bounds stop over-traversal; no sample instruction executes.
re::ReOptional<RuntimeFunction> find_sample_runtime_function_2ce1f0(const Snapshot&, Address instruction);
struct FrameMetadataAudit {
    FrameEvidence frame; // [C] unwind.stack_bytes is the sample output accumulator, not return EAX.
    SampleUnwindResult literal;
    UnwindSummary conventional;
};
struct ContextMetadataAudit { Address target{}; FrameMetadataAudit base_thread_init, rtl_user_thread_start; };
// [I] Detection evidence only: no writable execution context, continuation selection or stack construction.
ContextMetadataAudit audit_context_metadata(Address target, const ModuleView&, const ModuleView&);
void check_hook_reconstruction();
} // namespace rust_internal_re
