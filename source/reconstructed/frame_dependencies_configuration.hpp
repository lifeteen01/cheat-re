#pragma once
#include "frame_dependencies_ui_setup.hpp"
namespace rust_internal_re {
struct FrameConfigKey {ReI32 key{},mode{};ReU8 active{},latched{};re::ReArray<ReByte,2> padding{};};
static_assert(sizeof(FrameConfigKey)==12);
enum class FrameSettingKind { boolean,integer,scalar,key,color,vector2,vector3,text,booleans,texts };
struct FrameSettingVirtualSpec {Rva vtable,loader,end;FrameSettingKind kind;};
re::ReSpan<const FrameSettingVirtualSpec> frame_setting_virtual_specs();
using FrameSettingValue=re::ReVariant<bool,ReI32,float,FrameConfigKey,ClipRect,Vec2,Vec3,re::ReString,re::ReVector<bool>,re::ReVector<re::ReString>>;
struct FrameSettingObject {
    Rva object{};
    // [C] Exact owned value of the native string at object+8, after constructor
    // encoding. It is hashed again by each virtual loader.
    re::ReString lookup_name;FrameSettingKind kind{};FrameSettingValue value{false};
};
struct FrameWindowSetting {re::ReString name;ReI32 index{};Vec2 position{};bool enabled{};};
struct FrameConfigurationState {
    // [I] Owned registry view in native218798 registration order. Global static
    // constructors are inputs; these routines do not invent missing registrations.
    re::ReVector<FrameSettingObject> objects;
    re::ReVector<FrameWindowSetting> windows; // [C]104-byte native record view.
    re::ReVector<re::ReString> saved_windows; // [C] Alias of object3d6e60+48.
};
ReI32 frame_decimal_3c88ec(re::ReStringView);
FrameDependencyResult frame_number_3c87f0(re::ReStringView,double&,ReUSize scaling_limit=1000000);
FrameDependencyResult apply_frame_setting_virtual(FrameSettingsFile&,FrameSettingObject&,re::ReVector<re::ReString>* saved_windows_alias=nullptr);
FrameDependencyResult reload_frame_configuration_2dd2ec(FrameDependencyState&,FrameConfigurationState&,const FrameDependencyApi&);
FrameDependencyResult initialize_frame_configuration_2dd284(FrameDependencyState&,FrameConfigurationState&,const FrameDependencyApi&);
UnityFrameApi bind_frame_configuration(FrameDependencyState&,FrameConfigurationState&,const FrameDependencyApi&,
                                       FrameDependencyResult&,UnityFrameApi={});
void check_frame_configuration_dependencies();
} // namespace rust_internal_re
