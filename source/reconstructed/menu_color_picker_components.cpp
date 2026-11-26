#include "menu_color_picker_internal.hpp"
namespace rust_internal_re {
void menu_color_picker_sv_37afd4(MenuControlsState &s, const MenuColorPickerApi &api,
                                 const re::ReArray<float, 4> &rgba, float hue, float &saturation,
                                 float &value, bool &edited) {
    using namespace picker_detail;
    const auto style = copy_style(s, 0x37b044);
    const auto w = window(s);
    const auto mouse = copy_mouse(s, 0x37b0e5);
    // [I]376760 copies the context solely into a discarded temporary here.
    // Owned bytes replace its private copied-container allocation/destruction.
    (void)read<re::ReArray<ReByte, 0x5e60>>(s, context(s), 0x37b0f8);
    const auto scale = read<float>(s, 0x248ee8, 0x37b10c);
    const auto p = read<Vec2>(s, w + 0x100, 0x37b11c);
    const auto padding = style.scalar(8) * 2.0f;
    const Vec2 size{scale * 230.0f - padding,
                    (read<float>(s, w + 0x28, 0x37b106) - padding) * 0.5f};
    const ClipRect box{p.x, p.y, p.x + size.x, p.y + size.y};
    const auto rgb = menu_color_picker_hsv_to_rgb_3904e0(hue, 1, 1);
    const auto hue_color = packed({rgb[0], rgb[1], rgb[2], style.scalar(0)});
    const auto alpha = ReU32(cvtt(saturate(style.scalar(0)) * 255.0f + 0.5f)) << 24;
    gradient(s, api, draw(s, w, 0x37b1ed), box,
             {alpha | 0xffffffu, hue_color, hue_color, alpha | 0xffffffu});
    gradient(s, api, draw(s, w, 0x37b23c), box, {0, 0, alpha, alpha});
    rounded_border(s, api, box, style_color(s, 5), style.scalar(0x44));
    const auto x =
        clamp(float(cvtt(width(box) * saturate(saturation) + box.x + 0.5f)), box.x + 2, box.z - 2);
    const auto y = clamp(float(cvtt(height(box) * saturate(1.0f - value) + box.y + 0.5f)),
                         box.y + 2, box.w - 2);
    circle(s, api, draw(s, w, 0x37b40f), {x, y}, 5.0f,
           font_text_color_2ef80c({rgba[0], rgba[1], rgba[2], style.scalar(0)}), true);
    const auto white = (ReU32(cvtt(style.scalar(0) * 255.0f)) << 24) | 0xffffffu;
    circle(s, api, draw(s, w, 0x37b44f), {x, y}, 5.0f, white, false);
    (void)invisible(s, api, "sv", size);
    if (menu_color_picker_item_active_393ff4(s)) {
        auto next = saturate((mouse.x - box.x) / (width(box) - 1.0f));
        saturation = 0.0f >= next ? 0.01f : next;
        next = 1.0f - saturate((mouse.y - box.y) / (height(box) - 1.0f));
        value = 0.0f >= next ? 0.01f : next;
        edited = true;
    }
}
float menu_color_picker_hue_37a0b8(MenuControlsState &s, const MenuColorPickerApi &api, float hue,
                                   bool &edited) {
    using namespace picker_detail;
    const auto style = copy_style(s, 0x37a12b);
    const auto w = window(s);
    const auto mouse = copy_mouse(s, 0x37a1cc);
    const auto p = read<Vec2>(s, w + 0x100, 0x37a1d1);
    const auto remaining = read<float>(s, w + 0x28, 0x37a1e4) -
                           (p.x - read<float>(s, w + 0x20, 0x37a1de)) - style.scalar(8);
    const auto h = read<float>(s, 0x248ee8, 0x37a1ea) * 8.0f;
    const Vec2 size{remaining, h};
    const ClipRect box{p.x, p.y, p.x + remaining, p.y + h};
    const auto alpha = ReU32(cvtt(saturate(style.scalar(0)) * 255.0f + 0.5f)) << 24;
    const re::ReArray<ReU32, 7> colors{
        alpha | 0xffu,     alpha | 0xffffu,   alpha | 0xff00u, alpha | 0xffff00u,
        alpha | 0xff0000u, alpha | 0xff00ffu, alpha | 0xffu};
    const auto segment = remaining / 6.0f;
    for (ReUSize i = 0; i < 6; ++i)
        gradient(s, api, draw(s, w, 0x37a319),
                 {box.x + float(i) * segment, box.y, box.x + float(i + 1) * segment, box.w},
                 {colors[i], colors[i + 1], colors[i + 1], colors[i]});
    rounded_border(s, api, box, style_color(s, 5), h * 0.5f);
    const auto rgb = menu_color_picker_hsv_to_rgb_3904e0(hue, 1, 1);
    const auto center_x = (remaining - h) * hue + (h * 0.5f + box.x);
    const auto center_y = (box.y + box.w) * 0.5f;
    circle(s, api, draw(s, w, 0x37a49a), {center_x, center_y},
           read<float>(s, 0x248ee8, 0x37a483) * 3.0f + h * 0.5f,
           packed({rgb[0], rgb[1], rgb[2], style.scalar(0)}), true);
    const auto white = (ReU32(cvtt(style.scalar(0) * 255.0f)) << 24) | 0xffffffu;
    circle(s, api, draw(s, w, 0x37a508), {center_x, center_y},
           read<float>(s, 0x248ee8, 0x37a532) * 3.0f + h * 0.5f, white, false);
    (void)invisible(s, api, "hue", size);
    if (menu_color_picker_item_active_393ff4(s)) {
        hue = saturate((mouse.x - p.x) / (width(box) + 1.0f));
        edited = true;
    }
    return hue;
}
void menu_color_picker_alpha_378f1c(MenuControlsState &s, const MenuColorPickerApi &api,
                                    const re::ReArray<float, 4> &rgba, float &alpha, bool &edited) {
    using namespace picker_detail;
    const auto style = copy_style(s, 0x378f8c);
    const auto w = window(s);
    const auto mouse = copy_mouse(s, 0x37903a);
    const auto scale = read<float>(s, 0x248ee8, 0x37903f);
    const Vec2 size{scale * 230.0f - style.scalar(8) * 2.0f, scale * 8.0f};
    const auto p = read<Vec2>(s, w + 0x100, 0x379070);
    const ClipRect box{p.x, p.y, p.x + size.x, p.y + size.y};
    checkerboard(s, api, draw(s, w, 0x3790e6), box, size.x / 60.0f);
    const auto transparent = font_text_color_2ef80c({rgba[0], rgba[1], rgba[2], 0});
    auto c = context(s);
    const auto top =
        font_text_color_2ef80c({rgba[0], rgba[1], rgba[2], read<float>(s, c + 0x37d0, 0x379154)});
    c = context(s);
    const auto bottom =
        font_text_color_2ef80c({rgba[0], rgba[1], rgba[2], read<float>(s, c + 0x37d0, 0x379187)});
    gradient(s, api, draw(s, w, 0x379123), box, {transparent, top, bottom, transparent});
    rounded_border(s, api, box, style_color(s, 5), height(box) * 0.5f);
    const auto indicator = unpack_color(packed(lerp_color(
        {1, 1, 1, style.scalar(0)}, {rgba[0], rgba[1], rgba[2], style.scalar(0)}, alpha)));
    const auto center_x = (size.x - height(box)) * alpha + (height(box) * 0.5f + box.x);
    const auto center_y = (box.y + box.w) * 0.5f;
    circle(s, api, draw(s, w, 0x379355), {center_x, center_y},
           read<float>(s, 0x248ee8, 0x379365) * 3.0f + height(box) * 0.5f,
           font_text_color_2ef80c(indicator), true);
    const auto white = (ReU32(cvtt(style.scalar(0) * 255.0f)) << 24) | 0xffffffu;
    circle(s, api, draw(s, w, 0x3793fe), {center_x, center_y},
           read<float>(s, 0x248ee8, 0x379426) * 3.0f + height(box) * 0.5f, white, false);
    (void)invisible(s, api, "alpha", size);
    if (menu_color_picker_item_active_393ff4(s)) {
        alpha = saturate((mouse.x - p.x) / (width(box) - 1.0f));
        edited = true;
    }
}
} // namespace rust_internal_re
