; pdata function 0x2e0e9c..0x2e0ec9 unwind=0x3d2064
2e0e9c  48 83 ec 28                    sub    rsp,0x28
2e0ea0  4c 8b c1                       mov    r8,rcx
2e0ea3  e8 60 a0 fe ff                 call   0x2caf08
2e0ea8  84 c0                          test   al,al
2e0eaa  74 16                          je     0x2e0ec2
2e0eac  ba 48 00 00 00                 mov    edx,0x48
2e0eb1  49 8b c8                       mov    rcx,r8
2e0eb4  e8 83 df ff ff                 call   0x2dee3c
2e0eb9  48 83 38 00                    cmp    QWORD PTR [rax],0x0
2e0ebd  0f 95 c0                       setne  al
2e0ec0  eb 02                          jmp    0x2e0ec4
2e0ec2  32 c0                          xor    al,al
2e0ec4  48 83 c4 28                    add    rsp,0x28
2e0ec8  c3                             ret

; pdata function 0x2e5a54..0x2e5a80 unwind=0x3d2064
2e5a54  48 83 ec 28                    sub    rsp,0x28
2e5a58  48 8b d1                       mov    rdx,rcx
2e5a5b  e8 a8 54 fe ff                 call   0x2caf08
2e5a60  84 c0                          test   al,al
2e5a62  74 15                          je     0x2e5a79
2e5a64  48 8b 12                       mov    rdx,QWORD PTR [rdx]
2e5a67  48 8b ca                       mov    rcx,rdx
2e5a6a  e8 99 54 fe ff                 call   0x2caf08
2e5a6f  84 c0                          test   al,al
2e5a71  74 06                          je     0x2e5a79
2e5a73  48 8b 42 10                    mov    rax,QWORD PTR [rdx+0x10]
2e5a77  eb 02                          jmp    0x2e5a7b
2e5a79  33 c0                          xor    eax,eax
2e5a7b  48 83 c4 28                    add    rsp,0x28
2e5a7f  c3                             ret

; pdata function 0x367668..0x367684 unwind=0x3d2064
367668  48 83 ec 28                    sub    rsp,0x28
36766c  48 8b d1                       mov    rdx,rcx
36766f  e8 94 38 f6 ff                 call   0x2caf08
367674  84 c0                          test   al,al
367676  75 04                          jne    0x36767c
367678  33 c0                          xor    eax,eax
36767a  eb 03                          jmp    0x36767f
36767c  8b 42 54                       mov    eax,DWORD PTR [rdx+0x54]
36767f  48 83 c4 28                    add    rsp,0x28
367683  c3                             ret

; pdata function 0x369df4..0x369e1b unwind=0x3d2038
369df4  40 53                          rex push rbx
369df6  48 83 ec 20                    sub    rsp,0x20
369dfa  8b da                          mov    ebx,edx
369dfc  4c 8b c1                       mov    r8,rcx
369dff  e8 04 11 f6 ff                 call   0x2caf08
369e04  84 c0                          test   al,al
369e06  74 0d                          je     0x369e15
369e08  49 8b c8                       mov    rcx,r8
369e0b  e8 d4 f8 ff ff                 call   0x3696e4
369e10  85 c3                          test   ebx,eax
369e12  0f 95 c0                       setne  al
369e15  48 83 c4 20                    add    rsp,0x20
369e19  5b                             pop    rbx
369e1a  c3                             ret

; pdata function 0x3693b0..0x3693d4 unwind=0x3d2064
3693b0  48 83 ec 28                    sub    rsp,0x28
3693b4  4c 8b c1                       mov    r8,rcx
3693b7  e8 4c 1b f6 ff                 call   0x2caf08
3693bc  84 c0                          test   al,al
3693be  74 0f                          je     0x3693cf
3693c0  ba c0 02 00 00                 mov    edx,0x2c0
3693c5  49 8b c8                       mov    rcx,r8
3693c8  e8 6f 5a f7 ff                 call   0x2dee3c
3693cd  8a 00                          mov    al,BYTE PTR [rax]
3693cf  48 83 c4 28                    add    rsp,0x28
3693d3  c3                             ret

; pdata function 0x36a178..0x36a19d unwind=0x3d2064
36a178  48 83 ec 28                    sub    rsp,0x28
36a17c  48 8b d1                       mov    rdx,rcx
36a17f  e8 84 0d f6 ff                 call   0x2caf08
36a184  84 c0                          test   al,al
36a186  74 10                          je     0x36a198
36a188  48 8b ca                       mov    rcx,rdx
36a18b  e8 d8 d4 ff ff                 call   0x367668
36a190  3d 14 d5 e1 f4                 cmp    eax,0xf4e1d514
36a195  0f 95 c0                       setne  al
36a198  48 83 c4 28                    add    rsp,0x28
36a19c  c3                             ret

