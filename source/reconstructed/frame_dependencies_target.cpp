#include "frame_dependencies_target.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
namespace {
struct Stop {Rva r;};
template<class F,class... A> auto need(Rva r,const F& f,A&&... a) {if(!f)__builtin_trap();return f(re::re_forward<A>(a)...);}
ReI32 cvtt(float f) {
    if(!re::re_isfinite(f)||f>=2147483648.0f||f<-2147483648.0f)return re::ReNumericLimits<ReI32>::min();
    return static_cast<ReI32>(f);
}
}
FrameTargetResult select_frame_target_314bb4(const TargetSelectionInput& in,const FrameTargetConfig& cfg,const FrameTargetApi& a) {
    FrameTargetResult out;
    {
        if(!sample_pointer_range(in.camera_2e069c)||!sample_pointer_range(in.local_2dda9c))return out;
        auto projected=in.initial_projection_scratch;const auto& calls=a.calls.game;
        for(const auto& record:in.records) {
            const auto entity=record.entity;
            if(!sample_pointer_range(entity)||record.category!=0)continue;
            if(!need(0x2e0e9c,calls.valid_2e0e9c,entity))continue;
            // [I] Reuse the concrete whole eligibility controller; its own typed
            // game dependencies remain supplied through the existing TargetCalls.
            if(!calls.predicate)__builtin_trap();
            if(!target_eligible_36aec4(entity,0,cfg.eligibility,calls)||entity==in.local_2dda9c)continue;
            const auto point=need(0x368be8,calls.bone_368be8,entity,53);
            if(point.x==0.0f&&point.y==0.0f&&point.z==0.0f)continue;
            if(!sample_pointer_range(need(0x369764,calls.object,Rva(0x369764),entity)))continue;
            // [C] Both2cd32c calls return literal zero in the preserved image,
            // therefore the nonzero/equal team shortcut is never taken.
            const auto friend_kind=need(0x2df608,a.calls.record_kind,entity,ReU8(0));
            if(friend_kind==1&&cfg.hotbar_options[4]&&!cfg.include_friends)continue;
            const auto npc=need(0x36a178,calls.predicate,Rva(0x36a178),entity,ReU8(0));
            if(npc&&cfg.hotbar_options[5])continue;
            const auto max_distance=npc?cfg.eligibility.scientist_maximum_distance:cfg.eligibility.player_maximum_distance;
            if(need(0x36a20c,calls.predicate,Rva(0x36a20c),entity,ReU8(0))&&cfg.hotbar_options[6])continue;
            if(!need(0x36cd20,a.calls.project_36cd20,in.camera_2e069c,point,projected,in.projection_argument_3d72a8))continue;
            const auto half_width=static_cast<float>(need(0x2e0af0,a.width_2e0af0))*0.5f;
            const auto half_height=static_cast<float>(need(0x2e09f0,a.height_2e09f0))*0.5f;
            const auto dy=integer_power_2e3c50(half_height-projected.y,2);
            const auto dx=integer_power_2e3c50(half_width-projected.x,2);
            if(dy.status!=GameBaseStatus::complete||dx.status!=GameBaseStatus::complete)__builtin_trap();
            const auto distance=approximate_sqrt_2e3c88(dy.value+dx.value);
            // [C] COMISS/JBE rejects unordered best comparisons; subsequent JA
            // bounds admit unordered, but the first gate already excludes NaNs.
            if(!(static_cast<float>(out.best)>distance))continue;
            if(distance>static_cast<float>(max_distance)||distance>static_cast<float>(cfg.eligibility.fov))continue;
            out.selected=entity;out.best=cvtt(distance);++out.result.accepted;
        }
    }
    return out;
}
} // namespace rust_internal_re
