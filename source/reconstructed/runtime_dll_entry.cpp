// DllMain entry point for the reconstructed cheat DLL.
// This is the PE entry function that gets called when the DLL is injected.
//
// Flow:
//   DLL_PROCESS_ATTACH → store module handle → start init thread
//   DLL_PROCESS_DETACH → signal shutdown → restore hooks → cleanup
//
// The init thread (in game_init_runtime.cpp) handles:
//   1. Wait for GameAssembly.dll
//   2. Resolve 16 IL2CPP exports
//   3. Build metadata API bridge
//   4. Set config paths (C:\Spotify, DefaultCfg.bin)
//   5. Install Client.LateUpdate hook ONLY → writeback to live memory
//
// The first Client.LateUpdate frame then:
//   6. Initialize frame settings (0x2dd284)
//   7. Refresh frame configs (0x2d91c4)
//   8. Install remaining 14 hooks (0x315c34) → writeback to live memory

#include "game_init_runtime.hpp"

#ifdef _WIN32

static HMODULE g_own_module = nullptr;

BOOL APIENTRY DllMain(HMODULE hModule, DWORD ul_reason_for_call, LPVOID) {
    switch (ul_reason_for_call) {
    case DLL_PROCESS_ATTACH:
        DisableThreadLibraryCalls(hModule);
        g_own_module = hModule;
        game_init::start_init(hModule);
        break;
    case DLL_PROCESS_DETACH:
        game_init::stop_and_cleanup();
        break;
    default:
        break;
    }
    return TRUE;
}

#endif // _WIN32
