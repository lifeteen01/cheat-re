#include "scene.hpp"
#include <algorithm>
#include <cmath>
#include <fstream>
#include <functional>
#include <iostream>
#include <stdexcept>
#include <string>
#ifdef _WIN32
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <windowsx.h>
#endif

namespace owned_scene {
namespace {
void require(bool condition, std::string_view message) {
    if (!condition) throw std::runtime_error(std::string(message));
}
std::uint64_t pixel_hash(const Resources &resources) {
    std::uint64_t hash = 1469598103934665603ull;
    for (const auto pixel : resources.pixels) {
        hash ^= pixel;
        hash *= 1099511628211ull;
    }
    return hash;
}
std::uint64_t esp_geometry_hash(const Resources &resources) {
    const auto &list = resources.draw.lists.at(Resources::esp_list);
    std::uint64_t hash = 1469598103934665603ull;
    for (std::int32_t index = 0; index < list.vertices.size; ++index)
        for (const auto byte : list.vertices.at(index)) {
            hash ^= std::to_integer<unsigned char>(byte);
            hash *= 1099511628211ull;
        }
    return hash;
}
struct Host {
    Scene scene;
    Input input;
    Telemetry telemetry;
    float entity_shift{};
    std::filesystem::path profile_path;
    std::function<void()> present;
    std::function<void(unsigned, unsigned)> platform_resize;
    std::function<void(float, float, bool)> platform_pointer;
    std::function<void()> platform_toggle;
    std::function<void(std::u16string_view)> platform_text;
    std::function<void(unsigned, bool, bool)> platform_edit_key;
    std::function<bool(const std::filesystem::path &)> platform_reload;
    std::function<void(const std::filesystem::path &)> capture_window;
    std::uint64_t presents{}, paints{};
    std::string failure;
    void frame() {
        telemetry = scene.frame(input, entity_shift);
        input.pressed = input.released = false;
        input.characters.clear();
        input.clipboard.reset();
        ++presents;
        if (present) present();
    }
    void pointer(float mouse_x, float mouse_y, bool down) {
        if (platform_pointer) platform_pointer(mouse_x, mouse_y, down);
        else {
            input.mouse = {mouse_x, mouse_y};
            input.pressed = down && !input.down;
            input.released = !down && input.down;
            input.down = down;
        }
        frame();
    }
    void click(std::string_view key, float fraction_x = 0.5f, float fraction_y = 0.5f) {
        const auto found = telemetry.menu.controls.find(std::string(key));
        require(found != telemetry.menu.controls.end(), "Missing menu control: " + std::string(key));
        const auto rect = found->second;
        const float mouse_x = rect.x + (rect.z - rect.x) * fraction_x;
        const float mouse_y = rect.y + (rect.w - rect.y) * fraction_y;
        pointer(mouse_x, mouse_y, false);
        pointer(mouse_x, mouse_y, true);
        pointer(mouse_x, mouse_y, true);
        pointer(mouse_x, mouse_y, false);
        frame();
    }
    void toggle() {
        if (platform_toggle) platform_toggle();
        else input.menu_open = !input.menu_open;
        frame();
    }
    void color_popup(bool open) {
        if (open) {
            if (!telemetry.menu.controls.contains("color_popup")) click("color_preview");
        } else if (telemetry.menu.controls.contains("color_popup")) {
            const float mouse_x = float(input.width) - 5;
            const float mouse_y = float(input.height) - 80;
            pointer(mouse_x, mouse_y, false);
            pointer(mouse_x, mouse_y, true);
            pointer(mouse_x, mouse_y, false);
        }
        for (unsigned frame_index = 0; frame_index < 48; ++frame_index) frame();
        require(telemetry.menu.controls.contains("color_popup") == open,
                "Recovered color popup did not open/close through actual input");
        if (open) require(telemetry.menu.controls.contains("color_hex"),
                          "Recovered color popup lost editor after settling");
    }
    void resize(unsigned width, unsigned height) {
        if (platform_resize) platform_resize(width, height);
        else { input.width = width; input.height = height; }
        frame();
    }
    bool reload_profile(const std::filesystem::path &path) {
        if (platform_reload) return platform_reload(path);
        return bool(scene.reload(path));
    }
    void text(std::u16string_view characters) {
        if (platform_text) platform_text(characters);
        else input.characters.append(characters);
        frame();
    }
    void edit_key(unsigned key, bool down, bool control = false) {
        require(key >= 0x200 && key < 0x28c, "Owned edit key outside named-key range");
        if (platform_edit_key) platform_edit_key(key, down, control);
        else { input.keys[key - 0x200] = down; input.control = control; }
        frame();
    }
};
void write_capture(const std::filesystem::path &output, std::string_view name,
                   const Host &host, std::ostream &events) {
    const auto &resources = host.scene.resources;
    std::ofstream image(output / (std::string(name) + ".ppm"), std::ios::binary);
    require(bool(image), "Cannot create scene capture");
    image << "P6\n" << resources.width << ' ' << resources.height << "\n255\n";
    for (const auto pixel : resources.pixels) {
        const char bytes[]{char(pixel & 255), char((pixel >> 8) & 255), char((pixel >> 16) & 255)};
        image.write(bytes, 3);
    }
    require(bool(image), "Cannot write scene capture");
    if (host.capture_window) host.capture_window(output / (std::string(name) + "_window.ppm"));
    events << "{\"stage\":\"" << name << "\",\"esp\":" << host.scene.settings.esp
           << ",\"boxes\":" << host.telemetry.esp.boxes << ",\"names\":" << host.telemetry.esp.names
           << ",\"name_raster_passes\":" << host.telemetry.esp.name_raster_passes
           << ",\"frame_finalized\":" << host.telemetry.frame.finalized
           << ",\"frame_vertices\":" << host.telemetry.frame.vertices
           << ",\"frame_indices\":" << host.telemetry.frame.indices
           << ",\"gpu_executed\":" << host.telemetry.frame.gpu_executed
           << ",\"owned_client_module\":" << host.telemetry.frame.client_install.module
           << ",\"owned_client_original\":" << host.telemetry.frame.original_target
           << ",\"owned_client_record_original\":" << host.telemetry.frame.client_install.record.original
           << ",\"owned_client_detour\":" << host.telemetry.frame.client_install.record.detour
           << ",\"owned_client_method_after\":" << host.telemetry.frame.client_install.method_after
           << ",\"owned_client_cached_methods\":" << host.telemetry.frame.client_install.result.methods_cached
           << ",\"ordinary_context_boundary\":" << host.telemetry.frame.ordinary_context_boundary
           << ",\"menu_visible\":" << host.telemetry.menu.visible
           << ",\"ui_delta\":" << host.telemetry.menu.io_delta
           << ",\"recovered_io_delta\":" << host.telemetry.frame.io.delta_time
           << ",\"ui_mouse\":[" << host.telemetry.menu.io_mouse.x << ','
           << host.telemetry.menu.io_mouse.y << ']'
           << ",\"recovered_io_mouse\":[" << host.telemetry.frame.io.mouse_position.x << ','
           << host.telemetry.frame.io.mouse_position.y << ']'
           << ",\"color_popup\":" << host.telemetry.menu.controls.contains("color_popup")
           << ",\"name_font_size\":" << host.telemetry.esp.name_font_size
           << ",\"selected\":" << host.telemetry.esp.selected
           << ",\"distance\":" << host.scene.settings.distance
           << ",\"pixel_hash\":\"" << pixel_hash(resources)
           << "\",\"esp_geometry_hash\":\"" << esp_geometry_hash(resources) << "\",\"rgba\":[";
    for (std::size_t component = 0; component < 4; ++component) {
        if (component) events << ',';
        events << host.scene.settings.color[component];
    }
    events << "],\"labels\":[";
    for (std::size_t index = 0; index < host.telemetry.esp.labels.size(); ++index) {
        if (index) events << ',';
        events << '"' << host.telemetry.esp.labels[index] << '"';
    }
    events << "],\"submitted_lists\":[";
    for (std::size_t index = 0; index < host.telemetry.frame.exported_lists.size(); ++index) {
        if (index) events << ',';
        events << host.telemetry.frame.exported_lists[index];
    }
    events << "],\"presented_lists\":[";
    const auto presentation = resources.presentation_order();
    for (std::size_t index = 0; index < presentation.size(); ++index) {
        if (index) events << ',';
        events << presentation[index];
    }
    events << "],\"bounds\":{";
    bool first = true;
    for (const auto &[name, rect] : host.telemetry.esp.bounds) {
        if (!first) events << ',';
        first = false;
        events << '"' << name << "\":[" << rect.x << ',' << rect.y << ',' << rect.z << ',' << rect.w << ']';
    }
    events << "}}\n";
    std::cout << "[C] " << name << ": boxes=" << host.telemetry.esp.boxes
              << " names=" << host.telemetry.esp.names << " selected=" << host.telemetry.esp.selected << '\n';
}
void run_checks(Host &host, const std::filesystem::path &output) {
    check_resources();
    check_semantic_fidelity();
    check_frame_lifecycle();
    check_esp_root_boundary();
    check_menu_lifecycle();
    std::filesystem::create_directories(output);
    std::ofstream events(output / "events.jsonl");
    require(bool(events), "Cannot create runtime event evidence");
    host.frame();
    require(host.telemetry.menu.visible, "Internal menu did not open");
    require(host.telemetry.esp.records == 5 && host.telemetry.esp.selected == 4 &&
            host.telemetry.esp.boxes == 3 && host.telemetry.esp.names == 3,
            "Known front/behind/distant fixture projection mismatch");
    require(host.scene.resources.trace.calls["font_text_plain_361bcc"] > 0,
            "ESP names bypass the recovered plain-text controller");
    require(host.telemetry.esp.name_raster_passes == 27 && host.telemetry.esp.name_font_size == 10,
            "Recovered ESP name font selection or nine-pass outline is missing");
    const auto birch = host.telemetry.esp.bounds.at("Birch");
    const float focal = 320.0f / std::tan(65.0f * 0.008726646259971648f);
    require(std::abs((birch.x + birch.z) * 0.5f - 480) < 0.1f &&
            std::abs((birch.w - birch.y) - 1.8f * focal / 18.0f) < 1.0f,
            "Known Birch projection does not match independent camera geometry");
    const auto initial_boxes = host.telemetry.esp.boxes;
    const auto initial_labels = host.telemetry.esp.labels;
    host.frame();
    write_capture(output, "01_menu_and_esp", host, events);
    host.click("esp");
    require(!host.scene.settings.esp && !host.telemetry.esp.boxes && !host.telemetry.esp.names,
            "Reconstructed checkbox did not disable ESP");
    write_capture(output, "02_checkbox_esp_off", host, events);
    host.click("esp");
    require(host.scene.settings.esp && host.telemetry.esp.boxes == initial_boxes, "ESP did not recover");
    host.click("boxes");
    require(!host.telemetry.esp.boxes && host.telemetry.esp.names > 0, "Boxes checkbox ignored");
    host.click("boxes");
    host.click("names");
    require(!host.telemetry.esp.names && host.telemetry.esp.boxes > 0, "Names checkbox ignored");
    host.click("names");
    host.color_popup(true);
    const auto original_color = host.scene.settings.color;
    const auto original_esp_geometry = esp_geometry_hash(host.scene.resources);
    host.click("color_hue", 0.5f, 0.12f);
    host.click("color", 0.90f, 0.18f);
    require(host.scene.settings.color != original_color, "Reconstructed color picker ignored input");
    require(esp_geometry_hash(host.scene.resources) != original_esp_geometry,
            "Color picker changed menu but not actual ESP vertices");
    write_capture(output, "03_color_changes_esp", host, events);
    host.click("color_hex");
    require(host.telemetry.menu.keyboard_capture, "Hex editor did not acquire keyboard input");
    const auto edit_entity_shift = host.entity_shift;
    const auto edit_camera = host.scene.camera.position;
    host.edit_key(0x222, true, true);
    require(host.telemetry.menu.selection_start != host.telemetry.menu.selection_end,
            "Reconstructed hex editor ignored Ctrl+A");
    host.edit_key(0x222, false);
    require(host.telemetry.menu.keyboard_capture, "Ctrl+A key release lost the hex editor");
    const auto alpha_before_text = host.scene.settings.color[3];
    const auto editor_before_text = host.telemetry.menu.editor_text;
    host.text(u"FF000000");
    require(host.telemetry.menu.editor_text == editor_before_text,
            "Recovered ordinary-character no-insertion behavior was replaced");
    host.input.clipboard = "FF000000";
    host.edit_key(0x237, true, true);
    host.edit_key(0x237, false);
    require(host.telemetry.menu.editor_text == "FF000000",
            "Reconstructed clipboard paste was not applied: " + host.telemetry.menu.editor_text);
    host.edit_key(0x20b, true);
    host.edit_key(0x20b, false);
    require(host.telemetry.menu.editor_text == "FF00000", "Recovered Backspace did not remove a hex digit");
    host.edit_key(0x201, true);
    host.edit_key(0x201, false);
    host.edit_key(0x20a, true);
    host.edit_key(0x20a, false);
    require(host.telemetry.menu.editor_text == "FF0000", "Recovered cursor/Delete path did not edit hex text");
    host.edit_key(0x20d, true);
    host.edit_key(0x20d, false);
    require(host.scene.settings.color[0] == 1 && host.scene.settings.color[1] == 0 &&
            host.scene.settings.color[2] == 0 && host.scene.settings.color[3] == alpha_before_text,
            "Reconstructed hex editor did not change RGB or preserve native hex-alpha behavior: " +
            host.telemetry.menu.editor_text + " rgba=" + std::to_string(host.scene.settings.color[0]) + "," +
            std::to_string(host.scene.settings.color[1]) + "," + std::to_string(host.scene.settings.color[2]) + "," +
            std::to_string(host.scene.settings.color[3]));
    require(host.entity_shift == edit_entity_shift && host.scene.camera.position.x == edit_camera.x &&
            !host.telemetry.menu.keyboard_capture,
            "Editor shortcut leaked into scene controls or Enter did not deactivate");
    require(esp_geometry_hash(host.scene.resources) != original_esp_geometry,
            "Pasted hex color did not affect reconstructed ESP vertices");
    write_capture(output, "03b_hex_paste_changes_esp", host, events);
    const auto colored_hash = pixel_hash(host.scene.resources);
    host.color_popup(false);
    host.click("distance", 0.01f);
    require(host.telemetry.esp.boxes < initial_boxes, "Reconstructed slider did not filter actual ESP");
    write_capture(output, "04_slider_filters_esp", host, events);
    host.click("distance", 0.99f);
    require(host.telemetry.esp.boxes >= initial_boxes, "Distance slider did not restore ESP");
    require(pixel_hash(host.scene.resources) != colored_hash, "Slider changed no pixels");
    host.toggle();
    require(!host.telemetry.menu.visible && host.telemetry.esp.boxes > 0, "Hotkey did not hide internal menu");
    write_capture(output, "05_hotkey_menu_hidden", host, events);
    const auto old_bounds = host.telemetry.esp.bounds;
    require(!old_bounds.empty(), "No projected bounds telemetry");
    host.scene.camera.position.x += 1.0f;
    host.scene.camera.yaw += 0.08f;
    host.frame();
    require(!host.telemetry.esp.bounds.empty(), "Camera movement lost all entities");
    bool moved = false;
    for (const auto &[label, rect] : old_bounds) {
        const auto found = host.telemetry.esp.bounds.find(label);
        if (found != host.telemetry.esp.bounds.end() && std::abs(found->second.x - rect.x) > 1) moved = true;
    }
    require(moved, "Camera did not change reconstructed projection");
    write_capture(output, "06_camera_moved", host, events);
    const auto camera_hash = pixel_hash(host.scene.resources);
    host.entity_shift = 1.25f;
    host.frame();
    require(pixel_hash(host.scene.resources) != camera_hash, "Entity movement changed no ESP pixels");
    write_capture(output, "07_entities_moved", host, events);
    host.scene.camera = Camera{};
    host.entity_shift = 0;
    host.frame();
    host.scene.camera.vertical_fov = 50;
    host.frame();
    const auto zoomed = host.telemetry.esp.bounds.at("Birch");
    require(zoomed.z - zoomed.x > birch.z - birch.x, "FOV did not change projected boxes");
    host.scene.camera = Camera{};
    host.entity_shift = 1000;
    host.frame();
    require(!host.telemetry.esp.boxes && !host.telemetry.esp.names && host.telemetry.esp.bounds.empty(),
            "Offscreen side clipping fabricated visible ESP");
    host.entity_shift = 0;
    host.frame();
    auto changed = host.scene.profile;
    changed.offsets.at("field.player_display_name_reference.338").value = 0x340;
    const auto candidate = output / "owned_profile.json";
    require(bool(re_base::save_offset_profile(candidate, changed)), "Cannot save owned alternate profile");
    require(host.reload_profile(candidate), "Valid changed profile rejected");
    host.frame();
    require(host.telemetry.esp.profile_reads > 0 && host.telemetry.esp.labels != initial_labels,
            "Reload did not change consumed name pointer/address resolution");
    require(std::any_of(host.telemetry.esp.labels.begin(), host.telemetry.esp.labels.end(),
            [](const std::string &label) { return label.find("Alt ") != std::string::npos; }),
            "Alternate owned fields did not reach labels");
    write_capture(output, "08_offset_reload_changes_labels", host, events);
    const auto valid_json = re_base::serialize_offset_profile(host.scene.profile);
    auto expect_rejection = [&] {
        require(!host.reload_profile(candidate), "Incompatible profile accepted");
        require(re_base::serialize_offset_profile(host.scene.profile) == valid_json, "Last-good profile lost");
        host.frame();
    };
    changed.offsets.at("field.player_display_name_reference.338").value = 0x342;
    require(bool(re_base::save_offset_profile(candidate, changed)), "Cannot save incompatible fixture");
    expect_rejection();
    changed.offsets.erase("field.player_display_name_reference.338");
    require(bool(re_base::save_offset_profile(candidate, changed)), "Cannot save missing-key fixture");
    expect_rejection();
    { std::ofstream malformed(candidate); malformed << "{\"schema_version\":99}"; }
    expect_rejection();
    { std::ofstream malformed(candidate); malformed << "{invalid"; }
    expect_rejection();
    changed = host.scene.profile;
    changed.offsets.at("field.player_display_name_reference.338") =
        {re_base::OffsetKind::module_rva, "GameAssembly.dll", 0x338};
    require(bool(re_base::save_offset_profile(candidate, changed)), "Cannot save wrong-kind profile");
    expect_rejection();
    std::filesystem::remove(candidate);
    expect_rejection();
    require(bool(re_base::save_offset_profile(candidate, host.scene.profile)), "Cannot restore valid test profile");
    host.resize(320, 240);
    require(host.scene.resources.pixels.size() == 320u * 240u, "Resize pixel lifetime invalid");
    host.toggle();
    require(host.telemetry.menu.visible, "Menu not reopened after resize");
    write_capture(output, "09_small_clipped_scene", host, events);
    host.resize(1280, 720);
    require(host.scene.resources.pixels.size() == 1280u * 720u, "Large resize invalid");
    write_capture(output, "10_resized_scene", host, events);
    host.scene.camera.yaw = 3.14159265f;
    host.frame();
    require(host.telemetry.esp.boxes < initial_boxes, "Behind-camera clipping did not reject front fixtures");
    host.scene.camera = Camera{};
    const auto held_control = host.telemetry.menu.controls.at("distance");
    host.pointer((held_control.x + held_control.z) * 0.5f,
                 (held_control.y + held_control.w) * 0.5f, true);
    const auto held_distance = host.scene.settings.distance;
    host.resize(0, 0);
    require(host.scene.resources.pixels.empty(), "Minimized viewport retains drawable pixels");
    host.pointer(-10, -10, true);
    host.resize(1280, 720);
    require(host.scene.resources.pixels.size() == 1280u * 720u,
            "Same-size restore did not recreate drawable viewport");
    host.pointer(-10, -10, false);
    require(host.scene.settings.distance == held_distance,
            "Minimization retained slider capture across same-size restoration");
    host.resize(960, 640);
    require(host.telemetry.esp.boxes > 0, "Scene did not recover after minimization");
    const auto control = host.telemetry.menu.controls.at("distance");
    host.pointer((control.x + control.z) * 0.5f, (control.y + control.w) * 0.5f, true);
    host.toggle();
    host.pointer(-10, -10, false);
    host.resize(640, 480);
    host.toggle();
    host.click("distance", 0.99f);
    require(host.telemetry.esp.boxes > 0, "Held-control capture did not recover after hide/resize");
    require(host.scene.resources.trace.calls["host_rejected_triangle"] == 0 &&
            host.scene.resources.trace.calls["host_rejected_command"] == 0,
            "Scene generated invalid draw buffers");
    for (unsigned cycle = 0; cycle < 8; ++cycle) {
        Scene lifetime;
        Input input;
        input.width = 320; input.height = 240;
        lifetime.frame(input);
    }
    std::ofstream trace(output / "entrypoints.json");
    trace << "{\n";
    bool first = true;
    for (const auto &[name, count] : host.scene.resources.trace.calls) {
        if (!first) trace << ",\n";
        first = false;
        trace << "  \"" << name << "\": " << count;
    }
    trace << "\n}\n";
    require(host.failure.empty(), host.failure);
    std::cout << "[C] PASS: reconstructed menu/ESP/offsets/projection/resize/clipping/lifetime; frames="
              << host.presents << " platform_paints=" << host.paints << '\n';
}
#ifdef _WIN32
LRESULT CALLBACK window_proc(HWND window, UINT message, WPARAM word, LPARAM parameter) {
    auto *host = reinterpret_cast<Host *>(GetWindowLongPtrW(window, GWLP_USERDATA));
    if (message == WM_NCCREATE) {
        host = static_cast<Host *>(reinterpret_cast<CREATESTRUCTW *>(parameter)->lpCreateParams);
        SetWindowLongPtrW(window, GWLP_USERDATA, reinterpret_cast<LONG_PTR>(host));
    }
    if (!host) return DefWindowProcW(window, message, word, parameter);
    try {
        switch (message) {
        case WM_MOUSEMOVE: host->input.mouse = {float(GET_X_LPARAM(parameter)), float(GET_Y_LPARAM(parameter))}; return 0;
        case WM_LBUTTONDOWN: host->input.down = true; host->input.pressed = true; SetCapture(window); return 0;
        case WM_LBUTTONUP: host->input.down = false; host->input.released = true; ReleaseCapture(); return 0;
        case WM_KILLFOCUS:
            host->input.focused = false; host->input.down = false; host->input.released = true;
            host->input.keys.fill(false); host->input.characters.clear();
            host->input.control = host->input.shift = host->input.alt = host->input.super = false;
            return 0;
        case WM_SETFOCUS: host->input.focused = true; return 0;
        case WM_CAPTURECHANGED:
            if (reinterpret_cast<HWND>(parameter) != window) {
                host->input.down = false; host->input.released = true;
            }
            return 0;
        case WM_SIZE: host->input.width = LOWORD(parameter); host->input.height = HIWORD(parameter); return 0;
        case WM_CHAR:
            if (host->input.menu_open && word >= 32 && word <= 0xffff && host->input.characters.size() < 256)
                host->input.characters.push_back(char16_t(word));
            return 0;
        case WM_KEYUP:
        case WM_KEYDOWN: {
            const bool down = message == WM_KEYDOWN;
            unsigned key{};
            if (word >= 'A' && word <= 'Z') key = 0x222 + unsigned(word - 'A');
            else switch (word) {
                case VK_TAB: key = 0x200; break;
                case VK_LEFT: key = 0x201; break;
                case VK_RIGHT: key = 0x202; break;
                case VK_UP: key = 0x203; break;
                case VK_DOWN: key = 0x204; break;
                case VK_HOME: key = 0x207; break;
                case VK_END: key = 0x208; break;
                case VK_DELETE: key = 0x20a; break;
                case VK_BACK: key = 0x20b; break;
                case VK_RETURN: key = 0x20d; break;
                case VK_ESCAPE: key = 0x20e; break;
                case VK_CONTROL: host->input.control = down; break;
                case VK_SHIFT: host->input.shift = down; break;
                case VK_MENU: host->input.alt = down; break;
                default: break;
            }
            if (key) host->input.keys[key - 0x200] = down;
            if (!down) return 0;
            if (word == VK_F1 && !(parameter & (LPARAM(1) << 30))) host->input.menu_open = !host->input.menu_open;
            if (word == VK_F5 && !host->profile_path.empty()) return bool(host->scene.reload(host->profile_path));
            if (host->telemetry.menu.keyboard_capture) return 0;
            if (word == VK_ESCAPE) DestroyWindow(window);
            if (word == VK_LEFT) host->scene.camera.position.x -= 0.25f;
            if (word == VK_RIGHT) host->scene.camera.position.x += 0.25f;
            if (word == VK_UP) host->scene.camera.position.z += 0.25f;
            if (word == VK_DOWN) host->scene.camera.position.z -= 0.25f;
            if (word == 'A') host->entity_shift -= 0.25f;
            if (word == 'D') host->entity_shift += 0.25f;
            return 0;
        }
        case WM_TIMER: host->frame(); return 0;
        case WM_PAINT: {
            PAINTSTRUCT paint{};
            HDC context = BeginPaint(window, &paint);
            auto &resources = host->scene.resources;
            if (resources.width && resources.height) {
                std::vector<std::uint32_t> dib;
                dib.reserve(resources.pixels.size());
                for (const auto pixel : resources.pixels)
                    dib.push_back((pixel & 0xff00ff00u) | ((pixel & 255u) << 16) | ((pixel >> 16) & 255u));
                BITMAPINFO info{};
                info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
                info.bmiHeader.biWidth = LONG(resources.width);
                info.bmiHeader.biHeight = -LONG(resources.height);
                info.bmiHeader.biPlanes = 1;
                info.bmiHeader.biBitCount = 32;
                info.bmiHeader.biCompression = BI_RGB;
                require(SetDIBitsToDevice(context, 0, 0, resources.width, resources.height, 0, 0, 0,
                        resources.height, dib.data(), &info, DIB_RGB_COLORS) != 0, "GDI scene presentation failed");
            }
            EndPaint(window, &paint);
            ++host->paints;
            return 0;
        }
        case WM_CLOSE: DestroyWindow(window); return 0;
        case WM_DESTROY: KillTimer(window, 1); PostQuitMessage(0); return 0;
        default: break;
        }
    } catch (const std::exception &error) {
        host->failure = error.what();
        PostQuitMessage(1);
    }
    return DefWindowProcW(window, message, word, parameter);
}
int run_windows(Host &host, bool checks, const std::filesystem::path &output) {
    const auto instance = GetModuleHandleW(nullptr);
    const wchar_t *class_name = L"OwnedReconstructedSceneHost";
    WNDCLASSW window_class{};
    window_class.lpfnWndProc = window_proc;
    window_class.hInstance = instance;
    window_class.lpszClassName = class_name;
    window_class.hCursor = LoadCursorW(nullptr, MAKEINTRESOURCEW(32512));
    require(RegisterClassW(&window_class) != 0, "Cannot register owned host window");
    HWND window = CreateWindowExW(0, class_name, L"Owned reconstructed internal menu + ESP TEST SCENE - NOT RUST",
        WS_OVERLAPPEDWINDOW, 20, 20, 976, 679, nullptr, nullptr, instance, &host);
    require(window != nullptr, "Cannot create owned host window");
    host.present = [&] { InvalidateRect(window, nullptr, FALSE); UpdateWindow(window); };
    host.capture_window = [&](const std::filesystem::path &path) {
        const auto &resources = host.scene.resources;
        HDC screen = GetDC(window);
        HDC memory = screen ? CreateCompatibleDC(screen) : nullptr;
        HBITMAP bitmap = screen ? CreateCompatibleBitmap(screen, int(resources.width), int(resources.height)) : nullptr;
        if (!screen || !memory || !bitmap) {
            if (bitmap) DeleteObject(bitmap);
            if (memory) DeleteDC(memory);
            if (screen) ReleaseDC(window, screen);
            throw std::runtime_error("Cannot allocate owned GDI capture");
        }
        const auto previous = SelectObject(memory, bitmap);
        const bool copied = BitBlt(memory, 0, 0, int(resources.width), int(resources.height), screen, 0, 0, SRCCOPY) != 0;
        SelectObject(memory, previous);
        std::vector<std::uint32_t> captured(resources.pixels.size());
        BITMAPINFO info{};
        info.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
        info.bmiHeader.biWidth = LONG(resources.width);
        info.bmiHeader.biHeight = -LONG(resources.height);
        info.bmiHeader.biPlanes = 1;
        info.bmiHeader.biBitCount = 32;
        info.bmiHeader.biCompression = BI_RGB;
        const bool read = GetDIBits(memory, bitmap, 0, resources.height, captured.data(), &info, DIB_RGB_COLORS)
                          == int(resources.height);
        DeleteObject(bitmap); DeleteDC(memory); ReleaseDC(window, screen);
        require(copied && read, "Owned GDI capture failed");
        std::ofstream image(path, std::ios::binary);
        require(bool(image), "Cannot create owned window capture");
        image << "P6\n" << resources.width << ' ' << resources.height << "\n255\n";
        for (std::size_t index = 0; index < captured.size(); ++index) {
            const auto pixel = captured[index];
            const auto expected = resources.pixels[index];
            require((pixel & 0x00ffffffu) == (((expected & 255u) << 16) |
                    (expected & 0xff00u) | ((expected >> 16) & 255u)),
                    "Presented owned window does not match reconstructed scene pixels");
            const char bytes[]{char((pixel >> 16) & 255), char((pixel >> 8) & 255), char(pixel & 255)};
            image.write(bytes, 3);
        }
        require(bool(image), "Cannot write owned GDI capture");
    };
    host.platform_pointer = [&](float mouse_x, float mouse_y, bool down) {
        SendMessageW(window, WM_MOUSEMOVE, 0, MAKELPARAM(int(mouse_x), int(mouse_y)));
        if (down != host.input.down) SendMessageW(window, down ? WM_LBUTTONDOWN : WM_LBUTTONUP, 0, 0);
    };
    host.platform_toggle = [&] { SendMessageW(window, WM_KEYDOWN, VK_F1, 0); };
    host.platform_text = [&](std::u16string_view characters) {
        for (const auto character : characters) SendMessageW(window, WM_CHAR, character, 0);
    };
    host.platform_edit_key = [&](unsigned key, bool down, bool control) {
        if (control != host.input.control)
            SendMessageW(window, control ? WM_KEYDOWN : WM_KEYUP, VK_CONTROL, 0);
        const auto virtual_key = key >= 0x222 && key <= 0x23b ? unsigned('A') + key - 0x222 :
                                 key == 0x20d ? unsigned(VK_RETURN) : key == 0x201 ? unsigned(VK_LEFT) :
                                 key == 0x20b ? unsigned(VK_BACK) : key == 0x20a ? unsigned(VK_DELETE) : 0;
        require(virtual_key != 0, "Owned platform edit-key test mapping unavailable");
        SendMessageW(window, down ? WM_KEYDOWN : WM_KEYUP, virtual_key, 0);
    };
    host.platform_reload = [&](const std::filesystem::path &path) {
        host.profile_path = path;
        return SendMessageW(window, WM_KEYDOWN, VK_F5, 0) != 0;
    };
    host.platform_resize = [&](unsigned width, unsigned height) {
        if (!width || !height) SendMessageW(window, WM_SIZE, SIZE_MINIMIZED, 0);
        else {
            RECT rect{0, 0, LONG(width), LONG(height)};
            require(AdjustWindowRect(&rect, WS_OVERLAPPEDWINDOW, FALSE) != 0, "AdjustWindowRect failed");
            require(SetWindowPos(window, nullptr, 0, 0, rect.right - rect.left, rect.bottom - rect.top,
                    SWP_NOMOVE | SWP_NOZORDER) != 0, "Owned host resize failed");
            RECT client{};
            require(GetClientRect(window, &client) != 0 && client.right == LONG(width) &&
                    client.bottom == LONG(height), "Owned host client dimensions mismatch");
            if (host.input.width != width || host.input.height != height)
                SendMessageW(window, WM_SIZE, SIZE_RESTORED, MAKELPARAM(width, height));
        }
    };
    ShowWindow(window, SW_SHOW);
    host.resize(960, 640);
    if (checks) {
        try {
            const auto previous_frames = host.presents;
            require(SetTimer(window, 1, 16, nullptr) != 0, "Owned continuous-scene timer failed");
            MSG message{};
            while (host.presents < previous_frames + 3 && host.failure.empty()) {
                require(GetMessageW(&message, nullptr, 0, 0) > 0, "Continuous owned host stopped early");
                TranslateMessage(&message); DispatchMessageW(&message);
            }
            KillTimer(window, 1);
            require(host.failure.empty(), host.failure);
            std::cout << "[C] PASS: continuous WM_TIMER scene frames\n";
            run_checks(host, output);
            require(host.paints > 0, "No real owned window paints");
            const bool open = host.input.menu_open;
            SendMessageW(window, WM_KEYDOWN, VK_F1, LPARAM(1) << 30);
            require(host.input.menu_open == open, "Repeated F1 key toggles menu repeatedly");
        } catch (...) {
            DestroyWindow(window); UnregisterClassW(class_name, instance); throw;
        }
        SendMessageW(window, WM_KEYDOWN, VK_ESCAPE, 0);
        require(!IsWindow(window), "Escape did not shut down owned host window");
    } else {
        require(SetTimer(window, 1, 16, nullptr) != 0, "Scene timer failed");
        MSG message{};
        int result{};
        while ((result = int(GetMessageW(&message, nullptr, 0, 0))) > 0) {
            TranslateMessage(&message); DispatchMessageW(&message);
        }
        require(result == 0 && host.failure.empty(), "Scene message loop failed: " + host.failure);
    }
    host.present = {};
    host.capture_window = {};
    require(UnregisterClassW(class_name, instance) != 0, "Owned window class leaked at shutdown");
    std::cout << "[C] PASS: owned Win32 event routing/GDI presentation/window destruction/class shutdown\n";
    return 0;
}
#endif
}
}
int main(int count, char **arguments) {
    try {
        bool checks = false;
        std::filesystem::path output = "scene_evidence";
        owned_scene::Host host;
        for (int index = 1; index < count; ++index) {
            const std::string_view option(arguments[index]);
            if (option == "--self-test") checks = true;
            else if (option == "--output" && index + 1 < count) output = arguments[++index];
            else if (option == "--profile" && index + 1 < count) host.profile_path = arguments[++index];
            else throw std::runtime_error("Use --self-test --output PATH --profile PATH");
        }
        if (!host.profile_path.empty() && !host.scene.reload(host.profile_path))
            throw std::runtime_error(host.scene.profile_status);
#ifdef _WIN32
        return owned_scene::run_windows(host, checks, output);
#else
        if (!checks) throw std::runtime_error("Linux owned host uses --self-test; interactive window is the Win32/Wine host");
        owned_scene::run_checks(host, output);
        return 0;
#endif
    } catch (const std::exception &error) {
        std::cerr << "FAIL: " << error.what() << '\n';
        return 1;
    }
}
