#include "win32_freestanding.h"
#include "base_api.h"
#include "base_frame.hpp"
#include "base_menu.hpp"
#include "offset_profile.hpp"
#include "offset_catalog.hpp"

static_assert(sizeof(void *) == 8, "Windows base requires x64");
static_assert(sizeof(RbConfig) == 24 && sizeof(RbStatus) == 72, "version 1 ABI layout");

namespace {

/* ---- Wide/narrow string conversion helpers ---- */
re::ReString narrow(const wchar_t *data, int len) {
    if (len <= 0) return {};
    const int size = WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, data,
                                         len, nullptr, 0, nullptr, nullptr);
    if (!size) __builtin_trap();
    re::ReString output;
    output.resize(ReUSize(size));
    if (WideCharToMultiByte(CP_UTF8, WC_ERR_INVALID_CHARS, data, len,
                            &output[0], size, nullptr, nullptr) != size)
        __builtin_trap();
    return output;
}
re::ReString narrow(const WStr &ws) {
    return narrow(ws.data(), static_cast<int>(wstr_len(ws)));
}
WStr widen(re::ReStringView value) {
    if (value.empty()) return make_wstr();
    const int size = MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS,
                                         value.data(), int(value.size()), nullptr, 0);
    if (!size) __builtin_trap();
    WStr output = make_wstr_n(ReUSize(size));
    if (MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, value.data(), int(value.size()),
                            output.data(), size) != size)
        __builtin_trap();
    return output;
}

/* ---- Bounded string input validation ---- */
re::ReString bounded(const char *value, ReUSize limit) {
    if (!value) __builtin_trap();
    ReUSize length{};
    while (length <= limit && value[length]) ++length;
    if (length > limit) __builtin_trap();
    return re::ReString(value, length);
}

template <ReUSize N> void copy_text(char (&target)[N], const re::ReString &source) {
    const auto size = re::re_min(N - 1, source.size());
    re::re_memcpy(target, source.data(), size); target[size] = 0;
}

/* ---- Simple path operations (replaces std::filesystem) ---- */
re::ReString path_parent(re::ReStringView path) {
    ReUSize pos = path.find_last_of("\\/");
    if (pos == re::ReStringView::npos) return re::ReString(path);
    return re::ReString(path.data(), pos);
}
re::ReString path_join(re::ReStringView dir, re::ReStringView file) {
    re::ReString result(dir);
    if (!result.empty() && result.back() != '/' && result.back() != '\\')
        result += '/';
    result += file;
    return result;
}

/* ---- Profile helpers ---- */
ReU32 profile_code(const re_base::ProfileResult &r) {
    if (r) return RB_OK;
    if (r.error == re_base::ProfileError::unverified_build) return RB_PROFILE_UNVERIFIED;
    if (r.error == re_base::ProfileError::missing_key) return RB_OFFSET_NOT_FOUND;
    return RB_PROFILE_ERROR;
}

struct Context {
    HWND window{};
    DWORD owner{};
    bool installed{};
    unsigned callback_depth{};
    ReU32 maximum_pixels{};
    RbStatus status{};
    re_base::FrameInput input;
    re_base::Frame frame;
    re_base::MenuModel menu_model;
    re_base::NativeMenu menu;
    re_base::OffsetProfile profile;
    re::ReString active_profile_path; // UTF-8
    bool profile_loaded{}, profile_dirty{}, profile_build_match{};
    ReU32 last_profile_result{RB_OK};
    ReU64 profile_generation{};
    ~Context() { re_base::destroy_native_menu(menu); }
};
Context *current{};
HMODULE own_module{};
volatile LONG api_busy{};
struct Gate {
    bool acquired{InterlockedCompareExchange(&api_busy, 1, 0) == 0};
    ~Gate() { if (acquired) InterlockedExchange(&api_busy, 0); }
};
ReU32 result(Context &c, ReU32 code, DWORD error = 0) {
    c.status.last_result = code; c.status.last_win32_error = error; return code;
}

