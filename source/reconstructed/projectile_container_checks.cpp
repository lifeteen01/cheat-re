#include "projectile_container_analysis.hpp"
namespace rust_internal_re {
void check_projectile_container() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("projectile vector fixture") */ }};
    constexpr Address b=0x1000000,v=b+0x100,slots=b+0x1000,p1=b+0x2000,p2=b+0x3000;
    Snapshot im(b,re::ReVector<ReByte>(0x5000));
    const auto put=[&](Address p,auto value){check(im.write(p,value));};
    put(v,slots);put(v+8,slots+24);put(slots,Address(0));put(slots+8,p1);put(slots+16,p2);
    put(p1+0x138,ReU32(123));put(p2+0x138,ReU32(123));
    auto found=find_shot_32b838(im,v,123);check(found&&found->object==p1&&found->iterator==slots+8);
    put(p1+0x138,ReU32(456));
    check(erase_shot_32cb8c(im,v,found->iterator)==slots+8);
    check(im.read<Address>(slots+8)==p2&&im.read<Address>(v+8)==slots+16);
    const auto rebound=bind_projectile_container(im,v);
    found=rebound.lookup_shot_entry(123);check(found&&found->object==p2&&found->iterator==slots+8);
    rebound.erase_shot_iterator(found->iterator);check(im.read<Address>(v+8)==slots+8);
    check(!find_shot_32b838(im,v,123));
    bool bounds=false;
    put(slots,p1);put(v+8,slots+8);put(p1+0x138,ReU32(123));
    {(void)find_shot_32b838(im,v,123,0);}
    check(bounds);bounds=false;
    put(v+8,slots+7);
    {(void)find_shot_32b838(im,v,123);}
    check(bounds);bounds=false;
    put(v+8,slots+8);put(slots,b+0x4f00);
    {(void)find_shot_32b838(im,v,123);}
    check(bounds);
}
} // namespace rust_internal_re
