#include "entities_analysis.hpp"
#ifndef _WIN32
#include <sys/wait.h>
#include <unistd.h>
#endif

namespace {
using namespace rust_internal_re;
void require_entity(bool value, re::ReStringView message) {
    if(!value)__builtin_trap();
}
bool expect_trap(void(*fn)()) {
#ifndef _WIN32
    pid_t pid = fork();
    if (pid == 0) { fn(); _exit(0); }
    if (pid < 0) return false;
    int status = 0;
    waitpid(pid, &status, 0);
    return WIFSIGNALED(status);
#else
    (void)fn;
    return true;
#endif
}
re::ReVector<ReU16> u16v(const char16_t* s) { re::ReVector<ReU16> v; while(*s)v.push_back(ReU16(*s++)); return v; }
bool near_entity(float a,float b) { return re::re_fabsf(a-b)<0.00001f; }
void check_snapshot_fields() {
    constexpr Address b=0x1000000, entity=b+0x100, klass=b+0x1000, native=b+0x1100,
        object=b+0x1200, name=b+0x1300, prefab=b+0x1400, model=b+0x1500,
        display=b+0x1600, identifier=b+0x1700;
    Snapshot im(b,re::ReVector<ReByte>(0x2000));
    const auto put=[&](Address p,auto value){require_entity(im.write(p,value),"entity fixture write");};
    const auto bytes=[&](Address p,re::ReStringView text){
        for(char c:text)put(p++,c);
        put(p,char(0));
    };
    const auto wide=[&](Address p,re::ReSpan<const char16_t> text){
        for(char16_t c:text){put(p,c);p+=2;}
        put(p,char16_t(0));
    };
    put(entity,klass);put(klass+0x10,name);put(entity+0x10,native);put(native+0x20,object);
    put(object+0x44,ReU16(6));put(object+0x50,prefab);
    bytes(name,"BasePlayer");bytes(prefab,"player.prefab");
    const auto identity=read_entity_identity_31acd0(im,entity,true);
    require_entity(identity&&identity->tag==6&&identity->game_object==object&&
        identity->class_name=="BasePlayer"&&identity->prefab_name=="player.prefab","entity identity chain");
    require_entity(!read_entity_identity_31acd0(im,entity,false),"external validity boundary");
    require_entity(!read_entity_identity_31acd0(im,entity,true,3),"unterminated bounded class string");
    put(entity+0x708,ReU32(0x20010));put(entity+0x2c0,ReU8(1));
    put(entity+0x54,ReU32(0xf4e1d514));put(entity+0x350,model);
    put(model+0x24,ReU32(0x1000));
    auto state=read_player_state_31fb93(im,entity);
    require_entity(state&&state->dead&&state->wounded&&state->safe_zone&&state->sleeping&&!state->npc,
        "state fields and model-state wounded alternative");
    put(entity+0x708,ReU32(0x150));put(model+0x24,ReU32(0));
    state=read_player_state_31fb93(im,entity);
    require_entity(state&&state->wounded&&!state->sleeping,"0x100 suppresses sleeper classification");
    put(entity+0x338,display);wide(display+0x14,u"Analyst \u03a9");
    require_entity(player_display_name_369040(im,entity,false)==u16v(u"Analyst \u03a9"),"UTF16 name copy");
    require_entity(player_display_name_369040(im,entity,true)==u16v(u"Scientist"),"NPC name substitute");
    require_entity(!player_display_name_369040(im,entity,false,3),"bounded UTF16 name");
    put(entity+0x640,identifier);wide(identifier+0x14,u"18446744073709551615");
    require_entity(player_identifier_36af58(im,entity)==UINT64_MAX,"64-bit decimal identifier");
    wide(identifier+0x14,u"18446744073709551616");
    require_entity(player_identifier_36af58(im,entity)==0,"native decimal arithmetic wraps");
    wide(identifier+0x14,u"123x");
    require_entity(player_identifier_36af58(im,entity)==0,"nondigit identifier returns zero");
    put(native+0x20,Address(0));
    require_entity(!read_entity_identity_31acd0(im,entity,true),"broken game-object chain rejected");
    require_entity(!bone_transform_368c60(im,entity,INT32_MAX),"native signed offset overflow bounded");
}
void check_encoded_collection() {
    constexpr Address b=0x180000000, block=b+0x2000, first=b+0x700,
        a=b+0x500, next=b+0x900, second=b+0xb00, collection=b+0xc00;
    Snapshot im(b,re::ReVector<ReByte>(0x4000));
    const auto put=[&](Address p,auto value){require_entity(im.write(p,value),"collection fixture write");};
    const auto encode1=[](Address value){
        const auto word=[](ReU32 x){return re::re_rotl((re::re_rotl(x,6)+0x747d482fu)^0x5d4d9bffu,24);};
        return Address(word(ReU32(value)))|(Address(word(ReU32(value>>32)))<<32);
    };
    const auto encode2=[](Address value){
        const auto word=[](ReU32 x){return (re::re_rotl(x-0x59a52333u,7)^0x62748682u)-0x3c231fb8u;};
        return Address(word(ReU32(value)))|(Address(word(ReU32(value>>32)))<<32);
    };
    put(b+0x80,b+0x100);put(b+0x100+0xb8,b+0x300);put(b+0x300+0x18,a);
    put(a+0x18,encode1(block+0x28));put(first+0x18,next);
    put(next+0x18,encode2(block+0x30));put(second+0x20,collection);
    put(block+0x20,ReU8(2));put(block+0x1c,ReU32(2));
    put(block+0x10,b+0x3000);put(b+0x3000,ReU32(3));
    put(block+0x28,first);put(block+0x30,second);
    const Address ga=b+0x80-0xf0ee490ULL; // [I] Numeric base key, never dereferenced.
    require_entity(collection_root_2f8034(im,ga,{})==collection,"both encoded handle stages in collection chain");
    put(b+0x3000,ReU32(1));
    require_entity(!collection_root_2f8034(im,ga,{}),"unallocated second handle stops collection traversal");
}
void check_player_selection() {
    PlayerSelectionInput p{};p.show_players=true;p.player_maximum_distance=100;
    p.distance=100;
    require_entity(select_player_31acd0(p)==PlayerRejection::none,"inclusive player distance");
    p.distance=101;
    require_entity(select_player_31acd0(p)==PlayerRejection::distance,"player distance rejection");
    p.distance=1;p.state.sleeping=true;p.record_kind=2;p.show_enemy=true;p.enemy_options[0]=true;
    require_entity(select_player_31acd0(p)==PlayerRejection::none,"enemy option overrides sleepers");
    p.state.dead=true;
    require_entity(select_player_31acd0(p)==PlayerRejection::dead,"dead and sleepers independently gated");
    p.enemy_options[1]=true;
    require_entity(select_player_31acd0(p)==PlayerRejection::none,"enemy dead override");
    p.show_enemy=false;
    require_entity(select_player_31acd0(p)==PlayerRejection::enemy_disabled,"enemy draw gate still required");
    p.record_kind=1;p.show_sleepers=true;p.show_dead=true;
    require_entity(select_player_31acd0(p)==PlayerRejection::friend_disabled,"friend record draw gate");
    p.record_kind=0;p.state={};p.state.npc=true;p.show_npcs=true;p.npc_maximum_distance=50;
    p.distance=51;
    require_entity(select_player_31acd0(p)==PlayerRejection::distance,"NPC uses own distance");
    p.distance=10;p.state.wounded=true;
    require_entity(select_player_31acd0(p)==PlayerRejection::wounded,"wounded gate before NPC append");
    p.state.wounded=false;
    EntityIdentity e{0x1000000,0,"ScientistNPC2","npc.prefab",6};
    auto records=classify_player_records_31fa70(e,p);
    require_entity(records.size()==2&&records[0].category_byte==1&&records[1].category_byte==0,
        "independent ScientistNPC2 and tag-6 append plans");
    p.local=true;p.show_npcs=false;
    require_entity(classify_player_records_31fa70(e,p).size()==1,"ScientistNPC2 path precedes local/category filter");
    p.local=false;p.show_npcs=true;p.distance=re::ReNumericLimits<float>::quiet_NaN();
    records=classify_player_records_31fa70(e,p);
    require_entity(records.size()==1&&records[0].category_byte==0,"distinct unordered COMISS branches");
    require_entity(apparent_team_getter_2cd32c()==0,"literal team stub");
}
void check_world_classifier() {
    require_entity(entity_name_hash_2d6354("hello")==0xa430d84680aabd0bULL,"FNV ASCII known vector");
    re::ReString high_byte;high_byte.push_back(char(0x80));
    require_entity(entity_name_hash_2d6354(high_byte)==
        ((0xcbf29ce484222325ULL^0xffffffffffffff80ULL)*0x100000001b3ULL),"signed byte hash behavior");
    require_entity(entity_name_hash_2d6354(re::ReStringView("a\0b",3))==entity_name_hash_2d6354("a"),"hash terminates at NUL");
    EntityIdentity e{0x1000000,0,"OreResourceEntity","stone-ore.prefab",0};
    WorldClassifierOptions o{};o.node_path=true;
    require_entity(classify_world_subset_31acd0(e,o).empty(),"NodePath alone does not enter outer ore gate");
    o.metal_ore=true;
    auto records=classify_world_subset_31acd0(e,o);
    require_entity(records.size()==1&&records[0].category==WorldCategory::stone_ore,"NodePath enables stone inside gate");
    e.prefab_name="assets/bundled/prefabs/radtown/ore_stone.prefab";
    require_entity(classify_world_subset_31acd0(e,o).empty(),"radtown stone path excluded");
    e.prefab_name="hqm_stone_metal_sulfur";
    records=classify_world_subset_31acd0(e,o);
    require_entity(records.size()==4&&records[0].category==WorldCategory::hqm_ore&&
        records[3].category==WorldCategory::sulfur_ore,"independent ore appends preserve order");
    e.class_name="BradleyAPC";e.prefab_name="bradley_crate";o.bradley=true;
    records=classify_world_subset_31acd0(e,o);
    require_entity(records.size()==2&&ReU32(records[0].category)==21&&
        ReU32(records[1].category)==22,"independent vehicle and crate categories");
    e.class_name="ModularCar";e.prefab_name="car";o.car=true;
    records=classify_world_subset_31acd0(e,o);
    require_entity(records.size()==1&&ReU32(records[0].category)==125,"nonsequential category constant");
    e.class_name="OreResourceEntity";e.prefab_name=re::ReString("other\0stone",11);
    require_entity(classify_world_subset_31acd0(e,o).empty(),"prefab substring search stops at NUL");
}
void check_render_commands() {
    const RenderFrameInput frame{{10,20},{2,3},{200,120}};
    RenderListInput a,b;
    a.commands={{{20,25,60,50},0x123},{{110,20,120,30},0x456}};
    b.commands={{{5,18,120,70},0x789}};
    const re::ReArray<RenderListInput, 2> lists{a,b};
    const auto plan=plan_render_commands_3b1a94(frame,lists);
    require_entity(plan.draws.size()==2&&plan.draws[1].submesh==2,"clipped commands preserve global submesh numbering");
    const auto& first=plan.draws[0];
    require_entity(first.texture==0x123&&near_entity(first.scissor.x,20)&&near_entity(first.scissor.y,30)&&
        near_entity(first.scissor.width,80)&&near_entity(first.scissor.height,75),"subtract then scale, flipped scissor Y");
    require_entity(plan.draws[1].scissor.x==-10&&plan.draws[1].scissor.y==-30&&
        plan.draws[1].scissor.width==230,"native scissor is not clamped");
    require_entity(near_entity(plan.view_translation.x,0.0025f)&&
        plan.ortho_arguments==re::ReArray<float,6>{0,200,120,0,0,1}&&plan.disable_scissor,
        "view translation and unresolved Ortho argument boundary");
    {
        static auto neg_frame = frame;
        static auto neg_lists_p = &lists;
        require_entity(expect_trap([]{ (void)plan_render_commands_3b1a94(neg_frame, *neg_lists_p, 2); }),
            "bounded render command count");
        static auto inv = frame; inv.viewport.x = 0;
        require_entity(expect_trap([]{ (void)plan_render_commands_3b1a94(inv, *neg_lists_p); }),
            "invalid viewport guard");
    }
    const RenderListInput inverted{{{{40,40,30,30},0xabc}}};
    const re::ReArray<RenderListInput, 1> inverted_lists{inverted};
    const auto inverted_plan=plan_render_commands_3b1a94(frame,inverted_lists);
    require_entity(inverted_plan.draws.size()==1&&inverted_plan.draws[0].scissor.width==-20,
        "native command gate does not reject reversed rectangles");
    DrawList g,h;g.vertices.resize(3);g.indices={0,1,2};g.commands={{0,0,3},{0,3,0}};
    h.vertices.resize(5);h.indices={0,1,2};h.commands={{2,0,3}};
    const re::ReArray<DrawList, 2> geometry{g,h};const auto mesh=flatten_geometry_3b4250(geometry);
    require_entity(mesh.submeshes.size()==3&&mesh.submeshes[1].index_count==0&&
        mesh.submeshes[2].base_vertex==5&&mesh.submeshes[2].index_start==3,
        "zero-count command retained and list bases accumulated");
}
}
void rust_internal_re::check_entity_reconstruction() {
    check_snapshot_fields();check_encoded_collection();check_player_selection();
    check_world_classifier();check_render_commands();
}
