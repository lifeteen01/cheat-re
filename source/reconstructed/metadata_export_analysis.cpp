#include "metadata_export_analysis.hpp"
namespace rust_internal_re {
ReU32 export_name_hash_2cc0fc(re::ReStringView text,ReU32 seed) {
    for(unsigned char byte:text) {
        if(!byte)break;
        if(byte>='A'&&byte<='Z')byte|=0x20;
        const auto signed_byte=byte<128?ReI32(byte):ReI32(byte)-256;
        seed=(seed^ReU32(signed_byte))*0x1000193u;
    }
    return seed;
}
namespace {
struct ExportStop {MetadataStatus status;};
template<class T> T read_export(const Snapshot& im,Address p) {
    const auto value=im.read<T>(p);
    if(!value)__builtin_trap();
    return *value;
}
ReU32 hash_export(const Snapshot& im,Address name,ReU32 seed,ReUSize maximum) {
    for(ReUSize i=0;i<maximum;++i) {
        const char ch=read_export<char>(im,name+i);
        if(!ch)return seed;
        seed=export_name_hash_2cc0fc(re::ReStringView(&ch,1),seed);
    }
    __builtin_trap();
}
}
// [C] Shared body of the eleven hash resolvers: module traversal 2cc448/2ce790,
// PE directory 2cc3e0, reverse names 2cea7c/2ce700, ordinal 2cd758.
ExportScanResult scan_loader_exports(const Snapshot& im,Address initial,ReU64 key,MetadataLimits limits) {
    ExportScanResult out;
    {
        Address node=initial;
        for(;;) {
            if(out.modules>=limits.iterations)__builtin_trap();
            ++out.modules;
            const Address module=read_export<Address>(im,node+0x30);
            const auto pe_offset=read_export<ReI32>(im,module+0x3c);
            const Address nt=module+Address(ReI64(pe_offset));
            const auto directory=read_export<ReU64>(im,nt+0x88);
            const Address exports=module+ReU32(directory);
            // [C] 2cc540 compares base and computed directory; Size is unused here.
            if(exports!=module) {
                const auto count=read_export<ReU32>(im,exports+0x18);
                for(ReU32 n=count;n!=0;) {
                    if(out.names>=limits.iterations)__builtin_trap();
                    ++out.names;--n;
                    const auto name_table=read_export<ReU32>(im,exports+0x20);
                    const Address name=module+read_export<ReU32>(im,module+name_table+Address(n)*4);
                    if(hash_export(im,name,ReU32(key>>32),limits.string_bytes)!=ReU32(key))continue;
                    const auto ordinal_table=read_export<ReU32>(im,exports+0x24);
                    const auto functions=read_export<ReU32>(im,exports+0x1c);
                    const auto ordinal=read_export<ReU16>(im,module+ordinal_table+Address(n)*2);
                    out.value=module+read_export<ReU32>(im,module+functions+Address(ordinal)*4);
                    return out;
                }
            }
            node=read_export<Address>(im,node);
            if(node==initial||read_export<Address>(im,node+0x30)==0)return out;
        }
    }
    return out;
}
re::ReSpan<const MetadataExportSpec> metadata_export_specs() {
    // [C] Resolver constants and cache cells are literal immediates/LEAs.
    static constexpr re::ReArray<MetadataExportSpec,12> specs{{
        {0x3339fc,0x333804,0x3fa7b8,0x09d1e9d08c9df6a8ULL},
        {0x3339e4,0x333600,0x3fa788,0x04ef0dab758b3122ULL},
        {0x333a0c,0x3330a0,0x3fa790,0xe3c43de384993f73ULL},
        {0x333a34,0x333350,0x3fa768,0x8fb99ba982019f99ULL},
        {0x333a3c,0x33314c,0x3fa760,0xae8f80efc95dee46ULL},
        {0x333a2c,0x3338b0,0x3fa7b0,0x00b03a2ceea2cda7ULL},
        {0x2ee70c,0x2ee43c,0x3f0968,0x53c178d0f4bfc5f7ULL},
        {0x2cc164,0x2cbef8,0x3d6148,0xca2e46560e601d15ULL},
        {0x2cc16c,0x2cbfa4,0x3d6140,0xabc63d558d7c9aefULL},
        {0x2cc174,0x2cc050,0x3d6138,0x91c99ffbbf22819eULL},
        {0x2dee4c,0x2decb8,0x3e3fc0,0x5382c8ef72e1391cULL},
        {0x3339ec,0x3336ac,0x3fa758,0x006b389b3b05de56ULL}
    }};
    return specs;
}
ExportScanResult resolve_metadata_export(Snapshot& im,Address base,Address initial,Rva getter,MetadataLimits limits) {
    for(const auto& spec:metadata_export_specs()) {
        if(spec.getter!=getter)continue;
        const auto cached=im.read<Address>(base+spec.cache);
        if(!cached)return {0,MetadataStatus::unreadable_snapshot};
        if(*cached)return {*cached};
        auto result=scan_loader_exports(im,initial,spec.key,limits);
        if(result.status==MetadataStatus::complete&&!im.write(base+spec.cache,result.value))result.status=MetadataStatus::unreadable_snapshot;
        return result;
    }
    return {0,MetadataStatus::missing_dependency};
}
} // namespace rust_internal_re
