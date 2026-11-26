#pragma once
#include "win32_freestanding.h"

namespace re_base {
struct MenuPreferences {
    bool show_marker{true};
    int marker_size{24};
    ReU32 accent{0xff80d060u}; // Packed RGBA, low byte R; consumed by parent frame.
};
struct MenuOffsetRow { re::ReString key, kind, module, value; };
struct MenuModel {
    MenuPreferences preferences;
    WStr profile_path;      // null-terminated UTF-16
    re::ReString profile_summary; // UTF-8
    bool profile_loaded{};
    re::ReVector<MenuOffsetRow> offsets;
};
// Callbacks run synchronously on the owner thread. Update the model (including
// profile_summary for success/failure) before returning. Refresh is automatic;
// callbacks may also call refresh_native_menu safely.
struct MenuActions {
    re::ReFunction<void(const wchar_t*)> reload;        // null-terminated UTF-16 path
    re::ReFunction<void()> save;
    re::ReFunction<void(const re::ReString &, const re::ReString &)> apply_offset;
};
namespace menu_control {
inline constexpr int tabs = 4100;
inline constexpr int show_marker = 4101;
inline constexpr int marker_size = 4102;
inline constexpr int accent = 4103; // ComboBox indices: Green, Blue, Amber, Rose.
inline constexpr int profile_path = 4110;
inline constexpr int reload = 4111;
inline constexpr int save = 4112;
inline constexpr int filter = 4113;
inline constexpr int offsets = 4114;
inline constexpr int selected_value = 4115;
inline constexpr int apply = 4116;
inline constexpr int status = 4117;
inline constexpr int selected_key = 4118;
inline constexpr int about = 4120;
}
struct NativeMenu {
    struct State;
    State *state{};
    NativeMenu() = default;
    NativeMenu(const NativeMenu &) = delete;
    NativeMenu &operator=(const NativeMenu &) = delete;
};
// All functions are owner-thread-only. NativeMenu, model and callback depth must
// outlive the window. Never call destroy from a callback: shared_callback_depth
// covers menu WndProc and control subclasses so the parent can reject shutdown.
bool create_native_menu(NativeMenu &, HWND owner, MenuModel &, MenuActions,
                        unsigned &shared_callback_depth, re::ReString &error) noexcept;
void destroy_native_menu(NativeMenu &) noexcept;
void refresh_native_menu(NativeMenu &) noexcept;
void set_native_menu_visible(NativeMenu &, bool) noexcept;
bool native_menu_visible(const NativeMenu &) noexcept;
HWND native_menu_handle(const NativeMenu &) noexcept;
}
