// Runtime callback binding — resolves game methods via IL2CPP API and wires
// them into the ReFunction callback interfaces used by the reconstructed code.
//
// This module bridges the gap between:
//   1. The offline reconstruction (which uses ReFunction callbacks as stubs)
//   2. The live game (which provides IL2CPP methods at runtime)
//
// Called from game_init_runtime.cpp after IL2CPP exports are resolved.

#include "runtime_callback_bindings.hpp"

#ifdef _WIN32
#include <windows.h>
#endif

namespace game_init {

// ---------------------------------------------------------------------------
// IL2CPP method resolution helpers
// ---------------------------------------------------------------------------

struct MethodInfo {
    void* method_ptr;
    void* klass;
};

static void* find_class(const Il2CppExports& il2cpp, const char* ns, const char* name) {
    if (!il2cpp.il2cpp_domain_get) return nullptr;
    void* domain = il2cpp.il2cpp_domain_get();
    if (!domain) return nullptr;

    size_t count = 0;
    void** assemblies = il2cpp.il2cpp_domain_get_assemblies(domain, &count);
    if (!assemblies) return nullptr;

    for (size_t i = 0; i < count; ++i) {
        void* image = il2cpp.il2cpp_assembly_get_image(assemblies[i]);
        if (!image) continue;
        void* klass = il2cpp.il2cpp_class_from_name(image, ns, name);
        if (klass) return klass;
    }
    return nullptr;
}

static void* find_method(const Il2CppExports& il2cpp, void* klass,
                          const char* name, int param_count) {
    if (!klass || !il2cpp.il2cpp_class_get_method_from_name) return nullptr;
    return il2cpp.il2cpp_class_get_method_from_name(klass, name, param_count);
}

static void* resolve_icall(HMODULE game_assembly, const char* icall_name) {
    if (!game_assembly) return nullptr;
    using ResolveFn = void* (*)(const char*);
    auto resolve = reinterpret_cast<ResolveFn>(GetProcAddress(game_assembly, "il2cpp_resolve_icall"));
    if (!resolve) return nullptr;
    return resolve(icall_name);
}

// ---------------------------------------------------------------------------
// Callback binding table — maps RVA -> (namespace, class, method, param_count)
// ---------------------------------------------------------------------------

struct CallbackBinding {
    uint32_t rva;
    const char* ns;
    const char* klass;
    const char* method;
    int param_count;
    bool is_icall;
    const char* icall_name;
};

static constexpr CallbackBinding g_bindings[] = {
    // UnityEngine.Time
    {0x2e071c, "UnityEngine", "Time", "get_deltaTime", 0, false, nullptr},
    {0x3b2a30, "UnityEngine", "Time", "get_unscaledDeltaTime", 0, false, nullptr},

    // UnityEngine.Screen
    {0x2e09f0, "UnityEngine", "Screen", "get_height", 0, false, nullptr},
    {0x2e0af0, "UnityEngine", "Screen", "get_width", 0, false, nullptr},

    // UnityEngine.Camera
    {0x36c8c4, "UnityEngine", "Camera", "get_pixelRect", 0, false, nullptr},

    // UnityEngine.GameObject
    {0x373138, "UnityEngine", "GameObject", "Find", 1, false, nullptr},
    {0x373378, "UnityEngine", "GameObject", "GetComponent", 1, false, nullptr},
    {0x373744, "UnityEngine", "GameObject", "set_active", 1, false, nullptr},

    // UnityEngine.InputSystem.Mouse
    {0x3b2120, "UnityEngine.InputSystem", "Mouse", "get_backButton", 0, false, nullptr},
    {0x3b223c, "UnityEngine.InputSystem", "Mouse", "get_forwardButton", 0, false, nullptr},
    {0x3b2358, "UnityEngine.InputSystem", "Mouse", "get_leftButton", 0, false, nullptr},
    {0x3b2474, "UnityEngine.InputSystem", "Mouse", "get_middleButton", 0, false, nullptr},
    {0x3b2590, "UnityEngine.InputSystem", "Mouse", "get_current", 0, false, nullptr},
    {0x3b27f8, "UnityEngine.InputSystem", "Mouse", "get_rightButton", 0, false, nullptr},
    {0x3b2914, "UnityEngine.InputSystem", "Mouse", "get_scroll", 0, false, nullptr},

    // UnityEngine.InputSystem.Pointer
    {0x3b2698, "UnityEngine.InputSystem", "Pointer", "get_position", 0, false, nullptr},

    // UnityEngine.InputSystem.Controls.ButtonControl
    {0x2e68b8, "UnityEngine.InputSystem.Controls", "ButtonControl", "get_isPressed", 0, false, nullptr},

    // UnityEngine.AssetBundle
    {0x375abc, "UnityEngine", "AssetBundle", "LoadAsset_Internal", 2, false, nullptr},
    {0x3af424, "UnityEngine", "AssetBundle", "LoadAsset_Internal", 2, false, nullptr},
    {0x3af54c, "UnityEngine", "AssetBundle", "LoadAsset_Internal", 2, false, nullptr},

    // UnityEngine.RenderTexture
    {0x3b1980, "UnityEngine", "RenderTexture", "Create", 0, false, nullptr},
    {0x3b383c, "UnityEngine", "RenderTexture", "Release", 0, false, nullptr},
    {0x3b39dc, "UnityEngine", "RenderTexture", "set_height", 1, false, nullptr},
    {0x3b40d0, "UnityEngine", "RenderTexture", "set_width", 1, false, nullptr},

    // UnityEngine.Rendering.CommandBuffer
    {0x3b1dc4, "UnityEngine.Rendering", "CommandBuffer", "DisableScissorRect", 0, false, nullptr},
    {0x3b1edc, "UnityEngine.Rendering", "CommandBuffer", "EnableScissorRect", 1, false, nullptr},
    {0x3b3c90, "UnityEngine.Rendering", "CommandBuffer", "SetRenderTarget", 1, false, nullptr},

    // UnityEngine.Graphics
    {0x3b2004, "UnityEngine", "Graphics", "ExecuteCommandBuffer", 1, false, nullptr},

    // UnityEngine.Matrix4x4
    {0x3b3614, "UnityEngine", "Matrix4x4", "Ortho", 6, false, nullptr},

    // UnityEngine.Rendering.RenderTargetIdentifier
    {0x3b4824, "UnityEngine.Rendering", "RenderTargetIdentifier", ".ctor", 1, false, nullptr},

    // UnityEngine.Texture2D (icalls)
    {0x3b4c10, "UnityEngine", "Texture2D", "GetImageDataSize", 0, true,
     "UnityEngine.Texture2D::GetImageDataSize"},
    {0x3b4e60, "UnityEngine", "Texture2D", "GetWritableImageData", 0, true,
     "UnityEngine.Texture2D::GetWritableImageData"},

    // Unity icalls resolved at runtime via il2cpp_resolve_icall
    {0x375c08, "", "", "", -1, true,
     "UnityEngine.AssetBundle::LoadFromMemory_Internal_Injected"},
    {0x3b3b04, "", "", "", -1, true,
     "UnityEngine.Mesh::InternalSetIndexBufferData_Injected"},
    {0x3b3bdc, "", "", "", -1, true,
     "UnityEngine.Mesh::SetIndexBufferParams_Injected"},
    {0x3b3dbc, "", "", "", -1, true,
     "UnityEngine.RectTransform::set_sizeDelta_Injected"},
    {0x3b3e5c, "", "", "", -1, true,
     "UnityEngine.Mesh::SetAllSubMeshesAtOnceFromNativeArray_Injected"},
    {0x3b3f38, "", "", "", -1, true,
     "UnityEngine.Mesh::InternalSetVertexBufferData_Injected"},
    {0x3b4010, "", "", "", -1, true,
     "UnityEngine.Mesh::SetVertexBufferParamsFromPtr_Injected"},
    {0x3b3798, "", "", "", -1, true,
     "Unity.Collections.LowLevel.Unsafe.UnsafeUtility::PinSystemObjectAndGetAddress"},

    // UnityEngine object constructors
    {0x3b0580, "UnityEngine", "MaterialPropertyBlock", ".ctor", 0, false, nullptr},
    {0x3b0500, "UnityEngine.Rendering", "CommandBuffer", ".ctor", 0, false, nullptr},
    {0x3b0600, "UnityEngine", "Mesh", "MarkDynamic", 0, false, nullptr},

    // UnityEngine.Material / Shader
    {0x3b0730, "UnityEngine", "Material", ".ctor", 1, false, nullptr},
    {0x3af674, "UnityEngine", "Mesh", "SetSubMeshes", 1, false, nullptr},

    // UnityEngine.Texture2D (more methods)
    {0x3b0680, "UnityEngine", "Texture2D", ".ctor", 5, false, nullptr},
    {0x3b086c, "UnityEngine", "Texture2D", "SetPixelData", 1, false, nullptr},
    {0x3af01c, "UnityEngine", "Texture2D", "Apply", 2, false, nullptr},

    // GameAssembly exports
    {0x376084, "", "", "il2cpp_array_new", -1, false, nullptr},
    {0x376154, "", "", "il2cpp_resolve_icall", -1, false, nullptr},
    {0x3b4d28, "", "", "il2cpp_resolve_icall", -1, false, nullptr},
    {0x3b4b98, "", "", "il2cpp_object_new", -1, false, nullptr},

    // il2cpp_string_new for managed string creation
    {0x2ce718, "", "", "il2cpp_string_new", -1, false, nullptr},
};

// ---------------------------------------------------------------------------
// Resolved callback storage
// ---------------------------------------------------------------------------

struct ResolvedCallback {
    uint32_t rva;
    void* target;
};

static ResolvedCallback g_resolved[128]{};
static int g_resolved_count = 0;

// ---------------------------------------------------------------------------
// Public API
// ---------------------------------------------------------------------------

int resolve_all_callbacks(const Il2CppExports& il2cpp, HMODULE game_assembly) {
    g_resolved_count = 0;
    int resolved = 0;

    for (const auto& binding : g_bindings) {
        void* target = nullptr;

        if (binding.is_icall && binding.icall_name) {
            target = resolve_icall(game_assembly, binding.icall_name);
        } else if (binding.klass[0] == '\0' && binding.method[0] != '\0') {
            target = reinterpret_cast<void*>(GetProcAddress(game_assembly, binding.method));
        } else if (binding.klass[0] != '\0') {
            void* klass = find_class(il2cpp, binding.ns, binding.klass);
            if (klass) {
                auto* mi = reinterpret_cast<MethodInfo*>(
                    find_method(il2cpp, klass, binding.method, binding.param_count));
                if (mi && mi->method_ptr)
                    target = mi->method_ptr;
            }
        }

        if (target && g_resolved_count < 128) {
            g_resolved[g_resolved_count++] = {binding.rva, target};
            ++resolved;
        }
    }

    return resolved;
}

void* get_resolved_callback(uint32_t rva) {
    for (int i = 0; i < g_resolved_count; ++i) {
        if (g_resolved[i].rva == rva)
            return g_resolved[i].target;
    }
    return nullptr;
}

void write_callbacks_to_snapshot(rust_internal_re::Snapshot& snapshot,
                                  rust_internal_re::Address cheat_base) {
    for (int i = 0; i < g_resolved_count; ++i) {
        auto addr = cheat_base + g_resolved[i].rva;
        auto target = reinterpret_cast<rust_internal_re::Address>(g_resolved[i].target);
        snapshot.write(addr, target);
    }
}

} // namespace game_init
