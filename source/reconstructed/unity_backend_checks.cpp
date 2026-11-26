#include "unity_backend_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
struct Fixture {
    UnityBackendState state;
    UnityApi api;
    re::ReVector<Rva> order;
    re::ReMap<Rva,re::ReVector<re::ReVector<UnityValue>>> args;
    Address next{0x300000},mouse{0},bundle_result{0x700000};bool ready{true};
    ReI32 width{800},height{600};float delta{0.25f};
    UnityBytes copied_pixels;
    ReU32 resolve_calls{},context_calls{};
    Fixture() {
        state.mesh=0x400000;state.command_buffer=0x410000;state.property_block=0x420000;
        state.render_texture=0x430000;state.rect_transform=0x440000;
        state.bounds={0,0,800,600};
        api.resolve_target=[&](const UnityCacheSpec& s) {
            assert((state.caches[s.flags].flags&1u)!=0);++resolve_calls;
            return MetadataResult{Address(0x500000+s.wrapper)};
        };
        api.detect_context=[&](const UnityCacheSpec& s,Address target) {
            assert((state.caches[s.flags].flags&2u)!=0);assert(target);++context_calls;return true;
        };
        api.resolve_class=[&](re::ReStringView,re::ReStringView){return MetadataResult{next++};};
        api.copied_pointer=[&](Address,ReU32 offset)->re::ReOptional<Address> {
            if(offset==0x50)return Address(0x200100);
            assert(offset==0x10);return Address(ready?1:0);
        };
        api.external=[&](Rva r,re::ReSpan<const UnityValue> values)->re::ReOptional<UnityValue> {
            order.push_back(r);args[r].emplace_back(values.begin(),values.end());
            switch(r) {
            case 0x3926ac:return Address(0x200000);
            case 0x2ce718:case 0x3b4b98:case 0x3af3a4:case 0x375abc:
            case 0x3af424:case 0x3af54c:case 0x373138:case 0x373378:
            case 0x2cd7f4:case 0x2cea84:case 0x375e6c:case 0x376214:case 0x3346e8:case 0x335358:return next++;
            case 0x376084: {
                const auto size=re::re_get<Address>(values[1]);
                return UnityManagedArray{next++,ReI32(size),re::ReVector<ReByte>(size)};
            }
            case 0x375c08:return bundle_result;
            case 0x3b3798:return UnityPinned{re::re_get<Address>(values[0])+0x1000,next++};
            case 0x3af6f4:return ReI32(99);
            case 0x2e09f0:return height;
            case 0x2e0af0:return width;
            case 0x2e071c:case 0x3b2a30:return delta;
            case 0x3b1980:return true;
            case 0x3b2590:return mouse;
            case 0x3b2698:return Address(0x600000);
            case 0x3b2914:return Address(0x600100);
            case 0x36c8c4:return ClipRect{11,12,300,200};
            case 0x3b2358:case 0x3b27f8:case 0x3b2474:case 0x3b2120:case 0x3b223c:return Address(r);
            case 0x2e68b8:return re::re_get<Address>(values[0])==0x3b2474;
            case 0x3b4824:return UnityRenderTarget{};
            case 0x3b3614:return UnityMatrix{};
            case 0x3a49ec:return UnityFontPixels{2,2,1,{ReByte{1},ReByte{2},ReByte{3},ReByte{4}}};
            case 0x3b4e60:return UnityBytes{{ReByte{0},ReByte{0},ReByte{0},ReByte{0}}};
            case 0x3b4c10:return ReI32(4);
            case 0x3c8d4c:copied_pixels=re::re_get<UnityBytes>(values[1]);return re::ReMonostate{};
            case 0x3af0bc:case 0x3af13c:case 0x3b08f8:case 0x3b4010:case 0x3b3bdc:
            case 0x3b3f38:case 0x3b3b04:case 0x3b3e5c:case 0x3af940:case 0x3b3c90:
            case 0x3af1c8:case 0x3af8b4:case 0x3af814:case 0x3af774:case 0x3b1edc:
            case 0x3af2e4:case 0x3b1dc4:case 0x3b2004:case 0x3b0680:case 0x3b086c:
            case 0x3af01c:case 0x3b0730:case 0x3b0600:case 0x3af674:case 0x3b0580:
            case 0x3b0500:case 0x3b07e0:case 0x373744:case 0x3af264:case 0x3b383c:
            case 0x3b40d0:case 0x3b39dc:case 0x3b3dbc:case 0x38cd28:case 0x397da4:
            case 0x390994:case 0x390cec:case 0x398d84:return re::ReMonostate{};
            default:return {};
            }
        };
    }
};
UnityDrawData draw_data() {
    UnityDrawData data;data.display_size={100,80};data.framebuffer_scale={2,2};
    DrawList first;first.vertices.resize(3);first.indices={0,1,2};first.commands={{0,0,3},{0,0,0}};
    DrawList second;second.vertices.resize(1);second.commands={{0,0,0}};
    data.lists={first,second};
    data.command_lists={RenderListInput{{{{110,0,120,20},11},{{0,0,20,20},12}}},
                        RenderListInput{{{{-2,-3,10,10},13}}}};
    data.total_vertices=4;data.total_indices=3;return data;
}
void require_ok(UnityResult r) {assert(r.status==UnityStatus::complete);}
void check_cache() {
    Fixture f;require_ok(prepare_unity_cache(f.state,f.api,0x3b2004));
    const auto resolved=f.resolve_calls,contexts=f.context_calls;
    require_ok(prepare_unity_cache(f.state,f.api,0x3b2004));
    assert(f.resolve_calls==resolved&&f.context_calls==contexts);
    Fixture missing;missing.api.resolve_target={};
    assert(prepare_unity_cache(missing.state,missing.api,0x3b2004).status==UnityStatus::missing_dependency);
    assert(missing.state.caches[0x40d280].flags==1);
    // [C] A later retry skips resolution, leaving native cached zero observable.
    missing.api.resolve_target=[](const UnityCacheSpec&){assert(false);return MetadataResult{};};
    missing.api.detect_context=[](const UnityCacheSpec&,Address target){assert(!target);return true;};
    assert(prepare_unity_cache(missing.state,missing.api,0x3b2004).status==UnityStatus::unresolved_target);
    Fixture fail_context;fail_context.api.detect_context=[](const UnityCacheSpec&,Address){return false;};
    assert(prepare_unity_cache(fail_context.state,fail_context.api,0x3b2004).status==UnityStatus::missing_dependency);
    assert(fail_context.state.caches[0x40d280].flags==3);
}
void check_submission() {
    Fixture f;const auto data=draw_data();const auto result=submit_unity_draw_data_3b3028(f.state,f.api,data);
    require_ok(result);assert(result.submitted);assert(f.order.front()==0x3af0bc&&f.order.back()==0x3b2004);
    assert(f.state.previous_command_count==3&&f.state.last_upload.submeshes.size()==3);
    assert(f.state.last_commands.draws.size()==2&&f.state.last_commands.draws[0].submesh==1);
    assert(re::re_get<ReI32>(f.args[0x3af2e4][1][4])==2);
    assert(re::re_get<ScissorRect>(f.args[0x3b1edc][1][1]).x==-4);
    assert(re::re_get<ReI32>(f.args[0x3b3f38][1][4])==3);
    const auto old_changes=f.args[0x3af13c].size();
    require_ok(submit_unity_draw_data_3b3028(f.state,f.api,data));
    assert(f.args[0x3af13c].size()==old_changes);
    Fixture empty;auto no_vertices=data;no_vertices.total_vertices=0;
    require_ok(submit_unity_draw_data_3b3028(empty.state,empty.api,no_vertices));
    assert(empty.args[0x3b2004].empty()&&empty.args[0x3af0bc].size()==1);
    Fixture invalid;auto zero=data;zero.display_size.x=0;
    require_ok(submit_unity_draw_data_3b3028(invalid.state,invalid.api,zero));assert(invalid.args[0x3b4010].empty());
    Fixture retry;retry.ready=false;retry.state.retry_seconds=3;
    require_ok(submit_unity_draw_data_3b3028(retry.state,retry.api,data));
    assert(retry.state.retry_seconds==3.25f&&retry.args[0x3b4b98].empty());
    require_ok(submit_unity_draw_data_3b3028(retry.state,retry.api,data));
    assert(retry.state.retry_seconds==0&&retry.args[0x3b4b98].size()==3&&retry.args[0x3b2004].empty());
    assert(retry.copied_pixels.bytes==re::ReVector<ReByte>({ReByte{3},ReByte{4},ReByte{1},ReByte{2}}));
    Fixture single;auto one=data;one.lists.resize(1);one.lists[0].commands.resize(1);
    require_ok(upload_unity_geometry_3b4250(single.state,single.api,one));
    assert(single.args[0x3af13c].empty()&&single.args[0x3b08f8].empty());
    Fixture setter_failure;const auto original_external=setter_failure.api.external;
    setter_failure.api.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(r==0x3b08f8)return {};
        return original_external(r,args);
    };
    assert(upload_unity_geometry_3b4250(setter_failure.state,setter_failure.api,data).status==UnityStatus::missing_dependency);
    assert(setter_failure.state.previous_command_count==3&&setter_failure.args[0x3b4010].empty());
    Fixture resize;resize.width=1024;resize.height=768;
    require_ok(submit_unity_draw_data_3b3028(resize.state,resize.api,no_vertices));
    assert(resize.state.bounds.width==1024&&resize.state.bounds.height==768);
    assert(re::re_get<ReI32>(resize.args[0x3b40d0][0][1])==1024);
}
void check_io_resources() {
    Fixture invalid_font;
    const auto font_external=invalid_font.api.external;
    invalid_font.api.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(r==0x3b4e60)return UnityBytes{{ReByte{0}}};
        return font_external(r,args);
    };
    const auto bad_font=build_unity_font_texture_3b3240(invalid_font.state,invalid_font.api);
    assert(bad_font.status==UnityStatus::malformed_input&&invalid_font.state.font_pin);
    assert(invalid_font.args[0x3af01c].empty());
    Fixture f;require_ok(initialize_unity_backend_3b2b38(f.state,f.api));
    assert(f.state.io.backend_flags==14&&f.state.io.backend_name=="UI");
    assert(f.state.vertex_attributes.size()==3&&f.state.vertex_attributes[2][1]==10);
    assert(f.state.io.font_texture==f.state.font_texture&&f.state.font_pin);
    assert(f.state.bounds.width==800&&f.state.bounds.height==600);
    const auto reflection_calls=f.args[0x375e6c].size();
    require_ok(create_unity_resources_3b337c(f.state,f.api));
    assert(f.args[0x375e6c].size()==reflection_calls);
    Snapshot memory(0x600000,re::ReVector<ReByte>(0x300));
    assert(memory.write(0x6000f8,Vec2{10,20}));assert(memory.write(0x6001f8,Vec2{0,2}));
    f.mouse=0x200000;require_ok(update_unity_io_3b2eec(f.state,f.api,memory));
    assert(f.state.io.mouse_position.x==10&&f.state.io.mouse_position.y==580);
    assert(f.state.io.display_size.x==300&&f.state.io.display_size.y==200);
    assert(f.state.io.mouse_buttons[2]&&!f.state.io.mouse_buttons[0]);
    assert(re::re_get<float>(f.args[0x38cd28].back()[2])==2);
    f.mouse=0;const auto count=f.args[0x3b2698].size();require_ok(update_unity_io_3b2eec(f.state,f.api,memory));
    assert(f.args[0x3b2698].size()==count);
    f.mouse=0x200000;const auto old_external=f.api.external;
    f.api.external=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(r==0x3b2698)return Address(0);
        return old_external(r,args);
    };
    assert(update_unity_io_3b2eec(f.state,f.api,memory).status==UnityStatus::indeterminate_native_data);
}
void check_metadata_adapter() {
    Snapshot image(0x100000,re::ReVector<ReByte>(0x4000));
    const Address method=0x101000,name=0x102000,type_name=0x102100;
    assert(image.write(method,Address(0xabcdef)));
    const auto write_string=[&](Address p,re::ReStringView text) {
        for(ReUSize i=0;i<text.size();++i)assert(image.write(p+i,ReU8(text[i])));
        assert(image.write(p+text.size(),ReU8(0)));
    };
    write_string(name,"ExecuteCommandBuffer");
    UnityMetadataAdapter a;a.image=&image;
    a.intern=[](re::ReStringView){return Address(0x103000);};
    a.metadata.domain_get_33479c=[] {return Address(1);};
    a.metadata.assemblies_33480c=[](Address){return re::ReVector<Address>{2};};
    a.metadata.assembly_image_3344b0=[](Address){return Address(3);};
    a.metadata.class_from_name_334528=[](Address,Address,Address){return Address(0x100100);};
    a.metadata.next_method_334660=[&](Address,Address& iterator){if(iterator++)return Address(0);return method;};
    a.method_name_335040=[&](Address){return name;};
    a.metadata.parameter_count_335140=[](Address)->ReI32 {assert(false);return -1;};
    const auto specs=unity_backend_cache_specs();
    const auto find=[&](Rva r)->const UnityCacheSpec& {
        return *re::re_find_if(specs.begin(),specs.end(),[&](const auto& s){return s.wrapper==r;});
    };
    assert(resolve_unity_backend_target(a,find(0x3b2004)).value==0xabcdef);
    write_string(name,".ctor");write_string(type_name,"UnityEngine+Texture");
    a.metadata.parameter_count_335140=[](Address){return 1;};
    a.parameter_type_3b4a98=[](Address){return Address(7);};
    a.type_name_3b4de8=[&](Address){return type_name;};
    assert(resolve_unity_backend_target(a,find(0x3b4824)).value==0xabcdef);
    write_string(type_name,"UnityEngine.Texture2D");
    assert(resolve_unity_backend_target(a,find(0x3b4824)).value==0);
    a.resolve_icall={};
    assert(resolve_unity_backend_target(a,find(0x3b3798)).status==MetadataStatus::missing_dependency);
}
void check_frame() {
    Fixture f;UnityFrameState frame;frame.saved_original=0xabc000;frame.ui_initialized=true;frame.configs_loaded=true;
    frame.bundles.fill(0x500000);
    Snapshot memory(0x600000,re::ReVector<ReByte>(0x300));
    UnityFrameApi a;a.backend=f.api;a.copied_game=&memory;
    a.backend.detect_context=[&](const UnityCacheSpec& spec,Address p) {
        if(spec.wrapper==0x2f8574) {assert(frame.original.flags==3);assert(p==frame.saved_original);return true;}
        return f.api.detect_context(spec,p);
    };
    re::ReVector<Rva> order;re::ReVector<UnityValue> fov_arguments;
    int disconnected_calls=0;bool disconnected=false;
    a.domain=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        order.push_back(r);
        switch(r) {
        case 0x2e5b7c:return false;
        case 0x2e0af0:return ReI32(800);
        case 0x2e09f0:return ReI32(600);
        case 0x2e069c:return Address(0x220000);
        case 0x2e0e4c:++disconnected_calls;return disconnected;
        case 0x2e89e4:return true;
        case 0x315924:case 0x2dda9c:return Address(0x230000);
        case 0x38a3c4:return Address(0x250000);
        case 0x2e5e4c:return true;
        case 0x317c1c:fov_arguments.assign(args.begin(),args.end());return re::ReMonostate{};
        case 0x2dbb70:return re::ReString("stashes");
        case 0x2dbb00:return re::ReString("samsites");
        case 0x2d5be4:return re::re_get<re::ReString>(args[0])=="samsites";
        case 0x2dd284:case 0x2d91c4:case 0x315c34:case 0x2d60d0:case 0x3211f0:
        case 0x31acd0:case 0x2f87a4:case 0x2cce78:case 0x316540:case 0x319024:
        case 0x318f34:case 0x2f9988:case 0x35aad8:case 0x3098a4:case 0x2fb72c:
        case 0x36f788:case 0x35cb18:case 0x307638:case 0x35d5ac:case 0x3096c4:
        case 0x2dbbe0:case 0x37f918:return re::ReMonostate{};
        default:return {};
        }
    };
    a.finalized_draw_data_3924bc=[] {return re::ReOptional<UnityDrawData>(draw_data());};
    a.copied_pointer=[](Address,ReU32 offset)->re::ReOptional<Address> {
        if(offset==0xf0ee0a8)return Address(0x240000);
        assert(offset==0xb8);return Address(0x240100);
    };
    UnityFrameConfig cfg;cfg.fov_changer=true;cfg.zoom=true;cfg.fov=90;cfg.zoom_fov=30;
    auto result=replay_unity_frame_2f8574(frame,f.state,a,cfg,0x200000,0x10000000);
    require_ok(result);assert(result.submitted&&frame.initialized&&frame.menu_open);
    assert(disconnected_calls==3&&fov_arguments.size()==2&&re::re_get<float>(fov_arguments[1])==30);
    assert(re::re_find(order.begin(),order.end(),0x2f87a4)<re::re_find(order.begin(),order.end(),0x2e069c));
    assert(order[0]==0x2dd284&&order[1]==0x2d91c4&&order[2]==0x315c34);
    assert(re::re_find(order.begin(),order.end(),0x319024)<re::re_find(order.begin(),order.end(),0x2f9988));
    order.clear();frame.splash_active=true;frame.splash_seconds=0;
    require_ok(replay_unity_frame_2f8574(frame,f.state,a,cfg,0x200000,0x10000000));
    assert(frame.splash_seconds==0.25f&&re::re_find(order.begin(),order.end(),0x35d5ac)==order.end());
    order.clear();frame.splash_seconds=5;frame.configs_loaded=false;
    require_ok(replay_unity_frame_2f8574(frame,f.state,a,cfg,0x200000,0x10000000));
    assert(!frame.splash_active&&frame.configs_loaded);
    assert(re::re_find(order.begin(),order.end(),0x2dbbe0)!=order.end());
    order.clear();disconnected=true;frame.scalar_globals[0x3e5ef0]=42;
    frame.target_records.fill(ReByte{7});frame.collections[0x218820]={ReByte{9}};
    result=replay_unity_frame_2f8574(frame,f.state,a,cfg,0x200000,0x10000000);
    require_ok(result);assert(!result.submitted&&frame.collections[0x218820].empty());
    // [C] Disconnected clear does not zero target48 or3e5ef0 (invalid-player clear does).
    assert(frame.scalar_globals[0x3e5ef0]==42&&frame.target_records[0]==ReByte{7});
    assert(re::re_find(order.begin(),order.end(),0x2f87a4)!=order.end());
    assert(re::re_find(order.begin(),order.end(),0x315924)==order.end());
    order.clear();frame.bundles[0]=0;f.bundle_result=0;
    a.embedded_bytes=[](Rva r,ReUSize size)->re::ReOptional<UnityBytes> {
        assert(r==0x2379e0&&size==0x2a46);return UnityBytes{re::ReVector<ReByte>(size,ReByte{0x5a})};
    };
    result=replay_unity_frame_2f8574(frame,f.state,a,cfg,0x200000,0x10000000);
    require_ok(result);assert(!result.submitted&&frame.bundles[0]==0);
    assert(re::re_find(order.begin(),order.end(),0x2f87a4)!=order.end());
    assert(re::re_find(order.begin(),order.end(),0x2e069c)==order.end());
    const auto& copied_array=re::re_get<UnityManagedArray>(f.args[0x375c08].back()[0]);
    assert(copied_array.length==0x2a46&&copied_array.bytes.size()==0x2a46);
    assert(re::re_all_of(copied_array.bytes.begin(),copied_array.bytes.end(),[](ReByte b){return b==ReByte{0x5a};}));
    order.clear();frame.bundles[0]=0x500000;disconnected=false;
    const auto player_domain=a.domain;
    a.domain=[&](Rva r,re::ReSpan<const UnityValue> args)->re::ReOptional<UnityValue> {
        if(r==0x2e069c)return Address(0);
        return player_domain(r,args);
    };
    result=replay_unity_frame_2f8574(frame,f.state,a,cfg,0x200000,0x10000000);
    require_ok(result);assert(result.submitted);
    assert(frame.scalar_globals[0x3e5ef0]==0&&frame.target_records[0]==ReByte{0});
    assert(re::re_find(order.begin(),order.end(),0x319024)==order.end());
    assert(re::re_find(order.begin(),order.end(),0x35d5ac)!=order.end());
}
}
void check_unity_backend_reconstruction() {
    check_cache();check_submission();check_io_resources();check_metadata_adapter();check_frame();
    Fixture f;Snapshot metadata_image(0,re::ReVector<ReByte>(0x410000));
    const auto metadata=bind_metadata_wrappers(metadata_image,0,{});
    f.api.resolve_target=[&](const UnityCacheSpec&)->MetadataResult {return {metadata.domain_get_33479c()};};
    const auto spec=unity_backend_cache_specs().front();
    auto result=prepare_unity_cache(f.state,f.api,spec.wrapper);
    assert(result.status==UnityStatus::missing_dependency&&result.stopped_at==0x3339fc);
    assert(f.state.caches[spec.flags].flags==1&&metadata_image.read<ReU32>(0x3f9860)==1&&f.context_calls==0);
    Fixture bytes;
    bytes.api.resolve_target=[](const UnityCacheSpec&)->MetadataResult {__builtin_trap();};
    result=prepare_unity_cache(bytes.state,bytes.api,spec.wrapper);
    assert(result.status==UnityStatus::unreadable_snapshot&&result.stopped_at==0x334224&&bytes.state.caches[spec.flags].flags==1);
}
} // namespace rust_internal_re
