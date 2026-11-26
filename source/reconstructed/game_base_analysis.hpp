#pragma once
#include "aim_weapon_analysis.hpp"
#include "launcher_analysis.hpp"
namespace rust_internal_re {
// [I] Analysis failures are distinct from valid native zero/false results.
enum class GameBaseStatus { complete, missing_bytes, missing_boundary, analysis_limit, nonprogressing_math };
template<class T> struct GameBaseResult {
    T value{};
    GameBaseStatus status{GameBaseStatus::complete};
    Rva site{};
};
re::ReOptional<bool> entity_valid_2e0e9c(const Snapshot&,Address);
re::ReOptional<Address> entity_class_name_2e5a54(const Snapshot&,Address);
re::ReOptional<ReU32> prefab_identifier_367668(const Snapshot&,Address);
re::ReOptional<ReU8> dead_byte_3693b0(const Snapshot&,Address);
re::ReOptional<bool> player_mask_369df4(const Snapshot&,Address,ReU32 mask);
re::ReOptional<bool> npc_predicate_36a178(const Snapshot&,Address);
re::ReOptional<bool> safe_zone_36acb8(const Snapshot&,Address);
re::ReOptional<bool> wounded_flag_36b288(const Snapshot&,Address);
re::ReOptional<bool> sleeping_flag_36a20c(const Snapshot&,Address,ReU8 bypass);
re::ReOptional<Address> input_object_369738(const Snapshot&,Address);
re::ReOptional<Address> movement_record_36a2c8(const Snapshot&,Address);
re::ReOptional<Address> model_state_369400(const Snapshot&,Address);
re::ReOptional<Vec3> camera_position_36ca34(const Snapshot&,Address);
re::ReOptional<float> charged_scale_36b504(const Snapshot&,Address);
// [C] Native conversion truncates each UTF-16 word to its low byte; it is not UTF-8.
GameBaseResult<re::ReString> managed_name_bytes_2d7e18(const Snapshot&,Address,ReUSize maximum=4096);
GameBaseResult<float> integer_power_2e3c50(float,ReI32,ReUSize maximum=1000000);
GameBaseResult<float> wrap_degrees_320cd0(float,ReUSize maximum=1000000);
GameBaseResult<Vec3> quaternion_euler_31530c(Orientation,ReUSize maximum_wraps=1000000);
bool contains_projection_36c638(ProjectionBounds,Vec3);
struct ProjectionQueries {
    // [U] 0x36c3d4 ultimately dispatches to an unresolved game projection function.
    re::ReFunction<void(Address,Vec3,Vec3&)> world_to_screen_36c3d4;
    re::ReFunction<ReI32()> screen_height_2e09f0;
};
GameBaseResult<bool> project_screen_36cd20(Address,Vec3,Vec2&,ProjectionBounds,const ProjectionQueries&);
struct BoneQueries {
    re::ReFunction<Address()> camera_2e069c, local_2dda9c;
    re::ReFunction<Vec3(Address)> transform_position_3747d4, camera_position_36ca34;
    re::ReFunction<ReU32()> mask_2e6a6c;
    re::ReFunction<bool(Vec3,Vec3,ReU32,float,float)> query_2e2320;
    re::ReFunction<bool(Address,Vec3,Vec2&,ProjectionBounds)> project_36cd20;
    re::ReFunction<ReI32()> width_2e0af0,height_2e09f0;
    re::ReFunction<Vec3(Address,ReI32)> bone_position_368be8;
};
GameBaseResult<ReI32> choose_bone_368cb0(const Snapshot&,Address,ReI32 priority,
    ProjectionBounds,const BoneQueries&,ReUSize maximum_bones=1000000);
struct AttachmentQueries {
    // [U] UnityEngine.Object.get_name result; conversion thereafter is concrete.
    re::ReFunction<Address(Address)> name_37361c;
};
GameBaseResult<float> attachment_velocity_36b758(const Snapshot&,Address,bool increase_velocity,
    const AttachmentQueries&,ReUSize maximum_attachments=1000000);
struct InstantHitInput {
    bool enabled{}, fat_hit{}, byte_3e5e79{};
    float elapsed_3d72ec{}, scalar_3e4254{};
};
struct InstantHitQueries {
    AimWeaponCalls game;
    re::ReFunction<Address()> local_2dda9c,target_2e02b0;
    re::ReFunction<ReU32()> mask_2e6a6c;
    re::ReFunction<bool(Vec3,Vec3,ReU32,float,float)> query_2e2320;
};
GameBaseResult<bool> instant_fixed_2f7dd0(const Snapshot&,const InstantHitInput&,const InstantHitQueries&);
GameBaseResult<bool> instant_timed_2f824c(const Snapshot&,const InstantHitInput&,const InstantHitQueries&);
void check_game_base_reconstruction();
} // namespace rust_internal_re
