#include "hit_override_analysis.hpp"
namespace rust_internal_re {
// [C] 0x32b4ec..0x32b61b, all JA comparisons are ordered and strict.
ReU32 choose_hit_bone_32b4ec(ReI32 setting,float random) {
    switch(setting) {
    case 0:return 0x299ae896;
    case 1:return 0x557efe45;
    case 2:return 0x2be37c32;
    case 3:return 0x36d6ee69;
    case 4:case 5:
        if(random>90)return setting==4?0x299ae896u:0xe88e9039u;
        if(random>80)return 0x69f75cce;
        if(random>70)return 0x36d6ee69;
        if(random>60)return 0xf4f23e42;
        if(random>50)return 0x2be37c32;
        if(random>40)return 0xe88e9039;
        if(random>30)return 0x314e89f3;
        if(random>20)return 0x69f75cce;
        if(random>10)return 0x2be37c32;
        return 0x314e89f3;
    default:return 0x299ae896;
    }
}
namespace {
struct HitStop {HitOverrideStatus status;Rva site;};
template<class T> T hit_read(const Snapshot& image,Address p,Rva site) {
    const auto value=image.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
template<class F> const F& hit_need(const F& callback,Rva site) {
    if(!callback)__builtin_trap();
    return callback;
}
void write_bone(Snapshot& image,HitOverrideResult& out,ReU32 value,Rva site) {
    // [C] 0x37432c validates the hit numeric pointer, then writes dword +0x24.
    if(!sample_pointer_range(out.hit))return;
    if(!image.write(out.hit+0x24,value))__builtin_trap();
    ++out.bone_writes;
}
bool is_base_player(const Snapshot& image,Address entity) {
    // [C] 0x2e5a54 -> 0x2d6354, validated pointer chain and signed-byte hash.
    const Address klass=hit_read<Address>(image,entity,0x32b46e);
    if(!sample_pointer_range(klass))return false;
    const Address name=hit_read<Address>(image,klass+0x10,0x32b46e);
    if(!sample_pointer_range(name))return false;
    re::ReString text;
    for(ReUSize i=0;i<4096;++i) {
        const char c=hit_read<char>(image,name+i,0x32b485);
        if(!c)return entity_name_hash_2d6354(text)==entity_name_hash_2d6354("BasePlayer");
        text.push_back(c);
    }
    __builtin_trap();
}
}
// [C] Full 0x32b3a8..0x32b623 worker control flow; unresolved map/visual/random calls explicit.
HitOverrideResult replay_hit_override_32b3a8(Snapshot& image,Address argument,const HitOverrideConfig& config,const HitOverrideApi& api) {
    HitOverrideResult out;
    {
        // [C] Two 0x3715d8 reads, each pointer at receiver +0x10.
        if(!sample_pointer_range(argument))return out;
        const Address first=hit_read<Address>(image,argument+0x10,0x32b3b1);
        if(!sample_pointer_range(first))return out;
        out.hit=hit_read<Address>(image,first+0x10,0x32b3cc);
        if(!sample_pointer_range(out.hit))return out;
        const auto kind=hit_read<ReU32>(image,out.hit+0x40,0x32b3e7);
        if(config.helicopter&&sample_pointer_range(config.helicopter_3d72b8)) {
            const Address heli=config.helicopter_3d72b8;
            const bool valid=hit_need(api.valid_2e0e9c,0x32b40d)(heli);
            if(valid&&kind==0x614b0986u) {
                const float field=hit_read<float>(image,heli+0x2cc,0x32b435);
                write_bone(image,out,field>5000.0f?0xa0e77c82u:0x0d5c17b7u,0x32b446);
            }
        }
        if(config.chams) {
            const auto id=hit_read<ReU32>(image,out.hit+0x38,0x32b454);
            const Address entity=hit_need(api.entity_32b308,0x32b457)(id);
            if(sample_pointer_range(entity)&&is_base_player(image,entity)) {
                hit_need(api.chams_36a464,0x32b4be)(entity);++out.chams_calls;
            }
        }
        if(config.enabled&&kind==0x5333f7a0u) {
            // [C] Random is called even for fixed settings 0..3 and unknown settings.
            const float random=hit_need(api.random_2e3d5c,0x32b4e7)(0,100);
            write_bone(image,out,choose_hit_bone_32b4ec(config.bone_index,random),0x32b61e);
        }
    }
    return out;
}
// [C] 0x32b641 calls the worker before the saved original at 0x32b6c0.
HitOverrideResult replay_hit_hook_32b62c(Snapshot& image,Address argument,Address second,const HitOverrideConfig& config,const HitOverrideApi& api) {
    auto out=replay_hit_override_32b3a8(image,argument,config,api);
    if(out.status!=HitOverrideStatus::complete)return out;
    if(!api.original) {out.status=HitOverrideStatus::missing_boundary;out.stopped_at=0x32b6c0;return out;}
    api.original(argument,second);out.original_called=true;
    return out;
}
} // namespace rust_internal_re
