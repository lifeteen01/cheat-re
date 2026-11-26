; pdata function 0x334224..0x334295 unwind=0x3d2130
334224  40 53                          rex push rbx
334226  55                             push   rbp
334227  56                             push   rsi
334228  57                             push   rdi
334229  48 83 ec 28                    sub    rsp,0x28
33422d  48 8b f2                       mov    rsi,rdx
334230  48 8b e9                       mov    rbp,rcx
334233  e8 64 05 00 00                 call   0x33479c
334238  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
33423d  48 c7 44 24 60 00 00 00 00     mov    QWORD PTR [rsp+0x60],0x0
334246  48 8b c8                       mov    rcx,rax
334249  e8 be 05 00 00                 call   0x33480c
33424e  33 db                          xor    ebx,ebx
334250  48 8b f8                       mov    rdi,rax
334253  48 39 5c 24 60                 cmp    QWORD PTR [rsp+0x60],rbx
334258  76 30                          jbe    0x33428a
33425a  48 63 cb                       movsxd rcx,ebx
33425d  48 8b 0c cf                    mov    rcx,QWORD PTR [rdi+rcx*8]
334261  e8 4a 02 00 00                 call   0x3344b0
334266  48 85 c0                       test   rax,rax
334269  74 13                          je     0x33427e
33426b  4c 8b c5                       mov    r8,rbp
33426e  48 8b d6                       mov    rdx,rsi
334271  48 8b c8                       mov    rcx,rax
334274  e8 af 02 00 00                 call   0x334528
334279  48 85 c0                       test   rax,rax
33427c  75 0e                          jne    0x33428c
33427e  ff c3                          inc    ebx
334280  48 63 c3                       movsxd rax,ebx
334283  48 3b 44 24 60                 cmp    rax,QWORD PTR [rsp+0x60]
334288  72 d0                          jb     0x33425a
33428a  33 c0                          xor    eax,eax
33428c  48 83 c4 28                    add    rsp,0x28
334290  5f                             pop    rdi
334291  5e                             pop    rsi
334292  5d                             pop    rbp
334293  5b                             pop    rbx
334294  c3                             ret
