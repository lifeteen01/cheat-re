#include "renderer_helpers_unity.hpp"
namespace rust_internal_re {
namespace {
constexpr RendererUnitySpec specs[]{
    {0x2cae08,0x2cae85,0x3d6460,0x3d6458,0x3d6470,0x333d10,0xc0505eda},
    {0x2cae88,0x2caf05,0x3d6370,0x3d6368,0x3d6380,0x333d10,0x3a81cd35},
    {0x2caf28,0x2cb04d,0x3d6280,0x3d6278,0x3d6290,0x333bf4,0},
    {0x2ccc0c,0x2ccd11,0x3d6198,0x3d6190,0x3d61a0,0x334a90,0},
};
template<class T>T get(const Snapshot& im,Address a,Rva at){const auto v=im.read<T>(a);if(!v){ __builtin_trap(); }return *v;}
template<class T>void put(Snapshot& im,Address a,T value,Rva at){if(!im.write(a,value)){ __builtin_trap(); }}
template<class F>void need(const F& f,Rva at,Rva dependency){if(!f){ __builtin_trap(); }}
Address result(MetadataResult r,Rva at){if(r.status!=MetadataStatus::complete){ __builtin_trap(); }return r.value;}
Address literal(Snapshot& im,re::ReStringView text,Address& next,const RendererUnityEnvironment& env) {
    if(text.size()+1>env.literal_capacity||next<env.literal_storage||next-env.literal_storage>env.literal_capacity-(text.size()+1)){ __builtin_trap(); }
    const auto address=next;for(char ch:text)put(im,next++,ReU8(ch),0x334224);put(im,next++,ReU8(0),0x334224);return address;
}
const RendererUnitySpec& spec(Rva wrapper){for(const auto& s:specs)if(s.wrapper==wrapper)return s;{ __builtin_trap(); }}
RendererUnityCall prepare(Snapshot& im,Rva wrapper,Address receiver,const RendererUnityEnvironment& env,RendererUnityBackend& b) {
    const auto& s=spec(wrapper);auto flags=get<ReU32>(im,s.flags,wrapper);Address target{};
    if(!(flags&1)) {
        put(im,s.flags,flags|1u,wrapper);Address method{};
        if(s.resolver==0x333d10){need(b.signature_333d10,wrapper,0x333d10);method=result(b.signature_333d10(s.signature),0x333d10);}
        else {
            Address next=env.literal_storage;
            const auto name=literal(im,wrapper==0x2ccc0c?"Object":"AssetBundle",next,env);
            const auto space=literal(im,"UnityEngine",next,env);
            const auto method_name=literal(im,wrapper==0x2ccc0c?"op_Implicit":"LoadAsset_Internal",next,env);
            if(wrapper==0x2ccc0c) {
                const auto klass=result(resolve_class_334224(b.metadata,name,space,env.limits),0x334224);
                method=result(select_counted_method_334a90(im,b.metadata,klass,method_name,1,env.limits),0x334a90);
            } else method=result(resolve_export_named_method_333bf4(im,b.metadata,name,method_name,2,0,space,-1,env.limits),0x333bf4);
        }
        target=get<Address>(im,method,wrapper);put(im,s.target,target,wrapper);flags=get<ReU32>(im,s.flags,wrapper);
    } else target=get<Address>(im,s.target,wrapper);
    RendererUnityCall call{wrapper,target,0,s.context,receiver,0,0};
    if(!(flags&2)) {
        call.dispatcher=get<Address>(im,0x3d5e60,wrapper);put(im,s.flags,flags|2u,wrapper);
        need(b.observe_context_2cbd24,wrapper,0x2cbd24);b.observe_context_2cbd24(call);
    }
    call.dispatcher=get<Address>(im,0x3d5e60,wrapper);
    if(!target){ __builtin_trap(); }
    return call;
}
}
re::ReSpan<const RendererUnitySpec> renderer_unity_specs(){return specs;}
bool renderer_implicit_2ccc0c(Snapshot& im,Address object,const RendererUnityEnvironment& env,RendererUnityBackend& b) {
    if(!sample_pointer_range(object))return false;
    const auto call=prepare(im,0x2ccc0c,object,env,b);need(b.object_implicit,0x2cccf7,0x2cb9fc);return b.object_implicit(call);
}
ReI32 renderer_dimension_2cae08_2cae88(Snapshot& im,Rva wrapper,Address object,const RendererUnityEnvironment& env,RendererUnityBackend& b) {
    if(wrapper!=0x2cae08&&wrapper!=0x2cae88){ __builtin_trap(); }
    const auto call=prepare(im,wrapper,object,env,b);need(b.texture_dimension,wrapper,0x2cb9fc);return b.texture_dimension(call);
}
Address renderer_runtime_type_2ccbdc(Snapshot& im,re::ReStringView klass,re::ReStringView space,const RendererUnityEnvironment& env,RendererUnityBackend& b) {
    Address next=env.literal_storage;const auto name=literal(im,klass,next,env),name_space=literal(im,space,next,env);
    const auto c=result(resolve_class_334224(b.metadata,name,name_space,env.limits),0x334224);if(!c)return 0;
    need(b.class_type_2cd7f4,0x2ccbed,0x2cd7f4);const auto type=b.class_type_2cd7f4(c);if(!type)return 0;
    need(b.type_object_2cea84,0x2ccbfe,0x2cea84);return b.type_object_2cea84(type);
}
Address renderer_asset_2caf28(Snapshot& im,Address bundle,re::ReStringView path,Address type,const RendererUnityEnvironment& env,RendererUnityBackend& b) {
    auto call=prepare(im,0x2caf28,bundle,env,b);need(b.managed_string_2ce5dc,0x2cb01d,0x2ce5dc);
    call.argument0=b.managed_string_2ce5dc(path);call.argument1=type;need(b.load_asset,0x2cb03b,0x2cba50);return b.load_asset(call);
}
RendererIconBackend bind_renderer_icon_unity(Snapshot& im,const RendererUnityEnvironment& env,RendererUnityBackend& b,RendererIconBackend output) {
    output.implicit_2ccc0c=[&,env](Address object){return renderer_implicit_2ccc0c(im,object,env,b);};
    output.width_2cae88=[&,env](Address object){return renderer_dimension_2cae08_2cae88(im,0x2cae88,object,env,b);};
    output.height_2cae08=[&,env](Address object){return renderer_dimension_2cae08_2cae88(im,0x2cae08,object,env,b);};
    output.runtime_type_2ccbdc=[&,env](re::ReStringView name,re::ReStringView space){return renderer_runtime_type_2ccbdc(im,name,space,env,b);};
    output.load_asset_2caf28=[&,env](Address bundle,re::ReStringView path,Address type){return renderer_asset_2caf28(im,bundle,path,type,env,b);};
    return output;
}
} // namespace rust_internal_re
