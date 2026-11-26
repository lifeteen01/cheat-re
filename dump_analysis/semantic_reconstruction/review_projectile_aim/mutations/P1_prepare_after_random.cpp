#include "projectile_analysis.hpp"
#include "snapshot_bindings.hpp"

namespace rust_internal_re {
namespace {
// [C] SSE MINSS/MAXSS choose the second operand on an unordered comparison.
float smin(float a,float b) { return a<b?a:b; }
float smax(float a,float b) { return a>b?a:b; }
bool below(float a,float b) { return std::isnan(a)||std::isnan(b)||a<b; }
bool below_equal(float a,float b) { return std::isnan(a)||std::isnan(b)||a<=b; }
float magnitude(Vec3 v) { return sample_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z); }
float distance(Vec3 a,Vec3 b) { const Vec3 d=a-b; return sample_sqrt_2e3c88((d.y*d.y+d.x*d.x)+d.z*d.z); }
Vec3 normalized(Vec3 v) {
    // [C] 0x2e1278..0x2e12df: COMISS/JBE zeroes unordered/nonpositive length.
    const float n=magnitude(v); if(below_equal(n,0)) return {}; return {v.x/n,v.y/n,v.z/n};
}
struct Stop { ProjectileReplayStatus status; Rva site,dependency; };
struct Replay {
    Snapshot& s; const ProjectileBoundaries& b;
    template<class T> T read(Address a,Rva site) {
        auto v=s.read<T>(a); if(!v) throw Stop{ProjectileReplayStatus::out_of_snapshot,site,0}; return *v;
    }
    template<class T> void write(Address a,T v,Rva site) {
        if(!s.write(a,v)) throw Stop{ProjectileReplayStatus::out_of_snapshot,site,0};
    }
    // [C] Vec3 stores are 8-byte then 4-byte copies, preserving partial failure order.
    void vecwrite(Address a,Vec3 v,Rva site) {
        std::array<float,3> words{v.x,v.y,v.z}; std::uint64_t xy{};
        std::memcpy(&xy,words.data(),8); write(a,xy,site); write(a+8,v.z,site);
    }
    template<class F> const F& need(const F& f,Rva site,Rva dep) {
        if(!f) throw Stop{ProjectileReplayStatus::missing_boundary,site,dep};
        return f;
    }
    Address addr(Rva dep,Address a=0,int n=0,Rva site=0) {
        return need(b.address,site?site:dep,dep)(dep,a,n);
    }
    std::uint32_t integer(Rva dep,Address a=0,int n=0,Rva site=0) {
        return need(b.integer,site?site:dep,dep)(dep,a,n);
    }
    bool pred(Rva dep,Address a,Rva site=0) {
        return need(b.predicate,site?site:dep,dep)(dep,a);
    }
    float scalar(Rva dep,Address a=0,int n=0,int m=0,Rva site=0) {
        return need(b.scalar,site?site:dep,dep)(dep,a,n,m);
    }
    Vec3 vec(Rva dep,Address a,int n=0,Rva site=0) {
        return need(b.vector,site?site:dep,dep)(dep,a,n);
    }
    Vec3 trans(Rva dep,Address a,Vec3 v,Rva site=0) {
        return need(b.transform,site?site:dep,dep)(dep,a,v);
    }
    float random(float hi,Rva site) { return need(b.random_2e3d5c,site,0x2e3d5c)(0,hi); }
    bool query(Vec3 from,Vec3 to,std::uint32_t mask,Rva site) {
        return need(b.query_2e2320,site,0x2e2320)(from,to,mask,0,0);
    }
    void position(Address a,Vec3 p,Rva site) { need(b.set_position,site,0x375140)(0x375140,a,p); }
    bool flag(Address r,Rva site) { return read<std::uint8_t>(r,site)!=0; }
    int compare(Address a,Rva getter,Rva converter,Rva site) {
        return need(b.compare_class,site,0x3ca884)(a,getter,converter);
    }
};
void failed(ProjectileReplayResult& r,const Stop& x) { r.status=x.status;r.stop_site=x.site;r.dependency=x.dependency; }
// [C] CVTTSS2SI returns integer indefinite for NaN/infinity/out-of-range.
float truncated_chance(float x) {
    if(!std::isfinite(x)||x>=2147483648.0f||x< -2147483648.0f) return -2147483648.0f;
    return static_cast<float>(static_cast<std::int32_t>(x));
}
}
// [C] 0x330830..0x330931: negative distances move away; zero separation copies to.
Vec3 move_towards_330830(Vec3 from,Vec3 to,float d) {
    const Vec3 delta=to-from; const float sq=(delta.y*delta.y+delta.x*delta.x)+delta.z*delta.z;
    if(sq==0 || (!below(d,0)&&!below(d*d,sq))) return to;
    const float root=sample_sqrt_2e3c88(sq);
    return {from.x+(delta.x/root)*d,from.y+(delta.y/root)*d,from.z+(delta.z/root)*d};
}
// [C] 0x2e5a80..0x2e5b49 constructs normalized segment, dot, clamp, multiply, add.
Vec3 closest_segment_2e5a80(Vec3 a,Vec3 z,Vec3 p) {
    Vec3 d=z-a; const float n=magnitude(d); if(n==0) return a;
    d={d.x/n,d.y/n,d.z/n}; const Vec3 q=p-a;
    const float dot=(q.y*d.y+q.x*d.x)+q.z*d.z;
    return a+d*(0>dot?0:smin(n,dot));
}
// [C] 0x330dab..0x330ef1; scientist hash equality 0xcbf29ce484222325 basis.
std::int32_t select_projectile_bone_330dab(std::int32_t setting,float r,bool scientist) {
    auto pick=[&](int ordinary,int npc){return scientist?npc:ordinary;};
    switch(setting) {
    case 0:return pick(53,47);case 1:return pick(23,17);case 2:return pick(29,23);case 3:return pick(17,5);
    case 4:case 5:
        if(r>90) return setting==5?pick(61,59):pick(53,47);
        if(r>80) return pick(52,46);
        if(r>70) return pick(24,14);
        if(r>60) return pick(0,4);
        if(r>50) return pick(14,1);
        if(r>40) return pick(17,8);
        if(r>30) return pick(20,15);
        if(r>20) return pick(29,16);
        if(r>10) return pick(61,3);
        return pick(3,10);
    default:return 53;
    }
}

