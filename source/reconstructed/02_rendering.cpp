#include "entities_analysis.hpp"
namespace rust_internal_re {
// [C] Direct call ordering from 0x2f8574; [I] explanatory names are analyst labels.
// [U] Unity/ImGui calls are described, not linked to guessed game function types.
Events describe_frame_2f8574() {
    return {
        {0x2f85a2,"[C] initialization path: install remaining hooks via 0x315c34"},
        {0x2f85e5,"[C] conditional entity classification 0x31acd0"},
        {0x2f8607,"[C] lazy load bundle at RVA 0x2379e0, size 0x2a46; save at 0x3e5ef8"},
        {0x2f87a4,"[C] invoke saved Client.LateUpdate"},
        {0x2f8ae1,"[C] weapon work 0x319024"},
        {0x2f8b01,"[C] aim worker 0x2f9988"},
        {0x2f8b1c,"[C] initialize Unity UI renderer through 0x3b2b38"},
        {0x2f8d40,"[C] overlay 0x3098a4"},
        {0x2f8d4d,"[C] entity/world draw loop 0x2fb72c"},
        {0x2f8d79,"[C] menu 0x35d5ac"},
        {0x2f8d8d,"[I] finalize ImGui draw data"},
        {0x2f8d95,"[C] submit through 0x3b3028"}
    };
}

// [C] 0x3b4250..0x3b4497: concatenate buffers and build per-command submesh ranges.
// [I] Returns an owned upload plan in place of unresolved Unity icalls.
// [I] Bounds checks are analysis safeguards; original code trusts draw data.
MeshUpload flatten_geometry_3b4250(re::ReSpan<const DrawList> lists) {
    MeshUpload out;
    ReU64 vertex_base=0,index_base=0;
    for(const auto& list:lists) {
        if(vertex_base+list.vertices.size()>UINT32_MAX || index_base+list.indices.size()>UINT32_MAX)
            { __builtin_trap(); }
        out.vertices.insert(out.vertices.end(),list.vertices.begin(),list.vertices.end());
        out.indices.insert(out.indices.end(),list.indices.begin(),list.indices.end());
        for(const auto& command:list.commands) {
            if(command.vertex_offset>list.vertices.size() || command.index_offset>list.indices.size() ||
               command.element_count>list.indices.size()-command.index_offset)
                { __builtin_trap(); }
            out.submeshes.push_back({ReU32(vertex_base+command.vertex_offset),
                ReU32(index_base+command.index_offset),command.element_count});
        }
        vertex_base+=list.vertices.size();index_base+=list.indices.size();
    }
    return out;
}

// [C] Guards/call order: 0x3b3053..0x3b3177.
Events describe_renderer_3b3028(bool ready, bool nonempty, bool viewport_valid) {
    if(!ready)return {{0x3b3053,"[C] mesh/resource not ready; timed retry of 0x3b337c, then return"}};
    if(!nonempty||!viewport_valid)return {{0x3b3143,"[C] skip empty draw lists or invalid viewport"}};
    return {
        {0x3b3158,"[C] upload draw geometry through 0x3b4250"},
        {0x3b42cc,"[C] Mesh.SetVertexBufferParamsFromPtr_Injected"},
        {0x3b4345,"[C] Mesh.InternalSetVertexBufferData_Injected"},
        {0x3b4375,"[C] index buffer upload wrapper"},
        {0x3b4497,"[C] Mesh.SetAllSubMeshesAtOnceFromNativeArray_Injected"},
        {0x3b316b,"[C] record draw commands via 0x3b1a94"},
        {0x3b1b39,"[C] set render target via 0x3b3c90"},
        {0x3b1c04,"[C] set orthographic projection via 0x3b3614"},
        {0x3b1d32,"[C] enable command scissor rectangle"},
        {0x3b1d68,"[I] issue mesh/submesh draw using cached material and property block"},
        {0x3b1d92,"[C] disable scissor rectangle"},
        {0x3b3177,"[C] Graphics.ExecuteCommandBuffer via 0x3b2004"}
    };
}

// [C] 0x3b0ab2..0x3b0ae8 and 0x3b3956..0x3b3989 apply each component.
ClipRect subtract_clip_3b0aac(ClipRect r, Vec2 p) {
    return {r.x-p.x,r.y-p.y,r.z-p.x,r.w-p.y};
}
ClipRect scale_clip_3b3950(ClipRect r, Vec2 scale) {
    return {r.x*scale.x,r.y*scale.y,r.z*scale.x,r.w*scale.y};
}
RenderCommandPlan plan_render_commands_3b1a94(const RenderFrameInput& frame,
    re::ReSpan<const RenderListInput> lists, ReUSize maximum) {
    const auto finite=[](float value){return re::re_isfinite(value);};
    if(!finite(frame.viewport.x)||!finite(frame.viewport.y)||frame.viewport.x<=0||frame.viewport.y<=0||
       !finite(frame.display_position.x)||!finite(frame.display_position.y)||
       !finite(frame.framebuffer_scale.x)||!finite(frame.framebuffer_scale.y))
        { __builtin_trap(); }
    RenderCommandPlan out;
    out.viewport=frame.viewport;
    // [C] 0x3b1b9c..0x3b1bd7 and 0x3b41f8: identity view with translation.
    out.view_translation={0.5f/frame.viewport.x,0.5f/frame.viewport.y,0};
    // [C] 0x3b1bdc..0x3b1c04 passes six arguments to resolved Matrix4x4.Ortho.
    // [U] Unity's returned matrix is intentionally not fabricated here.
    out.ortho_arguments={0,frame.viewport.x,frame.viewport.y,0,0,1};
    ReU64 submesh=0;
    for(const auto& list:lists)for(const auto& command:list.commands) {
        if(submesh>=maximum||submesh>UINT32_MAX)
            { __builtin_trap(); }
        const auto r=scale_clip_3b3950(subtract_clip_3b0aac(command.clip,frame.display_position),
            frame.framebuffer_scale);
        if(!finite(r.x)||!finite(r.y)||!finite(r.z)||!finite(r.w))
            { __builtin_trap(); }
        // [C] 0x3b1cab..0x3b1cda performs only these four rejection tests.
        // It does not clamp rectangles or test positive area. Preserve that behavior.
        if(r.x<frame.viewport.x&&r.y<frame.viewport.y&&r.z>=0&&r.w>=0) {
            out.draws.push_back({ReU32(submesh),command.texture,r,
                {r.x,frame.viewport.y-r.w,r.z-r.x,r.w-r.y}});
        }
        // [C] 0x3b1d6d..0x3b1d6f increments even when a command is clipped.
        ++submesh;
    }
    return out;
}
// [C] 0x364ca0..0x364ca8: single byte comparison at offset 0x23.
// [I] Byte 0x23 is the obfuscation flag in a 36-byte renderer token buffer.
bool renderer_token_encoded_364ca0(const ReU8* buffer) {
    return buffer[0x23] != 0;
}

// [C] 0x3b464c..0x3b4688: XOR cipher for 36-byte renderer tokens.
// [C] Uses magic-multiply division by 57 (constant 0x1f7047dd) to compute i % 57,
// [C] but since the loop range is [0,36) and 36 < 57, the modulus equals i throughout.
// [C] Key sequence: 0x37 ('7'), 0x38 ('8'), ... 0x5a ('Z') for positions 0..35.
void renderer_token_xor_3b464c(ReU8* dest, const ReU8* source) {
    for (ReI32 i = 0; i < 0x24; ++i) {
        const ReU8 key = static_cast<ReU8>((i % 57) + 0x37);
        dest[i] = key ^ source[i];
    }
}

// [C] 0x3b48b0..0x3b48d6: conditional in-place token decode.
// [C] Tests the obfuscation flag via 0x364ca0, then XOR-decodes via 0x3b464c with src==dest.
// [C] Returns the (possibly decoded) buffer pointer for caller chaining.
ReU8* renderer_token_decode_3b48b0(ReU8* buffer) {
    if (renderer_token_encoded_364ca0(buffer)) {
        renderer_token_xor_3b464c(buffer, buffer);
    }
    return buffer;
}
} // namespace rust_internal_re
