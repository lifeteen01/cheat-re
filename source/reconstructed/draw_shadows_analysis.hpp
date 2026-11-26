#pragma once
#include "draw_shapes_analysis.hpp"
#include "menu_controls_analysis.hpp"
namespace rust_internal_re {
// [I] Copied atlas entries: nine rectangle cells followed by the convex-edge UV.
// Atlas dimensions are signed native integers. No texture or pixels are synthesized.
struct DrawShadowsShared {
    re::ReArray<re::ReArray<float, 4>, 10> uv{};
    ReI32 atlas_width{}, atlas_height{};
    re::ReOptional<ReU8> circle_zero_radius_count{};
};
using DrawShadowsResources = re::ReMap<Address, DrawShadowsShared>;
DrawShadowsShared copy_draw_shadows_shared(const Snapshot &, Address shared);
// [C] 0x3a6554..0x3a6588: Vec2 magnitude with zero-fallback; calls sample_sqrt_2e3c88
// [C] via 0x3c8f34 when squared magnitude exceeds the literal 0.0f at 0x28d24c.
float draw_shadows_safe_length_3a6554(const Vec2 &v, float fallback);
// [C] 0x37ca00..0x37ca2a: Vec2 component-wise division by scalar, result via vec2_store 0x2cc340.
Vec2 draw_shadows_divide_scalar_37ca00(const Vec2 &v, float divisor);
// [C] 0x38bc2c..0x38bc56: Vec2 component-wise division by Vec2, result via vec2_store 0x2cc340.
Vec2 draw_shadows_divide_component_38bc2c(const Vec2 &numerator, const Vec2 &denominator);
// [C] 0x39f728..0x39f73a: in-place Vec2 scale by scalar using packed SSE multiply.
Vec2 &draw_shadows_scale_inplace_39f728(Vec2 &v, float scalar);
// [C] Returns0 for an empty result, -1 when the supplied native output extent is too small.
ReI32 draw_shadows_clip_3a3ea4(re::ReSpan<const Vec2>, Vec2 minimum, Vec2 maximum,
                                      re::ReSpan<Vec2> output);
void draw_shadows_subtract_rect_3a2b34(DrawCoreList &, Vec2 minimum, Vec2 maximum, Vec2 uv_minimum,
                                       Vec2 uv_maximum, Vec2 hole_minimum, Vec2 hole_maximum,
                                       ReU32 color);
void draw_shadows_subtract_polygon_3a2374(DrawCoreList &, Vec2 minimum, Vec2 maximum,
                                          Vec2 uv_minimum, Vec2 uv_maximum,
                                          re::ReSpan<const Vec2> hole, ReU32 color);
void draw_shadows_convex_3a1564(DrawCoreList &, const DrawShadowsShared &, re::ReSpan<const Vec2>,
                                ReU32 color, float thickness, Vec2 offset,
                                ReI32 flags);
void draw_shadows_rect_3a2010(DrawCoreList &, const DrawShapesShared &, const DrawShadowsShared &,
                              Vec2 minimum, Vec2 maximum, ReU32 color, float thickness,
                              Vec2 offset, ReI32 flags, float rounding);
void draw_shadows_circle_3a1410(DrawCoreList &, const DrawShapesShared &, const DrawShadowsShared &,
                                Vec2 center, float radius, ReU32 color, float thickness,
                                Vec2 offset, ReI32 flags, ReI32 segments);
MenuControlsApi bind_menu_shadows(DrawCoreStore &, const DrawShapesResources &,
                                  const DrawShadowsResources &, MenuControlsApi = {});
void check_draw_shadows_reconstruction();
} // namespace rust_internal_re
