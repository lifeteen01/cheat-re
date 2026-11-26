#include "aim_weapon_analysis.hpp"
#include "snapshot_bindings.hpp"

namespace rust_internal_re {
namespace {
struct Fault {
    AimWeaponStatus status; Rva rva;
    Fault(AimWeaponStatus s,Rva r) : status(s),rva(r) {}
};
template<class F,class... A> auto invoke(Rva rva,const F& f,A&&... a) {
    if (!f) __builtin_trap();
    return f(re::re_forward<A>(a)...);
}
template<class T> T read(const Snapshot& s,Address a,Rva rva) {
    const auto v=s.read<T>(a); if (!v) __builtin_trap();
    return *v;
}
template<class T> void write(Snapshot& s,Address a,T v,Rva rva) {
    if (!s.write(a,v)) __builtin_trap();
}
template<class F> AimWeaponResult guarded(F&& f) {
    { f(); return {}; }
}
bool valid(const AimWeaponCalls& c,Address a) {
    return sample_pointer_range(a) && invoke(0x2e0e9c,c.valid_2e0e9c,a);
}
Address object(const AimWeaponCalls& c,Rva r,Address a) { return invoke(r,c.object,r,a); }
Vec3 vector(const AimWeaponCalls& c,Rva r,Address a) { return invoke(r,c.vector,r,a); }
float scalar(const AimWeaponCalls& c,Rva r,Address a) { return invoke(r,c.scalar,r,a); }
ReU32 integer(const AimWeaponCalls& c,Rva r,Address a) { return invoke(r,c.integer,r,a); }
bool predicate(const AimWeaponCalls& c,Rva r,Address a,ReU8 b=0) {
    return invoke(r,c.predicate,r,a,b);
}
bool zero(Vec3 v) { return v.x==0 && v.y==0 && v.z==0; }
Vec3 normalized(Vec3 v) {
    const float n=approximate_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z);
    return n>0 ? Vec3{v.x/n,v.y/n,v.z/n}:Vec3{};
}
float distance3(Vec3 a,Vec3 b) {
    const Vec3 d=a-b;
    return approximate_sqrt_2e3c88((d.y*d.y+d.x*d.x)+d.z*d.z);
}
float minimum_sse(float a,float b) { return a<b ? a:b; }
float clamp_recoil(float v) { // [C] 0x2e5a44: NaN propagates as MINSS second operand.
    return 0>v ? 0:minimum_sse(1,v);
}
bool wrap_component(float& v) {
    // [I] Explicit non-progress detection protects copied-data analysis from the
    // native infinite loop on infinity or a value whose ULP exceeds 360.
    while (v>180) { const float n=v-360; if(n==v) return false; v=n; }
    while (-180>v) { const float n=v+360; if(n==v) return false; v=n; }
    return true;
}
void wrap_or_fail(Vec2& v) {
    if (!wrap_angles_316fd0(v)) __builtin_trap();
}
}

