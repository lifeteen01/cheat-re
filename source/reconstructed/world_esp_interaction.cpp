#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T interaction_read(const Snapshot &im, Address p, Rva site) {
    const auto v = im.read<T>(p);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
} // namespace
// [C] Complete317928..317b1c controller; visibility/time/RPC are actual game boundaries.
bool replay_world_interaction_317928(const Snapshot &im, const WorldInteraction &action,
                                     Vec3 local_position, WorldInteractionState &state,
                                     WorldInteractionBackend &b,
                                     const WorldClassifierBackend &bounds) {
    if (!sample_pointer_range(action.local) || !sample_pointer_range(action.entity))
        return false;
    const auto local = action.local;
    const auto flags = interaction_read<ReU32>(im, local + 0x708, 0x31796d);
    if (flags & 0x40)
        return false; // [C] 36b288
    if (interaction_read<ReU8>(im, local + 0x2c0, 0x31797d))
        return false;
    const auto mounted = interaction_read<Address>(im, local + 0x368, 0x317988);
    if (sample_pointer_range(mounted) &&
        interaction_read<ReI32>(im, mounted + 0x90, 0x36b0b3) == 3)
        return false;
    if (flags & 0x10)
        return false;
    const auto distance = entity_bounds_distance_3666b0(action.entity, local_position, bounds);
    if (!distance)
        { __builtin_trap(); }
    // [C] COMISS/JB rejects unordered too.
    if (!(2.9f >= *distance))
        return false;
    if (action.mode == 2)
        state.loot_requested_3e40b8 = true;
    if (!b.time_2e6240)
        { __builtin_trap(); }
    if (!(b.time_2e6240() > state.deadline_3f0970))
        return false;
    state.deadline_3f0970 = b.time_2e6240() + 0.035f;
    re::ReStringView rpc;
    switch (action.mode) {
    case 1:
        rpc = "RPC_PickUp";
        break;
    case 2:
        if (action.argument_20 || action.argument_28)
            return false;
        rpc = "RPC_OpenLoot";
        break;
    case 3:
        return false;
    case 4:
        rpc = "PickupEat";
        break;
    case 5:
        rpc = "RPC_ReqDoRestrainedPush";
        break;
    case 6:
        rpc = "Pickup";
        break;
    default:
        if (!b.visibility_2e2320)
            __builtin_trap();
        if (!b.visibility_2e2320(local_position, action.position, 0x48a12001, 0, 0))
            return false;
        rpc = "Pickup";
        break;
    }
    if (!b.rpc_366c30)
        { __builtin_trap(); }
    b.rpc_366c30(action.entity, rpc);
    return true;
}
} // namespace rust_internal_re
