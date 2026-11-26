#include "renderer_helpers_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T>T get(const Snapshot& im,Address a,Rva at){const auto v=im.read<T>(a);if(!v){ __builtin_trap(); }return *v;}
template<class T>void put(Snapshot& im,Address a,T value,Rva at){if(!im.write(a,value)){ __builtin_trap(); }}
template<class F>void need(const F& f,Rva at,Rva target){if(!f){ __builtin_trap(); }}
}
Address renderer_background_392dcc(Snapshot& im,Address viewport,ReU64 index,Address name,RendererBackgroundBackend& b) {
    auto list=get<Address>(im,viewport+index*8+0x38,0x392dde);
    const auto context=get<Address>(im,0x405b28,0x392de6);
    if(list==0) {
        need(b.allocate_395158,0x392dff,0x395158);list=b.allocate_395158(0xc8);
        // [C]38a4ac initializes vectors then memset(list,0,c8), sets shared-data pointer+38.
        if(!im.contains(list,0xc8)){ __builtin_trap(); }
        for(ReUSize i=0;i<0xc8;++i)put(im,list+i,ReU8(0),0x38a511);
        put(im,list+0x38,context+0x3c38,0x38a516);
        put(im,list+0x40,name,0x392e2d);put(im,viewport+index*8+0x38,list,0x392e31);
    }
    const auto frame=get<ReI32>(im,context+0x3e60,0x392e36);
    if(get<ReI32>(im,viewport+index*4+0x30,0x392e3d)!=frame) {
        need(b.reset_3a9258,0x392e46,0x3a9258);b.reset_3a9258(list);
        const auto atlas=get<Address>(im,context+0x58,0x392e4b),texture=get<Address>(im,atlas+8,0x392e52);
        need(b.texture_3a73c4,0x392e56,0x3a73c4);b.texture_3a73c4(list,texture);
        const auto position=get<Vec2>(im,viewport+4,0x392e68),size=get<Vec2>(im,viewport+0xc,0x392e68);
        need(b.clip_3a7268,0x392e7a,0x3a7268);b.clip_3a7268(list,position,position+size,false);
        // [C] Native rereads global frame count after all local helper effects.
        put(im,viewport+index*4+0x30,get<ReI32>(im,context+0x3e60,0x392e7f),0x392e86);
    }
    return list;
}
Address renderer_background_392164(Snapshot& im,Address viewport,RendererBackgroundBackend& b) {
    need(b.intern_name,0x39217f,0x39eb2c);return renderer_background_392dcc(im,viewport,0,b.intern_name("##Background"),b);
}
Address renderer_background_392198(Snapshot& im,RendererBackgroundBackend& b) {
    const auto context=get<Address>(im,0x405b28,0x39219c);
    const auto pointer=renderer_vector_index_38bb84(im,context+0x48d8,0);
    return renderer_background_392164(im,get<Address>(im,pointer,0x3921b1),b);
}
} // namespace rust_internal_re
