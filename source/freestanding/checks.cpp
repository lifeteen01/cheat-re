/* The hosted test driver is NOT the freestanding DLL. Its CRT/OS imports are
 * permitted only in this driver and independently inventoried in verification. */
#include "gate.h"
#include <cstdio>
#include <cstring>
#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#endif

struct Observation {
    ReU64 rsp, rbp, rbx, r15, integer[4], floating[4], stack[16];
};
extern "C" {
Observation re_observation{};
void RE_GATE_ABI re_observe_target();
void RE_GATE_ABI re_owned_return();
void RE_GATE_ABI re_owned_thread_marker();
ReU32 RE_GATE_ABI re_preservation_probe(ReGateContext *, ReGateReturn *,
    ReU32 (RE_GATE_ABI *)(ReGateContext *, ReGateReturn *));
}
using Invoke = ReU32 (RE_GATE_ABI *)(ReGateContext *, ReGateReturn *);
using Validate = ReU32 (RE_GATE_ABI *)(const ReGateContext *);
using Version = ReU32 (RE_GATE_ABI *)();
static Invoke invoke;
static Validate validate;
static unsigned assertions;

static bool require(bool condition, const char *message) {
    ++assertions;
    if (!condition) std::fprintf(stderr, "FAIL: %s\n", message);
    return condition;
}
static ReU64 bits(double number) {
    ReU64 value;
    std::memcpy(&value, &number, sizeof(value));
    return value;
}
static ReGateContext context() {
    ReGateContext c{};
    c.thread_start_00 = reinterpret_cast<ReU64>(&re_owned_thread_marker);
    c.thread_start_08 = c.thread_start_00;
    c.frame_10 = c.thread_start_00;
    c.frame_20 = reinterpret_cast<ReU64>(&re_owned_return);
    c.continuation_28 = c.frame_20;
    c.adjustment_30 = 0x20;
    c.stack_38 = c.stack_40 = c.stack_50 = c.stack_58 = 0x40;
    c.stack_48 = 0x48;
    c.slot_offset_60 = 0x18;
    c.frame_78 = c.frame_20 + 0x30;
    c.target_70 = reinterpret_cast<ReU64>(&re_observe_target);
    return c;
}
static bool raw_arguments_and_stack() {
    for (ReU64 count = 0; count <= 9; ++count)
        for (ReU32 mask = 0; mask < 16; ++mask) {
            auto c = context();
            c.argument_count_80 = count;
            for (ReU32 i = 0; i < 9; ++i) c.arguments_88[i] = 0x1234567800000000ull + i;
            for (ReU32 i = 0; i < 4; ++i) c.floating_d0[i] = ReU8((mask >> i) & 1u);
            ReGateReturn result{1, 2};
            if (!require(invoke(&c, &result) == RE_GATE_OK, "executor refused valid owned context")) return false;
            if (!require(result.integer_rax == 0x8877665544332211ull &&
                         result.floating_xmm0 == bits(3.25), "return RAX/XMM0 lost during restoration")) return false;
            const auto &o = re_observation;
            if (!require((o.rsp & 15u) == 8 && o.rbp - o.rsp == 0x180 &&
                         o.rbx == o.rbp - 8 && c.saved_slot_68 == o.rbp + 0x220,
                         "literal stack/frame/restoration-pointer writes differ")) return false;
            if (!require(o.stack[0] == c.continuation_28 && o.stack[10] == c.frame_20,
                         "target return chain differs from recovered context slots")) return false;
            for (ReU32 i = 0; i < count; ++i) {
                const ReU64 observed = i < 4 ? (c.floating_d0[i] ? o.floating[i] : o.integer[i])
                                             : o.stack[i + 1];
                if (!require(observed == c.arguments_88[i], "positional integer/FP/stack argument mismatch")) return false;
            }
            /* For<=4 args, the native non-argument write at targetSP+28 survives. */
            if (count <= 4 && !require(o.stack[5] == c.stack_48,
                                      "native pre-argument stack48 write was normalized away")) return false;
        }
    auto c = context();
    ReGateReturn result{};
    return require(re_preservation_probe(&c, &result, invoke) == 0,
                   "RSP/RBP/RBX/R15/R12 caller state was not restored");
}

