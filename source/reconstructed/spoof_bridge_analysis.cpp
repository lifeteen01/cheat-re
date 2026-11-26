#include "spoof_bridge_analysis.hpp"

// [C] Gate assembly restoration continuation, resolved at link time.
extern "C" void re_gate_restore_3cdbba();

namespace rust_internal_re {
namespace {

// [I] Global bridge state, initialized once per process lifetime.
SpoofBridgeState g_bridge{};

// [C] Minimum frame size enforced by ReGateValidate: each stack_XX must be >= 0x38.
// [C] Total of all five frames must satisfy (total & 15) == 8 for stack alignment.
// [I] These defaults produce a valid stack layout when unwind data is available.
constexpr ReU64 MIN_FRAME_SIZE = 0x38;
constexpr ReU64 DEFAULT_SLOT_OFFSET = 0x00;

// [I] Build a Snapshot view of a live module's PE image (enough to read exception directory).
// [C] Reads SizeOfImage from the PE optional header to determine snapshot extent.
re::ReOptional<Snapshot> snapshot_from_live_module(Address base) {
    if (!base) return {};
    const auto* raw = reinterpret_cast<const ReByte*>(base);

    // [C] DOS header: e_lfanew at +0x3C.
    ReI32 e_lfanew{};
    re::re_memcpy(&e_lfanew, raw + 0x3C, sizeof(e_lfanew));

    // [C] PE signature check.
    ReU32 sig{};
    re::re_memcpy(&sig, raw + e_lfanew, sizeof(sig));
    if (sig != 0x4550u) return {};

    // [C] Optional header magic (PE32+ = 0x20b).
    ReU16 magic{};
    re::re_memcpy(&magic, raw + e_lfanew + 24, sizeof(magic));
    if (magic != 0x20bu) return {};

    // [C] SizeOfImage at optional header + 56 = NT + 24 + 56 = NT + 80 = NT + 0x50.
    ReU32 size_of_image{};
    re::re_memcpy(&size_of_image, raw + e_lfanew + 0x50, sizeof(size_of_image));
    if (size_of_image == 0 || size_of_image > 0x10000000u) return {};

    // [I] Copy the module image into an owned buffer for safe snapshot access.
    re::ReVector<ReByte> bytes;
    bytes.resize(size_of_image);
    re::re_memcpy(bytes.data(), raw, size_of_image);

    return Snapshot{base, re::re_move(bytes)};
}

// [I] Align a frame size up to 8 bytes and clamp to the minimum gate requirement.
ReU64 align_frame_size(ReU64 raw) {
    ReU64 aligned = (raw + 7u) & ~ReU64(7u);
    return aligned < MIN_FRAME_SIZE ? MIN_FRAME_SIZE : aligned;
}

// [I] Compute five stack frame sizes from the two unwind summaries.
// [C] The gate executor allocates five successive frames (stack_38..stack_58):
//   stack_38: outer frame (BaseThreadInitThunk unwind + padding)
//   stack_40: inner BaseThreadInitThunk continuation frame
//   stack_48: target call frame (must hold shadow space + stack args)
//   stack_50: RtlUserThreadStart unwind frame
//   stack_58: outermost RtlUserThreadStart return frame
// [C] Total must satisfy (sum & 15) == 8 for the stack alignment check.
struct FrameSizes { ReU64 s38, s40, s48, s50, s58; };
FrameSizes compute_frame_sizes(ReU64 bti_unwind, ReU64 ruts_unwind) {
    // [C] BaseThreadInitThunk frames: use its unwind allocation for the outer,
    // [C] a standard-sized continuation frame for the inner.
    ReU64 s38 = align_frame_size(bti_unwind > 0 ? bti_unwind : 0x48u);
    ReU64 s40 = align_frame_size(0x48u);

    // [C] Target call frame: shadow space (0x20) + room for stack args.
    // [I] Gate validation requires stack_48 >= 0x40.
    ReU64 s48 = 0x60;

    // [C] RtlUserThreadStart frames.
    ReU64 s50 = align_frame_size(ruts_unwind > 0 ? ruts_unwind : 0x48u);
    ReU64 s58 = align_frame_size(0x48u);

    // [C] Adjust for alignment: (total & 15) must equal 8.
    ReU64 total = s38 + s40 + s48 + s50 + s58;
    ReU64 remainder = total & 15u;
    if (remainder != 8u) {
        // [I] Add 8 to the target frame to flip the alignment bit.
        if (remainder == 0u) {
            s48 += 8u;
        } else {
            // [I] Round up to next 16 and add 8.
            s48 += (16u - remainder) + 8u;
        }
    }
    return {s38, s40, s48, s50, s58};
}

} // anonymous namespace

bool spoof_bridge_init() {
    if (g_bridge.initialized) return g_bridge.valid;
    g_bridge.initialized = true;
    g_bridge.valid = false;

    // [C] Resolve kernel32.dll and ntdll.dll via PEB walk.
    void* k32_raw = re::resolve_module_by_hash(re::RE_HASH_KERNEL32);
    void* nt_raw  = re::resolve_module_by_hash(re::RE_HASH_NTDLL);
    if (!k32_raw || !nt_raw) return false;

    g_bridge.kernel32_base = reinterpret_cast<Address>(k32_raw);
    g_bridge.ntdll_base    = reinterpret_cast<Address>(nt_raw);

    // [I] Build snapshot views of the two system modules.
    auto k32_snap = snapshot_from_live_module(g_bridge.kernel32_base);
    auto nt_snap  = snapshot_from_live_module(g_bridge.ntdll_base);
    if (!k32_snap || !nt_snap) return false;

    // [C] Build ModuleViews for the context evidence reconstructor.
    // [I] Snapshots must remain alive through the reconstruct call; we move them
    // [I] into locals that persist through this scope.
    Snapshot k32_image = re::re_move(*k32_snap);
    Snapshot nt_image  = re::re_move(*nt_snap);

    ModuleView k32_view;
    k32_view.name = "kernel32.dll";
    k32_view.image = &k32_image;

    ModuleView nt_view;
    nt_view.name = "ntdll.dll";
    nt_view.image = &nt_image;

    // [C] Reconstruct context evidence: resolves BaseThreadInitThunk and
    // [C] RtlUserThreadStart exports, finds their runtime functions, and
    // [C] computes unwind allocation sizes via the sample parser.
    // [I] Target address 0 is a placeholder; real targets are set per-call.
    g_bridge.evidence = reconstruct_context_evidence(0, k32_view, nt_view);

    // [I] Validate that both frame exports were found and unwind data is available.
    const auto& bti  = g_bridge.evidence.base_thread_init;
    const auto& ruts = g_bridge.evidence.rtl_user_thread_start;
    if (bti.instruction == 0 || ruts.instruction == 0) return false;

    g_bridge.valid = true;
    return true;
}

const SpoofBridgeState& spoof_bridge_state() {
    return g_bridge;
}

bool spoof_populate_context(ReGateContext& ctx, Address target,
                            ReU32 arg_count, const ReU64* args, ReU8 float_mask) {
    if (!g_bridge.valid) return false;
    if (arg_count > 9) return false;
    if (!target) return false;

    const auto& bti  = g_bridge.evidence.base_thread_init;
    const auto& ruts = g_bridge.evidence.rtl_user_thread_start;

    // [C] Compute frame sizes from unwind metadata.
    const ReU64 bti_alloc  = bti.unwind.stack_bytes;
    const ReU64 ruts_alloc = ruts.unwind.stack_bytes;
    const auto frames = compute_frame_sizes(bti_alloc, ruts_alloc);

    // [I] Zero the entire context first.
    re::re_memset(&ctx, 0, sizeof(ctx));

    // [C] System frame instruction addresses.
    ctx.thread_start_00 = ruts.instruction;     // RtlUserThreadStart
    ctx.thread_start_08 = bti.instruction;      // BaseThreadInitThunk

    // [C] Frame addresses: computed from the instruction addresses.
    // [C] The gate assembly adds offsets (+0x20, +0x14, +0x21) to these when
    // [C] building the fabricated return addresses on the stack.
    ctx.frame_10 = bti.instruction;             // BaseThreadInitThunk frame
    ctx.frame_20 = ruts.instruction;            // RtlUserThreadStart frame
    ctx.reserved_18 = 0;

    // [C] Restoration continuation: re_gate_restore_3cdbba in the gate assembly.
    // [I] Resolved at link time via the file-scope extern declaration.
    ctx.continuation_28 = reinterpret_cast<ReU64>(&re_gate_restore_3cdbba);

    // [C] Unwind allocation adjustment.
    // [I] The gate uses this for frame_78 - adjustment_30 computations.
    ctx.adjustment_30 = bti_alloc > 0 ? bti_alloc : frames.s38;

    // [C] Five stack frame sizes.
    ctx.stack_38 = frames.s38;
    ctx.stack_40 = frames.s40;
    ctx.stack_48 = frames.s48;
    ctx.stack_50 = frames.s50;
    ctx.stack_58 = frames.s58;

    // [C] Slot offset within the first frame for the saved value.
    ctx.slot_offset_60 = DEFAULT_SLOT_OFFSET;

    // [C] saved_slot_68: written by the gate executor at runtime (stores rsp+0x20).
    ctx.saved_slot_68 = 0;

    // [C] Target function address.
    ctx.target_70 = target;
    // [C] frame_78 is read by the gate assembly to compute (frame_78 - adjustment_30),
    // [C] stored at [rsp + slot_offset_60] within the first unwind frame.
    // [I] Setting frame_78 = adjustment_30 produces a zero (null frame pointer),
    // [I] which is a valid end-of-chain marker for stack walkers.
    ctx.frame_78 = ctx.adjustment_30;

    // [C] Arguments.
    ctx.argument_count_80 = arg_count;
    for (ReU32 i = 0; i < arg_count && i < 9; ++i) {
        ctx.arguments_88[i] = args[i];
    }

    // [C] Floating-point flags for the first 4 arguments.
    for (ReU32 i = 0; i < 4; ++i) {
        ctx.floating_d0[i] = (float_mask >> i) & 1u;
    }

    return true;
}

ReGateReturn spoof_call(Address target, ReU32 arg_count,
                        const ReU64* args, ReU8 float_mask) {
    ReGateReturn result{};

    // [I] Ensure bridge is initialized.
    if (!g_bridge.valid && !spoof_bridge_init()) {
        // [I] Fatal: bridge cannot initialize. Return zero result.
        return result;
    }

    ReGateContext ctx{};
    if (!spoof_populate_context(ctx, target, arg_count, args, float_mask)) {
        return result;
    }

    // [C] Validate and invoke through the gate.
    ReU32 status = ReGateInvoke(&ctx, &result);
    if (status != RE_GATE_OK) {
        // [I] Gate validation/invocation failed. Return zero result.
        // [U] Caller cannot distinguish gate failure from a function returning zero.
        return result;
    }

    return result;
}

ReGateReturn spoof_forward_original(const HookRecord& hook,
                                    ReU32 arg_count, const ReU64* args,
                                    ReU8 float_mask) {
    // [C] The HookRecord's original field holds the saved original function address.
    // [I] If the hook was never installed (original == 0), this is a no-op.
    if (hook.original == 0) {
        ReGateReturn result{};
        return result;
    }
    return spoof_call(hook.original, arg_count, args, float_mask);
}

} // namespace rust_internal_re
