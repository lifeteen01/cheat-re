#include "movement_analysis.hpp"

namespace rust_internal_re {
namespace {
struct CopyFault {};
struct ReplayLimit {};
template<class T> T copied(const Snapshot& image, Address key) {
    const auto value=image.read<T>(key);
    if(!value)__builtin_trap();
    return *value;
}
// [C] 0x2df5dc..0x2df606: unordered coordinates count as different.
bool different(Vec3 a, Vec3 b) {return a.x!=b.x||a.y!=b.y||a.z!=b.z;}
// [C] 0x2e3b58..0x2e3b83: +0/-0 compare equal; NaNs are not zero.
bool zero(Vec3 a) {return !different(a,{});}
// [C] 0x2dff30..0x2dff60: sum in Y,X,Z order, then 0x2e3c88.
float distance(Vec3 a, Vec3 b) {
    const auto d=a-b;
    return sample_sqrt_2e3c88((d.y*d.y+d.x*d.x)+d.z*d.z);
}
// [C] 0x2e5a44..0x2e5a53 with XMM1=0, XMM2=5. MINSS selects
// [C] second source on unordered/equal, preserving NaN input and signed zero.
float teleport_clamp(float value) {
    if(0.0f>value)return 0.0f;
    return 5.0f<value?5.0f:value;
}
}

ColliderDetourResult replay_collider_322aec(const Snapshot& image, ColliderDetourState& s,
                                          const ColliderDetourInput& p, const ColliderDetourCalls& c) {
    ColliderDetourResult out{};
    {
        // [C] 0x322b0e: capture BEFORE the saved original can replace the collider.
        out.captured_collider=c.capture_322ef8(p.object);
        if(!(s.initialization_3f24a0&1)) {
            s.initialization_3f24a0|=1;
            s.original_3f2498=c.resolve_original_2ce5d8(0x3f08f8);
        }
        if(!(s.initialization_3f24a0&2)) {
            s.initialization_3f24a0|=2;
            c.initialize_dispatch_2cbd24(0x3f24b0,s.original_3f2498);
        }
        c.original_2cba50(s.original_3f2498,p.object,p.second,p.third);
        out.original_called=true;
        if(!sample_pointer_range(out.captured_collider))return out; // [C] 0x322b8b..95
        if(!p.smooth_flyhack_3f2488)s.smooth_latch_3ef841=false;
        const bool trigger=(p.fly_3efa81&&p.smooth_flyhack_3f2488&&s.smooth_latch_3ef841)
                           ||p.frozen_3d82a1; // [C] 0x322b9b..0x322bd7
        const auto prepare=[&](ReU32 resolve_bit, ReU32 dispatch_bit,
                               Address& target, Rva cache, ColliderMethod method) {
            if(!(s.initialization_3f24a0&resolve_bit)) {
                s.initialization_3f24a0|=resolve_bit;
                const Address info=c.resolve_method_3349ac(method,-1,-1);
                target=copied<Address>(image,info); // [C] 0x322c70/0x322d74/0x322e7c
            }
            if(!(s.initialization_3f24a0&dispatch_bit)) {
                s.initialization_3f24a0|=dispatch_bit;
                c.initialize_dispatch_2cbd24(cache,target);
            }
        };
        prepare(4,8,s.trigger_3f2588,0x3f2590,ColliderMethod::set_is_trigger);
        c.trigger_3214f4(s.trigger_3f2588,out.captured_collider,trigger);
        out.trigger_called=true;
        if(p.fly_3efa81&&!s.smooth_latch_3ef841) { // [C] 0x322cc5..0x322dd5
            prepare(16,32,s.shrink_3f2670,0x3f2680,ColliderMethod::shrink_radius);
            c.radius_32225c(s.shrink_3f2670,out.captured_collider,0.38f);
            s.radius_latch_3f2668=true;
            out.radius_changed=true;
        } else if(s.radius_latch_3f2668) { // [C] 0x322dda..0x322ed7
            prepare(64,128,s.restore_3f2758,0x3f2760,ColliderMethod::restore_radius);
            c.radius_32225c(s.restore_3f2758,out.captured_collider,0.5f);
            s.radius_latch_3f2668=false;
            out.radius_restored=true;
        }
    }
    return out;
}

MovementTickResult replay_movement_tick_32cea8(Snapshot& image, MovementTickState& s,
    MovementBudgetState& movement, SpeedBudgetState& speed, const MovementTickInput& p,
    const MovementTickCalls& c, const MovementPhysics& physics, const SpeedBoundaries& speed_calls) {
    MovementTickResult out{};
    const auto store_position=[&](Address record, Vec3 v) {
        // [C] Paired qword/dword stores at 0x32da77/0x32da82 and 0x32dae5/0x32daed.
        const auto xy=re::re_bit_cast<re::ReArray<ReU32,3>>(v);
        const ReU64 pair=ReU64(xy[0])|(ReU64(xy[1])<<32);
        if(!image.write(record+0x30,pair))__builtin_trap();
        ++out.snapshot_stores;
        if(!image.write(record+0x38,xy[2]))__builtin_trap();
        ++out.snapshot_stores;
    };
    {
        if(!(s.initialization_3f8470&1)) { // [C] 0x32cef6..0x32cf20
            s.initialization_3f8470|=1;
            s.original_3f8468=c.resolve_original_2ce5d8(0x3f0888);
        }
        if(!(s.initialization_3f8470&2)) {
            s.initialization_3f8470|=2;
            c.initialize_dispatch_2cbd24(0x3f8480,s.original_3f8468);
        }
        const auto original=c.original_2cb9fc(s.original_3f8468,p.argument);
        out.value=(original&0xff)!=0;
        out.matching_caller=p.return_address==p.game_assembly_3d6f00+0x3fe4a37;
        if(!out.matching_caller)return out; // [C] 0x32cf5d..0x32cf79
        const auto refresh=[&]() {
            s.refreshed_3f2124=c.time_31581c();
            s.refreshed_3f81c4=c.time_2e6240();
            out.refreshed=true;
            // [C] 0x32db4f tests only saved AL (not the full original EAX).
            out.value=(original&0xff)!=0;
        };
        if(c.predicate_2e0e4c()) {refresh();return out;}
        if(!sample_pointer_range(c.context_2e069c())) {refresh();return out;}
        const Address player=c.player_2dda9c();
        if(!sample_pointer_range(player)) {refresh();return out;}
        float elapsed=c.time_31581c()-s.refreshed_3f2124;
        // [C] MINSS(elapsed,1) returns the second operand for NaN/equality.
        elapsed=elapsed<1.0f?elapsed:1.0f;
        if(0.0f>elapsed)elapsed=0.0f;
        s.elapsed_3d72ec=out.clamped_elapsed=elapsed;
        const float raw=c.time_31581c()-s.refreshed_3f2124;
        out.raw_elapsed=raw; // [C] XMM8 remains UNCLAMPED for both limiters.
        const auto set_position=[&](Address transform, Vec3 value) {c.position_374ec8(transform,value);};
        const auto set_flags=[&]() {
            const Address state=c.state_369400(player);
            if(sample_pointer_range(state))c.flags_372c1c(state,0x10);
        };
        const auto correction=[&](Address object, Vec3 value, bool copy) {
            c.correction_32a9f8(object,value,player,copy);
        };
        ReUSize replay_steps=0;
        const auto step=[&]() {if(replay_steps++>=p.replay_limit)__builtin_trap();};
        // [C] 0x32d004..0x32d42f: special teleport builds exactly 25 vertical candidates.
        if(p.special_teleport) {
            const Address target=c.target_2e02b0();
            const Address field=copied<Address>(image,player+0x4e8);
            if(sample_pointer_range(field)) {
                if(!s.manipulation_3d72a0||!sample_pointer_range(target)) {
                    s.flag_3f8558=false;s.flag_3f8559=false;s.special_3f81c8=false;
                    s.special_positions_248eb8.clear();
                } else {
                    const Vec3 base=copied<Vec3>(image,field+0x30);
                    s.special_positions_248eb8.clear();
                    for(int n=1;n<=25;++n) {
                        const Vec3 candidate{base.x,base.y+float(n)*0.2f,base.z};
                        const auto mask=c.mask_2e6a6c();
                        if(!c.query_2e2320(candidate+Vec3{0,1.5f,0},base,mask,0.0f,0.0f))continue;
                        const Address record=c.record_36a2c8(player);
                        if(sample_pointer_range(record)) {
                            auto m=p.limiter.movement;
                            m.previous=copied<Vec3>(image,record+0x30);m.current=candidate;m.elapsed=raw;
                            if(!validate_movement_3226b0(movement,m,physics).allowed)continue;
                        }
                        s.special_positions_248eb8.push_back(candidate); // [C] 0x320d9c -> 0x2eb230
                    }
                    bool finalize=s.special_3f81c8;
                    if(!s.special_3f81c8&&!s.special_positions_248eb8.empty()) {
                        const Vec3 last=s.special_positions_248eb8.back()+Vec3{0,1.5f,0};
                        const Vec3 point55=c.point_368be8(target,0x37);
                        const Vec3 point54=c.point_368be8(target,0x36);
                        const Vec3 target_position=c.position_369790(target);
                        const Vec3 near{point55.x,point54.y+0.05f,point55.z};
                        const Vec3 endpoint=p.pierce?near+Vec3{0,2.0f,0}:target_position;
                        // [C] 0x32d2a6/0x32d2ed: fresh mask for EACH lazy physics call.
                        bool clear=c.query_2e2320(last,endpoint,c.mask_2e6a6c(),0.0f,0.0f);
                        if(clear)clear=c.query_2e2320(endpoint,near,c.mask_2e6a6c(),0.0f,0.0f);
                        if(clear) {
                            const Address object=c.correction_object_3680d4(player);
                            if(sample_pointer_range(object)) {
                                // [C] Count is re-read after callbacks, not captured once.
                                for(ReUSize n=0;n<s.special_positions_248eb8.size();++n) {
                                    step();const Vec3 value=s.special_positions_248eb8[n];
                                    set_position(c.transform_32cc9c(player),value);
                                    set_flags();correction(object,value,false);c.update_36ace0(player);
                                    ++out.special_replays;
                                }
                            }
                            s.special_3f81c8=true;finalize=true;
                        } else {
                            s.flag_3f8558=false;finalize=s.special_3f81c8;
                        }
                    }
                    if(finalize&&!s.flag_3f8559) {
                        c.update_36ace0(player);s.counter_3f855c=0;s.flag_3f8559=true;
                    }
                }
            }
        }
        // [C] 0x32d434..0x32d45a: strict 0.75 > clamped elapsed.
        if(s.manipulation_3d72a0&&(p.desync_not_visible||p.should_attempt_desync)&&0.75f>elapsed) {
            out.value=false;return out;
        }
        const Address transform=c.transform_32cc9c(player);
        if(!sample_pointer_range(transform)) {refresh();return out;}
        if(!s.frozen_3d82a1&&p.byte_3f2b08) { // [C] 0x32d47b..0x32d50a
            if(!zero(s.frozen_position_3f81b8)) {
                const Address object=c.correction_object_3680d4(player);
                if(sample_pointer_range(object)) {
                    correction(object,s.frozen_position_3f81b8,true);
                    set_position(transform,s.frozen_position_3f81b8);
                }
            }
            out.value=false;return out;
        }
        const Vec3 current=c.position_3747d4(transform); // [C] 0x32d50f
        bool frozen=s.frozen_3d82a1;
        if(frozen) {if(zero(s.frozen_position_3f81b8))s.frozen_position_3f81b8=current;}
        else {s.frozen_position_3f81b8={};frozen=s.frozen_3d82a1;}
        // [C] 0x32d582..0x32d649: freeze transition and temporary restore/update/restore.
        if(!zero(s.frozen_position_3f81b8)) {
            if(!(s.initialization_3f8470&4)) {
                s.previous_frozen_3f8560=frozen;s.initialization_3f8470|=4;
            }
            if(s.previous_frozen_3f8560!=frozen) {
                s.previous_frozen_3f8560=frozen;
                if(!frozen) {
                    set_position(transform,s.frozen_position_3f81b8);c.update_36ace0(player);
                    set_position(transform,s.frozen_position_3f81b8);frozen=s.frozen_3d82a1;
                }
            }
            if(frozen) {
                set_position(transform,s.frozen_position_3f81b8);c.update_36ace0(player);
                set_position(transform,current);out.value=false;return out;
            }
        }
        // [C] 0x32d654..0x32d7b2: start/stop interactive position replay.
        bool interactive=s.interactive_3efb41;
        if(!interactive) {s.interactive_start_3f83f8={};frozen=s.frozen_3d82a1;interactive=s.interactive_3efb41;}
        if(s.previous_interactive_3f81a0!=interactive) {
            if(interactive) {s.anchor_3f81a8=current;s.interactive_start_3f83f8=current;}
            else {
                for(ReUSize n=0;n<s.interactive_positions_218960.size();++n) {
                    step();const Vec3 value=s.interactive_positions_218960[n];
                    set_position(transform,value);set_flags();c.update_36ace0(player);
                    ++out.interactive_replays;
                }
                s.interactive_start_3f83f8={};
                if(!s.interactive_positions_218960.empty()) {
                    s.interactive_positions_218960.clear();out.value=false;return out;
                }
                frozen=s.frozen_3d82a1;interactive=s.interactive_3efb41;
            }
            s.previous_interactive_3f81a0=interactive;
        }
        const Vec3 horizontal{current.x,s.anchor_3f81a8.y,current.z};
        s.teleport_distance_3ed6b8=teleport_clamp(5.0f-distance(horizontal,s.anchor_3f81a8));
        if(interactive) { // [C] 0x32d80d..0x32d8f6
            auto& list=s.interactive_positions_218960;
            if(list.empty()||(different(current,list.back())&&distance(current,list.back())>0.5f))
                list.push_back(current);
            if(!list.empty())s.interactive_last_3f8458=list.back();
            set_position(transform,s.anchor_3f81a8);set_flags();c.update_36ace0(player);
            set_position(transform,current);out.value=false;return out;
        }
        if(frozen) {refresh();return out;} // [C] 0x32d8fb..0x32d8fd
        const Address record=c.record_36a2c8(player);
        if(!sample_pointer_range(record)) {refresh();return out;}
        const Vec3 previous=copied<Vec3>(image,record+0x30);
        const auto exemption=copied<ReU32>(image,record+0x28);
        const Vec3 delta=current-previous;
        s.velocity_3e6060={delta.x/raw,delta.y/raw,delta.z/raw}; // [C] 0x32d972..0x32d9a0
        // [C] 0x32d9a6/0x32d9bd both compare PREVIOUS against CURRENT.
        if(!different(previous,current)) {refresh();return out;}
        TickLimiterInput tail=p.limiter;
        tail.movement.previous=tail.speed.previous=previous;
        tail.movement.current=tail.speed.current=current;
        tail.movement.elapsed=tail.speed.elapsed=raw;
        tail.preexisting_exemption=exemption!=0;
        // [I] Wrapper supplies lazy correction validity so no extra getter runs on success.
        tail.correction_object_valid=true;
        ReUSize corrections=0;
        out.limiter_reached=true;
        auto result=replay_tick_limiters_32cea8(movement,speed,tail,physics,speed_calls,
            [&](Vec3 value,bool copy) {
                store_position(record,value);
                const Address object=c.correction_object_3680d4(player);
                if(sample_pointer_range(object)) {correction(object,value,copy);++corrections;}
            });
        result.correction_calls=corrections;
        out.limiter=result;
        if(exemption) { // [C] 0x32db25..0x32db37, after BOTH budget calls.
            speed.timer_3f2130=0;speed.accumulator_3f212c=0;
            movement.horizontal_3e6094=0;movement.vertical_3e6090=0;
        }
        refresh();
    }
    return out;
}
} // namespace rust_internal_re
