#include "gate.h"

extern "C" void RE_GATE_ABI re_gate_capture(ReGateContext *, ReGateReturn *);

ReU32 RE_GATE_ABI ReGateAbiVersion(void) { return 1; }

ReU32 RE_GATE_ABI ReGateValidate(const ReGateContext *context) {
    if (!context) return RE_GATE_NULL;
    if (reinterpret_cast<ReU64>(context) & 7u) return RE_GATE_ALIGNMENT;
    if (context->argument_count_80 > 9) return RE_GATE_ARGUMENT_COUNT;
    for (ReU32 i = 0; i != 4; ++i)
        if (context->floating_d0[i] > 1) return RE_GATE_FLOAT_FLAG;
    if (!context->target_70 || !context->continuation_28 || !context->thread_start_00 ||
        !context->thread_start_08 || !context->frame_10 || !context->frame_20)
        return RE_GATE_MISSING_CONTEXT;
    const ReU64 sizes[5] = {context->stack_38, context->stack_40, context->stack_48,
                            context->stack_50, context->stack_58};
    ReU64 total = 0;
    for (ReU32 i = 0; i != 5; ++i) {
        if (sizes[i] < 0x38 || sizes[i] > 0x1000 || (sizes[i] & 7u))
            return RE_GATE_STACK_EXTENT;
        total += sizes[i];
    }
    /* Authored admission guards, distinct from the literal unchecked executor.
     * Its38/40 stores and up to five stack args must fit their allocated frame. */
    const ReU64 stack_args = context->argument_count_80 > 4 ? context->argument_count_80 - 4 : 0;
    if (context->stack_48 < 0x40 || context->stack_48 < 0x20 + stack_args * 8 ||
        context->slot_offset_60 > context->stack_38 - 8 || (context->slot_offset_60 & 7u))
        return RE_GATE_STACK_EXTENT;
    if ((total & 15u) != 8) return RE_GATE_STACK_ALIGNMENT;
    return RE_GATE_OK;
}

ReU32 RE_GATE_ABI ReGateInvoke(ReGateContext *context, ReGateReturn *result) {
    if (!result) return RE_GATE_NULL;
    if (reinterpret_cast<ReU64>(result) & 7u) return RE_GATE_ALIGNMENT;
    const auto status = ReGateValidate(context);
    if (status != RE_GATE_OK) return status;
    const auto input = reinterpret_cast<ReU64>(context);
    const auto output = reinterpret_cast<ReU64>(result);
    if (input > ~ReU64(0) - sizeof(*context) || output > ~ReU64(0) - sizeof(*result) ||
        (output < input + sizeof(*context) && input < output + sizeof(*result)))
        return RE_GATE_ALIAS;
    re_gate_capture(context, result);
    return RE_GATE_OK;
}

#ifdef _WIN32
/* Explicit loader entry, no CRT startup, constructors, TLS or OS calls. */
extern "C" int RE_GATE_ABI ReGateDllEntry(void *, ReU32, void *) { return 1; }
#endif
