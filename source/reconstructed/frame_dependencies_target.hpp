#pragma once
#include "frame_dependencies_analysis.hpp"
#include "game_base_analysis.hpp"
namespace rust_internal_re {
struct FrameTargetConfig {
    TargetConfig eligibility;
    re::ReArray<bool,7> hotbar_options{};
    bool include_friends{};
};
struct FrameTargetApi {
    TargetCalls calls;
    re::ReFunction<ReI32()> width_2e0af0,height_2e09f0;
};
struct FrameTargetResult {FrameDependencyResult result;Address selected{};ReI32 best{9999};};
// [C] 314bb4 uses a signed INTEGER best score and compares screen distance against
// Player/ScientistMaxDistance as well as AimbotFOV. Its return has no retained cache.
FrameTargetResult select_frame_target_314bb4(const TargetSelectionInput&,const FrameTargetConfig&,const FrameTargetApi&);
void check_frame_target_dependencies();
} // namespace rust_internal_re
