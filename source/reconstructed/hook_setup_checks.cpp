#include "hook_setup_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
void require_setup(bool v,const char* why){if(!v){ __builtin_trap(); }}
template<class T>void hs_put(Snapshot& s,Address p,T v){require_setup(s.write(p,v),"hook fixture write");}
void hs_text(Snapshot& s,Address p,re::ReStringView value){
    for(ReUSize i=0;i<value.size();++i)hs_put(s,p+i,value[i]);
    hs_put(s,p+value.size(),char{});
}
re::ReString hs_string(const Snapshot& s,Address p){
    re::ReString out;for(unsigned i=0;i<1024;++i){auto c=s.read<char>(p+i);require_setup(bool(c),"hook fixture string");if(!*c)return out;out+=*c;}
    { /* FREESTANDING_TODO: was throw runtime_error("hook fixture string limit") */ }
}
struct HookFixture {
    const Address b=0x1000000;
    Snapshot s{b,re::ReVector<ReByte>(0x500000)};
    OwnedSnapshotAllocator arena{s,b+0x4c0000,0x10000};
    HookSetupEnvironment env{b,0,b+0x4b0000,1024,{100000,4096}};
    HookSetupEffects api;
    HookSetupState state;
    re::ReMap<re::ReString,Address> classes;
    re::ReMap<Address,re::ReVector<Address>> methods;
    re::ReVector<HookDetectionCall> observations;
    ReUSize lookups{},allocations{},loot_values{},callbacks{},originals{};
    HookFixture(){
        ReUSize n=0;
        for(const auto& h:hook_definitions()){
            if(!classes.contains(re::ReString(h.klass)))classes[re::ReString(h.klass)]=b+0x410000+classes.size()*0x2000;
            const auto c=classes[re::ReString(h.klass)],m=b+0x460000+n*0x100,name=b+0x468000+n*0x100;
            hs_text(s,name,h.method);hs_put(s,m+0x18,name);
            hs_put(s,m,Address{0x400});methods[c].push_back(m);
            if(h.installer==0x2ea978)hs_put(s,c+0x600+n*0x20,Address{0x400});
            if(h.installer==0x2eaa28){hs_put(s,c+0x1d8,Address{0x400});}
            if(h.installer==0x3163d8)hs_put(s,c+0x138,Address{0x400});
            if(h.installer==0x316458)hs_put(s,c+0x328,Address{0x400});
            ++n;
        }
        classes["ItemIcon/<>c__DisplayClass120_0"]=b+0x450000;
        const Address method=b+0x462000,name=b+0x46a000;
        hs_text(s,name,"<TryToMove>b__0");hs_put(s,method+0x18,name);hs_put(s,method,Address{0x777});
        methods[b+0x450000]={method};
        hs_put(s,b+0x3d6f00,Address{0x8000000});hs_put(s,b+0x3d5e60,Address{0x222});
        api.metadata.domain_get_33479c=[] {return Address{1};};
        api.metadata.assemblies_33480c=[this](Address){return re::ReVector<Address>{b+0x4500};};
        api.metadata.assembly_image_3344b0=[](Address){return Address{2};};
        api.metadata.class_from_name_334528=[this](Address,Address ns,Address name){
            require_setup(hs_string(s,ns).empty(),"empty namespace");++lookups;
            const auto key=hs_string(s,name);return classes.contains(key)?classes.at(key):Address{};
        };
        api.metadata.method_from_name_3345c4=[this](Address c,Address name,ReI32 count){
            require_setup(count==-1,"native method count");
            for(auto m:methods[c])if(hs_string(s,*s.read<Address>(m+0x18))==hs_string(s,name))return m;
            return Address{};
        };
        api.metadata.next_method_334660=[this](Address c,Address& cursor){
            const auto& list=methods[c];return cursor<list.size()?list[cursor++]:Address{};
        };
        api.reserve_owned=[this](ReUSize bytes){++allocations;return arena.allocate(bytes);};
        api.observe_context=[this](const HookDetectionCall& d){observations.push_back(d);};
        api.module_handle=[](re::ReStringView n)->re::ReOptional<Address>{require_setup(n=="GameAssembly.dll","module spelling");return Address{0x8000000};};
        api.signature.exports=api.metadata;
        api.signature.exports.assemblies_33480c=[](Address){return re::ReVector<Address>{};};
        api.loot_value=[this](const HookDetectionCall& d){
            require_setup(d.target==0x8000000+0x544fe10&&d.context==b+0x3f1920,"loot fixed target/context");++loot_values;return -7;
        };
        api.object_new=[this](const HookDetectionCall& d,Address c){
            require_setup(d.target==0x888&&c==b+0x450000,"loot object allocation target/class");return arena.allocate(0x30);
        };
        api.loot_callback=[this](const HookDetectionCall& d,Address closure){
            require_setup(d.target==0x777&&s.read<Address>(closure+0x18)==Address(ReI64(-7)),"callback sees sign-extended value");++callbacks;
        };
        api.original_loot=[this](const HookDetectionCall&,Address icon,ReU8 second){require_setup(icon==0x123456&&second==0xe1,"original arguments");++originals;};
        api.method_parameter_count=[](const HookDetectionCall& d,Address){require_setup(d.target==0x999,"parameter count target");return 0;};
        // [I] Prewarm export-only caches so these fixtures need no loader artifacts.
        hs_put(s,b+0x3f1820,ReU32{1});hs_put(s,b+0x3f1818,Address{0x888});
        hs_put(s,b+0x3e5ce8,ReU32{1});hs_put(s,b+0x3e5ce0,Address{0x999});
    }
};
}
void check_hook_setup_reconstruction(){
    {
        HookFixture f;
        // [C] Exact loop extent, blank/long/four-byte/CR lines and final CR tail.
        const re::ReString prefix="ABCD\r\n\nabc\nEFGH\nABCDE\nABCD\n";
        hs_text(f.s,f.b+0x23a430,prefix);
        for(ReUSize i=prefix.size();i<0xea5e - 5;++i)hs_put(f.s,f.b+0x23a430+i,char('\n'));
        const re::ReString tail="WXYZ\r";
        for(ReUSize i=0;i<tail.size();++i)hs_put(f.s,f.b+0x23a430+0xea5e - 5+i,tail[i]);
        auto result=initialize_hooks_315c34(f.s,f.state,f.env,f.api);
        require_setup(result.status==GameBaseStatus::complete&&result.bytes_consumed==0xea5e,"full setup reaches return");
        require_setup(f.state.codes==re::ReVector<re::ReString>{"ABCD","EFGH","ABCD","WXYZ"},"embedded parser preserves CR rule, length and duplicates");
        require_setup(result.installations.size()==14&&result.installations.back().site==0x3163b6,"fourteen initializer order");
        for(ReUSize i=1;i<result.installations.size();++i)require_setup(result.installations[i-1].site<result.installations[i].site,"ordered installs exclude Client");
        require_setup(!result.installations[10].installed&&result.installations[11].installed,"installer false does not stop following rows");
        require_setup(f.s.read<ReU32>(f.b+0x3f0888+0x30)==3,"final entry installer uses owned snapshot");
        const Address object=*f.s.read<Address>(f.b+0x3ffff8);
        require_setup(object&&f.s.read<Address>(object+0x10)==0&&f.allocations==1,"container constructor closure");
    }
    {
        HookFixture f;f.api.reserve_owned=[](ReUSize){return Address{};};
        hs_put(f.s,f.b+0x3ffff8,Address{0x999});
        const auto r=initialize_container_36f5cc(f.s,f.env,f.api);
        require_setup(r.status==GameBaseStatus::complete&&f.s.read<Address>(f.b+0x3ffff8)==0,"malloc null is stored without constructor");
        f.api.reserve_owned={};require_setup(initialize_container_36f5cc(f.s,f.env,f.api).status==GameBaseStatus::missing_boundary,"absent reserve effect distinct from null malloc");
    }
    {
        HookFixture f;const auto r=initialize_client_362118(f.s,f.state,f.env,f.api);
        require_setup(r.status==GameBaseStatus::complete&&r.installations.size()==1&&r.installations[0].site==0x3621f2,"separate client initializer");
        require_setup(f.state.directory=="C:\\Spotify"&&f.state.configuration=="DefaultCfg.bin","literal configuration strings");
        HookFixture failed;failed.api.signature.exports.domain_get_33479c={};
        const auto partial=initialize_client_362118(failed.s,failed.state,failed.env,failed.api);
        require_setup(partial.status==GameBaseStatus::missing_boundary&&failed.s.read<Address>(failed.b+0x3d6f00)==0x8000000&&failed.state.directory.empty(),"base write survives failed bootstrap before directory assignment");
    }
    {
        HookFixture f;const Address c=f.classes.at("Projectile"),m=f.methods[c].front();
        const Address ns=f.b+0x46c000,name=f.b+0x46c100,type=f.b+0x46c200;
        hs_text(f.s,ns,"A");hs_text(f.s,name,"B");hs_text(f.s,type,"Root.Nested.Type");
        hs_put(f.s,c+0x18,ns);hs_put(f.s,c+0x10,name);hs_put(f.s,f.b+0x4500,Address{0x1234});
        auto& a=f.api.signature;a.exports=f.api.metadata;
        a.class_count_334760=[](Address image){require_setup(image==0x1234,"bootstrap dereferences assembly");return ReU64{1};};
        a.class_at_334958=[&](Address,ReI32 index){require_setup(index==0,"bootstrap class index");return c;};
        a.method_name_3352c0=[&](Address method){require_setup(method==m,"bootstrap method");return *f.s.read<Address>(m+0x18);};
        a.exports.parameter_count_335140=[](Address){return 1;};
        a.parameter_type_334950=[](Address,ReU32 index){require_setup(index==0,"parameter index");return Address{6};};
        a.return_type_3352d8=[](Address){return Address{7};};a.type_name_3352c8=[&](Address){return type;};
        auto r=bootstrap_signatures_334bf4(f.s,f.state,f.env,f.api);
        const auto key=signature_crc_334768("A::B::Update(Nested.Type): Nested.Type");
        require_setup(r.status==GameBaseStatus::complete&&r.methods_cached==1&&f.state.signatures.at(key)==m,"eager bootstrap signature cache including first-dot stripping");
    }
    {
        HookFixture f;const Address p=f.b+0x46d000;
        for(unsigned i=0;i<32;++i)hs_put(f.s,p+i,ReU8((i==31?0:'A')^(i+0x37)));
        require_setup(decode_loot_name_32189c(f.s,p).value==p&&f.s.read<ReU8>(p)==ReU8('A')&&f.s.read<ReU8>(p+31)==0,"conditional32-byte XOR helper");
        require_setup(decode_loot_name_32189c(f.s,p).value==p&&f.s.read<ReU8>(p)==ReU8('A'),"decoded flag skips second XOR");
        const auto first=replay_loot_setup_3215cc(f.s,0x123456,0xe1,true,f.env,f.api);
        require_setup(first.status==GameBaseStatus::complete&&first.value&&f.callbacks==1&&f.originals==0,"enabled loot closure path");
        require_setup(f.s.read<Address>(first.value+0x10)==0x123456&&f.s.read<Address>(first.value+0x20)==0,"closure field stores");
        require_setup(f.s.read<ReU32>(f.b+0x3f1910)==3&&f.s.read<ReU32>(f.b+0x3f1a58)==3,"two lazy bits cached");
        const auto observed=f.observations.size(),lookups=f.lookups;
        require_setup(replay_loot_setup_3215cc(f.s,0x123456,0xe1,true,f.env,f.api).status==GameBaseStatus::complete,"warm loot replay");
        require_setup(f.observations.size()==observed&&f.lookups==lookups+1&&f.loot_values==2,"warm caches retain target but repeat class lookup and game value");
        hs_put(f.s,f.b+0x3e6870,Address{0xabc});
        require_setup(replay_loot_setup_3215cc(f.s,0x123456,0xe1,false,f.env,f.api).status==GameBaseStatus::complete&&f.originals==1,"disabled original path");
        require_setup(f.s.read<ReU32>(f.b+0x3f1a58)==15&&f.s.read<Address>(f.b+0x3f1b38)==0xabc,"original cache shares callback flags");
    }
    {
        HookFixture f;f.classes["ItemIcon/<>c__DisplayClass120_0"]=0;
        require_setup(replay_loot_setup_3215cc(f.s,1,0,true,f.env,f.api).value==0&&f.originals==0,"bad class has no original fallback");
        HookFixture missing;missing.api.loot_value={};
        auto r=replay_loot_setup_3215cc(missing.s,0x123456,0,true,missing.env,missing.api);
        require_setup(r.status==GameBaseStatus::missing_boundary&&missing.s.read<ReU32>(missing.b+0x3f1910)==3&&missing.callbacks==0,"missing game value retains already-set cache flags");
        hs_put(missing.s,missing.b+0x3f1820,ReU32{});
        require_setup(allocate_loot_3218c4(missing.s,1,missing.env,missing.api).status!=GameBaseStatus::complete&&missing.s.read<ReU32>(missing.b+0x3f1820)==1,"cold allocation export flags precede failed loader resolution");
    }
    {
        HookFixture f;hs_put(f.s,f.b+0x3ffff8,Address{0x1234});
        f.api.reserve_owned=[](ReUSize)->Address{__builtin_trap();};
        const auto result=initialize_container_36f5cc(f.s,f.env,f.api);
        require_setup(result.status==GameBaseStatus::missing_bytes&&result.site==0x3c8bd0&&f.s.read<Address>(f.b+0x3ffff8)==0x1234,"typed owned-allocator failure stops before result store");
    }
}
} // namespace rust_internal_re
