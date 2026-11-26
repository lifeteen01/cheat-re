#pragma once
#include "game_helpers_analysis.hpp"
#include "sky_model_analysis.hpp"
#include "unity_backend_analysis.hpp"
namespace rust_internal_re {
// [I] Numeric sample keys and typed effects only; the excluded executor never runs.
enum class GameDirectRole { action, object, scalar, predicate, orientation };
struct GameDirectSpec {
    Rva wrapper{}, end{}, flags{}, target{}, context{}, game_offset{}, executor{};
    Rva flags_read{}, base_read{}, flag_one{}, target_store{}, warm_target{}, setup_root{},
        flag_two{}, setup_site{}, effect_root{}, effect_site{};
    GameDirectRole role{};
    bool guard{true}, setup_root_before_flag_two{};
};
re::ReSpan<const GameDirectSpec> game_direct_wrapper_specs();
using GameDirectArgument =
    re::ReVariant<re::ReMonostate, Address, ReU8, ReI32, float, Vec3>;
struct GameDirectCall {
    Rva wrapper{}, executor{};
    Address target{}, context{}, dispatcher{};
    re::ReArray<ReU8, 5> unmaterialized_argument_bytes{};
    re::ReArray<re::ReOptional<Address>, 5> raw_argument_keys;
    ReU8 unmaterialized_type_bytes{};
    bool unmaterialized_return_pointer{true};
};
struct GameDirectRequest {
    Address receiver{};
    re::ReArray<Address, 3> arguments{};
    float scalar{};
    ReU8 byte{};
    re::ReOptional<Vec3> first_vector, second_vector;
    re::ReArray<re::ReOptional<Address>, 5> raw_argument_keys;
    // Optional owned text substitutes for a native char* borrow. Raw keys stay
    // absent when the analyst has no actual copied pointer, never fabricated.
    re::ReArray<re::ReOptional<re::ReString>, 2> text;
    re::ReOptional<Address> output_address, temporary_address, return_address, string_return_address,
        literal_address, second_literal_address;
    re::ReOptional<Orientation> initial_output;
};
struct GameDirectEnvironment {
    Address module{};
    SkyModelEnvironment shared;
    re::ReOptional<Address> initial_loader_node;
    MetadataLimits limits{};
    ReUSize maximum_string_bytes{1048576};
};
struct GameDirectEffects {
    SkyModelApi shared;
    // [I] Detection-only context observer for2cbd24; no context executor.
    re::ReFunction<void(const GameDirectCall &)> observe_context;
    // [U] Actual matching Unity/GameAssembly effects remain explicitly supplied.
    re::ReFunction<void(const GameDirectCall &, re::ReSpan<const GameDirectArgument>)> action;
    re::ReFunction<Address(const GameDirectCall &, re::ReSpan<const GameDirectArgument>)> object;
    re::ReFunction<float(const GameDirectCall &, re::ReSpan<const GameDirectArgument>)> scalar;
    re::ReFunction<ReU8(const GameDirectCall &, re::ReSpan<const GameDirectArgument>)>
        predicate;
    re::ReFunction<Orientation(const GameDirectCall &, re::ReSpan<const GameDirectArgument>)>
        orientation;
};
using GameDirectValue = re::ReVariant<re::ReMonostate, Address, float, ReU8, Orientation>;
struct GameDirectResult {
    // Missing value on invalid object receiver preserves unknown/high raw RAX
    // bits instead of falsely claiming that native returned a null pointer.
    re::ReOptional<GameDirectValue> value;
    GameBaseStatus status{GameBaseStatus::complete};
    Rva site{};
    Address raw_return{};
    ReU8 unmaterialized_return_bytes{0xff};
};
GameDirectResult game_direct_wrapper(Snapshot &image, Snapshot &game, Rva, GameDirectRequest,
                                     const GameDirectEnvironment &, const GameDirectEffects &);
// [C]322f30 includes its post-first-RET match/cache tail323000..323006.
GameBaseResult<Address> game_direct_find_322f30(Snapshot &image, Snapshot &game, Address receiver,
                                                re::ReStringView needle, Address class_cache,
                                                ReUSize maximum_string_bytes = 1048576,
                                                re::ReOptional<Address> needle_address = {});
UnityApi bind_game_direct_frame(Snapshot &, Snapshot &, const GameDirectEnvironment &,
                                const GameDirectEffects &, UnityApi = {});
InteractionCalls bind_game_direct_interaction(Snapshot &, Snapshot &, const GameDirectEnvironment &,
                                              const GameDirectEffects &, InteractionCalls = {});
MovementMainCalls bind_game_direct_movement(Snapshot &, Snapshot &, const GameDirectEnvironment &,
                                            const GameDirectEffects &, MovementMainCalls = {});
ProjectileBoundaries bind_game_direct_projectile(Snapshot &, Snapshot &,
                                                 const GameDirectEnvironment &,
                                                 const GameDirectEffects &,
                                                 ProjectileBoundaries = {});
AimWeaponCalls bind_game_direct_aim(Snapshot &, Snapshot &, const GameDirectEnvironment &,
                                    const GameDirectEffects &, AimWeaponCalls = {});
void check_game_direct_wrappers_reconstruction();
} // namespace rust_internal_re
