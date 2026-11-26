#pragma once
#include "snapshot_bindings.hpp"
#include "metadata_analysis.hpp"
namespace rust_internal_re {
using SkyModelColor = re::ReArray<float,4>;
// [I] Foreign effects are supplied offline callbacks. Numeric target/context
// values are evidence keys only; no host pointer casts or executable thunk exist.
struct SkyModelCall {
    Rva wrapper{};
    Address target{}, context{}, receiver{};
    re::ReArray<Address,3> arguments{};
    float scalar{};
    Vec3 vector{};
    Orientation orientation{};
    SkyModelColor color{};
};
struct SkyModelValue {
    Address object{};
    float scalar{};
    Vec3 vector{};
    Orientation orientation{};
    bool boolean{};
};
struct SkyModelApi {
    MetadataApi metadata;
    // [U] Matching IL2CPP class_get_type/type_get_object/object_new/string_new.
    re::ReFunction<Address(Address)> class_type_3346e8, type_object_335358;
    re::ReFunction<Address(Address)> object_new_36b2d4;
    // [C] Export is il2cpp_string_new_wrapper, not il2cpp_string_new.
    re::ReFunction<Address(re::ReStringView)> string_new_2ce718;
    re::ReFunction<Address(Address)> method_name_335040;
    // [U] Unity methods, original sky callback and GameAssembly direct targets.
    re::ReFunction<SkyModelValue(const SkyModelCall&)> unity;
    re::ReFunction<bool(ReI32,bool)> key_2e5e4c;
    // [I] Detection only for excluded 0x2cbd24 context setup. This callback must
    // not implement executable stack fabrication or execute numeric addresses.
    re::ReFunction<void(Address,Address)> observe_context_2cbd24;
    // [U] Export resolver 0x2dee4c (cached allocator target) may use parent API.
    re::ReFunction<Address()> allocator_target_2dee4c;
    // [U] Numeric export targets for getter 2cc164/2cc16c/2cc174.
    re::ReFunction<Address(Rva)> export_target;
};
struct SkyModelEnvironment {
    Address module{};
    // [I] Owned scratch bytes for C strings consumed by existing metadata APIs.
    Address literal_storage{};
    ReUSize literal_capacity{4096};
    ReUSize maximum_renderers{100000};
};
struct SkyModelResult {
    GameBaseStatus status{GameBaseStatus::complete};
    Rva site{};
    ReUSize original_calls{}, renderers_visited{}, renderers_completed{};
};
// [C] Full native control flow; globals/config are reread from the copied image.
SkyModelResult replay_sky_32f408(Snapshot&,Address sky,const SkyModelEnvironment&,const SkyModelApi&);
SkyModelResult replay_model_36a464(Snapshot&,Address player,const SkyModelEnvironment&,const SkyModelApi&);
// [C] Shared2ce718 cache/control; external effect is il2cpp_string_new_wrapper.
GameBaseResult<Address> managed_string_2ce718(Snapshot&,re::ReStringView,
    const SkyModelEnvironment&,const SkyModelApi&);
void check_sky_model_reconstruction();
} // namespace rust_internal_re