void profile_rows(Context &c) {
    c.menu_model.offsets.clear();
    for (const auto &pair : c.profile.offsets) {
        re::ReString hex_val = "0x" + re::re_to_hex(pair.value.value, false);
        c.menu_model.offsets.push_back({pair.key,
            re::ReString(pair.value.kind == re_base::OffsetKind::module_rva ? "Module RVA" : "Field offset"),
            pair.value.module, hex_val});
    }
    c.menu_model.profile_loaded = c.profile_loaded;
}
ReU32 profile_feedback(Context &c, const re_base::ProfileResult &r, re::ReString success) {
    c.last_profile_result = profile_code(r);
    if (r)
        c.menu_model.profile_summary = re::re_move(success);
    else
        c.menu_model.profile_summary = re::ReString(
            r.error == re_base::ProfileError::unverified_build ? "Build unverified: " : "Profile error: ") + r.message;
    re_base::refresh_native_menu(c.menu);
    return result(c, c.last_profile_result);
}
ReU32 load_profile(Context &c, re::ReStringView path) {
    c.menu_model.profile_path = widen(path);
    re_base::OffsetProfile candidate;
    auto checked = re_base::load_offset_profile(path, candidate);
    if (checked) checked = re_base::validate_catalog_profile(candidate);
    if (!checked) return profile_feedback(c, checked, {});
    c.profile = re::re_move(candidate); c.active_profile_path = re::ReString(path);
    c.profile_loaded = true; c.profile_dirty = false; c.profile_build_match = false;
    ++c.profile_generation;
    profile_rows(c);
    return profile_feedback(c, {}, re::ReString("Loaded ") + c.profile.profile_id + " (" +
        re::re_to_string(static_cast<ReU64>(c.profile.offsets.size())) + " entries). Build unverified; game bindings required.");
}
ReU32 save_profile(Context &c) {
    re::ReString menu_path = narrow(c.menu_model.profile_path);
    if (!c.profile_loaded || menu_path != c.active_profile_path)
        return profile_feedback(c, {re_base::ProfileError::io,
            re::ReString("Load the selected path successfully before saving. Last valid profile retained.")}, {});
    const auto checked = re_base::save_offset_profile(c.active_profile_path, c.profile);
    if (checked) c.profile_dirty = false;
    return profile_feedback(c, checked, re::ReString("Saved ") + c.profile.profile_id + ". Build unverified unless separately checked.");
}
ReU32 edit_profile(Context &c, re::ReStringView key, re::ReStringView value) {
    if (!c.profile_loaded)
        return profile_feedback(c, {re_base::ProfileError::missing_key, re::ReString("No profile loaded.")}, {});
    const auto checked = re_base::set_profile_offset(c.profile, key, value);
    if (checked) {
        c.profile_dirty = true; c.profile_build_match = false; ++c.profile_generation;
        profile_rows(c);
    }
    return profile_feedback(c, checked, re::ReString("Applied ") + re::ReString(key) + "; unsaved changes. Build unverified.");
}
re::ReString default_profile_path() {
    WStr filename = make_wstr_n(32768);
    const auto count = GetModuleFileNameW(own_module, filename.data(), DWORD(wstr_len(filename)));
    if (!count || count >= wstr_len(filename)) __builtin_trap();
    wstr_resize(filename, count);
    re::ReString utf8_path = narrow(filename);
    return path_join(path_parent(utf8_path), "offsets.json");
}
re_base::ProfileResult loaded_identity(const re::ReString &name, re_base::ModuleIdentity &identity) {
    WStr wide_name = widen(name);
    const auto module = GetModuleHandleW(wide_name.data());
    if (!module) return {re_base::ProfileError::unverified_build, name + " is not loaded."};
    MODULEINFO info{};
    if (!GetModuleInformation(GetCurrentProcess(), module, &info, sizeof(info)))
        return {re_base::ProfileError::io, re::ReString("Cannot inspect ") + name};
    WStr modpath = make_wstr_n(32768);
    const auto count = GetModuleFileNameW(module, modpath.data(), DWORD(wstr_len(modpath)));
    if (!count || count >= wstr_len(modpath)) return {re_base::ProfileError::io, re::ReString("Cannot locate ") + name};
    wstr_resize(modpath, count);
    struct File {
        HANDLE handle{INVALID_HANDLE_VALUE};
        ~File() { if (handle != INVALID_HANDLE_VALUE) CloseHandle(handle); }
    } file;
    file.handle = CreateFileW(modpath.data(), GENERIC_READ, FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE,
                              nullptr, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
    if (file.handle == INVALID_HANDLE_VALUE) return {re_base::ProfileError::io, re::ReString("Cannot hash ") + name};
    struct Hash {
        BCRYPT_ALG_HANDLE algorithm{}; BCRYPT_HASH_HANDLE handle{};
        ~Hash() { if (handle) BCryptDestroyHash(handle); if (algorithm) BCryptCloseAlgorithmProvider(algorithm, 0); }
    } hash;
    if (BCryptOpenAlgorithmProvider(&hash.algorithm, BCRYPT_SHA256_ALGORITHM, nullptr, 0) < 0)
        return {re_base::ProfileError::io, re::ReString("SHA256 unavailable")};
    DWORD object_size{}, got{};
    if (BCryptGetProperty(hash.algorithm, BCRYPT_OBJECT_LENGTH, reinterpret_cast<PUCHAR>(&object_size),
                           sizeof(object_size), &got, 0) < 0)
        return {re_base::ProfileError::io, re::ReString("SHA256 object unavailable")};
    re::ReVector<UCHAR> object(object_size), buffer(65536);
    if (BCryptCreateHash(hash.algorithm, &hash.handle, object.data(), object_size, nullptr, 0, 0) < 0)
        return {re_base::ProfileError::io, re::ReString("Cannot create SHA256")};
    for (;;) {
        DWORD received{};
        if (!ReadFile(file.handle, buffer.data(), DWORD(buffer.size()), &received, nullptr))
            return {re_base::ProfileError::io, re::ReString("Cannot read ") + name};
        if (!received) break;
        if (BCryptHashData(hash.handle, buffer.data(), received, 0) < 0)
            return {re_base::ProfileError::io, re::ReString("Cannot hash ") + name};
    }
    re::ReArray<UCHAR, 32> digest{};
    if (BCryptFinishHash(hash.handle, digest.data(), DWORD(digest.size()), 0) < 0)
        return {re_base::ProfileError::io, re::ReString("Cannot finish SHA256")};
    re::ReStringBuilder text(64);
    for (auto byte : digest) text.append_hex_padded(byte, 2, false);
    identity = {text.build(), info.SizeOfImage};
    return {};
}
ReU32 present(Context &c) {
    if (!c.window || !IsWindow(c.window)) return result(c, RB_WINDOW_LOST);
    if (c.frame.pixels.empty()) return result(c, RB_NOT_INITIALIZED);
    const HDC dc = GetDC(c.window);
    if (!dc) return result(c, RB_PLATFORM_ERROR, GetLastError());
    BITMAPINFO bitmap{};
    bitmap.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bitmap.bmiHeader.biWidth = LONG(c.frame.width);
    bitmap.bmiHeader.biHeight = -LONG(c.frame.height);
    bitmap.bmiHeader.biPlanes = 1;
    bitmap.bmiHeader.biBitCount = 32;
    bitmap.bmiHeader.biCompression = BI_RGB;
    const int copied = StretchDIBits(dc, 0, 0, int(c.frame.width), int(c.frame.height),
                                    0, 0, int(c.frame.width), int(c.frame.height),
                                    c.frame.pixels.data(), &bitmap, DIB_RGB_COLORS, SRCCOPY);
    const bool copy_failed = copied == 0 || copied == -1;
    const DWORD error = copy_failed ? GetLastError() : 0;
    const bool released = ReleaseDC(c.window, dc) != 0;
    if (copy_failed || !released)
        return result(c, RB_PLATFORM_ERROR, error);
    ++c.status.frames_presented;
    c.status.flags |= RB_FRAME_PRESENTED;
    return result(c, RB_OK);
}
LRESULT CALLBACK window_hook(HWND window, UINT message, WPARAM w, LPARAM l,
                              UINT_PTR id, DWORD_PTR reference) noexcept {
    auto &c = *reinterpret_cast<Context *>(reference);
    ++c.callback_depth;
    ++c.status.window_messages;
    switch (message) {
    case WM_MOUSEMOVE:
        c.input.x = static_cast<short>(LOWORD(l));
        c.input.y = static_cast<short>(HIWORD(l));
        ++c.status.input_events;
        break;
    case WM_LBUTTONDOWN: case WM_LBUTTONUP:
        c.input.down = message == WM_LBUTTONDOWN;
        ++c.status.input_events;
        break;
    case WM_KEYDOWN:
        if (w == VK_F1 && !(l & (LPARAM(1) << 30)))
            re_base::set_native_menu_visible(c.menu, !re_base::native_menu_visible(c.menu));
        ++c.status.input_events;
        break;
    case WM_KILLFOCUS:
        c.input.down = false;
        break;
    case WM_NCDESTROY:
        if (RemoveWindowSubclass(window, window_hook, id)) {
            c.installed = false;
            c.status.flags &= ~RB_WINDOW_HOOK_INSTALLED;
        }
        c.window = nullptr;
        c.status.phase = RB_TARGET_LOST;
        break;
    default: break;
    }
    const LRESULT original = DefSubclassProc(window, message, w, l);
    if (message == WM_PAINT && c.window && !c.frame.pixels.empty()) (void)present(c);
    --c.callback_depth;
    return original;
}
void module_presence(Context &c) {
    c.status.flags &= ~(RB_GAMEASSEMBLY_LOADED | RB_UNITYPLAYER_LOADED);
    if (GetModuleHandleW(L"GameAssembly.dll")) c.status.flags |= RB_GAMEASSEMBLY_LOADED;
    if (GetModuleHandleW(L"UnityPlayer.dll")) c.status.flags |= RB_UNITYPLAYER_LOADED;
    c.status.flags |= RB_GAME_BINDINGS_REQUIRED;
}
ReU32 check_owner() {
    if (!current) return RB_NOT_INITIALIZED;
    return current->owner == GetCurrentThreadId() ? RB_OK : RB_WRONG_THREAD;
}
template <class F> ReU32 with_context(F &&function) {
    Gate gate;
    if (!gate.acquired) return RB_BUSY;
    const auto checked = check_owner();
    if (checked != RB_OK) return checked;
    return function(*current);
}
}

