#include "movement_analysis.hpp"

namespace rust_internal_re {
namespace {
void require_movement(bool condition, re::ReStringView message) {
    if(!condition)__builtin_trap();
}
bool same(Vec3 a, Vec3 b) {return a.x==b.x&&a.y==b.y&&a.z==b.z;}
bool near(float a,float b) {return re::re_fabsf(a-b)<0.0001f;}
// [I] All addresses below are numeric keys in an owned synthetic copy.
struct TickFixture {
    static constexpr Address player=0x100100,record=0x101000,field=0x101100;
    static constexpr Address transform=0x102000,object=0x102100,target=0x102200,state_object=0x102300;
    Snapshot image{0x100000,re::ReVector<ReByte>(0x4000)};
    MovementTickState state;
    MovementBudgetState movement;
    SpeedBudgetState speed;
    MovementTickInput input;
    MovementTickCalls calls;
    MovementPhysics physics{[](Vec3,bool,bool){return false;},[](Vec3,float){return ReU8(0);},
        [](Vec3,Vec3,float,ReU32,int){return false;}};
    SpeedBoundaries speeds{[](float,float,float){return 0.0f;},[](Vec3){return SpeedAdjustment{};}};
    Vec3 current{2,3,4};
    ReU32 original{1};
    unsigned original_calls{},time_calls{},clock2_calls{},transform_calls{},updates{},flag_calls{},masks{};
    unsigned resolutions{},dispatches{},record_calls{},object_calls{};
    re::ReVector<float> times{1,1,2};
    struct PositionCall {Address object;Vec3 position;};
    struct CorrectionCall {Address object;Vec3 position;Address player;bool copy;};
    re::ReVector<PositionCall> positions;
    re::ReVector<CorrectionCall> corrections;
    TickFixture() {
        input.argument=0x100080;input.game_assembly_3d6f00=0x70000000;
        input.return_address=input.game_assembly_3d6f00+0x3fe4a37;
        image.write(player+0x4e8,field);image.write(field+0x30,Vec3{10,20,30});
        image.write(record+0x30,Vec3{1,1,1});image.write(record+0x28,ReU32(0));
        calls.resolve_original_2ce5d8=[&](Rva r) {
            require_movement(r==0x3f0888&&(state.initialization_3f8470&1),"tick original lazy bit precedes resolution");
            ++resolutions;return Address(0x123456);
        };
        calls.initialize_dispatch_2cbd24=[&](Rva r,Address a) {
            require_movement(r==0x3f8480&&a==0x123456&&(state.initialization_3f8470&2),"tick dispatch arguments");++dispatches;
        };
        calls.original_2cb9fc=[&](Address a,Address b) {
            require_movement(a==0x123456&&b==input.argument,"original argument forwarding");++original_calls;return original;
        };
        calls.predicate_2e0e4c=[] {return false;};
        calls.context_2e069c=[] {return object;};calls.player_2dda9c=[] {return player;};
        calls.target_2e02b0=[] {return target;};
        calls.time_31581c=[&] {const auto n=time_calls++;return times[re::re_min<ReUSize>(n,times.size()-1)];};
        calls.time_2e6240=[&] {++clock2_calls;return 42.0f;};
        calls.mask_2e6a6c=[&] {return ++masks;};
        calls.query_2e2320=[](Vec3,Vec3,ReU32,float a,float b) {
            require_movement(a==0&&b==0,"special query zero scalar arguments");return true;
        };
        calls.record_36a2c8=[&](Address a) {require_movement(a==player,"record player");++record_calls;return record;};
        calls.transform_32cc9c=[&](Address a) {require_movement(a==player,"transform player");++transform_calls;return transform;};
        calls.correction_object_3680d4=[&](Address a) {require_movement(a==player,"correction getter player");++object_calls;return object;};
        calls.state_369400=[](Address a) {require_movement(a==player,"flags getter player");return state_object;};
        calls.point_368be8=[](Address a,int n) {
            require_movement(a==target&&(n==0x37||n==0x36),"target point indexes");
            return n==0x37?Vec3{7,8,9}:Vec3{70,80,90};
        };
        calls.position_369790=[](Address a) {require_movement(a==target,"target position");return Vec3{4,5,6};};
        calls.position_3747d4=[&](Address a) {require_movement(a==transform,"position transform");return current;};
        calls.position_374ec8=[&](Address a,Vec3 v) {positions.push_back({a,v});};
        calls.correction_32a9f8=[&](Address a,Vec3 v,Address b,bool copy) {corrections.push_back({a,v,b,copy});};
        calls.flags_372c1c=[&](Address a,int n) {require_movement(a==state_object&&n==0x10,"flag arguments");++flag_calls;};
        calls.update_36ace0=[&](Address a) {require_movement(a==player,"update player");++updates;};
    }
    MovementTickResult run() {return replay_movement_tick_32cea8(image,state,movement,speed,input,calls,physics,speeds);}
};

void check_tick_guards_and_timing() {
    {TickFixture f;f.original=0x100;--f.input.return_address;
     const auto r=f.run();
     require_movement(!r.value&&!r.matching_caller&&!r.refreshed&&f.time_calls==0&&f.original_calls==1,
                      "nonmatching caller preserves low-byte boolean after original");
     f.run();require_movement(f.resolutions==1&&f.dispatches==1,"tick lazy caches survive calls");}
    {TickFixture f;f.calls.predicate_2e0e4c=[] {return true;};const auto r=f.run();
     require_movement(r.refreshed&&r.value&&f.time_calls==1&&f.clock2_calls==1&&f.transform_calls==0,
                      "predicate bypass refreshes both clocks without movement reads");}
    for(const float elapsed:{-2.0f,0.749f,0.75f,2.0f}) {
        TickFixture f;f.times={elapsed,elapsed,9};f.state.manipulation_3d72a0=true;f.input.should_attempt_desync=true;
        const auto r=f.run();const bool early=elapsed<0.75f;
        require_movement((!r.refreshed)==early&&r.value!=early,"strict desync timing boundary");
        require_movement(r.clamped_elapsed==(elapsed<0?0:elapsed>1?1:elapsed),"clamped elapsed literal limits");
        require_movement(r.raw_elapsed==elapsed,"unclamped elapsed remains separate");
    }
    {TickFixture f;f.times={2,8,9};const auto r=f.run();
     require_movement(r.limiter_reached&&r.clamped_elapsed==1&&r.raw_elapsed==8&&
                      same(f.state.velocity_3e6060,{0.125f,0.25f,0.375f}),"velocity uses second raw timer read");
     require_movement(f.state.refreshed_3f2124==9&&f.state.refreshed_3f81c4==42,"normal refresh writes");}
    {TickFixture f;const float nan=re::ReNumericLimits<float>::quiet_NaN();f.times={nan,nan,9};
     const auto r=f.run();require_movement(r.clamped_elapsed==1&&re::re_isnan(r.raw_elapsed)&&
         re::re_isnan(f.state.velocity_3e6060.x),"MINSS NaN selects upper source; raw NaN survives");}
    {TickFixture f;f.current={1,1,1};f.times={0,0,9};const auto r=f.run();
     require_movement(r.refreshed&&!r.limiter_reached&&re::re_isnan(f.state.velocity_3e6060.x),
                      "equal position skips limiters AFTER zero-time velocity division");}
    {TickFixture f;f.current.x=re::ReNumericLimits<float>::quiet_NaN();const auto r=f.run();
     require_movement(r.limiter_reached,"unordered position comparison enters limiter tail");}
    {TickFixture f;f.calls.player_2dda9c=[] {return Address(0);};const auto r=f.run();
     require_movement(r.refreshed&&f.transform_calls==0,"invalid player refreshes");}
}

void check_freeze_and_interactive() {
    {TickFixture f;f.input.byte_3f2b08=true;f.state.frozen_position_3f81b8={4,5,6};const auto r=f.run();
     require_movement(!r.value&&!r.refreshed&&f.corrections.size()==1&&f.corrections[0].copy&&
                      same(f.positions[0].position,{4,5,6}),"stored-position correction returns without refresh");}
    {TickFixture f;f.input.byte_3f2b08=true;const auto r=f.run();
     require_movement(!r.value&&!r.refreshed&&f.object_calls==0&&f.positions.empty(),"zero stored vector skips correction");}
    {TickFixture f;f.state.frozen_3d82a1=true;const auto r=f.run();
     require_movement(!r.value&&!r.refreshed&&f.positions.size()==2&&f.updates==1&&
         same(f.state.frozen_position_3f81b8,f.current)&&f.state.previous_frozen_3f8560,
         "freeze captures current once then sets/update/restores");}
    {TickFixture f;f.state.frozen_3d82a1=true;f.state.frozen_position_3f81b8={9,8,7};
     f.state.initialization_3f8470|=4;f.state.previous_frozen_3f8560=true;
     f.calls.position_3747d4=[&](Address) {f.state.frozen_3d82a1=false;return f.current;};
     // [I] A callback can change the global between native reads, as in the source.
     const auto r=f.run();require_movement(r.refreshed&&same(f.state.frozen_position_3f81b8,{}),
         "freeze-off clears stored vector before transition block");}
    {TickFixture f;f.state.interactive_3efb41=true;const auto r=f.run();
     require_movement(!r.value&&!r.refreshed&&f.state.previous_interactive_3f81a0&&
         same(f.state.anchor_3f81a8,f.current)&&same(f.state.interactive_start_3f83f8,f.current)&&
         f.state.interactive_positions_218960.size()==1&&f.flag_calls==1&&f.updates==1&&f.positions.size()==2,
         "interactive rising edge anchors/appends/flags/update/restores");
     require_movement(near(f.state.teleport_distance_3ed6b8,5),"teleport distance clamp at anchor");}
    {TickFixture f;f.state.interactive_3efb41=f.state.previous_interactive_3f81a0=true;
     f.state.anchor_3f81a8={1,3,1};f.state.interactive_positions_218960.push_back({2,3,4});f.current={2.1f,3,4};
     f.run();require_movement(f.state.interactive_positions_218960.size()==1,"sub-half-unit list spacing");
     f.current={2.6f,3,4};f.run();require_movement(f.state.interactive_positions_218960.size()==2,
         "over-half-unit list spacing");}
    {TickFixture f;f.state.previous_interactive_3f81a0=true;
     f.state.interactive_positions_218960={{1,2,3},{4,5,6}};
     const auto r=f.run();require_movement(!r.refreshed&&f.updates==2&&f.flag_calls==2&&
         r.interactive_replays==2&&f.state.interactive_positions_218960.empty()&&
         f.state.previous_interactive_3f81a0,"nonempty falling edge replays/clears before latch update");
     const auto next=f.run();require_movement(next.refreshed&&!f.state.previous_interactive_3f81a0,
         "next empty falling edge finally updates previous latch");}
    {TickFixture f;f.state.previous_interactive_3f81a0=true;f.state.interactive_positions_218960={{1,2,3}};
     f.calls.update_36ace0=[&](Address) {++f.updates;if(f.updates==1)f.state.interactive_positions_218960.push_back({4,5,6});};
     const auto r=f.run();require_movement(r.interactive_replays==2,"list end is re-read after callback growth");}
    {TickFixture f;f.state.previous_interactive_3f81a0=true;f.state.interactive_positions_218960={{1,2,3}};
     f.input.replay_limit=1;f.calls.update_36ace0=[&](Address) {f.state.interactive_positions_218960.push_back({4,5,6});};
     const auto r=f.run();require_movement(r.status==MovementReplayStatus::replay_limit&&!r.refreshed,
         "explicit analysis limit stops callback-grown replay retaining partial state");}
}

void check_special_teleport() {
    {TickFixture f;f.input.special_teleport=true;f.state.manipulation_3d72a0=true;f.input.pierce=true;
     re::ReVector<re::RePair<Vec3,Vec3>> queries;
     f.calls.query_2e2320=[&](Vec3 a,Vec3 b,ReU32 mask,float x,float y) {
         require_movement(mask==queries.size()+1&&x==0&&y==0,"special mask call ordering");
         queries.push_back({a,b});return true;
     };
     const auto r=f.run();require_movement(f.state.special_positions_248eb8.size()==25&&queries.size()==27&&
         near(queries.front().first.y,21.7f)&&near(queries[24].first.y,26.5f),"25 candidates at 0.2 increments plus 1.5 query lift");
     require_movement(same(queries[25].first,{10,26.5f,30})&&same(queries[25].second,{7,82.05f,9})&&
         same(queries[26].first,{7,82.05f,9})&&same(queries[26].second,{7,80.05f,9}),"pierce endpoint uses point55 XZ and point54 Y plus 0.05 and 2");
     require_movement(r.special_replays==25&&f.corrections.size()==25&&f.updates==26&&f.flag_calls==25&&
         f.state.special_3f81c8&&f.state.flag_3f8559&&f.state.counter_3f855c==0,"special success replay and final update");
     for(const auto& v:f.corrections)require_movement(!v.copy&&v.object==TickFixture::object&&v.player==TickFixture::player,
         "special correction uses captured correction object and false fourth argument");}
    {TickFixture f;f.input.special_teleport=true;f.state.manipulation_3d72a0=true;
     unsigned queries=0;f.calls.query_2e2320=[&](Vec3,Vec3,ReU32,float,float) {return ++queries<=25;};
     f.state.flag_3f8558=true;f.run();require_movement(queries==26&&!f.state.special_3f81c8&&!f.state.flag_3f8558&&
         f.corrections.empty(),"first endpoint obstruction skips second query and clears only failure flag");}
    {TickFixture f;f.input.special_teleport=true;f.state.special_3f81c8=f.state.flag_3f8558=f.state.flag_3f8559=true;
     f.state.special_positions_248eb8={{1,2,3}};f.run();require_movement(f.state.special_positions_248eb8.empty()&&
         !f.state.special_3f81c8&&!f.state.flag_3f8558&&!f.state.flag_3f8559,"inactive manipulation clears special state/list");}
    {TickFixture f;f.input.special_teleport=true;f.state.manipulation_3d72a0=true;
     f.calls.record_36a2c8=[](Address) {return Address(0);};
     const auto r=f.run();require_movement(r.special_replays==25,"invalid candidate record bypasses movement validation");}
    {TickFixture f;f.input.special_teleport=true;f.state.manipulation_3d72a0=true;
     f.state.special_3f81c8=f.state.flag_3f8559=true;const auto r=f.run();
     require_movement(f.masks==25&&r.special_replays==0&&f.updates==0&&
         f.state.special_positions_248eb8.size()==25,"latched special still rebuilds candidates but skips target queries/replay/final update");}
    {TickFixture f;f.input.special_teleport=true;f.state.manipulation_3d72a0=true;
     f.calls.correction_object_3680d4=[](Address) {return Address(0);};const auto r=f.run();
     require_movement(r.special_replays==0&&f.state.special_3f81c8&&f.state.flag_3f8559&&f.updates==1,
         "invalid correction object still commits special latch and final update");}
    {TickFixture f;f.input.special_teleport=true;f.state.special_3f81c8=f.state.flag_3f8559=true;
     f.image.write(TickFixture::player+0x4e8,Address(0));f.run();
     require_movement(f.state.special_3f81c8&&f.state.flag_3f8559&&f.masks==0,
         "invalid player+4e8 skips special state reset");}
    {TickFixture f;f.input.special_teleport=true;f.state.manipulation_3d72a0=true;
     f.input.limiter.movement.player_valid=true;f.input.limiter.movement.state_36a364=false;
     f.run();require_movement(f.state.special_positions_248eb8.empty(),"candidate validation failure prevents list insertion");}
}

void check_limiter_integration() {
    {TickFixture f;f.current={30,30,30};f.input.limiter.movement.player_valid=true;f.input.limiter.speed.player_valid=true;
     f.input.limiter.anti_violations=f.input.limiter.option_0=f.input.limiter.option_3=true;
     f.calls.correction_32a9f8=[&](Address a,Vec3 v,Address b,bool copy) {
         require_movement(same(*f.image.read<Vec3>(TickFixture::record+0x30),{1,1,1}),"record restore precedes correction callback");
         f.corrections.push_back({a,v,b,copy});
     };
     const auto r=f.run();require_movement(r.limiter&&r.limiter->restores==2&&r.snapshot_stores==4&&
         f.corrections.size()==2&&f.object_calls==2,"both independent failed limiters restore and lazily get correction object");}
    {TickFixture f;f.image.write(TickFixture::record+0x28,ReU32(9));
     f.input.limiter.movement.player_valid=true;f.input.limiter.speed.player_valid=true;
     f.movement.horizontal_3e6094=8;f.movement.vertical_3e6090=4;f.speed.timer_3f2130=8;f.speed.accumulator_3f212c=7;
     const auto r=f.run();require_movement(r.limiter_reached&&r.limiter->speed.evaluated&&f.speed.timer_3f2130==0&&
         f.speed.accumulator_3f212c==0&&f.movement.horizontal_3e6094==0&&f.movement.vertical_3e6090==0,
         "nonzero record+28 resets accumulators AFTER limiter evaluation");}
    {TickFixture f;f.calls.record_36a2c8=[](Address) {return Address(0x200000);};
     const auto r=f.run();require_movement(r.status==MovementReplayStatus::snapshot_bounds&&!r.refreshed,
         "numeric range validity does not authorize reads outside owned snapshot");}
}

void check_collider() {
    Snapshot image(0x100000,re::ReVector<ReByte>(0x1000));
    image.write(0x100100,Address(0xabcdef));image.write(0x100108,Address(0xabcdef01));image.write(0x100110,Address(0xabcdef02));
    ColliderDetourState s;ColliderDetourInput p{0x100200,0x100300,0x100400,false,true,false};
    ColliderDetourCalls c;
    Address captured=0x100800;unsigned captures=0,originals=0,resolutions=0,dispatches=0;
    re::ReVector<bool> triggers;re::ReVector<float> radii;
    c.capture_322ef8=[&](Address a) {require_movement(a==p.object,"collider capture argument");++captures;return captured;};
    c.resolve_original_2ce5d8=[&](Rva r) {require_movement(r==0x3f08f8&&(s.initialization_3f24a0&1),"collider original lazy bit");return Address(0x1234);};
    c.initialize_dispatch_2cbd24=[&](Rva slot,Address target_address) {
        require_movement((slot==0x3f24b0&&target_address==0x1234)||
            (slot==0x3f2590&&target_address==0xabcdef)||
            (slot==0x3f2680&&target_address==0xabcdef01)||
            (slot==0x3f2760&&target_address==0xabcdef02),"collider dispatch cache and resolved target pairing");
        ++dispatches;
    };
    c.original_2cba50=[&](Address a,Address b,Address d,Address e) {
        require_movement(a==0x1234&&b==p.object&&d==p.second&&e==p.third&&captures==originals+1,"capture precedes original forwarding");
        ++originals;captured=0x100900;
    };
    c.resolve_method_3349ac=[&](ColliderMethod m,ReI32 a,ReI32 b) {
        require_movement(a==-1&&b==-1,"literal metadata selectors");++resolutions;
        return Address(m==ColliderMethod::set_is_trigger?0x100100:m==ColliderMethod::shrink_radius?0x100108:0x100110);
    };
    c.trigger_3214f4=[&](Address a,Address b,bool v) {
        require_movement(a==0xabcdef&&b==(originals==1?0x100800:0x100900),"MethodInfo dereference and pre-original captured collider");
        triggers.push_back(v);
    };
    c.radius_32225c=[&](Address a,Address b,float v) {
        require_movement(a==(v==0.38f?0xabcdef01:0xabcdef02)&&b==(originals==1?0x100800:0x100900),"radius dispatch target/captured object");
        radii.push_back(v);
    };
    auto r=replay_collider_322aec(image,s,p,c);
    require_movement(r.radius_changed&&s.radius_latch_3f2668&&!triggers.back()&&radii.back()==0.38f&&
         s.initialization_3f24a0==0x3f,"fly without smooth latch shrinks radius");
    p.fly_3efa81=false;r=replay_collider_322aec(image,s,p,c);
    require_movement(r.radius_restored&&!s.radius_latch_3f2668&&radii.back()==0.5f&&s.initialization_3f24a0==0xff,
         "leaving shrink branch restores literal 0.5 through separate lazy cache");
    r=replay_collider_322aec(image,s,p,c);
    require_movement(!r.radius_changed&&!r.radius_restored&&radii.size()==2&&resolutions==3&&dispatches==4,
         "restoration runs once; all metadata caches persist");
    p.smooth_flyhack_3f2488=true;p.fly_3efa81=true;s.smooth_latch_3ef841=true;s.radius_latch_3f2668=true;
    r=replay_collider_322aec(image,s,p,c);
    require_movement(triggers.back()&&r.radius_restored&&s.smooth_latch_3ef841,"smooth latch enables trigger and restoration");
    p.smooth_flyhack_3f2488=false;p.frozen_3d82a1=true;
    r=replay_collider_322aec(image,s,p,c);
    require_movement(triggers.back()&&!s.smooth_latch_3ef841&&r.radius_changed,"disabled smooth clears shared latch; frozen independently forces trigger");
    captured=0;s.smooth_latch_3ef841=true;const auto before=radii.size();
    r=replay_collider_322aec(image,s,p,c);
    require_movement(r.original_called&&!r.trigger_called&&s.smooth_latch_3ef841&&radii.size()==before,
         "invalid captured collider returns after original without changing latches");
    ColliderDetourState fault;
    c.resolve_method_3349ac=[](ColliderMethod,ReI32,ReI32) {return Address(0x500000);};
    captured=0x100900;r=replay_collider_322aec(image,fault,p,c);
    require_movement(r.status==MovementReplayStatus::snapshot_bounds&&r.original_called&&
         (fault.initialization_3f24a0&4)&&!(fault.initialization_3f24a0&8),"metadata-copy failure retains resolution bit and prior original side effect");
}
}

void check_movement_reconstruction() {
    check_tick_guards_and_timing();check_freeze_and_interactive();
    check_special_teleport();check_limiter_integration();check_collider();
}
} // namespace rust_internal_re
