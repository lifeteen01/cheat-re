#include "hooks_analysis.hpp"
namespace rust_internal_re {
namespace {
// [I] Defensive PE-reader implementation for virtual-layout x64 module snapshots.
struct Directory { ReU32 rva{},size{}; };
re::ReOptional<Directory> directory(const Snapshot& im, unsigned index) {
    const Address b=im.base();
    auto mz=im.read<ReU16>(b);
    auto pe=im.read<ReU32>(b+0x3c);
    if(!mz||*mz!=0x5a4d||!pe)return {};
    auto sig=im.read<ReU32>(b+*pe);
    auto magic=im.read<ReU16>(b+*pe+24);
    if(!sig||*sig!=0x4550||!magic||*magic!=0x20b)return {};
    auto rva=im.read<ReU32>(b+*pe+24+112+8ULL*index);
    auto size=im.read<ReU32>(b+*pe+24+116+8ULL*index);
    if(!rva||!size||!*rva||!im.contains(b+*rva,*size))return {};
    return Directory{*rva,*size};
}
re::ReOptional<re::ReString> cstring(const Snapshot& im, Address p) {
    re::ReString result;
    for(ReUSize n=0;n<4096;++n) {
        auto c=im.read<char>(p+n);
        if(!c)return {};
        if(!*c)return result;
        result+=*c;
    }
    return {};
}
}

// [I] Analysis implementation of export resolution; [C] 0x2ce130 needs these two names.
// [U] Forwarded exports are returned as unresolved, not treated as executable addresses.
re::ReOptional<Address> find_export(const Snapshot& im, re::ReStringView wanted) {
    auto d=directory(im,0);if(!d)return {};
    const Address b=im.base(),t=b+d->rva;
    auto nf=im.read<ReU32>(t+20),nn=im.read<ReU32>(t+24);
    auto fs=im.read<ReU32>(t+28),ns=im.read<ReU32>(t+32),os=im.read<ReU32>(t+36);
    if(!nf||!nn||!fs||!ns||!os||*nn>1000000)return {};
    for(ReU32 i=0;i<*nn;++i) {
        auto nr=im.read<ReU32>(b+*ns+4ULL*i);
        auto ordinal=im.read<ReU16>(b+*os+2ULL*i);
        if(!nr||!ordinal||*ordinal>=*nf)return {};
        auto name=cstring(im,b+*nr);
        if(!name||*name!=wanted)continue;
        auto f=im.read<ReU32>(b+*fs+4ULL*(*ordinal));if(!f || !*f)return {};
        if(*f>=d->rva&&ReU64(*f)<ReU64(d->rva)+d->size)return {};
        if(!im.contains(b+*f,1))return {};
        return b+*f;
    }
    return {};
}

// [C] 0x2ce1d4/0x2ce1f0 inspect exception-directory runtime-function records.
// [I] This bounded implementation requires the instruction to fall inside the record.
re::ReOptional<RuntimeFunction> find_runtime_function(const Snapshot& im, Address instruction) {
    if(instruction<im.base())return {};
    auto d=directory(im,3);if(!d)return {};
    const auto rva=instruction-im.base();
    for(ReUSize i=0;i+12<=d->size;i+=12) {
        auto f=im.read<RuntimeFunction>(im.base()+d->rva+i);
        if(f&&f->begin<=rva&&rva<f->end)return f;
    }
    return {};
}

// [I] Detection-oriented x64 unwind allocation summary, not a literal port of all 0x2ce3dc.
// [U] Chained metadata/version 2 epilog encodings and full register restoration are not implemented.
UnwindSummary summarize_unwind(const Snapshot& im, Rva rva) {
    return summarize_unwind(im,rva,im.base());
}
UnwindSummary summarize_unwind(const Snapshot& im, Rva rva, Address module_base) {
    const Address u=module_base+rva;
    auto vf=im.read<ReU8>(u),count=im.read<ReU8>(u+2);
    if(!vf||!count)return {0,false,"unwind bytes unavailable"};
    if((*vf&7)!=1)return {0,false,"unwind version not implemented"};
    ReU64 allocation=0;
    unsigned i=0;
    auto word=[&](unsigned slot){return im.read<ReU16>(u+4+2ULL*slot);};
    while(i<*count) {
        auto code=im.read<ReU8>(u+5+2ULL*i);
        if(!code)return {allocation,false,"truncated unwind code"};
        const unsigned op=*code&15,info=*code>>4;
        switch(op) {
        case 0:allocation+=8;++i;break;
        case 1:
            if(info==0) {
                if(i+1>=*count)return {allocation,false,"truncated ALLOC_LARGE"};
                auto n=word(i+1);if(!n)return {allocation,false,"truncated allocation"};
                allocation+=ReU64(*n)*8;i+=2;
            } else if(info==1) {
                if(i+2>=*count)return {allocation,false,"truncated ALLOC_LARGE"};
                auto n=im.read<ReU32>(u+4+2ULL*(i+1));if(!n)return {allocation,false,"truncated allocation"};
                allocation+=*n;i+=3;
            } else return {allocation,false,"invalid ALLOC_LARGE info"};
            break;
        case 2:allocation+=info*8+8;++i;break;
        case 3:++i;break;
        case 4:case 8:i+=2;break;
        case 5:case 9:i+=3;break;
        case 10:if(info>1)return {allocation,false,"invalid machine-frame encoding"};allocation+=info?48:40;++i;break;
        default:return {allocation,false,"unimplemented unwind operation"};
        }
        if(i>*count)return {allocation,false,"truncated unwind operands"};
    }
    if((*vf>>3)&4)return {allocation,false,"chained unwind entry not followed"};
    return {allocation,true,{}};
}

// [C] Literal metadata-only translation of 0x2ce3dc..0x2ce559.
// [C] This parser has nonstandard behavior; summarize_unwind above remains the separate
// [I] conventional allocation summary for comparison, not an alias for sample semantics.
// [I] Bounded reads/cycle detection replace unsafe reads/infinite loops on malformed data.
SampleUnwindResult analyze_sample_unwind_2ce3dc(const Snapshot& im, Rva initial_rva) {
    return analyze_sample_unwind_2ce3dc(im,initial_rva,im.base());
}
SampleUnwindResult analyze_sample_unwind_2ce3dc(const Snapshot& im, Rva initial_rva, Address module_base) {
    SampleUnwindResult out;
    Rva current=initial_rva;
    re::ReVector<Rva> seen;
    auto fail=[&](re::ReString why) { out.limitation=re::re_move(why);return out; };
    for(ReUSize depth=0;depth<64;++depth) {
        if(re::re_find(seen.begin(),seen.end(),current)!=seen.end())return fail("cyclic chained metadata");
        seen.push_back(current);
        ++out.entries_visited;
        const Address u=module_base+current;
        auto flags=im.read<ReU8>(u);
        auto count=im.read<ReU8>(u+2);
        if(!flags||!count)return fail("unwind header unavailable");
        // [C] 0x2ce3f8 resets the caller's accumulator again on each chained entry.
        out.output_accumulator=0;
        unsigned slot=0;
        while(slot<*count) {
            const Address code_address=u+4+2ULL*slot;
            auto byte=im.read<ReU8>(code_address+1);
            if(!byte)return fail("unwind opcode unavailable");
            const unsigned op=*byte&15, info=*byte>>4;
            unsigned consumed=1;
            switch(op) {
            case 0: // [C] 0x2ce4f1: refuse a push encoding naming register number 4.
                if(info==4) { out.rejected_rsp_encoding=true;out.complete=true;return out; }
                out.output_accumulator+=8;
                break;
            case 1: { // [C] 0x2ce4b0 tests the NEXT slot's high byte, not this opcode's OpInfo.
                auto next_high=im.read<ReU8>(code_address+3);
                auto low=im.read<ReU16>(code_address+2);
                if(!next_high||!low)return fail("large allocation operand unavailable");
                if((*next_high>>4)==0) {
                    out.output_accumulator+=ReU32(*low)*8u;consumed=2;
                } else {
                    auto high=im.read<ReU16>(code_address+4);
                    if(!high)return fail("far allocation operand unavailable");
                    out.output_accumulator+=(ReU32(*high)<<16)|*low;consumed=3;
                }
                break;
            }
            case 2: // [C] 0x2ce4a0: ((packed_byte >> 1) & 0x7ffffff8) + 8.
                out.output_accumulator+=((ReU32(*byte)>>1)&0x7ffffff8u)+8u;
                break;
            case 4:case 5: // [C] 0x2ce484/0x2ce438 reset the accumulated size for these encodings.
                if(info==4) { out.rejected_rsp_encoding=true;out.complete=true;return out; }
                out.output_accumulator=0;consumed=op==4?2:3;
                break;
            case 6:case 8:consumed=2;break; // [C] 0x2ce53b.
            case 7:case 9:consumed=3;break; // [C] 0x2ce44b.
            case 10: // [C] 0x2ce529/0x2ce532 add hexadecimal 0x40/0x48, not 40/48 decimal.
                out.output_accumulator+=info?0x48u:0x40u;
                break;
            default:break; // [C] 0x2ce453: other values only advance one slot.
            }
            // [I] Native traversal may pass CountOfCodes; preserve that traversal choice,
            // [I] while requiring the skipped bytes to exist in the owned snapshot.
            if(!im.contains(code_address,2ULL*consumed))return fail("consumed unwind slots unavailable");
            slot+=consumed;
        }
        if((*flags&0x20)==0) {
            out.returned_size=out.output_accumulator;out.complete=true;return out;
        }
        // [C] 0x2ce469..0x2ce47c: padded code count, then chained entry's UnwindData RVA.
        const unsigned padded=unsigned(*count)+(*count&1u);
        auto next=im.read<ReU32>(u+2ULL*padded+0xc);
        if(!next)return fail("chained unwind RVA unavailable");
        current=*next;
    }
    return fail("chained metadata depth exceeds analysis bound");
}

// [C] 0x2ce221..0x2ce226 tests BeginAddress equality; EndAddress is not tested.
// [C] 0x2ce1d4 passes directory Size unchanged; 0x2ce22b uses it as RECORD COUNT.
// [I] Preserve that over-traversal but stop at copied-image bounds.
re::ReOptional<RuntimeFunction> find_sample_runtime_function_2ce1f0(const Snapshot& im, Address instruction) {
    if(instruction<im.base())return {};
    const auto d=directory(im,3);if(!d)return {};
    const auto rva=instruction-im.base();
    for(ReU32 i=0;i<d->size;++i) {
        const auto f=im.read<RuntimeFunction>(im.base()+d->rva+12ULL*i);
        if(!f)return {};
        if(f->begin==rva)return f;
    }
    return {};
}

// [C] 0x2cbd87..0x2cbe07: exports -> exact BeginAddress lookup -> literal parser.
// [C] Caller ignores EAX and reads the output accumulator, including a rejected RSP encoding.
// [I] No executable call context or module-selected continuation is reproduced here.
ContextMetadataAudit audit_context_metadata(Address target, const ModuleView& k32, const ModuleView& nt) {
    auto resolve=[](const ModuleView& m,re::ReString label) {
        FrameMetadataAudit a;
        a.frame.label=re::re_move(label);
        a.frame.unwind={0,false,"module/export unavailable"};
        a.conventional=a.frame.unwind;
        if(!m.image)return a;
        const auto address=find_export(*m.image,a.frame.label);if(!address)return a;
        a.frame.instruction=*address;
        a.frame.entry=find_sample_runtime_function_2ce1f0(*m.image,*address);
        if(!a.frame.entry) {
            a.frame.unwind={0,false,"sample requires exact runtime-function BeginAddress match"};
            a.conventional=a.frame.unwind;return a;
        }
        a.literal=analyze_sample_unwind_2ce3dc(*m.image,a.frame.entry->unwind);
        a.conventional=summarize_unwind(*m.image,a.frame.entry->unwind);
        a.frame.unwind={a.literal.output_accumulator,a.literal.complete,a.literal.limitation};
        if(a.literal.rejected_rsp_encoding)a.frame.unwind.limitation="sample returned zero on register-4 encoding; caller still reads output accumulator";
        return a;
    };
    return {target,resolve(k32,"BaseThreadInitThunk"),resolve(nt,"RtlUserThreadStart")};
}

SpoofContextEvidence reconstruct_context_evidence(Address target, const ModuleView& k32, const ModuleView& nt) {
    const auto audit=audit_context_metadata(target,k32,nt);
    return {target,audit.base_thread_init.frame,audit.rtl_user_thread_start.frame};
}

// [C] 0x3cdbd4..0x3cddf0 constructs a synthetic stack and jumps to target.
// [I] Detection-level semantic reconstruction: intentionally no executable RSP/return manipulation.
Events describe_executor_3cdbd4(const SpoofContextEvidence&) {
    return {
        {0x3cdbd4,"[C] preserve real caller state separately"},
        {0x3cdc01,"[C] establish restoration continuation inside cheat image"},
        {0x3cdc3e,"[C] fabricate apparent RtlUserThreadStart ancestry"},
        {0x3cdc49,"[C] fabricate apparent BaseThreadInitThunk ancestry"},
        {0x3cdc51,"[C] arrange module-selected continuations using context-derived unwind sizes"},
        {0x3cdc9c,"[C] dispatch argument count and integer/floating register classes"},
        {0x3cddee,"[C] transfer with a jump, not an ordinary call into target"},
        {0x3cdbba,"[C] restoration continuation restores actual caller state"}
    };
}
// ---------------------------------------------------------------------------
// Batch-reconstructed functions (03_stack domain)
// ---------------------------------------------------------------------------

// [C] 0x38a3d4..0x38a3f0: integer linear interpolation.
// [C] sub edx,ecx -> cvtdq2ps both -> mulss xmm2 -> addss -> cvttss2si eax.
ReI32 lerp_integer_38a3d4(ReI32 first, ReI32 second, float t) {
    return static_cast<ReI32>(
        static_cast<float>(first) + static_cast<float>(second - first) * t
    );
}

// [C] 0x3c7e4c..0x3c7e6d: copy 35-byte obfuscated literal.
// [C] Overlapping xmm loads from image 0x2adac0/0x2adad0/0x2adadf produce a 35-byte result.
re::ReArray<ReByte, 35>& obfuscated_literal_35_3c7e4c(re::ReArray<ReByte, 35>& output) {
    static constexpr re::ReArray<ReByte, 35> data = {{
        0x03, 0x08, 0x19, 0x0f, 0x08, 0x1c, 0x09, 0x06,
        0x1f, 0x78, 0x72, 0x62, 0x06, 0x07, 0x65, 0x79,
        0x67, 0x7c, 0x71, 0x6a, 0x73, 0x0e, 0x6d, 0x0a,
        0x76, 0x70, 0x65, 0x6a, 0x73, 0x6c, 0x66, 0x76,
        0x11, 0x61, 0x59
    }};
    output = data;
    return output;
}

// [C] 0x3c7e28..0x3c7e4b: copy 44-byte obfuscated literal.
// [C] Overlapping xmm loads from image 0x2adae8/0x2adaf8/0x2adb04 produce a 44-byte result.
re::ReArray<ReByte, 44>& obfuscated_literal_44_3c7e28(re::ReArray<ReByte, 44>& output) {
    static constexpr re::ReArray<ReByte, 44> data = {{
        0x74, 0x0f, 0x19, 0x0e, 0x0f, 0x1c, 0x0f, 0x0a,
        0x1f, 0x7f, 0x61, 0x7d, 0x63, 0x7b, 0x65, 0x79,
        0x67, 0x77, 0x69, 0x72, 0x09, 0x6c, 0x79, 0x7a,
        0x6f, 0x62, 0x65, 0x72, 0x6c, 0x74, 0x10, 0x6f,
        0x77, 0x67, 0x79, 0x65, 0x7b, 0x63, 0x7d, 0x61,
        0x7f, 0x23, 0x22, 0x62
    }};
    output = data;
    return output;
}

// [C] 0x3caccc..0x3cad0c: resolve "UnityPlayer.dll" module and exception directory info.
// [C] Writes module address at struct+0x00, exception directory at struct+0x08/+0x10.
Events describe_module_resolve_3caccc() {
    return {
        {0x3cacdf, "[C] get obfuscated 'UnityPlayer.dll' string via getter 0x3cabb0"},
        {0x3cace7, "[C] resolve module name via 0x2d852c"},
        {0x3cacef, "[C] resolve module base address via PEB walk 0x3cb058"},
        {0x3cacf8, "[C] store resolved module address at struct+0x00"},
        {0x3cacfe, "[C] read exception directory via 0x2ce1d4 with struct+0x08 as output"},
        {0x3cad03, "[C] store exception directory result at struct+0x10"}
    };
}

// [C] 0x3c7c98..0x3c7cfd: single-argument gate context pack and dispatch.
// [C] Stores resolved code address in arguments_88[0], zero floating flags, count=1.
Events describe_gate_dispatch_3c7c98() {
    return {
        {0x3c7ca9, "[C] store code address via literal fold 0x2cc268"},
        {0x3c7cc5, "[C] memcpy 8 bytes of code address to gate context+0x88 (arguments_88[0]) via 0x3c8d4c"},
        {0x3c7cdc, "[C] memcpy 4 zero bytes to gate context+0xd0 (floating_d0, all integer) via 0x3c8d4c"},
        {0x3c7ce6, "[C] set gate context+0x80 = 1 (argument_count_80 = single argument)"},
        {0x3c7cf4, "[C] set gate context+0x78 = stack return-address pointer (frame_78)"},
        {0x3c7cfd, "[C] tail-call gate executor 0x3cdbd4 with rcx = gate context"}
    };
}

// [C] 0x3c8c70..0x3c8ce8: lazy two-phase initialization then gate dispatch.
// [C] Flag word at 0x40f0b8: bit0 = module snapshot cached, bit1 = context observed.
Events describe_lazy_dispatch_3c8c70() {
    return {
        {0x3c8c76, "[C] load initialization flags from 0x40f0b8"},
        {0x3c8c91, "[C] first-time (bit0 clear): resolve module snapshot via 0x3c7ea8, cache at 0x40f0b0"},
        {0x3c8ccd, "[C] first-time (bit1 clear): observe context via 0x2cbd24(state=0x40f098, slot=0x40f0c0, code=cached, 0)"},
        {0x3c8ce8, "[C] tail-call gate dispatch 0x3c7c98(state=0x40f098, context=0x40f0c0, code=arg)"}
    };
}

// [C] 0x3cabc0..0x3cac3c: spoof subsystem initialization entry point.
// [C] Resolves UnityPlayer.dll, allocates two 24-byte dispatcher structs, initializes client.
Events describe_spoof_init_3cabc0() {
    return {
        {0x3cabcb, "[C] resolve UnityPlayer.dll into state struct at 0x40f098 via 0x3caccc"},
        {0x3cabd5, "[C] allocate 24-byte zeroed struct via 0x38a3c4, store dispatcher at 0x3d5e60"},
        {0x3cabf5, "[C] initialize first dispatcher struct via 0x3cac88"},
        {0x3cabff, "[C] allocate second 24-byte zeroed struct via 0x38a3c4, store at 0x40f2a0"},
        {0x3cac1f, "[C] resolve UnityPlayer.dll into second struct via 0x3caccc"},
        {0x3cac24, "[C] secondary initialization via 0x3cac74"},
        {0x3cac29, "[C] obtain worker instance via 0x35d31c"},
        {0x3cac31, "[C] initialize client subsystem via 0x362118"},
        {0x3cac36, "[C] return 0 (success)"}
    };
}

} // namespace rust_internal_re
