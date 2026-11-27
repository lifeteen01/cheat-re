// [C] 0x334bf4..0x334ff2 (1022 bytes): IL2CPP metadata resolver — full assembly/class/method scan.
// Iterates all IL2CPP assemblies, all classes in each image, all methods in each class,
// and matches against a target signature by inspecting method name, parameter types,
// and return type. Used for runtime resolution of game methods by signature.
//
// Flow:
//   1. Call il2cpp_domain_get (0x33479c)
//   2. Call il2cpp_domain_get_assemblies (0x33480c) → array + count
//   3. For each assembly: get image from array[i*8]
//      a. Call il2cpp_image_get_class_count (0x334760)
//      b. For each class index: call il2cpp_image_get_class (0x334958)
//      c. For each method in class (il2cpp_class_get_methods iteration):
//         - Get method_name (0x3352b8), return_type (0x3352d8), type_name (0x3352c8)
//         - Get param_count (0x3352d0), param types (0x334950)
//         - Compare signature against target, build result if matched
//   4. Return resolved method pointer or null
//
// Evidence: dump bytes at RVA 0x334bf4, 37 call sites, 0x108 stack frame.
// Cross-ref: calls il2cpp dispatch wrappers from metadata_analysis.cpp.
#include "reconstruction.hpp"

namespace rust_internal_re {

struct MetadataResolverConfig {
    re::ReFunction<Address()> domain_get_33479c;
    re::ReFunction<Address(Address, Address&)> domain_assemblies_33480c;
    re::ReFunction<ReU64(Address)> class_count_334760;
    re::ReFunction<Address(Address)> class_count_check_334768;
    re::ReFunction<Address(Address, ReI32)> class_at_334958;
    re::ReFunction<Address(Address, Address)> next_method_334908;
    re::ReFunction<Address(Address)> method_name_3352b8;
    re::ReFunction<Address(Address)> method_name_alt_3352c0;
    re::ReFunction<Address(Address)> return_type_3352d8;
    re::ReFunction<Address(Address)> type_name_3352c8;
    re::ReFunction<ReI32(Address)> param_count_3352d0;
    re::ReFunction<Address(Address, ReI32)> param_type_334950;
    re::ReFunction<Address(Address)> string_builder_2d4560;
    re::ReFunction<Address(Address)> string_copy_2cc2cc;
    re::ReFunction<ReU32(Address)> hash_2cd7ec;
    re::ReFunction<Address(Address)> to_managed_2cdccc;
};

struct MetadataResolverResult {
    GameBaseStatus status{GameBaseStatus::complete};
    Address resolved_method{};
    Address resolved_class{};
};

// [C] 0x334bf4: Full IL2CPP metadata scan for method resolution by signature.
MetadataResolverResult metadata_resolver_334bf4(
    Snapshot& s,
    const MetadataResolverConfig& config,
    ReU32 target_hash,
    ReI32 target_param_count)
{
    MetadataResolverResult result{};

    // [C] 0x334c0d: Get IL2CPP domain
    Address domain = config.domain_get_33479c ? config.domain_get_33479c() : 0;
    if (!domain) return result;

    // [C] 0x334c23: Get assemblies array and count
    Address assembly_count_ref{};
    Address assemblies = config.domain_assemblies_33480c
        ? config.domain_assemblies_33480c(domain, assembly_count_ref)
        : 0;
    if (!assemblies) return result;

    // [C] 0x334c2e: Iterate assemblies
    for (ReU64 asm_idx = 0; asm_idx < assembly_count_ref; ++asm_idx) {
        // [C] 0x334c47: image = assemblies[asm_idx * 8] → *(image)
        auto asm_opt = s.read<Address>(assemblies + asm_idx * 8);
        if (!asm_opt) continue;
        auto image_opt = s.read<Address>(*asm_opt);
        if (!image_opt) continue;
        Address image = *image_opt;

        // [C] 0x334c51: Get class count for this image
        ReU64 class_count = config.class_count_334760 ? config.class_count_334760(image) : 0;
        if (!class_count) continue;

        // [C] 0x334c65: Iterate classes
        for (ReI32 cls_idx = 0; cls_idx < static_cast<ReI32>(class_count); ++cls_idx) {
            Address klass = config.class_at_334958 ? config.class_at_334958(image, cls_idx) : 0;
            if (!klass) continue;

            // [C] 0x334c7a: Build search string for class
            Address builder = config.string_builder_2d4560 ? config.string_builder_2d4560(klass) : 0;

            // [C] 0x334c7f+: Iterate methods in this class
            Address iter = 0;
            while (true) {
                Address method = config.next_method_334908 ? config.next_method_334908(klass, iter) : 0;
                if (!method) break;

                // Get method name and compute hash
                Address name = config.method_name_3352b8 ? config.method_name_3352b8(method) : 0;
                if (!name) continue;

                ReU32 name_hash = config.hash_2cd7ec ? config.hash_2cd7ec(name) : 0;

                // Check param count
                ReI32 param_count = config.param_count_3352d0 ? config.param_count_3352d0(method) : -1;

                // Match against target
                if (name_hash == target_hash &&
                    (target_param_count < 0 || param_count == target_param_count)) {
                    result.resolved_method = method;
                    result.resolved_class = klass;
                    return result;
                }
            }
        }
    }

    return result;
}

} // namespace rust_internal_re
