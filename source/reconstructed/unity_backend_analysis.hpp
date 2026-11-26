#pragma once
#include "entities_analysis.hpp"
#include "metadata_signature_analysis.hpp"
namespace rust_internal_re {
// [I] All addresses below are evidence keys. None is converted to a function pointer.
enum class UnityStatus { complete, missing_dependency, unresolved_target, unreadable_snapshot,
                         malformed_input, analysis_limit, callback_type_mismatch, indeterminate_native_data };
struct UnityResult { UnityStatus status{UnityStatus::complete}; Rva stopped_at{}; bool submitted{}; };
struct UnityCacheSpec {
    Rva wrapper{},flags{},target{},context{},resolver{};
    ReU32 signature{};
    re::ReStringView name_space,klass,method,parameter;
    ReI32 count{-1},parameter_index{-1};
};
re::ReSpan<const UnityCacheSpec> unity_backend_cache_specs();
struct UnityCache { ReU32 flags{}; Address target{}; bool context_detected{}; };
struct UnityMatrix { re::ReArray<float,16> cells{}; };
struct UnityBytes { re::ReVector<ReByte> bytes; };
struct UnityVertexBytes { re::ReVector<DrawVertex> values; };
struct UnityIndexBytes { re::ReVector<ReU16> values; };
struct UnityNativeSubMesh {
    Vec3 bounds_center{},bounds_extent{}; ReI32 topology{};
    ReU32 index_start{},index_count{},base_vertex{},first_vertex{},vertex_count{};
};
static_assert(sizeof(UnityNativeSubMesh)==48);
struct UnitySubMeshes { re::ReVector<UnityNativeSubMesh> values; };
struct UnityFontPixels { ReI32 width{},height{},bytes_per_pixel{}; re::ReVector<ReByte> bytes; };
struct UnityManagedArray { Address object{}; ReI32 length{}; re::ReVector<ReByte> bytes; };
struct UnityPinned { Address object{}; ReU64 handle{}; };
struct UnityRenderTarget { re::ReArray<ReByte,40> bytes{}; };
using UnityValue=re::ReVariant<re::ReMonostate,Address,ReI32,float,bool,Vec2,Vec3,ClipRect,ScissorRect,
    re::ReString,UnityMatrix,UnityBytes,UnityVertexBytes,UnityIndexBytes,UnitySubMeshes,UnityFontPixels,UnityManagedArray,UnityPinned,UnityRenderTarget>;
// [I] A synchronous, typed-data boundary, not an event summary. Arguments are
// owned values; callback results are consumed by the controllers below. The tag
// is the exact wrapper RVA, never a target address to execute. Local managed
// string/type and object+0x10 conversions precede the leaf callback. Missing returns stop.
struct UnityApi {
    re::ReFunction<MetadataResult(const UnityCacheSpec&)> resolve_target;
    // [I] Detection-only context adapter for native 0x2cbd24; no spoof executor.
    re::ReFunction<bool(const UnityCacheSpec&,Address)> detect_context;
    // [U] Actual external Unity/ImGui/game operations require matching artifacts.
    re::ReFunction<re::ReOptional<UnityValue>(Rva,re::ReSpan<const UnityValue>)> external;
    re::ReFunction<MetadataResult(re::ReStringView,re::ReStringView)> resolve_class;
    re::ReFunction<re::ReOptional<Address>(Address,ReU32)> copied_pointer;
};
struct UnityIo {
    Address native_io{}; ReU32 backend_flags{}; re::ReString backend_name; Address font_atlas{},font_texture{};
    Address backend_user_data{};
    float delta_time{}; Vec2 display_size{},mouse_position{};
    re::ReArray<bool,5> mouse_buttons{};
};
struct UnityBackendState {
    Address shader_runtime_type{0x402402};
    Address bundle{},shader{},material{},mesh{},property_block{},command_buffer{},font_texture{};
    Address rect_transform{},camera{},render_texture{};
    ReU64 shader_pin{},material_pin{},mesh_pin{},property_pin{},command_pin{},font_pin{};
    ReI32 texture_property{};
    re::ReVector<re::ReArray<ReI32,4>> vertex_attributes;
    ReU32 previous_command_count{1}; // [C] native initial value is DLL 0x27fa54.
    float retry_seconds{}; ProjectionBounds bounds{};
    re::ReMap<Rva,UnityCache> caches;
    UnityIo io;
    MeshUpload last_upload; RenderCommandPlan last_commands;
};
struct UnityDrawData {
    Vec2 display_position{},display_size{},framebuffer_scale{1,1};
    re::ReVector<DrawList> lists; re::ReVector<RenderListInput> command_lists;
    // [I] Header counts are kept independent to preserve native guards and arguments.
    ReI32 total_vertices{},total_indices{};
};
UnityResult initialize_unity_backend_3b2b38(UnityBackendState&,const UnityApi&);
UnityResult create_unity_resources_3b337c(UnityBackendState&,const UnityApi&);
UnityResult upload_unity_geometry_3b4250(UnityBackendState&,const UnityApi&,const UnityDrawData&);
UnityResult record_unity_commands_3b1a94(UnityBackendState&,const UnityApi&,const UnityDrawData&,Vec2 viewport);
UnityResult execute_unity_commands_3b2004(UnityBackendState&,const UnityApi&);
UnityResult submit_unity_draw_data_3b3028(UnityBackendState&,const UnityApi&,const UnityDrawData&);
UnityResult update_unity_io_3b2eec(UnityBackendState&,const UnityApi&,const Snapshot& copied_game);
UnityResult build_unity_font_texture_3b3240(UnityBackendState&,const UnityApi&);
UnityResult resize_unity_target_3b1904(UnityBackendState&,const UnityApi&,float width,float height);
// [I] Exposed cache operation enables failure/reentrancy fixtures. Flags are set
// BEFORE resolution/context callbacks, including callbacks that cannot finish.
UnityResult prepare_unity_cache(UnityBackendState&,const UnityApi&,Rva wrapper);

// [I] Optional concrete resolver adapter. Intern returns NUL-terminated literal
// addresses in the supplied copied Snapshot. Signature and standard metadata scans
// are the existing translations, not replaced by invented addresses.
struct UnityMetadataAdapter {
    const Snapshot* image{}; MetadataApi metadata; MetadataSignatureApi signature_api;
    MetadataSignatureCache* signature_cache{}; MetadataLimits limits{};
    re::ReFunction<Address(re::ReStringView)> intern;
    re::ReFunction<MetadataResult(re::ReStringView)> resolve_icall;
    re::ReFunction<MetadataResult(re::ReStringView,re::ReStringView)> resolve_export;
    re::ReFunction<MetadataResult(Rva)> export_getter;
    re::ReFunction<Address(Address)> method_name_335040,parameter_type_3b4a98,type_name_3b4de8;
};
MetadataResult resolve_unity_backend_target(const UnityMetadataAdapter&,const UnityCacheSpec&);
MetadataResult resolve_unity_backend_class(const UnityMetadataAdapter&,re::ReStringView name_space,re::ReStringView klass);

struct UnityFrameState {
    bool initialized{},ui_initialized{},configs_loaded{},menu_open{},splash_active{};
    float splash_seconds{};
    re::ReArray<Address,8> bundles{};
    UnityCache original; Address saved_original{},manager{};
    // [I] Owned equivalents of collection storage cleared at 0x2f87df/0x2f8901.
    re::ReMap<Rva,re::ReVector<ReByte>> collections;
    re::ReMap<Rva,ReU64> scalar_globals;
    re::ReArray<ReByte,48> target_records{};
};
struct UnityFrameConfig {
    bool fov_changer{},zoom{},visibility_check{},outside_check{},auto_enemy{},aim_visibility{},looking_at{};
    float fov{},zoom_fov{}; ReI32 zoom_key{};
};
struct UnityFrameApi {
    UnityApi backend; const Snapshot* copied_game{};
    // [U] Domain entry points outside this unit are explicit adapters to other
    // reconstructed domains. A missing adapter stops, rather than fabricating work.
    re::ReFunction<re::ReOptional<UnityValue>(Rva,re::ReSpan<const UnityValue>)> domain;
    re::ReFunction<re::ReOptional<Address>(Address,ReU32)> copied_pointer;
    re::ReFunction<re::ReOptional<UnityDrawData>()> finalized_draw_data_3924bc;
    re::ReFunction<re::ReOptional<UnityBytes>(Rva,ReUSize)> embedded_bytes;
};
// [C] Controller covers entry..the alternate return at 0x2f8d9a and ret0x2f8dad.
UnityResult replay_unity_frame_2f8574(UnityFrameState&,UnityBackendState&,const UnityFrameApi&,
                                    const UnityFrameConfig&,Address client,Address game_assembly_base);
void check_unity_backend_reconstruction();
} // namespace rust_internal_re
