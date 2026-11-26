#include "trajectory_cache_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T> T trajectory_read(const Snapshot& im,Address p,Rva r) {
    const auto value=im.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
template<class T> void trajectory_write(Snapshot& im,Address p,T value,Rva r) {
    if(!im.write(p,value))__builtin_trap();
}
re::ReString trajectory_format(float value,const TrajectoryFloatFormatter& supplied) {
    if(supplied)return supplied(value);
    const int size=re::re_snprintf(nullptr,0,"%f",static_cast<double>(value));
    if(size<0||size>4096)__builtin_trap();
    re::ReVector<char> buffer(static_cast<ReUSize>(size)+1);
    if(re::re_snprintf(buffer.data(),buffer.size(),"%f",static_cast<double>(value))!=size)
        __builtin_trap();
    return re::ReString(buffer.data(),static_cast<ReUSize>(size));
}
}
Address cache_melee_trajectory_2e1ff4(const Snapshot& im,MovementMainState& state,float speed,
    Address definition,const TrajectoryFloatFormatter& format) {
    // [C] Native formatting order is fourth, drag(+34), gravity(+38), speed.
    // Concatenation is speed + gravity + drag + fourth, without delimiters.
    const auto fourth_text=trajectory_format(trajectory_read<float>(im,definition+0x44,0x2e1ff4),format);
    const auto drag_text=trajectory_format(trajectory_read<float>(im,definition+0x34,0x2e2002),format);
    const auto gravity_text=trajectory_format(trajectory_read<float>(im,definition+0x38,0x2e2013),format);
    const auto speed_text=trajectory_format(speed,format);
    const auto hash=entity_name_hash_2d6354(speed_text+gravity_text+drag_text+fourth_text);
    auto& globals=state.globals;
    for(ReU32 n=0;n<1000;++n) {
        const Address slot=0x3d8310+n*0x30;
        if(trajectory_read<ReU64>(globals,slot,0x2e0e20)==hash)return slot+8;
    }
    // [C] Allocation arguments reload definition fields AFTER all formatting.
    const float fourth=trajectory_read<float>(im,definition+0x44,0x2e20c7);
    const float drag=trajectory_read<float>(im,definition+0x34,0x2e20cc);
    const float gravity=trajectory_read<float>(im,definition+0x38,0x2e20d1);
    for(ReU32 n=0;n<1000;++n) {
        const Address slot=0x3d8310+n*0x30;
        if(trajectory_read<ReU64>(globals,slot,0x2dfe7a)!=0)continue;
        trajectory_write(globals,slot,hash,0x2dfe9c);
        const Address key=slot+8;
        trajectory_write(globals,key,speed,0x2dfeb7);
        trajectory_write(globals,key+4,drag,0x2dfeb7);
        trajectory_write(globals,key+8,gravity,0x2dfeb7);
        trajectory_write(globals,key+12,fourth,0x2dfeb7);
        for(Address offset:{Address(0x10),Address(0x18),Address(0x20)})
            trajectory_write(globals,key+offset,Address(0),0x2dfeb7);
        auto& table=state.prediction_tables[key];
        table.parameters={speed,drag,gravity,fourth};
        table.candidates=build_candidate_tables_2e3aa4(table.parameters);
        return key;
    }
    return 0;
}
InteractionCalls bind_interaction_trajectory_cache(const Snapshot& im,MovementMainState& state,
    InteractionCalls calls,TrajectoryFloatFormatter format) {
    calls.trajectory_cache_definition=[&im,&state,format](float speed,Address definition) {
        return cache_melee_trajectory_2e1ff4(im,state,speed,definition,format);
    };
    return calls;
}
} // namespace rust_internal_re
