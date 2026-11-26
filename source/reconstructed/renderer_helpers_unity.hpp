#pragma once
#include "renderer_helpers_analysis.hpp"
#include "metadata_analysis.hpp"
namespace rust_internal_re {
struct RendererUnitySpec {
    Rva wrapper{},end{},flags{},target{},context{},resolver{};ReU32 signature{};
};
re::ReSpan<const RendererUnitySpec> renderer_unity_specs();
struct RendererUnityEnvironment { Address literal_storage{};ReUSize literal_capacity{512};MetadataLimits limits{}; };
struct RendererUnityCall { Rva wrapper{};Address target{},dispatcher{},context{},receiver{},argument0{},argument1{}; };
struct RendererUnityBackend {
    MetadataApi metadata;
    // [C/I] Connect existing concrete333d10 to its game metadata implementation; returns MethodInfo.
    re::ReFunction<MetadataResult(ReU32)> signature_333d10;
    re::ReFunction<Address(Address)> class_type_2cd7f4,type_object_2cea84;
    re::ReFunction<Address(re::ReStringView)> managed_string_2ce5dc;
    re::ReFunction<bool(const RendererUnityCall&)> object_implicit;
    re::ReFunction<ReI32(const RendererUnityCall&)> texture_dimension;
    re::ReFunction<Address(const RendererUnityCall&)> load_asset;
    // [I] Detection only; no context fabrication or numeric target execution.
    re::ReFunction<void(const RendererUnityCall&)> observe_context_2cbd24;
};
bool renderer_implicit_2ccc0c(Snapshot&,Address,const RendererUnityEnvironment&,RendererUnityBackend&);
ReI32 renderer_dimension_2cae08_2cae88(Snapshot&,Rva,Address,const RendererUnityEnvironment&,RendererUnityBackend&);
Address renderer_runtime_type_2ccbdc(Snapshot&,re::ReStringView klass,re::ReStringView name_space,
    const RendererUnityEnvironment&,RendererUnityBackend&);
Address renderer_asset_2caf28(Snapshot&,Address bundle,re::ReStringView path,Address type,
    const RendererUnityEnvironment&,RendererUnityBackend&);
RendererIconBackend bind_renderer_icon_unity(Snapshot&,const RendererUnityEnvironment&,RendererUnityBackend&,RendererIconBackend fallback={});
} // namespace rust_internal_re
