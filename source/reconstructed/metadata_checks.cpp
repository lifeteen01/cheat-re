#include "metadata_analysis.hpp"

namespace rust_internal_re {
namespace {
void require_metadata(bool p, re::ReStringView message) {
    if (!p) __builtin_trap();
}
}
// [I] Offline fixture tests for literal, unusual selection rules and dependency bounds.
void check_metadata_reconstruction() {
    constexpr Address b=0x1000000;
    Snapshot image(b,re::ReVector<ReByte>(0x2000));
    auto put=[&](Address p,auto v) { require_metadata(image.write(p,v),"metadata fixture write"); };
    auto string_at=[&](Address p,re::ReStringView text) {
        for (ReUSize i=0;i<text.size();++i) put(p+i,text[i]);
        put(p+text.size(),char(0));
    };
    constexpr Address name=b+0x100,other=b+0x120,param=b+0x140,dash=b+0x160;
    string_at(name,"target");string_at(other,"different");string_at(param,"value");string_at(dash,"-");
    const re::ReArray<Address,4> methods{b+0x300,b+0x380,b+0x400,b+0x480};
    for (ReUSize i=0;i<methods.size();++i) {
        put(methods[i],Address(i==0 ? 0 : b+0x1000+i*0x10));
        put(methods[i]+0x18,i==0 ? name : other);
        put(methods[i]+0x28,b+0x800);
    }
    put(b+0x800,param);
    MetadataApi api;
    api.next_method_334660=[&](Address,Address& cursor) {
        return cursor<methods.size() ? methods[cursor++] : Address(0);
    };
    api.parameter_count_335140=[&](Address method) {
        return method==methods[1] ? -1 : 1;
    };
    require_metadata(select_counted_method_334a90(image,api,b+0x200,other,-1).value==methods[1],
                     "counted selector treats negative required count as exact");
    require_metadata(select_counted_method_334a90(image,api,b+0x200,other,1).value==methods[2],
                     "counted selector skips equal-name wrong count");
    require_metadata(select_counted_method_334a90(image,{},0,other,1).status==MetadataStatus::complete,
                     "counted null class reaches no dependency");
    MetadataApi names_only=api;names_only.parameter_count_335140={};
    require_metadata(select_counted_method_334a90(image,names_only,b+0x200,dash,1).status==MetadataStatus::complete,
                     "nonmatching names reach no count dependency");
    require_metadata(select_counted_method_334a90(image,names_only,b+0x200,name,1).status==MetadataStatus::missing_dependency,
                     "matching name requires count dependency");
    const auto pointer=method_by_pointer_334960(image,api,b+0x200,b+0x1020);
    require_metadata(pointer.status==MetadataStatus::complete && pointer.value==methods[2] && pointer.visited==3,
                     "metadata pointer search skips null code and returns MethodInfo");
    require_metadata(method_by_pointer_334960(image,api,0,0).status==MetadataStatus::complete,
                     "null class pointer search returns without calling iterator");
    require_metadata(method_by_pointer_334960(image,api,b+0x200,0).value==0,
                     "zero code is never selected");
    // [C] Equal-name method[0] is skipped; unknown negative count method[1] qualifies;
    // occurrence 1 selects the SECOND qualifying non-equal method, methods[2].
    const auto custom=select_method_33416c(image,api,b+0x200,name,1,1);
    require_metadata(custom.value==methods[2] && custom.visited==3,
                     "literal custom selection uses non-equal names and zero-based occurrence");
    require_metadata(select_method_33416c(image,api,b+0x200,name,1,-1).value==methods[1],
                     "negative occurrence selects first qualifying method");
    api.method_from_name_3345c4=[&](Address klass,Address requested,ReI32 count) {
        require_metadata(klass==b+0x200 && requested==name && count==7,"direct method arguments");
        return methods[0];
    };
    require_metadata(select_method_33416c(image,api,b+0x200,name,7,0).value==methods[0],
                     "occurrence zero uses external named lookup");
    require_metadata(select_parameter_method_3349ac(image,api,b+0x200,other,1,param,1).value==methods[2],
                     "parameter selector checks count then one-based parameter name");
    require_metadata(select_parameter_method_3349ac(image,api,b+0x200,name,-1,param,999).value==methods[0],
                     "negative parameter index bypasses count/name checks");
    api.parameter_count_335140=[](Address) { return 0; };
    require_metadata(select_parameter_method_3349ac(image,api,b+0x200,name,0,dash,0).value==methods[0],
                     "zero-count branch compares decoded dash sentinel");
    require_metadata(select_parameter_method_3349ac(image,api,b+0x200,name,0,param,0).value==0,
                     "zero-count sentinel mismatch skips method");
    put(b+0x1fff,char('t'));
    require_metadata(select_method_33416c(image,api,b+0x200,b+0x1fff,0,1).status==MetadataStatus::unreadable_snapshot,
                     "truncated name is an explicit read failure");
    api.next_method_334660=[&](Address,Address&) { return methods[0]; };
    require_metadata(method_by_pointer_334960(image,api,b+0x200,0,{3,20}).status==MetadataStatus::analysis_limit,
                     "nonterminating iterator is bounded");
    require_metadata(resolve_class_334224({},name,other).status==MetadataStatus::missing_dependency,
                     "missing game exports are explicit");
    api.domain_get_33479c=[] { return Address(0x1234); };
    api.assemblies_33480c=[](Address domain) {
        require_metadata(domain==0x1234,"domain assembly argument");
        return re::ReVector<Address>{10,20,30};
    };
    api.assembly_image_3344b0=[](Address assembly) { return assembly==10 ? 0 : assembly+1; };
    api.class_from_name_334528=[&](Address asm_image,Address ns,Address klass_name) {
        require_metadata(ns==other && klass_name==name,"namespace/class argument order");
        return asm_image==31 ? b+0x200 : 0;
    };
    const auto klass=resolve_class_334224(api,name,other);
    require_metadata(klass.value==b+0x200 && klass.visited==3,"class search skips null images and misses");
    api.next_method_334660=[&](Address,Address& cursor){return cursor<methods.size()?methods[cursor++]:Address(0);};
    api.method_name_335040=[&](Address m){return m==methods[0]?Address(0):other;};
    api.parameter_count_335140=[](Address){return 1;};
    api.parameter_name_3351b8=[&](Address m,ReI32 index){require_metadata(m==methods[1]&&index==0,"guarded selector uses export parameter index-minus-one");return param;};
    auto guarded=resolve_export_named_method_333bf4(image,api,name,other,1,param,other,1);
    require_metadata(guarded.value==methods[1],"guarded selector skips invalid exported method name and resolves parameter export");
    api.parameter_name_3351b8=[&](Address,ReI32 index){require_metadata(index==-1,"zero parameter index wraps before export");return param;};
    require_metadata(resolve_export_named_method_333bf4(image,api,name,other,1,param,other,0).value==methods[1],"guarded selector retains native zero-index path");
    api.parameter_count_335140={};api.parameter_name_3351b8={};
    require_metadata(resolve_export_named_method_333bf4(image,api,name,other,999,param,other,-1).value==methods[1],"guarded negative index skips count and parameter boundaries");
    api.parameter_count_335140=[](Address){return 0;};
    require_metadata(resolve_export_named_method_333bf4(image,api,name,other,0,dash,other,0).value==methods[1],"guarded zero-count dash sentinel");
}
} // namespace rust_internal_re
