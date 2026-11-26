#pragma once
#include "imgui_window_details_analysis.hpp"

namespace rust_internal_re {
// [I] Shares authoritative splitter storage with EndColumns and draw-core buffers.
void imgui_window_details_switch_channel_3a8094(ImguiWindowDetailsState &, Address splitter,
                                                Address draw_list, ReI32 channel);
void menu_layout_clip_3b563c(ImguiWindowDetailsState &, Address window, Address rectangle);
void menu_layout_channel(ImguiWindowDetailsState &, Rva);
MenuControlsApi bind_menu_layout_channels(ImguiWindowDetailsState &, MenuControlsApi = {});
void check_menu_layout_channels();
} // namespace rust_internal_re
