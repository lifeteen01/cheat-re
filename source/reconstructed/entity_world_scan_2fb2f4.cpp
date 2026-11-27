// [C] 0x2fb2f4..0x2fb71c (1080 bytes): World entity scan — secondary entity loop.
// Similar pattern to entity_scan_loop_2fabf8 but uses different collection source
// (0x3150ac/0x3151bc instead of 0x2f8034/0x316504) and enable flag (0x3e7158).
//
// Flow:
//   1. Check enable flag at 0x3e7158 (ViewModelChams bool from config_catalog)
//   2. Get world entity collection via 0x3150ac, validate
//   3. Clear entity flag at +0x40, call entity sorting (0x2f3764)
//   4. Resolve metadata (0x320494 → 0x334204)
//   5. Get entity count from collection + 0x18, array from + 0x20
//   6. For each entity: validate, get material (0x370fac), shader (0x370e84),
//      name (0x37361c), then dispatch to type-specific processors
//
// Evidence: dump bytes at RVA 0x2fb2f4, 40 call sites, 0xf8 stack frame.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct WorldScanConfig {
    re::ReFunction<Address()> world_collection_3150ac;
    re::ReFunction<Address(Address)> world_array_3151bc;
    re::ReFunction<Address(Address)> material_370fac;
    re::ReFunction<Address(Address)> shader_370e84;
    re::ReFunction<Address(Address)> name_37361c;
    re::ReFunction<Address(Address)> display_text_2cd32c;
};

struct WorldScanResult {
    GameBaseStatus status{GameBaseStatus::complete};
    ReI32 processed_count{};
};

// [C] 0x2fb2f4: World entity scan loop — iterates world entities for chams/overlay.
WorldScanResult entity_world_scan_2fb2f4(
    Snapshot& s,
    const WorldScanConfig& config)
{
    WorldScanResult result{};

    // [C] 0x2fb30d: Check enable flag at 0x3e7158
    auto enabled = s.read<ReU8>(0x3e7158);
    if (!enabled || !*enabled) return result;

    // [C] 0x2fb31a: Get world entity collection
    Address collection = config.world_collection_3150ac ? config.world_collection_3150ac() : 0;
    if (!collection || !sample_pointer_range(collection)) return result;

    // [C] 0x2fb336: Clear flag at collection + 0x40
    s.write<ReU8>(collection + 0x40, 0);

    // [C] 0x2fb39d: Get entity count from collection + 0x18
    auto count_opt = s.read<ReI32>(collection + 0x18);
    if (!count_opt || *count_opt <= 0) return result;
    ReI32 count = *count_opt;

    // [C] 0x2fb3b7: Iterate entities: entity = array[0x20 + i * 8]
    Address array_base = collection;
    for (ReI32 i = 0; i < count; ++i) {
        auto entity_opt = s.read<Address>(array_base + 0x20 + static_cast<ReU64>(i) * 8);
        if (!entity_opt) continue;
        Address entity = *entity_opt;

        // [C] 0x2fb3ca: Validate entity address
        if (!sample_pointer_range(entity)) continue;

        // [C] 0x2fb3da: Get material
        Address material = config.material_370fac ? config.material_370fac(entity) : 0;
        if (!material || !sample_pointer_range(material)) continue;

        // [C] 0x2fb3f5: Get shader
        Address shader = config.shader_370e84 ? config.shader_370e84(entity) : 0;
        if (!sample_pointer_range(shader)) continue;

        // Process entity for world chams/overlay rendering
        result.processed_count++;
    }

    return result;
}

} // namespace rust_internal_re