static ReU64 RE_GATE_ABI typed_target(ReU64 a, double b, ReU64 c, float d,
                                      ReU64 e, ReU64 f, ReU64 g, ReU64 h, ReU64 i) {
    if (b != 2.5 || d != 6.5f) return 0;
    return a + c * 3 + e * 5 + f * 7 + g * 11 + h * 13 + i * 17;
}
static double RE_GATE_ABI typed_float_return(double a, ReU64 b, float c, double d, ReU64 e) {
    return a + double(b) + double(c) + d + double(e);
}
static ReU64 RE_GATE_ABI nested_target(ReU64 nested_context) {
    ReGateReturn returned{};
    if (invoke(reinterpret_cast<ReGateContext *>(nested_context), &returned)) return 0;
    return returned.integer_rax ^ 0xabcdef;
}
static bool typed_and_nested_calls() {
    auto c = context();
    c.target_70 = reinterpret_cast<ReU64>(&typed_target);
    c.argument_count_80 = 9;
    for (ReU32 i = 0; i < 9; ++i) c.arguments_88[i] = i + 1;
    c.arguments_88[1] = bits(2.5);
    const float value = 6.5f;
    std::memcpy(&c.arguments_88[3], &value, sizeof(value));
    c.floating_d0[1] = c.floating_d0[3] = 1;
    ReGateReturn result{};
    if (!require(invoke(&c, &result) == 0 && result.integer_rax ==
                 1 + 3 * 3 + 5 * 5 + 6 * 7 + 7 * 11 + 8 * 13 + 9 * 17,
                 "compiled mixed ABI target did not receive nine typed arguments")) return false;
    c = context();
    c.target_70 = reinterpret_cast<ReU64>(&typed_float_return);
    c.argument_count_80 = 5;
    c.arguments_88[0] = bits(1.25);
    c.arguments_88[1] = 2;
    const float small = 3.5f;
    std::memcpy(&c.arguments_88[2], &small, sizeof(small));
    c.arguments_88[3] = bits(4.75);
    c.arguments_88[4] = 5;
    c.floating_d0[0] = c.floating_d0[2] = c.floating_d0[3] = 1;
    if (!require(invoke(&c, &result) == 0 && result.floating_xmm0 == bits(16.5),
                 "compiled floating return ABI mismatch")) return false;
    auto inner = context();
    auto outer = context();
    outer.target_70 = reinterpret_cast<ReU64>(&nested_target);
    outer.argument_count_80 = 1;
    outer.arguments_88[0] = reinterpret_cast<ReU64>(&inner);
    return require(invoke(&outer, &result) == 0 &&
                   result.integer_rax == (0x8877665544332211ull ^ 0xabcdef),
                   "nested gate invocation lost independent restoration state");
}
static bool failure_paths() {
    auto c = context();
    ReGateReturn result{11, 22};
    if (!require(validate(nullptr) == RE_GATE_NULL && invoke(&c, nullptr) == RE_GATE_NULL,
                 "null admission failure")) return false;
    c.argument_count_80 = 10;
    if (!require(invoke(&c, &result) == RE_GATE_ARGUMENT_COUNT &&
                 result.integer_rax == 11 && result.floating_xmm0 == 22,
                 "bad argument count executed or published return")) return false;
    c = context(); c.floating_d0[0] = 2;
    if (!require(validate(&c) == RE_GATE_FLOAT_FLAG, "bad FP flag admitted")) return false;
    c = context(); c.target_70 = 0;
    if (!require(validate(&c) == RE_GATE_MISSING_CONTEXT, "missing target admitted")) return false;
    c = context(); c.stack_38 = ~ReU64(0);
    if (!require(validate(&c) == RE_GATE_STACK_EXTENT, "huge stack extent admitted")) return false;
    c = context(); c.slot_offset_60 = c.stack_38;
    if (!require(validate(&c) == RE_GATE_STACK_EXTENT, "saved slot outside allocated frame admitted")) return false;
    c = context(); c.stack_48 = 0x40;
    if (!require(validate(&c) == RE_GATE_STACK_ALIGNMENT, "misaligned synthetic target stack admitted")) return false;
    c.argument_count_80 = 9;
    if (!require(validate(&c) == RE_GATE_STACK_EXTENT, "nine stack args exceed supplied frame")) return false;
    c = context();
    return require(invoke(&c, reinterpret_cast<ReGateReturn *>(&c)) == RE_GATE_ALIAS,
                   "overlapping return storage admitted");
}
int main(int argc, char **argv) {
    Version version;
#ifdef _WIN32
    if (argc != 2) return 2;
    HMODULE library = LoadLibraryA(argv[1]);
    if (!library) { std::fprintf(stderr, "LoadLibrary failed: %lu\n", GetLastError()); return 3; }
    const auto load = [&](const char *name, auto &function) {
        const auto address = GetProcAddress(library, name);
        static_assert(sizeof(function) == sizeof(address));
        std::memcpy(&function, &address, sizeof(function));
    };
    load("ReGateInvoke", invoke); load("ReGateValidate", validate); load("ReGateAbiVersion", version);
#else
    (void)argc; (void)argv;
    invoke = &ReGateInvoke; validate = &ReGateValidate; version = &ReGateAbiVersion;
#endif
    if (!require(invoke && validate && version && version() == 1, "freestanding ABI exports unavailable")) return 4;
    if (!raw_arguments_and_stack() || !typed_and_nested_calls() || !failure_paths()) return 1;
#ifdef _WIN32
    if (!require(FreeLibrary(library) != 0, "freestanding DLL unload failed")) return 5;
#endif
    std::printf("PASS: executable recovered gate;160 argument/mask combinations; typed/nested calls; "
                "literal stack writes; return bits; restored registers; admission failures; assertions=%u\n", assertions);
    return 0;
}
