#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
bool tail_cooldown(float &deadline, float interval, WorldInteractionBackend &b, Rva site) {
    if (!b.time_2e6240)
        { __builtin_trap(); }
    if (!(b.time_2e6240() > deadline))
        return false;
    deadline = b.time_2e6240() + interval;
    return true;
}
} // namespace
// [C] Whole3141bb..3143c7. Candidate list/order comes from the preceding concrete distance/predicate pass.
void replay_world_handcuff_tail_3141bb(re::ReSpan<const WorldHandcuffCandidate> candidates,
                                       const WorldEspConfig &c, WorldOverlayTailState &s,
                                       WorldInteractionBackend &b,
                                       const re::ReFunction<bool(Address)> &hood_369cdc) {
    if (!c.boolean(0x3e98b8) || candidates.empty())
        return;
    const auto index = ReU64(ReI64(s.index_3f12f8)) % candidates.size();
    s.index_3f12f8 = re::re_bit_cast<ReI32>(ReU32(index));
    const auto &candidate = candidates[ReUSize(index)];
    if (!sample_pointer_range(candidate.entity) || !candidate.valid || candidate.wounded ||
        !candidate.flag_10000000 || !(2.8f >= candidate.distance))
        return;
    const auto rpc = [&](re::ReStringView text) {
        if (!b.rpc_366c30)
            { __builtin_trap(); }
        b.rpc_366c30(candidate.entity, text);
    };
    if (tail_cooldown(s.deadline_3f12fc, 0.05f, b, 0x3142c3)) {
        if (!hood_369cdc)
            { __builtin_trap(); }
        rpc(hood_369cdc(candidate.entity) ? "RPC_ReqRemoveHood" : "RPC_ReqEquipHood");
    }
    if (tail_cooldown(s.deadline_3f1300, 1, b, 0x31431f)) {
        rpc("RPC_ReqForceMountNearest");
        rpc("RPC_ReqDoRestrainedPush");
        rpc("RPC_ReqForceMountNearest");
        s.index_3f12f8 = re::re_bit_cast<ReI32>(ReU32(s.index_3f12f8) + 1);
        if (ReU64(ReI64(s.index_3f12f8)) >= candidates.size())
            s.index_3f12f8 = 0;
    }
}
// [C] Whole3143c7..3148ca registry/history transition. Layout names refer to owned values only.
void refresh_world_registry_3143c7(re::ReSpan<const WorldRegistryCandidate> candidates,
                                   Address local, WorldOverlayTailState &s,
                                   WorldInteractionBackend &b, WorldRegistryBackend &game) {
    if (!tail_cooldown(s.deadline_3f1304, 1.2f, b, 0x3143d6))
        return;
    for (const auto &candidate : candidates) {
        if (!sample_pointer_range(candidate.entity) || !candidate.valid || !candidate.model_valid ||
            !candidate.player_model_valid || candidate.entity == local || candidate.npc ||
            candidate.name.empty())
            continue;
        auto history =
            re::re_find_if(s.history_218850.begin(), s.history_218850.end(),
                         [&](const auto &h) { return h.identifier == candidate.identifier; });
        if (bool(history)) {
            if (history->current_name != candidate.name) {
                history->previous_name = history->current_name;
                history->current_name = candidate.name;
            }
            history->team = apparent_team_getter_2cd32c();
            if (!candidate.identifier_text.empty())
                s.registry_3d7260[candidate.identifier_text].name = candidate.name;
            continue;
        }
        if (candidate.identifier_text.empty())
            continue;
        (void)s.registry_3d7260
            [candidate
                 .identifier_text]; // [C] absent map entry default inserted before history append.
        if (!game.terrain_315a24)
            { __builtin_trap(); }
        auto grid = world_grid_315518(candidate.bone_53, game.terrain_315a24());
        if (!game.visibility_2e2320)
            __builtin_trap();
        if (!game.visibility_2e2320(candidate.bone_53 + Vec3{0, 100, 0}, candidate.bone_53,
                                    0x200000, 0, 0))
            grid += " [Inside Base]";
        s.history_218850.push_back({candidate.name, candidate.name, candidate.identifier_text, grid,
                                    candidate.identifier, 0});
    }
}
} // namespace rust_internal_re
