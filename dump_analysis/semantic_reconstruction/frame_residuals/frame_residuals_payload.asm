; heuristic leaf/code range 0x2ed980..0x2ed9a0 unwind=0x0
2ed980  48 8b ca                       mov    rcx,rdx
2ed983  e9 08 00 00 00                 jmp    0x2ed990
2ed988  48 8b ca                       mov    rcx,rdx
2ed98b  e9 08 00 00 00                 jmp    0x2ed998
2ed990  33 d2                          xor    edx,edx
2ed992  e9 d1 a3 00 00                 jmp    0x2f7d68
2ed997  cc                             int3
2ed998  33 d2                          xor    edx,edx
2ed99a  e9 fd a3 00 00                 jmp    0x2f7d9c
2ed99f  cc                             int3

; pdata function 0x2dfe00..0x2dfe34 unwind=0x3d2040
2dfe00  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2dfe05  57                             push   rdi
2dfe06  48 83 ec 20                    sub    rsp,0x20
2dfe0a  8b da                          mov    ebx,edx
2dfe0c  48 8b f9                       mov    rdi,rcx
2dfe0f  e8 d4 f6 ff ff                 call   0x2df4e8
2dfe14  f6 c3 01                       test   bl,0x1
2dfe17  74 0d                          je     0x2dfe26
2dfe19  ba 40 00 00 00                 mov    edx,0x40
2dfe1e  48 8b cf                       mov    rcx,rdi
2dfe21  e8 a6 a5 0a 00                 call   0x38a3cc
2dfe26  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2dfe2b  48 8b c7                       mov    rax,rdi
2dfe2e  48 83 c4 20                    add    rsp,0x20
2dfe32  5f                             pop    rdi
2dfe33  c3                             ret

; heuristic leaf/code range 0x2d553c..0x2d554d unwind=0x0
2d553c  e9 5f 1a 00 00                 jmp    0x2d6fa0
2d5541  cc                             int3
2d5542  cc                             int3
2d5543  cc                             int3
2d5544  41 8b 00                       mov    eax,DWORD PTR [r8]
2d5547  39 02                          cmp    DWORD PTR [rdx],eax
2d5549  0f 94 c0                       sete   al
2d554c  c3                             ret

; heuristic leaf/code range 0x2f7d54..0x2f7d66 unwind=0x0
2f7d54  e9 03 1e 02 00                 jmp    0x319b5c
2f7d59  cc                             int3
2f7d5a  cc                             int3
2f7d5b  cc                             int3
2f7d5c  49 8b 00                       mov    rax,QWORD PTR [r8]
2f7d5f  48 39 02                       cmp    QWORD PTR [rdx],rax
2f7d62  0f 94 c0                       sete   al
2f7d65  c3                             ret

