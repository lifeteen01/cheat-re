#include "unity_backend_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
#include "unity_backend_cache_specs.inc"
struct Stop { UnityStatus status; Rva rva; };
[[noreturn]] void stop(UnityStatus s,Rva r) { __builtin_trap(); }
UnityStatus status_of(MetadataStatus s) {
    switch(s) {
    case MetadataStatus::complete:return UnityStatus::complete;
    case MetadataStatus::missing_dependency:return UnityStatus::missing_dependency;
    case MetadataStatus::unreadable_snapshot:return UnityStatus::unreadable_snapshot;
    case MetadataStatus::analysis_limit:return UnityStatus::analysis_limit;
    }
    return UnityStatus::malformed_input;
}
template<class F> UnityResult run(F&& f) {
    { f();return {}; }
}
void require(UnityResult r) { if(r.status!=UnityStatus::complete)stop(r.status,r.stopped_at); }
const UnityCacheSpec* spec_for(Rva r) {
    const auto it=re::re_find_if(cache_specs+0,cache_specs+77,[&](const auto& s){return s.wrapper==r;});
    return it==cache_specs+77?nullptr:it;
}
UnityValue external_values(const UnityApi& a,Rva r,re::ReSpan<const UnityValue> args) {
    if(!a.external)stop(UnityStatus::missing_dependency,r);
    auto value=a.external(r,args);
    if(!value)stop(UnityStatus::missing_dependency,r);
    return re::re_move(*value);
}
UnityValue external(const UnityApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    return external_values(a,r,re::ReSpan(args.begin(),args.size()));
}
template<class T> T value_as(UnityValue value,Rva r) {
    auto* p=re::re_get_if<T>(&value);
    if(!p)stop(UnityStatus::callback_type_mismatch,r);
    return re::re_move(*p);
}
UnityValue call(UnityBackendState& s,const UnityApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    if(spec_for(r))require(prepare_unity_cache(s,a,r));
    if(r==0x3b3bdc||r==0x3b3f38||r==0x3b4010||r==0x3b3e5c||r==0x3b3b04||r==0x3b3dbc) {
        if(!a.copied_pointer)stop(UnityStatus::missing_dependency,r);
        if(!args.size())stop(UnityStatus::malformed_input,r);
        re::ReVector<UnityValue> converted(args);
        const auto object=value_as<Address>(converted.front(),r);
        const auto native=a.copied_pointer(object,0x10);
        if(!native)stop(UnityStatus::unreadable_snapshot,r);
        converted.front()=*native;
        return external_values(a,r,converted);
    }
    return external(a,r,args);
}
template<class T> T get(UnityBackendState& s,const UnityApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    return value_as<T>(call(s,a,r,args),r);
}
void effect(UnityBackendState& s,const UnityApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    (void)value_as<re::ReMonostate>(call(s,a,r,args),r);
}
Address klass(const UnityApi& a,re::ReStringView ns,re::ReStringView name,Rva r) {
    if(!a.resolve_class)stop(UnityStatus::missing_dependency,r);
    const auto result=a.resolve_class(ns,name);
    if(result.status!=MetadataStatus::complete)stop(status_of(result.status),r);
    return result.value;
}
Address allocate(UnityBackendState& s,const UnityApi& a,re::ReStringView ns,re::ReStringView name,Rva r) {
    return get<Address>(s,a,0x3b4b98,{klass(a,ns,name,r)});
}
Address managed_type(UnityBackendState& s,const UnityApi& a,re::ReStringView ns,re::ReStringView name,Rva r,
                     bool guard=true,Rva class_type=0x2cd7f4,Rva type_object=0x2cea84) {
    const auto c=klass(a,ns,name,r);if(guard&&!c)return 0;
    const auto t=get<Address>(s,a,class_type,{c});if(guard&&!t)return 0;
    return get<Address>(s,a,type_object,{t});
}
Address load_asset(UnityBackendState& s,const UnityApi& a,Rva wrapper,Address bundle,re::ReString path,Address runtime_type) {
    require(prepare_unity_cache(s,a,wrapper));
    const auto managed_path=get<Address>(s,a,0x2ce718,{re::re_move(path)});
    return value_as<Address>(external(a,wrapper,{bundle,managed_path,runtime_type}),wrapper);
}
Address component(UnityBackendState& s,const UnityApi& a,Address object,re::ReStringView name) {
    const auto t=managed_type(s,a,"UnityEngine",name,0x334204,false,0x3346e8,0x335358);
    if(!t)return 0;
    return get<Address>(s,a,0x373378,{object,t});
}
Address load_bundle(UnityBackendState& s,const UnityApi& a,const UnityBytes& source) {
    if(source.bytes.size()>INT32_MAX)stop(UnityStatus::analysis_limit,0x375c67);
    // [C] 375ee4 resolves Byte twice on its nonnull branch.
    if(!klass(a,"System","Byte",0x375efa))stop(UnityStatus::unreadable_snapshot,0x375c63);
    const auto byte_class=klass(a,"System","Byte",0x375f3b);
    auto array=get<UnityManagedArray>(s,a,0x376084,{byte_class,Address(source.bytes.size())});
    if(!array.object||array.bytes.size()<source.bytes.size())stop(UnityStatus::unreadable_snapshot,0x375c6f);
    re::re_copy(source.bytes.begin(),source.bytes.end(),array.bytes.begin());
    require(prepare_unity_cache(s,a,0x375c08));
    return value_as<Address>(external(a,0x375c08,{re::re_move(array),ReI32(0)}),0x375c08);
}
void pin(UnityBackendState& s,const UnityApi& a,Address& p,ReU64& handle,Rva slot) {
    const auto result=get<UnityPinned>(s,a,0x3b3798,{p,Address(slot)});
    p=result.object;handle=result.handle;
}
ReI32 cvtt(float x) {
    // [C] CVTTSS2SI returns the indefinite integer outside the representable range.
    if(!re::re_isfinite(x)||double(x)<double(INT32_MIN)||double(x)>=2147483648.0)return INT32_MIN;
    return ReI32(x);
}
UnityMatrix identity() { UnityMatrix m;for(ReUSize i=0;i<4;++i)m.cells[i*5]=1;return m; }

}
re::ReSpan<const UnityCacheSpec> unity_backend_cache_specs() { return cache_specs; }
UnityResult prepare_unity_cache(UnityBackendState& s,const UnityApi& api,Rva wrapper) {
    return run([&]{
        const auto* spec=spec_for(wrapper);if(!spec)stop(UnityStatus::malformed_input,wrapper);
        auto& c=s.caches[spec->flags];
        if(!(c.flags&1u)) {
            c.flags|=1u; // [C] Store precedes resolver, including failed/reentrant calls.
            if(spec->resolver==0x3b4d28||spec->resolver==0x376154)require(prepare_unity_cache(s,api,spec->resolver));
            if(!api.resolve_target)stop(UnityStatus::missing_dependency,spec->resolver);
            const auto result=api.resolve_target(*spec);
            if(result.status!=MetadataStatus::complete)stop(status_of(result.status),spec->resolver);
            c.target=result.value;
        }
        if(!(c.flags&2u)) {
            c.flags|=2u;
            if(!api.detect_context)stop(UnityStatus::missing_dependency,0x2cbd24);
            c.context_detected=api.detect_context(*spec,c.target);
            if(!c.context_detected)stop(UnityStatus::missing_dependency,0x2cbd24);
        }
        if(!c.target)stop(UnityStatus::unresolved_target,wrapper);
        if(!c.context_detected)stop(UnityStatus::missing_dependency,0x2cbd24);
    });
}
UnityResult resize_unity_target_3b1904(UnityBackendState& s,const UnityApi& a,float width,float height) {
    return run([&]{
        effect(s,a,0x3b383c,{s.render_texture});
        effect(s,a,0x3b40d0,{s.render_texture,cvtt(width)});
        effect(s,a,0x3b39dc,{s.render_texture,cvtt(height)});
        (void)get<bool>(s,a,0x3b1980,{s.render_texture}); // [C] Create's result ignored.
        effect(s,a,0x3b3dbc,{s.rect_transform,Vec2{width,height}});
    });
}
UnityResult build_unity_font_texture_3b3240(UnityBackendState& s,const UnityApi& a) {
    return run([&]{
        if(!a.copied_pointer)stop(UnityStatus::missing_dependency,0x3b3255);
        const auto atlas=a.copied_pointer(s.io.native_io,0x50);
        if(!atlas)stop(UnityStatus::unreadable_snapshot,0x3b3255);
        s.io.font_atlas=*atlas;
        const auto pixels=get<UnityFontPixels>(s,a,0x3a49ec,{s.io.font_atlas});
        s.font_texture=allocate(s,a,"UnityEngine","Texture2D",0x3b32a6);
        effect(s,a,0x3b0680,{s.font_texture,pixels.width,pixels.height,ReI32(4),false,false});
        pin(s,a,s.font_texture,s.font_pin,0x40d188);
        effect(s,a,0x3b086c,{s.font_texture,ReI32(0)});
        // [C] 0x3b27b4 obtains writable bytes before querying their size.
        auto writable=get<UnityBytes>(s,a,0x3b4e60,{s.font_texture,ReI32(0)});
        const auto native_size=get<ReI32>(s,a,0x3b4c10,{s.font_texture});
        // [I] Bounds are offline safeguards; native row-byte multiplication wraps32.
        const auto row_signed=re::re_bit_cast<ReI32>(ReU32(pixels.width)*ReU32(pixels.bytes_per_pixel));
        if(pixels.height<0||row_signed<0||native_size<0)stop(UnityStatus::malformed_input,0x3b3312);
        const ReU64 row=ReU32(row_signed),height=ReU32(pixels.height);
        const auto required=row*height;
        if(required>pixels.bytes.size()||required>writable.bytes.size()||required>ReU32(native_size))
            stop(UnityStatus::malformed_input,0x3b333e);
        for(ReUSize y=0;y<height;++y)
            re::re_copy_n(pixels.bytes.begin()+ReISize(y*row),ReUSize(row),
                        writable.bytes.begin()+ReISize((height-y-1)*row));
        // [I] Explicit writeback to copied Unity storage replaces native memcpy.
        (void)value_as<re::ReMonostate>(external(a,0x3c8d4c,{s.font_texture,re::re_move(writable)}),0x3c8d4c);
        effect(s,a,0x3af01c,{s.font_texture,true,false});
        // [C] 0x3b3f30 is a plain atlas+8 store, not an external Unity operation.
        s.io.font_texture=s.font_texture;
    });
}
UnityResult create_unity_resources_3b337c(UnityBackendState& s,const UnityApi& a) {
    return run([&]{
        const auto path=get<Address>(s,a,0x2ce718,{re::ReString("Assets/AssetBundleData/guish.shader")});
        if(s.shader_runtime_type==0x402402) {
            s.shader_runtime_type=managed_type(s,a,"UnityEngine","Shader",0x375ae0,false,0x375e6c,0x376214);
        }
        s.shader=get<Address>(s,a,0x375abc,{s.bundle,path,s.shader_runtime_type});
        pin(s,a,s.shader,s.shader_pin,0x40dae8);
        s.material=allocate(s,a,"UnityEngine","Material",0x3b3442);
        effect(s,a,0x3b0730,{s.material,s.shader});
        s.material=get<Address>(s,a,0x3af3a4,{s.material});
        pin(s,a,s.material,s.material_pin,0x40daf0);
        s.mesh=allocate(s,a,"UnityEngine","Mesh",0x3b3601);
        effect(s,a,0x3b0600,{s.mesh});
        s.mesh=get<Address>(s,a,0x3af3a4,{s.mesh});
        pin(s,a,s.mesh,s.mesh_pin,0x40daf8);
        effect(s,a,0x3af674,{s.mesh});
        // [C] Tail jump0x3b34e8 continues into full font-atlas conversion.
        s.io.native_io=get<Address>(s,a,0x3926ac);
        require(build_unity_font_texture_3b3240(s,a));
    });
}
UnityResult initialize_unity_backend_3b2b38(UnityBackendState& s,const UnityApi& a) {
    return run([&]{
        s.io.native_io=get<Address>(s,a,0x3926ac);
        s.io.backend_name="UI";
        s.io.backend_flags|=0xeu;s.io.backend_user_data=0;
        // [C] Three append calls, without clearing an existing attribute vector.
        s.vertex_attributes.push_back({0,0,2,0});s.vertex_attributes.push_back({4,0,2,0});
        s.vertex_attributes.push_back({5,10,1,0});
        const auto property_string=get<Address>(s,a,0x2ce718,{re::ReString("_Texture")});
        s.texture_property=get<ReI32>(s,a,0x3af6f4,{property_string});
        s.property_block=allocate(s,a,"UnityEngine","MaterialPropertyBlock",0x3b35b1);
        effect(s,a,0x3b0580,{s.property_block});
        pin(s,a,s.property_block,s.property_pin,0x40db00);
        (void)managed_type(s,a,"UnityEngine","Shader",0x3b2c62); // [C] Otherwise-unused type resolution.
        s.command_buffer=allocate(s,a,"UnityEngine.Rendering","CommandBuffer",0x3b3561);
        effect(s,a,0x3b0500,{s.command_buffer});
        pin(s,a,s.command_buffer,s.command_pin,0x40db08);
        const auto gui_name=get<Address>(s,a,0x2ce718,{re::ReString("System.GUI")});
        effect(s,a,0x3b07e0,{s.command_buffer,gui_name});
        require(create_unity_resources_3b337c(s,a));
        const float height=float(get<ReI32>(s,a,0x2e09f0));
        const float width=float(get<ReI32>(s,a,0x2e0af0));
        s.bounds={0,0,width,height};
        const auto game_object=managed_type(s,a,"UnityEngine","GameObject",0x3b2d31);
        const auto rt_type=managed_type(s,a,"UnityEngine","RenderTexture",0x3b2d6c);
        const re::ReString ui_path="Assets/AssetBundleData/SystemUI.prefab";
        const auto ui=load_asset(s,a,0x3af54c,s.bundle,ui_path,game_object);
        const re::ReString rt_path="Assets/AssetBundleData/RenderTexture.renderTexture";
        s.render_texture=load_asset(s,a,0x3af424,s.bundle,rt_path,rt_type);
        const auto instance=get<Address>(s,a,0x3af3a4,{ui});
        effect(s,a,0x3af264,{instance});
        const auto raw_name=get<Address>(s,a,0x2ce718,{re::ReString("RawImageUI")});
        const auto raw=get<Address>(s,a,0x373138,{raw_name});
        s.rect_transform=component(s,a,raw,"RectTransform");
        const auto camera_name=get<Address>(s,a,0x2ce718,{re::ReString("CameraUI")});
        const auto camera_object=get<Address>(s,a,0x373138,{camera_name});
        s.camera=component(s,a,camera_object,"Camera");
        effect(s,a,0x373744,{camera_object,false});
        require(resize_unity_target_3b1904(s,a,width,height));
    });
}
UnityResult upload_unity_geometry_3b4250(UnityBackendState& s,const UnityApi& a,const UnityDrawData& data) {
    return run([&]{
        const auto upload=flatten_geometry_3b4250(data.lists);
        if(upload.submeshes.size()>UINT32_MAX)stop(UnityStatus::analysis_limit,0x3b4288);
        const auto count=ReU32(upload.submeshes.size());
        if(s.previous_command_count!=count) {
            effect(s,a,0x3af13c,{s.mesh,true});
            s.previous_command_count=count; // [C] Store precedes subMeshCount setter.
            effect(s,a,0x3b08f8,{s.mesh,re::re_bit_cast<ReI32>(count)});
        }
        // [C] Header vertex/index counts, not accumulated vector sizes.
        UnityBytes attributes;
        for(const auto& v:s.vertex_attributes)for(const auto x:v) {
            const auto bits=re::re_bit_cast<re::ReArray<ReByte,4>>(x);
            attributes.bytes.insert(attributes.bytes.end(),bits.begin(),bits.end());
        }
        effect(s,a,0x3b4010,{s.mesh,data.total_vertices,re::re_move(attributes),ReI32(s.vertex_attributes.size())});
        effect(s,a,0x3b3bdc,{s.mesh,data.total_indices,ReI32(0)});
        ReU32 vertex_base=0,index_base=0;
        for(const auto& list:data.lists) {
            // [C] DataStart0, MeshBufferStart=cumulative, stream0, stride20/2, flags15.
            effect(s,a,0x3b3f38,{s.mesh,ReI32(0),UnityVertexBytes{list.vertices},ReI32(0),
                re::re_bit_cast<ReI32>(vertex_base),ReI32(list.vertices.size()),ReI32(20),ReI32(15)});
            effect(s,a,0x3b3b04,{s.mesh,UnityIndexBytes{list.indices},ReI32(0),
                re::re_bit_cast<ReI32>(index_base),ReI32(list.indices.size()),ReI32(2),ReI32(15)});
            vertex_base+=ReU32(list.vertices.size());index_base+=ReU32(list.indices.size());
        }
        UnitySubMeshes native_submeshes;
        for(const auto& m:upload.submeshes)native_submeshes.values.push_back({{},{},0,m.index_start,m.index_count,m.base_vertex,0,0});
        effect(s,a,0x3b3e5c,{s.mesh,re::re_move(native_submeshes),ReI32(0),ReI32(upload.submeshes.size()),ReI32(15)});
        effect(s,a,0x3af940,{s.mesh,false});
        s.last_upload=upload;
    });
}
UnityResult record_unity_commands_3b1a94(UnityBackendState& s,const UnityApi& a,const UnityDrawData& data,Vec2 viewport) {
    return run([&]{
        if(data.lists.size()!=data.command_lists.size())stop(UnityStatus::malformed_input,0x3b1c19);
        for(ReUSize i=0;i<data.lists.size();++i)if(data.lists[i].commands.size()!=data.command_lists[i].commands.size())
            stop(UnityStatus::malformed_input,0x3b1c39);
        // [I] Reuse independently checked geometry/clip/scissor helper.
        const auto plan=plan_render_commands_3b1a94({data.display_position,data.framebuffer_scale,viewport},data.command_lists);
        const auto target=get<UnityRenderTarget>(s,a,0x3b4824,{UnityRenderTarget{},s.render_texture});
        effect(s,a,0x3b3c90,{s.command_buffer,target});
        effect(s,a,0x3af1c8,{s.command_buffer,true,true,ClipRect{0,0,0,0}});
        effect(s,a,0x3af8b4,{s.command_buffer,ClipRect{0,0,viewport.x,viewport.y}});
        auto view=identity();view.cells[12]=plan.view_translation.x;view.cells[13]=plan.view_translation.y;
        const auto projection=get<UnityMatrix>(s,a,0x3b3614,{0.0f,viewport.x,viewport.y,0.0f,0.0f,1.0f});
        effect(s,a,0x3af814,{s.command_buffer,view,projection});
        for(const auto& draw:plan.draws) {
            effect(s,a,0x3af774,{s.property_block,s.texture_property,draw.texture});
            effect(s,a,0x3b1edc,{s.command_buffer,draw.scissor});
            effect(s,a,0x3af2e4,{s.command_buffer,s.mesh,identity(),s.material,
                re::re_bit_cast<ReI32>(draw.submesh),ReI32(-1),s.property_block});
        }
        effect(s,a,0x3b1dc4,{s.command_buffer});
        s.last_commands=plan;
    });
}
UnityResult execute_unity_commands_3b2004(UnityBackendState& s,const UnityApi& a) {
    return run([&]{effect(s,a,0x3b2004,{s.command_buffer});});
}
UnityResult submit_unity_draw_data_3b3028(UnityBackendState& s,const UnityApi& a,const UnityDrawData& data) {
    bool submitted=false;
    auto result=run([&]{
        effect(s,a,0x3af0bc,{s.command_buffer}); // [C] Clear is unconditional.
        if(!a.copied_pointer)stop(UnityStatus::missing_dependency,0x3b305a);
        const auto mesh_native=a.copied_pointer(s.mesh,0x10);
        if(!mesh_native)stop(UnityStatus::unreadable_snapshot,0x3b305a);
        const bool ready=*mesh_native!=0;
        if(!ready) {
            if(s.retry_seconds>3.0f) {require(create_unity_resources_3b337c(s,a));s.retry_seconds=0;}
            else s.retry_seconds=get<float>(s,a,0x2e071c)+s.retry_seconds;
            return;
        }
        const auto height=float(get<ReI32>(s,a,0x2e09f0));
        const auto width=float(get<ReI32>(s,a,0x2e0af0));
        if(width!=s.bounds.width||height!=s.bounds.height) {
            require(resize_unity_target_3b1904(s,a,width,height));s.bounds={0,0,width,height};
        }
        const Vec2 viewport{data.display_size.x*data.framebuffer_scale.x,data.display_size.y*data.framebuffer_scale.y};
        // [C] COMISS zero >= dimension and total_vertices==0, not list-count==0.
        if(0.0f>=viewport.x||0.0f>=viewport.y||data.total_vertices==0)return;
        require(upload_unity_geometry_3b4250(s,a,data));
        require(record_unity_commands_3b1a94(s,a,data,viewport));
        require(execute_unity_commands_3b2004(s,a));submitted=true;
    });
    result.submitted=submitted;return result;
}
UnityResult update_unity_io_3b2eec(UnityBackendState& s,const UnityApi& a,const Snapshot& memory) {
    return run([&]{
        s.io.delta_time=get<float>(s,a,0x3b2a30);
        const auto camera_rect=get<ClipRect>(s,a,0x36c8c4,{s.camera});
        s.io.display_size={camera_rect.z,camera_rect.w};
        const auto mouse=get<Address>(s,a,0x3b2590);
        if(!sample_pointer_range(mouse))return;
        const auto read_vector=[&](Address p)->Vec2 {
            // [C] 0x3b34f0 tests the object range before reading object+0xf8.
            if(!sample_pointer_range(p))stop(UnityStatus::indeterminate_native_data,0x3b3508);
            const auto v=memory.read<Vec2>(p+0xf8);
            if(!v)stop(UnityStatus::unreadable_snapshot,0x3b350f);
            return *v;
        };
        const auto p=read_vector(get<Address>(s,a,0x3b2698,{mouse}));
        // [C] 0x3b3998 uses SCREEN HEIGHT, not camera pixelRect height.
        const auto screen_height=float(get<ReI32>(s,a,0x2e09f0));
        s.io.mouse_position={p.x,screen_height-p.y};
        const auto scroll=read_vector(get<Address>(s,a,0x3b2914,{mouse}));
        effect(s,a,0x38cd28,{s.io.native_io,0.0f,scroll.y}); // [C] Enqueues ImGui input; no immediate wheel store.
        static constexpr Rva buttons[]={0x3b2358,0x3b27f8,0x3b2474,0x3b2120,0x3b223c};
        for(ReUSize i=0;i<5;++i) {
            const auto button=get<Address>(s,a,buttons[i],{mouse});
            s.io.mouse_buttons[i]=get<bool>(s,a,0x2e68b8,{button});
        }
    });
}
MetadataResult resolve_unity_backend_class(const UnityMetadataAdapter& a,re::ReStringView ns,re::ReStringView name) {
    if(!a.intern)return {0,MetadataStatus::missing_dependency,0};
    return resolve_class_334224(a.metadata,a.intern(name),a.intern(ns),a.limits);
}
MetadataResult resolve_unity_backend_target(const UnityMetadataAdapter& a,const UnityCacheSpec& spec) {
    const auto missing=[](){return MetadataResult{0,MetadataStatus::missing_dependency,0};};
    if(spec.resolver==0x333d10) {
        if(!a.image||!a.signature_cache)return missing();
        const auto method=resolve_signature_333d10(*a.image,*a.signature_cache,a.signature_api,spec.signature,a.limits);
        if(method.status!=MetadataStatus::complete)return method;
        const auto p=a.image->read<Address>(method.value);
        return p?MetadataResult{*p}:MetadataResult{0,MetadataStatus::unreadable_snapshot,0};
    }
    if(spec.resolver==0x3b4d28||spec.resolver==0x376154) return a.resolve_icall?a.resolve_icall(spec.method):missing();
    if(spec.resolver==0x3caed0)return a.resolve_export?a.resolve_export(spec.klass,spec.method):missing();
    if(spec.resolver==0x2dee4c||spec.resolver==0x2cc164||spec.resolver==0x2cc174||spec.resolver==0x2cc16c||
       spec.resolver==0x3339ec||spec.resolver==0x333a24||spec.resolver==0x333a2c||spec.resolver==0x2ee70c||spec.resolver==0x3339dc)
        return a.export_getter?a.export_getter(spec.resolver):missing();
    if(!a.image||!a.intern)return missing();
    const auto name=a.intern(spec.klass),ns=a.intern(spec.name_space),method_name=a.intern(spec.method);
    const auto klass=resolve_class_334224(a.metadata,name,ns,a.limits);
    if(klass.status!=MetadataStatus::complete)return klass;
    if(spec.resolver==0x33416c) {
        const auto method=select_method_33416c(*a.image,a.metadata,klass.value,method_name,spec.count,0,a.limits);
        if(method.status!=MetadataStatus::complete)return method;
        const auto p=a.image->read<Address>(method.value);
        return p?MetadataResult{*p}:MetadataResult{0,MetadataStatus::unreadable_snapshot,method.visited};
    }
    if(spec.resolver==0x3349ac) {
        const auto method=select_parameter_method_3349ac(*a.image,a.metadata,klass.value,method_name,-1,0,-1,a.limits);
        if(method.status!=MetadataStatus::complete)return method;
        const auto p=a.image->read<Address>(method.value);
        return p?MetadataResult{*p}:MetadataResult{0,MetadataStatus::unreadable_snapshot,method.visited};
    }
    // [C] 0x333bf4 with parameter_index=-1 ignores required count AND parameter
    // name. 0x3b3c90 passes "rt" but still takes this early return branch.
    if(spec.resolver!=0x333bf4&&spec.resolver!=0x3b106c)return missing();
    if(spec.resolver==0x333bf4&&!sample_pointer_range(klass.value))return {};
    if(!a.metadata.next_method_334660||!a.method_name_335040)return missing();
    const auto equal=[&](Address p,re::ReStringView expected)->re::ReOptional<bool> {
        for(ReUSize i=0;i<=expected.size()&&i<a.limits.string_bytes;++i) {
            const auto c=a.image->read<ReU8>(p+i);if(!c)return {};
            if(i==expected.size())return *c==0;
            if(*c!=ReU8(expected[i]))return false;
        }
        return {};
    };
    Address iterator=0;
    for(ReUSize n=0;n<a.limits.iterations;++n) {
        const auto method=a.metadata.next_method_334660(klass.value,iterator);
        if(!method)return {0,MetadataStatus::complete,n};
        if(spec.resolver==0x333bf4&&!sample_pointer_range(method))continue;
        const auto actual=a.method_name_335040(method);
        if(spec.resolver==0x333bf4&&!sample_pointer_range(actual))continue;
        if(spec.resolver==0x3b106c&&!actual)continue;
        const auto matched=equal(actual,spec.method);
        if(!matched)return {0,MetadataStatus::unreadable_snapshot,n+1};
        if(!*matched)continue;
        if(spec.resolver==0x3b106c) {
            if(!a.metadata.parameter_count_335140||!a.parameter_type_3b4a98||!a.type_name_3b4de8)return missing();
            if(a.metadata.parameter_count_335140(method)!=1)continue;
            const auto parameter_type=a.parameter_type_3b4a98(method);
            auto p=a.type_name_3b4de8(parameter_type);if(!p)continue;
            Address suffix=p;bool terminated=false;
            for(ReUSize i=0;i<a.limits.string_bytes;++i) {
                const auto c=a.image->read<ReU8>(p+i);
                if(!c)return {0,MetadataStatus::unreadable_snapshot,n+1};
                if(!*c) {terminated=true;break;}
                if(*c=='.'||*c=='+')suffix=p+i+1;
            }
            if(!terminated)return {0,MetadataStatus::analysis_limit,n+1};
            const auto same=equal(suffix,spec.parameter);
            if(!same)return {0,MetadataStatus::unreadable_snapshot,n+1};
            if(!*same)continue;
        }
        const auto p=a.image->read<Address>(method);
        return p?MetadataResult{*p,MetadataStatus::complete,n+1}:MetadataResult{0,MetadataStatus::unreadable_snapshot,n+1};
    }
    return {0,MetadataStatus::analysis_limit,a.limits.iterations};
}
namespace {
UnityValue domain(const UnityFrameApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    if(!a.domain)stop(UnityStatus::missing_dependency,r);
    const auto v=a.domain(r,re::ReSpan(args.begin(),args.size()));
    if(!v)stop(UnityStatus::missing_dependency,r);
    return *v;
}
template<class T> T domain_get(const UnityFrameApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    return value_as<T>(domain(a,r,args),r);
}
void domain_effect(const UnityFrameApi& a,Rva r,std::initializer_list<UnityValue> args={}) {
    (void)value_as<re::ReMonostate>(domain(a,r,args),r);
}
Address manager(UnityFrameState& s,const UnityFrameApi& a) {
    // [C] 0x35d31c null is retried; 0x2cb3a4 is an identity, not a zeroing constructor.
    if(!s.manager) {
        s.manager=domain_get<Address>(a,0x38a3c4,{ReI32(32)});
    }
    return s.manager;
}
void clear_frame(UnityFrameState& s,bool disconnected) {
    // [C] Native clear dispatch differs in order but all preserve container objects.
    constexpr Rva collections[]={0x218820,0x3e61f0,0x3e6170,0x3e61b0,0x3e60b0,0x3e60f0,
        0x3e6130,0x2187d0,0x218978,0x218990,0x3e6010};
    for(const auto r:collections)s.collections[r].clear();
    constexpr Rva scalar[]={0x3e4250,0x3e609c,0x3e5e80,0x3e5e71,0x3e5e70,0x3d72b8,
        0x3d72c0,0x3e4248,0x3d72c8,0x3e5f00,0x3e5f08};
    for(const auto r:scalar)s.scalar_globals[r]=0;
    if(disconnected) {s.target_records.fill(ReByte{0});s.scalar_globals[0x3e5ef0]=0;}
}
}
UnityResult replay_unity_frame_2f8574(UnityFrameState& s,UnityBackendState& backend,const UnityFrameApi& a,
    const UnityFrameConfig& cfg,Address client,Address game_base) {
    bool submitted=false;
    auto result=run([&]{
        if(!s.initialized) {
            domain_effect(a,0x2dd284);domain_effect(a,0x2d91c4);domain_effect(a,0x315c34);
            s.initialized=true; // [C] Set only after all three setup calls.
        }
        domain_effect(a,0x2d60d0,{Address(0x2189a8)});
        domain_effect(a,0x3211f0,{Address(0x2187d0)});
        if(domain_get<bool>(a,0x2e5b7c,{Address(0x3f1714),0.4f}))
            domain_effect(a,0x31acd0,{Address(0x2187d0)});
        constexpr Rva blobs[]={0x2379e0,0x2189c0,0x21cfc0,0x221a70,0x225f50,0x22a500,0x233210,0x22eca0};
        constexpr ReUSize lengths[]={0x2a46,0x45f4,0x4aa4,0x44db,0x45ae,0x4794,0x47c1,0x4564};
        for(ReUSize i=0;i<8;++i)if(!s.bundles[i]) {
            if(!a.embedded_bytes)stop(UnityStatus::missing_dependency,0x375c08);
            auto bytes=a.embedded_bytes(blobs[i],lengths[i]);
            if(!bytes||bytes->bytes.size()!=lengths[i])stop(UnityStatus::unreadable_snapshot,0x375c6b);
            // [C] Owned copy mirrors byte-by-byte array+0x20 copy. No input is changed.
            UnityBytes copy{bytes->bytes};
            s.bundles[i]=load_bundle(backend,a.backend,copy);
        }
        backend.bundle=s.bundles[0];
        (void)domain_get<ReI32>(a,0x2e0af0);
        (void)domain_get<ReI32>(a,0x2e09f0);
        if(!(s.original.flags&1u)) {s.original.flags|=1u;s.original.target=s.saved_original;}
        if(!(s.original.flags&2u)) {
            s.original.flags|=2u;
            const UnityCacheSpec original{0x2f8574,0x3f1720,0x3f1718,0x3f1730,0,0,"","","Client.LateUpdate","",-1,-1};
            if(!a.backend.detect_context)stop(UnityStatus::missing_dependency,0x2cbd24);
            s.original.context_detected=a.backend.detect_context(original,s.original.target);
        }
        if(!s.original.target)stop(UnityStatus::unresolved_target,0x2f87a4);
        if(!s.original.context_detected)stop(UnityStatus::missing_dependency,0x2cbd24);
        domain_effect(a,0x2f87a4,{client}); // [U] Safe original-call adapter; no address executed.
        if(!s.bundles[0])return;
        backend.bundle=s.bundles[0];
        const auto player=domain_get<Address>(a,0x2e069c);
        const auto disconnected=domain_get<bool>(a,0x2e0e4c);
        domain_effect(a,0x2cce78,{!disconnected});
        const bool player_valid=sample_pointer_range(player);
        if(!player_valid)clear_frame(s,true);
        if(domain_get<bool>(a,0x2e89e4,{Address(0x3ef7d8),false}))s.menu_open=!s.menu_open;
        if(domain_get<bool>(a,0x2e0e4c))clear_frame(s,false);
        if(domain_get<bool>(a,0x2e0e4c))return; // [C] Third getter is intentionally repeated.
        if(!sample_pointer_range(domain_get<Address>(a,0x315924)))return;
        const bool zoom_enabled=cfg.zoom; // [C] DL captures Zoom before the pointer chain.
        if(!s.scalar_globals[0x3e5e71]&&(cfg.fov_changer||zoom_enabled)) {
            if(!a.copied_pointer)stop(UnityStatus::missing_dependency,0x2f8a16);
            const auto klass=a.copied_pointer(game_base,0xf0ee0a8);
            if(!klass)stop(UnityStatus::unreadable_snapshot,0x2f8a16);
            if(sample_pointer_range(*klass)) {
                const auto fields=a.copied_pointer(*klass,0xb8);
                if(!fields)stop(UnityStatus::unreadable_snapshot,0x2f8a29);
                if(sample_pointer_range(*fields)) {
                    float fov=cfg.fov;
                    if(zoom_enabled&&domain_get<bool>(a,0x2e5e4c,{cfg.zoom_key,true}))fov=cfg.zoom_fov;
                    domain_effect(a,0x317c1c,{*fields,fov});
                }
            }
        }
        const auto local=domain_get<Address>(a,0x2dda9c);
        if((cfg.visibility_check||cfg.outside_check||cfg.auto_enemy||cfg.aim_visibility||cfg.looking_at)&&
           domain_get<bool>(a,0x2e5b7c,{Address(0x3f1808),0.01f}))domain_effect(a,0x3684e0,{local});
        if(player_valid)for(const Rva worker:{0x316540u,0x319024u,0x318f34u,0x2f9988u})
            domain_effect(a,worker,{manager(s,a),local});
        if(!s.ui_initialized) {
            domain_effect(a,0x35ccf4,{manager(s,a)});
            require(initialize_unity_backend_3b2b38(backend,a.backend));
            for(const Rva r:{0x218930u,0x2188e8u,0x218918u,0x218900u,0x2188d0u,0x2188b8u,0x2188a0u,0x218948u})
                s.collections[r].clear();
            s.ui_initialized=true;
        }
        backend.io.native_io=get<Address>(backend,a.backend,0x3926ac);
        if(!a.copied_game)stop(UnityStatus::missing_dependency,0x3b2eec);
        require(update_unity_io_3b2eec(backend,a.backend,*a.copied_game));
        effect(backend,a.backend,0x397da4);
        bool draw_content=true;
        if(s.splash_active) {
            const auto elapsed=s.splash_seconds+backend.io.delta_time;s.splash_seconds=elapsed;
            if(!(5.0f>=elapsed))s.splash_active=false;
            else {
                const auto alpha=elapsed>4.0f?1.0f-(elapsed-4.0f):1.0f;
                domain_effect(a,0x3096c4,{backend.io.native_io,alpha});
            }
            draw_content=!s.splash_active;
        }
        if(draw_content) {
            if(!s.configs_loaded) {
                const auto stash_path=domain_get<re::ReString>(a,0x2dbb70);
                const auto sam_path=domain_get<re::ReString>(a,0x2dbb00);
                const bool sam_found=domain_get<bool>(a,0x2d5be4,{sam_path});
                if(sam_found)domain_effect(a,0x2dbbe0);
                domain_effect(a,0x37f918,{re::ReString(sam_found?"Loaded Samsites":"Failed to find samsite config"),ReI32(!sam_found),false});
                const bool stash_found=domain_get<bool>(a,0x2d5be4,{stash_path});
                if(stash_found)domain_effect(a,0x2dbec0);
                domain_effect(a,0x37f918,{re::ReString(stash_found?"Loaded Stashes":"Failed to find stash config"),ReI32(!stash_found),false});
                s.configs_loaded=true;
            }
            for(const Rva worker:{0x35aad8u,0x3098a4u,0x2fb72cu})domain_effect(a,worker,{manager(s,a)});
            domain_effect(a,0x36f788);
            for(const Rva worker:{0x35cb18u,0x307638u,0x35d5acu})domain_effect(a,worker,{manager(s,a)});
        }
        for(const Rva r:{0x390994u,0x390cecu,0x398d84u})effect(backend,a.backend,r);
        if(!a.finalized_draw_data_3924bc)stop(UnityStatus::missing_dependency,0x3924bc);
        const auto draw=a.finalized_draw_data_3924bc();if(!draw)stop(UnityStatus::missing_dependency,0x3924bc);
        const auto submission=submit_unity_draw_data_3b3028(backend,a.backend,*draw);
        require(submission);submitted=submission.submitted;
    });
    result.submitted=submitted;return result;
}
} // namespace rust_internal_re
