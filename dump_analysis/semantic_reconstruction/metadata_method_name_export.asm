; heuristic leaf/code range 0x3339ec..0x333a44 unwind=0x0
3339ec  e9 0f f3 ff ff                 jmp    0x332d00
3339f1  cc                             int3
3339f2  cc                             int3
3339f3  cc                             int3
3339f4  e9 2b f3 ff ff                 jmp    0x332d24
3339f9  cc                             int3
3339fa  cc                             int3
3339fb  cc                             int3
3339fc  e9 47 f3 ff ff                 jmp    0x332d48
333a01  cc                             int3
333a02  cc                             int3
333a03  cc                             int3
333a04  e9 63 f3 ff ff                 jmp    0x332d6c
333a09  cc                             int3
333a0a  cc                             int3
333a0b  cc                             int3
333a0c  e9 7f f3 ff ff                 jmp    0x332d90
333a11  cc                             int3
333a12  cc                             int3
333a13  cc                             int3
333a14  e9 9b f3 ff ff                 jmp    0x332db4
333a19  cc                             int3
333a1a  cc                             int3
333a1b  cc                             int3
333a1c  e9 b7 f3 ff ff                 jmp    0x332dd8
333a21  cc                             int3
333a22  cc                             int3
333a23  cc                             int3
333a24  e9 d3 f3 ff ff                 jmp    0x332dfc
333a29  cc                             int3
333a2a  cc                             int3
333a2b  cc                             int3
333a2c  e9 ef f3 ff ff                 jmp    0x332e20
333a31  cc                             int3
333a32  cc                             int3
333a33  cc                             int3
333a34  e9 0b f4 ff ff                 jmp    0x332e44
333a39  cc                             int3
333a3a  cc                             int3
333a3b  cc                             int3
333a3c  e9 27 f4 ff ff                 jmp    0x332e68
333a41  cc                             int3
333a42  cc                             int3
333a43  cc                             int3

; pdata function 0x332d00..0x332d24 unwind=0x3d2038
332d00  40 53                          rex push rbx
332d02  48 83 ec 20                    sub    rsp,0x20
332d06  e8 85 17 00 00                 call   0x334490
332d0b  48 8b d8                       mov    rbx,rax
332d0e  48 8b 00                       mov    rax,QWORD PTR [rax]
332d11  48 85 c0                       test   rax,rax
332d14  75 08                          jne    0x332d1e
332d16  e8 91 09 00 00                 call   0x3336ac
332d1b  48 89 03                       mov    QWORD PTR [rbx],rax
332d1e  48 83 c4 20                    add    rsp,0x20
332d22  5b                             pop    rbx
332d23  c3                             ret

; pdata function 0x3336ac..0x333755 unwind=0x3d2140
3336ac  40 53                          rex push rbx
3336ae  55                             push   rbp
3336af  56                             push   rsi
3336b0  57                             push   rdi
3336b1  48 83 ec 58                    sub    rsp,0x58
3336b5  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3336ba  e8 89 8d f9 ff                 call   0x2cc448
3336bf  48 bd 56 de 05 3b 9b 38 6b 00  movabs rbp,0x6b389b3b05de56
3336c9  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
3336ce  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3336d3  48 8b 52 30                    mov    rdx,QWORD PTR [rdx+0x30]
3336d7  e8 04 8d f9 ff                 call   0x2cc3e0
3336dc  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3336e1  e8 5a 8e f9 ff                 call   0x2cc540
3336e6  84 c0                          test   al,al
3336e8  74 44                          je     0x33372e
3336ea  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3336ef  e8 88 b3 f9 ff                 call   0x2cea7c
3336f4  8b d8                          mov    ebx,eax
3336f6  85 c0                          test   eax,eax
3336f8  74 34                          je     0x33372e
3336fa  48 8b cd                       mov    rcx,rbp
3336fd  e8 3a ab f9 ff                 call   0x2ce23c
333702  48 8b cd                       mov    rcx,rbp
333705  8b f8                          mov    edi,eax
333707  e8 2c ab f9 ff                 call   0x2ce238
33370c  8b f0                          mov    esi,eax
33370e  ff cb                          dec    ebx
333710  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
333715  8b d3                          mov    edx,ebx
333717  e8 e4 af f9 ff                 call   0x2ce700
33371c  48 8b c8                       mov    rcx,rax
33371f  8b d7                          mov    edx,edi
333721  e8 d6 89 f9 ff                 call   0x2cc0fc
333726  3b c6                          cmp    eax,esi
333728  74 1d                          je     0x333747
33372a  85 db                          test   ebx,ebx
33372c  75 e0                          jne    0x33370e
33372e  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
333733  e8 58 b0 f9 ff                 call   0x2ce790
333738  84 c0                          test   al,al
33373a  75 8d                          jne    0x3336c9
33373c  33 c0                          xor    eax,eax
33373e  48 83 c4 58                    add    rsp,0x58
333742  5f                             pop    rdi
333743  5e                             pop    rsi
333744  5d                             pop    rbp
333745  5b                             pop    rbx
333746  c3                             ret
333747  8b d3                          mov    edx,ebx
333749  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
33374e  e8 05 a0 f9 ff                 call   0x2cd758
333753  eb e9                          jmp    0x33373e

; heuristic leaf/code range 0x334490..0x334498 unwind=0x0
334490  48 8d 05 c1 62 0c 00           lea    rax,[rip+0xc62c1]        # 0x3fa758
334497  c3                             ret

