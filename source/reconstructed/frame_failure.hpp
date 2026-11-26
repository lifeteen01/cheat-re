#pragma once
#include "frame_dependencies_analysis.hpp"
#include "analysis_failure.hpp"
#include "renderer_helpers_analysis.hpp"
namespace rust_internal_re {
void check_frame_failure_propagation();
// [I] Interface status conversion only; retain counters and committed state.
inline void frame_record_failure(FrameDependencyResult &result, const SnapshotBindingFailure &e) {
    result.status = e.status == GameBaseStatus::missing_bytes ? UnityStatus::unreadable_snapshot
                    : e.status == GameBaseStatus::missing_boundary ? UnityStatus::missing_dependency
                                                                   : UnityStatus::analysis_limit;
    result.stopped_at = e.site;
}
inline void frame_record_failure(FrameDependencyResult &result, const MetadataWrapperFailure &e) {
    result.status = e.status == MetadataStatus::unreadable_snapshot
                        ? UnityStatus::unreadable_snapshot
                    : e.status == MetadataStatus::analysis_limit ? UnityStatus::analysis_limit
                                                                 : UnityStatus::missing_dependency;
    result.stopped_at = e.site;
}
inline void frame_record_failure(FrameDependencyResult &result, const RendererMissing &e) {
    // RendererMissing identifies a required renderer input/dependency, but does
    // not encode a separate missing-byte/type category. Preserve its exact site.
    result.status = UnityStatus::missing_dependency;
    result.stopped_at = e.site;
}
} // namespace rust_internal_re
