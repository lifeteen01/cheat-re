#include "metadata_wrapper_analysis.hpp"
namespace rust_internal_re {
namespace {
void invoke_all(const MetadataApi& api) {
    assert(api.domain_get_33479c()==101);
    assert((api.assemblies_33480c(11)==re::ReVector<Address>{102,103}));
    assert(api.assembly_image_3344b0(12)==104);
    assert(api.class_from_name_334528(13,14,15)==105);
    Address iterator=16;
    assert(api.next_method_334660(17,iterator)==106&&iterator==18);
    assert(api.method_from_name_3345c4(19,20,-1)==107);
    assert(api.parameter_count_335140(21)==-2);
    assert(api.method_name_335040(22)==108);
    assert(api.parameter_name_3351b8(23,-1)==109);
}
}
void check_metadata_wrapper_reconstruction() {
    constexpr Address base=0x100000;
    Snapshot im(base,re::ReVector<ReByte>(0x400000));
    assert(im.write(base+0x3d5e60,Address{0x1234}));
    ReUSize resolves=0,setups=0,calls=0;
    MetadataWrapperEffects e;
    e.export_target=[&](Rva getter){
        ++resolves;
        for(const auto& s:metadata_wrapper_specs())if(s.getter==getter) {
            // [C] Store-before-resolve, then a callback mutation visible on reread.
            assert(im.read<ReU32>(base+s.flags)==1);
            assert(im.write(base+s.flags,ReU32{0x41}));
            return ExportScanResult{Address(getter)+0x1000000};
        }
        assert(false);return ExportScanResult{};
    };
    e.observe_context_2cbd24=[&](const MetadataWrapperCall& c){
        ++setups;
        for(const auto& s:metadata_wrapper_specs())if(s.wrapper==c.wrapper) {
            assert(c.target==Address(s.getter)+0x1000000&&c.context==base+s.context);
            assert(c.dispatcher==0x1234&&c.executor==s.executor);
            assert(im.read<ReU32>(base+s.flags)==0x43);
            // [I] Detection observer only mutates copied data. No context thunk.
            assert(im.write(base+s.flags,ReU32{0x83}));
        }
    };
    const auto effect=[&](const MetadataWrapperCall& c,Rva wrapper){
        ++calls;assert(c.wrapper==wrapper&&c.dispatcher==0x1234);
        for(const auto& s:metadata_wrapper_specs())if(s.wrapper==wrapper)
            assert(im.read<ReU32>(base+s.flags)==0x83);
    };
    e.domain_get=[&](const MetadataWrapperCall& c){effect(c,0x33479c);return Address{101};};
    e.assemblies=[&](const MetadataWrapperCall& c,Address a){effect(c,0x33480c);assert(a==11);return re::ReVector<Address>{102,103};};
    e.assembly_image=[&](const MetadataWrapperCall& c,Address a){effect(c,0x3344b0);assert(a==12);return Address{104};};
    e.class_from_name=[&](const MetadataWrapperCall& c,Address a,Address ns,Address n){effect(c,0x334528);assert(a==13&&ns==14&&n==15);return Address{105};};
    e.next_method=[&](const MetadataWrapperCall& c,Address k,Address& it){effect(c,0x334660);assert(k==17&&it==16);it=18;return Address{106};};
    e.method_from_name=[&](const MetadataWrapperCall& c,Address k,Address n,ReI32 count){effect(c,0x3345c4);assert(k==19&&n==20&&count==-1);return Address{107};};
    e.parameter_count=[&](const MetadataWrapperCall& c,Address a){effect(c,0x335140);assert(a==21);return ReI32{-2};};
    e.method_name=[&](const MetadataWrapperCall& c,Address a){effect(c,0x335040);assert(a==22);return Address{108};};
    e.parameter_name=[&](const MetadataWrapperCall& c,Address a,ReU32 n){effect(c,0x3351b8);assert(a==23&&n==0xffffffffu);return Address{109};};
    invoke_all(bind_metadata_wrappers(im,base,e));
    invoke_all(bind_metadata_wrappers(im,base,e));
    assert(resolves==9&&setups==9&&calls==18);
    const auto s=metadata_wrapper_specs().front();
    // [C] A completed wrapper resolution of zero is cached by bit1; no retry.
    assert(im.write(base+s.flags,ReU32{0}));
    e.export_target=[&](Rva){++resolves;return ExportScanResult{};};
    e.observe_context_2cbd24=[&](const MetadataWrapperCall& c){++setups;assert(c.target==0);assert(im.read<ReU32>(base+s.flags)==3);assert(im.write(base+0x3d5e60,Address{0x5678}));};
    e.domain_get=[&](const MetadataWrapperCall& c){assert(c.target==0&&c.dispatcher==0x5678);return Address{0};};
    assert(bind_metadata_wrappers(im,base,e).domain_get_33479c()==0);
    assert(bind_metadata_wrappers(im,base,e).domain_get_33479c()==0);
    assert(resolves==10&&setups==10);
    // [C] Resolver-side bit2 prevents setup; wrapper must reread flags.
    assert(im.write(base+s.flags,ReU32{0}));
    e.export_target=[&](Rva){assert(im.write(base+s.flags,ReU32{3}));return ExportScanResult{0x999};};
    e.observe_context_2cbd24={};
    e.domain_get=[](const MetadataWrapperCall& c){assert(c.target==0x999);return Address{10};};
    assert(bind_metadata_wrappers(im,base,e).domain_get_33479c()==10);
    // [I] Missing resolver preserves bit1 and the prior target; no fabricated zero.
    assert(im.write(base+s.flags,ReU32{0}));
    e.export_target={};
    bool failed=false;
    {(void)bind_metadata_wrappers(im,base,e).domain_get_33479c();}
    assert(failed&&im.read<ReU32>(base+s.flags)==1&&im.read<Address>(base+s.target)==0x999);
    // [C] Missing setup still leaves committed bit2; later retry uses cached flags.
    failed=false;
    {(void)bind_metadata_wrappers(im,base,e).domain_get_33479c();}
    assert(failed&&im.read<ReU32>(base+s.flags)==3);
    assert(bind_metadata_wrappers(im,base,e).domain_get_33479c()==10);
    assert(im.write(base+s.flags,ReU32{0}));
    e.export_target=[](Rva){return ExportScanResult{0,MetadataStatus::analysis_limit};};
    failed=false;
    {(void)bind_metadata_wrappers(im,base,e).domain_get_33479c();}
    assert(failed&&im.read<ReU32>(base+s.flags)==1);
    Snapshot short_image(base,{});
    failed=false;
    {(void)bind_metadata_wrappers(short_image,base,{}).domain_get_33479c();}
    assert(failed);
    // [C] The supplemental export cache retries zero and preserves nonzero.
    const auto extra=metadata_wrapper_supplemental_export_specs().front();
    assert(extra.getter==0x3339f4&&extra.resolver==0x3333fc&&extra.cache==0x3fa7a8);
    assert(export_name_hash_2cc0fc("il2cpp_method_get_param_name",ReU32(extra.key>>32))==ReU32(extra.key));
    assert(im.write(base+extra.cache,Address{0}));
    const Address node=base+0x100,module=base+0x1000;
    assert(im.write(node,node)&&im.write(node+0x30,module));
    assert(im.write(module+0x3c,ReI32{0x100}));
    assert(im.write(module+0x188,ReU64{0}));
    assert(resolve_metadata_wrapper_export(im,base,node,extra.getter).status==MetadataStatus::complete);
    assert(resolve_metadata_wrapper_export(im,base,node,extra.getter,{0,0}).status==MetadataStatus::analysis_limit);
    assert(im.write(base+extra.cache,Address{0x7654}));
    assert(resolve_metadata_wrapper_export(im,base,0,extra.getter,{0,0}).value==0x7654);
}
} // namespace rust_internal_re
