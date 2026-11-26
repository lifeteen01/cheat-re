#pragma once
#include "menu_controls_analysis.hpp"
#include "draw_shapes_analysis.hpp"
namespace rust_internal_re {
struct MenuColorPickerHexInput {
    re::ReString label{"##Input"}, hint;
    re::ReArray<char, 64> buffer{};
    Vec2 size{};
    ReU32 flags{};
};
// [I] Owned adaptation of ImGuiTextBuffer39e280; keys are copied buffer addresses.
struct MenuColorPickerLogStore {
    re::ReMap<Address, re::ReString> buffers;
    ReUSize maximum_bytes{1000000};
};
struct MenuColorPickerApi {
    MenuControlsApi controls;
    const DrawShapesResources *shapes{};
    // [U] Exact local text editor3c0538..3c2a7f, not a foreign widget claim.
    // Synchronous owned buffer; native callback/user pointers are null here.
    re::ReFunction<bool(MenuColorPickerHexInput &)> hex_input_3c0538;
    MenuColorPickerLogStore *logs{};
};
void menu_color_picker_log_text_394e5c(MenuControlsState &, const MenuColorPickerApi &,
                                       re::ReOptional<Vec2>, re::ReStringView);
bool menu_color_picker_item_active_393ff4(MenuControlsState &);
float menu_color_picker_saturate_3789fc(float);
re::ReArray<float, 3> menu_color_picker_rgb_to_hsv_39062c(float, float, float);
re::ReArray<float, 3> menu_color_picker_hsv_to_rgb_3904e0(float, float, float);
void menu_color_picker_restore_3795d4(MenuControlsState &, re::ReArray<float, 4>,
                                      re::ReArray<float, 3> &);
void menu_color_picker_sv_37afd4(MenuControlsState &, const MenuColorPickerApi &,
                                 const re::ReArray<float, 4> &, float hue, float &saturation,
                                 float &value, bool &edited);
float menu_color_picker_hue_37a0b8(MenuControlsState &, const MenuColorPickerApi &, float,
                                   bool &edited);
void menu_color_picker_alpha_378f1c(MenuControlsState &, const MenuColorPickerApi &,
                                    const re::ReArray<float, 4> &, float &alpha, bool &edited);
MenuControlResult menu_color_picker_379680(MenuControlsState &, const MenuColorPickerApi &,
                                           re::ReStringView, re::ReArray<float, 4> &);
MenuControlsApi bind_menu_color_picker(MenuControlsState &, const MenuColorPickerApi &,
                                       MenuControlsApi = {});
void check_menu_color_picker_reconstruction();
} // namespace rust_internal_re
