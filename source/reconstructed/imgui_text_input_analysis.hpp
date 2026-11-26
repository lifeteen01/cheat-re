#pragma once
#include "menu_color_picker_analysis.hpp"
#include "imgui_navigation_analysis.hpp"
#include "imgui_windows_analysis.hpp"
namespace rust_internal_re {
// [I] Owned data contracts; no function pointer or numeric sample address executes.
enum ImguiTextInputFlags : ReU32 {
    text_decimal = 1,
    text_hexadecimal = 2,
    text_uppercase = 4,
    text_no_blank = 8,
    text_auto_select_all = 16,
    text_enter_returns_true = 32,
    text_callback_completion = 64,
    text_callback_history = 128,
    text_callback_always = 256,
    text_callback_char_filter = 512,
    text_allow_tab = 1024,
    text_ctrl_enter_newline = 2048,
    text_no_horizontal_scroll = 4096,
    text_always_overwrite = 8192,
    text_read_only = 16384,
    text_password = 32768,
    text_no_undo_redo = 65536,
    text_scientific = 131072,
    text_callback_resize = 262144,
    text_callback_edit = 524288,
    text_escape_clears_all = 1048576,
    text_multiline = 0x4000000,
    text_no_mark_edited = 0x8000000,
    text_merged_item = 0x10000000
};
struct ImguiTextInputCallbackData {
    ReU32 event{}, flags{};
    Address user{};
    ReU32 character{};
    ReI32 key{};
    re::ReString text;
    ReI32 capacity{}, cursor{}, selection_start{}, selection_end{}, text_length{};
    bool dirty{};
};
using ImguiTextInputCallback = re::ReFunction<int(ImguiTextInputCallbackData &)>;
struct ImguiTextInputRequest {
    re::ReString label, hint;
    re::ReVector<char> buffer; // [I] size is native writable byte capacity, includes NUL slot.
    Vec2 size{};
    ReU32 flags{};
    Address callback_user{};
    ImguiTextInputCallback callback;
};
struct ImguiTextInputUndo {
    ReI32 position{}, inserted{};
    re::ReVector<ReU16> removed;
};
struct ImguiTextInputEdit {
    ReU32 id{};
    re::ReVector<ReU16> text;
    re::ReString initial, text_a;
    ReI32 cursor{}, selection_start{}, selection_end{}, capacity{}, rows_per_page{},
        length_a{};
    float scroll_x{}, cursor_animation{}, preferred_x{};
    bool single_line{true}, has_preferred_x{}, mouse_lock{}, edited{}, text_a_valid{}, overwrite{},
        value_edited{};
    re::ReVector<ImguiTextInputUndo> undo, redo;
};
struct ImguiTextInputState {
    re::ReMap<Address, ImguiTextInputEdit> editors; // numeric context key, one native current state.
};
struct ImguiTextInputApi {
    MenuControlsApi controls;
    FontTextStore *fonts{};
    re::ReOptional<Address> password_glyph_alias;
    MenuColorPickerLogStore *logs{};
    ImguiNavigationApi allocation;
    ImguiWindowsState *windows{};
    const ImguiWindowsApi *window_api{};
    // [U] Only reached matching platform clipboard leaves; owned strings only.
    re::ReFunction<re::ReOptional<re::ReString>(Address target, Address user)> clipboard_get;
    re::ReFunction<void(Address target, Address user, re::ReStringView)> clipboard_set;
    re::ReFunction<void(const FontTextRequest &)> text;
    ReUSize maximum_characters{1000000};
};
struct ImguiTextInputResult {
    FrameDependencyResult result;
    ReU32 id{};
    bool changed{}, enter_pressed{}, return_value{};
};
re::ReVector<ReU16> imgui_text_input_decode_393ba4(re::ReStringView,
                                                          ReUSize maximum_units,
                                                          ReUSize *consumed = nullptr);
re::ReString imgui_text_input_encode_393c38(re::ReSpan<const ReU16>);
bool imgui_text_input_filter_3c2a80(MenuControlsState &, ReU32 &character,
                                    ReU32 flags, const ImguiTextInputCallback &,
                                    Address user, ReU32 source);
void imgui_text_input_sync(MenuControlsState &, const ImguiTextInputApi &,
                           const ImguiTextInputEdit &);
ImguiTextInputResult replay_imgui_text_input_3c0538(MenuControlsState &, ImguiTextInputState &,
                                                    const ImguiTextInputApi &,
                                                    ImguiTextInputRequest &);
ImguiTextInputApi bind_imgui_text_input_text(FontTextStore &, FontTextSink &,
                                             ImguiTextInputApi = {});
MenuColorPickerApi bind_imgui_text_input_picker(MenuControlsState &, ImguiTextInputState &,
                                                const ImguiTextInputApi &, MenuColorPickerApi = {});
void imgui_text_input_set_font_39b290(MenuControlsState &, Address);
void imgui_text_input_push_font_398a98(MenuControlsState &, const ImguiTextInputApi &, Address);
void imgui_text_input_pop_font_39881c(MenuControlsState &, const ImguiTextInputApi &);
FrameDependencyResult imgui_text_input_scroll_38cd28(MenuControlsState &, const ImguiTextInputApi &,
                                                     Address io, float horizontal, float vertical);
UnityApi bind_imgui_text_input_frame(MenuControlsState &, const ImguiTextInputApi &,
                                     FrameDependencyResult &, UnityApi = {});
void check_imgui_text_input_reconstruction();
} // namespace rust_internal_re