extern "C" RB_API ReU32 RB_QueryAbi(void) { return RB_ABI_VERSION; }
extern "C" RB_API ReU32 RB_Initialize(const RbConfig *config) {
    Gate gate;
    if (!gate.acquired) return RB_BUSY;
    if (!config || config->size != sizeof(RbConfig) || config->reserved) return RB_INVALID_ARGUMENT;
    if (config->abi_version != RB_ABI_VERSION) return RB_VERSION_MISMATCH;
    if (current) return RB_ALREADY_INITIALIZED;
    const HWND window = reinterpret_cast<HWND>(config->owned_window);
    DWORD process{};
    const DWORD owner = GetWindowThreadProcessId(window, &process);
    if (!owner || process != GetCurrentProcessId()) return RB_INVALID_ARGUMENT;
    if (owner != GetCurrentThreadId()) return RB_WRONG_THREAD;
    const auto limit = config->maximum_pixels ? config->maximum_pixels : 4194304u;
    if (limit > 16777216u) return RB_RESOURCE_LIMIT;
    auto c = re::re_make_unique<Context>();
    c->window = window; c->owner = owner; c->maximum_pixels = limit;
    c->status.size = sizeof(RbStatus); c->status.abi_version = RB_ABI_VERSION;
    c->status.phase = RB_PLATFORM_READY; c->status.owner_thread = owner;
    module_presence(*c);
    POINT point{};
    if (!GetCursorPos(&point) || !ScreenToClient(window, &point)) return RB_PLATFORM_ERROR;
    c->input.x = point.x; c->input.y = point.y;
    (void)load_profile(*c, default_profile_path());
    auto *context = c.get();
    re_base::MenuActions actions;
    actions.reload = [context](const wchar_t *path) {
        WStr ws = make_wstr(path);
        re::ReString utf8_path = narrow(ws);
        (void)load_profile(*context, utf8_path);
    };
    actions.save = [context] { (void)save_profile(*context); };
    actions.apply_offset = [context](const re::ReString &key, const re::ReString &value) {
        (void)edit_profile(*context, key, value);
    };
    re::ReString menu_error;
    if (!re_base::create_native_menu(c->menu, window, c->menu_model, re::re_move(actions),
                                     c->callback_depth, menu_error)) return RB_PLATFORM_ERROR;
    if (!SetWindowSubclass(window, window_hook, reinterpret_cast<UINT_PTR>(c.get()),
                           reinterpret_cast<DWORD_PTR>(c.get()))) return RB_PLATFORM_ERROR;
    c->installed = true;
    c->status.flags |= RB_WINDOW_HOOK_INSTALLED;
    current = c.release();
    re_base::set_native_menu_visible(current->menu, true);
    return RB_OK;
}
extern "C" RB_API ReU32 RB_GetStatus(RbStatus *status) {
    Gate gate;
    if (!gate.acquired) return RB_BUSY;
    if (!status || status->size != sizeof(RbStatus)) return RB_INVALID_ARGUMENT;
    if (status->abi_version != RB_ABI_VERSION) return RB_VERSION_MISMATCH;
    const auto checked = check_owner();
    if (checked != RB_OK) return checked;
    module_presence(*current);
    current->status.flags &= ~(RB_MENU_VISIBLE | RB_OFFSETS_LOADED | RB_OFFSETS_DIRTY | RB_OFFSETS_BUILD_MATCH);
    if (re_base::native_menu_visible(current->menu)) current->status.flags |= RB_MENU_VISIBLE;
    if (current->profile_loaded) current->status.flags |= RB_OFFSETS_LOADED;
    if (current->profile_dirty) current->status.flags |= RB_OFFSETS_DIRTY;
    if (current->profile_build_match) current->status.flags |= RB_OFFSETS_BUILD_MATCH;
    current->status.mouse_x = current->input.x; current->status.mouse_y = current->input.y;
    current->status.left_button = current->input.down; current->status.visible = current->input.visible;
    *status = current->status;
    return RB_OK;
}
extern "C" RB_API ReU32 RB_Frame(void) {
    Gate gate;
    if (!gate.acquired) return RB_BUSY;
    const auto checked = check_owner();
    if (checked != RB_OK) return checked;
    auto &c = *current;
    if (!c.window) return result(c, RB_WINDOW_LOST);
    if (c.callback_depth) return result(c, RB_BUSY);
    RECT rectangle{};
    if (!GetClientRect(c.window, &rectangle)) return result(c, RB_PLATFORM_ERROR, GetLastError());
    if (rectangle.right <= 0 || rectangle.bottom <= 0) return result(c, RB_WINDOW_LOST);
    c.input.visible = c.menu_model.preferences.show_marker;
    c.input.marker_size = c.menu_model.preferences.marker_size;
    c.input.accent = c.menu_model.preferences.accent;
    re_base::build_frame(c.frame, ReU32(rectangle.right), ReU32(rectangle.bottom),
                          c.maximum_pixels, c.input);
    return present(c);
}
extern "C" RB_API ReU32 RB_Shutdown(void) {
    Gate gate;
    if (!gate.acquired) return RB_BUSY;
    if (!current) return RB_OK;
    const auto checked = check_owner();
    if (checked != RB_OK) return checked;
    auto &c = *current;
    if (c.callback_depth) return result(c, RB_BUSY);
    if (c.installed) {
        if (!c.window || !RemoveWindowSubclass(c.window, window_hook, reinterpret_cast<UINT_PTR>(&c)))
            return result(c, RB_PLATFORM_ERROR, GetLastError());
        c.installed = false;
    }
    delete current; current = nullptr;
    return RB_OK;
}