float approximate_sqrt_2e3c88(float x) {
    return sample_sqrt_2e3c88(x); // [C] Shared literal body; same scalar arithmetic.
}
float approximate_asin_3c85e8(float x) {
    // [C] f32 multiply stages interleaved with f64 constants, 0x3c8608..0x3c869b.
    const bool negative=0>x; const float a=re::re_fabs(x);
    const float root=approximate_sqrt_2e3c88(static_cast<float>(1.0-static_cast<double>(a)));
    float p=a*re::re_bit_cast<float>(ReU32{0xbc996e30});
    p=static_cast<float>(static_cast<double>(p)+0.074261);
    p=p*a;
    p=static_cast<float>(static_cast<double>(p)-0.2121144);
    p=p*a;
    p=static_cast<float>(static_cast<double>(p)+1.5707288);
    const float t=root*p;
    const float r=static_cast<float>(1.570796326794895-static_cast<double>(t));
    return r-(negative ? 2.0f*r:0.0f*r);
}
float approximate_atan2_3c86ac(float y,float x) {
    if(y==0 && x==0) return 0;
    const float ay=re::re_fabs(y), ax=re::re_fabs(x);
    // [C] Literal pointer-min/max helpers retain first operand on unordered.
    const float lo=ay>ax ? ax:ay, hi=ay>ax ? ay:ax;
    const float r=lo/hi, r2=r*r;
    float p=re::re_bit_cast<float>(ReU32{1042490180})-
        r2*re::re_bit_cast<float>(ReU32{1027502870});
    p=p*r2;
    p=p-re::re_bit_cast<float>(ReU32{1051180588});
    p=p*r2; p=p*r; p=p+r;
    float a=ay>ax ? re::re_bit_cast<float>(ReU32{1070141403})-p:p;
    if(0>x) a=re::re_bit_cast<float>(ReU32{1078530011})-a;
    if(0>y) a=-a;
    return a;
}
Vec2 aim_angles_2f80bc(Vec3 origin,Vec3 point) {
    const Vec3 d=origin-point;
    const float n=approximate_sqrt_2e3c88((d.y*d.y+d.x*d.x)+d.z*d.z);
    constexpr float degrees=re::re_bit_cast<float>(ReU32{0x42652ee0});
    return {approximate_asin_3c85e8(d.y/n)*degrees,
            -approximate_atan2_3c86ac(d.x,-d.z)*degrees};
}
bool wrap_angles_316fd0(Vec2& v) { return wrap_component(v.x) && wrap_component(v.y); }
Vec2 wrap_once_2f84e8(Vec2 v) {
    auto once=[](float a) { if(a>180) a-=360; if(-180>a) a+=360; return a; };
    return {once(v.x),once(v.y)};
}
float clamp_dispatch_2ed2ac(float value,float low,float high) {
    // [C] Second comparison is with original value, NOT the selected lower bound.
    float selected=low>value ? low:value;
    if(value>high) selected=high;
    return selected;
}

Vec3 aim_point_369790(Address entity,const AimPointConfig& cfg,const AimWeaponCalls& c) {
    if(!valid(c,entity)) return {};
    const auto hash=invoke(0x2d6354,c.class_hash_2e5a54_2d6354,entity);
    if(!hash) return {};
    const bool scientist=*hash==entity_name_hash_2d6354("ScientistNPC2");
    auto bone=[&](int b) { return invoke(0x368be8,c.bone_368be8,entity,b); };
    auto choose=[&](int p) { return invoke(0x368cb0,c.choose_bone_368cb0,entity,p); };
    auto mixed=[&](int first,int second) {
        const Vec3 a=bone(first), b=bone(second);
        return Vec3{a.x,b.y,a.z}+Vec3{0,0.05f,0};
    };
    auto priority=[&](int p) {
        switch(p) {
        case 0:return scientist?47:48;
        case 1:return 46;
        case 2:return scientist?17:22;
        case 3:return scientist?15:21;
        case 4:return scientist?14:20;
        default:return 0;
        }
    };
    Vec3 result{};
    switch(cfg.primary) {
    case 0:result=mixed(scientist?11:55,scientist?15:54);break;
    case 1:result=bone(scientist?46:52);break;
    case 2:result=bone(scientist?17:23);break;
    case 3:result=bone(scientist?15:21);break;
    case 4:result=bone(choose(0));break;
    case 5:result=bone(choose(priority(cfg.first_priority)));break;
    default:break;
    }
    bool secondary_three=false;
    if(invoke(0x2e5e4c,c.key_2e5e4c,cfg.second_key,true)) {
        switch(cfg.secondary) {
        case 0:result=mixed(scientist?11:55,scientist?15:54);break;
        case 1:result=bone(scientist?46:52);break;
        case 2:result=bone(scientist?17:23);break;
        case 3:result=bone(scientist?15:21);secondary_three=true;break;
        case 4:result=bone(choose(0));break;
        case 5:result=bone(choose(priority(cfg.second_priority)));break;
        default:break;
        }
    }
    if(cfg.fat_bullet && cfg.pierce && cfg.psilent)
        // [C]369aaa skips EBX=15 reset369b4b; active secondary3 retains52.
        result=mixed(scientist?11:55,scientist?(secondary_three?52:15):54);
    return result;
}

