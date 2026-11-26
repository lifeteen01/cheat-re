#include "projectile_analysis.hpp"
#include "projectile_container_analysis.hpp"
#include "snapshot_bindings.hpp"

namespace rust_internal_re {
namespace {
void require(bool ok) { if(!ok)__builtin_trap(); }
void near_eq(float a,float b) { require(re::re_fabs(a-b)<0.0001f); }
constexpr Address local=0x110000,held=0x111000,weapon=0x112000,ammo=0x113000;
constexpr Address argument=0x114000,list=0x115000,array=0x116000,shot=0x117000;
constexpr Address projectile=0x118000,target=0x119000,hit=0x11a000,transform=0x11b000;
constexpr Address heli=0x11c000,component=0x11d000,health=0x11e000,definition=0x11f000;
Snapshot fixture() { return Snapshot(0x100000,re::ReVector<ReByte>(0x300000)); }
template<class T> void put(Snapshot& s,Address a,T v) { require(s.write(a,v)); }
template<class T> T get(const Snapshot& s,Address a) { auto v=s.read<T>(a);require(v.has_value());return *v; }
ProjectileBoundaries calls() {
    ProjectileBoundaries b;
    b.address=[](Rva r,Address a,int n)->Address {
        switch(r) {
        case 0x2dda9c:return local;case 0x368a84:return held;case 0x371464:return weapon;
        case 0x36b938:return ammo;case 0x37154c:return definition;
        
        case 0x3742d4:return local;case 0x2e02b0:return target;case 0x374210:return hit;
        case 0x2e5a54:return definition;
        case 0x330700:case 0x32be08:return transform;case 0x368c60:return transform;
        
        case 0x368b10:return component;
        default:(void)a;(void)n;{ /* FREESTANDING_TODO: was throw runtime_error("unexpected address boundary") */ }
        }
    };
    b.integer=[](Rva r,Address,int)->ReU32 {
        if(r==0x37261c)return 0x34b73d71;
        if(r==0x2e6a6c)return 0x12345678;
        if(r==0x368cb0)return 7;
        { /* FREESTANDING_TODO: was throw runtime_error("unexpected integer boundary") */ }
    };
    b.predicate=[](Rva r,Address) { return r!=0x36a20c; };
    b.scalar=[](Rva r,Address,int,int)->float {
        switch(r) {
        case 0x36b504:return 2;case 0x36b758:return 1;case 0x36b6cc:return 3;
        case 0x372954:return 4;case 0x32bb60:return 5;case 0x3727e0:return 6;
        case 0x2e081c:return 0.03125f;case 0x31581c:return 2;case 0x36942c:return 1;
        case 0x36970c:return 5000;
        default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected scalar boundary") */ }
        }
    };
    b.vector=[](Rva r,Address,int)->Vec3 {
        switch(r) {
        case 0x368100:return {1,0,0};case 0x369164:return {2,3,4};
        case 0x369790:return {10,0,0};case 0x369c1c:return {};
        case 0x368be8:return {1,0.5f,0};case 0x3740e0:return {};
        case 0x374124:return {32,0,0};case 0x3747d4:return {1,0.5f,0};
        default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected vector boundary") */ }
        }
    };
    b.transform=[](Rva,Address,Vec3 v){return v+Vec3{10,20,30};};
    b.set_position=[](Rva,Address,Vec3){};
    b.random_2e3d5c=[](float lo,float hi){return lo+hi*0.5f;};
    b.prediction_2e2374=[](Vec3,Vec3,Vec3,Address){return ProjectilePrediction{{0,3,0},false};};
    b.spread_32bd4c=[](float,Vec3 v,bool){return v;};
    b.query_2e2320=[](Vec3,Vec3,ReU32 mask,float a,float z){require(mask==0x12345678&&a==0&&z==0);return true;};
    b.hash_name_2d6354=[](Address){return ReU64{7};};
    b.hash_literal_2e5b4c=[](Rva getter,Rva converter,ReU64 basis){require(getter==0x330614&&converter==0x2dd188&&basis==0xcbf29ce484222325ULL);return ReU64{8};};
    b.material=[](Rva getter,Rva){return Address{getter};};
    b.compare_class=[](Address,Rva,Rva){return 1;};
    b.managed_string_2ce5dc=[](Address a){return a+1;};
    b.hit_374168=[](Address,Address,Vec3,Vec3){};
    b.lookup_shot=[](ReU32 id)->re::ReOptional<Address>{require(id==17);return projectile;};
    b.erase_shot_32cb8c=[](ReU32 id){require(id==17);};
    b.prepare_curve_32c2d9=[]{}; // [I] Explicit supplied setup for unrelated controller fixtures.
    b.evaluate_curve_32b728=[](Address,float r){near_eq(r,0.5f);return 2.0f;};
    return b;
}
void setup_shot(Snapshot& s) {
    put(s,argument+0x10,list);put(s,list+0x10,array);put(s,list+0x18,1);
    put(s,array+0x20,shot);put(s,shot+0x30,ReU32{17});
    put(s,weapon+0x3ac,999.0f);put(s,weapon+0x428,transform);
    put(s,ammo+0x44,3.0f);put(s,ammo+0x40,2.0f);put(s,ammo+0x3c,2.0f);put(s,ammo+0x38,1);
    put(s,0x3e5718,transform);
}
void setup_hit(Snapshot& s) {
    put(s,0x3d7ec8,ReU8{1});put(s,0x3f3dd8,2.0f);put(s,0x3f9578,0);
    put(s,projectile+0x80,definition);put(s,projectile+0x184,1.0f);put(s,projectile+0x188,0.0f);
    put(s,0x3f95c8,4);
}
}
void check_projectile_reconstruction() {
    {
        auto s=fixture();setup_shot(s);
        constexpr Address registry=0x120000,slots=0x121000,second=0x122000;
        put(s,registry,slots);put(s,registry+8,slots+16);
        put(s,slots,projectile);put(s,slots+8,second);
        put(s,projectile+0x138,ReU32(17));put(s,second+0x138,ReU32(17));
        auto b=bind_projectile_container(s,registry,calls());
        b.spread_32bd4c=[&](float,Vec3 v,bool){put(s,projectile+0x138,ReU32(99));return v;};
        const auto replay=replay_shot_32c0d4(s,argument,b);
        require(replay.status==ProjectileReplayStatus::completed&&replay.shots_processed==1);
        require(get<ReU32>(s,projectile+0x138)==99);
        require(get<Address>(s,slots)==second&&get<Address>(s,registry+8)==slots+8);
    }
    {
        auto s=fixture();setup_shot(s);auto b=calls();re::ReVector<int> order;
        b.prepare_curve_32c2d9=[&]{order.push_back(1);put(s,0x3f7f98,ReU32(3));};
        b.random_2e3d5c=[&](float,float){require(get<ReU32>(s,0x3f7f98)==3);order.push_back(2);return 0.5f;};
        b.evaluate_curve_32b728=[&](Address,float){order.push_back(3);return 2;};
        require(replay_shot_32c0d4(s,argument,b).status==ProjectileReplayStatus::completed);
        require(order==re::ReVector<int>({1,2,3}));
        b.prepare_curve_32c2d9={};order.clear();const auto missing=replay_shot_32c0d4(s,argument,b);
        require(missing.status==ProjectileReplayStatus::missing_boundary&&missing.stop_site==0x32c2d9&&order.empty());
        b.prepare_curve_32c2d9=[&]{put(s,0x3f7f98,ReU32(1));__builtin_trap();};
        const auto failed=replay_shot_32c0d4(s,argument,b);
        require(failed.status==ProjectileReplayStatus::missing_boundary&&failed.stop_site==0x334224&&order.empty()&&get<ReU32>(s,0x3f7f98)==1);
    }
    require(predict_projectile_2e2374({}, {10,0,0}, {}, {}, false, false).empty);
    {
        const auto tables=build_candidate_tables_2e3aa4({32,0,0,0});
        const auto predicted=predict_projectile_2e2374({2,3,4},{12,3,4},{},tables,false,false);
        require(!predicted.empty);near_eq(predicted.direction.x,1);near_eq(predicted.direction.y,0);
        auto s=fixture();setup_shot(s);auto b=calls();
        put(s,0x3d7e78,ReU8{1});put(s,0x3d72a0,ReU8{1});
        const auto vectors=b.vector;
        b.vector=[&](Rva r,Address a,int n){return r==0x369790?Vec3{12,3,4}:vectors(r,a,n);};
        b.prediction_2e2374=[&](Vec3 origin,Vec3 point,Vec3 motion,Address key){
            require(key==transform);return predict_projectile_2e2374(origin,point,motion,tables,false,false);
        };
        require(replay_shot_32c0d4(s,argument,b).status==ProjectileReplayStatus::completed);
        near_eq(get<Vec3>(s,projectile+0x28).x,10);
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();
        b.managed_string_2ce5dc=[&](Address material){put(s,hit+0x5c,Vec3{70,80,90});put(s,hit+0xa4,Vec3{1,2,3});return material+1;};
        bool consumed=false;b.hit_374168=[&](Address,Address,Vec3 point,Vec3 normal){consumed=true;near_eq(point.x,70);near_eq(point.z,90);near_eq(normal.y,2);near_eq(normal.z,3);};
        require(replay_projectile_330b38(s,projectile,b).direct_hits==1&&consumed);
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();put(s,0x3f3dd8,10.f);
        const auto vector=b.vector;b.vector=[&](Rva r,Address a,int n){return r==0x368be8?Vec3{1,4,0}:vector(r,a,n);};
        require(replay_projectile_330b38(s,projectile,b).direct_hits==1);
        const auto closest=closest_segment_2e5a80({},{1,0,0},{1,4,0});
        const auto toward=move_towards_330830({1,4,0},closest,0.4f);
        auto normalize=[](Vec3 v){const auto n=sample_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z);return n>0?Vec3{v.x/n,v.y/n,v.z/n}:Vec3{};};
        const auto expected=normalize(toward-closest);const auto wrong=normalize(get<Vec3>(s,projectile+0x178)-closest);
        require(re::re_bit_cast<ReU32>(expected.y)!=re::re_bit_cast<ReU32>(wrong.y));
        require(re::re_bit_cast<ReU32>(get<Vec3>(s,hit+0x78).y)==re::re_bit_cast<ReU32>(expected.y));
    }
    // [C] Thresholds preserve the strict > ladder, including NaN falling to its tail.
    require(select_projectile_bone_330dab(4,90,false)==52);
    require(select_projectile_bone_330dab(4,90.01f,false)==53);
    require(select_projectile_bone_330dab(5,91,true)==59);
    require(select_projectile_bone_330dab(4,60,true)==1);
    require(select_projectile_bone_330dab(4,re::ReNumericLimits<float>::quiet_NaN(),true)==10);
    require(select_projectile_bone_330dab(100,99,true)==53);
    near_eq(move_towards_330830({},{3,0,0},1).x,1);
    near_eq(move_towards_330830({},{3,0,0},-1).x,-1);
    near_eq(move_towards_330830({},{3,0,0},4).x,3);
    near_eq(closest_segment_2e5a80({},{2,0,0},{5,2,0}).x,2);
    near_eq(closest_segment_2e5a80({},{2,0,0},{-5,2,0}).x,0);
    {
        auto s=fixture();setup_shot(s);auto b=calls();
        put(s,0x3f7d08,ReU8{1});put(s,0x3f7f38,50.0f);
        put(s,0x3f7df8,ReU8{1});put(s,0x3f7f88,0.25f);
        put(s,0x3f7e48,ReU8{1});
        b.spread_32bd4c=[](float spread,Vec3 v,bool single){near_eq(spread,7);require(single);return v;};
        const auto r=replay_shot_32c0d4(s,argument,b);
        require(r.status==ProjectileReplayStatus::completed&&r.shots_processed==1);
        near_eq(get<Vec3>(s,projectile+0x28).x,10);near_eq(get<Vec3>(s,shot+0x20).x,10);
        near_eq(get<float>(s,projectile+0x3c),0.25f);near_eq(get<Vec3>(s,shot+0x10).y,3);
    }
    {
        auto s=fixture();setup_shot(s);auto b=calls();int predictions=0;
        put(s,0x3d7e78,ReU8{1});put(s,0x3d72a0,ReU8{1});
        put(s,0x3f7d58,ReU8{1});put(s,0x3f7ee8,49.9f);
        b.prediction_2e2374=[&](Vec3,Vec3 point,Vec3,Address){++predictions;near_eq(point.x,10);return ProjectilePrediction{{0,1,0},false};};
        auto r=replay_shot_32c0d4(s,argument,b);require(r.status==ProjectileReplayStatus::completed&&predictions==1);
        near_eq(get<Vec3>(s,projectile+0x28).x,10); // [C] 49 truncated is below random 50.
        put(s,0x3f7ee8,50.9f);r=replay_shot_32c0d4(s,argument,b);
        require(r.status==ProjectileReplayStatus::completed);near_eq(get<Vec3>(s,projectile+0x28).y,10);
        // [C] A zero target vector skips prediction; mismatch includes quiet NaN.
        b.vector=[](Rva r,Address,int)->Vec3{if(r==0x369790)return {};if(r==0x369164)return {2,3,4};return {1,0,0};};
        r=replay_shot_32c0d4(s,argument,b);require(r.status==ProjectileReplayStatus::completed&&predictions==2);
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();ReUSize queries=0,hits=0;
        b.query_2e2320=[&](Vec3,Vec3,ReU32,float,float){++queries;return true;};
        b.hit_374168=[&](Address p,Address h,Vec3 point,Vec3 normal){require(p==projectile&&h==hit);near_eq(point.x,11);near_eq(normal.y,20.1f);++hits;};
        const auto r=replay_projectile_330b38(s,projectile,b);
        require(r.status==ProjectileReplayStatus::completed&&r.direct_hits==1&&hits==1&&queries==6);
        require(get<Address>(s,hit+0x90)==target&&get<Address>(s,hit+0xd0)==definition);
        near_eq(get<float>(s,projectile+0x184),2.1f);near_eq(get<float>(s,projectile+0x188),0.034375f);
        near_eq(get<Vec3>(s,hit+0x6c).x,1);near_eq(get<Vec3>(s,hit+0x78).y,1);
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();
        put(s,0x3f9488,ReU8{1});put(s,0x3f9528,2.0f);
        const auto r=replay_projectile_330b38(s,projectile,b);
        require(r.status==ProjectileReplayStatus::completed&&r.direct_hits==0);
        require(re::re_fabs(length(get<Vec3>(s,projectile+0x16c))-32)<0.001f);
        require(get<ReU8>(s,hit+0xb0)==0);
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();const auto address=b.address;
        b.address=[&](Rva r,Address a,int n){return r==0x368c60?Address{}:address(r,a,n);};
        const auto r=replay_projectile_330b38(s,projectile,b);
        require(r.status==ProjectileReplayStatus::completed&&r.direct_hits==0);
        require(get<ReU8>(s,hit+0xb0)==1&&get<Address>(s,hit+0x90)==target);
        require(get<float>(s,projectile+0x184)>1); // [C] No rollback after invalid bone.
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();put(s,0x3d7ec8,ReU8{});
        put(s,0x3f3ba8,ReU8{1});put(s,0x3d72b8,heli);put(s,heli+0x2e8,component);put(s,component+0x28,health);
        put(s,health+0x24,re::ReNumericLimits<float>::quiet_NaN());
        const auto address=b.address;int selected=0;
        b.address=[&](Rva r,Address a,int n){if(r==0x368c60){selected=n;return transform;}return address(r,a,n);};
        const auto r=replay_projectile_330b38(s,projectile,b);
        require(r.status==ProjectileReplayStatus::completed&&r.heli_hits==1&&selected==63);
        require(get<Address>(s,hit+0x90)==heli);near_eq(get<Vec3>(s,hit+0x78).x,0);
        require(get<Address>(s,hit+0xd0)==0); // [C] Heli tail does not write collider +d0.
    }
    {
        auto s=fixture();setup_hit(s);auto b=calls();put(s,0x3f3dd8,0.1f);put(s,0x3f94d8,ReU8{1});
        put(s,component+0x38,definition);put(s,projectile+0x178,Vec3{});put(s,projectile+0x16c,Vec3{32,0,0});
        put(s,projectile+0x190,Vec3{1,0,0});put(s,projectile+0x28,Vec3{32,0,0});put(s,projectile+0x44,5.0f);
        b.compare_class=[](Address,Rva getter,Rva){return getter==0x330128?0:1;};
        const auto r=replay_projectile_330b38(s,projectile,b);
        require(r.status==ProjectileReplayStatus::completed&&r.direct_hits==1);
        near_eq(get<Vec3>(s,hit+0x6c).x,1);near_eq(get<Vec3>(s,hit+0x78).y,0);
    }
    {
        auto s=fixture();setup_shot(s);auto b=calls();
        put(s,0x3d7e78,ReU8{1});put(s,0x3d72a0,ReU8{1});
        put(s,0x3d8058,ReU8{1});put(s,0x3d72d0,Vec3{20,0,0});
        put(s,0x3d7ec8,ReU8{1});put(s,0x3d8301,ReU8{1});put(s,0x3d72e0,Vec3{30,0,0});
        b.prediction_2e2374=[](Vec3,Vec3 point,Vec3,Address){near_eq(point.x,30);return ProjectilePrediction{{0,1,0},false};};
        require(replay_shot_32c0d4(s,argument,b).status==ProjectileReplayStatus::completed);
        near_eq(get<Vec3>(s,projectile+0x28).y,10); // [C] Pierce override follows fat-vector override.
    }
    for(int mode=0;mode<4;++mode) {
        auto s=fixture();setup_shot(s);auto b=calls();
        put(s,0x3d7fb8,ReU8{static_cast<ReU8>(mode==0)});
        put(s,0x3d7ce8,ReU8{1});put(s,0x3d80a8,2.0f);
        const auto scalar=b.scalar;
        b.scalar=[&](Rva r,Address a,int n,int m){return r==0x36b758?(mode==2?2.0f:1.0f):scalar(r,a,n,m);};
        if(mode==3) {put(s,0x3d8301,ReU8{1});put(s,0x3e4238,ReU8{1});put(s,0x3e6084,1.25f);}
        require(replay_shot_32c0d4(s,argument,b).status==ProjectileReplayStatus::completed);
        near_eq(get<Vec3>(s,projectile+0x28).x,mode==2?20:(mode==3?12.5f:14.95f));
    }
    {
        auto s=fixture();auto b=calls();put(s,0x3f7d08,ReU8{1});
        // [I] Bounds guard stops between the native 8+4 stores, retaining the first.
        const Address partial=0x3fff00;put(s,partial+0xf8,ReU64{0xffffffffffffffffULL});
        const auto r=replay_projectile_330b38(s,partial,b);
        require(r.status==ProjectileReplayStatus::out_of_snapshot&&r.stop_site==0x330bf1);
        require(get<ReU64>(s,partial+0xf8)==0);
    }
    for(int material=0;material<8;++material) {
        auto s=fixture();auto b=calls();put(s,0x3f95c8,material);int conversions=0;
        b.material=[&](Rva,Rva){++conversions;return Address{1};};
        require(replay_projectile_330b38(s,projectile,b).status==ProjectileReplayStatus::completed);
        require(conversions==(material==7?1:2));
    }
    {
        auto s=fixture();auto b=calls();b.material={};put(s,0x3f7d08,ReU8{1});put(s,projectile+0xf8,Vec3{1,2,3});
        const auto r=replay_projectile_330b38(s,projectile,b);
        require(r.status==ProjectileReplayStatus::missing_boundary&&r.stop_site==0x330c17);
        near_eq(get<Vec3>(s,projectile+0xf8).x,0);
        require(replay_shot_32c0d4(s,0,b).status==ProjectileReplayStatus::rejected);
        b.material=[](Rva,Rva)->Address{__builtin_trap();};
        put(s,projectile+0xf8,Vec3{1,2,3});
        const auto stopped=replay_projectile_330b38(s,projectile,b);
        require(stopped.status==ProjectileReplayStatus::out_of_snapshot&&stopped.dependency==0x2d84dc);
        near_eq(get<Vec3>(s,projectile+0xf8).x,0);
    }
}
} // namespace rust_internal_re
