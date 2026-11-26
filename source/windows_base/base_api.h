#ifndef RE_BASE_API_H
#define RE_BASE_API_H
#include <stdint.h>

/* Analyst-authored Windows platform scaffold, independent of game ABI.
 * Call on the owning window thread, outside DllMain. Keep the DLL loaded
 * until shutdown succeeds and all calls have returned. No callbacks cross
 * this ABI; no C++ objects or exceptions cross the DLL boundary. */
#if defined(_WIN32) && defined(RE_BASE_BUILD)
#define RB_API __declspec(dllexport)
#else
#define RB_API
#endif
#ifdef __cplusplus
extern "C" {
#endif
#define RB_ABI_VERSION 1u
enum RbResult {
    RB_OK = 0, RB_INVALID_ARGUMENT = 1, RB_VERSION_MISMATCH = 2,
    RB_ALREADY_INITIALIZED = 3, RB_NOT_INITIALIZED = 4,
    RB_WRONG_THREAD = 5, RB_BUSY = 6, RB_PLATFORM_ERROR = 7,
    RB_RESOURCE_LIMIT = 8, RB_WINDOW_LOST = 9, RB_INTERNAL_ERROR = 10,
    RB_PROFILE_ERROR = 11, RB_PROFILE_UNVERIFIED = 12, RB_OFFSET_NOT_FOUND = 13
};
enum RbPhase { RB_STOPPED = 0, RB_PLATFORM_READY = 1, RB_TARGET_LOST = 2 };
enum RbFlags {
    RB_WINDOW_HOOK_INSTALLED = 1u, RB_FRAME_PRESENTED = 2u,
    RB_GAMEASSEMBLY_LOADED = 4u, RB_UNITYPLAYER_LOADED = 8u,
    RB_GAME_BINDINGS_REQUIRED = 16u, RB_MENU_VISIBLE = 32u,
    RB_OFFSETS_LOADED = 64u, RB_OFFSETS_DIRTY = 128u, RB_OFFSETS_BUILD_MATCH = 256u
};
typedef struct RbConfig {
    uint32_t size, abi_version;
    uintptr_t owned_window; /* Actual caller-owned HWND in this process/thread. */
    uint32_t maximum_pixels; /* 0 selects 4,194,304. Hard cap 16,777,216. */
    uint32_t reserved; /* Must be zero. */
} RbConfig;
typedef struct RbStatus {
    uint32_t size, abi_version, phase, flags;
    uint32_t owner_thread, last_win32_error, last_result, reserved;
    uint64_t frames_presented, window_messages, input_events;
    int32_t mouse_x, mouse_y;
    uint32_t left_button, visible;
    /* Module presence is not matching-build verification or game readiness. */
} RbStatus;
enum RbOffsetKind { RB_MODULE_RVA = 1, RB_FIELD_OFFSET = 2 };
typedef struct RbMenuStatus {
    uint32_t size, abi_version;
    uintptr_t menu_window;
    uint32_t visible, show_marker, marker_size, accent;
    uint32_t profile_loaded, profile_dirty, offset_count, last_profile_result;
    uint64_t profile_generation;
    char profile_id[256];
    char profile_path[2048]; /* UTF-8; truncated with a terminating NUL. */
    char message[1024];
} RbMenuStatus;
RB_API uint32_t RB_QueryAbi(void);
RB_API uint32_t RB_Initialize(const RbConfig *config);
RB_API uint32_t RB_GetStatus(RbStatus *status);
RB_API uint32_t RB_Frame(void);
RB_API uint32_t RB_Shutdown(void);
/* Added ABI-v1 exports; existing structures and five original exports retain
 * their layout. Stateful calls have the same owner-thread/lifetime rules.
 * The menu is independent of game bindings. Profile inputs are UTF-8, paths
 * are explicit or default to offsets.json beside this DLL. Invalid reloads
 * retain the last valid profile; Save refuses an un-loaded candidate path. */
RB_API uint32_t RB_SetMenuVisible(uint32_t visible);
RB_API uint32_t RB_GetMenuStatus(RbMenuStatus *status);
RB_API uint32_t RB_LoadOffsets(const char *utf8_path);
RB_API uint32_t RB_SaveOffsets(void);
RB_API uint32_t RB_SetOffset(const char *key, const char *hex_value);
RB_API uint32_t RB_GetOffset(const char *key, uint64_t *value, uint32_t *kind);
RB_API uint32_t RB_ResolveOffset(const char *key, uint32_t expected_kind,
                                uint64_t base, uint64_t *address);
/* Fingerprints actual loaded modules; never calls game methods. A successful
 * identity comparison does not establish offset correctness or game ABI. */
RB_API uint32_t RB_VerifyOffsets(void);
#ifdef __cplusplus
}
#endif
#endif