bool target_eligible_36aec4(Address e,ReU8 category,const TargetConfig& cfg,
                           const AimWeaponCalls& c) {
    if(!sample_pointer_range(e)) return false;
    const bool scientist=category!=0 || predicate(c,0x36a178,e);
    if(!cfg.scientist && scientist) return false;
    if(predicate(c,0x3693b0,e)) return false;
    if(category) return true;
    if(predicate(c,0x36acb8,e)) return false;
    if(!cfg.wounded && predicate(c,0x36b288,e)) return false;
    if(predicate(c,0x36a20c,e,0)) return cfg.sleepers;
    return true;
}

Address select_target_2e02b0(TargetState& state,const TargetSelectionInput& in,
                           const TargetConfig& cfg,const TargetCalls& cb) {
    const auto& c=cb.game;
    if(in.gate_2e0e4c || !sample_pointer_range(in.camera_2e069c) ||
       !sample_pointer_range(in.local_2dda9c)) { state.retained_3e3e90=0; return 0; }
    const Address retained=state.retained_3e3e90;
    if(cfg.keep && sample_pointer_range(retained)) {
        if(valid(c,retained) && !predicate(c,0x3693b0,retained) &&
           cfg.active_3d72a0) return state.retained_3e3e90;
        state.retained_3e3e90=0;
    }
    float best=9999; Address selected=0; Vec2 screen=in.initial_projection_scratch;
    for(const TargetRecord& record:in.records) {
        const Address e=record.entity;
        if(!valid(c,e) || !target_eligible_36aec4(e,record.category,cfg,c) || e==in.local_2dda9c)
            continue;
        const Vec3 point=invoke(0x368be8,c.bone_368be8,e,record.category?47:53);
        if(zero(point)) continue;
        if(!invoke(0x36cd20,cb.project_36cd20,in.camera_2e069c,point,screen,
                   in.projection_argument_3d72a8) && !cfg.auto_enemy) continue;
        // [C] Both calls to 0x2cd32c return literal zero in the preserved image.
        const auto kind1=invoke(0x2df608,cb.record_kind,e,record.category);
        if(kind1==1) continue;
        const auto kind=invoke(0x2df608,cb.record_kind,e,record.category);
        if(kind==2 && cfg.auto_enemy && !cfg.active_3d72a0 && !predicate(c,0x36b244,e)) continue;
        if(!cfg.pierce && cfg.visibility_check && !predicate(c,0x36b244,e)) continue;
        const bool npc=predicate(c,0x36a178,e);
        const Vec3 origin=vector(c,0x36ca34,in.camera_2e069c);
        if(distance3(origin,point)>static_cast<float>(npc?cfg.scientist_maximum_distance:
                                                     cfg.player_maximum_distance)) continue;
        const float dy=static_cast<float>(cfg.screen_height)*0.5f-screen.y;
        const float dx=static_cast<float>(cfg.screen_width)*0.5f-screen.x;
        const float distance=approximate_sqrt_2e3c88(dy*dy+dx*dx);
        const bool enemy=cfg.auto_enemy && predicate(c,0x36b244,e) && kind==2;
        // [C] Enemy override selects even outside FOV and does NOT change best.
        if(enemy) { selected=e; continue; }
        if(best>distance && !(distance>static_cast<float>(cfg.fov))) {
            best=distance; selected=e;
        }
    }
    // [C] Empty/no-match scan leaves the previous retained pointer untouched.
    if(selected) state.retained_3e3e90=selected;
    return selected;
}

bool melee_id_371828(ReU32 id) {
    // [C] Complete immediate-ID membership table, 0x371828..0x3719e6.
    constexpr re::ReArray<ReU32,42> ids{
        0x642edf92u,0x2973ba7fu,0x737a138fu,0x5d0b4e55u,0x8469ef40u,0xcb3341d8u,
        0x3e667f8fu,0xa465708fu,0xea52880cu,0x873d0b15u,0xb9ece859u,0xe83516d3u,
        0x0e1b6b0du,0xaeed6fb8u,0x461dc294u,0x58e1be96u,0x79a3026fu,0x95db1bfbu,
        0x41d5a5c8u,0x58c00601u,0xb263150du,0xf4471749u,0x759c1be7u,0x0a3f7702u,
        0xa636315fu,0xf059303du,0xa1969136u,0xb55f17afu,0x39740d19u,0x2f6656f8u,
        0xf468061eu,0x65fc4ce6u,0x8ac5ccb0u,0x6c23d89bu,0x8a0add17u,0xbc2d8e83u,
        0x6aae9102u,0xa8680427u,0x4f0be802u,0x41060fb4u,0x5bd8cc17u,0x5f867078u,
    };
    return re::re_find(ids.begin(),ids.end(),id)!=ids.end();
}

