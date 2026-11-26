#pragma once
#include "menu_color_picker_analysis.hpp"
#include "menu_controls_internal.hpp"
namespace rust_internal_re::picker_detail {
using namespace menu_detail;
struct CopiedStyle {
    re::ReArray<ReByte, 0x458> bytes;
    float scalar(ReUSize offset) const {
        float value;
        re::re_memcpy(&value, bytes.data() + offset, sizeof(value));
        return value;
    }
};
inline CopiedStyle copy_style(MenuControlsState &s, Rva site) {
    return {read<re::ReArray<ReByte, 0x458>>(s, context(s) + 0x37d0, site)};
}
inline Vec2 copy_mouse(MenuControlsState &s, Rva site) {
    // [I] The native ImGuiIO copy/temporary vector owns its bytes independently.
    // Copy scalar storage as data; native allocator/destructor ABI is adapted.
    const auto io = read<re::ReArray<ReByte, 0x37c8>>(s, context(s) + 8, site);
    Vec2 mouse;
    re::re_memcpy(&mouse, io.data() + 0xe00, sizeof(mouse));
    return mouse;
}
inline float width(ClipRect bounds) {
    return bounds.z - bounds.x;
}
inline float height(ClipRect bounds) {
    return bounds.w - bounds.y;
}
inline float saturate(float value) {
    return menu_color_picker_saturate_3789fc(value);
}
inline float clamp(float value, float lo, float hi) {
    return lo > value ? lo : minss(hi, value);
}
inline ReU32 packed(re::ReArray<float, 4> color) {
    return pack_color(color);
}
inline DrawCoreList &list(MenuControlsState &s, Address draw, Rva site) {
    auto found = s.draw ? s.draw->lists.find(draw) : re::ReOptional<DrawCoreList*>{};
    if (!found)
        { __builtin_trap(); }
    return **found;
}
inline const DrawShapesShared &shared(const MenuColorPickerApi &api, Address draw, Rva site) {
    auto found = api.shapes ? api.shapes->find(draw) : re::ReOptional<const DrawShapesShared*>{};
    if (!found)
        { __builtin_trap(); }
    return **found;
}
inline Address draw(MenuControlsState &s, Address w, Rva site) {
    return read<Address>(s, w + 0x298, site);
}
void gradient(MenuControlsState &, const MenuColorPickerApi &, Address, ClipRect,
              re::ReArray<ReU32, 4>);
void rounded_border(MenuControlsState &, const MenuColorPickerApi &, ClipRect, ReU32 border,
                    float rounding);
void circle(MenuControlsState &, const MenuColorPickerApi &, Address, Vec2, float, ReU32,
            bool filled);
bool invisible(MenuControlsState &, const MenuColorPickerApi &, re::ReStringView, Vec2);
void checkerboard(MenuControlsState &, const MenuColorPickerApi &, Address, ClipRect, float);
} // namespace rust_internal_re::picker_detail
