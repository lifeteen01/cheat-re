// [C] Hooks DLL EOS SDK facade — replaces EAC anti-cheat client.
// Reconstructed from hooks RVAs: facade=0xf1d0-0xf7d0, stubs=0xef40-0xf614.
// Evidence: A_crypto/evidence/hooks_f1d0-f7d0_eos_facade.asm
#include <cstdint>
#include <cstring>

namespace hooks {

// [C] The facade presents a fake EOS SDK so the player has no anti-cheat client.
// The game is told encryption mode is 0, while mode 2 is handled by the hooks.

// [C] 0xf010: EOS_Platform_Create → returns fake handle 0xDEADBEEFCAFEBEEF
static constexpr uint64_t kFakePlatformHandle = 0xDEADBEEFCAFEBEEFULL;

// [C] 0xf1d0: EOS_GetVersion → "1.19.0.3-49960398"
static constexpr const char* kFakeEosVersion = "1.19.0.3-49960398";

// ─────────────────────────────────────────────────────────────
// EOS facade function stubs
// ─────────────────────────────────────────────────────────────

// [C] 0xef40: EOS_Initialize → 0 (success)
int eos_Initialize(void* /*options*/) {
    return 0; // EOS_EResult_Success
}

// [C] 0xef40: EOS_Logging_SetCallback → 0
int eos_Logging_SetCallback(void* /*callback*/) {
    return 0;
}

// [C] 0xef40: EOS_Logging_SetLogLevel → 0
int eos_Logging_SetLogLevel(int /*category*/, int /*level*/) {
    return 0;
}

// [C] 0xf010: EOS_Platform_Create → fake handle
uint64_t eos_Platform_Create(void* /*options*/) {
    return kFakePlatformHandle;
}

// [C] 0xf0f0: EOS_Platform_GetAntiCheatClientInterface → NULL
void* eos_Platform_GetAntiCheatClientInterface(uint64_t /*platformHandle*/) {
    return nullptr; // no anti-cheat client
}

// [C] 0xf1d0: EOS_GetVersion → version string
const char* eos_GetVersion() {
    return kFakeEosVersion;
}

// [C] The facade redirects EOSSDK-Win64-Shipping.dll exports:
//   EOS_Initialize          → eos_Initialize (returns 0)
//   EOS_Logging_SetCallback → eos_Logging_SetCallback (returns 0)
//   EOS_Logging_SetLogLevel → eos_Logging_SetLogLevel (returns 0)
//   EOS_Platform_Create     → eos_Platform_Create (returns fake handle)
//   EOS_Platform_GetAntiCheatClientInterface → returns NULL
//   EOS_GetVersion          → returns "1.19.0.3-49960398"
//   All other EOS_Platform_* calls pass through to the real SDK.

// [C] The effect: the player process has no EAC client, sees mode=0,
// and all encrypted traffic is handled by the hooks DLL's mode2 crypto.

} // namespace hooks
