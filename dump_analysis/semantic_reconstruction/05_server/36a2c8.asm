; pdata function 0x36a2c8..0x36a2f1 unwind=0x3d2064
36a2c8  48 83 ec 28                    sub    rsp,0x28
36a2cc  4c 8b c1                       mov    r8,rcx
36a2cf  e8 34 0c f6 ff                 call   0x2caf08
36a2d4  84 c0                          test   al,al
36a2d6  75 04                          jne    0x36a2dc
36a2d8  33 c0                          xor    eax,eax
36a2da  eb 10                          jmp    0x36a2ec
36a2dc  ba e8 04 00 00                 mov    edx,0x4e8
36a2e1  49 8b c8                       mov    rcx,r8
36a2e4  e8 53 4b f7 ff                 call   0x2dee3c
36a2e9  48 8b 00                       mov    rax,QWORD PTR [rax]
36a2ec  48 83 c4 28                    add    rsp,0x28
36a2f0  c3                             ret
