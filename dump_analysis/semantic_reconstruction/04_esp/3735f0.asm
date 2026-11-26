; pdata function 0x3735f0..0x373619 unwind=0x3d2064
3735f0  48 83 ec 28                    sub    rsp,0x28
3735f4  4c 8b c1                       mov    r8,rcx
3735f7  e8 0c 79 f5 ff                 call   0x2caf08
3735fc  84 c0                          test   al,al
3735fe  75 04                          jne    0x373604
373600  33 c0                          xor    eax,eax
373602  eb 10                          jmp    0x373614
373604  ba 44 00 00 00                 mov    edx,0x44
373609  49 8b c8                       mov    rcx,r8
37360c  e8 6f 8e ff ff                 call   0x36c480
373611  0f b7 00                       movzx  eax,WORD PTR [rax]
373614  48 83 c4 28                    add    rsp,0x28
373618  c3                             ret
