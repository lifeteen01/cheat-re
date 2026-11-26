#include "sky_model_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
void require(bool b,const char* message){if(!b){ /* FREESTANDING_TODO: was throw runtime_error(message) */ }}
struct Fixture {
    Snapshot image{0,re::ReVector<ReByte>(0x430000)};
    SkyModelEnvironment env{0,0x180000,4096,100};
    SkyModelApi api;
    static constexpr Address sky=0x100000,day=0x101000,bright=0x102000,settings=0x103000,
        inner=0x104000,color=0x105000,player=0x106000,model=0x107000,list=0x108000,
        source=0x109000,transform=0x10a000,created=0x10b000,new_transform=0x10c000,
        renderer=0x10d000,filter=0x10e000,mesh=0x10f000,material=0x110000,name=0x111000,
        bundle=0x112000,shader=0x113000;
    re::ReVector<SkyModelCall> calls;
    re::ReVector<re::ReString> strings;
    ReUSize allocations{};
    Fixture(){
        put(sky+0x40,day);put(sky+0x78,bright);put(sky+0x58,settings);put(day+0x10,12.0f);
        put(settings+0x28,inner);put(inner+0x10,color);put(color,SkyModelColor{1,2,3,4});
        put(0x3f8b88,SkyModelColor{5,6,7,8});put(0x3f8e30,1.5f);
        put(0x3f8d38,Address{0x700000});put(0x3f8d40,ReU32{7});
        constexpr Rva flags[]{0x3e6320,0x3fe0c0,0x3fe390,0x3fe480,0x3fe1b0,0x3fe2a0,
            0x4003d0,0x400a60,0x400970,0x4015a0,0x4010f0,0x401690,0x400880,0x400790,
            0x4012d0,0x401d20,0x4021d0,0x4024a0,0x4022c0,0x3ffa60,0x3ff978,0x402c20,
            0x3fa670,0x3fa580,0x402950,0x402860,0x3d5e70,0x3fa490,0x3e4260};
        for(Rva f:flags){put(f,ReU32{3});put(f-8,Address{0x720000+f});}
        put(player+0x300,model);put(list+0x18,ReI32{1});put(list+0x20,source);
        put(0x3e5e88,bundle);put(0x3e5ec0,shader);
        put(0x3ecc38,SkyModelColor{10,20,30,40});put(0x3ecbd8,SkyModelColor{50,60,70,80});
        put(0x3fca58,0.2f);managed_name("coat");
        api.observe_context_2cbd24=[](Address,Address){};
        api.metadata.domain_get_33479c=[](){return Address{0x190000};};
        api.metadata.assemblies_33480c=[](Address){return re::ReVector<Address>{0x190100};};
        api.metadata.assembly_image_3344b0=[](Address){return Address{0x190200};};
        api.metadata.class_from_name_334528=[&](Address,Address,Address cname){
            const auto s=cstring(cname);
            if(s=="SkinnedMeshRenderer")return Address{0x191000};
            if(s=="Mesh")return Address{0x192000};
            if(s=="GameObject")return Address{0x193000};
            if(s=="MeshRenderer")return Address{0x194000};
            if(s=="MeshFilter")return Address{0x195000};
            if(s=="Shader")return Address{0x196000};
            return Address{0x197000};
        };
        api.class_type_3346e8=[](Address c){return c+0x20;};
        api.type_object_335358=[](Address t){return t+0x20;};
        api.object_new_36b2d4=[&](Address c){++allocations;return c==0x193000?created:mesh;};
        api.string_new_2ce718=[&](re::ReStringView s){strings.emplace_back(s);return Address{0x1b0000+strings.size()*0x100};};
        api.unity=[&](const SkyModelCall& c){return foreign(c);};
    }
    template<class T>void put(Address a,T v){require(image.write(a,v),"fixture write");}
    template<class T>T get(Address a){const auto v=image.read<T>(a);require(bool(v),"fixture read");return *v;}
    re::ReString cstring(Address a){re::ReString s;for(ReUSize i=0;i<128;++i){const auto ch=get<char>(a+i);if(!ch)return s;s+=ch;}__builtin_trap();}
    void wide(Address name,re::ReStringView s) {for(ReUSize i=0;i<s.size();++i)put(name+0x14+i*2,static_cast<ReU16>(s[i]));}
    void managed_name(re::ReStringView s) {put(name+0x10,static_cast<ReI32>(s.size()));wide(name,s);}
    SkyModelValue foreign(const SkyModelCall& c){
        calls.push_back(c);SkyModelValue v;
        switch(c.wrapper){
        case 0x3151bc:v.object=list;break;
        case 0x370754:v.object=transform;break;
        case 0x373248:v.object=new_transform;break;
        case 0x372efc:v.object=c.arguments[0]==0x194040?renderer:filter;break;
        case 0x370fac:v.object=material;break;
        case 0x370e84:v.object=0x114000;break;
        case 0x37361c:v.object=name;break;
        case 0x3747d4:v.vector={1,2,3};break;
        case 0x374aa4:v.orientation={4,5,6,7};break;
        case 0x375abc:v.object=shader;break;
        case 0x36c670:v.scalar=1.25f;break;
        default:break;
        }
        return v;
    }
};
}
void check_sky_model_reconstruction(){
    {
        Snapshot missing_root(0x3d5e68,re::ReVector<ReByte>(0x100,ReByte(0xaa)));
        require(missing_root.write(0x3d5e68,Address(0x123456)),"managed string target fixture");
        require(missing_root.write(0x3d5e70,ReU32(1)),"managed string flag fixture");
        ReUSize observations=0;
        SkyModelApi api;
        api.observe_context_2cbd24=[&](Address,Address){++observations;};
        api.string_new_2ce718=[](re::ReStringView){return Address(0x100000);};
        const auto stopped=managed_string_2ce718(missing_root,"x",{},api);
        require(stopped.status==GameBaseStatus::missing_bytes&&stopped.site==0x2ce756&&
            missing_root.read<ReU32>(0x3d5e70)==1&&observations==0,
            "managed string missing dispatcher precedes flag2 and context observation");
        require(missing_root.write(0x3d5e70,ReU32(3)),"managed string warm flag fixture");
        const auto warm=managed_string_2ce718(missing_root,"x",{},api);
        require(warm.status==GameBaseStatus::missing_bytes&&warm.site==0x2ce775&&
            missing_root.read<ReU64>(0x3d5e80+0x80)==0xaaaaaaaaaaaaaaaaULL,
            "warm managed string still loads dispatcher before packaging arguments");
    }
    {
        Fixture f;
        f.put(0x3d5e70,ReU32(0));
        f.put(0x3d5e60,Address(0x1111));
        for(Address i=0;i<0xd4;++i)f.put(0x3d5e80+i,ReU8(0xaa));
        ReUSize observations=0,effects=0;
        f.api.export_target=[&](Rva getter){
            require(getter==0x2cc164&&f.get<ReU32>(0x3d5e70)==1,
                "managed string flag1 precedes concrete export acquisition");
            f.put(0x3d5e70,ReU32(5));
            return Address(0xcafe);
        };
        f.api.observe_context_2cbd24=[&](Address context,Address target){
            ++observations;
            require(context==0x3d5e80&&target==0xcafe&&f.get<ReU32>(0x3d5e70)==7,
                "managed string reloads flags and retains target across setup");
            f.put(0x3d5e60,Address(0x2222));
        };
        f.api.string_new_2ce718=[&](re::ReStringView text){
            ++effects;
            require(text=="owned"&&f.get<Address>(0x3d5e60)==0x2222&&
                f.get<ReU64>(0x3d5e80+0x80)==1&&
                f.get<Address>(0x3d5e80+0x88)==0xaaaaaaaaaaaaaaaaULL&&
                f.get<ReU32>(0x3d5e80+0xd0)==0xaaaaaa00u,
                "managed string stages count/type while native string pointer remains unknown");
            return Address(0x100100);
        };
        const auto out=managed_string_2ce718(f.image,"owned",f.env,f.api);
        require(out.status==GameBaseStatus::complete&&out.value==0x100100&&
            observations==1&&effects==1,"managed string cold shared context composition");
    }
    {
        Fixture f;f.put(0x3f8a38,ReU8{1});f.put(0x3f8c88,ReI32{22});f.put(0x3f8a88,ReU8{1});f.put(0x3f89e8,ReU8{1});
        f.api.unity=[&](const SkyModelCall& c){
            if(c.wrapper==0x32f408){require(f.get<float>(Fixture::day+0x10)==22,"original sees temporary day");require(f.get<SkyModelColor>(Fixture::color)[0]==5,"original sees temporary tint");}
            return f.foreign(c);
        };
        const auto out=replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);
        require(out.status==GameBaseStatus::complete&&out.original_calls==1,"ordinary sky original once");
        require(f.get<float>(Fixture::day+0x10)==12&&f.get<SkyModelColor>(Fixture::color)[0]==1,"ordinary sky restored");
        require(f.get<float>(Fixture::bright+0x14)==250&&f.get<ReU8>(0x3f8e2c)==1,"bright latch retained");
        f.put(0x3f89e8,ReU8{});f.put(0x3f8a38,ReU8{});f.put(0x3f8a88,ReU8{});
        f.api.unity=[&](const SkyModelCall& c){return f.foreign(c);};
        require(replay_sky_32f408(f.image,Fixture::sky,f.env,f.api).status==GameBaseStatus::complete,"disable replay");
        require(f.get<float>(Fixture::bright+0x14)==2&&f.get<ReU8>(0x3f8e2c)==0&&f.get<ReU8>(0x3f8e48)==0,"fixed brightness restoration and tint latch clearing");
    }
    {
        Fixture f;f.put(0x3f8d40,ReU32{0x3ff});f.put(0x3f8cd8,ReI32{0});f.put(0x3f8c38,0.1f);
        f.api.unity=[&](const SkyModelCall& c){if(c.wrapper==0x32f408)f.put(0x3f8e49,ReU8{1});return f.foreign(c);};
        const auto out=replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);
        require(out.original_calls==2&&out.status==GameBaseStatus::complete,"callback latch change reaches second original");
        require(f.calls.size()==5&&f.calls[2].arguments[0]==3,"ambient mode then intensity then light");
    }
    {
        Fixture f;f.put(0x3f8d40,ReU32{0x3f});f.put(0x3f8998,ReU8{1});f.put(0x3f8d28,ReI32{999});
        f.api.observe_context_2cbd24=[&](Address cell,Address){
            if(cell==0x3f9030)f.put(0x3f8c38,0.75f);
            if(cell==0x3f9110)f.put(0x3f8b28,SkyModelColor{7,8,9,10});
        };
        const auto out=replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);
        require(out.status==GameBaseStatus::complete&&out.original_calls==1,"ambient path");
        require(f.calls[2].scalar==0.75f&&f.calls[3].color[0]==7,"config reread after context callbacks");
    }
    {
        Fixture f;f.put(Address{0x197000}+0xb8,Address{0x198000});f.put(Address{0x198000}+0x38,Address{0x115000});f.put(0x3f8e30,0.0f);f.put(0x3f8ad8,ReU8{1});f.put(0x3f8be8,2.0f);
        require(replay_sky_32f408(f.image,Fixture::sky,f.env,f.api).status==GameBaseStatus::complete,"capture aspect");
        require(f.get<float>(0x3f8e30)==1.25f&&f.get<ReU8>(0x3f8e34)==1,"aspect baseline/latch");
        f.put(0x3f8ad8,ReU8{});f.calls.clear();replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);
        require(f.calls[0].wrapper==0x36caa8&&f.calls[0].scalar==1.25f&&f.get<ReU8>(0x3f8e34)==1,"restore does not clear aspect latch");
        f.put(0x3f8e30,re::ReNumericLimits<float>::quiet_NaN());f.calls.clear();replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);
        require(f.calls[0].wrapper==0x36caa8&&re::re_isnan(f.calls[0].scalar),"unordered baseline skips getter");
    }
    {
        Fixture f;f.put(0x3f8d40,ReU32{0x3ff});f.put(0x3f8998,ReU8{1});f.put(0x3f8d28,ReI32{42});
        bool held=true,cursor=false;ReUSize queries=0;
        f.api.key_2e5e4c=[&](ReI32 key,bool mode){require(key==42&&!mode,"native key query args");++queries;return held;};
        f.api.unity=[&](const SkyModelCall& c){auto v=f.foreign(c);if(c.wrapper==0x2e6744)v.boolean=cursor;return v;};
        require(replay_sky_32f408(f.image,Fixture::sky,f.env,f.api).status==GameBaseStatus::complete,"key rising edge");
        require(f.get<ReU8>(0x3f8e49)==1&&f.get<ReU8>(0x3f8d30)==1,"edge writes held latch and toggles sky");
        replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);require(f.get<ReU8>(0x3f8e49)==1,"held key does not toggle twice");
        held=false;replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);require(f.get<ReU8>(0x3f8d30)==0,"released key clears edge latch");
        cursor=true;const auto before=queries;replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);require(queries==before,"visible cursor bypasses key query");
    }
    {
        Fixture f;f.put(0x3f8d40,ReU32{});f.api.observe_context_2cbd24={};
        const auto out=replay_sky_32f408(f.image,Fixture::sky,f.env,f.api);
        require(out.status==GameBaseStatus::missing_boundary&&out.site==0x2cbd24,"missing setup stops explicitly");
        require(f.get<ReU32>(0x3f8d40)==3&&f.get<Address>(0x3f8d38)==0,"pre-callback lazy writes persist");
    }
    {
        Fixture f;const auto out=replay_model_36a464(f.image,Fixture::player,f.env,f.api);
        require(out.status==GameBaseStatus::complete&&out.renderers_visited==1&&out.renderers_completed==1&&f.allocations==2,"complete model fixture");
        const auto pos=re::re_find_if(f.calls.begin(),f.calls.end(),[](const SkyModelCall& c){return c.wrapper==0x375140;});
        require(bool(pos)&&pos->receiver==Fixture::new_transform&&pos->vector.z==3,"transform position forwarded");
        const auto rot=re::re_find_if(f.calls.begin(),f.calls.end(),[](const SkyModelCall& c){return c.wrapper==0x37527c;});
        require(bool(rot)&&rot->orientation.w==7,"orientation copied");
        const auto n=f.calls.size();require(n>=2&&f.calls[n-2].receiver==Fixture::created&&f.calls[n-1].receiver==Fixture::mesh,"destroy object then mesh");
        require(f.strings==re::ReVector<re::ReString>{"Sussy Object","SussyMesh","_b","_a"},"decoded model/property literals");
    }
    {
        Fixture f;f.managed_name("hat.miner.coat");const auto out=replay_model_36a464(f.image,Fixture::player,f.env,f.api);
        require(out.status==GameBaseStatus::complete&&out.renderers_completed==0&&f.allocations==2,"excluded name leaves earlier allocation/bake effects");
        require(re::re_none_of(f.calls.begin(),f.calls.end(),[](const SkyModelCall& c){return c.wrapper==0x37301c||c.wrapper==0x3710dc;}),"excluded name skips shader and destroy tail");
    }
    {
        Fixture f;f.put(0x3e5ec0,Address{});f.put(0x27f9a8,Address{0x402402});
        f.api.unity=[&](const SkyModelCall& c){
            auto v=f.foreign(c);if(c.wrapper==0x375abc){require(c.arguments[1]==0x196040,"sentinel class type");v.object=0;}
            if(c.wrapper==0x37301c&&c.receiver==Fixture::created)f.put(0x3fca58,0.7f);
            return v;
        };
        const auto out=replay_model_36a464(f.image,Fixture::player,f.env,f.api);
        require(out.status==GameBaseStatus::complete&&f.get<Address>(0x3e5ec0)==0,"failed shader result written to cache");
        require(f.get<Address>(0x27f9a8)==0x196040&&f.strings[2]=="0","sentinel and shader literal");
        require(f.calls.back().scalar==0.7f,"destroy delay is reread between callbacks");
    }
    {
        Fixture f;f.put(0x3fcff8,ReI32{8});f.put(0x3e5e88+8*8,Fixture::bundle);
        const auto out=replay_model_36a464(f.image,Fixture::player,f.env,f.api);
        require(out.status==GameBaseStatus::complete&&out.renderers_completed==1,"unsupported uncached shader reaches destroy");
        require(re::re_none_of(f.calls.begin(),f.calls.end(),[](const SkyModelCall& c){return c.wrapper==0x375abc;}),"unsupported index does not synthesize asset");
    }
    {
        Fixture f;f.put(0x4003d0,ReU32{});f.api.metadata.next_method_334660={};
        const auto out=replay_model_36a464(f.image,Fixture::player,f.env,f.api);
        require(out.status==GameBaseStatus::missing_boundary&&f.get<ReU32>(0x4003d0)==1,"lazy method flag survives missing metadata");
        require(f.allocations==0,"failure stops before new object");
    }
    {
        Fixture f;f.put(0x4003d0,ReU32{});
        constexpr Address method_info=0x1c0000,method_name=0x1c0100,code=0x750000;
        f.put(method_info,code);f.put(method_info+0x18,method_name);
        const re::ReStringView expected="get_transform";
        for(ReUSize i=0;i<=expected.size();++i)f.put(method_name+i,i==expected.size()?char{}:expected[i]);
        f.api.metadata.next_method_334660=[](Address,Address& cursor){if(cursor++)return Address{};return method_info;};
        f.api.observe_context_2cbd24=[&](Address cell,Address target){
            if(cell==0x4003e0)require(f.get<ReU32>(0x4003d0)==3&&target==code&&f.get<Address>(0x4003c8)==code,"method cache visible before context callback");
        };
        require(replay_model_36a464(f.image,Fixture::player,f.env,f.api).status==GameBaseStatus::complete,"lazy metadata success");
        require(f.get<Address>(0x4003c8)==code,"MethodInfo code pointer cached");
    }
    {
        Fixture f;f.managed_name(re::ReString("coat\0hat.miner",14));
        require(replay_model_36a464(f.image,Fixture::player,f.env,f.api).renderers_completed==1,"native strstr stops at embedded low-byte zero");
    }
    {
        Fixture f;f.put(0x3fcff8,ReI32{-1});f.put(0x3e5e88-8,Fixture::bundle);f.put(0x3e5ec0-8,Fixture::shader);
        require(replay_model_36a464(f.image,Fixture::player,f.env,f.api).renderers_completed==1,"negative signed shader table index retained");
        require(re::re_any_of(f.calls.begin(),f.calls.end(),[](const SkyModelCall& c){return c.wrapper==0x3710dc;}),"cached shader reused before index dispatch");
    }
    {
        Fixture f;f.put(0x3e6320,ReU32{});f.put(0x3fa490,ReU32{});
        constexpr Address method_info=0x1c0000,method_name=0x1c0100,code=0x750100;
        f.put(method_info,code);
        const re::ReStringView expected="GetComponentsInChildren";
        for(ReUSize i=0;i<=expected.size();++i)f.put(method_name+i,i==expected.size()?char{}:expected[i]);
        f.api.metadata.next_method_334660=[](Address,Address& cursor){switch(cursor++){case 0:return Address{0x90000};case 1:return method_info;default:return Address{};}};
        ReUSize name_calls=0;
        f.api.method_name_335040=[&](Address method){require(method==method_info,"333bf4 skips invalid method before foreign name getter");++name_calls;return method_name;};
        f.api.export_target=[&](Rva getter){require(getter==0x3339ec&&f.get<ReU32>(0x3fa490)==1,"method name flag before export resolver");return Address{0x760000};};
        f.api.observe_context_2cbd24=[&](Address cell,Address target){if(cell==0x3fa4a0)require(f.get<ReU32>(0x3fa490)==3&&target==0x760000,"method-name context flag before callback");};
        require(replay_model_36a464(f.image,Fixture::player,f.env,f.api).status==GameBaseStatus::complete,"333bf4 negative-parameter-index specialization");
        require(name_calls==1&&f.get<Address>(0x3e6318)==code,"validated named method code cached");
    }
    {
        Fixture f;f.env.maximum_renderers=0;
        require(replay_model_36a464(f.image,Fixture::player,f.env,f.api).status==GameBaseStatus::analysis_limit,"explicit finite renderer guard");
    }
    {
        Fixture f;f.put(0x4003d0,ReU32{});
        f.api.metadata.next_method_334660=bind_metadata_wrappers(f.image,0,{}).next_method_334660;
        const auto result=replay_model_36a464(f.image,Fixture::player,f.env,f.api);
        require(result.status==GameBaseStatus::missing_boundary&&result.site==0x333a2c,"composed metadata failure retains source RVA");
        require(f.get<ReU32>(0x4003d0)==1&&f.get<ReU32>(0x3f9950)==1&&f.allocations==0,"model and metadata flag commits survive failure");
    }
}
} // namespace rust_internal_re
