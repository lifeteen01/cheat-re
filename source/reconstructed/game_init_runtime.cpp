// Merged game_init.cpp — reconciled from two independent agent implementations.
// See binding_review_report.md for the review findings and design rationale.
//
// Flow: DllMain DLL_PROCESS_ATTACH
//   -> CreateThread(init_thread_proc)
//     -> wait for GameAssembly.dll + IL2CPP domain ready
//     -> resolve 16 IL2CPP exports
//     -> build MetadataApi / MetadataSignatureApi from live exports
//     -> load offset profile (offsets.json)
//     -> set config paths: "C:\Spotify" directory, "DefaultCfg.bin" config file
//     -> call initialize_client_362118 (Client.LateUpdate hook ONLY)
//     -> apply Client.LateUpdate hook record to live memory
//     -> phase = running
//
// First Client.LateUpdate call (flag at 0x3e5cc0):
//   -> call 0x2dd284 (initialize_frame_settings — config/settings init)
//   -> call 0x2d91c4 (refresh_frame_configs — config field population)
//   -> call 0x315c34 (initialize_hooks — remaining 14 hooks)
//   -> apply 14 hook records to live memory
//   -> set first-frame flag
//
// DLL_PROCESS_DETACH -> signal shutdown -> restore hooks -> wait -> cleanup.

#include "game_init_runtime.hpp"
#include "domain_dispatch.hpp"
#include "typed_call_table.hpp"
#include "seh_compat.hpp"

#ifdef _WIN32
#include <windows.h>
#include <psapi.h>
#pragma comment(lib, "psapi.lib")
#endif

