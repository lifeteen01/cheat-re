#include "frame_residuals_detail.hpp"

namespace rust_internal_re {
namespace {
using namespace frame_residual_detail;
constexpr re::ReArray<re::ReStringView, 17> raid_names = {"Grenades",
                                                         "Molotovs",
                                                         "Beancans",
                                                         "MLRS",
                                                         "Rockets",
                                                         "Battering Ram",
                                                         "Incen Rockets",
                                                         "HV Rockets",
                                                         "Satchels",
                                                         "C4s",
                                                         "HE Grenades",
                                                         "Underwater Explosions",
                                                         "Catapult Scattershot",
                                                         "Catapult FireBomb",
                                                         "Catapult Bomb",
                                                         "",
                                                         "Explo Ammo"};
ReU64 group_hash(ReI32 kind) {
    const auto value = static_cast<ReU64>(static_cast<ReI64>(kind));
    re::ReArray<ReByte, 8> bytes{};
    for (unsigned i = 0; i < 8; ++i)
        bytes[i] = ReByte((value >> (8 * i)) & 255);
    return registry_hash_2d7078(bytes);
}
void append_group(re::ReVector<FrameRaidGroup> &groups, ReUSize &buckets, ReI32 kind) {
    const auto present =
        re::re_find_if(groups.begin(), groups.end(), [&](const auto &g) { return g.kind == kind; });
    if (bool(present)) {
        present->count =
            re::re_bit_cast<ReI32>(re::re_bit_cast<ReU32>(present->count) + 1u);
        return;
    }
    if (groups.size() + 1 > buckets) {
        // [I] Same owned MSVC hash-list order adaptation as registry module:
        //8x growth below512; rehash old forward order before duplicate buckets.
        buckets = buckets < 512 ? buckets * 8 : re::re_bit_ceil(groups.size() + 1);
        const auto previous = groups;
        re::ReMap<ReU64, ReI32> first;
        for (const auto &item : previous) {
            const auto bucket = group_hash(item.kind) & (buckets - 1);
            if (const auto at = first.find(bucket); bool(at)) {
                const auto current = re::re_find_if(groups.begin(), groups.end(), [&](const auto &g) {
                    return g.kind == item.kind;
                });
                const auto copy = *current;
                groups.erase(current);
                const auto before = re::re_find_if(groups.begin(), groups.end(), [&](const auto &g) {
                    return g.kind == **at;
                });
                groups.insert(before, copy);
            }
            first[bucket] = item.kind;
        }
    }
    const auto bucket = group_hash(kind) & (buckets - 1);
    const auto before = re::re_find_if(groups.begin(), groups.end(), [&](const auto &g) {
        return (group_hash(g.kind) & (buckets - 1)) == bucket;
    });
    groups.insert(before, {kind, re::ReString(raid_names[static_cast<ReUSize>(kind)]), 1});
}
void text(const FrameRaidApi &api, Address renderer, re::ReString value, Vec2 at, ClipRect color,
          ReI32 flags) {
    const auto font = read<Address>(api.frame, renderer + 0x10, 0x36135c);
    call(api.frame, 0x36135c, {renderer, font, re::re_move(value), at, color, flags});
}
re::ReString time_text(float elapsed) {
    const auto seconds = truncate(elapsed);
    return "[" + re::re_to_string(seconds / 60) + "m:" + re::re_to_string(seconds % 60) + "s]";
}
} // namespace
FrameDependencyResult frame_render_raid_36e55c(FrameMenuState &state, const FrameRaidInput &input,
                                               const FrameRaidApi &api) {
    return protect([&] {
        const auto camera = need(0x2e069c, api.camera_2e069c);
        if (!sample_pointer_range(camera))
            return;
        const auto renderer = get<Address>(api.frame, 0x35d31c);
        const auto player = need(0x2dda9c, api.player_2dda9c);
        if (!sample_pointer_range(player))
            return;
        const auto eye = need(0x368be8, api.bone_368be8, player, 0x34);
        Vec3 selected{}, last{};
        bool selected_valid = false;
        re::ReVector<FrameRaidGroup> groups;
        ReUSize buckets = 8;
        for (const auto &event : input.events) {
            if (event.kind < 0 || event.kind >= static_cast<ReI32>(raid_names.size()) ||
                raid_names[static_cast<ReUSize>(event.kind)].empty())
                continue;
            append_group(groups, buckets, event.kind);
            last = event.position; // [C] Updated even after selected location is latched.
            if (selected_valid || !(7500.0f > distance(event.position, eye)))
                continue;
            Vec2 projected{};
            if (!need(0x36cd20, api.project_36cd20, event.position, projected))
                continue;
            if (!need(0x317130, api.on_screen_317130, projected))
                continue;
            selected_valid = true;
            selected = event.position; // [C] FIRST visible nearby event, not nearest.
        }
        const auto width = get<ReI32>(api.frame, 0x2e0af0);
        const float center = static_cast<float>(width) * .5f;
        const auto height = get<ReI32>(api.frame, 0x2e09f0);
        float alert_y = static_cast<float>(height) * .05f + number(state, 0x248ed4);
        const auto vector = [&](Rva key) {
            return Vec3{number(state, key), number(state, key + 4), number(state, key + 8)};
        };
        if (flag(state, 0x3e9ae8) && 100.0f > distance(last, vector(0x3f0038))) {
            text(api, renderer, "YOUR HOUSE IS GETTING RAIDED!!!", {center, alert_y}, {1, 0, 0, 1},
                 2);
            alert_y += number(state, 0x248ed4);
        }
        if (flag(state, 0x3ea1c8) && 100.0f > distance(last, vector(0x3effd8)))
            text(api, renderer, "YOUR SAVED POSITION HAS A RAID NEARBY!!!", {center, alert_y},
                 {1, 0, 0, 1}, 2);
        if (flag(state, 0x3f3d88)) {
            const auto at = need(0x314f08, api.radar_314f08, last);
            // [C]2ef6c4 is component inequality against zero; unordered passes.
            if (at.x != 0 || at.y != 0) {
                float radius = need(0x315778, api.radar_size_315778);
                const auto title = "Raid(" + re::re_to_string(truncate(distance(last, eye))) + "m)";
                radius += number(state, 0x3edac8);
                const auto packed = get<ReI32>(api.frame, 0x2ef80c, {rgba(state, 0x3fc888)});
                call(api.frame, 0x35c578, {renderer, at, radius, packed, false, 0.0f});
                float y = at.y + radius;
                y += 6.325f;
                text(api, renderer, title, {at.x, y}, rgba(state, 0x3fc888), 3);
                y += 16.0f;
                for (const auto &group : groups) {
                    text(api, renderer, group.name + " x" + re::re_to_string(group.count), {at.x, y},
                         rgba(state, 0x3fc888), 3);
                    y += 16.0f;
                }
                text(api, renderer, time_text(input.elapsed_400000), {at.x, y},
                     rgba(state, 0x3fc888), 3);
            }
        }
        if (!selected_valid)
            return;
        if (flag(state, 0x3e6e38) && need(0x315b84, api.map_open_315b84))
            return;
        if (!flag(state, 0x3f3c48))
            return;
        if (need(0x2e98f0, api.bool_vector, Rva(0x3f0538), ReUSize(0)) && flag(state, 0x3e5cb8))
            return;
        const float range = distance(selected, eye);
        Vec2 screen{};
        if (!need(0x36cd20, api.project_36cd20, selected, screen))
            return;
        text(api, renderer, "Raid(" + re::re_to_string(truncate(range)) + "m)", screen,
             rgba(state, 0x3fc888), 1);
        screen.y += number(state, 0x248ed8);
        for (const auto &group : groups) {
            text(api, renderer, group.name + " x" + re::re_to_string(group.count), screen,
                 rgba(state, 0x3fc888), 1);
            screen.y += number(state, 0x248ed8);
        }
        text(api, renderer, time_text(input.elapsed_400000), screen, rgba(state, 0x3fc888), 1);
        screen.y += number(state, 0x248ed8);
        const auto grid = need(0x315518, api.grid_315518, selected);
        if (!grid.empty())
            text(api, renderer, grid, screen, rgba(state, 0x3fc888), 1);
    });
}
FrameDependencyResult copy_frame_raid_events(const Snapshot &image, Address vector,
                                             FrameRaidInput &output, float elapsed,
                                             ReUSize maximum_events) {
    const auto begin = image.read<Address>(vector);
    const auto end = image.read<Address>(vector + 8);
    if (!begin || !end)
        return {UnityStatus::unreadable_snapshot, 0x3701ac};
    const auto difference = re::re_bit_cast<ReI64>(*end - *begin);
    if (difference < 0 || difference % 24)
        return {UnityStatus::malformed_input, 0x3701ac};
    const auto count = static_cast<ReU64>(difference / 24);
    if (count > maximum_events)
        return {UnityStatus::analysis_limit, 0x3701ac};
    if (difference != 0 && !image.contains(*begin, static_cast<ReUSize>(difference)))
        return {UnityStatus::unreadable_snapshot, 0x36e1fc};
    FrameRaidInput copy;
    copy.elapsed_400000 = elapsed;
    for (ReU64 i = 0; i < count; ++i) {
        const auto at = *begin + i * 24;
        copy.events.push_back({*image.read<ReI32>(at), *image.read<Vec3>(at + 4),
                               *image.read<re::ReArray<ReByte, 8>>(at + 16)});
    }
    output = re::re_move(copy);
    return {};
}
FrameDependencyResult frame_update_raid_collection_36f788(FrameMenuState &config,
                                                          FrameRaidCollection &collection,
                                                          const FrameRaidApi &api) {
    return protect([&] {
        if (!collection.present)
            return;
        const auto &effects = api.frame.effects;
        if (need(0x2e0e4c, effects.disconnected_2e0e4c) || need(0x2e069c, api.camera_2e069c) == 0) {
            collection.records.clear();
            return;
        }
        const auto now = need(0x31581c, effects.time, Rva(0x31581c));
        for (ReUSize index = 0; index < collection.records.size();) {
            const auto copy = collection.records[index];
            const float elapsed = now - copy.last_time;
            if (!config.values.contains(0x3fcb48))
                stop(UnityStatus::missing_dependency, 0x3fcb48);
            auto lifetime = number(config, 0x3fcb48);
            store(config, 0x400000, elapsed);
            if (lifetime > elapsed) {
                const auto drawn = frame_render_raid_36e55c(config, {copy.events, elapsed}, api);
                if (drawn.status != UnityStatus::complete)
                    stop(drawn.status, drawn.stopped_at);
                lifetime = number(config, 0x3fcb48); // [C] Reload after renderer callbacks.
            }
            if (now - copy.last_time > lifetime)
                collection.records.erase(collection.records.begin() +
                                         static_cast<ReISize>(index));
            else
                ++index;
        }
    });
}
UnityFrameApi bind_frame_raid_collection(FrameMenuState &config, FrameRaidCollection &collection,
                                         const FrameRaidApi &api, FrameDependencyResult &last,
                                         UnityFrameApi base) {
    const auto prior = base.domain;
    base.domain = [&config, &collection, api, &last,
                   prior](Rva role, re::ReSpan<const UnityValue> args) -> re::ReOptional<UnityValue> {
        if (role != 0x36f788)
            return prior ? prior(role, args) : re::re_nullopt;
        if (!args.empty()) {
            last = {UnityStatus::callback_type_mismatch, role};
            return {};
        }
        last = frame_update_raid_collection_36f788(config, collection, api);
        if (last.status != UnityStatus::complete)
            return {};
        return UnityValue{re::ReMonostate{}};
    };
    return base;
}
FrameDependencyApi bind_frame_raid_renderer(
    FrameMenuState &state, const FrameRaidApi &api,
    re::ReFunction<re::ReOptional<FrameRaidInput>(const FrameRaid &, float)> source,
    FrameDependencyResult &last, FrameDependencyApi base) {
    base.update_raid_36e55c = [&state, api, source, &last](const FrameRaid &raid,
                                                           float now) -> re::ReOptional<FrameRaid> {
        if (!source) {
            last = {UnityStatus::missing_dependency, 0x3701ac};
            return {};
        }
        const auto input = source(raid, now);
        if (!input) {
            last = {UnityStatus::missing_dependency, 0x3701ac};
            return {};
        }
        last = frame_render_raid_36e55c(state, *input, api);
        if (last.status != UnityStatus::complete)
            return {};
        return raid; // [C] Native renderer never rewrites source event timestamps.
    };
    return base;
}
} // namespace rust_internal_re
