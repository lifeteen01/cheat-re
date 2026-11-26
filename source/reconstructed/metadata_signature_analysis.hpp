#pragma once
#include "metadata_analysis.hpp"
namespace rust_internal_re {
struct MetadataSignatureApi {
    MetadataApi exports;
    re::ReFunction<ReU64(Address)> class_count_334760;
    re::ReFunction<Address(Address,ReI32)> class_at_334958;
    re::ReFunction<Address(Address)> method_name_3352c0;
    re::ReFunction<Address(Address,ReU32)> parameter_type_334950;
    re::ReFunction<Address(Address)> return_type_3352d8,type_name_3352c8;
};
// [I] Owned replacement for the native cheat's hash cache allocation/storage.
// [C] Cache lookup keys truncate the request to32 bits; scan comparison does not.
using MetadataSignatureCache=re::ReMap<ReU32,Address>;
ReU32 signature_crc_334768(re::ReStringView,ReU32 seed=0);
MetadataResult resolve_signature_333d10(const Snapshot&,MetadataSignatureCache&,
    const MetadataSignatureApi&,ReU64 requested_hash,MetadataLimits = {});
void check_metadata_signatures();
} // namespace rust_internal_re
