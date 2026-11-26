#include "world_esp_analysis.hpp"
namespace rust_internal_re {
namespace {
template <class F> void cached_need(const F &f, Rva site, Rva dep) {
    if (!f)
        { __builtin_trap(); }
}
} // namespace
void draw_cached_world_2fc460(re::ReSpan<const CachedWorldObject> objects, bool sam,
                              const CachedWorldFrame &frame, const WorldEspConfig &c,
                              WorldDrawBackend &b, WorldDrawOutput out) {
    if (sam) {
        if (!(c.boolean(0x3e87d8) && c.boolean(0x3e8828)))
            return;
    } else if (!c.boolean(0x3e8f58) || c.boolean(0x3e5cb8))
        return;
    const auto color = c.color(sam ? 0x3ec458 : 0x3eaf58);
    for (const auto &object : objects) {
        if (object.world_seed == 0 || object.world_seed != frame.world_seed)
            continue;
        const auto distance =
            re::re_to_string(world_cvttss2si(length(object.position - frame.camera_position))) + "m";
        // [C] SAM uses local predicate 369fac; stashes use DrawIngameRadarLocalStashes.
        const bool ingame = sam ? frame.local_369fac : c.boolean(0x3ea268);
        if (sam && !ingame)
            continue; // [C] SAM false branch skips the later world projection too.
        if (ingame) {
            cached_need(b.ingame_projection_314f08, sam ? 0x2fc624 : 0x2fcad2, 0x314f08);
            const Vec2 at = b.ingame_projection_314f08(object.position);
            if (at.x != 0 || at.y != 0) {
                cached_need(b.scale_315778, sam ? 0x2fc652 : 0x2fcb00, 0x315778);
                float size = b.scale_315778() + c.real(0x3edac8);
                const float y = (at.y + size) + 6.325f;
                if (c.boolean(0x3ea308)) {
                    size *= 2.8f;
                    out.emplace_back(WorldIconDraw{
                        sam ? Rva(0x2fc6c4) : Rva(0x2fcb72), at, {size, size}, sam ? "84" : "124"});
                } else
                    out.emplace_back(WorldDirectionMarkerDraw{sam ? Rva(0x2fc71b) : Rva(0x2fcbc9),
                                                              at, size, color, false, 0});
                out.emplace_back(WorldTextDraw{
                    sam ? Rva(0x2fc785) : Rva(0x2fcc33), {at.x, y}, distance, {1, 1, 1, 1}, 3});
            }
        }
        if (c.boolean(0x3e6e38) && frame.map_open)
            continue;
        cached_need(b.world_projection_36cd20, sam ? 0x2fc7c7 : 0x2fcc75, 0x36cd20);
        const auto at = b.world_projection_36cd20(object.position, frame.projection_bounds);
        if (!at)
            continue;
        // [C] Prefix cached-object limit is STRICT and uses local-position distance.
        // Labels above use camera-position distance and have no corresponding limit.
        if (!(float(c.integer(sam ? 0x3eebf8 : 0x3ee8d8)) >
              length(object.position - frame.local_position)))
            continue;
        out.emplace_back(
            WorldTextDraw{sam ? Rva(0x2fc857) : Rva(0x2fcd05), *at, object.label, color, 1});
        out.emplace_back(WorldTextDraw{
            sam ? Rva(0x2fc8d7) : Rva(0x2fcd85), {at->x, at->y + 13}, distance, {1, 1, 1, 1}, 1});
    }
}
void cache_looked_at_world_2fc2c6(const Snapshot &im, const EntityIdentity &e,
                                  const WorldEspConfig &c, WorldClassifierState &state,
                                  WorldClassifierBackend &b) {
    const auto hash = entity_name_hash_2d6354(e.class_name);
    const bool stash = hash == entity_name_hash_2d6354("StashContainer");
    const bool lock = hash == entity_name_hash_2d6354("CodeLock") ||
                      hash == entity_name_hash_2d6354("DigitSendCodeLock");
    if (!(stash && c.boolean(0x3e8f58)) && !(lock && c.boolean(0x3e9598)))
        return;
    const auto network = im.read<Address>(e.entity + 0x48);
    if (!network)
        __builtin_trap();
    if (!sample_pointer_range(*network))
        return;
    const auto id = im.read<ReU32>(*network + 0x38);
    if (!id)
        { __builtin_trap(); }
    if (stash) {
        if (re::re_any_of(state.stash_218768.begin(), state.stash_218768.end(),
                        [&](const auto &x) { return x.network_id == *id; }))
            return;
        cached_need(b.world_seed_317bec, 0x2fcf58, 0x317bec);
        const auto seed = b.world_seed_317bec();
        if (!seed)
            return;
        cached_need(b.position_3747d4, 0x2fcf6a, 0x3747d4);
        const auto position = b.position_3747d4(e.entity);
        if (!position)
            return;
        state.stash_218768.push_back({e.entity, *position, *id, *seed, "Stash"});
        cached_need(b.persist_stash_2dc590, 0x2fcff0, 0x2dc590);
        b.persist_stash_2dc590();
        cached_need(b.notification_37f918, 0x2fd03a, 0x37f918);
        b.notification_37f918("Successfully saved stash");
    } else {
        if (re::re_any_of(state.lock_218838.begin(), state.lock_218838.end(),
                        [&](const auto &x) { return x.network_id == *id; }))
            return;
        cached_need(b.position_3747d4, 0x2fc3f0, 0x3747d4);
        const auto position = b.position_3747d4(e.entity);
        if (position)
            state.lock_218838.push_back({*position, *id});
    }
}
} // namespace rust_internal_re
