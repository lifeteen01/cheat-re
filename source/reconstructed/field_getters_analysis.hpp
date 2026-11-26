#pragma once
#include "snapshot_bindings.hpp"
#include "interaction_workers.hpp"
#include "movement_main_analysis.hpp"
namespace rust_internal_re {
// [I] Typed projections of the 28 audited getter bodies; no live ABI declarations.
enum class FieldGetterKind { pointer, raw_u32, byte, scalar, predicate };
struct FieldGetterSpec {
    Rva getter{}, end{};
    ReU32 offset{};
    FieldGetterKind kind{};
    ReU32 invalid_u32{};
};
re::ReSpan<const FieldGetterSpec> field_getter_specs();
GameBaseResult<Address> read_pointer_getter(const Snapshot&,Rva,Address);
GameBaseResult<ReU32> read_u32_getter(const Snapshot&,Rva,Address);
GameBaseResult<ReU8> read_byte_getter(const Snapshot&,Rva,Address);
GameBaseResult<float> read_scalar_getter(const Snapshot&,Rva,Address);
GameBaseResult<bool> read_predicate_getter(const Snapshot&,Rva,Address);
// [I] Closures borrow the snapshot. Unknown RVAs reach the supplied foreign
// callback or throw SnapshotBindingFailure; absent bytes never become zero-success.
AimWeaponCalls bind_field_getters_aim(const Snapshot&,AimWeaponCalls = {});
ProjectileBoundaries bind_field_getters_projectile(const Snapshot&,ProjectileBoundaries = {});
InteractionCalls bind_field_getters_interaction(const Snapshot&,InteractionCalls = {});
MovementMainCalls bind_field_getters_movement(const Snapshot&,MovementMainCalls = {});
void check_field_getters_reconstruction();
} // namespace rust_internal_re
