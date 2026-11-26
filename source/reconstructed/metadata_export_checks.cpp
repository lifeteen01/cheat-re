#include "re_compat.h"
#include "metadata_export_analysis.hpp"
#include "sky_model_bindings.hpp"
namespace rust_internal_re {
namespace {
void expect_export(bool b,const char* text) {if(!b){ __builtin_trap(); }}
template<typename T> void put_export(Snapshot& im,Address p,T v) { im.write(p,v); }
void text_export(Snapshot& im,Address p,re::ReStringView text) {
    for(char c:text)put_export(im,p++,c);
    put_export(im,p,char(0));
}
}
void check_metadata_exports() {
    constexpr Address base=0x1000000,node=base+0x100,next=base+0x200,module=base+0x10000;
    Snapshot im(base,re::ReVector<ReByte>(0x400000));
    put_export(im,node,node);put_export(im,node+0x30,module);
    put_export(im,module+0x3c,ReI32(0x80));
    put_export(im,module+0x108,ReU64(0x10000000400ULL));
    put_export(im,module+0x418,ReU32(13));put_export(im,module+0x420,ReU32(0x800));
    put_export(im,module+0x424,ReU32(0x900));put_export(im,module+0x41c,ReU32(0xa00));
    const re::ReArray<re::ReStringView,13> names{"il2cpp_domain_get","il2cpp_domain_get_assemblies",
        "il2cpp_assembly_get_image","il2cpp_class_from_name","il2cpp_class_get_method_from_name",
        "il2cpp_class_get_methods","il2cpp_method_get_param_count","il2cpp_string_new_wrapper",
        "il2cpp_type_get_object","il2cpp_class_get_type","il2cpp_object_new","il2cpp_method_get_name","IL2CPP_DOMAIN_GET"};
    for(ReU32 i=0;i<names.size();++i) {
        put_export(im,module+0x800+i*4,ReU32(0xb00+i*0x60));
        put_export(im,module+0x900+i*2,ReU16(12-i));
        put_export(im,module+0xa00+(12-i)*4,ReU32(i==12?0x450:0x2000+i*0x10));
        text_export(im,module+0xb00+i*0x60,names[i]);
    }
    const auto specs=metadata_export_specs();expect_export(specs.size()==12,"twelve metadata resolver descriptors");
    for(ReUSize i=0;i<specs.size();++i) {
        const auto& spec=specs[i];
        expect_export(export_name_hash_2cc0fc(names[i],ReU32(spec.key>>32))==ReU32(spec.key),"literal metadata export hash matches candidate spelling");
        const auto found=resolve_metadata_export(im,base,node,spec.getter);
        const Address expected=module+(i==0?0x450:0x2000+i*0x10);
        expect_export(found.status==MetadataStatus::complete&&found.value==expected,"cached resolver follows reverse-name/ordinal lookup");
        expect_export(im.read<Address>(base+spec.cache)==expected,"resolver writes exact cache cell");
    }
    // [C] The last case-folded match wins, and an RVA inside the directory is
    // returned literally rather than resolving or rejecting a forwarder.
    expect_export(scan_loader_exports(im,node,specs[0].key).names==1,"reverse first matching name wins");
    const auto sky=bind_sky_model_exports(im,base,0);
    expect_export(sky.export_target(0x2cc164)==module+0x2070&&sky.allocator_target_2dee4c()==module+0x20a0,
                  "sky export binding reads concrete cache cells without loader fallback");
    put_export(im,module+0x418,ReU32(0));
    expect_export(resolve_metadata_export(im,base,0,specs[0].getter).value==module+0x450,"nonzero cache avoids all loader reads");
    put_export(im,base+specs[0].cache,Address(0));
    expect_export(resolve_metadata_export(im,base,node,specs[0].getter).value==0,"failed native lookup caches zero");
    put_export(im,module+0x418,ReU32(1));
    expect_export(resolve_metadata_export(im,base,node,specs[0].getter).value==module+0x2000,"zero cache is retried after image changes");
    const auto sign=export_name_hash_2cc0fc(re::re_string_fill(1, char(0xff)),123);
    expect_export(sign==((123u^0xffffffffu)*0x1000193u),"export hash sign-extends nonASCII byte");
    expect_export(export_name_hash_2cc0fc("AbC",42)==export_name_hash_2cc0fc("abc",42),"ASCII-only case folding");
    put_export(im,module+0x418,ReU32(13));
    expect_export(scan_loader_exports(im,node,specs[6].key,{1,4096}).status==MetadataStatus::analysis_limit,"name traversal limit reports failure");
    expect_export(scan_loader_exports(im,node,specs[0].key,{100,2}).status==MetadataStatus::analysis_limit,"unterminated bounded export name reports failure");
    put_export(im,node,next);put_export(im,next+0x30,Address(0));
    const auto stopped=scan_loader_exports(im,node,0);
    expect_export(stopped.status==MetadataStatus::complete&&stopped.modules==1&&stopped.value==0,"next loader entry with null image terminates before PE reads");
    put_export(im,next+0x30,module);put_export(im,next,next);
    expect_export(scan_loader_exports(im,node,0,{20,4096}).status==MetadataStatus::analysis_limit,"malformed loader cycle is an explicit analysis stop");
    expect_export(scan_loader_exports(im,base+0x3ffff0,0).status==MetadataStatus::unreadable_snapshot,"truncated loader entry has no fabricated miss");
    expect_export(resolve_metadata_export(im,base,node,0).status==MetadataStatus::missing_dependency,"unknown resolver is explicit");
}
} // namespace rust_internal_re