bool projectile_id_3719e8(ReU32 id) {
    // [C] Complete immediate-ID membership table, 0x3719e8..0x371c36.
    constexpr re::ReArray<ReU32,54> ids{
        0x7eaadd59u,0xc1a7bf4du,0xbb101906u,0xfb858269u,0x94fc936eu,0x23bd0bb5u,
        0x1fd41741u,0x8d8069f4u,0xe6e9bbfeu,0x7a7bbe0du,0x63bb618eu,0x1c29dbfau,
        0xcd425ec2u,0xe33ff0cbu,0x7c2bfaa3u,0xcb85f761u,0xfa7f6194u,0xeb3e664du,
        0xb18f8a5bu,0xf3017030u,0x37c437bfu,0x28741cebu,0x1a65e87cu,0x721fdedfu,
        0x5c22b98eu,0xf7b67530u,0xb065ec45u,0x41c5e6d2u,0xa5891f45u,0xbd092660u,
        0xfd87ab32u,0xae80eeebu,0xd264397fu,0xfb792d2bu,0x34b73d71u,0x560b474fu,
        0xfba321e3u,0x74763261u,0x51e52593u,0x7523110au,0xcd2eebb5u,0x4e979c37u,
        0x6b1731e1u,0xb79b8d5fu,0x84a4bb78u,0x26bce126u,0x2f686650u,0x97315c8bu,
        0xca10e257u,0x30cf142cu,0x5eab82c3u,0x93f69a57u,0xd19b0ec1u,0x01ae5371u,
    };
    return re::re_find(ids.begin(),ids.end(),id)!=ids.end();
}

Address classify_weapon_subset(WeaponKindQuery q,Address held,Address definition,
    ReU32 id,ReU32 category) {
    if(!sample_pointer_range(held) || !sample_pointer_range(definition)) return 0;
    switch(q) {
    case WeaponKindQuery::melee_3721b4:return melee_id_371828(id) && (category==0 || category==5)?held:0;
    case WeaponKindQuery::projectile_371464:return projectile_id_3719e8(id) && category==0?held:0;
    case WeaponKindQuery::server_371eb8:
        return category==0 && (id==0x1a65e87c || id==0xb18f8a5b || id==0xbd092660)?held:0;
    case WeaponKindQuery::thrown_3716e0:
        return category==0 && (id==0x0892448f || id==0x5cc4424c || id==0x6db8b70a ||
            id==0xc827b4ca || id==0x5345536b || id==0x4b55e423)?held:0;
    }
    return 0;
}

