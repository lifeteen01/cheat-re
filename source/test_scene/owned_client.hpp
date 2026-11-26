#pragma once
#include "hook_setup_analysis.hpp"

namespace owned_scene {
enum class OwnedClientScenario { available, missing_class, missing_method,
    missing_metadata, missing_module, zero_original };
struct OwnedClientInstall {
    rust_internal_re::HookSetupResult result, repeated_result;
    rust_internal_re::HookRecord record, repeated_record;
    rust_internal_re::Address module{}, method{}, original_before{}, method_after{};
    rust_internal_re::Address stored_game_base{}, signature_method{};
    re::ReString directory, configuration;
    bool repeated{}, opaque_preserved{};
};
OwnedClientInstall initialize_owned_client(OwnedClientScenario = OwnedClientScenario::available,
                                         bool repeat = false);
}