; pdata function 0x36acb8..0x36acde unwind=0x3d2064
36acb8  48 83 ec 28                    sub    rsp,0x28
36acbc  4c 8b c1                       mov    r8,rcx
36acbf  e8 44 02 f6 ff                 call   0x2caf08
36acc4  84 c0                          test   al,al
36acc6  75 05                          jne    0x36accd
36acc8  48 83 c4 28                    add    rsp,0x28
36accc  c3                             ret
36accd  ba 00 00 02 00                 mov    edx,0x20000
36acd2  49 8b c8                       mov    rcx,r8
36acd5  48 83 c4 28                    add    rsp,0x28
36acd9  e9 16 f1 ff ff                 jmp    0x369df4

; pdata function 0x36b288..0x36b2ae unwind=0x3d2064
36b288  48 83 ec 28                    sub    rsp,0x28
36b28c  4c 8b c1                       mov    r8,rcx
36b28f  e8 74 fc f5 ff                 call   0x2caf08
36b294  84 c0                          test   al,al
36b296  75 05                          jne    0x36b29d
36b298  48 83 c4 28                    add    rsp,0x28
36b29c  c3                             ret
36b29d  ba 40 00 00 00                 mov    edx,0x40
36b2a2  49 8b c8                       mov    rcx,r8
36b2a5  48 83 c4 28                    add    rsp,0x28
36b2a9  e9 46 eb ff ff                 jmp    0x369df4

; pdata function 0x36a20c..0x36a238 unwind=0x3d2064
36a20c  48 83 ec 28                    sub    rsp,0x28
36a210  4c 8b c1                       mov    r8,rcx
36a213  e8 f0 0c f6 ff                 call   0x2caf08
36a218  84 c0                          test   al,al
36a21a  74 15                          je     0x36a231
36a21c  84 d2                          test   dl,dl
36a21e  75 11                          jne    0x36a231
36a220  ba 10 00 00 00                 mov    edx,0x10
36a225  49 8b c8                       mov    rcx,r8
36a228  48 83 c4 28                    add    rsp,0x28
36a22c  e9 c3 fb ff ff                 jmp    0x369df4
36a231  32 c0                          xor    al,al
36a233  48 83 c4 28                    add    rsp,0x28
36a237  c3                             ret

; pdata function 0x369738..0x369761 unwind=0x3d2064
369738  48 83 ec 28                    sub    rsp,0x28
36973c  4c 8b c1                       mov    r8,rcx
36973f  e8 c4 17 f6 ff                 call   0x2caf08
369744  84 c0                          test   al,al
369746  75 04                          jne    0x36974c
369748  33 c0                          xor    eax,eax
36974a  eb 10                          jmp    0x36975c
36974c  ba 78 07 00 00                 mov    edx,0x778
369751  49 8b c8                       mov    rcx,r8
369754  e8 e3 56 f7 ff                 call   0x2dee3c
369759  48 8b 00                       mov    rax,QWORD PTR [rax]
36975c  48 83 c4 28                    add    rsp,0x28
369760  c3                             ret

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

; pdata function 0x369400..0x369429 unwind=0x3d2064
369400  48 83 ec 28                    sub    rsp,0x28
369404  4c 8b c1                       mov    r8,rcx
369407  e8 fc 1a f6 ff                 call   0x2caf08
36940c  84 c0                          test   al,al
36940e  75 04                          jne    0x369414
369410  33 c0                          xor    eax,eax
369412  eb 10                          jmp    0x369424
369414  ba 50 03 00 00                 mov    edx,0x350
369419  49 8b c8                       mov    rcx,r8
36941c  e8 1b 5a f7 ff                 call   0x2dee3c
369421  48 8b 00                       mov    rax,QWORD PTR [rax]
369424  48 83 c4 28                    add    rsp,0x28
369428  c3                             ret

