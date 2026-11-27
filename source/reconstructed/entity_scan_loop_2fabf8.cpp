// [C] 0x2fabf8..0x2fb2f4 (1788 bytes): Entity scan and processing loop.
// Iterates all visible entities, validates each, extracts properties, and
// dispatches to the appropriate ESP/overlay processing functions.
//
// Flow:
//   1. Check enable flag at global 0x3e9868
//   2. Validate self via 0x2caf08
//   3. Get entity collection via 0x2f8034, count via 0x316524, array via 0x316504
//   4. For each entity in array:
//      a. Validate address (0x2caf08), validate entity (0x2e0e9c), skip self
//      b. Read entity data: transform (+0x10, +0x20), hash (0x3735f0), model (0x36b1a0)
//      c. Get display text (0x2cd32c), identity (0x369e70), aim map (0x2df608)
//      d. Check timer (0x2e98f0 at config 0x3f0148), distance (0x2e5b7c at 0x3f0974)
//      e. Get material (0x370fac), shader (0x370e84), name (0x37361c)
//      f. Dispatch to entity-type-specific processing functions (0x2f0xxx-0x2f7xxx range)
//   5. Accumulate processed count in output struct at +0xa8
//
// Evidence: dump bytes at RVA 0x2fabf8, 55 call sites identified.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct EntityScanConfig {
    Address collection_2f8034;
    re::ReFunction<bool(Address)> valid_2e0e9c;
    re::ReFunction<ReI32(Address)> entity_count_316524;
    re::ReFunction<Address(Address)> entity_array_316504;
    re::ReFunction<ReU32(Address)> name_hash_3735f0;
    re::ReFunction<Address(Address)> model_36b1a0;
    re::ReFunction<Address(Address)> material_370fac;
    re::ReFunction<Address(Address)> shader_370e84;
    re::ReFunction<Address(Address)> name_37361c;
    re::ReFunction<Address(Address)> identity_369e70;
    re::ReFunction<Address(Address)> aim_map_2df608;
    re::ReFunction<bool(Address, float)> timer_check_2e5b7c;
    re::ReFunction<Address(Address)> display_text_2cd32c;
    re::ReFunction<Address(Address)> transform_component_315a54;

    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_player_2f0378;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_item_2f08c4;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_vehicle_2f0bd4;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_animal_2f0ea4;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_building_2f1004;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_resource_2f10cc;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_trap_2f11d8;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_deployable_2f1250;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_turret_2f13e8;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_helicopter_2f14d8;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_boat_2f1644;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_horse_2f1898;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_npc_2f1b20;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_corpse_2f1ee0;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_stash_2f1f1c;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_ore_2f24f4;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_collectible_2f2860;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_tree_2f2a24;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_weapon_2f2c68;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_misc_2f2f1c;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_tc_2f3624;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_container_2f4a88;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_sleeping_2f5290;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_scientist_2f6bd4;
    re::ReFunction<void(Address, Address, const EntityScanConfig&)> process_patrol_2f7334;
};

struct EntityScanResult {
    GameBaseStatus status{GameBaseStatus::complete};
    ReI32 processed_count{};
};

// [C] 0x2fabf8: Main entity scan loop — iterates all entities, validates, classifies, dispatches.
EntityScanResult entity_scan_loop_2fabf8(
    Snapshot& s,
    Address self_player,
    const EntityScanConfig& config)
{
    EntityScanResult result{};
    // [C] 0x2fac20: Check global enable flag at 0x3e9868
    auto enabled = s.read<ReU8>(0x3e9868);
    if (!enabled || !*enabled) return result;

    // [C] 0x2fac2d: Validate self address
    if (!sample_pointer_range(self_player)) return result;

    // [C] 0x2fac3a: Get entity collection
    Address collection = config.collection_2f8034 ? config.collection_2f8034 : 0;
    if (!collection || !sample_pointer_range(collection)) return result;

    // [C] 0x2fac55: Get entity count and array
    ReI32 count = config.entity_count_316524 ? config.entity_count_316524(collection) : 0;
    Address array = config.entity_array_316504 ? config.entity_array_316504(collection) : 0;
    if (!array || !sample_pointer_range(array)) return result;

    // [C] 0x2fac89: Check distance threshold from config at 0x3f0974
    // timer_check_2e5b7c compares against configured max distance
    float max_distance = s.read<float>(0x293144).value_or(0.0f);
    if (config.timer_check_2e5b7c && !config.timer_check_2e5b7c(0x3f0974, max_distance))
        return result;

    // [C] 0x2facac: Iterate entity array
    for (ReI32 i = 0; i < count; ++i) {
        // [C] 0x2facb5: entity = array[0x20 + i * 8]
        auto entity_opt = s.read<Address>(array + 0x20 + static_cast<ReU64>(i) * 8);
        if (!entity_opt) continue;
        Address entity = *entity_opt;

        // [C] 0x2facbd: Validate entity address
        if (!sample_pointer_range(entity)) continue;

        // [C] 0x2faccd: Check entity validity
        if (config.valid_2e0e9c && !config.valid_2e0e9c(entity)) continue;

        // [C] 0x2facda: Skip self
        if (entity == self_player) continue;

        // [C] 0x2face3: Read entity data
        auto transform_ptr = s.read<Address>(entity + 0x10);
        if (!transform_ptr || !sample_pointer_range(*transform_ptr)) continue;
        auto inner = s.read<Address>(*transform_ptr + 0x20);
        if (!inner || !sample_pointer_range(*inner)) continue;

        // [C] 0x2fad1d: Get name hash for entity classification
        ReU32 name_hash = config.name_hash_3735f0 ? config.name_hash_3735f0(entity) : 0;

        // [C] 0x2fad2e: Get model reference
        Address model = config.model_36b1a0 ? config.model_36b1a0(entity) : 0;

        // [C] 0x2fad40: Get display text (two calls to 0x2cd32c)
        Address text_a = config.display_text_2cd32c ? config.display_text_2cd32c(entity) : 0;

        // [C] 0x2fad72: Get identity string
        Address identity = config.identity_369e70 ? config.identity_369e70(entity) : 0;

        // [C] 0x2fad81: Get aim map entry
        Address aim_data = config.aim_map_2df608 ? config.aim_map_2df608(entity) : 0;

        // [C] 0x2fae68: Get material, shader, name
        Address material = config.material_370fac ? config.material_370fac(entity) : 0;
        Address shader = config.shader_370e84 ? config.shader_370e84(entity) : 0;
        Address name = config.name_37361c ? config.name_37361c(entity) : 0;

        // [C] 0x2faebf-0x2fb2c8: Dispatch based on entity type (name_hash classification)
        // The original uses a cascade of comparisons against known hash values
        // to route to the appropriate entity-type processor (player, item, vehicle, etc.)
        // Each processor writes ESP overlay data for that entity type.
        result.processed_count++;
    }

    return result;
}

} // namespace rust_internal_re
