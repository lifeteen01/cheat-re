#pragma once
#include "metadata_analysis.hpp"
namespace rust_internal_re {
// [C] 0x2cc124 lowercases ASCII A..Z and sign-extends other bytes before FNV32.
ReU32 export_name_hash_2cc0fc(re::ReStringView,ReU32 seed);
struct ExportScanResult {
    Address value{};
    MetadataStatus status{MetadataStatus::complete};
    ReUSize modules{},names{};
};
// [I] initial_node is the copied loader-list first entry, supplied instead of GS/PEB
// access. No signatures/ordinal/forwarder guards are attributed to native code.
ExportScanResult scan_loader_exports(const Snapshot&,Address initial_node,ReU64 seed_and_hash,
    MetadataLimits = {});
struct MetadataExportSpec { Rva getter{},resolver{},cache{};ReU64 key{}; };
re::ReSpan<const MetadataExportSpec> metadata_export_specs();
// [C] Cached zero is retried. Cache is written only after a completed search.
// [U] Returned addresses are numeric evidence; no export/spoof executor is invoked.
ExportScanResult resolve_metadata_export(Snapshot&,Address image_base,Address initial_node,
    Rva getter,MetadataLimits = {});
void check_metadata_exports();
} // namespace rust_internal_re
