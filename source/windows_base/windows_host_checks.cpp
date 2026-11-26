#define WIN32_LEAN_AND_MEAN
#define NOMINMAX
#include <windows.h>
#include <commctrl.h>
#include "base_api.h"
#include "base_menu.hpp"
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <stdexcept>
#include <filesystem>
#include <fstream>
#include <limits>
#include <string>

namespace {
unsigned forwarded{};
decltype(&RB_Shutdown) shutdown_api{};
std::uint32_t reentrant_result{};
bool test_reentry{};
LRESULT CALLBACK host_window(HWND window, UINT message, WPARAM w, LPARAM l) {
    if (message == WM_APP + 1) {
        ++forwarded;
        if (test_reentry) reentrant_result = shutdown_api();
        return 0x5678;
    }
    return DefWindowProcW(window, message, w, l);
}
void require(bool value, const char *why) { if (!value) throw std::runtime_error(why); }
template<class T> T load(HMODULE module, const char *name) {
    const auto address = GetProcAddress(module, name);
    require(address != nullptr, name);
    T fn;
    static_assert(sizeof(fn) == sizeof(address));
    std::memcpy(&fn, &address, sizeof(fn));
    return fn;
}
struct Worker { decltype(&RB_Frame) frame; std::uint32_t result{}; };
DWORD WINAPI other_thread(void *data) {
    auto &worker = *static_cast<Worker *>(data);
    worker.result = worker.frame(); return 0;
}
std::string utf8(const std::wstring &text) {
    const int size = WideCharToMultiByte(CP_UTF8, 0, text.data(), int(text.size()), nullptr, 0, nullptr, nullptr);
    require(size > 0, "encode path");
    std::string result(std::size_t(size), '\0');
    require(WideCharToMultiByte(CP_UTF8, 0, text.data(), int(text.size()), result.data(), size, nullptr, nullptr) == size,
            "encode path bytes");
    return result;
}
struct Scratch {
    std::filesystem::path path;
    Scratch() {
        wchar_t folder[MAX_PATH]{}, name[MAX_PATH]{};
        require(GetTempPathW(MAX_PATH, folder) != 0, "temporary folder");
        require(GetTempFileNameW(folder, L"rbo", 0, name) != 0, "unique temporary name");
        require(DeleteFileW(name) && CreateDirectoryW(name, nullptr), "owned temporary directory");
        path = name;
    }
    ~Scratch() { std::error_code ec; std::filesystem::remove_all(path, ec); }
};
void page(HWND menu, int index) {
    const auto tabs = GetDlgItem(menu, re_base::menu_control::tabs);
    SendMessageW(tabs, TCM_SETCURSEL, WPARAM(index), 0);
    NMHDR notification{tabs, UINT_PTR(re_base::menu_control::tabs), UINT(TCN_SELCHANGE)};
    SendMessageW(menu, WM_NOTIFY, notification.idFrom, reinterpret_cast<LPARAM>(&notification));
}
COLORREF pixel(HWND window, int x, int y) {
    const auto dc = GetDC(window); require(dc != nullptr, "capture window pixels");
    const auto color = GetPixel(dc, x, y); ReleaseDC(window, dc); return color;
}
void capture_menu(HWND window, const wchar_t *name) {
    wchar_t directory[32768]{};
    const auto count = GetEnvironmentVariableW(L"RB_TEST_CAPTURE_DIR", directory, 32768);
    if (!count) return;
    require(count < 32768, "capture directory length");
    require(RedrawWindow(window, nullptr, nullptr, RDW_INVALIDATE | RDW_UPDATENOW | RDW_ALLCHILDREN) != 0,
            "redraw actual menu for visual verification");
    RECT bounds{}; require(GetWindowRect(window, &bounds) != 0, "menu capture bounds");
    const int width = bounds.right - bounds.left, height = bounds.bottom - bounds.top;
    const auto source = GetWindowDC(window); require(source != nullptr, "menu window DC");
    const auto memory = CreateCompatibleDC(source);
    BITMAPINFO bitmap{}; bitmap.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bitmap.bmiHeader.biWidth = width; bitmap.bmiHeader.biHeight = -height;
    bitmap.bmiHeader.biPlanes = 1; bitmap.bmiHeader.biBitCount = 32;
    bitmap.bmiHeader.biCompression = BI_RGB;
    void *pixels{};
    const auto surface = CreateDIBSection(source, &bitmap, DIB_RGB_COLORS, &pixels, nullptr, 0);
    HGDIOBJ old{};
    bool copied{};
    if (memory && surface) {
        old = SelectObject(memory, surface);
        copied = BitBlt(memory, 0, 0, width, height, source, 0, 0, SRCCOPY) != 0;
        GdiFlush();
    }
    if (copied) {
        BITMAPFILEHEADER header{}; header.bfType = 0x4d42;
        header.bfOffBits = sizeof(header) + sizeof(BITMAPINFOHEADER);
        header.bfSize = header.bfOffBits + DWORD(width * height * 4);
        const auto path = std::filesystem::path(directory) / name;
        std::ofstream image(path, std::ios::binary);
        image.write(reinterpret_cast<const char *>(&header), sizeof(header));
        image.write(reinterpret_cast<const char *>(&bitmap.bmiHeader), sizeof(BITMAPINFOHEADER));
        image.write(static_cast<const char *>(pixels), width * height * 4);
        image.flush(); copied = bool(image);
    }
    if (old) SelectObject(memory, old);
    if (surface) DeleteObject(surface);
    if (memory) DeleteDC(memory);
    ReleaseDC(window, source);
    require(copied, "capture actual rendered native menu");
}
}
int wmain(int argc, wchar_t **argv) {
    if (argc != 2) { std::fputs("usage: windows_host_checks.exe ABSOLUTE_DLL_PATH\n", stderr); return 2; }
    // Owned harness only: no game/sample loaded, injection or target discovery.
    const HMODULE module = LoadLibraryExW(argv[1], nullptr,
        LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR | LOAD_LIBRARY_SEARCH_DEFAULT_DIRS);
    if (!module) { std::fprintf(stderr, "LoadLibrary error %lu\n", GetLastError()); return 1; }
    HWND window{};
    try {
        const auto query = load<decltype(&RB_QueryAbi)>(module, "RB_QueryAbi");
        const auto initialize = load<decltype(&RB_Initialize)>(module, "RB_Initialize");
        const auto status = load<decltype(&RB_GetStatus)>(module, "RB_GetStatus");
        const auto frame = load<decltype(&RB_Frame)>(module, "RB_Frame");
        const auto menu_status = load<decltype(&RB_GetMenuStatus)>(module, "RB_GetMenuStatus");
        const auto show_menu = load<decltype(&RB_SetMenuVisible)>(module, "RB_SetMenuVisible");
        const auto load_offsets = load<decltype(&RB_LoadOffsets)>(module, "RB_LoadOffsets");
        const auto save_offsets = load<decltype(&RB_SaveOffsets)>(module, "RB_SaveOffsets");
        const auto set_offset = load<decltype(&RB_SetOffset)>(module, "RB_SetOffset");
        const auto get_offset = load<decltype(&RB_GetOffset)>(module, "RB_GetOffset");
        const auto resolve = load<decltype(&RB_ResolveOffset)>(module, "RB_ResolveOffset");
        const auto verify = load<decltype(&RB_VerifyOffsets)>(module, "RB_VerifyOffsets");
        shutdown_api = load<decltype(&RB_Shutdown)>(module, "RB_Shutdown");
        require(query() == RB_ABI_VERSION && frame() == RB_NOT_INITIALIZED, "pre-init ABI/state");
        WNDCLASSW wc{}; wc.lpfnWndProc = host_window; wc.hInstance = GetModuleHandleW(nullptr);
        wc.lpszClassName = L"ReBaseOwnedHost";
        require(RegisterClassW(&wc) != 0, "register owned window");
        window = CreateWindowExW(0, wc.lpszClassName, L"Owned base lifecycle check",
            WS_OVERLAPPEDWINDOW | WS_VISIBLE, 30, 30, 320, 240, nullptr, nullptr, wc.hInstance, nullptr);
        require(window != nullptr, "create owned window");
        const auto original_proc = GetWindowLongPtrW(window, GWLP_WNDPROC);
        RbConfig config{sizeof(RbConfig), RB_ABI_VERSION, reinterpret_cast<uintptr_t>(window), 0, 0};
        auto invalid = config; ++invalid.abi_version;
        require(initialize(&invalid) == RB_VERSION_MISMATCH, "bad version refuses before hook");
        require(initialize(&config) == RB_OK, "explicit initialize");
        require(initialize(&config) == RB_ALREADY_INITIALIZED, "no duplicate installation");
        RbMenuStatus ui{}; ui.size = sizeof(ui); ui.abi_version = RB_ABI_VERSION;
        require(menu_status(&ui) == RB_OK && ui.menu_window && ui.visible && ui.profile_loaded && ui.offset_count == 219,
                "real menu and219-key external profile initialized");
        const HWND menu = reinterpret_cast<HWND>(ui.menu_window);
        wchar_t menu_class[128]{};
        require(GetClassNameW(menu, menu_class, 128) != 0, "menu class identity");
        require(verify() == RB_PROFILE_UNVERIFIED, "historical profile must not claim matching game build");
        require(show_menu(0) == RB_OK, "hide actual menu before host pixel capture");
        require(SendMessageW(window, WM_APP + 1, 0, 0) == 0x5678 && forwarded == 1,
                "original function return and message forwarding preserved");
        test_reentry = true;
        SendMessageW(window, WM_APP + 1, 0, 0);
        test_reentry = false;
        require(reentrant_result == RB_BUSY, "shutdown refuses inside active hook");
        Worker worker{frame};
        const HANDLE thread = CreateThread(nullptr, 0, other_thread, &worker, 0, nullptr);
        require(thread != nullptr, "create wrong-thread probe");
        require(WaitForSingleObject(thread, 5000) == WAIT_OBJECT_0, "wrong-thread probe returns");
        CloseHandle(thread);
        require(worker.result == RB_WRONG_THREAD, "frame thread affinity enforced");
        SendMessageW(window, WM_MOUSEMOVE, 0, MAKELPARAM(48, 48));
        SendMessageW(window, WM_LBUTTONDOWN, MK_LBUTTON, MAKELPARAM(48, 48));
        require(frame() == RB_OK, "real GDI frame submission");
        RbStatus observed{}; observed.size = sizeof(observed); observed.abi_version = RB_ABI_VERSION;
        require(status(&observed) == RB_OK && observed.frames_presented > 0 &&
                observed.input_events >= 2 && observed.left_button == 1 &&
                observed.phase == RB_PLATFORM_READY &&
                (observed.flags & RB_GAME_BINDINGS_REQUIRED), "honest platform/input status");
        const HDC dc = GetDC(window);
        require(dc != nullptr, "capture host output");
        const COLORREF pixel = GetPixel(dc, 48, 48);
        ReleaseDC(window, dc);
        require(pixel == RGB(240, 144, 64), "rendered pixel matches input-dependent recovered rectangle");

        // Real native controls update real frame geometry/settings.
        require(show_menu(1) == RB_OK, "show native menu");
        page(menu, 0);
        const auto checkbox = GetDlgItem(menu, re_base::menu_control::show_marker);
        require(checkbox != nullptr, "marker control exists");
        SendMessageW(checkbox, BM_CLICK, 0, 0);
        require(menu_status(&ui) == RB_OK && !ui.show_marker, "native checkbox changes model");
        require(show_menu(0) == RB_OK && frame() == RB_OK &&
                ::pixel(window, 48, 48) == RGB(24, 32, 40), "checkbox changes actual output pixels");
        require(show_menu(1) == RB_OK, "reopen settings");
        SendMessageW(checkbox, BM_CLICK, 0, 0);
        const auto slider = GetDlgItem(menu, re_base::menu_control::marker_size);
        SendMessageW(slider, TBM_SETPOS, TRUE, 40);
        SendMessageW(menu, WM_HSCROLL, TB_THUMBPOSITION, reinterpret_cast<LPARAM>(slider));
        const auto accent = GetDlgItem(menu, re_base::menu_control::accent);
        SendMessageW(accent, CB_SETCURSEL, 2, 0);
        SendMessageW(menu, WM_COMMAND, MAKEWPARAM(re_base::menu_control::accent, CBN_SELCHANGE), reinterpret_cast<LPARAM>(accent));
        require(menu_status(&ui) == RB_OK && ui.show_marker && ui.marker_size == 40 && ui.accent == 0xff50c0f0u,
                "slider and accent combo update real preferences");
        capture_menu(menu, L"menu-general.bmp");
        require(show_menu(0) == RB_OK, "hide menu for new settings presentation");
        SendMessageW(window, WM_MOUSEMOVE, 0, MAKELPARAM(48, 48));
        SendMessageW(window, WM_LBUTTONUP, 0, MAKELPARAM(48, 48));
        require(frame() == RB_OK && ::pixel(window, 30, 48) == RGB(240, 192, 80) &&
                ::pixel(window, 25, 48) == RGB(24, 32, 40), "size/accent changes reach recovered geometry and pixels");
        SendMessageW(window, WM_KEYDOWN, VK_F1, 0);
        require(menu_status(&ui) == RB_OK && ui.visible, "F1 reopens menu through parent subclass");
        SendMessageW(GetDlgItem(menu, re_base::menu_control::filter), WM_KEYDOWN, VK_ESCAPE, 0);
        require(menu_status(&ui) == RB_OK && !ui.visible, "Escape hides even when a native control owns focus");

        Scratch scratch;
        const auto edited = scratch.path / L"edited-\u03a9.json";
        std::filesystem::copy_file(std::filesystem::path(argv[1]).parent_path() / L"offsets.json", edited);
        require(load_offsets(utf8(edited.wstring()).c_str()) == RB_OK, "load editable single-file profile with Unicode path");
        std::uint64_t value{}, address{}; std::uint32_t kind{};
        constexpr auto field = "field.getter_3680d4";
        require(get_offset(field, &value, &kind) == RB_OK && value == 0x320 && kind == RB_FIELD_OFFSET,
                "external default field value actually loaded");
        require(set_offset(field, "0x328") == RB_OK &&
                resolve(field, RB_FIELD_OFFSET, 0x200000, &address) == RB_OK && address == 0x200328,
                "profile edit changes address consumer without rebuild");
        require(show_menu(1) == RB_OK, "show offsets editor");
        page(menu, 1);
        SetWindowTextW(GetDlgItem(menu, re_base::menu_control::filter), L"field.getter_3680d4");
        const auto list = GetDlgItem(menu, re_base::menu_control::offsets);
        require(SendMessageW(list, LVM_GETITEMCOUNT, 0, 0) == 1, "offset list filter selects real catalog entry");
        LVITEMW selection{}; selection.stateMask = LVIS_SELECTED | LVIS_FOCUSED; selection.state = selection.stateMask;
        SendMessageW(list, LVM_SETITEMSTATE, 0, reinterpret_cast<LPARAM>(&selection));
        SetWindowTextW(GetDlgItem(menu, re_base::menu_control::selected_value), L"0x330");
        SendMessageW(GetDlgItem(menu, re_base::menu_control::apply), BM_CLICK, 0, 0);
        require(get_offset(field, &value, &kind) == RB_OK && value == 0x330 &&
                menu_status(&ui) == RB_OK && ui.profile_dirty, "native offset Apply changes active profile");
        capture_menu(menu, L"menu-offsets.bmp");
        SendMessageW(GetDlgItem(menu, re_base::menu_control::save), BM_CLICK, 0, 0);
        require(menu_status(&ui) == RB_OK && !ui.profile_dirty && ui.last_profile_result == RB_OK,
                "native Save performs Windows atomic replacement");
        require(set_offset(field, "0x338") == RB_OK, "make unsaved change before Reload");
        SendMessageW(GetDlgItem(menu, re_base::menu_control::reload), BM_CLICK, 0, 0);
        require(get_offset(field, &value, &kind) == RB_OK && value == 0x330,
                "native Reload consumes saved JSON instead of hardcoded value");
        const auto never = scratch.path / L"not-loaded.json";
        SetWindowTextW(GetDlgItem(menu, re_base::menu_control::profile_path), never.c_str());
        SendMessageW(GetDlgItem(menu, re_base::menu_control::save), BM_CLICK, 0, 0);
        require(!std::filesystem::exists(never) && menu_status(&ui) == RB_OK && ui.last_profile_result == RB_PROFILE_ERROR,
                "Save refuses an edited path that has not been loaded");
        require(load_offsets(utf8(edited.wstring()).c_str()) == RB_OK && menu_status(&ui) == RB_OK,
                "restore active selected path");
        const auto generation = ui.profile_generation;
        const auto broken = scratch.path / L"invalid.json";
        { std::ofstream invalid_file(broken); invalid_file << "{"; }
        require(load_offsets(utf8(broken.wstring()).c_str()) == RB_PROFILE_ERROR &&
                menu_status(&ui) == RB_OK && ui.profile_loaded && ui.profile_generation == generation &&
                get_offset(field, &value, &kind) == RB_OK && value == 0x330,
                "invalid reload keeps last good profile and generation");
        require(set_offset(field, "oops") == RB_PROFILE_ERROR &&
                get_offset(field, &value, &kind) == RB_OK && value == 0x330,
                "invalid edit is rejected without losing loaded value");
        address = 0x123;
        require(resolve(field, RB_MODULE_RVA, 0, &address) == RB_PROFILE_ERROR && address == 0x123,
                "kind mismatch preserves caller output");
        require(resolve(field, RB_FIELD_OFFSET, std::numeric_limits<std::uint64_t>::max(), &address) == RB_PROFILE_ERROR &&
                address == 0x123, "address overflow rejected");
        require(get_offset("missing.key", &value, &kind) == RB_OFFSET_NOT_FOUND, "unknown offset has no successful default");
        require(load_offsets(utf8(edited.wstring()).c_str()) == RB_OK &&
                set_offset("gameassembly.site_3225a6", "0x123456") == RB_OK &&
                resolve("gameassembly.site_3225a6", RB_MODULE_RVA, 0x100000000, &address) == RB_OK && address == 0x100123456,
                "module RVA edits affect the numeric resolver");
        require(save_offsets() == RB_OK && verify() == RB_PROFILE_UNVERIFIED,
                "profile persistence never fabricates matching runtime modules");
        page(menu, 2); capture_menu(menu, L"menu-about.bmp");
        require(status(&observed) == RB_OK && (observed.flags & RB_GAME_BINDINGS_REQUIRED) &&
                !(observed.flags & RB_OFFSETS_BUILD_MATCH), "configuration is distinct from game integration");
        require(shutdown_api() == RB_OK && shutdown_api() == RB_OK, "shutdown is repeatable");
        require(!IsWindow(menu), "menu window gone before DLL unload");
        WNDCLASSEXW retired{}; retired.cbSize = sizeof(retired);
        require(!GetClassInfoExW(module, menu_class, &retired), "DLL menu class unregistered");
        require(GetWindowLongPtrW(window, GWLP_WNDPROC) == original_proc, "original window chain restored");
        require(SendMessageW(window, WM_APP + 1, 0, 0) == 0x5678 && forwarded == 3,
                "original still works after cleanup");
        require(initialize(&config) == RB_OK, "reinitialize after cleanup");
        require(DestroyWindow(window) != 0, "destroy window while hook is active"); window = nullptr;
        require(status(&observed) == RB_OK && observed.phase == RB_TARGET_LOST &&
                !(observed.flags & RB_WINDOW_HOOK_INSTALLED), "target destruction detaches hook");
        require(frame() == RB_WINDOW_LOST && shutdown_api() == RB_OK, "target-loss cleanup");
        require(FreeLibrary(module) != 0, "DLL unload after successful shutdown");
        std::puts("PASS: Windows DLL load/init/hook/original/input/pixels/restore/target-loss/unload (owned host only)");
        std::puts("PASS: native menu controls/filter/edit/save/reload +219-key external profile/Unicode/last-good/identity refusal");
        return 0;
    } catch (const std::exception &e) {
        std::fprintf(stderr, "FAIL: %s (Win32 %lu)\n", e.what(), GetLastError());
        // Do not unload a DLL if a remaining callback might still point into it.
        if (window) DestroyWindow(window);
        if (shutdown_api && shutdown_api() == RB_OK) FreeLibrary(module);
        return 1;
    }
}
