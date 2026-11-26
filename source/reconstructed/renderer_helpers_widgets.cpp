#include "renderer_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T>T read(const Snapshot& im,Address a,Rva site){auto v=im.read<T>(a);if(!v){ __builtin_trap(); }return *v;}
}
re::ReString renderer_string(const Snapshot& im,Address object,ReUSize maximum) {
    const auto size=read<ReU64>(im,object+0x10,0x2d4194),capacity=read<ReU64>(im,object+0x18,0x2d4194);
    if(size>maximum){ __builtin_trap(); }
    const auto chars=capacity>=16?read<Address>(im,object,0x2cd7ec):object;
    if(!im.contains(chars,ReUSize(size))){ __builtin_trap(); }
    re::ReString value;value.reserve(ReUSize(size));
    for(ReUSize i=0;i<size;++i)value.push_back(char(read<ReU8>(im,chars+i,0x2d4194)));
    return value;
}
RendererWidget read_renderer_widget(const Snapshot& im,Address a) {
    // [C]2db470→2db3ec copies strings plus the listed fields, preserving embedded NULs.
    return {renderer_string(im,a),renderer_string(im,a+0x30),read<ReI32>(im,a+0x20,0x2db401),
        read<re::ReArray<ReByte,8>>(im,a+0x24,0x2db407),read<ReU8>(im,a+0x2c,0x2db411),
        read<re::ReArray<ReByte,16>>(im,a+0x50,0x2db492),read<ReU8>(im,a+0x60,0x2db49b),read<ReU32>(im,a+0x64,0x2db4a1)};
}
re::ReVector<RendererWidget> copy_renderer_widgets_2eec7c(const Snapshot& im,Address vector,ReUSize maximum) {
    const auto first=read<Address>(im,vector,0x2eecc4),last=read<Address>(im,vector+8,0x2eecbe);
    const auto difference=re::re_bit_cast<ReI64>(last-first);
    const auto count=difference/0x68; // [C] signed magic division truncates toward zero.
    if(count<0||ReU64(count)>maximum||difference%0x68){ __builtin_trap(); }
    re::ReVector<RendererWidget> copy;copy.reserve(ReUSize(count));
    for(ReI64 i=0;i<count;++i)copy.push_back(read_renderer_widget(im,first+ReU64(i)*0x68));
    return copy;
}
re::ReArray<re::ReStringView,6> renderer_widget_keys(){return {"DisplayName","HeldEntity","Indicator","Indicator0","Indicator2","Indicator3"};}
ReUSize find_renderer_widget(re::ReSpan<const RendererWidget> list,Rva routine) {
    constexpr re::ReArray<Rva,6> routines{0x2ee154,0x2ee1d0,0x2ee24c,0x2ee2c8,0x2ee344,0x2ee0d8};
    const auto k=re::re_find(routines.begin(),routines.end(),routine);
    if(!k){ __builtin_trap(); }
    const auto key=renderer_widget_keys()[ReUSize(k-routines.begin())];
    for(ReUSize i=0;i<list.size();++i)if(list[i].key==key)return i;
    return list.size();
}
RendererWidget& require_renderer_widget(re::ReVector<RendererWidget>& list,Rva routine) {
    const auto i=find_renderer_widget(list,routine);
    if(i==list.size()){ __builtin_trap(); }
    return list[i];
}
void set_renderer_widget_text(re::ReVector<RendererWidget>& list,Rva routine,re::ReStringView text,re::ReOptional<ReU32> icon) {
    auto& item=require_renderer_widget(list,routine);item.text=text;if(icon)item.icon_64=*icon;
}
Address renderer_vector_index_38bb84(const Snapshot& im,Address vector,ReI32 index) {
    return read<Address>(im,vector+8,0x38bb84)+ReU64(ReI64(index))*8;
}
} // namespace rust_internal_re
