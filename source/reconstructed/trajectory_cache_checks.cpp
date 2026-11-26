#include "trajectory_cache_analysis.hpp"
namespace rust_internal_re {
void check_trajectory_cache_reconstruction() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("trajectory cache fixture") */ }};
    constexpr Address b=0x1000000,definition=b+0x100;
    Snapshot im(b,re::ReVector<ReByte>(0x1000));MovementMainState state;
    const auto put=[&](Address p,auto value){check(im.write(p,value));};
    put(definition+0x44,3.0f);put(definition+0x34,1.0f);put(definition+0x38,0.5f);
    const auto key=cache_melee_trajectory_2e1ff4(im,state,10,definition);
    check(key==0x3d8318&&state.prediction_tables[key].candidates.size()==3601);
    check(state.globals.read<ReU64>(key-8)==entity_name_hash_2d6354("10.0000000.5000001.0000003.000000"));
    const auto same=cache_melee_trajectory_2e1ff4(im,state,10,definition);
    check(same==key&&state.prediction_tables.size()==1);
    // [C] %f's six fractional digits can alias distinct binary32 inputs.
    check(cache_melee_trajectory_2e1ff4(im,state,re::re_nextafterf(10.0f,0.0f),definition)!=key);
    const auto small=cache_melee_trajectory_2e1ff4(im,state,1,definition);
    check(cache_melee_trajectory_2e1ff4(im,state,re::re_nextafterf(1.0f,2.0f),definition)==small);
    re::ReVector<float> seen;
    const auto formatter=[&](float value) {
        seen.push_back(value);
        if(seen.size()==1) {put(definition+0x34,2.0f);put(definition+0x38,0.25f);}
        if(seen.size()==4) {put(definition+0x34,5.0f);put(definition+0x38,0.75f);put(definition+0x44,4.0f);}
        return "f"+re::re_to_string(seen.size()-1);
    };
    const auto changed=cache_melee_trajectory_2e1ff4(im,state,20,definition,formatter);
    check(seen==re::ReVector<float>({3,2,0.25f,20}));
    check(state.globals.read<ReU64>(changed-8)==entity_name_hash_2d6354("f3f2f1f0"));
    const auto& p=state.prediction_tables[changed].parameters;
    check(p.speed==20&&p.drag==5&&p.gravity_scale==0.75f&&p.qualification_distance==4);
    check(state.globals.read<float>(changed+4)==5&&state.globals.read<float>(changed+8)==0.75f);
    const auto bound=bind_interaction_trajectory_cache(im,state);
    check(bound.trajectory_cache_definition(20,definition)!=0);
    MovementMainState full;
    for(unsigned i=0;i<1000;++i)check(full.globals.write(0x3d8310+i*0x30,ReU64(1)));
    check(cache_melee_trajectory_2e1ff4(im,full,1,definition)==0&&full.prediction_tables.empty());
    Snapshot short_im(b,re::ReVector<ReByte>(0x143));bool stopped=false;
    {(void)cache_melee_trajectory_2e1ff4(short_im,state,1,definition);}
    check(stopped);
}
} // namespace rust_internal_re
