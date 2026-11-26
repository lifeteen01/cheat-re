#pragma once
#include "offset_profile.hpp"

namespace re_base {
// Analyst-assigned context identifiers, not recovered SDK names. Reference
// values document the historical sample; all consumers use profile values.
struct OffsetCatalogSpec {
    re::ReStringView key;
    OffsetKind kind;
    re::ReStringView module;
    ReU64 reference_value;
    re::ReStringView source_site;
    re::ReStringView description;
};
re::ReSpan<const OffsetCatalogSpec> offset_catalog_specs();
// Extra application keys are permitted; every catalog key must be present.
ProfileResult validate_catalog_profile(const OffsetProfile &);
OffsetProfile historical_offset_profile();
void check_offset_catalog();
}
