#pragma once
#include "internal_analysis.hpp"

namespace rust_internal_re {
// [I] Concrete helpers from the entity iteration driver region 0x31492c..0x31acd0.
// [I] The major functions in this region are already reconstructed elsewhere:
//   - 0x314bb4 (target selection) → select_frame_target_314bb4 in frame_dependencies_target.hpp
//   - 0x317c3c (aim worker) → replay_launch_aim_317c3c in movement_main_analysis.hpp
// This file contains only the standalone concrete helpers that are not duplicated.

// --- Static dispatch helpers ---
// [C] 0x31492c..0x314a64: resolve a detour target, initialize dispatch, then call
// 0x2ed218 with (output, target, r14=extra, xmm6=float_arg, [rsp+0x20]=r14).
// [C] Uses initialization pattern: flag word at 0x3e65f0, bit 1 for original resolve,
// bit 2 for dispatch init. Cached original at 0x3e65e8. Dispatch record at 0x3e6600.
// [C] 0x314a68..0x314b7b: same pattern at 0x3e6500/0x3e64f8/0x3e6510; tail-calls 0x2de97c.
struct StaticDispatchResult {
    bool resolved_original{};
    bool initialized_dispatch{};
    Events events;
};
StaticDispatchResult describe_dispatch_31492c();
StaticDispatchResult describe_dispatch_314a68();

// --- UTF-16 FNV hash ---
// [C] 0x317bec..0x317c19: FNV-1a over NUL-terminated UTF-16 words.
// [C] Seed 0xcbf29ce484222325, multiplier 0x100000001b3.
// [C] Unlike the byte-based 0x2d6354, this iterates 16-bit words, XORing zero-extended.
ReU64 utf16_fnv_hash_317bec(const ReU16* text);

// --- Obfuscated value transform ---
// [C] 0x317c1c..0x317c39: encodes xmm1 as int, applies: add 0x6bb44d4e, xor 0xc6420f2f,
// ror 26, add 0x17d025fa; stores result to [rcx+0x428].
// [I] Returns the obfuscated bits; the live code stores them as a QWORD at object+0x428.
ReU32 obfuscated_transform_317c1c(float value);

// --- Container size helpers ---
// [C] 0x31aa18: container size with stride 0x58 (88 bytes)
// [C] 0x31aa3c: container size with stride 0x18 (24 bytes)
// [I] Generic vector-count-by-pointer-difference operations.
ReI64 container_count_stride_58(Address begin, Address end);
ReI64 container_count_stride_18(Address begin, Address end);

void check_aim_iteration_reconstruction();
} // namespace rust_internal_re
