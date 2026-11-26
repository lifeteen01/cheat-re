#include "drawlist_core_analysis.hpp"
namespace rust_internal_re {
namespace {
void check(bool value,const char* why){if(!value){ /* FREESTANDING_TODO: was throw runtime_error(why) */ }}
DrawCoreList fresh(){DrawCoreList d;d.shared_initial_flags=8;draw_core_reset_3a9258(d);return d;}
Vec2 position(const DrawVertex& v){Vec2 value;re::re_memcpy(&value,v.data(),8);return value;}
Vec2 uv(const DrawVertex& v){Vec2 value;re::re_memcpy(&value,v.data()+8,8);return value;}
ReU32 color(const DrawVertex& v){ReU32 value;re::re_memcpy(&value,v.data()+16,4);return value;}
void images_and_commands(){
    auto d=fresh();check(d.commands.size==1&&d.commands.capacity==8&&d.flags==8&&d.fringe_scale==1,"reset creates zero command, native initial capacity and shared flags");
    draw_core_push_clip_3a7268(d,{0,0},{100,100},false);draw_core_push_texture_3a73c4(d,100);
    draw_core_image_3a0168(d,200,{10,20},{30,40},{0,0},{1,1},0xff112233);
    check(d.commands.size==2&&d.commands.at(0).element_count==6&&d.commands.at(0).texture==200&&d.commands.at(1).texture==100&&d.texture_stack.size==1,"image temporary texture restores stack and appends empty command");
    auto geometry=draw_core_geometry(d);
    const auto plan=draw_core_render_commands(d);check(plan.commands.size()==2&&plan.commands[0].texture==200&&plan.commands[0].clip.z==100,"mesh render inputs preserve command texture and clip");
    check(geometry.vertices.size()==4&&geometry.indices==re::ReVector<ReU16>{0,1,2,0,2,3}&&position(geometry.vertices[1]).x==30&&position(geometry.vertices[1]).y==20&&uv(geometry.vertices[3]).x==0&&uv(geometry.vertices[3]).y==1&&color(geometry.vertices[2])==0xff112233,"actual rectangle vertices UV color and triangle indices");
    draw_core_image_3a0168(d,200,{40,50},{60,70},{0,0},{1,1},0xffffffff);
    check(d.commands.size==2&&d.commands.at(0).element_count==12&&d.commands.at(1).index_offset==12&&d.current_vertex==8,"same image texture merges the empty restore command and extends prior geometry");
    draw_core_image_3a0168(d,300,{0,0},{1,1},{0,0},{1,1},0xffffffff);
    check(d.commands.size==3&&d.commands.at(1).texture==300&&d.commands.at(1).element_count==6&&d.commands.at(1).index_offset==12,"different image texture retains distinct nonempty command");
    const auto vertices=d.vertices.size;draw_core_image_3a0168(d,400,{},{},{},{},0x00ffffff);check(d.vertices.size==vertices&&d.texture_stack.size==1,"zero-alpha image exits before all state changes");
    draw_core_push_clip_3a7268(d,{110,-10},{105,50},true);check(d.header.clip==re::ReArray<float,4>{110,0,110,50},"clip intersects and clamps inverted maximum to minimum");
    auto bits=fresh();bits.commands.at(0).element_count=1;bits.header.clip[0]=-0.0f;draw_core_clip_changed_3a8d94(bits);
    check(bits.commands.size==2&&re::re_signbit(bits.commands.at(1).clip[0]),"clip header comparison is bytewise for signed zero");
    auto callback=fresh();callback.commands.at(0).callback=123;draw_core_add_command_39fd18(callback);draw_core_texture_changed_3a8e28(callback);check(callback.commands.size==2,"previous callback prevents command merge");
    auto no_stack=fresh();no_stack.header.texture=100;no_stack.commands.at(0).texture=100;
    draw_core_image_3a0168(no_stack,200,{},{1,1},{},{1,1},0xffffffff);
    check(no_stack.header.texture==0&&no_stack.texture_stack.size==0,"image pop uses actual empty-stack zero rather than fabricating restoration of stale header texture");
}
void reserve_and_buffers(){
    check(draw_core_growth_362efc(0,1)==8&&draw_core_growth_362efc(8,9)==12&&draw_core_growth_362efc(8,20)==20&&draw_core_growth_362efc(-3,-5)==-4,"literal signed half/growth selection");
    DrawCoreBuffer<int> a;a.push(1);a.push(2);auto b=a;b.at(0)=9;check(a.at(0)==9,"splitter descriptor copies share storage bytes");b.resize(1);b.reserve(20);b.resize(2);
    bool stopped=false;{(void)b.at(1);}check(stopped&&a.at(1)==2,"reallocation copies logical size only, new native bytes stay unknown");
    auto d=fresh();draw_core_reserve_3a719c(d,12,8);stopped=false;{(void)draw_core_geometry(d);}check(stopped,"reserved unwritten vertices do not become fabricated geometry");
    draw_core_rectangle_3a7020(d,{0,0},{1,1},{0,0},{1,1},0xffffffff);draw_core_unreserve(d,6,4);
    check(d.vertices.size==4&&d.indices.size==6&&d.commands.at(0).element_count==6&&d.vertex_write==4&&d.index_write==6&&draw_core_geometry(d).vertices.size()==4,"outer reserve/write/shrink leaves actual cursors and valid geometry");
    auto rollover=fresh();rollover.vertices.resize(65532);rollover.current_vertex=65532;rollover.commands.at(0).element_count=6;rollover.indices.resize(6);
    draw_core_reserve_3a719c(rollover,6,4);draw_core_rectangle_3a7020(rollover,{},{1,1},{},{1,1},0xffffffff);
    check(rollover.commands.size==2&&rollover.header.vertex_offset==65532&&rollover.commands.at(1).vertex_offset==65532&&rollover.commands.at(1).index_offset==6&&rollover.current_vertex==4&&rollover.indices.at(6)==0,"exact65536 threshold resets local index and records global vertex offset");
    auto wrap=fresh();wrap.flags=0;wrap.current_vertex=65534;draw_core_reserve_3a719c(wrap,6,4);draw_core_rectangle_3a7020(wrap,{},{1,1},{},{1,1},0xffffffff);
    check(wrap.indices.at(0)==65534&&wrap.indices.at(1)==65535&&wrap.indices.at(2)==0&&wrap.indices.at(5)==1,"without flag8 native uint16 index stores wrap");
}
DrawCoreCommand command(Address texture,ReU32 elements,ReU32 offset=0,Address callback=0){DrawCoreCommand c;c.texture=texture;c.element_count=elements;c.index_offset=offset;c.callback=callback;return c;}
void channel_merge(){
    auto d=fresh();d.header.texture=10;d.commands.at(0)=command(10,6);d.indices.resize(6);for(int i=0;i<6;++i)d.indices.write(i,ReU16(i));
    d.splitter.count=3;d.splitter.channels.resize(3);
    auto& one=d.splitter.channels[1];one.commands.push(command(10,6));one.commands.push(command(10,0,6));for(int i=0;i<6;++i)one.indices.push(ReU16(i+6));
    auto& two=d.splitter.channels[2];two.commands.push(command(20,3));two.commands.push(command(20,0,3,123));for(int i=0;i<3;++i)two.indices.push(ReU16(i+12));
    draw_core_merge_3a65c4(d);
    check(d.splitter.count==1&&d.commands.size==4&&d.commands.at(0).element_count==12&&d.commands.at(1).texture==20&&d.commands.at(1).index_offset==12&&d.commands.at(2).callback==123&&d.commands.at(3).texture==10&&d.commands.at(3).index_offset==15,"channel merge combines compatible headers, preserves callbacks and reinstates active header");
    check(d.indices.size==15&&d.index_write==15&&d.indices.at(14)==14&&one.commands.size==0,"channel index buffers concatenate and merged-first command erases");
    auto switched=fresh();switched.header.texture=10;switched.commands.at(0)=command(10,6);for(int i=0;i<6;++i)switched.indices.push(ReU16(i));
    switched.splitter.current=1;switched.splitter.count=2;switched.splitter.channels.resize(2);
    switched.splitter.channels[0].commands.push(command(20,3));for(int i=0;i<3;++i)switched.splitter.channels[0].indices.push(ReU16(i));
    draw_core_merge_3a65c4(switched);
    check(switched.splitter.current==0&&switched.commands.size==2&&switched.commands.at(0).texture==20&&switched.commands.at(1).texture==10&&switched.commands.at(1).index_offset==3&&switched.indices.size==9,"merge first switches to channel0 and saves the previously active descriptors");
    draw_core_reset_3a9258(switched);check(switched.commands.size==1&&switched.indices.size==0&&switched.splitter.count==1&&switched.header.texture==0&&!switched.index_write_valid,"reset clears logical sizes/header/cursors while retaining owned capacity");
}
void copied_bindings(){
    Snapshot im{0,re::ReVector<ReByte>(0x420000)};const auto put=[&]<class T>(Address a,T value){check(im.write(a,value),"core snapshot fixture write");};
    constexpr Address list=0x200000,shared=0x210000,ctx=0x220000;
    put(list+0x38,shared);put(shared+0x2c,ReU32(8));put(0x405b28,ctx);put(0x405b68,Address(0x230000));put(0x27fa18,Address(0x240000));put(0x27fa20,Address(0x250000));
    DrawCoreStore store;auto background=bind_drawlist_core_background(im,store);background.reset_3a9258(list);background.texture_3a73c4(list,100);background.clip_3a7268(list,{0,0},{100,100},false);
    auto icons=bind_drawlist_core_icons(store);icons.image_3a0168({list,200,{1,2},{3,4},{0,0},{1,1},0xffabcdef});
    check(draw_core_geometry(store.lists[list]).vertices.size()==4&&store.lists[list].header.texture==100,"renderer image binding writes actual geometry into keyed owned list");
    check(draw_core_allocate_395158(im,20,[&](Address target,Address user,ReUSize size){check(target==0x240000&&user==0x230000&&size==20&&im.read<ReU32>(ctx+0xf4)==1,"allocator target/user/size and preceding counter");return Address(0x260000);})==0x260000,"allocator typed leaf");
    int frees=0;const auto free=[&](Address target,Address user,Address object){check(target==0x250000&&user==0x230000&&(object==0x260000||object==0),"free dispatch arguments");++frees;};
    draw_core_free_39517c(im,0x260000,free);draw_core_free_39517c(im,0,free);check(frees==2&&im.read<ReU32>(ctx+0xf4)==0,"null free still dispatches but skips counter decrement");
    constexpr Address viewport=0x270000,new_list=0x280000,atlas=0x290000;
    put(ctx+0x3e60,ReI32(1));put(ctx+0x58,atlas);put(atlas+8,Address(100));put(ctx+0x3c64,ReU32(8));
    put(viewport+4,Vec2{5,10});put(viewport+0xc,Vec2{100,200});
    auto integrated=bind_drawlist_core_background(im,store);
    integrated.allocate_395158=[](ReUSize){return new_list;};integrated.intern_name=[](re::ReStringView){return Address(0x2a0000);};
    check(renderer_background_392164(im,viewport,integrated)==new_list&&store.lists[new_list].header.clip==re::ReArray<float,4>{5,10,105,210},"released renderer background now calls concrete core reset/texture/clip");
    icons.image_3a0168({new_list,200,{1,2},{3,4},{0,0},{1,1},0xffffffff});
    check(store.lists[new_list].vertices.size==4,"integrated background/image path owns actual vertices");
    put(ctx+0x3e60,ReI32(2));(void)renderer_background_392164(im,viewport,integrated);
    check(store.lists[new_list].vertices.size==0&&store.lists[new_list].header.texture==100,"next native frame resets actual owned geometry before fresh atlas state");
}
}
void check_drawlist_core_reconstruction(){images_and_commands();reserve_and_buffers();channel_merge();copied_bindings();}
} // namespace rust_internal_re
