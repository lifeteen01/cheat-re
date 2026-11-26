#pragma once
#include "internal_analysis.hpp"
namespace rust_internal_re {
// [C] Config key catalog derived from cfg_users.json (1066 registered keys).
// [C] Value addresses are confirmed at glob+0x48 from ASM evidence:
// "CONFIG Bools.SpecialTeleport value(+0x48)" at 0x32cfea.
// [I] This catalog maps hex addresses used throughout the reconstruction
// to their human-readable config key names and types.

enum ConfigKeyType : ReU8 {
    config_bool,          // [C] Bools.* — single byte at value address
    config_float,         // [C] F.* — 4-byte float at value address
    config_int,           // [C] i.* — 4-byte int at value address
    config_vec3,          // [C] V3.* — 12-byte Vec3 at value address
    config_vec2,          // [C] V2.* — 8-byte Vec2 at value address
    config_color,         // [C] C.* — 12-byte RGB float triplet at value address
    config_keycode,       // [C] K.* — 4-byte keycode int at value address
    config_string,        // [C] S.* — string object at value address
    config_vector_bools,  // [C] VectorBools.* — bool vector at value address
    config_unknown
};

struct ConfigKeyEntry {
    ConfigKeyType type;
    Rva value_address;    // [C] glob + 0x48; the address read by C++ code
    Rva glob_address;     // [C] registration record base from cfg_users.json
    re::ReStringView name;
    bool dead;            // [C] 390 keys have empty user lists in this build
};

// [C] 1066 entries: 676 active (referenced by code), 390 dead (registered but unused).
// [C] Sorted by value_address for binary search.
re::ReSpan<const ConfigKeyEntry> config_catalog();

// [I] Lookup by value address (the hex address used in C++ code).
// Returns nullptr if address is not a registered config key.
const ConfigKeyEntry* config_lookup(Rva value_address);

// [I] Lookup by name (e.g., "Bools.PSilent").
const ConfigKeyEntry* config_lookup_name(re::ReStringView name);

void check_config_catalog();
} // namespace rust_internal_re
