#include "interaction_backend_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
struct Backend {
    Snapshot& image;const InteractionBackendEnvironment& env;const InteractionBackendApi& api;
    template<class T>T read(Address p,Rva site) {
        const auto value=image.read<T>(p);
        if(!value)__builtin_trap();
        return *value;
    }
    template<class T>void put(Rva r,T value,Rva site) {
        if(!image.write(env.module+r,value))__builtin_trap();
    }
    template<class F>const F& need(const F& f,Rva site) {
        if(!f)__builtin_trap();
        return f;
    }
    Address literal(re::ReStringView text,ReUSize offset,Rva site) {
        if(!env.literal_storage||offset>env.literal_capacity||text.size()+1>env.literal_capacity-offset)
            __builtin_trap();
        const Address p=env.literal_storage+offset;
        for(ReUSize n=0;n<=text.size();++n)
            if(!image.write(p+n,n==text.size()?char(0):text[n]))__builtin_trap();
        return p;
    }
    Address checked(MetadataResult value,Rva site) {
        if(value.status!=MetadataStatus::complete)
            __builtin_trap();
        return value.value;
    }
    InteractionBackendCall prepare(bool physics) {
        const Rva flags=physics?0x3e5728:0x3e4bc0,target=physics?0x3e5720:0x3e4bb8,
            context=physics?0x3e5730:0x3e4bd0,wrapper=physics?0x2e8fac:0x2e5bec;
        auto bits=read<ReU32>(env.module+flags,wrapper);Address code;
        if(!(bits&1)) {
            put(flags,bits|1,wrapper);
            const auto name=literal(physics?"Physics":"RunConsoleCommand",0,wrapper);
            const auto ns=literal(physics?"UnityEngine":"",64,wrapper);
            const auto method=literal(physics?"Raycast":"ClientRun",128,wrapper);
            const auto parameter=literal("",192,wrapper);
            const auto klass=checked(resolve_class_334224(api.shared.metadata,name,ns,env.limits),0x334224);
            const auto selected=physics?select_counted_method_334a90(image,api.shared.metadata,klass,method,6,env.limits):
                select_parameter_method_3349ac(image,api.shared.metadata,klass,method,-1,parameter,-1,env.limits);
            code=read<Address>(checked(selected,physics?0x334a90:0x3349ac),physics?0x2e9049:0x2e5cc3);
            bits=read<ReU32>(env.module+flags,physics?0x2e904c:0x2e5cc6);
            put(target,code,physics?0x2e9052:0x2e5ccc);
        } else code=read<Address>(env.module+target,wrapper);
        if(!(bits&2)) {
            const auto dispatcher=read<Address>(env.module+0x3d5e60,physics?0x2e9066:0x2e5ce0);
            put(flags,bits|2,physics?0x2e907a:0x2e5cf4);
            need(api.observe_context,0x2cbd24)({wrapper,dispatcher,code,env.module+context});
        }
        return {wrapper,physics?read<Address>(env.module+0x3d5e60,0x2e9093):Address(0),code,env.module+context};
    }
};
template<class T>T value(GameBaseResult<T> result) {
    if(result.status!=GameBaseStatus::complete)__builtin_trap();
    return result.value;
}
}
GameBaseResult<bool> raycast_2e8fac(Snapshot& image,Vec3 origin,Vec3 direction,float distance,
    ReU32 mask,re::ReSpan<ReByte> hit,ReI32 mode,
    const InteractionBackendEnvironment& env,const InteractionBackendApi& api) {
    GameBaseResult<bool> out;Backend b{image,env,api};
    {const auto call=b.prepare(true);out.value=b.need(api.raycast,0x2e473c)(call,origin,direction,hit,distance,mask,mode)!=0;}
    return out;
}
GameBaseResult<bool> close_loot_2e5bec(Snapshot& image,const InteractionBackendEnvironment& env,const InteractionBackendApi& api) {
    GameBaseResult<bool> out;Backend b{image,env,api};
    {
        if(!b.read<Address>(env.module+0x3e4240,0x2e5bfe))return out;
        auto call=b.prepare(false);
        const SkyModelEnvironment shared{env.module,env.literal_storage,env.literal_capacity};
        const Address command=value(managed_string_2ce718(image,"inventory.endloot",shared,api.shared));
        const Address console=b.read<Address>(env.module+0x3e4240,0x2e5d10);
        call.dispatcher=b.read<Address>(env.module+0x3d5e60,0x2e5d1e);
        b.need(api.console,0x2d2094)(call,console,command);out.value=true;
    }
    return out;
}
InteractionCalls bind_interaction_backend(Snapshot& image,const InteractionBackendEnvironment& env,
    const InteractionBackendApi& api,InteractionCalls calls) {
    const auto predicate=calls.predicate;
    const auto action=calls.action;
    calls.predicate=[&image,env,api,predicate](const InteractionCall& c) {
        if(c.rva==0x2e8fac)return value(raycast_2e8fac(image,c.first,c.second,c.scalar,ReU32(c.integer),{},0,env,api));
        if(!predicate)__builtin_trap();
        return predicate(c);
    };
    calls.action=[&image,env,api,action](const InteractionCall& c) {
        if(c.rva==0x2e5bec){(void)value(close_loot_2e5bec(image,env,api));return;}
        if(!action)__builtin_trap();
        action(c);
    };
    return calls;
}
} // namespace rust_internal_re
