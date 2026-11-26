#include "interaction_workers.hpp"
#include "trajectory_cache_analysis.hpp"
#include "snapshot_bindings.hpp"
#include <cassert>
#include <tuple>

namespace rust_internal_re {
namespace {
constexpr Address local=0x101000, held=0x102000, weapon=0x103000, input=0x104000;
constexpr Address target=0x105000, transform_address=0x106000, hit=0x107000, magazine=0x108000;
constexpr Address inventory=0x109000, loot=0x10a000, container=0x10b000, items=0x10c000;
constexpr Address array=0x10d000, item=0x10e000, definition=0x10f000, related=0x110000, movement=0x111000;
struct Fixture {
    Snapshot memory{0x100000,std::vector<std::byte>(0x20000)};
    InteractionState state; InteractionConfig config; InteractionCalls calls;
    std::vector<InteractionCall> actions; std::vector<Orientation> rotations;
    std::map<Rva,std::size_t> calls_by_rva;
    bool key_down{true}; float time{1}; std::int32_t count{1};
    Fixture() {
        calls.object=[&](const InteractionCall& c)->Address {
            ++calls_by_rva[c.rva];
            switch(c.rva) {
            case 0x2e069c:return input;
            case 0x2dda9c:return local;
            case 0x368a84:return held;
            case 0x3721b4:case 0x371464:case 0x371e5c:case 0x371630:return weapon;
            case 0x37154c:case 0x372abc:return definition;
            case 0x369738:return input;
            case 0x2e02b0:case 0x36a2f4:return target;
            case 0x36c3b4:return magazine;
            case 0x2e6110:case 0x2e0cf0:case 0x368c60:return transform_address;
            case 0x369324:return inventory;
            case 0x373e4c:case 0x373dc8:case 0x373df4:return loot;
            case 0x3722a4:return container;
            case 0x3722f0:return item;
            case 0x369298:return related;
            case 0x3680d4:return movement;
            case 0x2ce5d8:return 0x112000;
            case 0x2ce5dc:return 0x113000;
            default:return 0;
            }
        };
        calls.predicate=[&](const InteractionCall& c) {
            ++calls_by_rva[c.rva];
            switch(c.rva) {
            case 0x2e5e4c:return key_down;
            case 0x2e0e9c:case 0x36bb58:case 0x36b494:case 0x2e2320:case 0x2e6340:case 0x36bacc:return true;
            default:return false;
            }
        };
        calls.integer=[&](const InteractionCall& c) {
            ++calls_by_rva[c.rva];
            if(c.rva==0x2e5d4c) return std::int32_t{2};
            if(c.rva==0x37224c||c.rva==0x372278) return count;
            if(c.rva==0x371604) return std::int32_t{0x12345678};
            return std::int32_t{};
        };
        calls.scalar=[&](const InteractionCall& c) {
            ++calls_by_rva[c.rva];
            switch(c.rva) {
            case 0x3666b0:return 1.0f;
            case 0x36942c:return 1.0f;
            case 0x2e6240:return time++;
            case 0x2e081c:case 0x2e0bf0:case 0x2e071c:return 0.02f;
            case 0x2dea4c:return 0.25f;
            default:return 0.0f;
            }
        };
        calls.vector=[&](const InteractionCall& c) {
            ++calls_by_rva[c.rva];
            if(c.rva==0x368be8||c.rva==0x369790) return Vec3{1,0,0};
            if(c.rva==0x3747d4) return Vec3{2,3,4};
            if(c.rva==0x374d60||c.rva==0x374bf8) return c.first+Vec3{10,20,30};
            return Vec3{};
        };
        calls.action=[&](const InteractionCall& c){actions.push_back(c);};
        calls.class_name_2e5a54=[](Address){return std::optional<std::string>{"BuildingBlock"};};
        calls.orientation_3739c4=[](Address){return Orientation{1,2,3,4};};
        calls.orientation.rotation_373c60=[&](Address){rotations.push_back({});return Orientation{0,0,0,1};};
        calls.orientation.inverse_3738cc=[](Orientation q){return q;};
        calls.allocate_hit_test=[](){return hit;};
        calls.argument_string=[](Address){return std::string{"DoStrikeAction"};};
        calls.trajectory_cache=[](float,float,float,float){return Address{0x114000};};
        calls.prediction_2e2374=[](Vec3,Vec3,Vec3,Address){return ProjectilePrediction{{0,0,1},false};};
        put(target+0x48,Address{1}); put(weapon+0x3b8,3.0f); put(weapon+0x304,0.2f);
        put(magazine+0x1c,std::int32_t{4});
        put(container+0x20,items); put(items+0x18,std::int32_t{1}); put(items+0x10,array); put(array+0x20,item);
        put(item+0x10,definition); put(item+0x30,std::int32_t{5}); put(item+0x88,Address{0xffffffff81234567});
        put(item+0xb8,std::int32_t{0x7f123456});
        put(loot+0x58,Address{0x123456789abcdef0}); put(definition+0x78,std::int32_t{10});
        put(local+0x600,Address{0x115000});
        put(projectile_field(0x3c),2.0f); put(projectile_field(0x40),10.0f); put(projectile_field(0x44),4.0f);
        put(movement+0x50,8.0f); put(definition+0x38,1.0f); put(definition+0x34,2.0f); put(definition+0x44,3.0f);
    }
    static Address projectile_field(Address offset) { return weapon+offset; }
    template<class T> void put(Address a,T v) { assert(memory.write(a,v)); }
    template<class T> T get(Address a) { const auto v=memory.read<T>(a); assert(v); return *v; }
    std::size_t number(Rva r) const { return static_cast<std::size_t>(std::count_if(actions.begin(),actions.end(),[&](auto c){return c.rva==r;})); }
    InteractionResult run() { return replay_automation_2e6b20(memory,state,config,calls); }
};
bool same(float a,float b) { return std::bit_cast<std::uint32_t>(a)==std::bit_cast<std::uint32_t>(b); }
}
void check_interaction_workers_reconstruction() {
    {
        Fixture f;std::map<Rva,Address> receivers;
        std::vector<Rva> order;std::string ammo="12 Gauge Slug";
        f.calls.object=[&](const InteractionCall& call){order.push_back(call.rva);return call.rva==0x2dda9c?local:receivers[call.rva];};
        f.calls.ammo_name_36b530=[&](Address p){assert(p==magazine);return ammo;};
        auto binding=bind_projectile_interaction_range(f.memory,f.calls);
        assert(binding.scalar(0x32bb60,held,0,0)==6);
        assert((order==std::vector<Rva>{0x2dda9c,0x371404,0x372100,0x371764,0x371f24,0x371328}));
        receivers[0x371f24]=magazine;assert(binding.scalar(0x32bb60,held,0,0)==10);
        ammo="Handmade Shell";assert(binding.scalar(0x32bb60,held,0,0)==0);
        ammo="12 Gauge Buckshot";assert(binding.scalar(0x32bb60,held,0,0)==3);
        receivers[0x371404]=weapon;receivers[0x372100]=weapon;
        assert(binding.scalar(0x32bb60,held,0,0)==15);
        order.clear();assert(binding.scalar(0x32bb60,0,0,0)==0&&order==std::vector<Rva>{0x2dda9c});
        ProjectileBoundaries fallback;fallback.scalar=[](Rva role,Address,std::int32_t i,std::int32_t n){assert(role==123);return float(i+n);};
        assert(bind_projectile_interaction_range(f.memory,f.calls,fallback).scalar(123,0,2,3)==5);
        bool stopped=false;try{(void)bind_projectile_interaction_range(f.memory,{}).scalar(0x32bb60,held,0,0);}
        catch(const SnapshotBindingFailure& e){stopped=e.site==0x2dda9c&&e.status==GameBaseStatus::missing_boundary;}assert(stopped);
    }
    // [C] NaN-sensitive comparison, exact thresholds and all six bone settings.
    assert(melee_bone_2e18bf(0,99)==53&&melee_bone_2e18bf(1,99)==23);
    assert(melee_bone_2e18bf(2,99)==29&&melee_bone_2e18bf(3,99)==17);
    assert(melee_bone_2e18bf(4,40)==20&&melee_bone_2e18bf(4,40.01f)==17);
    assert(melee_bone_2e18bf(4,15)==61&&melee_bone_2e18bf(5,15)==25);
    assert(melee_bone_2e18bf(5,91)==61&&melee_bone_2e18bf(5,60)==14);
    assert(melee_bone_2e18bf(4,std::numeric_limits<float>::quiet_NaN())==3);
    assert(same(interaction_range_2e091c(2,0,0,0.02f,0.03f,0.01f),3.1f));
    const auto identity=interaction_look_rotation_2e0ff0({0,0,1},{0,1,0});
    assert(identity.x==0&&identity.y==0&&identity.z==0&&identity.w>0.999f&&identity.w<1.001f);
    const auto back=interaction_look_rotation_2e0ff0({0,0,-1},{0,1,0});
    assert(back.x==0&&back.z==0&&back.w==0&&back.y>0.99f);
    {
        Fixture f; assert(f.run().status==InteractionStatus::returned); assert(f.actions.empty());
        f.calls.object={}; const auto r=f.run(); assert(r.status==InteractionStatus::missing_dependency&&r.dependency==0x2e069c);
    }
    {
        Fixture f; f.config.reload_3e5048=true; f.config.periodic_3e4f08=true;
        auto r=f.run(); assert(r.status==InteractionStatus::returned&&f.number(0x36bfdc)==1&&f.number(0x373d84)==1);
        assert(f.state.deadlines.at(0x3e5810)==302.0f);
        f.time=100; r=f.run(); assert(r.status==InteractionStatus::returned&&f.number(0x373d84)==1);
    }
    {
        Fixture f; f.config.auto_melee_3e4eb8=true; f.config.player_melee_3d7f68=true; f.config.player_3d72c0=target;
        const auto r=f.run(); assert(r.status==InteractionStatus::returned&&f.number(0x373d84)==1);
        // [C] Ordinary range comparison includes the +0.5 after query/cooldown.
        f.put(weapon+0x3b8,1.0f); f.actions.clear(); assert(f.run().status==InteractionStatus::returned); assert(f.number(0x373d84)==1);
        f.put(weapon+0x3b8,0.5f); f.actions.clear(); assert(f.run().status==InteractionStatus::returned); assert(f.number(0x373d84)==0);
    }
    {
        Fixture f; f.config.active_3d72a0=true; f.config.autofire_3e5098=true; f.config.psilent_3d7e78=true;
        f.config.rapid_3e50e8=true; f.config.aim_ready_3e4238=true; f.config.elapsed_3d72ec=0.9f; f.config.rapid_threshold_3e5318=0.5f;
        const auto object=f.calls.object; f.calls.object=[&](const InteractionCall& c){ if(c.rva==0x3721b4) return Address{}; return object(c); };
        const auto r=f.run(); assert(r.status==InteractionStatus::returned&&f.number(0x36bfdc)==4);
        for(const auto& c:f.actions) if(c.rva==0x36bfdc) assert(c.integer==1);
        f.actions.clear(); f.config.iteration_limit=2; const auto limited=f.run(); assert(limited.status==InteractionStatus::iteration_limit&&f.number(0x36bfdc)==2);
    }
    {
        // [C] The entire target/trajectory gate is concrete; only Physics.Raycast
        // and the final game visibility query are foreign-call results.
        Fixture f; f.config.active_3d72a0=true; f.config.autofire_3e5098=true; f.config.psilent_3d7e78=true;
        f.config.player_maximum_distance_3d8148=100; f.config.trajectory_3e5718=0x114000;
        f.put(0x114000,10.0f); f.put(0x114004,0.0f); f.put(0x114008,0.0f);
        const auto object=f.calls.object; f.calls.object=[&](const InteractionCall& c) {
            if(c.rva==0x3721b4||c.rva==0x371eb8) return Address{};
            if(c.rva==0x36b938) return definition;
            return object(c);
        };
        assert(f.run().status==InteractionStatus::returned&&f.number(0x373d84)==1);
        assert(f.calls_by_rva[0x2e8fac]==1&&f.calls_by_rva[0x368be8]==1);
        f.actions.clear();
        const auto predicate=f.calls.predicate; f.calls.predicate=[&](const InteractionCall& c) {
            if(c.rva==0x2e8fac) return true;
            return predicate(c);
        };
        assert(f.run().status==InteractionStatus::returned&&f.number(0x373d84)==0);
    }
    {
        // [C] Worker uses the shared instant predicate and concrete 32bb60 range
        // helper; elapsed .73 boundary controls mode-gated firing.
        Fixture f; f.config.active_3d72a0=true; f.config.autofire_3e5098=true; f.config.psilent_3d7e78=true;
        f.config.aim_ready_3e4238=true; f.config.instant_3d7fb8=true; f.config.mode_3e4ff8=true;
        f.config.elapsed_3d72ec=0.7f;
        const auto object=f.calls.object; f.calls.object=[&](const InteractionCall& c) {
            if(c.rva==0x3721b4) return Address{};
            if(c.rva==0x36b938) return definition;
            return object(c);
        };
        assert(f.run().status==InteractionStatus::returned&&f.number(0x373d84)==1);
        f.actions.clear(); f.config.elapsed_3d72ec=0.8f;
        assert(f.run().status==InteractionStatus::returned&&f.number(0x373d84)==0);
        f.config.elapsed_3d72ec=std::numeric_limits<float>::quiet_NaN();
        assert(f.run().status==InteractionStatus::returned&&f.number(0x373d84)==0);
    }
    {
        Fixture f; f.config.drop_loot_3e5188=true;
        assert(f.run().status==InteractionStatus::returned&&f.number(0x2e69d8)==1);
        assert(f.actions.back().integer==std::bit_cast<std::int32_t>(0x81234567u));
        assert(f.run().status==InteractionStatus::returned&&f.number(0x2e69d8)==1);
        f.key_down=false; (void)f.run(); f.key_down=true; (void)f.run(); assert(f.number(0x2e69d8)==2);
    }
    {
        Fixture f; f.config.transfer_3e4f58=true; f.config.transfer_categories_3e56f8[7]=true; f.config.close_loot_3e41f8=true;
        const auto r=f.run(); assert(r.status==InteractionStatus::returned&&f.number(0x2e6a84)==1&&f.number(0x2e5bec)==1);
        const auto move=*std::find_if(f.actions.begin(),f.actions.end(),[](auto c){return c.rva==0x2e6a84;});
        assert(move.self==0xffffffff81234567&&move.other==0x123456789abcdef0&&move.integer==-1&&move.integer2==5);
        Fixture reject; reject.config.transfer_3e4f58=true; reject.put(definition+0x58,std::int16_t{1});
        assert(reject.run().status==InteractionStatus::returned&&reject.number(0x2e6a84)==0);
    }
    {
        Fixture f; f.config.transfer_3e4f58=true;
        const auto object=f.calls.object; f.calls.object=[&](const InteractionCall& c){if(c.rva==0x373df4) return Address{}; return object(c);};
        assert(f.run().status==InteractionStatus::stale_stack_required);
    }
    {
        Fixture f; f.config.upgrade_gate_3e5471=true; f.config.grade_3e5368=3; f.config.old_grade_3e53b8=1;
        f.put(target+0x340,Address{0x116000}); f.put(0x116000+0x1f8,Address{0x117000}); f.put(target+0x370,std::int16_t{1});
        assert(f.run().status==InteractionStatus::returned&&f.number(0x2e480c)==1&&f.state.dispatch_bits_3e5828==0x30);
        assert(f.actions.back().integer==3&&f.actions.back().literal==0x2e5958);
    }
    {
        Fixture f; f.config.trade_3e4e68=true;
        f.calls.class_name_2e5a54=[](Address){return std::optional<std::string>{"ShopFront"};};
        assert(f.run().status==InteractionStatus::returned&&f.number(0x2e6a84)==1&&f.number(0x366c30)==1);
        assert(f.actions.front().integer2==3&&f.actions.back().literal==0x2e59d8);
        (void)f.run(); assert(f.number(0x366c30)==1);
    }
    {
        Fixture f; f.config.locks_3e51d8=true; f.key_down=false;
        assert(f.run().status==InteractionStatus::returned&&f.state.unlock_3e5ad9&&f.state.pickup_3e5ada);
        f.config.locks_3e51d8=false; f.state.lock_taken_3e5ad8=true; f.state.equipped_3e5adb=true;
        (void)f.run(); assert(!f.state.unlock_3e5ad9&&!f.state.pickup_3e5ada&&!f.state.lock_taken_3e5ad8&&!f.state.equipped_3e5adb);
    }
    {
        Fixture f; f.config.rage_3d7c98=true; f.config.psilent_3d7e78=true; f.config.active_3d72a0=true;
        f.config.increase_velocity_3d7ce8=true; f.config.speed_3d80a8=2;
        MovementMainState trajectory_state;
        f.calls=bind_interaction_trajectory_cache(f.memory,trajectory_state,f.calls);
        bool original_saw_temporary=false;
        const auto action=f.calls.action; f.calls.action=[&](const InteractionCall& c){
            if(c.rva==0x2d2094) {
                original_saw_temporary=f.get<float>(weapon+0x3c)==0&&f.get<float>(weapon+0x44)==0&&f.get<float>(movement+0x50)==0;
                assert(same(f.get<float>(weapon+0x40),1.495f*10));
            }
            action(c);
        };
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::returned&&r.original_called&&r.restored&&original_saw_temporary);
        assert(trajectory_state.prediction_tables.size()==1);
        assert(f.get<float>(weapon+0x3c)==2&&f.get<float>(weapon+0x40)==10&&f.get<float>(weapon+0x44)==4&&f.get<float>(movement+0x50)==8);
        assert(f.rotations.size()==2&&f.get<Orientation>(related+0x5c).w==4);
    }
    {
        Fixture f; f.config.player_melee_3d7f68=true; f.config.player_3d72c0=target; f.config.hit_chams_3d7dd8=true;
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::returned&&!r.original_called&&f.number(0x36bebc)==1&&f.number(0x36a464)==1);
        assert(f.get<Address>(hit+0x90)==target&&f.get<Address>(hit+0xd8)==transform_address&&f.get<std::uint8_t>(hit+0xb0)==1);
        assert(f.get<Vec3>(hit+0x78).x==2&&f.get<Vec3>(hit+0x5c).y==23&&f.get<Vec3>(hit+0xa4).z==34);
    }
    {
        Fixture f; f.config.ore_3d7f18=true; f.config.frozen_3d82a1=true; f.config.farm_target_3d72c8=target;
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::returned&&!r.original_called&&f.number(0x36bebc)==1);
        assert(same(f.get<Vec3>(hit+0x78).y,3.4f));
    }
    {
        // [C] Heli health chooses integer bone 63 for <=0 and unordered health.
        Fixture f; f.config.heli_melee_3d7d38=true; f.config.heli_3d72b8=target; f.config.elapsed_3d72ec=1;
        f.put(target+0x2e8,Address{0x116000}); f.put(0x116000+0x28,Address{0x117000});
        f.put(0x117000+0x24,std::numeric_limits<float>::quiet_NaN());
        std::int32_t selected=-1;
        const auto object=f.calls.object; f.calls.object=[&](const InteractionCall& c) {
            if(c.rva==0x368c60&&c.self==target) selected=c.integer;
            return object(c);
        };
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::returned&&!r.original_called&&selected==63&&f.number(0x36bebc)==1);
    }
    {
        // [C] Failed aim prediction still zeros movement during the original and restores it.
        Fixture f; f.config.rage_3d7c98=true; f.config.psilent_3d7e78=true; f.config.active_3d72a0=true;
        f.calls.prediction_2e2374=[](Vec3,Vec3,Vec3,Address){return ProjectilePrediction{{},true};};
        bool saw_zero=false;
        const auto action=f.calls.action; f.calls.action=[&](const InteractionCall& c) {
            if(c.rva==0x2d2094) saw_zero=f.get<float>(movement+0x50)==0;
            action(c);
        };
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::returned&&r.restored&&saw_zero&&f.rotations.size()==1);
    }
    {
        // [C] 2df5dc inequality includes NaN: fat-point replacement reaches predictor.
        Fixture f; f.config.rage_3d7c98=true; f.config.psilent_3d7e78=true; f.config.active_3d72a0=true;
        f.config.fat_3d8058=true; f.config.fat_point_3d72d0={std::numeric_limits<float>::quiet_NaN(),0,0};
        bool saw_nan=false;
        f.calls.prediction_2e2374=[&](Vec3,Vec3 p,Vec3,Address){saw_nan=std::isnan(p.x);return ProjectilePrediction{{},true};};
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::returned&&saw_nan);
    }
    {
        // [C] Refill path reads +b4/+d8, sends full int ID, then sets the latch.
        Fixture f; f.config.refill_3e4fa8=true;
        f.put(item+0xb4,0.0f); f.put(item+0xd8,100.0f);
        f.calls.integer=[&](const InteractionCall& c) {
            if(c.rva==0x37224c) return std::int32_t{1};
            if(c.rva==0x37261c) return std::int32_t{0x58c00601};
            if(c.rva==0x371604) return std::int32_t{0x12345678};
            return std::int32_t{};
        };
        const auto predicate=f.calls.predicate; f.calls.predicate=[&](const InteractionCall& c) {
            if(c.rva==0x372184||c.rva==0x369e1c) return true;
            return predicate(c);
        };
        assert(f.run().status==InteractionStatus::returned&&f.number(0x2e69d8)==1&&f.state.refill_latch_3e5814);
        assert(f.actions.back().literal==0x2e5618&&f.actions.back().integer==0x12345678);
        f.actions.clear(); f.state.refill_latch_3e5814=false;
        f.put(item+0xb4,std::numeric_limits<float>::quiet_NaN());
        assert(f.run().status==InteractionStatus::returned&&f.number(0x2e69d8)==0&&!f.state.refill_latch_3e5814);
    }
    {
        // [C] Armed lock latch takes KeyLock and clears its unlock latch.
        Fixture f; f.config.locks_3e51d8=true; f.state.unlock_3e5ad9=true;
        f.calls.class_name_2e5a54=[](Address){return std::optional<std::string>{"KeyLock"};};
        const auto object=f.calls.object; f.calls.object=[&](const InteractionCall& c) {
            if(c.rva==0x371384) return weapon;
            return object(c);
        };
        // The held-item probe prevents the later equip loop; no global pointer read
        // is reached because the second deadline is deliberately in the future.
        f.state.deadlines[0x3e5ae0]=1000;
        assert(f.run().status==InteractionStatus::returned&&f.number(0x366c30)==1);
        assert(f.actions.back().literal==0x2e52e8&&f.state.lock_taken_3e5ad8&&!f.state.unlock_3e5ad9);
    }
    {
        Fixture f; f.calls.object={};
        const auto r=f.run(); assert(r.status==InteractionStatus::missing_dependency&&r.dependency==0x2e069c);
        Fixture bounds; bounds.config.auto_melee_3e4eb8=true; bounds.config.player_melee_3d7f68=true;
        bounds.config.player_3d72c0=0x300000;
        const auto r2=bounds.run(); assert(r2.status==InteractionStatus::snapshot_bounds&&r2.dependency==0x2e0e9c);
    }
    {
        // [I] Analysis dependency failure after original retains preceding writes;
        // no callback result or restoration is fabricated.
        Fixture f; f.config.rage_3d7c98=true; f.calls.orientation.inverse_3738cc={};
        const auto r=replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
        assert(r.status==InteractionStatus::missing_dependency&&r.dependency==0x373d42&&r.original_called&&!r.restored);
        assert(f.get<float>(weapon+0x3c)==0&&f.get<float>(weapon+0x44)==0);
    }
    {
        Fixture f; f.config.force_return_3e4250=true;
        auto r=replay_interaction_forward_2e91fc(f.memory,f.state,f.config,0,f.calls);
        assert(r.status==InteractionStatus::returned&&r.worker_called&&r.value==1&&!r.original_called&&f.state.frame_3e5bc8==2);
        f.config.force_return_3e4250=false;
        r=replay_interaction_forward_2e91fc(f.memory,f.state,f.config,0,f.calls);
        assert(r.status==InteractionStatus::returned&&!r.worker_called&&r.original_called&&r.value==0.25f&&f.state.forwarding_bits_3e5bd8==3);
    }
}
} // namespace rust_internal_re
