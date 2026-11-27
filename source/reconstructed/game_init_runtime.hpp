#pragma once
#include <cstdint>
#include "hook_setup_analysis.hpp"
#include "unity_backend_analysis.hpp"
#include "frame_dependencies_analysis.hpp"
#include "frame_dependencies_configuration.hpp"
#include "offset_profile.hpp"

#ifdef _WIN32
#include <windows.h>
#include <psapi.h>
#include <winternl.h>
#else
#include "../windows_base/win32_freestanding.h"
#endif

namespace game_init {

enum class Phase : unsigned {
    idle,
    waiting_for_game,
    resolving_exports,
    building_cache,
    installing_hooks,
    running,
    failed,
    shutdown
};

struct Il2CppExports {
    using DomainGetFn               = void* (*)();
    using DomainGetAssembliesFn     = void** (*)(void* domain, size_t* count);
    using AssemblyGetImageFn        = void* (*)(void* assembly);
    using ClassFromNameFn           = void* (*)(void* image, const char* ns, const char* name);
    using ClassGetMethodsFn         = void* (*)(void* klass, void** iter);
    using ClassGetMethodFromNameFn  = void* (*)(void* klass, const char* name, int argc);
    using MethodGetParamCountFn     = int (*)(void* method);
    using MethodGetNameFn           = const char* (*)(void* method);
    using MethodGetParamNameFn      = const char* (*)(void* method, uint32_t index);
    using ObjectNewFn               = void* (*)(void* klass);
    using StringNewFn               = void* (*)(const char* str);
    using MethodGetReturnTypeFn     = void* (*)(void* method);
    using TypeGetNameFn             = const char* (*)(void* type);
    using MethodGetParamTypeFn      = void* (*)(void* method, uint32_t index);
    using ImageGetClassCountFn      = uint64_t (*)(void* image);
    using ImageGetClassFn           = void* (*)(void* image, int32_t index);

    DomainGetFn               il2cpp_domain_get{};
    DomainGetAssembliesFn     il2cpp_domain_get_assemblies{};
    AssemblyGetImageFn        il2cpp_assembly_get_image{};
    ClassFromNameFn           il2cpp_class_from_name{};
    ClassGetMethodsFn         il2cpp_class_get_methods{};
    ClassGetMethodFromNameFn  il2cpp_class_get_method_from_name{};
    MethodGetParamCountFn     il2cpp_method_get_param_count{};
    MethodGetNameFn           il2cpp_method_get_name{};
    MethodGetParamNameFn      il2cpp_method_get_param_name{};
    ObjectNewFn               il2cpp_object_new{};
    StringNewFn               il2cpp_string_new{};
    MethodGetReturnTypeFn     il2cpp_method_get_return_type{};
    TypeGetNameFn             il2cpp_type_get_name{};
    MethodGetParamTypeFn      il2cpp_method_get_param{};
    ImageGetClassCountFn      il2cpp_image_get_class_count{};
    ImageGetClassFn           il2cpp_image_get_class{};

    bool core_resolved() const {
        return il2cpp_domain_get && il2cpp_domain_get_assemblies &&
               il2cpp_assembly_get_image && il2cpp_class_from_name &&
               il2cpp_class_get_methods && il2cpp_class_get_method_from_name &&
               il2cpp_method_get_param_count && il2cpp_method_get_name;
    }
};

struct InstalledHook {
    rust_internal_re::Rva definition_site{};
    rust_internal_re::HookRecord record{};
};

struct GameState {
    Phase phase{Phase::idle};
    HMODULE game_assembly{};
    HMODULE unity_player{};
    HMODULE own_module{};

    Il2CppExports exports;
    rust_internal_re::HookSetupState hook_state;
    rust_internal_re::HookSetupEnvironment hook_env{};
    rust_internal_re::HookSetupEffects hook_effects{};
    re_base::OffsetProfile offset_profile;

    rust_internal_re::Address cheat_base{};
    rust_internal_re::Address game_assembly_base{};

    re::ReVector<InstalledHook> installed_hooks;
    void* original_late_update{};

    // Snapshot persists from init thread through first-frame hook installation
    rust_internal_re::Snapshot snapshot{0, {}};

    // Frame dependency state for first-frame config initialization
    rust_internal_re::FrameDependencyState frame_dep_state;
    rust_internal_re::FrameConfigurationState frame_config_state;

    HANDLE init_thread{};
    volatile LONG shutdown_requested{};

    rust_internal_re::Address literal_storage{};

    GameState() = default;
    GameState(const GameState&) = delete;
    GameState& operator=(const GameState&) = delete;
    GameState(GameState&&) = delete;
    GameState& operator=(GameState&&) = delete;
};

bool start_init(HMODULE own_module);
void stop_and_cleanup();
Phase current_phase();
void __fastcall client_late_update_detour(void* this_ptr);

} // namespace game_init
