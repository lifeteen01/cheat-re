#include "drawlist_core_analysis.hpp"
namespace rust_internal_re {
namespace {
template<class T>T get(const Snapshot& im,Address a,Rva site){const auto v=im.read<T>(a);if(!v){ __builtin_trap(); }return *v;}
template<class T>void put(Snapshot& im,Address a,T value,Rva site){if(!im.write(a,value)){ __builtin_trap(); }}
template<class T>DrawCoreBuffer<T> copy_buffer(const Snapshot& im,Address descriptor,ReUSize stride,ReUSize maximum){
    DrawCoreBuffer<T> output;const auto size=get<ReI32>(im,descriptor,0x38bb90),capacity=get<ReI32>(im,descriptor+4,0x38bb90);
    const auto data=get<Address>(im,descriptor+8,0x38bb90);
    if(size<0||capacity<size||ReUSize(capacity)>maximum){ __builtin_trap(); }
    output.reserve(capacity);output.resize_existing(size);
    for(ReI32 i=0;i<size;++i)output.write(i,get<T>(im,data+ReU64(i)*stride,0x38bb90));
    return output;
}
ReI32 write_offset(const Snapshot& im,Address list,Address descriptor,Address field,ReUSize stride){
    const auto pointer=get<Address>(im,list+field,0x3a719c),data=get<Address>(im,list+descriptor+8,0x3a719c);
    if(pointer<data||(pointer-data)%stride||(pointer-data)/stride>ReU64(INT32_MAX)){ __builtin_trap(); }
    return ReI32((pointer-data)/stride);
}
DrawCoreList& ensure(Snapshot& im,DrawCoreStore& store,Address key){if(!store.lists.contains(key))store.lists.insert(key,copy_draw_core_list(im,key));return store.lists[key];}
}
DrawCoreList copy_draw_core_list(const Snapshot& im,Address a,ReUSize maximum){
    DrawCoreList d;d.commands=copy_buffer<DrawCoreCommand>(im,a,0x38,maximum);d.indices=copy_buffer<ReU16>(im,a+0x10,2,maximum);d.vertices=copy_buffer<DrawVertex>(im,a+0x20,20,maximum);
    d.flags=get<ReU32>(im,a+0x30,0x3a719c);d.current_vertex=get<ReU32>(im,a+0x34,0x3a719c);
    const auto shared=get<Address>(im,a+0x38,0x3a92a0);d.shared_initial_flags=get<ReU32>(im,shared+0x2c,0x3a92a9);
    d.vertex_write_valid=get<Address>(im,a+0x48,0x3a719c)!=0;d.index_write_valid=get<Address>(im,a+0x50,0x3a719c)!=0;
    if(d.vertex_write_valid)d.vertex_write=write_offset(im,a,0x20,0x48,20);
    if(d.index_write_valid)d.index_write=write_offset(im,a,0x10,0x50,2);
    d.clip_stack=copy_buffer<re::ReArray<float,4>>(im,a+0x58,16,maximum);d.texture_stack=copy_buffer<Address>(im,a+0x68,8,maximum);d.path=copy_buffer<Vec2>(im,a+0x78,8,maximum);
    d.header.clip=get<re::ReArray<float,4>>(im,a+0x88,0x3a8d94);d.header.texture=get<Address>(im,a+0x98,0x3a8e28);d.header.vertex_offset=get<ReU32>(im,a+0xa0,0x3a8ec0);
    d.splitter.current=get<ReI32>(im,a+0xa8,0x3a8094);d.splitter.count=get<ReI32>(im,a+0xac,0x3a65c4);
    const auto count=get<ReI32>(im,a+0xb0,0x3a65c4);const auto data=get<Address>(im,a+0xb8,0x3a65c4);
    if(count<0||ReUSize(count)>maximum){ __builtin_trap(); }
    d.splitter.channels.resize(ReUSize(count));
    for(ReI32 i=0;i<count;++i)if(i!=d.splitter.current){auto& channel=d.splitter.channels[ReUSize(i)];channel.commands=copy_buffer<DrawCoreCommand>(im,data+ReU64(i)*32,56,maximum);channel.indices=copy_buffer<ReU16>(im,data+ReU64(i)*32+16,2,maximum);}
    d.fringe_scale=get<float>(im,a+0xc0,0x3a9306);return d;
}
DrawList draw_core_geometry(const DrawCoreList& d){
    DrawList result;result.vertices.reserve(ReUSize(d.vertices.size));result.indices.reserve(ReUSize(d.indices.size));result.commands.reserve(ReUSize(d.commands.size));
    for(ReI32 i=0;i<d.vertices.size;++i)result.vertices.push_back(d.vertices.at(i));
    for(ReI32 i=0;i<d.indices.size;++i)result.indices.push_back(d.indices.at(i));
    for(ReI32 i=0;i<d.commands.size;++i){const auto& c=d.commands.at(i);result.commands.push_back({c.vertex_offset,c.index_offset,c.element_count});}return result;
}
RenderListInput draw_core_render_commands(const DrawCoreList& d){
    RenderListInput result;result.commands.reserve(ReUSize(d.commands.size));
    for(ReI32 i=0;i<d.commands.size;++i){const auto& command=d.commands.at(i);result.commands.push_back({{command.clip[0],command.clip[1],command.clip[2],command.clip[3]},command.texture});}
    return result;
}
Address draw_core_allocate_395158(Snapshot& im,ReUSize size,const re::ReFunction<Address(Address,Address,ReUSize)>& allocate){
    const auto ctx=get<Address>(im,0x405b28,0x395158);if(ctx)put(im,ctx+0xf4,get<ReU32>(im,ctx+0xf4,0x395164)+1u,0x395164);
    const auto target=get<Address>(im,0x27fa18,0x39516a),user=get<Address>(im,0x405b68,0x395171);
    if(!allocate||!target){ __builtin_trap(); }
    return allocate(target,user,size);
}
void draw_core_free_39517c(Snapshot& im,Address object,const re::ReFunction<void(Address,Address,Address)>& free){
    if(object){const auto ctx=get<Address>(im,0x405b28,0x395181);if(ctx)put(im,ctx+0xf4,get<ReU32>(im,ctx+0xf4,0x39518d)-1u,0x39518d);}
    const auto user=get<Address>(im,0x405b68,0x395193),target=get<Address>(im,0x27fa20,0x39519a);
    if(!free||!target){ __builtin_trap(); }
    free(target,user,object);
}
RendererBackgroundBackend bind_drawlist_core_background(Snapshot& im,DrawCoreStore& store,RendererBackgroundBackend output){
    output.reset_3a9258=[&](Address list){draw_core_reset_3a9258(ensure(im,store,list));};
    output.texture_3a73c4=[&](Address list,Address texture){draw_core_push_texture_3a73c4(ensure(im,store,list),texture);};
    output.clip_3a7268=[&](Address list,Vec2 minimum,Vec2 maximum,bool intersect){draw_core_push_clip_3a7268(ensure(im,store,list),minimum,maximum,intersect);};return output;
}
RendererIconBackend bind_drawlist_core_icons(DrawCoreStore& store,RendererIconBackend output){
    output.image_3a0168=[&](const RendererImageRequest& q){const auto list=store.lists.find(q.draw_list);if(!list){ __builtin_trap(); }draw_core_image_3a0168(**list,q.texture,q.minimum,q.maximum,q.uv_minimum,q.uv_maximum,q.tint);};return output;
}
} // namespace rust_internal_re
