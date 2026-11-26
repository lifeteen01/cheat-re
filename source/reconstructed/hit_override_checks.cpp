#include "hit_override_analysis.hpp"
namespace rust_internal_re {
namespace {void require_hit(bool p,re::ReStringView why) {if(!p)__builtin_trap();}}
void check_hit_override_reconstruction() {
    constexpr Address b=0x1000000,arg=b+0x100,first=b+0x200,hit=b+0x300,heli=b+0x500,
        entity=b+0x900,klass=b+0xb00,name=b+0xc00;
    Snapshot image(b,re::ReVector<ReByte>(0x2000));
    auto put=[&](Address p,auto value){require_hit(image.write(p,value),"hit fixture write");};
    put(arg+0x10,first);put(first+0x10,hit);put(hit+0x40,ReU32(0x5333f7a0));put(hit+0x38,ReU32(17));
    HitOverrideConfig config{false,false,true,0,heli};
    HitOverrideApi api;
    int random_calls=0;
    api.random_2e3d5c=[&](float low,float high){require_hit(low==0&&high==100,"hit random arguments");++random_calls;return 0.0f;};
    api.original=[&](Address p,Address second){require_hit(p==arg&&second==99&&image.read<ReU32>(hit+0x24)==0x299ae896u,"bone store precedes original");};
    auto out=replay_hit_hook_32b62c(image,arg,99,config,api);
    require_hit(out.original_called&&out.bone_writes==1&&random_calls==1,"fixed hit setting still consumes random call");
    require_hit(choose_hit_bone_32b4ec(4,90)==0x69f75cceu&&choose_hit_bone_32b4ec(4,90.001f)==0x299ae896u,"strict random threshold at ninety");
    require_hit(choose_hit_bone_32b4ec(4,100)==0x299ae896u&&choose_hit_bone_32b4ec(5,100)==0xe88e9039u,"random modes differ above ninety");
    require_hit(choose_hit_bone_32b4ec(5,re::ReNumericLimits<float>::quiet_NaN())==0x314e89f3u,"unordered random falls through all JA tests");
    config={true,false,false,0,heli};put(hit+0x40,ReU32(0x614b0986));put(heli+0x2cc,5000.0f);
    api.valid_2e0e9c=[](Address){return true;};
    out=replay_hit_override_32b3a8(image,arg,config,api);
    require_hit(out.bone_writes==1&&image.read<ReU32>(hit+0x24)==0x0d5c17b7u,"heli equality selects lower identifier");
    put(heli+0x2cc,5001.0f);out=replay_hit_override_32b3a8(image,arg,config,api);
    require_hit(image.read<ReU32>(hit+0x24)==0xa0e77c82u,"heli ordered greater identifier");
    config={false,true,true,1,0};put(hit+0x40,ReU32(0x5333f7a0));
    put(entity,klass);put(klass+0x10,name);
    const re::ReStringView text="BasePlayer";for(ReUSize i=0;i<=text.size();++i)put(name+i,i<text.size()?text[i]:char(0));
    api.entity_32b308=[&](ReU32 id){require_hit(id==17,"chams entity ID remains integer");return entity;};
    api.chams_36a464=[&](Address p){require_hit(p==entity,"separate chams worker receiver");put(hit+0x40,ReU32(0));};
    out=replay_hit_override_32b3a8(image,arg,config,api);
    require_hit(out.chams_calls==1&&out.bone_writes==1&&image.read<ReU32>(hit+0x24)==0x557efe45u,"original kind remains captured across chams callback");
    put(hit+0x40,ReU32(0x5333f7a0));api.chams_36a464={};
    out=replay_hit_override_32b3a8(image,arg,config,api);
    require_hit(out.status==HitOverrideStatus::missing_boundary&&out.stopped_at==0x32b4be&&!out.bone_writes,"missing reached chams dependency stops before override");
    api.original=[](Address,Address){};
    out=replay_hit_hook_32b62c(image,0,0,{},api);
    require_hit(out.original_called&&!out.bone_writes,"invalid worker argument still reaches hook original");
}
} // namespace rust_internal_re
