#include "helicopter_aim_analysis.hpp"

namespace rust_internal_re {
namespace {
void require(bool b,const char* text) {if(!b){ __builtin_trap(); }}
void near(float a,float b,float epsilon=0.001f) {
    float d=a-b; if(d<0)d=-d; if(d>epsilon) __builtin_trap();
}
constexpr Address local=0x101000,target=0x102000,held=0x103000,input=0x104000;
constexpr Address mod=0x105000,component=0x106000,definition=0x107000,transform=0x108000;
struct Fixture {
    Snapshot snapshot{0x100000,re::ReVector<ReByte>(0x10000)};
    AimState shared;
    HelicopterAimState state{target,77};
    AimConfig config;
    AimWeaponCalls calls;
    Address melee{},projectile{},server{},thrown{},module{mod},root{transform};
    Vec3 point{20,10,100},from{1,2,3},velocity{4,0,0},direction{0,0,1};
    re::ReVector<int> bones;
    re::ReVector<Rva> order;
    re::ReOptional<AimPredictionRequest> prediction;
    float attachment{},second_attachment{},formatted{},yaw{};
    int attachment_count{};
    Fixture() {
        config.target_helicopter=true;config.active_3d72a0=true;
        shared.table_context_3e5718=0x109000;
        shared.marker_3e6050={7,8,9};shared.compensation_3e6060={2,4,6};
        put(target+0x2cc,6000.0f);put(held+0x3ac,2.0f);put(held+0x3f8,10.0f);
        put(mod+0x40,10.0f);put(mod+0x44,20.0f);put(component+0x3c,30.0f);
        put(local+0x38,Address{});put(input+0x44,Vec2{3,5});
        calls.valid_2e0e9c=[&](Address){order.push_back(0x2e0e9c);return true;};
        calls.bone_368be8=[&](Address p,int bone){require(p==target,"helicopter bone receiver");bones.push_back(bone);return point;};
        calls.object=[&](Rva r,Address)->Address {
            order.push_back(r);
            switch(r) {
            case 0x368a84:return held;
            case 0x3721b4:return melee;
            case 0x371464:return projectile;
            case 0x371eb8:return server;
            case 0x3716e0:return thrown;
            case 0x36b938:case 0x371630:return module;
            case 0x372b30:case 0x372abc:return component;
            case 0x37154c:return definition;
            case 0x315a54:return root;
            case 0x369738:return input;
            default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected helicopter object call") */ }
            }
        };
        calls.vector=[&](Rva r,Address) {
            order.push_back(r);
            switch(r) {
            case 0x369164:return from;
            case 0x368100:return velocity;
            case 0x3747d4:return point;
            case 0x369c1c:return Vec3{9,8,7};
            default:{ /* FREESTANDING_TODO: was throw runtime_error("unexpected helicopter vector call") */ }
            }
        };
        calls.integer=[&](Rva r,Address){order.push_back(r);return ReU32{1};};
        calls.scalar=[&](Rva r,Address){order.push_back(r);return attachment_count++==0?attachment:second_attachment;};
        calls.prediction_2e2374=[&](const AimPredictionRequest& r){order.push_back(0x2e2374);prediction=r;return direction;};
        calls.format_2d9540=[&](float value){order.push_back(0x2d9540);formatted=value;};
        calls.destroy_formatted_2cc4f4=[&]{order.push_back(0x2cc4f4);};
        calls.transform_euler_y=[&](Address){order.push_back(0x31530c);return yaw;};
    }
    template<class T> void put(Address p,T v){require(snapshot.write(p,v),"helicopter fixture write");}
    Vec2 angles()const{return snapshot.read<Vec2>(input+0x44).value();}
    AimWeaponResult run(){return replay_helicopter_aim_2fa300(snapshot,shared,state,config,123,local,calls);}
    bool called(Rva r)const{return re::re_find(order.begin(),order.end(),r)!=order.end();}
    void expect_point(Vec3 p)const {
        const auto expected=aim_angles_2f80bc(from,p);
        near(angles().x,expected.x);near(angles().y,expected.y);
    }
};
float inverse_root_unit(){return 1/approximate_sqrt_2e3c88(1);}
}
void check_helicopter_aim_reconstruction() {
    // [I] Independent fixtures exercise threshold sides and unordered COMISS.
    for(float health:{4999.0f,5000.0f,5001.0f,re::ReNumericLimits<float>::quiet_NaN()}) {
        Fixture f;f.module=0;f.melee=held;f.put(target+0x2cc,health);
        require(f.run().status==AimWeaponStatus::returned,"health branch returned");
        require(f.bones==(health<=5000?re::ReVector<int>{62,63}:re::ReVector<int>{62}),"health equality/unordered branch");
        f.expect_point(f.point);
        require(!f.called(0x2e2374),"failed subtype reaches tail without prediction");
    }
    {
        Fixture f;f.thrown=held;f.server=held;f.melee=held;f.projectile=held;
        require(f.run().status==AimWeaponStatus::returned,"thrown branch");
        require(f.prediction.has_value(),"thrown prediction");
        near(f.prediction->origin.x,2);near(f.prediction->origin.y,2);
        near(f.prediction->motion.x,9);require(f.prediction->table_context==0x109000,"prediction table");
        near(f.formatted,9.546875f);
        f.expect_point({1,0,9.546875f*inverse_root_unit()});
        require(f.called(0x2cc4f4)&&!f.called(0x36b938),"thrown priority/destructor");
        require(f.shared.marker_3e6050.x==7&&f.state.projectile_speed_3e5e74==77,"helicopter globals retained");
    }
    {
        Fixture f;f.thrown=held;f.shared.table_context_3e5718=0;
        require(f.run().status==AimWeaponStatus::returned,"thrown missing table return");
        require(f.order.back()==0x2cc4f4&&!f.called(0x369738),"destruction before table return");
    }
    {
        Fixture f;f.server=held;
        require(f.run().status==AimWeaponStatus::returned,"server branch");
        const float advance=4/approximate_sqrt_2e3c88(16);
        near(f.prediction->origin.x,1+advance);
        f.expect_point({1+advance,2,3+60*inverse_root_unit()});
    }
    {
        Fixture f;f.melee=held;f.config.increase_velocity=true;
        f.config.projectile_speed=re::ReNumericLimits<float>::quiet_NaN();
        require(f.run().status==AimWeaponStatus::returned,"melee NaN MINSS cap");
        f.expect_point({1,2,3+14.95f*inverse_root_unit()});
    }
    {
        Fixture f;f.projectile=held;f.attachment=0.5f;f.second_attachment=0.75f;
        f.config.increase_velocity=true;f.config.projectile_speed=2;
        f.config.byte_3d8301=true;f.config.byte_3e4238=true;f.config.scalar_3e6084=1.2f;
        require(f.run().status==AimWeaponStatus::returned,"projectile branch");
        require(f.attachment_count==2,"helicopter repeated getter despite global4238");
        near(f.state.projectile_speed_3e5e74,54);
        f.expect_point({1,2,3+54*inverse_root_unit()});
    }
    {
        Fixture f;f.projectile=held;f.shared.table_context_3e5718=0;
        require(f.run().status==AimWeaponStatus::returned,"projectile missing table return");
        near(f.state.projectile_speed_3e5e74,60);
        require(!f.called(0x369c1c)&&!f.called(0x369738),"speed stored before table exit");
    }
    {
        Fixture f;f.projectile=held;
        f.calls.integer=[&](Rva,Address){f.put(held+0x3ac,4.0f);return ReU32{0x34b73d71};};
        require(f.run().status==AimWeaponStatus::returned,"special projectile scale");
        near(f.state.projectile_speed_3e5e74,150);
    }
    for(float first:{0.0f,1.3f,re::ReNumericLimits<float>::quiet_NaN()}) {
        Fixture f;f.projectile=held;f.attachment=first;f.second_attachment=2;
        f.config.instant_hit=true;
        require(f.run().status==AimWeaponStatus::returned,"attachment threshold/unordered");
        near(f.state.projectile_speed_3e5e74,first==0?89.7f:first>=1.3f?120.0f:179.4f);
        require(f.attachment_count==(first==0?1:2),"zero/unordered repeat getter");
    }
    for(int branch=0;branch<4;++branch) {
        Fixture f;f.direction={};
        if(branch==0)f.thrown=held;
        if(branch==1)f.server=held;
        if(branch==2)f.melee=held;
        if(branch==3)f.projectile=held;
        require(f.run().status==AimWeaponStatus::returned,"zero direction branch");
        f.expect_point(f.point);
    }
    {
        Fixture f;f.melee=held;f.module=0;f.config.smooth=true;f.config.smoothing=0.25f;
        f.put(local+0x38,Address{0x109000});f.yaw=15;
        require(f.run().status==AimWeaponStatus::returned,"smooth parent branch");
        const auto full=aim_angles_2f80bc(f.from,f.point);
        near(f.angles().x,3+(full.x-3)*0.25f);
        near(f.angles().y,5+((full.y-15)-5)*0.25f);
    }
    {
        Fixture f;f.projectile=held;f.calls.vector={};
        const auto bound=bind_helicopter_aim(f.snapshot,f.shared,f.state,f.config,f.calls);
        const auto result=replay_aim_2f9988(f.snapshot,f.shared,f.config,123,local,[]{return Address{};},bound);
        require(result.status==AimWeaponStatus::missing_boundary&&result.boundary==0x369164,"binder typed fault reaches aim controller");
        require(f.shared.marker_3e6050.x==7,"failed helicopter retains outer marker before clear");
    }
    {
        Fixture f;f.projectile=held;f.calls.prediction_2e2374=[&](const AimPredictionRequest&){f.config.target_helicopter=false;return f.direction;};
        require(f.run().status==AimWeaponStatus::returned&&!f.called(0x369738),"tail reload gate after callback");
    }
    {
        Fixture f;f.melee=held;f.module=0;f.put(local+0x38,Address{0x109000});
        f.calls.transform_euler_y=[&](Address) {
            f.snapshot=Snapshot(0x100000,re::ReVector<ReByte>(input+0x48-0x100000));
            return 0.0f;
        };
        const auto r=f.run();
        require(r.status==AimWeaponStatus::missing_bytes&&r.boundary==0x2fabc7,"second scalar store fails separately");
        near(f.snapshot.read<float>(input+0x44).value(),aim_angles_2f80bc(f.from,f.point).x);
    }
    for(int gate=0;gate<6;++gate) {
        Fixture f;
        if(gate==0)f.config.target_helicopter=false;
        if(gate==1)f.state.target_3d72b8=0;
        if(gate==2)f.point={};
        if(gate==3)f.calls.valid_2e0e9c=[](Address){return false;};
        if(gate==4){f.projectile=held;f.config.psilent=true;}
        if(gate==5){f.projectile=held;f.config.active_3d72a0=false;}
        require(f.run().status==AimWeaponStatus::returned&&!f.called(0x369738),"early and tail gates");
        near(f.angles().x,3);near(f.angles().y,5);
    }
    {
        Fixture f;f.melee=held;f.module=0;f.config.smooth=true;f.config.smoothing=re::ReNumericLimits<float>::infinity();
        const auto r=f.run();
        require(r.status==AimWeaponStatus::nonprogressing_math&&r.boundary==0x316fd0,"infinite wrapping has explicit stop");
    }
    {
        Fixture f;f.melee=held;f.module=0;f.calls.bone_368be8={};
        const auto r=f.run();require(r.status==AimWeaponStatus::missing_boundary&&r.boundary==0x368be8,"missing bone explicit");
        f.calls.bone_368be8=[](Address,int){return Vec3{1,1,1};};
        Snapshot absent(0x100000,{});
        const auto missing=replay_helicopter_aim_2fa300(absent,f.shared,f.state,f.config,0,local,f.calls);
        require(missing.status==AimWeaponStatus::missing_bytes&&missing.boundary==0x36972e,"missing health bytes explicit");
    }
}
} // namespace rust_internal_re
