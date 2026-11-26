#pragma once
#include "unity_backend_analysis.hpp"
#include "owned_client.hpp"
#include "frame_dependencies_analysis.hpp"

namespace owned_scene {
struct Resources;
struct Input;
enum class FrameEffectKind { setup_deferred, game_deferred, original_deferred,
    original_callback, esp_callback, menu_callback, splash_callback,
    supplied_input, external_menu_request, recovered_hotkey, io_event, new_frame_deferred, finalization_deferred,
    upload_recording, gpu_deferred, resize_recording, finalized_owned_data };
struct FrameEffect {
    rust_internal_re::Rva site{};
    FrameEffectKind kind{};
    re::ReVector<rust_internal_re::UnityValue> arguments;
    rust_internal_re::UnityValue result;
};
struct FrameCallbacks {
    re::ReFunction<void(const Input&)> esp, menu, original, splash;
    re::ReFunction<void(const Input&)> before_finalize;
    re::ReFunction<bool(const Input&)> prepare_ui;
    re::ReFunction<bool(const FrameEffect&)> accept_effect;
};
struct FrameConditions {
    bool player_valid{true}, camera_valid{true};
    re::ReArray<bool,3> disconnected{};
    re::ReOptional<float> start_splash_seconds;
    re::ReOptional<rust_internal_re::ClipRect> camera_pixel_rect;
    re::ReOptional<rust_internal_re::Vec2> mouse_control_position;
    re::ReOptional<float> io_delta;
    re::ReOptional<bool> left_button;
};
struct FrameReport {
    rust_internal_re::UnityResult result;
    rust_internal_re::UnityIo io;
    re::ReVector<FrameEffect> effects;
    bool menu_open{}, content{}, finalized{}, minimized{};
    bool gpu_executed{};
    bool io_routed{}, ordinary_context_boundary{true};
    OwnedClientInstall client_install;
    rust_internal_re::Address original_target{};
    rust_internal_re::FrameDependencyResult hotkey_result;
    bool hotkey_latched{};
    re::ReString preparation_error;
    re::ReVector<rust_internal_re::Address> exported_lists;
    ReUSize vertices{}, indices{}, commands{}, disconnected_queries{};
};
class FrameLifecycle {
    struct State;
    ::re::ReUniquePtr<State> state;
public:
    explicit FrameLifecycle(Resources&, OwnedClientScenario = OwnedClientScenario::available);
    ~FrameLifecycle();
    FrameLifecycle(const FrameLifecycle&)=delete;
    FrameLifecycle& operator=(const FrameLifecycle&)=delete;
    FrameReport frame(const Input&, const FrameCallbacks&, const FrameConditions& = {});
};
void check_frame_lifecycle();
}
