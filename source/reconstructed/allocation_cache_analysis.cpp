#include "allocation_cache_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {GameBaseStatus status;Rva site;};
class CacheReplay {
public:
    Snapshot& image;const AllocationCacheEnvironment& env;const AllocationCacheApi& api;
    template<class T>T read(Address p,Rva site){
        const auto value=image.read<T>(p);if(!value)__builtin_trap();return *value;
    }
    template<class T>void write(Address p,T value,Rva site){
        if(!image.write(p,value))__builtin_trap();
    }
    template<class T>T global(Rva p,Rva site){return read<T>(env.module+p,site);}
    template<class T>void put(Rva p,T value,Rva site){write(env.module+p,value,site);}
    Address checked(Address value,MetadataStatus status,Rva site){
        switch(status){
        case MetadataStatus::complete:return value;
        case MetadataStatus::missing_dependency:__builtin_trap();
        case MetadataStatus::unreadable_snapshot:__builtin_trap();
        case MetadataStatus::analysis_limit:__builtin_trap();
        }
        __builtin_trap();
    }
    Address literal(re::ReStringView value,ReUSize offset,Rva site){
        if(!env.literal_storage||offset>env.literal_capacity||value.size()+1>env.literal_capacity-offset)
            __builtin_trap();
        const Address out=env.literal_storage+offset;
        for(ReUSize i=0;i<value.size();++i)write(out+i,static_cast<ReU8>(value[i]),site);
        write(out+value.size(),ReU8{},site);return out;
    }
    Address klass(re::ReStringView name,re::ReStringView ns,Rva site){
        const auto cn=literal(name,0,site),space=literal(ns,128,site);
        const auto result=resolve_class_334224(api.metadata,cn,space,env.limits);
        return checked(result.value,result.status,site);
    }
    void context(Rva context_cell,Address target,Address root){
        if(api.observe_context)api.observe_context(root,env.module+context_cell,target);
    }
    Address curve(){
        auto flags=global<ReU32>(0x3f7f98,0x32c2d9);Address target;
        if(!(flags&1)){
            put(0x3f7f98,flags|1,0x32c2f8);
            const Address c=klass("AnimationCurve","UnityEngine",0x32c362);
            const auto method=select_parameter_method_3349ac(image,api.metadata,c,
                literal("Evaluate",256,0x32c319),-1,literal("",320,0x32c2fe),-1,env.limits);
            target=read<Address>(checked(method.value,method.status,0x32c379),0x32c388);
            flags=global<ReU32>(0x3f7f98,0x32c38b);
            put(0x3f7f90,target,0x32c391);
        }else target=global<Address>(0x3f7f90,0x32c39a);
        if(!(flags&2)){
            const auto root=global<Address>(0x3d5e60,0x32c3a5);
            put(0x3f7f98,flags|2,0x32c3b9);
            context(0x3f7fa0,target,root);
        }
        return target;
    }
    Address object(Address klass_value){
        auto flags=global<ReU32>(0x3d7168,0x2e3cea);Address target;
        if(!(flags&1)){
            put(0x3d7168,flags|1,0x2e3cfa);
            const auto result=resolve_metadata_export(image,env.module,env.initial_loader_node,0x2dee4c,env.limits);
            target=checked(result.value,result.status,0x2e3d00);
            put(0x3d7160,target,0x2e3d08);
            flags=global<ReU32>(0x3d7168,0x2e3d0f);
        }else target=global<Address>(0x3d7160,0x2e3d17);
        if(!(flags&2)){
            const auto root=global<Address>(0x3d5e60,0x2e3d22);
            put(0x3d7168,flags|2,0x2e3d36);
            context(0x3d7170,target,root);
        }
        // [C]2e3d41 reloads root even for an already prepared context.
        (void)global<Address>(0x3d5e60,0x2e3d41);
        // [C] Wrapper2cb9fc: one argument and return-kind low byte zero.
        put(0x3d7170+0x80,Address{1},0x2cba14);
        put(0x3d7170+0x88,klass_value,0x2cba2b);
        write(env.module+0x3d7170+0xd0,ReU8{},0x2cba36);
        // [U] Remaining +d1..d3 originate in uninitialized native stack bytes;
        // return-slot pointer +78 is executor-only and deliberately unmaterialized.
        if(!api.object_new)__builtin_trap();
        return api.object_new(target,env.module+0x3d7170,klass_value);
    }
};
template<class T,class F>GameBaseResult<T> guarded(F&& action){
    {return {action()};}
}
template<class T>T binding_value(GameBaseResult<T> result){
    if(result.status!=GameBaseStatus::complete)
        __builtin_trap();
    return result.value;
}
}
GameBaseResult<Address> prepare_curve_cache_32c2d9(Snapshot& s,const AllocationCacheEnvironment& e,
    const AllocationCacheApi& a){return guarded<Address>([&]{return CacheReplay{s,e,a}.curve();});}