; pdata function 0x368cb0..0x368f4f unwind=0x3d3e4c
368cb0  48 8b c4                       mov    rax,rsp
368cb3  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
368cb7  89 50 10                       mov    DWORD PTR [rax+0x10],edx
368cba  55                             push   rbp
368cbb  56                             push   rsi
368cbc  57                             push   rdi
368cbd  41 54                          push   r12
368cbf  41 55                          push   r13
368cc1  41 56                          push   r14
368cc3  41 57                          push   r15
368cc5  48 8d 68 a1                    lea    rbp,[rax-0x5f]
368cc9  48 81 ec b0 00 00 00           sub    rsp,0xb0
368cd0  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
368cd4  4c 8b f1                       mov    r14,rcx
368cd7  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
368cdb  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
368ce0  e8 b7 79 f7 ff                 call   0x2e069c
368ce5  48 8b c8                       mov    rcx,rax
368ce8  4c 8b e8                       mov    r13,rax
368ceb  e8 18 22 f6 ff                 call   0x2caf08
368cf0  84 c0                          test   al,al
368cf2  0f 84 2a 02 00 00              je     0x368f22
368cf8  49 8b ce                       mov    rcx,r14
368cfb  e8 08 22 f6 ff                 call   0x2caf08
368d00  84 c0                          test   al,al
368d02  0f 84 1a 02 00 00              je     0x368f22
368d08  49 8b ce                       mov    rcx,r14
368d0b  e8 8c 81 f7 ff                 call   0x2e0e9c
368d10  84 c0                          test   al,al
368d12  0f 84 0a 02 00 00              je     0x368f22
368d18  e8 7f 4d f7 ff                 call   0x2dda9c
368d1d  48 8b c8                       mov    rcx,rax
368d20  e8 e3 21 f6 ff                 call   0x2caf08
368d25  84 c0                          test   al,al
368d27  0f 84 f5 01 00 00              je     0x368f22
368d2d  4d 8b be d0 01 00 00           mov    r15,QWORD PTR [r14+0x1d0]
368d34  49 8b cf                       mov    rcx,r15
368d37  e8 cc 21 f6 ff                 call   0x2caf08
368d3c  84 c0                          test   al,al
368d3e  0f 84 de 01 00 00              je     0x368f22
368d44  4d 8b 7f 50                    mov    r15,QWORD PTR [r15+0x50]
368d48  49 8b cf                       mov    rcx,r15
368d4b  e8 b8 21 f6 ff                 call   0x2caf08
368d50  84 c0                          test   al,al
368d52  0f 84 ca 01 00 00              je     0x368f22
368d58  45 8b 67 18                    mov    r12d,DWORD PTR [r15+0x18]
368d5c  45 85 e4                       test   r12d,r12d
368d5f  0f 8e bd 01 00 00              jle    0x368f22
368d65  f3 0f 10 3d e7 4d f2 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff24de7]        # 0x28db54
368d6d  83 cf ff                       or     edi,0xffffffff
368d70  33 f6                          xor    esi,esi
368d72  45 0f 57 c0                    xorps  xmm8,xmm8
368d76  8d 04 f5 00 00 00 00           lea    eax,[rsi*8+0x0]
368d7d  48 63 c8                       movsxd rcx,eax
368d80  4d 8b 44 0f 20                 mov    r8,QWORD PTR [r15+rcx*1+0x20]
368d85  49 8b c8                       mov    rcx,r8
368d88  e8 7b 21 f6 ff                 call   0x2caf08
368d8d  84 c0                          test   al,al
368d8f  0f 84 17 01 00 00              je     0x368eac
368d95  8d 46 d5                       lea    eax,[rsi-0x2b]
368d98  83 f8 01                       cmp    eax,0x1
368d9b  0f 86 0b 01 00 00              jbe    0x368eac
368da1  48 8d 55 a7                    lea    rdx,[rbp-0x59]
368da5  49 8b c8                       mov    rcx,r8
368da8  e8 27 ba 00 00                 call   0x3747d4
368dad  e8 ba dc f7 ff                 call   0x2e6a6c
368db2  8b 4d af                       mov    ecx,DWORD PTR [rbp-0x51]
368db5  48 8d 55 e7                    lea    rdx,[rbp-0x19]
368db9  f2 0f 10 45 a7                 movsd  xmm0,QWORD PTR [rbp-0x59]
368dbe  8b d8                          mov    ebx,eax
368dc0  89 4d bf                       mov    DWORD PTR [rbp-0x41],ecx
368dc3  49 8b cd                       mov    rcx,r13
368dc6  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
368dcb  e8 64 3c 00 00                 call   0x36ca34
368dd0  0f 57 db                       xorps  xmm3,xmm3
368dd3  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
368dda  44 8b c3                       mov    r8d,ebx
368ddd  48 8d 55 b7                    lea    rdx,[rbp-0x49]
368de1  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
368de4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
368de8  89 4d cf                       mov    DWORD PTR [rbp-0x31],ecx
368deb  48 8d 4d c7                    lea    rcx,[rbp-0x39]
368def  f2 0f 11 45 c7                 movsd  QWORD PTR [rbp-0x39],xmm0
368df4  e8 27 95 f7 ff                 call   0x2e2320
368df9  84 c0                          test   al,al
368dfb  0f 84 ab 00 00 00              je     0x368eac
368e01  48 8d 4d 77                    lea    rcx,[rbp+0x77]
368e05  e8 9a 25 f6 ff                 call   0x2cb3a4
368e0a  f2 0f 10 45 a7                 movsd  xmm0,QWORD PTR [rbp-0x59]
368e0f  4c 8d 0d 92 e4 06 00           lea    r9,[rip+0x6e492]        # 0x3d72a8
368e16  8b 45 af                       mov    eax,DWORD PTR [rbp-0x51]
368e19  4c 8d 45 77                    lea    r8,[rbp+0x77]
368e1d  48 8d 55 d7                    lea    rdx,[rbp-0x29]
368e21  f2 0f 11 45 d7                 movsd  QWORD PTR [rbp-0x29],xmm0
368e26  49 8b cd                       mov    rcx,r13
368e29  89 45 df                       mov    DWORD PTR [rbp-0x21],eax
368e2c  e8 ef 3e 00 00                 call   0x36cd20
368e31  84 c0                          test   al,al
368e33  74 77                          je     0x368eac
368e35  e8 b6 7c f7 ff                 call   0x2e0af0
368e3a  66 0f 6e f0                    movd   xmm6,eax
368e3e  0f 5b f6                       cvtdq2ps xmm6,xmm6
368e41  f3 0f 59 35 07 44 f2 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff24407]        # 0x28d250 ; f32=0.5
368e49  e8 a2 7b f7 ff                 call   0x2e09f0
368e4e  0f 28 ce                       movaps xmm1,xmm6
368e51  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
368e55  66 0f 6e d0                    movd   xmm2,eax
368e59  0f 5b d2                       cvtdq2ps xmm2,xmm2
368e5c  f3 0f 59 15 ec 43 f2 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff243ec]        # 0x28d250 ; f32=0.5
368e64  e8 d7 34 f6 ff                 call   0x2cc340
368e69  f3 0f 10 85 83 00 00 00        movss  xmm0,DWORD PTR [rbp+0x83]
368e71  bb 02 00 00 00                 mov    ebx,0x2
368e76  f3 0f 5c 45 7b                 subss  xmm0,DWORD PTR [rbp+0x7b]
368e7b  8b d3                          mov    edx,ebx
368e7d  e8 ce ad f7 ff                 call   0x2e3c50
368e82  0f 28 f0                       movaps xmm6,xmm0
368e85  8b d3                          mov    edx,ebx
368e87  f3 0f 10 45 7f                 movss  xmm0,DWORD PTR [rbp+0x7f]
368e8c  f3 0f 5c 45 77                 subss  xmm0,DWORD PTR [rbp+0x77]
368e91  e8 ba ad f7 ff                 call   0x2e3c50
368e96  f3 0f 58 f0                    addss  xmm6,xmm0
368e9a  0f 28 c6                       movaps xmm0,xmm6
368e9d  e8 e6 ad f7 ff                 call   0x2e3c88
368ea2  0f 2f f8                       comiss xmm7,xmm0
368ea5  76 05                          jbe    0x368eac
368ea7  8b fe                          mov    edi,esi
368ea9  0f 28 f8                       movaps xmm7,xmm0
368eac  ff c6                          inc    esi
368eae  41 3b f4                       cmp    esi,r12d
368eb1  0f 8c bf fe ff ff              jl     0x368d76
368eb7  8b 75 6f                       mov    esi,DWORD PTR [rbp+0x6f]
368eba  85 f6                          test   esi,esi
368ebc  74 60                          je     0x368f1e
368ebe  44 8b c6                       mov    r8d,esi
368ec1  48 8d 55 d7                    lea    rdx,[rbp-0x29]
368ec5  49 8b ce                       mov    rcx,r14
368ec8  e8 1b fd ff ff                 call   0x368be8
368ecd  e8 9a db f7 ff                 call   0x2e6a6c
368ed2  8b 4d df                       mov    ecx,DWORD PTR [rbp-0x21]
368ed5  48 8d 55 e7                    lea    rdx,[rbp-0x19]
368ed9  f2 0f 10 45 d7                 movsd  xmm0,QWORD PTR [rbp-0x29]
368ede  8b d8                          mov    ebx,eax
368ee0  89 4d cf                       mov    DWORD PTR [rbp-0x31],ecx
368ee3  49 8b cd                       mov    rcx,r13
368ee6  f2 0f 11 45 c7                 movsd  QWORD PTR [rbp-0x39],xmm0
368eeb  e8 44 3b 00 00                 call   0x36ca34
368ef0  0f 57 db                       xorps  xmm3,xmm3
368ef3  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
368efa  44 8b c3                       mov    r8d,ebx
368efd  48 8d 55 c7                    lea    rdx,[rbp-0x39]
368f01  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
368f04  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
368f08  89 4d bf                       mov    DWORD PTR [rbp-0x41],ecx
368f0b  48 8d 4d b7                    lea    rcx,[rbp-0x49]
368f0f  f2 0f 11 45 b7                 movsd  QWORD PTR [rbp-0x49],xmm0
368f14  e8 07 94 f7 ff                 call   0x2e2320
368f19  84 c0                          test   al,al
368f1b  0f 45 fe                       cmovne edi,esi
368f1e  8b c7                          mov    eax,edi
368f20  eb 03                          jmp    0x368f25
368f22  83 c8 ff                       or     eax,0xffffffff
368f25  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
368f2d  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
368f31  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
368f36  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
368f3b  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
368f40  49 8b e3                       mov    rsp,r11
368f43  41 5f                          pop    r15
368f45  41 5e                          pop    r14
368f47  41 5d                          pop    r13
368f49  41 5c                          pop    r12
368f4b  5f                             pop    rdi
368f4c  5e                             pop    rsi
368f4d  5d                             pop    rbp
368f4e  c3                             ret

