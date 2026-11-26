#pragma once
#include "sky_model_analysis.hpp"
#include "metadata_export_analysis.hpp"
namespace rust_internal_re {
// [I] Borrowed owned-snapshot binding. Numeric targets remain evidence keys;
// supplied typed Unity/IL2CPP effects are unchanged.
SkyModelApi bind_sky_model_exports(Snapshot&,Address module,Address initial_loader_node,
    SkyModelApi = {},MetadataLimits = {});
} // namespace rust_internal_re
