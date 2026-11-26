#pragma once
#include "menu_controls_analysis.hpp"
#include "drawlist_core_analysis.hpp"
namespace rust_internal_re {
struct ImguiNavigationApi {
    // [U] True allocation leaves; bind concrete draw-core allocator counters.
    re::ReFunction<Address(Address, Address, ReUSize)> allocate;
    re::ReFunction<void(Address, Address, Address)> free;
    ReUSize maximum_text_bytes{1048576};
};
void imgui_navigation_cancel_395810(MenuControlsState &);
void imgui_navigation_result_395258(MenuControlsState &, Address result);
bool imgui_navigation_score_395db8(MenuControlsState &, Address result);
void imgui_navigation_tab_395bc4(MenuControlsState &, ReU32 id, ReU32 item_flags,
                                 ReU32 move_flags);
void imgui_navigation_deactivate_3c04d0(MenuControlsState &, const ImguiNavigationApi &,
                                        ReU32 id);
ReU32 imgui_navigation_anonymous_392654(MenuControlsState &, Address window, ClipRect);
MenuControlsApi bind_imgui_navigation(MenuControlsState &, const ImguiNavigationApi &,
                                      MenuControlsApi fallback = {});
float navigation_interval_396134(float minimum, float maximum,
                                 float reference_minimum, float reference_maximum);
ReU32 navigation_quadrant_3932b0(float x, float y);
void navigation_finish_395878(MenuControlsState &, Address result);
void check_imgui_navigation_reconstruction();
} // namespace rust_internal_re
