#pragma once
#include "frame_preview_analysis.hpp"
#include "frame_residuals_detail.hpp"
#include "menu_controls_analysis.hpp"
namespace rust_internal_re::frame_preview_detail {
using namespace frame_residual_detail;
inline Vec2 pair(const FrameMenuState &state, Rva at) {
    return {number(state, at), number(state, at + 4)};
}
inline Vec2 position(const FrameMainMenuApi &api) {
    return get<Vec2>(api, 0x392ef8);
}
inline Vec2 center(const FrameMenuState &state) {
    return pair(state, 0x248f18);
}
inline ReI32 color(const FrameMainMenuApi &api, ReI32 slot, float alpha = 1) {
    return get<ReI32>(api, 0x392298, {slot, alpha});
}
inline ReI32 packed(const FrameMainMenuApi &api, ClipRect rgba) {
    return get<ReI32>(api, 0x2ef80c, {rgba});
}
inline float delta(const FrameMainMenuApi &api) {
    const auto io = get<Address>(api, 0x3926ac);
    return read<float>(api, io + 0x10, 0x3926ac);
}
inline void line(const FrameMainMenuApi &api, Address draw, Vec2 p, Vec2 q, ReI32 c,
                 float width) {
    call(api, 0x3a01f4, {draw, p, q, c, width});
}
inline void rect(const FrameMainMenuApi &api, Address draw, Vec2 p, Vec2 q, ReI32 c,
                 float rounding, ReI32 flags = 0) {
    call(api, 0x3a1244, {draw, p, q, c, rounding, flags});
}
inline void text(const FrameMainMenuApi &api, Address draw, Vec2 p, ReI32 c,
                 re::ReString value) {
    call(api, 0x3a31bc, {draw, p, c, re::re_move(value), Address(0)});
}
inline Vec2 measure(const FrameMainMenuApi &api, Address font, float size, re::ReStringView value) {
    if (!api.imgui)
        stop(UnityStatus::missing_dependency, 0x3a3874);
    /* FREESTANDING: was try/catch RendererMissing */
    return renderer_measure_3a3874(read_renderer_font(*api.imgui, font),
                                   {size, re::ReNumericLimits<float>::max(), 0, value, {}})
        .size;
}
inline Vec2 current_measure(const FrameMainMenuApi &api, re::ReStringView value) {
    if (!api.imgui)
        stop(UnityStatus::missing_dependency, 0x38f79c);
    /* FREESTANDING: was try/catch RendererMissing */
    return renderer_measure_38f79c(*api.imgui, api.context, value, {}, false, -1).size;
}
inline bool hover(const FrameMainMenuApi &api, ClipRect bounds) {
    return get<bool>(api, 0x3944ac, {Vec2{bounds.x, bounds.y}, Vec2{bounds.z, bounds.w}, true});
}
inline ClipRect bounds(const RendererWidget &widget) {
    return re::re_bit_cast<ClipRect>(widget.bytes_50);
}
inline Vec2 offset(const RendererWidget &widget) {
    return re::re_bit_cast<Vec2>(widget.bytes_24);
}
inline void set_offset(RendererWidget &widget, Vec2 value) {
    widget.bytes_24 = re::re_bit_cast<re::ReArray<ReByte, 8>>(value);
}
void preview_palette(FramePreviewState &, RendererWidget &, FrameMenuState &,
                     const FrameMainMenuApi &);
} // namespace rust_internal_re::frame_preview_detail
