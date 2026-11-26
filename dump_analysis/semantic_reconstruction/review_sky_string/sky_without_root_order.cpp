#include "/home/john/Desktop/cheat_re/source/reconstructed/sky_model_analysis.hpp"
#include "/home/john/Desktop/cheat_re/source/reconstructed/metadata_argument_bindings.hpp"
#include "/home/john/Desktop/cheat_re/source/reconstructed/analysis_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop { GameBaseStatus status; Rva site; };
enum class Selector { parameter,counted,occurrence };
struct Wrapper {
    Rva rva,flags,target,context;
    std::string_view method,namespc,klass;
    Selector selector;
    std::int32_t count,occurrence;
};
// [C] Cache cells/context RVAs and decoded literals from each named native wrapper.
constexpr Wrapper wrappers[]{
    {0x2e6744,0x3e4260,0x3e4258,0x3e4270,"get_visible","UnityEngine","Cursor",Selector::parameter,-1,0},
    {0x3151bc,0x3e6320,0x3e6318,0x3e6330,"GetComponentsInChildren","UnityEngine","Component",Selector::parameter,1,0},
    {0x36b2d4,0x3fe0c0,0x3fe0b8,0x3fe0d0,"","","",Selector::parameter,-1,0},
    {0x368280,0x3fe390,0x3fe388,0x3fe3a0,"Internal_CreateGameObject","UnityEngine","GameObject",Selector::occurrence,2,0},
    {0x368370,0x3fe480,0x3fe478,0x3fe490,"Internal_Create","UnityEngine","Mesh",Selector::occurrence,-1,0},
    {0x367fe0,0x3fe1b0,0x3fe1a8,0x3fe1c0,"BakeMesh","UnityEngine","SkinnedMeshRenderer",Selector::counted,1,0},
    {0x36ad9c,0x3fe2a0,0x3fe298,0x3fe2b0,"set_mesh","UnityEngine","MeshFilter",Selector::counted,1,0},
    {0x370754,0x4003d0,0x4003c8,0x4003e0,"get_transform","UnityEngine","Component",Selector::parameter,-1,0},
    {0x370fac,0x400a60,0x400a58,0x400a70,"GetMaterial","UnityEngine","Renderer",Selector::parameter,-1,0},
    {0x370e84,0x400970,0x400968,0x400980,"get_shader","UnityEngine","Material",Selector::parameter,-1,0},
    {0x373248,0x4015a0,0x401598,0x4015b0,"get_transform","UnityEngine","GameObject",Selector::parameter,-1,0},
    {0x37301c,0x4010f0,0x4010e8,0x401100,"Destroy","UnityEngine","Object",Selector::occurrence,2,0},
    {0x372efc,0x401690,0x401688,0x4016a0,"Internal_AddComponentWithType","UnityEngine","GameObject",Selector::parameter,-1,0},
    {0x3710dc,0x400880,0x400878,0x400890,"set_shader","UnityEngine","Material",Selector::parameter,-1,0},
    {0x370d64,0x400790,0x400788,0x4007a0,"SetColor","UnityEngine","Material",Selector::counted,2,0},
    {0x37361c,0x4012d0,0x4012c8,0x4012e0,"get_name","UnityEngine","Object",Selector::parameter,-1,0},
    {0x3747d4,0x401d20,0x401d18,0x401d30,"get_position","UnityEngine","Transform",Selector::parameter,-1,0},
    {0x374aa4,0x4021d0,0x4021c8,0x4021e0,"get_rotation","UnityEngine","Transform",Selector::parameter,-1,0},
    {0x375140,0x4024a0,0x402498,0x4024b0,"set_position","UnityEngine","Transform",Selector::parameter,-1,0},
    {0x37527c,0x4022c0,0x4022b8,0x4022d0,"set_rotation","UnityEngine","Transform",Selector::parameter,-1,0},
    {0x36c670,0x3ffa60,0x3ffa58,0x3ffa70,"get_aspect","UnityEngine","Camera",Selector::parameter,-1,0},
    {0x36caa8,0x3ff978,0x3ff970,0x3ff980,"set_aspect","UnityEngine","Camera",Selector::parameter,-1,0},
    {0x375abc,0x402c20,0x402c18,0x402c30,"LoadAsset_Internal","UnityEngine","AssetBundle",Selector::parameter,2,0},
};
class Replay {
public:
    Snapshot& image;
    const SkyModelEnvironment& env;
    const SkyModelApi& api;
    Replay(Snapshot& s,const SkyModelEnvironment& e,const SkyModelApi& a):image(s),env(e),api(a){}
    Address g(Rva r)const{return env.module+r;}
    template<class T>T read(Address p,Rva site)const{
        const auto value=image.read<T>(p);if(!value)throw Stop{GameBaseStatus::missing_bytes,site};return *value;
    }
    template<class T>void write(Address p,T value,Rva site){
        if(!image.write(p,value))throw Stop{GameBaseStatus::missing_bytes,site};
    }
    template<class T>T global(Rva r,Rva site)const{return read<T>(g(r),site);}
    template<class T>void put(Rva r,T v,Rva site){write(g(r),v,site);}
    bool enabled(Rva r,Rva site)const{return global<std::uint8_t>(r,site)!=0;}
    void need(bool present,Rva site)const{if(!present)throw Stop{GameBaseStatus::missing_boundary,site};}
    Address checked(MetadataResult r,Rva site)const{
        switch(r.status){
        case MetadataStatus::complete:return r.value;
        case MetadataStatus::missing_dependency:throw Stop{GameBaseStatus::missing_boundary,site};
        case MetadataStatus::unreadable_snapshot:throw Stop{GameBaseStatus::missing_bytes,site};
        case MetadataStatus::analysis_limit:throw Stop{GameBaseStatus::analysis_limit,site};
        }
        throw Stop{GameBaseStatus::missing_boundary,site};
    }
    Address literal(std::string_view s,std::size_t offset,Rva site){
        if(!env.literal_storage || offset>env.literal_capacity || s.size()+1>env.literal_capacity-offset)
            throw Stop{GameBaseStatus::missing_bytes,site};
        const Address out=env.literal_storage+offset;
        for(std::size_t i=0;i<s.size();++i)write(out+i,static_cast<std::uint8_t>(s[i]),site);
        write(out+s.size(),std::uint8_t{},site);return out;
    }
    Address klass(std::string_view name,std::string_view ns,Rva site){
        const Address cname=literal(name,0,site),nspace=literal(ns,128,site);
        return checked(resolve_class_334224(api.metadata,cname,nspace),site);
    }
    // [C] Shared export adapters and the asset-loader aliases have distinct
    // lazy state. Setup remains detection-only; each flag precedes its callback.
    void export_setup(Rva wrapper,Rva flag_cell,Rva target_cell,Rva context_cell,Rva getter){
        auto f=global<std::uint32_t>(flag_cell,wrapper);Address target;
        if(!(f&1)){
            put(flag_cell,f|1,wrapper);need(bool(api.export_target),getter);
            target=api.export_target(getter);put(target_cell,target,wrapper);
            f=global<std::uint32_t>(flag_cell,wrapper);
        }else target=global<Address>(target_cell,wrapper);
        if(!(f&2)){put(flag_cell,f|2,wrapper);context(g(context_cell),target);}
    }
    Address type_object(std::string_view name,std::string_view ns,Rva site,bool asset_alias=false){
        const Address c=klass(name,ns,site);
        if(asset_alias)export_setup(0x375e6c,0x402950,0x402948,0x402960,0x2cc174);
        else export_setup(0x3346e8,0x3fa670,0x3fa668,0x3fa680,0x2cc174);
        need(bool(api.class_type_3346e8),0x3346e8);
        const Address type=api.class_type_3346e8(c);
        if(asset_alias)export_setup(0x376214,0x402860,0x402858,0x402870,0x2cc16c);
        else export_setup(0x335358,0x3fa580,0x3fa578,0x3fa590,0x2cc16c);
        need(bool(api.type_object_335358),0x335358);
        return api.type_object_335358(type);
    }
    void context(Address cell,Address target){
        need(bool(api.observe_context_2cbd24),0x2cbd24);
        api.observe_context_2cbd24(cell,target);
    }
    Address select(const Wrapper& w){
        const Address c=klass(w.klass,w.namespc,w.rva);
        const Address name=literal(w.method,256,w.rva);
        MetadataResult method;
        if(w.rva==0x3151bc||w.rva==0x375abc){
            // [C] Reached specialization of 333bf4: parameter index is -1,
            // so count/name-of-parameter filtering is bypassed after name match.
            if(sample_pointer_range(c)){
                need(bool(api.metadata.next_method_334660),0x334660);Address cursor=0;
                bool terminated=false;
                for(std::size_t n=0;n<100000;++n){
                    const Address candidate=api.metadata.next_method_334660(c,cursor);
                    if(!candidate){terminated=true;break;}
                    if(!sample_pointer_range(candidate))continue;
                    export_setup(0x335040,0x3fa490,0x3fa488,0x3fa4a0,0x3339ec);
                    need(bool(api.method_name_335040),0x335040);
                    const Address actual=api.method_name_335040(candidate);
                    if(!sample_pointer_range(actual))continue;
                    bool equal=true;
                    for(std::size_t i=0;i<=w.method.size();++i){
                        const char ch=read<char>(actual+i,0x334ff4);
                        const char wanted=i==w.method.size()?char{}:w.method[i];
                        if(ch!=wanted){equal=false;break;}
                    }
                    if(equal){method.value=candidate;terminated=true;break;}
                }
                if(!terminated)throw Stop{GameBaseStatus::analysis_limit,0x333bf4};
            }
        }else if(w.selector==Selector::parameter)
            method=select_parameter_method_3349ac(image,api.metadata,c,name,-1,0,w.count);
        else if(w.selector==Selector::counted)
            method=select_counted_method_334a90(image,api.metadata,c,name,w.count);
        else method=select_method_33416c(image,api.metadata,c,name,w.count,w.occurrence);
        // [C] Native dereferences MethodInfo even if the selection returned zero.
        return read<Address>(checked(method,w.rva),w.rva);
    }
    SkyModelValue effect(SkyModelCall request){
        need(bool(api.unity),request.wrapper);return api.unity(request);
    }
    SkyModelValue call(SkyModelCall request){
        const auto it=std::find_if(std::begin(wrappers),std::end(wrappers),[&](const Wrapper& w){return w.rva==request.wrapper;});
        if(it==std::end(wrappers))throw Stop{GameBaseStatus::missing_boundary,request.wrapper};
        const Wrapper& w=*it;
        auto flags=global<std::uint32_t>(w.flags,w.rva);
        Address target;
        if(!(flags&1)){
            flags|=1;put(w.flags,flags,w.rva);
            if(w.rva==0x36b2d4){need(bool(api.allocator_target_2dee4c),0x2dee4c);target=api.allocator_target_2dee4c();}
            else target=select(w);
            put(w.target,target,w.rva);
            flags=global<std::uint32_t>(w.flags,w.rva);
        }else target=global<Address>(w.target,w.rva);
        if(!(flags&2)){
            put(w.flags,flags|2,w.rva);context(g(w.context),target);
        }
        request.target=target;request.context=g(w.context);
        if(w.rva==0x375abc)request.arguments[1]=global<Address>(0x27f9a8,0x375bd5);
        if(w.rva==0x36b2d4){need(bool(api.object_new_36b2d4),0x36b342);SkyModelValue value;value.object=api.object_new_36b2d4(request.receiver);return value;}
        return effect(request);
    }
    Address object(Rva wrapper,Address receiver,Address arg=0){
        SkyModelCall c;c.wrapper=wrapper;c.receiver=receiver;c.arguments[0]=arg;return call(c).object;
    }
    void operation(Rva wrapper,Address receiver,Address arg=0){
        SkyModelCall c;c.wrapper=wrapper;c.receiver=receiver;c.arguments[0]=arg;static_cast<void>(call(c));
    }
    Address string(std::string_view text){export_setup(0x2ce718,0x3d5e70,0x3d5e68,0x3d5e80,0x2cc164);need(bool(api.string_new_2ce718),0x2ce718);return api.string_new_2ce718(text);}
    Address camera(){
        // [C] Entire 2e069c..2e071b: MainCamera has the empty namespace.
        const Address c=klass("MainCamera","",0x2e06d9);
        if(!sample_pointer_range(c))return 0;
        const Address statics=read<Address>(c+0xb8,0x2e06ed);
        if(!sample_pointer_range(statics))return 0;
        const Address value=read<Address>(statics+0x38,0x2e0700);
        if(!sample_pointer_range(value))return 0;
        return read<Address>(statics+0x38,0x2e070e);
    }
    bool key_edge(Address record){
        // [C] Entire reached 2e89e4 specialization: caller's second arg is true.
        SkyModelCall cursor;cursor.wrapper=0x2e6744;
        if(call(cursor).boolean)return false;
        const auto key=read<std::int32_t>(record,0x2e8a02);
        need(bool(api.key_2e5e4c),0x2e8a06);
        if(api.key_2e5e4c(key,false)){
            if(read<std::uint8_t>(record+8,0x2e8a0f))return false;
            write(record+8,std::uint8_t{1},0x2e8a17);return true;
        }
        write(record+8,std::uint8_t{},0x2e8a1c);return false;
    }
    Address color_pointer(Address sky_settings,Rva site){
        if(!sample_pointer_range(sky_settings))return 0;
        const Address inner=read<Address>(sky_settings+0x28,site);
        if(!sample_pointer_range(inner))return 0;
        const Address color=read<Address>(inner+0x10,site);
        return sample_pointer_range(color)?color:0;
    }
    void restore(Address day,bool day_valid,Address settings,Rva site){
        if(day_valid)write(day+0x10,global<float>(0x3f8e28,site),site);
        if(enabled(0x3f8a88,site)){
            const Address color=color_pointer(settings,site);
            if(color)write(color,global<SkyModelColor>(0x3f8e38,site),site);
        }
    }
};
SkyModelCall request(Rva r,Address receiver=0){SkyModelCall c;c.wrapper=r;c.receiver=receiver;return c;}
} // namespace

