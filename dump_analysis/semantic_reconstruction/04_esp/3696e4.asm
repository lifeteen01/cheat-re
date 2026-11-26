; pdata function 0x3696e4..0x36970c unwind=0x3d2064
3696e4  48 83 ec 28                    sub    rsp,0x28
3696e8  4c 8b c1                       mov    r8,rcx
3696eb  e8 18 18 f6 ff                 call   0x2caf08
3696f0  84 c0                          test   al,al
3696f2  75 04                          jne    0x3696f8
3696f4  33 c0                          xor    eax,eax
3696f6  eb 0f                          jmp    0x369707
3696f8  ba 08 07 00 00                 mov    edx,0x708
3696fd  49 8b c8                       mov    rcx,r8
369700  e8 37 57 f7 ff                 call   0x2dee3c
369705  8b 00                          mov    eax,DWORD PTR [rax]
369707  48 83 c4 28                    add    rsp,0x28
36970b  c3                             ret
