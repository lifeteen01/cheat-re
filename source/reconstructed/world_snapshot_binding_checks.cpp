#include "world_snapshot_bindings.hpp"
namespace rust_internal_re {
void check_world_snapshot_bindings() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("world snapshot binding fixture") */ }};
    constexpr Address base=0x1000000,local=base+0x1000,held=base+0x2000,definition=base+0x3000,
        eyes=base+0x4000,klass=base+0x5000,name=base+0x6000,
        model=base+0x7000,array=base+0x8000,transform=base+0x9000;
    Snapshot im(base,re::ReVector<ReByte>(0x420000));
    const auto put=[&](Address p,auto value){check(im.write(p,value));};
    for(const auto& spec:game_helper_direct_specs()) {put(base+spec.flags,ReU32(3));put(base+spec.target,Address(base+spec.wrapper));}
    put(base+0x3d5e60,Address(0xabc));put(base+0x3f7e48,ReU8(0));
    put(local+0x48,Address(1));put(definition+0x20,ReU32(0x34b73d71));put(definition+0x58,ReU32(0));
    put(held+0x3ac,2.0f);put(held,klass);put(klass+0x10,name);
    constexpr re::ReStringView class_name="GrenadeWeapon";
    for(ReUSize n=0;n<=class_name.size();++n)put(name+n,n==class_name.size()?char(0):class_name[n]);
    put(local+0x1d0,model);put(model+0x50,array);put(array+0x20+53*8,transform);
    ReUSize definitions=0;
    GameHelperApi api;
    api.object=[&](const GameHelperCall& c)->Address {
        if(c.wrapper==0x368a84){check(c.receiver==local);return held;}
        if(c.wrapper==0x37154c){check(c.receiver==held);++definitions;return definition;}
        if(c.wrapper==0x369298){check(c.receiver==local);return eyes;}
        __builtin_trap();
    };
    api.vector=[&](const GameHelperCall& c){check(c.wrapper==0x373a68&&c.receiver==eyes);return Vec3{1,2,3};};
    api.orientation=[&](const GameHelperCall& c){check(c.wrapper==0x3739c4&&c.receiver==eyes);return Orientation{0,0,0,1};};
    GameHelperVisibilityRegistry visibility;visibility.entries[local]=1;
    GameHelperEnvironment env{};env.module=base;env.literal_storage=base+0x410000;env.visibility=&visibility;
    SnapshotBindingQueries queries;
    queries.foreign.vector=[&](Rva r,Address p){check(r==0x3747d4&&p==transform);return Vec3{4,5,6};};
    const auto simulation=bind_world_simulation_helpers(im,env,api,queries);
    check(simulation.held_368a84(local)==held&&simulation.object_371464(held)==held&&definitions==1);
    check(simulation.object_3716e0(held)==0&&simulation.item_identifier_37261c(definition)==0x34b73d71);
    check(simulation.charge_speed_36b504(held)==3&&simulation.class_name_2e5a54(held)==class_name);
    check(simulation.direction_368100(local).z==1&&simulation.local_position_369164(local).y==2);
    const auto player=bind_world_player_helpers(im,env,api,queries);
    check(player.entity_valid_2e0e9c(local)&&player.visible_36b244(local)&&player.rotation_36920c(local)[3]==1);
    check(player.player.bone_368be8(local,53)->z==6);
    visibility.entries[local]=0;check(!player.visible_36b244(local));
    bool missing=false;
    {(void)simulation.item_identifier_37261c(base+0x500000);}
    check(missing);
    const auto no_position=bind_world_player_helpers(im,env,api,{});missing=false;
    {(void)no_position.player.bone_368be8(local,53);}
    check(missing);
}
} // namespace rust_internal_re
