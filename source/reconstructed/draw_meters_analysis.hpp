#pragma once
#include "draw_shapes_analysis.hpp"
#include "unity_math_analysis.hpp"
namespace rust_internal_re {
// [I] Owned color values, or a copied native color address reread at each reached use.
struct DrawMetersColor {
    re::ReArray<float, 4> value{};
    re::ReOptional<Address> source{};
};
struct DrawMetersIntegerGeometry {
    ReI32 x{}, y{}, width{}, height{};
};
struct DrawMetersBackend {
    DrawShapesMath math;
    // [C] [I] Reuses native392dcc allocation/reset/texture/clip closure for foreground.
    RendererBackgroundBackend foreground;
    ReUSize maximum_segments{1000000};
};
// [I] Renderer Snapshot keys are module RVAs, as in the existing renderer domain.
struct DrawMetersContext {
    Snapshot &image;
    DrawCoreStore &store;
    const DrawShapesResources &resources;
    DrawMetersBackend &backend;
};
struct DrawMetersRing {
    Vec2 center{};
    float value{}, maximum{}, outer{}, inner{};
    DrawMetersColor color;
    bool rainbow{};
};
float draw_meters_remainder_3c8a6c(float, float);
re::ReArray<char, 13> draw_meters_decode_name_39eb2c(re::ReArray<ReU8, 13>);
re::ReArray<float, 4> draw_meters_hsv_3612f8(float hue, float saturation, float value, float alpha);
re::ReArray<float, 4> draw_meters_interpolate_362200(re::ReArray<float, 4>, re::ReArray<float, 4>,
                                                    float);
Address draw_meters_foreground_3925a4(DrawMetersContext &);
void draw_meters_ring_35ac38(DrawMetersContext &, const DrawMetersRing &);
void draw_meters_pulse_35b0fc(DrawMetersContext &, Vec2, float value, float maximum, float width,
                              float height);
void draw_meters_integer_35bab8(DrawMetersContext &, DrawMetersIntegerGeometry, float value,
                                float maximum);
void draw_meters_colored_35b850(DrawMetersContext &, Vec2, float value, float maximum, float width,
                                float height, const DrawMetersColor &);
void draw_meters_violation_35b508(DrawMetersContext &, Vec2, float first, float first_max,
                                  float second, float second_max);
void draw_meters_violation_35c938(DrawMetersContext &, Vec2, float first, float first_max,
                                  float second, float second_max, float third, float third_max);
void draw_meters_segmented_36232c(DrawMetersContext &, DrawMetersIntegerGeometry, float value,
                                  float maximum, ReI32 segments);
DrawShapesMath bind_draw_meters_math(Snapshot &, const UnityMathEnvironment &,
                                     const UnityMathEffects &);
// [C] [I] Returns false only for commands/roles owned by another completed domain.
// Native typed failures retain earlier geometry and copied-state writes.
bool draw_meters_world(DrawMetersContext &, const WorldDrawCommand &);
re::ReOptional<UnityValue> draw_meters_frame_role(DrawMetersContext &, Rva,
                                                 re::ReSpan<const UnityValue>);
UnityApi bind_draw_meters_frame(DrawMetersContext &, UnityApi fallback = {});
re::ReFunction<void(const WorldDrawCommand &)>
bind_draw_meters_world(DrawMetersContext &,
                       re::ReFunction<void(const WorldDrawCommand &)> fallback = {});
re::ReSpan<const RendererCoverage> draw_meters_coverage();
void check_draw_meters_reconstruction();
} // namespace rust_internal_re
