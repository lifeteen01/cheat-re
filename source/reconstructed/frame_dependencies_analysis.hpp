#pragma once
#include "unity_backend_analysis.hpp"
namespace rust_internal_re {
// [I] Owned equivalents of native vector<pair<int, payload>> records (stride64).
// [C] Duplicate IDs and source order survive; these are not associative maps.
struct FrameConfigRecord {
    ReI32 id{}; Vec3 position{}; ReI32 field4{},field5{}; re::ReString label;
};
struct FrameNotification { re::ReString text; ReI32 kind{}; float expires{}; ReI32 extra{}; };
struct FrameHotkey { ReI32 key{}; bool latched{}; };
struct FrameRaid { Vec3 position{}; re::ReString text; float last_time{}; };
struct FrameAttributeResult { ReI32 status{},attributes{-1}; };
struct FrameSettingsFile {
    re::ReString path,bytes;re::ReMap<ReI32,re::ReString> values;ReU32 hash{};bool changed{};
};
struct FrameDependencyState {
    re::ReString directory,selected_config;
    re::ReVector<re::ReString> configs;
    re::ReVector<FrameConfigRecord> samsites,stashes;
    re::ReVector<FrameNotification> notifications;
    FrameSettingsFile settings;
    re::ReMap<Rva,UnityCache> caches;
    re::ReMap<Address,float> deadlines;
    re::ReMap<Address,FrameHotkey> hotkeys;
    re::ReVector<FrameRaid> raids;
    bool raid_container_present{}; float raid_elapsed{};re::ReOptional<float> raid_lifetime;
};
// [I] All file operations are supplied owned-data effects. No host path is opened.
// [U] Callers supply matching game/ImGui implementations. No callback has a
// successful default; a disengaged optional stops at its role RVA.
struct FrameImGuiIo {Address native{},atlas{};Vec2 display{};ReU32 config_flags{};};
struct FrameDependencyApi {
    UnityApi unity;
    re::ReFunction<re::ReOptional<FrameImGuiIo>()> imgui_io_3926ac;
    re::ReFunction<re::ReOptional<UnityBytes>(Rva,ReUSize)> embedded_bytes;
    re::ReFunction<re::ReOptional<FrameAttributeResult>(re::ReStringView)> attributes_2d5cd8;
    re::ReFunction<re::ReOptional<bool>(re::ReStringView)> create_directory_2d57f4;
    re::ReFunction<re::ReOptional<bool>(re::ReStringView)> exists_2d5be4;
    // [I] Outer optional: effect supplied; inner optional: native null array.
    re::ReFunction<re::ReOptional<re::ReOptional<re::ReVector<ReByte>>>(re::ReStringView)> read_bytes_2d61b4;
    re::ReFunction<re::ReOptional<re::ReVector<re::ReOptional<re::ReString>>>(re::ReStringView,re::ReStringView)> files_2d5e90;
    re::ReFunction<re::ReOptional<float>(Rva)> time;
    re::ReFunction<re::ReOptional<bool>()> input_captured_2e6744;
    re::ReFunction<re::ReOptional<bool>(ReI32,bool)> key_2e5e4c;
    re::ReFunction<re::ReOptional<bool>()> disconnected_2e0e4c;
    re::ReFunction<re::ReOptional<Address>()> player_2e069c;
    re::ReFunction<re::ReOptional<FrameRaid>(const FrameRaid&,float)> update_raid_36e55c;
};
re::ReSpan<const UnityCacheSpec> frame_dependency_cache_specs();
MetadataResult resolve_frame_dependency_target(const UnityMetadataAdapter&,const UnityCacheSpec&);
struct FrameDependencyResult {
    UnityStatus status{UnityStatus::complete}; Rva stopped_at{}; ReUSize accepted{},rejected{};
};
// [C] Literal wrapping32 parser2d8cc0 (base2..16), preserves consumed count.
ReI32 frame_parse_integer_2d8cc0(re::ReStringView,ReI32 base=10,ReUSize* consumed=nullptr);
re::ReVector<re::ReString> frame_split_2d93fc(re::ReStringView,re::ReStringView delimiter);
FrameDependencyResult prepare_frame_dependency_cache(FrameDependencyState&,const FrameDependencyApi&,Rva);
FrameDependencyResult decode_frame_settings_2d8e44(FrameSettingsFile&);
FrameDependencyResult read_frame_settings_2d9068(FrameDependencyState&,const FrameDependencyApi&);
FrameDependencyResult reload_frame_settings_2dd5e8(FrameDependencyState&,const FrameDependencyApi&);
FrameDependencyResult initialize_frame_settings_2dd284_head(FrameDependencyState&,const FrameDependencyApi&);
FrameDependencyResult frame_config_path(FrameDependencyState&,const FrameDependencyApi&,bool stash,re::ReString&);
FrameDependencyResult load_frame_config(FrameDependencyState&,const FrameDependencyApi&,bool stash);
FrameDependencyResult refresh_frame_configs_2d91c4(FrameDependencyState&,const FrameDependencyApi&);
FrameDependencyResult frame_timer_2e5b7c(FrameDependencyState&,const FrameDependencyApi&,Address,float,bool&);
FrameDependencyResult frame_key_edge_2e89e4(FrameDependencyState&,const FrameDependencyApi&,Address,bool,bool&);
FrameDependencyResult frame_notify_37f918(FrameDependencyState&,const FrameDependencyApi&,re::ReString,ReI32,ReI32);
FrameDependencyResult update_frame_raids_36f788(FrameDependencyState&,const FrameDependencyApi&,re::ReOptional<float> raidtime);
FrameDependencyResult begin_frame_backbuffer_35aad8(const FrameDependencyApi&);
FrameDependencyResult end_frame_backbuffer_35cb18(const FrameDependencyApi&);
// [I] Binds completed local roles and preserves supplied domain adapters for other
// reconstructed controllers. last_result retains explicit stop evidence.
UnityFrameApi bind_frame_dependencies(FrameDependencyState&,const FrameDependencyApi&,
                                     FrameDependencyResult& last_result,UnityFrameApi={});
void check_frame_dependencies_reconstruction();
} // namespace rust_internal_re
