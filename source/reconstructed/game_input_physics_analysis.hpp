#pragma once
#include "frame_dependencies_analysis.hpp"
#include "game_aux_helpers_analysis.hpp"
#include "metadata_argument_bindings.hpp"
#include "registry_analysis.hpp"
#include "renderer_helpers_analysis.hpp"

namespace rust_internal_re {
// [I] Owned specialization of the native unordered_map<int,byte>. No host or
// fabricated native node/bucket addresses enter copied globals.
struct GameInputKeyEntry {
    ReI32 key{};
    ReU8 previous{};
    ReU64 hash{};
};
struct GameInputKeyStore {
    bool initialized{};
    float maximum_load{1};
    ReUSize buckets{8};
    re::ReVector<GameInputKeyEntry> entries;
};
// [I] Optional ACTUAL copied bits from native stack storage. Missing bytes are
// retained in Snapshot and marked unmaterialized, never replaced with zero.
struct GameInputStackEvidence {
    re::ReOptional<Address> return_pointer;
    re::ReArray<re::ReOptional<re::ReArray<ReByte, 8>>, 8> argument_storage;
    re::ReOptional<re::ReArray<ReByte, 4>> type_storage;
};
struct GameInputCall {
    Rva wrapper{}, packer{}, gate{0x3cdbd4};
    re::ReOptional<Address> dispatcher, target;
    Address context{};
    ReUSize argument_count{};
    re::ReArray<ReU8, 8> unmaterialized_argument_bytes{};
    ReU8 unmaterialized_type_bytes{};
    bool unmaterialized_return_pointer{true};
};
struct GameInputPhysicsRequest {
    Vec3 first{}, second{};
    ReU32 mask{};
    float radius{}, first_scalar{}, second_scalar{};
    ReI32 final_integer{};
    // [I] Pointer bits of the arguments reaching2de874, not addresses of the
    // incoming2e2320 structs (which native copies to different temporaries).
    re::ReOptional<Address> first_pointer, second_pointer;
    GameInputStackEvidence stack;
};
struct GameInputSixArguments {
    Address first{};
    re::ReOptional<Address> fourth;
    ReU32 second{}, third{}, fifth{}, sixth{};
    GameInputStackEvidence stack;
    // [I]Caller-owned text when the original fourth pointer is unavailable.
    // Actual runtime string/ABI conversion remains a required typed effect;
    // no numeric pointer bits are fabricated from this projection.
    re::ReOptional<re::ReString> fourth_text{};
};
struct GameInputPhysicsEnvironment {
    Address module{};
    // [I] Explicit mapped owned literal storage for existing metadata selectors.
    // It represents data, not an invented native stack/frame address.
    Address literal_storage{};
    ReUSize literal_capacity{1024}, maximum_steps{100000};
    re::ReOptional<Address> copied_gs30;
    MetadataLimits metadata_limits;
};
struct GameInputPhysicsEffects {
    MetadataApi metadata;
    // [I] Detection/observation of2cbd24 only; never fabricate a spoof context.
    re::ReFunction<void(const GameInputCall &)> observe_context;
    // [U] Required actual matching Unity/IL2CPP/GameAssembly values/effects.
    re::ReFunction<Address(const GameInputCall &, Address)> object;
    // [C]Cursor's2e49ec tests the complete RAX; button wrappers test only AL.
    // [U]Supply the actual consumed return word; unknown upper bits are not zero.
    re::ReFunction<ReU64(const GameInputCall &, Address)> predicate;
    re::ReFunction<Address(const GameInputCall &, re::ReStringView)> resolve_icall;
    re::ReFunction<ReU8(const GameInputCall &, const GameInputPhysicsRequest &)> query;
    re::ReFunction<void(const GameInputCall &, ReI32, ReI32, ReU8)>
        ignore_layer;
    re::ReFunction<void(const GameInputCall &, Address, ReU8)> set_byte;
    re::ReFunction<void(const GameInputCall &, Address, float)> set_scalar;
    re::ReFunction<void(const GameInputCall &, const GameInputSixArguments &)> six_arguments;
};
// [C] Known stores before the excluded execution gate, with exact store order.
GameInputCall game_input_pack_3214f4(Snapshot &, GameInputCall, Address, ReU8,
                                     const GameInputStackEvidence & = {});
GameInputCall game_input_pack_32225c(Snapshot &, GameInputCall, Address, float,
                                     const GameInputStackEvidence & = {});
GameInputCall game_input_pack_2e480c(Snapshot &, GameInputCall, const GameInputSixArguments &);
GameInputCall game_input_pack_2de874(Snapshot &, GameInputCall, const GameInputPhysicsRequest &);
GameInputCall game_input_pack_3232d0(Snapshot &, GameInputCall, ReI32, ReI32,
                                     ReU8, const GameInputStackEvidence & = {});
GameBaseResult<bool> game_input_apply_3214f4(Snapshot &, GameInputCall, Address, ReU8,
                                             const GameInputPhysicsEffects &,
                                             const GameInputStackEvidence & = {});
GameBaseResult<bool> game_input_apply_32225c(Snapshot &, GameInputCall, Address, float,
                                             const GameInputPhysicsEffects &,
                                             const GameInputStackEvidence & = {});
GameBaseResult<bool> game_input_apply_2e480c(Snapshot &, GameInputCall,
                                             const GameInputSixArguments &,
                                             const GameInputPhysicsEffects &);
// [C] Literal copied-PEB walk and PE export acquisition; no added signature,
// null-module, forwarder, ordinal-count or header-convention rejections.
Address game_input_module_3cb058(const Snapshot &, const Snapshot &, Address name,
                                 const GameInputPhysicsEnvironment &);
Address game_input_export_3caed0(const Snapshot &, const Snapshot &, Address module, Address name,
                                 ReUSize maximum_steps = 100000);
GameBaseResult<bool> game_input_captured_2e6744(Snapshot &, const GameInputPhysicsEnvironment &,
                                                const GameInputPhysicsEffects &);
GameBaseResult<Address> game_input_object(Snapshot &, Rva wrapper, Address receiver,
                                          const GameInputPhysicsEnvironment &,
                                          const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_button(Snapshot &, Rva wrapper, Address receiver,
                                       const GameInputPhysicsEnvironment &,
                                       const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_key_mode_2e9c7c(Snapshot &, const Snapshot &, ReI32 key,
                                                ReI32 mode,
                                                const GameInputPhysicsEnvironment &,
                                                const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_key_2e5e4c(Snapshot &, const Snapshot &, ReI32 key,
                                           bool suppress, const GameInputPhysicsEnvironment &,
                                           const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_edge_2e8910(Snapshot &, const Snapshot &, GameInputKeyStore &,
                                            ReI32 key, bool suppress,
                                            const GameInputPhysicsEnvironment &,
                                            const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_query_2e0f10(Snapshot &, GameInputPhysicsRequest,
                                             const GameInputPhysicsEnvironment &,
                                             const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_query_pointers_2e0f10(
    Snapshot &, const Snapshot &, Address first, Address second, ReU32 mask, float radius,
    float first_scalar, float second_scalar, const GameInputPhysicsEnvironment &,
    const GameInputPhysicsEffects &, const GameInputStackEvidence & = {});
GameBaseResult<bool> game_input_query_2e2320(Snapshot &, Vec3, Vec3, ReU32, float, float,
                                             const GameInputPhysicsEnvironment &,
                                             const GameInputPhysicsEffects &,
                                             const GameInputStackEvidence & = {});
GameBaseResult<bool> game_input_query_copy_2e2320(Snapshot &, const Snapshot &, Address first,
                                                  Address second, ReU32, float, float,
                                                  const GameInputPhysicsEnvironment &,
                                                  const GameInputPhysicsEffects &);
GameBaseResult<bool> game_input_ignore_329aa0(Snapshot &, const Snapshot &, ReI32,
                                              ReI32, ReU8,
                                              const GameInputPhysicsEnvironment &,
                                              const GameInputPhysicsEffects &,
                                              const GameInputStackEvidence & = {});
UnityApi bind_game_input_physics_frame(Snapshot &, const Snapshot &, GameInputKeyStore &,
                                       const GameInputPhysicsEnvironment &,
                                       const GameInputPhysicsEffects &, UnityApi = {});
FrameDependencyApi bind_game_input_physics_dependencies(Snapshot &, const Snapshot &,
                                                        GameInputKeyStore &,
                                                        const GameInputPhysicsEnvironment &,
                                                        const GameInputPhysicsEffects &,
                                                        FrameDependencyApi = {});
MovementMainCalls bind_game_input_physics_movement(Snapshot &, const Snapshot &,
                                                   GameInputKeyStore &,
                                                   const GameInputPhysicsEnvironment &,
                                                   const GameInputPhysicsEffects &,
                                                   MovementMainCalls = {});
ProjectileBoundaries bind_game_input_physics_projectile(Snapshot &,
                                                        const GameInputPhysicsEnvironment &,
                                                        const GameInputPhysicsEffects &,
                                                        ProjectileBoundaries = {});
AimWeaponCalls bind_game_input_physics_aim(Snapshot &, const Snapshot &,
                                           const GameInputPhysicsEnvironment &,
                                           const GameInputPhysicsEffects &, AimWeaponCalls = {});
// [C] 0x2e98d8..0x2e98eb: stride-24 delegate thunk (discards first arg).
Address game_input_stride_delegate_2e98d8(ReUSize index);
re::ReSpan<const RendererCoverage> game_input_physics_coverage();
void check_game_input_physics_reconstruction();
} // namespace rust_internal_re
