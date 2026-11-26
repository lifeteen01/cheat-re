#pragma once
#include "frame_dependencies_main_menu.hpp"
#include "renderer_helpers_analysis.hpp"
#include "registry_analysis.hpp"

namespace rust_internal_re {
// [I] Owned equivalents of list/hash storage. Token0 is the retained sentinel;
// native node/header addresses are never host pointers. Buckets retain capacity.
struct FrameClearNode {
    ReU64 token{}, key{};
    re::ReVector<ReByte> payload;
};
struct FrameClearHash {
    bool wide_key{};
    re::ReVector<FrameClearNode> nodes;
    re::ReVector<re::ReArray<ReU64, 2>> buckets;
    re::ReVector<ReU64> destroyed;
    bool used_bucket_erase{};
};
struct FrameClearVectors {
    re::ReVector<ReU32> trivial_18;
    re::ReVector<FrameConfigRecord> records_30;
    ReUSize destroyed_records{};
};
FrameDependencyResult frame_clear_hash_31aa90(FrameClearHash &);
FrameDependencyResult frame_clear_hash_31ab60(FrameClearHash &);
void frame_clear_vectors_31acb0(FrameClearVectors &);

struct FrameTransitionState {
    RendererIconState icons;
    bool flag_3d6162{}, flag_3d6163{}, flag_3d6178{};
    re::ReArray<ReByte, 7> bytes_3d6179{};
    ReU64 value_3d6180{}, value_3d6188{};
    // [U]2cce98 reads uninitialized native stack bytes. Supply copied bits
    // explicitly; absent bits stop AFTER the icon tree has been cleared.
    re::ReOptional<re::ReArray<ReByte, 7>> native_stack_tail;
};
FrameDependencyResult frame_transition_2cce78(FrameTransitionState &, bool);

struct FrameRaidEvent {
    ReI32 kind{};
    Vec3 position{};
    re::ReArray<ReByte, 8> trailing{}; // [C] native record stride24.
};
struct FrameRaidGroup {
    ReI32 kind{};
    re::ReString name;
    ReI32 count{};
};
struct FrameRaidInput {
    re::ReVector<FrameRaidEvent> events;
    float elapsed_400000{};
};
struct FrameRaidRecord {
    re::ReVector<FrameRaidEvent> events;
    float last_time{};
};
struct FrameRaidCollection {
    bool present{};
    re::ReVector<FrameRaidRecord> records;
};
FrameDependencyResult copy_frame_raid_events(const Snapshot &, Address vector, FrameRaidInput &,
                                             float elapsed, ReUSize maximum_events = 100000);
struct FrameRaidApi {
    FrameMainMenuApi frame;
    // [U] Typed effects below can bind to existing concrete domain modules.
    re::ReFunction<re::ReOptional<Address>()> camera_2e069c, player_2dda9c;
    re::ReFunction<re::ReOptional<Vec3>(Address, ReI32)> bone_368be8;
    re::ReFunction<re::ReOptional<Vec2>(Vec3)> radar_314f08;
    re::ReFunction<re::ReOptional<float>()> radar_size_315778;
    re::ReFunction<re::ReOptional<bool>(Vec3, Vec2 &)> project_36cd20;
    re::ReFunction<re::ReOptional<bool>(Vec2)> on_screen_317130;
    re::ReFunction<re::ReOptional<bool>()> map_open_315b84;
    re::ReFunction<re::ReOptional<bool>(Rva, ReUSize)> bool_vector;
    re::ReFunction<re::ReOptional<re::ReString>(Vec3)> grid_315518;
};
FrameDependencyResult frame_render_raid_36e55c(FrameMenuState &, const FrameRaidInput &,
                                               const FrameRaidApi &);
FrameDependencyResult frame_update_raid_collection_36f788(FrameMenuState &, FrameRaidCollection &,
                                                          const FrameRaidApi &);
UnityFrameApi bind_frame_raid_collection(FrameMenuState &, FrameRaidCollection &,
                                         const FrameRaidApi &, FrameDependencyResult &,
                                         UnityFrameApi = {});
FrameDependencyApi
bind_frame_raid_renderer(FrameMenuState &, const FrameRaidApi &,
                         re::ReFunction<re::ReOptional<FrameRaidInput>(const FrameRaid &, float)>,
                         FrameDependencyResult &, FrameDependencyApi = {});
struct FrameClearBindings {
    re::ReMap<Address, FrameClearHash *> hashes;
    re::ReMap<Address, FrameClearVectors *> vectors;
};
UnityFrameApi bind_frame_residual_clears(const FrameClearBindings &, FrameDependencyResult &,
                                         UnityFrameApi = {});
UnityFrameApi bind_frame_residual_transition(FrameTransitionState &, FrameDependencyResult &,
                                             UnityFrameApi = {});
void check_frame_residuals_reconstruction();
} // namespace rust_internal_re
