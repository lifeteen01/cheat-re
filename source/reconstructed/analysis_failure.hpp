#pragma once
#include "snapshot_bindings.hpp"
#include "metadata_wrapper_analysis.hpp"
namespace rust_internal_re {
// [I] Offline interface conversion only; these statuses are not a native ABI.
// Preserve the reached dependency RVA and all writes committed before failure.
constexpr GameBaseStatus game_base_status(MetadataStatus status) {
    switch(status) {
    case MetadataStatus::complete:return GameBaseStatus::complete;
    case MetadataStatus::missing_dependency:return GameBaseStatus::missing_boundary;
    case MetadataStatus::unreadable_snapshot:return GameBaseStatus::missing_bytes;
    case MetadataStatus::analysis_limit:return GameBaseStatus::analysis_limit;
    }
    return GameBaseStatus::missing_boundary;
}
} // namespace rust_internal_re
