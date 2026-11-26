#include "drawlist_core_analysis.hpp"
namespace rust_internal_re {
namespace {
bool same_header(const DrawCoreCommand& a,const DrawCoreHeader& b){return re::re_memcmp(a.clip.data(),b.clip.data(),16)==0&&a.texture==b.texture&&a.vertex_offset==b.vertex_offset;}
bool same_header(const DrawCoreCommand& a,const DrawCoreCommand& b){return re::re_memcmp(a.clip.data(),b.clip.data(),16)==0&&a.texture==b.texture&&a.vertex_offset==b.vertex_offset;}
void set_header(DrawCoreCommand& a,const DrawCoreHeader& b){a.clip=b.clip;a.texture=b.texture;a.vertex_offset=b.vertex_offset;}
ReI32 sum(ReI32 a,ReI32 b){return re::re_bit_cast<ReI32>(ReU32(a)+ReU32(b));}
}
void draw_core_switch_channel_3a8094(DrawCoreList& d,ReI32 channel){
    auto& split=d.splitter;if(split.current==channel)return;
    if(channel<0||split.current<0||ReUSize(channel)>=split.channels.size()||ReUSize(split.current)>=split.channels.size()){ __builtin_trap(); }
    split.channels[ReUSize(split.current)].commands=d.commands;split.channels[ReUSize(split.current)].indices=d.indices;
    split.current=channel;d.commands=split.channels[ReUSize(channel)].commands;d.indices=split.channels[ReUSize(channel)].indices;
    d.index_write=d.indices.size;d.index_write_valid=d.indices.capacity>0;
    if(d.commands.size){auto& command=d.commands.at(d.commands.size-1);if(command.element_count==0){set_header(command,d.header);return;}if(same_header(command,d.header))return;}
    draw_core_add_command_39fd18(d);
}
void draw_core_trim_commands_3a9220(DrawCoreList& d){while(d.commands.size){const auto& command=d.commands.at(d.commands.size-1);if(command.element_count||command.callback)return;d.commands.pop();}}
void draw_core_merge_3a65c4(DrawCoreList& d){
    auto& split=d.splitter;if(split.count<=1)return;
    if(ReUSize(split.count)>split.channels.size()){ __builtin_trap(); }
    draw_core_switch_channel_3a8094(d,0);draw_core_trim_commands_3a9220(d);
    ReI32 extra_commands=0,extra_indices=0;DrawCoreCommand* previous=nullptr;
    ReU32 offset=0;
    if(d.commands.size){previous=&d.commands.at(d.commands.size-1);offset=previous->index_offset+previous->element_count;}
    for(ReI32 i=1;i<split.count;++i){
        auto& channel=split.channels[ReUSize(i)];
        if(channel.commands.size){const auto& tail=channel.commands.at(channel.commands.size-1);if(tail.element_count==0&&!tail.callback)channel.commands.pop();}
        if(channel.commands.size&&previous){
            const auto& first=channel.commands.at(0);
            if(same_header(*previous,first)&&!previous->callback&&!first.callback){previous->element_count+=first.element_count;offset+=first.element_count;channel.commands.erase_first();}
        }
        if(channel.commands.size)previous=&channel.commands.at(channel.commands.size-1);
        extra_indices=sum(extra_indices,channel.indices.size);extra_commands=sum(extra_commands,channel.commands.size);
        for(ReI32 j=0;j<channel.commands.size;++j){auto& command=channel.commands.at(j);command.index_offset=offset;offset+=command.element_count;}
    }
    const auto command_start=d.commands.size,index_start=d.indices.size;
    d.commands.resize(sum(command_start,extra_commands));d.indices.resize(sum(index_start,extra_indices));
    auto command_at=command_start,index_at=index_start;
    for(ReI32 i=1;i<split.count;++i){const auto& channel=split.channels[ReUSize(i)];
        for(ReI32 j=0;j<channel.commands.size;++j)d.commands.write(command_at++,channel.commands.at(j));
        for(ReI32 j=0;j<channel.indices.size;++j)d.indices.write(index_at++,channel.indices.at(j));
    }
    d.index_write=index_at;d.index_write_valid=d.indices.capacity>0;
    if(d.commands.size==0||d.commands.at(d.commands.size-1).callback)draw_core_add_command_39fd18(d);
    auto& last=d.commands.at(d.commands.size-1);
    if(last.element_count==0)set_header(last,d.header);else if(!same_header(last,d.header))draw_core_add_command_39fd18(d);
    split.count=1;
}
void draw_core_reset_3a9258(DrawCoreList& d){
    if(d.splitter.count>1)draw_core_merge_3a65c4(d);
    d.commands.resize(0);d.indices.resize(0);d.vertices.resize(0);
    d.flags=d.shared_initial_flags;d.header={};d.current_vertex=0;d.vertex_write=0;d.index_write=0;d.vertex_write_valid=false;d.index_write_valid=false;
    d.clip_stack.resize(0);d.texture_stack.resize(0);d.path.resize(0);
    d.splitter.current=0;d.splitter.count=1;d.commands.push(draw_core_command_39f294());d.fringe_scale=1;
}
} // namespace rust_internal_re
