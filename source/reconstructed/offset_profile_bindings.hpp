#pragma once
#include "offset_catalog.hpp"
#include "field_getters_analysis.hpp"

namespace rust_internal_re {
// Empty key means the getter/wrapper is outside these audited catalogues.
re::ReStringView profile_field_key(Rva);
re::ReStringView profile_direct_key(Rva);
// Owned Snapshot reads only. Missing/mistyped configuration is a missing_boundary;
// absent bytes/overflow are missing_bytes. Invalid receivers retain the audited
// zero/UINT32_MAX defaults, after configuration has been checked.
GameBaseResult<Address> profile_read_pointer_getter(const re_base::OffsetProfile &, const Snapshot &, Rva, Address);
GameBaseResult<ReU32> profile_read_u32_getter(const re_base::OffsetProfile &, const Snapshot &, Rva, Address);
GameBaseResult<ReU8> profile_read_byte_getter(const re_base::OffsetProfile &, const Snapshot &, Rva, Address);
GameBaseResult<float> profile_read_scalar_getter(const re_base::OffsetProfile &, const Snapshot &, Rva, Address);
GameBaseResult<bool> profile_read_predicate_getter(const re_base::OffsetProfile &, const Snapshot &, Rva, Address);
// Numeric resolution only: this neither dereferences nor invokes the address.
re_base::ProfileResult profile_resolve_direct_address(const re_base::OffsetProfile &, Rva wrapper,
                                                     Address module_base, Address &address);
}
