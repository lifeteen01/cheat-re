// [C] Hooks DLL mode2 AES-256-GCM packet crypto — structures and constants.
// Reconstructed from hooks RVAs 0xfb60..0x1080d + analysis report A_crypto/REPORT.md.
#pragma once
#include <cstdint>
#include <cstring>
#include <atomic>

namespace hooks {

// [C] Trailer layout (22 bytes appended to every protected packet):
//   [0]        clear_id (1 byte, Rust message ID, unencrypted)
//   [1..L-23]  AES-256-GCM ciphertext (no padding)
//   [L-22]     sequence_le (4 bytes, LE u32)
//   [L-18]     checked (1 byte, must be <=1; encryptor writes 1)
//   [L-17]     phase_raw (1 byte, bit 0: 0=bootstrap/slot0, 1=session/slot1)
//   [L-16]     tag (16 bytes, GCM auth tag)
static constexpr uint32_t kTrailerSize = 22;
static constexpr uint32_t kMinPacketLen = 0x17; // 23 bytes minimum
static constexpr uint32_t kGcmTagLen = 16;
static constexpr uint32_t kGcmNonceLen = 12;
static constexpr uint32_t kAes256KeyLen = 32;

// [C] Protected message ID bitmask — IDs whose bit is set get encrypted.
// Rust Message.Type 5-16, 19-21, 23, 27-29 → byte IDs 0x91-0x9C, 0x9F-0xA1, 0xA3, 0xA7-0xA9.
static constexpr uint32_t kProtectedIdMask = 0x1C5CFFF;

// [C] Fixed bootstrap AES-256-GCM key at hooks RVA 0x59638.
static constexpr uint8_t kSlot0FixedKey[32] = {
    0x70, 0x74, 0x8d, 0xb6, 0x43, 0x9e, 0x4e, 0x4c,
    0x36, 0xef, 0x91, 0xd4, 0x3d, 0x37, 0x45, 0x73,
    0x4a, 0x51, 0x42, 0xb7, 0xb9, 0x3b, 0xeb, 0xe1,
    0x0b, 0xa3, 0x67, 0xa1, 0xea, 0xc7, 0x35, 0x3a
};

// [C] Nonce construction: seq_le32 || 00000000 || domain_le32 (12 bytes total).
struct GcmNonce {
    uint32_t sequence_le;
    uint32_t zero;
    uint32_t domain_le;
};
static_assert(sizeof(GcmNonce) == kGcmNonceLen);

// [C] Domain calculation: domain = 1 + (phase XOR outbound).
//   Session outbound (client→server): domain=1
//   Session inbound  (server→client): domain=2
//   Bootstrap domains are swapped.
inline uint32_t compute_domain(bool phase_is_session, bool is_outbound) {
    return 1 + (static_cast<uint32_t>(phase_is_session) ^ static_cast<uint32_t>(is_outbound));
}

// [C] Unprotect result status codes (inferred from asm branch structure at 0xffd0+).
enum class UnprotectStatus : uint8_t {
    kSuccess          = 0,
    kNoData           = 1,  // null data pointer
    kNotByteAligned   = 2,  // bit count not multiple of 8
    kShortPacket      = 3,  // length < 23
    kInvalidChecked   = 4,  // checked byte > 1
    kKeyUnavailable   = 5,  // session key not installed for phase=1
    kDecryptFailed    = 6,  // BCryptDecrypt returned error
    kSuccess_Clear    = 0xFF // passthrough (not protected ID)
};

// [C] Globals layout from REPORT.md §1.0:
struct Mode2Globals {
    void*    hAlg;                   // 0xa6550 — BCrypt algorithm handle
    void*    hKeySlot0;              // 0xa64a8 — BCrypt key handle for bootstrap
    void*    hKeySlot1;              // 0xa6548 — BCrypt key handle for session
    uint8_t  currentH[16];           // 0xa6560 — current 16-byte H
    bool     sessionInstalled;       // 0xa6570 — slot1 key is installed
    uint32_t initStatus;             // 0x6c0c4 — slot0 initialization result
    std::atomic<uint32_t> outboundSeq; // 0xa649c — outbound sequence counter (lock xadd)
    uint32_t selectedMode;           // 0xa64a0 — protocol mode (must be 2)
    // 0xa6578 — SRWLOCK for crypto operations (not modeled here)
};

// [C] HState shared memory layout (Local\HookProbe_HState_v2):
struct HState {
    uint32_t padding;        // +0x00
    uint32_t version;        // +0x04 (must be 1)
    uint64_t reserved1;      // +0x08
    uint32_t hostStatus;     // +0x10
    uint32_t reserved2;      // +0x14
    uint64_t seqlock;        // +0x18 (must be even to read)
    uint64_t generation;     // +0x20
    uint64_t reserved3;      // +0x28
    uint64_t epochRequest;   // +0x30 (player increments)
    uint64_t epochApplied;   // +0x38 (host sets)
    uint8_t  H[16];          // +0x40 (16-byte session secret)
};

// [C] Check if a Rust message ID (after +140 adjustment) is in the protected set.
inline bool is_protected_id(uint8_t msg_id) {
    // msg_id is the raw byte ID. Subtract 0x8C (140) to get the type index.
    // Protected if bit (msg_id - 0x8C) is set in kProtectedIdMask.
    if (msg_id < 0x8C) return false;
    uint32_t idx = msg_id - 0x8C;
    if (idx >= 32) return false;
    return (kProtectedIdMask >> idx) & 1;
}

} // namespace hooks
