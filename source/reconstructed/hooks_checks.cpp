#include "hooks_analysis.hpp"
namespace rust_internal_re {
namespace {
void expect(bool ok, re::ReStringView message) {
    if(!ok)__builtin_trap();
}
template<class T> void put(Snapshot& im, Address p, T value) { expect(im.write(p,value),"fixture write"); }
void check_water_smoke_position() {
    constexpr Address b=0x2000000,object=b+0x100,local=b+0x800,destination=b+0x1000,position=b+0x1400;
    Snapshot im(b,re::ReVector<ReByte>(0x2000,ReByte{0xa5}));
    auto water=replay_water_332554(im,object,true,false,0x123);
    expect(water.complete&&water.stores==7&&water.calls.size()==1,"water flags and original");
    expect(im.read<ReU8>(object+0x68)==0&&im.read<Address>(object+0x60)==0xa5a5a5a5a5a5a5a5ULL,"flag writes do not zero qword");
    water=replay_water_332554(im,object,false,true,0x123);
    expect(water.stores==7&&im.read<Address>(object+0x60)==0&&im.read<Address>(object+0xe0)==0,"water qwords");
    put<ReU8>(im,object+0x68,0x7f);
    expect(replay_water_332554(im,object,false,false,0).stores==0&&im.read<ReU8>(object+0x68)==0x7f,"disabled water does not restore");
    Snapshot short_im(b,re::ReVector<ReByte>(0x69,ReByte{0xff}));
    auto partial=replay_water_332554(short_im,b,true,false,0);
    expect(!partial.complete&&partial.stores==1&&partial.calls.empty()&&short_im.read<ReU8>(b+0x68)==0,"bounded failure retains preceding stores");

    SmokeHookState state;
    put<Address>(im,object+0x2f8,0);
    auto smoke=replay_smoke_32f038(im,object,true,state,0x456);
    expect(state.suppression_latch&&smoke.calls.size()==1&&smoke.calls[0].role==HookCallRole::saved_original,"invalid smoke pointer still sets shared latch");
    put<Address>(im,object+0x2f8,destination);
    smoke=replay_smoke_32f038(im,object,true,state,0x456);
    expect(smoke.calls.size()==2&&smoke.calls[0].arguments[1]==0,"suppression calls set_active every enabled update");
    // [C] The latch is global: another instance supplies the object restored on the next disabled update.
    const Address other=object+0x400;
    put<Address>(im,other+0x2f8,position);
    smoke=replay_smoke_32f038(im,other,false,state,0x456);
    expect(!state.suppression_latch&&smoke.calls.size()==2&&smoke.calls[0].arguments[0]==position&&smoke.calls[0].arguments[1]==1,"restore current instance using shared latch");
    smoke=replay_smoke_32f038(im,other,false,state,0x456);
    expect(smoke.calls.size()==1,"second disabled update does not restore again");
    state.suppression_latch=true;put<Address>(im,other+0x2f8,0);
    smoke=replay_smoke_32f038(im,other,false,state,0);
    expect(!state.suppression_latch&&smoke.calls.size()==1,"invalid restore target still clears latch");

    put<Address>(im,local+0x4e8,destination);
    constexpr ReU64 xy=0x7fc0123480000000ULL;
    constexpr ReU32 z=0xffc02345;
    put(im,position,xy);put(im,position+8,z);
    auto pos=replay_position_32a9f8(im,object,position,0x789,true,local,0x123);
    expect(pos.stores==2&&im.read<ReU64>(destination+0x30)==xy&&im.read<ReU32>(destination+0x38)==z,"position preserves raw float bits");
    expect(pos.calls[0].argument_count==3&&pos.calls[0].arguments[2]==0x789,"position extra flag not forwarded");
    expect(replay_position_32a9f8(im,object,position,0,true,0,0).stores==0,"invalid local skips copy and still calls original");
    // [C] The tail is read after the first write, observable if supplied source aliases destination.
    put(im,destination+0x28,xy);put(im,destination+0x30,z);
    pos=replay_position_32a9f8(im,object,destination+0x28,0,true,local,0);
    expect(pos.complete&&im.read<ReU32>(destination+0x38)==ReU32(xy),"position alias follows instruction order");
}
void check_instant_loot() {
    constexpr Address b=0x3000000,closure=b+0x100;
    Snapshot im(b,re::ReVector<ReByte>(0x1000,ReByte{0x55}));
    InstantLootInputs p{true,b+0x500,b+0x600,closure,b+0x700,b+0x800,0x81,-7};
    auto r=replay_instant_loot_3215cc(im,p);
    expect(r.complete&&r.stores==3&&r.calls.size()==1&&r.calls[0].role==HookCallRole::instant_loot_callback,"loot callback replaces original");
    expect(im.read<Address>(closure+0x10)==p.item_icon&&im.read<Address>(closure+0x18)==Address(-7)&&im.read<Address>(closure+0x20)==0,"closure fields and sign extension");
    expect(r.calls[0].arguments[0]==closure&&r.calls[0].argument_count==1,"callback receives allocated closure");
    p.display_class=0;
    r=replay_instant_loot_3215cc(im,p);
    expect(r.complete&&r.stores==0&&r.calls.empty(),"enabled class failure has no original fallback");
    p.display_class=b+0x600;p.allocated_closure=0;
    expect(replay_instant_loot_3215cc(im,p).calls.empty(),"enabled allocation failure has no fallback");
    p.allocated_closure=closure;p.helper_result.reset();
    r=replay_instant_loot_3215cc(im,p);
    expect(!r.complete&&r.stores==1&&r.calls.empty(),"unresolved helper stops after first closure store");
    p.enabled=false;
    r=replay_instant_loot_3215cc(im,p);
    expect(r.complete&&r.stores==0&&r.calls[0].role==HookCallRole::saved_original&&r.calls[0].arguments[1]==0x81,"disabled loot forwards original byte argument");
}
void check_literal_installers() {
    constexpr Address b=0x4000000,klass=b+0x100,method=b+0x2000,detour=b+0x2400,normal=b+0x2800;
    Snapshot im(b,re::ReVector<ReByte>(0x4000));
    HookRecord rec;
    put<Address>(im,method,0);
    expect(install_method_info_copy(im,rec,method,detour)&&rec.original==0&&rec.kind==1,"MethodInfo installer accepts null original");
    rec={};rec.method_info=0x555;
    expect(!install_method_info_copy(im,rec,0,detour)&&rec.method_info==0,"failed MethodInfo resolution recorded");
    rec={};put(im,klass+0x1500,normal);
    expect(install_class_scan_copy(im,rec,klass,normal,detour)&&rec.replaced_cell==klass+0x1500,"inclusive final unaligned class scan cell");
    rec={};
    expect(!install_class_scan_copy(im,rec,klass,normal+0x111,detour)&&rec.replaced_cell==klass+0x1501,"no-match class scan records first excluded address");
    rec={};rec.replaced_cell=0x777;
    put(im,method,normal);put(im,klass+0x71,normal);
    expect(install_resolved_method_scan_copy(im,rec,klass,method,detour)&&rec.original==normal&&rec.replaced_cell==0x777,"resolved MethodInfo scan leaves replaced-cell record untouched");

    rec={};put(im,klass+0x138,normal);
    expect(!install_entry_table_copy(im,rec,klass,normal,detour,0x138),"normal-range table target rejected before equality comparison");
    put<Address>(im,klass+0x138,0);
    expect(install_entry_table_copy(im,rec,klass,0,detour,0x138)&&rec.original==0,"zero target can match literal +138 loop");
    // [C] 0x3163d8 does not call the already-installed guard.
    put<Address>(im,klass+0x138,1);rec.detour=0x999;
    expect(install_entry_table_copy(im,rec,klass,1,detour,0x138)&&rec.original==1&&rec.detour==0x999,"+138 ignores existing kind and leaves detour field untouched");
    rec={};put<Address>(im,klass+0x328,0);
    const EntryEligibility yes{method,0};
    expect(!install_entry_316458_copy(im,rec,klass,0,detour,yes),"+328 requires initial nonzero slot");
    put<Address>(im,klass+0x328,1);put<Address>(im,klass+0x338,2);
    expect(!install_entry_316458_copy(im,rec,klass,2,detour,{method,1}),"nonzero helper result fails eligibility");
    expect(!install_entry_316458_copy(im,rec,klass,2,detour,{method,{}}),"unresolved helper cannot silently pass");
    expect(install_entry_316458_copy(im,rec,klass,2,detour,yes)&&rec.kind==3&&rec.original==2,"+328 traverses invalid-range cells by 16 bytes");
    expect(install_entry_316458_copy(im,rec,0,0,0,{}),"+328 installed guard precedes class/eligibility checks");
}
void check_literal_unwind_context() {
    constexpr Address b=0x5000000;
    Snapshot im(b,re::ReVector<ReByte>(0x2000));
    put<ReU16>(im,b,0x5a4d);put<ReU32>(im,b+0x3c,0x80);
    put<ReU32>(im,b+0x80,0x4550);put<ReU16>(im,b+0x98,0x20b);
    const Address dirs=b+0x98+112;
    put<ReU32>(im,dirs,0x200);put<ReU32>(im,dirs+4,0x200);
    put<ReU32>(im,dirs+24,0x900);put<ReU32>(im,dirs+28,24);
    for(auto [offset,value]:re::ReArray<re::RePair<unsigned,unsigned>,5>{{{20,2},{24,2},{28,0x250},{32,0x260},{36,0x270}}})put<ReU32>(im,b+0x200+offset,value);
    put<ReU32>(im,b+0x250,0x800);put<ReU32>(im,b+0x254,0x840);
    put<ReU32>(im,b+0x260,0x300);put<ReU32>(im,b+0x264,0x330);
    put<ReU16>(im,b+0x270,0);put<ReU16>(im,b+0x272,1);
    auto label=[&](unsigned offset,re::ReStringView text){for(ReUSize i=0;i<=text.size();++i)put<char>(im,b+offset+i,i<text.size()?text[i]:0);};
    label(0x300,"BaseThreadInitThunk");label(0x330,"RtlUserThreadStart");
    put(im,b+0x900,RuntimeFunction{0x800,0x820,0xa00});put(im,b+0x90c,RuntimeFunction{0x840,0x860,0xa20});
    auto header=[&](unsigned rva,ReU8 flags,ReU8 count){put(im,b+rva,flags);put(im,b+rva+2,count);};
    auto op=[&](unsigned rva,unsigned slot,ReU8 value){put(im,b+rva+5+2*slot,value);};
    header(0xa00,1,2);op(0xa00,0,0x42);op(0xa00,1,0x40); // 40-byte allocation, then rejected RSP push.
    header(0xa20,1,1);op(0xa20,0,0x0a);
    expect(find_runtime_function(im,b+0x801).has_value()&&!find_sample_runtime_function_2ce1f0(im,b+0x801),"containing and exact runtime lookups remain distinct");
    put(im,b+0x918,RuntimeFunction{0x880,0x890,0xa20});
    expect(!find_runtime_function(im,b+0x880)&&find_sample_runtime_function_2ce1f0(im,b+0x880).has_value(),"sample uses directory byte Size as record count and reads beyond declared table");
    const auto audit=audit_context_metadata(0xdead,{"kernel32",&im},{"ntdll",&im});
    expect(audit.target==0xdead&&audit.base_thread_init.literal.returned_size==0&&audit.base_thread_init.literal.output_accumulator==40,"context retains zero return versus accumulator divergence");
    expect(audit.base_thread_init.frame.unwind.stack_bytes==40&&audit.base_thread_init.conventional.stack_bytes==48,"context uses accumulator while conventional summary stays separate");
    expect(audit.rtl_user_thread_start.frame.unwind.stack_bytes==0x40&&audit.rtl_user_thread_start.conventional.stack_bytes==40,"literal machine-frame hexadecimal constant");
    expect(reconstruct_context_evidence(1,{"k",&im},{"n",&im}).base_thread_init.unwind.stack_bytes==40,"compatibility context evidence uses literal accumulator");
    header(0xb00,1,3);op(0xb00,0,0x12);op(0xb00,1,0x14);
    expect(analyze_sample_unwind_2ce3dc(im,0xb00).returned_size==0,"SAVE_NONVOL clears previous accumulated allocation");
    header(0xb00,1,1);op(0xb00,0,0x11);put<ReU16>(im,b+0xb06,2);
    expect(analyze_sample_unwind_2ce3dc(im,0xb00).returned_size==16,"ALLOC_LARGE form ignores current OpInfo and may exceed CountOfCodes");
    header(0xb00,1,3);put<ReU16>(im,b+0xb06,0x1201);put<ReU16>(im,b+0xb08,1);
    expect(analyze_sample_unwind_2ce3dc(im,0xb00).returned_size==0x11201,"ALLOC_LARGE next-slot high nibble chooses far form");
    header(0xb00,0x21,1);op(0xb00,0,0x72);put<ReU32>(im,b+0xb10,0xb40);
    header(0xb40,1,1);op(0xb40,0,0x12);
    auto chain=analyze_sample_unwind_2ce3dc(im,0xb00);
    expect(chain.complete&&chain.entries_visited==2&&chain.returned_size==16,"chain resets accumulator and follows padded-count RVA");
    header(0xb40,0x21,0);put<ReU32>(im,b+0xb4c,0xb00);
    expect(!analyze_sample_unwind_2ce3dc(im,0xb00).complete,"cycle detection bounds metadata-only parser");
    put<ReU32>(im,b+0x250,0);
    expect(!find_export(im,"BaseThreadInitThunk"),"null export RVA cannot resolve to module base");
}
void check_literal_unwind_boundaries() {
    constexpr Address b=0x6000000;
    constexpr Rva u=0x40;
    // [I] Each owned copy ends inside a different required field/operand.
    struct Truncation {ReUSize bytes;ReU8 flags,count,opcode;ReU32 retained;};
    for(const auto& t:re::ReArray<Truncation,7>{{
        {2,1,1,0x12,0}, {5,1,1,0x12,0},
        {7,1,1,0x01,0}, {9,1,1,0x11,0},
        {9,1,2,0x12,16}, {7,1,1,0x14,0},
        {19,0x21,1,0x12,16}
    }}) {
        Snapshot s(b,re::ReVector<ReByte>(u+t.bytes));
        put(s,b+u,t.flags);
        if(t.bytes>2)put(s,b+u+2,t.count);
        if(t.bytes>5)put(s,b+u+5,t.opcode);
        if(t.opcode==0x11)put<ReU16>(s,b+u+6,0x1000);
        if(t.bytes==9&&t.opcode==0x12)put<ReU8>(s,b+u+7,0x01);
        const auto r=analyze_sample_unwind_2ce3dc(s,u);
        expect(!r.complete&&!r.rejected_rsp_encoding&&r.entries_visited==1&&
            r.returned_size==0&&r.output_accumulator==t.retained&&!r.limitation.empty(),
            "truncated header/opcode/operand/chain retains only preceding literal output");
    }
    Snapshot s(b,re::ReVector<ReByte>(0x1000));
    put<ReU8>(s,b+u,0x21);put<ReU8>(s,b+u+2,1);
    put<ReU8>(s,b+u+5,0x12);put<ReU32>(s,b+u+16,0x1000);
    auto r=analyze_sample_unwind_2ce3dc(s,u);
    expect(!r.complete&&r.entries_visited==2&&r.output_accumulator==16&&r.returned_size==0,
        "unavailable chained header retains earlier output before the next reset");
    for(unsigned i=0;i<64;++i) {
        const Address p=b+0x100+16*i;
        put<ReU8>(s,p,0x21);put<ReU32>(s,p+12,0x100+16*(i+1));
    }
    r=analyze_sample_unwind_2ce3dc(s,0x100);
    expect(!r.complete&&r.entries_visited==64&&r.limitation=="chained metadata depth exceeds analysis bound",
        "acyclic chain reaches explicit analyst depth bound");
    // [C] 2ce4e3/2ce4f9/2ce4ab add to a DWORD; normal return reads that DWORD at 2ce54b.
    put<ReU8>(s,b+u,1);put<ReU8>(s,b+u+2,5);
    put<ReU8>(s,b+u+5,0x11);put<ReU32>(s,b+u+6,0xfffffff8u);
    put<ReU8>(s,b+u+11,0x00);put<ReU8>(s,b+u+13,0x12);
    r=analyze_sample_unwind_2ce3dc(s,u);
    expect(r.complete&&!r.rejected_rsp_encoding&&r.output_accumulator==16&&r.returned_size==16,
        "literal accumulation wraps at 32 bits and continues");
    const auto conventional=summarize_unwind(s,u);
    expect(conventional.complete&&conventional.stack_bytes==0x100000010ULL,
        "conventional summary keeps its separate wide allocation total");
    for(const ReU8 opcode:{0x40,0x44,0x45}) {
        put<ReU8>(s,b+u+2,2);put<ReU8>(s,b+u+5,0x12);
        put(s,b+u+7,opcode);
        r=analyze_sample_unwind_2ce3dc(s,u);
        expect(r.complete&&r.rejected_rsp_encoding&&r.output_accumulator==16&&r.returned_size==0,
            "all register-4 rejection branches preserve accumulator and return zero");
    }
}
}
void check_hook_reconstruction() {
    check_water_smoke_position();check_instant_loot();check_literal_installers();check_literal_unwind_context();check_literal_unwind_boundaries();
}
} // namespace rust_internal_re
