#pragma once
#include "frame_dependencies_menu.hpp"
#include "frame_dependencies_target.hpp"
namespace rust_internal_re {
struct FrameOverlayRequest {
    const Snapshot* game{};
    TargetSelectionInput targets;FrameTargetConfig target_config;FrameTargetApi target_api;
};
FrameDependencyResult frame_fit_text_318d74(FrameMenuState&,const FrameDependencyApi&,re::ReStringView,
                                          float width,Address font,re::ReString& output);
FrameDependencyResult replay_frame_inventory_307638(FrameMenuState&,const FrameDependencyApi&,const FrameOverlayRequest&);
// [I] Captures request provider; input bytes/registry views stay caller-owned.
UnityFrameApi bind_frame_inventory(FrameMenuState&,const FrameDependencyApi&,
    re::ReFunction<re::ReOptional<FrameOverlayRequest>()>,FrameDependencyResult&,UnityFrameApi={});
// [I] Routes all28 audited getters into owned snapshot reads, retaining the
// previous external adapter for matching Unity/IL2CPP and composite helpers.
FrameDependencyApi bind_frame_inventory_fields(const Snapshot&,FrameDependencyResult&,FrameDependencyApi={});
void check_frame_overlay_dependencies();
} // namespace rust_internal_re
