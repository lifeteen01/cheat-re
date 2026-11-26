#pragma once
#include "projectile_analysis.hpp"
#include "snapshot_bindings.hpp"
namespace rust_internal_re {
// [C] begin/end are read from the vector's +0/+8; payload pointers retain order.
// [I] A missing byte or malformed range throws SnapshotBindingFailure.
re::ReOptional<ProjectileShotEntry> find_shot_32b838(const Snapshot&,Address vector,
    ReU32 id,ReUSize maximum=1000000);
Address erase_shot_32cb8c(Snapshot&,Address vector,Address iterator,ReUSize maximum=1000000);
ProjectileBoundaries bind_projectile_container(Snapshot&,Address vector,ProjectileBoundaries = {},
    ReUSize maximum=1000000);
void check_projectile_container();
} // namespace rust_internal_re