AimWeaponResult replay_aim_2f9988(Snapshot& s,AimState& state,const AimConfig& cfg,
    Address context,Address local,const re::ReFunction<Address()>& select,const AimWeaponCalls& c) {
    return guarded([&] {
        if(!valid(c,local)) return; // [C] invalid local retains old marker.
        auto clear=[&] { state.marker_3e6050={}; };
        if(!(cfg.aimbot || cfg.aimmarker || cfg.psilent || cfg.target_helicopter)) { clear(); return; }
        Address target=invoke(0x2e02b0,select);
        if(!sample_pointer_range(target)) {
            invoke(0x2fa300,c.helicopter_2fa300,context,local); clear(); return;
        }
        if(!invoke(0x2e0e9c,c.valid_2e0e9c,target)) { clear(); return; }
        Vec3 point=vector(c,0x369790,target);
        if(zero(point)) { clear(); return; }
        const Vec3 origin=vector(c,0x369164,local);
        if(distance3(origin,point)>static_cast<float>(cfg.player_maximum_distance)) { clear(); return; }
        const Address held=object(c,0x368a84,local);
        if(!sample_pointer_range(held)) { clear(); return; }
        const Address melee=object(c,0x3721b4,held);
        const Address projectile=object(c,0x371464,held);
        const Address server=object(c,0x371eb8,held);
        const Address thrown=object(c,0x3716e0,held);
        auto refresh_point=[&] {
            const Address transform=object(c,0x315a54,target);
            if(sample_pointer_range(transform)) point=vector(c,0x3747d4,transform);
        };
        auto predict=[&](Vec3 from) {
            return invoke(0x2e2374,c.prediction_2e2374,
                AimPredictionRequest{from,point,state.motion_3d7248,state.table_context_3e5718});
        };
        if(sample_pointer_range(thrown)) {
            const Vec3 from=vector(c,0x369164,local);
            const Vec3 velocity=vector(c,0x368100,local);
            const Vec3 advanced=from+velocity*0.25f;
            const float speed=static_cast<float>(static_cast<double>(read<float>(s,thrown+0x3f8,0x2f9b29))-
                                                  0.4531250149011612);
            refresh_point();
            invoke(0x2d9540,c.format_2d9540,speed);
            if(!state.table_context_3e5718) { invoke(0x2cc4f4,c.destroy_formatted_2cc4f4); return; }
            const Vec3 direction=predict(advanced);
            if(!zero(direction)) {
                point=(normalized(direction)*speed+advanced)-state.compensation_3e6060*0.5f;
                state.marker_3e6050=point;
            } else clear();
            invoke(0x2cc4f4,c.destroy_formatted_2cc4f4);
        } else if(sample_pointer_range(server)) {
            const Address mod=object(c,0x36b938,server);
            if(sample_pointer_range(mod)) {
                const Address component=object(c,0x372b30,mod);
                if(sample_pointer_range(component)) {
                    const float speed=read<float>(s,component+0x3c,0x2f9cf6);
                    const float scale=read<float>(s,server+0x3ac,0x2f9cfe);
                    const Vec3 motion=normalized(vector(c,0x368100,local));
                    const Vec3 from=vector(c,0x369164,local)+motion*1.0f;
                    refresh_point();
                    if(!state.table_context_3e5718) return;
                    const Vec3 direction=predict(from);
                    if(zero(direction)) clear();
                    else { point=normalized(direction)*(speed*scale)+from; state.marker_3e6050=point; }
                }
            }
        } else if(sample_pointer_range(melee)) {
            const Address mod=object(c,0x371630,held);
            if(sample_pointer_range(mod)) {
                const Address component=object(c,0x372abc,mod);
                if(sample_pointer_range(component)) {
                    const float multiplier=cfg.increase_velocity?minimum_sse(cfg.projectile_speed,1.495f):1.0f;
                    if(!state.table_context_3e5718) return;
                    const float speed=read<float>(s,mod+0x40,0x2f9ebf);
                    const Vec3 direction=predict(origin);
                    if(zero(direction)) clear();
                    else { point=normalized(direction)*(multiplier*speed)+origin; state.marker_3e6050=point; }
                }
            }
        } else if(sample_pointer_range(projectile)) {
            const Address definition=object(c,0x37154c,held);
            if(sample_pointer_range(definition)) {
                const Address mod=object(c,0x36b938,projectile);
                if(sample_pointer_range(mod)) {
                    const Address component=object(c,0x372abc,mod);
                    if(sample_pointer_range(component)) {
                        float scale=read<float>(s,projectile+0x3ac,0x2f9f90);
                        if(integer(c,0x37261c,definition)==0x34b73d71)
                            scale=read<float>(s,projectile+0x3ac,0x36b519)+1.0f;
                        const float attachment=scalar(c,0x36b758,projectile);
                        float multiplier=1;
                        // [C] JAE includes equality, excludes unordered (NaN).
                        if(!(attachment>=1.3f)) {
                            if(cfg.byte_3d8301 && cfg.byte_3e4238)
                                multiplier=minimum_sse(cfg.scalar_3e6084,1.495f);
                            else if(cfg.instant_hit) multiplier=1.495f;
                            else if(cfg.increase_velocity) multiplier=minimum_sse(cfg.projectile_speed,1.495f);
                        }
                        if(attachment!=0 && !cfg.byte_3e4238)
                            multiplier=scalar(c,0x36b758,projectile)*multiplier;
                        if(!state.table_context_3e5718) return;
                        const float speed=read<float>(s,mod+0x44,0x2fa05d);
                        const float extra=read<float>(s,mod+0x40,0x2fa067);
                        const Vec3 direction=predict(origin);
                        if(zero(direction)) clear();
                        else {
                            point=normalized(direction)*(((speed+extra)*scale)*multiplier)+origin;
                            state.marker_3e6050=point;
                        }
                    }
                }
            }
        } else { clear(); return; }
        // [C] Failed intermediate subtype getters reach this tail with original point.
        if(!cfg.aimbot || cfg.psilent || !cfg.active_3d72a0) return;
        const Address input=object(c,0x369738,local);
        if(!sample_pointer_range(input)) return;
        const Vec2 old=read<Vec2>(s,input+0x44,0x2fa175);
        Vec2 delta=aim_angles_2f80bc(origin,point)-old;
        wrap_or_fail(delta);
        Vec2 desired=old+delta;
        const Address parent=read<Address>(s,local+0x38,0x2fa1bc);
        if(sample_pointer_range(parent)) {
            const Address transform=object(c,0x315a54,parent);
            if(sample_pointer_range(transform)) {
                desired.y-=invoke(0x31530c,c.transform_euler_y,transform);
                wrap_or_fail(desired);
            }
        }
        wrap_or_fail(desired);
        if(cfg.smooth) {
            Vec2 difference=desired-old; wrap_or_fail(difference);
            desired=old+difference*cfg.smoothing; // [C] multiply, NOT divide.
            wrap_or_fail(desired); desired=wrap_once_2f84e8(desired);
        }
        write(s,input+0x44,desired.x,0x2fa2a4);
        write(s,input+0x48,desired.y,0x2fa2a9);
    });
}