// [C] 0x2e2374..0x2e2472 wrapper and 0x2e3b58..0x2e3b84 zero-vector test.
ProjectilePrediction predict_projectile_2e2374(Vec3 origin,Vec3 target,Vec3 motion,
    std::span<const TrajectoryTable> tables,bool predicate,bool instant) {
    const auto result=predict_2e2474(target-origin,motion,0,tables,predicate,instant);
    Vec3 v=result.direction;
    if(0.0001f>std::fabs(v.x)&&0.0001f>std::fabs(v.y)&&0.0001f>std::fabs(v.z)) v={};
    else v=normalized(v);
    return {v,v.x==0&&v.y==0&&v.z==0};
}

ProjectileReplayResult replay_shot_32c0d4(Snapshot& s,Address argument,const ProjectileBoundaries& b,std::size_t limit) {
    Replay x{s,b}; ProjectileReplayResult out;
    try {
        auto reject=[&](Rva site){out.status=ProjectileReplayStatus::rejected;out.stop_site=site;};
        if(!sample_pointer_range(argument)){reject(0x32c133);return out;}
        const Address local=x.addr(0x2dda9c,0,0,0x32c139);
        if(!sample_pointer_range(local)){reject(0x32c14b);return out;}
        const Address held=x.addr(0x368a84,local,0,0x32c154);
        if(!sample_pointer_range(held)){reject(0x32c16b);return out;}
        const Address weapon=x.addr(0x371464,held,0,0x32c174);
        if(!sample_pointer_range(weapon)){reject(0x32c186);return out;}
        const Address ammo=x.addr(0x36b938,weapon,0,0x32c18f);
        if(!sample_pointer_range(ammo)){reject(0x32c1a1);return out;}
        const Address list=x.read<Address>(argument+0x10,0x32c1a7);
        if(!sample_pointer_range(list)){reject(0x32c1b5);return out;}
        const Address array=x.read<Address>(list+0x10,0x32c1bb);
        if(!sample_pointer_range(array)){reject(0x32c1ce);return out;}
        float base=x.read<float>(weapon+0x3ac,0x32c1d4);
        const Address definition=x.addr(0x37154c,held,0,0x32c1e0);
        if(!sample_pointer_range(definition)){reject(0x32c1f2);return out;}
        if(x.integer(0x37261c,definition,0,0x32c1fb)==0x34b73d71)
            base=x.scalar(0x36b504,weapon,0,0,0x32c20a);
        float factor=1;
        const float velocity=x.scalar(0x36b758,weapon,0,0,0x32c216);
        const bool byte4238=x.flag(0x3e4238,0x32c222);
        if(below(velocity,1.3f)) {
            if(x.flag(0x3d8301,0x32c232)&&byte4238) factor=smin(x.read<float>(0x3e6084,0x32c23f),1.495f);
            else if(x.flag(0x3d7fb8,0x32c249)) factor=1.495f;
            else if(x.flag(0x3d7ce8,0x32c25c)) factor=smin(x.read<float>(0x3d80a8,0x32c265),1.495f);
        }
        if(velocity!=0&&!byte4238) factor=x.scalar(0x36b758,weapon,0,0,0x32c28c)*factor;
        const float a44=x.read<float>(ammo+0x44,0x32c298),a40=x.read<float>(ammo+0x40,0x32c2a1);
        const float spread_multiplier=x.scalar(0x36b6cc,weapon,0,0,0x32c2a7);
        const float a3c=x.read<float>(ammo+0x3c,0x32c2ac);
        const float single_spread=x.scalar(0x372954,ammo,0,0,0x32c2b9);
        const Address curve=x.read<Address>(weapon+0x428,0x32c2be);
        if(!sample_pointer_range(curve)){reject(0x32c2d3);return out;}
        const float curve_random=x.random(1,0x32c3ca);
        x.need(b.prepare_curve_32c2d9,0x32c2d9,0x32c2d9)();
        const float spread_base=x.need(b.evaluate_curve_32b728,0x32c3e3,0x32b728)(curve,curve_random)*spread_multiplier;
        const auto pellet_count=x.read<std::int32_t>(ammo+0x38,0x32c3e8);
        const auto count=x.read<std::int32_t>(list+0x18,0x32c3ef);
        const Address target=x.addr(0x2e02b0,0,0,0x32c3fe);
        Vec3 direction=x.vec(0x368100,local,0,0x32c40e);
        const Vec3 origin=x.vec(0x369164,local,0,0x32c41b);
        const float speed=((a44+a40)*base)*factor;
        for(std::int32_t i=0;i<count;++i) {
            if(static_cast<std::size_t>(i)>=limit) throw Stop{ProjectileReplayStatus::safety_limit,0x32c45b,0};
            const Address shot=x.read<Address>(array+0x20+static_cast<Address>(i)*8,0x32c466);
            if(!sample_pointer_range(shot)) continue;
            const auto id=x.read<std::uint32_t>(shot+0x30,0x32c47f);
            Address shot_iterator{};
            std::optional<Address> found;
            if(b.lookup_shot_entry) {
                const auto entry=b.lookup_shot_entry(id);
                if(entry) {found=entry->object;shot_iterator=entry->iterator;}
            } else found=x.need(b.lookup_shot,0x32c493,0x32b838)(id);
            if(!found||!sample_pointer_range(*found)) continue;
            const Address p=*found;
            if(x.addr(0x3742d4,p,0,0x32c515)!=local) continue;
            if(x.flag(0x3d7e78,0x32c523)&&x.flag(0x3d72a0,0x32c530)) {
                auto aim=[&](Address tables,Vec3 point,Vec3 motion,Rva site) {
                    const auto prediction=x.need(b.prediction_2e2374,site,0x2e2374)(origin,point,motion,tables);
                    const bool helicopter=site==0x32c7d2;
                    if(x.flag(0x3f7d58,helicopter?0x32c7d7:0x32c678)) {
                        const float random=x.random(100,helicopter?0x32c7e6:0x32c687);
                        if(below(truncated_chance(x.read<float>(0x3f7ee8,helicopter?0x32c7eb:0x32c68c)),random)) return;
                    }
                    if(!prediction.empty) direction=normalized(prediction.direction);
                };
                if(sample_pointer_range(target)) {
                    if(x.pred(0x2e0e9c,target,0x32c550)) {
                        Vec3 point=x.vec(0x369790,target,0,0x32c565);
                        // [C] 0x2df5dc returns inequality, including unordered components.
                        if(!(point.x==0&&point.y==0&&point.z==0)) {
                            if(x.flag(0x3d8058,0x32c58b)) {
                                const Vec3 fat=x.read<Vec3>(0x3d72d0,0x32c5a8);
                                if(!(fat.x==0&&fat.y==0&&fat.z==0))point=fat;
                            }
                            if(x.flag(0x3d7ec8,0x32c5cb)) {
                                const Vec3 pierce=x.read<Vec3>(0x3d72e0,0x32c5e3);
                                if(!(pierce.x==0&&pierce.y==0&&pierce.z==0)&&x.flag(0x3d8301,0x32c5f3))point=pierce;
                            }
                            const Address tables=x.read<Address>(0x3e5718,0x32c614);
                            if(tables)aim(tables,point,x.read<Vec3>(0x3d7248,0x32c624),0x32c673);
                        }
                    }
                } else if(x.flag(0x3e9d68,0x32c6f5)) {
                    const Address heli=x.read<Address>(0x3d72b8,0x32c702);
                    if(sample_pointer_range(heli)&&x.pred(0x2e0e9c,heli,0x32c71c)) {
                        Vec3 point=x.vec(0x368be8,heli,62,0x32c736);
                        if(!below(5000,x.scalar(0x36970c,heli,0,0,0x32c73e)))point=x.vec(0x368be8,heli,63,0x32c759);
                        const Address tables=x.read<Address>(0x3e5718,0x32c76d);
                        if(tables)aim(tables,point,x.vec(0x369c1c,heli,0,0x32c787),0x32c7d2);
                    }
                }
            }
            x.write(p+0x44,x.scalar(0x32bb60,held,0,0,0x32c84b),0x32c850);
            if(x.flag(0x3d7fb8,0x32c855)&&sample_pointer_range(target)&&x.pred(0x2e0e9c,target,0x32c875)) {
                (void)x.vec(0x368be8,target,7,0x32c88e); // [C] subtraction output is dead; call is retained.
                const float t=x.read<float>(0x3d72ec,0x32c8c2)+0.033333334f;
                const float addition=static_cast<float>(static_cast<double>(t)*1.5+0.10000000149011612)*speed;
                x.write(p+0x44,addition+x.read<float>(p+0x44,0x32c8ee),0x32c8f3);
            }
            float spread=x.scalar(0x3727e0,ammo,i,pellet_count,0x32c907);
            if(pellet_count<=1)spread=single_spread;
            spread=spread*a3c+spread_base;
            if(x.flag(0x3f7d08,0x32c915))spread=(x.read<float>(0x3f7f38,0x32c927)/100)*spread;
            const Vec3 launch=x.need(b.spread_32bd4c,0x32c95d,0x32bd4c)(spread,direction,pellet_count<=1);
            if(x.flag(0x3f7df8,0x32c962))x.write(p+0x3c,x.read<float>(0x3f7f88,0x32c96b),0x32c973);
            x.vecwrite(shot+0x20,launch*speed,0x32c9a3);
            x.vecwrite(p+0x16c,launch*speed,0x32c9c6);
            x.vecwrite(p+0x28,launch*speed,0x32c9e0);
            if(x.flag(0x3f7d08,0x32c9eb))x.vecwrite(p+0xf8,{},0x32ca01);
            if(x.flag(0x3f7e48,0x32ca12)) {
                x.vecwrite(p+0x178,origin,0x32ca24);x.vecwrite(shot+0x10,origin,0x32ca3c);
                const Address transform=x.addr(0x32be08,p,0,0x32ca48);
                if(sample_pointer_range(transform))x.position(transform,origin,0x32ca75);
            }
            if(b.lookup_shot_entry)x.need(b.erase_shot_iterator,0x32ca8d,0x32cb8c)(shot_iterator);
            else x.need(b.erase_shot_32cb8c,0x32ca8d,0x32cb8c)(id);
            ++out.shots_processed;
        }
    } catch(const Stop& stop) { failed(out,stop); }
    catch(const SnapshotBindingFailure& e) {
        out.status=e.status==GameBaseStatus::missing_bytes?ProjectileReplayStatus::out_of_snapshot:
            e.status==GameBaseStatus::missing_boundary?ProjectileReplayStatus::missing_boundary:ProjectileReplayStatus::safety_limit;
        out.stop_site=e.site;out.dependency=e.site;
    }
    return out;
}

