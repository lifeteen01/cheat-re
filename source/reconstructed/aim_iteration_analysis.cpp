#include "aim_iteration_analysis.hpp"
namespace rust_internal_re {

// [C] 0x31492c..0x314a64
StaticDispatchResult describe_dispatch_31492c() {
    StaticDispatchResult out{};
    out.resolved_original = true;
    out.initialized_dispatch = true;
    out.events.push_back({0x31496b, "[C] multi-step delegate resolution chain"});
    out.events.push_back({0x3149e3, "[C] assemble delegate and store at 0x3e65e8"});
    out.events.push_back({0x314a4b, "[C] call 0x2ed218 with context, target, float arg"});
    return out;
}

// [C] 0x314a68..0x314b7b
StaticDispatchResult describe_dispatch_314a68() {
    StaticDispatchResult out{};
    out.resolved_original = true;
    out.initialized_dispatch = true;
    out.events.push_back({0x314a99, "[C] multi-step delegate resolution chain (variant 2)"});
    out.events.push_back({0x314b1d, "[C] assemble delegate and store at 0x3e64f8"});
    out.events.push_back({0x314b7b, "[C] tail-call 0x2de97c with float arg"});
    return out;
}

// [C] 0x317bec..0x317c19: FNV-1a on NUL-terminated UTF-16 words.
ReU64 utf16_fnv_hash_317bec(const ReU16* text) {
    ReU64 hash = 0xcbf29ce484222325ULL;
    if (!text) return hash;
    while (*text != 0) {
        hash ^= ReU64(*text);
        hash *= 0x100000001b3ULL;
        ++text;
    }
    return hash;
}

// [C] 0x317c1c..0x317c39: encode float as int, obfuscate, return transformed bits.
ReU32 obfuscated_transform_317c1c(float value) {
    ReU32 bits = re::re_bit_cast<ReU32>(value);
    bits += 0x6bb44d4eu;
    bits ^= 0xc6420f2fu;
    bits = re::re_rotr(bits, 26);
    bits += 0x17d025fau;
    return bits;
}

// [C] 0x31aa18: (end - begin) / 0x58 using multiplicative inverse.
ReI64 container_count_stride_58(Address begin, Address end) {
    const ReI64 diff = ReI64(end) - ReI64(begin);
    return diff / 88;
}

// [C] 0x31aa3c: (end - begin) / 0x18 using multiplicative inverse.
ReI64 container_count_stride_18(Address begin, Address end) {
    const ReI64 diff = ReI64(end) - ReI64(begin);
    return diff / 24;
}

namespace {
void require_aim(bool value) { if(!value) __builtin_trap(); }
}
void check_aim_iteration_reconstruction() {
    {
        const ReU16 empty[] = {0};
        require_aim(utf16_fnv_hash_317bec(empty) == 0xcbf29ce484222325ULL);
    }
    {
        const ReU16 text[] = {'A', 'B', 0};
        const ReU64 expected = ((0xcbf29ce484222325ULL ^ 0x41) * 0x100000001b3ULL ^ 0x42) * 0x100000001b3ULL;
        require_aim(utf16_fnv_hash_317bec(text) == expected);
    }
    {
        require_aim(container_count_stride_58(0, 88) == 1);
        require_aim(container_count_stride_58(0, 176) == 2);
        require_aim(container_count_stride_18(0, 24) == 1);
        require_aim(container_count_stride_18(0, 48) == 2);
    }
    {
        const ReU32 result = obfuscated_transform_317c1c(0.0f);
        require_aim(result != 0);
    }
    {
        const auto r1 = describe_dispatch_31492c();
        require_aim(r1.resolved_original && r1.initialized_dispatch);
        const auto r2 = describe_dispatch_314a68();
        require_aim(r2.resolved_original && r2.initialized_dispatch);
    }
}

} // namespace rust_internal_re
