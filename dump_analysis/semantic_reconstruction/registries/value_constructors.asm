; pdata function 0x2ea4d0..0x2ea50b unwind=0x3d2038
2ea4d0  40 53                          rex push rbx
2ea4d2  48 83 ec 20                    sub    rsp,0x20
2ea4d6  48 8b d9                       mov    rbx,rcx
2ea4d9  48 8b ca                       mov    rcx,rdx
2ea4dc  e8 c3 0e fe ff                 call   0x2cb3a4
2ea4e1  48 8b c8                       mov    rcx,rax
2ea4e4  e8 ef 40 fe ff                 call   0x2ce5d8
2ea4e9  48 8d 4b 04                    lea    rcx,[rbx+0x4]
2ea4ed  0f 57 c0                       xorps  xmm0,xmm0
2ea4f0  8b 10                          mov    edx,DWORD PTR [rax]
2ea4f2  33 c0                          xor    eax,eax
2ea4f4  89 13                          mov    DWORD PTR [rbx],edx
2ea4f6  0f 11 01                       movups XMMWORD PTR [rcx],xmm0
2ea4f9  48 89 41 10                    mov    QWORD PTR [rcx+0x10],rax
2ea4fd  e8 76 49 00 00                 call   0x2eee78
2ea502  48 8b c3                       mov    rax,rbx
2ea505  48 83 c4 20                    add    rsp,0x20
2ea509  5b                             pop    rbx
2ea50a  c3                             ret

; pdata function 0x2dde50..0x2dde86 unwind=0x3d2038
2dde50  40 53                          rex push rbx
2dde52  48 83 ec 20                    sub    rsp,0x20
2dde56  48 8b d9                       mov    rbx,rcx
2dde59  48 8b ca                       mov    rcx,rdx
2dde5c  e8 43 d5 fe ff                 call   0x2cb3a4
2dde61  48 8b c8                       mov    rcx,rax
2dde64  e8 6f 07 ff ff                 call   0x2ce5d8
2dde69  48 8b d0                       mov    rdx,rax
2dde6c  48 8b cb                       mov    rcx,rbx
2dde6f  e8 10 e4 fe ff                 call   0x2cc284
2dde74  48 8d 4b 20                    lea    rcx,[rbx+0x20]
2dde78  e8 0b 15 00 00                 call   0x2df388
2dde7d  48 8b c3                       mov    rax,rbx
2dde80  48 83 c4 20                    add    rsp,0x20
2dde84  5b                             pop    rbx
2dde85  c3                             ret

; heuristic leaf/code range 0x2d089c..0x2d08a8 unwind=0x0
2d089c  41 b8 04 00 00 00              mov    r8d,0x4
2d08a2  e9 d1 67 00 00                 jmp    0x2d7078
2d08a7  cc                             int3

; heuristic leaf/code range 0x2d7078..0x2d70a2 unwind=0x0
2d7078  45 33 c9                       xor    r9d,r9d
2d707b  4d 85 c0                       test   r8,r8
2d707e  74 1e                          je     0x2d709e
2d7080  41 0f b6 04 11                 movzx  eax,BYTE PTR [r9+rdx*1]
2d7085  49 ba b3 01 00 00 00 01 00 00  movabs r10,0x100000001b3
2d708f  48 33 c8                       xor    rcx,rax
2d7092  49 ff c1                       inc    r9
2d7095  49 0f af ca                    imul   rcx,r10
2d7099  4d 3b c8                       cmp    r9,r8
2d709c  72 e2                          jb     0x2d7080
2d709e  48 8b c1                       mov    rax,rcx
2d70a1  c3                             ret

; pdata function 0x2d1988..0x2d19b6 unwind=0x3d2064
2d1988  48 83 ec 28                    sub    rsp,0x28
2d198c  49 8b c0                       mov    rax,r8
2d198f  49 3b d1                       cmp    rdx,r9
2d1992  74 04                          je     0x2d1998
2d1994  32 c0                          xor    al,al
2d1996  eb 19                          jmp    0x2d19b1
2d1998  48 85 d2                       test   rdx,rdx
2d199b  75 04                          jne    0x2d19a1
2d199d  b0 01                          mov    al,0x1
2d199f  eb 10                          jmp    0x2d19b1
2d19a1  4c 8b c2                       mov    r8,rdx
2d19a4  48 8b d0                       mov    rdx,rax
2d19a7  e8 08 bf ff ff                 call   0x2cd8b4
2d19ac  85 c0                          test   eax,eax
2d19ae  0f 94 c0                       sete   al
2d19b1  48 83 c4 28                    add    rsp,0x28
2d19b5  c3                             ret

; heuristic leaf/code range 0x2cc370..0x2cc37a unwind=0x0
2cc370  0f 57 c0                       xorps  xmm0,xmm0
2cc373  48 8b c1                       mov    rax,rcx
2cc376  0f 11 01                       movups XMMWORD PTR [rcx],xmm0
2cc379  c3                             ret

