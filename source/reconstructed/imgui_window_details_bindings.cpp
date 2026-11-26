#include "imgui_window_details_internal.hpp"
namespace rust_internal_re {
ImguiWindowsApi bind_imgui_window_details(ImguiWindowDetailsState &state,
                                          const ImguiWindowDetailsApi &details,
                                          ImguiWindowsApi output) {
    const auto base = output;
    output.table_by_index_3921c0 = [&state](int index) {
        return imgui_window_details_table_3921c0(state, index);
    };
    output.log_finish_394dd4 = [&state, details, base]() {
        imgui_window_details_log_finish_394dd4(state, details, base);
    };
    output.nav_initialize_395500 = [&state](Address w, bool force) {
        imgui_window_details_nav_initialize_395500(state, w, force);
    };
    output.nav_highlight_3997ac = [&state, base](ClipRect b, ReU32 id,
                                                 ReU32 flags) {
        imgui_window_details_nav_highlight_3997ac(state, base, b, id, flags);
    };
    output.shadow_39a64c = [&state, base](Address w) {
        imgui_window_details_shadow_39a64c(state, base, w);
    };
    output.auto_position_39138c = [&state](Address w) {
        return imgui_window_details_auto_position_39138c(state, w);
    };
    output.title_contents_39a7a8 = [&state, details, base](Address w, ClipRect b,
                                                           re::ReStringView name,
                                                           re::ReOptional<Address> open) {
        imgui_window_details_title_39a7a8(state, details, base, w, b, name, open);
    };
    output.end_columns_3b4f94 = [&state, base]() {
        imgui_window_details_end_columns_3b4f94(state, base);
    };
    output.scrollbar_3c3234 = [&state, base](int axis) {
        imgui_window_details_scrollbar_3c3234(state, base, axis);
    };
    output.resize_39d760 = [&state, base](Address w, Vec2 fit, int count, ClipRect visibility) {
        return imgui_window_details_resize_39d760(state, base, w, fit, count, visibility);
    };
    const auto decorated = output;
    output.decorations_399d88 = [&state, details,
                                 decorated](Address w, ClipRect title, bool highlight, bool handle,
                                            int count, const re::ReArray<ReU32, 4> &colors,
                                            float size) {
        imgui_window_details_decorations_399d88(state, details, decorated, w, title, highlight,
                                                handle, count, colors, size);
    };
    return output;
}
} // namespace rust_internal_re
