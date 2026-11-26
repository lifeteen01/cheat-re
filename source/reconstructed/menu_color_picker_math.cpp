#include "menu_color_picker_analysis.hpp"
#include "menu_controls_internal.hpp"
#include "draw_meters_analysis.hpp"
namespace rust_internal_re {
float menu_color_picker_saturate_3789fc(float value) {
    return 0.0f > value ? 0.0f : menu_detail::minss(1.0f, value);
}
re::ReArray<float, 3> menu_color_picker_rgb_to_hsv_39062c(float red, float green, float blue) {
    float k = 0;
    if (blue > green) {
        re::re_swap(green, blue);
        k = -1.0f;
    }
    if (green > red) {
        re::re_swap(red, green);
        k = -0x1.555556p-2f - k;
    }
    const float chroma = red - menu_detail::minss(green, blue);
    const float quotient = (green - blue) / (chroma * 6.0f + 0x1.79ca1p-67f) + k;
    const float hue = re::re_bit_cast<float>(re::re_bit_cast<ReU32>(quotient) & 0x7fffffffu);
    return {hue, chroma / (red + 0x1.79ca1p-67f), red};
}
re::ReArray<float, 3> menu_color_picker_hsv_to_rgb_3904e0(float hue, float saturation, float value) {
    // [C] Released3612f8 consumes this same3904e0 body and literal1/6.
    const auto rgba = draw_meters_hsv_3612f8(hue, saturation, value, 0);
    return {rgba[0], rgba[1], rgba[2]};
}
void menu_color_picker_restore_3795d4(MenuControlsState &s, re::ReArray<float, 4> rgba,
                                      re::ReArray<float, 3> &hsv) {
    using namespace menu_detail;
    const auto c = context(s);
    const auto cached_color = read<ReU32>(s, c + 0x5b50, 0x379610);
    rgba[3] = 0;
    if (cached_color != pack_color(rgba))
        return;
    const auto cached_hue = read<float>(s, c + 0x5b48, 0x37963e);
    if (hsv[1] == 0 || (hsv[0] == 0 && cached_hue == 1))
        hsv[0] = cached_hue;
    if (hsv[2] == 0)
        hsv[1] = read<float>(s, c + 0x5b4c, 0x379666);
}
bool menu_color_picker_item_active_393ff4(MenuControlsState &s) {
    const auto c = menu_detail::context(s);
    const auto active = menu_detail::read<ReU32>(s, c + 0x3f68, 0x393ffb);
    return active && active == menu_detail::read<ReU32>(s, c + 0x47a4, 0x394005);
}
} // namespace rust_internal_re
