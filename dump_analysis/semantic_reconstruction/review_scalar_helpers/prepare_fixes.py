from pathlib import Path
root=Path('/home/john/Desktop/cheat_re');src=root/'source/reconstructed';out=Path(__file__).parent
s=(src/'game_helpers_analysis.cpp').read_text()
s=s.replace('Address target,bool observe) {','Address target,bool observe, Rva flag_cell=0, std::uint32_t flag_bits=0) {')
s=s.replace('c.dispatcher=read<Address>(g(0x3d5e60),wrapper);\n        if(observe', '''c.dispatcher=read<Address>(g(0x3d5e60),wrapper);
        // [C] Sprite/Type/string wrappers load dispatcher BEFORE setting bit2.
        // Component/GameObject/direct wrappers commit it before this helper.
        if(observe&&flag_cell)write(g(flag_cell),flag_bits|2,wrapper);
        if(observe''',1)
s=s.replace('''            const bool initialize=!(flags&2);
            if(initialize)write(g(s.flags),flags|2,wrapper);
            auto c=context(wrapper,s.target,s.context,wrapper==0x370884||wrapper==0x371c38?0x2cb9fc:0x2d2094,target,initialize);''','''            const bool initialize=!(flags&2);
            const bool root_before_flag=wrapper==0x370884||wrapper==0x371c38;
            if(initialize&&!root_before_flag)write(g(s.flags),flags|2,wrapper);
            auto c=context(wrapper,s.target,s.context,wrapper==0x370884||wrapper==0x371c38?0x2cb9fc:0x2d2094,
                target,initialize,root_before_flag?s.flags:0,flags);''')
s=s.replace('''        const bool initialize=!(flags&2);if(initialize)write(g(flag),flags|2,wrapper);
        auto c=context(wrapper,cell,ctx,0x2cb9fc,target,initialize);''','''        const bool initialize=!(flags&2);
        auto c=context(wrapper,cell,ctx,0x2cb9fc,target,initialize,flag,flags);''')
assert s!=(src/'game_helpers_analysis.cpp').read_text()
(out/'patched_game_helpers_analysis.cpp').write_text(s)
s=(src/'projectile_leaf_helpers.cpp').read_text()
s=s.replace('''    template<class F>const F& need''','''    void range(Address p,std::size_t size,Rva r) {
        if(!image.contains(p,size))throw SnapshotBindingFailure{GameBaseStatus::missing_bytes,r};
    }
    template<class F>const F& need''')
s=s.replace('''        write(call.context+0x88,receiver,0x32b770);write(call.context+0x90,arg,0x32b770);''','''        // [C] Unknown home/return-slot stores still require their full native spans
        // before later known fields mutate. Unknown bits stay unmaterialized.
        range(call.context+0xd2,2,0x32b760);
        range(call.context+0x78,8,0x32b76c);
        range(call.context+0x88,16,0x32b770);
        write(call.context+0x88,receiver,0x32b770);write(call.context+0x90,arg,0x32b770);''')
s=s.replace('''        x.need(api.spread,0x32b7a0)({0x32bd4c,root,code,env.module+0x3f7be0},output,spread,direction,flag);''','''        const Address context=env.module+0x3f7be0;
        // [C]32b7a0 deterministic fields, in native store order. The complete
        //16-byte source slots include unknown high bits; validate spans only.
        x.write(context+0xd0,std::uint32_t(0x100),0x32b800);
        x.range(context+0x88,16,0x32b80a);
        x.write(context+0x88,output,0x32b80a);
        x.write(context+0x90,spread,0x32b80a);
        x.write(context+0x80,Address(4),0x32b811);
        x.range(context+0x98,16,0x32b81c);
        x.write(context+0x98,direction,0x32b81c);
        x.write(context+0xa0,flag,0x32b81c);
        x.range(context+0x78,8,0x32b823);
        x.need(api.spread,0x32b7a0)({0x32bd4c,root,code,context},output,spread,direction,flag);''')
assert s!=(src/'projectile_leaf_helpers.cpp').read_text()
(out/'patched_projectile_leaf_helpers.cpp').write_text(s)
print('Prepared NEW scratch implementations only; source untouched')
