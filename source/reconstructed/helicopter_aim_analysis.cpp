#include "helicopter_aim_analysis.hpp"

namespace rust_internal_re {
namespace {
template<class F,class... A> auto call(Rva r,const F& f,A&&... a) {
    if(!f)__builtin_trap();
    return f(re::re_forward<A>(a)...);
}
template<class T> T load(const Snapshot& s,Address p,Rva r) {
    const auto v=s.read<T>(p);
    if(!v)__builtin_trap();
    return *v;
}
void store(Snapshot& s,Address p,float v,Rva r) {
    if(!s.write(p,v))__builtin_trap();
}
bool zero(Vec3 v) { return v.x==0 && v.y==0 && v.z==0; }
Vec3 normal(Vec3 v) { // [C] 2e1278 -> 2e0ee8 -> 2e3c88, x*x + y*y then z*z.
    const float n=approximate_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z);
    return n>0?Vec3{v.x/n,v.y/n,v.z/n}:Vec3{};
}
Vec3 multiply(Vec3 v,float k) { return {k*v.x,k*v.y,k*v.z}; }
Vec3 add(Vec3 a,Vec3 b) { return {b.x+a.x,b.y+a.y,b.z+a.z}; }
Vec2 add(Vec2 a,Vec2 b) { return {b.x+a.x,b.y+a.y}; }
void wrap(Vec2& v) {
    if(!wrap_angles_316fd0(v))__builtin_trap();
}
float capped(float v) { // [C] MINSS selects second operand on unordered/equal.
    constexpr float cap=re::re_bit_cast<float>(ReU32{0x3fbf5c29});
    return v<cap?v:cap;
}
AimWeaponStatus aim_status(GameBaseStatus s) {
    switch(s) {
    case GameBaseStatus::missing_bytes:return AimWeaponStatus::missing_bytes;
    case GameBaseStatus::missing_boundary:return AimWeaponStatus::missing_boundary;
    case GameBaseStatus::nonprogressing_math:return AimWeaponStatus::nonprogressing_math;
    default:return AimWeaponStatus::analysis_limit;
    }
}
GameBaseStatus binding_status(AimWeaponStatus s) {
    switch(s) {
    case AimWeaponStatus::missing_bytes:return GameBaseStatus::missing_bytes;
    case AimWeaponStatus::missing_boundary:return GameBaseStatus::missing_boundary;
    case AimWeaponStatus::nonprogressing_math:return GameBaseStatus::nonprogressing_math;
    default:return GameBaseStatus::analysis_limit;
    }
}
}
AimWeaponResult replay_helicopter_aim_2fa300(Snapshot& s,AimState& shared,
    HelicopterAimState& state,const AimConfig& cfg,Address context,Address local,
    const AimWeaponCalls& c) {
    (void)context;
    {
        const auto object=[&](Rva r,Address p){return call(r,c.object,r,p);};
        const auto vector=[&](Rva r,Address p){return call(r,c.vector,r,p);};
        const auto scalar=[&](Rva r,Address p){return call(r,c.scalar,r,p);};
        if(!sample_pointer_range(local))return {};
        if(!call(0x2e0e9c,c.valid_2e0e9c,local)||!cfg.target_helicopter)return {};
        const Address target=state.target_3d72b8;
        if(!sample_pointer_range(target))return {};
        if(!call(0x2e0e9c,c.valid_2e0e9c,target))return {};
        Vec3 point=call(0x368be8,c.bone_368be8,target,62);
        const float health=load<float>(s,target+0x2cc,0x36972e);
        // [C] COMISS 5000,health; JB skips the second bone on unordered too.
        if(health<=5000)point=call(0x368be8,c.bone_368be8,target,63);
        if(zero(point))return {};
        const Vec3 origin=vector(0x369164,local);
        const Address held=object(0x368a84,local);
        if(!sample_pointer_range(held))return {};
        const Address melee=object(0x3721b4,held);
        const Address projectile=object(0x371464,held);
        const Address server=object(0x371eb8,held);
        const Address thrown=object(0x3716e0,held);
        const auto refresh=[&] {
            const Address transform=object(0x315a54,target);
            if(sample_pointer_range(transform))point=vector(0x3747d4,transform);
        };
        const auto predict=[&](Vec3 from,Address table) {
            const Vec3 motion=vector(0x369c1c,target);
            return call(0x2e2374,c.prediction_2e2374,AimPredictionRequest{from,point,motion,table});
        };
        if(sample_pointer_range(thrown)) { // [C] 2fa44d..2fa5e5.
            const Vec3 from=vector(0x369164,local);
            const Vec3 velocity=vector(0x368100,local);
            const Vec3 advanced=add(from,multiply(velocity,0.25f));
            const float speed=static_cast<float>(static_cast<double>(load<float>(s,thrown+0x3f8,0x2fa48e))-
                0.4531250149011612);
            refresh();
            call(0x2d9540,c.format_2d9540,speed);
            const Address table=shared.table_context_3e5718;
            if(!table) {call(0x2cc4f4,c.destroy_formatted_2cc4f4);return {};}
            const Vec3 direction=predict(advanced,table);
            if(!zero(direction)) {
                const Vec3 sum=add(multiply(normal(direction),speed),advanced);
                point=sum-multiply(shared.compensation_3e6060,0.5f);
            }
            call(0x2cc4f4,c.destroy_formatted_2cc4f4);
        } else if(sample_pointer_range(server)) { // [C] 2fa5ea..2fa770.
            const Address mod=object(0x36b938,server);
            if(sample_pointer_range(mod)) {
                const Address component=object(0x372b30,mod);
                if(sample_pointer_range(component)) {
                    const float speed=load<float>(s,component+0x3c,0x2fa633);
                    const float scale=load<float>(s,server+0x3ac,0x2fa63b);
                    const Vec3 motion=normal(vector(0x368100,local));
                    const Vec3 from=vector(0x369164,local);
                    const Vec3 advanced=add(from,multiply(motion,1));
                    refresh();
                    const Address table=shared.table_context_3e5718;
                    if(!table)return {};
                    const Vec3 direction=predict(advanced,table);
                    if(!zero(direction))point=add(multiply(normal(direction),speed*scale),advanced);
                }
            }
        } else if(sample_pointer_range(melee)) { // [C] 2fa775..2fa878.
            const Address mod=object(0x371630,held);
            if(sample_pointer_range(mod)) {
                const Address component=object(0x372abc,mod);
                if(sample_pointer_range(component)) {
                    const float multiplier=cfg.increase_velocity?capped(cfg.projectile_speed):1;
                    const Address table=shared.table_context_3e5718;
                    if(!table)return {};
                    const float speed=load<float>(s,mod+0x40,0x2fa7eb);
                    const Vec3 direction=predict(origin,table);
                    if(!zero(direction))point=add(multiply(normal(direction),multiplier*speed),origin);
                }
            }
        } else { // [C] 2fa87d..2faa4e.
            if(!sample_pointer_range(projectile))return {};
            const Address definition=object(0x37154c,held);
            if(sample_pointer_range(definition)) {
                const Address mod=object(0x36b938,projectile);
                if(sample_pointer_range(mod)) {
                    const Address component=object(0x372abc,mod);
                    if(sample_pointer_range(component)) {
                        float scale=load<float>(s,projectile+0x3ac,0x2fa8db);
                        if(call(0x37261c,c.integer,0x37261c,definition)==0x34b73d71)
                            scale=load<float>(s,projectile+0x3ac,0x36b519)+1;
                        const float attachment=scalar(0x36b758,projectile);
                        float multiplier=1;
                        if(!(attachment>=1.3f)) {
                            if(cfg.byte_3d8301&&cfg.byte_3e4238)multiplier=capped(cfg.scalar_3e6084);
                            else if(cfg.instant_hit)multiplier=re::re_bit_cast<float>(ReU32{0x3fbf5c29});
                            else if(cfg.increase_velocity)multiplier=capped(cfg.projectile_speed);
                        }
                        // [C] Repeated getter is unconditional when first is nonzero/NaN.
                        if(attachment!=0)multiplier=multiplier*scalar(0x36b758,projectile);
                        const float first=load<float>(s,mod+0x44,0x2fa979);
                        const float second=load<float>(s,mod+0x40,0x2fa97e);
                        const Address table=shared.table_context_3e5718;
                        const float speed=((first+second)*scale)*multiplier;
                        state.projectile_speed_3e5e74=speed;
                        if(!table)return {};
                        const Vec3 direction=predict(origin,table);
                        if(!zero(direction))point=add(multiply(normal(direction),speed),origin);
                    }
                }
            }
        }
        // [C] 2faa52 reloads gates after the preceding calls and stores.
        if(!cfg.target_helicopter||cfg.psilent||!cfg.active_3d72a0)return {};
        const Address input=object(0x369738,local);
        if(!sample_pointer_range(input))return {};
        const Vec2 old=load<Vec2>(s,input+0x44,0x2faa94);
        Vec2 delta=aim_angles_2f80bc(origin,point)-old;
        wrap(delta);
        Vec2 desired=add(old,delta);
        const Address parent=load<Address>(s,local+0x38,0x2faadb);
        if(sample_pointer_range(parent)) {
            // [C] Reload local+38 after pointer predicate, before transform call.
            const Address transform=object(0x315a54,load<Address>(s,local+0x38,0x2faae8));
            if(sample_pointer_range(transform)) {
                desired.y-=call(0x31530c,c.transform_euler_y,transform);
                wrap(desired);
            }
        }
        wrap(desired);
        if(cfg.smooth) {
            const float smoothing=cfg.smoothing;
            Vec2 difference=desired-old;
            wrap(difference);
            desired=add(old,Vec2{smoothing*difference.x,smoothing*difference.y});
            wrap(desired);
            desired=wrap_once_2f84e8(desired);
        }
        // [C] Independent stores: first survives missing bytes at input+48.
        store(s,input+0x44,desired.x,0x2fabc2);
        store(s,input+0x48,desired.y,0x2fabc7);
        return {};
    }
}
AimWeaponCalls bind_helicopter_aim(Snapshot& s,AimState& shared,HelicopterAimState& state,
    const AimConfig& cfg,AimWeaponCalls calls) {
    auto out=calls;
    out.helicopter_2fa300=[&s,&shared,&state,&cfg,calls=re::re_move(calls)](Address context,Address local) {
        const auto r=replay_helicopter_aim_2fa300(s,shared,state,cfg,context,local,calls);
        if(r.status!=AimWeaponStatus::returned)__builtin_trap();
    };
    return out;
}
} // namespace rust_internal_re
