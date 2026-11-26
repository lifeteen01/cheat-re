#ifndef RE_FREESTANDING_GATE_H
#define RE_FREESTANDING_GATE_H

/* Compiler types only: no CRT, Windows SDK, STL or platform library headers. */
typedef __UINT8_TYPE__ ReU8;
typedef __UINT32_TYPE__ ReU32;
typedef __UINT64_TYPE__ ReU64;
#if defined(__GNUC__) && defined(__x86_64__)
#define RE_GATE_ABI __attribute__((ms_abi))
#else
#error This recovered executor requires the Windows x64 ABI
#endif
#if defined(_WIN32) && defined(RE_GATE_BUILD)
#define RE_GATE_EXPORT __declspec(dllexport)
#else
#define RE_GATE_EXPORT
#endif
#ifdef __cplusplus
extern "C" {
#endif

/* Literal offsets consumed by3cdbd4. Unknown roles keep offset-based names.
 * Callers supply a complete context; this is not the unported2cbd24 scanner. */
typedef struct ReGateContext {
    ReU64 thread_start_00, thread_start_08, frame_10, reserved_18;
    ReU64 frame_20, continuation_28, adjustment_30;
    ReU64 stack_38, stack_40, stack_48, stack_50, stack_58;
    ReU64 slot_offset_60, saved_slot_68, target_70, frame_78;
    ReU64 argument_count_80, arguments_88[9];
    ReU8 floating_d0[4], reserved_d4[4];
} ReGateContext;
typedef struct ReGateReturn { ReU64 integer_rax, floating_xmm0; } ReGateReturn;
enum ReGateStatus {
    RE_GATE_OK = 0, RE_GATE_NULL = 1, RE_GATE_ALIGNMENT = 2,
    RE_GATE_ARGUMENT_COUNT = 3, RE_GATE_FLOAT_FLAG = 4,
    RE_GATE_MISSING_CONTEXT = 5, RE_GATE_STACK_EXTENT = 6,
    RE_GATE_STACK_ALIGNMENT = 7, RE_GATE_ALIAS = 8
};
/* Trusted readable/writable caller storage and executable addresses required.
 * Validation bounds the supported stack shape; it cannot validate a live ABI,
 * address provenance, unwind compatibility, CFG or hardware shadow-stack policy. */
RE_GATE_EXPORT ReU32 RE_GATE_ABI ReGateAbiVersion(void);
RE_GATE_EXPORT ReU32 RE_GATE_ABI ReGateValidate(const ReGateContext *context);
RE_GATE_EXPORT ReU32 RE_GATE_ABI ReGateInvoke(ReGateContext *context, ReGateReturn *result);

#ifdef __cplusplus
}
static_assert(sizeof(ReGateContext) == 0xd8);
static_assert(__builtin_offsetof(ReGateContext, target_70) == 0x70);
static_assert(__builtin_offsetof(ReGateContext, arguments_88) == 0x88);
static_assert(__builtin_offsetof(ReGateContext, floating_d0) == 0xd0);
static_assert(sizeof(ReGateReturn) == 16);
#endif
#endif
