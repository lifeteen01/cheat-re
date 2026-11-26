#pragma once
#include "draw_shapes_analysis.hpp"
#include "renderer_helpers_world.hpp"
#include "unity_math_analysis.hpp"
#include "draw_meters_analysis.hpp"
namespace rust_internal_re {
DrawShapesMath bind_draw_shapes_math(Snapshot &, const UnityMathEnvironment &,
                                     const UnityMathEffects &);
// [I] All borrowed objects must outlive the returned immediate output handle.
WorldDrawOutput
bind_world_shape_output(re::ReVector<WorldDrawCommand> &, Snapshot &, Address module,
                        RendererBackgroundBackend &, DrawCoreStore &, const DrawShapesResources &,
                        re::ReFunction<void(const WorldDrawCommand &)> font_image = {},
                        DrawShapesMath math = {});
void check_world_render_bindings();
WorldDrawOutput
bind_world_meter_output(re::ReVector<WorldDrawCommand> &, Address module,
                        RendererBackgroundBackend &, DrawMetersContext &,
                        re::ReFunction<void(const WorldDrawCommand &)> font_image = {},
                        DrawShapesMath math = {});
} // namespace rust_internal_re