ProjectileReplayResult replay_projectile_330b38(Snapshot& s,Address p,const ProjectileBoundaries& b) {
    Replay x{s,b}; ProjectileReplayResult out;
    try {
        auto reject=[&](Rva site){out.status=ProjectileReplayStatus::rejected;out.stop_site=site;};
        if(!sample_pointer_range(p)){reject(0x330b9c);return out;}
        const Address local=x.addr(0x2dda9c,0,0,0x330ba2);
        if(!sample_pointer_range(local)){reject(0x330bb4);return out;}
        if(x.addr(0x3742d4,p,0,0x330bbd)!=local){reject(0x330bc5);return out;}
        if(!x.pred(0x374268,p,0x330bce)){reject(0x330bd5);return out;}
        if(x.flag(0x3f7d08,0x330bdb))x.vecwrite(p+0xf8,{},0x330bf1);
        const auto material_call=[&](Rva getter,Rva convert,Rva site){return x.need(b.material,site,convert)(getter,convert);};
        Address material=material_call(0x3302b0,0x2d84dc,0x330c17);
        switch(x.read<int>(0x3f95c8,0x330c24)) {
        case 0:material=material_call(0x2dfbcc,0x2e3614,0x330c48);break;
        case 1:material=material_call(0x3304ec,0x2d84dc,0x330c69);break;
        case 2:material=material_call(0x330528,0x2d84dc,0x330c69);break;
        case 3:material=material_call(0x330540,0x2cdccc,0x330cea);break;
        case 4:material=material_call(0x330570,0x2d84dc,0x330c69);break;
        case 5:material=material_call(0x3305a4,0x2cdccc,0x330cea);break;
        case 6:material=material_call(0x3305bc,0x2cdccc,0x330cea);break;
        default:break; // [C] unknown values retain the initial Flesh handle.
        }
        const float random=x.random(100,0x330d01);
        // [I] Returning from this lambda means the native jump to the HeliMagic tail.
        const auto pierce=[&]() {
            if(!x.flag(0x3d7ec8,0x330d06))return;
            const Address target=x.addr(0x2e02b0,0,0,0x330d1f);
            if(!sample_pointer_range(target)||!x.pred(0x2e0e9c,target,0x330d3a))return;
            const Address class_object=x.addr(0x2e5a54,target,0,0x330d4a);
            if(!sample_pointer_range(class_object))return;
            const auto name_hash=x.need(b.hash_name_2d6354,0x330d65,0x2d6354)(class_object);
            // [U] Resolve/hash literal through its exact getter/converter and FNV seed.
            const auto scientist_hash=x.need(b.hash_literal_2e5b4c,0x330d92,0x2e5b4c)(0x330614,0x2dd188,0xcbf29ce484222325ULL);
            const bool scientist=name_hash==scientist_hash;
            const auto bone=select_projectile_bone_330dab(x.read<int>(0x3f9578,0x330dab),random,scientist);
            if(x.pred(0x36a20c,target,0x330ef4))return;
            const Address hit=x.addr(0x374210,p,0,0x330f04);
            if(!sample_pointer_range(hit))return;
            const Vec3 target_point=x.vec(0x368be8,target,scientist?15:54,0x330f35);
            const Vec3 position=x.vec(0x3740e0,p,0,0x330f41);
            const Vec3 velocity=x.vec(0x374124,p,0,0x330f4d);
            const Vec3 step=velocity*0.03125f;
            // [C] 0x330f52..0x331028 builds backward and forward segments.
            const Vec3 backward=position-step;
            const Vec3 forward=position+step;
            const Vec3 closest=closest_segment_2e5a80(position,forward,target_point);
            const float step_length=magnitude(step),to_closest=magnitude(closest-position);
            const float dt=x.scalar(0x2e081c,0,0,0,0x331069);
            const float separation=distance(target_point,closest),reverse_separation=distance(closest,target_point);
            if(x.flag(0x3f9488,0x3310ae)) {
                if(below_equal(x.read<float>(0x3f9528,0x3310be),separation))return;
                const auto mask=x.integer(0x2e6a6c,0,0,0x3310d0);
                const Vec3 toward=move_towards_330830(target_point,closest,0.4f);
                (void)move_towards_330830(closest,toward,smin(reverse_separation,0.99f));
                if(!x.query(target_point,position,mask,0x33114d))return;
                const Address transform=x.addr(0x330700,p,0,0x33115d);
                if(!sample_pointer_range(transform))return;
                const float speed=magnitude(x.vec(0x374124,p,0,0x33117a));
                const int lead_bone=static_cast<int>(x.integer(0x368cb0,target,0,0x33118f));
                const Vec3 lead=x.vec(0x368be8,target,lead_bone,0x33119f);
                x.vecwrite(p+0x16c,normalized(lead-position)*speed,0x3311da);
                return;
            }
            const auto write_hit=[&](Vec3 world_point,Vec3 ray_origin,Vec3 ray_direction,bool direct,Rva site) {
                // [C] Both paths set b0/90 BEFORE validating the selected transform.
                x.write<std::uint8_t>(hit+0xb0,1,direct?0x331508:0x331cd3);
                x.write(hit+0x90,target,direct?0x331510:0x331cde);
                const Address transform=x.addr(0x368c60,target,bone,direct?0x331517:0x331ce5);
                if(!sample_pointer_range(transform))return;
                // [C]33152f..331548: direction uses toward-closest, not final-closest.
                if(direct)ray_direction=normalized(world_point-ray_origin);
                // [C] Direct path constructs its ray before the +d8 store.
                x.write(hit+0xd8,transform,direct?0x33159f:0x331d17);
                const Vec3 local_point=x.trans(0x374d60,transform,world_point,direct?0x3315aa:0x331d24);
                x.vecwrite(hit+0x5c,local_point,direct?0x3315bf:0x331d39);
                const Vec3 local_normal=x.trans(0x374bf8,transform,world_point,direct?0x3315e0:0x331d5a);
                x.vecwrite(hit+0xa4,local_normal,direct?0x3315f1:0x331d67);
                // [C] 24-byte 0x2df29c pair; native copies 16 then 8 bytes.
                const std::array<float,6> ray{ray_origin.x,ray_origin.y,ray_origin.z,ray_direction.x,ray_direction.y,ray_direction.z};
                std::array<std::byte,16> first{};std::uint64_t last{};
                std::memcpy(first.data(),ray.data(),16);std::memcpy(&last,reinterpret_cast<const std::byte*>(ray.data())+16,8);
                x.write(hit+0x6c,first,direct?0x331608:0x331dc0);x.write(hit+0x7c,last,direct?0x33160d:0x331dca);
                const Address string=x.need(b.managed_string_2ce5dc,site,0x2ce5dc)(material);
                Vec3 callback_point=world_point,callback_normal=ray_direction;
                std::uint64_t normal_xy{};
                if(direct)normal_xy=x.read<std::uint64_t>(hit+0xa4,0x331618);
                x.write(hit+0xc0,string,direct?0x331626:0x331df0);
                if(direct){
                    x.write(hit+0xd0,x.read<Address>(p+0x80,0x33162d),0x331634);
                    callback_normal.z=x.read<float>(hit+0xac,0x33163b);
                    callback_point.z=x.read<float>(hit+0x64,0x331646);
                    const auto point_xy=x.read<std::uint64_t>(hit+0x5c,0x331650);
                    const auto normal=std::bit_cast<std::array<float,2>>(normal_xy);
                    const auto point=std::bit_cast<std::array<float,2>>(point_xy);
                    callback_normal.x=normal[0];callback_normal.y=normal[1];callback_point.x=point[0];callback_point.y=point[1];
                }
                x.need(b.hit_374168,0x331e23,0x374168)(p,hit,callback_point,callback_normal);
                ++out.direct_hits;
            };
            if(!below_equal(x.read<float>(0x3f3dd8,0x3311ef),separation)) {
                const auto mask=x.integer(0x2e6a6c,0,0,0x331201);
                const Vec3 toward=move_towards_330830(target_point,closest,0.4f);
                const auto mask2=x.integer(0x2e6a6c,0,0,0x331247);
                if(!x.query(forward,closest,mask2,0x331263))return;
                if(!x.query(closest,target_point,mask,0x3312ad))return;
                if(!x.query(target_point,toward,mask,0x3312f6))return;
                if(!x.query(toward,target_point,mask,0x331342))return;
                const Vec3 final=move_towards_330830(closest,toward,smin(reverse_separation,0.99f));
                if(!x.query(closest,final,mask,0x3313aa))return;
                if(!x.query(toward,final,mask,0x3313f6))return;
                const Address transform=x.addr(0x330700,p,0,0x331406);
                if(!sample_pointer_range(transform))return;
                // [C] 0x33141e..0x331501: two successive position/distance/time commits.
                // First Vec3 write is split by scalar arithmetic in the native stream.
                std::uint64_t xy{};std::memcpy(&xy,&closest,8);x.write(p+0x178,xy,0x331436);
                const float d1=to_closest+x.read<float>(p+0x184,0x331443);
                const float inv=1/step_length;
                x.write(p+0x180,closest.z,0x331451);x.write(p+0x184,d1,0x33145d);
                const float t1=dt*(to_closest*inv)+x.read<float>(p+0x188,0x331470);
                x.write(p+0x188,t1,0x331479);
                const float d2=magnitude(final-closest),frac=d2*inv;
                const float dt2=x.scalar(0x2e081c,0,0,0,0x33149a)*frac;
                x.position(transform,closest,0x3314c0);
                const float total_d=d2+x.read<float>(p+0x184,0x3314c5),total_t=dt2+x.read<float>(p+0x188,0x3314ce);
                std::memcpy(&xy,&final,8);x.write(p+0x178,xy,0x3314e6);
                x.write(p+0x184,total_d,0x3314ef);x.write(p+0x188,total_t,0x3314f8);x.write(p+0x180,final.z,0x331501);
                write_hit(toward,closest,{},true,0x331613);
                return;
            }
            if(scientist||!x.flag(0x3f94d8,0x331664))return;
            const Address mounted=x.addr(0x368b10,target,0,0x331674);
            if(!sample_pointer_range(mounted))return;
            const Address transform=x.addr(0x330700,target,0,0x33168f);
            if(!sample_pointer_range(transform))return;
            const Vec3 mounted_position=x.vec(0x3747d4,transform,0,0x3316af);
            const Address entity=x.read<Address>(mounted+0x38,0x3316b4);
            if(!sample_pointer_range(entity))return;
            const Address klass=x.addr(0x2e5a54,entity,0,0x3316c9);
            if(!sample_pointer_range(klass))return;
            // [C] Literal comparison order and zero-equality exits 0x3316e1..0x331907.
            constexpr std::array<std::array<Rva,3>,13> types{{
                {0x330128,0x2cdccc,0x3316ff},{0x330140,0x3204bc,0x33172a},{0x330174,0x320494,0x331758},
                {0x33018c,0x2e9c54,0x331784},{0x3301a8,0x2e9bb4,0x3317b2},{0x3301c0,0x32050c,0x3317dd},
                {0x3301dc,0x2d866c,0x331808},{0x33020c,0x2e9b8c,0x331834},{0x330228,0x2d85f4,0x33185f},
                {0x33024c,0x2d85f4,0x33188a},{0x3302ec,0x2d84dc,0x3318b1},{0x330304,0x2cdccc,0x3318d8},{0x33031c,0x2e9c54,0x331900}}};
            bool recognized=false;
            for(auto [getter,conv,site]:types)if(x.compare(klass,getter,conv,site)==0){recognized=true;break;}
            if(!recognized)return;
            const float elapsed=smin(x.scalar(0x31581c,0,0,0,0x33190d)-x.read<float>(0x3f2124,0x331918),1);
            const float motion=x.scalar(0x36942c,target,0,0,0x331928);
            const float dynamic=motion*((smax(0,elapsed)+0.033333334f)*1.5f)+0.1f;
            constexpr std::array<std::array<Rva,3>,5> air{{{0x330338,0x2e9bb4,0x331977},{0x330350,0x2e9c54,0x3319a3},{0x33036c,0x32050c,0x3319ca},{0x330388,0x2d866c,0x3319f1},{0x3303b8,0x2e9b8c,0x331a19}}};
            bool airborne=false;
            for(auto [getter,conv,site]:air)if(x.compare(klass,getter,conv,site)==0){airborne=true;break;}
            constexpr std::array<std::array<Rva,3>,8> ground{{{0x3303d4,0x2cdccc,0x331a48},{0x3303ec,0x320494,0x331a76},{0x33043c,0x3204bc,0x331aa1},{0x330458,0x2e9c54,0x331acd},{0x330474,0x2d85f4,0x331af8},{0x330498,0x2d85f4,0x331b1f},{0x3304bc,0x2d84dc,0x331b46},{0x3304d4,0x2cdccc,0x331b6d}}};
            bool ground_type=false;
            for(auto [getter,conv,site]:ground)if(x.compare(klass,getter,conv,site)==0){ground_type=true;break;}
            const float allowance=airborne?smax(10,dynamic):(ground_type?smax(6,dynamic):dynamic);
            const Vec3 initial=x.read<Vec3>(p+0x178,0x331b9a),v=x.read<Vec3>(p+0x16c,0x331ba7);
            const Vec3 mount_closest=closest_segment_2e5a80(initial,initial+v*0.03125f,mounted_position);
            if(below(allowance,distance(x.read<Vec3>(p+0x190,0x331c46),mount_closest)))return;
            const Vec3 launch_velocity=x.read<Vec3>(p+0x28,0x331c78);
            const float travel_distance=distance(x.read<Vec3>(p+0x190,0x331c46),mount_closest);
            const float reach=magnitude(launch_velocity)*smin(x.read<float>(p+0x188,0x331ca8)+0.03125f,7.95f)+x.read<float>(p+0x44,0x331cc2);
            if(below_equal(reach,travel_distance))return;
            write_hit(mount_closest,mount_closest,{},false,0x331de1);
            (void)backward; // [C] backward pair is constructed, not subsequently consumed.
        };
        pierce();
        // [C] Independent HeliMagic tail runs even after a successful direct hit.
        if(x.flag(0x3f3ba8,0x331e28)) {
            const Address heli=x.read<Address>(0x3d72b8,0x331e35);
            if(!sample_pointer_range(heli)||!x.pred(0x2e0e9c,heli,0x331e4f))return out;
            const Address hit=x.addr(0x374210,p,0,0x331e5f);
            if(!sample_pointer_range(hit))return out;
            const Address component=x.read<Address>(heli+0x2e8,0x331e77);
            if(!sample_pointer_range(component))return out;
            const Address health=x.read<Address>(component+0x28,0x331e8e);
            if(!sample_pointer_range(health))return out;
            const Address transform=x.addr(0x330700,heli,0,0x331ea5);
            if(!sample_pointer_range(transform))return out;
            const float elapsed=smin(x.scalar(0x31581c,0,0,0,0x331ebd)-x.read<float>(0x3f2124,0x331ec2),1);
            const float allowance=smax(15,((smax(0,elapsed)+0.033333334f)*1.5f)*95+0.1f);
            const Vec3 heli_position=x.vec(0x3747d4,transform,0,0x331f0c);
            const Vec3 position=x.vec(0x3740e0,p,0,0x331f19),velocity=x.vec(0x374124,p,0,0x331f25);
            const Vec3 closest=closest_segment_2e5a80(position,position+velocity*0.03125f,heli_position);
            if(below(allowance,distance(heli_position,closest)))return out;
            x.write<std::uint8_t>(hit+0xb0,1,0x331fc2);
            // [C] Reload global rather than reusing heli; callbacks may mutate snapshots.
            x.write(hit+0x90,x.read<Address>(0x3d72b8,0x331fc9),0x331fd3);
            const float hp=x.read<float>(health+0x24,0x331fda);
            const Address bone=x.addr(0x368c60,heli,below_equal(hp,0)?63:62,0x331fe9);
            if(!sample_pointer_range(bone))return out;
            x.write(hit+0xd8,bone,0x332019);
            const Vec3 point=x.trans(0x374d60,bone,closest,0x332026);x.vecwrite(hit+0x5c,point,0x33203b);
            const Vec3 normal=x.trans(0x374bf8,bone,closest,0x332058);x.vecwrite(hit+0xa4,normal,0x332065);
            const std::array<float,6> ray{closest.x,closest.y,closest.z,0,0,0};
            std::array<std::byte,16> first{};std::uint64_t last{};
            std::memcpy(first.data(),ray.data(),16);std::memcpy(&last,reinterpret_cast<const std::byte*>(ray.data())+16,8);
            x.write(hit+0x6c,first,0x3320b7);x.write(hit+0x7c,last,0x3320c0);
            x.write(hit+0xc0,x.need(b.managed_string_2ce5dc,0x3320d6,0x2ce5dc)(material),0x3320e5);
            x.need(b.hit_374168,0x332113,0x374168)(p,hit,closest,{});++out.heli_hits;
        }
    } catch(const Stop& stop) { failed(out,stop); }
    catch(const SnapshotBindingFailure& e) {
        out.status=e.status==GameBaseStatus::missing_bytes?ProjectileReplayStatus::out_of_snapshot:
            e.status==GameBaseStatus::missing_boundary?ProjectileReplayStatus::missing_boundary:ProjectileReplayStatus::safety_limit;
        out.stop_site=e.site;out.dependency=e.site;
    }
    return out;
}
} // namespace rust_internal_re
