; pdata function 0x369164..0x3691be unwind=0x3d2038
369164  40 53                          rex push rbx
369166  48 83 ec 20                    sub    rsp,0x20
36916a  48 8b da                       mov    rbx,rdx
36916d  4c 8b c1                       mov    r8,rcx
369170  e8 93 1d f6 ff                 call   0x2caf08
369175  84 c0                          test   al,al
369177  74 34                          je     0x3691ad
369179  80 3d c8 ec 08 00 00           cmp    BYTE PTR [rip+0x8ecc8],0x0        # 0x3f7e48 ; CONFIG Bools.SpecialTeleport value(+0x48)
369180  49 8b c8                       mov    rcx,r8
369183  74 07                          je     0x36918c
369185  e8 c2 00 00 00                 call   0x36924c
36918a  eb 29                          jmp    0x3691b5
36918c  e8 07 01 00 00                 call   0x369298
369191  48 8b c8                       mov    rcx,rax
369194  4c 8b c0                       mov    r8,rax
369197  e8 6c 1d f6 ff                 call   0x2caf08
36919c  84 c0                          test   al,al
36919e  74 0d                          je     0x3691ad
3691a0  48 8b d3                       mov    rdx,rbx
3691a3  49 8b c8                       mov    rcx,r8
3691a6  e8 bd a8 00 00                 call   0x373a68
3691ab  eb 08                          jmp    0x3691b5
3691ad  48 8b cb                       mov    rcx,rbx
3691b0  e8 07 ea 05 00                 call   0x3c7bbc
3691b5  48 8b c3                       mov    rax,rbx
3691b8  48 83 c4 20                    add    rsp,0x20
3691bc  5b                             pop    rbx
3691bd  c3                             ret
