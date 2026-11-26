#include "frame_game_bindings.hpp"
namespace rust_internal_re {
void check_frame_game_bindings() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("frame game binding fixture") */ }};
    constexpr Address b=0x1000000,container=b+0x1000,list=b+0x2000,array=b+0x3000,item=b+0x4000;
    Snapshot im(b,re::ReVector<ReByte>(0x10000));
    const auto put=[&](Address p,auto value){check(im.write(p,value));};
    put(container+0x20,list);put(list+0x18,ReU32(0xffffffff));put(list+0x10,array);put(array+0x30,item);
    put(item+0x30,ReU32(0x80000001));put(item+0x54,ReU32(1));
    WorldNameState names;WorldNameBackend rng;FrameDependencyResult last;
    GameHelperEnvironment env{};env.module=b;GameHelperApi effects;
    FrameDependencyApi fallback;
    fallback.unity.external=[](Rva,re::ReSpan<const UnityValue>)->re::ReOptional<UnityValue>{__builtin_trap();};
    const auto api=bind_frame_game_helpers(im,env,effects,names,rng,last,fallback);
    const auto call=[&](Rva r,std::initializer_list<UnityValue> args) {
        const auto result=api.unity.external(r,re::ReSpan<const UnityValue>(args.begin(),args.size()));check(bool(result));return *result;
    };
    check(re::re_get<ReI32>(call(0x37224c,{container}))==-1);
    check(re::re_get<Address>(call(0x3722f0,{container,ReI32(2)}))==item);
    check(re::re_get<ReI32>(call(0x371294,{item}))==re::re_bit_cast<ReI32>(0x80000001u));
    check(re::re_get<re::ReString>(call(0x369040,{item}))=="Scientist");
    bool missing=false;
    {(void)call(0x37224c,{b+0x20000});}
    check(missing&&last.status==UnityStatus::unreadable_snapshot);
    FrameMenuState menu;menu.font_sizes[123]=10;re::ReString out;
    const auto result=frame_fit_text_318d74(menu,api,"abcdef",10,123,out);
    check(result.status==UnityStatus::unreadable_snapshot&&result.stopped_at==0x3a3874);
}
} // namespace rust_internal_re
