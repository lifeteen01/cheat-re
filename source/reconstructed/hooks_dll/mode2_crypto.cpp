// [C] Hooks DLL mode2 AES-256-GCM packet encrypt/decrypt.
// Reconstructed from hooks RVAs: slot0_init=0xfb60, unprotect=0xffd0, protect=0x10400.
// Evidence: A_crypto/evidence/hooks_0f900-1080d_slot0init_unprotect_protect.asm
#include "mode2_crypto.hpp"
#include <cstring>

#ifdef _WIN32
#include <windows.h>
#include <bcrypt.h>
#pragma comment(lib, "bcrypt.lib")
#else
// Offline build: declare BCrypt types for compilation without linking.
typedef void* BCRYPT_ALG_HANDLE;
typedef void* BCRYPT_KEY_HANDLE;
typedef long NTSTATUS;
#define STATUS_SUCCESS 0
struct BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO {
    uint32_t cbSize;
    uint32_t dwInfoVersion;
    uint8_t* pbNonce;
    uint32_t cbNonce;
    uint8_t* pbAuthData;
    uint32_t cbAuthData;
    uint8_t* pbTag;
    uint32_t cbTag;
    uint8_t* pbMacContext;
    uint32_t cbMacContext;
    uint32_t cbAAD;
    uint64_t cbData;
    uint32_t dwFlags;
};
#endif

