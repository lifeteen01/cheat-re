from pathlib import Path
root=Path(__file__).resolve().parents[2]
p=root/'source/reconstructed/internal_analysis.hpp'
s=p.read_text()
needle='UnwindSummary summarize_unwind(const Snapshot&, Rva unwind_rva);'
s=s.replace(needle,needle+'''
// [C] Literal parser result roles from 0x2ce3dc; [I] completion/bounds fields are analyst additions.
struct SampleUnwindResult {
    std::uint32_t returned_size{}, output_accumulator{};
    std::size_t entries_visited{};
    bool complete{}, rejected_rsp_encoding{};
    std::string limitation;
};
SampleUnwindResult analyze_sample_unwind_2ce3dc(const Snapshot&, Rva unwind_rva);
''')
p.write_text(s)
p=root/'source/reconstructed/03_stack_spoof_spoofcall.cpp';s=p.read_text()
needle='// [C] 0x2ce130 resolves these labels; 0x2cbd24 gathers their unwind metadata.'
body='''// [C] Literal metadata-only translation of 0x2ce3dc..0x2ce559.
// [C] This parser has nonstandard behavior; summarize_unwind above remains the separate
// [I] conventional allocation summary for comparison, not an alias for sample semantics.
// [I] Bounded reads/cycle detection replace unsafe reads/infinite loops on malformed data.
SampleUnwindResult analyze_sample_unwind_2ce3dc(const Snapshot& im, Rva initial_rva) {
    SampleUnwindResult out;
    Rva current=initial_rva;
    std::vector<Rva> seen;
    auto fail=[&](std::string why) { out.limitation=std::move(why);return out; };
    for(std::size_t depth=0;depth<64;++depth) {
        if(std::find(seen.begin(),seen.end(),current)!=seen.end())return fail("cyclic chained metadata");
        seen.push_back(current);
        ++out.entries_visited;
        const Address u=im.base()+current;
        auto flags=im.read<std::uint8_t>(u);
        auto count=im.read<std::uint8_t>(u+2);
        if(!flags||!count)return fail("unwind header unavailable");
        // [C] 0x2ce3f8 resets the caller's accumulator again on each chained entry.
        out.output_accumulator=0;
        unsigned slot=0;
        while(slot<*count) {
            const Address code_address=u+4+2ULL*slot;
            auto byte=im.read<std::uint8_t>(code_address+1);
            if(!byte)return fail("unwind opcode unavailable");
            const unsigned op=*byte&15, info=*byte>>4;
            unsigned consumed=1;
            switch(op) {
            case 0: // [C] 0x2ce4f1: refuse a push encoding naming register number 4.
                if(info==4) { out.rejected_rsp_encoding=true;out.complete=true;return out; }
                out.output_accumulator+=8;
                break;
            case 1: { // [C] 0x2ce4b0 tests the NEXT slot's high byte, not this opcode's OpInfo.
                auto next_high=im.read<std::uint8_t>(code_address+3);
                auto low=im.read<std::uint16_t>(code_address+2);
                if(!next_high||!low)return fail("large allocation operand unavailable");
                if((*next_high>>4)==0) {
                    out.output_accumulator+=std::uint32_t(*low)*8u;consumed=2;
                } else {
                    auto high=im.read<std::uint16_t>(code_address+4);
                    if(!high)return fail("far allocation operand unavailable");
                    out.output_accumulator+=(std::uint32_t(*high)<<16)|*low;consumed=3;
                }
                break;
            }
            case 2: // [C] 0x2ce4a0: ((packed_byte >> 1) & 0x7ffffff8) + 8.
                out.output_accumulator+=((std::uint32_t(*byte)>>1)&0x7ffffff8u)+8u;
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
        auto next=im.read<std::uint32_t>(u+2ULL*padded+0xc);
        if(!next)return fail("chained unwind RVA unavailable");
        current=*next;
    }
    return fail("chained metadata depth exceeds analysis bound");
}

'''
s=s.replace(needle,body+needle)
p.write_text(s)
p=root/'source/reconstructed/analysis_checks.cpp';s=p.read_text()
needle='    require(u.complete&&u.stack_bytes==40,"unwind allocation + pushed register");'
s=s.replace(needle,needle+'''
    auto literal=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(literal.complete&&literal.returned_size==40&&literal.output_accumulator==40,"sample ordinary allocation result");
    put(0x1202,std::uint8_t(1));put(0x1205,std::uint8_t(0x0a));
    auto machine=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(machine.complete&&machine.returned_size==0x40,"sample machine-frame hexadecimal allowance");
    require(summarize_unwind(im,0x1200).stack_bytes==40,"separate conventional machine-frame summary");
    put(0x1205,std::uint8_t(0x40));
    auto refused=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(refused.complete&&refused.rejected_rsp_encoding&&refused.returned_size==0,"sample refuses rsp push encoding");
    put(0x1202,std::uint8_t(3));put(0x1205,std::uint8_t(0x01));
    put(0x1206,std::uint16_t(0x1201));put(0x1208,std::uint16_t(1));
    require(analyze_sample_unwind_2ce3dc(im,0x1200).returned_size==0x11201,"sample chooses allocation form using operand byte");
    put(0x1202,std::uint8_t(2));put(0x1205,std::uint8_t(0x32));put(0x1207,std::uint8_t(0));
''')
needle='    require(!summarize_unwind(im,0x1200).complete,"chained metadata remains explicit");'
s=s.replace(needle,needle+'''
    put(0x1210,std::uint32_t(0x1300));
    put(0x1300,std::uint8_t(1));put(0x1302,std::uint8_t(1));put(0x1305,std::uint8_t(2));
    auto chained=analyze_sample_unwind_2ce3dc(im,0x1200);
    require(chained.complete&&chained.entries_visited==2&&chained.returned_size==8,"sample resets accumulator on chained entry");
    put(0x1300,std::uint8_t(0x21));put(0x1310,std::uint32_t(0x1200));
    require(!analyze_sample_unwind_2ce3dc(im,0x1200).complete,"cyclic metadata rejected by analysis bound");
''')
p.write_text(s)
