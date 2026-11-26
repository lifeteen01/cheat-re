#pragma once
#include "registry_analysis.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
// [I] Borrowed registries; mapped writes remain in the registry's owned arena.
AimWeaponCalls bind_baseline_registry(RegistryStore&,AimWeaponCalls = {});
TargetCalls bind_target_registry(const Snapshot& objects,RegistryStore&,TargetCalls = {});
void check_registry_bindings();
} // namespace rust_internal_re