namespace hooks {

static Mode2Globals g_mode2{};

// ─────────────────────────────────────────────────────────────
// [C] slot0_init — fn 0xfb60 (0xfb9d–0xffc1)
// Opens BCrypt AES provider, sets ChainingModeGCM, verifies 16-byte auth tag,
// imports the fixed 32-byte key at 0x59638 as slot0.
// ─────────────────────────────────────────────────────────────
bool slot0_init() {
    if (g_mode2.hAlg && g_mode2.hKeySlot0) {
        return true; // already initialized
    }

#ifdef _WIN32
    NTSTATUS status;

    // [C] 0xfbdd: BCryptOpenAlgorithmProvider("AES", "Microsoft Primitive Provider", 0)
    status = BCryptOpenAlgorithmProvider(
        &g_mode2.hAlg,
        BCRYPT_AES_ALGORITHM,          // L"AES" at hooks 0x57030
        MS_PRIMITIVE_PROVIDER,         // L"Microsoft Primitive Provider" at 0x58600
        0
    );
    if (!BCRYPT_SUCCESS(status)) goto fail;

    // [C] 0xfc25: BCryptSetProperty(hAlg, "ChainingMode", "ChainingModeGCM", ...)
    {
        wchar_t gcmMode[] = BCRYPT_CHAIN_MODE_GCM; // L"ChainingModeGCM" at 0x57038
        status = BCryptSetProperty(
            g_mode2.hAlg,
            BCRYPT_CHAINING_MODE,
            reinterpret_cast<PUCHAR>(gcmMode),
            sizeof(gcmMode),
            0
        );
        if (!BCRYPT_SUCCESS(status)) goto fail;
    }

    // [C] 0xfc77-0xfcc3: BCryptGetProperty(hAlg, "AuthTagLength", ...) — verify 16-byte tags.
    {
        BCRYPT_AUTH_TAG_LENGTHS_STRUCT tagLengths{};
        ULONG cbResult = 0;
        status = BCryptGetProperty(
            g_mode2.hAlg,
            BCRYPT_AUTH_TAG_LENGTH,
            reinterpret_cast<PUCHAR>(&tagLengths),
            sizeof(tagLengths),
            &cbResult,
            0
        );
        if (!BCRYPT_SUCCESS(status)) goto fail;

        // [C] Checks: minLength <= 16, maxLength >= 16, tag 16 is achievable with increment.
        bool tagOk = (tagLengths.dwMinLength <= kGcmTagLen &&
                      tagLengths.dwMaxLength >= kGcmTagLen);
        if (tagLengths.dwIncrement != 0) {
            tagOk = tagOk && ((kGcmTagLen - tagLengths.dwMinLength) % tagLengths.dwIncrement == 0);
        } else {
            tagOk = tagOk && (tagLengths.dwMinLength == kGcmTagLen);
        }
        if (!tagOk) {
            status = 0x80070032; // ERROR_NOT_SUPPORTED
            goto fail;
        }
    }

    // [C] 0xfcc6-0xfd1c: BCryptGenerateSymmetricKey(hAlg, &hKeySlot0, NULL, 0, key@0x59638, 32, 0)
    {
        uint8_t keyCopy[kAes256KeyLen];
        std::memcpy(keyCopy, kSlot0FixedKey, kAes256KeyLen);

        status = BCryptGenerateSymmetricKey(
            g_mode2.hAlg,
            &g_mode2.hKeySlot0,
            nullptr, 0,
            keyCopy, kAes256KeyLen,
            0
        );

        // [C] 0xfd42-0xfd50: zeroes the key copy on stack after import.
        SecureZeroMemory(keyCopy, kAes256KeyLen);

        if (!BCRYPT_SUCCESS(status)) goto fail;
    }

    // [C] 0xfe67/0xfe80/0xfe92: store handles and status.
    g_mode2.initStatus = 0; // success
    return true;

fail:
    // [C] 0xfd5a-0xfd7f: on failure, destroy partial handles.
    if (g_mode2.hKeySlot0) {
        BCryptDestroyKey(g_mode2.hKeySlot0);
        g_mode2.hKeySlot0 = nullptr;
    }
    if (g_mode2.hAlg) {
        BCryptCloseAlgorithmProvider(g_mode2.hAlg, 0);
        g_mode2.hAlg = nullptr;
    }
    g_mode2.initStatus = static_cast<uint32_t>(status);
    return false;
#else
    return false; // offline build
#endif
}

// ─────────────────────────────────────────────────────────────
// [C] install_session_key — from fn 0x5fe5-0x6877 (H install worker)
// Takes 16-byte H, expands to H||H (32 bytes), imports as slot1.
// ─────────────────────────────────────────────────────────────
bool install_session_key(const uint8_t h[16]) {
    (void)h;
#ifdef _WIN32
    if (!g_mode2.hAlg) return false;

    // [C] 0x62c4/0x62cb: key = H || H (double-H expansion)
    uint8_t doubleH[kAes256KeyLen];
    std::memcpy(doubleH, h, 16);
    std::memcpy(doubleH + 16, h, 16);

    // Destroy old slot1 if present
    if (g_mode2.hKeySlot1) {
        BCryptDestroyKey(g_mode2.hKeySlot1);
        g_mode2.hKeySlot1 = nullptr;
    }

    // [C] 0x6308: BCryptGenerateSymmetricKey(hAlg, &hKeySlot1, NULL, 0, doubleH, 32, 0)
    NTSTATUS status = BCryptGenerateSymmetricKey(
        g_mode2.hAlg,
        &g_mode2.hKeySlot1,
        nullptr, 0,
        doubleH, kAes256KeyLen,
        0
    );
    SecureZeroMemory(doubleH, kAes256KeyLen);

    if (!BCRYPT_SUCCESS(status)) return false;

    // [C] 0x6869-0x6877: save H, set installed flag.
    std::memcpy(g_mode2.currentH, h, 16);
    g_mode2.sessionInstalled = true;
    return true;
#else
    return false;
#endif
}

// ─────────────────────────────────────────────────────────────
// [C] reset_session — from NET_StartClient detour 0x12160 and NET_Close detour 0x12f70
// Clears slot1, H, installed flag, and outbound counter.
// ─────────────────────────────────────────────────────────────
void reset_session() {
#ifdef _WIN32
    if (g_mode2.hKeySlot1) {
        BCryptDestroyKey(g_mode2.hKeySlot1);
        g_mode2.hKeySlot1 = nullptr;
    }
#endif
    // [C] 0x12463/0x13087: zero H
    std::memset(g_mode2.currentH, 0, 16);
    // [C] 0x12465/0x13089: clear installed flag
    g_mode2.sessionInstalled = false;
    // [C] 0x12b8c/0x1302b: reset outbound sequence
    g_mode2.outboundSeq.store(0, std::memory_order_release);
}

// ─────────────────────────────────────────────────────────────
// [C] unprotect (decrypt inbound) — fn 0xffd0
// Params: result buffer, packet data, bit_count, packet_length
// Returns bytes of plaintext output (0 on failure → packet dropped).
// ─────────────────────────────────────────────────────────────
struct UnprotectResult {
    UnprotectStatus status;
    uint32_t        outputBytes;
    uint32_t        outputBits;
};

UnprotectResult mode2_unprotect(
    uint8_t* result_out,
    const uint8_t* packet,
    uint32_t bitCount,
    uint64_t packetLen)
{
    UnprotectResult r{};

    // [C] 0x10009-0x1000c: null check
    if (!packet) {
        r.status = UnprotectStatus::kNoData;
        return r;
    }

    // [C] 0x10054-0x10056: bit alignment check
    if (bitCount & 0x7) {
        r.status = UnprotectStatus::kNotByteAligned;
        return r;
    }

    // [C] 0x1005d-0x10063: minimum length check
    if (packetLen < kMinPacketLen) {
        r.status = UnprotectStatus::kShortPacket;
        return r;
    }

    // [C] 0x10068: checked byte at L-18 must be <= 1
    uint8_t checked = packet[packetLen - 18];
    if (checked > 1) {
        r.status = UnprotectStatus::kInvalidChecked;
        return r;
    }

    // [C] 0x10088-0x10092: phase = trailer[L-17] & 1
    uint8_t phaseRaw = packet[packetLen - 17];
    bool phaseIsSession = (phaseRaw & 1) != 0;

    // [C] 0x10119: inbound domain = phase + 1
    uint32_t domain = static_cast<uint32_t>(phaseIsSession) + 1;

    // [C] 0x101e6-0x101f0: select key by phase
    void* hKey = phaseIsSession ? g_mode2.hKeySlot1 : g_mode2.hKeySlot0;
    if (!hKey) {
        r.status = UnprotectStatus::kKeyUnavailable;
        return r;
    }

    // [C] 0x1110d: sequence from trailer at L-22 (4 bytes LE)
    uint32_t seq;
    std::memcpy(&seq, packet + packetLen - 22, 4);

    // [C] 0x100fc-0x101a3: build nonce and AEAD info
    GcmNonce nonce{};
    nonce.sequence_le = seq;
    nonce.zero = 0;
    nonce.domain_le = domain;

    // Ciphertext is packet[1..L-22), tag is packet[L-16..L)
    const uint8_t* ciphertext = packet + 1;
    uint64_t ciphertextLen = packetLen - kTrailerSize - 1;
    const uint8_t* tag = packet + packetLen - kGcmTagLen;

#ifdef _WIN32
    BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO authInfo{};
    BCRYPT_INIT_AUTH_MODE_INFO(authInfo);
    authInfo.pbNonce = reinterpret_cast<PUCHAR>(&nonce);
    authInfo.cbNonce = kGcmNonceLen;
    authInfo.pbAuthData = nullptr; // [C] no AAD
    authInfo.cbAuthData = 0;
    authInfo.pbTag = const_cast<PUCHAR>(tag);
    authInfo.cbTag = kGcmTagLen;

    // [C] 0x10201-0x10236: BCryptDecrypt(hKey, ciphertext, len, &authInfo, NULL, 0, output, len, &cbResult, 0)
    ULONG cbResult = 0;
    uint8_t* plaintext = result_out + 1; // output at position 1 (after clear_id)
    NTSTATUS status = BCryptDecrypt(
        hKey,
        const_cast<PUCHAR>(ciphertext),
        static_cast<ULONG>(ciphertextLen),
        &authInfo,
        nullptr, 0,
        plaintext,
        static_cast<ULONG>(ciphertextLen),
        &cbResult,
        0
    );

    if (!BCRYPT_SUCCESS(status)) {
        // [C] 0x14297: decrypt failure → drop packet
        r.status = UnprotectStatus::kDecryptFailed;
        return r;
    }

    // [C] 0x102cf-0x102d6: copy clear_id to output[0]
    result_out[0] = packet[0];

    r.status = UnprotectStatus::kSuccess;
    r.outputBytes = static_cast<uint32_t>(packetLen - kTrailerSize);
    r.outputBits = bitCount - (kTrailerSize * 8);
#else
    (void)result_out; (void)ciphertext; (void)ciphertextLen; (void)tag; (void)nonce;
    r.status = UnprotectStatus::kDecryptFailed;
#endif

    return r;
}

// ─────────────────────────────────────────────────────────────
// [C] protect (encrypt outbound) — fn 0x10400
// Params: packet data (modified in place), data length, bit count
// Returns total output length including trailer.
// ─────────────────────────────────────────────────────────────
struct ProtectResult {
    bool     success;
    uint64_t outputLen;
    uint32_t outputBits;
};

ProtectResult mode2_protect(
    uint8_t* packet,
    uint64_t dataLen,
    uint32_t bitCount)
{
    ProtectResult r{};

    // [C] 0x104af-0x104c7: phase = session_installed ? 1 : 0
    bool phaseIsSession = g_mode2.sessionInstalled;

    // outbound domain: session=1, bootstrap=2
    uint32_t domain = phaseIsSession ? 1 : 2;

    // [C] 0x105d7-0x105e2: select key
    void* hKey = phaseIsSession ? g_mode2.hKeySlot1 : g_mode2.hKeySlot0;
    if (!hKey) {
        // [C] 0x15033-0x150a9: encrypt failure → send plaintext (passthrough_on_error)
        r.success = false;
        r.outputLen = dataLen;
        r.outputBits = bitCount;
        return r;
    }

    // [C] 0x105ef: seq = lock xadd ++outbound_seq (atomic increment)
    uint32_t seq = g_mode2.outboundSeq.fetch_add(1, std::memory_order_acq_rel) + 1;

    // Build nonce
    GcmNonce nonce{};
    nonce.sequence_le = seq;
    nonce.zero = 0;
    nonce.domain_le = domain;

    // [C] 0x104cb-0x104d6: save clear_id = packet[0]
    uint8_t clearId = packet[0];

    // Plaintext is packet[1..dataLen)
    uint8_t* plaintext = packet + 1;
    uint64_t plaintextLen = dataLen - 1;

#ifdef _WIN32
    BCRYPT_AUTHENTICATED_CIPHER_MODE_INFO authInfo{};
    BCRYPT_INIT_AUTH_MODE_INFO(authInfo);
    authInfo.pbNonce = reinterpret_cast<PUCHAR>(&nonce);
    authInfo.cbNonce = kGcmNonceLen;
    authInfo.pbAuthData = nullptr;
    authInfo.cbAuthData = 0;

    // Tag goes into the trailer at the end
    uint8_t tag[kGcmTagLen];
    authInfo.pbTag = tag;
    authInfo.cbTag = kGcmTagLen;

    // [C] 0x104e5-0x10604: BCryptEncrypt in place
    ULONG cbResult = 0;
    NTSTATUS status = BCryptEncrypt(
        hKey,
        plaintext,
        static_cast<ULONG>(plaintextLen),
        &authInfo,
        nullptr, 0,
        plaintext, // encrypt in place (ciphertext overwrites plaintext at packet[1])
        static_cast<ULONG>(plaintextLen),
        &cbResult,
        0
    );

    if (!BCRYPT_SUCCESS(status)) {
        r.success = false;
        r.outputLen = dataLen;
        r.outputBits = bitCount;
        return r;
    }

    // [C] Build trailer after ciphertext:
    // packet[0] = clear_id (already there)
    packet[0] = clearId;

    uint64_t trailerStart = 1 + plaintextLen; // = dataLen
    // [C] 0x106cf: sequence_le at trailer+0
    std::memcpy(packet + trailerStart, &seq, 4);
    // [C] 0x106d3: checked = 1
    packet[trailerStart + 4] = 1;
    // [C] 0x106d9: phase byte
    packet[trailerStart + 5] = phaseIsSession ? 1 : 0;
    // [C] 0x106e6: 16-byte GCM tag
    std::memcpy(packet + trailerStart + 6, tag, kGcmTagLen);

    r.success = true;
    r.outputLen = dataLen + kTrailerSize;
    r.outputBits = bitCount + (kTrailerSize * 8);
#else
    (void)plaintext; (void)plaintextLen; (void)clearId; (void)seq; (void)nonce;
    r.success = false;
    r.outputLen = dataLen;
    r.outputBits = bitCount;
#endif

    return r;
}

} // namespace hooks
