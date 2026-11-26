#pragma once
#include "../../freestanding/runtime/re_core.h"

namespace re_base {
// New configuration contracts, not recovered game ABI declarations.
enum class OffsetKind { module_rva, field_offset };
struct OffsetEntry {
    OffsetKind kind{OffsetKind::field_offset};
    re::ReString module; // Required for RVAs, empty for member offsets.
    ReU64 value{};
};
struct ModuleIdentity {
    re::ReString sha256; // Empty means unverified; never a successful build match.
    ReU64 image_size{}; // Zero means unspecified.
};
struct OffsetProfile {
    ReU32 schema_version{1};
    re::ReString profile_id;
    re::ReString game_build;
    re::ReString provenance;
    re::ReMap<re::ReString, ModuleIdentity> modules;
    re::ReMap<re::ReString, OffsetEntry> offsets;
};
enum class ProfileError { none, io, syntax, schema, invalid_value, missing_key,
                          kind_mismatch, module_mismatch, overflow, unverified_build };
struct ProfileResult {
    ProfileError error{ProfileError::none};
    re::ReString message;
    explicit operator bool() const { return error == ProfileError::none; }
};
// Parsing/loading must not replace the output on failure. Saving is atomic.
// Limits: 1 MiB JSON; 128 modules; 4096 offsets; 256-byte printable ASCII
// names; 4096-byte UTF-8 metadata; RVAs <=UINT32_MAX; fields <=16 MiB.
ProfileResult parse_offset_profile(re::ReStringView, OffsetProfile &);
ProfileResult load_offset_profile(re::ReStringView, OffsetProfile &);
ProfileResult save_offset_profile(re::ReStringView, const OffsetProfile &);
ProfileResult validate_offset_profile(const OffsetProfile &);
// Returns empty on invalid/oversized profiles; never emits a successful default.
re::ReString serialize_offset_profile(const OffsetProfile &);
ProfileResult set_profile_offset(OffsetProfile &, re::ReStringView key, re::ReStringView hex);
ProfileResult get_profile_offset(const OffsetProfile &, re::ReStringView key,
                                 OffsetKind expected, ReU64 &value);
ProfileResult resolve_profile_address(const OffsetProfile &, re::ReStringView key,
                                      OffsetKind expected, ReU64 base,
                                      ReU64 &address);
// Supplied fingerprints must be measured by the caller. No native/game call.
// Every listed module needs a nonempty SHA-256 and nonzero matching image size.
ProfileResult validate_profile_modules(const OffsetProfile &,
                                        const re::ReMap<re::ReString, ModuleIdentity> &observed);
void check_offset_profile();
}
