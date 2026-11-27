// RVA 0x316574 — Weapon/item name hash dispatcher (2650 bytes)
// Given a precomputed IL2CPP class-name hash, dispatches to a specific name-getter
// function and routes the result through a category post-processor.
// ~80 switch cases mapping hashes to weapon/item display names.
// String evidence: "Revolver", "M4 Shotgun", "M92 Pistol", etc.
// Decompiled from 7ffa2a960000.cheat.dll via Ghidra; semantically reconstructed.
#include "internal_analysis.hpp"
namespace rust_internal_re {
namespace {

enum class ItemCategory : ReU8 {
    weapon_held,         // 0x1964e8 - held weapon display
    weapon_projectile,   // 0x19c9ec - projectile weapon
    weapon_throwable,    // 0x1918b4 - throwable item
    tool_melee,          // 0x18720c - melee/tool item (category_d)
    tool_deployable,     // 0x18711c - deployable item
    consumable,          // 0x191a1c - consumable/medical
    resource,            // 0x18720c - resource (category_g, same post-proc as melee)
    vehicle,             // 0x19192c - vehicle component
    trap,                // 0x19197c - trap/turret
    attire,              // 0x196510 - clothing/attire
    building,            // 0x191a44 - building component
    explosive,           // 0x191954 - explosive item
    unknown_default,     // default handler: FUN_785b30 + FUN_7870a4
};

struct ItemNameEntry {
    ReI32 class_name_hash;
    Rva getter_rva;
    ItemCategory category;
};

// [C] Hash values extracted from binary switch at 0x316574.
// [C] Each hash is a precomputed CRC32 or FNV-1a of an IL2CPP class name.
// [I] The getter functions at the target RVAs return the display name string.
// [U] Exact hash algorithm and full class name strings remain unresolved
//     without GameAssembly.dll / global-metadata.dat.
constexpr ItemNameEntry item_hash_table[] = {
    // Negative hashes (sorted by value from decompiled binary tree)
    {static_cast<ReI32>(0xFE196CBA), 0x1a9f90, ItemCategory::weapon_projectile},  // -0xe69346
    {static_cast<ReI32>(0xCA6A8AC0), 0x1ae37c, ItemCategory::tool_deployable},     // -0x35957540
    {static_cast<ReI32>(0xBE444AC2), 0x1aec88, ItemCategory::consumable},          // -0x41bbb53e
    {static_cast<ReI32>(0xA898320F), 0x1af5b0, ItemCategory::weapon_throwable},    // -0x5767cdf1
    {static_cast<ReI32>(0xA90EFC69), 0x1ae430, ItemCategory::weapon_held},         // -0x56f10397
    {static_cast<ReI32>(0xAE81207C), 0x1af34c, ItemCategory::weapon_projectile},   // -0x517edf84
    {static_cast<ReI32>(0xAF631F01), 0x1aef7c, ItemCategory::weapon_projectile},   // -0x509ce0ff
    {static_cast<ReI32>(0xB4F5E483), 0x1acf00, ItemCategory::vehicle},             // -0x4b0a1b7d
    {static_cast<ReI32>(0xC06AA8E7), 0x1af8cc, ItemCategory::trap},               // -0x3f955719
    {static_cast<ReI32>(0xC15A0047), 0x1aba90, ItemCategory::tool_melee},          // -0x3ea5ffb9
    {static_cast<ReI32>(0xC4FE7D18), 0x1aa240, ItemCategory::attire},             // -0x3b0182e8
    {static_cast<ReI32>(0xC71535E8), 0x1afb58, ItemCategory::explosive},           // -0x38eaca18
    {static_cast<ReI32>(0xA290AF6A), 0x1ab66c, ItemCategory::weapon_held},         // -0x5d6f5096 -> special: 0x19ca64
    {static_cast<ReI32>(0x8066BF3E), 0x1ab66c, ItemCategory::weapon_held},         // -0x7f99c7c2 -> 0x19ca64
    {static_cast<ReI32>(0x81BEBEF9), 0x1aac60, ItemCategory::weapon_projectile},   // -0x7e414107
    {static_cast<ReI32>(0x88B9B0DE), 0x1b10ec, ItemCategory::tool_deployable},     // -0x77464f22
    {static_cast<ReI32>(0x90107739), 0x1af408, ItemCategory::tool_deployable},     // -0x6fef88c7
    {static_cast<ReI32>(0x93AC3550), 0x1b06e0, ItemCategory::tool_melee},          // -0x6c53cab0
    {static_cast<ReI32>(0x97B99B77), 0x1ac028, ItemCategory::weapon_held},         // -0x68466489
    {static_cast<ReI32>(0x98752034), 0x1ad288, ItemCategory::resource},            // -0x678adfb3  (-> category_g at LAB_cfb05)
    {static_cast<ReI32>(0x9C2CA419), 0x1ad330, ItemCategory::consumable},          // -0x63d35be7 (-> LAB_cfbda)
    {static_cast<ReI32>(0x9F3C36A1), 0x1acd14, ItemCategory::weapon_projectile},   // -0x60c3c95f
    {static_cast<ReI32>(0xA0BAB244), 0x1ab0ec, ItemCategory::tool_deployable},     // -0x5f454dbc
    {static_cast<ReI32>(0xA0A42DE1), 0x1a9c80, ItemCategory::weapon_held},         // -> LAB_cfa84

    // Positive hashes (from decompiled code)
    {static_cast<ReI32>(0xE4127269), 0x1ad830, ItemCategory::building},            // -0x1bed8d97
    {static_cast<ReI32>(0xDA46F42F), 0x1ae038, ItemCategory::explosive},           // -0x25b90bd1
    {static_cast<ReI32>(0xCE2E2F06), 0x1aa914, ItemCategory::weapon_throwable},    // -0x31d1d0fa
    {static_cast<ReI32>(0xCF187F07), 0x1ac2c8, ItemCategory::consumable},          // -0x30e780f9
    {static_cast<ReI32>(0xD2D4BAFD), 0x1ad4e4, ItemCategory::tool_deployable},     // -0x2d2b4503
    {static_cast<ReI32>(0xD30B5A43), 0x1adb64, ItemCategory::consumable},          // -0x2cf4a5bd
    {static_cast<ReI32>(0xD9CDEB14), 0x1ad070, ItemCategory::weapon_projectile},   // -0x263214ec
    {static_cast<ReI32>(0xDD8E8CB4), 0x1ad330, ItemCategory::consumable},          // -0x2271734c
    {static_cast<ReI32>(0xDF790DDC), 0x1b012c, ItemCategory::consumable},          // -0x2086f224
    {static_cast<ReI32>(0xE01AA09F), 0x1a9f94, ItemCategory::tool_deployable},     // -0x1fe55f61
    {static_cast<ReI32>(0xE359DD55), 0x1aeb0c, ItemCategory::weapon_throwable},    // -0x1ca622ab
    {static_cast<ReI32>(0xEED81610), 0x1ab294, ItemCategory::weapon_projectile},   // -0x1127e9e1 (-> LAB_cfadc)
    {static_cast<ReI32>(0xF42FCB6B), 0x1ad6b4, ItemCategory::consumable},          // -0xbd03495
    {static_cast<ReI32>(0xF4A00203), 0x1aee54, ItemCategory::weapon_projectile},   // -0xb5ffdfd
    {static_cast<ReI32>(0xFC0A3D6D), 0x1a9728, ItemCategory::weapon_held},         // -0x3f5c293
    {static_cast<ReI32>(0xFC343DA8), 0x1abdd0, ItemCategory::tool_deployable},     // -0x3cbc258
    {static_cast<ReI32>(0xFD68C31E), 0x1ae588, ItemCategory::building},            // -0x2973ce2
    {static_cast<ReI32>(0xFDD8471F), 0x1afe44, ItemCategory::weapon_held},         // -0x227b8e1
    {static_cast<ReI32>(0xFE0ECEFB), 0x1af938, ItemCategory::tool_melee},          // -0x1f13105
    {static_cast<ReI32>(0xFEC0BE04), 0x1af1c8, ItemCategory::consumable},          // -0x13f41fc

    // Large positive hashes
    {0x21945E93, 0x1ae280, ItemCategory::tool_melee},
    {0x23D93F87, 0x1acdec, ItemCategory::vehicle},
    {0x25EE4F6F, 0x1ae620, ItemCategory::tool_deployable},
    {0x2D3323E4, 0x1ad8b8, ItemCategory::consumable},
    {0x2E52BD5C, 0x1afca0, ItemCategory::explosive},
    {0x32542451, 0x1ac6b4, ItemCategory::attire},
    {0x3B516339, 0x1b0094, ItemCategory::building},
    {0x3C2A7C73, 0x1af0ac, ItemCategory::tool_deployable},
    {0x5372BA39, 0x1ae430, ItemCategory::weapon_held},
    {0x53EAAB3A, 0x1b01e8, ItemCategory::weapon_throwable},
    {0x567621A3, 0x1adc18, ItemCategory::consumable},
    {0x583D5F3B, 0x1adf74, ItemCategory::explosive},
    {0x5A6CF380, 0x1ab8b0, ItemCategory::weapon_held},
    {0x5BA2E2F8, 0x1ae30c, ItemCategory::resource},
    {0x632E7FE9, 0x1af9d8, ItemCategory::building},
    {0x63453A54, 0x1ac83c, ItemCategory::trap},
    {0x65EFB7A0, 0x1ad494, ItemCategory::consumable},
    {0x67F614A3, 0x1adaec, ItemCategory::vehicle},
    {0x6977D0A9, 0x1afe9c, ItemCategory::building},
    {0x69F6680B, 0x1adc88, ItemCategory::explosive},
    {0x6B720385, 0x1ad560, ItemCategory::tool_melee},
    {0x6E476264, 0x1aff1c, ItemCategory::attire},
    {0x6FE6DF77, 0x1aaef0, ItemCategory::weapon_projectile},
    {0x7229A22B, 0x1ac9a4, ItemCategory::weapon_held},   // special: 0x19188c
    {0x73CBD689, 0x1acb24, ItemCategory::consumable},
    {0x73D98BEF, 0x1af7b4, ItemCategory::resource},
    {0x75F12C79, 0x1adde8, ItemCategory::consumable},
    {0x7AA889B9, 0x1adf20, ItemCategory::resource},
};

// [C] Post-processing routes by category (from decompiled goto targets):
using PostProcess = re::ReFunction<Address(Address)>;
struct ItemResolverCalls {
    re::ReFunction<Address(Address, Address)> get_name_8;   // getters taking (local_res10, local_res18)
    re::ReFunction<Address(Address, Address)> get_name_32;  // getters taking (local_res10, local_28)
    PostProcess postprocess_held;        // 0x1964e8
    PostProcess postprocess_projectile;  // 0x19c9ec
    PostProcess postprocess_throwable;   // 0x1918b4
    PostProcess postprocess_melee;       // 0x18720c
    PostProcess postprocess_deployable;  // 0x18711c
    PostProcess postprocess_consumable;  // 0x191a1c
    PostProcess postprocess_vehicle;     // 0x19192c
    PostProcess postprocess_trap;        // 0x19197c
    PostProcess postprocess_attire;      // 0x196510
    PostProcess postprocess_building;    // 0x191a44
    PostProcess postprocess_explosive;   // 0x191954
    PostProcess postprocess_default_a;   // 0x185b30
    PostProcess postprocess_default_b;   // 0x1870a4
};

// [C] 0x316574: Hash-dispatch item name resolver.
// [C] Takes a precomputed class-name hash and returns the processed display name.
// [I] The binary search tree in the original is compiler-generated from a switch statement.
// [I] We reconstruct it as a linear lookup for semantic clarity.
Address resolve_item_name_316574(Address context, ReI32 class_name_hash,
                                  const ItemResolverCalls &calls) {
    for (const auto &entry : item_hash_table) {
        if (entry.class_name_hash == class_name_hash) {
            Address raw_name = calls.get_name_32(context, entry.getter_rva);
            switch (entry.category) {
            case ItemCategory::weapon_held:      return calls.postprocess_held(raw_name);
            case ItemCategory::weapon_projectile:return calls.postprocess_projectile(raw_name);
            case ItemCategory::weapon_throwable: return calls.postprocess_throwable(raw_name);
            case ItemCategory::tool_melee:       return calls.postprocess_melee(raw_name);
            case ItemCategory::tool_deployable:  return calls.postprocess_deployable(raw_name);
            case ItemCategory::consumable:       return calls.postprocess_consumable(raw_name);
            case ItemCategory::resource:         return calls.postprocess_melee(raw_name);
            case ItemCategory::vehicle:          return calls.postprocess_vehicle(raw_name);
            case ItemCategory::trap:             return calls.postprocess_trap(raw_name);
            case ItemCategory::attire:           return calls.postprocess_attire(raw_name);
            case ItemCategory::building:         return calls.postprocess_building(raw_name);
            case ItemCategory::explosive:        return calls.postprocess_explosive(raw_name);
            default: break;
            }
        }
    }
    Address fallback = calls.postprocess_default_a(context);
    return calls.postprocess_default_b(fallback);
}

} // anon
} // namespace rust_internal_re
