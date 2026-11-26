; pdata function 0x3735b4..0x3735ed unwind=0x3d2064
3735b4  48 83 ec 28                    sub    rsp,0x28
3735b8  4c 8b c1                       mov    r8,rcx
3735bb  e8 48 79 f5 ff                 call   0x2caf08
3735c0  84 c0                          test   al,al
3735c2  74 22                          je     0x3735e6
3735c4  ba 50 00 00 00                 mov    edx,0x50
3735c9  49 8b c8                       mov    rcx,r8
3735cc  e8 af 8e ff ff                 call   0x36c480
3735d1  48 8b 10                       mov    rdx,QWORD PTR [rax]
3735d4  48 8b ca                       mov    rcx,rdx
3735d7  e8 2c 79 f5 ff                 call   0x2caf08
3735dc  f6 d8                          neg    al
3735de  48 1b c0                       sbb    rax,rax
3735e1  48 23 c2                       and    rax,rdx
3735e4  eb 02                          jmp    0x3735e8
3735e6  33 c0                          xor    eax,eax
3735e8  48 83 c4 28                    add    rsp,0x28
3735ec  c3                             ret
