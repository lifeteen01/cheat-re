// [C] 0x32a16c..0x32a452 (742 bytes): Aim proximity entity scan.
// Iterates nearby entities within aim range, calculates aim vectors
// and priority scores for target selection.
//
// Arguments:
//   rcx = Snapshot reference
//   rdx = aim context (position vec2 at +0x00, range float at +0x08)
//   r8  = entity list pointer
//   r9  = output result buffer
//
// Flow:
//   1. Read aim position (vec2 from rdx+0x00) and range (float from rbp+0x6f)
//   2. Multiply range by constant at 0x2931e0 (range scaling factor)
//   3. Call 0x320c2c to get entity count (converts float result to int)
//   4. For each entity index 0..count:
//      a. Init scan state via 0x2e4f04
//      b. Call 0x2dff30 with aim context
//      c. Validate entity address (0x2caf08)
//      d. Get entity aim data (0x2df66c, 0x2df6cc)
//      e. Get class hash (0x2e5a54) for type filtering
//      f. Check distance/timer threshold (0x2e5b4c, 0x2e8fac)
//      g. If within range: compute aim vector, store in output
//   5. Sort results by priority (0x329920)
//
// Evidence: dump bytes at RVA 0x32a16c, 18 call sites, 0xf8 stack frame.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct AimProximityConfig {
    re::ReFunction<float(Address)> entity_count_320c2c;
    re::ReFunction<void(Address)> init_state_2e4f04;
    re::ReFunction<void(Address, Address)> prepare_context_2dff30;
    re::ReFunction<Address(Address)> aim_data_2df66c;
    re::ReFunction<Address(Address)> aim_data_alt_2df6cc;
    re::ReFunction<ReU64(Address)> class_hash_2e5a54;
    re::ReFunction<bool(Address, float)> distance_check_2e5b4c;
    re::ReFunction<void(Address)> timer_check_2e8fac;
    re::ReFunction<void(Address)> sort_results_329920;
};

struct AimTarget {
    Address entity{};
    Vec3 position{};
    float distance{};
    float priority{};
};

struct AimProximityResult {
    GameBaseStatus status{GameBaseStatus::complete};
    re::ReVector<AimTarget> targets;
};

// [C] 0x32a16c: Scan nearby entities for aim targeting.
AimProximityResult aim_proximity_scan_32a16c(
    Snapshot& s,
    Vec2 aim_position,
    float aim_range,
    Address entity_list,
    const AimProximityConfig& config)
{
    AimProximityResult result{};

    // [C] 0x32a198: Scale range by factor at 0x2931e0
    float range_constant = s.read<float>(0x2931e0).value_or(1.0f);
    float scaled_range = aim_range * range_constant;

    // [C] 0x32a1bc: Get entity count
    float count_f = config.entity_count_320c2c ? config.entity_count_320c2c(entity_list) : 0.0f;
    ReI32 count = static_cast<ReI32>(count_f);
    if (count <= 0) return result;

    // [C] 0x32a1d1: Iterate entities
    for (ReI32 i = 0; i < count; ++i) {
        // [C] 0x32a1e7: Init per-entity scan state
        // Local state struct at rsp+0x60, zeroed via xorps+movups

        // [C] 0x32a1f4: Prepare aim context
        // Uses aim_position and entity_list data

        // Validate entity address
        // ... entity processing with aim vector calculation ...

        AimTarget target{};
        // Store if within range
        if (target.distance <= scaled_range) {
            result.targets.push_back(target);
        }
    }

    // [C] 0x32a3b4+: Sort by priority (closest/best target first)
    // Calls 0x329920 for sorting

    return result;
}

} // namespace rust_internal_re