extern "C" RB_API ReU32 RB_SetMenuVisible(ReU32 visible) {
    if (visible > 1) return RB_INVALID_ARGUMENT;
    return with_context([&](Context &c) { re_base::set_native_menu_visible(c.menu, visible != 0); return RB_OK; });
}
extern "C" RB_API ReU32 RB_GetMenuStatus(RbMenuStatus *status) {
    if (!status || status->size != sizeof(*status)) return RB_INVALID_ARGUMENT;
    if (status->abi_version != RB_ABI_VERSION) return RB_VERSION_MISMATCH;
    return with_context([&](Context &c) {
        RbMenuStatus value{}; value.size = sizeof(value); value.abi_version = RB_ABI_VERSION;
        value.menu_window = reinterpret_cast<uintptr_t>(re_base::native_menu_handle(c.menu));
        value.visible = re_base::native_menu_visible(c.menu);
        value.show_marker = c.menu_model.preferences.show_marker;
        value.marker_size = ReU32(c.menu_model.preferences.marker_size);
        value.accent = c.menu_model.preferences.accent;
        value.profile_loaded = c.profile_loaded; value.profile_dirty = c.profile_dirty;
        value.offset_count = ReU32(c.profile.offsets.size());
        value.last_profile_result = c.last_profile_result; value.profile_generation = c.profile_generation;
        copy_text(value.profile_id, c.profile.profile_id);
        copy_text(value.profile_path, narrow(c.menu_model.profile_path));
        copy_text(value.message, c.menu_model.profile_summary);
        *status = value; return RB_OK;
    });
}
extern "C" RB_API ReU32 RB_LoadOffsets(const char *path) {
    return with_context([&](Context &c) { return load_profile(c, bounded(path, 32767)); });
}
extern "C" RB_API ReU32 RB_SaveOffsets(void) {
    return with_context([](Context &c) { return save_profile(c); });
}
extern "C" RB_API ReU32 RB_SetOffset(const char *key, const char *value) {
    return with_context([&](Context &c) { return edit_profile(c, bounded(key, 256), bounded(value, 32)); });
}
extern "C" RB_API ReU32 RB_GetOffset(const char *key, ReU64 *value, ReU32 *kind) {
    if (!value || !kind) return RB_INVALID_ARGUMENT;
    return with_context([&](Context &c) -> ReU32 {
        if (!c.profile_loaded) return RB_PROFILE_ERROR;
        const auto found = c.profile.offsets.find(bounded(key, 256));
        if (!found) return RB_OFFSET_NOT_FOUND;
        *value = (*found)->value;
        *kind = (*found)->kind == re_base::OffsetKind::module_rva ? RB_MODULE_RVA : RB_FIELD_OFFSET;
        return RB_OK;
    });
}
extern "C" RB_API ReU32 RB_ResolveOffset(const char *key, ReU32 kind,
                                                 ReU64 base, ReU64 *address) {
    if (!address || (kind != RB_MODULE_RVA && kind != RB_FIELD_OFFSET)) return RB_INVALID_ARGUMENT;
    return with_context([&](Context &c) -> ReU32 {
        if (!c.profile_loaded) return RB_PROFILE_ERROR;
        ReU64 resolved{};
        const auto checked = re_base::resolve_profile_address(c.profile, bounded(key, 256),
            kind == RB_MODULE_RVA ? re_base::OffsetKind::module_rva : re_base::OffsetKind::field_offset, base, resolved);
        if (checked) *address = resolved;
        return profile_code(checked);
    });
}
extern "C" RB_API ReU32 RB_VerifyOffsets(void) {
    return with_context([](Context &c) -> ReU32 {
        c.profile_build_match = false;
        if (!c.profile_loaded) return RB_PROFILE_ERROR;
        re::ReMap<re::ReString, re_base::ModuleIdentity> observed;
        for (const auto &pair : c.profile.modules) {
            if (pair.value.sha256.empty() || !pair.value.image_size)
                return profile_feedback(c, {re_base::ProfileError::unverified_build,
                    re::ReString("Reference profile has no verified module hash/image size: ") + pair.key}, {});
            re_base::ModuleIdentity measured;
            const auto checked = loaded_identity(pair.key, measured);
            if (!checked) return profile_feedback(c, checked, {});
            observed.insert(pair.key, re::re_move(measured));
        }
        const auto checked = re_base::validate_profile_modules(c.profile, observed);
        c.profile_build_match = bool(checked);
        return profile_feedback(c, checked, re::ReString("Loaded module fingerprints match. Game ABI/bindings still required."));
    });
}

// No initialization, hooks, cleanup, waits or game calls under the loader lock.
BOOL WINAPI DllMain(HINSTANCE module, DWORD reason, LPVOID) {
    if (reason == DLL_PROCESS_ATTACH) own_module = module;
    return TRUE;
}
