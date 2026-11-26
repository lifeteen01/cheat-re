#pragma once
#include "internal_analysis.hpp"

namespace rust_internal_re {
// [I] Comprehensive RVA-to-human-readable-name mapping, assembled from byte-verified
// field getter specs, game helper/base analysis, aim/weapon/projectile call sites,
// metadata wrapper specs, and ESP/movement controller usage.
// [C] Each entry's RVA is byte-confirmed as a function entry in the DLL.
// [I] Names are analyst-assigned semantic roles inferred from usage context;
// [U] original obfuscated C# method/field names are not recovered.

struct RvaNameEntry {
    Rva rva{};
    re::ReStringView name;
    re::ReStringView category;
    re::ReStringView notes;
};

// [I] Returns the full table, sorted by RVA. Caller can binary-search or linear-scan.
re::ReSpan<const RvaNameEntry> rva_name_table();

// [I] Convenience lookup; returns nullptr if the RVA has no entry.
const RvaNameEntry* rva_name_lookup(Rva rva);

// [I] Format an RVA as "name (0xRVA)" if known, or "0xRVA" if unknown.
re::ReString rva_name_format(Rva rva);

void check_rva_name_table();
} // namespace rust_internal_re
