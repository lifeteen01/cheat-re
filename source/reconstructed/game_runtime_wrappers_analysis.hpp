#pragma once
#include "game_aux_helpers_analysis.hpp"
#include "metadata_argument_bindings.hpp"
#include "frame_dependencies_analysis.hpp"
namespace rust_internal_re {
enum class GameRuntimeRole {
    scalar,
    object_zero,
    object_one,
    predicate,
    integer,
    set_integer,
    set_byte,
    set_vector,
    set_scalar,
    lerp,
    inverse,
    transform
};
enum class GameRuntimeGuard { none, receiver, root_329714 };
struct GameRuntimeSpec {
    Rva wrapper{}, end{}, flags{}, target{}, context{}, flags_read{}, flag_one{}, target_read{},
        flags_reload{}, target_store{}, warm_target{}, setup_root{}, flag_two{}, effect_root{},
        effect_site{}, executor{}, selector{};
    GameRuntimeRole role{};
    GameRuntimeGuard guard{};
    re::ReStringView namespc, klass, method;
};
re::ReSpan<const GameRuntimeSpec> game_runtime_specs();
struct GameRuntimeEnvironment {
    Address module{}, literal_storage{};
    ReUSize literal_capacity{512};
    MetadataLimits limits;
};
// [I] Typed values and optional ACTUAL copied pointer bits are separate. Missing
// numeric pointers are never synthesized from host addresses or numeric zero.
struct GameRuntimeRequest {
    Address receiver{};
    ReU32 integer{};
    ReU8 byte{};
    float scalar{};
    Vec3 first{}, second{};
    Orientation rotation{};
    re::ReOptional<Address> output_address, first_address, second_address, return_address,
        temporary_address;
};
struct GameRuntimeCall {
    Rva wrapper{}, executor{};
    Address target{}, context{}, dispatcher{}, receiver{};
    // [I] Bit i in each mask means the corresponding native byte is unmaterialized.
    // These masks describe RAW argument storage, not missing typed values.
    re::ReArray<ReU8, 4> unmaterialized_argument_bytes{};
    ReU8 unmaterialized_type_bytes{};
    bool unmaterialized_return_pointer{true};
};
struct GameRuntimeEffects {
    MetadataApi metadata;
    // [I] Detection/observation only; numeric targets are never invoked.
    re::ReFunction<void(const GameRuntimeCall &)> observe_context;
    // [U] Required typed final Unity/GameAssembly effects and produced values.
    re::ReFunction<float(const GameRuntimeCall &)> scalar;
    re::ReFunction<Address(const GameRuntimeCall &)> object;
    re::ReFunction<ReU32(const GameRuntimeCall &)> integer;
    re::ReFunction<ReU8(const GameRuntimeCall &)> predicate;
    re::ReFunction<void(const GameRuntimeCall &, ReU32)> set_integer;
    re::ReFunction<void(const GameRuntimeCall &, ReU8)> set_byte;
    re::ReFunction<void(const GameRuntimeCall &, Vec3)> set_vector;
    re::ReFunction<void(const GameRuntimeCall &, float)> set_scalar;
    re::ReFunction<Vec3(const GameRuntimeCall &, Vec3, Vec3, float)> lerp;
    re::ReFunction<Vec3(const GameRuntimeCall &, Vec3)> transform;
    re::ReFunction<Orientation(const GameRuntimeCall &, Orientation)> inverse;
};
using GameRuntimeValue =
    re::ReVariant<re::ReMonostate, Address, ReU32, ReU8, float, Vec3, Orientation>;
// [I] image contains DLL globals, owned literals and metadata records; game
// contains copied struct input/output and static roots. They may be the same Snapshot.
GameBaseResult<GameRuntimeValue> game_runtime_wrapper(Snapshot &image, Snapshot &game, Rva,
                                                      GameRuntimeRequest,
                                                      const GameRuntimeEnvironment &,
                                                      const GameRuntimeEffects &);
AimWeaponCalls bind_game_runtime_aim(Snapshot &, Snapshot &, const GameRuntimeEnvironment &,
                                     const GameRuntimeEffects &, AimWeaponCalls = {});
ProjectileBoundaries bind_game_runtime_projectile(Snapshot &, Snapshot &,
                                                  const GameRuntimeEnvironment &,
                                                  const GameRuntimeEffects &,
                                                  ProjectileBoundaries = {});
MovementMainCalls bind_game_runtime_movement(Snapshot &, Snapshot &, const GameRuntimeEnvironment &,
                                             const GameRuntimeEffects &, MovementMainCalls = {});
InteractionCalls bind_game_runtime_interaction(Snapshot &, Snapshot &,
                                               const GameRuntimeEnvironment &,
                                               const GameRuntimeEffects &, InteractionCalls = {});
UnityApi bind_game_runtime_frame(Snapshot &, Snapshot &, const GameRuntimeEnvironment &,
                                 const GameRuntimeEffects &, UnityApi = {});
OrientationApi bind_game_runtime_orientation(Snapshot &, Snapshot &, const GameRuntimeEnvironment &,
                                             const GameRuntimeEffects &, OrientationApi = {});
FrameDependencyApi bind_game_runtime_dependencies(Snapshot &, Snapshot &,
                                                  const GameRuntimeEnvironment &,
                                                  const GameRuntimeEffects &,
                                                  FrameDependencyApi = {});
void check_game_runtime_wrappers_reconstruction();
} // namespace rust_internal_re
