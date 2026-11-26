#include "base_menu.hpp"

namespace re_base {
struct NativeMenu::State {
    HWND window{}, owner{}, tabs{}, status{};
    HINSTANCE instance{};
    DWORD thread{};
    MenuModel *model{};
    MenuActions actions;
    unsigned *depth{};
    bool registered{}, refreshing{};
    int page{}, dpi{96};
    WStr class_name;
    re::ReString selected_key, action_error;
    struct Control { HWND window; int page; int id; };
    re::ReVector<Control> controls;
};

namespace {
using State = NativeMenu::State;
constexpr re::ReArray<ReU32, 4> accents{
    0xff80d060u, 0xffffa050u, 0xff50c0f0u, 0xffb080e8u};
constexpr UINT_PTR keyboard_subclass_id = 0x52424d4eu;
thread_local State *creating_state{};
struct CallbackScope {
    unsigned *depth;
    explicit CallbackScope(State *s) noexcept : depth(s ? s->depth : nullptr) {
        if (depth) ++*depth;
    }
    ~CallbackScope() { if (depth) --*depth; }
};
bool owner_thread(const State *s) noexcept {
    return s && s->thread == GetCurrentThreadId();
}
int px(const State &s, int value) noexcept { return MulDiv(value, s.dpi, 96); }
HWND control(const State &s, int id) noexcept {
    for (const auto &c : s.controls) if (c.id == id) return c.window;
    return nullptr;
}
WStr wide(const re::ReString &text) {
    if (text.empty()) return make_wstr();
    const int length = MultiByteToWideChar(CP_UTF8, 0, text.data(),
                                         static_cast<int>(text.size()), nullptr, 0);
    if (!length) return make_wstr(L"[Text conversion failed]");
    WStr result = make_wstr_n(static_cast<ReUSize>(length));
    MultiByteToWideChar(CP_UTF8, 0, text.data(), static_cast<int>(text.size()),
                        result.data(), length);
    return result;
}
re::ReString utf8(const WStr &text) {
    ReUSize tlen = wstr_len(text);
    if (!tlen) return {};
    const int length = WideCharToMultiByte(CP_UTF8, 0, text.data(),
        static_cast<int>(tlen), nullptr, 0, nullptr, nullptr);
    if (!length) __builtin_trap();
    re::ReString result;
    result.resize(static_cast<ReUSize>(length));
    WideCharToMultiByte(CP_UTF8, 0, text.data(), static_cast<int>(tlen),
                        &result[0], length, nullptr, nullptr);
    return result;
}
WStr text_of(HWND window) {
    const int count = GetWindowTextLengthW(window);
    WStr text = make_wstr_n(static_cast<ReUSize>(count) + 1);
    const int copied = GetWindowTextW(window, text.data(), count + 1);
    wstr_resize(text, static_cast<ReUSize>(copied));
    return text;
}
WStr folded(WStr text) {
    return wstr_lower(re::re_move(text));
}
void set_text(HWND window, const WStr &text) {
    WStr current = text_of(window);
    if (!wstr_eq(current, text)) SetWindowTextW(window, text.data());
}
void set_text(HWND window, const wchar_t *text) {
    WStr current = text_of(window);
    if (!wstr_eq(current, text)) SetWindowTextW(window, text);
}
void error_status(State &s, const wchar_t *message) noexcept {
    if (s.status) SetWindowTextW(s.status, message);
}
void hide(State &s) noexcept {
    if (s.window) ShowWindow(s.window, SW_HIDE);
}
LRESULT CALLBACK control_proc(HWND window, UINT message, WPARAM w, LPARAM l,
                              UINT_PTR id, DWORD_PTR reference) noexcept {
    auto *s = reinterpret_cast<State *>(reference);
    CallbackScope callback(s);
    if (message == WM_NCDESTROY) RemoveWindowSubclass(window, control_proc, id);
    if (message == WM_KEYDOWN && (w == VK_F1 || w == VK_ESCAPE)) {
        hide(*s);
        return 0;
    }
    if (message == WM_KEYDOWN && w == VK_TAB && s->window) {
        const HWND next = GetNextDlgTabItem(s->window, window, GetKeyState(VK_SHIFT) < 0);
        if (next) SetFocus(next);
        return 0;
    }
    return DefSubclassProc(window, message, w, l);
}
void place(State &s, int id, int x, int y, int width, int height) noexcept {
    const HWND window = control(s, id);
    if (window) MoveWindow(window, x, y, re::re_max(1, width), re::re_max(1, height), TRUE);
}
void layout(State &s) noexcept {
    if (!s.window || !s.tabs) return;
    RECT bounds{};
    GetClientRect(s.window, &bounds);
    const int margin = px(s, 12), gap = px(s, 8), row = px(s, 26);
    const int width = bounds.right, height = bounds.bottom;
    const int footer = px(s, 52);
    MoveWindow(s.tabs, margin, margin, re::re_max(1, width - 2 * margin),
               re::re_max(1, height - 2 * margin - footer), TRUE);
    MoveWindow(s.status, margin, re::re_max(margin, height - footer),
               re::re_max(1, width - 2 * margin), footer - gap, TRUE);
    RECT page{};
    GetClientRect(s.tabs, &page);
    TabCtrl_AdjustRect(s.tabs, FALSE, &page);
    MapWindowPoints(s.tabs, s.window, reinterpret_cast<POINT *>(&page), 2);
    const int x = page.left + margin, y = page.top + margin;
    const int w = re::re_max(1, static_cast<int>(page.right) - margin - x);
    const int bottom = page.bottom - margin;
    place(s, 4200, x, y, w, row * 2);
    place(s, menu_control::show_marker, x, y + row * 2 + gap, w, row);
    place(s, 4201, x, y + row * 3 + gap * 2, w, row);
    place(s, menu_control::marker_size, x, y + row * 4 + gap * 2, w, row + gap);
    place(s, 4202, x, y + row * 5 + gap * 3, px(s, 110), row);
    place(s, menu_control::accent, x + px(s, 120), y + row * 5 + gap * 3,
          re::re_min(px(s, 220), re::re_max(1, w - px(s, 120))), px(s, 180));
    place(s, 4203, x, y + row * 7 + gap * 2, w, row * 3);
    place(s, 4210, x, y, w, row);
    const int button = px(s, 76);
    place(s, menu_control::profile_path, x, y + row, w - 2 * (button + gap), row);
    place(s, menu_control::reload, x + w - 2 * button - gap, y + row, button, row);
    place(s, menu_control::save, x + w - button, y + row, button, row);
    place(s, 4211, x, y + 2 * row + gap, px(s, 45), row);
    place(s, menu_control::filter, x + px(s, 50), y + 2 * row + gap,
          w - px(s, 50), row);
    const int list_y = y + 3 * row + gap * 2;
    const int editor_y = re::re_max(list_y + row, bottom - row);
    place(s, menu_control::offsets, x, list_y, w,
          re::re_max(row, editor_y - gap - row - list_y));
    place(s, menu_control::selected_key, x, editor_y - row, w, row);
    place(s, menu_control::selected_value, x, editor_y, w - button - gap, row);
    place(s, menu_control::apply, x + w - button, editor_y, button, row);
    const HWND list = control(s, menu_control::offsets);
    const int available = re::re_max(1, w - px(s, 24));
    ListView_SetColumnWidth(list, 0, available * 40 / 100);
    ListView_SetColumnWidth(list, 1, available * 14 / 100);
    ListView_SetColumnWidth(list, 2, available * 24 / 100);
    ListView_SetColumnWidth(list, 3, available - available * 78 / 100);
    place(s, menu_control::about, x, y, w, re::re_max(row, bottom - y));
}
void show_page(State &s) noexcept {
    s.page = TabCtrl_GetCurSel(s.tabs);
    if (s.page < 0 || s.page > 2) s.page = 0;
    for (const auto &c : s.controls)
        if (c.page >= 0) ShowWindow(c.window, c.page == s.page ? SW_SHOW : SW_HIDE);
}
void selection(State &s) {
    const HWND list = control(s, menu_control::offsets);
    const int selected = ListView_GetNextItem(list, -1, LVNI_SELECTED);
    LVITEMW item{};
    item.mask = LVIF_PARAM;
    item.iItem = selected;
    const bool valid = selected >= 0 && SendMessageW(list, LVM_GETITEMW, 0,
        reinterpret_cast<LPARAM>(&item)) && item.lParam >= 0 &&
        static_cast<ReUSize>(item.lParam) < s.model->offsets.size();
    const auto *row = valid ? &s.model->offsets[static_cast<ReUSize>(item.lParam)] : nullptr;
    s.selected_key = row ? row->key : re::ReString{};
    set_text(control(s, menu_control::selected_key),
             row ? wstr_cat(L"Selected: ", wide(row->key)) : make_wstr(L"Select an offset to edit its hexadecimal value."));
    set_text(control(s, menu_control::selected_value), row ? wide(row->value) : make_wstr());
    EnableWindow(control(s, menu_control::selected_value), valid);
    EnableWindow(control(s, menu_control::apply), valid && bool(s.actions.apply_offset));
}
void refresh(State &s) {
    if (!s.window || s.refreshing) return;
    s.refreshing = true;
    struct Reset { bool &flag; ~Reset() { flag = false; } } reset{s.refreshing};
    auto &model = *s.model;
    SendMessageW(control(s, menu_control::show_marker), BM_SETCHECK,
                 model.preferences.show_marker ? BST_CHECKED : BST_UNCHECKED, 0);
    SendMessageW(control(s, menu_control::marker_size), TBM_SETPOS, TRUE,
                 re::re_clamp(model.preferences.marker_size, 8, 96));
    set_text(control(s, 4201), wstr_cat3(L"Marker size: ",
             int_to_wstr(model.preferences.marker_size).data(), L" px (8-96)"));
    const auto *preset = re::re_find(accents.begin(), accents.end(), model.preferences.accent);
    SendMessageW(control(s, menu_control::accent), CB_SETCURSEL,
        preset == accents.end() ? WPARAM(-1) : WPARAM(preset - accents.begin()), 0);
    set_text(control(s, menu_control::profile_path), model.profile_path);
    EnableWindow(control(s, menu_control::reload), bool(s.actions.reload));
    EnableWindow(control(s, menu_control::save), model.profile_loaded && bool(s.actions.save));
    const auto query = folded(text_of(control(s, menu_control::filter)));
    const auto previous = s.selected_key;
    const HWND list = control(s, menu_control::offsets);
    SendMessageW(list, WM_SETREDRAW, FALSE, 0);
    struct Redraw {
        HWND window;
        ~Redraw() { SendMessageW(window, WM_SETREDRAW, TRUE, 0); InvalidateRect(window, nullptr, TRUE); }
    } redraw{list};
    ListView_DeleteAllItems(list);
    int chosen = -1, visible = 0;
    for (ReUSize i = 0; i < model.offsets.size(); ++i) {
        const auto &row = model.offsets[i];
        const re::ReArray<WStr, 4> cells{wide(row.key), wide(row.kind),
                                               wide(row.module), wide(row.value)};
        if (wstr_len(query) > 0) {
            WStr combined = wstr_cat(wstr_cat(wstr_cat(cells[0], L" "), wstr_cat(cells[1], L" ")),
                                     wstr_cat(cells[2], wstr_cat(L" ", cells[3])));
            if (wstr_find(wstr_lower(re::re_move(combined)), query) == wstr_npos()) continue;
        }
        LVITEMW item{};
        item.mask = LVIF_TEXT | LVIF_PARAM;
        item.iItem = visible;
        item.pszText = const_cast<wchar_t *>(cells[0].data());
        item.lParam = static_cast<LPARAM>(i);
        const int inserted = static_cast<int>(SendMessageW(list, LVM_INSERTITEMW, 0,
                                                          reinterpret_cast<LPARAM>(&item)));
        if (inserted < 0) __builtin_trap();
        for (int column = 1; column < 4; ++column) {
            item.iSubItem = column;
            item.pszText = const_cast<wchar_t *>(cells[static_cast<ReUSize>(column)].data());
            SendMessageW(list, LVM_SETITEMTEXTW, static_cast<WPARAM>(inserted),
                         reinterpret_cast<LPARAM>(&item));
        }
        if (row.key == previous) chosen = inserted;
        ++visible;
    }
    if (chosen < 0 && visible) chosen = 0;
    if (chosen >= 0) {
        ListView_SetItemState(list, chosen, LVIS_SELECTED | LVIS_FOCUSED, LVIS_SELECTED | LVIS_FOCUSED);
        ListView_EnsureVisible(list, chosen, FALSE);
    }
    selection(s);
    WStr status;
    if (s.action_error.empty()) {
        status = wstr_cat(model.profile_loaded ? L"Profile loaded. " : L"Profile not loaded. ",
                          wide(model.profile_summary));
    } else {
        status = wstr_cat(L"Action failed: ", wide(s.action_error));
    }
    if (wstr_len(status) == 0) status = make_wstr(L"No profile result is available.");
    set_text(s.status, status);
}
void run_action(State &s, int id) {
    s.action_error.clear();
    if (id == menu_control::reload && s.actions.reload)
        s.actions.reload(text_of(control(s, menu_control::profile_path)).data());
    else if (id == menu_control::save && s.actions.save) {
        // The parent validates that this path matches the loaded profile.
        s.model->profile_path = text_of(control(s, menu_control::profile_path));
        s.actions.save();
    } else if (id == menu_control::apply && s.actions.apply_offset && !s.selected_key.empty()) {
        const auto key = s.selected_key;
        const auto value = utf8(text_of(control(s, menu_control::selected_value)));
        s.actions.apply_offset(key, value);
    }
    refresh(s);
}
LRESULT CALLBACK menu_proc(HWND window, UINT message, WPARAM w, LPARAM l) noexcept {
    auto *s = reinterpret_cast<State *>(GetWindowLongPtrW(window, GWLP_USERDATA));
    if (message == WM_NCCREATE) {
        s = static_cast<State *>(reinterpret_cast<CREATESTRUCTW *>(l)->lpCreateParams);
        SetWindowLongPtrW(window, GWLP_USERDATA, reinterpret_cast<LONG_PTR>(s));
        s->window = window;
    }
    if (!s) s = creating_state;
    CallbackScope callback(s);
    if (!s) return DefWindowProcW(window, message, w, l);
    switch (message) {
    case WM_CLOSE: hide(*s); return 0;
    case WM_KEYDOWN:
        if (w == VK_F1 || w == VK_ESCAPE) { hide(*s); return 0; }
        break;
    case WM_GETMINMAXINFO: {
        auto &limits = *reinterpret_cast<MINMAXINFO *>(l);
        limits.ptMinTrackSize = POINT{px(*s, 580), px(*s, 460)};
        return 0;
    }
    case WM_SIZE: layout(*s); return 0;
    case WM_HSCROLL:
        if (!s->refreshing && reinterpret_cast<HWND>(l) == control(*s, menu_control::marker_size)) {
            s->model->preferences.marker_size = re::re_clamp(static_cast<int>(SendMessageW(
                reinterpret_cast<HWND>(l), TBM_GETPOS, 0, 0)), 8, 96);
            set_text(control(*s, 4201), wstr_cat3(L"Marker size: ",
                int_to_wstr(s->model->preferences.marker_size).data(), L" px (8-96)"));
        }
        return 0;
    case WM_COMMAND: {
        if (s->refreshing) return 0;
        const int id = LOWORD(w), notification = HIWORD(w);
        if (id == menu_control::show_marker && notification == BN_CLICKED)
            s->model->preferences.show_marker = SendMessageW(control(*s, id), BM_GETCHECK, 0, 0) == BST_CHECKED;
        else if (id == menu_control::accent && notification == CBN_SELCHANGE) {
            const auto index = static_cast<ReUSize>(SendMessageW(control(*s, id), CB_GETCURSEL, 0, 0));
            if (index < accents.size()) s->model->preferences.accent = accents[index];
        } else if (id == menu_control::filter && notification == EN_CHANGE) refresh(*s);
        else if (id == menu_control::profile_path && notification == EN_CHANGE)
            s->model->profile_path = text_of(control(*s, id));
        else if (notification == BN_CLICKED &&
                 (id == menu_control::reload || id == menu_control::save || id == menu_control::apply))
            run_action(*s, id);
        return 0;
    }
    case WM_NOTIFY: {
        const auto *notice = reinterpret_cast<NMHDR *>(l);
        if (notice && notice->idFrom == static_cast<UINT_PTR>(menu_control::tabs) && notice->code == TCN_SELCHANGE)
            show_page(*s);
        else if (notice && notice->idFrom == static_cast<UINT_PTR>(menu_control::offsets) &&
                 notice->code == LVN_ITEMCHANGED && !s->refreshing) selection(*s);
        return 0;
    }
    case WM_NCDESTROY:
        SetWindowLongPtrW(window, GWLP_USERDATA, 0);
        s->window = s->tabs = s->status = nullptr;
        s->controls.clear();
        return DefWindowProcW(window, message, w, l);
    default: break;
    }
    return DefWindowProcW(window, message, w, l);
}
HWND add(State &s, int id, int page, const wchar_t *type, const wchar_t *text,
         DWORD style, DWORD extended = 0) {
    const HWND window = CreateWindowExW(extended, type, text,
        WS_CHILD | WS_VISIBLE | style, 0, 0, 1, 1, s.window,
        reinterpret_cast<HMENU>(static_cast<INT_PTR>(id)), s.instance, nullptr);
    if (!window) __builtin_trap();
    if (!SetWindowSubclass(window, control_proc, keyboard_subclass_id, reinterpret_cast<DWORD_PTR>(&s))) {
        DestroyWindow(window);
        __builtin_trap();
    }
    SendMessageW(window, WM_SETFONT, reinterpret_cast<WPARAM>(GetStockObject(DEFAULT_GUI_FONT)), TRUE);
    s.controls.push_back({window, page, id});
    return window;
}
void create_controls(State &s) {
    s.controls.reserve(26);
    s.tabs = add(s, menu_control::tabs, -1, WC_TABCONTROLW, L"", WS_TABSTOP | WS_CLIPSIBLINGS);
    const re::ReArray<const wchar_t *, 3> pages{L"General", L"Offsets", L"About"};
    for (ReUSize i = 0; i < pages.size(); ++i) {
        TCITEMW item{};
        item.mask = TCIF_TEXT;
        item.pszText = const_cast<wchar_t *>(pages[i]);
        if (SendMessageW(s.tabs, TCM_INSERTITEMW, i, reinterpret_cast<LPARAM>(&item)) < 0)
            __builtin_trap();
    }
    s.status = add(s, menu_control::status, -1, L"STATIC", L"", SS_LEFT);
    add(s, 4200, 0, L"STATIC", L"Local frame marker\r\nThese controls change the marker drawn by the parent frame.", SS_LEFT);
    add(s, menu_control::show_marker, 0, L"BUTTON", L"Show marker", BS_AUTOCHECKBOX | WS_TABSTOP);
    add(s, 4201, 0, L"STATIC", L"Marker size", SS_LEFT);
    const HWND slider = add(s, menu_control::marker_size, 0, TRACKBAR_CLASSW, L"", TBS_AUTOTICKS | WS_TABSTOP);
    SendMessageW(slider, TBM_SETRANGE, TRUE, MAKELPARAM(8, 96));
    SendMessageW(slider, TBM_SETPAGESIZE, 0, 8);
    add(s, 4202, 0, L"STATIC", L"Accent color", SS_LEFT);
    const HWND combo = add(s, menu_control::accent, 0, L"COMBOBOX", L"", CBS_DROPDOWNLIST | WS_VSCROLL | WS_TABSTOP);
    for (const auto *name : {L"Green", L"Blue", L"Amber", L"Rose"})
        SendMessageW(combo, CB_ADDSTRING, 0, reinterpret_cast<LPARAM>(name));
    add(s, 4203, 0, L"STATIC", L"Game integration: Needed / To do. Matching game files and verified bindings are unavailable.\r\n\r\nF1, Escape, or Close hides this menu. The owner controls reopening it.", SS_LEFT);
    add(s, 4210, 1, L"STATIC", L"External offsets profile path", SS_LEFT);
    const HWND path = add(s, menu_control::profile_path, 1, L"EDIT", L"", ES_AUTOHSCROLL | WS_TABSTOP, WS_EX_CLIENTEDGE);
    SendMessageW(path, EM_SETLIMITTEXT, 32767, 0);
    add(s, menu_control::reload, 1, L"BUTTON", L"Reload", BS_PUSHBUTTON | WS_TABSTOP);
    add(s, menu_control::save, 1, L"BUTTON", L"Save", BS_PUSHBUTTON | WS_TABSTOP);
    add(s, 4211, 1, L"STATIC", L"Filter", SS_LEFT);
    const HWND filter = add(s, menu_control::filter, 1, L"EDIT", L"", ES_AUTOHSCROLL | WS_TABSTOP, WS_EX_CLIENTEDGE);
    SendMessageW(filter, EM_SETLIMITTEXT, 1024, 0);
    const HWND list = add(s, menu_control::offsets, 1, WC_LISTVIEWW, L"",
        LVS_REPORT | LVS_SINGLESEL | LVS_SHOWSELALWAYS | WS_TABSTOP, WS_EX_CLIENTEDGE);
    ListView_SetExtendedListViewStyle(list, LVS_EX_FULLROWSELECT | LVS_EX_DOUBLEBUFFER | LVS_EX_LABELTIP);
    const re::ReArray<const wchar_t *, 4> columns{L"Key", L"Type", L"Module", L"Hex value"};
    for (ReUSize i = 0; i < columns.size(); ++i) {
        LVCOLUMNW column{};
        column.mask = LVCF_TEXT | LVCF_WIDTH | LVCF_SUBITEM;
        column.pszText = const_cast<wchar_t *>(columns[i]);
        column.cx = px(s, 100);
        column.iSubItem = static_cast<int>(i);
        if (SendMessageW(list, LVM_INSERTCOLUMNW, i, reinterpret_cast<LPARAM>(&column)) < 0)
            __builtin_trap();
    }
    add(s, menu_control::selected_key, 1, L"STATIC", L"", SS_LEFT | SS_ENDELLIPSIS);
    const HWND value = add(s, menu_control::selected_value, 1, L"EDIT", L"", ES_AUTOHSCROLL | WS_TABSTOP, WS_EX_CLIENTEDGE);
    SendMessageW(value, EM_SETLIMITTEXT, 128, 0);
    add(s, menu_control::apply, 1, L"BUTTON", L"Apply", BS_PUSHBUTTON | WS_TABSTOP);
    add(s, menu_control::about, 2, L"STATIC",
        L"Native Windows base menu\r\n\r\nThis is new Win32 platform UI for the reconstructed base DLL. It uses stock controls and the parent's real frame preferences.\r\n\r\nOffsets are named values from one external profile. Reload, Save, and Apply use parent validation; their result appears below. Profile acceptance does not prove game compatibility.\r\n\r\nNeeded / To do: matching game files, verified build fingerprints and game bindings. No game feature is claimed to run.\r\n\r\nF1 / Escape / Close: hide menu. Tab / Shift+Tab: move between controls.", SS_LEFT);
    show_page(s);
}
void cleanup(State &s) noexcept {
    if (s.window) DestroyWindow(s.window);
    if (s.registered && !s.window) {
        if (UnregisterClassW(s.class_name.data(), s.instance)) s.registered = false;
    }
}
}

bool create_native_menu(NativeMenu &menu, HWND owner, MenuModel &model, MenuActions actions,
                        unsigned &shared_callback_depth, re::ReString &error) noexcept {
    error.clear();
    if (menu.state) { error = "Menu is already initialized"; return false; }
    DWORD process{};
    if (!IsWindow(owner) || GetWindowThreadProcessId(owner, &process) != GetCurrentThreadId() ||
        process != GetCurrentProcessId()) {
        error = "Menu must be initialized on the owner window thread";
        return false;
    }
    auto state = re::re_make_unique<State>();
    state->owner = owner;
    state->thread = GetCurrentThreadId();
    state->model = &model;
    state->actions = re::re_move(actions);
    state->depth = &shared_callback_depth;
    const HDC dc = GetDC(owner);
    if (dc) { state->dpi = GetDeviceCaps(dc, LOGPIXELSY); ReleaseDC(owner, dc); }
    if (state->dpi < 48) state->dpi = 96;
    if (!GetModuleHandleExW(GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS | GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT,
        reinterpret_cast<LPCWSTR>(&menu_proc), &state->instance)) {
        error = "Cannot locate menu module";
        return false;
    }
    WStr prefix = make_wstr(L"ReBase.NativeMenu.");
    WStr suffix = ptr_to_wstr(static_cast<void *>(state.get()));
    state->class_name = wstr_cat(prefix, suffix);
    WNDCLASSEXW wc{};
    wc.cbSize = sizeof(wc);
    wc.hInstance = state->instance;
    wc.lpfnWndProc = menu_proc;
    wc.hCursor = LoadCursorW(nullptr, MAKEINTRESOURCEW(32512));
    wc.hbrBackground = reinterpret_cast<HBRUSH>(COLOR_BTNFACE + 1);
    wc.lpszClassName = state->class_name.data();
    if (!RegisterClassExW(&wc)) { error = "Cannot register menu window class"; return false; }
    state->registered = true;
    menu.state = state.release();
    auto &s = *menu.state;
    const INITCOMMONCONTROLSEX common{sizeof(common), ICC_TAB_CLASSES | ICC_LISTVIEW_CLASSES | ICC_BAR_CLASSES};
    if (!InitCommonControlsEx(&common)) { error = "Cannot initialize common controls"; cleanup(s); return false; }
    RECT rect{0, 0, px(s, 720), px(s, 520)};
    constexpr DWORD style = WS_OVERLAPPEDWINDOW | WS_CLIPCHILDREN;
    AdjustWindowRectEx(&rect, style, FALSE, WS_EX_CONTROLPARENT);
    struct Creating {
        State *previous;
        explicit Creating(State *next) : previous(creating_state) { creating_state = next; }
        ~Creating() { creating_state = previous; }
    } creating{&s};
    const HWND window = CreateWindowExW(WS_EX_CONTROLPARENT, s.class_name.data(),
        L"Reconstructed Base - Menu", style, CW_USEDEFAULT, CW_USEDEFAULT,
        rect.right - rect.left, rect.bottom - rect.top, owner, nullptr, s.instance, &s);
    if (!window) { error = "Cannot create menu window"; cleanup(s); return false; }
    create_controls(s);
    refresh(s);
    layout(s);
    // Deliberately hidden; the parent shows it only after Context installation.
    return true;
}
void destroy_native_menu(NativeMenu &menu) noexcept {
    if (!owner_thread(menu.state) || (menu.state->depth && *menu.state->depth)) return;
    cleanup(*menu.state);
    if (menu.state->window || menu.state->registered) return;
    delete menu.state;
    menu.state = nullptr;
}
void refresh_native_menu(NativeMenu &menu) noexcept {
    if (!owner_thread(menu.state)) return;
    refresh(*menu.state);
}
void set_native_menu_visible(NativeMenu &menu, bool visible) noexcept {
    if (!owner_thread(menu.state) || !menu.state->window) return;
    if (visible) {
        refresh_native_menu(menu);
        ShowWindow(menu.state->window, SW_SHOW);
        SetForegroundWindow(menu.state->window);
    } else hide(*menu.state);
}
bool native_menu_visible(const NativeMenu &menu) noexcept {
    return owner_thread(menu.state) && menu.state->window && IsWindowVisible(menu.state->window);
}
HWND native_menu_handle(const NativeMenu &menu) noexcept {
    return owner_thread(menu.state) ? menu.state->window : nullptr;
}
}
