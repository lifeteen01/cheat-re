#include "launcher_analysis.hpp"
namespace rust_internal_re {
// [C] 0x373b28..0x373c31. Parentheses retain the observed scalar SSE grouping.
Orientation multiply_orientation_373b28(Orientation a,Orientation b) {
    const float w=((b.w*a.w-b.x*a.x)-b.y*a.y)-b.z*a.z;
    const float z=((b.y*a.x+b.z*a.w)-a.y*b.x)+a.z*b.w;
    const float y=((b.y*a.w-b.z*a.x)+a.y*b.w)+a.z*b.x;
    const float x=((a.x*b.w+b.x*a.w)+b.z*a.y)-a.z*b.y;
    return {x,y,z,w};
}
// [C] 0x373d1c..0x373d6d: read rotation, inverse it, multiply, store at +0x5c.
LauncherResult write_orientation_373d04(Snapshot& image,Address object,Orientation desired,const OrientationApi& api) {
    LauncherResult out;
    if(!sample_pointer_range(object))return out;
    if(!api.rotation_373c60) {out.status=LauncherStatus::missing_dependency;out.stopped_at=0x373d2c;return out;}
    const Orientation current=api.rotation_373c60(object);
    if(!api.inverse_3738cc) {out.status=LauncherStatus::missing_dependency;out.stopped_at=0x373d42;return out;}
    const Orientation inverse=api.inverse_3738cc(current);
    const Orientation local=multiply_orientation_373b28(inverse,desired);
    if(!image.write(object+0x5c,local)) {out.status=LauncherStatus::unreadable_snapshot;out.stopped_at=0x373d6d;return out;}
    out.orientation_written=true;
    return out;
}

// [C] 0x2ddb10..0x2ddbb5, capture 0x2dda50..0x2dda96, restore 0x2ddbbc..0x2ddbf2.
// [I] Lazy target/context caches are resolved callback dependencies, not spoof-call execution.
LauncherResult replay_launcher_2ddb10(Snapshot& image,LauncherState& state,Address launcher,const LauncherApi& api) {
    LauncherResult out;
    const auto missing=[&](Rva site) {out.status=LauncherStatus::missing_dependency;out.stopped_at=site;return out;};
    if(!api.local_player_2dda9c)return missing(0x2ddb1c);
    const Address player=api.local_player_2dda9c();
    // [C] Getter is called even before the capture helper validates player.
    if(!api.related_369298)return missing(0x2ddb27);
    const Address related=api.related_369298(player);
    if(sample_pointer_range(player)&&sample_pointer_range(related)) {
        // [C] 0x36920c repeats the related-object getter; it need not equal the first result.
        const Address capture_related=api.related_369298(player);
        if(!sample_pointer_range(capture_related)) {
            // [U] 0x369243 returns an unwritten temporary. Do not fabricate its 16 bytes.
            out.status=LauncherStatus::unreadable_snapshot;out.stopped_at=0x2dda7b;return out;
        }
        if(!api.orientation_3739c4)return missing(0x36923e);
        state.saved_3d7030=api.orientation_3739c4(capture_related);
        out.saved=true;
        if(!api.worker_instance_35d31c)return missing(0x2dda86);
        const Address worker=api.worker_instance_35d31c();
        if(api.worker_replay_317c3c) {
            out.worker_called=true;
            const auto result=api.worker_replay_317c3c(worker,player);
            if(result.status!=LauncherStatus::complete) {
                out.status=result.status;out.stopped_at=result.stopped_at;return out;
            }
        } else {
            if(!api.worker_317c3c)return missing(0x2dda91);
            api.worker_317c3c(worker,player);out.worker_called=true;
        }
    }
    if(!api.original)return missing(0x2ddba2);
    api.original(launcher);out.original_called=true;
    // [C] Restore is a tail call and happens only after the ordinary original returns.
    if(sample_pointer_range(player)&&sample_pointer_range(related)) {
        const auto restore=write_orientation_373d04(image,related,state.saved_3d7030,api.restore);
        out.status=restore.status;out.stopped_at=restore.stopped_at;
        out.orientation_written=restore.orientation_written;
    }
    return out;
}
} // namespace rust_internal_re
