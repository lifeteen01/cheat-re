#include "server_analysis.hpp"

namespace rust_internal_re {
namespace {
void require_server(bool value, re::ReStringView why) {
    if(!value)__builtin_trap();
}
bool close_server(float a, float b) {return re::re_fabsf(a-b)<0.0001f;}
MovementPhysics airborne_physics() {
    return {[](Vec3,bool,bool){return false;},[](Vec3,float){return ReU8(0);},
            [](Vec3,Vec3,float,ReU32,int){return false;}};
}
SpeedBoundaries fixed_speed(float speed) {
    return {[speed](float,float,float){return speed;},[](Vec3){return SpeedAdjustment{{},false};}};
}
void check_search() {
    const auto tables=build_candidate_tables_2e3aa4({32,0,0,0});
    require_server(tables.size()==3601,"lazy builder has 3601 angles");
    require_server(re::re_fabsf(candidate_angle_2e3e94(1800))<1e-12,"central candidate angle");
    auto ref=integrate_reference_prefix_2e2474({10,0,0},{},0);
    const auto direct=score_candidate_2e3074(ref,tables[1800],1800);
    require_server(direct.squared_miss==0&&direct.segment==10,"approximate reference magnitude lies beyond exact horizontal endpoint ten");
    const auto search=search_candidates_2e2474(ref,tables);
    require_server(search.status==CandidateSearchStatus::matched&&search.score.candidate==1800,
                   "coarse stride 51 and refinement find central exact candidate");
    const auto tail_ref=integrate_reference_prefix_2e2474({0,10,0},{},0);
    const auto tail=search_candidates_2e2474(tail_ref,tables);
    require_server(tail.status==CandidateSearchStatus::matched&&tail.score.candidate==3600&&tail.score.segment==0,
                   "final-tail fallback retains winning endpoint with zero segment");
    const auto first_ref=integrate_reference_prefix_2e2474({0,-10,0},{},0);
    const auto first=search_candidates_2e2474(first_ref,tables);
    require_server(first.status==CandidateSearchStatus::matched&&first.score.candidate==0&&first.score.segment==0,
                   "initial endpoint minimum uses first coarse-rise refinement");
    const auto prediction=predict_2e2474({10,0,0},{},0,tables,false,false);
    require_server(close_server(prediction.direction.x,1)&&prediction.direction.y==0&&prediction.lead_steps==7,
                   "direction normalization and qualification-adjusted lead");
    const auto instant=predict_2e2474({10,0,0},{1,0,0},0,tables,true,true);
    require_server(instant.selection.status==CandidateSearchStatus::matched&&instant.motion_after.x==0,
                   "predicate and instant-hit branch clears motion only after selection");
    const auto ordinary=predict_2e2474({10,0,0},{1,0,0},0,tables,false,true);
    require_server(ordinary.motion_after.x==1,"instant setting alone does not clear motion");
    require_server(search_candidates_2e2474(ref,{}).status==CandidateSearchStatus::empty,"empty search");
    require_server(search_candidates_2e2474(ref,re::ReSpan<const TrajectoryTable>(tables).subspan(0, 2)).status==CandidateSearchStatus::zero_stride,
                   "malformed tiny table is bounded instead of original zero-stride loop");
    const re::ReVector<TrajectoryTable> malformed(140);
    require_server(search_candidates_2e2474({},malformed).status==CandidateSearchStatus::invalid_boundary,
                   "coarse index equal to count is explicit instead of reading an invalid endpoint");
    bool invalid_interval=false;
    { (void)refine_candidates_2e38e4(ref,tables,INT32_MIN,0,INT32_MAX,0); }
    require_server(invalid_interval,"invalid refinement interval rejected before signed subtraction");
    auto moving=ref;
    moving.minimum_horizontal=0;moving.maximum_horizontal=1000;
    for(ReUSize i=0;i<320;++i)moving.horizontal[i]=100+float(i);
    const auto lagged=score_candidate_2e3074(moving,tables[1800],1800);
    require_server(lagged.segment==4&&close_server(lagged.squared_miss,9025),"qualification lag starts after index four");
    const auto reject=refine_candidates_2e38e4(ref,tables,0,0.02f,1,0.02f);
    require_server(reject.candidate==-1,"strict squared miss threshold rejects equality");
    const auto endpoint=refine_candidates_2e38e4(ref,tables,0,0.019f,1,0.019f);
    require_server(endpoint.candidate==0&&endpoint.segment==0,"tied endpoint retains caller score and zero segment");
    const auto right=refine_candidates_2e38e4(ref,tables,0,1,1,0);
    require_server(right.candidate==1&&right.segment==0,"right endpoint win also returns zero segment");
    // [I] Degenerate zero-length segments exercise the projection fallback.
    TrajectoryTable zero{};
    const auto miss=score_candidate_2e3074(ref,zero,7);
    require_server(miss.segment==0&&re::re_bit_cast<ReU32>(miss.squared_miss)==0x42c8005fu,"zero segment retains squared approximate reference magnitude");
    ref.vertical.fill(10000);
    require_server(search_candidates_2e2474(ref,tables).status==CandidateSearchStatus::no_match,"unreachable reference has no match");
}
void check_movement() {
    auto physics=airborne_physics();
    MovementBudgetInput p{{0,0,0},{0,1.9f,0},0.1f,true,false,false};
    MovementBudgetState s{};
    auto result=validate_movement_3226b0(s,p,physics);
    require_server(result.allowed&&result.accumulators_committed&&close_server(s.vertical_3e6090,1.9f),
                   "movement permits vertical equality at 1.9");
    require_server(s.airborne_3f2110&&s.anchor_3f2118.y==0,"airborne state and grounded anchor update");
    p.previous=p.current;p.current.y=2;
    result=validate_movement_3226b0(s,p,physics);
    require_server(!result.allowed&&!result.accumulators_committed&&close_server(s.vertical_3e6090,1.9f),
                   "rejected proposed vertical budget never commits");
    s={};p.previous={};p.current={6.49f,0,0};
    result=validate_movement_3226b0(s,p,physics);
    require_server(result.allowed&&close_server(s.horizontal_3e6094,6.49f),"movement commits horizontal budget below 6.5");
    const float accepted_horizontal=s.horizontal_3e6094;
    MovementBudgetState exact_boundary{};
    const auto approximate_boundary=validate_movement_3226b0(exact_boundary,
        MovementBudgetInput{{},{6.5f,0,0},0.1f,true,false,false},physics);
    require_server(!approximate_boundary.allowed&&re::re_bit_cast<ReU32>(approximate_boundary.proposed_horizontal)==0x40d0003cu&&exact_boundary.horizontal_3e6094==0,
                   "literal magnitude rejects ideal 6.5 displacement and leaves accumulator unchanged");
    p.previous=p.current;p.current.x+=0.1f;
    result=validate_movement_3226b0(s,p,physics);
    require_server(!result.allowed&&s.horizontal_3e6094==accepted_horizontal,"horizontal overflow preserves accumulator");
    s.timer_3f2128=0.5f;
    result=validate_movement_3226b0(s,p,physics);
    require_server(result.allowed&&result.vertical_limit==6.5f&&result.horizontal_limit==15,
                   "positive timer selects 6.5 and 15 allowances");
    p.current={1,-2,0};p.previous={};s.vertical_3e6090=20;s.horizontal_3e6094=20;
    result=validate_movement_3226b0(s,p,physics);
    require_server(result.allowed&&!result.tested_budgets&&s.vertical_3e6090==20,
                   "dominant downward movement skips budget tests and retains totals");
    p.state_36a364=true;
    result=validate_movement_3226b0(s,p,{});
    require_server(result.allowed&&!s.airborne_3f2110&&s.vertical_3e6090==0&&s.horizontal_3e6094==0,
                   "state query skips physics and resets totals");
    p.state_36a364=false;p.previous={2,4,6};p.current={4,6,8};s={};
    int calls=0;
    physics.query_32260c=[&](Vec3 v,bool a,bool b){++calls;require_server(v.x==3&&v.y==3&&v.z==7&&a&&b,"lowered midpoint physics arguments");return false;};
    physics.query_322580=[&](Vec3 v,float tolerance){++calls;require_server(v.y==5&&tolerance==0.01f,"midpoint mask arguments");return ReU8(0);};
    physics.query_32245c=[&](Vec3 a,Vec3 b,float radius,ReU32 mask,int mode) {
        ++calls;require_server(a.y==3.5f&&b.y==6.3f&&radius==0.4f&&mask==0x59a12101&&mode==1,"capsule arguments");return true;
    };
    result=validate_movement_3226b0(s,p,physics);
    require_server(calls==3&&result.allowed&&!s.airborne_3f2110,"physics sequence and positive capsule contact");
    calls=0;physics.query_32260c=[](Vec3,bool,bool){return true;};
    result=validate_movement_3226b0(s,p,physics);
    require_server(calls==0&&s.contact_timer_3f2134==0.3f,"contact bypass and timer store");
    s.timer_3f2128=1;s.vertical_3e6090=3;p.player_valid=false;
    result=validate_movement_3226b0(s,p,{});
    require_server(close_server(s.timer_3f2128,0.9f)&&s.vertical_3e6090==3&&!result.accumulators_committed,
                   "movement timer decrements before invalid-player return");
}
void check_speed_and_tick() {
    SpeedBudgetInput p{{},{1,0,0},1,true,false,false,false,false,false,false};
    SpeedBudgetState s{};
    auto result=validate_speed_32dbb0(s,p,fixed_speed(2));
    require_server(result.allowed&&re::re_bit_cast<ReU32>(s.accumulator_3f212c)==0xbf7fffb6u&&s.display_3e6098==s.accumulator_3f212c&&!result.adjustment_called,
                   "speed subtracts permitted distance then adds horizontal motion");
    s={0,3,99};p.current={};
    result=validate_speed_32dbb0(s,p,fixed_speed(1));
    require_server(!result.allowed&&s.accumulator_3f212c==2&&s.display_3e6098==2,
                   "speed rejects equality before displacement addition and updates display");
    s={0,0,99};p.current={2,0,0};
    result=validate_speed_32dbb0(s,p,fixed_speed(0));
    require_server(!result.allowed&&re::re_bit_cast<ReU32>(s.accumulator_3f212c)==0x40000025u&&result.adjustment_called,
                   "speed approximate magnitude exceeds ideal displacement two");
    s={0,100,99};p.current={};
    result=validate_speed_32dbb0(s,p,fixed_speed(0));
    require_server(!result.allowed&&s.accumulator_3f212c==4&&s.display_3e6098==99&&!result.display_written,
                   "speed failure persists clamped accumulator and leaves display above two");
    s={};s.timer_3f2130=2;p.current={0,100,0};
    result=validate_speed_32dbb0(s,p,fixed_speed(0));
    require_server(result.allowance==10&&result.clamp_extent==12&&re::re_bit_cast<ReU32>(result.measured_distance)==0x1f1edc1cu,
                   "timer grace and horizontal-only approximate zero magnitude");
    bool arguments_seen=false;
    SpeedBoundaries game{[&](float a,float b,float c){arguments_seen=a==1&&b==0&&c==0;return 1.0f;},
                         [](Vec3 v){require_server(v.x==0,"adjustment receives previous position");return SpeedAdjustment{{0.1f,9,0},true};}};
    p.current={10,0,0};p.force_speed_arguments=true;p.state_368468=true;p.state_368244=true;s={};
    result=validate_speed_32dbb0(s,p,game);
    require_server(arguments_seen&&re::re_bit_cast<ReU32>(result.measured_distance)==0x38180000u&&result.allowed,
                   "forced state arguments and positive-dot adjustment without normalization");
    p.player_valid=false;s.timer_3f2130=7;
    result=validate_speed_32dbb0(s,p,{});
    require_server(!result.evaluated&&s.timer_3f2130==7,"speed invalid-player return precedes timer mutation");
    const float nan=re::ReNumericLimits<float>::quiet_NaN();
    p.player_valid=true;p.current={};p.force_speed_arguments=false;s={0,nan,99};
    result=validate_speed_32dbb0(s,p,fixed_speed(0));
    require_server(result.allowed&&re::re_isnan(s.accumulator_3f212c)&&!result.display_written,
                   "COMISS unordered passes speed carry branch and suppresses display store");
    MovementBudgetState movement{};SpeedBudgetState speed{};
    TickLimiterInput tick{};
    tick.movement={{},{0,2,0},1,true,false,false};
    tick.speed={{},{2,0,0},1,true,false,false,false,false,false,false};
    tick.anti_violations=true;tick.option_0=true;tick.option_3=true;tick.correction_object_valid=true;
    int corrections=0;
    auto replay=replay_tick_limiters_32cea8(movement,speed,tick,airborne_physics(),fixed_speed(0),[&](Vec3 v,bool b){++corrections;require_server(v.y==0&&b,"correction arguments");});
    require_server(replay.restores==2&&replay.correction_calls==2&&corrections==2,
                   "tick independently restores both limiter failures");
    tick.anti_violations=false;tick.option_0=false;tick.option_3=false;tick.byte_3d8241=true;
    replay=replay_tick_limiters_32cea8(movement,speed,tick,airborne_physics(),fixed_speed(0),[](Vec3,bool){});
    require_server(replay.restores==1,"forced movement correction applies without anti-violations option");
    tick.preexisting_exemption=true;speed.accumulator_3f212c=100;
    replay=replay_tick_limiters_32cea8(movement,speed,tick,airborne_physics(),fixed_speed(0),{});
    require_server(replay.restores==0&&speed.accumulator_3f212c==4,"exempt tick still runs validators and mutates speed budget");
}
void check_float_branches() {
    const float nan=re::ReNumericLimits<float>::quiet_NaN();
    auto table=integrate_2e3734_from_velocity({32,0,0,nan},{32,0});
    require_server(table.first_qualifying_step==0,"unordered qualification threshold does not qualify");
    table=integrate_2e3734_from_velocity({32,0,0,0},{nan,0});
    require_server(table.maximum_horizontal==0&&re::re_isnan(table.horizontal[0])&&table.first_qualifying_step==0,
                   "unordered maximum and path distance do not update scalar fields");
    auto fallback=simulate_2e3734({32,0,0,0},3.141592653589793);
    require_server(fallback.horizontal[0]==0&&re::re_signbit(fallback.vertical[0]),"negative-x fallback copies sign of sine component");
    TrajectoryTable unordered{};
    unordered.horizontal.fill(nan);unordered.maximum_horizontal=nan;
    const auto score=score_candidate_2e3074({},unordered,0);
    require_server(score.squared_miss==re::ReNumericLimits<float>::max()&&score.segment==0,
                   "unordered segment errors do not replace initial best score");
    TickAnalysisInput p{};
    p.matching_caller=true;p.context_valid=true;p.manipulation_active=true;p.attempt_desync=true;
    p.elapsed_since_last_refresh=nan;
    require_server(analyze_tick_32cea8(p).refresh_timestamp,"tick MINSS selects one on NaN elapsed");
}
}
void check_server_reconstruction() {
    check_search();check_movement();check_speed_and_tick();check_float_branches();
}
} // namespace rust_internal_re
