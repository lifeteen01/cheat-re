#pragma once
#include "internal_analysis.hpp"

namespace game_init {

enum class CallConv : ReU8 {
    unknown,
    void_void,        // void f()
    addr_void,        // void* f()
    int_void,         // int f()
    float_void,       // float f()
    void_addr,        // void f(void*)
    void_addr_int,    // void f(void*, int)
    void_addr_bool,   // void f(void*, bool)
    addr_addr,        // void* f(void*)
    addr_addr_addr,   // void* f(void*, void*)
    addr_addr3,       // void* f(void*, void*, void*)
    void_addr_rect,   // void f(void*, Rect) — EnableScissorRect
    matrix_6f,        // void f(Matrix*, float, float, float, float, float, float)
    void_effect,      // generic void multi-arg effect
    addr_string,      // void* f(const char*) — icall resolve
};

struct TypedCallEntry {
    rust_internal_re::Rva rva;
    CallConv conv;
};

inline CallConv lookup_call_conv(rust_internal_re::Rva rva) {
    static constexpr TypedCallEntry table[] = {
        // Zero-arg int returns
        {0x2e09f0, CallConv::int_void},    // Screen.get_height
        {0x2e0af0, CallConv::int_void},    // Screen.get_width
        {0x3b4c10, CallConv::int_void},    // Texture2D.GetImageDataSize

        // Zero-arg float returns
        {0x2e071c, CallConv::float_void},  // Time.get_deltaTime
        {0x3b2a30, CallConv::float_void},  // Time.get_unscaledDeltaTime

        // Zero-arg static returns
        {0x3b2590, CallConv::addr_void},   // Mouse.get_current (static)

        // Instance getters that take this pointer from args[0]
        {0x3b2120, CallConv::addr_addr},   // Mouse.get_backButton(this)
        {0x3b223c, CallConv::addr_addr},   // Mouse.get_forwardButton(this)
        {0x3b2358, CallConv::addr_addr},   // Mouse.get_leftButton(this)
        {0x3b2474, CallConv::addr_addr},   // Mouse.get_middleButton(this)
        {0x3b27f8, CallConv::addr_addr},   // Mouse.get_rightButton(this)
        {0x3b2698, CallConv::addr_addr},   // Pointer.get_position(this)
        {0x3b2914, CallConv::addr_addr},   // Mouse.get_scroll(this)

        // One-arg Address returns (object getter with this ptr)
        {0x2e68b8, CallConv::addr_addr},   // ButtonControl.get_isPressed
        {0x36c8c4, CallConv::addr_addr},   // Camera.get_pixelRect
        {0x3b4e60, CallConv::addr_addr},   // Texture2D.GetWritableImageData

        // One-arg void effects (void f(void*))
        {0x373744, CallConv::void_addr},   // GameObject.set_active → takes bool
        {0x3b1dc4, CallConv::void_addr},   // CommandBuffer.DisableScissorRect
        {0x3b2004, CallConv::void_addr},   // Graphics.ExecuteCommandBuffer
        {0x3b383c, CallConv::void_addr},   // RenderTexture.Release
        {0x3b1980, CallConv::void_addr},   // RenderTexture.Create

        // One-arg void + int
        {0x3b39dc, CallConv::void_addr_int},  // RenderTexture.set_height
        {0x3b40d0, CallConv::void_addr_int},  // RenderTexture.set_width

        // Two-arg Address returns
        {0x373138, CallConv::addr_addr},      // GameObject.Find (takes string)
        {0x373378, CallConv::addr_addr_addr},  // GameObject.GetComponent

        // Three-arg Address returns (bundle load)
        {0x375abc, CallConv::addr_addr3},  // AssetBundle.LoadAsset_Internal
        {0x3af424, CallConv::addr_addr3},  // AssetBundle.LoadAsset_Internal
        {0x3af54c, CallConv::addr_addr3},  // AssetBundle.LoadAsset_Internal

        // Bundle from memory
        {0x375c08, CallConv::addr_addr},   // LoadFromMemory_Internal_Injected

        // IL2CPP runtime
        {0x376084, CallConv::addr_addr_addr}, // il2cpp_array_new
        {0x376154, CallConv::addr_string},    // il2cpp_resolve_icall
        {0x3b4d28, CallConv::addr_string},    // il2cpp_resolve_icall

        // 6-float matrix
        {0x3b3614, CallConv::matrix_6f},   // Matrix4x4.Ortho

        // EnableScissorRect takes Rect
        {0x3b1edc, CallConv::void_addr_rect},

        // CommandBuffer.SetRenderTarget — 2-arg void effect
        {0x3b3c90, CallConv::void_effect},

        // Object constructors and setters (void effects)
        {0x3b0580, CallConv::void_addr},   // MaterialPropertyBlock.ctor
        {0x3b0500, CallConv::void_addr},   // CommandBuffer.ctor
        {0x3b0600, CallConv::void_addr},   // Mesh.MarkDynamic
        {0x3b0730, CallConv::void_effect},  // Material.ctor (this, shader)
        {0x3b0680, CallConv::void_effect},  // Texture2D.ctor (this, w, h, fmt, mip, linear)
        {0x3b086c, CallConv::void_effect},  // Texture2D.SetPixelData
        {0x3af01c, CallConv::void_effect},  // Texture2D.Apply (this, mips, readable)

        // Object/string allocators
        {0x3b4b98, CallConv::addr_addr},   // il2cpp_object_new(klass)
        {0x2ce718, CallConv::addr_string}, // il2cpp_string_new(cstr)

        // Mesh injected icalls (multi-arg void effects)
        {0x3b3b04, CallConv::void_effect}, // Mesh.InternalSetIndexBufferData_Injected
        {0x3b3bdc, CallConv::void_effect}, // Mesh.SetIndexBufferParams_Injected
        {0x3b3dbc, CallConv::void_effect}, // RectTransform.set_sizeDelta_Injected
        {0x3b3e5c, CallConv::void_effect}, // Mesh.SetAllSubMeshesAtOnceFromNativeArray_Injected
        {0x3b3f38, CallConv::void_effect}, // Mesh.InternalSetVertexBufferData_Injected
        {0x3b4010, CallConv::void_effect}, // Mesh.SetVertexBufferParamsFromPtr_Injected
        {0x3b3798, CallConv::addr_addr},   // UnsafeUtility.PinSystemObjectAndGetAddress
    };

    for (const auto& e : table)
        if (e.rva == rva) return e.conv;
    return CallConv::unknown;
}

} // namespace game_init
