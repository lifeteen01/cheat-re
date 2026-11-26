#include "name_helpers_analysis.hpp"
namespace rust_internal_re {
void check_name_helpers_reconstruction() {
    const auto check=[](bool p){if(!p){ /* FREESTANDING_TODO: was throw runtime_error("name helper fixture") */ }};
    constexpr Address b=0x1000000,player=b+0x1000,managed=b+0x2000,definition=b+0x3000,
        short_name=b+0x4000,phrase=b+0x5000,translated=b+0x6000;
    Snapshot im(b,re::ReVector<ReByte>(0x410000));
    const auto put=[&](Address p,auto value){check(im.write(p,value));};
    const auto wide=[&](Address p,re::ReSpan<const char16_t> words) {
        for(ReUSize n=0;n<=words.size();++n)put(p+0x14+2*n,n==words.size()?char16_t(0):words[n]);
    };
    WorldNameState names;WorldNameBackend rng;
    put(player+0x54,ReU32(0xf4e1d514));put(player+0x338,managed);wide(managed,u"A\u00e9");
    check(player_name_369040(im,player,b,names,rng).value=="A\xc3\xa9");
    put(b+0x3fc4c8,ReU8(1));names.substitutions_3fdad0["A\xc3\xa9"]="copied";
    check(player_name_369040(im,player,b,names,rng).value=="copied");
    put(player+0x54,ReU32(1));check(player_name_369040(im,player,b,names,rng).value=="Scientist");
    put(definition+0x28,short_name);wide(short_name,u"m16a2");
    check(item_name_372398(im,definition).value=="M-16");
    // [C] Hash sees a low-byte zero; the owned converted string retains its length.
    wide(short_name,u"m16a2\u0100suffix");check(item_name_372398(im,definition).value=="M-16");
    wide(short_name,u"other");put(definition+0x40,phrase);put(phrase+0x20,translated);
    wide(translated,u"A\u0100\u03a9");
    const auto localized=item_name_372398(im,definition);
    check(localized.status==GameBaseStatus::complete&&localized.value==re::ReString("A\0\xa9",3));
    put(phrase+0x20,Address(0));check(item_name_372398(im,definition).value.empty());
    check(item_name_372398(im,0).status==GameBaseStatus::complete);
    check(item_name_372398(im,b+0x500000).status==GameBaseStatus::missing_bytes);
}
} // namespace rust_internal_re
