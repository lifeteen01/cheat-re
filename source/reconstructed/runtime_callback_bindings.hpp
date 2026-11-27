#pragma once
#include "game_init_runtime.hpp"

namespace game_init {

int resolve_all_callbacks(const Il2CppExports& il2cpp, HMODULE game_assembly);
void* get_resolved_callback(uint32_t rva);
void write_callbacks_to_snapshot(rust_internal_re::Snapshot& snapshot,
                                  rust_internal_re::Address cheat_base);

} // namespace game_init
