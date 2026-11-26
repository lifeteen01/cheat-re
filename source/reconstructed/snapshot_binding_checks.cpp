#include "re_compat.h"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
namespace {
void demand(bool ok,const char* s) {if(!ok){ __builtin_trap(); }
}
template<typename T> void store(Snapshot& s, Address a, T v) { s.write(a, v); }
}
void check_snapshot_bindings() {
    constexpr Address b=0x4000000,held=b+0x100,definition=b+0x1000,entity=b+0x2000,
        model=b+0x3000,array=b+0x4000,transform=b+0x5000,klass=b+0x6000,name=b+0x6100;
    Snapshot im(b,re::ReVector<ReByte>(0x7000));
    SnapshotBindingQueries q;
    int definitions=0,transforms=0;
    q.foreign.object=[&](Rva r,Address p) {demand(r==0x37154c&&p==held,"definition foreign arguments");++definitions;return definition;};
    q.foreign.vector=[&](Rva r,Address p) {demand(r==0x3747d4&&p==transform,"bone foreign transform arguments");++transforms;return Vec3{1,2,3};};
    auto calls=bind_snapshot_aim(im,q);
    store(im,definition+0x20,ReU32(0xb18f8a5b));store(im,definition+0x58,ReU32(0));
    demand(calls.object(0x371eb8,held)==held&&definitions==1,"server classifier integer ID match");
    store(im,definition+0x58,ReU32(5));
    demand(calls.object(0x371eb8,held)==0,"server classifier category rejection");
    store(im,definition+0x20,ReU32(0x642edf92));
    demand(calls.object(0x3721b4,held)==held,"melee category5 acceptance");
    demand(calls.integer(0x37261c,definition)==0x642edf92,"bound ID remains integer");
    demand(calls.integer(0x37236c,0)==UINT32_MAX,"invalid category native sentinel");
    demand(calls.object(0x371464,0)==0,"invalid held skips foreign definition");
    // [I] This partial snapshot intentionally omits the category after a nonmember ID.
    Snapshot partial(b,re::ReVector<ReByte>(0x1024));
    store(partial,definition+0x20,ReU32(0));
    auto partial_calls=bind_snapshot_aim(partial,q);
    demand(partial_calls.object(0x371eb8,held)==0,"ID rejection precedes missing category bytes");
    store(partial,definition+0x20,ReU32(0xb18f8a5b));
    bool missing=false;
    {(void)partial_calls.object(0x371eb8,held);}
    demand(missing,"matched ID exposes missing category instead of fabricated rejection");
    store(im,entity+0x48,Address(1));store(im,entity+0x778,held);
    store(im,entity+0x708,ReU32(0x10|0x40));
    demand(calls.valid_2e0e9c(entity)&&calls.object(0x369738,entity)==held,"base validity and input binding");
    demand(calls.predicate(0x36b288,entity,0)&&calls.predicate(0x36a20c,entity,0)&&!calls.predicate(0x36a20c,entity,1),"bound flags and sleeping bypass");
    store(im,entity,klass);store(im,klass+0x10,name);store(im,name,ReU8(0xff));store(im,name+1,ReU8(0));
    demand(calls.class_hash_2e5a54_2d6354(entity)==entity_name_hash_2d6354(re::re_string_fill(1, char(0xff))),"bound class hash preserves signed bytes");
    store(im,entity+0x1d0,model);store(im,model+0x50,array);store(im,array+0x20+7*8,transform);
    demand(calls.bone_368be8(entity,7).z==3&&transforms==1,"bone pointer chain dispatches only final game transform");
    demand(calls.bone_368be8(entity,-1).x==0&&transforms==1,"explicit minus-one bone return");
    store(im,array+0x10,transform);
    demand(calls.bone_368be8(entity,-2).x==1,"native signed index offset is retained in owned bounds");
    demand(calls.bone_368be8(entity,0x20000007).z==3,"native index multiplication wraps in32 bits");
    bool absent=false;
    {(void)calls.integer(0xabcdef,entity);}
    demand(absent,"untranslated binding has no invented default");
    // [I] Verify a public controller retains the reached adapter failure status.
    WeaponConfig cfg;
    const auto result=replay_weapon_319024(im,cfg,entity,bind_snapshot_aim(im,{}));
    demand(result.status==AimWeaponStatus::missing_boundary&&result.boundary==0x368a84,"worker reports concrete binding failure RVA");
}
} // namespace rust_internal_re
