#include "aim_weapon_analysis.hpp"

namespace rust_internal_re {
namespace {
void require(bool ok,const char* message) { if(!ok) { __builtin_trap(); }
}
void near(float a,float b,float epsilon=0.001f) {
    float d=a-b; if(d<0)d=-d; if(d>epsilon) __builtin_trap();
}
void near3(Vec3 a,Vec3 b,float epsilon=0.001f) {
    near(a.x,b.x,epsilon); near(a.y,b.y,epsilon); near(a.z,b.z,epsilon);
}
constexpr Address local=0x101000,held=0x103000,input=0x106000,mod=0x108000;
constexpr Address component=0x109000,baseline=0x10a000,recoil=0x10b000,target=0x10c000;
constexpr Address definition=0x10d000,transform=0x10e000;
struct Fixture {
    Snapshot snapshot{0x100000,re::ReVector<ReByte>(0x40000)};
    AimWeaponCalls calls;
    re::ReVector<Rva> order;
    Address melee{}, projectile{held}, server{}, thrown{}, view{}, cache{baseline};
    Vec3 point{0,0,100}, velocity{4,0,0}, prediction{0,0,1};
    float attachment{}, euler_y{}; ReU32 item_id{12};
    bool key{}, scientist{}, valid_result{true};
    float formatted{};
    re::ReVector<int> bones;
    Fixture() {
        calls.valid_2e0e9c=[&](Address) { order.push_back(0x2e0e9c);return valid_result; };
        calls.object=[&](Rva r,Address) {
            order.push_back(r);
            switch(r) {
            case 0x368a84:return held; case 0x3721b4:return melee;
            case 0x371464:return projectile; case 0x371eb8:return server;
            case 0x3716e0:return thrown; case 0x369738:return input;
            case 0x36b938:case 0x371630:return mod;
            case 0x372abc:case 0x372b30:return component;
            case 0x37154c:return definition;case 0x315a54:return transform;
            case 0x3714c4:return view;
            default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected object boundary") */ }
            }
        };
        calls.vector=[&](Rva r,Address) {
            order.push_back(r);
            switch(r) {
            case 0x369790:case 0x3747d4:return point;
            case 0x369164:case 0x36ca34:return Vec3{};
            case 0x368100:return velocity;
            default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected vector boundary") */ }
            }
        };
        calls.scalar=[&](Rva r,Address) {
            order.push_back(r);
            if(r==0x36b758) return attachment;
            { /* FREESTANDING_TODO: was throw runtime_error("unexpected scalar boundary") */ }
        };
        calls.integer=[&](Rva r,Address) { order.push_back(r);return item_id; };
        calls.prediction_2e2374=[&](const AimPredictionRequest&) { order.push_back(0x2e2374);return prediction; };
        calls.format_2d9540=[&](float value) { formatted=value;order.push_back(0x2d9540); };
        calls.destroy_formatted_2cc4f4=[&] { order.push_back(0x2cc4f4); };
        calls.helicopter_2fa300=[&](Address a,Address b) {
            require(a==0x123456 && b==local,"helicopter argument roles");order.push_back(0x2fa300);
        };
        calls.transform_euler_y=[&](Address) {order.push_back(0x31530c);return euler_y;};
        calls.baseline_2ef724=[&](ReU32) {order.push_back(0x2ef724);return cache;};
        calls.class_hash_2e5a54_2d6354=[&](Address) -> re::ReOptional<ReU64> {
            return entity_name_hash_2d6354(scientist?"ScientistNPC2":"FlintStrikeWeapon");
        };
        calls.bone_368be8=[&](Address,int b) { bones.push_back(b);return Vec3{float(b),float(b)*2,float(b)*3}; };
        calls.choose_bone_368cb0=[&](Address,int b) {bones.push_back(-100-b);return b+100;};
        calls.key_2e5e4c=[&](int,bool mode) {require(mode,"second-key mode");return key;};
        calls.predicate=[&](Rva r,Address,ReU8) {
            if(r==0x36a178) return scientist;
            return false;
        };
        put(held+0x3ac,2.0f);put(held+0x3f8,10.0f);
        put(mod+0x40,10.0f);put(mod+0x44,20.0f);put(component+0x3c,30.0f);
        put(held+0x420,recoil);put(recoil+0x80,Address{});
        put(recoil+0x20,Vec2{10,20});put(recoil+0x18,Vec2{30,40});
        put(held+0x304,0.2f);put(local+0x38,Address{});
    }
    template<class T> void put(Address a,T v) {require(snapshot.write(a,v),"fixture write bounds");}
    template<class T> T get(Address a) {return snapshot.read<T>(a).value();}
    bool called(Rva r) const {return re::re_find(order.begin(),order.end(),r)!=order.end();}
};
AimConfig enabled_aim() {
    AimConfig c;c.aimmarker=true;c.player_maximum_distance=1000;return c;
}
AimState aim_state() {AimState s;s.table_context_3e5718=0x110000;s.marker_3e6050={9,8,7};return s;}
AimWeaponResult run(Fixture& f,AimState& s,const AimConfig& c,Address l=local) {
    return replay_aim_2f9988(f.snapshot,s,c,0x123456,l,[]{return target;},f.calls);
}
}

void check_aim_weapon_reconstruction() {
    {
        Fixture f;auto state=aim_state();auto cfg=enabled_aim();cfg.aimbot=true;cfg.active_3d72a0=true;f.point={0,10,100};
        const auto object=f.calls.object;f.calls.object=[&](Rva r,Address a){return r==0x372abc?Address{}:object(r,a);};
        f.put(local+0x38,transform);f.calls.transform_euler_y=[&](Address){
            // [I] A preceding typed effect can replace the copied range after the old-angle read.
            Snapshot smaller(0x100000,re::ReVector<ReByte>(ReUSize(input+0x48-0x100000)));
            require(smaller.write(input+0x44,123.0f),"partial angle fixture");f.snapshot=re::re_move(smaller);return 0.0f;
        };
        const auto result=run(f,state,cfg);
        require(result.status==AimWeaponStatus::missing_bytes&&result.boundary==0x2fa2a9,"second scalar angle store fails at its own RVA");
        near(f.get<float>(input+0x44),aim_angles_2f80bc({},f.point).x);
    }
    {
        Fixture f;TargetState state{target};TargetCalls cb;cb.game=f.calls;TargetConfig cfg;cfg.keep=true;cfg.active_3d72a0=true;
        TargetSelectionInput input_state;input_state.camera_2e069c=definition;input_state.local_2dda9c=local;
        cb.game.valid_2e0e9c=[&](Address p){require(p==target,"captured retained target validation");state.retained_3e3e90=target+0x100;return true;};
        cb.game.predicate=[&](Rva r,Address p,ReU8){require(r==0x3693b0&&p==target,"captured retained target survives callback mutation");return false;};
        require(select_target_2e02b0(state,input_state,cfg,cb)==target+0x100,"successful keep path reloads returned global");
    }
    {
        Fixture f;WeaponConfig cfg;cfg.rage_recoil=true;cfg.recoil_percent1=50;cfg.recoil_percent=100;
        f.cache=recoil+0x1c;f.put(f.cache,2.0f);f.put(f.cache+4,8.0f);f.put(f.cache+8,12.0f);f.put(f.cache+12,16.0f);f.put(f.cache+0x14,ReU8(1));
        require(replay_recoil_36bc14(f.snapshot,cfg,held,true,local,f.calls).status==AimWeaponStatus::returned,"aliased recoil replay");
        near(f.get<float>(recoil+0x20),1);near(f.get<float>(recoil+0x24),0.5f);
    }
    // [I] Numerical oracles exercise discontinuities and recovered approximations.
    near(approximate_sqrt_2e3c88(4),2,0.00002f);
    require(approximate_sqrt_2e3c88(0)>0,"native inverse-root zero differs from sqrt");
    near(approximate_asin_3c85e8(0),0,0.00008f);
    near(approximate_asin_3c85e8(0.5f),0.5235988f,0.0001f);
    near(approximate_atan2_3c86ac(1,1),0.7853982f,0.0003f);
    near(approximate_atan2_3c86ac(-1,-1),-2.3561945f,0.0003f);
    const Vec2 angles=aim_angles_2f80bc({0,0,0},{100,0,-100});
    near(angles.x,0,0.005f);near(angles.y,135,0.02f);
    Vec2 wraps{1260,-900};require(wrap_angles_316fd0(wraps),"angle wrap completes");
    near(wraps.x,180);near(wraps.y,-180);
    near(wrap_once_2f84e8({900,-900}).x,540);
    Vec2 infinite{re::ReNumericLimits<float>::infinity(),0};
    require(!wrap_angles_316fd0(infinite),"native nonprogress loop guarded");
    const float nan=re::ReNumericLimits<float>::quiet_NaN();
    Vec2 unordered{nan,181};require(wrap_angles_316fd0(unordered),"NaN wrap comparisons");
    require(re::re_isnan(unordered.x) && unordered.y==-179,"NaN preserved in wrapping");
    near(clamp_dispatch_2ed2ac(-5,0,1),0);near(clamp_dispatch_2ed2ac(5,0,1),1);
    require(re::re_isnan(clamp_dispatch_2ed2ac(nan,0,1)),"dispatch clamp NaN retained");
    // [C] The second comparison uses original value; inverted bounds expose it.
    near(clamp_dispatch_2ed2ac(5,10,0),0);

    {
        Fixture f;auto state=aim_state();auto cfg=enabled_aim();
        require(run(f,state,cfg,0).status==AimWeaponStatus::returned,"invalid local returns");
        near3(state.marker_3e6050,{9,8,7});require(f.order.empty(),"range gate before game call");
        cfg={};run(f,state,cfg);near3(state.marker_3e6050,{});
        state=aim_state();f.calls.valid_2e0e9c={};
        require(run(f,state,cfg).status==AimWeaponStatus::missing_boundary,"no constant-valid fallback");
    }
    {
        Fixture f;auto state=aim_state();const auto cfg=enabled_aim();
        replay_aim_2f9988(f.snapshot,state,cfg,0x123456,local,[]{return Address{};},f.calls);
        require(f.called(0x2fa300),"helicopter fallback invoked");near3(state.marker_3e6050,{});
        f.order.clear();state=aim_state();f.point={};run(f,state,cfg);
        require(!f.called(0x368a84),"zero point gate before held item");
        f.point={0,0,2000};f.order.clear();run(f,state,cfg);
        require(!f.called(0x368a84),"distance gate before held item");
    }
    {
        Fixture f;auto state=aim_state();auto cfg=enabled_aim();
        cfg.increase_velocity=true;cfg.projectile_speed=4;
        require(run(f,state,cfg).status==AimWeaponStatus::returned,"projectile branch returns");
        near3(state.marker_3e6050,{0,0,89.7f},0.002f);
        const re::ReArray<Rva,4> types{0x3721b4,0x371464,0x371eb8,0x3716e0};
        auto at=re::re_find(f.order.begin(),f.order.end(),types[0]);
        require(bool(at) && re::re_equal(types.begin(),types.end(),at),"ordered subtype queries");
        f.item_id=0x34b73d71;state=aim_state();run(f,state,enabled_aim());
        near(state.marker_3e6050.z,90,0.002f); // [C] integer-ID +1 scale getter.
        f.item_id=12;f.attachment=1.4f;f.order.clear();state=aim_state();
        run(f,state,cfg);near(state.marker_3e6050.z,84,0.002f);
        require(re::re_count(f.order.begin(),f.order.end(),0x36b758)==2,"attachment getter repeated");
        f.order.clear();state=aim_state();state.table_context_3e5718=0;run(f,state,cfg);
        near3(state.marker_3e6050,{9,8,7});require(!f.called(0x2e2374),"missing table early return");
    }
    {
        Fixture f;f.thrown=held;auto state=aim_state();state.compensation_3e6060={2,4,6};
        AimPredictionRequest request{};
        f.calls.prediction_2e2374=[&](const AimPredictionRequest& r) {request=r;return f.prediction;};
        require(run(f,state,enabled_aim()).status==AimWeaponStatus::returned,"thrown branch returns");
        near(f.formatted,9.546875f,0.000002f);near3(request.origin,{1,0,0});
        near3(state.marker_3e6050,{0,-2,6.546875f},0.001f);
        require(f.order.back()==0x2cc4f4,"formatted string destroyed after branch");
        state=aim_state();state.table_context_3e5718=0;f.order.clear();run(f,state,enabled_aim());
        near3(state.marker_3e6050,{9,8,7});require(f.order.back()==0x2cc4f4,"missing context cleanup");
    }
    {
        Fixture f;f.server=held;auto state=aim_state();AimPredictionRequest request{};
        f.calls.prediction_2e2374=[&](const AimPredictionRequest& r) {request=r;return f.prediction;};
        run(f,state,enabled_aim());near(request.origin.x,1,0.00002f);
        near3(state.marker_3e6050,{1,0,60},0.002f);
        f.server=0;f.melee=held;state=aim_state();run(f,state,enabled_aim());
        near3(state.marker_3e6050,{0,0,10},0.001f);
        f.melee=0;f.projectile=0;state=aim_state();run(f,state,enabled_aim());
        near3(state.marker_3e6050,{});
    }
    {
        Fixture f;auto cfg=enabled_aim();cfg.aimbot=true;cfg.active_3d72a0=true;
        cfg.smooth=true;cfg.smoothing=0.5f;f.point={100,0,-100};f.prediction={};
        f.put(input+0x44,Vec2{0,170});f.put(local+0x38,definition);f.euler_y=15;
        auto state=aim_state();run(f,state,cfg);
        near3(state.marker_3e6050,{}); // [C] zero prediction still reaches angle tail.
        near(f.get<Vec2>(input+0x44).y,145,0.02f);
        cfg.psilent=true;f.put(input+0x44,Vec2{11,22});run(f,state,cfg);
        near(f.get<Vec2>(input+0x44).x,11);near(f.get<Vec2>(input+0x44).y,22);
    }
    {
        Fixture f;AimPointConfig cfg;
        near3(aim_point_369790(target,cfg,f.calls),{55,108.05f,165});
        require(f.bones==re::ReVector<int>({55,54}),"primary mixed bone calls");
        f.scientist=true;f.bones.clear();near3(aim_point_369790(target,cfg,f.calls),{11,30.05f,33});
        cfg.primary=5;cfg.first_priority=2;f.bones.clear();aim_point_369790(target,cfg,f.calls);
        require(f.bones==re::ReVector<int>({-117,117}),"scientist first-priority resolver");
        f.key=true;cfg.secondary=2;f.bones.clear();aim_point_369790(target,cfg,f.calls);
        require(f.bones.back()==17,"second-key override bone");
        cfg.fat_bullet=true;cfg.pierce=true;cfg.psilent=true;f.bones.clear();
        near3(aim_point_369790(target,cfg,f.calls),{11,30.05f,33});
        require(f.bones[f.bones.size()-2]==11 && f.bones.back()==15,"fat override after secondary");
        cfg.secondary=3;f.bones.clear();near3(aim_point_369790(target,cfg,f.calls),{11,104.05f,33});
        require(f.bones[f.bones.size()-2]==11&&f.bones.back()==52,"native secondary3 retains EBX52 for scientist fat override");
        f.calls.class_hash_2e5a54_2d6354=[](Address) -> re::ReOptional<ReU64> {return {};};
        near3(aim_point_369790(target,cfg,f.calls),{});
    }
    {
        Fixture f;AimPointConfig cfg;
        for(const bool special: {false,true}) {
            f.scientist=special;
            const re::ReArray<int,3> expected=special?re::ReArray<int,3>{46,17,15}:
                                                    re::ReArray<int,3>{52,23,21};
            for(int mode=1;mode<=3;++mode) {
                cfg.primary=mode;f.bones.clear();aim_point_369790(target,cfg,f.calls);
                require(f.bones==re::ReVector<int>{expected[mode-1]},"direct bone mode mapping");
            }
            cfg.primary=4;f.bones.clear();aim_point_369790(target,cfg,f.calls);
            require(f.bones==re::ReVector<int>({-100,100}),"dynamic bone selection mode");
            cfg.primary=5;
            const re::ReArray<int,5> priorities=special?re::ReArray<int,5>{47,46,17,15,14}:
                                                      re::ReArray<int,5>{48,46,22,21,20};
            for(int p=0;p<5;++p) {
                cfg.first_priority=p;f.bones.clear();aim_point_369790(target,cfg,f.calls);
                require(f.bones==re::ReVector<int>({-100-priorities[p],100+priorities[p]}),
                        "first-priority index mapping");
            }
        }
    }
    {
        Fixture f;TargetCalls cb;cb.game=f.calls;
        cb.game.bone_368be8=[](Address,int b) {require(b==53,"normal ranking bone");return Vec3{0,0,10};};
        cb.game.predicate=[](Rva r,Address,ReU8) {return r==0x36b244;};
        cb.record_kind=[](Address e,ReU8) {return e==target+0x100?2u:0u;};
        cb.project_36cd20=[](Address,Vec3,Vec2& out,ProjectionBounds) {out={510,500};return true;};
        TargetConfig cfg;cfg.auto_enemy=true;cfg.active_3d72a0=true;cfg.fov=20;
        cfg.player_maximum_distance=100;cfg.scientist_maximum_distance=100;
        cfg.screen_width=1000;cfg.screen_height=1000;
        re::ReArray<TargetRecord,3> records{{{target,0},{target+0x100,0},{target+0x200,0}}};
        TargetSelectionInput in;in.camera_2e069c=definition;in.local_2dda9c=local;in.records=records;
        TargetState state;int projections=0;
        cb.project_36cd20=[&](Address,Vec3,Vec2& out,ProjectionBounds) {
            const re::ReArray<float,3> x{510,1500,515};out={x[projections++],500};return true;
        };
        require(select_target_2e02b0(state,in,cfg,cb)==target+0x100,"enemy bypass FOV and retains best");
        projections=0;cb.project_36cd20=[&](Address,Vec3,Vec2& out,ProjectionBounds) {
            const re::ReArray<float,3> x{510,1500,505};out={x[projections++],500};return true;
        };
        require(select_target_2e02b0(state,in,cfg,cb)==target+0x200,"closer ordinary target beats earlier enemy");
        cfg.keep=true;projections=0;
        require(select_target_2e02b0(state,in,cfg,cb)==target+0x200 && projections==0,"retained target bypasses scan");
        cfg.keep=false;in.records={};
        require(select_target_2e02b0(state,in,cfg,cb)==0 && state.retained_3e3e90==target+0x200,
                "empty scan returns zero without clearing retained pointer");
        in.gate_2e0e4c=true;select_target_2e02b0(state,in,cfg,cb);
        require(state.retained_3e3e90==0,"global selector gate clears retained");
        cfg.scientist=false;require(!target_eligible_36aec4(target,1,cfg,cb.game),"NPC category toggle gate");
        cfg.scientist=true;require(target_eligible_36aec4(target,1,cfg,cb.game),"category bypasses player-only gates");
        cfg.wounded=false;
        cb.game.predicate=[](Rva r,Address,ReU8) {return r==0x36b288;};
        require(!target_eligible_36aec4(target,0,cfg,cb.game),"wounded target gate");
        cfg.wounded=true;require(target_eligible_36aec4(target,0,cfg,cb.game),"wounded option allows target");
        cb.game.predicate=[](Rva r,Address,ReU8) {return r==0x36a20c;};
        require(!target_eligible_36aec4(target,0,cfg,cb.game),"sleeping target gate");
        cfg.sleepers=true;require(target_eligible_36aec4(target,0,cfg,cb.game),"sleeper option allows target");
    }
    {
        require(classify_weapon_subset(WeaponKindQuery::thrown_3716e0,held,definition,0x0892448f,0)==held,
                "thrown item ID recognized");
        require(classify_weapon_subset(WeaponKindQuery::thrown_3716e0,held,definition,0x0892448f,5)==0,
                "thrown category gate");
        require(classify_weapon_subset(WeaponKindQuery::melee_3721b4,held,definition,0x642edf92,5)==held,
                "melee category five allowed");
        require(melee_id_371828(0x5f867078) && !melee_id_371828(0),"complete melee ID table endpoints");
        require(projectile_id_3719e8(0x7eaadd59) && projectile_id_3719e8(0x01ae5371) &&
                !projectile_id_3719e8(0),"complete projectile ID table endpoints");
    }
    {
        Fixture f;WeaponConfig cfg;cfg.rage_recoil=true;cfg.byte_3efc01=true;
        cfg.recoil_percent=0;cfg.recoil_percent1=50;cfg.fast_fire=true;cfg.view_value=1;
        cfg.full_auto=true;cfg.no_sway=true;f.put(held+0x418,ReU64{123});
        auto result=replay_weapon_319024(f.snapshot,cfg,local,f.calls);
        require(result.status==AimWeaponStatus::returned,"dispatcher returns");
        near(f.get<Vec2>(recoil+0x20).x,5);near(f.get<Vec2>(recoil+0x18).x,0);
        near(f.get<float>(held+0x304),0.06f);near(f.get<float>(baseline+0x10),0.2f);
        require(f.get<ReU8>(baseline+0x14)==1,"baseline marked captured");
        require(f.get<ReU8>(held+0x3b0)==1 && f.get<ReU64>(held+0x418)==0,"auto and sway writes");
        require(re::re_count(f.order.begin(),f.order.end(),0x2ef724)==2,"recoil and dispatcher baseline lookups");
        cfg.rage_recoil=false;cfg.byte_3efc01=false;cfg.fast_fire=false;
        replay_weapon_319024(f.snapshot,cfg,local,f.calls);
        near(f.get<Vec2>(recoil+0x20).x,10);near(f.get<Vec2>(recoil+0x18).x,30);
        near(f.get<float>(held+0x304),0.2f); // [C] restoration uses captured original.
        cfg.recoil_mod=true;f.put(input+0x44,Vec2{10,20});f.put(held+0x220,Vec3{2,4,6});
        replay_recoil_36bc14(f.snapshot,cfg,held,true,local,f.calls);
        near(f.get<Vec2>(input+0x44).x,8);near(f.get<Vec2>(input+0x44).y,18);
        near3(f.get<Vec3>(held+0x220),{});
    }
    {
        Fixture f;WeaponConfig cfg;
        replay_recoil_36bc14(f.snapshot,cfg,held,false,0,f.calls);
        require(f.get<ReU8>(baseline+0x14)==1,"capture precedes invalid local gate");
        require(!f.called(0x369738),"invalid local skips input getter after capture");
        near(f.get<float>(baseline+0x10),0.2f);
        const Address alternate=0x110000;f.put(recoil+0x80,alternate);
        f.put(baseline+0x14,ReU8{0});f.put(alternate+0x20,Vec2{2,3});
        f.put(alternate+0x18,Vec2{4,5});
        cfg.rage_recoil=true;cfg.recoil_percent=50;cfg.recoil_percent1=25;
        replay_recoil_36bc14(f.snapshot,cfg,held,true,local,f.calls);
        near(f.get<Vec2>(alternate+0x20).x,0.5f);near(f.get<Vec2>(alternate+0x18).x,2);
        near(f.get<Vec2>(recoil+0x20).x,10); // [C] valid override receives writes.
    }
    {
        Fixture f;WeaponConfig cfg;cfg.eoka_tap=true;cfg.eoka_index=2;
        replay_weapon_319024(f.snapshot,cfg,local,f.calls);
        require(f.get<ReU32>(held+0x4d8)==0xc61c3c00,"Eoka negative sentinel bits");
        cfg.auto_fire=true;replay_weapon_319024(f.snapshot,cfg,local,f.calls);
        near(f.get<float>(held+0x4d8),1);require(f.get<ReU8>(held+0x4e8)==1,"AutoFire Eoka ready");
        cfg.no_weapon_bob=true;f.view=definition;f.put(definition+0x218,Address{});f.order.clear();
        replay_weapon_319024(f.snapshot,cfg,local,f.calls);
        require(!f.called(0x371464),"invalid inner view chain aborts remaining dispatcher");
        f.view=0;f.order.clear();replay_weapon_319024(f.snapshot,cfg,local,f.calls);
        require(f.called(0x371464),"invalid outer view getter only skips bob branch");
    }
    {
        Fixture f;Snapshot short_copy(local,re::ReVector<ReByte>(0x100));WeaponConfig cfg;
        const auto result=replay_weapon_319024(short_copy,cfg,local,f.calls);
        require(result.status==AimWeaponStatus::missing_bytes && result.boundary==0x36bc6a,
                "missing copied bytes are explicit and attributed");
        require(!f.called(0x369738),"missing recoil copy stops before input getter");
    }
}
} // namespace rust_internal_re
