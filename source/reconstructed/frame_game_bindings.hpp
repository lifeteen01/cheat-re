#pragma once
#include "frame_dependencies_overlay.hpp"
#include "game_helpers_analysis.hpp"
#include "name_helpers_analysis.hpp"
namespace rust_internal_re {
FrameDependencyApi bind_frame_game_helpers(Snapshot&,const GameHelperEnvironment&,const GameHelperApi&,
    WorldNameState&,WorldNameBackend&,FrameDependencyResult& last,FrameDependencyApi = {});
void check_frame_game_bindings();
} // namespace rust_internal_re
