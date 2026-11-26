#include "native_pe_analysis.hpp"
namespace rust_internal_re {
namespace {
struct PeStop {NativePeStatus status;Rva site;};
template<class T>T get(const Snapshot& s,Address p,Rva site) {
    const auto v=s.read<T>(p);if(!v)__builtin_trap();return *v;
}
template<class T>void set(Snapshot& s,Address p,T v,Rva site) {
    if(!s.write(p,v))__builtin_trap();
}
Address header(const Snapshot& s,Address b) {
    return b+Address(ReI64(get<ReI32>(s,b+0x3c,0x2ce7c0)));
}
template<class T,class F>NativePeResult<T> guard(F&& f) {
    {return {f()};}
}
Address exported(const Snapshot& s,Address b,re::ReStringView wanted,NativePeLimits limits) {
    const auto directory=get<ReU32>(s,header(s,b)+0x88,0x2ce7e5);
    const auto names=get<ReU32>(s,b+directory+0x20,0x2ce7ec);
    const auto count=get<ReU32>(s,b+directory+0x18,0x2ce7f1);
    // [C] A mismatch stops strcmp immediately; inaccessible trailing bytes are
    // irrelevant on that branch. Do not pre-read strings or unmatched ordinals.
    for(ReU64 i=0;i<count;++i) {
        if(i>=limits.names)__builtin_trap();
        const auto name=get<ReU32>(s,b+names+4*i,0x2ce7fd);
        bool equal=false;
        for(ReUSize j=0;;++j) {
            if(j>=limits.string_bytes)__builtin_trap();
            const auto c=get<ReU8>(s,b+name+j,0x2ce80c);
            const auto w=j<wanted.size()?static_cast<ReU8>(wanted[j]):ReU8{};
            if(c!=w)break;
            if(c==0){equal=true;break;}
        }
        if(!equal)continue;
        const auto ordinals=get<ReU32>(s,b+directory+0x24,0x2ce82f);
        const auto ordinal=get<ReU16>(s,b+ordinals+2*i,0x2ce837);
        const auto functions=get<ReU32>(s,b+directory+0x1c,0x2ce83c);
        // [C] No NumberOfFunctions, zero-RVA, mapped-target or forwarder test.
        return b+get<ReU32>(s,b+functions+4ULL*ordinal,0x2ce844);
    }
    return 0;
}
NativeExceptionDirectory exceptions(const Snapshot& s,Address b) {
    const Address h=header(s,b);
    const auto rva=get<ReU32>(s,h+0xa0,0x2ce1d8);
    const auto size=get<ReU32>(s,h+0xa4,0x2ce1e0);
    return {b+rva,size};
}
Address record(const Snapshot& s,Address b,Address requested,NativePeLimits limits) {
    const auto d=exceptions(s,b);
    for(ReU64 i=0;i<d.raw_size;++i) {
        if(i>=limits.records)__builtin_trap();
        const Address cell=d.table+12*i;
        // [C] Native lookup itself reads only BeginAddress, not the full record.
        if(get<ReU32>(s,cell,0x2ce221)==requested)return cell;
    }
    return 0;
}
}
NativePeResult<Address> native_header_2ce7c0(const Snapshot& s,Address b) {
    return guard<Address>([&]{return header(s,b);});
}
NativePeResult<Address> native_export_2ce7c8(const Snapshot& s,Address b,re::ReStringView name,NativePeLimits l) {
    return guard<Address>([&]{return exported(s,b,name,l);});
}
NativePeResult<NativeExceptionDirectory> native_exception_directory_2ce1d4(const Snapshot& s,Address b) {
    return guard<NativeExceptionDirectory>([&]{return exceptions(s,b);});
}
NativePeResult<Address> native_runtime_record_2ce1f0(const Snapshot& s,Address b,Address requested,NativePeLimits l) {
    return guard<Address>([&]{return record(s,b,requested,l);});
}
NativePeResult<NativeThreadModules> native_thread_modules_2ce130(Snapshot& s,Address out,
    const NativeModuleEffects& effects,NativePeLimits l) {
    NativeThreadModules result;
    const auto module=[&](re::ReStringView name,Rva site){
        if(!effects.module_handle)__builtin_trap();
        const auto v=effects.module_handle(name);
        if(!v)__builtin_trap();
        return *v;
    };
    {
        result.kernel32=module("KERNEL32.DLL",0x2ce153);
        set(s,out,result.kernel32,0x2ce15d);
        result.base_thread_init=exported(s,result.kernel32,"BaseThreadInitThunk",l);
        set(s,out+0x10,result.base_thread_init,0x2ce182);
        result.ntdll=module("ntdll.dll",0x2ce19b);
        set(s,out+8,result.ntdll,0x2ce1a5);
        result.rtl_user_thread_start=exported(s,result.ntdll,"RtlUserThreadStart",l);
        set(s,out+0x18,result.rtl_user_thread_start,0x2ce1c7);
        return {result};
    }
}
NativePeResult<FrameMetadataAudit> native_frame_metadata(const Snapshot& s,Address b,
    re::ReStringView name,NativePeLimits l) {
    FrameMetadataAudit out;
    out.frame.label=re::ReString(name);
    {
        out.frame.instruction=exported(s,b,name,l);
        // [I] Missing entry is reported explicitly instead of native unchecked load.
        const auto p=record(s,b,out.frame.instruction-b,l);
        if(!p)__builtin_trap();
        out.frame.entry=get<RuntimeFunction>(s,p,0x2cbdd1);
        out.literal=analyze_sample_unwind_2ce3dc(s,out.frame.entry->unwind,b);
        out.conventional=summarize_unwind(s,out.frame.entry->unwind,b);
        out.frame.unwind={out.literal.output_accumulator,out.literal.complete,out.literal.limitation};
        return {out};
    }
}
} // namespace rust_internal_re
