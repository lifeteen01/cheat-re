from pathlib import Path
root=Path('/home/john/Desktop/cheat_re'); src=root/'source/reconstructed'; out=Path(__file__).parent
text=(out/'original_interaction_workers.cpp').read_text()
old='''        if(!(bits&1u)) {
            bits|=1u; InteractionCall c{0x2ce5d8}; c.literal=literal;
            original=need(api.object,c.rva,c);
        }
        if(!(bits&2u)) { bits|=2u; InteractionCall c{0x2cbd24,original}; c.slot=slot; action(c); }'''
new='''        // [C] EBX captures the flags once; resolver reentry must not change
        // the second test or the bits committed before context setup.
        auto captured_bits=bits;
        if(!(captured_bits&1u)) {
            captured_bits|=1u; bits=captured_bits;
            InteractionCall c{0x2ce5d8}; c.literal=literal;
            original=need(api.object,c.rva,c);
        }
        if(!(captured_bits&2u)) {
            captured_bits|=2u; bits=captured_bits;
            InteractionCall c{0x2cbd24,original}; c.slot=slot; action(c);
        }'''
assert text.count(old)==1;text=text.replace(old,new)
old='''                const auto category=read<std::int16_t>(def+0x58);'''
new='''                // [C] 2e813a/2e8148 capture both fields before category
                // filtering, including items that the filter later rejects.
                const auto uid=read<Address>(item+0x88);
                const auto count=read<std::int32_t>(item+0x30);
                const auto category=read<std::int16_t>(def+0x58);'''
assert text.count(old)==1;text=text.replace(old,new)
old='''                const auto maximum=read<std::int32_t>(def+0x78), count=read<std::int32_t>(item+0x30);
                if(dest_count==24&&!(maximum>1&&count!=maximum)) return;
                move_item(item,dest,count); moved=true;'''
new='''                const auto maximum=read<std::int32_t>(def+0x78);
                if(dest_count==24&&!(maximum>1&&count!=maximum)) return;
                InteractionCall call{0x2e6a84,uid,dest};
                call.integer=-1; call.integer2=count; action(call); moved=true;'''
assert text.count(old)==1;text=text.replace(old,new)
(out/'patched_interaction_workers.cpp').write_text(text)
checks=(out/'original_interaction_workers_checks.cpp').read_text(); marker='void check_interaction_workers_reconstruction() {\n'
extra='''    // Independent review I1: preserve captured EBX through resolver reentry.
    for(bool forwarding:{false,true}) {
        for(const auto [before,mutated,after,setups]:
            std::array<std::array<std::uint32_t,4>,4>{{
                {0,3,3,1},{0,0x40000080u,3,1},{2,0,0,0},{2,0x80000000u,0x80000000u,0}}}) {
            Fixture f;
            auto& bits=forwarding?f.state.forwarding_bits_3e5bd8:f.state.melee_bits_3e3fd0;
            bits=before; f.state.frame_3e5bc8=2;
            const auto object=f.calls.object;
            f.calls.object=[&](const InteractionCall& call)->Address {
                if(call.rva==0x2ce5d8) { bits=mutated; return 0x112000; }
                if(call.rva==0x2dda9c) return 0;
                return object(call);
            };
            const auto result=forwarding?
                replay_interaction_forward_2e91fc(f.memory,f.state,f.config,0,f.calls):
                replay_melee_2e12e0(f.memory,f.state,f.config,weapon,0,f.calls);
            assert(result.status==InteractionStatus::returned&&result.original_called);
            assert((bits==after&&f.number(0x2cbd24)==setups)&&
                "I1 captured wrapper flags survive resolver reentry");
            if(setups) {
                const auto setup=std::find_if(f.actions.begin(),f.actions.end(),
                    [](const InteractionCall& call){return call.rva==0x2cbd24;});
                assert(setup->self==0x112000&&setup->slot==(forwarding?0x3e5be0:0x3e3fe0));
            }
        }
    }
    // Independent review I2: rejected category still requires the UID read.
    {
        Fixture f; f.config.transfer_3e4f58=true;
        constexpr Address partial_item=0x11ffc0;
        f.put(array+0x20,partial_item); f.put(partial_item+0x10,definition);
        f.put(partial_item+0x30,std::int32_t{5});
        f.put(definition+0x58,std::int16_t{1});
        const auto result=f.run();
        assert((result.status==InteractionStatus::snapshot_bounds&&
            !f.number(0x2e6a84))&&"I2 transfer UID read precedes category rejection");
    }
'''
assert checks.count(marker)==1;checks=checks.replace(marker,marker+extra)
(out/'patched_interaction_workers_checks.cpp').write_text(checks)
print('Prepared scratch-only I1/I2 candidate and regressions')
