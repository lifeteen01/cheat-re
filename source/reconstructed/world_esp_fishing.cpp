#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class T> T fishing_read(const Snapshot &im, Address p, Rva site) {
    const auto v = im.read<T>(p);
    if (!v)
        { __builtin_trap(); }
    return *v;
}
} // namespace
re::ReStringView fishing_status_318bb8(ReI32 n) {
    constexpr re::ReArray<re::ReStringView, 13> table{
        "User cancelled.", "Bad angle.",           "Line tension broke.",
        "Not equipped.",   "Operation timed out.", "Success.",
        "No water found.", "Obstructed.",          "No lure.",
        "Too shallow.",    "Too close.",           "Too far away.",
        "Player moved."};
    return n >= 0 && n < ReI32(table.size()) ? table[ReUSize(n)] : "Unknown";
}
// [C] Entire fishing preamble2fb7fc..2fc281. Game identity/key-edge results are copied inputs.
void replay_world_fishing_2fb7fc(const Snapshot &im, const WorldEspConfig &c,
                                 const WorldFishingFrame &f, WorldFishingState &s,
                                 WorldInteractionState &interaction, WorldInteractionBackend &calls,
                                 WorldClassifierBackend &game, WorldDrawBackend &draw,
                                 WorldDrawOutput out) {
    interaction.loot_requested_3e40b8 = false;
    if (!c.boolean(0x3e4108))
        return;
    const auto request = [&](Address e, Vec3 position, ReU16 flags) {
        const WorldInteraction a{0x2fbb88, e, f.local, position, 2, false, (flags & 8) != 0};
        (void)replay_world_interaction_317928(im, a, f.local_position, interaction, calls, game);
    };
    if (f.key96_edge && f.looked_at && sample_pointer_range(f.looked_at->entity) &&
        entity_name_hash_2d6354(f.looked_at->class_name) == entity_name_hash_2d6354("BoxStorage")) {
        const auto e = f.looked_at->entity;
        const auto net = fishing_read<Address>(im, e + 0x48, 0x2fb8a5);
        if (sample_pointer_range(net)) {
            const auto id = fishing_read<ReU32>(im, net + 0x38, 0x2fb8b9);
            if (re::re_none_of(s.boxes_218820.begin(), s.boxes_218820.end(),
                             [&](const auto &box) { return box.network_id == id; })) {
                if (!game.position_3747d4)
                    __builtin_trap();
                if (const auto position = game.position_3747d4(e)) {
                    s.boxes_218820.push_back({e, *position, id});
                    request(e, *position, fishing_read<ReU16>(im, e + 0x1d8, 0x2fb9b3));
                }
            }
        }
    }
    ReI32 ordinal = 1;
    for (const auto &box : s.boxes_218820) {
        const auto e = box.entity;
        if (sample_pointer_range(e)) {
            const auto net = fishing_read<Address>(im, e + 0x48, 0x2fba0e);
            if (sample_pointer_range(net)) {
                const auto id = fishing_read<ReU32>(im, net + 0x38, 0x2fba22);
                const auto flags = fishing_read<ReU16>(im, e + 0x1d8, 0x2fba5a);
                if (!s.counts_3e5f50.empty() &&
                    s.counts_3e5f50[id] != fishing_read<ReI32>(im, e + 0x338, 0x2fba64)) {
                    if (s.bait_ready_3e5e7b && ordinal == 1 && !s.bait_3e5fd0.empty() &&
                        c.boolean(0x3e41a8)) {
                        if (s.bait_3e5fd0[id])
                            request(e, box.position, flags);
                    } else if (s.rods_ready_3e5e7a && ordinal == 1 && !s.rods_3e5f90.empty() &&
                               (c.boolean(0x3e9c28) || c.boolean(0x3e9bd8))) {
                        if (s.rods_3e5f90[id])
                            request(e, box.position, flags);
                    } else if (c.boolean(0x3e4158) && ordinal > 1)
                        request(e, box.position, flags);
                }
            }
        }
        if (ordinal == INT32_MAX)
            { __builtin_trap(); }
        ++ordinal;
    }
    if (!draw.world_projection_36cd20)
        { __builtin_trap(); }
    if (vector_inequality_2df5dc(s.throw_position_3e6070, {})) {
        if (const auto at =
                draw.world_projection_36cd20(s.throw_position_3e6070, f.projection_bounds)) {
            const auto distance =
                world_cvttss2si(length(f.camera_position - s.throw_position_3e6070));
            out.emplace_back(WorldTextDraw{0x2fbd84,
                                           *at,
                                           "Throw Position (" + re::re_to_string(distance) + "m)",
                                           {1, 1, 1, 1},
                                           1});
            out.emplace_back(WorldTextDraw{0x2fbe14,
                                           {at->x, at->y + 16},
                                           re::ReString(fishing_status_318bb8(s.status_3e60a0)),
                                           {1, 1, 1, 1},
                                           1});
        }
    }
    ordinal = 1;
    for (const auto &box : s.boxes_218820) {
        // [C] First projection precedes the zero-position and <50 checks, then projection is repeated for drawing.
        if (draw.world_projection_36cd20(box.position, f.projection_bounds) &&
            vector_inequality_2df5dc(box.position, {})) {
            const float distance = length(f.camera_position - box.position);
            if (50.0f > distance) {
                const auto label = (ordinal == 1 ? re::ReString("Pole/Bait Box (")
                                                 : "Box #" + re::re_to_string(ordinal) + " (") +
                                   re::re_to_string(world_cvttss2si(distance)) + "m)";
                if (const auto at = draw.world_projection_36cd20(box.position, f.projection_bounds))
                    out.emplace_back(WorldTextDraw{0x2fc24f, *at, label, {1, 1, 1, 1}, 1});
            }
        }
        if (ordinal == INT32_MAX)
            { __builtin_trap(); }
        ++ordinal;
    }
}
} // namespace rust_internal_re
