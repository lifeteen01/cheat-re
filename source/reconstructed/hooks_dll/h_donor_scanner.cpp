// [C] Hooks DLL donor AES key scanner — extracts session H from donor process.
// Reconstructed from hooks RVAs: aes_scan=0x1d4e0, key_expand=0x1d3c0,
//   h_install=0x5fe5-0x6877, h_host_publish=0x1a892.
// Evidence: A_crypto/evidence/hooks_1d4e0_aes_scan.asm,
//           A_crypto/evidence/hooks_5ea5-68e3_H_install_slot1.asm,
//           A_crypto/evidence/hooks_1a892_h_host_publish.asm
#include "mode2_crypto.hpp"
#include <cstdint>
#include <cstring>

#ifdef _WIN32
#include <windows.h>
#endif

namespace hooks {

// ─────────────────────────────────────────────────────────────
// [C] Software AES-256 key expansion — fn 0x1d3c0
// Used only by the donor scanner to verify candidate AES contexts.
// Matches mbedTLS-2.x / PolarSSL aes_context layout:
//   { uint64_t nr=14; uint64_t rk=&self+0x10; uint8_t rk[240]; }
// ─────────────────────────────────────────────────────────────

struct AesContext {
    uint64_t nr;        // number of rounds (14 for AES-256)
    uint64_t rk_ptr;    // pointer to round keys (self + 0x10)
    uint8_t  rk[240];   // round key schedule
};
static_assert(sizeof(AesContext) == 256);

// [C] Standard AES-256 round constants
static constexpr uint8_t kAesSbox[256] = {
    0x63,0x7C,0x77,0x7B,0xF2,0x6B,0x6F,0xC5,0x30,0x01,0x67,0x2B,0xFE,0xD7,0xAB,0x76,
    0xCA,0x82,0xC9,0x7D,0xFA,0x59,0x47,0xF0,0xAD,0xD4,0xA2,0xAF,0x9C,0xA4,0x72,0xC0,
    0xB7,0xFD,0x93,0x26,0x36,0x3F,0xF7,0xCC,0x34,0xA5,0xE5,0xF1,0x71,0xD8,0x31,0x15,
    0x04,0xC7,0x23,0xC3,0x18,0x96,0x05,0x9A,0x07,0x12,0x80,0xE2,0xEB,0x27,0xB2,0x75,
    0x09,0x83,0x2C,0x1A,0x1B,0x6E,0x5A,0xA0,0x52,0x3B,0xD6,0xB3,0x29,0xE3,0x2F,0x84,
    0x53,0xD1,0x00,0xED,0x20,0xFC,0xB1,0x5B,0x6A,0xCB,0xBE,0x39,0x4A,0x4C,0x58,0xCF,
    0xD0,0xEF,0xAA,0xFB,0x43,0x4D,0x33,0x85,0x45,0xF9,0x02,0x7F,0x50,0x3C,0x9F,0xA8,
    0x51,0xA3,0x40,0x8F,0x92,0x9D,0x38,0xF5,0xBC,0xB6,0xDA,0x21,0x10,0xFF,0xF3,0xD2,
    0xCD,0x0C,0x13,0xEC,0x5F,0x97,0x44,0x17,0xC4,0xA7,0x7E,0x3D,0x64,0x5D,0x19,0x73,
    0x60,0x81,0x4F,0xDC,0x22,0x2A,0x90,0x88,0x46,0xEE,0xB8,0x14,0xDE,0x5E,0x0B,0xDB,
    0xE0,0x32,0x3A,0x0A,0x49,0x06,0x24,0x5C,0xC2,0xD3,0xAC,0x62,0x91,0x95,0xE4,0x79,
    0xE7,0xC8,0x37,0x6D,0x8D,0xD5,0x4E,0xA9,0x6C,0x56,0xF4,0xEA,0x65,0x7A,0xAE,0x08,
    0xBA,0x78,0x25,0x2E,0x1C,0xA6,0xB4,0xC6,0xE8,0xDD,0x74,0x1F,0x4B,0xBD,0x8B,0x8A,
    0x70,0x3E,0xB5,0x66,0x48,0x03,0xF6,0x0E,0x61,0x35,0x57,0xB9,0x86,0xC1,0x1D,0x9E,
    0xE1,0xF8,0x98,0x11,0x69,0xD9,0x8E,0x94,0x9B,0x1E,0x87,0xE9,0xCE,0x55,0x28,0xDF,
    0x8C,0xA1,0x89,0x0D,0xBF,0xE6,0x42,0x68,0x41,0x99,0x2D,0x0F,0xB0,0x54,0xBB,0x16
};

static constexpr uint32_t kRcon[7] = {
    0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40
};

// [C] 0x1d3c0: Expand a 32-byte key into AES-256 round key schedule (14 rounds).
[[maybe_unused]] static void aes256_key_expand(const uint8_t key[32], uint32_t rk[60]) {
    for (int i = 0; i < 8; i++) {
        rk[i] = (uint32_t)key[4*i] | ((uint32_t)key[4*i+1] << 8) |
                ((uint32_t)key[4*i+2] << 16) | ((uint32_t)key[4*i+3] << 24);
    }

    for (int i = 8; i < 60; i++) {
        uint32_t t = rk[i - 1];
        if (i % 8 == 0) {
            t = (kAesSbox[(t >> 8) & 0xFF]) |
                (kAesSbox[(t >> 16) & 0xFF] << 8) |
                (kAesSbox[(t >> 24) & 0xFF] << 16) |
                (kAesSbox[t & 0xFF] << 24);
            t ^= kRcon[(i / 8) - 1];
        } else if (i % 8 == 4) {
            t = kAesSbox[t & 0xFF] |
                (kAesSbox[(t >> 8) & 0xFF] << 8) |
                (kAesSbox[(t >> 16) & 0xFF] << 16) |
                (kAesSbox[(t >> 24) & 0xFF] << 24);
        }
        rk[i] = rk[i - 8] ^ t;
    }
}

// ─────────────────────────────────────────────────────────────
// [C] AES context scanner — fn 0x1d4e0
// Scans donor process memory for live AES-256 contexts.
// Acceptance criteria (from 0x1d7c0-0x1da5f):
//   1. nr == 14 (AES-256)
//   2. rk == address of context + 0x10
//   3. 32-byte key has identical halves (key[0..15] == key[16..31])
//   4. Key expansion matches the round key schedule
// ─────────────────────────────────────────────────────────────
struct ScanResult {
    bool found;
    uint8_t H[16]; // the 16-byte half that becomes the session key
};

#ifdef _WIN32
ScanResult scan_donor_for_H(HANDLE hProcess, uintptr_t baseAddr, size_t regionSize) {
    ScanResult result{};

    // Scan on 16-byte alignment (the context is likely aligned)
    for (size_t offset = 0; offset + sizeof(AesContext) <= regionSize; offset += 16) {
        AesContext ctx{};
        SIZE_T bytesRead = 0;

        if (!ReadProcessMemory(hProcess,
                               reinterpret_cast<LPCVOID>(baseAddr + offset),
                               &ctx, sizeof(ctx), &bytesRead) ||
            bytesRead != sizeof(ctx)) {
            continue;
        }

        // [C] 0x1d7cb: check nr == 14
        if (ctx.nr != 14) continue;

        // [C] 0x1d7d4: check rk pointer == self + 0x10
        uintptr_t expectedRk = baseAddr + offset + 0x10;
        if (ctx.rk_ptr != expectedRk) continue;

        // Extract the 32-byte key from the first 8 round key words
        uint8_t key[32];
        std::memcpy(key, ctx.rk, 32);

        // [C] 0x1d7f3-0x1d80f: check equal halves (H || H)
        if (std::memcmp(key, key + 16, 16) != 0) continue;

        // [C] Verify key expansion matches
        uint32_t expectedRk256[60];
        aes256_key_expand(key, expectedRk256);
        if (std::memcmp(expectedRk256, ctx.rk, 240) != 0) continue;

        // Found a valid H || H context
        result.found = true;
        std::memcpy(result.H, key, 16);
        return result;
    }

    return result;
}
#endif

// ─────────────────────────────────────────────────────────────
// [C] H host publisher — fn 0x1a892
// Runs in the host thread. When a new H is found (different from last),
// publishes it to the HState shared memory.
// ─────────────────────────────────────────────────────────────
#ifdef _WIN32
static uint8_t g_lastPublishedH[16] = {};
static uint64_t g_scanGeneration = 0;

void h_host_publish(const uint8_t newH[16], HState* hstate) {
    // [C] 0x1aad6-0x1aaee: only publish if H changed
    if (std::memcmp(newH, g_lastPublishedH, 16) == 0) return;

    // [C] Write to HState with seqlock protocol:
    // increment seqlock (make odd = write in progress)
    hstate->seqlock++;
    _mm_sfence();

    // Update H and generation
    std::memcpy(hstate->H, newH, 16);
    hstate->generation = g_scanGeneration;
    hstate->epochApplied = hstate->epochRequest;

    _mm_sfence();
    // increment seqlock again (make even = write complete)
    hstate->seqlock++;

    std::memcpy(g_lastPublishedH, newH, 16);
}

// [C] On epoch reset (new connection): forget known contexts, zero H.
void h_host_epoch_reset(HState* hstate) {
    g_scanGeneration++;
    std::memset(g_lastPublishedH, 0, 16);

    hstate->seqlock++;
    _mm_sfence();
    std::memset(hstate->H, 0, 16);
    _mm_sfence();
    hstate->seqlock++;
}
#endif

} // namespace hooks
