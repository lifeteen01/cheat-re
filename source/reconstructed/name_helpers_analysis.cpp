#include "name_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T>T name_read(const Snapshot& im,Address p,Rva r) {
    const auto value=im.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
re::ReVector<ReU16> name_words(const Snapshot& im,Address p,ReUSize maximum,Rva r) {
    re::ReVector<ReU16> words;
    for(ReUSize n=0;n<maximum;++n) {
        const auto word=name_read<ReU16>(im,p+2*n,r);
        if(!word)return words;
        words.push_back(word);
    }
    __builtin_trap();
}
re::ReString low_bytes(re::ReSpan<const ReU16> words) {
    // [C]2cee44→2cf59c→2cf7e4 copies BYTE[iterator], advancing input2/output1.
    re::ReString result;result.reserve(words.size());
    for(const auto word:words)result.push_back(char(ReU8(word)));
    return result;
}
template<class F>GameBaseResult<re::ReString> named(F&& f) {
    {return {f()};}
}
}
GameBaseResult<re::ReString> player_name_369040(const Snapshot& im,Address player,Address module,
    WorldNameState& state,WorldNameBackend& api,ReUSize maximum) {
    return named([&]()->re::ReString {
        if(!sample_pointer_range(player))return {};
        const auto npc=npc_predicate_36a178(im,player);
        if(!npc)__builtin_trap();
        if(*npc)return "Scientist"; // [C]getter367c04; no streamer substitution here.
        const auto string=name_read<Address>(im,player+0x338,0x3690a9);
        if(!sample_pointer_range(string)||!sample_pointer_range(string+0x14))return {};
        auto text=encode_world_name_393c38(name_words(im,string+0x14,maximum,0x365004));
        if(text.empty())return text;
        if(name_read<ReU8>(im,module+0x3fc4c8,0x36912b))
            text=streamer_world_name_3661ac(text,state,api);
        return text;
    });
}
GameBaseResult<re::ReString> item_name_372398(const Snapshot& im,Address definition,ReUSize maximum) {
    return named([&]()->re::ReString {
        if(!sample_pointer_range(definition))return {};
        const auto short_string=name_read<Address>(im,definition+0x28,0x3723e6);
        if(!sample_pointer_range(short_string))return {};
        const auto short_words=name_words(im,short_string+0x14,maximum,0x2d45c8);
        if(short_words.empty())return {};
        const auto short_name=low_bytes(short_words);
        // [C]37233c/372354 literals decode from2a8c3c/44: m16a2→M-16.
        if(entity_name_hash_2d6354(short_name)==entity_name_hash_2d6354("m16a2"))return "M-16";
        const auto phrase=name_read<Address>(im,definition+0x40,0x3724e4);
        if(!sample_pointer_range(phrase))return {};
        const auto translated=name_read<Address>(im,phrase+0x20,0x37250b);
        if(!sample_pointer_range(translated))return {};
        return low_bytes(name_words(im,translated+0x14,maximum,0x2d45c8));
    });
}
} // namespace rust_internal_re
