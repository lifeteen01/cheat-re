#pragma once
#include "game_base_analysis.hpp"
namespace rust_internal_re {
// [I] A reached dependency failure carries its RVA across callback interfaces.
// [U] This is an offline analysis exception, not an original game exception ABI.
struct SnapshotBindingFailure {
    GameBaseStatus status;
    Rva site;
    re::ReString reason;
    SnapshotBindingFailure(GameBaseStatus s,Rva r)
        : status(s),site(r),reason("unavailable snapshot binding dependency") {}
};
struct SnapshotBindingQueries {
    AimWeaponCalls foreign;
    ProjectionQueries projection;
    BoneQueries bones;
    AttachmentQueries attachments;
    ProjectionBounds bounds;
    bool increase_velocity{};
};
// [C] Integer helpers retain raw uint32_t bits and invalid-receiver defaults.
re::ReOptional<ReU32> definition_id_37261c(const Snapshot&,Address);
re::ReOptional<ReU32> definition_category_37236c(const Snapshot&,Address);
// [C] Preserves native signed, wrapping index*8 and the explicit -1 rejection.
GameBaseResult<Vec3> bone_position_368be8(const Snapshot&,Address,ReI32,
    const re::ReFunction<Vec3(Address)>& transform_position_3747d4);
// [I] The returned closures borrow Snapshot; it must outlive them. Untranslated
// RVAs dispatch to foreign callbacks or throw a typed missing-boundary failure.
AimWeaponCalls bind_snapshot_aim(const Snapshot&,SnapshotBindingQueries);
void check_snapshot_bindings();
} // namespace rust_internal_re
