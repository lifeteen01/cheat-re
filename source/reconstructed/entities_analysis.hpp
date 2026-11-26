#pragma once
#include "internal_analysis.hpp"

namespace rust_internal_re {
// [I] Domain-specific offline analysis views. No declaration is a live game ABI.
// [C] 0x2d6354/0x2e5b4c use FNV multiplication with SIGN-EXTENDED input bytes.
ReU64 entity_name_hash_2d6354(re::ReStringView bytes,
    ReU64 seed=0xcbf29ce484222325ULL);
struct EntityIdentity {
    Address entity{}, game_object{};
    re::ReString class_name, prefab_name;
    ReU16 tag{};
};
// [C] 0x31ae46..0x31aec5, 0x3735b4/+0x50, 0x3735f0/+0x44, 0x2e5a54.
// [U] Caller supplies the result of the unresolved validity helper 0x2e0e9c.
re::ReOptional<EntityIdentity> read_entity_identity_31acd0(const Snapshot&, Address,
    bool helper_2e0e9c, ReUSize maximum_string=4096);
re::ReOptional<re::ReVector<ReU16>> read_utf16z_snapshot(const Snapshot&, Address chars,
    ReUSize maximum_characters=4096);
// [C] 0x369040 raw display-name branch, 0x369e98 and 0x36af58 decimal parsing.
// [U] Streamer-mode name substitution is a separate unresolved boundary.
re::ReOptional<re::ReVector<ReU16>> player_display_name_369040(const Snapshot&, Address,
    bool npc, ReUSize maximum_characters=4096);
re::ReOptional<ReU64> player_identifier_36af58(const Snapshot&, Address,
    ReUSize maximum_characters=4096);
struct PlayerStateFields {
    ReU32 flags{}, model_state_flags{}, prefab_id{};
    bool dead{}, wounded{}, safe_zone{}, sleeping{}, npc{};
};
// [C] dead=byte+0x2c0, flags=+0x708, modelState=+0x350 -> flags+0x24,
// prefabId=+0x54; helper 0x36a178 compares against 0xf4e1d514.
re::ReOptional<PlayerStateFields> read_player_state_31fb93(const Snapshot&, Address);
struct PlayerSelectionInput {
    bool local{};
    ReU16 tag{6};
    PlayerStateFields state;
    ReU32 record_kind{}; // [C] cheat-owned +0x24: 1 friend, 2 enemy.
    bool show_players{}, show_npcs{}, show_wounded{}, show_safe_zone{};
    bool show_sleepers{}, show_dead{}, show_team{}, show_enemy{};
    re::ReArray<bool,2> enemy_options{}; // [C] [0] sleepers, [1] dead.
    float distance{};
    ReI32 player_maximum_distance{}, npc_maximum_distance{};
};
enum class PlayerRejection {
    none, local_or_tag, wounded, safe_zone, category_disabled,
    dead, sleeping, friend_disabled, enemy_disabled, distance
};
// [C] Full selection branch 0x31faf7..0x31fdf1, excluding melee side effects.
// [I] State/record lookup and camera-to-bone-53 distance are explicit inputs.
PlayerRejection select_player_31acd0(const PlayerSelectionInput&);
struct PlayerRecordPlan { Address entity{}; ReU8 category_byte{}; Rva site{}; };
// [C] ScientistNPC2 append precedes tag-6 filtering; it can produce a second record.
re::ReVector<PlayerRecordPlan> classify_player_records_31fa70(const EntityIdentity&,
    const PlayerSelectionInput&);

// [C] Explicit category numbers passed to 0x3176bc in the translated branches.
// [U] This is deliberately a partial enumeration, not all 0x31acd0 categories.
enum class WorldCategory : ReU32 {
    stone_ore=1, metal_ore=2, sulfur_ore=3, wood_pile=4, dud_explosive=5,
    drone=12, patrol_helicopter=15, heli_crate=16, recycler=17,
    hbhf_sensor=18, seismic_sensor=19, large_battery=20, bradley=21,
    bradley_crate=22, submarine=23, scrap_helicopter=24, minicopter=25,
    attack_helicopter=26, rhib=28, rowboat=29, cargo_ship=30,
    train=114, hqm_ore=122, car=125
};
struct WorldClassifierOptions {
    bool dropped_items{}, dud_category_16{}, wood_pile{}, hbhf_sensor{}, seismic_sensor{};
    bool large_battery{}, stone_ore{}, metal_ore{}, sulfur_ore{}, hqm_ore{}, node_path{};
    bool car{}, train{}, drone{}, patrol_helicopter{}, recycler{}, bradley{}, submarine{};
    bool scrap_helicopter{}, minicopter{}, attack_helicopter{}, rhib{}, rowboat{}, cargo_ship{};
};
// [I] Labels are explanatory where the specific display getter remains undecoded.
struct WorldRecordPlan { Address entity{}; WorldCategory category{}; re::ReString label; Rva site{}; };
// [C] 0x31aeca..0x31c214 selected branches, preserving independent appends.
// [U] Remaining categories, nearest-object side effects, insertion validators excluded.
re::ReVector<WorldRecordPlan> classify_world_subset_31acd0(const EntityIdentity&,
    const WorldClassifierOptions&);

struct ClipRect { float x{}, y{}, z{}, w{}; }; // [I] min x/y, max x/y.
struct ScissorRect { float x{}, y{}, width{}, height{}; };
struct RenderCommandInput { ClipRect clip; Address texture{}; };
struct RenderListInput { re::ReVector<RenderCommandInput> commands; };
struct RenderFrameInput { Vec2 display_position{}, framebuffer_scale{1,1}, viewport{}; };
struct RenderDrawPlan {
    ReU32 submesh{}; Address texture{}; ClipRect transformed_clip; ScissorRect scissor;
};
struct RenderCommandPlan {
    Vec2 viewport{};
    Vec3 view_translation{};
    re::ReArray<float,6> ortho_arguments{}; // [C] left,right,bottom,top,near,far.
    re::ReVector<RenderDrawPlan> draws;
    bool disable_scissor{true};
};
ClipRect subtract_clip_3b0aac(ClipRect, Vec2 display_position);
ClipRect scale_clip_3b3950(ClipRect, Vec2 framebuffer_scale);
// [C] 0x3b1ab8..0x3b1d92 produces arguments for Unity boundaries, not Unity calls.
// [I] Finite, positive viewport validation and command limit are analysis safeguards.
RenderCommandPlan plan_render_commands_3b1a94(const RenderFrameInput&,
    re::ReSpan<const RenderListInput>, ReUSize maximum_commands=1000000);
// [C] 0x36821c..0x368241: pointer-validated entity flag test with mask 0x100.
re::ReOptional<bool> entity_flag_check_36821c(const Snapshot&, Address entity);
// [I] Owned fixture checks; parent runner calls this entry point.
void check_entity_reconstruction();
} // namespace rust_internal_re
