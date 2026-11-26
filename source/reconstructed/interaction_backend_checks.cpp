#include "interaction_backend_analysis.hpp"
#include "analysis_failure.hpp"
namespace rust_internal_re {
namespace {
void expect_backend(bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("interaction backend fixture") */ }}
struct Fixture {
    static constexpr Address b=0x1000000,ray_class=b+0x1000,console_class=b+0x1100,
        ray_method=b+0x1200,console_method=b+0x1300;
    Snapshot image{b,re::ReVector<ReByte>(0x410000)};
    InteractionBackendEnvironment env{b,b+0x400000,512};
    InteractionBackendApi api;
    int resolutions{},setups{},queries{},strings{},commands{};
    ReU8 raw_result{0x80};ReI32 mode{};
    template<class T>void put(Address p,T value){expect_backend(image.write(p,value));}
    template<class T>T get(Address p){const auto value=image.read<T>(p);expect_backend(bool(value));return *value;}
    void str(Address p,re::ReStringView text){for(char c:text)put(p++,c);put(p,char(0));}
    re::ReString text(Address p){re::ReString s;for(ReUSize i=0;i<128;++i){char c=get<char>(p+i);if(!c)return s;s+=c;}{ __builtin_trap(); }
        put(ray_method,Address(0x1230000));put(console_method,Address(0x1231000));
        put(ray_method+0x18,b+0x1400);put(console_method+0x18,b+0x1500);
        str(b+0x1400,"Raycast");str(b+0x1500,"ClientRun");
        auto& metadata=api.shared.metadata;
        metadata.domain_get_33479c=[] {return Address(0x2220000);};
        metadata.assemblies_33480c=[](Address){return re::ReVector<Address>{0x2221000};};
        metadata.assembly_image_3344b0=[](Address){return Address(0x2222000);};
        metadata.class_from_name_334528=[this](Address,Address ns,Address name) {
            ++resolutions;const auto n=text(name);
            if(n=="Physics") {expect_backend(text(ns)=="UnityEngine"&&get<ReU32>(b+0x3e5728)==1);return ray_class;}
            expect_backend(n=="RunConsoleCommand"&&text(ns).empty()&&get<ReU32>(b+0x3e4bc0)==1);return console_class;
        };
        metadata.next_method_334660=[](Address klass,Address& cursor) {
            if(cursor++)return Address(0);
            return klass==ray_class?ray_method:console_method;
        };
        metadata.parameter_count_335140=[](Address m){expect_backend(m==ray_method);return 6;};
        api.observe_context=[this](const InteractionBackendCall& call) {
            ++setups;
            const Rva flags=call.wrapper==0x2e8fac?0x3e5728:0x3e4bc0;
            expect_backend(get<ReU32>(b+flags)==3);
            if(call.wrapper==0x2e8fac)put(b+0x3d5e60,Address(0xabc6));
        };
        api.raycast=[this](const InteractionBackendCall& call,Vec3 from,Vec3 direction,
            re::ReSpan<ReByte> hit,float distance,ReU32 mask,ReI32 query_mode) {
            ++queries;mode=query_mode;
            expect_backend(call.target==0x1230000&&call.context==b+0x3e5730&&call.dispatcher==0xabc6);
            expect_backend(from.x==1&&direction.y==2&&re::re_bit_cast<ReU32>(distance)==0x80000000&&mask==0xffffffff);
            if(!hit.empty())hit[0]=ReByte(0x42);
            return raw_result;
        };
        api.shared.export_target=[](Rva getter){expect_backend(getter==0x2cc164);return Address(0x2340000);};
        api.shared.observe_context_2cbd24=[this](Address context,Address code){expect_backend(context==b+0x3d5e80&&code==0x2340000);};
        api.shared.string_new_2ce718=[this](re::ReStringView command) {
            ++strings;expect_backend(command=="inventory.endloot");
            put(b+0x3e4240,Address(17));put(b+0x3d5e60,Address(0xabc7));return b+0x1600;
        };
        api.console=[this](const InteractionBackendCall& call,Address console,Address command) {
            ++commands;expect_backend(call.wrapper==0x2e5bec&&call.target==0x1231000&&call.context==b+0x3e4bd0&&call.dispatcher==0xabc7);
            expect_backend(console==17&&command==b+0x1600);
        };
    }
};
}
void check_interaction_backend_reconstruction() {
    Fixture f;re::ReArray<ReByte,8> hit;hit.fill(ReByte(0xaa));
    auto result=raycast_2e8fac(f.image,{1,0,0},{0,2,0},-0.0f,0xffffffff,hit,7,f.env,f.api);
    expect_backend(result.status==GameBaseStatus::complete&&result.value&&f.mode==7&&hit[0]==ReByte(0x42)&&hit[1]==ReByte(0xaa));
    f.raw_result=0;hit[0]=ReByte(0xaa);
    result=raycast_2e8fac(f.image,{1,0,0},{0,2,0},-0.0f,0xffffffff,hit,0,f.env,f.api);
    expect_backend(!result.value&&hit[0]==ReByte(0x42)&&f.resolutions==1&&f.setups==1&&f.queries==2);
    expect_backend(close_loot_2e5bec(f.image,f.env,f.api).status==GameBaseStatus::complete&&f.commands==0);
    f.put(f.b+0x3e4240,Address(1));
    result=close_loot_2e5bec(f.image,f.env,f.api);
    expect_backend(result.status==GameBaseStatus::complete&&result.value&&f.strings==1&&f.commands==1&&f.resolutions==2);
    result=close_loot_2e5bec(f.image,f.env,f.api);
    expect_backend(result.value&&f.commands==2&&f.strings==2&&f.resolutions==2);
    Fixture no_setup;no_setup.api.observe_context={};
    result=raycast_2e8fac(no_setup.image,{1,0,0},{0,2,0},-0.0f,0xffffffff,{},0,no_setup.env,no_setup.api);
    expect_backend(result.status==GameBaseStatus::missing_boundary&&result.site==0x2cbd24&&no_setup.get<ReU32>(no_setup.b+0x3e5728)==3&&no_setup.queries==0);
    Fixture no_metadata;no_metadata.api.shared.metadata={};
    result=raycast_2e8fac(no_metadata.image,{1,0,0},{0,2,0},-0.0f,0xffffffff,{},0,no_metadata.env,no_metadata.api);
    expect_backend(result.status==GameBaseStatus::missing_boundary&&result.site==0x334224&&no_metadata.get<ReU32>(no_metadata.b+0x3e5728)==1);
    Fixture bound;const auto calls=bind_interaction_backend(bound.image,bound.env,bound.api);
    InteractionCall ray{0x2e8fac};ray.first={1,0,0};ray.second={0,2,0};ray.scalar=-0.0f;ray.integer=-1;
    expect_backend(calls.predicate(ray)&&bound.queries==1&&bound.mode==0);
    bound.put(bound.b+0x3e4240,Address(1));calls.action(InteractionCall{0x2e5bec});expect_backend(bound.commands==1);
    Fixture composed;composed.api.shared.metadata=bind_metadata_wrappers(composed.image,composed.b,{});
    result=raycast_2e8fac(composed.image,{1,0,0},{0,2,0},-0.0f,0xffffffff,{},0,composed.env,composed.api);
    expect_backend(result.status==GameBaseStatus::missing_boundary&&result.site==0x3339fc&&composed.queries==0);
    expect_backend(composed.get<ReU32>(composed.b+0x3e5728)==1&&composed.get<ReU32>(composed.b+0x3f9860)==1);
}
} // namespace rust_internal_re