namespace game_init {

static GameState g_state{};

// ---------------------------------------------------------------------------
// IL2CPP export resolution (Agent B's 16-export set, with null-tolerance)
// ---------------------------------------------------------------------------

static bool resolve_exports(HMODULE ga) {
    auto& e = g_state.exports;
#define RESOLVE_REQUIRED(field, name) \
    e.field = reinterpret_cast<decltype(e.field)>(GetProcAddress(ga, name)); \
    if (!e.field) return false
#define RESOLVE_OPTIONAL(field, name) \
    e.field = reinterpret_cast<decltype(e.field)>(GetProcAddress(ga, name))

    RESOLVE_REQUIRED(il2cpp_domain_get,              "il2cpp_domain_get");
    RESOLVE_REQUIRED(il2cpp_domain_get_assemblies,   "il2cpp_domain_get_assemblies");
    RESOLVE_REQUIRED(il2cpp_assembly_get_image,      "il2cpp_assembly_get_image");
    RESOLVE_REQUIRED(il2cpp_class_from_name,         "il2cpp_class_from_name");
    RESOLVE_REQUIRED(il2cpp_class_get_methods,       "il2cpp_class_get_methods");
    RESOLVE_REQUIRED(il2cpp_class_get_method_from_name, "il2cpp_class_get_method_from_name");
    RESOLVE_REQUIRED(il2cpp_method_get_param_count,  "il2cpp_method_get_param_count");
    RESOLVE_REQUIRED(il2cpp_method_get_name,         "il2cpp_method_get_name");
    RESOLVE_OPTIONAL(il2cpp_method_get_param_name,   "il2cpp_method_get_param_name");
    RESOLVE_REQUIRED(il2cpp_object_new,              "il2cpp_object_new");
    RESOLVE_OPTIONAL(il2cpp_string_new,              "il2cpp_string_new");
    RESOLVE_OPTIONAL(il2cpp_method_get_return_type,  "il2cpp_method_get_return_type");
    RESOLVE_OPTIONAL(il2cpp_type_get_name,           "il2cpp_type_get_name");
    RESOLVE_OPTIONAL(il2cpp_method_get_param,        "il2cpp_method_get_param");
    RESOLVE_OPTIONAL(il2cpp_image_get_class_count,   "il2cpp_image_get_class_count");
    RESOLVE_OPTIONAL(il2cpp_image_get_class,         "il2cpp_image_get_class");
#undef RESOLVE_REQUIRED
#undef RESOLVE_OPTIONAL
    return e.core_resolved();
}

// ---------------------------------------------------------------------------
// Bridge: live IL2CPP exports -> reconstruction's callback interfaces
// ---------------------------------------------------------------------------

static rust_internal_re::MetadataApi build_metadata_api() {
    auto& e = g_state.exports;
    rust_internal_re::MetadataApi api;

    api.domain_get_33479c = [&e]() -> rust_internal_re::Address {
        return reinterpret_cast<rust_internal_re::Address>(e.il2cpp_domain_get());
    };
    api.assemblies_33480c = [&e](rust_internal_re::Address domain) -> re::ReVector<rust_internal_re::Address> {
        size_t count = 0;
        auto** raw = e.il2cpp_domain_get_assemblies(reinterpret_cast<void*>(domain), &count);
        re::ReVector<rust_internal_re::Address> result;
        for (size_t i = 0; i < count; ++i)
            result.push_back(reinterpret_cast<rust_internal_re::Address>(raw[i]));
        return result;
    };
    api.assembly_image_3344b0 = [&e](rust_internal_re::Address assembly) -> rust_internal_re::Address {
        return reinterpret_cast<rust_internal_re::Address>(
            e.il2cpp_assembly_get_image(reinterpret_cast<void*>(assembly)));
    };
    api.class_from_name_334528 = [&e](rust_internal_re::Address image,
                                       rust_internal_re::Address ns,
                                       rust_internal_re::Address name) -> rust_internal_re::Address {
        return reinterpret_cast<rust_internal_re::Address>(
            e.il2cpp_class_from_name(reinterpret_cast<void*>(image),
                reinterpret_cast<const char*>(ns),
                reinterpret_cast<const char*>(name)));
    };
    api.next_method_334660 = [&e](rust_internal_re::Address klass,
                                   rust_internal_re::Address& iter) -> rust_internal_re::Address {
        void* cursor = reinterpret_cast<void*>(iter);
        auto* method = e.il2cpp_class_get_methods(reinterpret_cast<void*>(klass), &cursor);
        iter = reinterpret_cast<rust_internal_re::Address>(cursor);
        return method ? reinterpret_cast<rust_internal_re::Address>(method) : 0;
    };
    api.method_from_name_3345c4 = [&e](rust_internal_re::Address klass,
                                        rust_internal_re::Address name,
                                        ReI32 argc) -> rust_internal_re::Address {
        return reinterpret_cast<rust_internal_re::Address>(
            e.il2cpp_class_get_method_from_name(reinterpret_cast<void*>(klass),
                reinterpret_cast<const char*>(name), argc));
    };
    api.parameter_count_335140 = [&e](rust_internal_re::Address method) -> ReI32 {
        return e.il2cpp_method_get_param_count(reinterpret_cast<void*>(method));
    };
    api.method_name_335040 = [&e](rust_internal_re::Address method) -> rust_internal_re::Address {
        return reinterpret_cast<rust_internal_re::Address>(
            e.il2cpp_method_get_name(reinterpret_cast<void*>(method)));
    };
    // Uses il2cpp_method_get_param_name (not il2cpp_method_get_param)
    api.parameter_name_3351b8 = [&e](rust_internal_re::Address method,
                                      ReI32 index) -> rust_internal_re::Address {
        if (!e.il2cpp_method_get_param_name) return 0;
        return reinterpret_cast<rust_internal_re::Address>(
            e.il2cpp_method_get_param_name(reinterpret_cast<void*>(method),
                static_cast<uint32_t>(index)));
    };
    return api;
}

static rust_internal_re::MetadataSignatureApi build_signature_api() {
    auto& e = g_state.exports;
    rust_internal_re::MetadataSignatureApi api;
    api.exports = build_metadata_api();

    api.class_count_334760 = [&e](rust_internal_re::Address image) -> ReU64 {
        return e.il2cpp_image_get_class_count
            ? e.il2cpp_image_get_class_count(reinterpret_cast<void*>(image))
            : 0;
    };
    api.class_at_334958 = [&e](rust_internal_re::Address image,
                                ReI32 index) -> rust_internal_re::Address {
        return e.il2cpp_image_get_class
            ? reinterpret_cast<rust_internal_re::Address>(
                  e.il2cpp_image_get_class(reinterpret_cast<void*>(image), index))
            : 0;
    };
    api.method_name_3352c0 = [&e](rust_internal_re::Address method) -> rust_internal_re::Address {
        return reinterpret_cast<rust_internal_re::Address>(
            e.il2cpp_method_get_name(reinterpret_cast<void*>(method)));
    };
    api.parameter_type_334950 = [&e](rust_internal_re::Address method,
                                      ReU32 index) -> rust_internal_re::Address {
        return e.il2cpp_method_get_param
            ? reinterpret_cast<rust_internal_re::Address>(
                  e.il2cpp_method_get_param(reinterpret_cast<void*>(method), index))
            : 0;
    };
    api.return_type_3352d8 = [&e](rust_internal_re::Address method) -> rust_internal_re::Address {
        return e.il2cpp_method_get_return_type
            ? reinterpret_cast<rust_internal_re::Address>(
                  e.il2cpp_method_get_return_type(reinterpret_cast<void*>(method)))
            : 0;
    };
    api.type_name_3352c8 = [&e](rust_internal_re::Address type) -> rust_internal_re::Address {
        return e.il2cpp_type_get_name
            ? reinterpret_cast<rust_internal_re::Address>(
                  e.il2cpp_type_get_name(reinterpret_cast<void*>(type)))
            : 0;
    };
    return api;
}

// ---------------------------------------------------------------------------
// Snapshot: copy the cheat module's memory for hook setup to operate on
// ---------------------------------------------------------------------------

static rust_internal_re::Snapshot build_live_snapshot(HMODULE module) {
    MODULEINFO info{};
    GetModuleInformation(GetCurrentProcess(), module, &info, sizeof(info));
    auto base = reinterpret_cast<rust_internal_re::Address>(info.lpBaseOfDll);
    ReUSize actual_size = info.SizeOfImage;
    // Pad to the original DLL's virtual size (27MB) so writes at original-RVA
    // global offsets (0x3d6f00, 0x3e6950, etc.) land within the snapshot.
    constexpr ReUSize original_virtual_size = 0x1A00000;
    ReUSize snapshot_size = actual_size > original_virtual_size
        ? actual_size : original_virtual_size;
    re::ReVector<ReByte> bytes(snapshot_size, 0);
    re::re_memcpy(bytes.data(), info.lpBaseOfDll, actual_size);
    return rust_internal_re::Snapshot(base, re::re_move(bytes));
}

// ---------------------------------------------------------------------------
// Targeted hook writeback (Agent B's approach — write only the cells that
// hook installation actually changed, not a full image diff)
// ---------------------------------------------------------------------------

static bool write_hook_cell(rust_internal_re::Address cell, rust_internal_re::Address value) {
    if (!cell) return false;
    DWORD old_protect{};
    if (!VirtualProtect(reinterpret_cast<void*>(cell), sizeof(rust_internal_re::Address),
                        PAGE_READWRITE, &old_protect))
        return false;
    *reinterpret_cast<rust_internal_re::Address*>(cell) = value;
    VirtualProtect(reinterpret_cast<void*>(cell), sizeof(rust_internal_re::Address),
                   old_protect, &old_protect);
    return true;
}

static rust_internal_re::Address hook_target_cell(const rust_internal_re::HookRecord& rec) {
    if (rec.kind == 1 && rec.method_info)
        return rec.method_info;
    if ((rec.kind == 2 || rec.kind == 3) && rec.replaced_cell)
        return rec.replaced_cell;
    if ((rec.kind == 2 || rec.kind == 3) && rec.method_info)
        return rec.method_info;
    return 0;
}

static void apply_hook_to_live(const rust_internal_re::HookRecord& rec) {
    if (rec.kind == 0) return;
    write_hook_cell(hook_target_cell(rec), rec.detour);
}

static void restore_hook(const InstalledHook& h) {
    if (h.record.kind == 0) return;
    write_hook_cell(hook_target_cell(h.record), h.record.original);
}

// ---------------------------------------------------------------------------
// Hook trampoline
// ---------------------------------------------------------------------------

static void* s_original_late_update = nullptr;
static volatile LONG s_detour_active = 0;
using LateUpdateFn = void(__fastcall*)(void* this_ptr);

// String interning buffer for passing class/method names to IL2CPP as C strings.
// Returns a persistent pointer to a NUL-terminated copy of the input.
static rust_internal_re::Address intern_string(re::ReStringView sv) {
    static char buffer[65536]{};
    static ReUSize offset = 0;
    if (sv.empty()) return 0;
    if (offset + sv.size() + 1 > sizeof(buffer)) return 0;
    char* dst = buffer + offset;
    re::re_memcpy(dst, sv.data(), sv.size());
    dst[sv.size()] = '\0';
    auto addr = reinterpret_cast<rust_internal_re::Address>(dst);
    offset += sv.size() + 1;
    return addr;
}

// Persistent GameAssembly snapshot for metadata resolution
static rust_internal_re::Snapshot s_game_snapshot{0, {}};

static rust_internal_re::UnityFrameState  s_frame_state{};
static rust_internal_re::UnityBackendState s_backend_state{};
static rust_internal_re::UnityFrameConfig  s_frame_config{};
static rust_internal_re::MetadataSignatureCache s_sig_cache{};
static bool s_frame_initialized = false;
static RuntimeFrameState s_runtime_frame{};  // persistent domain dispatch state

static rust_internal_re::UnityFrameApi build_frame_api() {
    // Build the full domain dispatch chain with all bind_* layers
    auto api = build_runtime_frame_api(
        s_runtime_frame,
        g_state.frame_dep_state,
        g_state.frame_config_state,
        g_state.exports,
        g_state.own_module,
        g_state.game_assembly,
        g_state.cheat_base,
        g_state.game_assembly_base);

    // Wire the Unity backend API (resolve targets, external calls, etc.)
    // Refresh GameAssembly snapshot for metadata resolution
    if (g_state.game_assembly) {
        MODULEINFO ga_info{};
        GetModuleInformation(GetCurrentProcess(), g_state.game_assembly, &ga_info, sizeof(ga_info));
        if (ga_info.SizeOfImage && s_game_snapshot.size() == 0) {
            auto base = reinterpret_cast<rust_internal_re::Address>(ga_info.lpBaseOfDll);
            re::ReVector<ReByte> ga_bytes(ga_info.SizeOfImage);
            re::re_memcpy(ga_bytes.data(), ga_info.lpBaseOfDll, ga_info.SizeOfImage);
            s_game_snapshot = rust_internal_re::Snapshot(base, re::re_move(ga_bytes));
        }
    }

    api.backend.resolve_target = [](const rust_internal_re::UnityCacheSpec& spec) -> rust_internal_re::MetadataResult {
        auto meta_api = build_metadata_api();
        auto sig_api = build_signature_api();
        rust_internal_re::UnityMetadataAdapter adapter;
        adapter.metadata = meta_api;
        adapter.signature_api = sig_api;
        adapter.signature_cache = &s_sig_cache;
        adapter.image = &s_game_snapshot;
        adapter.intern = intern_string;
        adapter.resolve_icall = [](re::ReStringView name) -> rust_internal_re::MetadataResult {
            auto addr = intern_string(name);
            if (!addr) return {0, rust_internal_re::MetadataStatus::missing_dependency, 0};
            using IcallFn = void*(*)(const char*);
            auto* resolve = reinterpret_cast<IcallFn>(
                GetProcAddress(g_state.game_assembly, "il2cpp_resolve_icall"));
            if (!resolve) return {0, rust_internal_re::MetadataStatus::missing_dependency, 0};
            auto* result = resolve(reinterpret_cast<const char*>(addr));
            return result ? rust_internal_re::MetadataResult{reinterpret_cast<rust_internal_re::Address>(result)}
                          : rust_internal_re::MetadataResult{0, rust_internal_re::MetadataStatus::missing_dependency, 0};
        };
        adapter.resolve_export = [](re::ReStringView dll_name, re::ReStringView func_name)
            -> rust_internal_re::MetadataResult {
            auto dll_addr = intern_string(dll_name);
            auto func_addr = intern_string(func_name);
            if (!dll_addr || !func_addr) return {0, rust_internal_re::MetadataStatus::missing_dependency, 0};
            wchar_t wide[512]{};
            MultiByteToWideChar(CP_UTF8, 0, reinterpret_cast<const char*>(dll_addr), -1, wide, 511);
            auto* mod = GetModuleHandleW(wide);
            if (!mod) return {0, rust_internal_re::MetadataStatus::missing_dependency, 0};
            auto* fn = GetProcAddress(mod, reinterpret_cast<const char*>(func_addr));
            return fn ? rust_internal_re::MetadataResult{reinterpret_cast<rust_internal_re::Address>(fn)}
                      : rust_internal_re::MetadataResult{0, rust_internal_re::MetadataStatus::missing_dependency, 0};
        };
        adapter.export_getter = [](rust_internal_re::Rva resolver) -> rust_internal_re::MetadataResult {
            return {0, rust_internal_re::MetadataStatus::missing_dependency, 0};
        };
        if (g_state.exports.il2cpp_method_get_name) {
            adapter.method_name_335040 = [](rust_internal_re::Address method) -> rust_internal_re::Address {
                auto* name = g_state.exports.il2cpp_method_get_name(reinterpret_cast<void*>(method));
                return name ? reinterpret_cast<rust_internal_re::Address>(name) : 0;
            };
        }
        if (g_state.exports.il2cpp_method_get_param) {
            adapter.parameter_type_3b4a98 = [](rust_internal_re::Address method) -> rust_internal_re::Address {
                auto* type = g_state.exports.il2cpp_method_get_param(reinterpret_cast<void*>(method), 0);
                return type ? reinterpret_cast<rust_internal_re::Address>(type) : 0;
            };
        }
        if (g_state.exports.il2cpp_type_get_name) {
            adapter.type_name_3b4de8 = [](rust_internal_re::Address type) -> rust_internal_re::Address {
                auto* name = g_state.exports.il2cpp_type_get_name(reinterpret_cast<void*>(type));
                return name ? reinterpret_cast<rust_internal_re::Address>(name) : 0;
            };
        }
        return resolve_unity_backend_target(adapter, spec);
    };
    api.backend.detect_context = [](const rust_internal_re::UnityCacheSpec&,
                                     rust_internal_re::Address) -> bool {
        // Context detection requires matching game binary — always pass for runtime
        return true;
    };
    api.backend.external = [](rust_internal_re::Rva wrapper,
                               re::ReSpan<const rust_internal_re::UnityValue> args)
        -> re::ReOptional<rust_internal_re::UnityValue> {
        using Address = rust_internal_re::Address;
        using UnityValue = rust_internal_re::UnityValue;
        // Check callback table first, then backend caches (keyed by spec.flags)
        auto* target = get_resolved_callback(wrapper);
        if (!target) {
            auto specs = rust_internal_re::unity_backend_cache_specs();
            for (ReUSize i = 0; i < specs.size() && !target; ++i) {
                if (specs[i].wrapper == wrapper) {
                    auto found = s_backend_state.caches.find(specs[i].flags);
                    if (found && *found && (*found)->target)
                        target = reinterpret_cast<void*>((*found)->target);
                }
            }
        }
        if (!target) return {};

        // RVA-specific structured-type adapters (before generic dispatch)
        if (wrapper == 0x376084) {
            // il2cpp_array_new(element_class, length) → UnityManagedArray
            void* klass_arg = nullptr;
            ReI32 len_arg = 0;
            if (args.size() >= 1)
                if (auto* a = re::re_get_if<Address>(&args[0]))
                    klass_arg = reinterpret_cast<void*>(*a);
            if (args.size() >= 2)
                if (auto* a = re::re_get_if<Address>(&args[1]))
                    len_arg = static_cast<ReI32>(*a);
            auto fn = reinterpret_cast<void*(__fastcall*)(void*, uintptr_t)>(target);
            auto* arr = fn(klass_arg, static_cast<uintptr_t>(len_arg));
            rust_internal_re::UnityManagedArray result;
            if (arr) {
                result.object = reinterpret_cast<Address>(arr);
                result.length = len_arg;
                auto* data = reinterpret_cast<ReByte*>(reinterpret_cast<uintptr_t>(arr) + 0x20);
                if (seh_compat::is_readable(data, static_cast<ReUSize>(len_arg))) {
                    result.bytes.resize(static_cast<ReUSize>(len_arg));
                    re::re_memcpy(result.bytes.data(), data, static_cast<ReUSize>(len_arg));
                }
            }
            return UnityValue(result);
        }
        if (wrapper == 0x375c08) {
            // LoadFromMemory_Internal_Injected(managed_array, crc) → Address
            if (args.size() >= 1) {
                if (auto* arr = re::re_get_if<rust_internal_re::UnityManagedArray>(&args[0])) {
                    if (arr->object && !arr->bytes.empty()) {
                        auto* data = reinterpret_cast<ReByte*>(arr->object + 0x20);
                        seh_compat::safe_memcpy(data, arr->bytes.data(), arr->bytes.size());
                    }
                    int crc = 0;
                    if (args.size() >= 2)
                        if (auto* c = re::re_get_if<ReI32>(&args[1])) crc = *c;
                    auto fn = reinterpret_cast<void*(__fastcall*)(void*, int)>(target);
                    auto* result = fn(reinterpret_cast<void*>(arr->object), crc);
                    return UnityValue(reinterpret_cast<Address>(result));
                }
            }
            return {};
        }
        if (wrapper == 0x3b3798) {
            // PinSystemObjectAndGetAddress(object, slot_addr) → UnityPinned
            auto fn = reinterpret_cast<void*(__fastcall*)(void*, void*)>(target);
            void* obj = nullptr;
            void* slot = nullptr;
            if (args.size() >= 1)
                if (auto* a = re::re_get_if<Address>(&args[0]))
                    obj = reinterpret_cast<void*>(*a);
            if (args.size() >= 2)
                if (auto* a = re::re_get_if<Address>(&args[1]))
                    slot = reinterpret_cast<void*>(*a);
            auto* pinned_addr = fn(obj, slot);
            rust_internal_re::UnityPinned result;
            result.object = reinterpret_cast<Address>(pinned_addr);
            if (slot) result.handle = *reinterpret_cast<ReU64*>(slot);
            return UnityValue(result);
        }

        auto conv = lookup_call_conv(wrapper);

        // Extract common arg types
        auto arg_addr = [&](ReUSize i) -> void* {
            if (i >= args.size()) return nullptr;
            if (auto* a = re::re_get_if<Address>(&args[i]))
                return reinterpret_cast<void*>(*a);
            return nullptr;
        };
        auto arg_int = [&](ReUSize i) -> int {
            if (i >= args.size()) return 0;
            if (auto* a = re::re_get_if<ReI32>(&args[i])) return *a;
            if (auto* a = re::re_get_if<Address>(&args[i])) return static_cast<int>(*a);
            return 0;
        };
        auto arg_bool = [&](ReUSize i) -> bool {
            if (i >= args.size()) return false;
            if (auto* a = re::re_get_if<bool>(&args[i])) return *a;
            if (auto* a = re::re_get_if<ReI32>(&args[i])) return *a != 0;
            return false;
        };

        switch (conv) {
        case CallConv::int_void:
            return UnityValue(ReI32(reinterpret_cast<int(*)()>(target)()));
        case CallConv::float_void:
            return UnityValue(reinterpret_cast<float(*)()>(target)());
        case CallConv::addr_void:
            return UnityValue(reinterpret_cast<Address>(
                reinterpret_cast<void*(*)()>(target)()));
        case CallConv::void_addr:
            reinterpret_cast<void(__fastcall*)(void*)>(target)(arg_addr(0));
            return UnityValue(re::ReMonostate{});
        case CallConv::void_addr_int:
            reinterpret_cast<void(__fastcall*)(void*, int)>(target)(arg_addr(0), arg_int(1));
            return UnityValue(re::ReMonostate{});
        case CallConv::void_addr_bool:
            reinterpret_cast<void(__fastcall*)(void*, bool)>(target)(arg_addr(0), arg_bool(1));
            return UnityValue(re::ReMonostate{});
        case CallConv::addr_addr:
            return UnityValue(reinterpret_cast<Address>(
                reinterpret_cast<void*(__fastcall*)(void*)>(target)(arg_addr(0))));
        case CallConv::addr_addr_addr:
            return UnityValue(reinterpret_cast<Address>(
                reinterpret_cast<void*(__fastcall*)(void*, void*)>(target)(
                    arg_addr(0), arg_addr(1))));
        case CallConv::addr_addr3:
            return UnityValue(reinterpret_cast<Address>(
                reinterpret_cast<void*(__fastcall*)(void*, void*, void*)>(target)(
                    arg_addr(0), arg_addr(1), arg_addr(2))));
        case CallConv::addr_string: {
            const char* s = nullptr;
            if (args.size() >= 1)
                if (auto* sv = re::re_get_if<re::ReString>(&args[0]))
                    s = sv->c_str();
            return UnityValue(reinterpret_cast<Address>(
                reinterpret_cast<void*(*)(const char*)>(target)(s)));
        }
        case CallConv::void_addr_rect: {
            if (args.size() >= 2) {
                if (auto* r = re::re_get_if<rust_internal_re::ScissorRect>(&args[1])) {
                    reinterpret_cast<void(__fastcall*)(void*, int, int, int, int)>(target)(
                        arg_addr(0), r->x, r->y, r->width, r->height);
                }
            }
            return UnityValue(re::ReMonostate{});
        }
        case CallConv::matrix_6f: {
            float fa[6]{};
            for (int i = 0; i < 6 && i < static_cast<int>(args.size()); ++i)
                if (auto* f = re::re_get_if<float>(&args[i])) fa[i] = *f;
            rust_internal_re::UnityMatrix mat;
            reinterpret_cast<void(__fastcall*)(rust_internal_re::UnityMatrix*,
                float, float, float, float, float, float)>(target)(
                &mat, fa[0], fa[1], fa[2], fa[3], fa[4], fa[5]);
            return UnityValue(mat);
        }
        case CallConv::void_void:
            reinterpret_cast<void(*)()>(target)();
            return UnityValue(re::ReMonostate{});
        case CallConv::void_effect:
        case CallConv::unknown:
        default:
            break;
        }

        // Fallback for signature-resolved and unknown calls:
        // zero-arg → Address, with-args → void effect (Monostate)
        if (args.size() == 0)
            return UnityValue(reinterpret_cast<Address>(
                reinterpret_cast<void*(*)()>(target)()));

        // Generic multi-arg void effect — forward all args as pointers
        switch (args.size()) {
        case 1:
            reinterpret_cast<void(__fastcall*)(void*)>(target)(arg_addr(0));
            break;
        case 2:
            reinterpret_cast<void(__fastcall*)(void*, void*)>(target)(
                arg_addr(0), arg_addr(1));
            break;
        case 3:
            reinterpret_cast<void(__fastcall*)(void*, void*, void*)>(target)(
                arg_addr(0), arg_addr(1), arg_addr(2));
            break;
        case 4:
            reinterpret_cast<void(__fastcall*)(void*, void*, void*, void*)>(target)(
                arg_addr(0), arg_addr(1), arg_addr(2), arg_addr(3));
            break;
        case 5:
            reinterpret_cast<void(__fastcall*)(void*, void*, void*, void*, void*)>(target)(
                arg_addr(0), arg_addr(1), arg_addr(2), arg_addr(3), arg_addr(4));
            break;
        case 6:
            reinterpret_cast<void(__fastcall*)(void*, void*, void*, void*, void*, void*)>(target)(
                arg_addr(0), arg_addr(1), arg_addr(2), arg_addr(3), arg_addr(4), arg_addr(5));
            break;
        default:
            reinterpret_cast<void(__fastcall*)(void*, void*, void*, void*)>(target)(
                arg_addr(0), arg_addr(1), arg_addr(2), arg_addr(3));
            break;
        }
        return UnityValue(re::ReMonostate{});
    };
    api.backend.resolve_class = [](re::ReStringView ns, re::ReStringView name)
        -> rust_internal_re::MetadataResult {
        auto meta_api = build_metadata_api();
        rust_internal_re::UnityMetadataAdapter adapter;
        adapter.metadata = meta_api;
        adapter.intern = intern_string;
        return resolve_unity_backend_class(adapter, ns, name);
    };
    api.backend.copied_pointer = [](rust_internal_re::Address base, ReU32 offset)
        -> re::ReOptional<rust_internal_re::Address> {
        auto* ptr = reinterpret_cast<rust_internal_re::Address*>(base + offset);
        if (!seh_compat::is_readable(ptr, sizeof(rust_internal_re::Address)))
            return {};
        return *ptr;
    };

    return api;
}

void* get_resolved_callback(uint32_t rva);

// ---------------------------------------------------------------------------
// First-frame hook installation (deferred from init thread, matching original)
// ---------------------------------------------------------------------------

// [C] 0x2f8598..0x2f85a7: The original calls these three functions on the first
// LateUpdate frame, gated by a flag at 0x3e5cc0. initialize_hooks_315c34 is NOT
// called in the init thread — only Client.LateUpdate is hooked there.
static bool s_first_frame_hooks_installed = false; // [C] flag at 0x3e5cc0

static void install_first_frame_hooks() {
    // [C] 0x2f8598: call 0x2dd284 — settings/config initialization.
    // Loads config from "C:\Spotify\DefaultCfg.bin", populates config containers
    // at 0x3d6db8 and 0x3d6ea8, iterates registered settings objects.
    // Pre-populate file-operation caches so prepare() doesn't need Unity metadata
    // resolution. We supply native Win32 implementations, not managed IL2CPP calls.
    {
        auto specs = rust_internal_re::frame_dependency_cache_specs();
        for (ReUSize i = 0; i < specs.size(); ++i) {
            auto& cache = g_state.frame_dep_state.caches[specs[i].flags];
            cache.flags = 3;
            cache.target = 1;
            cache.context_detected = true;
        }
    }

    {
        rust_internal_re::FrameDependencyApi dep_api;
        dep_api.create_directory_2d57f4 = [](re::ReStringView path)
            -> re::ReOptional<bool> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            return static_cast<bool>(CreateDirectoryW(wide, nullptr) || GetLastError() == ERROR_ALREADY_EXISTS);
        };
        dep_api.attributes_2d5cd8 = [](re::ReStringView path)
            -> re::ReOptional<rust_internal_re::FrameAttributeResult> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            DWORD attrs = GetFileAttributesW(wide);
            rust_internal_re::FrameAttributeResult r;
            r.status = (attrs == INVALID_FILE_ATTRIBUTES) ? 1 : 0;
            r.attributes = static_cast<ReI32>(attrs);
            return r;
        };
        dep_api.exists_2d5be4 = [](re::ReStringView path)
            -> re::ReOptional<bool> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            return GetFileAttributesW(wide) != INVALID_FILE_ATTRIBUTES;
        };
        dep_api.read_bytes_2d61b4 = [](re::ReStringView path)
            -> re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            HANDLE h = CreateFileW(wide, GENERIC_READ, FILE_SHARE_READ, nullptr,
                                   OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
            if (h == INVALID_HANDLE_VALUE) return re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>{re::ReOptional<re::ReVector<ReByte>>{}};
            DWORD size = GetFileSize(h, nullptr);
            re::ReVector<ReByte> bytes(size);
            DWORD read = 0;
            ReadFile(h, bytes.data(), size, &read, nullptr);
            CloseHandle(h);
            return re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>{re::ReOptional<re::ReVector<ReByte>>{re::re_move(bytes)}};
        };
        rust_internal_re::initialize_frame_configuration_2dd284(
            g_state.frame_dep_state, g_state.frame_config_state, dep_api);
    }

    // [C] 0x2f859d: call 0x2d91c4 — config refresh / config field population.
    {
        rust_internal_re::FrameDependencyApi dep_api;
        // Caches already pre-populated above — no resolve_target/detect_context needed
        dep_api.attributes_2d5cd8 = [](re::ReStringView path)
            -> re::ReOptional<rust_internal_re::FrameAttributeResult> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            DWORD attrs = GetFileAttributesW(wide);
            rust_internal_re::FrameAttributeResult r;
            r.status = (attrs == INVALID_FILE_ATTRIBUTES) ? 1 : 0;
            r.attributes = static_cast<ReI32>(attrs);
            return r;
        };
        dep_api.create_directory_2d57f4 = [](re::ReStringView path)
            -> re::ReOptional<bool> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            return static_cast<bool>(CreateDirectoryW(wide, nullptr) || GetLastError() == ERROR_ALREADY_EXISTS);
        };
        dep_api.exists_2d5be4 = [](re::ReStringView path)
            -> re::ReOptional<bool> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            return GetFileAttributesW(wide) != INVALID_FILE_ATTRIBUTES;
        };
        dep_api.files_2d5e90 = [](re::ReStringView dir, re::ReStringView pattern)
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
        dep_api.read_bytes_2d61b4 = [](re::ReStringView path)
            -> re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {
            wchar_t wide[32768]{};
            MultiByteToWideChar(CP_UTF8, 0, path.data(), static_cast<int>(path.size()), wide, 32767);
            HANDLE h = CreateFileW(wide, GENERIC_READ, FILE_SHARE_READ, nullptr,
                                   OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
            if (h == INVALID_HANDLE_VALUE) return re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>{re::ReOptional<re::ReVector<ReByte>>{}};
            DWORD size = GetFileSize(h, nullptr);
            re::ReVector<ReByte> bytes(size);
            DWORD read = 0;
            ReadFile(h, bytes.data(), size, &read, nullptr);
            CloseHandle(h);
            return re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>{re::ReOptional<re::ReVector<ReByte>>{re::re_move(bytes)}};
        };
        rust_internal_re::refresh_frame_configs_2d91c4(
            g_state.frame_dep_state, dep_api);
    }

    // Install game-event hooks via direct IL2CPP resolution.
    // Each hook needs: (1) a C++ detour entry point, (2) the target class/method
    // resolved via IL2CPP, (3) a kind-1 (method_info swap) patch record.
    //
    // For hooks with hashed method names (%hash), we need class scanning which
    // is deferred. Here we install the 4 named method_info hooks.
    struct GameHookSpec {
        const char* ns;
        const char* klass;
        const char* method;
        int param_count;
        LateUpdateFn detour;
        void** saved_original;
        rust_internal_re::Rva install_site;
    };

    static void* s_projectile_original = nullptr;
    static void* s_wateroverlay_original = nullptr;
    static void* s_smokegrenade_original = nullptr;
    static void* s_todsky_original = nullptr;

    static constexpr rust_internal_re::Rva client_install = 0x3621f2;
    GameHookSpec game_hooks[] = {
        {"", "Projectile", "Update", 0,
         [](void* self) {
             InterlockedIncrement(&s_detour_active);
             if (s_projectile_original)
                 reinterpret_cast<LateUpdateFn>(s_projectile_original)(self);
             InterlockedDecrement(&s_detour_active);
         }, &s_projectile_original, 0x315d84},
        {"", "WaterOverlay", "Update", 0,
         [](void* self) {
             InterlockedIncrement(&s_detour_active);
             if (s_wateroverlay_original)
                 reinterpret_cast<LateUpdateFn>(s_wateroverlay_original)(self);
             InterlockedDecrement(&s_detour_active);
         }, &s_wateroverlay_original, 0x315de8},
        {"", "SmokeGrenade", "Update", 0,
         [](void* self) {
             InterlockedIncrement(&s_detour_active);
             if (s_smokegrenade_original)
                 reinterpret_cast<LateUpdateFn>(s_smokegrenade_original)(self);
             InterlockedDecrement(&s_detour_active);
         }, &s_smokegrenade_original, 0x315e4c},
        {"", "TOD_Sky", "LateUpdate", 0,
         [](void* self) {
             InterlockedIncrement(&s_detour_active);
             if (s_todsky_original)
                 reinterpret_cast<LateUpdateFn>(s_todsky_original)(self);
             InterlockedDecrement(&s_detour_active);
         }, &s_todsky_original, 0x315eb0},
    };

    auto* domain = g_state.exports.il2cpp_domain_get();
    if (domain) {
        size_t asm_count = 0;
        auto** assemblies = g_state.exports.il2cpp_domain_get_assemblies(domain, &asm_count);

        for (auto& spec : game_hooks) {
            rust_internal_re::HookRecord rec{};
            rec.detour = reinterpret_cast<rust_internal_re::Address>(spec.detour);
            rec.kind = 1;

            for (size_t a = 0; a < asm_count && !rec.method_info; ++a) {
                auto* img = g_state.exports.il2cpp_assembly_get_image(assemblies[a]);
                if (!img) continue;
                auto* klass = g_state.exports.il2cpp_class_from_name(img, spec.ns, spec.klass);
                if (!klass) continue;
                auto* method = g_state.exports.il2cpp_class_get_method_from_name(
                    klass, spec.method, spec.param_count);
                if (method) {
                    rec.method_info = reinterpret_cast<rust_internal_re::Address>(method);
                    rec.original = *reinterpret_cast<rust_internal_re::Address*>(method);
                }
            }

            if (rec.method_info && rec.original) {
                *spec.saved_original = reinterpret_cast<void*>(rec.original);
                if (write_hook_cell(rec.method_info, rec.detour)) {
                    g_state.installed_hooks.push_back({spec.install_site, rec});
                }
            }
        }
    }

    FlushInstructionCache(GetCurrentProcess(), nullptr, 0);
}