GameBaseResult<float> evaluate_prepared_curve_32b728(Snapshot& s,Address target,Address receiver,float argument,
    const AllocationCacheEnvironment& e,const AllocationCacheApi& a){
    return guarded<float>([&]{
        CacheReplay x{s,e,a};
        // [C]32c3cf acquires root after random and before wrapper argument stores.
        (void)x.global<Address>(0x3d5e60,0x32c3cf);
        // [C] Known wrapper stores. Uninitialized high argument-slot bytes, home
        // word +d2 and executor return-slot pointer are not invented as zeros.
        x.put(0x3f7fa0+0x88,receiver,0x32b770);
        x.write(e.module+0x3f7fa0+0x90,argument,0x32b770);
        x.put(0x3f7fa0+0xd0,ReU16{0x100},0x32b778);
        x.put(0x3f7fa0+0x80,Address{2},0x32b781);
        if(!a.evaluate_curve)__builtin_trap();
        return a.evaluate_curve(target,e.module+0x3f7fa0,receiver,argument);
    });
}
GameBaseResult<float> evaluate_curve_32b728(Snapshot& s,Address receiver,float argument,
    const AllocationCacheEnvironment& e,const AllocationCacheApi& a){
    const auto prepared=prepare_curve_cache_32c2d9(s,e,a);
    if(prepared.status!=GameBaseStatus::complete)return {0,prepared.status,prepared.site};
    return evaluate_prepared_curve_32b728(s,prepared.value,receiver,argument,e,a);
}
GameBaseResult<Address> allocate_object_2e3ce4(Snapshot& s,Address klass,
    const AllocationCacheEnvironment& e,const AllocationCacheApi& a){
    return guarded<Address>([&]{return CacheReplay{s,e,a}.object(klass);});
}
GameBaseResult<Address> allocate_melee_hit_test_2e1432(Snapshot& s,const AllocationCacheEnvironment& e,
    const AllocationCacheApi& a){
    return guarded<Address>([&]{
        CacheReplay x{s,e,a};
        const Address klass=x.klass("%9336ed0872d98b8fff022d5de288263d18c10462","",0x2e146e);
        if(!sample_pointer_range(klass))return Address{};
        const Address object=x.object(klass);
        return sample_pointer_range(object)?object:Address{};
    });
}
ProjectileBoundaries bind_projectile_curve_cache(Snapshot& s,const AllocationCacheEnvironment& e,
    const AllocationCacheApi& a,ProjectileBoundaries calls){
    auto prepared=re::re_make_unique<re::ReOptional<Address>>();
    auto* prepared_ptr=prepared.get();
    calls.prepare_curve_32c2d9=[&s,e,a,prepared_ptr]{
        prepared_ptr->reset();*prepared_ptr=binding_value(prepare_curve_cache_32c2d9(s,e,a));
    };
    calls.evaluate_curve_32b728=[&s,e,a,prepared_ptr](Address receiver,float arg){
        if(!*prepared_ptr)__builtin_trap();
        return binding_value(evaluate_prepared_curve_32b728(s,**prepared_ptr,receiver,arg,e,a));
    };
    return calls;
}
InteractionCalls bind_interaction_hit_allocation(Snapshot& s,const AllocationCacheEnvironment& e,
    const AllocationCacheApi& a,InteractionCalls calls){
    calls.allocate_hit_test=[&s,e,a]{return binding_value(allocate_melee_hit_test_2e1432(s,e,a));};
    return calls;
}
} // namespace rust_internal_re
