#ifndef RE_FREESTANDING_RANDOM_H
#define RE_FREESTANDING_RANDOM_H

/*  Freestanding PRNG — xoshiro256** with splitmix64 seeder.
 *  Replaces <random>.  Zero CRT / STL dependencies.
 *  Compile: -ffreestanding -fno-builtin -fno-exceptions -fno-rtti -std=c++20 */

#include "re_types.h"

namespace re {

class ReRandom {
    ReU64 state_[4];

    static constexpr ReU64 rotl(ReU64 x, int k) {
        return (x << k) | (x >> (64 - k));
    }

    /* splitmix64 — advances z and returns a well-mixed 64-bit value.
     * Used once during construction to fill the four state words
     * from a single seed. */
    static ReU64 splitmix64(ReU64& z) {
        z += 0x9e3779b97f4a7c15ULL;
        ReU64 r = z;
        r = (r ^ (r >> 30)) * 0xbf58476d1ce4e5b9ULL;
        r = (r ^ (r >> 27)) * 0x94d049bb133111ebULL;
        return r ^ (r >> 31);
    }

public:
    /* Seed with a single u64 value. */
    explicit ReRandom(ReU64 seed = 0x12345678ABCDEF01ULL) {
        state_[0] = splitmix64(seed);
        state_[1] = splitmix64(seed);
        state_[2] = splitmix64(seed);
        state_[3] = splitmix64(seed);
    }

    /* ---- Core generator: xoshiro256** ---- */

    ReU64 next_u64() {
        const ReU64 result = rotl(state_[1] * 5, 7) * 9;
        const ReU64 t = state_[1] << 17;

        state_[2] ^= state_[0];
        state_[3] ^= state_[1];
        state_[1] ^= state_[2];
        state_[0] ^= state_[3];

        state_[2] ^= t;
        state_[3] = rotl(state_[3], 45);

        return result;
    }

    /* Upper 32 bits of a 64-bit draw. */
    ReU32 next_u32() {
        return (ReU32)(next_u64() >> 32);
    }

    /* Uniform in [0, bound) with rejection sampling to avoid modulo bias.
     * threshold = 2^32 % bound, computed as (0 - bound) % bound. */
    ReU32 next_u32(ReU32 bound) {
        if (bound <= 1) return 0;
        ReU32 threshold = (0u - bound) % bound;
        for (;;) {
            ReU32 r = next_u32();
            if (r >= threshold)
                return r % bound;
        }
    }

    /* Uniform float in [0, 1).  Uses 24 mantissa bits. */
    ReF32 next_f32() {
        return (ReF32)(next_u32() >> 8) * (1.0f / 16777216.0f);
    }

    /* Uniform double in [0, 1).  Uses 53 mantissa bits. */
    ReF64 next_f64() {
        return (ReF64)(next_u64() >> 11) * (1.0 / 9007199254740992.0);
    }

    /* Uniform signed integer in [min_val, max_val] (inclusive). */
    ReI32 next_range(ReI32 min_val, ReI32 max_val) {
        if (min_val >= max_val) return min_val;
        /* Compute range as unsigned to avoid signed overflow. */
        ReU32 range = (ReU32)max_val - (ReU32)min_val;
        if (range == 0xFFFFFFFFu)
            return (ReI32)next_u32();   /* Full 32-bit range. */
        return (ReI32)((ReU32)min_val + next_u32(range + 1));
    }

    /* Callable operator — returns a 32-bit random value.
       Enables using ReRandom like a standard UniformRandomBitGenerator. */
    ReU32 operator()() { return next_u32(); }

    /* Fisher-Yates shuffle over a pointer range. */
    template<typename T>
    void shuffle(T* first, T* last) {
        if (last - first <= 1) return;
        ReUSize n = (ReUSize)(last - first);
        for (ReUSize i = n - 1; i > 0; --i) {
            ReUSize j = (ReUSize)next_u32((ReU32)(i + 1));
            re_swap(first[i], first[j]);
        }
    }
};

} /* namespace re */

#endif /* RE_FREESTANDING_RANDOM_H */
