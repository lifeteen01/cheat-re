#pragma once
#include "menu_controls_analysis.hpp"
#include "draw_shapes_analysis.hpp"
namespace rust_internal_re {
MenuControlsApi bind_menu_shape_primitives(DrawCoreStore &, const DrawShapesResources &,
                                           MenuControlsApi = {});
void menu_shape_arrow_3a7400(const Snapshot &, DrawCoreStore &, const DrawShapesResources &,
                             Address draw_list, Vec2 position, ReU32 color,
                             ReI32 direction, float scale);
MenuControlsApi bind_menu_shape_primitives(const Snapshot &, DrawCoreStore &,
                                           const DrawShapesResources &, MenuControlsApi = {});
void check_menu_render_bindings();
} // namespace rust_internal_re
