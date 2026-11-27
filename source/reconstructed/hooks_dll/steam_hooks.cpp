// [C] Hooks DLL Steam API hooks — vtable patches + flat export hooks.
// Reconstructed from hooks RVAs: steam_launch=0x229e0, getappid=0x241b0, steamid=0x24a90.
// Evidence: A_crypto/evidence/hooks_227f0-22e4d_steam_launch_vtable.asm,
//           A_crypto/evidence/hooks_241b0_getappid_split.asm
#include <cstdint>
#include <cstring>

#ifdef _WIN32
#include <windows.h>
#endif

namespace hooks {

// ─────────────────────────────────────────────────────────────
// Constants
// ─────────────────────────────────────────────────────────────

static constexpr uint32_t kRealAppId   = 252490;  // Rust
static constexpr uint32_t kDecoyAppId  = 480;     // Spacewar (decoy)
static constexpr uint64_t kFallbackSteamId = 0x0110000112F206E9ULL; // 76561198278117097

// [C] ISteamApps008 vtable offsets for hooks:
//   +0x00 (index 0)  = BIsSubscribed
//   +0x30 (index 6)  = BIsSubscribedApp
//   +0xD0 (index 26) = GetLaunchCommandLine
static constexpr uint32_t kVtblBIsSubscribed    = 0x00;
static constexpr uint32_t kVtblBIsSubscribedApp = 0x30;
static constexpr uint32_t kVtblGetLaunchCmd     = 0xD0;

// [C] ISteamUtils vtable offset:
//   +0x40 (index 8) = GetAppID
static constexpr uint32_t kVtblGetAppID = 0x40;

static bool g_spoofMode = false;  // 0xa6a48 — set when real Steam init fails

// ─────────────────────────────────────────────────────────────
// [C] BIsSubscribed / BIsSubscribedApp stub — fn 0x24530
// Always returns true.
// ─────────────────────────────────────────────────────────────
bool hook_BIsSubscribed(void* /*self*/) {
    return true;
}

bool hook_BIsSubscribedApp(void* /*self*/, uint32_t /*appId*/) {
    return true;
}

// ─────────────────────────────────────────────────────────────
// [C] GetLaunchCommandLine detour — fn 0x227f0
// Calls original. If result contains "127.0.0.1" or "localhost",
// blanks the buffer (swallows the loopback reconnect command).
// ─────────────────────────────────────────────────────────────
using GetLaunchCommandLineFn = int(*)(void*, char*, int);
static GetLaunchCommandLineFn g_originalGetLaunchCommandLine = nullptr;

int hook_GetLaunchCommandLine(void* self, char* buf, int bufSize) {
    int result = 0;
    if (g_originalGetLaunchCommandLine) {
        result = g_originalGetLaunchCommandLine(self, buf, bufSize);
    }

    // [C] 0x22835/0x22863: check for loopback addresses
    if (buf && buf[0]) {
        if (strstr(buf, "127.0.0.1") || strstr(buf, "localhost")) {
            // [C] 0x229cc: swallow — blank the command line
            buf[0] = '\0';
        }
    }
    return result;
}

// ─────────────────────────────────────────────────────────────
// [C] GetAppID split — fn 0x241b0
// Walks 16-frame caller backtrace. If caller is UnityPlayer,
// GameAssembly or the exe (and NOT GameOverlayRenderer), returns
// the real AppID (252490). Otherwise returns decoy (480).
// ─────────────────────────────────────────────────────────────
#ifdef _WIN32
uint32_t hook_GetAppID(void* /*self*/) {
    // [C] 0x241b0-0x24328: walk backtrace
    void* frames[16];
    USHORT count = CaptureStackBackTrace(0, 16, frames, nullptr);

    for (USHORT i = 0; i < count; i++) {
        HMODULE hMod = nullptr;
        if (!GetModuleHandleExA(
                GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
                reinterpret_cast<LPCSTR>(frames[i]),
                &hMod)) {
            continue;
        }

        char modName[MAX_PATH];
        if (!GetModuleFileNameA(hMod, modName, MAX_PATH)) continue;

        // Extract just the filename
        const char* base = strrchr(modName, '\\');
        base = base ? base + 1 : modName;

        // [C] If caller is from game modules → real AppID
        if (_stricmp(base, "UnityPlayer.dll") == 0 ||
            _stricmp(base, "GameAssembly.dll") == 0 ||
            _stricmp(base, "RustClient.exe") == 0) {
            return kRealAppId;
        }

        // [C] GameOverlayRenderer gets decoy
        if (_strnicmp(base, "GameOverlayRenderer", 19) == 0) {
            return kDecoyAppId;
        }
    }

    return kDecoyAppId;
}
#endif

// ─────────────────────────────────────────────────────────────
// [C] Fake SteamID — fn 0x24a90
// Reads HKCU\Software\Valve\Steam\SteamPath, then
// {path}\config\loginusers.vdf, finds first "765..." 17-digit ID.
// Fallback: 76561198278117097 (0x0110000112F206E9).
// ─────────────────────────────────────────────────────────────
#ifdef _WIN32
uint64_t get_fake_steam_id() {
    char steamPath[MAX_PATH] = {};
    DWORD pathLen = MAX_PATH;
    HKEY hKey;

    if (RegOpenKeyExA(HKEY_CURRENT_USER, "Software\\Valve\\Steam", 0, KEY_READ, &hKey) == ERROR_SUCCESS) {
        RegQueryValueExA(hKey, "SteamPath", nullptr, nullptr,
                         reinterpret_cast<LPBYTE>(steamPath), &pathLen);
        RegCloseKey(hKey);
    }

    if (steamPath[0] == '\0') return kFallbackSteamId;

    char vdfPath[MAX_PATH];
    snprintf(vdfPath, sizeof(vdfPath), "%s\\config\\loginusers.vdf", steamPath);

    HANDLE hFile = CreateFileA(vdfPath, GENERIC_READ, FILE_SHARE_READ,
                               nullptr, OPEN_EXISTING, 0, nullptr);
    if (hFile == INVALID_HANDLE_VALUE) return kFallbackSteamId;

    char buf[8192];
    DWORD bytesRead = 0;
    ReadFile(hFile, buf, sizeof(buf) - 1, &bytesRead, nullptr);
    CloseHandle(hFile);
    buf[bytesRead] = '\0';

    // [C] Find first "765..." 17-digit Steam ID
    const char* p = buf;
    while ((p = strstr(p, "\"765")) != nullptr) {
        p++; // skip opening quote
        const char* end = strchr(p, '"');
        if (end && (end - p) == 17) {
            char idStr[18];
            memcpy(idStr, p, 17);
            idStr[17] = '\0';
            return strtoull(idStr, nullptr, 10);
        }
        p++;
    }

    return kFallbackSteamId;
}
#endif

// ─────────────────────────────────────────────────────────────
// [C] RestartAppIfNecessary hook — fn 0x24540
// Never restarts. Swallows the call.
// ─────────────────────────────────────────────────────────────
bool hook_RestartAppIfNecessary(uint32_t /*appId*/) {
    return false; // never restart
}

// ─────────────────────────────────────────────────────────────
// [C] IsSteamRunning hook — fn 0x24770
// Returns true when spoofing; otherwise calls original.
// ─────────────────────────────────────────────────────────────
using IsSteamRunningFn = bool(*)();
static IsSteamRunningFn g_originalIsSteamRunning = nullptr;

bool hook_IsSteamRunning() {
    if (g_spoofMode) return true;
    if (g_originalIsSteamRunning) return g_originalIsSteamRunning();
    return false;
}

// [C] BLoggedOn → always true (0x24e50)
bool hook_BLoggedOn(void* /*self*/) { return true; }

// [C] GetPersonaName → "Player" (0x24e70)
const char* hook_GetPersonaName(void* /*self*/) {
    return "Player";
}

// ─────────────────────────────────────────────────────────────
// [C] Init hooks (0x26270-0x263a0):
// Rewrite SteamAppId/SteamGameId/SteamOverlayGameId env vars to decoy (480),
// then try real init. On failure, enable spoof mode.
// ─────────────────────────────────────────────────────────────
#ifdef _WIN32
static void rewrite_steam_env() {
    SetEnvironmentVariableA("SteamAppId", "480");
    SetEnvironmentVariableA("SteamGameId", "480");
    SetEnvironmentVariableA("SteamOverlayGameId", "480");
}
#endif

// [C] GetHSteamUser → 1 when spoofing (0x24910)
int hook_GetHSteamUser() { return g_spoofMode ? 1 : 0; }
// [C] GetHSteamPipe → 0 when spoofing (0x24940)
int hook_GetHSteamPipe() { return 0; }

} // namespace hooks
