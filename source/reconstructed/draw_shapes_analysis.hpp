#pragma once
#include "drawlist_core_analysis.hpp"
#include "font_text_analysis.hpp"
#include "world_esp_analysis.hpp"
#include "unity_backend_analysis.hpp"
namespace rust_internal_re {
// [I] Copied ImDrawListSharedData values, never a live ABI or synthesized atlas.
struct DrawShapesShared {
    Vec2 white_uv{};
    float circle_error{}, arc_fast_radius_cutoff{};
    re::ReArray<Vec2, 48> arc_fast{};
    re::ReArray<ReU8, 64> circle_segments{};
    re::ReOptional<re::ReArray<re::ReArray<float, 4>, 64>> line_uv;
};
using DrawShapesResources = re::ReMap<Address, DrawShapesShared>; // drawlist numeric key
DrawShapesShared copy_draw_shapes_shared(const Snapshot &, Address shared);
float draw_shapes_inverse_length_3a6594(float); // [C] RSQRTSS, not sample root.
float draw_shapes_sine_3c8e6c(float);
float draw_shapes_acos_3c852c(float);
void draw_shapes_polyline_3a0294(DrawCoreList &, const DrawShapesShared &, re::ReSpan<const Vec2>,
                                 ReU32, ReI32 flags, float thickness);
void draw_shapes_convex_39f928(DrawCoreList &, const DrawShapesShared &, re::ReSpan<const Vec2>,
                               ReU32);
void draw_shapes_path_stroke_398758(DrawCoreList &, const DrawShapesShared &, ReU32,
                                    ReI32, float);
void draw_shapes_path_fill_378a14(DrawCoreList &, const DrawShapesShared &, ReU32);
void draw_shapes_arc_fast_3a8eec(DrawCoreList &, const DrawShapesShared &, Vec2, float radius,
                                 ReI32 minimum, ReI32 maximum, ReI32 step = 0);
// [C] Fixed-count local arc needs no shared-data input.
void draw_shapes_arc_fixed_3a9110(DrawCoreList &, Vec2 center, float radius, float minimum,
                                  float maximum, ReI32 segments);
void draw_shapes_arc_3a684c(DrawCoreList &, const DrawShapesShared &, Vec2, float radius,
                            float minimum, float maximum, ReI32 segments = 0);
void draw_shapes_path_rect_lazy_3a6b78(DrawCoreList &,
                                       const re::ReFunction<const DrawShapesShared &()> &, Vec2,
                                       Vec2, float rounding, ReI32 flags);
void draw_shapes_path_rect_3a6b78(DrawCoreList &, const DrawShapesShared &, Vec2, Vec2,
                                  float rounding, ReI32 flags);
void draw_shapes_line_3a01f4(DrawCoreList &, const DrawShapesShared &, Vec2, Vec2, ReU32,
                             float);
void draw_shapes_rect_3a1148(DrawCoreList &, const DrawShapesShared &, Vec2, Vec2, ReU32,
                             float rounding, ReI32 flags, float thickness);
void draw_shapes_rect_filled_3a1244(DrawCoreList &, const DrawShapesShared &, Vec2, Vec2,
                                    ReU32, float rounding, ReI32 flags);
void draw_shapes_gradient_3a12d8(DrawCoreList &, const DrawShapesShared &, Vec2, Vec2,
                                 re::ReArray<ReU32, 4>);
void draw_shapes_triangle_3a3338(DrawCoreList &, const DrawShapesShared &, Vec2, Vec2, Vec2,
                                 ReU32);
void draw_shapes_circle_39f7ac(DrawCoreList &, const DrawShapesShared &, Vec2, float, ReU32,
                               ReI32 segments, float thickness);
void draw_shapes_circle_filled_39f874(DrawCoreList &, const DrawShapesShared &, Vec2, float,
                                      ReU32, ReI32 segments = 0);
// [C/I] Offline argument dispatch for consumed direct ImDrawList primitive roles.
// Unrecognized roles return nullopt; malformed/missing reached inputs throw RendererMissing.
re::ReOptional<UnityValue> draw_shapes_frame_role(DrawCoreStore &, const DrawShapesResources &, Rva,
                                                 re::ReSpan<const UnityValue>);
UnityApi bind_draw_shapes_frame(DrawCoreStore &, const DrawShapesResources &,
                                UnityApi fallback = {});
// [U] Matching Unity trigonometry results, supplied effects in native call order.
struct DrawShapesMath {
    re::ReFunction<float(float)> sin_2e0198, cos_2dff68;
};
void draw_shapes_custom_ring_35c578(Snapshot &, Address module, DrawCoreStore &,
                                    const DrawShapesResources &, Vec2, float radius,
                                    ReU32 color, bool direction, float yaw,
                                    const DrawShapesMath &math = {});
void draw_shapes_glow_35c30c(Snapshot &, Address module, DrawCoreStore &,
                             const DrawShapesResources &, const WorldGlowLineDraw &);
// [I] Font/image domains may be supplied separately; reached untranslated local
// meter roles fail with exact site/target, never foreign success.
void draw_shapes_world(Snapshot &, Address module, DrawCoreStore &, const DrawShapesResources &,
                       const WorldDrawCommand &,
                       const re::ReFunction<void(const WorldDrawCommand &)> &font_image = {},
                       const re::ReFunction<Address(Rva source_site)> &raw_draw_list = {},
                       const DrawShapesMath &math = {});
re::ReSpan<const RendererCoverage> draw_shapes_coverage();
void check_draw_shapes_reconstruction();
} // namespace rust_internal_re
