#include "scene.hpp"
#include "imgui_windows_analysis.hpp"

namespace owned_scene {
namespace re = rust_internal_re;
namespace {
void require_root(bool value, ::re::ReStringView message) {
    (void)message;
    if (!value)
        __builtin_trap();
}
void check_positive_root() {
    Resources resources;
    InternalMenu menu(resources);
    EspScene esp(resources);
    FrameLifecycle lifecycle(resources);
    Input input;
    input.menu_open = false;
    input.delta = 0.5f;
    Settings settings;
    const auto profile = re_base::historical_offset_profile();
    ::re::ReVector<::re::ReString> order;
    ::re::ReVector<re::Vec2> positions;
    ::re::ReSet<re::Address> world_lists;
    ::re::ReMap<::re::ReString, re::Address> named_lists;
    bool probe_geometry{};
    MenuTelemetry menu_telemetry;
    const auto render = [&] {
        resources.reset(input.width, input.height);
        EspTelemetry telemetry;
        FrameCallbacks callbacks;
        callbacks.prepare_ui = [&](const Input &routed) {
            menu.prepare_frame(routed);
            return true;
        };
        callbacks.esp = [&](const Input &routed) {
        auto windows = menu.world_windows();
        const auto begin = windows.begin_38cfa4;
        const auto end = windows.end_390994;
        const auto position = windows.current_position_39246c;
        windows.begin_38cfa4 = [&, begin](::re::ReStringView name, ReU32 flags) {
            order.push_back(::re::ReString("begin:") + ::re::ReString(name));
            require_root((name == "Anti Violations Bar" && flags == (input.menu_open ? 0x2bu : 0x2fu)) ||
                             (name == "Warning Bar Window" && flags == 0xaf),
                         "Full root changed actual mandatory window names/flags");
            ::re::ReSet<re::Address> previous;
            for (const auto &entry : resources.draw.lists) {
                previous.insert(entry.key);
            }
            begin(name, flags);
            for (const auto &entry : resources.draw.lists) {
                if (!previous.contains(entry.key)) {
                    world_lists.insert(entry.key);
                    named_lists[::re::ReString(name)] = entry.key;
                }
            }
            if (probe_geometry)
                resources.text(named_lists.at(::re::ReString(name)), {8, 8}, "WORLD WINDOW PROBE");
        };
        windows.current_position_39246c = [&, position] {
            const auto result = position();
            require_root(::re::re_isfinite(result.x) && ::re::re_isfinite(result.y),
                         "Full root consumed invalid actual window position");
            positions.push_back(result);
            order.push_back("position");
            return result;
        };
        windows.end_390994 = [&, end] {
            end();
            order.push_back("end");
        };
        esp.set_world_windows(::re::re_move(windows));
        telemetry = esp.frame(routed, settings, Camera{}, profile);
        };
        callbacks.menu = [&](const Input &routed) { menu_telemetry = menu.frame(routed, settings); };
        callbacks.before_finalize = [&](const Input &) { menu.finish_frame(); };
        const auto report = lifecycle.frame(input, callbacks);
        const auto presented = resources.presentation_order();
        require_root(report.result.status == re::UnityStatus::complete && report.result.submitted &&
                         report.finalized && report.exported_lists == presented,
                     "Shared world/menu collection failed actual frame export/submission");
        for (const auto list_address : world_lists) {
            const auto &list = resources.draw.lists.at(list_address);
            const bool has_output = list.vertices.size || list.indices.size ||
                (list.commands.size && (list.commands.size != 1 ||
                 list.commands.at(0).element_count || list.commands.at(0).callback));
            require_root(!has_output ||
                             ::re::re_find(presented.begin(), presented.end(), list_address) != presented.end(),
                         "Full root world window output was dropped from actual presentation lists");
        }
        return telemetry;
    };
    const auto first = render();
    const ::re::ReVector<::re::ReString> expected{
        "begin:Anti Violations Bar", "position", "end",
        "begin:Warning Bar Window", "position", "end"};
    require_root(order == expected && positions.size() == 2 && world_lists.size() >= 2,
                 "Full root did not execute both actual window lifecycles in recovered order");
    require_root(first.selected == 4 && first.boxes == 3 && first.names == 3 &&
                     first.profile_reads == 5 && first.name_raster_passes == 27,
                 "Full root lost actual player/projection/name/profile behavior");
    const auto calls = [&](::re::ReStringView key) { return resources.trace.calls[::re::ReString(key)]; };
    require_root(calls("replay_world_overlay_3098a4:complete") == 1 &&
                     calls("replay_world_player_overlay_30ea17") == 1 &&
                     calls("game_helper_vector:368100") == 1 &&
                     calls("game_helper_object:368a84") == 1 &&
                     calls("host_definition:37154c_boundary") == 4 &&
                     calls("snapshot_classifier:3716e0") == 1 &&
                     calls("world_simulation:cache_build") == 1 &&
                     calls("game_runtime_wrapper:2e6240") == 2 &&
                     calls("world_registry:deadline_advanced") == 1,
                 "Full root skipped real disabled-feature simulation/cache or registry/time work");
    settings.esp = false;
    probe_geometry = true;
    order.clear();
    const auto disabled = render();
    require_root(::re::re_all_of(world_lists.begin(), world_lists.end(), [&](re::Address key) {
        return resources.draw.lists.at(key).vertices.size > 0;
    }) && resources.presentation_order().size() >= 3,
                 "Hidden menu dropped nonempty shared world-window probes");
    require_root(order == expected && disabled.selected == 0 && disabled.boxes == 0 &&
                     disabled.names == 0 && calls("replay_world_overlay_3098a4:complete") == 2 &&
                     calls("game_helper_vector:368100") == 2 &&
                     calls("game_helper_object:368a84") == 2 &&
                     calls("host_definition:37154c_boundary") == 8 &&
                     calls("world_simulation:cache_build") == 1 &&
                     calls("world_simulation:cache_reuse") == 1 &&
                     calls("game_runtime_wrapper:2e6240") == 3 &&
                     calls("world_registry:deadline_advanced") == 1,
                 "Disabled ESP suppressed mandatory windows/simulation/time or rebuilt existing cache");
    input.delta = 0.8f;
    order.clear();
    render();
    require_root(order == expected && calls("game_runtime_wrapper:2e6240") == 5 &&
                     calls("world_registry:deadline_advanced") == 2 &&
                     calls("world_simulation:cache_reuse") == 2,
                 "Full root lost persistent actual registry cooldown or simulation cache state");
    input.menu_open = true;
    input.delta = 1.0f / 60.0f;
    settings.esp = true;
    order.clear();
    render();
    const auto presented = resources.presentation_order();
    require_root(menu_telemetry.visible && order == expected &&
                     ::re::re_any_of(presented.begin(), presented.end(), [&](re::Address key) {
                         return key != Resources::esp_list && !world_lists.contains(key) &&
                             resources.draw.lists.at(key).vertices.size > 0;
                     }) && calls("owned_menu_prepare_frame") == 4 &&
                     calls("owned_menu_finish_frame") == 4 &&
                     calls("FrameLifecycle::prepare_ui") == 4,
                 "Shared lifecycle lost menu/world lists or prepared/finalized more than once");
}
}

void check_esp_root_boundary() {
    check_positive_root();
}
}
