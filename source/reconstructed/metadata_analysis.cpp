#include "metadata_analysis.hpp"

namespace rust_internal_re {
namespace {
struct Compared { int order{}; MetadataStatus status{MetadataStatus::complete}; };
// [C] Signed-byte subtraction: 0x3ca8a5..0x3ca8af. [I] Added finite read bound.
Compared compare_strings(const Snapshot& image, Address a, Address b, ReUSize limit,
                         bool nullable) {
    if (nullable && (!a || !b)) return {a==b ? 0 : 1}; // [C] 0x33502f..0x33503d.
    for (ReUSize i=0;i<limit;++i) {
        if (a+i<a || b+i<b) return {0,MetadataStatus::unreadable_snapshot};
        const auto lhs=image.read<ReI8>(a+i),rhs=image.read<ReI8>(b+i);
        if (!lhs || !rhs) return {0,MetadataStatus::unreadable_snapshot};
        if (*lhs!=*rhs) return {int(*lhs)-int(*rhs)};
        if (!*lhs) return {};
    }
    return {0,MetadataStatus::analysis_limit};
}
MetadataResult stopped(MetadataStatus status, ReUSize n=0) { return {0,status,n}; }
}

// [C] 0x334224..0x334294. Callback results stand in for the unresolved exports.
MetadataResult resolve_class_334224(const MetadataApi& api, Address name, Address ns,
                                  MetadataLimits limits) {
    if (!api.domain_get_33479c || !api.assemblies_33480c)
        return stopped(MetadataStatus::missing_dependency);
    const auto assemblies=api.assemblies_33480c(api.domain_get_33479c());
    ReUSize visited=0;
    for (Address assembly:assemblies) {
        if (visited==limits.iterations) return stopped(MetadataStatus::analysis_limit,visited);
        ++visited;
        if (!api.assembly_image_3344b0) return stopped(MetadataStatus::missing_dependency,visited);
        const Address image=api.assembly_image_3344b0(assembly);
        if (!image) continue; // [C] 0x334266/0x334269.
        if (!api.class_from_name_334528) return stopped(MetadataStatus::missing_dependency,visited);
        const Address klass=api.class_from_name_334528(image,ns,name);
        if (klass) return {klass,MetadataStatus::complete,visited};
    }
    return {0,MetadataStatus::complete,visited};
}

// [C] 0x334960..0x3349a9; iterator state begins at zero and is passed by address.
MetadataResult method_by_pointer_334960(const Snapshot& image, const MetadataApi& api,
                                      Address klass, Address expected, MetadataLimits limits) {
    if (!klass) return {};
    if (!api.next_method_334660) return stopped(MetadataStatus::missing_dependency);
    Address state=0;
    for (ReUSize n=0;n<limits.iterations;++n) {
        const Address method=api.next_method_334660(klass,state);
        if (!method) return {0,MetadataStatus::complete,n};
        const auto code=image.read<Address>(method);
        if (!code) return stopped(MetadataStatus::unreadable_snapshot,n+1);
        if (*code && *code==expected) return {method,MetadataStatus::complete,n+1};
    }
    return stopped(MetadataStatus::analysis_limit,limits.iterations);
}

// [C] 0x334195..0x334200, following the class lookup prelude at 0x334180.
MetadataResult select_method_33416c(const Snapshot& image, const MetadataApi& api,
                                  Address klass, Address name, ReI32 count,
                                  ReI32 occurrence, MetadataLimits limits) {
    if (!occurrence) {
        if (!api.method_from_name_3345c4) return stopped(MetadataStatus::missing_dependency);
        return {api.method_from_name_3345c4(klass,name,count),MetadataStatus::complete,0};
    }
    if (!api.next_method_334660) return stopped(MetadataStatus::missing_dependency);
    Address state=0;
    ReI32 matching=0;
    for (ReUSize n=0;n<limits.iterations;++n) {
        const Address method=api.next_method_334660(klass,state);
        if (!method) return {0,MetadataStatus::complete,n};
        const auto actual_name=image.read<Address>(method+0x18);
        if (!actual_name) return stopped(MetadataStatus::unreadable_snapshot,n+1);
        const auto compared=compare_strings(image,*actual_name,name,limits.string_bytes,false);
        if (compared.status!=MetadataStatus::complete) return stopped(compared.status,n+1);
        if (!compared.order) continue; // [C] JE skips equal names at 0x3341b9.
        if (count>-1) {
            if (!api.parameter_count_335140) return stopped(MetadataStatus::missing_dependency,n+1);
            const auto actual_count=api.parameter_count_335140(method);
            if (actual_count>=0 && actual_count!=count) continue;
        }
        if (matching>=occurrence) return {method,MetadataStatus::complete,n+1};
        // [I] Avoid host signed overflow; finite iteration bound normally prevents it.
        if (matching==INT32_MAX) return stopped(MetadataStatus::analysis_limit,n+1);
        ++matching;
    }
    return stopped(MetadataStatus::analysis_limit,limits.iterations);
}

// [C] 0x3349ac..0x334a8b; supplied names are numeric keys into the owned snapshot.
MetadataResult select_parameter_method_3349ac(const Snapshot& image, const MetadataApi& api,
                                            Address klass, Address name, ReI32 index,
                                            Address parameter_name, ReI32 required_count,
                                            MetadataLimits limits) {
    if (!klass) return {};
    if (!api.next_method_334660) return stopped(MetadataStatus::missing_dependency);
    Address state=0;
    for (ReUSize n=0;n<limits.iterations;++n) {
        const Address method=api.next_method_334660(klass,state);
        if (!method) return {0,MetadataStatus::complete,n};
        const auto actual_name=image.read<Address>(method+0x18);
        if (!actual_name) return stopped(MetadataStatus::unreadable_snapshot,n+1);
        auto compared=compare_strings(image,*actual_name,name,limits.string_bytes,true);
        if (compared.status!=MetadataStatus::complete) return stopped(compared.status,n+1);
        if (compared.order) continue;
        if (index<0 || !parameter_name) return {method,MetadataStatus::complete,n+1};
        const auto parameters=image.read<Address>(method+0x28);
        if (!parameters) return stopped(MetadataStatus::unreadable_snapshot,n+1);
        if (!api.parameter_count_335140) return stopped(MetadataStatus::missing_dependency,n+1);
        const auto actual_count=api.parameter_count_335140(method);
        if (index>actual_count || (required_count>=0 && required_count!=actual_count)) continue;
        if (actual_count>0) {
            // [C] LEA/SHL execute at 32 bits, then CDQE sign-extends (0x334a25..0x334a2d).
            const auto offset=re::re_bit_cast<ReI32>(ReU32(index)*24u);
            const Address cell=*parameters+Address(ReI64(offset))-24;
            const auto actual_parameter=image.read<Address>(cell);
            if (!actual_parameter) return stopped(MetadataStatus::unreadable_snapshot,n+1);
            compared=compare_strings(image,*actual_parameter,parameter_name,limits.string_bytes,true);
        } else {
            // [C] 0x334a34..0x334a46 obtains the decoded string "-" instead of a parameter.
            const auto first=image.read<ReU8>(parameter_name);
            if (!first) return stopped(MetadataStatus::unreadable_snapshot,n+1);
            if (*first!='-') continue;
            const auto end=image.read<ReU8>(parameter_name+1);
            if (!end) return stopped(MetadataStatus::unreadable_snapshot,n+1);
            compared={*end ? 1 : 0};
        }
        if (compared.status!=MetadataStatus::complete) return stopped(compared.status,n+1);
        if (!compared.order) return {method,MetadataStatus::complete,n+1};
    }
    return stopped(MetadataStatus::analysis_limit,limits.iterations);
}
MetadataResult select_counted_method_334a90(const Snapshot& image,const MetadataApi& api,
    Address klass,Address name,ReI32 count,MetadataLimits limits) {
    if(!klass)return {};
    if(!api.next_method_334660)return stopped(MetadataStatus::missing_dependency);
    Address state=0;
    for(ReUSize n=0;n<limits.iterations;++n) {
        const Address method=api.next_method_334660(klass,state);
        if(!method)return {0,MetadataStatus::complete,n};
        const auto actual=image.read<Address>(method+0x18);
        if(!actual)return stopped(MetadataStatus::unreadable_snapshot,n+1);
        const auto compared=compare_strings(image,*actual,name,limits.string_bytes,true);
        if(compared.status!=MetadataStatus::complete)return stopped(compared.status,n+1);
        if(compared.order)continue;
        if(!api.parameter_count_335140)return stopped(MetadataStatus::missing_dependency,n+1);
        if(api.parameter_count_335140(method)==count)return {method,MetadataStatus::complete,n+1};
    }
    return stopped(MetadataStatus::analysis_limit,limits.iterations);
}
MetadataResult resolve_export_named_method_333bf4(const Snapshot& im,const MetadataApi& api,
    Address class_name,Address method_name,ReI32 count,Address parameter_name,
    Address namespace_name,ReI32 index,MetadataLimits limits) {
    const auto klass=resolve_class_334224(api,class_name,namespace_name,limits);
    if(klass.status!=MetadataStatus::complete)return klass;
    if(!sample_pointer_range(klass.value))return {};
    if(!api.next_method_334660)return stopped(MetadataStatus::missing_dependency);
    Address cursor=0;
    for(ReUSize n=0;n<limits.iterations;++n) {
        const Address method=api.next_method_334660(klass.value,cursor);
        if(!method)return {0,MetadataStatus::complete,n};
        if(!sample_pointer_range(method))continue;
        if(!api.method_name_335040)return stopped(MetadataStatus::missing_dependency,n+1);
        const Address name=api.method_name_335040(method);
        if(!sample_pointer_range(name))continue;
        auto compared=compare_strings(im,name,method_name,limits.string_bytes,true);
        if(compared.status!=MetadataStatus::complete)return stopped(compared.status,n+1);
        if(compared.order)continue;
        if(index<0||!parameter_name)return {method,MetadataStatus::complete,n+1};
        if(!api.parameter_count_335140)return stopped(MetadataStatus::missing_dependency,n+1);
        const auto actual=api.parameter_count_335140(method);
        if(index>actual||(count>=0&&actual!=count))continue;
        if(actual>0) {
            if(!api.parameter_name_3351b8)return stopped(MetadataStatus::missing_dependency,n+1);
            const auto slot=re::re_bit_cast<ReI32>(ReU32(index)-1u);
            const Address actual_parameter=api.parameter_name_3351b8(method,slot);
            if(!actual_parameter)continue;
            compared=compare_strings(im,actual_parameter,parameter_name,limits.string_bytes,true);
        } else {
            const auto dash=im.read<char>(parameter_name);
            if(!dash)return stopped(MetadataStatus::unreadable_snapshot,n+1);
            if(*dash!='-')continue;
            const auto end=im.read<char>(parameter_name+1);
            if(!end)return stopped(MetadataStatus::unreadable_snapshot,n+1);
            compared={*end==0?0:1};
        }
        if(compared.status!=MetadataStatus::complete)return stopped(compared.status,n+1);
        if(!compared.order)return {method,MetadataStatus::complete,n+1};
    }
    return stopped(MetadataStatus::analysis_limit,limits.iterations);
}
} // namespace rust_internal_re