; pdata function 0x36b758..0x36b938 unwind=0x3d3f38
36b758  48 8b c4                       mov    rax,rsp
36b75b  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
36b75f  48 89 68 18                    mov    QWORD PTR [rax+0x18],rbp
36b763  56                             push   rsi
36b764  57                             push   rdi
36b765  41 54                          push   r12
36b767  41 56                          push   r14
36b769  41 57                          push   r15
36b76b  48 81 ec b0 00 00 00           sub    rsp,0xb0
36b772  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
36b776  4c 8b c1                       mov    r8,rcx
36b779  e8 8a f7 f5 ff                 call   0x2caf08
36b77e  84 c0                          test   al,al
36b780  0f 84 8e 01 00 00              je     0x36b914
36b786  ba 90 00 00 00                 mov    edx,0x90
36b78b  49 8b c8                       mov    rcx,r8
36b78e  e8 a9 36 f7 ff                 call   0x2dee3c
36b793  4c 8b 30                       mov    r14,QWORD PTR [rax]
36b796  49 8b ce                       mov    rcx,r14
36b799  e8 6a f7 f5 ff                 call   0x2caf08
36b79e  84 c0                          test   al,al
36b7a0  0f 84 6e 01 00 00              je     0x36b914
36b7a6  45 8b 7e 18                    mov    r15d,DWORD PTR [r14+0x18]
36b7aa  45 85 ff                       test   r15d,r15d
36b7ad  0f 8e 61 01 00 00              jle    0x36b914
36b7b3  33 ff                          xor    edi,edi
36b7b5  0f 57 f6                       xorps  xmm6,xmm6
36b7b8  33 f6                          xor    esi,esi
36b7ba  49 bc 25 23 22 84 e4 9c f2 cb  movabs r12,0xcbf29ce484222325
36b7c4  49 8b 6e 10                    mov    rbp,QWORD PTR [r14+0x10]
36b7c8  48 8b cd                       mov    rcx,rbp
36b7cb  e8 38 f7 f5 ff                 call   0x2caf08
36b7d0  84 c0                          test   al,al
36b7d2  0f 84 ed 00 00 00              je     0x36b8c5
36b7d8  8d 04 f5 00 00 00 00           lea    eax,[rsi*8+0x0]
36b7df  48 63 c8                       movsxd rcx,eax
36b7e2  48 8b 6c 29 20                 mov    rbp,QWORD PTR [rcx+rbp*1+0x20]
36b7e7  48 8b cd                       mov    rcx,rbp
36b7ea  e8 19 f7 f5 ff                 call   0x2caf08
36b7ef  84 c0                          test   al,al
36b7f1  0f 84 ce 00 00 00              je     0x36b8c5
36b7f7  48 8b cd                       mov    rcx,rbp
36b7fa  e8 55 a2 f7 ff                 call   0x2e5a54
36b7ff  48 8b c8                       mov    rcx,rax
36b802  48 8b d0                       mov    rdx,rax
36b805  e8 fe f6 f5 ff                 call   0x2caf08
36b80a  84 c0                          test   al,al
36b80c  0f 84 b3 00 00 00              je     0x36b8c5
36b812  48 8b ca                       mov    rcx,rdx
36b815  e8 3a ab f6 ff                 call   0x2d6354
36b81a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36b81f  48 8b d8                       mov    rbx,rax
36b822  48 8d 8c 24 e8 00 00 00        lea    rcx,[rsp+0xe8]
36b82a  e8 1d fb ff ff                 call   0x36b34c ; STRING getter=0x36b34c ProjectileWeaponMod
36b82f  48 8b c8                       mov    rcx,rax
36b832  e8 5d 4c fb ff                 call   0x320494
36b837  48 8b c8                       mov    rcx,rax
36b83a  49 8b d4                       mov    rdx,r12
36b83d  e8 0a a3 f7 ff                 call   0x2e5b4c
36b842  48 3b d8                       cmp    rbx,rax
36b845  75 7e                          jne    0x36b8c5
36b847  48 8b cd                       mov    rcx,rbp
36b84a  e8 cd 7d 00 00                 call   0x37361c
36b84f  48 8b c8                       mov    rcx,rax
36b852  4c 8b c0                       mov    r8,rax
36b855  e8 ae f6 f5 ff                 call   0x2caf08
36b85a  84 c0                          test   al,al
36b85c  74 67                          je     0x36b8c5
36b85e  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36b863  49 8b c8                       mov    rcx,r8
36b866  e8 ad c5 f6 ff                 call   0x2d7e18
36b86b  48 8b c8                       mov    rcx,rax
36b86e  e8 79 1f f6 ff                 call   0x2cd7ec
36b873  48 8b c8                       mov    rcx,rax
36b876  e8 d9 aa f6 ff                 call   0x2d6354
36b87b  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36b880  48 8b d8                       mov    rbx,rax
36b883  e8 6c 0c f6 ff                 call   0x2cc4f4
36b888  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36b88d  48 8d 8c 24 e8 00 00 00        lea    rcx,[rsp+0xe8]
36b895  e8 3e fb ff ff                 call   0x36b3d8 ; STRING getter=0x36b3d8 assets/prefabs/weapon mods/gascompressionoverdrive/gascompressionoverdrive.entity.prefab
36b89a  48 8b c8                       mov    rcx,rax
36b89d  e8 e2 0a 00 00                 call   0x36c384
36b8a2  48 8b c8                       mov    rcx,rax
36b8a5  49 8b d4                       mov    rdx,r12
36b8a8  e8 9f a2 f7 ff                 call   0x2e5b4c
36b8ad  80 bd 30 02 00 00 00           cmp    BYTE PTR [rbp+0x230],0x0
36b8b4  75 05                          jne    0x36b8bb
36b8b6  48 3b d8                       cmp    rbx,rax
36b8b9  75 0a                          jne    0x36b8c5
36b8bb  f3 0f 58 b5 48 02 00 00        addss  xmm6,DWORD PTR [rbp+0x248]
36b8c3  ff c7                          inc    edi
36b8c5  ff c6                          inc    esi
36b8c7  41 3b f7                       cmp    esi,r15d
36b8ca  0f 8c f4 fe ff ff              jl     0x36b7c4
36b8d0  f3 0f 10 0d 7c 19 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff2197c]        # 0x28d254 ; f32=1
36b8d8  85 ff                          test   edi,edi
36b8da  74 0d                          je     0x36b8e9
36b8dc  66 0f 6e c7                    movd   xmm0,edi
36b8e0  0f 5b c0                       cvtdq2ps xmm0,xmm0
36b8e3  f3 0f 5e f0                    divss  xmm6,xmm0
36b8e7  eb 03                          jmp    0x36b8ec
36b8e9  0f 28 f1                       movaps xmm6,xmm1
36b8ec  80 3d f5 c3 06 00 00           cmp    BYTE PTR [rip+0x6c3f5],0x0        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
36b8f3  74 18                          je     0x36b90d
36b8f5  0f 2e 35 60 ce f3 ff           ucomiss xmm6,DWORD PTR [rip+0xfffffffffff3ce60]        # 0x2a875c ; f32=1.025
36b8fc  7a 0f                          jp     0x36b90d
36b8fe  75 0d                          jne    0x36b90d
36b900  f3 0f 5c 35 90 77 f2 ff        subss  xmm6,DWORD PTR [rip+0xfffffffffff27790]        # 0x293098 ; f32=0.05
36b908  0f 28 c6                       movaps xmm0,xmm6
36b90b  eb 0a                          jmp    0x36b917
36b90d  0f 2e f1                       ucomiss xmm6,xmm1
36b910  7a f6                          jp     0x36b908
36b912  75 f4                          jne    0x36b908
36b914  0f 57 c0                       xorps  xmm0,xmm0
36b917  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
36b91f  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
36b923  49 8b 6b 40                    mov    rbp,QWORD PTR [r11+0x40]
36b927  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
36b92c  49 8b e3                       mov    rsp,r11
36b92f  41 5f                          pop    r15
36b931  41 5e                          pop    r14
36b933  41 5c                          pop    r12
36b935  5f                             pop    rdi
36b936  5e                             pop    rsi
36b937  c3                             ret