// [C] 0x32f408..0x32fac2, including all branch targets and the shared epilogue.
SkyModelResult replay_sky_32f408(Snapshot& image,Address sky,const SkyModelEnvironment& env,const SkyModelApi& api){
    Replay r(image,env,api);SkyModelResult out;
    try{
        // [C] EBX retains this flags word across the first context callback.
        auto flags=r.global<std::uint32_t>(0x3f8d40,0x32f422);
        Address original;
        if(!(flags&1)){
            flags|=1;r.put(0x3f8d40,flags,0x32f43e);
            original=r.global<Address>(0x3e6838,0x32f444);
            r.put(0x3f8d38,original,0x32f449);
        }else original=r.global<Address>(0x3f8d38,0x32f452);
        if(!(flags&2)){
            flags|=2;r.put(0x3f8d40,flags,0x32f472);r.context(r.g(0x3f8d50),original);
        }
        const Address day=r.read<Address>(sky+0x40,0x32f483);
        const bool valid_day=sample_pointer_range(day);
        float saved_day;
        if(valid_day){
            const bool dayhack=r.enabled(0x3f8a38,0x32f499);
            saved_day=r.read<float>(day+0x10,0x32f4a0);r.put(0x3f8e28,saved_day,0x32f4a6);
            if(dayhack)r.write(day+0x10,static_cast<float>(r.global<std::int32_t>(0x3f8c88,0x32f4b0)),0x32f4bb);
        }else saved_day=r.global<float>(0x3f8e28,0x32f4c3);
        bool bright=r.enabled(0x3f89e8,0x32f4cb);r.put(0x3e608c,saved_day,0x32f4d1);
        if(bright){
            const Address p=r.read<Address>(sky+0x78,0x32f4dd);
            if(sample_pointer_range(p)){
                r.write(p+0x14,250.0f,0x32f4ed);
                bright=r.enabled(0x3f89e8,0x32f4f5);r.put(0x3f8e2c,std::uint8_t{1},0x32f4fb);
            }
        }
        if(!bright&&r.enabled(0x3f8e2c,0x32f506)){
            const Address p=r.read<Address>(sky+0x78,0x32f50f);
            if(sample_pointer_range(p)){r.write(p+0x14,2.0f,0x32f51f);r.put(0x3f8e2c,std::uint8_t{},0x32f526);}
        }
        const Address camera=r.camera();
        if(sample_pointer_range(camera)){
            float aspect=r.global<float>(0x3f8e30,0x32f541);
            // [C] COMISS/JB skips capture for positive values AND unordered NaN.
            if(aspect<=0.0f){aspect=r.call(request(0x36c670,camera)).scalar;r.put(0x3f8e30,aspect,0x32f559);}
            if(r.enabled(0x3f8ad8,0x32f561)){
                const float desired=r.global<float>(0x3f8be8,0x32f56a);
                if(desired!=0.0f){auto c=request(0x36caa8,camera);c.scalar=desired;static_cast<void>(r.call(c));r.put(0x3f8e34,std::uint8_t{1},0x32f581);}
            }else if(r.enabled(0x3f8e34,0x32f58a)){
                auto c=request(0x36caa8,camera);c.scalar=aspect;static_cast<void>(r.call(c));
                // [C] Native never clears 0x3f8e34 here.
            }
        }
        flags=r.global<std::uint32_t>(0x3f8d40,0x32f59e);
        if(!(flags&4)){r.put(0x3f8d40,flags|4,0x32f5b2);/* [C] 2cb3a4 is identity. */}
        bool tint=r.enabled(0x3f8a88,0x32f5bd);
        const Address settings=r.read<Address>(sky+0x58,0x32f5c3);
        if(tint){
            const Address color=r.color_pointer(settings,0x32f5d7);
            if(color){
                const auto saved=r.read<SkyModelColor>(color,0x32f5f7);
                r.put(0x3f8e48,std::uint8_t{1},0x32f5fb);
                const auto wanted=r.global<SkyModelColor>(0x3f8b88,0x32f602);
                r.put(0x3f8e38,saved,0x32f609);r.write(color,wanted,0x32f611);
                tint=r.enabled(0x3f8a88,0x32f616);
            }
        }
        if(!tint&&r.enabled(0x3f8e48,0x32f620)){
            const Address color=r.color_pointer(settings,0x32f635);
            if(color){const auto saved=r.global<SkyModelColor>(0x3f8e38,0x32f655);r.put(0x3f8e48,std::uint8_t{},0x32f65c);r.write(color,saved,0x32f663);}
        }
        if(r.enabled(0x3f8998,0x32f668)){
            if(r.global<std::int32_t>(0x3f8d28,0x32f671)==999)r.put(0x3f8e49,std::uint8_t{1},0x32f67d);
            else{
                if(r.key_edge(r.g(0x3f8d28)))r.put(0x3f8e49,std::uint8_t{!r.enabled(0x3f8e49,0x32f69b)},0x32f6b2);
            }
        }else r.put(0x3f8e49,std::uint8_t{},0x32f6b2);
        const auto invoke_original=[&](Rva site){
            auto c=request(0x32f408,sky);c.context=r.g(0x3f8d50);c.target=r.global<Address>(0x3f8d38,site);
            static_cast<void>(r.effect(c));++out.original_calls;
        };
        if(!r.enabled(0x3f8e49,0x32f6b8)){
            invoke_original(0x32f6c9);r.restore(day,valid_day,settings,0x32f6ce);
            if(!r.enabled(0x3f8e49,0x32f722))return out;
        }
        invoke_original(0x32f73c);
        // [C] Each resolver bit is committed before metadata callbacks; returned
        // MethodInfo is dereferenced before storing its code pointer.
        constexpr std::array<std::string_view,3> methods{"set_ambientMode","set_ambientIntensity","set_ambientLight"};
        for(std::size_t i=0;i<methods.size();++i){
            flags=r.global<std::uint32_t>(0x3f8d40,0x32f741);
            const std::uint32_t bit=8u<<i;
            if(!(flags&bit)){
                r.put(0x3f8d40,flags|bit,0x32f75a);
                const Wrapper w{0x32f408,0,0,0,methods[i],"UnityEngine","RenderSettings",Selector::parameter,-1,0};
                const Address code=r.select(w);r.put(static_cast<Rva>(0x3f8e50+8*i),code,0x32f7e2);
            }
        }
        const auto ambient=[&](Rva context,Rva cached,std::uint32_t bit,SkyModelCall c){
            const auto f=r.global<std::uint32_t>(0x3f8d40,c.wrapper);
            if(!(f&bit)){r.put(0x3f8d40,f|bit,c.wrapper);r.context(r.g(context),r.global<Address>(cached,c.wrapper));}
            c.target=r.global<Address>(cached,c.wrapper);c.context=r.g(context);
            if(c.wrapper==0x32f118)c.scalar=r.global<float>(0x3f8c38,0x32f9eb);
            if(c.wrapper==0x2cb9fc){c.arguments[0]=r.g(0x3f8b28);c.color=r.global<SkyModelColor>(0x3f8b28,0x32fa41);}
            static_cast<void>(r.effect(c));
        };
        const auto mode=r.global<std::int32_t>(0x3f8cd8,0x32f92b);
        if(mode==0||mode==1){auto c=request(0x321994);c.arguments[0]=mode==0?3:1;ambient(mode==0?0x3f8e70:0x3f8f50,0x3f8e50,mode==0?64:128,c);}
        auto intensity=request(0x32f118);ambient(0x3f9030,0x3f8e58,256,intensity);
        auto light=request(0x2cb9fc);ambient(0x3f9110,0x3f8e60,512,light);
        r.restore(day,valid_day,settings,0x32fa54);
    }catch(const Stop& s){out.status=s.status;out.site=s.site;}
     catch(const SnapshotBindingFailure& s){out.status=s.status;out.site=s.site;}
     catch(const MetadataWrapperFailure& s){out.status=game_base_status(s.status);out.site=s.site;}
    return out;
}

