#include "hooks_analysis.hpp"
namespace rust_internal_re {
// [C] Names/RVAs: setup 0x315c34 and 0x362118; see ../01_hooks.md.
// [U] Row 12 has no recovered name; row 15 class/method order follows argument flow.
static constexpr re::ReArray<HookDefinition, 15> definitions{
    HookDefinition{"Projectile","Update",0x32ae10,0x3f0930,0x2ea90c,0x315d84},
    HookDefinition{"WaterOverlay","Update",0x332554,0x3e67c8,0x2ea90c,0x315de8},
    HookDefinition{"SmokeGrenade","Update",0x32f038,0x3e6800,0x2ea90c,0x315e4c},
    HookDefinition{"TOD_Sky","LateUpdate",0x32f408,0x3e6838,0x2ea90c,0x315eb0},
    HookDefinition{"ItemIcon","%ff5c768afbd21540016ff268deca16199f9d287c",0x3215cc,0x3e6870,0x2ea978,0x315f1e},
    HookDefinition{"PlayerWalkMovement","%123bd3a03dc442df4d55d50e4bcff18dffb8caf0",0x32a9f8,0x3f08c0,0x2ea978,0x315f88},
    HookDefinition{"PlayerWalkMovement","%9a4b1fd10d6243652214a9bef78c6ecd197d0836",0x324b30,0x3e68a8,0x2ea978,0x315ff2},
    HookDefinition{"PlayerWalkMovement","%1d9a027bf72a0c970debaab6d90583b700d8985f",0x322aec,0x3f08f8,0x2ea978,0x31605c},
    HookDefinition{"Client","LateUpdate",0x2f8574,0x3e6950,0x2ea90c,0x3621f2},
    HookDefinition{"%3d67d36f0966e1032c23f962d7b0990a6bc78bb0","<method matched against class+0x1d8; name unresolved>",0x32cae8,0x3e6918,0x2eaa28,0x3160a8},
    HookDefinition{"%ab2af99e738349c0dc873c5b1a248f283a19f0de","<method matched against class+0x1d8; name unresolved>",0x32b62c,0x3e68e0,0x2eaa28,0x3160f4},
    HookDefinition{"BasePlayer","<GameAssembly+0x3f464e0; name unresolved>",0x2e91fc,0x3e4de8,0x3163d8,0x31614b},
    HookDefinition{"BaseMelee","%63e89e5a824099e8f26742a92de9abbad07f05ea",0x2e12e0,0x3e3f88,0x3163d8,0x31621a},
    HookDefinition{"BaseLauncher","%4cc4b6b196d68ad25ed5d5f1fbe104df3d40db05",0x2ddb10,0x3d6ff8,0x3163d8,0x3162e9},
    HookDefinition{"%fa0c08e032f18b0fa1549031fa4c42174b53b0bb","%de96eb58e7d7ac99390d675d488860f809aad2a8",0x32cea8,0x3f0888,0x316458,0x3163b6}
};
re::ReSpan<const HookDefinition> hook_definitions() { return definitions; }

// [C] 0x2ea90c: operations after 0x33416c has returned MethodInfo.
// [I] Bounded-copy adaptation: missing bytes fail; no game address is written.
bool install_method_info_copy(Snapshot& image, HookRecord& rec, Address method, Address detour) {
    if (rec.kind) return true; // [C] 0x3164fc guard.
    rec.method_info=method;
    if (!method) return false;
    const auto old=image.read<Address>(method);
    if (!old) return false;
    rec.original=*old; rec.detour=detour;
    if (!image.write(method,detour)) return false;
    rec.kind=1;
    return true;
}

// [C] 0x2ea978: byte-wise class scan through inclusive klass+0x1500.
// [U] Resolving the IL2CPP class/MethodInfo is an external dependency, not fabricated here.
bool install_class_scan_copy(Snapshot& image, HookRecord& rec, Address klass, Address method, Address detour) {
    if (rec.kind) return true;
    if (!klass || !method || method==detour) return false;
    for (ReUSize offset=0; offset<=0x1500; ++offset) {
        const Address cell=klass+offset;
        rec.replaced_cell=cell;
        auto old=image.read<Address>(cell);
        if (!old) return false;
        if (*old && *old==method) {
            if (!image.write(cell,detour)) return false;
            rec.original=*old;rec.detour=detour;rec.kind=2;
            return true;
        }
    }
    // [C] 0x2ea9fd records the first excluded address before the final comparison.
    rec.replaced_cell=klass+0x1501;
    return false;
}

// [C] 0x2eaa28 uses 0x334960 to resolve the original before the same scan.
// [I] Compatibility input is the first qword of that dependency's MethodInfo output, held fixed.
// [I] Use install_resolved_method_scan_copy to preserve the repeated MethodInfo dereference.
bool install_resolved_scan_copy(Snapshot& image, HookRecord& rec, Address klass, Address resolved, Address detour) {
    HookRecord scratch=rec;
    const bool ok=install_class_scan_copy(image,scratch,klass,resolved,detour);
    // [C] This variant does not record a replaced-cell address at +0x10.
    scratch.replaced_cell=rec.replaced_cell;
    rec=scratch;
    return ok;
}

// [C] 0x3163d8 starts at +0x138; 0x316458 starts at +0x328; step 0x10.
// [C] Both loops compare ONLY when 0x2caf08(slot_value) is false (JE, not JNE).
// [U] For +0x328 this compatibility helper assumes external eligibility passed;
// [I] install_entry_316458_copy below exposes those missing resolver/helper inputs.
bool install_entry_table_copy(Snapshot& image, HookRecord& rec, Address klass, Address expected, Address detour, ReUSize start) {
    if(start!=0x138 && start!=0x328)return false;
    if(start==0x328 && rec.kind)return true; // [C] No corresponding guard in 0x3163d8.
    if(!klass || !sample_pointer_range(klass+start))return false;
    if(start==0x328) {
        auto first=image.read<Address>(klass+start);
        if(!first || !*first)return false; // [C] 0x316496..0x31649c, initial slot only.
    }
    for(Address cell=klass+start; image.contains(cell,sizeof(Address)); cell+=0x10) {
        const auto old=image.read<Address>(cell);
        if(!old || sample_pointer_range(*old))return false;
        if(*old==expected) {
            rec.original=*old; // [C] Saved before replacing the slot; +0x28 is untouched.
            if(!image.write(cell,detour))return false;
            rec.kind=3;return true;
        }
        if(cell+0x10<cell)return false; // [I] Overflow bound absent from native loop.
    }
    return false;
}

bool install_entry_316458_copy(Snapshot& image, HookRecord& rec, Address klass, Address expected, Address detour, const EntryEligibility& eligibility) {
    if(rec.kind)return true;
    if(!klass || !sample_pointer_range(klass+0x328))return false;
    const auto first=image.read<Address>(klass+0x328);
    if(!first || !*first)return false;
    // [C] 0x3164b2..0x3164c1: missing method or nonzero helper result fails.
    if(!eligibility.matched_method_info || !eligibility.helper_320b04_result || *eligibility.helper_320b04_result!=0)return false;
    return install_entry_table_copy(image,rec,klass,expected,detour,0x328);
}

// [C] 0x2eaa79/0x2eaa95 dereference the resolved MethodInfo, not a method-name key.
bool install_resolved_method_scan_copy(Snapshot& image, HookRecord& rec, Address klass, Address method_info, Address detour) {
    if(rec.kind)return true;
    if(!klass || !method_info)return false;
    auto expected=image.read<Address>(method_info);
    if(!expected || !*expected || *expected==detour)return false;
    for(ReUSize offset=0;offset<=0x1500;++offset) {
        const auto old=image.read<Address>(klass+offset);
        expected=image.read<Address>(method_info);
        if(!old || !expected)return false;
        if(*old && *old==*expected) {
            if(!image.write(klass+offset,detour))return false;
            rec.original=*old;rec.detour=detour;rec.kind=2;return true;
        }
    }
    return false; // [C] +0x10 remains untouched in this variant, even on failure.
}

namespace {
HookReplayResult unavailable(HookReplayResult result, re::ReString reason) {
    result.complete=false;result.limitation=re::re_move(reason);return result;
}
void original_call(HookReplayResult& r, Rva site, Address target, re::ReArray<Address,3> args, unsigned count) {
    r.calls.push_back({site,HookCallRole::saved_original,target,args,count});
}
}

// [C] 0x33256b..0x3325bb: ordered byte/qword stores; no restore path here.
HookReplayResult replay_water_332554(Snapshot& image, Address object, bool no_blur, bool water, Address original) {
    HookReplayResult r;
    if(no_blur)for(auto offset:{0x68u,0xe8u,0x48u,0x88u,0xa8u,0x108u,0xc8u}) {
        if(!image.write<ReU8>(object+offset,0))return unavailable(re::re_move(r),"water flag bytes unavailable");
        ++r.stores;
    }
    if(water)for(auto offset:{0x60u,0xe0u,0x40u,0x80u,0xa0u,0x100u,0xc0u}) {
        if(!image.write<Address>(object+offset,0))return unavailable(re::re_move(r),"water qword bytes unavailable");
        ++r.stores;
    }
    original_call(r,0x332636,original,{object,0,0},1);return r;
}

// [C] 0x32f047..0x32f09a: shared latch changes even when the object pointer fails the numeric test.
HookReplayResult replay_smoke_32f038(const Snapshot& image, Address object, bool no_smoke, SmokeHookState& state, Address original) {
    HookReplayResult r;
    if(no_smoke || state.suppression_latch) {
        const auto active_object=image.read<Address>(object+0x2f8);
        if(!active_object)return unavailable(re::re_move(r),"smoke +0x2f8 unavailable");
        if(sample_pointer_range(*active_object))r.calls.push_back({no_smoke?0x32f067u:0x32f095u,HookCallRole::set_active,0x373744,{*active_object,no_smoke?0u:1u,0},2});
        state.suppression_latch=no_smoke;
    }
    original_call(r,0x32f112,original,{object,0,0},1);return r;
}

// [C] 0x32aa0f..0x32aa46 plus 0x36a2c8/0x2dee3c: local+0x4e8 -> object+0x30/+0x38.
HookReplayResult replay_position_32a9f8(Snapshot& image, Address object, Address position, Address third, bool enabled, Address local, Address original) {
    HookReplayResult r;
    if(enabled && sample_pointer_range(local)) {
        const auto destination=image.read<Address>(local+0x4e8);
        if(!destination)return unavailable(re::re_move(r),"local-player +0x4e8 unavailable");
        if(sample_pointer_range(*destination)) {
            // [C] Preserve the raw bits, including NaN payloads; original reads the tail AFTER its first store.
            const auto xy=image.read<ReU64>(position);
            if(!xy || !image.write(*destination+0x30,*xy))return unavailable(re::re_move(r),"position qword unavailable");
            ++r.stores;
            const auto z=image.read<ReU32>(position+8);
            if(!z || !image.write(*destination+0x38,*z))return unavailable(re::re_move(r),"position tail unavailable");
            ++r.stores;
        }
    }
    // [C] r9b enables the extra copy but is NOT forwarded; original wrapper gets three arguments.
    original_call(r,0x32aab9,original,{object,position,third},3);return r;
}

HookReplayResult replay_instant_loot_3215cc(Snapshot& image, const InstantLootInputs& p) {
    HookReplayResult r;
    if(!p.enabled) {
        original_call(r,0x3217cc,p.original,{p.item_icon,p.original_second_argument,0},2);return r;
    }
    // [C] 0x32163a/0x321655: failed class/allocation range checks return WITHOUT original fallback.
    if(!sample_pointer_range(p.display_class) || !sample_pointer_range(p.allocated_closure))return r;
    if(!image.write(p.allocated_closure+0x10,p.item_icon))return unavailable(re::re_move(r),"closure +0x10 unavailable");
    ++r.stores;
    if(!p.helper_result)return unavailable(re::re_move(r),"0x3217ec return value not supplied");
    const Address sign_extended=static_cast<Address>(static_cast<ReI64>(*p.helper_result));
    if(!image.write(p.allocated_closure+0x18,sign_extended))return unavailable(re::re_move(r),"closure +0x18 unavailable");
    ++r.stores;
    if(!image.write<Address>(p.allocated_closure+0x20,0))return unavailable(re::re_move(r),"closure +0x20 unavailable");
    ++r.stores;
    if(!p.callback)return unavailable(re::re_move(r),"resolved callback target not supplied");
    r.calls.push_back({0x32175a,HookCallRole::instant_loot_callback,p.callback,{p.allocated_closure,0,0},1});
    return r;
}

// [I] High-level detour projections, with byte-confirmed call ordering and explicit omissions.
// [U] These event descriptions do not execute unresolved game code.
Events describe_detour(Rva rva, const DetourInputs& p) {
    switch(rva) {
    case 0x32ae10: {
        Events e;
        if(p.local_projectile) {
            if(p.tracers)e.push_back({0x32ae2f,"[C] append projectile tracer position/time"});
            e.push_back({0x32ae80,"[C] call worker 0x330b38"});
        }
        e.push_back({0x32aef7,"[C] invoke saved original through gate"});return e;
    }
    case 0x332554: {
        Events e;
        if(p.no_water_blur)e.push_back({0x33256b,"[C] zero overlay flags +68/e8/48/88/a8/108/c8"});
        if(p.water)e.push_back({0x332597,"[C] zero overlay qwords +60/e0/40/80/a0/100/c0"});
        e.push_back({0x332636,"[C] invoke saved original"});return e;
    }
    case 0x32f038:return {{0x32f047,p.no_smoke?"[C] disable object at +0x2f8":"[C] restore object if previously suppressed"},{0x32f112,"[C] invoke saved original"}};
    case 0x32f408:return {{0x32f499,"[C] Dayhack/BrightStars/SkyChanger/Ambient and aspect work"},{0x32fa67,"[U] remaining sky restore/original-call detail: consult full excerpt"}};
    case 0x3215cc:return p.instant_loot?Events{{0x3216ad,"[C] resolve <TryToMove>b__0 on ItemIcon/<>c__DisplayClass120_0"},{0x32175a,"[C] invoke callback through gate; skip ordinary hook original"}}:Events{{0x3217cc,"[C] invoke saved original with original arguments"}};
    case 0x32a9f8:return {{0x32aa0a,p.set_reported_position?"[C] copy position into local-player +0x4e8 object's +0x30/+0x38":"[C] skip extra position copy"},{0x32aab9,"[C] invoke saved original"}};
    case 0x324b30:return {{0x324b30,"[I] movement/automation tick; broad body retained in disassembly, not fully translated"}};
    case 0x322aec:return {{0x322aec,"[C] capture collider pointer/state, then invoke saved original"},{0x322c12,"[C] conditionally set Collider.isTrigger and CapsuleCollider.radius; restore branches"}};
    case 0x2f8574:return describe_frame_2f8574();
    case 0x32cae8:return {{0x32cafd,"[C] call 0x32bf38 tracer/visual preparation"},{0x32cb05,"[C] call 0x32c0d4 shot worker"},{0x32cb84,"[C] invoke saved original"}};
    case 0x32b62c:return {{0x32b641,"[C] call 0x32b3a8 bone/hit preparation"},{0x32b6c0,"[C] invoke saved original"}};
    case 0x2e91fc:return {{0x2e9218,"[C] call 0x2e6b20 automation worker"},{0x2e91fc,"[U] remaining original invocation detail: consult excerpt"}};
    case 0x2e12e0:return {{0x2e13d7,"[C] resolve Strike and obfuscated attack method; conditional silent melee/farm work"},{0x2e12e0,"[U] game physics/attack ABI unresolved; full body remains in excerpt"}};
    case 0x2ddb10:return {{0x2ddb35,"[C] snapshot orientation, then call 0x317c3c"},{0x2ddba2,"[C] invoke saved launcher original"},{0x2ddbb5,"[C] restore orientation through 0x2ddbbc"}};
    case 0x32cea8:return {{0x32cf58,"[C] invoke saved original first"},{0x32cf72,"[C] limit additional work to GameAssembly+0x3fe4a37 caller"},{0x32d434,"[I] desync/position/limiter branches; analyze_tick_32cea8 is a partial projection"}};
    default:{ __builtin_trap(); }
    }
}

// [I] Analyst-authored pointer-integrity check suggested by 0x2ea960/0x2eaa11.
PointerFinding inspect_dispatch_pointer(Address actual, Address expected, re::ReSpan<const CodeRegion> regions) {
    PointerFinding f{actual!=expected,true,false};
    for(const auto& r:regions)if(actual>=r.begin&&actual<r.end) {
        if(r.known_module)f.outside_known_modules=false;
        if(r.executable&&!r.file_backed)f.unbacked_executable=true;
    }
    return f;
}
} // namespace rust_internal_re
