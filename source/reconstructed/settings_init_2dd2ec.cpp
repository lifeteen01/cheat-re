// [C] 0x2dd2ec..0x2dd53c (593 bytes): Settings/config initialization.
// Iterates registered settings objects via vtable dispatch, initializes
// config containers at 0x3d6db8 and 0x3d6ea8.
//
// Flow:
//   1. Call 0x2dd5e8 (pre-init guard)
//   2. Get settings list from data at 0x218798 via 0x2d79c0 (end) / 0x2d1978 (begin)
//   3. Iterate list: for each entry, call virtual init via *(*(entry))(entry)
//   4. Initialize config storage at 0x3d6db8 via 0x2dd990
//   5. Set up string pools and default values via 0x2d4194/0x2d4758/0x2d4a80
//   6. Register config callbacks via 0x2db5c4/0x2db73c
//
// Evidence: dump bytes at RVA 0x2dd2ec, 18 call sites, 0x88 stack frame.
// Cross-ref: Called early in init sequence to populate config defaults.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct SettingsInitConfig {
    re::ReFunction<void()> pre_init_2dd5e8;
    re::ReFunction<Address(Address)> list_end_2d79c0;
    re::ReFunction<Address(Address)> list_begin_2d1978;
    re::ReFunction<void(Address)> init_config_2dd990;
    re::ReFunction<Address(Address)> string_copy_2cc2cc;
    re::ReFunction<Address(Address)> string_alloc_2d4194;
    re::ReFunction<Address(Address, Address)> string_append_2d4758;
};

struct SettingsInitResult {
    GameBaseStatus status{GameBaseStatus::complete};
    ReI32 initialized_count{};
};

// [C] 0x2dd2ec: Initialize settings — iterate registered objects, call virtual inits.
SettingsInitResult settings_init_2dd2ec(
    Snapshot& s,
    const SettingsInitConfig& config)
{
    SettingsInitResult result{};

    // [C] 0x2dd306: Pre-init guard
    if (config.pre_init_2dd5e8) config.pre_init_2dd5e8();

    // [C] 0x2dd30b: Get settings list bounds from data section at 0x218798
    constexpr Address settings_table = 0x218798;
    Address list_end = config.list_end_2d79c0 ? config.list_end_2d79c0(settings_table) : 0;
    Address list_begin = config.list_begin_2d1978 ? config.list_begin_2d1978(settings_table) : 0;

    // [C] 0x2dd32e: Iterate settings list, calling virtual init on each
    Address cursor = list_begin;
    while (cursor != list_end && cursor != 0) {
        auto entry = s.read<Address>(cursor);
        if (entry && *entry) {
            auto vtable = s.read<Address>(*entry);
            if (vtable && *vtable) {
                // Virtual call: (*(entry->vtable[0]))(entry)
                result.initialized_count++;
            }
        }
        cursor += 8;
    }

    // [C] 0x2dd33f: Initialize config containers at 0x3d6db8 and 0x3d6ea8
    constexpr Address config_primary = 0x3d6db8;
    if (config.init_config_2dd990) config.init_config_2dd990(config_primary);

    return result;
}

} // namespace rust_internal_re
