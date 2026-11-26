#pragma once
#include "world_esp_analysis.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
// [I] Owned native string results; these are not game re::ReString ABI objects.
GameBaseResult<re::ReString> player_name_369040(const Snapshot&,Address player,Address module_base,
    WorldNameState&,WorldNameBackend&,ReUSize maximum_words=4096);
GameBaseResult<re::ReString> item_name_372398(const Snapshot&,Address definition,
    ReUSize maximum_words=4096);
void check_name_helpers_reconstruction();
} // namespace rust_internal_re