void full_auto_36b434(Snapshot& s,Address weapon) {
    if(!sample_pointer_range(weapon)) return;
    write(s,weapon+0x457,ReU8{0},0x36b444);
    write(s,weapon+0x3b0,ReU8{1},0x36b44b);
}
void no_sway_36be9c(Snapshot& s,Address weapon) {
    if(sample_pointer_range(weapon)) write(s,weapon+0x418,ReU64{0},0x36beac);
}

AimWeaponResult replay_recoil_36bc14(Snapshot& s,const WeaponConfig& cfg,Address weapon,
    bool enabled,Address local,const AimWeaponCalls& c) {
    return guarded([&] {
        if(!sample_pointer_range(weapon)) return;
        const Address baseline=invoke(0x2ef724,c.baseline_2ef724,integer(c,0x367668,weapon));
        if(!baseline) return;
        Address recoil=read<Address>(s,weapon+0x420,0x36bc6a);
        if(!sample_pointer_range(recoil)) return;
        const Address override=read<Address>(s,recoil+0x80,0x36bc81);
        if(sample_pointer_range(override)) recoil=override;
        if(!read<ReU8>(s,baseline+0x14,0x36bc96)) {
            write(s,baseline+0x10,read<float>(s,weapon+0x304,0x36bc9c),0x36bca7);
            write(s,baseline,read<Vec2>(s,recoil+0x20,0x36bcaa),0x36bcc2);
            write(s,baseline+8,read<Vec2>(s,recoil+0x18,0x36bcc6),0x36bcd9);
            write(s,baseline+0x14,ReU8{1},0x36bcde);
        }
        // [C] Baseline capture precedes local/input checks, even when disabled.
        if(!sample_pointer_range(local)) return;
        const Address input=object(c,0x369738,local);
        if(!sample_pointer_range(input)) return;
        if(!cfg.rage_recoil && enabled && cfg.recoil_mod) {
            const float y=read<float>(s,input+0x48,0x36bd4d)-
                (1-static_cast<float>(cfg.recoil_percent1)/100)*read<float>(s,weapon+0x224,0x36bd69);
            const float x=read<float>(s,input+0x44,0x36bd85)-
                (1-static_cast<float>(cfg.recoil_percent)/100)*read<float>(s,weapon+0x220,0x36bd8b);
            write(s,input+0x48,y,0x36bd93); write(s,input+0x44,x,0x36bd9d);
            write(s,weapon+0x220,ReU64{},0x36bdac);
            write(s,weapon+0x228,0.0f,0x36bdb7);
        }
        const float ypercent=enabled && cfg.rage_recoil?static_cast<float>(cfg.recoil_percent1):100;
        const float xpercent=enabled && cfg.rage_recoil?static_cast<float>(cfg.recoil_percent):100;
        if(ypercent>0){const auto factor=clamp_recoil(ypercent/100);
            write(s,recoil+0x20,factor*read<float>(s,baseline,0x36be0b),0x36be0f);
            write(s,recoil+0x24,factor*read<float>(s,baseline+4,0x36be14),0x36be25);
        }else{write(s,recoil+0x20,0.0f,0x36be1b);write(s,recoil+0x24,0.0f,0x36be25);}
        if(xpercent>0){const auto factor=clamp_recoil(xpercent/100);
            write(s,recoil+0x18,factor*read<float>(s,baseline+8,0x36be64),0x36be69);
            write(s,recoil+0x1c,factor*read<float>(s,baseline+12,0x36be6e),0x36be73);
        }else write(s,recoil+0x18,ReU64{},0x36be7a);
    });
}

