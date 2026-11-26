#pragma once
#include "frame_dependencies_menu.hpp"
namespace rust_internal_re {
ClipRect frame_color_2db318(ReI32 r,ReI32 g,ReI32 b,ReI32 a);
void initialize_frame_colors_386acc(FrameMenuState&);
void initialize_frame_style_389220(FrameMenuState&);
FrameDependencyResult setup_frame_ui_35ccf4(FrameMenuState&,FrameDependencyState&,const FrameDependencyApi&);
UnityFrameApi bind_frame_ui_setup(FrameMenuState&,FrameDependencyState&,const FrameDependencyApi&,
                                FrameDependencyResult&,UnityFrameApi={});
void check_frame_ui_setup_dependencies();
} // namespace rust_internal_re
