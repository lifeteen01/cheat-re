#include "scene.hpp"
#include "frame_dependencies_main_menu.hpp"

namespace owned_scene {
void check_menu_native_boundaries();
namespace {
void require(bool value, ::re::ReStringView why) {
    (void)why;
    if (!value) __builtin_trap();
}
bool same(const Settings &left, const Settings &right) {
    return left.esp == right.esp && left.boxes == right.boxes && left.names == right.names &&
        left.distance == right.distance && left.color == right.color;
}
void balanced(const Resources &resources, ReUSize expected_lists) {
    require(resources.draw.lists.size() == expected_lists,
            "Favorites lifecycle created an unexpected owned window drawlist");
    for (const auto &entry : resources.draw.lists) {
        require(entry.value.clip_stack.size == 1, "Native Begin/End leaked an inner clip stack");
        require(entry.value.header.clip == entry.value.clip_stack.at(0),
                "Native End failed to restore the drawlist's host clip");
    }
}
}

void check_menu_lifecycle() {
    check_menu_native_boundaries();
    {
        Scene routed_scene;
        Input routed_input;
        routed_input.delta = 0.125f;
        routed_input.mouse = {730, 514};
        routed_input.down = true;
        const auto routed = routed_scene.frame(routed_input);
        require(routed.menu.io_delta == 0.125f && routed.menu.io_delta == routed.frame.io.delta_time &&
                routed.menu.io_mouse.x == routed.frame.io.mouse_position.x &&
                routed.menu.io_mouse.y == routed.frame.io.mouse_position.y &&
                routed.menu.io_down == routed.frame.io.mouse_buttons[0] && routed.menu.io_down,
                "Menu context failed to consume recovered frame IO without delta clamping");
        // Exception-based delta validation tests removed (-fno-exceptions)
    }
    Scene scene;
    Input input;
    const auto initial = scene.settings;
    ReUSize retained_lists{};
    ReU64 initial_children{}, initial_ends{}, initial_creations{};
    for (unsigned frame = 0; frame < 12; ++frame) {
        const auto telemetry = scene.frame(input);
        if (!frame) {
            retained_lists = scene.resources.draw.lists.size();
            initial_children = scene.resources.trace.calls.at("imgui_window_child_38e97c");
            initial_ends = scene.resources.trace.calls.at("imgui_window_end_child_390a88");
            initial_creations = scene.resources.trace.calls.at("imgui_window_create_3908d4");
            require(retained_lists > 21 &&
                    scene.resources.trace.calls.at("owned_menu_cold_graph_21_pages") == 1,
                    "Actual cold root failed to build and visit its complete page graph");
        }
        require(telemetry.menu.visible && !telemetry.menu.changed && same(initial, scene.settings),
                "Idle native Favorites lifecycle changed fixture settings");
        for (const auto key : {"esp", "boxes", "names", "distance", "color_preview"})
            require(telemetry.menu.controls.contains(key),
                    "Native Favorites child composition lost a permitted control");
        require(!telemetry.menu.controls.contains("color_popup") &&
                !telemetry.menu.controls.contains("color_hex") &&
                !telemetry.menu.controls.contains("color_sv"),
                "Recovered color popup must begin closed without an embedded picker");
        balanced(scene.resources, retained_lists);
    }
    const auto &calls = scene.resources.trace.calls;
    require(calls.at("replay_menu_page_3354b4") == 13 &&
            calls.at("replay_menu_page_35013c") == 13 &&
            calls.at("imgui_window_child_38e97c") == initial_children + 11 * 8 &&
            calls.at("imgui_window_end_child_390a88") == initial_ends + 11 * 8 &&
            calls.at("owned_menu_balanced_window_focus_style_group_stacks") == 12,
            "Fixture did not execute the original page and balanced child lifecycle each frame");
    require(calls.at("imgui_window_create_3908d4") == initial_creations,
            "Native child windows were recreated instead of retained");
    require(calls.at("owned_menu_constructor_position_60") == initial_creations,
            "Cold native child construction did not consume literal28db30=60");
    require(calls.at("menu_controls_color_386438") == 13 &&
            !calls.contains("menu_color_picker_379680"),
            "Closed color preview must execute386438 without executing the picker");
    require(calls.at("replay_frame_menu_35d5ac") == 13 && calls.at("frame_main_menu_35fc8b") == 13 &&
            calls.at("owned_menu_prepare_frame") == 12 && calls.at("owned_menu_finish_frame") == 12 &&
            calls.at("FrameLifecycle::prepare_ui") == 12 &&
            calls.at("replay_world_overlay_3098a4:complete") == 12,
            "Shared full roots did not prepare/finalize exactly once per frame");
    input.menu_open = false;
    require(!scene.frame(input).menu.visible, "Hidden menu entered native window composition");
    require(calls.at("owned_menu_prepare_frame") == 13 && calls.at("owned_menu_finish_frame") == 13 &&
            calls.at("replay_world_overlay_3098a4:complete") == 13 &&
            calls.at("replay_frame_menu_35d5ac") == 14 &&
            calls.at("frame_main_menu_35fc8b") == 13,
            "Hidden frame skipped roots or repeated shared preparation/finalization");
    require(scene.resources.presentation_order() == ::re::ReVector<re::Address>{Resources::esp_list},
            "Hidden menu submitted retained window lists");
    input.menu_open = true;
    input.width = input.height = 0;
    require(!scene.frame(input).menu.visible, "Minimized menu entered native window composition");
    require(calls.at("owned_menu_prepare_frame") == 14 && calls.at("owned_menu_finish_frame") == 14 &&
            calls.at("replay_world_overlay_3098a4:complete") == 13,
            "Minimization failed capture lifecycle or entered world controller");
    input.width = 960;
    input.height = 640;
    require(scene.frame(input).menu.visible && same(initial, scene.settings),
            "Retained native windows failed to reopen after hide/minimize");
    balanced(scene.resources, retained_lists);

    auto telemetry = scene.frame(input);
    const auto pointer = [&](re::Vec2 position, bool down) {
        input.mouse = position;
        input.pressed = down && !input.down;
        input.released = !down && input.down;
        input.down = down;
        telemetry = scene.frame(input);
    };
    const auto click = [&](re::Vec2 position) {
        pointer(position, false);
        pointer(position, true);
        pointer(position, false);
    };
    const auto settle = [&] {
        input.pressed = input.released = false;
        for (unsigned frame = 0; frame < 48; ++frame) {
            telemetry = scene.frame(input);
            balanced(scene.resources, retained_lists + 1);
        }
    };
    const auto center = [](re::ClipRect rectangle) {
        return re::Vec2{(rectangle.x + rectangle.z) * 0.5f,
                        (rectangle.y + rectangle.w) * 0.5f};
    };
    ::re::ReVector<re::Address> lists_before_popup;
    for (const auto &entry : scene.resources.draw.lists) {
        lists_before_popup.push_back(entry.key);
    }
    click(center(telemetry.menu.controls.at("color_preview")));
    re::Address popup_list{};
    for (const auto &entry : scene.resources.draw.lists) {
        if (::re::re_find(lists_before_popup.begin(), lists_before_popup.end(), entry.key) ==
            lists_before_popup.end()) {
            require(!popup_list && entry.value.vertices.size > 0,
                    "Cold popup failed to produce one measuring drawlist");
            popup_list = entry.key;
        }
    }
    require(popup_list && !telemetry.menu.controls.contains("color_popup") &&
            ::re::re_find(telemetry.frame.exported_lists.begin(), telemetry.frame.exported_lists.end(),
                      popup_list) == telemetry.frame.exported_lists.end(),
            "Cold Hidden measuring popup was exposed or submitted");
    require(calls.at("menu_color_popup_picker_386959") > 0,
            "Cold Hidden popup skipped the recovered measuring picker");
    input.pressed = input.released = false;
    telemetry = scene.frame(input);
    require(telemetry.menu.controls.contains("color_popup") &&
            ::re::re_find(telemetry.frame.exported_lists.begin(), telemetry.frame.exported_lists.end(),
                      popup_list) != telemetry.frame.exported_lists.end(),
            "Measured popup failed to become visible on the following frame");
    settle();
    require(same(initial, scene.settings),
            "Preview activation must not toggle ESP or edit color/settings");
    for (const auto key : {"color_popup", "color", "color_sv", "color_hue", "color_alpha", "color_hex"})
        require(telemetry.menu.controls.contains(key),
                "Real color popup omitted a visible picker component after animation");
    require(calls.at("imgui_window_create_3908d4") == initial_creations + 1 &&
            calls.at("menu_color_popup_begin_3868be") == calls.at("menu_color_popup_end_386961") &&
            calls.at("menu_color_popup_begin_3868be") == calls.at("menu_color_popup_picker_386959") &&
            calls.at("menu_color_popup_position_386911") > 0 &&
            calls.at("menu_color_popup_focus_38691e") > 0 &&
            calls.at("menu_color_popup_display_38692b") > 0 &&
            calls.at("menu_color_popup_hover_386932") > 0,
            "Actual popup did not execute balanced Begin/End, picker and native window effects");
    click(center(telemetry.menu.controls.at("color_hex")));
    require(telemetry.menu.keyboard_capture,
            "Native popup hex editor failed to receive actual mouse focus");
    click({float(input.width) - 5, float(input.height) - 80});
    require(telemetry.menu.controls.contains("color_popup") &&
            ::re::re_find(telemetry.frame.exported_lists.begin(), telemetry.frame.exported_lists.end(),
                      popup_list) != telemetry.frame.exported_lists.end(),
            "Logical popup close incorrectly removed native closing-fade geometry");
    settle();
    require(!telemetry.menu.controls.contains("color_popup") &&
            !telemetry.menu.controls.contains("color_hex") && !telemetry.menu.keyboard_capture &&
            calls.at("menu_color_popup_outside_click_38693f") > 0,
            "Outside click failed to close native popup and release editor capture");
    const auto creations = calls.at("imgui_window_create_3908d4");
    click(center(telemetry.menu.controls.at("color_preview")));
    settle();
    require(telemetry.menu.controls.contains("color_popup") &&
            calls.at("imgui_window_create_3908d4") == creations,
            "Native popup reopen must reuse its existing window and drawlist");
    click(center(telemetry.menu.controls.at("color_hex")));
    require(telemetry.menu.keyboard_capture, "Reopened popup editor did not acquire capture");
    const auto exported_before_hide = calls.at("owned_menu_text_deactivation_export_3c04d0");
    const auto appearing_before_hide = calls.at("owned_menu_popup_appearing");
    input.menu_open = false;
    telemetry = scene.frame(input);
    require(!telemetry.menu.visible && !telemetry.menu.keyboard_capture,
            "Hiding native popup retained editor capture");
    require(calls.at("owned_menu_text_deactivation_export_3c04d0") == exported_before_hide + 1 &&
            scene.resources.presentation_order() == ::re::ReVector<re::Address>{Resources::esp_list},
            "Hidden menu bypassed native text deactivation or retained submitted geometry");
    telemetry = scene.frame(input);
    input.menu_open = true;
    input.pressed = input.released = false;
    settle();
    require(!telemetry.menu.keyboard_capture && telemetry.menu.controls.contains("color_popup"),
            "Menu reopen altered retained popup state or reacquired editor capture");
    require(calls.at("owned_menu_popup_appearing") == appearing_before_hide + 1,
            "Hidden context frames failed to produce native popup Appearing on reopen");
    click(center(telemetry.menu.controls.at("color_hex")));
    require(telemetry.menu.keyboard_capture, "Popup editor capture missing before minimize");
    input.width = input.height = 0;
    telemetry = scene.frame(input);
    require(!telemetry.menu.visible && !telemetry.menu.keyboard_capture,
            "Minimized popup retained native editor capture");
    input.width = 960;
    input.height = 640;
    input.pressed = input.released = false;
    settle();
    click(center(telemetry.menu.controls.at("color_hex")));
    require(telemetry.menu.keyboard_capture,
            "Focus-loss regression requires genuine active editor capture");
    const auto exported_before_focus_loss = calls.at("owned_menu_text_deactivation_export_3c04d0");
    input.focused = false;
    telemetry = scene.frame(input);
    require(!telemetry.menu.keyboard_capture && calls.at("imgui_window_create_3908d4") == creations,
            "Focus loss retained editor capture or recreated native popup resources");
    require(calls.at("owned_menu_text_deactivation_export_3c04d0") == exported_before_focus_loss + 1,
            "Focus loss bypassed native editor deactivation export");
    balanced(scene.resources, retained_lists + 1);

    re::FrameMenuState config;
    re::FrameMainMenuState menu;
    re::FrameDependencyState dependencies;
    re::FrameMainMenuApi api;
    api.effects.unity.external = [](re::Rva role, ::re::ReSpan<const re::UnityValue>)
        -> ::re::ReOptional<re::UnityValue> {
        if (role == 0x392198) return Resources::esp_list;
        return {};
    };
    require(re::replay_frame_menu_35d5ac(config, menu, dependencies, api).status ==
                re::UnityStatus::complete,
            "Recovered closed-menu root should return after notifications");
    config.values[0x218818] = 1;
    const auto stopped = re::replay_frame_menu_35d5ac(config, menu, dependencies, api);
    require(stopped.status == re::UnityStatus::unreadable_snapshot && stopped.stopped_at == 0x384cc0 &&
            !config.values[0x3fd7b8],
            "Full root must report missing category initialization without fabricating success");
}
}
