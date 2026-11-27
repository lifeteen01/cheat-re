#include "domain_dispatch.hpp"
#include "aim_iteration_analysis.hpp"
#include "seh_compat.hpp"
#include <cstdio>
#include <cstdlib>

#ifdef _WIN32

namespace game_init {

// ---------------------------------------------------------------------------
// Safe memory reads for live game pointers
// ---------------------------------------------------------------------------

static re::ReOptional<rust_internal_re::Address> safe_read_pointer(
    rust_internal_re::Address base, ReU32 offset) {
    auto* ptr = reinterpret_cast<rust_internal_re::Address*>(base + offset);
#ifdef _MSC_VER
    __try {
        return *ptr;
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        return {};
    }
#else
    if (!seh_compat::is_readable(ptr, sizeof(rust_internal_re::Address)))
        return {};
    rust_internal_re::Address val{};
    if (!seh_compat::safe_read(ptr, val))
        return {};
    return val;
#endif
}

// ---------------------------------------------------------------------------
// Embedded asset bundles: extracted from the original dump at their known RVAs.
// The rebuilt DLL has different content at those offsets, so we load from files
// placed next to the DLL by the build process (embedded_assets/*.bin).
// ---------------------------------------------------------------------------

struct EmbeddedBlob { rust_internal_re::Rva rva; ReUSize length; const char* filename; };
static constexpr EmbeddedBlob s_embedded_blobs[] = {
    {0x2379e0, 0x2a46, "bundle_0.bin"}, {0x2189c0, 0x45f4, "bundle_1.bin"},
    {0x21cfc0, 0x4aa4, "bundle_2.bin"}, {0x221a70, 0x44db, "bundle_3.bin"},
    {0x225f50, 0x45ae, "bundle_4.bin"}, {0x22a500, 0x4794, "bundle_5.bin"},
    {0x233210, 0x47c1, "bundle_6.bin"}, {0x22eca0, 0x4564, "bundle_7.bin"},
};

static re::ReOptional<rust_internal_re::UnityBytes> read_embedded_bytes(
    HMODULE own_module, rust_internal_re::Rva rva, ReUSize length) {
    // Find the matching extracted blob file
    for (const auto& blob : s_embedded_blobs) {
        if (blob.rva != rva) continue;

        // Build path: <dll_directory>/embedded_assets/<filename>
        wchar_t dll_path[32768]{};
        GetModuleFileNameW(own_module, dll_path, 32768);
        wchar_t* sep = wcsrchr(dll_path, L'\\');
        if (!sep) sep = wcsrchr(dll_path, L'/');
        if (sep) *(sep + 1) = L'\0';

        wchar_t full[33000]{};
        wchar_t wide_name[256]{};
        MultiByteToWideChar(CP_UTF8, 0, blob.filename, -1, wide_name, 255);
        wsprintfW(full, L"%sembedded_assets\\%s", dll_path, wide_name);

        HANDLE h = CreateFileW(full, GENERIC_READ, FILE_SHARE_READ,
                               nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
        if (h == INVALID_HANDLE_VALUE) break;

        DWORD size = GetFileSize(h, nullptr);
        rust_internal_re::UnityBytes result;
        result.bytes.resize(size);
        DWORD read = 0;
        ReadFile(h, result.bytes.data(), size, &read, nullptr);
        CloseHandle(h);
        return result;
    }

    // Fallback: try reading from the DLL image (may work if content happens to be there)
    auto base = reinterpret_cast<rust_internal_re::Address>(own_module);
    auto* src = reinterpret_cast<const ReByte*>(base + rva);
    if (!seh_compat::is_readable(src, length))
        return {};
    rust_internal_re::UnityBytes result;
    result.bytes.resize(length);
    if (!seh_compat::safe_memcpy(result.bytes.data(), src, length))
        return {};
    return result;
}

// ---------------------------------------------------------------------------
// Game snapshot: copy GameAssembly.dll memory for safe offline reads
// ---------------------------------------------------------------------------

void refresh_game_snapshot(RuntimeFrameState& state, HMODULE game_assembly) {
    MODULEINFO info{};
    if (!GetModuleInformation(GetCurrentProcess(), game_assembly, &info, sizeof(info)))
        return;
    auto base = reinterpret_cast<rust_internal_re::Address>(info.lpBaseOfDll);
    auto size = info.SizeOfImage;

    re::ReVector<ReByte> bytes(size);
    if (seh_compat::safe_memcpy(bytes.data(), info.lpBaseOfDll, size))
        state.game_snapshot = rust_internal_re::Snapshot(base, re::re_move(bytes));
}

// ---------------------------------------------------------------------------
// Safe IL2CPP call wrapper
// ---------------------------------------------------------------------------

static re::ReOptional<ReI32> safe_call_int(void* target) {
    if (!target) return {};
#ifdef _MSC_VER
    __try {
        return ReI32(reinterpret_cast<int(*)()>(target)());
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        return {};
    }
#else
    return ReI32(reinterpret_cast<int(*)()>(target)());
#endif
}

static re::ReOptional<float> safe_call_float(void* target) {
    if (!target) return {};
#ifdef _MSC_VER
    __try {
        return reinterpret_cast<float(*)()>(target)();
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        return {};
    }
#else
    return reinterpret_cast<float(*)()>(target)();
#endif
}

static re::ReOptional<rust_internal_re::Address> safe_call_addr(void* target) {
    if (!target) return {};
#ifdef _MSC_VER
    __try {
        return reinterpret_cast<rust_internal_re::Address>(
            reinterpret_cast<void*(*)()>(target)());
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        return {};
    }
#else
    return reinterpret_cast<rust_internal_re::Address>(
        reinterpret_cast<void*(*)()>(target)());
#endif
}

// ---------------------------------------------------------------------------
// Base domain handler: routes RVAs to runtime callbacks (IL2CPP calls)
// and game root getters that don't go through bind_* chains
// ---------------------------------------------------------------------------

using UnityValue = rust_internal_re::UnityValue;
using Rva = rust_internal_re::Rva;
using Address = rust_internal_re::Address;

static re::ReOptional<UnityValue> base_domain(
    RuntimeFrameState& state,
    const Il2CppExports& il2cpp,
    HMODULE game_assembly,
    Address game_assembly_base,
    Rva r, re::ReSpan<const UnityValue> args) {

    // Check for resolved runtime callbacks first (Screen.width, Time.deltaTime, etc.)
    void* target = get_resolved_callback(r);
    if (target) {
        if (args.size() == 0) {
            auto result = safe_call_int(target);
            if (result) return UnityValue(*result);
            return {};
        }
        if (args.size() == 1) {
            if (auto* addr = re::re_get_if<Address>(&args[0])) {
                using VoidEffect = void(__fastcall*)(void*);
                reinterpret_cast<VoidEffect>(target)(reinterpret_cast<void*>(*addr));
                return UnityValue(re::ReMonostate{});
            }
            if (auto* val = re::re_get_if<bool>(&args[0])) {
                using BoolEffect = void(__fastcall*)(bool);
                reinterpret_cast<BoolEffect>(target)(*val);
                return UnityValue(re::ReMonostate{});
            }
        }
        return {};
    }

    // Game root getters — read from live game memory via snapshots
    switch (r) {
    case 0x2e069c: {
        auto result = rust_internal_re::game_root_camera_2e069c(
            state.im_snapshot, state.game_snapshot, state.root_env, state.root_effects);
        if (result.status == rust_internal_re::GameBaseStatus::complete)
            return UnityValue(result.value);
        return {};
    }
    case 0x2dda9c: {
        auto result = rust_internal_re::game_root_local_player_2dda9c(
            state.im_snapshot, state.root_env, state.root_effects);
        if (result.status == rust_internal_re::GameBaseStatus::complete)
            return UnityValue(result.value);
        return {};
    }
    case 0x2e0e4c: {
        auto result = rust_internal_re::game_root_gate_2e0e4c(
            state.im_snapshot, state.game_snapshot, state.root_env);
        if (result.status == rust_internal_re::GameBaseStatus::complete)
            return UnityValue(result.value != 0);
        return {};
    }
    case 0x315924: {
        auto ptr = safe_read_pointer(game_assembly_base, 0xf0ee0a8);
        if (ptr && *ptr)
            return UnityValue(*ptr);
        return {};
    }
    case 0x2f87a4: {
        if (state.saved_original_late_update) {
            using LateUpdateFn = void(__fastcall*)(void*);
            if (args.size() >= 1) {
                if (auto* client = re::re_get_if<Address>(&args[0]))
                    reinterpret_cast<LateUpdateFn>(state.saved_original_late_update)(
                        reinterpret_cast<void*>(*client));
            }
        }
        return UnityValue(re::ReMonostate{});
    }
    case 0x38a3c4: {
        if (args.size() >= 1) {
            if (auto* size_val = re::re_get_if<ReI32>(&args[0])) {
                auto* buf = VirtualAlloc(nullptr, *size_val,
                    MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
                return buf ? re::ReOptional<UnityValue>(
                    UnityValue(reinterpret_cast<Address>(buf))) : re::ReOptional<UnityValue>{};
            }
        }
        return {};
    }
    case 0x2e5e4c: {
        if (args.size() >= 1) {
            if (auto* key = re::re_get_if<ReI32>(&args[0])) {
                SHORT s = GetAsyncKeyState(*key);
                return UnityValue(bool((s & 0x8000) != 0));
            }
        }
        return {};
    }
    // Frame worker stubs: acknowledged so frame replay continues past these RVAs.
    // Actual effects are wired once aim/ESP state and game API bindings are live.
    case 0x317c1c: {
        // FOV obfuscated write: compute transform, skip game memory write (no live target)
        if (args.size() >= 2) {
            if (auto* fov = re::re_get_if<float>(&args[1]))
                (void)rust_internal_re::obfuscated_transform_317c1c(*fov);
        }
        return UnityValue(re::ReMonostate{});
    }
    case 0x319024: // weapon replay — needs WeaponConfig + AimWeaponCalls
    case 0x2f9988: // aim replay — needs AimState + AimConfig + select_2e02b0
    case 0x3098a4: // overlay worker — needs WorldEspConfig + draw state
    case 0x2fb72c: // draw scalars — needs WorldEspRecord span + draw pipeline
        return UnityValue(re::ReMonostate{});

    default:
        break;
    }

    return {};
}

// ---------------------------------------------------------------------------
// Build the full FrameDependencyApi with live Windows implementations
// ---------------------------------------------------------------------------

static rust_internal_re::FrameDependencyApi build_live_dep_api(
    RuntimeFrameState& state,
    const Il2CppExports& il2cpp,
    HMODULE game_assembly,
    HMODULE own_module,
    Address cheat_base) {

    rust_internal_re::FrameDependencyApi api;

    // File-operation caches are pre-populated at first-frame init.
    // No resolve_target/detect_context needed for native Win32 file ops.

    api.attributes_2d5cd8 = [](re::ReStringView path)
        -> re::ReOptional<rust_internal_re::FrameAttributeResult> {
        wchar_t wide[32768]{};
        MultiByteToWideChar(CP_UTF8, 0, path.data(),
            static_cast<int>(path.size()), wide, 32767);
        DWORD attrs = GetFileAttributesW(wide);
        rust_internal_re::FrameAttributeResult r;
        r.status = (attrs == INVALID_FILE_ATTRIBUTES) ? 1 : 0;
        r.attributes = static_cast<ReI32>(attrs);
        return r;
    };

    api.create_directory_2d57f4 = [](re::ReStringView path) -> re::ReOptional<bool> {
        wchar_t wide[32768]{};
        MultiByteToWideChar(CP_UTF8, 0, path.data(),
            static_cast<int>(path.size()), wide, 32767);
        return static_cast<bool>(
            CreateDirectoryW(wide, nullptr) ||
            GetLastError() == ERROR_ALREADY_EXISTS);
    };

    api.exists_2d5be4 = [](re::ReStringView path) -> re::ReOptional<bool> {
        wchar_t wide[32768]{};
        MultiByteToWideChar(CP_UTF8, 0, path.data(),
            static_cast<int>(path.size()), wide, 32767);
        return GetFileAttributesW(wide) != INVALID_FILE_ATTRIBUTES;
    };

    api.read_bytes_2d61b4 = [](re::ReStringView path)
        -> re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {
        wchar_t wide[32768]{};
        MultiByteToWideChar(CP_UTF8, 0, path.data(),
            static_cast<int>(path.size()), wide, 32767);
        HANDLE h = CreateFileW(wide, GENERIC_READ, FILE_SHARE_READ,
            nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
        if (h == INVALID_HANDLE_VALUE)
            return re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>{
                re::ReOptional<re::ReVector<ReByte>>{}};
        DWORD sz = GetFileSize(h, nullptr);
        re::ReVector<ReByte> bytes(sz);
        DWORD rd = 0;
        ReadFile(h, bytes.data(), sz, &rd, nullptr);
        CloseHandle(h);
        return re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>{
            re::ReOptional<re::ReVector<ReByte>>{re::re_move(bytes)}};
    };

    api.files_2d5e90 = [](re::ReStringView dir, re::ReStringView pattern)
        -> re::ReOptional<re::ReVector<re::ReOptional<re::ReString>>> {
        wchar_t wide_dir[32768]{}, wide_pat[512]{};
        MultiByteToWideChar(CP_UTF8, 0, dir.data(), static_cast<int>(dir.size()), wide_dir, 32767);
        MultiByteToWideChar(CP_UTF8, 0, pattern.data(), static_cast<int>(pattern.size()), wide_pat, 511);
        wchar_t search[33000]{};
        wsprintfW(search, L"%s\\%s", wide_dir, wide_pat);
        WIN32_FIND_DATAW fd;
        HANDLE hf = FindFirstFileW(search, &fd);
        re::ReVector<re::ReOptional<re::ReString>> result;
        if (hf == INVALID_HANDLE_VALUE) return result;
        do {
            char utf8[32768 * 3]{};
            WideCharToMultiByte(CP_UTF8, 0, fd.cFileName, -1, utf8, sizeof(utf8), nullptr, nullptr);
            result.push_back(re::ReString(utf8));
        } while (FindNextFileW(hf, &fd));
        FindClose(hf);
        return result;
    };

    api.time = [](Rva rva) -> re::ReOptional<float> {
        void* target = get_resolved_callback(rva);
        if (target) return safe_call_float(target);
        if (rva == 0x2e071c) return 0.016f;
        // Absolute-time fallback for unresolved clocks (Time.time, etc.)
        static LARGE_INTEGER freq{}, start{};
        if (!freq.QuadPart) {
            QueryPerformanceFrequency(&freq);
            QueryPerformanceCounter(&start);
        }
        LARGE_INTEGER now;
        QueryPerformanceCounter(&now);
        return static_cast<float>(
            static_cast<double>(now.QuadPart - start.QuadPart) /
            static_cast<double>(freq.QuadPart));
    };

    api.key_2e5e4c = [](ReI32 key, bool) -> re::ReOptional<bool> {
        SHORT s = GetAsyncKeyState(key);
        return (s & 0x8000) != 0;
    };

    api.input_captured_2e6744 = []() -> re::ReOptional<bool> {
        return false;
    };

    api.player_2e069c = [&state]() -> re::ReOptional<Address> {
        auto result = rust_internal_re::game_root_camera_2e069c(
            state.im_snapshot, state.game_snapshot,
            state.root_env, state.root_effects);
        if (result.status == rust_internal_re::GameBaseStatus::complete)
            return result.value;
        return {};
    };

    api.disconnected_2e0e4c = [&state]() -> re::ReOptional<bool> {
        auto result = rust_internal_re::game_root_gate_2e0e4c(
            state.im_snapshot, state.game_snapshot, state.root_env);
        if (result.status == rust_internal_re::GameBaseStatus::complete)
            return result.value != 0;
        return {};
    };

    api.imgui_io_3926ac = []() -> re::ReOptional<rust_internal_re::FrameImGuiIo> {
        rust_internal_re::FrameImGuiIo io;
        // Screen dimensions from Unity runtime
        auto* w_target = get_resolved_callback(0x2e0af0);
        auto* h_target = get_resolved_callback(0x2e09f0);
        auto width = safe_call_int(w_target);
        auto height = safe_call_int(h_target);
        io.display = {
            width ? static_cast<float>(*width) : 1920.0f,
            height ? static_cast<float>(*height) : 1080.0f
        };
        io.config_flags = 0;
        return io;
    };

    api.embedded_bytes = [own_module](Rva rva, ReUSize length)
        -> re::ReOptional<rust_internal_re::UnityBytes> {
        return read_embedded_bytes(own_module, rva, length);
    };

    return api;
}

// ---------------------------------------------------------------------------
// World controllers sub-APIs (Layer 6)
// ---------------------------------------------------------------------------

static rust_internal_re::FrameWorldBindingApi build_world_binding_api(
    game_init::RuntimeFrameState& state,
    const rust_internal_re::FrameDependencyApi& dep_api,
    Address cheat_base) {

    using namespace rust_internal_re;

    FrameWorldBindingApi wapi;

    // FrameWorldApi.game: snapshot field getters for entity field reads
    wapi.game.game = bind_field_getters_aim(state.game_snapshot);

    wapi.game.game.key_2e5e4c = [](int key, bool) -> bool {
        return (GetAsyncKeyState(key) & 0x8000) != 0;
    };

    wapi.game.camera_2e069c = [&state]() -> Address {
        auto r = game_root_camera_2e069c(
            state.im_snapshot, state.game_snapshot, state.root_env, state.root_effects);
        return r.status == GameBaseStatus::complete ? r.value : Address(0);
    };
    wapi.game.local_2dda9c = [&state]() -> Address {
        auto r = game_root_local_player_2dda9c(
            state.im_snapshot, state.root_env, state.root_effects);
        return r.status == GameBaseStatus::complete ? r.value : Address(0);
    };
    wapi.game.gate_2e0e4c = [&state]() -> ReU8 {
        auto r = game_root_gate_2e0e4c(
            state.im_snapshot, state.game_snapshot, state.root_env);
        return (r.status == GameBaseStatus::complete && r.value != 0) ? ReU8(1) : ReU8(0);
    };

    wapi.game.mask_2e6a6c = []() -> ReU32 { return 0xFFFFFFFF; };
    // resolve_target, enabled_effect, query, raycast, hit_transform, object: blocked (game_artifacts)

    // FrameWorldMaterialApi: copy game API, wire available callbacks
    wapi.material.base = wapi.game;
    wapi.material.timer_2e5b7c = [](Address addr, float interval) -> bool {
        static LARGE_INTEGER freq{}, start{};
        if (!freq.QuadPart) {
            QueryPerformanceFrequency(&freq);
            QueryPerformanceCounter(&start);
        }
        LARGE_INTEGER now;
        QueryPerformanceCounter(&now);
        float t = static_cast<float>(
            static_cast<double>(now.QuadPart - start.QuadPart) /
            static_cast<double>(freq.QuadPart));
        static float next_fire = 0.0f;
        if (t >= next_fire) { next_fire = t + interval; return true; }
        return false;
    };
    // collection, view_model_effect, renderers, load, assign_shader, color: blocked (game_artifacts)

    // FrameWorldRainApi: random + font store
    wapi.rain.random_2e3d5c = [](float lo, float hi) -> float {
        float t = static_cast<float>(rand()) / static_cast<float>(RAND_MAX);
        return lo + t * (hi - lo);
    };
    wapi.rain.fonts = &state.font_store;
    // background_392198, sink: blocked until font/draw pipeline wired

    // FrameWorldConfigApi: dep_api + save state + float formatting
    wapi.configuration.frame = dep_api;
    wapi.configuration.save = &state.world_save;
    wapi.configuration.format_float_2d9540 = [](float v) -> re::ReString {
        char buf[64];
        snprintf(buf, sizeof(buf), "%f", static_cast<double>(v));
        return re::ReString(buf);
    };
    // managed_string, delete_file, array_new, write_bytes, managed_bytes: blocked (game_artifacts)

    return wapi;
}

// ---------------------------------------------------------------------------
// Build the complete domain dispatch chain
// ---------------------------------------------------------------------------

rust_internal_re::UnityFrameApi build_runtime_frame_api(
    RuntimeFrameState& frame_state,
    rust_internal_re::FrameDependencyState& dep_state,
    rust_internal_re::FrameConfigurationState& config_state,
    const Il2CppExports& il2cpp,
    HMODULE own_module,
    HMODULE game_assembly,
    Address cheat_base,
    Address game_assembly_base) {

    if (!frame_state.initialized) {
        frame_state.root_env.module = cheat_base;
        frame_state.initialized = true;
    }

    // Place literal storage within the im_snapshot's padded region so writes
    // through the snapshot succeed. The VirtualAlloc buffer is outside snapshot range.
    if (frame_state.im_snapshot.size() >= 0x1A00000) {
        frame_state.root_env.literal_storage = frame_state.im_snapshot.base() + 0x19FF000;
        frame_state.root_env.literal_capacity = 4096;
    }

    refresh_game_snapshot(frame_state, game_assembly);

    // im_snapshot is populated externally from g_state.snapshot (the startup snapshot
    // that contains hook setup results and literal writes). If not yet set, read the
    // live cheat module as a fallback.
    if (frame_state.im_snapshot.size() == 0) {
        MODULEINFO own_info{};
        if (GetModuleInformation(GetCurrentProcess(), own_module, &own_info, sizeof(own_info))) {
            auto own_base = reinterpret_cast<rust_internal_re::Address>(own_info.lpBaseOfDll);
            constexpr ReUSize original_vsize = 0x1A00000;
            ReUSize snap_size = own_info.SizeOfImage > original_vsize
                ? own_info.SizeOfImage : original_vsize;
            re::ReVector<ReByte> snap_bytes(snap_size, 0);
            if (seh_compat::is_readable(own_info.lpBaseOfDll, own_info.SizeOfImage))
                re::re_memcpy(snap_bytes.data(), own_info.lpBaseOfDll, own_info.SizeOfImage);
            frame_state.im_snapshot = rust_internal_re::Snapshot(own_base, re::re_move(snap_bytes));
        }
    }

    auto dep_api = build_live_dep_api(
        frame_state, il2cpp, game_assembly, own_module, cheat_base);

    rust_internal_re::UnityFrameApi api;

    // Layer 0: Base domain (runtime callbacks + game getters)
    api.domain = [&frame_state, &il2cpp, game_assembly, game_assembly_base](
        Rva r, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        return base_domain(frame_state, il2cpp, game_assembly, game_assembly_base, r, args);
    };

    // Layer 1: Residual transition (0x2cce78)
    api = rust_internal_re::bind_frame_residual_transition(
        frame_state.transition, frame_state.last_transition_result, re::re_move(api));

    // Layer 2: Residual clears (0x31acb0 etc.)
    api = rust_internal_re::bind_frame_residual_clears(
        frame_state.clear_bindings, frame_state.last_clear_result, re::re_move(api));

    // Layer 3: Frame dependencies (config, timers, keys, notifications)
    api = rust_internal_re::bind_frame_dependencies(
        dep_state, dep_api, frame_state.last_dep_result, re::re_move(api));

    // Layer 4: Frame configuration (settings/config file management)
    api = rust_internal_re::bind_frame_configuration(
        dep_state, config_state, dep_api,
        frame_state.last_config_result, re::re_move(api));

    // Layer 5: UI setup (0x35ccf4)
    api = rust_internal_re::bind_frame_ui_setup(
        frame_state.menu, dep_state, dep_api,
        frame_state.last_ui_result, re::re_move(api));

    // Layer 6: World controllers (collections, visibility, player, offset, rain, commands)
    {
        frame_state.world_env.module = cheat_base;

        rust_internal_re::FrameWorldBindingState wbs;
        wbs.collections = &frame_state.world_collections;
        wbs.visibility = &frame_state.world_visibility;
        wbs.commands = &frame_state.world_commands;
        wbs.configuration = &dep_state;
        wbs.settings = &config_state;

        auto world_api = build_world_binding_api(frame_state, dep_api, cheat_base);

        api = rust_internal_re::bind_frame_world_controllers(
            frame_state.im_snapshot, frame_state.game_snapshot,
            frame_state.io_snapshot,
            wbs, frame_state.world_env, world_api,
            frame_state.last_world_result, re::re_move(api));
    }

    // Layer 7: Inventory overlay (0x307638)
    {
        auto inventory_request = []()
            -> re::ReOptional<rust_internal_re::FrameOverlayRequest> {
            return {};
        };

        api = rust_internal_re::bind_frame_inventory(
            frame_state.menu, dep_api,
            inventory_request,
            frame_state.last_inventory_result, re::re_move(api));
    }

    // Layer 8: Main menu (0x35d5ac)
    {
        rust_internal_re::FrameMainMenuApi menu_api;
        menu_api.effects = dep_api;
        // imgui, context, button: blocked until ImGui pipeline wired

        // Wire menu page dispatch (radar, config, player pages, etc.)
        rust_internal_re::MenuPagesApi pages_api;
        pages_api.frame = menu_api;
        pages_api.state = &frame_state.menu_pages_state;
        pages_api.dependency_state = &dep_state;
        menu_api = rust_internal_re::bind_menu_pages(pages_api, menu_api);

        api = rust_internal_re::bind_frame_menu(
            frame_state.menu, frame_state.main_menu, dep_state,
            menu_api,
            frame_state.last_menu_result, re::re_move(api));
    }

    // Embedded bytes from DLL image
    api.embedded_bytes = [own_module](Rva rva, ReUSize length)
        -> re::ReOptional<rust_internal_re::UnityBytes> {
        return read_embedded_bytes(own_module, rva, length);
    };

    // Copied pointer: safe reads from game memory
    api.copied_pointer = [](Address base, ReU32 offset) -> re::ReOptional<Address> {
        return safe_read_pointer(base, offset);
    };

    // Game snapshot for the frame
    api.copied_game = &frame_state.game_snapshot;

    // Draw data finalize: collect draw lists from the DrawCoreStore
    api.finalized_draw_data_3924bc = [&frame_state]()
        -> re::ReOptional<rust_internal_re::UnityDrawData> {
        rust_internal_re::UnityDrawData data;
        auto* w_target = get_resolved_callback(0x2e0af0);
        auto* h_target = get_resolved_callback(0x2e09f0);
        auto width = safe_call_int(w_target);
        auto height = safe_call_int(h_target);
        data.display_size = {
            width ? static_cast<float>(*width) : 1920.0f,
            height ? static_cast<float>(*height) : 1080.0f
        };
        data.framebuffer_scale = {1.0f, 1.0f};

        for (auto& [addr, core_list] : frame_state.draw_store.lists) {
            rust_internal_re::draw_core_merge_3a65c4(core_list);
            data.lists.push_back(rust_internal_re::draw_core_geometry(core_list));
            data.command_lists.push_back(rust_internal_re::draw_core_render_commands(core_list));
            const auto& dl = data.lists.back();
            data.total_vertices += static_cast<ReI32>(dl.vertices.size());
            data.total_indices += static_cast<ReI32>(dl.indices.size());
        }

        // Return valid empty draw data when no geometry was produced.
        // Returning nullopt would cause the replay to trap at finalization.
        return data;
    };

    return api;
}

} // namespace game_init

#endif // _WIN32
