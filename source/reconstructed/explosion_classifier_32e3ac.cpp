// [C] 0x32e3ac..0x32e798: Explosion type classifier.
// Uses FNV-1a hashing to match explosion prefab path strings against known types.
// Returns an integer category identifying the explosion source weapon/vehicle.
//
// Called from server tick analysis to determine what kind of explosive hit occurred.
//
// Evidence: dump_analysis/semantic_reconstruction/function_strings.json[0x32e3ac]
// String getters at 0x32df34..0x32e370 each return one prefab path literal.
// FNV-1a basis: 0xcbf29ce484222325 (standard 64-bit)
//
// Categories:
//   0  = C4                    (c4_explosion.prefab)
//   1  = 40mm HE grenade       (40mm_he_explosion.prefab)
//   2  = Underwater explosion   (explosion_underwater_surface_large.prefab)
//   3  = Catapult boulder       (boulder_explosion.prefab)
//   4  = Explosion flame        (explosion flame.prefab)
//   5  = Catapult canisters     (explosion large catapult canisters.prefab)
//   6  = Additive explosion     (bundled/fx/impacts/additive/explosion.prefab)
//   7  = F1 grenade             (f1grenade_explosion.prefab)
//   8  = Molotov cocktail       (molotovexplode.prefab)
//   9  = Beancan grenade        (beancan_grenade_explosion.prefab)
//   10 = MLRS rocket            (pfx_mlrs_rocket_explosion_ground.prefab)
//   11 = Standard rocket        (rocket_explosion.prefab)
//   12 = Battering ram fire     (battering ram fire.prefab)
//   13 = Incendiary rocket      (rocket_explosion_incendiary.prefab)
//   14 = HV rocket              (rocket_explosion_hv.prefab)
//   15 = Satchel charge         (satchel-charge-explosion.prefab)
//   -1 = Unknown/unrecognized
//
// Flow:
//   1. Validate input entity chain: entity → entity+0x10 → prefab name
//   2. Compute FNV-1a hash of the entity's prefab path
//   3. Load each known prefab string literal, hash it
//   4. Compare against the target hash; return matching category index
//   5. If no match, check if entity matches a cached "current entity" global

#include "reconstruction.hpp"
namespace rust_internal_re {

// [C] FNV-1a 64-bit offset basis
static constexpr ReU64 kFnvBasis = 0xcbf29ce484222325ULL;

// [C] 0x32e3ac
ReI32 classify_explosion_32e3ac(
    Snapshot& s,
    const re::ReFunction<Address()>& get_entity_32dedc,
    const re::ReFunction<bool(Address)>& is_valid_2caefe,
    const re::ReFunction<Address(Address)>& get_prefab_object,
    const re::ReFunction<Address(Address)>& get_prefab_component,
    const re::ReFunction<Address(Address, Address&)>& get_name_ref,
    const re::ReFunction<Address(Address)>& get_string_data,
    const re::ReFunction<Address(Address)>& compute_hash_key,
    const re::ReFunction<Address(Address)>& get_property,
    const re::ReFunction<ReI32()>& get_tick_id,
    const re::ReFunction<ReU64(Address, ReU64)>& fnv_hash,
    // 16 string-literal getter callbacks, one per known explosion type
    const re::ReArray<re::ReFunction<Address()>, 16>& prefab_getters,
    // Conversion helpers
    const re::ReFunction<Address(Address)>& to_text
) {
    // [C] 0x32e3c6: get entity and validate chain
    Address entity = get_entity_32dedc();
    if (!is_valid_2caefe(entity)) return -1;

    // [C] 0x32e3de: check entity+0x10 validity
    Address inner = s.read<Address>(entity + 0x10).value_or(0);
    if (!is_valid_2caefe(inner)) return -1;

    // [C] 0x32e3f2: get prefab path object
    Address prefab = get_prefab_object(entity);
    if (!is_valid_2caefe(prefab)) return -1;

    // [C] 0x32e40c: get prefab component and name
    Address component = get_prefab_component(entity);
    Address name_ref{};
    Address name_data = get_name_ref(component, name_ref);
    Address string_data = get_string_data(name_data);
    Address hash_key = compute_hash_key(string_data);

    // [C] 0x32e43e: get property from prefab
    Address prop = get_property(prefab);

    // [C] 0x32e44c: check tick id against cached globals
    ReI32 tick_id = get_tick_id();

    // [C] 0x32e454: check if same entity+tick as cached
    Address cached_entity = s.read<Address>(0x3f8698 + 0x3CA39C - 0x3CA39C).value_or(0);
    // If cache hit, use cached result directly
    // (omitted — the actual comparison is against two globals)

    // [C] 0x32e47b: compute FNV-1a hash of entity's prefab name
    ReU64 target_hash = static_cast<ReU64>(hash_key);

    // [C] 0x32e489..0x32e78f: match against 16 known explosion prefab hashes
    // Each iteration: get_literal → to_text → fnv_hash → compare
    for (ReI32 i = 0; i < 16; ++i) {
        if (!prefab_getters[i]) continue;
        Address literal = prefab_getters[i]();
        Address text = to_text(literal);
        ReU64 hash = fnv_hash(text, kFnvBasis);
        if (target_hash == hash) {
            // [C] 0x32e489+: matched category i
            return i;
        }
    }

    // [C] 0x32e778: no match found
    return -1;
}

} // namespace rust_internal_re