void __fastcall client_late_update_detour(void* this_ptr) {
    InterlockedIncrement(&s_detour_active);

    if (g_state.phase != Phase::running) {
        if (s_original_late_update)
            reinterpret_cast<LateUpdateFn>(s_original_late_update)(this_ptr);
        InterlockedDecrement(&s_detour_active);
        return;
    }

    if (!s_first_frame_hooks_installed) {
        install_first_frame_hooks();
        s_first_frame_hooks_installed = true;
        s_frame_state.initialized = true;
    }

    // Publish runtime state for the domain dispatch
    s_runtime_frame.saved_original_late_update =
        reinterpret_cast<rust_internal_re::Address>(s_original_late_update);
    s_runtime_frame.literal_storage_address = g_state.literal_storage;
    s_runtime_frame.literal_storage_capacity = 4096;
    s_frame_state.saved_original =
        reinterpret_cast<rust_internal_re::Address>(s_original_late_update);

    // Use the startup snapshot (which has hook/literal writes) as im_snapshot
    if (s_runtime_frame.im_snapshot.size() == 0 && g_state.snapshot.size() > 0)
        s_runtime_frame.im_snapshot = g_state.snapshot;

    auto api = build_frame_api();
    auto client = reinterpret_cast<rust_internal_re::Address>(this_ptr);

    // The frame replay handles backend init internally.
    // Wrap in SEH to recover from __builtin_trap() on missing dependencies —
    // a trap should skip the cheat frame, not crash the game.
#ifdef _MSC_VER
    __try {
        rust_internal_re::replay_unity_frame_2f8574(
            s_frame_state, s_backend_state, api, s_frame_config,
            client, g_state.game_assembly_base);
    } __except (EXCEPTION_EXECUTE_HANDLER) {
        // Frame failed — missing dependency or variant mismatch. Skip silently.
    }
#else
    rust_internal_re::replay_unity_frame_2f8574(
        s_frame_state, s_backend_state, api, s_frame_config,
        client, g_state.game_assembly_base);
#endif

    InterlockedDecrement(&s_detour_active);
}

