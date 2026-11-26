#pragma once
#include "menu_controls_analysis.hpp"
#include "draw_meters_analysis.hpp"
namespace rust_internal_re {
// [I] Owned adaptation of the native hash-keyed animation map405880.
struct MenuTooltipState {
    re::ReMap<ReU32, re::ReArray<float, 2>> animation_405880;
};
struct MenuTooltipApi {
    MenuControlsApi controls;
    // [C] Bind to the released first-viewport/foreground controller below.
    re::ReFunction<Address()> foreground_3925a4;
};
MenuControlResult menu_tooltip_389f18(MenuControlsState &, MenuTooltipState &,
                                    const MenuTooltipApi &, re::ReStringView label,
                                    re::ReStringView description, re::ReStringView glyph);
MenuTooltipApi bind_menu_tooltip_foreground(DrawMetersContext &, MenuTooltipApi = {});
MenuControlsApi bind_menu_tooltip(MenuControlsState &, MenuTooltipState &,
                                 const MenuTooltipApi &, MenuControlsApi = {});
void check_menu_tooltip_reconstruction();
} // namespace rust_internal_re
