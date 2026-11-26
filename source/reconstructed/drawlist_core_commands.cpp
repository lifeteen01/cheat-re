#include "drawlist_core_analysis.hpp"
namespace rust_internal_re {
namespace {
ReI32 add(ReI32 a,ReI32 b){return re::re_bit_cast<ReI32>(ReU32(a)+ReU32(b));}
DrawCoreCommand& last(DrawCoreList& d){return d.commands.at(d.commands.size-1);}
bool same_clip(const re::ReArray<float,4>& a,const re::ReArray<float,4>& b){return re::re_memcmp(a.data(),b.data(),16)==0;}
bool same_header(const DrawCoreCommand& a,const DrawCoreHeader& b){return same_clip(a.clip,b.clip)&&a.texture==b.texture&&a.vertex_offset==b.vertex_offset;}
void copy_header(DrawCoreCommand& a,const DrawCoreHeader& b){a.clip=b.clip;a.texture=b.texture;a.vertex_offset=b.vertex_offset;}
}
ReI32 draw_core_growth_362efc(ReI32 capacity,ReI32 required){
    const auto candidate=capacity?add(capacity,capacity/2):8;return candidate>required?candidate:required;
}
DrawCoreCommand draw_core_command_39f294(){return {};}
void draw_core_add_command_39fd18(DrawCoreList& d){auto command=draw_core_command_39f294();copy_header(command,d.header);command.index_offset=ReU32(d.indices.size);d.commands.push(command);}
void draw_core_clip_changed_3a8d94(DrawCoreList& d){
    auto& current=last(d);
    if(current.element_count){if(!same_clip(current.clip,d.header.clip))draw_core_add_command_39fd18(d);else current.clip=d.header.clip;return;}
    if(d.commands.size>1){const auto& previous=d.commands.at(d.commands.size-2);
        if(same_header(previous,d.header)&&previous.index_offset+previous.element_count==current.index_offset&&!previous.callback){d.commands.pop();return;}}
    current.clip=d.header.clip;
}
void draw_core_texture_changed_3a8e28(DrawCoreList& d){
    auto& current=last(d);
    if(current.element_count){if(current.texture!=d.header.texture)draw_core_add_command_39fd18(d);else current.texture=d.header.texture;return;}
    if(d.commands.size>1){const auto& previous=d.commands.at(d.commands.size-2);
        if(same_header(previous,d.header)&&previous.index_offset+previous.element_count==current.index_offset&&!previous.callback){d.commands.pop();return;}}
    current.texture=d.header.texture;
}
void draw_core_vertex_offset_changed_3a8ec0(DrawCoreList& d){d.current_vertex=0;if(last(d).element_count)draw_core_add_command_39fd18(d);else last(d).vertex_offset=d.header.vertex_offset;}
void draw_core_push_clip_3a7268(DrawCoreList& d,Vec2 minimum,Vec2 maximum,bool intersect){
    auto rectangle=re::ReArray<float,4>{minimum.x,minimum.y,maximum.x,maximum.y};
    if(intersect){const auto& old=d.header.clip;if(old[0]>rectangle[0])rectangle[0]=old[0];if(old[1]>rectangle[1])rectangle[1]=old[1];if(rectangle[2]>old[2])rectangle[2]=old[2];if(rectangle[3]>old[3])rectangle[3]=old[3];}
    // [C] MAXSS returns its second operand on unordered/equal, preserving source NaN/zero bits.
    rectangle[2]=rectangle[0]>rectangle[2]?rectangle[0]:rectangle[2];rectangle[3]=rectangle[1]>rectangle[3]?rectangle[1]:rectangle[3];
    d.clip_stack.push(rectangle);d.header.clip=rectangle;draw_core_clip_changed_3a8d94(d);
}
void draw_core_push_texture_3a73c4(DrawCoreList& d,Address texture){d.texture_stack.push(texture);d.header.texture=texture;draw_core_texture_changed_3a8e28(d);}
void draw_core_pop_texture_3a6e84(DrawCoreList& d){d.texture_stack.pop();d.header.texture=d.texture_stack.size?d.texture_stack.at(d.texture_stack.size-1):0;draw_core_texture_changed_3a8e28(d);}
void draw_core_reserve_3a719c(DrawCoreList& d,ReI32 indices,ReI32 vertices){
    if(d.current_vertex+ReU32(vertices)>=0x10000u&&(d.flags&8)){d.header.vertex_offset=ReU32(d.vertices.size);draw_core_vertex_offset_changed_3a8ec0(d);}
    last(d).element_count+=ReU32(indices);
    const auto old_vertices=d.vertices.size;d.vertices.resize(add(old_vertices,vertices));d.vertex_write=old_vertices;d.vertex_write_valid=true;
    const auto old_indices=d.indices.size;d.indices.resize(add(old_indices,indices));d.index_write=old_indices;d.index_write_valid=true;
}
void draw_core_unreserve(DrawCoreList& d,ReI32 indices,ReI32 vertices){
    last(d).element_count-=ReU32(indices);d.vertices.resize_existing(re::re_bit_cast<ReI32>(ReU32(d.vertices.size)-ReU32(vertices)));d.indices.resize_existing(re::re_bit_cast<ReI32>(ReU32(d.indices.size)-ReU32(indices)));
}
void draw_core_write_relative(DrawCoreList& d,re::ReSpan<const DrawVertex> vertices,re::ReSpan<const ReU16> indices){
    if(!indices.empty()&&!d.index_write_valid){ __builtin_trap(); }
    for(const auto index:indices){d.indices.write(d.index_write,ReU16(d.current_vertex+index));d.index_write=add(d.index_write,1);}
    if(!vertices.empty()&&!d.vertex_write_valid){ __builtin_trap(); }
    for(const auto& vertex:vertices){d.vertices.write(d.vertex_write,vertex);d.vertex_write=add(d.vertex_write,1);}
    d.current_vertex+=ReU32(vertices.size());
}
void draw_core_rectangle_3a7020(DrawCoreList& d,Vec2 minimum,Vec2 maximum,Vec2 uv_minimum,Vec2 uv_maximum,ReU32 color){
    const re::ReArray<Vec2,4> positions{minimum,Vec2{maximum.x,minimum.y},maximum,Vec2{minimum.x,maximum.y}};
    const re::ReArray<Vec2,4> uv{uv_minimum,Vec2{uv_maximum.x,uv_minimum.y},uv_maximum,Vec2{uv_minimum.x,uv_maximum.y}};
    re::ReArray<DrawVertex,4> vertices{};
    for(ReUSize i=0;i<4;++i){re::re_memcpy(vertices[i].data(),&positions[i],8);re::re_memcpy(vertices[i].data()+8,&uv[i],8);re::re_memcpy(vertices[i].data()+16,&color,4);}
    constexpr re::ReArray<ReU16,6> indices{0,1,2,0,2,3};draw_core_write_relative(d,vertices,indices);
}
void draw_core_image_3a0168(DrawCoreList& d,Address texture,Vec2 minimum,Vec2 maximum,Vec2 uv_minimum,Vec2 uv_maximum,ReU32 color){
    if(!(color&0xff000000))return;
    const auto old=d.header.texture;if(texture!=old)draw_core_push_texture_3a73c4(d,texture);
    draw_core_reserve_3a719c(d,6,4);draw_core_rectangle_3a7020(d,minimum,maximum,uv_minimum,uv_maximum,color);
    if(texture!=old)draw_core_pop_texture_3a6e84(d);
}
} // namespace rust_internal_re
