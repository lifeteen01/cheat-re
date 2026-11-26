#include "frame_dependencies_analysis.hpp"
#include "frame_dependencies_menu.hpp"
#include "frame_dependencies_main_menu.hpp"
#include "frame_dependencies_overlay.hpp"
#include "frame_dependencies_ui_setup.hpp"
#include "frame_dependencies_configuration.hpp"
namespace rust_internal_re {
namespace {
void require(bool b) {if(!b){ /* FREESTANDING_TODO: was throw runtime_error("frame dependency fixture") */ }}
re::ReVector<ReByte> bytes(re::ReStringView text) {
    re::ReVector<ReByte> out;for(auto c:text)out.push_back(ReByte(static_cast<unsigned char>(c)));return out;
}
}
void check_frame_overlay_path_tests();
void check_frame_dependencies_reconstruction() {
    check_frame_overlay_path_tests();
    check_frame_ui_setup_dependencies();
    check_frame_configuration_dependencies();
    check_frame_menu_dependencies();
    check_frame_main_menu_dependencies();
    check_frame_target_dependencies();
    check_frame_overlay_dependencies();
    ReUSize consumed{};
    require(frame_parse_integer_2d8cc0(" \t-4294967295tail",10,&consumed)==1&&consumed==13);
    require(frame_parse_integer_2d8cc0("+fFZ",16,&consumed)==255&&consumed==3);
    require(frame_parse_integer_2d8cc0("a",10,&consumed)==0&&consumed==0);
    require(frame_split_2d93fc("a||b|","|")==re::ReVector<re::ReString>({"a","","b",""}));
    require(frame_split_2d93fc("",",")==re::ReVector<re::ReString>({""}));
    FrameSettingsFile settings;settings.bytes="7=first\n7=second\n=zero\n  =ignored\n4294967296=overflow\n-1=duplicate_overflow\n2=retainedCR\r\ninvalid";
    settings.changed=true;
    const auto decoded=decode_frame_settings_2d8e44(settings);
    require(decoded.status==UnityStatus::complete&&decoded.accepted==6&&decoded.rejected==2&&!settings.changed);
    require(settings.values[7]=="first"&&settings.values[0]=="zero"&&settings.values[-1]=="overflow"&&settings.values[2]=="retainedCR\r");
    FrameDependencyState s;s.directory="owned";FrameDependencyApi a;
    a.unity.resolve_target=[](const UnityCacheSpec&)->MetadataResult {return {42};};
    a.unity.detect_context=[](const UnityCacheSpec&,Address target) {require(target==42);return true;};
    re::ReVector<re::ReString> calls;
    a.attributes_2d5cd8=[&](re::ReStringView p)->re::ReOptional<FrameAttributeResult> {require(p=="owned");calls.push_back("attr");return FrameAttributeResult{0,0};};
    a.create_directory_2d57f4=[&](re::ReStringView)->re::ReOptional<bool> {calls.push_back("mkdir");return false;};
    a.exists_2d5be4=[&](re::ReStringView p)->re::ReOptional<bool> {require(p=="owned\\SamSitelist.bin");calls.push_back("exists");return true;};
    a.read_bytes_2d61b4=[&](re::ReStringView)->re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {
        calls.push_back("read");return re::ReOptional(bytes("7|1001|-2000|3000|4|5|label,invalid,7|0|0|0|0|0|"));
    };
    auto result=load_frame_config(s,a,false);
    require(result.status==UnityStatus::complete&&result.accepted==2&&result.rejected==1);
    require(calls==re::ReVector<re::ReString>({"attr","mkdir","exists","read"}));
    require(s.samsites.size()==2&&s.samsites[0].position.x==1.001f&&s.samsites[0].position.y==-2.0f&&s.samsites[1].label.empty());
    a.read_bytes_2d61b4=[](re::ReStringView)->re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {return re::ReOptional<re::ReVector<ReByte>>{};};
    require(load_frame_config(s,a,false).status==UnityStatus::complete&&s.samsites.size()==2);
    a.read_bytes_2d61b4=[](re::ReStringView)->re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {return re::ReOptional(re::ReVector<ReByte>{});};
    result=load_frame_config(s,a,false);require(result.status==UnityStatus::complete&&result.rejected==1&&s.samsites.empty());
    a.files_2d5e90=[](re::ReStringView,re::ReStringView pattern)->re::ReOptional<re::ReVector<re::ReOptional<re::ReString>>> {
        require(pattern=="*.bin");return re::ReVector<re::ReOptional<re::ReString>>{"C:/z.bin",re::re_nullopt,"SamSitelist.bin","folder\\A.bin","StashList.bin","z.bin"};
    };
    require(refresh_frame_configs_2d91c4(s,a).status==UnityStatus::complete);
    require(s.configs==re::ReVector<re::ReString>({"A.bin","z.bin","z.bin"})&&s.selected_config=="DefaultCfg.bin");
    s.deadlines[1]=2.0f;re::ReVector<float> times={2.0f,3.0f,4.0f};ReUSize ti=0;
    a.time=[&](Rva)->re::ReOptional<float> {return times[ti++];};
    bool b=true;require(frame_timer_2e5b7c(s,a,1,.4f,b).status==UnityStatus::complete&&!b&&ti==1);
    require(frame_timer_2e5b7c(s,a,1,.4f,b).status==UnityStatus::complete&&b&&s.deadlines[1]==4.4f&&ti==3);
    bool captured=true,down=true;s.hotkeys[2]={42,false};
    a.input_captured_2e6744=[&]()->re::ReOptional<bool> {return captured;};
    a.key_2e5e4c=[&](ReI32 k,bool ignore)->re::ReOptional<bool> {require(k==42&&!ignore);return down;};
    require(frame_key_edge_2e89e4(s,a,2,true,b).status==UnityStatus::complete&&!b&&!s.hotkeys[2].latched);
    require(frame_key_edge_2e89e4(s,a,2,false,b).status==UnityStatus::complete&&b);
    require(frame_key_edge_2e89e4(s,a,2,false,b).status==UnityStatus::complete&&!b);
    captured=false;down=false;require(frame_key_edge_2e89e4(s,a,2,false,b).status==UnityStatus::complete&&!s.hotkeys[2].latched);
    a.time=[](Rva r)->re::ReOptional<float> {require(r==0x31581c);return 2.0f;};
    require(frame_notify_37f918(s,a,"owned",1,0).status==UnityStatus::complete&&s.notifications.back().expires==8.0f);
    s.raid_container_present=true;s.raids={{{1,2,3},"raid",0}};
    bool disconnected=false;unsigned updates=0;float raid_now=10.0f;
    a.disconnected_2e0e4c=[&]()->re::ReOptional<bool> {return disconnected;};
    a.player_2e069c=[]()->re::ReOptional<Address> {return Address(123);};
    a.time=[&](Rva)->re::ReOptional<float> {return raid_now;};
    a.update_raid_36e55c=[&](const FrameRaid& old,float now)->re::ReOptional<FrameRaid> {++updates;auto copy=old;copy.last_time=now;return copy;};
    require(update_frame_raids_36f788(s,a,re::re_nullopt).stopped_at==0x3fcb48&&s.raid_elapsed==0);
    require(update_frame_raids_36f788(s,a,20.0f).status==UnityStatus::complete&&updates==1&&s.raids[0].last_time==0);
    raid_now=30.0f;require(update_frame_raids_36f788(s,a,20.0f).status==UnityStatus::complete&&s.raids.empty()&&updates==1);
    s.raids={{{1,2,3},"raid",0}};disconnected=true;a.player_2e069c={};
    require(update_frame_raids_36f788(s,a,re::re_nullopt).status==UnityStatus::complete&&s.raids.empty());
    re::ReVector<Rva> end_order;
    a.unity.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        end_order.push_back(r);
        if(r==0x35d200)return Address(123);
        if(r==0x3a7360)require(re::re_get<Address>(args[0])==456);
        return re::ReMonostate{};
    };
    a.unity.copied_pointer=[&](Address p,ReU32 offset)->re::ReOptional<Address> {require(p==123&&offset==0x298);return Address(456);};
    require(end_frame_backbuffer_35cb18(a).status==UnityStatus::complete);
    require(end_order==re::ReVector<Rva>({0x35d200,0x3a7360,0x390994,0x39890c}));
    FrameDependencyState failure;FrameDependencyApi absent;
    auto cache=prepare_frame_dependency_cache(failure,absent,0x2d5be4);
    require(cache.status==UnityStatus::missing_dependency&&failure.caches[0x3d6cd0].flags==1);
    absent.unity.resolve_target=[](const UnityCacheSpec&)->MetadataResult {{ /* FREESTANDING_TODO: was throw runtime_error("must not retry") */ }};
    cache=prepare_frame_dependency_cache(failure,absent,0x2d5be4);
    require(cache.status==UnityStatus::missing_dependency&&failure.caches[0x3d6cd0].flags==3);
    a.unity.external={};require(begin_frame_backbuffer_35aad8(a).stopped_at==0x398b84);
    FrameDependencyResult last;UnityFrameApi frame;
    frame.domain=[](Rva,re::ReSpan<const UnityValue>)->re::ReOptional<UnityValue> {return Address(123);};
    frame=bind_frame_dependencies(s,a,last,frame);
    require(re::re_get<Address>(*frame.domain(0x123,{}))==123);
    re::ReArray<UnityValue,1> bad{Address(1)};
    require(!frame.domain(0x2d5be4,bad)&&last.status==UnityStatus::callback_type_mismatch);
}
void check_frame_menu_dependencies() {
    FrameMenuState s;s.text_key_names={{"A",97},{"1",49},{" ",32},{"Backspace",8},{"Nonetheless",5},{"None",9}};
    s.values[0x3fd4fa]=1;s.values[0x3fd4f5]=1;
    frame_edit_menu_text_35f56a(s,4,97);require(s.strings[0x3fd3a8]=="A"&&s.strings[0x3fd2c8].empty());
    frame_edit_menu_text_35f56a(s,5,97);require(s.strings[0x3fd3a8]=="AA");
    frame_edit_menu_text_35f56a(s,5,8);require(s.strings[0x3fd3a8]=="AA");
    frame_edit_menu_text_35f56a(s,4,8);require(s.strings[0x3fd3a8]=="A");
    frame_edit_menu_text_35f56a(s,4,5);require(s.strings[0x3fd3a8]=="A");
    s.values[0x3fd4fa]=0;s.values[0x3fd4f5]=0;s.values[0x3fd4f6]=1;
    frame_edit_menu_text_35f56a(s,4,97);require(s.strings[0x3f4628].empty());
    for(unsigned i=0;i<5;++i)frame_edit_menu_text_35f56a(s,4,49);
    require(s.strings[0x3f4628]=="1111");
    frame_edit_menu_text_35f56a(s,4,8);require(s.strings[0x3f4628]=="111");
    FrameDependencyApi a;s.values[0x218818]=1;
    auto r=frame_menu_text_event_35f203(s,a);require(r.status==UnityStatus::missing_dependency&&s.event_flags==1);
    s.event_flags=0;
    re::ReVector<re::ReString> order;
    a.unity.resolve_target=[&](const UnityCacheSpec& spec)->MetadataResult {order.emplace_back(spec.method);require(spec.flags==0x3fd508);return {Address(spec.target)};};
    a.unity.detect_context=[&](const UnityCacheSpec& spec,Address target) {require(target==spec.target);order.push_back("context");return true;};
    a.unity.external=[&](Rva role,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        order.push_back("external");
        if(role==0x35f495)return Address(123);
        require(re::re_get<Address>(args.front())==123);
        if(role==0x35f4df)return ReI32(4);
        if(role==0x35f527)return ReI32(8);
        return {};
    };
    require(frame_menu_text_event_35f203(s,a).status==UnityStatus::complete&&s.event_flags==63&&s.strings[0x3f4628]=="11");
    require(order==re::ReVector<re::ReString>({"get_keyCode","get_current","get_type","context","external","context","external","context","external"}));
    order.clear();require(frame_menu_text_event_35f203(s,a).status==UnityStatus::complete&&order.size()==3);
    require(frame_hotkey_specs().size()==40);
    s.values[0x3fc568]=0;FrameDependencyApi none;
    require(frame_hotkey_window_35d5ac(s,none).status==UnityStatus::complete);
    s.values[0x3fc568]=1;require(frame_hotkey_window_35d5ac(s,none).stopped_at==0x39b734);
}
void check_frame_target_dependencies() {
    const re::ReArray<TargetRecord,3> records={{{0x300000,1},{0x400000,0},{0x500000,0}}};
    TargetSelectionInput in;in.camera_2e069c=0x100000;in.local_2dda9c=0x200000;in.records=records;
    FrameTargetConfig cfg;cfg.eligibility.scientist=true;cfg.eligibility.sleepers=true;
    cfg.eligibility.fov=100;cfg.eligibility.player_maximum_distance=100;cfg.eligibility.scientist_maximum_distance=100;
    FrameTargetApi a;a.calls.game.valid_2e0e9c=[](Address) {return true;};
    a.calls.game.predicate=[](Rva,Address,ReU8) {return false;};
    a.calls.game.bone_368be8=[](Address,int bone) {require(bone==53);return Vec3{1,2,3};};
    a.calls.game.object=[](Rva r,Address) {require(r==0x369764);return Address(0x600000);};
    a.calls.record_kind=[](Address,ReU8 category) {require(category==0);return ReU32(0);};
    unsigned projected=0;a.calls.project_36cd20=[&](Address,Vec3,Vec2& out,ProjectionBounds) {out={projected++==0?18.9f:18.1f,0};return true;};
    a.width_2e0af0=[] {return 0;};a.height_2e09f0=[] {return 0;};
    const auto selected=select_frame_target_314bb4(in,cfg,a);
    require(selected.result.status==UnityStatus::complete&&selected.selected==0x400000&&selected.best==18&&projected==2);
    cfg.hotbar_options[4]=true;a.calls.record_kind=[](Address,ReU8) {return ReU32(1);};
    require(select_frame_target_314bb4(in,cfg,a).selected==0);
    cfg.include_friends=true;projected=0;require(select_frame_target_314bb4(in,cfg,a).selected==0x400000);
    a.calls.game.valid_2e0e9c={};require(select_frame_target_314bb4(in,cfg,a).result.stopped_at==0x2e0e9c);
}
void check_frame_overlay_dependencies() {
    FrameMenuState s;s.font_sizes[123]=12.0f;FrameDependencyApi a;
    re::ReVector<re::ReString> measured;
    a.unity.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        require(r==0x3a3874);require(re::re_get<float>(args[2])==re::ReNumericLimits<float>::max());
        const auto text=re::re_get<re::ReString>(args[4]);measured.push_back(text);
        return Vec2{static_cast<float>(text.size())*10.0f,12.0f};
    };
    re::ReString out;
    require(frame_fit_text_318d74(s,a,"ABCDEFG",60.0f,123,out).status==UnityStatus::complete&&out=="ABC...");
    require(measured==re::ReVector<re::ReString>({"ABCDEFG","ABCDEF...","ABCDE...","ABCD...","ABC..."}));
    require(frame_fit_text_318d74(s,a,"A",0.0f,123,out).status==UnityStatus::complete&&out=="...");
    require(frame_fit_text_318d74(s,a,"A",0.0f,1,out).stopped_at==0x318db1);
    FrameOverlayRequest req;require(replay_frame_inventory_307638(s,a,req).status==UnityStatus::missing_dependency);
    Snapshot image(0x100000,re::ReVector<ReByte>(128));req.game=&image;
    require(replay_frame_inventory_307638(s,a,req).status==UnityStatus::complete);
}
void check_frame_ui_setup_dependencies() {
    FrameMenuState state;FrameDependencyState files;FrameDependencyApi api;
    unsigned io_calls=0,font_calls=0;re::ReVector<float> sizes;
    api.imgui_io_3926ac=[&]()->re::ReOptional<FrameImGuiIo> {++io_calls;return FrameImGuiIo{123,456,{800,600},4};};
    api.embedded_bytes=[](Rva,ReUSize count)->re::ReOptional<UnityBytes> {return UnityBytes{re::ReVector<ReByte>(count,ReByte(0x44))};};
    api.unity.resolve_target=[](const UnityCacheSpec& spec)->MetadataResult {require(spec.wrapper==0x2d61b4);return {789};};
    api.unity.detect_context=[](const UnityCacheSpec&,Address target) {require(target==789);return true;};
    api.read_bytes_2d61b4=[](re::ReStringView path)->re::ReOptional<re::ReOptional<re::ReVector<ReByte>>> {
        require(path=="C:\\Windows\\Fonts\\msyhbd.ttc");return re::ReOptional(bytes("font bytes"));
    };
    const UnityBytes range{{ReByte(0x20),ReByte(0),ReByte(0xff),ReByte(0),ReByte(0),ReByte(0)}};
    api.unity.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(r==0x39f550) {UnityBytes cfg{re::ReVector<ReByte>(0x88)};cfg.bytes[0xc]=ReByte(1);return cfg;}
        if(r==0x39fe54) {
            require(re::re_get<Address>(args[0])==456);
            const auto pixel=re::re_get<float>(args[3]);sizes.push_back(pixel);
            if(font_calls<12)require(re::re_get<UnityBytes>(args[4]).bytes[0xc]==ReByte(0));
            if(font_calls==15) {
                const auto& cfg=re::re_get<UnityBytes>(args[4]).bytes;re::ReString name;
                for(ReUSize i=0x56;i<cfg.size()&&cfg[i]!=ReByte(0);++i)name.push_back(static_cast<char>(static_cast<unsigned char>(cfg[i])));
                require(name=="msyhbd.ttc, 16px");
            }
            return Address(1000+font_calls++);
        }
        if(r==0x3a47b4||r==0x3a47cc||r==0x3a4748||r==0x3a47c4||r==0x3a4830||r==0x3a4840||r==0x3a4838||r==0x3a4750)return range;
        return re::ReMonostate{};
    };
    auto result=setup_frame_ui_35ccf4(state,files,api);
    require(result.status==UnityStatus::complete&&font_calls==16&&io_calls==16&&state.io_config_flags==5);
    require(sizes==re::ReVector<float>({14,12,12,17,16,10,13,16,18,20,22,24,11,10,16,16}));
    require(state.ui_colors[0x38b8].y==166.0f*re::re_bit_cast<float>(0x3b808081u));
    require(state.ui_style_values[0x37e0]==re::re_bit_cast<ReU32>(5.0f));
    require(state.fonts[0]==1012&&state.fonts[3]==1015&&state.sized_fonts[24]==1011);
    require(state.glyph_once_flags==1&&state.font_glyph_ranges.bytes==re::ReVector<ReByte>({ReByte(0x20),ReByte(0),ReByte(0x4f),ReByte(2),ReByte(0),ReByte(0)}));
    FrameMenuState fail;FrameDependencyState fail_files;
    api.unity.external=[&](Rva r,re::ReSpan<const UnityValue>)->re::ReOptional<UnityValue> {
        if(r==0x39f550)return UnityBytes{re::ReVector<ReByte>(0x88)};
        if(r==0x3a47b4)return range;
        if(r==0x39fe54) {require(fail.font_buckets[0].requested==re::ReVector<float>({14}));return {};}
        return re::ReMonostate{};
    };
    result=setup_frame_ui_35ccf4(fail,fail_files,api);
    require(result.status==UnityStatus::missing_dependency&&result.stopped_at==0x39fe54&&fail.font_buckets[0].fonts.empty());
}
void check_frame_configuration_dependencies() {
    require(frame_decimal_3c88ec("-12")==-288&&frame_decimal_3c88ec("12x")==192);
    double d{};require(frame_number_3c87f0("1.25e2",d).status==UnityStatus::complete&&d==125.0);
    require(frame_number_3c87f0("-1.2",d).status==UnityStatus::complete&&d==0.0);
    require(frame_number_3c87f0("1e4294967296",d).status==UnityStatus::complete&&d==1.0);
    require(frame_number_3c87f0("1e1000001",d).status==UnityStatus::analysis_limit);
    FrameSettingsFile file;
    const auto key=[](re::ReStringView name) {return re::re_bit_cast<ReI32>(static_cast<ReU32>(entity_name_hash_2d6354(name)));};
    file.values[key("bool")]="false";FrameSettingObject b{1,"bool",FrameSettingKind::boolean,true};
    require(apply_frame_setting_virtual(file,b).status==UnityStatus::complete&&!re::re_get<bool>(b.value));
    file.values[key("key")]="49|1|2|1|extra";FrameConfigKey kb;kb.padding={ReByte(0xaa),ReByte(0xbb)};
    FrameSettingObject k{2,"key",FrameSettingKind::key,kb};require(apply_frame_setting_virtual(file,k).status==UnityStatus::complete);
    const auto decoded_key=re::re_get<FrameConfigKey>(k.value);require(decoded_key.key==49&&decoded_key.mode==2&&decoded_key.active&&decoded_key.latched&&decoded_key.padding==kb.padding);
    file.values[key("vec")]="0.25;-4;1e2";FrameSettingObject v{3,"vec",FrameSettingKind::vector3,Vec3{8,9,10}};
    require(apply_frame_setting_virtual(file,v).status==UnityStatus::complete&&re::re_get<Vec3>(v.value).y==0.0f&&re::re_get<Vec3>(v.value).z==100.0f);
    file.values[key("bits")]="0,1,-1,a";FrameSettingObject bits{4,"bits",FrameSettingKind::booleans,re::ReVector<bool>{}};
    require(apply_frame_setting_virtual(file,bits).status==UnityStatus::complete&&re::re_get<re::ReVector<bool>>(bits.value)==re::ReVector<bool>({false,true,true,false}));
    FrameDependencyState state;state.directory="owned";state.selected_config="selected.bin";
    FrameConfigurationState registry;registry.windows={{"A",0,{0,0},false},{"B",0,{0,0},false}};
    registry.saved_windows={"B|3|1|2000|-4000","A|7|0|1000|3000"};
    FrameDependencyApi api;api.unity.resolve_target=[](const UnityCacheSpec&)->MetadataResult {return {99};};
    api.unity.detect_context=[](const UnityCacheSpec&,Address) {return true;};
    api.attributes_2d5cd8=[](re::ReStringView)->re::ReOptional<FrameAttributeResult> {return FrameAttributeResult{0,0x10};};
    unsigned exists_calls=0;api.exists_2d5be4=[&](re::ReStringView path)->re::ReOptional<bool> {require(path=="owned\\selected.bin");++exists_calls;return false;};
    require(initialize_frame_configuration_2dd284(state,registry,api).status==UnityStatus::complete&&exists_calls==2);
    require(registry.windows[0].name=="B"&&registry.windows[0].position.y==-4.0f&&registry.windows[1].index==7);
    registry.saved_windows={"B|9|1|1000|2000","unmatched|1|1|0|0"};
    require(reload_frame_configuration_2dd2ec(state,registry,api).status==UnityStatus::complete&&registry.windows[0].name=="B"&&registry.windows[0].index==9);
    require(frame_setting_virtual_specs().size()==10);
}
} // namespace rust_internal_re
