#include "game_base_analysis.hpp"
namespace rust_internal_re {
namespace {
void require_base(bool p,re::ReStringView message) {if(!p)__builtin_trap();}
template<class T> void put_base(Snapshot& im,Address p,T value) {require_base(im.write(p,value),"base fixture write");}
void bytes_base(Snapshot& im,Address p,re::ReStringView text) {
    for(char c:text)put_base(im,p++,c);
    put_base(im,p,char(0));
}
void wide_base(Snapshot& im,Address p,re::ReSpan<const char16_t> text) {
    for(char16_t c:text) {put_base(im,p,c);p+=2;}
    put_base(im,p,char16_t(0));
}
void check_field_and_string_base() {
    constexpr Address b=0x1000000,p=b+0x100,klass=b+0x1000,name=b+0x1200,native=b+0x1800;
    Snapshot im(b,re::ReVector<ReByte>(0x3000));
    require_base(entity_valid_2e0e9c(im,0)==false,"invalid numeric entity returns native false");
    require_base(charged_scale_36b504(im,0)==0,"invalid charged-scale receiver returns native zero");
    put_base(im,p+0x3ac,-2.0f);
    require_base(charged_scale_36b504(im,p)==-1.0f&&!charged_scale_36b504(im,b+0x4000),"charged-scale literal addition differs from absent bytes");
    require_base(!entity_valid_2e0e9c(im,b+0x5000).has_value(),"unavailable field differs from false");
    put_base(im,p+0x48,Address(1));
    require_base(entity_valid_2e0e9c(im,p)==true,"validity tests nonzero qword without probing pointee");
    put_base(im,p,klass);put_base(im,klass+0x10,name);
    require_base(entity_class_name_2e5a54(im,p)==name,"class-name pointer chain");
    put_base(im,p+0x54,ReU32(0xf4e1d514));
    require_base(npc_predicate_36a178(im,p)==false,"literal prefab ID predicate");
    put_base(im,p+0x708,ReU32(0x20150));put_base(im,p+0x2c0,ReU8(0x81));
    require_base(safe_zone_36acb8(im,p)==true&&wounded_flag_36b288(im,p)==true&&dead_byte_3693b0(im,p)==0x81,
        "field widths and flag masks");
    require_base(sleeping_flag_36a20c(im,p,0)==true&&sleeping_flag_36a20c(im,p,1)==false,
        "sleep helper tests bit10 with explicit bypass; bit100 is not checked here");
    put_base(im,p+0x778,native);put_base(im,p+0x4e8,klass);put_base(im,p+0x350,name);
    require_base(input_object_369738(im,p)==native&&movement_record_36a2c8(im,p)==klass&&model_state_369400(im,p)==name,
        "copied pointer field getters");
    put_base(im,p+0x10,native);put_base(im,native+0x444,Vec3{2,3,4});
    const auto camera=camera_position_36ca34(im,p);
    require_base(camera&&camera->x==2&&camera->z==4,"camera native position field");
    put_base(im,p+0x10,Address(0));
    require_base(camera_position_36ca34(im,p)->x==0,"invalid native camera pointer returns zero vector");
    const Address managed=b+0x2100;
    wide_base(im,managed+0x14,u"\u03a9\u0100A");
    const auto converted=managed_name_bytes_2d7e18(im,managed);
    require_base(converted.status==GameBaseStatus::complete&&converted.value.size()==3&&
        static_cast<unsigned char>(converted.value[0])==0xa9&&converted.value[1]==0&&converted.value[2]=='A',
        "wide conversion truncates low bytes and preserves embedded narrow NUL");
    require_base(managed_name_bytes_2d7e18(im,managed,2).status==GameBaseStatus::analysis_limit,
        "unterminated bounded conversion explicit");
}
void check_projection_and_euler_base() {
    const ProjectionBounds bounds{10,20,100,50};
    require_base(contains_projection_36c638(bounds,{10,20,0})&&!contains_projection_36c638(bounds,{110,20,0})&&
        !contains_projection_36c638(bounds,{10,70,0}),"projection bounds lower-inclusive upper-exclusive");
    const float nan=re::ReNumericLimits<float>::quiet_NaN();
    require_base(!contains_projection_36c638(bounds,{nan,20,0}),"unordered screen coordinates rejected");
    Vec2 screen{7,8};int height_calls=0;
    ProjectionQueries queries;
    queries.world_to_screen_36c3d4=[](Address,Vec3,Vec3& out){out={20,25,0.001f};};
    queries.screen_height_2e09f0=[&]{++height_calls;return 100;};
    require_base(project_screen_36cd20(1,{},screen,bounds,queries).value&&screen.x==20&&screen.y==75&&height_calls==1,
        "projection equality depth gate and screen Y inversion");
    queries.world_to_screen_36c3d4=[](Address,Vec3,Vec3& out){out={20,25,0};};
    require_base(!project_screen_36cd20(1,{},screen,bounds,queries).value&&screen.y==75&&height_calls==1,
        "failed projection retains caller scratch and skips height getter");
    queries.world_to_screen_36c3d4=[&](Address,Vec3,Vec3& out){out={20,25,nan};};
    require_base(project_screen_36cd20(1,{},screen,bounds,queries).value,"unordered depth alone does not take JA rejection");
    require_base(project_screen_36cd20(1,{},screen,bounds,{}).status==GameBaseStatus::missing_boundary,
        "missing projection implementation is not success");
    require_base(integer_power_2e3c50(3,2).value==9&&integer_power_2e3c50(3,-2).value==1.0f/9,
        "literal repeated integer exponent and reciprocal");
    require_base(integer_power_2e3c50(3,INT32_MIN).value==1,"INT_MIN negative exponent retains signed-loop behavior");
    require_base(wrap_degrees_320cd0(720).value==360&&wrap_degrees_320cd0(-360).value==0,
        "Euler wrapper retains inclusive 360 endpoint");
    require_base(wrap_degrees_320cd0(re::ReNumericLimits<float>::infinity()).status==GameBaseStatus::nonprogressing_math,
        "nonprogressing native wrap is bounded");
    require_base(wrap_degrees_320cd0(1080,1).status==GameBaseStatus::analysis_limit,
        "explicit wrap ceiling");
    const auto north=quaternion_euler_31530c({1,0,0,1});
    require_base(north.status==GameBaseStatus::complete&&re::re_bit_cast<ReU32>(north.value.x)==0x42b40004u,
        "positive singular Euler pitch uses distinct native degree constant");
    const auto south=quaternion_euler_31530c({-1,0,0,1});
    require_base(south.status==GameBaseStatus::complete&&re::re_fabsf(south.value.x-270)<0.001f,
        "negative singular Euler pitch wraps to positive range");
}
void check_bone_selection_base() {
    constexpr Address b=0x2000000,entity=b+0x100,model=b+0x1000,array=b+0x2000,t0=b+0x3000,t1=b+0x3100;
    Snapshot im(b,re::ReVector<ReByte>(0x4000));
    put_base(im,entity+0x48,Address(1));put_base(im,entity+0x1d0,model);put_base(im,model+0x50,array);
    put_base(im,array+0x18,ReI32(45));put_base(im,array+0x20,t0);put_base(im,array+0x28,t1);
    put_base(im,array+0x20+43*8,t0);put_base(im,array+0x20+44*8,t1);
    BoneQueries c;
    c.camera_2e069c=[&]{return b+0x500;};c.local_2dda9c=[&]{return b+0x600;};
    int positions=0,masks=0,queries=0,projects=0;
    c.transform_position_3747d4=[&](Address t){++positions;return Vec3{t==t0?502.0f:500.0f,500,1};};
    c.camera_position_36ca34=[](Address){return Vec3{};};
    c.mask_2e6a6c=[&]{return ReU32(++masks);};
    c.query_2e2320=[&](Vec3,Vec3,ReU32 mask,float a,float d){++queries;require_base(mask==ReU32(queries)&&a==0&&d==0,"fresh bone query mask/order");return true;};
    c.project_36cd20=[&](Address,Vec3 p,Vec2& out,ProjectionBounds r){++projects;require_base(r.height==1000,"fourth projection bound preserved");out={p.x,p.y};return true;};
    c.width_2e0af0=[] {return 1000;};c.height_2e09f0=[] {return 1000;};
    c.bone_position_368be8=[](Address,ReI32 index){require_base(index==43,"priority bone argument");return Vec3{10000,10000,1};};
    const ProjectionBounds bounds{0,0,1000,1000};
    const auto nearest=choose_bone_368cb0(im,entity,0,bounds,c);
    require_base(nearest.status==GameBaseStatus::complete&&nearest.value==1&&positions==2&&projects==2,
        "screen ranking skips indices43/44 despite valid transforms");
    positions=masks=queries=projects=0;
    const auto priority=choose_bone_368cb0(im,entity,43,bounds,c);
    require_base(priority.value==43&&queries==3&&projects==2,"visible nonzero priority overrides ranking without projection");
    require_base(choose_bone_368cb0(im,entity,0,bounds,c,1).status==GameBaseStatus::analysis_limit,"untrusted bone array bound");
    c.camera_2e069c=[] {return Address(0);};
    require_base(choose_bone_368cb0(im,entity,0,bounds,c).value==-1,"invalid camera returns native minus one");
}
void check_attachments_base() {
    constexpr Address b=0x3000000,weapon=b+0x100,list=b+0x800,array=b+0x1000,alternate=b+0x1100,
        first=b+0x2000,second=b+0x3000,klass=b+0x4000,class_name=b+0x4100,name1=b+0x5000,name2=b+0x6000;
    Snapshot im(b,re::ReVector<ReByte>(0x8000));
    put_base(im,weapon+0x90,list);put_base(im,list+0x10,array);put_base(im,list+0x18,ReI32(2));
    put_base(im,array+0x20,first);put_base(im,alternate+0x28,second);
    put_base(im,first,klass);put_base(im,second,klass);put_base(im,klass+0x10,class_name);
    bytes_base(im,class_name,"ProjectileWeaponMod");wide_base(im,name1+0x14,u"ordinary");
    wide_base(im,name2+0x14,u"assets/prefabs/weapon mods/gascompressionoverdrive/gascompressionoverdrive.entity.prefab");
    put_base(im,first+0x230,ReU8(1));put_base(im,second+0x230,ReU8(0));
    put_base(im,first+0x248,1.2f);put_base(im,second+0x248,0.8f);
    int calls=0;
    AttachmentQueries q{[&](Address mod) {
        ++calls;
        if(mod==first) {put_base(im,list+0x10,alternate);put_base(im,list+0x18,ReI32(99));return name1;}
        require_base(mod==second,"attachment array reloaded after callback");return name2;
    }};
    const auto mean=attachment_velocity_36b758(im,weapon,false,q);
    require_base(mean.status==GameBaseStatus::complete&&mean.value==0&&calls==2,
        "mean one returns zero; gas prefab qualifies disabled mod; count captured once");
    put_base(im,list+0x18,ReI32(1));put_base(im,list+0x10,array);put_base(im,first+0x248,1.025f);
    q.name_37361c=[&](Address){return name1;};
    const auto increase=attachment_velocity_36b758(im,weapon,true,q);
    require_base(increase.status==GameBaseStatus::complete&&increase.value==1.025f-0.05f,
        "exact mean1.025 IncreaseVelocity correction");
    put_base(im,first+0x230,ReU8(0));
    require_base(attachment_velocity_36b758(im,weapon,false,q).value==0,"no qualifying mod normalizes to native zero");
    require_base(attachment_velocity_36b758(im,weapon,false,{}).status==GameBaseStatus::missing_boundary,
        "name getter remains explicit reached game boundary");
}
void check_instant_predicates_base() {
    constexpr Address b=0x4000000,local=b+0x100,held=b+0x1000,weapon=b+0x1800,ammo=b+0x2000,
        target=b+0x2800,definition=b+0x3000;
    Snapshot im(b,re::ReVector<ReByte>(0x4000));
    put_base(im,weapon+0x3ac,100.0f);put_base(im,ammo+0x44,1.0f);put_base(im,ammo+0x40,0.0f);
    put_base(im,target+0x48,Address(1));put_base(im,definition+0x20,ReU32(0));
    InstantHitQueries q;
    q.local_2dda9c=[&]{return local;};q.target_2e02b0=[&]{return target;};
    q.game.object=[&](Rva r,Address) {
        switch(r) {case 0x368a84:return held;case 0x371464:return weapon;case 0x36b938:return ammo;case 0x37154c:return definition;default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected instant getter") */ }}
    };
    int origins=0;
    q.game.vector=[&](Rva r,Address) {if(r==0x369164) {++origins;return Vec3{};}require_base(r==0x369790,"instant point getter");return Vec3{10,0,0};};
    q.game.bone_368be8=[](Address,ReI32 index){require_base(index==7,"instant distance bone");return Vec3{10,0.9f,0};};
    q.game.scalar=[](Rva r,Address){require_base(r==0x32bb60,"instant scalar callee");return 0.0f;};
    q.mask_2e6a6c=[] {return 0x1234u;};
    q.query_2e2320=[](Vec3 first,Vec3 second,ReU32 mask,float a,float c) {
        require_base(first.x==10&&second.x==0&&mask==0x1234&&a==0&&c==0,"instant query endpoint order");return true;
    };
    InstantHitInput p{true,false,false,0.73f,0.94f};
    require_base(instant_fixed_2f7dd0(im,p,q).value&&origins==2,"fixed instant predicate and repeated origin getter");
    require_base(instant_timed_2f824c(im,p,q).value,"timed instant includes elapsed0.73 equality");
    p.elapsed_3d72ec=0.730001f;
    require_base(!instant_timed_2f824c(im,p,q).value&&instant_fixed_2f7dd0(im,p,q).value,
        "fixed and timed predicates retain distinct elapsed gates");
    p.scalar_3e4254=0.95f;
    require_base(!instant_fixed_2f7dd0(im,p,q).value,"strict scalar0.95 gate");
    p.scalar_3e4254=0;p.fat_hit=true;
    require_base(!instant_fixed_2f7dd0(im,p,q).value,"fat branch additionally requires byte3e5e79");
    p.byte_3e5e79=true;q.query_2e2320=[](Vec3,Vec3,ReU32,float,float){return false;};
    require_base(instant_fixed_2f7dd0(im,p,q).value,"fat branch can bypass negative line query");
    p.enabled=false;
    require_base(instant_fixed_2f7dd0(im,p,{}).status==GameBaseStatus::complete&&!instant_fixed_2f7dd0(im,p,{}).value,
        "disabled instant predicate reaches no dependencies");
    p.enabled=true;put_base(im,weapon+0x3ac,0.0f);put_base(im,definition+0x20,ReU32(0x34b73d71));
    q.game.bone_368be8=[](Address,ReI32){return Vec3{1,0.9f,0};};
    require_base(instant_fixed_2f7dd0(im,p,q).value,"raw integer item ID enables plus-one base override");
    put_base(im,definition+0x20,ReU32(0));
    require_base(!instant_fixed_2f7dd0(im,p,q).value,"ordinary zero base cannot reach target");
}
}
void check_game_base_reconstruction() {
    check_field_and_string_base();check_projection_and_euler_base();check_bone_selection_base();check_attachments_base();check_instant_predicates_base();
}
} // namespace rust_internal_re
