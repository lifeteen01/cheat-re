#include "server_analysis.hpp"
namespace rust_internal_re {
namespace {
// [C] Constants at RVA 0x28db18 and 0x28dadc, both predictor routines.
constexpr float gravity=9.81f;
constexpr float dt=1.0f/32.0f;
// [C] Scalar SSE helpers: 0x2e1270 MAXSS selects its source on equality/NaN;
// [C] 0x2e5a44 branches on ordered greater, then MINSS upper,value.
float max_2e1270(float first, float second) { return second>first?second:first; }
float clamp_2e5a44(float value, float lower, float upper) {
    if(lower>value)return lower;
    return upper<value?upper:value;
}
// [C] JB after COMISS also branches on unordered; JA/JBE correspond to > / !(>).
bool below_or_unordered(float a, float b) { return !(a>=b); }
// [C] The magnitude helper sums x*x + y*y + z*z (0x2e0ee8).
float magnitude3(Vec3 v) { return sample_sqrt_2e3c88((v.x*v.x+v.y*v.y)+v.z*v.z); }
}

// [C] 0x2e3734..0x2e37be: float angle, Sin/Cos, scale and negative-x fallback.
// [C] 0x2e33c0 with mask 0x28db60 is magnitude/sign selection.
// [I] std::sin/cos represent the resolved game math calls; bit-identical library results are unverified.
TrajectoryTable simulate_2e3734(const TrajectoryParameters& p, double angle_radians) {
    const float a=static_cast<float>(angle_radians);
    Vec2 velocity{re::re_cosf(a)*p.speed,re::re_sinf(a)*p.speed};
    if(velocity.x<0)velocity={0,re::re_copysignf(p.speed,velocity.y)};
    return integrate_2e3734_from_velocity(p,velocity);
}

// [C] 0x2e37c7..0x2e38c5, starting with already constructed velocity.
// [I] Parameter names are semantic labels. [U] Exact game math-library behavior,
// [U] signaling-NaN exceptions and the host floating-point environment are unverified.
TrajectoryTable integrate_2e3734_from_velocity(const TrajectoryParameters& p, Vec2 velocity) {
    TrajectoryTable table{};
    Vec2 position{};
    float qualifying_elapsed=0,qualifying_distance=0;
    const float gravity_step=(p.gravity_scale*gravity)*dt;
    for(ReU32 n=0;n<320;++n) {
        const Vec2 step=velocity*dt;
        if(table.first_qualifying_step==0) {
            qualifying_elapsed+=dt;
            qualifying_distance+=length(step);
            if(qualifying_elapsed>=0.1f && qualifying_distance>=p.qualification_distance)
                table.first_qualifying_step=n+1;
        }
        position=position+step;
        velocity.y-=gravity_step;
        const Vec2 drag_step=(velocity*p.drag)*dt;
        velocity=velocity-drag_step;
        table.horizontal[n]=position.x;
        table.vertical[n]=position.y;
        if(position.x>table.maximum_horizontal)table.maximum_horizontal=position.x;
    }
    return table;
}

// [C] Integration prefix 0x2e24f5..0x2e2593; search is translated below.
// [C] Horizontal samples are length(Vec2(position.x,position.z)); vertical is position.y.
ReferenceSamples integrate_reference_prefix_2e2474(Vec3 position, Vec3 velocity, ReU8 scale) {
    ReferenceSamples samples{};
    samples.minimum_horizontal=100000000.0f;
    samples.maximum_horizontal=-100000000.0f;
    const float gravity_step=(float(scale)*gravity)*dt;
    for(ReUSize n=0;n<320;++n) {
        const float horizontal=length(Vec2{position.x,position.z});
        samples.horizontal[n]=horizontal;
        samples.vertical[n]=position.y;
        if(horizontal<samples.minimum_horizontal)samples.minimum_horizontal=horizontal;
        if(horizontal>samples.maximum_horizontal)samples.maximum_horizontal=horizontal;
        position=position+(velocity*dt);
        velocity.y-=gravity_step;
    }
    return samples;
}

// [C] 0x2e3e94..0x2e3eb4, constants read directly at 0x28db00/08/10.
double candidate_angle_2e3e94(ReI32 index) {
    return (double(index)*3.141592653589793)/3600.0-1.5707963267948966;
}

// [C] 0x2e3aa4..0x2e3aee allocates 0xe11 records and fills indices 0..0xe10.
re::ReVector<TrajectoryTable> build_candidate_tables_2e3aa4(const TrajectoryParameters& p) {
    re::ReVector<TrajectoryTable> tables;
    tables.reserve(3601);
    for(ReI32 i=0;i<=3600;++i)tables.push_back(simulate_2e3734(p,candidate_angle_2e3e94(i)));
    return tables;
}

// [C] 0x2e3074..0x2e3284: binary range pruning and closest point on each segment.
// [I] Array indices replace numeric pointers. Binary searches preserve the observed
// [I] ordered predicates even on malformed/nonmonotonic offline data.
CandidateScore score_candidate_2e3074(const ReferenceSamples& ref, const TrajectoryTable& candidate,
                                     ReI32 index) {
    int begin=0,end=320;
    if(candidate.maximum_horizontal>=10.0f) {
        int count=320;
        while(count>0) {
            const int half=count/2,mid=begin+half;
            if(ref.minimum_horizontal>candidate.horizontal[ReUSize(mid)]) {
                begin=mid+1;count-=half+1;
            } else count=half;
        }
        if(begin>0)--begin;
        int upper=begin;count=320-begin;
        while(count>0) {
            const int half=count/2,mid=upper+half;
            if(candidate.horizontal[ReUSize(mid)]>ref.maximum_horizontal)count=half;
            else {upper=mid+1;count-=half+1;}
        }
        end=upper<320?upper+1:upper;
    }
    CandidateScore best{index,re::ReNumericLimits<float>::max(),0};
    for(int i=begin;i<end;++i) {
        const auto n=ReUSize(i);
        const ReUSize lag=n>candidate.first_qualifying_step?n-candidate.first_qualifying_step:0;
        const Vec2 start=i>0?Vec2{candidate.horizontal[n-1],candidate.vertical[n-1]}:Vec2{};
        const Vec2 segment=Vec2{candidate.horizontal[n],candidate.vertical[n]}-start;
        const float squared_length=segment.y*segment.y+segment.x*segment.x;
        const Vec2 target{ref.horizontal[lag],ref.vertical[lag]};
        float t=0;
        if(squared_length>0.000001f) {
            const Vec2 offset=target-start;
            t=(offset.y*segment.y+offset.x*segment.x)/squared_length;
        }
        // [C] COMISS 0,t; JA clamps negative. MINSS 1,t retains NaN source.
        const float fraction=0.0f>t?0.0f:(1.0f<t?1.0f:t);
        const Vec2 miss=start+segment*fraction-target;
        const float error=miss.y*miss.y+miss.x*miss.x;
        if(best.squared_miss>error) {best.squared_miss=error;best.segment=i;}
    }
    return best;
}

// [C] 0x2e38e4..0x2e3a4b narrows thirds, then scans the small interval.
// [C] Endpoint scores supplied by the caller carry segment=0, including when
// [C] an endpoint wins. Preserve this observable detail instead of rescoring it.
CandidateScore refine_candidates_2e38e4(const ReferenceSamples& ref, re::ReSpan<const TrajectoryTable> tables,
                                      ReI32 left, float left_error,
                                      ReI32 right, float right_error) {
    // [I] Validate the copied interval before signed subtraction or endpoint selection.
    if(left<0 || right<left || ReUSize(right)>=tables.size())
        { __builtin_trap(); }
    const auto evaluate=[&](ReI32 i) {
        if(i<0||ReUSize(i)>=tables.size()){ __builtin_trap(); }
        return score_candidate_2e3074(ref,tables[ReUSize(i)],i);
    };
    while(right-left>5) {
        const int third=(right-left)/3;
        const int first=left+third,second=left+2*third;
        const auto a=evaluate(first);
        if(a.squared_miss>left_error) {right=first;right_error=a.squared_miss;continue;}
        const auto b=evaluate(second);
        if(b.squared_miss>a.squared_miss) {right=second;right_error=b.squared_miss;}
        else if(b.squared_miss>right_error) {left=second;left_error=b.squared_miss;}
        else {left=first;left_error=a.squared_miss;}
    }
    CandidateScore best{left,left_error,0};
    for(int i=left+1;i<right;++i) {
        auto tested=evaluate(i);
        if(best.squared_miss>tested.squared_miss)best=tested;
    }
    if(best.squared_miss>right_error)best={right,right_error,0};
    // [C] Strict squared-error threshold 0.02, not a distance of 0.02.
    if(!(0.02f>best.squared_miss))return {};
    return best;
}

// [C] 0x2e2599..0x2e26b1: coarse stride count/70, strict local-rise gate,
// [C] refinement and final-tail fallback. No fabricated global minimum search.
CandidateSearchResult search_candidates_2e2474(const ReferenceSamples& ref, re::ReSpan<const TrajectoryTable> tables) {
    if(tables.empty())return {{},CandidateSearchStatus::empty};
    if(tables.size()>ReUSize(re::ReNumericLimits<ReI32>::max()))
        return {{},CandidateSearchStatus::invalid_boundary};
    const auto count=static_cast<ReI32>(tables.size());
    const int stride=count/70;
    if(stride==0)return {{},CandidateSearchStatus::zero_stride};
    float previous=100000000.0f,before_previous=previous;
    int i=0;
    CandidateScore found{};
    for(;;) {
        const auto scored=score_candidate_2e3074(ref,tables[ReUSize(i)],i);
        const float current=scored.squared_miss;
        if(current>previous && before_previous>previous) {
            const int left=i>stride?i-2*stride:0;
            if(i<=stride)before_previous=previous;
            found=refine_candidates_2e38e4(ref,tables,left,before_previous,i,current);
            if(found.candidate>=0)break;
        }
        before_previous=previous;previous=current;
        if(i==count-1)break;
        const auto next=ReI64(i)+stride;
        i=next>count?count-1:static_cast<int>(next);
        if(i>=count)break;
    }
    if(found.candidate<0 && 10.0f>previous) {
        int left=70*stride;
        if(left==i)left=69*stride;
        // [I] Some caller-supplied counts make the native loop stop at count,
        // not count-1. Report that boundary instead of dereferencing copied data.
        if(left<0 || i<left || i>=count)return {{},CandidateSearchStatus::invalid_boundary};
        found=refine_candidates_2e38e4(ref,tables,left,before_previous,i,previous);
    }
    if(found.candidate<0)return {{},CandidateSearchStatus::no_match};
    if(ReUSize(found.candidate)>=tables.size())return {found,CandidateSearchStatus::invalid_boundary};
    return {found,CandidateSearchStatus::matched};
}

// [C] 0x2e26b7..0x2e281f: qualification-adjusted lead, optional motion clear,
// [C] horizontal normalization, angle construction and final normalization.
PredictionResult predict_2e2474(Vec3 position, Vec3 motion, ReU8 scale,
                               re::ReSpan<const TrajectoryTable> tables, bool predicate, bool instant) {
    PredictionResult out{};
    out.motion_after=motion;
    out.reference=integrate_reference_prefix_2e2474(position,motion,scale);
    out.selection=search_candidates_2e2474(out.reference,tables);
    if(out.selection.status!=CandidateSearchStatus::matched)return out;
    const auto choice=out.selection.score;
    const auto first=tables[ReUSize(choice.candidate)].first_qualifying_step;
    const ReI64 lead=ReI64(choice.segment)-first+1;
    out.lead_steps=lead>0?static_cast<ReI32>(lead):0;
    if(predicate && instant)out.motion_after={};
    Vec3 horizontal=position+out.motion_after*(float(out.lead_steps)*dt);
    horizontal.y=0;
    const float norm=magnitude3(horizontal);
    if(norm>0.00001f)horizontal=horizontal*(1.0f/norm);
    const float angle=static_cast<float>(candidate_angle_2e3e94(choice.candidate));
    const double cosine=double(re::re_cosf(angle));
    Vec3 direction{float(double(horizontal.x)*cosine),re::re_sinf(angle),float(double(horizontal.z)*cosine)};
    const float magnitude=magnitude3(direction);
    // [C] 0x2df744 divides components directly; there is no zero guard here.
    out.direction={direction.x/magnitude,direction.y/magnitude,direction.z/magnitude};
    return out;
}

// [C] 0x3226b0..0x3229ad. Persistent stores occur on distinct paths;
// [C] rejected proposed budgets do not overwrite 0x3e6090/94.
MovementBudgetResult validate_movement_3226b0(MovementBudgetState& s, const MovementBudgetInput& p,
                                             const MovementPhysics& physics) {
    MovementBudgetResult out{};
    s.timer_3f2128=max_2e1270(0.0f,s.timer_3f2128-p.elapsed);
    if(!p.player_valid||p.related_368b10_valid)return out;
    if(!s.airborne_3f2110)s.anchor_3f2118=p.previous;
    s.airborne_3f2110=false;
    const Vec3 midpoint=(p.previous+p.current)*0.5f;
    if(!p.state_36a364) {
        if(physics.query_32260c(midpoint-Vec3{0,2,0},true,true)) {
            if(!below_or_unordered(0.0f,s.contact_timer_3f2134))s.contact_timer_3f2134=0.3f;
        } else if((physics.query_322580(midpoint,0.01f)&8)==0) {
            s.airborne_3f2110=!physics.query_32245c(midpoint+Vec3{0,-1.5f,0},midpoint+Vec3{0,1.3f,0},
                                                  0.4f,0x59a12101,1);
        }
    }
    float vertical=s.vertical_3e6090,horizontal=s.horizontal_3e6094;
    if(!s.airborne_3f2110) {vertical=0;horizontal=0;}
    else {
        const Vec3 delta=p.current-p.previous;
        const float horizontal_step=magnitude3({delta.x,0,delta.z});
        bool changed=false;
        if(delta.y>=0) {vertical+=delta.y;changed=true;}
        if(horizontal_step>re::re_fabs(delta.y)) {horizontal+=horizontal_step;changed=true;}
        if(changed) {
            out.tested_budgets=true;
            const bool grace=s.timer_3f2128>0;
            out.vertical_limit=max_2e1270(grace?5.0f:0.4f,0.0f)+1.5f;
            out.horizontal_limit=max_2e1270(grace?10.0f:1.5f,0.0f)+5.0f;
            out.proposed_vertical=vertical;out.proposed_horizontal=horizontal;
            if(vertical>out.vertical_limit||horizontal>out.horizontal_limit) {out.allowed=false;return out;}
        }
    }
    s.vertical_3e6090=vertical;s.horizontal_3e6094=horizontal;
    out.proposed_vertical=vertical;out.proposed_horizontal=horizontal;
    out.accumulators_committed=true;
    return out;
}

// [C] 0x32dbb0..0x32dea3, with unresolved GameAssembly calls as callbacks.
SpeedBudgetResult validate_speed_32dbb0(SpeedBudgetState& s, const SpeedBudgetInput& p,
                                       const SpeedBoundaries& game) {
    SpeedBudgetResult out{};
    if(!p.player_valid||p.related_368b10_valid)return out;
    out.evaluated=true;
    s.timer_3f2130=max_2e1270(0.0f,s.timer_3f2130-p.elapsed);
    float a=p.state_36ac78?1.0f:0.0f;
    float b=(p.state_368468||p.state_36a238)?1.0f:0.0f;
    float c=p.state_368244?1.0f:0.0f;
    if(p.force_speed_arguments) {a=1;b=0;c=0;}
    out.permitted_distance=game.speed_36a3a8(a,b,c)*p.elapsed;
    const Vec3 delta=p.current-p.previous;
    out.measured_distance=sample_sqrt_2e3c88(delta.x*delta.x+delta.z*delta.z);
    if(out.measured_distance>out.permitted_distance) {
        out.adjustment_called=true;
        const auto adjustment=game.adjustment_32cdcc(p.previous);
        const Vec3 reference=adjustment.context_32cc74_nonnull?adjustment.vector_32cdcc:Vec3{0,1,0};
        // [C] 0x2e5bc4 dot product on horizontal vectors; not normalized here.
        const float dot=(0.0f*0.0f+reference.x*delta.x)+reference.z*delta.z;
        const float correction=(max_2e1270(0.0f,dot)*10.0f)*p.elapsed;
        out.measured_distance=max_2e1270(0.0f,out.measured_distance-correction);
    }
    out.allowance=max_2e1270(s.timer_3f2130>0?10.0f:2.0f,0.1f);
    out.clamp_extent=max_2e1270(2.0f,0.1f)+out.allowance;
    const float lower=-out.clamp_extent;
    float accumulator=clamp_2e5a44(s.accumulator_3f212c,lower,out.clamp_extent);
    accumulator=clamp_2e5a44(accumulator-out.permitted_distance,lower,out.clamp_extent);
    s.accumulator_3f212c=accumulator;
    if(below_or_unordered(accumulator,out.allowance)) {
        accumulator=clamp_2e5a44(accumulator+out.measured_distance,lower,out.clamp_extent);
        s.accumulator_3f212c=accumulator;
        // [C] JAE rejects equality/greater, but unordered does not branch.
        out.allowed=!(accumulator>=out.allowance);
    } else out.allowed=false;
    if(2.0f>=accumulator) {s.display_3e6098=accumulator;out.display_written=true;}
    return out;
}

TickLimiterResult replay_tick_limiters_32cea8(MovementBudgetState& movement, SpeedBudgetState& speed,
                                            const TickLimiterInput& p, const MovementPhysics& physics,
                                            const SpeedBoundaries& game,
                                            const re::ReFunction<void(Vec3,bool)>& correction) {
    TickLimiterResult out{};
    // [C] Both calls precede the exemption/config tests at 0x32da0f.
    out.movement=validate_movement_3226b0(movement,p.movement,physics);
    out.speed=validate_speed_32dbb0(speed,p.speed,game);
    out.output_position=p.movement.current;
    if(p.preexisting_exemption)return out;
    const bool exempt=p.state_36a20c||p.state_3693b0;
    const auto restore=[&] {
        out.output_position=p.movement.previous;++out.restores;
        if(p.correction_object_valid) {correction(out.output_position,true);++out.correction_calls;}
    };
    if(((p.anti_violations&&p.option_0)||p.byte_3d8241||p.byte_3ef4e1)&&!out.movement.allowed&&!exempt)restore();
    if(p.option_3&&p.anti_violations&&!out.speed.allowed&&!exempt)restore();
    return out;
}

// [I] Partial control-flow projection of 0x32cea8; original calls and physics outcomes
// [U] are supplied inputs, not implementations of unknown GameAssembly functions.
// [C] Caller guard precedes extra game state work; original has already been called.
TickAnalysisResult analyze_tick_32cea8(const TickAnalysisInput& p) {
    TickAnalysisResult out{p.original_result,false,false,{}};
    if(!p.matching_caller) {
        out.events.push_back({0x32cf72,"[C] nonmatching caller: preserve original boolean"});return out;
    }
    if(!p.context_valid) {
        out.refresh_timestamp=true;
        out.events.push_back({0x32db3d,"[C] invalid/absent game context: refresh timing and preserve original"});return out;
    }
    float clamped_elapsed=p.elapsed_since_last_refresh<1.0f?p.elapsed_since_last_refresh:1.0f;
    if(clamped_elapsed<0.0f)clamped_elapsed=0.0f;
    if(p.manipulation_active && (p.desync_not_visible||p.attempt_desync) && clamped_elapsed<0.75f) {
        out.return_value=false;
        out.events.push_back({0x32d508,"[C] desync path returns false without normal timing refresh"});return out;
    }
    if(p.anti_violations&&!p.exempt_player_state) {
        if(p.violation_option_0&&!p.movement_check_3226b0) {
            out.restore_previous_position=true;
            out.events.push_back({0x32da77,"[C] restore previous movement position and invoke correction helper"});
        }
        if(p.violation_option_3&&!p.speed_check_32dbb0) {
            out.restore_previous_position=true;
            out.events.push_back({0x32dae5,"[C] restore previous position after second limiter failure"});
        }
    }
    // [U] SpecialTeleport/interactive/list replay branches are documented in the report,
    // [U] but omitted from this projection, as are additional exemption-state branches.
    out.refresh_timestamp=true;
    out.events.push_back({0x32db3d,"[C] normal exit refreshes timing; final result preserves original"});
    return out;
}

// [C] 0x32c978..0x32c9e8 copies the same scaled direction to these observed vectors.
// [I] This mutates a named analysis object, not a guessed live memory layout.
void copy_observed_launch_vectors_32c0d4(ProjectileFields& projectile, ShotFields& shot, Vec3 direction, float speed) {
    const Vec3 velocity=direction*speed;
    shot.vector20=velocity;
    projectile.vector16c=velocity;
    projectile.vector28=velocity;
}

// [C] 0x32c9eb..0x32ca0c and 0x330bdb..0x330bfd zero this vector under nospread.
void clear_observed_spread_vector(ProjectileFields& p) { p.vectorf8={}; }

// [C] Field copies from 0x331cd1..0x331e23; [I] names are inferred HitTest roles.
// [U] World-to-local transforms, normal conversion, game hit call and serialization are external.
void write_observed_hit_fields_330b38(HitFields& h, Address target, Address transform, Address material, Vec3 point, Vec3 normal, re::ReArray<float,6> ray) {
    h.hitb0=true;h.target90=target;h.transformd8=transform;
    h.point5c=point;h.normala4=normal;h.ray6c=ray;h.materialc0=material;
}

// [C] Branch outline 0x330bba..0x330d1f and 0x331e28..0x332118.
Events describe_projectile_update_330b38(bool owned, bool eligible, bool pierce, bool heli_magic) {
    if(!owned||!eligible)return {{0x330bc5,"[C] skip manipulation for wrong owner/ineligible projectile"}};
    Events out{{0x330bdb,"[C] optional nospread vector clear"},{0x330c0f,"[C] select material label using CurrentProjectileMaterial"}};
    if(pierce) {
        out.push_back({0x330d1f,"[C] select target through 0x2e02b0"});
        out.push_back({0x3310ae,"[C] evaluate configured proximity, line tests and optional LegitBulletTP"});
        out.push_back({0x331436,"[C] conditional projectile position/scalar changes"});
        out.push_back({0x331cd1,"[C] conditional hit-record construction"});
        out.push_back({0x331e23,"[C] conditional call 0x374168 -> GameAssembly+0x1cd1620"});
    }
    if(heli_magic)out.push_back({0x331e28,"[C] additional helicopter-specific geometry/hit path"});
    out.push_back({0x332118,"[C] return to Projectile.Update detour; original Update follows there"});
    return out;
}
// [C] 0x2df6cc..0x2df704: subtract two Vec3 by pointer, store result through 0x3c7ba8.
// [C] Native signature: Vec3*(Vec3* src [rcx], Vec3* out [rdx], Vec3* operand [r8]).
// [I] Reconstructed as a pure value operation; pointer storage is implicit.
Vec3 vec3_subtract_2df6f0(Vec3 a, Vec3 b) {
    return {a.x - b.x, a.y - b.y, a.z - b.z};
}
} // namespace rust_internal_re