// ---------------------------------------------------------------------------
// PEB loader node (for initial_loader_node in HookSetupEnvironment)
// ---------------------------------------------------------------------------

static rust_internal_re::Address get_initial_loader_node() {
    auto* peb = NtCurrentTeb()->ProcessEnvironmentBlock;
    if (!peb || !peb->Ldr) return 0;
    return reinterpret_cast<rust_internal_re::Address>(peb->Ldr->InMemoryOrderModuleList.Flink);
}

// ---------------------------------------------------------------------------
// Offset profile loading
// ---------------------------------------------------------------------------

static re::ReString default_profile_path() {
    wchar_t path[32768]{};
    auto count = GetModuleFileNameW(g_state.own_module, path, 32768);
    if (!count || count >= 32768) return {};
    wchar_t* sep = wcsrchr(path, L'\\');
    if (!sep) sep = wcsrchr(path, L'/');
    if (sep) wcscpy(sep + 1, L"offsets.json");
    char utf8[32768 * 3]{};
    WideCharToMultiByte(CP_UTF8, 0, path, -1, utf8, sizeof(utf8), nullptr, nullptr);
    return re::ReString(utf8);
}

// ---------------------------------------------------------------------------
// Check shutdown between heavy phases
// ---------------------------------------------------------------------------

