#pragma once
#include "metadata_wrapper_analysis.hpp"
namespace rust_internal_re {
// [C/I] Shared packaging bodies for other typed local wrappers. A missing
// numeric pointer argument is span-gated and left unmaterialized, never zeroed.
void metadata_argument_one_2cb9fc(Snapshot &, Address context, re::ReOptional<Address> argument);
void metadata_argument_two_2d2094(Snapshot &, Address context, Address first,
                                  re::ReOptional<Address> second = {});
void metadata_argument_index_32b1c8(Snapshot &, Address context, Address first,
                                    ReU32 second);
// [C] Known stores in six local argument-packaging helpers before the excluded
// 3cdbd4 execution gate. Unknown stack bytes/return pointers remain unmaterialized.
MetadataWrapperEffects bind_metadata_argument_context(Snapshot &, MetadataWrapperEffects);
MetadataApi bind_metadata_literal_wrappers(Snapshot &, Address module, MetadataWrapperEffects);
void check_metadata_argument_bindings();
} // namespace rust_internal_re
