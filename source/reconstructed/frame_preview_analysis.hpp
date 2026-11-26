#pragma once
#include "frame_residuals_analysis.hpp"
namespace rust_internal_re {
struct FramePreviewAnimation {
    float hover{};
    ClipRect color{};
};
struct FramePreviewState {
    // [I] Owned copy of mutable native3d6db8; six104-byte records required.
    re::ReVector<RendererWidget> widgets;
    re::ReArray<ClipRect, 5> regions_3fc130{};
    re::ReArray<bool, 5> hovered_3fc120{};
    re::ReArray<ReI32, 6> counters_3e5cc8{};
    re::ReMap<ReU32, FramePreviewAnimation> palette_402d70;
};
FrameDependencyResult frame_preview_corners_37d7b0(FrameMenuState &, const FrameMainMenuApi &);
FrameDependencyResult frame_preview_skeleton_37db8c(FrameMenuState &, const FrameMainMenuApi &);
FrameDependencyResult frame_preview_widget_37df58(FramePreviewState &, ReUSize,
                                                  FrameMenuState &, const FrameMainMenuApi &,
                                                  ClipRect);
FrameDependencyResult frame_preview_365038(FramePreviewState &, FrameMenuState &,
                                           const FrameMainMenuApi &);
FrameMainMenuApi bind_frame_preview(FramePreviewState &, FrameMainMenuApi);
void check_frame_preview_reconstruction();
} // namespace rust_internal_re
