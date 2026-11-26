#pragma once
#include "internal_analysis.hpp"

namespace rust_internal_re {
// [I] Analysis-only dependency boundary for the IL2CPP export adapters.
// [U] Export implementations and calling conventions require matching game artifacts.
// [C] These roles are called from 0x334224/0x33416c/0x334960/0x3349ac.
struct MetadataApi {
    re::ReFunction<Address()> domain_get_33479c;
    re::ReFunction<re::ReVector<Address>(Address)> assemblies_33480c;
    re::ReFunction<Address(Address)> assembly_image_3344b0;
    re::ReFunction<Address(Address, Address, Address)> class_from_name_334528;
    re::ReFunction<Address(Address, Address&)> next_method_334660;
    re::ReFunction<Address(Address, Address, ReI32)> method_from_name_3345c4;
    re::ReFunction<ReI32(Address)> parameter_count_335140;
    re::ReFunction<Address(Address)> method_name_335040;
    re::ReFunction<Address(Address,ReI32)> parameter_name_3351b8;
};
enum class MetadataStatus { complete, missing_dependency, unreadable_snapshot, analysis_limit };
struct MetadataResult {
    Address value{};
    MetadataStatus status{MetadataStatus::complete};
    ReUSize visited{};
};
// [I] Finite bounds are analyst additions, not sample behavior.
struct MetadataLimits { ReUSize iterations{100000}, string_bytes{4096}; };
// [C] 0x334224 passes namespace as rdx and class name as r8 to 0x334528.
MetadataResult resolve_class_334224(const MetadataApi&, Address class_name, Address namespace_name,
                                  MetadataLimits = {});
MetadataResult method_by_pointer_334960(const Snapshot&, const MetadataApi&, Address klass,
                                      Address expected_code, MetadataLimits = {});
// [C] occurrence==0 delegates to the export adapter; the custom branch selects
// DIFFERENT names (strcmp != 0 at 0x3341b7/0x3341b9). This is intentionally literal.
MetadataResult select_method_33416c(const Snapshot&, const MetadataApi&, Address klass,
                                  Address method_name, ReI32 parameter_count,
                                  ReI32 occurrence, MetadataLimits = {});
// [C] 0x3349ac optionally compares a parameter name at +0x28 + index*24 - 24.
// [U] The declaration is an observed memory operation, not a verified IL2CPP struct.
MetadataResult select_parameter_method_3349ac(const Snapshot&, const MetadataApi&, Address klass,
                                            Address method_name, ReI32 parameter_index,
                                            Address parameter_name, ReI32 required_count,
                                            MetadataLimits = {});
// [C] 0x334a90: nullable equal-name comparison followed by an exact count match.
MetadataResult select_counted_method_334a90(const Snapshot&,const MetadataApi&,Address klass,
    Address method_name,ReI32 required_count,MetadataLimits = {});
// [C] Full guarded/export-name variant, including class lookup and nonnegative
// parameter-index paths that are distinct from direct-field selector3349ac.
MetadataResult resolve_export_named_method_333bf4(const Snapshot&,const MetadataApi&,
    Address class_name,Address method_name,ReI32 required_count,Address parameter_name,
    Address namespace_name,ReI32 parameter_index,MetadataLimits = {});
// [I] Offline fixture entry point, supplied by metadata_checks.cpp.
void check_metadata_reconstruction();
} // namespace rust_internal_re
