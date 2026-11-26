#include "hook_setup_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
struct Stop {GameBaseStatus status;Rva site;};
template<class F,class... A>auto effect(const F& f,Rva site,A&&... args) {
    if(!f)__builtin_trap();
    return f(re::re_forward<A>(args)...);
}
class Setup {
public:
    Snapshot& im;const HookSetupEnvironment& e;const HookSetupEffects& a;
    template<class T>T read(Address p,Rva site){auto v=im.read<T>(p);if(!v)__builtin_trap();return *v;}
    template<class T>void write(Address p,T v,Rva site){if(!im.write(p,v))__builtin_trap();}
    template<class T>T global(Rva r,Rva site){return read<T>(e.module+r,site);}
    template<class T>void put(Rva r,T v,Rva site){write(e.module+r,v,site);}
    Address checked(Address v,MetadataStatus s,Rva site){
        if(s==MetadataStatus::missing_dependency)__builtin_trap();
        if(s==MetadataStatus::unreadable_snapshot)__builtin_trap();
        if(s==MetadataStatus::analysis_limit)__builtin_trap();
        return v;
    }
    Address checked(MetadataResult r,Rva site){return checked(r.value,r.status,site);}
    Address literal(re::ReStringView text,ReUSize offset,Rva site){
        if(offset>e.literal_capacity||text.size()+1>e.literal_capacity-offset)
            __builtin_trap();
        const Address p=e.literal_storage+offset;
        for(ReUSize i=0;i<text.size();++i)write(p+i,ReU8(text[i]),site);
        write(p+text.size(),ReU8{},site);return p;
    }
    re::ReString string(Address p,Rva site){
        re::ReString out;
        for(ReUSize i=0;i<e.limits.string_bytes;++i){const char c=read<char>(p+i,site);if(!c)return out;out+=c;}
        __builtin_trap();
    }
    Address klass(re::ReStringView name,Rva site){
        const auto cn=literal(name,0,site),ns=literal("",128,site);
        return checked(resolve_class_334224(a.metadata,cn,ns,e.limits),site);
    }
    Address named(Address c,re::ReStringView name,Rva site){
        return checked(select_method_33416c(im,a.metadata,c,literal(name,256,site),-1,0,e.limits),site);
    }
    Address parameter(Address c,re::ReStringView name,Rva site){
        const auto method=literal(name,256,site),param=literal("",384,site);
        return checked(select_parameter_method_3349ac(im,a.metadata,c,method,-1,param,-1,e.limits),site);
    }
    Address export_target(Rva getter,Rva site){
        const auto r=resolve_metadata_export(im,e.module,e.initial_loader_node,getter,e.limits);
        return checked(r.value,r.status,site);
    }
    HookDetectionCall descriptor(Rva wrapper,Rva context,Address target,Rva executor){
        return {wrapper,executor,global<Address>(0x3d5e60,wrapper),e.module+context,target};
    }
    void observe(const HookDetectionCall& d){if(a.observe_context)a.observe_context(d);}
    Address cache(Rva flags_cell,Rva target_cell,Rva context,Rva getter,Rva wrapper,Rva executor){
        auto flags=global<ReU32>(flags_cell,wrapper);Address target;
        if(!(flags&1)){
            put(flags_cell,flags|1,wrapper);
            target=export_target(getter,wrapper);put(target_cell,target,wrapper);
            flags=global<ReU32>(flags_cell,wrapper);
        }else target=global<Address>(target_cell,wrapper);
        if(!(flags&2)){put(flags_cell,flags|2,wrapper);observe(descriptor(wrapper,context,target,executor));}
        return target;
    }
    Address container(){
        const Address p=effect(a.reserve_owned,0x36f5d5,ReUSize{0x18});
        // [C] 2d4758 ->2ceb10 ->2d4180: exactly three zero qwords.
        if(p)for(unsigned offset:{0u,8u,16u})write(p+offset,Address{},0x2d4182);
        put(0x3ffff8,p,0x36f5e7);return p;
    }
    ReI32 loot_value(){
        auto flags=global<ReU32>(0x3f1910,0x3217f0);Address target;
        if(!(flags&1)){
            target=global<Address>(0x3d6f00,0x3217fb)+0x544fe10;
            flags|=1;put(0x3f1910,flags,0x32180c);put(0x3f1908,target,0x321812);
        }else target=global<Address>(0x3f1908,0x32181b);
        if(!(flags&2)){put(0x3f1910,flags|2,0x321831);observe(descriptor(0x3217ec,0x3f1920,target,0x2dda18));}
        const auto d=descriptor(0x3217ec,0x3f1920,target,0x2dda18);
        return effect(a.loot_value,0x321858,d);
    }
    Address allocate(Address c){
        const auto target=cache(0x3f1820,0x3f1818,0x3f1830,0x2dee4c,0x3218c4,0x2cb9fc);
        const auto d=descriptor(0x3218c4,0x3f1830,target,0x2cb9fc);
        return effect(a.object_new,0x321937,d,c);
    }
    ReI32 parameter_count(Address method){
        const auto target=cache(0x3e5ce8,0x3e5ce0,0x3e5cf0,0x2ee70c,0x320b04,0x2cb9fc);
        const auto d=descriptor(0x320b04,0x3e5cf0,target,0x2cb9fc);
        return effect(a.method_parameter_count,0x320b77,d,method);
    }
    HookRecord record(Rva r){
        HookRecord rec;
        rec.original=global<Address>(r, r);rec.method_info=global<Address>(r+8,r);
        rec.replaced_cell=global<Address>(r+0x10,r);rec.detour=global<Address>(r+0x28,r);
        rec.kind=global<ReU32>(r+0x30,r);return rec;
    }
    void save(Rva r,const HookRecord& rec){
        put(r,rec.original,r);put(r+8,rec.method_info,r);put(r+0x10,rec.replaced_cell,r);
        put(r+0x28,rec.detour,r);put(r+0x30,rec.kind,r);
    }
    bool install(const HookDefinition& h,Address expected=0){
        auto rec=record(h.saved_original);
        if(h.installer!=0x3163d8&&rec.kind)return true;
        Address c=klass(h.klass,h.install_site);
        const Address detour=e.module+h.detour;
        bool ok=false;
        if(h.installer==0x2ea90c){
            const Address method=c?named(c,h.method,h.install_site):0;
            ok=install_method_info_copy(im,rec,method,detour);
            if(method&&!im.contains(method,8)){
                save(h.saved_original,rec);__builtin_trap();
            }
        }else if(h.installer==0x2ea978){
            const Address method=c?named(c,h.method,h.install_site):0;
            const Address code=method?read<Address>(method,h.install_site):0;
            if(code)c=klass(h.klass,h.install_site); // [C] Second lookup2ea9d5.
            ok=install_class_scan_copy(im,rec,c,code,detour);
            if(!ok&&c&&code&&code!=detour&&!im.contains(rec.replaced_cell,8)){
                save(h.saved_original,rec);__builtin_trap();
            }
        }else if(h.installer==0x2eaa28){
            const Address code=c?read<Address>(c+0x1d8,h.install_site):0;
            const Address method=code?checked(method_by_pointer_334960(im,a.metadata,c,code,e.limits),h.install_site):0;
            const Address first=method?read<Address>(method,h.install_site):0;
            ok=install_resolved_method_scan_copy(im,rec,c,method,detour);
            if(!ok&&first&&first!=detour&&!im.contains(c,0x1508))__builtin_trap();
        }else{
            const ReUSize start=h.installer==0x316458?0x328:0x138;
            EntryEligibility eligibility;
            bool walk=c&&sample_pointer_range(c+start);
            if(h.installer==0x316458&&c){
                const Address first=read<Address>(c+start,h.install_site);
                walk=walk&&first;
                if(walk){
                    eligibility.matched_method_info=checked(method_by_pointer_334960(im,a.metadata,c,first,e.limits),h.install_site);
                    if(eligibility.matched_method_info)eligibility.helper_320b04_result=parameter_count(eligibility.matched_method_info);
                    walk=eligibility.matched_method_info&&eligibility.helper_320b04_result&&*eligibility.helper_320b04_result==0;
                }
                ok=install_entry_316458_copy(im,rec,c,expected,detour,eligibility);
            }else ok=install_entry_table_copy(im,rec,c,expected,detour,start);
            if(!ok&&walk){
                Address cell=c+start;
                for(ReUSize n=0;;++n,cell+=16){
                    if(n>=e.limits.iterations)__builtin_trap();
                    const auto value=read<Address>(cell,h.install_site);
                    if(sample_pointer_range(value)||value==expected)break;
                }
            }
        }
        save(h.saved_original,rec);return ok;
    }
};
template<class T,class F>GameBaseResult<T> guarded(F&& f){
    {return {f()};}
}
template<class F>HookSetupResult setup_guard(F&& f){
    HookSetupResult out;
    const auto r=guarded<bool>([&]{f(out);return true;});out.status=r.status;out.site=r.site;return out;
}
}
GameBaseResult<Address> initialize_container_36f5cc(Snapshot& s,const HookSetupEnvironment& e,const HookSetupEffects& a){
    return guarded<Address>([&]{return Setup{s,e,a}.container();});
}
HookSetupResult bootstrap_signatures_334bf4(Snapshot& s,HookSetupState& state,const HookSetupEnvironment& e,const HookSetupEffects& a){
    return setup_guard([&](HookSetupResult& out){
        Setup x{s,e,a};const auto& api=a.signature;ReUSize work=0;
        const auto step=[&]{if(work++>=e.limits.iterations)__builtin_trap();};
        const Address domain=effect(api.exports.domain_get_33479c,0x334c0d);
        const auto assemblies=effect(api.exports.assemblies_33480c,0x334c23,domain);
        for(Address assembly:assemblies){
            step();const Address image=x.read<Address>(assembly,0x334c4b);
            if(!effect(api.class_count_334760,0x334c51,image))continue;
            ReU32 index=0;
            do{
                step();const auto c=effect(api.class_at_334958,0x334c65,image,re::re_bit_cast<ReI32>(index));
                if(c){
                    const auto ns=x.read<Address>(c+0x18,0x334c7f),name=x.read<Address>(c+0x10,0x334c83);
                    re::ReString prefix;
                    if(ns&&x.read<char>(ns,0x334c8c))prefix=x.string(ns,0x334c95)+"::";
                    prefix+=x.string(name,0x334cc2);
                    Address cursor=0;
                    for(;;){
                        step();const Address method=effect(api.exports.next_method_334660,0x334f9c,c,cursor);
                        if(!method)break;
                        re::ReString signature=prefix+"::"+x.string(effect(api.method_name_3352c0,0x334cd8,method),0x334d11);
                        const auto count=effect(api.exports.parameter_count_335140,0x334d23,method);
                        const auto type=[&](Address t){auto name=x.string(effect(api.type_name_3352c8,0x334d70,t),0x334d7c);return name.substr(name.find('.')+1);};
                        if(count!=0){
                            signature+='(';
                            ReU32 param=0, n=ReU32(effect(api.exports.parameter_count_335140,0x334d56,method));
                            while(param<n){
                                step();signature+=type(effect(api.parameter_type_334950,0x334d68,method,param))+",";
                                ++param;n=ReU32(effect(api.exports.parameter_count_335140,0x334e0a,method));
                            }
                            signature.resize(signature.size()-1);signature+="): ";
                        }else signature+="(): ";
                        signature+=type(effect(api.return_type_3352d8,0x334e23,method));
                        const auto key=signature_crc_334768(re::ReStringView(signature).substr(0,signature.find('\0')));
                        state.signatures.insert(key,method);++out.methods_cached;
                    }
                }
                ++index;
            }while(Address(ReI64(re::re_bit_cast<ReI32>(index)))<effect(api.class_count_334760,0x334fbc,image));
        }
    });
}
HookSetupResult initialize_hooks_315c34(Snapshot& s,HookSetupState& state,const HookSetupEnvironment& e,const HookSetupEffects& a){
    return setup_guard([&](HookSetupResult& out){
        Setup x{s,e,a};x.container();re::ReString line;line.reserve(4);
        const auto insert=[&]{if(!line.empty()&&line[line.size()-1]=='\r')line.resize(line.size()-1);if(line.size()==4)state.codes.push_back(line);};
        for(ReUSize i=0;i<0xea5e;++i){
            const char c=x.read<char>(e.module+0x23a430+i,0x315c70);++out.bytes_consumed;
            if(c=='\n'){insert();line.clear();}else line+=c;
        }
        if(!line.empty())insert();
        for(const auto& h:hook_definitions()){
            if(h.install_site==0x3621f2)continue;
            Address expected=0;
            if(h.install_site==0x31614b)expected=x.global<Address>(0x3d6f00,0x31610e)+0x3f464e0;
            if(h.install_site==0x31621a||h.install_site==0x3162e9||h.install_site==0x3163b6){
                const auto c=x.klass(h.klass,h.install_site);
                expected=x.read<Address>(x.parameter(c,h.method,h.install_site),h.install_site);
            }
            const bool ok=x.install(h,expected);out.installations.push_back({h.install_site,ok});
            // [C] Caller continues after either installer boolean result.
        }
    });
}
HookSetupResult initialize_client_362118(Snapshot& s,HookSetupState& state,const HookSetupEnvironment& e,const HookSetupEffects& a){
    return setup_guard([&](HookSetupResult& out){
        Setup x{s,e,a};const auto base=effect(a.module_handle,0x36213b,re::ReStringView("GameAssembly.dll"));
        if(!base)__builtin_trap();
        x.put(0x3d6f00,*base,0x362140);
        const auto bootstrap=bootstrap_signatures_334bf4(s,state,e,a);
        out.methods_cached=bootstrap.methods_cached;
        if(bootstrap.status!=GameBaseStatus::complete)__builtin_trap();
        state.directory="C:\\Spotify";state.configuration="DefaultCfg.bin";
        for(const auto& h:hook_definitions())if(h.install_site==0x3621f2)out.installations.push_back({h.install_site,x.install(h)});
    });
}
GameBaseResult<Address> decode_loot_name_32189c(Snapshot& s,Address p){
    return guarded<Address>([&]{
        const auto flag=s.read<ReU8>(p+0x1f);if(!flag)__builtin_trap();
        if(*flag)for(unsigned i=0;i<32;++i){
            const auto byte=s.read<ReU8>(p+i);if(!byte)__builtin_trap();
            // [C] i is0..31, so native magic division quotient is zero.
            if(!s.write(p+i,ReU8(*byte^ReU8(i+0x37))))__builtin_trap();
        }
        return p;
    });
}
GameBaseResult<ReI32> loot_value_3217ec(Snapshot& s,const HookSetupEnvironment& e,const HookSetupEffects& a){
    return guarded<ReI32>([&]{return Setup{s,e,a}.loot_value();});
}
GameBaseResult<Address> allocate_loot_3218c4(Snapshot& s,Address c,const HookSetupEnvironment& e,const HookSetupEffects& a){
    return guarded<Address>([&]{return Setup{s,e,a}.allocate(c);});
}
GameBaseResult<Address> replay_loot_setup_3215cc(Snapshot& s,Address icon,ReU8 second,bool enabled,
    const HookSetupEnvironment& e,const HookSetupEffects& a){
    return guarded<Address>([&]{
        Setup x{s,e,a};
        if(!enabled){
            auto flags=x.global<ReU32>(0x3f1a58,0x321761);Address target;
            if(!(flags&4)){flags|=4;x.put(0x3f1a58,flags,0x321776);target=x.global<Address>(0x3e6870,0x2ce5d8);x.put(0x3f1b38,target,0x321781);}
            else target=x.global<Address>(0x3f1b38,0x32178a);
            if(!(flags&8)){x.put(0x3f1a58,flags|8,0x3217ad);x.observe(x.descriptor(0x3215cc,0x3f1b40,target,0x3214f4));}
            const auto d=x.descriptor(0x3215cc,0x3f1b40,target,0x3214f4);effect(a.original_loot,0x3217cc,d,icon,second);return Address{};
        }
        const Address c=x.klass("ItemIcon/<>c__DisplayClass120_0",0x32162a);
        if(!sample_pointer_range(c))return Address{};
        const Address closure=x.allocate(c);if(!sample_pointer_range(closure))return Address{};
        x.write(closure+0x10,icon,0x32165d);
        const auto value=x.loot_value();x.write(closure+0x18,Address(ReI64(value)),0x321669);
        auto flags=x.global<ReU32>(0x3f1a58,0x32166d);
        x.write(closure+0x20,Address{},0x321673);Address target;
        if(!(flags&1)){
            x.put(0x3f1a58,flags|1,0x32168b);
            const Address callback_class=x.klass("ItemIcon/<>c__DisplayClass120_0",0x3216f0);
            const Address method=x.parameter(callback_class,"<TryToMove>b__0",0x321707);
            flags=x.global<ReU32>(0x3f1a58,0x32170c);
            target=x.read<Address>(method,0x321712);x.put(0x3f1a50,target,0x321715);
        }else target=x.global<Address>(0x3f1a50,0x32171e);
        if(!(flags&2)){x.put(0x3f1a58,flags|2,0x321734);x.observe(x.descriptor(0x3215cc,0x3f1a60,target,0x2cb9fc));}
        const auto d=x.descriptor(0x3215cc,0x3f1a60,target,0x2cb9fc);effect(a.loot_callback,0x32175a,d,closure);return closure;
    });
}
} // namespace rust_internal_re
