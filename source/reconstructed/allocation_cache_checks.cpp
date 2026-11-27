#include "allocation_cache_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
void require(bool ok,const char* why){if(!ok){ __builtin_trap(); }}
template<class T>T get(const Snapshot& s,Address p){const auto v=s.read<T>(p);require(bool(v),"cache fixture read");return *v;}
template<class T>void put(Snapshot& s,Address p,T v){require(s.write(p,v),"cache fixture write");}
re::ReString text(const Snapshot& s,Address p){
    re::ReString out;
    for(ReUSize i=0;i<128;++i){const char c=get<char>(s,p+i);if(!c)return out;out.push_back(c);}
    { /* FREESTANDING_TODO: was throw runtime_error("cache string unterminated") */ }
    return out;
}
struct Fixture {
    static constexpr Address base=0x100000,klass=0x110000,method=0x111000,name=0x112000;
    static constexpr Address target=0x12345678,object=0x119000;
    Snapshot image{base,re::ReVector<ReByte>(0x500000)};
    AllocationCacheEnvironment env{base,0,base+0x1000};
    AllocationCacheApi api;
    ReUSize class_calls{},method_calls{},allocations{},evaluations{},observations{};
    re::ReString expected_class="AnimationCurve",expected_ns="UnityEngine";
    Fixture(){
        put(image,method,target);put(image,method+0x18,name);
        for(ReUSize i=0;i<9;++i)put(image,name+i,"Evaluate"[i]);
        put(image,base+0x3d5e60,Address{0x99887766});
        api.metadata.domain_get_33479c=[]{return Address{0x150000};};
        api.metadata.assemblies_33480c=[](Address d){require(d==0x150000,"domain argument");return re::ReVector<Address>{0x151000};};
        api.metadata.assembly_image_3344b0=[](Address a){require(a==0x151000,"assembly argument");return Address{0x152000};};
        api.metadata.class_from_name_334528=[this](Address im,Address ns,Address cn){
            require(im==0x152000&&text(image,ns)==expected_ns&&text(image,cn)==expected_class,"class lookup literal and order");++class_calls;return klass;
        };
        api.metadata.next_method_334660=[this](Address c,Address& cursor){require(c==klass,"curve class");++method_calls;if(cursor)return Address{};cursor=1;return method;};
        api.evaluate_curve=[this](Address t,Address context,Address receiver,float arg){
            require(t==target&&context==base+0x3f7fa0&&receiver==0x118000,"typed curve inputs");++evaluations;return arg*3.0f;
        };
        api.object_new=[this](Address t,Address context,Address c){
            require(t==target&&context==base+0x3d7170&&c==klass,"typed object allocation inputs");++allocations;return object;
        };
        api.observe_context=[this](Address root,Address context,Address t){
            require(root==0x99887766&&t==target,"context observation inputs");
            require(context==base+0x3f7fa0||context==base+0x3d7170,"known context");++observations;
        };
    }
};
}
void check_allocation_cache_reconstruction(){
    {
        Fixture f;const Address begin=f.base+0x3f7f90;
        Snapshot narrow(begin,re::ReVector<ReByte>(0x200));put(narrow,begin,f.target);put(narrow,begin+8,ReU32(1));
        const auto result=prepare_curve_cache_32c2d9(narrow,f.env,f.api);
        require(result.status==GameBaseStatus::missing_bytes&&result.site==0x32c3a5,"curve root read precedes setup flag");
        require(get<ReU32>(narrow,begin+8)==1&&f.observations==0,"missing curve root does not commit bit2");
        const Address allocator_begin=f.base+0x3d7160;Snapshot allocator(allocator_begin,re::ReVector<ReByte>(0x200));
        put(allocator,allocator_begin,f.target);put(allocator,allocator_begin+8,ReU32(1));
        const auto allocation=allocate_object_2e3ce4(allocator,f.klass,f.env,f.api);
        require(allocation.status==GameBaseStatus::missing_bytes&&allocation.site==0x2e3d22,"allocator root read precedes setup flag");
        require(get<ReU32>(allocator,allocator_begin+8)==1&&f.observations==0,"missing allocator root does not commit bit2");
        put(narrow,begin+8,ReU32(3));put(narrow,f.base+0x3f7fa0+0x80,Address(99));
        const auto effect=evaluate_curve_32b728(narrow,0x118000,0.5f,f.env,f.api);
        require(effect.status==GameBaseStatus::missing_bytes&&effect.site==0x32c3cf,"warm curve still acquires postrandom root");
        require(get<Address>(narrow,f.base+0x3f7fa0+0x80)==99&&f.evaluations==0,"warm root failure precedes wrapper stores/effect");
        put(allocator,allocator_begin+8,ReU32(3));put(allocator,f.base+0x3d7170+0x80,Address(99));
        const auto warm=allocate_object_2e3ce4(allocator,f.klass,f.env,f.api);
        require(warm.status==GameBaseStatus::missing_bytes&&warm.site==0x2e3d41,"warm allocator still reloads root");
        require(get<Address>(allocator,f.base+0x3d7170+0x80)==99&&f.allocations==0,"allocator root failure precedes wrapper stores/effect");
    }
    {
        Fixture f;f.api.metadata=bind_metadata_wrappers(f.image,f.base,{});
        const auto result=prepare_curve_cache_32c2d9(f.image,f.env,f.api);
        require(result.status==GameBaseStatus::missing_boundary&&result.site==0x3339fc,"concrete metadata wrapper failure becomes cache result");
        require(get<ReU32>(f.image,f.base+0x3f7f98)==1&&get<ReU32>(f.image,f.base+0x3f9860)==1,"both lazy flags survive composed failure");
    }
    {
        Fixture f;f.api.evaluate_curve={};
        const auto bound=bind_projectile_curve_cache(f.image,f.env,f.api);bool stopped=false;
        {bound.prepare_curve_32c2d9();(void)bound.evaluate_curve_32b728(0x118000,0.5f);}
        require(stopped&&get<ReU32>(f.image,f.base+0x3f7f98)==3,"cache binder preserves typed status and prior writes");
    }
    {
        Fixture f;
        put(f.image,f.base+0x3f7fa0+0x94,ReU32{0xa5a5a5a5});
        put(f.image,f.base+0x3f7fa0+0xd2,ReU16{0xbeef});
        const auto first=evaluate_curve_32b728(f.image,0x118000,0.25f,f.env,f.api);
        require(first.status==GameBaseStatus::complete&&first.value==0.75f,"curve typed result");
        require(f.class_calls==1&&f.method_calls==1&&f.observations==1,"first curve metadata/setup");
        require(get<ReU32>(f.image,f.base+0x3f7f98)==3&&get<Address>(f.image,f.base+0x3f7f90)==f.target,"curve cache writes");
        require(get<Address>(f.image,f.base+0x3f7fa0+0x88)==0x118000&&get<float>(f.image,f.base+0x3f7fa0+0x90)==0.25f,"curve argument packing");
        require(get<ReU32>(f.image,f.base+0x3f7fa0+0x94)==0xa5a5a5a5&&get<ReU16>(f.image,f.base+0x3f7fa0+0xd2)==0xbeef,"unknown stack bits not zeroed");
        require(get<ReU16>(f.image,f.base+0x3f7fa0+0xd0)==0x100&&get<Address>(f.image,f.base+0x3f7fa0+0x80)==2,"curve wrapper tags");
        const auto again=evaluate_curve_32b728(f.image,0x118000,0.5f,f.env,f.api);
        require(again.value==1.5f&&f.class_calls==1&&f.method_calls==1&&f.observations==1&&f.evaluations==2,"warm curve skips metadata/setup");
        auto bound=bind_projectile_curve_cache(f.image,f.env,f.api);
        bound.prepare_curve_32c2d9();
        require(bound.evaluate_curve_32b728(0x118000,0.125f)==0.375f,"projectile concrete cache binding");
    }
    {
        Fixture f;auto bound=bind_projectile_curve_cache(f.image,f.env,f.api);bool stopped=false;
        {(void)bound.evaluate_curve_32b728(0x118000,0.5f);}
        require(stopped&&f.class_calls==0&&f.evaluations==0,"unprepared evaluator explicitly missing");
        bound.prepare_curve_32c2d9();
        // [C] An intervening random callback cannot trigger a second preparation.
        put(f.image,f.base+0x3f7f98,ReU32(0));put(f.image,f.base+0x3f7f90,Address(0xdeadbeef));
        require(bound.evaluate_curve_32b728(0x118000,0.5f)==1.5f&&f.class_calls==1&&f.observations==1,"prepared target survives intervening cache-cell changes");
        require(get<ReU32>(f.image,f.base+0x3f7f98)==0,"evaluation must not repeat metadata/flag stores");
    }
    {
        Fixture f;f.api.metadata={};
        const auto failed=prepare_curve_cache_32c2d9(f.image,f.env,f.api);
        require(failed.status==GameBaseStatus::missing_boundary&&get<ReU32>(f.image,f.base+0x3f7f98)==1,"flag precedes missing metadata dependency");
        // [C] Initialization bit stays set, so a later call uses the existing
        // target cell even though preceding resolution failed.
        const auto again=prepare_curve_cache_32c2d9(f.image,f.env,AllocationCacheApi{});
        require(again.status==GameBaseStatus::complete&&again.value==0&&get<ReU32>(f.image,f.base+0x3f7f98)==3,"failed first initialization is not silently retried");
        const auto effect=evaluate_curve_32b728(f.image,0x118000,0.5f,f.env,AllocationCacheApi{});
        require(effect.status==GameBaseStatus::missing_boundary&&effect.site==0x32b78c,"no default foreign curve success");
    }
    {
        Fixture f;f.api.metadata.next_method_334660=[](Address,Address&){return Address{};};
        const auto failed=prepare_curve_cache_32c2d9(f.image,f.env,f.api);
        require(failed.status==GameBaseStatus::missing_bytes&&failed.site==0x32c388,"null MethodInfo dereference remains explicit");
    }
    {
        Fixture f;f.expected_class="%9336ed0872d98b8fff022d5de288263d18c10462";f.expected_ns="";
        // [I] Seed the existing concrete export-resolver cache; setup still runs.
        put(f.image,f.base+0x3e3fc0,f.target);
        put(f.image,f.base+0x3d7170+0xd1,ReU8{0xa5});
        const auto first=allocate_melee_hit_test_2e1432(f.image,f.env,f.api);
        require(first.status==GameBaseStatus::complete&&first.value==f.object,"melee class and allocator result");
        require(f.class_calls==1&&f.allocations==1&&f.observations==1,"melee cold allocation cache");
        require(get<ReU32>(f.image,f.base+0x3d7168)==3&&get<Address>(f.image,f.base+0x3d7160)==f.target,"allocator cache cells");
        require(get<Address>(f.image,f.base+0x3d7170+0x88)==f.klass&&get<Address>(f.image,f.base+0x3d7170+0x80)==1,"allocator argument package");
        require(get<ReU8>(f.image,f.base+0x3d7170+0xd1)==0xa5,"allocator unknown stack bits retained");
        const auto again=allocate_melee_hit_test_2e1432(f.image,f.env,f.api);
        require(again.value==f.object&&f.class_calls==2&&f.allocations==2&&f.observations==1,"class resolution repeats, allocation export setup cached");
        auto bound=bind_interaction_hit_allocation(f.image,f.env,f.api);
        require(bound.allocate_hit_test()==f.object,"interaction concrete allocation binding");
        f.api.object_new=[](Address,Address,Address){return Address{3};};
        require(allocate_melee_hit_test_2e1432(f.image,f.env,f.api).value==0,"invalid allocated object rejected");
        f.api.object_new={};
        require(allocate_melee_hit_test_2e1432(f.image,f.env,f.api).status==GameBaseStatus::missing_boundary,"missing allocation implementation explicit");
    }
    {
        Fixture f;f.expected_class="%9336ed0872d98b8fff022d5de288263d18c10462";f.expected_ns="";
        f.api.metadata.class_from_name_334528=[](Address,Address,Address){return Address{};};
        const auto result=allocate_melee_hit_test_2e1432(f.image,f.env,f.api);
        require(result.status==GameBaseStatus::complete&&result.value==0&&f.allocations==0,"invalid class skips allocation cache");
        require(get<ReU32>(f.image,f.base+0x3d7168)==0,"invalid class no cache flag side effect");
    }
}
} // namespace rust_internal_re