; pdata function 0x31530c..0x315515 unwind=0x3d3000
31530c  48 8b c4                       mov    rax,rsp
31530f  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
315313  55                             push   rbp
315314  48 8d 68 a1                    lea    rbp,[rax-0x5f]
315318  48 81 ec e0 00 00 00           sub    rsp,0xe0
31531f  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
315323  48 8b d9                       mov    rbx,rcx
315326  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
31532a  48 8d 4d 97                    lea    rcx,[rbp-0x69]
31532e  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
315333  f3 44 0f 10 02                 movss  xmm8,DWORD PTR [rdx]
315338  44 0f 29 48 b8                 movaps XMMWORD PTR [rax-0x48],xmm9
31533d  41 0f 28 f8                    movaps xmm7,xmm8
315341  f3 44 0f 10 4a 04              movss  xmm9,DWORD PTR [rdx+0x4]
315347  44 0f 29 50 a8                 movaps XMMWORD PTR [rax-0x58],xmm10
31534c  45 0f 28 d1                    movaps xmm10,xmm9
315350  44 0f 29 58 98                 movaps XMMWORD PTR [rax-0x68],xmm11
315355  f3 44 0f 10 5a 0c              movss  xmm11,DWORD PTR [rdx+0xc]
31535b  44 0f 29 60 88                 movaps XMMWORD PTR [rax-0x78],xmm12
315360  41 0f 28 c3                    movaps xmm0,xmm11
315364  44 0f 29 6c 24 60              movaps XMMWORD PTR [rsp+0x60],xmm13
31536a  f3 44 0f 10 6a 08              movss  xmm13,DWORD PTR [rdx+0x8]
315370  44 0f 29 74 24 50              movaps XMMWORD PTR [rsp+0x50],xmm14
315376  45 0f 28 e5                    movaps xmm12,xmm13
31537a  f3 45 0f 59 d1                 mulss  xmm10,xmm9
31537f  45 0f 28 f0                    movaps xmm14,xmm8
315383  f3 45 0f 59 f0                 mulss  xmm14,xmm8
315388  41 0f 28 cd                    movaps xmm1,xmm13
31538c  f3 45 0f 59 e5                 mulss  xmm12,xmm13
315391  f3 45 0f 58 d6                 addss  xmm10,xmm14
315396  f3 41 0f 59 c3                 mulss  xmm0,xmm11
31539b  f3 41 0f 59 fb                 mulss  xmm7,xmm11
3153a0  f3 41 0f 59 c9                 mulss  xmm1,xmm9
3153a5  41 0f 28 f2                    movaps xmm6,xmm10
3153a9  f3 41 0f 58 f4                 addss  xmm6,xmm12
3153ae  f3 0f 5c f9                    subss  xmm7,xmm1
3153b2  f3 0f 58 f0                    addss  xmm6,xmm0
3153b6  e8 01 28 0b 00                 call   0x3c7bbc
3153bb  0f 28 ce                       movaps xmm1,xmm6
3153be  f3 0f 59 0d fa dc f7 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff7dcfa]        # 0x2930c0 ; f32=0.4995
3153c6  0f 2f f9                       comiss xmm7,xmm1
3153c9  76 29                          jbe    0x3153f4
3153cb  41 0f 28 c8                    movaps xmm1,xmm8
3153cf  41 0f 28 c1                    movaps xmm0,xmm9
3153d3  e8 d4 32 0b 00                 call   0x3c86ac
3153d8  f3 0f 58 c0                    addss  xmm0,xmm0
3153dc  c7 45 97 db 0f c9 3f           mov    DWORD PTR [rbp-0x69],0x3fc90fdb
3153e3  f3 0f 11 45 9b                 movss  DWORD PTR [rbp-0x65],xmm0
3153e8  c7 45 9f 00 00 00 00           mov    DWORD PTR [rbp-0x61],0x0
3153ef  e9 af 00 00 00                 jmp    0x3154a3
3153f4  f3 0f 59 35 5c de f7 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff7de5c]        # 0x293258 ; f32=-0.4995
3153fc  0f 2f f7                       comiss xmm6,xmm7
3153ff  76 1e                          jbe    0x31541f
315401  41 0f 28 c8                    movaps xmm1,xmm8
315405  41 0f 28 c1                    movaps xmm0,xmm9
315409  e8 9e 32 0b 00                 call   0x3c86ac
31540e  f3 0f 59 05 4e de f7 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff7de4e]        # 0x293264 ; f32=-2
315416  c7 45 97 db 0f c9 bf           mov    DWORD PTR [rbp-0x69],0xbfc90fdb
31541d  eb c4                          jmp    0x3153e3
31541f  f3 0f 10 35 2d 7e f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff77e2d]        # 0x28d254 ; f32=1
315427  f3 45 0f 58 db                 addss  xmm11,xmm11
31542c  41 0f 28 c5                    movaps xmm0,xmm13
315430  f3 45 0f 58 d2                 addss  xmm10,xmm10
315435  f3 41 0f 58 c5                 addss  xmm0,xmm13
31543a  41 0f 28 cb                    movaps xmm1,xmm11
31543e  f3 41 0f 59 c9                 mulss  xmm1,xmm9
315443  f3 41 0f 59 c0                 mulss  xmm0,xmm8
315448  f3 0f 58 c1                    addss  xmm0,xmm1
31544c  0f 28 ce                       movaps xmm1,xmm6
31544f  f3 41 0f 5c ca                 subss  xmm1,xmm10
315454  e8 53 32 0b 00                 call   0x3c86ac
315459  f3 0f 58 ff                    addss  xmm7,xmm7
31545d  f3 0f 11 45 9b                 movss  DWORD PTR [rbp-0x65],xmm0
315462  0f 28 c7                       movaps xmm0,xmm7
315465  e8 7a 54 00 00                 call   0x31a8e4
31546a  f3 45 0f 58 c0                 addss  xmm8,xmm8
31546f  f3 45 0f 59 dd                 mulss  xmm11,xmm13
315474  f3 45 0f 58 e6                 addss  xmm12,xmm14
315479  f3 0f 11 45 97                 movss  DWORD PTR [rbp-0x69],xmm0
31547e  f3 45 0f 59 c1                 mulss  xmm8,xmm9
315483  f3 45 0f 58 e4                 addss  xmm12,xmm12
315488  f3 45 0f 58 c3                 addss  xmm8,xmm11
31548d  f3 41 0f 5c f4                 subss  xmm6,xmm12
315492  41 0f 28 c0                    movaps xmm0,xmm8
315496  0f 28 ce                       movaps xmm1,xmm6
315499  e8 0e 32 0b 00                 call   0x3c86ac
31549e  f3 0f 11 45 9f                 movss  DWORD PTR [rbp-0x61],xmm0
3154a3  f3 0f 10 15 51 dd f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7dd51]        # 0x2931fc ; f32=57.2958
3154ab  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3154af  48 8d 4d 97                    lea    rcx,[rbp-0x69]
3154b3  e8 b4 a1 fc ff                 call   0x2df66c
3154b8  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3154bc  48 8b cb                       mov    rcx,rbx
3154bf  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3154c3  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3154c6  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
3154cb  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
3154ce  e8 69 1b 00 00                 call   0x31703c
3154d3  44 0f 28 74 24 50              movaps xmm14,XMMWORD PTR [rsp+0x50]
3154d9  4c 8d 9c 24 e0 00 00 00        lea    r11,[rsp+0xe0]
3154e1  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3154e6  48 8b c3                       mov    rax,rbx
3154e9  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
3154ed  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
3154f2  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
3154f7  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
3154fc  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
315501  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
315506  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
31550b  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
315510  49 8b e3                       mov    rsp,r11
315513  5d                             pop    rbp
315514  c3                             ret

; pdata function 0x36b504..0x36b52e unwind=0x3d2064
36b504  48 83 ec 28                    sub    rsp,0x28
36b508  48 8b d1                       mov    rdx,rcx
36b50b  e8 f8 f9 f5 ff                 call   0x2caf08
36b510  84 c0                          test   al,al
36b512  75 05                          jne    0x36b519
36b514  0f 57 c0                       xorps  xmm0,xmm0
36b517  eb 10                          jmp    0x36b529
36b519  f3 0f 10 82 ac 03 00 00        movss  xmm0,DWORD PTR [rdx+0x3ac]
36b521  f3 0f 58 05 2b 1d f2 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff21d2b]        # 0x28d254 ; f32=1
36b529  48 83 c4 28                    add    rsp,0x28
36b52d  c3                             ret

