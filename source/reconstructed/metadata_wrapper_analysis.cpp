#include "metadata_wrapper_analysis.hpp"
namespace rust_internal_re {
re::ReSpan<const MetadataWrapperSpec> metadata_wrapper_specs() {
    // [C] RIP-relative addresses, call getters and tail executors from bytes.
    static constexpr re::ReArray<MetadataWrapperSpec,9> specs{{
        {0x33479c,0x33480b,0x3f9860,0x3f9858,0x3f9870,0x3339fc,0x2dda18},
        {0x33480c,0x334893,0x3f9ef0,0x3f9ee8,0x3f9f00,0x3339e4,0x2d2094},
        {0x3344b0,0x334528,0x3f9e00,0x3f9df8,0x3f9e10,0x333a0c,0x2cb9fc},
        {0x334528,0x3345c2,0x3fa2b0,0x3fa2a8,0x3fa2c0,0x333a34,0x2cba50},
        {0x334660,0x3346e7,0x3f9950,0x3f9948,0x3f9960,0x333a2c,0x2d2094},
        {0x3345c4,0x33465d,0x3fa3a0,0x3fa398,0x3fa3b0,0x333a3c,0x332e8c},
        {0x335140,0x3351b8,0x3f9b30,0x3f9b28,0x3f9b40,0x2ee70c,0x2cb9fc},
        {0x335040,0x3350b8,0x3fa490,0x3fa488,0x3fa4a0,0x3339ec,0x2cb9fc},
        {0x3351b8,0x33523e,0x3f9a40,0x3f9a38,0x3f9a50,0x3339f4,0x32b1c8}
    }};
    return specs;
}
re::ReSpan<const MetadataExportSpec> metadata_wrapper_supplemental_export_specs() {
    // [C] 3339f4 E9 ->332d24; CALL3333fc;334470 LEA3fa7a8;
    // 33340f: 48 bd d3 0e 67 00 08 56 51 f6.
    static constexpr re::ReArray<MetadataExportSpec,1> specs{{
        {0x3339f4,0x3333fc,0x3fa7a8,0xf651560800670ed3ULL}
    }};
    return specs;
}
ExportScanResult resolve_metadata_wrapper_export(Snapshot& im,Address base,Address node,
    Rva getter,MetadataLimits limits) {
    for(const auto& s:metadata_wrapper_supplemental_export_specs()) {
        if(s.getter!=getter)continue;
        const auto cached=im.read<Address>(base+s.cache);
        if(!cached)return {0,MetadataStatus::unreadable_snapshot};
        if(*cached)return {*cached};
        auto out=scan_loader_exports(im,node,s.key,limits);
        if(out.status==MetadataStatus::complete&&!im.write(base+s.cache,out.value))
            out.status=MetadataStatus::unreadable_snapshot;
        return out;
    }
    return resolve_metadata_export(im,base,node,getter,limits);
}
namespace {
template<class T> T get(const Snapshot& im,Address p,Rva site) {
    const auto value=im.read<T>(p);
    if(!value){ (void)(MetadataStatus::unreadable_snapshot,site); __builtin_trap(); }
    return *value;
}
template<class T> void put(Snapshot& im,Address p,T value,Rva site) {
    if(!im.write(p,value)){ (void)(MetadataStatus::unreadable_snapshot,site); __builtin_trap(); }
}
template<class F> const F& need(const F& f,Rva site) {
    if(!f){ (void)(MetadataStatus::missing_dependency,site); __builtin_trap(); }
    return f;
}
MetadataWrapperCall prepare(Snapshot& im,Address base,Rva wrapper,const MetadataWrapperEffects& effects) {
    for(const auto& s:metadata_wrapper_specs()) {
        if(s.wrapper!=wrapper)continue;
        auto flags=get<ReU32>(im,base+s.flags,wrapper);
        Address target;
        if(!(flags&1)) {
            // [C] OR/store bit1 BEFORE resolver; the subsequent native reread
            // observes resolver-side flag writes, including changed high bits.
            put(im,base+s.flags,flags|1u,wrapper);
            const auto resolved=need(effects.export_target,s.getter)(s.getter);
            if(resolved.status!=MetadataStatus::complete)
                { (void)(resolved.status,s.getter); __builtin_trap(); }
            target=resolved.value;
            put(im,base+s.target,target,wrapper);
            flags=get<ReU32>(im,base+s.flags,wrapper);
        } else target=get<Address>(im,base+s.target,wrapper);
        MetadataWrapperCall call{wrapper,s.executor,0,target,base+s.context};
        if(!(flags&2)) {
            // [C] Dispatcher load precedes the bit2 store; bit2 commits before
            // excluded context setup. No context bytes or executable stack made.
            call.dispatcher=get<Address>(im,base+0x3d5e60,wrapper);
            put(im,base+s.flags,flags|2u,wrapper);
            need(effects.observe_context_2cbd24,0x2cbd24)(call);
        }
        // [C] Tail reloads dispatcher after setup; target stays in the local
        // modeled r8 until setup, then context selects the eventual native call.
        call.dispatcher=get<Address>(im,base+0x3d5e60,wrapper);
        return call;
    }
    { (void)(MetadataStatus::missing_dependency,wrapper); __builtin_trap(); }
}
}
MetadataApi bind_metadata_wrappers(Snapshot& im,Address base,MetadataWrapperEffects e) {
    MetadataApi out;
    out.domain_get_33479c=[&im,base,e]{const auto c=prepare(im,base,0x33479c,e);return need(e.domain_get,c.executor)(c);};
    out.assemblies_33480c=[&im,base,e](Address domain){const auto c=prepare(im,base,0x33480c,e);return need(e.assemblies,c.executor)(c,domain);};
    out.assembly_image_3344b0=[&im,base,e](Address a){const auto c=prepare(im,base,0x3344b0,e);return need(e.assembly_image,c.executor)(c,a);};
    out.class_from_name_334528=[&im,base,e](Address image,Address ns,Address name){const auto c=prepare(im,base,0x334528,e);return need(e.class_from_name,c.executor)(c,image,ns,name);};
    out.next_method_334660=[&im,base,e](Address klass,Address& iterator){const auto c=prepare(im,base,0x334660,e);return need(e.next_method,c.executor)(c,klass,iterator);};
    out.method_from_name_3345c4=[&im,base,e](Address klass,Address name,ReI32 count){const auto c=prepare(im,base,0x3345c4,e);return need(e.method_from_name,c.executor)(c,klass,name,count);};
    out.parameter_count_335140=[&im,base,e](Address method){const auto c=prepare(im,base,0x335140,e);return need(e.parameter_count,c.executor)(c,method);};
    out.method_name_335040=[&im,base,e](Address method){const auto c=prepare(im,base,0x335040,e);return need(e.method_name,c.executor)(c,method);};
    out.parameter_name_3351b8=[&im,base,e](Address method,ReI32 index){const auto c=prepare(im,base,0x3351b8,e);return need(e.parameter_name,c.executor)(c,method,ReU32(index));};
    return out;
}
} // namespace rust_internal_re
