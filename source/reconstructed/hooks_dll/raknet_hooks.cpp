// [C] Hooks DLL RakNet intercept — NET_Receive and NETSND_WriteBytes detours.
// Reconstructed from hooks RVAs: NET_Receive=0x13300, NETSND_WriteBytes=0x146c0.
// Evidence: A_crypto/evidence/hooks_13300_NET_Receive.asm,
//           A_crypto/evidence/hooks_146c0_NETSND_WriteBytes.asm
#include "mode2_crypto.hpp"
#include <cstdint>
#include <cstring>

namespace hooks {

// Forward declarations from mode2_crypto.cpp
struct UnprotectResult {
    UnprotectStatus status;
    uint32_t        outputBytes;
    uint32_t        outputBits;
};

struct ProtectResult {
    bool     success;
    uint64_t outputLen;
    uint32_t outputBits;
};

extern UnprotectResult mode2_unprotect(uint8_t*, const uint8_t*, uint32_t, uint64_t);
extern ProtectResult mode2_protect(uint8_t*, uint64_t, uint32_t);
extern void reset_session();

// Forward declaration
static void parse_approved_field12(uint8_t* packet, int len);

// ─────────────────────────────────────────────────────────────
// [C] RakNet API — resolved by name from RakNet.dll exports
// (hooks 0x57bc8-0x57c38, 0x58a68-0x58aa8)
// ─────────────────────────────────────────────────────────────

// RakNet function pointer types (from report §4 RakNet ABI):
using RakNet_Receive     = bool(*)(void* ctx);         // NETRCV_Receive
using RakNet_RawData     = uint8_t*(*)(void* ctx);     // NETRCV_RawData
using RakNet_UnreadBits  = int(*)(void* ctx);           // NETRCV_UnreadBits
using RakNet_GUID        = uint64_t(*)(void* ctx);      // NETRCV_GUID
using RakNet_WriteBytes  = void(*)(void* ctx, const uint8_t* data, int len);  // NETSND_WriteBytes
using RakNet_Send        = void(*)(void* ctx, uint64_t guid, int p2, int p3, int p4); // NETSND_Send

// Original function pointers (saved before hooking)
static RakNet_Receive    g_origReceive    = nullptr;
static RakNet_RawData    g_origRawData    = nullptr;
static RakNet_UnreadBits g_origUnreadBits = nullptr;
[[maybe_unused]] static RakNet_GUID       g_origGUID       = nullptr;
static RakNet_WriteBytes g_origWriteBytes = nullptr;
[[maybe_unused]] static RakNet_Send       g_origSend       = nullptr;

// Globals (defined in mode2_crypto.cpp)
extern Mode2Globals g_mode2;

// ─────────────────────────────────────────────────────────────
// [C] NET_Receive detour — fn 0x13300
// Called by the game to receive a packet. Decrypts protected packets inline.
// Flow:
//   1. Call original NETRCV_Receive
//   2. Get raw data pointer and unread bits
//   3. If msg ID is in protected set AND mode==2: decrypt in place
//   4. Special handling for Approved (0x8F) and EAC (0xA2) packets
// ─────────────────────────────────────────────────────────────
bool hook_NET_Receive(void* ctx) {
    bool received = g_origReceive(ctx);
    if (!received) return false;

    uint8_t* rawData = g_origRawData(ctx);
    int unreadBits = g_origUnreadBits(ctx);
    if (!rawData || unreadBits <= 0) return true;

    int packetLen = (unreadBits + 7) / 8;
    uint8_t msgId = rawData[0];

    // [C] 0x13447: Approved packet (0x8F = Message.Type.Approved + 140)
    if (msgId == 0x8F) {
        // [C] 0x13bd2-0x13d49: Parse protobuf varint for field 12.
        // If field 12 value == 2, patch it to 0 so game sees mode=0.
        // Store actual mode (2) in selectedMode global.
        parse_approved_field12(rawData, packetLen);
        return true;
    }

    // [C] 0x14978: Special handling for 0xA2 (EAC packets) — relay to donor.
    // 0x13a76: 0x9D/0x9E handling (other special types).

    // [C] 0x133e8: Check protected ID mask
    if (g_mode2.selectedMode != 2) return true;
    if (!is_protected_id(msgId)) return true;
    if (packetLen < static_cast<int>(kMinPacketLen)) return true;

    // [C] Decrypt in place
    UnprotectResult result = mode2_unprotect(rawData, rawData, unreadBits, packetLen);

    if (result.status != UnprotectStatus::kSuccess) {
        // [C] 0x14297: decrypt failure → drop packet (return false so game ignores it)
        return false;
    }

    // [C] The game reads plaintext through NETRCV_UnreadBits override
    // which returns the decrypted bit count.
    return true;
}

// ─────────────────────────────────────────────────────────────
// [C] NETSND_WriteBytes detour — fn 0x146c0
// Called when the game sends data. Encrypts protected packets.
// Flow:
//   1. Check if msg ID is in protected set AND mode==2
//   2. If yes: encrypt, append trailer, send via original
//   3. If no: passthrough
// ─────────────────────────────────────────────────────────────
void hook_NETSND_WriteBytes(void* ctx, const uint8_t* data, int len) {
    if (!data || len <= 0) {
        g_origWriteBytes(ctx, data, len);
        return;
    }

    uint8_t msgId = data[0];

    // [C] 0x14c6a: check protected ID mask
    if (g_mode2.selectedMode != 2 || !is_protected_id(msgId)) {
        // Passthrough — not a protected message
        g_origWriteBytes(ctx, data, len);
        return;
    }

    // [C] Need to encrypt. Copy data to a buffer with room for trailer.
    uint64_t outputBufLen = static_cast<uint64_t>(len) + kTrailerSize;
    uint8_t* buf = new uint8_t[outputBufLen];
    std::memcpy(buf, data, len);

    ProtectResult result = mode2_protect(buf, len, len * 8);

    if (result.success) {
        // [C] 0x14cf3/0x14d63: send encrypted packet with trailer
        g_origWriteBytes(ctx, buf, static_cast<int>(result.outputLen));
    } else {
        // [C] 0x15033-0x150a9: passthrough_on_error — send plaintext
        g_origWriteBytes(ctx, data, len);
    }

    delete[] buf;
}

// ─────────────────────────────────────────────────────────────
// [C] Approved field 12 parser — from fn 0x13bd2-0x13d49
// Scans for protobuf field 12 (wire type 0 = varint), reads value.
// If value == 2: store as selectedMode, patch byte to 0.
// ─────────────────────────────────────────────────────────────
void parse_approved_field12(uint8_t* packet, int len) {
    // [C] Protobuf field 12, wire type 0 → field tag = (12 << 3) | 0 = 0x60
    for (int i = 1; i < len; i++) {
        if (packet[i] == 0x60 && i + 1 < len) {
            uint8_t value = packet[i + 1];
            g_mode2.selectedMode = value;
            // [C] 0x13cbc: patch the value byte to 0 so game sees mode=0
            packet[i + 1] = 0;
            return;
        }
    }
}

// ─────────────────────────────────────────────────────────────
// [C] NET_StartClient detour — fn 0x12160
// Resets all crypto state for a new connection.
// ─────────────────────────────────────────────────────────────
void hook_NET_StartClient(void* /*originalArgs*/) {
    reset_session();
    // [C] 0x1258b: increment HState.epoch_request
    // [C] 0x12b8c: reset outbound counter (done in reset_session)
}

// [C] NET_Close detour — fn 0x12f70: same resets.
void hook_NET_Close(void* /*originalArgs*/) {
    reset_session();
}

} // namespace hooks
