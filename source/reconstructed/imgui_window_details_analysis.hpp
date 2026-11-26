#pragma once
#include "imgui_windows_analysis.hpp"
#include "draw_shapes_analysis.hpp"
#include "aim_iteration_analysis.hpp"
namespace rust_internal_re {
// [I] Copied state and owned splitters, never native allocator/table/widget ABI.
struct ImguiWindowDetailsState {
    ImguiWindowsState *windows{};
    re::ReMap<Address, DrawCoreSplitter> column_splitters;
};
struct ImguiWindowDetailsApi {
    FontTextStore *fonts{};
    FontTextSink *text_sink{};
    const DrawShapesResources *shape_resources{};
    // [U] Native configured clipboard target is numeric data; only a supplied
    // owned-data leaf may consume it. No host clipboard operation is performed.
    re::ReFunction<void(Address target, Address user, re::ReStringView)> clipboard_leaf;
    re::ReFunction<void(Vec2, re::ReStringView)> log_rendered_text_394e5c;
    re::ReFunction<void(Address)> start_mouse_move_39be68;
};
void imgui_window_details_menu_columns_3bd06c(ImguiWindowDetailsState &, Address, bool);
Address imgui_window_details_settings_391dd0(ImguiWindowDetailsState &, Address);
void imgui_window_details_log_text_394e5c(ImguiWindowDetailsState &, const ImguiWindowsApi &,
                                          re::ReOptional<Vec2>, re::ReStringView);
Address imgui_window_details_table_3921c0(ImguiWindowDetailsState &, ReI32);
void imgui_window_details_log_finish_394dd4(ImguiWindowDetailsState &,
                                            const ImguiWindowDetailsApi &, const ImguiWindowsApi &);
void imgui_window_details_nav_initialize_395500(ImguiWindowDetailsState &, Address, bool);
void imgui_window_details_nav_highlight_3997ac(ImguiWindowDetailsState &, const ImguiWindowsApi &,
                                               ClipRect, ReU32, ReU32);
void imgui_window_details_shadow_39a64c(ImguiWindowDetailsState &, const ImguiWindowsApi &,
                                        Address);
Vec2 imgui_window_details_auto_position_39138c(ImguiWindowDetailsState &, Address);
void imgui_window_details_title_39a7a8(ImguiWindowDetailsState &, const ImguiWindowDetailsApi &,
                                       const ImguiWindowsApi &, Address, ClipRect, re::ReStringView,
                                       re::ReOptional<Address>);
void imgui_window_details_end_columns_3b4f94(ImguiWindowDetailsState &, const ImguiWindowsApi &);
void imgui_window_details_scrollbar_3c3234(ImguiWindowDetailsState &, const ImguiWindowsApi &,
                                           ReI32);
void imgui_window_details_decorations_399d88(ImguiWindowDetailsState &,
                                             const ImguiWindowDetailsApi &, const ImguiWindowsApi &,
                                             Address, ClipRect, bool, bool, ReI32,
                                             const re::ReArray<ReU32, 4> &, float);
ImguiWindowResize imgui_window_details_resize_39d760(ImguiWindowDetailsState &,
                                                     const ImguiWindowsApi &, Address, Vec2,
                                                     ReI32, ClipRect);
ImguiWindowsApi bind_imgui_window_details(ImguiWindowDetailsState &, const ImguiWindowDetailsApi &,
                                          ImguiWindowsApi = {});
void check_imgui_window_details_reconstruction();
// --- RVA name table: utility math (imgui_window_details_utility.cpp) ---
float fabs_2e3ef0(float);
void float_swap_38a3fc(float &, float &);
ReI64 signed_max_3b5b74(ReI64, ReI64);
float rect_area_3bfebc(ClipRect);
void rect_translate_39c044(ClipRect &, Vec2);
void rect_expand_inplace_3911cc(ClipRect &, Vec2);
bool rect_contains_390790(ClipRect, ClipRect);
Vec2 vec2_mul_38bbdc(Vec2, Vec2);
Vec2 vec2_min_383070(Vec2, Vec2);
Vec2 vec2_max_383044(Vec2, Vec2);
Vec2 vec2_scale_38bc08(float, Vec2);
void rect_split_38bab4(ClipRect, Vec2 &, Vec2 &);
ClipRect rect_build_38baf4(float, float, float, float);
Vec2 vec2_lerp_39340c(Vec2, Vec2, Vec2);
Vec2 rect_xw_392130(ClipRect);
Vec2 rect_center_3788f4(ClipRect);
Vec2 vec2_clamp_rect_393018(Vec2, Vec2, Vec2);
// Note: element_stride88 (0x38bbc0) is in helpers as element_stride_58_38bbc0
// Note: find_newline (0x393520) is in helpers with Snapshot variant
// --- RVA name table: format string (imgui_window_details_format.cpp) ---
void format_char_3ca49c(ReByte, Address, ReU64, ReU64);
StaticDispatchResult describe_format_process_3c9ab0();
StaticDispatchResult describe_format_snprintf_3ca500();
StaticDispatchResult describe_format_reorder_3ca828();
Address format_table_2d963c();
ReI32 describe_format_invoke_2d96c0();
StaticDispatchResult describe_format_invoke_null_3214dc();
// --- RVA name table: helpers (imgui_window_details_helpers.cpp) ---
ReU32 hash_id_3925e8(ImguiWindowDetailsState &, Address, ReU32);
void push_scope_398b04(ImguiWindowDetailsState &, const ImguiWindowsApi &, re::ReStringView);
void pop_id_398878(ImguiWindowDetailsState &);
void pop_width_3988d0(ImguiWindowDetailsState &);
Address get_viewport_392868(ImguiWindowDetailsState &);
void columns_only_flag_3970f0(ImguiWindowDetailsState &);
void nav_windowing_cancel_39b1d0(ImguiWindowDetailsState &);
bool mouse_distance_check_394464(ImguiWindowDetailsState &, ReI32, float);
bool mouse_dragging_394490(ImguiWindowDetailsState &, ReI32, float);
void log_output_395074(ImguiWindowDetailsState &, const ImguiWindowsApi &, re::ReStringView,
                       re::ReStringView);
void draw_marker_circle_3a7620(ImguiWindowDetailsState &, const ImguiWindowsApi &, Address, Vec2,
                               ReU32);
Address conditional_dispatch_39e8d4(ImguiWindowDetailsState &, Address);
Address conditional_dispatch_39e8fc(ImguiWindowDetailsState &, Address);
Address conditional_dispatch_39e924(ImguiWindowDetailsState &, Address);
Address conditional_dispatch_39e94c(ImguiWindowDetailsState &, Address);
Address find_newline_393520(ImguiWindowDetailsState &, Address, Address);
void load_const_3bc2f8(ImguiWindowDetailsState &, Address);
void load_const_3bc37c(ImguiWindowDetailsState &, Address);
void load_const_38c5a8(ImguiWindowDetailsState &, Address);
void load_const_38c8bc(ImguiWindowDetailsState &, Address);
void load_const_38c760(ImguiWindowDetailsState &, Address);
// Note: static_table (0x2d963c) is in format as format_table_2d963c
void thunk_3788ec();
Address element_stride_58_38bbc0(ImguiWindowDetailsState &, Address, ReI32);
// --- RVA name table: wrappers for existing anonymous helpers ---
ClipRect imgui_window_details_scrollbar_rect_3bff58(ImguiWindowDetailsState &, Address, ReI32);
void imgui_window_details_corner_resize_38f5d0(ImguiWindowDetailsState &, const ImguiWindowsApi &,
                                                Address, Vec2, Vec2, Vec2 &, Vec2 &);
Vec2 imgui_window_details_key_vector_392724(ImguiWindowDetailsState &, int, int, int, int);
float imgui_window_details_column_offset_3b5320(ImguiWindowDetailsState &, int);
float imgui_window_details_column_width_3b5384(ImguiWindowDetailsState &, int, bool);
float imgui_window_details_drag_offset_3b53f0(ImguiWindowDetailsState &, int);
void imgui_window_details_set_offset_3b5554(ImguiWindowDetailsState &, int, float);
bool imgui_window_details_close_button_3bde30(ImguiWindowDetailsState &, const ImguiWindowsApi &,
                                              ReU32, Vec2);
bool imgui_window_details_collapse_button_3be114(ImguiWindowDetailsState &,
                                                 const ImguiWindowDetailsApi &,
                                                 const ImguiWindowsApi &, ReU32, Vec2);
void imgui_window_details_text_clipped_399afc(ImguiWindowDetailsState &,
                                              const ImguiWindowDetailsApi &,
                                              const ImguiWindowsApi &, ClipRect, re::ReStringView,
                                              Vec2, Vec2, ClipRect);
void imgui_window_details_text_render_399a64(ImguiWindowDetailsState &,
                                             const ImguiWindowDetailsApi &,
                                             const ImguiWindowsApi &, re::ReStringView,
                                             re::ReStringView, Vec2);
bool imgui_window_details_mouse_dragging_394490(ImguiWindowDetailsState &, int);
ClipRect imgui_window_details_border_rect_392a9c(ImguiWindowDetailsState &, Address, int, float,
                                                 float);
Vec2 imgui_window_details_preferred_position_3952b0(ImguiWindowDetailsState &, Address);
} // namespace rust_internal_re
