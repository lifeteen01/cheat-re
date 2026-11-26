; pdata function 0x3349ac..0x334a8d unwind=0x3d3734
3349ac  40 53                          rex push rbx
3349ae  56                             push   rsi
3349af  57                             push   rdi
3349b0  41 54                          push   r12
3349b2  41 56                          push   r14
3349b4  41 57                          push   r15
3349b6  48 83 ec 38                    sub    rsp,0x38
3349ba  4d 8b f9                       mov    r15,r9
3349bd  41 8b f8                       mov    edi,r8d
3349c0  4c 8b e2                       mov    r12,rdx
3349c3  48 8b f1                       mov    rsi,rcx
3349c6  48 85 c9                       test   rcx,rcx
3349c9  0f 84 a9 00 00 00              je     0x334a78
3349cf  48 c7 44 24 28 00 00 00 00     mov    QWORD PTR [rsp+0x28],0x0
3349d8  e9 85 00 00 00                 jmp    0x334a62
3349dd  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
3349e1  49 8b d4                       mov    rdx,r12
3349e4  e8 0b 06 00 00                 call   0x334ff4
3349e9  84 c0                          test   al,al
3349eb  74 72                          je     0x334a5f
3349ed  85 ff                          test   edi,edi
3349ef  0f 88 93 00 00 00              js     0x334a88
3349f5  4d 85 ff                       test   r15,r15
3349f8  0f 84 8a 00 00 00              je     0x334a88
3349fe  4c 8b 73 28                    mov    r14,QWORD PTR [rbx+0x28]
334a02  48 8b cb                       mov    rcx,rbx
334a05  e8 36 07 00 00                 call   0x335140
334a0a  3b f8                          cmp    edi,eax
334a0c  7f 51                          jg     0x334a5f
334a0e  83 bc 24 90 00 00 00 00        cmp    DWORD PTR [rsp+0x90],0x0
334a16  7c 09                          jl     0x334a21
334a18  3b 84 24 90 00 00 00           cmp    eax,DWORD PTR [rsp+0x90]
334a1f  75 3e                          jne    0x334a5f
334a21  85 c0                          test   eax,eax
334a23  7e 0f                          jle    0x334a34
334a25  8d 04 7f                       lea    eax,[rdi+rdi*2]
334a28  c1 e0 03                       shl    eax,0x3
334a2b  48 98                          cdqe
334a2d  49 8b 44 06 e8                 mov    rax,QWORD PTR [r14+rax*1-0x18]
334a32  eb 17                          jmp    0x334a4b
334a34  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
334a39  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
334a3e  e8 fd f0 ff ff                 call   0x333b40 ; STRING getter=0x333b40 -
334a43  48 8b c8                       mov    rcx,rax
334a46  e8 19 3a fa ff                 call   0x2d8464
334a4b  48 85 c0                       test   rax,rax
334a4e  74 0f                          je     0x334a5f
334a50  49 8b d7                       mov    rdx,r15
334a53  48 8b c8                       mov    rcx,rax
334a56  e8 99 05 00 00                 call   0x334ff4
334a5b  84 c0                          test   al,al
334a5d  75 29                          jne    0x334a88
334a5f  48 8b ce                       mov    rcx,rsi
334a62  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
334a67  e8 f4 fb ff ff                 call   0x334660
334a6c  48 8b d8                       mov    rbx,rax
334a6f  48 85 c0                       test   rax,rax
334a72  0f 85 65 ff ff ff              jne    0x3349dd
334a78  33 c0                          xor    eax,eax
334a7a  48 83 c4 38                    add    rsp,0x38
334a7e  41 5f                          pop    r15
334a80  41 5e                          pop    r14
334a82  41 5c                          pop    r12
334a84  5f                             pop    rdi
334a85  5e                             pop    rsi
334a86  5b                             pop    rbx
334a87  c3                             ret
334a88  48 8b c3                       mov    rax,rbx
334a8b  eb ed                          jmp    0x334a7a
