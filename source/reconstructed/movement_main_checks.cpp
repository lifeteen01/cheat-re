#include "movement_main_analysis.hpp"
#include "analysis_failure.hpp"

namespace rust_internal_re {
namespace {
void require(bool value,const char* text) {if(!value){ __builtin_trap(); }}
template<class T>T read(const Snapshot& image,Address a) {const auto v=image.read<T>(a);require(v.has_value(),"movement main fixture read");return *v;
}
template<class T> void put(Snapshot& image,Address a,T v) {require(image.write(a,v),"movement main fixture write");}
struct Call {Rva target;re::ReVector<MovementMainArgument> arguments;};
struct Fixture {
    static constexpr Address movement=0x1001000,player=0x1002000,model=0x1003000;
    static constexpr Address entity=0x1004000,item=0x1005000,weapon=0x1006000;
    static constexpr Address klass=0x1007000,name=0x1008000,transform=0x1009000;
    Snapshot image{0x1000000,re::ReVector<ReByte>(0x12000)};
    MovementMainState state;
    MovementMainInput input{movement,0x1020000,model,100000};
    MovementMainCalls calls;
    re::ReVector<Call> log;
    re::ReMap<Rva,Address> pointers;
    re::ReMap<Rva,bool> predicates;
    re::ReMap<int,bool> keys;
    re::ReMap<Rva,float> scalars;
    re::ReMap<Rva,Vec3> vectors;
    re::ReMap<Rva,ReU32> integers;
    re::ReFunction<void(Rva,MovementMainArguments)> on_effect;
    re::ReFunction<Address(Rva,MovementMainArguments)> on_pointer;
    re::ReFunction<bool(Rva,MovementMainArguments)> on_predicate;
    void record(Rva r,MovementMainArguments a) {
        Call entry{r,{}};entry.arguments.reserve(a.size());
        for(const auto& argument:a)re::re_visit([&](const auto& value) {
            entry.arguments.push_back(MovementMainArgument(value));
        },argument);
        log.push_back(re::re_move(entry));
    }
    Fixture() {
        put(image,player+0x48,Address{1});put(image,entity+0x48,Address{1});
        put(image,movement+0xb8,ReU32{0x12345678});
        put(state.globals,0x3f35b8,ReU8{1});
        put(state.globals,0x3e5e80,Address{0x100a000});
        pointers={{0x2dda9c,player},{0x2e069c,0},{0x3297f0,0},{0x329a38,0},{0x368a84,0},
            {0x36a2f4,0},{0x2e02b0,0},{0x2ce5d8,0x100b000},{0x315924,0},{0x32957c,0},{0x329714,0}};
        predicates={{0x2e6744,false},{0x2f7dd0,false},{0x368468,false},{0x3247cc,false},
            {0x36a0e0,false},{0x36b288,false},{0x36a238,false},{0x36a20c,false},
            {0x3693b0,false},{0x36a1e4,false},{0x2e89e4,false},{0x2e8910,false},
            {0x372bf4,false},{0x2e2320,false},{0x368244,false}};
        scalars={{0x2e6240,1.0f},{0x31581c,2.0f},{0x2e071c,0.01f}};
        vectors={{0x369c1c,{}},{0x31492c,{}}};
        calls.pointer=[this](Rva r,MovementMainArguments a) {
            record(r,a);if(on_pointer)return on_pointer(r,a);
            const auto i=pointers.find(r);if(!i)__builtin_trap();
            return **i;
        };
        calls.predicate=[this](Rva r,MovementMainArguments a) {
            record(r,a);
            if(on_predicate)return on_predicate(r,a);
            if(r==0x2e5e4c)return keys[re::re_get<ReI32>(a[0])];
            const auto i=predicates.find(r);if(!i)__builtin_trap();
            return **i;
        };
        calls.scalar=[this](Rva r,MovementMainArguments a) {
            record(r,a);const auto i=scalars.find(r);
            if(!i)__builtin_trap();
            return **i;
        };
        calls.vector=[this](Rva r,MovementMainArguments a) {
            record(r,a);const auto i=vectors.find(r);
            if(!i)__builtin_trap();
            return **i;
        };
        calls.integer=[this](Rva r,MovementMainArguments a) {
            record(r,a);const auto i=integers.find(r);
            if(!i)__builtin_trap();
            return **i;
        };
        calls.quaternion=[this](Rva r,MovementMainArguments a) {
            record(r,a);require(r==0x3739c4||r==0x374aa4,"unexpected quaternion boundary");
            return re::ReArray<float,4>{0,0,0,1};
        };
        calls.effect=[this](Rva r,MovementMainArguments a) {
            record(r,a);if(on_effect)on_effect(r,a);
        };
    }
    void flag(Rva a,bool v=true) {put(state.globals,a,static_cast<ReU8>(v));}
    bool isflag(Rva a) const {return read<ReU8>(state.globals,a)!=0;}
    void type(Address a,re::ReStringView text) {
        put(image,a,klass);put(image,klass+0x10,name);
        for(ReUSize i=0;i<text.size();++i)put(image,name+i,text[i]);
        put(image,name+text.size(),char{});
    }
    void mode(Rva record,Rva option,int value=2,int key=0) {
        put(state.globals,record,ReI32{key});put(state.globals,record+4,ReI32{value});flag(option);
    }
    MovementMainResult run() {return replay_movement_main_324b30(image,state,input,calls);}
    ReUSize count(Rva r) const {return static_cast<ReUSize>(re::re_count_if(log.begin(),log.end(),[&](const auto& c) {return c.target==r;}));}
    const Call& last(Rva r) const {
        for(ReUSize j=log.size();j>0;--j) {if(log[j-1].target==r)return log[j-1];}
        require(false,"missing movement main call");return log[0];
    }
};
}

void check_movement_main_reconstruction() {
    // [I] All fixtures operate only on owned copied records and analyst callbacks.
    {
        Fixture f;const auto result=f.run();require(result.status==MovementMainStatus::returned,"movement baseline return");
        require(result.original_called&&result.collision_tail_called,"movement original and tail");
        require(f.count(0x2cba50)==1&&f.count(0x329aa0)==1,"movement once-only original/tail");
        require(read<ReU32>(f.state.globals,0x3f6f38)==0x1003,"movement lazy bits");
        require(re::re_get<ReI32>(f.last(0x329aa0).arguments[0])==12&&
            re::re_get<ReI32>(f.last(0x329aa0).arguments[1])==11,"movement tail argument classes");
        require(!re::re_get<bool>(f.last(0x329aa0).arguments[2]),"movement tail disabled");
    }
    {
        Fixture f;f.calls.predicate={};const auto r=f.run();
        require(r.status==MovementMainStatus::missing_boundary&&r.boundary==0x2e5e4c&&!r.original_called,"missing callback stops first key");
    }
    {
        Fixture f;f.pointers[0x2dda9c]=0;f.flag(0x3f3518);const auto r=f.run();
        require(r.status==MovementMainStatus::returned&&r.collision_tail_called,"invalid player still reaches tail");
        require(f.count(0x318724)==0&&re::re_get<bool>(f.last(0x329aa0).arguments[2]),"invalid player skip middle only");
    }
    {
        Fixture f;f.mode(0x3efa78,0x3f35b8,1,77);f.keys[77]=true;
        f.pointers[0x369298]=0;
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3efa81),"toggle first edge");
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3efa81),"toggle held edge");
        f.keys[77]=false;require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3efa81),"toggle release retains latch");
        f.keys[77]=true;require(f.run().status==MovementMainStatus::returned&&!f.isflag(0x3efa81),"toggle second edge disables");
        f.flag(0x3efa81);f.predicates[0x2e6744]=true;
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3efa81),"menu blocked key leaves latch");
    }
    {
        Fixture f;f.flag(0x3f3a18);f.flag(0x3f3a18+0x48);f.mode(0x3efa78,0x3f35b8);f.pointers[0x369298]=0;
        f.on_effect=[&](Rva r,MovementMainArguments) {
            if(r==0x2cba50) {
                require(read<Address>(f.image,Fixture::movement+0x20)==0xb4bbe47a,"CanShoot before original");
                require(f.count(0x372c1c)==1,"fly flag before original");
                put(f.image,Fixture::movement+0x20,Address{0x123});
            }
        };
        const auto r=f.run();require(r.status==MovementMainStatus::returned,"ordered original fixture return");
        // [C] 2ef7fc(3f39d0) reads the same CanShoot value at +48.
        require(read<Address>(f.image,Fixture::movement+0x20)==0xb4bbe67a,"CanShoot post-original encoded write");
        f.on_effect={};f.flag(0x3f3a18,false);f.flag(0x3efa81,false);
        require(f.run().status==MovementMainStatus::returned&&read<Address>(f.image,Fixture::movement+0x20)==0xb4bbe47a,"CanShoot final disabled write");
    }
    {
        Fixture f;f.state.interactive_positions_218960.resize(66);f.flag(0x3efb41);
        require(f.run().status==MovementMainStatus::returned&&f.state.interactive_positions_218960.empty()&&!f.isflag(0x3efb41),"66-point interactive reset");
    }
    {
        Fixture f;f.flag(0x3d7ec8);f.flag(0x3f3ba8);f.flag(0x3e5228);f.flag(0x3f3c48);
        re::ReVector<Rva> latches;
        f.on_effect=[&](Rva r,MovementMainArguments a) {
            if(r==0x32308c) {
                require(!f.isflag(0x3f7018)||!f.isflag(0x3f7019)||!f.isflag(0x3f701a),"install latch written after call");
                const auto record=re::re_get<Address>(a[0]);latches.push_back(static_cast<Rva>(record));
            }
        };
        require(f.run().status==MovementMainStatus::returned&&latches==re::ReVector<Rva>{0x3f4a50,0x3f4a88,0x3f4a18},"lazy install order");
        f.on_effect={};require(f.run().status==MovementMainStatus::returned&&f.count(0x32308c)==3,"install once across calls");
    }
    {
        Fixture f;put(f.image,Fixture::movement+0xb8,ReU32{0x80000001});
        f.mode(0x3efa78,0x3f35b8);f.pointers[0x369298]=Fixture::transform;
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3f75e8),"noclip captures enabled latch");
        f.flag(0x3f35b8,false);f.flag(0x3efa81,false);
        require(f.run().status==MovementMainStatus::returned,"noclip disabled replay");
        require(read<Address>(f.image,Fixture::movement+0xb8)==0xffffffff80000001ULL&&!f.isflag(0x3f75e8)&&!f.isflag(0x3e4250),"noclip signed qword restoration");
    }
    {
        Fixture f;f.mode(0x3efad8,0x3f3248);f.mode(0x3ef778,0x3f3568);f.flag(0x3f3428);
        put(f.image,Fixture::movement+0x128,ReU32{0xabcdef01});
        require(f.run().status==MovementMainStatus::returned,"encoded movement fixture");
        const auto a=re::re_rotr(0xe563546eu^0xc6bab1aeu,4)^0x76bc58f6u;
        const auto b=re::re_rotr(re::re_rotr(re::re_bit_cast<ReU32>(10000.0f),25)^0x6f74331fu,6);
        require(read<ReU32>(f.image,Fixture::movement+0x118)==a&&read<ReU32>(f.image,Fixture::movement+0x120)==b,"movement encoded setters");
        require(read<ReU32>(f.image,Fixture::movement+0x128)==0xabcdef01,"movement jump raw baseline");
        require(re::re_get<bool>(f.last(0x373eb4).arguments[1]),"nofall argument");
    }
    {
        Fixture f;f.flag(0x3f3888);put(f.image,Fixture::movement+0x44,Vec3{3,2,4});
        require(f.run().status==MovementMainStatus::returned,"omni fixture");
        const auto value=read<Vec3>(f.image,Fixture::movement+0x44);
        require(value.y==2&&value.x>3&&value.z>4,"omni preserves Y and raises horizontal length");
        put(f.image,Fixture::movement+0x44,Vec3{re::ReNumericLimits<float>::quiet_NaN(),2,4});
        require(f.run().status==MovementMainStatus::returned&&re::re_isnan(read<Vec3>(f.image,Fixture::movement+0x44).x),"omni unordered magnitude keeps input");
    }
    {
        Fixture f;f.flag(0x3f3798);f.pointers[0x36a2f4]=Fixture::entity;f.type(Fixture::entity,"Door");
        require(f.run().status==MovementMainStatus::returned&&f.count(0x366c30)==2,"door knock two RPCs");
        require(read<float>(f.state.globals,0x3f701c)==1.1f,"door cooldown second time sample");
        f.log.clear();f.scalars[0x2e6240]=1.1f;
        require(f.run().status==MovementMainStatus::returned&&f.count(0x366c30)==0,"equal cooldown time does not fire");
        f.scalars[0x2e6240]=re::ReNumericLimits<float>::quiet_NaN();
        require(f.run().status==MovementMainStatus::returned&&f.count(0x366c30)==0,"unordered cooldown time does not fire");
    }
    {
        Fixture f;f.flag(0x3f31a8);f.predicates[0x2e89e4]=true;put(f.state.globals,0x3e4240,Address{Fixture::entity});
        put(f.image,Fixture::klass,Address{0x100d000});
        f.calls.method_info_3349ac=[&](re::ReStringView ns,re::ReStringView c,re::ReStringView m,int a,int b) {
            require(ns.empty()&&c=="RunConsoleCommand"&&m=="ClientRun"&&a==-1&&b==-1,"demo method selectors");return Fixture::klass;
        };
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3f7108),"demo begins");
        require(re::re_get<re::ReString>(f.last(0x2d2094).arguments[2])=="demo.record ","demo command preserves trailing space");
        require(f.run().status==MovementMainStatus::returned&&!f.isflag(0x3f7108),"demo stops");
        require(re::re_get<re::ReString>(f.last(0x2d2094).arguments[2])=="demo.stop","demo stop command");
    }
    {
        Fixture f;f.flag(0x3e9598);f.pointers[0x36a2f4]=Fixture::entity;f.type(Fixture::entity,"CodeLock");
        put(f.image,Fixture::entity+0x48,Fixture::item);put(f.image,Fixture::item+0x38,ReU32{42});
        put(f.image,Fixture::entity+0x1d8,ReU16{0x10});f.state.codes_218888={"1111","2222","3333"};
        f.state.tried_248e98={"1111"};
        require(f.run().status==MovementMainStatus::returned&&f.state.last_code_218868=="2222","code search skips tried");
        require(f.state.attempts_3e5e30[42]==1&&f.state.attempt_time_3e5df0[42]==2,"code attempt maps");
        require(read<ReU32>(f.state.globals,0x3e5de8)==1,"code counter increments");
        put(f.state.globals,0x3f2b0c,ReI32{-1});f.scalars[0x2e6240]=3;
        require(f.run().status==MovementMainStatus::returned&&f.state.attempts_3e5e30[42]==1,"negative code index unsigned clamps");
    }
    {
        Fixture f;f.flag(0x3f30b8);f.pointers[0x315924]=Fixture::transform;f.integers[0x36c79c]=0x1234u;
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3e5e70),"grass transition enabled");
        require(re::re_get<ReU32>(f.last(0x36cbe4).arguments[1])==(0x1234u^0x2000000u),"grass XOR mask");
        f.flag(0x3f30b8,false);f.pointers[0x315924]=0;
        require(f.run().status==MovementMainStatus::returned&&!f.isflag(0x3e5e70),"grass restoration clears latch even without camera");
    }
    {
        Fixture f;f.mode(0x3d8298,0x3f3b08);f.flag(0x3f2b08);
        f.pointers[0x2e069c]=Fixture::entity;f.pointers[0x3297f0]=Fixture::transform;
        put(f.state.globals,0x3e4240,Fixture::entity);
        put(f.image,Fixture::player+0x4e8,Fixture::item);put(f.image,Fixture::item+0x28,ReU32{});
        put(f.image,Fixture::item+0x30,Vec3{4,5,6});f.vectors[0x3691c0]={8,9,10};
        f.vectors[0x368b9c]={2,4,6};f.vectors[0x3747d4]={4,6,8};
        ReUSize midpoint_setters=0;
        f.on_effect=[&](Rva r,MovementMainArguments a) {
            if(r!=0x322580)return;
            ++midpoint_setters;
            require(a.size()==2&&re::re_get<Vec3>(a[0]).x==3&&re::re_get<Vec3>(a[0]).y==5&&
                re::re_get<Vec3>(a[0]).z==7&&re::re_get<float>(a[1])==0.01f,
                "midpoint setter retains vector/scalar arguments through action API");
        };
        f.pointers[0x369298]=0;
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3f2b08),"interactive anchor transition");
        require(midpoint_setters==1,"native ignored-return midpoint setter uses action API");
        require(read<Vec3>(f.state.globals,0x3f74f0).y==6.5f,"interactive lifted anchor");
        f.flag(0x3f3b08,false);f.flag(0x3d82a1,false);
        put(f.state.globals,0x3f74e8,9.0f);put(f.image,Fixture::movement+0x44,Vec3{9,9,9});
        require(f.run().status==MovementMainStatus::returned,"interactive post-disable recovery");
        require(read<Vec3>(f.image,Fixture::movement+0x44).x==0&&f.isflag(0x3f2b08),"interactive recovery zeros motion retains latch until expiry");
        require(re::re_get<Vec3>(f.last(0x375140).arguments[1]).y==6.5f,"interactive restores saved anchor");
    }
    {
        Fixture f;f.mode(0x3d82f8,0x3f3108);f.type(Fixture::entity,"ScientistNPC2");
        f.pointers[0x368a84]=Fixture::item;f.pointers[0x371464]=Fixture::weapon;
        f.pointers[0x37154c]=Fixture::entity;f.pointers[0x36b938]=0x100a000;f.pointers[0x372abc]=0x100b000;
        f.pointers[0x2e02b0]=Fixture::entity;f.pointers[0x2dfe64]=0x100c000;
        f.integers[0x37261c]=0x34b73d71u;
        put(f.image,Fixture::weapon+0x3ac,1.0f);put(f.image,0x100a000+0x40,20.0f);
        put(f.image,0x100c000,40.0f);put(f.image,0x100c000+4,0.0f);put(f.image,0x100c000+8,0.0f);
        f.vectors[0x368100]={1,0,0};f.vectors[0x369164]={1,1,1};f.vectors[0x368be8]={10,1,1};f.vectors[0x369790]={10,1,1};
        f.predicates[0x2e2320]=true;
        f.calls.prediction_2e2374=[](Address table,Vec3 origin,Vec3 target,Vec3) {
            require(table==0x3d8318&&origin.x==1&&target.x==10,"low velocity predictor arguments");return Vec3{1,0,0};
        };
        f.calls.raycast_2e8fac=[](Vec3,Vec3,float,ReU32,int) {return MovementMainRayHit{};};
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3e4238),"low velocity full trajectory accepts");
        require(read<float>(f.state.globals,0x3e6084)==1.5f&&read<Vec3>(f.state.globals,0x3d72e0).x==10,"low velocity scale and target commit");
        require(read<ReU32>(f.state.globals,0x3f2b18)==1&&f.state.low_velocity_tables.size()==1,"low velocity counter and cache");
        require(f.count(0x36b504)==0,"special velocity ID uses concrete plus-one reader");
        f.calls.prediction_2e2374={};f.predicates[0x2f824c]=false;
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3e4238),"concrete default prediction adapter accepts owned pool tables");
        f.calls.raycast_2e8fac={};
        require(f.run().status==MovementMainStatus::missing_boundary,"low velocity missing physics never accepts");
    }
    {
        Fixture f;f.keys[7]=true;put(f.state.globals,0x3f4438,ReI32{7});f.flag(0x3d7ec8);f.flag(0x3d8058);f.flag(0x3d7e78);
        f.pointers[0x2e02b0]=Fixture::entity;f.type(Fixture::entity,"ScientistNPC2");
        f.pointers[0x368a84]=Fixture::item;
        f.on_pointer=[&](Rva r,MovementMainArguments a) {
            if(r==0x3297f0)return re::re_get<Address>(a[0])==Fixture::entity?Fixture::transform:Address{};
            const auto i=f.pointers.find(r);require(bool(i),"fat pointer boundary");
            return **i;
        };
        f.vectors[0x369164]={1,1,1};f.vectors[0x368be8]={10,1,1};f.vectors[0x3747d4]={10,1,1};
        f.scalars[0x2dff68]=1;f.scalars[0x2e0198]=0;
        put(f.state.globals,0x3f40f8,ReI32{2});put(f.state.globals,0x3f3dd8,3.0f);
        f.predicates[0x2e2320]=true;
        f.calls.prediction_2e2374=[](Address,Vec3,Vec3,Vec3) {return Vec3{1,0,0};};
        require(f.run().status==MovementMainStatus::returned&&f.isflag(0x3e4239)&&f.isflag(0x3e5e79),"fat direct prediction accepts");
        require(!f.isflag(0x3f2b10)&&read<Vec3>(f.state.globals,0x3d72d0).y==1.05f,"fat mixed bone eye +05 and direct latch reset");
        require(f.state.directions_3f4af0.size()==2&&f.count(0x2dff68)==2,"fat points generated only after count change");
        f.predicates[0x2e2320]=false;
        const auto blocked=f.run();require(blocked.status==MovementMainStatus::missing_bytes&&blocked.boundary==0x2ef7d0,"native candidate index reads copied backing tail explicitly");
        require(!f.isflag(0x3e4239)&&!f.isflag(0x3e5e79),"blocked candidate clears previous success before bounds stop");
        f.state.candidate_backing_tail={{20,2,2},{30,3,3}};
        require(f.run().status==MovementMainStatus::returned,"candidate backing tail permits complete blocked scan");
    }
    {
        // [C] Distinct +34/+38 values catch swapped constructor arguments;
        // the format key retains its separate speed,+34,+38,fourth order.
        Fixture f;f.mode(0x3d82f8,0x3f3108);f.type(Fixture::entity,"ScientistNPC2");
        f.pointers[0x368a84]=Fixture::item;f.pointers[0x371464]=Fixture::weapon;
        f.pointers[0x37154c]=Fixture::entity;f.pointers[0x36b938]=0x100a000;f.pointers[0x372abc]=0x100b000;
        f.pointers[0x2e02b0]=Fixture::entity;f.integers[0x37261c]=0;
        put(f.image,Fixture::weapon+0x3ac,2.0f);put(f.image,0x100a000+0x40,20.0f);
        put(f.image,0x100b000+0x34,0.25f);put(f.image,0x100b000+0x38,1.5f);
        f.vectors[0x368100]={1,0,0};f.vectors[0x369164]={1,1,1};f.vectors[0x368be8]={10,1,1};f.vectors[0x369790]={10,1,1};
        f.predicates[0x2e2320]=true;
        f.calls.prediction_2e2374=[&](Address table,Vec3,Vec3,Vec3)->Vec3 {
            const auto& p=f.state.prediction_tables.at(table).parameters;
            require(re::re_bit_cast<ReU32>(p.speed)==0x426f3333u,"low velocity literal1.495 speed cap");
            require(p.drag==0.25f&&p.gravity_scale==1.5f,"low velocity constructor xmm3 drag/xmm2 gravity mapping");
            require(read<float>(f.state.globals,table+4)==0.25f&&read<float>(f.state.globals,table+8)==1.5f,"low velocity copied parameter offsets");
            require(read<ReU64>(f.state.globals,table-8)==entity_name_hash_2d6354("59.80/0.25/1.50/0.00"),"low velocity format order independent of physics roles");
            __builtin_trap();
        };
        const auto result=f.run();
        require(result.status==MovementMainStatus::missing_boundary&&result.boundary==0x2e2374,"physics mapping fixture reached predictor after full cache setup");
    }
    {
        Fixture f;f.keys[7]=true;put(f.state.globals,0x3f4438,ReI32{7});f.flag(0x3e7018);f.flag(0x3d7e78);
        f.pointers[0x368a84]=Fixture::item;f.pointers[0x3716e0]=Fixture::weapon;
        f.pointers[0x2e02b0]=Fixture::entity;f.type(Fixture::entity,"ScientistNPC2");
        put(f.image,Fixture::weapon+0x3f8,30.0f);
        f.vectors[0x368be8]={20,1,1};f.vectors[0x369164]={1,1,1};f.vectors[0x368100]={1,0,0};
        f.scalars[0x2dff68]=1;f.scalars[0x2e0198]=0;
        f.calls.raycast_2e8fac=[](Vec3,Vec3,float,ReU32,int) {return MovementMainRayHit{};};
        put(f.state.globals,0x3e6088,149.0f);
        require(f.run().status==MovementMainStatus::returned,"grenade solver full loop returns");
        require(f.count(0x2dff68)>3&&f.isflag(0x3f7022)&&!f.isflag(0x3e5e78),"grenade pitch search and failure latch");
        float expected=149;for(int i=0;i<40;++i)expected+=-0.05f;
        require(read<float>(f.state.globals,0x3e6088)==expected,"grenade repeated binary32 decrement");
        put(f.state.globals,0x3e6088,re::ReNumericLimits<float>::quiet_NaN());
        require(f.run().status==MovementMainStatus::returned&&re::re_isnan(read<float>(f.state.globals,0x3e6088)),"grenade unordered scan angle skips increment and150 reset");
    }

    {
        Fixture f;f.calls.effect={};const auto r=f.run();
        require(r.status==MovementMainStatus::missing_boundary&&r.boundary==0x2cbd24&&!r.original_called,"missing dispatch stops before original");
        require(read<ReU32>(f.state.globals,0x3f6f38)==3,"lazy bits remain set on reached boundary stop");
    }
    {
        Fixture f;f.flag(0x3f3a18);f.input.movement=0x2000000;
        const auto r=f.run();require(r.status==MovementMainStatus::missing_bytes&&r.boundary==0x324dd9&&!r.original_called,"missing pre-original movement bytes stop exactly");
        require(f.isflag(0x3f6f28),"pre-original latch mutation retained on bounds stop");
    }

    {
        Fixture f;f.flag(0x3f36f8);f.state.entities_2187d0={{Fixture::entity,0},{Fixture::item,0}};
        put(f.image,Fixture::item+0x48,Address{1});f.pointers[0x369764]=Fixture::transform;
        f.calls.string=[](Rva r,MovementMainArguments a) {require(r==0x369e70,"handcuff string getter");return re::re_to_string(re::re_get<Address>(a[0]));};
        f.calls.vector=[](Rva r,MovementMainArguments a) {
            if(r==0x368be8)return Vec3{re::re_get<Address>(a[0])==Fixture::entity?10.1f:10.9f,0,0};
            require(r==0x369164,"handcuff position getter");return Vec3{};
        };
        f.scalars[0x3666b0]=2.5f;f.predicates[0x36a1e4]=true;
        require(f.run().status==MovementMainStatus::returned,"handcuff target traversal");
        require(re::re_get<Address>(f.last(0x366c30).arguments[0])==Fixture::item,"handcuff integer distance tie selects later record");
        require(re::re_get<re::ReString>(f.last(0x366c30).arguments[1])=="RPC_ReqForceMountNearest","handcuff mount call");
    }
    {
        Fixture f;put(f.state.globals,0x3e4240,Fixture::entity);
        put(f.state.globals,0x3d6f00,Fixture::movement-Address{0xf1fc098});
        put(f.image,Fixture::movement,Fixture::klass);put(f.image,Fixture::klass+0xb8,Fixture::name);
        put(f.image,Fixture::name+0x20,Fixture::transform);put(f.image,Fixture::transform+0x30,Fixture::entity);
        put(f.image,Fixture::entity+0x18,ReI32{3});put(f.image,Fixture::entity+0x10,Fixture::item);
        put(f.image,Fixture::item+0x20,Fixture::weapon);put(f.image,Fixture::item+0x28,Fixture::klass);put(f.image,Fixture::item+0x30,Fixture::name);
        put(f.image,Fixture::weapon+0x58,ReI32{11});put(f.image,Fixture::klass+0x58,ReI32{22});put(f.image,Fixture::name+0x58,ReI32{33});
        put(f.image,0x100e000,Address{0x100f000});
        f.calls.method_info_3349ac=[](re::ReStringView,re::ReStringView,re::ReStringView,int,int) {return Address{0x100e000};};
        f.mode(0x3ef538,0x3f2f28);f.flag(0x3f2f78);f.predicates[0x2e89e4]=true;
        require(f.run().status==MovementMainStatus::returned,"craft workers replay");
        re::ReVector<re::ReString> commands;
        for(const auto& call:f.log)if(call.target==0x2d2094)commands.push_back(re::re_get<re::ReString>(call.arguments[2]));
        require(commands==re::ReVector<re::ReString>{"craft.fasttracktask 22","craft.canceltask 11","craft.canceltask 22","craft.canceltask 33"},"fast craft index-one and cancel-all traversal order");
        require(read<ReU32>(f.state.globals,0x3f4938)==3&&read<ReU32>(f.state.globals,0x3f4840)==3,"craft caches use independent bitfields");
    }

    {
        Fixture f;const auto r=replay_launch_aim_317c3c(f.image,f.state,0x5555,Fixture::player,f.calls);
        require(r.status==MovementMainStatus::returned&&f.count(0x368a84)==0,"launch PSilent gate precedes item getters");
    }
    {
        Fixture f;f.flag(0x3d7e78);f.flag(0x3d72a0);f.flag(0x3e5098);
        f.pointers[0x368a84]=Fixture::item;f.pointers[0x369298]=Fixture::transform;
        f.pointers[0x3716e0]=0;f.pointers[0x371eb8]=Fixture::weapon;f.pointers[0x2e02b0]=Fixture::entity;
        f.pointers[0x36b938]=0x100a000;f.pointers[0x372b30]=0x100b000;f.pointers[0x315a54]=0;
        f.vectors[0x369164]={1,1,1};f.vectors[0x368100]={1,0,0};f.vectors[0x369790]={10,1,1};
        put(f.image,Fixture::weapon+0x3ac,2.0f);put(f.image,0x100b000+0x3c,20.0f);
        put(f.image,0x100b000+0x34,0.25f);put(f.image,0x100b000+0x38,1.5f);
        const auto missing=replay_launch_aim_317c3c(f.image,f.state,0,Fixture::player,f.calls);
        require(missing.status==MovementMainStatus::missing_bytes&&missing.boundary==0x2ee714&&missing.missing_address==0x28,"launch uninitialized fourth format argument stops explicitly");
        f.state.launch_format_fourth=9.0;
        f.calls.prediction_2e2374=[](Address table,Vec3 start,Vec3 point,Vec3) {
            require(table==0x3d8318&&start.x==1.0f+1.0f/sample_sqrt_2e3c88(1.0f)&&point.x==10,"launch projectile prediction inputs");return Vec3{1,0,0};
        };
        f.calls.quaternion=[](Rva r,MovementMainArguments a) {
            if(r==0x3738cc)require(re::re_get<re::ReArray<float,4>>(a[0])[3]==1,"launch quaternion inverse input");
            else require(r==0x373c60,"launch rotation getter");
            return re::ReArray<float,4>{0,0,0,1};
        };
        const auto result=replay_launch_aim_317c3c(f.image,f.state,0,Fixture::player,f.calls);
        require(result.status==MovementMainStatus::returned&&result.snapshot_stores==1,"launch projectile orientation store");
        const auto q=read<Orientation>(f.image,Fixture::transform+0x5c);
        require(q.y>0.6f&&q.w>0.6f&&f.count(0x366ef0)==0,"launch projectile branch writes orientation even with AutoFire");
        require(f.state.prediction_tables.at(0x3d8318).parameters.qualification_distance==0,"launch constructor fourth zero is separate from format input");
        require(f.state.prediction_tables.at(0x3d8318).parameters.drag==0.25f&&
            f.state.prediction_tables.at(0x3d8318).parameters.gravity_scale==1.5f,"launch constructor xmm3 drag/xmm2 gravity mapping");
        require(read<float>(f.state.globals,0x3d831c)==0.25f&&read<float>(f.state.globals,0x3d8320)==1.5f&&
            read<ReU64>(f.state.globals,0x3d8310)==entity_name_hash_2d6354("40.00/0.25/1.50/9.00"),"launch native table offsets and independent format fourth");
    }
    {
        Fixture f;f.flag(0x3d7e78);f.flag(0x3d72a0);f.flag(0x3e5098);
        f.pointers[0x368a84]=Fixture::item;f.pointers[0x369298]=Fixture::transform;
        f.pointers[0x3716e0]=Fixture::weapon;f.pointers[0x371eb8]=0;f.pointers[0x2e02b0]=Fixture::entity;f.pointers[0x315a54]=0;
        f.type(Fixture::entity,"ScientistNPC2");
        f.vectors[0x369164]={};f.vectors[0x368100]={};f.vectors[0x369790]={};
        f.scalars[0x2dff68]=1;f.scalars[0x2e0198]=0;put(f.image,Fixture::weapon+0x3f8,0.453125f);
        const auto r=replay_launch_aim_317c3c(f.image,f.state,0,Fixture::player,f.calls);
        require(r.status==MovementMainStatus::returned&&f.count(0x366ef0)==1,"launch grenade AutoFire branch");
        require(re::re_bit_cast<ReU32>(re::re_get<float>(f.last(0x366ef0).arguments[4]))==0x4e7e0000u,"launch literal float RPC scalar is not integer or float one");
        f.flag(0x3e72e8);f.pointers[0x2e02b0]=0;put(f.state.globals,0x3effd8,Vec3{0,0,1.0e-20f});
        require(replay_launch_aim_317c3c(f.image,f.state,0,Fixture::player,f.calls).status==MovementMainStatus::returned&&f.count(0x366ef0)==2,"launch trap branch succeeds then invalid target returns");
    }
    {
        // [C] A real two-segment flight accrues gravity before selection.
        // Returned aiming direction must still use the selected INITIAL velocity.
        Fixture f;f.flag(0x3d7e78);f.flag(0x3d72a0);f.flag(0x3e5098);
        f.pointers[0x368a84]=Fixture::item;f.pointers[0x369298]=Fixture::transform;
        f.pointers[0x3716e0]=Fixture::weapon;f.pointers[0x371eb8]=0;f.pointers[0x2e02b0]=Fixture::entity;f.pointers[0x315a54]=0;
        f.type(Fixture::entity,"ScientistNPC2");
        f.vectors[0x369164]={};f.vectors[0x368100]={};f.vectors[0x369790]={0,0,1.5f};
        f.scalars[0x2dff68]=1;f.scalars[0x2e0198]=0;put(f.image,Fixture::weapon+0x3f8,30.0f);
        const auto r=replay_launch_aim_317c3c(f.image,f.state,0,Fixture::player,f.calls);
        require(r.status==MovementMainStatus::returned&&f.count(0x366ef0)==1,"nonzero grenade flight solves");
        const auto direction=re::re_get<Vec3>(f.last(0x366ef0).arguments[3]);
        require(direction.x==0&&direction.y==0&&direction.z>0.99f,"grenade returns selected initial velocity rather than integrated velocity");
        require(read<float>(f.state.globals,0x3e4254)>0,"grenade velocity regression reaches positive flight time");
    }
    {
        Fixture f;f.flag(0x3d7e78);f.flag(0x3d72a0);
        f.calls.pointer=[](Rva,MovementMainArguments)->Address{__builtin_trap();};
        const auto result=replay_launch_aim_317c3c(f.image,f.state,0,Fixture::player,f.calls);
        require(result.status==MovementMainStatus::missing_bytes&&result.boundary==0x369738,"typed game binding failure returns through launch controller");
    }

}
} // namespace rust_internal_re
