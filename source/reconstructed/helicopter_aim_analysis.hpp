#pragma once
#include "snapshot_bindings.hpp"

namespace rust_internal_re {
// [I] Owned representations of the two additional globals touched by 2fa300.
struct HelicopterAimState {
    Address target_3d72b8{};
    float projectile_speed_3e5e74{};
};
// [C] Whole native worker 2fa300..2fabf6. The context argument is overwritten
// before use. [U] Matching game/Unity results remain explicit AimWeaponCalls.
AimWeaponResult replay_helicopter_aim_2fa300(Snapshot&,AimState&,HelicopterAimState&,
    const AimConfig&,Address context,Address local,const AimWeaponCalls&);
// [I] Returned callback borrows all four referenced objects; they must outlive it.
// [C] Typed dependency failures propagate through replay_aim_2f9988's catch.
AimWeaponCalls bind_helicopter_aim(Snapshot&,AimState&,HelicopterAimState&,
    const AimConfig&,AimWeaponCalls);
void check_helicopter_aim_reconstruction();
} // namespace rust_internal_re
