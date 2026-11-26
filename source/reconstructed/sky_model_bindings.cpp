#include "sky_model_bindings.hpp"
namespace rust_internal_re {
SkyModelApi bind_sky_model_exports(Snapshot& im,Address base,Address initial,SkyModelApi calls,
    MetadataLimits limits) {
    const auto resolve=[&im,base,initial,limits](Rva getter) {
        const auto result=resolve_metadata_export(im,base,initial,getter,limits);
        if(result.status!=MetadataStatus::complete) {
            const auto status=result.status==MetadataStatus::unreadable_snapshot?GameBaseStatus::missing_bytes:
                result.status==MetadataStatus::analysis_limit?GameBaseStatus::analysis_limit:GameBaseStatus::missing_boundary;
            __builtin_trap();
        }
        return result.value;
    };
    calls.export_target=resolve;
    calls.allocator_target_2dee4c=[resolve]{return resolve(0x2dee4c);};
    return calls;
}
} // namespace rust_internal_re
