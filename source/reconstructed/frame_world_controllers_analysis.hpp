#pragma once
#include "frame_dependencies_configuration.hpp"
#include "font_text_analysis.hpp"
#include "game_helpers_analysis.hpp"
#include "menu_pages_analysis.hpp"
#include "registry_analysis.hpp"
namespace rust_internal_re {
// [I] Owned native stride16 and stride64 vectors. Padding survives compaction;
// the native allocator, capacities and numeric iterator ABI are adapted.
struct FrameWorldSmallRecord {
    Address entity{};
    re::ReArray<ReByte, 8> tail{}; // category at+8; validity at+9.
};
static_assert(sizeof(FrameWorldSmallRecord) == 16);
struct FrameWorldWideRecord {
    ReU8 valid{};
    re::ReArray<ReByte, 7> padding{};
    Address entity{};
    re::ReString label;
    ReU32 value_30{};
    re::ReArray<ReByte, 4> padding_34{};
    ReU64 value_38{};
};
struct FrameWorldCollections {
    re::ReVector<FrameWorldSmallRecord> first, second;
    re::ReVector<FrameWorldWideRecord> third;
    re::ReMap<Address, ReU8> marked_3e61f0;
    re::ReMap<Address, Address> colliders_3e6170;
};
struct FrameWorldVisibility {
    re::ReVector<FrameWorldSmallRecord> entities_2187d0;
    // [I] All three maps default-insert byte0 and retain keys between passes.
    GameHelperVisibilityRegistry visible_3e60b0;
    re::ReMap<Address, ReU8> outside_3e60f0, targeting_3e6130;
    RegistryStore *identity{};
};
struct FrameWorldRay {
    Vec3 origin{}, direction{};
};
struct FrameWorldHit {
    Vec3 point{}, normal{};
    ReU64 word18{};
    // [U] Native no-op constructor leaves these eight bytes untouched.
    re::ReOptional<re::ReArray<ReByte, 8>> bytes20;
    ReU32 word28{};
};
struct FrameWorldRayRequest {
    FrameWorldRay ray;
    float radius{}, distance{};
    ReU32 mask{};
    ReI32 mode{};
    FrameWorldHit hit;
};
struct FrameWorldNativeCall {
    Rva wrapper{}, packer{};
    Address target{}, context{}, dispatcher{};
    // [I] Numeric addresses remain data keys; typed values are separate.
    bool unknown_return_pointer{true};
    re::ReArray<ReU8, 7> unmaterialized_arguments{};
    ReU8 unmaterialized_type_bytes{0xf};
};
struct FrameWorldEnvironment {
    Address module{};
    ReUSize maximum_records{1000000};
    // [U] Optional actual numeric addresses of caller temporaries. They are
    // copied evidence only; absent pointer bytes remain unmaterialized.
    re::ReOptional<Address> ray_address, hit_address, ray_return_address;
};
struct FrameWorldApi {
    // [C/I] Compose existing game base/field/metadata/runtime/root domain binders here.
    AimWeaponCalls game;
    re::ReFunction<Address()> camera_2e069c, local_2dda9c;
    re::ReFunction<ReU8()> gate_2e0e4c;
    re::ReFunction<MetadataResult(const UnityCacheSpec &)> resolve_target;
    re::ReFunction<void(const FrameWorldNativeCall &, Address, ReU8)> enabled_effect_375d30;
    re::ReFunction<ReU32()> mask_2e6a6c;
    re::ReFunction<bool(Vec3, Vec3, ReU32, float, float)> query_2e2320;
    // [U] Actual matching GameAssembly effects after concrete local cache setup.
    re::ReFunction<void(const FrameWorldNativeCall &)> observe_context;
    re::ReFunction<ReU8(const FrameWorldNativeCall &, FrameWorldRayRequest &)>
        raycast_36b0c8;
    // [I] Runtime329920 is already translated; this value-only adapter must bind
    // its typed hit to actual copied argument storage, never invent a stack key.
    re::ReFunction<Address(const FrameWorldHit &)> hit_transform_329920;
    re::ReFunction<Address(const FrameWorldNativeCall &, Address)> object_3687bb;
};
GameBaseResult<bool> frame_world_enabled_375d30(Snapshot &, Address, ReU8,
                                                const FrameWorldEnvironment &,
                                                const FrameWorldApi &);
GameBaseResult<bool> frame_world_validate_321484(const FrameWorldSmallRecord &,
                                                 const FrameWorldApi &);
GameBaseResult<bool> frame_world_validate_3213cc(Snapshot &, FrameWorldCollections &,
                                                 FrameWorldWideRecord &,
                                                 const FrameWorldEnvironment &,
                                                 const FrameWorldApi &);
GameBaseResult<bool> frame_world_collect_3211f0(Snapshot &, FrameWorldCollections &,
                                                const FrameWorldEnvironment &,
                                                const FrameWorldApi &);
GameBaseResult<float> frame_world_inventory_368f50(const Snapshot &, const FrameWorldApi &,
                                                   ReUSize maximum = 1000000);
GameBaseResult<bool> frame_world_offset_318f34(Snapshot &globals, Snapshot &game, Address player,
                                               const FrameWorldEnvironment &,
                                               const FrameWorldApi &);
GameBaseResult<bool> frame_world_visibility_3684e0(Snapshot &globals, const Snapshot &game,
                                                   Address local, FrameWorldVisibility &,
                                                   const FrameWorldEnvironment &,
                                                   const FrameWorldApi &);
struct FrameWorldRainApi {
    re::ReFunction<Address()> background_392198;
    re::ReFunction<float(float, float)> random_2e3d5c;
    FontTextStore *fonts{};
    FontTextSink *sink{};
};
GameBaseResult<bool> frame_world_rain_3096c4(Snapshot &globals, const Snapshot &io,
                                             Address io_record, float alpha,
                                             const FrameWorldEnvironment &,
                                             const FrameWorldRainApi &);
using FrameWorldFileCommand = MenuFileRequest; // [C] Same owned2189a8 queue as pages.
struct FrameWorldSaveState {
    // [C]3d6ea8 aliases registered vector<string> value3d6e60+48.
    // [U] Exact copied linked-node key order after updates; hash bucket/list ABI
    // is not reconstructed by the older FrameSettingsFile re::ReMap adaptation.
    re::ReOptional<re::ReVector<ReI32>> native_key_order;
};
struct FrameWorldConfigApi {
    FrameDependencyApi frame;
    // [U] Offline managed file deletion; never opens a host path.
    re::ReFunction<Address(re::ReStringView)> managed_string_2ce5dc;
    re::ReFunction<void(Address)> delete_file_2d5a18;
    FrameWorldSaveState *save{};
    // [U] Native CRT formatting can be supplied exactly; finite values have an
    // explicit C-locale host %f adaptation when this is absent.
    re::ReFunction<re::ReString(float)> format_float_2d9540;
    // [U] Actual managed array allocation; zero is a valid allocation failure.
    // The byte payload is produced by the concrete local serializer below.
    re::ReFunction<Address(Address, ReUSize)> array_new_2d8d74;
    Snapshot *managed_bytes{};
    re::ReFunction<void(Address, Address)> write_bytes_2d65dc;
};
FrameDependencyResult frame_world_save_2dd634(FrameDependencyState &, FrameConfigurationState &,
                                              const FrameWorldConfigApi &);
FrameDependencyResult frame_world_commands_2d60d0(re::ReVector<FrameWorldFileCommand> &,
                                                  FrameDependencyState &, FrameConfigurationState &,
                                                  const FrameWorldConfigApi &);
// [I] Concrete local material loops; typed existing Unity/backend wrappers below.
struct FrameWorldMaterialApi {
    FrameWorldApi base;
    re::ReFunction<Address()> collection_2f8034;
    re::ReFunction<Address(const FrameWorldNativeCall &)> view_model_effect_3150ac;
    re::ReFunction<bool(Address, float)> timer_2e5b7c;
    re::ReVector<ReU8> *friend_options_3f0148{};
    RegistryStore *identity{};
    re::ReFunction<Address(Address, re::ReStringView, re::ReStringView)> renderers_334204_3151bc;
    re::ReFunction<Address(Address, re::ReStringView, re::ReStringView, re::ReStringView)>
        load_375abc;
    re::ReFunction<void(Address, Address)> assign_shader_3710dc;
    re::ReFunction<void(Address, re::ReStringView, re::ReArray<float, 4>)> color_370d64;
};
GameBaseResult<bool> frame_world_materials_2fabf8(Snapshot &, const Snapshot &, Address,
                                                  const FrameWorldEnvironment &,
                                                  const FrameWorldMaterialApi &);
GameBaseResult<bool> frame_world_view_materials_2fb2f4(Snapshot &, Snapshot &,
                                                       const FrameWorldEnvironment &,
                                                       const FrameWorldMaterialApi &);
GameBaseResult<bool> frame_world_player_316540(Snapshot &, Snapshot &, Address,
                                               const FrameWorldEnvironment &,
                                               const FrameWorldMaterialApi &);
struct FrameWorldBindingState {
    FrameWorldCollections *collections{};
    FrameWorldVisibility *visibility{};
    re::ReVector<FrameWorldFileCommand> *commands{};
    FrameDependencyState *configuration{};
    FrameConfigurationState *settings{};
};
struct FrameWorldBindingApi {
    FrameWorldApi game;
    FrameWorldMaterialApi material;
    FrameWorldRainApi rain;
    FrameWorldConfigApi configuration;
};
// [I] Borrowed state, synchronous produced geometry/results, native frame role
// arguments checked exactly. All six controller roles replace generic forwards.
UnityFrameApi bind_frame_world_controllers(Snapshot &, Snapshot &, const Snapshot &io,
                                           FrameWorldBindingState, const FrameWorldEnvironment &,
                                           const FrameWorldBindingApi &,
                                           FrameDependencyResult &last,
                                           UnityFrameApi fallback = {});
void check_frame_world_controllers_reconstruction();
} // namespace rust_internal_re