static bool should_abort() {
    return InterlockedCompareExchange(&g_state.shutdown_requested, 0, 0) != 0;
}

// ---------------------------------------------------------------------------
// Initialization thread
// ---------------------------------------------------------------------------

static DWORD WINAPI init_thread_proc(LPVOID) {
    g_state.phase = Phase::waiting_for_game;

    // Wait for GameAssembly.dll (up to 30 seconds)
    for (int i = 0; i < 300; ++i) {
        if (should_abort()) return 0;
        g_state.game_assembly = GetModuleHandleW(L"GameAssembly.dll");
        if (g_state.game_assembly) break;
        Sleep(100);
    }
    if (!g_state.game_assembly) { g_state.phase = Phase::failed; return 1; }

    g_state.unity_player = GetModuleHandleW(L"UnityPlayer.dll");
    MODULEINFO ga_info{};
    GetModuleInformation(GetCurrentProcess(), g_state.game_assembly, &ga_info, sizeof(ga_info));
    g_state.game_assembly_base = reinterpret_cast<rust_internal_re::Address>(ga_info.lpBaseOfDll);
    g_state.cheat_base = reinterpret_cast<rust_internal_re::Address>(g_state.own_module);

    // Resolve IL2CPP exports
    g_state.phase = Phase::resolving_exports;
    if (!resolve_exports(g_state.game_assembly)) { g_state.phase = Phase::failed; return 2; }

    // Wait for IL2CPP domain to be initialized (poll, don't fixed-sleep)
    for (int i = 0; i < 100; ++i) {
        if (should_abort()) return 0;
        if (g_state.exports.il2cpp_domain_get()) break;
        Sleep(100);
    }
    if (!g_state.exports.il2cpp_domain_get()) { g_state.phase = Phase::failed; return 2; }

    if (should_abort()) return 0;

    // Load offset profile
    auto profile_path = default_profile_path();
    if (!profile_path.empty()) {
        auto r = re_base::load_offset_profile(profile_path, g_state.offset_profile);
        (void)r;
    }

    // [C] 0x362154..0x36218f: The original stores config paths before hook setup.
    // "C:\Spotify" is the disguised config directory, "DefaultCfg.bin" the config file.
    // These are stored to global data at 0x218710 and 0x218730 respectively,
    // consumed later by initialize_frame_settings_2dd284_head on the first frame.
    g_state.frame_dep_state.directory = re::ReString("C:\\Spotify");
    g_state.frame_dep_state.selected_config = re::ReString("DefaultCfg.bin");

    // Build signature cache
    g_state.phase = Phase::building_cache;

    auto snapshot = build_live_snapshot(g_state.own_module);

    // Allocate literal storage (Agent B's VirtualAlloc approach)
    auto* lit_buf = VirtualAlloc(nullptr, 4096, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
    if (!lit_buf) { g_state.phase = Phase::failed; return 3; }
    g_state.literal_storage = reinterpret_cast<rust_internal_re::Address>(lit_buf);

    g_state.hook_env.module = g_state.cheat_base;
    g_state.hook_env.initial_loader_node = get_initial_loader_node();
    g_state.hook_env.literal_storage = g_state.literal_storage;
    g_state.hook_env.literal_capacity = 4096;

    rust_internal_re::HookSetupEffects effects;
    effects.metadata = build_metadata_api();
    effects.signature = build_signature_api();
    effects.reserve_owned = [](ReUSize size) -> rust_internal_re::Address {
        auto* p = VirtualAlloc(nullptr, size, MEM_COMMIT | MEM_RESERVE, PAGE_READWRITE);
        return p ? reinterpret_cast<rust_internal_re::Address>(p) : 0;
    };
    effects.module_handle = [](re::ReStringView name) -> re::ReOptional<rust_internal_re::Address> {
        wchar_t wide[512]{};
        MultiByteToWideChar(CP_UTF8, 0, name.data(), static_cast<int>(name.size()), wide, 511);
        auto* h = GetModuleHandleW(wide);
        return h ? re::ReOptional<rust_internal_re::Address>(reinterpret_cast<rust_internal_re::Address>(h))
                 : re::ReOptional<rust_internal_re::Address>{};
    };
    effects.observe_context = [](const rust_internal_re::HookDetectionCall&) {};
    effects.object_new = [](const rust_internal_re::HookDetectionCall&,
                             rust_internal_re::Address klass) -> rust_internal_re::Address {
        return g_state.exports.il2cpp_object_new
            ? reinterpret_cast<rust_internal_re::Address>(
                  g_state.exports.il2cpp_object_new(reinterpret_cast<void*>(klass)))
            : 0;
    };
    effects.method_parameter_count = [](const rust_internal_re::HookDetectionCall&,
                                         rust_internal_re::Address method) -> ReI32 {
        return g_state.exports.il2cpp_method_get_param_count
            ? g_state.exports.il2cpp_method_get_param_count(reinterpret_cast<void*>(method))
            : 0;
    };
    effects.loot_value = [](const rust_internal_re::HookDetectionCall& d) -> ReI32 {
        if (!d.target) return 0;
        return reinterpret_cast<int(__fastcall*)()>(d.target)();
    };
    effects.loot_callback = [](const rust_internal_re::HookDetectionCall& d,
                                rust_internal_re::Address closure) {
        if (!d.target) return;
        reinterpret_cast<void(__fastcall*)(void*)>(d.target)(reinterpret_cast<void*>(closure));
    };
    effects.original_loot = [](const rust_internal_re::HookDetectionCall& d,
                                rust_internal_re::Address icon, ReU8 second) {
        if (!d.target) return;
        reinterpret_cast<void(__fastcall*)(void*, unsigned char)>(d.target)(
            reinterpret_cast<void*>(icon), second);
    };

    if (should_abort()) return 0;

    // Persist snapshot and effects for the first-frame hook installation
    g_state.snapshot = re::re_move(snapshot);
    g_state.hook_effects = re::re_move(effects);

    // Resolve runtime callbacks (Screen.width, Time.deltaTime, etc.)
    resolve_all_callbacks(g_state.exports, g_state.game_assembly);

    // Install the Client.LateUpdate hook via direct IL2CPP resolution.
    // The snapshot-based initialize_client_362118 can't work: the rebuilt DLL
    // doesn't contain the original's data at those RVAs, and the snapshot doesn't
    // cover live IL2CPP heap objects. Skip it entirely and resolve directly.
    g_state.phase = Phase::installing_hooks;
    {
        rust_internal_re::HookRecord rec{};
        rec.detour = reinterpret_cast<rust_internal_re::Address>(&client_late_update_detour);
        rec.kind = 1;

        auto* domain = g_state.exports.il2cpp_domain_get();
        if (domain) {
            size_t asm_count = 0;
            auto** assemblies = g_state.exports.il2cpp_domain_get_assemblies(domain, &asm_count);
            for (size_t a = 0; a < asm_count && !rec.method_info; ++a) {
                auto* img = g_state.exports.il2cpp_assembly_get_image(assemblies[a]);
                if (!img) continue;
                auto* klass = g_state.exports.il2cpp_class_from_name(img, "", "Client");
                if (!klass) continue;
                auto* method = g_state.exports.il2cpp_class_get_method_from_name(
                    klass, "LateUpdate", 0);
                if (method) {
                    rec.method_info = reinterpret_cast<rust_internal_re::Address>(method);
                    rec.original = *reinterpret_cast<rust_internal_re::Address*>(method);
                }
            }
        }

        if (rec.method_info && rec.original) {
            // Store originals BEFORE publishing the detour to avoid race
            s_original_late_update = reinterpret_cast<void*>(rec.original);
            g_state.original_late_update = s_original_late_update;
            if (write_hook_cell(rec.method_info, rec.detour)) {
                g_state.installed_hooks.push_back({0x3621f2, rec});
            } else {
                g_state.phase = Phase::failed;
                return 4;
            }
        } else {
            g_state.phase = Phase::failed;
            return 4;
        }
    }

    FlushInstructionCache(GetCurrentProcess(), nullptr, 0);

    g_state.phase = Phase::running;
    return 0;
}

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

bool start_init(HMODULE own_module) {
    g_state.own_module = own_module;
    g_state.phase = Phase::idle;
    g_state.shutdown_requested = 0;
    g_state.init_thread = CreateThread(nullptr, 0, init_thread_proc, nullptr, 0, nullptr);
    return g_state.init_thread != nullptr;
}

void stop_and_cleanup() {
    // Signal shutdown before any blocking wait
    InterlockedExchange(&g_state.shutdown_requested, 1);
    g_state.phase = Phase::shutdown;

    // Wait for init thread to finish. If it times out, terminate it —
    // leaving it running risks writes to freed state after unload.
    if (g_state.init_thread) {
        DWORD result = WaitForSingleObject(g_state.init_thread, 5000);
        if (result == WAIT_TIMEOUT)
            TerminateThread(g_state.init_thread, 1);
        CloseHandle(g_state.init_thread);
        g_state.init_thread = nullptr;
    }

    // Restore hooks first so no new detour calls can enter our code.
    for (ReUSize i = g_state.installed_hooks.size(); i > 0; --i)
        restore_hook(g_state.installed_hooks[i - 1]);
    g_state.installed_hooks.clear();
    FlushInstructionCache(GetCurrentProcess(), nullptr, 0);

    // Wait for any in-flight detour execution to finish.
    for (int i = 0; i < 50 && InterlockedCompareExchange(&s_detour_active, 0, 0) != 0; ++i)
        Sleep(10);

    if (g_state.literal_storage) {
        VirtualFree(reinterpret_cast<void*>(g_state.literal_storage), 0, MEM_RELEASE);
        g_state.literal_storage = 0;
    }
}

Phase current_phase() {
    return g_state.phase;
}

} // namespace game_init
