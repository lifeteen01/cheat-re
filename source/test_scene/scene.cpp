#include "scene.hpp"

namespace owned_scene {
Scene::Scene() : lifecycle(resources), profile(re_base::historical_offset_profile()),
    profile_status("Owned fixture layout; historical profile is NOT a game build match"),
    menu(resources), esp(resources) {}

re_base::ProfileResult Scene::reload(::re::ReStringView path) {
    re_base::OffsetProfile candidate;
    auto result = re_base::load_offset_profile(path, candidate);
    if (result) result = re_base::validate_catalog_profile(candidate);
    if (result) {
        ReU64 offset{};
        result = re_base::get_profile_offset(candidate, "field.player_display_name_reference.338",
                                             re_base::OffsetKind::field_offset, offset);
        if (result && offset != 0x338 && offset != 0x340)
            result = {re_base::ProfileError::invalid_value,
                      "Owned scene supports name source slots 0x338 and 0x340 only"};
    }
    if (result) {
        profile = ::re::re_move(candidate);
        profile_status = "Loaded owned fixture offsets; NOT a verified game profile";
    } else {
        profile_status = "Rejected profile; retained last valid configuration: " + result.message;
    }
    resources.trace.hit(result ? "Scene::reload.commit" : "Scene::reload.retain_last_good");
    return result;
}

Telemetry Scene::frame(const Input &input, float entity_shift) {
    resources.reset(input.width, input.height);
    Telemetry result;
    FrameCallbacks callbacks;
    callbacks.prepare_ui = [&](const Input &routed) {
        menu.prepare_frame(routed);
        esp.set_world_windows(menu.world_windows());
        return true;
    };
    callbacks.esp = [&](const Input &routed) {
        result.esp = esp.frame(routed, settings, camera, profile, entity_shift);
    };
    callbacks.menu = [&](const Input &routed) { result.menu = menu.frame(routed, settings); };
    callbacks.before_finalize = [&](const Input &) {
        resources.text(Resources::esp_list, {375, 18}, "OWNED TEST SCENE - NOT LIVE RUST", 0xffe0e0e0u);
        resources.text(Resources::esp_list, {12, float(input.height) - 32},
            "F1 MENU | ARROWS CAMERA | A/D ENTITIES | F5 RELOAD | ESC QUIT", 0xffc0c0c0u, 12);
        resources.text(Resources::esp_list, {12, float(input.height) - 17}, profile_status, 0xffa0a0a0u, 10);
        menu.finish_frame();
    };
    result.frame = lifecycle.frame(input, callbacks);
    if (result.frame.result.status != re::UnityStatus::complete)
        __builtin_trap();
    if (!input.width || !input.height) return result;
    resources.rasterize();
    resources.trace.hit("Scene::frame");
    return result;
}
}