// [C] 0x36a464..0x36ac74, including loop continuations 0x36ac47/0x36ac4c.
SkyModelResult replay_model_36a464(Snapshot& image,Address player,const SkyModelEnvironment& env,const SkyModelApi& api){
    Replay r(image,env,api);SkyModelResult out;
    try{
        if(!sample_pointer_range(player))return out;
        // [C] 0x369764: validated receiver +0x300, via identity address helper.
        const Address model=r.read<Address>(player+0x300,0x369785);
        if(!sample_pointer_range(model))return out;
        const Address component_type=r.type_object("SkinnedMeshRenderer","UnityEngine",0x36a4f0);
        if(!sample_pointer_range(component_type))return out;
        if(!sample_pointer_range(model)||!sample_pointer_range(component_type))return out;
        const Address renderers=r.object(0x3151bc,model,component_type);
        if(!sample_pointer_range(renderers))return out;
        const std::int32_t count=r.read<std::int32_t>(renderers+0x18,0x36a528);
        for(std::int32_t i=0;i<count;++i){
            if(out.renderers_visited>=env.maximum_renderers)throw Stop{GameBaseStatus::analysis_limit,0x36a53a};
            ++out.renderers_visited;
            // [C] LEA EAX,index*8 then MOVSXD, not a widened size_t multiply.
            const auto offset=std::bit_cast<std::int32_t>(static_cast<std::uint32_t>(i)*8u);
            const Address source=r.read<Address>(renderers+0x20+static_cast<Address>(static_cast<std::int64_t>(offset)),0x36a545);
            if(!sample_pointer_range(source))continue;
            const Address source_transform=r.object(0x370754,source);
            if(!sample_pointer_range(source_transform))continue;
            const Address mesh_class=r.klass("Mesh","UnityEngine",0x36a5ae);
            if(!sample_pointer_range(mesh_class))continue;
            const Address object_class=r.klass("GameObject","UnityEngine",0x36a5ff);
            if(!sample_pointer_range(object_class))continue;
            const Address created=r.object(0x36b2d4,object_class);
            if(!sample_pointer_range(created))continue;
            r.operation(0x368280,created,r.string("Sussy Object"));
            const Address new_transform=r.object(0x373248,created);
            if(!sample_pointer_range(new_transform))continue;
            const Vec3 position=r.call(request(0x3747d4,source_transform)).vector;
            auto position_set=request(0x375140,new_transform);position_set.vector=position;static_cast<void>(r.call(position_set));
            const Orientation rotation=r.call(request(0x374aa4,source_transform)).orientation;
            auto rotation_set=request(0x37527c,new_transform);rotation_set.orientation=rotation;static_cast<void>(r.call(rotation_set));
            // [C] 0x372efc resolves/cache-initializes BEFORE obtaining its type object.
            // Resolve wrapper on the eventual call; type is supplied as a numeric
            // argument after the same cache setup (handled explicitly below).
            const auto add_component=[&](std::string_view name){
                // [C] Method/context lazy initialization is independent of class type lookup.
                // A safe foreign callback is reached only once, after type conversion.
                const Wrapper& w=*std::find_if(std::begin(wrappers),std::end(wrappers),[](const Wrapper& v){return v.rva==0x372efc;});
                auto f=r.global<std::uint32_t>(w.flags,w.rva);Address target;
                if(!(f&1)){r.put(w.flags,f|1,w.rva);target=r.select(w);r.put(w.target,target,w.rva);f=r.global<std::uint32_t>(w.flags,w.rva);}
                else target=r.global<Address>(w.target,w.rva);
                if(!(f&2)){r.put(w.flags,f|2,w.rva);r.context(r.g(w.context),target);}
                const Address type=r.type_object(name,"UnityEngine",0x372ff2);
                auto c=request(0x372efc,created);c.arguments[0]=type;c.target=target;c.context=r.g(w.context);return r.effect(c).object;
            };
            const Address new_renderer=add_component("MeshRenderer");
            if(!sample_pointer_range(new_renderer))continue;
            const Address new_filter=add_component("MeshFilter");
            if(!sample_pointer_range(new_filter))continue;
            const Address mesh=r.object(0x36b2d4,mesh_class);
            if(!sample_pointer_range(mesh))continue;
            r.operation(0x368370,mesh,r.string("SussyMesh"));
            r.operation(0x367fe0,source,mesh);
            r.operation(0x36ad9c,new_filter,mesh);
            const Address material=r.object(0x370fac,new_renderer);
            if(!sample_pointer_range(material))continue;
            const Address old_shader=r.object(0x370e84,material);
            if(!sample_pointer_range(old_shader))continue;
            const Address name=r.object(0x37361c,material);
            if(!sample_pointer_range(name))continue;
            auto converted=managed_name_bytes_2d7e18(image,name);
            if(converted.status!=GameBaseStatus::complete)throw Stop{converted.status,0x36a855};
            const auto c_name=[](const std::string& bytes){return std::string_view(bytes).substr(0,bytes.find('\0'));};
            bool excluded=c_name(converted.value).find("night.vision.goggles")!=std::string_view::npos;
            if(!excluded){
                // [C] Native performs the low-byte conversion a second time.
                converted=managed_name_bytes_2d7e18(image,name);
                if(converted.status!=GameBaseStatus::complete)throw Stop{converted.status,0x36a89a};
                excluded=c_name(converted.value).find("hat.miner")!=std::string_view::npos;
            }
            if(excluded)continue;
            const std::int32_t index=r.global<std::int32_t>(0x3fcff8,0x36a8e9);
            const Address signed_offset=static_cast<Address>(static_cast<std::int64_t>(index)*8);
            const Address bundle=r.read<Address>(r.g(0x3e5e88)+signed_offset,0x36a8f7);
            if(bundle){
                const Address cell=r.g(0x3e5ec0)+signed_offset;
                Address shader=r.read<Address>(cell,0x36a913);
                if(!shader&&index>=0&&index<=6){
                    // [C] 0x375abc has a shared sentinel-controlled type cache.
                    const Address shader_name=r.string(std::string(1,static_cast<char>('0'+index)));
                    if(r.global<Address>(0x27f9a8,0x375ac7)==0x402402)
                        r.put(0x27f9a8,r.type_object("Shader","UnityEngine",0x375ae0,true),0x375af5);
                    auto load=request(0x375abc,bundle);load.arguments[0]=shader_name;
                    load.arguments[1]=r.global<Address>(0x27f9a8,0x375bd5);
                    shader=r.call(load).object;
                    r.write(cell,shader,0x36ab8a); // [C] Cache zero failures too, before branch.
                }
                if(shader){
                    r.operation(0x3710dc,material,shader);
                    const auto b=r.global<SkyModelColor>(0x3ecc38,0x36aba9);
                    auto color=request(0x370d64,material);color.arguments[0]=r.string("_b");color.color=b;static_cast<void>(r.call(color));
                    const auto a=r.global<SkyModelColor>(0x3ecbd8,0x36abe7);
                    color=request(0x370d64,material);color.arguments[0]=r.string("_a");color.color=a;static_cast<void>(r.call(color));
                }
            }
            auto destroy=request(0x37301c,created);destroy.scalar=r.global<float>(0x3fca58,0x36ac25);static_cast<void>(r.call(destroy));
            destroy=request(0x37301c,mesh);destroy.scalar=r.global<float>(0x3fca58,0x36ac35);static_cast<void>(r.call(destroy));
            ++out.renderers_completed;
        }
    }catch(const Stop& s){out.status=s.status;out.site=s.site;}
     catch(const SnapshotBindingFailure& s){out.status=s.status;out.site=s.site;}
     catch(const MetadataWrapperFailure& s){out.status=game_base_status(s.status);out.site=s.site;}
    return out;
}
GameBaseResult<Address> managed_string_2ce718(Snapshot& image,std::string_view text,
    const SkyModelEnvironment& env,const SkyModelApi& api) {
    GameBaseResult<Address> out;
    try {out.value=Replay(image,env,api).string(text);}
    catch(const Stop& s){out.status=s.status;out.site=s.site;}
    catch(const SnapshotBindingFailure& s){out.status=s.status;out.site=s.site;}
    catch(const MetadataWrapperFailure& s){out.status=game_base_status(s.status);out.site=s.site;}
    return out;
}
} // namespace rust_internal_re
