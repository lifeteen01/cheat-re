#pragma once
#include "renderer_helpers_analysis.hpp"
#include "entities_analysis.hpp"
namespace rust_internal_re {
// [I] Owned adaptation of native vector descriptors. Copies share allocation bytes
// but retain independent size/capacity, as the splitter's descriptor copies do.
// Unwritten native slots stay nullopt; reading one stops rather than inventing zeros.
ReI32 draw_core_growth_362efc(ReI32 capacity,ReI32 required);
template<class T> struct DrawCoreBuffer {
    using Storage=re::ReVector<re::ReOptional<T>>;
    re::ReUniquePtr<Storage> storage{re::re_make_unique<Storage>()};
    ReI32 size{},capacity{};
    DrawCoreBuffer()=default;
    DrawCoreBuffer(DrawCoreBuffer&&)=default;
    DrawCoreBuffer& operator=(DrawCoreBuffer&&)=default;
    DrawCoreBuffer(const DrawCoreBuffer& other)
        : storage(re::re_make_unique<Storage>(*other.storage))
        , size(other.size), capacity(other.capacity) {}
    DrawCoreBuffer& operator=(const DrawCoreBuffer& other) {
        if(this!=&other){ storage=re::re_make_unique<Storage>(*other.storage);size=other.size;capacity=other.capacity; }
        return *this;
    }
    void reserve(ReI32 requested) {
        if(requested<=capacity)return;
        if(requested<0||requested>10000000){ __builtin_trap(); }
        auto allocation=re::re_make_unique<Storage>(ReUSize(requested));
        if(size<0||size>capacity||ReUSize(size)>storage->size()){ __builtin_trap(); }
        for(ReI32 i=0;i<size;++i)(*allocation)[ReUSize(i)]=(*storage)[ReUSize(i)];
        storage=re::re_move(allocation);capacity=requested;
    }
    void resize(ReI32 requested) {
        if(requested<0){ __builtin_trap(); }
        if(requested>capacity)reserve(draw_core_growth_362efc(capacity,requested));
        size=requested;
    }
    void resize_existing(ReI32 requested) {
        if(requested<0||requested>capacity){ __builtin_trap(); }
        size=requested;
    }
    T& at(ReI32 i) {
        if(i<0||i>=size||ReUSize(i)>=storage->size()||!(*storage)[ReUSize(i)]){ __builtin_trap(); }
        return *(*storage)[ReUSize(i)];
    }
    const T& at(ReI32 i)const{return const_cast<DrawCoreBuffer*>(this)->at(i);}
    void write(ReI32 i,const T& v){if(i<0||i>=size||ReUSize(i)>=storage->size()){ __builtin_trap(); }(*storage)[ReUSize(i)]=v;}
    void push(const T& v){const auto i=size;resize(re::re_bit_cast<ReI32>(ReU32(size)+1));write(i,v);}
    void pop(){resize_existing(re::re_bit_cast<ReI32>(ReU32(size)-1));}
    ReI32 erase(ReI32 index){if(index<0||index>=size){ __builtin_trap(); }for(ReI32 i=index+1;i<size;++i)write(i-1,at(i));--size;return index;}
    void erase_first(){(void)erase(0);}
};
struct DrawCoreHeader { re::ReArray<float,4> clip{};Address texture{};ReU32 vertex_offset{}; };
struct DrawCoreCommand {
    re::ReArray<float,4> clip{};Address texture{};ReU32 vertex_offset{},index_offset{},element_count{},reserved_24{};
    Address callback{},callback_data{};
};
static_assert(sizeof(DrawCoreCommand)==0x38&&offsetof(DrawCoreCommand,element_count)==0x20&&offsetof(DrawCoreCommand,callback)==0x28);
struct DrawCoreChannel { DrawCoreBuffer<DrawCoreCommand> commands;DrawCoreBuffer<ReU16> indices; };
struct DrawCoreSplitter { ReI32 current{},count{1};re::ReVector<DrawCoreChannel> channels; };
struct DrawCoreList {
    DrawCoreBuffer<DrawCoreCommand> commands;DrawCoreBuffer<ReU16> indices;DrawCoreBuffer<DrawVertex> vertices;
    ReU32 flags{},current_vertex{},shared_initial_flags{};DrawCoreHeader header;
    DrawCoreBuffer<re::ReArray<float,4>> clip_stack;DrawCoreBuffer<Address> texture_stack;DrawCoreBuffer<Vec2> path;
    DrawCoreSplitter splitter;ReI32 vertex_write{},index_write{};bool vertex_write_valid{},index_write_valid{};float fringe_scale{};
};
struct DrawCoreStore { re::ReMap<Address,DrawCoreList> lists; };
DrawCoreCommand draw_core_command_39f294();
void draw_core_add_command_39fd18(DrawCoreList&);
void draw_core_clip_changed_3a8d94(DrawCoreList&);
void draw_core_texture_changed_3a8e28(DrawCoreList&);
void draw_core_vertex_offset_changed_3a8ec0(DrawCoreList&);
void draw_core_push_clip_3a7268(DrawCoreList&,Vec2 minimum,Vec2 maximum,bool intersect);
void draw_core_push_texture_3a73c4(DrawCoreList&,Address);
void draw_core_pop_texture_3a6e84(DrawCoreList&);
void draw_core_reserve_3a719c(DrawCoreList&,ReI32 indices,ReI32 vertices);
void draw_core_unreserve(DrawCoreList&,ReI32 unused_indices,ReI32 unused_vertices);
// [I] Indices are relative to the first vertex in this write; native low16 wrap is retained.
void draw_core_write_relative(DrawCoreList&,re::ReSpan<const DrawVertex>,re::ReSpan<const ReU16>);
void draw_core_rectangle_3a7020(DrawCoreList&,Vec2 minimum,Vec2 maximum,Vec2 uv_minimum,Vec2 uv_maximum,ReU32 color);
void draw_core_image_3a0168(DrawCoreList&,Address texture,Vec2 minimum,Vec2 maximum,Vec2 uv_minimum,Vec2 uv_maximum,ReU32 color);
void draw_core_switch_channel_3a8094(DrawCoreList&,ReI32);
void draw_core_trim_commands_3a9220(DrawCoreList&);
void draw_core_merge_3a65c4(DrawCoreList&);
void draw_core_reset_3a9258(DrawCoreList&);
DrawCoreList copy_draw_core_list(const Snapshot&,Address,ReUSize maximum_elements=1000000);
DrawList draw_core_geometry(const DrawCoreList&);
RenderListInput draw_core_render_commands(const DrawCoreList&);
// [C] Counter side effect of395158; actual allocator is a typed data-returning leaf.
Address draw_core_allocate_395158(Snapshot&,ReUSize,const re::ReFunction<Address(Address,Address,ReUSize)>&);
void draw_core_free_39517c(Snapshot&,Address,const re::ReFunction<void(Address,Address,Address)>&);
RendererBackgroundBackend bind_drawlist_core_background(Snapshot&,DrawCoreStore&,RendererBackgroundBackend fallback={});
RendererIconBackend bind_drawlist_core_icons(DrawCoreStore&,RendererIconBackend fallback={});
re::ReSpan<const RendererCoverage> drawlist_core_coverage();
void check_drawlist_core_reconstruction();
} // namespace rust_internal_re
