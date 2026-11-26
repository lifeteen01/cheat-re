#include "native_pe_analysis.hpp"
namespace rust_internal_re {
namespace {
template<typename T> void pe_put(Snapshot& s,Address p,T v) { s.write(p,v); }
void require_pe(bool v,const char* why){if(!v){ __builtin_trap(); }}
void pe_string(Snapshot& s,Address p,re::ReStringView text){
    for(ReUSize i=0;i<text.size();++i)pe_put(s,p+i,text[i]);
    pe_put(s,p+text.size(),char{});
}
void pe_fixture(Snapshot& s,Address b,re::ReStringView name){
    pe_put(s,b+0x3c,ReI32{0x100});
    pe_put(s,b+0x188,ReU32{0x300});
    pe_put(s,b+0x318,ReU32{2});pe_put(s,b+0x31c,ReU32{0x600});
    pe_put(s,b+0x320,ReU32{0x500});pe_put(s,b+0x324,ReU32{0x580});
    pe_put(s,b+0x500,ReU32{0x700});pe_put(s,b+0x504,ReU32{0x710});
    pe_string(s,b+0x700,"wrong");pe_string(s,b+0x710,name);
    pe_put(s,b+0x580,ReU16{65535}); // [C] Unmatched ordinal never read/validated.
    pe_put(s,b+0x582,ReU16{7}); // [C] NumberOfFunctions is zero, intentionally ignored.
    pe_put(s,b+0x61c,ReU32{0x900});
    pe_put(s,b+0x1a0,ReU32{0x800});pe_put(s,b+0x1a4,ReU32{0xffffffffu});
    pe_put(s,b+0x800,RuntimeFunction{0x900,0x910,0xa00});
    pe_put(s,b+0xa00,ReU8{1}); // Empty unwind entry.
}
void check_acquisition_differences(){
    constexpr Address b=0x2000000;
    Snapshot s(b,re::ReVector<ReByte>(0x4000));pe_fixture(s,b,"BaseThreadInitThunk");
    // [I] Establish a defensive-reader success before varying one acquisition rule.
    pe_put(s,b,ReU16{0x5a4d});pe_put(s,b+0x100,ReU32{0x4550});
    pe_put(s,b+0x118,ReU16{0x20b});pe_put(s,b+0x18c,ReU32{0x100});
    pe_put(s,b+0x314,ReU32{8});pe_put(s,b+0x580,ReU16{});
    pe_put(s,b+0x1a4,ReU32{12});
    require_pe(find_export(s,"BaseThreadInitThunk")==b+0x900&&
        audit_context_metadata(1,{"k",&s},{"n",&s}).base_thread_init.literal.complete,
        "otherwise valid fixture reaches defensive acquisition and literal parser");
    for(const ReU32 rva:{0u,0x310u,0xfffffff0u}) {
        pe_put(s,b+0x61c,rva);
        const auto literal=native_export_2ce7c8(s,b,"BaseThreadInitThunk");
        require_pe(literal.status==NativePeStatus::complete&&literal.value==b+rva&&
            !find_export(s,"BaseThreadInitThunk"),
            "literal null/forwarder/uncopied target differs from defensive acquisition");
        const auto old=audit_context_metadata(1,{"k",&s},{"n",&s});
        require_pe(old.base_thread_init.frame.instruction==0&&!old.base_thread_init.literal.complete,
            "older audit retains defensive export rejection");
    }
    pe_put(s,b+0x61c,ReU32{0x900});
    pe_put(s,b+0x18c,ReU32{0xffffffffu});
    const auto incomplete_export=native_export_2ce7c8(s,b,"BaseThreadInitThunk");
    require_pe(incomplete_export.status==NativePeStatus::complete&&incomplete_export.value==b+0x900&&
        !find_export(s,"BaseThreadInitThunk"),"literal export ignores incomplete declared extent");
    pe_put(s,b+0x18c,ReU32{0x100});pe_put(s,b+0x1a4,ReU32{0xffffffffu});
    const auto incomplete_exception=native_frame_metadata(s,b,"BaseThreadInitThunk");
    require_pe(incomplete_exception.status==NativePeStatus::complete&&incomplete_exception.value.literal.complete&&
        !find_sample_runtime_function_2ce1f0(s,b+0x900)&&!find_runtime_function(s,b+0x900),
        "literal frame acquisition ignores exception extent rejected by both older lookups");
    pe_put(s,b+0x1a4,ReU32{12});
    pe_put(s,b+0x324,ReU32{0xfffffff0u});pe_put(s,b+0x318,ReU32{1});
    const auto miss=native_export_2ce7c8(s,b,"absent");
    require_pe(miss.status==NativePeStatus::complete&&miss.value==0&&!find_export(s,"absent"),
        "literal unmatched inaccessible ordinal is a completed miss, defensive lookup is unavailable");
    pe_put(s,b+0x324,ReU32{0x580});pe_put(s,b+0x318,ReU32{2});
    pe_put(s,b+0xa02,ReU8{2});pe_put(s,b+0xa05,ReU8{0x12});
    pe_put(s,b+0xa07,ReU8{0x44});
    const auto rejected=native_frame_metadata(s,b,"BaseThreadInitThunk");
    require_pe(rejected.status==NativePeStatus::complete&&rejected.value.literal.complete&&
        rejected.value.literal.rejected_rsp_encoding&&rejected.value.literal.returned_size==0&&
        rejected.value.literal.output_accumulator==16&&rejected.value.frame.unwind.stack_bytes==16,
        "literal frame evidence preserves rejected-register output separately from zero return");
    pe_put(s,b+0x808,ReU32{0x3ffc});
    pe_put(s,b+0x3ffc,ReU8{1});pe_put(s,b+0x3ffe,ReU8{1});
    const auto truncated_unwind=native_frame_metadata(s,b,"BaseThreadInitThunk");
    require_pe(truncated_unwind.status==NativePeStatus::complete&&truncated_unwind.value.frame.entry&&
        !truncated_unwind.value.literal.complete&&!truncated_unwind.value.frame.unwind.complete&&
        !truncated_unwind.value.conventional.complete,
        "completed PE acquisition does not imply completed unwind traversal");
    // [I] The matching BeginAddress DWORD is copied, but EndAddress/UnwindData are not.
    Snapshot short_record(b,re::ReVector<ReByte>(0x804));
    for(Address p=b;p<b+0x804;++p)pe_put(short_record,p,*s.read<ReU8>(p));
    const auto record=native_runtime_record_2ce1f0(short_record,b,0x900);
    require_pe(record.status==NativePeStatus::complete&&record.value==b+0x800&&
        !find_sample_runtime_function_2ce1f0(short_record,b+0x900),
        "literal lookup requires only BeginAddress while older lookup needs a full record/extent");
    const auto missing_record=native_frame_metadata(short_record,b,"BaseThreadInitThunk");
    require_pe(missing_record.status==NativePeStatus::missing_bytes&&missing_record.site==0x2cbdd1&&
        !missing_record.value.frame.entry,"frame consumer separately requires the remaining runtime fields");
}
}
void check_native_pe_reconstruction(){
    check_acquisition_differences();
    const Address b=0x1000000;
    Snapshot s(b,re::ReVector<ReByte>(0x4000));pe_fixture(s,b,"BaseThreadInitThunk");
    auto r=native_export_2ce7c8(s,b,"BaseThreadInitThunk");
    require_pe(r.status==NativePeStatus::complete&&r.value==b+0x900,"literal export ignores signatures and unmatched ordinals");
    require_pe(!find_export(s,"BaseThreadInitThunk"),"strict reader remains separate");
    pe_put(s,b+0x61c,ReU32{});
    require_pe(native_export_2ce7c8(s,b,"BaseThreadInitThunk").value==b,"zero function RVA returns base");
    pe_put(s,b+0x61c,ReU32{0x310});
    require_pe(native_export_2ce7c8(s,b,"BaseThreadInitThunk").value==b+0x310,"forwarder RVA remains numeric");
    pe_put(s,b+0x61c,ReU32{0xfffffff0u});
    require_pe(native_export_2ce7c8(s,b,"BaseThreadInitThunk").value==b+0xfffffff0u,"target need not be copied");
    pe_put(s,b+0x61c,ReU32{0x900});
    const auto dir=native_exception_directory_2ce1d4(s,b);
    require_pe(dir.status==NativePeStatus::complete&&dir.value.raw_size==0xffffffffu,"raw exception extent need not fit copied image");
    require_pe(native_runtime_record_2ce1f0(s,b,0x900).value==b+0x800,"exact begin lookup succeeds despite declared extent");
    require_pe(native_runtime_record_2ce1f0(s,b,0x901,{10,50,1}).status==NativePeStatus::analysis_limit,"literal lookup does not accept containing range");
    pe_put(s,b+0x1a4,ReU32{1});
    require_pe(native_runtime_record_2ce1f0(s,b,0x901).value==0,"completed lookup miss is zero");
    pe_put(s,b+0x1a4,ReU32{12});
    pe_put(s,b+0x80c,RuntimeFunction{0x920,0x930,0xa00});
    require_pe(native_runtime_record_2ce1f0(s,b,0x920).value==b+0x80c,"directory byte size is record count");
    const auto frame=native_frame_metadata(s,b,"BaseThreadInitThunk");
    require_pe(frame.status==NativePeStatus::complete&&frame.value.literal.complete&&frame.value.frame.unwind.stack_bytes==0,"literal acquisition reaches existing unwind parser");
    require_pe(native_export_2ce7c8(s,b,"absent",{1,50,10}).status==NativePeStatus::analysis_limit,"name limit explicit");
    require_pe(native_export_2ce7c8(s,b,"BaseThreadInitThunk",{10,1,10}).status==NativePeStatus::analysis_limit,"strcmp limit explicit");
    // [C] MOVSXD permits header fields before module base.
    pe_put(s,b+0x103c,ReI32{-0x100});
    pe_put(s,b+0xf88,ReU32{0x300});
    pe_put(s,b+0x1320,ReU32{0x500});pe_put(s,b+0x1318,ReU32{});
    require_pe(native_header_2ce7c0(s,b+0x1000).value==b+0xf00,"signed header offset");
    require_pe(native_export_2ce7c8(s,b+0x1000,"x").status==NativePeStatus::complete,"negative header with copied fields accepted");
    Snapshot truncated(b,re::ReVector<ReByte>(0x43));
    require_pe(native_export_2ce7c8(truncated,b,"x").status==NativePeStatus::missing_bytes,"truncated header fields explicit");
    // [C] Missing unmatched ordinal bytes are irrelevant until a name matches.
    pe_put(s,b+0x324,ReU32{0xfffffff0u});pe_put(s,b+0x318,ReU32{1});
    require_pe(native_export_2ce7c8(s,b,"no").status==NativePeStatus::complete,"unmatched ordinal table may be inaccessible");
    require_pe(native_export_2ce7c8(s,b,"wrong").status==NativePeStatus::missing_bytes,"matching name requires ordinal bytes");
    pe_fixture(s,b,"BaseThreadInitThunk");pe_fixture(s,b+0x1000,"RtlUserThreadStart");
    pe_put(s,b+0x1a02,ReU8{1});
    pe_put(s,b+0x1a04,ReU8{0});pe_put(s,b+0x1a05,ReU8{0x32});
    const auto second_frame=native_frame_metadata(s,b+0x1000,"RtlUserThreadStart");
    require_pe(second_frame.status==NativePeStatus::complete&&second_frame.value.literal.complete&&
        second_frame.value.literal.output_accumulator==32&&second_frame.value.conventional.stack_bytes==32,
        "embedded second module resolves unwind from module base, not snapshot base");
    NativeModuleEffects effects;
    re::ReVector<re::ReString> modules;
    effects.module_handle=[&](re::ReStringView n)->re::ReOptional<Address>{
        modules.emplace_back(n);return n=="KERNEL32.DLL"?b:b+0x1000;
    };
    const auto init=native_thread_modules_2ce130(s,b+0x3000,effects);
    require_pe(init.status==NativePeStatus::complete&&modules==re::ReVector<re::ReString>{"KERNEL32.DLL","ntdll.dll"},"module orchestration order and spelling");
    require_pe(s.read<Address>(b+0x3018)==b+0x1900,"native output offsets");
    effects.module_handle=[&](re::ReStringView n)->re::ReOptional<Address>{if(n=="ntdll.dll")return {};return b;};
    pe_put(s,b+0x3018,Address{0x777});
    const auto partial=native_thread_modules_2ce130(s,b+0x3000,effects);
    require_pe(partial.status==NativePeStatus::missing_effect&&s.read<Address>(b+0x3010)==b+0x900&&s.read<Address>(b+0x3018)==0x777,"partial acquisition stores survive unavailable OS effect");
}
} // namespace rust_internal_re
