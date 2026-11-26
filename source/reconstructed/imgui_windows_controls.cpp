#include "imgui_windows_internal.hpp"
namespace rust_internal_re::window_detail {
MenuControlsApi effective_controls(ImguiWindowsState &state, const ImguiWindowsApi &api) {
    auto controls = api.controls;
    if (!controls.close_popup_39031c)
        controls.close_popup_39031c = [&state, api](int count, bool restore) {
            trim(state, api, count, restore);
        };
    if (!controls.top_modal_391928)
        controls.top_modal_391928 = [&state]() { return imgui_window_modal_391928(state); };
    if (!controls.modal_order_38f020)
        controls.modal_order_38f020 = [&state](Address w, Address modal) {
            imgui_window_order_38f020(state, w, modal);
        };
    if (!controls.close_current_popup_390260)
        controls.close_current_popup_390260 = [&state, api]() { close(state, api); };
    return controls;
}
} // namespace rust_internal_re::window_detail
namespace rust_internal_re {
// [I] Synchronous binding to the same copied state. Failed prerequisites retain
// preceding native writes and propagate through RendererMissing to control roots.
MenuControlsApi bind_imgui_windows(ImguiWindowsState &state, const ImguiWindowsApi &api,
                                   MenuControlsApi fallback) {
    auto bound = api;
    if (fallback.deactivate_text_3c04d0)
        bound.controls.deactivate_text_3c04d0 = fallback.deactivate_text_3c04d0;
    if (fallback.nav_process_395964)
        bound.controls.nav_process_395964 = fallback.nav_process_395964;
    if (fallback.nav_tab_395bc4)
        bound.controls.nav_tab_395bc4 = fallback.nav_tab_395bc4;
    if (fallback.nav_score_395db8)
        bound.controls.nav_score_395db8 = fallback.nav_score_395db8;
    if (fallback.nav_result_395258)
        bound.controls.nav_result_395258 = fallback.nav_result_395258;
    if (fallback.close_popup_39031c)
        bound.controls.close_popup_39031c = fallback.close_popup_39031c;
    if (fallback.top_modal_391928)
        bound.controls.top_modal_391928 = fallback.top_modal_391928;
    if (fallback.modal_order_38f020)
        bound.controls.modal_order_38f020 = fallback.modal_order_38f020;
    if (fallback.rectangle)
        bound.controls.rectangle = fallback.rectangle;
    if (fallback.text)
        bound.controls.text = fallback.text;
    if (fallback.circle)
        bound.controls.circle = fallback.circle;
    if (fallback.line)
        bound.controls.line = fallback.line;
    if (fallback.glow_rectangle_3a2010)
        bound.controls.glow_rectangle_3a2010 = fallback.glow_rectangle_3a2010;
    if (fallback.key_input_2e5e4c)
        bound.controls.key_input_2e5e4c = fallback.key_input_2e5e4c;
    if (fallback.arrow_3a7400)
        bound.controls.arrow_3a7400 = fallback.arrow_3a7400;
    if (fallback.begin_child_38e97c)
        bound.controls.begin_child_38e97c = fallback.begin_child_38e97c;
    if (fallback.end_child_390a88)
        bound.controls.end_child_390a88 = fallback.end_child_390a88;
    if (fallback.tooltip_389f18)
        bound.controls.tooltip_389f18 = fallback.tooltip_389f18;
    if (fallback.begin_window_38cfa4)
        bound.controls.begin_window_38cfa4 = fallback.begin_window_38cfa4;
    if (fallback.end_window_390994)
        bound.controls.end_window_390994 = fallback.end_window_390994;
    if (fallback.window_position_39bb20)
        bound.controls.window_position_39bb20 = fallback.window_position_39bb20;
    if (fallback.window_size_39bc6c)
        bound.controls.window_size_39bc6c = fallback.window_size_39bc6c;
    if (fallback.bring_focus_38f160)
        bound.controls.bring_focus_38f160 = fallback.bring_focus_38f160;
    if (fallback.bring_display_38f0bc)
        bound.controls.bring_display_38f0bc = fallback.bring_display_38f0bc;
    if (fallback.window_hovered_3947ec)
        bound.controls.window_hovered_3947ec = fallback.window_hovered_3947ec;
    if (fallback.mouse_clicked_3943e4)
        bound.controls.mouse_clicked_3943e4 = fallback.mouse_clicked_3943e4;
    if (fallback.color_picker_379680)
        bound.controls.color_picker_379680 = fallback.color_picker_379680;
    if (fallback.key_capture_3853b0)
        bound.controls.key_capture_3853b0 = fallback.key_capture_3853b0;
    if (fallback.mode_button_388e2c)
        bound.controls.mode_button_388e2c = fallback.mode_button_388e2c;
    if (fallback.push_color_398bec)
        bound.controls.push_color_398bec = fallback.push_color_398bec;
    if (fallback.push_float_398cc8)
        bound.controls.push_float_398cc8 = fallback.push_float_398cc8;
    if (fallback.push_vec2_398c60)
        bound.controls.push_vec2_398c60 = fallback.push_vec2_398c60;
    if (fallback.pop_style_39896c)
        bound.controls.pop_style_39896c = fallback.pop_style_39896c;
    if (fallback.pop_color_39890c)
        bound.controls.pop_color_39890c = fallback.pop_color_39890c;
    if (fallback.next_item_width_39b704)
        bound.controls.next_item_width_39b704 = fallback.next_item_width_39b704;
    if (fallback.begin_disabled_38ec34)
        bound.controls.begin_disabled_38ec34 = fallback.begin_disabled_38ec34;
    if (fallback.end_disabled_390c80)
        bound.controls.end_disabled_390c80 = fallback.end_disabled_390c80;
    if (fallback.close_current_popup_390260)
        bound.controls.close_current_popup_390260 = fallback.close_current_popup_390260;
    if (fallback.local_layout)
        bound.controls.local_layout = fallback.local_layout;
    auto result = window_detail::effective_controls(state, bound);
    result.begin_window_38cfa4 = [&state, bound](re::ReStringView name, ReU32 flags) {
        window_detail::check(
            imgui_window_begin_38cfa4(state, bound, {re::ReString(name), {}, flags}).result);
    };
    result.end_window_390994 = [&state, bound]() { window_detail::end(state, bound); };
    result.begin_child_38e97c = [&state, bound](const MenuControlChild &request) {
        window_detail::check(
            imgui_window_child_38e97c(state, bound, request.id, request.size, false, request.flags)
                .result);
    };
    result.end_child_390a88 = [&state, bound]() { window_detail::end_child(state, bound); };
    result.window_position_39bb20 = [&state](Vec2 p) {
        window_detail::position(state, window_detail::current(state), p, 0);
    };
    result.window_size_39bc6c = [&state](Vec2 size) {
        window_detail::size(state, window_detail::current(state), size, 0);
    };
    return result;
}
} // namespace rust_internal_re