AimWeaponResult replay_weapon_319024(Snapshot& s,const WeaponConfig& cfg,Address local,
                                    const AimWeaponCalls& c) {
    return guarded([&] {
        if(!valid(c,local)) return;
        const Address held=object(c,0x368a84,local);
        if(!sample_pointer_range(held)) return;
        const Address melee=object(c,0x3721b4,held);
        if(sample_pointer_range(melee) && cfg.no_melee_slow)
            write(s,melee+0x3c1,ReU8{0},0x319095);
        if(cfg.eoka_tap || cfg.auto_fire) {
            const auto hash=invoke(0x2d6354,c.class_hash_2e5a54_2d6354,held);
            if(hash && *hash==entity_name_hash_2d6354("FlintStrikeWeapon")) {
                if(cfg.eoka_index==1 || cfg.auto_fire) {
                    write(s,held+0x4d8,1.0f,0x319144);
                    write(s,held+0x4e8,ReU8{1},0x31914e);
                } else if(cfg.eoka_index==0) write(s,held+0x4d8,cfg.success_rate,0x319129);
                else if(cfg.eoka_index==2)
                    write(s,held+0x4d8,re::re_bit_cast<float>(ReU32{0xc61c3c00}),0x319138);
            }
        }
        if(cfg.byte_3d82a1 || cfg.no_weapon_bob || cfg.byte_3efba1) {
            Address view=object(c,0x3714c4,held);
            if(sample_pointer_range(view)) {
                view=read<Address>(s,view+0x218,0x319187);
                if(!sample_pointer_range(view)) return;
                view=read<Address>(s,view+0x28,0x31919e);
                if(!sample_pointer_range(view)) return;
                view=read<Address>(s,view+0xf0,0x3191b2);
                if(!sample_pointer_range(view)) return;
                write(s,view+0x20,ReU16{0},0x3191c9);
            }
        }
        const Address projectile=object(c,0x371464,held);
        if(!sample_pointer_range(projectile)) return;
        const auto recoil=replay_recoil_36bc14(s,cfg,projectile,cfg.byte_3efc01,local,c);
        if(recoil.status!=AimWeaponStatus::returned) __builtin_trap();
        const Address baseline=invoke(0x2ef724,c.baseline_2ef724,integer(c,0x367668,projectile));
        if(baseline) {
            const float value=(cfg.view_value-0.3f)/0.7f;
            const float old=read<float>(s,baseline+0x10,0x319290);
            const float delay=cfg.fast_fire?(1-clamp_dispatch_2ed2ac(value,0,1)*0.7f)*old:old;
            write(s,projectile+0x304,delay,0x319295);
        }
        if(cfg.full_auto || cfg.auto_fire) full_auto_36b434(s,projectile);
        if(cfg.no_sway) no_sway_36be9c(s,projectile);
    });
}
} // namespace rust_internal_re
