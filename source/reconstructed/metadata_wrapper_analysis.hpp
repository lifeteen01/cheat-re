#pragma once
#include "metadata_export_analysis.hpp"
namespace rust_internal_re {
struct MetadataWrapperSpec {
    Rva wrapper{},end{},flags{},target{},context{},getter{},executor{};
};
re::ReSpan<const MetadataWrapperSpec> metadata_wrapper_specs();
// [C] Additional getter 3339f4 used by parameter-name wrapper 3351b8.
re::ReSpan<const MetadataExportSpec> metadata_wrapper_supplemental_export_specs();
ExportScanResult resolve_metadata_wrapper_export(Snapshot&,Address image_base,
    Address initial_loader_node,Rva getter,MetadataLimits = {});
// [I] Evidence-only descriptor for an excluded setup/executor invocation.
// [U] Its target/context are numeric keys and must never be executed.
struct MetadataWrapperCall {
    Rva wrapper{},executor{};
    Address dispatcher{},target{},context{};
};
struct MetadataWrapperEffects {
    // [U] Resolver may bind resolve_metadata_wrapper_export against copied bytes.
    re::ReFunction<ExportScanResult(Rva)> export_target;
    // [I] Detection-only observation of 2cbd24(dispatcher,context,target,0).
    re::ReFunction<void(const MetadataWrapperCall&)> observe_context_2cbd24;
    // [U] Matching IL2CPP effects are supplied, never called through an address.
    re::ReFunction<Address(const MetadataWrapperCall&)> domain_get;
    re::ReFunction<re::ReVector<Address>(const MetadataWrapperCall&,Address)> assemblies;
    re::ReFunction<Address(const MetadataWrapperCall&,Address)> assembly_image;
    re::ReFunction<Address(const MetadataWrapperCall&,Address,Address,Address)> class_from_name;
    re::ReFunction<Address(const MetadataWrapperCall&,Address,Address&)> next_method;
    re::ReFunction<Address(const MetadataWrapperCall&,Address,Address,ReI32)> method_from_name;
    re::ReFunction<ReI32(const MetadataWrapperCall&,Address)> parameter_count;
    re::ReFunction<Address(const MetadataWrapperCall&,Address)> method_name;
    // [C] Native MOV r9d,ebx forwards zero-extended index bits (335229).
    re::ReFunction<Address(const MetadataWrapperCall&,Address,ReU32)> parameter_name;
};
// [I] Carries missing effects/bytes through existing MetadataApi closures.
struct MetadataWrapperFailure {
    MetadataStatus status;
    Rva site;
    re::ReString reason;
    MetadataWrapperFailure(MetadataStatus s,Rva r)
        :status(s),site(r),reason("unavailable metadata wrapper dependency") {}
};
// [I] Returned closures borrow Snapshot, preserving native cache state and
// callback mutation ordering. The image must outlive the returned MetadataApi.
MetadataApi bind_metadata_wrappers(Snapshot&,Address image_base,MetadataWrapperEffects);
void check_metadata_wrapper_reconstruction();
} // namespace rust_internal_re
