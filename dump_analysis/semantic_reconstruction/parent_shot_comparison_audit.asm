; heuristic leaf/code range 0x2df5dc..0x2df604 unwind=0x0
2df5dc  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2df5e0  0f 2e 02                       ucomiss xmm0,DWORD PTR [rdx]
2df5e3  7a 1f                          jp     0x2df604
2df5e5  75 1d                          jne    0x2df604
2df5e7  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2df5ec  0f 2e 42 04                    ucomiss xmm0,DWORD PTR [rdx+0x4]
2df5f0  7a 12                          jp     0x2df604
2df5f2  75 10                          jne    0x2df604
2df5f4  f3 0f 10 41 08                 movss  xmm0,DWORD PTR [rcx+0x8]
2df5f9  0f 2e 42 08                    ucomiss xmm0,DWORD PTR [rdx+0x8]
2df5fd  7a 05                          jp     0x2df604
2df5ff  75 03                          jne    0x2df604
2df601  32 c0                          xor    al,al
2df603  c3                             ret

; pdata function 0x37261c..0x372644 unwind=0x3d2064
37261c  48 83 ec 28                    sub    rsp,0x28
372620  4c 8b c1                       mov    r8,rcx
372623  e8 e0 88 f5 ff                 call   0x2caf08
372628  84 c0                          test   al,al
37262a  75 04                          jne    0x372630
37262c  33 c0                          xor    eax,eax
37262e  eb 0f                          jmp    0x37263f
372630  ba 20 00 00 00                 mov    edx,0x20
372635  49 8b c8                       mov    rcx,r8
372638  e8 ff c7 f6 ff                 call   0x2dee3c
37263d  8b 00                          mov    eax,DWORD PTR [rax]
37263f  48 83 c4 28                    add    rsp,0x28
372643  c3                             ret

; pdata function 0x32c0d4..0x32cae8 unwind=0x3d35c0
32c0d4  48 8b c4                       mov    rax,rsp
32c0d7  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
32c0db  55                             push   rbp
32c0dc  56                             push   rsi
32c0dd  57                             push   rdi
32c0de  41 54                          push   r12
32c0e0  41 55                          push   r13
32c0e2  41 56                          push   r14
32c0e4  41 57                          push   r15
32c0e6  48 8d a8 08 fe ff ff           lea    rbp,[rax-0x1f8]
32c0ed  48 81 ec c0 02 00 00           sub    rsp,0x2c0
32c0f4  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
32c0f8  48 8b f9                       mov    rdi,rcx
32c0fb  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
32c0ff  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
32c104  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
32c109  44 0f 29 90 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm10
32c111  44 0f 29 98 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm11
32c119  44 0f 29 a0 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm12
32c121  44 0f 29 a8 48 ff ff ff        movaps XMMWORD PTR [rax-0xb8],xmm13
32c129  e8 da ed f9 ff                 call   0x2caf08
32c12e  45 33 ff                       xor    r15d,r15d
32c131  84 c0                          test   al,al
32c133  0f 84 6c 09 00 00              je     0x32caa5
32c139  e8 5e 19 fb ff                 call   0x2dda9c
32c13e  48 8b c8                       mov    rcx,rax
32c141  4c 8b e0                       mov    r12,rax
32c144  e8 bf ed f9 ff                 call   0x2caf08
32c149  84 c0                          test   al,al
32c14b  0f 84 54 09 00 00              je     0x32caa5
32c151  49 8b cc                       mov    rcx,r12
32c154  e8 2b c9 03 00                 call   0x368a84
32c159  48 8b c8                       mov    rcx,rax
32c15c  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
32c161  48 8b f0                       mov    rsi,rax
32c164  e8 9f ed f9 ff                 call   0x2caf08
32c169  84 c0                          test   al,al
32c16b  0f 84 34 09 00 00              je     0x32caa5
32c171  48 8b ce                       mov    rcx,rsi
32c174  e8 eb 52 04 00                 call   0x371464
32c179  48 8b c8                       mov    rcx,rax
32c17c  48 8b d8                       mov    rbx,rax
32c17f  e8 84 ed f9 ff                 call   0x2caf08
32c184  84 c0                          test   al,al
32c186  0f 84 19 09 00 00              je     0x32caa5
32c18c  48 8b cb                       mov    rcx,rbx
32c18f  e8 a4 f7 03 00                 call   0x36b938
32c194  48 8b c8                       mov    rcx,rax
32c197  4c 8b e8                       mov    r13,rax
32c19a  e8 69 ed f9 ff                 call   0x2caf08
32c19f  84 c0                          test   al,al
32c1a1  0f 84 fe 08 00 00              je     0x32caa5
32c1a7  4c 8b 77 10                    mov    r14,QWORD PTR [rdi+0x10]
32c1ab  49 8b ce                       mov    rcx,r14
32c1ae  e8 55 ed f9 ff                 call   0x2caf08
32c1b3  84 c0                          test   al,al
32c1b5  0f 84 ea 08 00 00              je     0x32caa5
32c1bb  49 8b 7e 10                    mov    rdi,QWORD PTR [r14+0x10]
32c1bf  48 8b cf                       mov    rcx,rdi
32c1c2  48 89 7c 24 58                 mov    QWORD PTR [rsp+0x58],rdi
32c1c7  e8 3c ed f9 ff                 call   0x2caf08
32c1cc  84 c0                          test   al,al
32c1ce  0f 84 d1 08 00 00              je     0x32caa5
32c1d4  f3 44 0f 10 83 ac 03 00 00     movss  xmm8,DWORD PTR [rbx+0x3ac]
32c1dd  48 8b ce                       mov    rcx,rsi
32c1e0  e8 67 53 04 00                 call   0x37154c
32c1e5  48 8b c8                       mov    rcx,rax
32c1e8  48 8b d0                       mov    rdx,rax
32c1eb  e8 18 ed f9 ff                 call   0x2caf08
32c1f0  84 c0                          test   al,al
32c1f2  0f 84 ad 08 00 00              je     0x32caa5
32c1f8  48 8b ca                       mov    rcx,rdx
32c1fb  e8 1c 64 04 00                 call   0x37261c
32c200  3d 71 3d b7 34                 cmp    eax,0x34b73d71
32c205  75 0c                          jne    0x32c213
32c207  48 8b cb                       mov    rcx,rbx
32c20a  e8 f5 f2 03 00                 call   0x36b504
32c20f  44 0f 28 c0                    movaps xmm8,xmm0
32c213  48 8b cb                       mov    rcx,rbx
32c216  e8 3d f5 03 00                 call   0x36b758
32c21b  0f 2f 05 ae 1f f6 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff61fae]        # 0x28e1d0 ; f32=1.3
32c222  8a 05 10 80 0b 00              mov    al,BYTE PTR [rip+0xb8010]        # 0x3e4238
32c228  f3 0f 10 3d 24 10 f6 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff61024]        # 0x28d254 ; f32=1
32c230  73 45                          jae    0x32c277
32c232  44 38 3d c8 c0 0a 00           cmp    BYTE PTR [rip+0xac0c8],r15b        # 0x3d8301
32c239  74 0e                          je     0x32c249
32c23b  84 c0                          test   al,al
32c23d  74 0a                          je     0x32c249
32c23f  f3 0f 10 35 3d 9e 0b 00        movss  xmm6,DWORD PTR [rip+0xb9e3d]        # 0x3e6084
32c247  eb 24                          jmp    0x32c26d
32c249  44 38 3d 68 bd 0a 00           cmp    BYTE PTR [rip+0xabd68],r15b        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
32c250  74 0a                          je     0x32c25c
32c252  f3 0f 10 35 9e 18 f6 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff6189e]        # 0x28daf8 ; f32=1.495
32c25a  eb 1e                          jmp    0x32c27a
32c25c  44 38 3d 85 ba 0a 00           cmp    BYTE PTR [rip+0xaba85],r15b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
32c263  74 12                          je     0x32c277
32c265  f3 0f 10 35 3b be 0a 00        movss  xmm6,DWORD PTR [rip+0xabe3b]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
32c26d  f3 0f 5d 35 83 18 f6 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff61883]        # 0x28daf8
32c275  eb 03                          jmp    0x32c27a
32c277  0f 28 f7                       movaps xmm6,xmm7
32c27a  0f 2e 05 cb 0f f6 ff           ucomiss xmm0,DWORD PTR [rip+0xfffffffffff60fcb]        # 0x28d24c
32c281  7a 02                          jp     0x32c285
32c283  74 13                          je     0x32c298
32c285  84 c0                          test   al,al
32c287  75 0f                          jne    0x32c298
32c289  48 8b cb                       mov    rcx,rbx
32c28c  e8 c7 f4 03 00                 call   0x36b758
32c291  f3 0f 59 c6                    mulss  xmm0,xmm6
32c295  0f 28 f0                       movaps xmm6,xmm0
32c298  f3 45 0f 10 5d 44              movss  xmm11,DWORD PTR [r13+0x44]
32c29e  48 8b cb                       mov    rcx,rbx
32c2a1  f3 45 0f 10 4d 40              movss  xmm9,DWORD PTR [r13+0x40]
32c2a7  e8 20 f4 03 00                 call   0x36b6cc
32c2ac  f3 45 0f 10 6d 3c              movss  xmm13,DWORD PTR [r13+0x3c]
32c2b2  49 8b cd                       mov    rcx,r13
32c2b5  44 0f 28 d0                    movaps xmm10,xmm0
32c2b9  e8 96 66 04 00                 call   0x372954
32c2be  4c 8b bb 28 04 00 00           mov    r15,QWORD PTR [rbx+0x428]
32c2c5  44 0f 28 e0                    movaps xmm12,xmm0
32c2c9  49 8b cf                       mov    rcx,r15
32c2cc  e8 37 ec f9 ff                 call   0x2caf08
32c2d1  84 c0                          test   al,al
32c2d3  0f 84 cc 07 00 00              je     0x32caa5
32c2d9  8b 05 b9 bc 0c 00              mov    eax,DWORD PTR [rip+0xcbcb9]        # 0x3f7f98
32c2df  a8 01                          test   al,0x1
32c2e1  0f 85 b3 00 00 00              jne    0x32c39a
32c2e7  83 c8 01                       or     eax,0x1
32c2ea  48 8d 95 08 02 00 00           lea    rdx,[rbp+0x208]
32c2f1  48 8d 8d 08 02 00 00           lea    rcx,[rbp+0x208]
32c2f8  89 05 9a bc 0c 00              mov    DWORD PTR [rip+0xcbc9a],eax        # 0x3f7f98
32c2fe  e8 2d 04 fa ff                 call   0x2cc730
32c303  48 8b c8                       mov    rcx,rax
32c306  e8 99 19 fa ff                 call   0x2cdca4
32c30b  48 8d 55 50                    lea    rdx,[rbp+0x50]
32c30f  48 8b f0                       mov    rsi,rax
32c312  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
32c319  e8 f2 f6 ff ff                 call   0x32ba10 ; STRING getter=0x32ba10 Evaluate
32c31e  48 8b c8                       mov    rcx,rax
32c321  e8 66 d8 fb ff                 call   0x2e9b8c
32c326  48 8d 55 c0                    lea    rdx,[rbp-0x40]
32c32a  48 8b f8                       mov    rdi,rax
32c32d  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
32c334  e8 1f f6 ff ff                 call   0x32b958 ; STRING getter=0x32b958 UnityEngine
32c339  48 8b c8                       mov    rcx,rax
32c33c  e8 f3 1a fa ff                 call   0x2cde34
32c341  48 8d 55 60                    lea    rdx,[rbp+0x60]
32c345  48 8b d8                       mov    rbx,rax
32c348  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
32c34f  e8 9c f5 ff ff                 call   0x32b8f0 ; STRING getter=0x32b8f0 AnimationCurve
32c354  48 8b c8                       mov    rcx,rax
32c357  e8 10 c3 fa ff                 call   0x2d866c
32c35c  48 8b c8                       mov    rcx,rax
32c35f  48 8b d3                       mov    rdx,rbx
32c362  e8 bd 7e 00 00                 call   0x334224
32c367  41 83 c8 ff                    or     r8d,0xffffffff
32c36b  48 8b c8                       mov    rcx,rax
32c36e  4c 8b ce                       mov    r9,rsi
32c371  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
32c376  48 8b d7                       mov    rdx,rdi
32c379  e8 2e 86 00 00                 call   0x3349ac
32c37e  48 8b 74 24 30                 mov    rsi,QWORD PTR [rsp+0x30]
32c383  48 8b 7c 24 58                 mov    rdi,QWORD PTR [rsp+0x58]
32c388  4c 8b 00                       mov    r8,QWORD PTR [rax]
32c38b  8b 05 07 bc 0c 00              mov    eax,DWORD PTR [rip+0xcbc07]        # 0x3f7f98
32c391  4c 89 05 f8 bb 0c 00           mov    QWORD PTR [rip+0xcbbf8],r8        # 0x3f7f90
32c398  eb 07                          jmp    0x32c3a1
32c39a  4c 8b 05 ef bb 0c 00           mov    r8,QWORD PTR [rip+0xcbbef]        # 0x3f7f90
32c3a1  a8 02                          test   al,0x2
32c3a3  75 1f                          jne    0x32c3c4
32c3a5  48 8b 0d b4 9a 0a 00           mov    rcx,QWORD PTR [rip+0xa9ab4]        # 0x3d5e60
32c3ac  48 8d 15 ed bb 0c 00           lea    rdx,[rip+0xcbbed]        # 0x3f7fa0
32c3b3  83 c8 02                       or     eax,0x2
32c3b6  45 33 c9                       xor    r9d,r9d
32c3b9  89 05 d9 bb 0c 00              mov    DWORD PTR [rip+0xcbbd9],eax        # 0x3f7f98
32c3bf  e8 60 f9 f9 ff                 call   0x2cbd24
32c3c4  0f 28 cf                       movaps xmm1,xmm7
32c3c7  0f 57 c0                       xorps  xmm0,xmm0
32c3ca  e8 8d 79 fb ff                 call   0x2e3d5c
32c3cf  48 8b 0d 8a 9a 0a 00           mov    rcx,QWORD PTR [rip+0xa9a8a]        # 0x3d5e60
32c3d6  48 8d 15 c3 bb 0c 00           lea    rdx,[rip+0xcbbc3]        # 0x3f7fa0
32c3dd  0f 28 d8                       movaps xmm3,xmm0
32c3e0  4d 8b c7                       mov    r8,r15
32c3e3  e8 40 f3 ff ff                 call   0x32b728
32c3e8  41 8b 5d 38                    mov    ebx,DWORD PTR [r13+0x38]
32c3ec  0f 28 f8                       movaps xmm7,xmm0
32c3ef  45 8b 7e 18                    mov    r15d,DWORD PTR [r14+0x18]
32c3f3  89 9d 18 02 00 00              mov    DWORD PTR [rbp+0x218],ebx
32c3f9  44 89 7c 24 70                 mov    DWORD PTR [rsp+0x70],r15d
32c3fe  e8 ad 3e fb ff                 call   0x2e02b0
32c403  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
32c408  49 8b cc                       mov    rcx,r12
32c40b  4c 8b f0                       mov    r14,rax
32c40e  e8 ed bc 03 00                 call   0x368100
32c413  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
32c418  49 8b cc                       mov    rcx,r12
32c41b  e8 44 cd 03 00                 call   0x369164
32c420  45 85 ff                       test   r15d,r15d
32c423  0f 8e 7c 06 00 00              jle    0x32caa5
32c429  f3 45 0f 58 d9                 addss  xmm11,xmm9
32c42e  f3 41 0f 59 fa                 mulss  xmm7,xmm10
32c433  45 33 ff                       xor    r15d,r15d
32c436  83 fb 01                       cmp    ebx,0x1
32c439  0f 9e 85 08 02 00 00           setle  BYTE PTR [rbp+0x208]
32c440  f3 45 0f 59 d8                 mulss  xmm11,xmm8
32c445  f3 44 0f 10 05 02 6e f6 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff66e02]        # 0x293250 ; f32=5000
32c44e  f3 44 0f 59 de                 mulss  xmm11,xmm6
32c453  f3 0f 10 35 e9 16 f6 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff616e9]        # 0x28db44 ; f32=100
32c45b  42 8d 04 fd 00 00 00 00        lea    eax,[r15*8+0x0]
32c463  48 63 c8                       movsxd rcx,eax
32c466  48 8b 54 0f 20                 mov    rdx,QWORD PTR [rdi+rcx*1+0x20]
32c46b  48 8b ca                       mov    rcx,rdx
32c46e  48 89 55 d8                    mov    QWORD PTR [rbp-0x28],rdx
32c472  e8 91 ea f9 ff                 call   0x2caf08
32c477  84 c0                          test   al,al
32c479  0f 84 18 06 00 00              je     0x32ca97
32c47f  8b 42 30                       mov    eax,DWORD PTR [rdx+0x30]
32c482  48 8d 4d d0                    lea    rcx,[rbp-0x30]
32c486  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
32c48d  89 85 10 02 00 00              mov    DWORD PTR [rbp+0x210],eax
32c493  e8 c8 7b fa ff                 call   0x2d4060
32c498  48 8d 55 70                    lea    rdx,[rbp+0x70]
32c49c  48 8d 0d d5 c4 ee ff           lea    rcx,[rip+0xffffffffffeec4d5]        # 0x218978
32c4a3  8b 38                          mov    edi,DWORD PTR [rax]
32c4a5  e8 06 c3 fa ff                 call   0x2d87b0
32c4aa  48 8d 55 78                    lea    rdx,[rbp+0x78]
32c4ae  48 8d 0d c3 c4 ee ff           lea    rcx,[rip+0xffffffffffeec4c3]        # 0x218978
32c4b5  48 8b 18                       mov    rbx,QWORD PTR [rax]
32c4b8  e8 d3 b8 fa ff                 call   0x2d7d90
32c4bd  44 8b cf                       mov    r9d,edi
32c4c0  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
32c4c5  4c 8b c3                       mov    r8,rbx
32c4c8  48 8b 10                       mov    rdx,QWORD PTR [rax]
32c4cb  e8 68 f3 ff ff                 call   0x32b838
32c4d0  48 8d 55 50                    lea    rdx,[rbp+0x50]
32c4d4  48 8d 0d 9d c4 ee ff           lea    rcx,[rip+0xffffffffffeec49d]        # 0x218978
32c4db  e8 d0 c2 fa ff                 call   0x2d87b0
32c4e0  48 8b d0                       mov    rdx,rax
32c4e3  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
32c4e8  e8 47 00 fa ff                 call   0x2cc534
32c4ed  84 c0                          test   al,al
32c4ef  0f 85 9d 05 00 00              jne    0x32ca92
32c4f5  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
32c4fa  e8 e9 88 fa ff                 call   0x2d4de8
32c4ff  48 8b 38                       mov    rdi,QWORD PTR [rax]
32c502  48 8b cf                       mov    rcx,rdi
32c505  e8 fe e9 f9 ff                 call   0x2caf08
32c50a  84 c0                          test   al,al
32c50c  0f 84 80 05 00 00              je     0x32ca92
32c512  48 8b cf                       mov    rcx,rdi
32c515  e8 ba 7d 04 00                 call   0x3742d4
32c51a  49 3b c4                       cmp    rax,r12
32c51d  0f 85 6f 05 00 00              jne    0x32ca92
32c523  80 3d 4e b9 0a 00 00           cmp    BYTE PTR [rip+0xab94e],0x0        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
32c52a  0f 84 18 03 00 00              je     0x32c848
32c530  80 3d 69 ad 0a 00 00           cmp    BYTE PTR [rip+0xaad69],0x0        # 0x3d72a0
32c537  0f 84 0b 03 00 00              je     0x32c848
32c53d  49 8b ce                       mov    rcx,r14
32c540  e8 c3 e9 f9 ff                 call   0x2caf08
32c545  84 c0                          test   al,al
32c547  0f 84 a8 01 00 00              je     0x32c6f5
32c54d  49 8b ce                       mov    rcx,r14
32c550  e8 47 49 fb ff                 call   0x2e0e9c
32c555  84 c0                          test   al,al
32c557  0f 84 eb 02 00 00              je     0x32c848
32c55d  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
32c562  49 8b ce                       mov    rcx,r14
32c565  e8 26 d2 03 00                 call   0x369790
32c56a  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
32c571  e8 46 b6 09 00                 call   0x3c7bbc
32c576  48 8b d0                       mov    rdx,rax
32c579  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
32c57e  e8 59 30 fb ff                 call   0x2df5dc
32c583  84 c0                          test   al,al
32c585  0f 84 bd 02 00 00              je     0x32c848
32c58b  80 3d c6 ba 0a 00 00           cmp    BYTE PTR [rip+0xabac6],0x0        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
32c592  74 37                          je     0x32c5cb
32c594  48 8d 8d 8c 00 00 00           lea    rcx,[rbp+0x8c]
32c59b  e8 1c b6 09 00                 call   0x3c7bbc
32c5a0  48 8b d0                       mov    rdx,rax
32c5a3  48 8d 0d 26 ad 0a 00           lea    rcx,[rip+0xaad26]        # 0x3d72d0
32c5aa  e8 2d 30 fb ff                 call   0x2df5dc
32c5af  84 c0                          test   al,al
32c5b1  74 18                          je     0x32c5cb
32c5b3  f2 0f 10 05 15 ad 0a 00        movsd  xmm0,QWORD PTR [rip+0xaad15]        # 0x3d72d0
32c5bb  8b 05 17 ad 0a 00              mov    eax,DWORD PTR [rip+0xaad17]        # 0x3d72d8
32c5c1  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
32c5c7  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
32c5cb  80 3d f6 b8 0a 00 00           cmp    BYTE PTR [rip+0xab8f6],0x0        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
32c5d2  74 40                          je     0x32c614
32c5d4  48 8d 8d 98 00 00 00           lea    rcx,[rbp+0x98]
32c5db  e8 dc b5 09 00                 call   0x3c7bbc
32c5e0  48 8b d0                       mov    rdx,rax
32c5e3  48 8d 0d f6 ac 0a 00           lea    rcx,[rip+0xaacf6]        # 0x3d72e0
32c5ea  e8 ed 2f fb ff                 call   0x2df5dc
32c5ef  84 c0                          test   al,al
32c5f1  74 21                          je     0x32c614
32c5f3  80 3d 07 bd 0a 00 00           cmp    BYTE PTR [rip+0xabd07],0x0        # 0x3d8301
32c5fa  74 18                          je     0x32c614
32c5fc  f2 0f 10 05 dc ac 0a 00        movsd  xmm0,QWORD PTR [rip+0xaacdc]        # 0x3d72e0
32c604  8b 05 de ac 0a 00              mov    eax,DWORD PTR [rip+0xaacde]        # 0x3d72e8
32c60a  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
32c610  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
32c614  48 8b 0d fd 90 0b 00           mov    rcx,QWORD PTR [rip+0xb90fd]        # 0x3e5718
32c61b  48 85 c9                       test   rcx,rcx
32c61e  0f 84 24 02 00 00              je     0x32c848
32c624  f2 0f 10 05 1c ac 0a 00        movsd  xmm0,QWORD PTR [rip+0xaac1c]        # 0x3d7248
32c62c  4c 8d 4d 00                    lea    r9,[rbp+0x0]
32c630  8b 05 1a ac 0a 00              mov    eax,DWORD PTR [rip+0xaac1a]        # 0x3d7250
32c636  4c 8d 45 10                    lea    r8,[rbp+0x10]
32c63a  f2 0f 11 45 00                 movsd  QWORD PTR [rbp+0x0],xmm0
32c63f  48 8d 55 20                    lea    rdx,[rbp+0x20]
32c643  f2 0f 10 44 24 60              movsd  xmm0,QWORD PTR [rsp+0x60]
32c649  89 45 08                       mov    DWORD PTR [rbp+0x8],eax
32c64c  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
32c650  f2 0f 11 45 10                 movsd  QWORD PTR [rbp+0x10],xmm0
32c655  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
32c65b  89 45 18                       mov    DWORD PTR [rbp+0x18],eax
32c65e  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
32c662  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
32c667  48 8d 4d 80                    lea    rcx,[rbp-0x80]
32c66b  f2 0f 11 45 20                 movsd  QWORD PTR [rbp+0x20],xmm0
32c670  89 45 28                       mov    DWORD PTR [rbp+0x28],eax
32c673  e8 fc 5c fb ff                 call   0x2e2374
32c678  80 3d d9 b6 0c 00 00           cmp    BYTE PTR [rip+0xcb6d9],0x0        # 0x3f7d58 ; CONFIG Bools.usemisschance value(+0x48)
32c67f  74 3d                          je     0x32c6be
32c681  0f 28 ce                       movaps xmm1,xmm6
32c684  0f 57 c0                       xorps  xmm0,xmm0
32c687  e8 d0 76 fb ff                 call   0x2e3d5c
32c68c  f3 0f 2c 05 54 b8 0c 00        cvttss2si eax,DWORD PTR [rip+0xcb854]        # 0x3f7ee8 ; CONFIG F.misschance value(+0x48)
32c694  66 0f 6e c8                    movd   xmm1,eax
32c698  0f 5b c9                       cvtdq2ps xmm1,xmm1
32c69b  0f 2f c8                       comiss xmm1,xmm0
32c69e  0f 82 a4 01 00 00              jb     0x32c848
32c6a4  48 8d 4d 80                    lea    rcx,[rbp-0x80]
32c6a8  e8 ab 74 fb ff                 call   0x2e3b58
32c6ad  84 c0                          test   al,al
32c6af  0f 85 93 01 00 00              jne    0x32c848
32c6b5  48 8d 95 a4 00 00 00           lea    rdx,[rbp+0xa4]
32c6bc  eb 18                          jmp    0x32c6d6
32c6be  48 8d 4d 80                    lea    rcx,[rbp-0x80]
32c6c2  e8 91 74 fb ff                 call   0x2e3b58
32c6c7  84 c0                          test   al,al
32c6c9  0f 85 79 01 00 00              jne    0x32c848
32c6cf  48 8d 95 b0 00 00 00           lea    rdx,[rbp+0xb0]
32c6d6  48 8d 4d 80                    lea    rcx,[rbp-0x80]
32c6da  e8 99 4b fb ff                 call   0x2e1278
32c6df  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c6e3  f2 0f 11 44 24 38              movsd  QWORD PTR [rsp+0x38],xmm0
32c6e9  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c6ec  89 44 24 40                    mov    DWORD PTR [rsp+0x40],eax
32c6f0  e9 53 01 00 00                 jmp    0x32c848
32c6f5  80 3d 6c d6 0b 00 00           cmp    BYTE PTR [rip+0xbd66c],0x0        # 0x3e9d68 ; CONFIG Bools.TargetHelicopter value(+0x48)
32c6fc  0f 84 46 01 00 00              je     0x32c848
32c702  48 8b 1d af ab 0a 00           mov    rbx,QWORD PTR [rip+0xaabaf]        # 0x3d72b8
32c709  48 8b cb                       mov    rcx,rbx
32c70c  e8 f7 e7 f9 ff                 call   0x2caf08
32c711  84 c0                          test   al,al
32c713  0f 84 2f 01 00 00              je     0x32c848
32c719  48 8b cb                       mov    rcx,rbx
32c71c  e8 7b 47 fb ff                 call   0x2e0e9c
32c721  84 c0                          test   al,al
32c723  0f 84 1f 01 00 00              je     0x32c848
32c729  41 b8 3e 00 00 00              mov    r8d,0x3e
32c72f  48 8d 55 90                    lea    rdx,[rbp-0x70]
32c733  48 8b cb                       mov    rcx,rbx
32c736  e8 ad c4 03 00                 call   0x368be8
32c73b  48 8b cb                       mov    rcx,rbx
32c73e  e8 c9 cf 03 00                 call   0x36970c
32c743  44 0f 2f c0                    comiss xmm8,xmm0
32c747  72 24                          jb     0x32c76d
32c749  41 b8 3f 00 00 00              mov    r8d,0x3f
32c74f  48 8d 95 bc 00 00 00           lea    rdx,[rbp+0xbc]
32c756  48 8b cb                       mov    rcx,rbx
32c759  e8 8a c4 03 00                 call   0x368be8
32c75e  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c762  f2 0f 11 45 90                 movsd  QWORD PTR [rbp-0x70],xmm0
32c767  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c76a  89 45 98                       mov    DWORD PTR [rbp-0x68],eax
32c76d  48 8b 35 a4 8f 0b 00           mov    rsi,QWORD PTR [rip+0xb8fa4]        # 0x3e5718
32c774  48 85 f6                       test   rsi,rsi
32c777  0f 84 c6 00 00 00              je     0x32c843
32c77d  48 8d 95 c8 00 00 00           lea    rdx,[rbp+0xc8]
32c784  48 8b cb                       mov    rcx,rbx
32c787  e8 90 d4 03 00                 call   0x369c1c
32c78c  4c 8d 4d 30                    lea    r9,[rbp+0x30]
32c790  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
32c795  4c 8d 45 40                    lea    r8,[rbp+0x40]
32c799  48 8d 55 e0                    lea    rdx,[rbp-0x20]
32c79d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c7a1  48 8d 4d a0                    lea    rcx,[rbp-0x60]
32c7a5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c7a8  f2 0f 11 45 30                 movsd  QWORD PTR [rbp+0x30],xmm0
32c7ad  f2 0f 10 45 90                 movsd  xmm0,QWORD PTR [rbp-0x70]
32c7b2  89 45 38                       mov    DWORD PTR [rbp+0x38],eax
32c7b5  8b 45 98                       mov    eax,DWORD PTR [rbp-0x68]
32c7b8  f2 0f 11 45 40                 movsd  QWORD PTR [rbp+0x40],xmm0
32c7bd  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
32c7c3  89 45 48                       mov    DWORD PTR [rbp+0x48],eax
32c7c6  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
32c7ca  f2 0f 11 45 e0                 movsd  QWORD PTR [rbp-0x20],xmm0
32c7cf  89 45 e8                       mov    DWORD PTR [rbp-0x18],eax
32c7d2  e8 9d 5b fb ff                 call   0x2e2374
32c7d7  80 3d 7a b5 0c 00 00           cmp    BYTE PTR [rip+0xcb57a],0x0        # 0x3f7d58 ; CONFIG Bools.usemisschance value(+0x48)
32c7de  74 35                          je     0x32c815
32c7e0  0f 28 ce                       movaps xmm1,xmm6
32c7e3  0f 57 c0                       xorps  xmm0,xmm0
32c7e6  e8 71 75 fb ff                 call   0x2e3d5c
32c7eb  f3 0f 2c 05 f5 b6 0c 00        cvttss2si eax,DWORD PTR [rip+0xcb6f5]        # 0x3f7ee8 ; CONFIG F.misschance value(+0x48)
32c7f3  66 0f 6e c8                    movd   xmm1,eax
32c7f7  0f 5b c9                       cvtdq2ps xmm1,xmm1
32c7fa  0f 2f c8                       comiss xmm1,xmm0
32c7fd  72 44                          jb     0x32c843
32c7ff  48 8d 4d a0                    lea    rcx,[rbp-0x60]
32c803  e8 50 73 fb ff                 call   0x2e3b58
32c808  84 c0                          test   al,al
32c80a  75 37                          jne    0x32c843
32c80c  48 8d 95 d4 00 00 00           lea    rdx,[rbp+0xd4]
32c813  eb 14                          jmp    0x32c829
32c815  48 8d 4d a0                    lea    rcx,[rbp-0x60]
32c819  e8 3a 73 fb ff                 call   0x2e3b58
32c81e  84 c0                          test   al,al
32c820  75 21                          jne    0x32c843
32c822  48 8d 95 e0 00 00 00           lea    rdx,[rbp+0xe0]
32c829  48 8d 4d a0                    lea    rcx,[rbp-0x60]
32c82d  e8 46 4a fb ff                 call   0x2e1278
32c832  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c836  f2 0f 11 44 24 38              movsd  QWORD PTR [rsp+0x38],xmm0
32c83c  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c83f  89 44 24 40                    mov    DWORD PTR [rsp+0x40],eax
32c843  48 8b 74 24 30                 mov    rsi,QWORD PTR [rsp+0x30]
32c848  48 8b ce                       mov    rcx,rsi
32c84b  e8 10 f3 ff ff                 call   0x32bb60
32c850  f3 0f 11 47 44                 movss  DWORD PTR [rdi+0x44],xmm0
32c855  80 3d 5c b7 0a 00 00           cmp    BYTE PTR [rip+0xab75c],0x0        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
32c85c  0f 84 96 00 00 00              je     0x32c8f8
32c862  49 8b ce                       mov    rcx,r14
32c865  e8 9e e6 f9 ff                 call   0x2caf08
32c86a  84 c0                          test   al,al
32c86c  0f 84 86 00 00 00              je     0x32c8f8
32c872  49 8b ce                       mov    rcx,r14
32c875  e8 22 46 fb ff                 call   0x2e0e9c
32c87a  84 c0                          test   al,al
32c87c  74 7a                          je     0x32c8f8
32c87e  41 b8 07 00 00 00              mov    r8d,0x7
32c884  48 8d 95 ec 00 00 00           lea    rdx,[rbp+0xec]
32c88b  49 8b ce                       mov    rcx,r14
32c88e  e8 55 c3 03 00                 call   0x368be8
32c893  f3 0f 10 15 c1 69 f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff669c1]        # 0x29325c ; f32=-0.9
32c89b  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
32c8a2  0f 57 db                       xorps  xmm3,xmm3
32c8a5  0f 57 c9                       xorps  xmm1,xmm1
32c8a8  48 8b d8                       mov    rbx,rax
32c8ab  e8 f8 b2 09 00                 call   0x3c7ba8
32c8b0  4c 8b c0                       mov    r8,rax
32c8b3  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
32c8ba  48 8b cb                       mov    rcx,rbx
32c8bd  e8 46 2e fb ff                 call   0x2df708
32c8c2  f3 0f 10 05 22 aa 0a 00        movss  xmm0,DWORD PTR [rip+0xaaa22]        # 0x3d72ec
32c8ca  f3 0f 58 05 0e 12 f6 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff6120e]        # 0x28dae0 ; f32=0.0333333
32c8d2  0f 5a c8                       cvtps2pd xmm1,xmm0
32c8d5  f2 0f 59 0d eb 78 f6 ff        mulsd  xmm1,QWORD PTR [rip+0xfffffffffff678eb]        # 0x2941c8
32c8dd  f2 0f 58 0d cb 7a f6 ff        addsd  xmm1,QWORD PTR [rip+0xfffffffffff67acb]        # 0x2943b0
32c8e5  66 0f 5a c1                    cvtpd2ps xmm0,xmm1
32c8e9  f3 41 0f 59 c3                 mulss  xmm0,xmm11
32c8ee  f3 0f 58 47 44                 addss  xmm0,DWORD PTR [rdi+0x44]
32c8f3  f3 0f 11 47 44                 movss  DWORD PTR [rdi+0x44],xmm0
32c8f8  8b 9d 18 02 00 00              mov    ebx,DWORD PTR [rbp+0x218]
32c8fe  41 8b d7                       mov    edx,r15d
32c901  44 8b c3                       mov    r8d,ebx
32c904  49 8b cd                       mov    rcx,r13
32c907  e8 d4 5e 04 00                 call   0x3727e0
32c90c  83 fb 01                       cmp    ebx,0x1
32c90f  7f 04                          jg     0x32c915
32c911  41 0f 28 c4                    movaps xmm0,xmm12
32c915  80 3d ec b3 0c 00 00           cmp    BYTE PTR [rip+0xcb3ec],0x0        # 0x3f7d08 ; CONFIG Bools.nospread value(+0x48)
32c91c  f3 41 0f 59 c5                 mulss  xmm0,xmm13
32c921  f3 0f 58 c7                    addss  xmm0,xmm7
32c925  74 12                          je     0x32c939
32c927  f3 0f 10 0d 09 b6 0c 00        movss  xmm1,DWORD PTR [rip+0xcb609]        # 0x3f7f38 ; CONFIG F.SpreadAmount value(+0x48)
32c92f  f3 0f 5e ce                    divss  xmm1,xmm6
32c933  f3 0f 59 c8                    mulss  xmm1,xmm0
32c937  eb 03                          jmp    0x32c93c
32c939  0f 28 c8                       movaps xmm1,xmm0
32c93c  f2 0f 10 44 24 38              movsd  xmm0,QWORD PTR [rsp+0x38]
32c942  4c 8d 45 f0                    lea    r8,[rbp-0x10]
32c946  8b 44 24 40                    mov    eax,DWORD PTR [rsp+0x40]
32c94a  48 8d 4d b0                    lea    rcx,[rbp-0x50]
32c94e  44 8a 8d 08 02 00 00           mov    r9b,BYTE PTR [rbp+0x208]
32c955  f2 0f 11 45 f0                 movsd  QWORD PTR [rbp-0x10],xmm0
32c95a  89 45 f8                       mov    DWORD PTR [rbp-0x8],eax
32c95d  e8 ea f3 ff ff                 call   0x32bd4c
32c962  80 3d 8f b4 0c 00 00           cmp    BYTE PTR [rip+0xcb48f],0x0        # 0x3f7df8 ; CONFIG Bools.thickbullet value(+0x48)
32c969  74 0d                          je     0x32c978
32c96b  f3 0f 10 05 15 b6 0c 00        movss  xmm0,DWORD PTR [rip+0xcb615]        # 0x3f7f88 ; CONFIG F.Thickness value(+0x48)
32c973  f3 0f 11 47 3c                 movss  DWORD PTR [rdi+0x3c],xmm0
32c978  41 0f 28 d3                    movaps xmm2,xmm11
32c97c  48 8d 95 18 01 00 00           lea    rdx,[rbp+0x118]
32c983  48 8d 4d b0                    lea    rcx,[rbp-0x50]
32c987  e8 e0 2c fb ff                 call   0x2df66c
32c98c  48 8b 5d d8                    mov    rbx,QWORD PTR [rbp-0x28]
32c990  48 8d 95 24 01 00 00           lea    rdx,[rbp+0x124]
32c997  41 0f 28 d3                    movaps xmm2,xmm11
32c99b  48 8d 4d b0                    lea    rcx,[rbp-0x50]
32c99f  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c9a3  f2 0f 11 43 20                 movsd  QWORD PTR [rbx+0x20],xmm0
32c9a8  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c9ab  89 43 28                       mov    DWORD PTR [rbx+0x28],eax
32c9ae  e8 b9 2c fb ff                 call   0x2df66c
32c9b3  41 0f 28 d3                    movaps xmm2,xmm11
32c9b7  48 8d 95 30 01 00 00           lea    rdx,[rbp+0x130]
32c9be  48 8d 4d b0                    lea    rcx,[rbp-0x50]
32c9c2  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c9c6  f2 0f 11 87 6c 01 00 00        movsd  QWORD PTR [rdi+0x16c],xmm0
32c9ce  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c9d1  89 87 74 01 00 00              mov    DWORD PTR [rdi+0x174],eax
32c9d7  e8 90 2c fb ff                 call   0x2df66c
32c9dc  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32c9e0  f2 0f 11 47 28                 movsd  QWORD PTR [rdi+0x28],xmm0
32c9e5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32c9e8  89 47 30                       mov    DWORD PTR [rdi+0x30],eax
32c9eb  80 3d 16 b3 0c 00 00           cmp    BYTE PTR [rip+0xcb316],0x0        # 0x3f7d08 ; CONFIG Bools.nospread value(+0x48)
32c9f2  74 1e                          je     0x32ca12
32c9f4  48 8d 4d 60                    lea    rcx,[rbp+0x60]
32c9f8  e8 bf b1 09 00                 call   0x3c7bbc
32c9fd  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32ca01  f2 0f 11 87 f8 00 00 00        movsd  QWORD PTR [rdi+0xf8],xmm0
32ca09  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32ca0c  89 87 00 01 00 00              mov    DWORD PTR [rdi+0x100],eax
32ca12  80 3d 2f b4 0c 00 00           cmp    BYTE PTR [rip+0xcb42f],0x0        # 0x3f7e48 ; CONFIG Bools.SpecialTeleport value(+0x48)
32ca19  74 5f                          je     0x32ca7a
32ca1b  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
32ca21  48 8b cf                       mov    rcx,rdi
32ca24  f2 0f 11 87 78 01 00 00        movsd  QWORD PTR [rdi+0x178],xmm0
32ca2c  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
32ca30  89 87 80 01 00 00              mov    DWORD PTR [rdi+0x180],eax
32ca36  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
32ca3c  f2 0f 11 43 10                 movsd  QWORD PTR [rbx+0x10],xmm0
32ca41  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
32ca45  89 43 18                       mov    DWORD PTR [rbx+0x18],eax
32ca48  e8 bb f3 ff ff                 call   0x32be08
32ca4d  48 8b c8                       mov    rcx,rax
32ca50  4c 8b c0                       mov    r8,rax
32ca53  e8 b0 e4 f9 ff                 call   0x2caf08
32ca58  84 c0                          test   al,al
32ca5a  74 1e                          je     0x32ca7a
32ca5c  8b 4c 24 50                    mov    ecx,DWORD PTR [rsp+0x50]
32ca60  48 8d 55 c0                    lea    rdx,[rbp-0x40]
32ca64  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
32ca6a  89 4d c8                       mov    DWORD PTR [rbp-0x38],ecx
32ca6d  49 8b c8                       mov    rcx,r8
32ca70  f2 0f 11 45 c0                 movsd  QWORD PTR [rbp-0x40],xmm0
32ca75  e8 c6 86 04 00                 call   0x375140
32ca7a  4c 8b 44 24 78                 mov    r8,QWORD PTR [rsp+0x78]
32ca7f  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
32ca86  48 8d 0d eb be ee ff           lea    rcx,[rip+0xffffffffffeebeeb]        # 0x218978
32ca8d  e8 fa 00 00 00                 call   0x32cb8c
32ca92  48 8b 7c 24 58                 mov    rdi,QWORD PTR [rsp+0x58]
32ca97  41 ff c7                       inc    r15d
32ca9a  44 3b 7c 24 70                 cmp    r15d,DWORD PTR [rsp+0x70]
32ca9f  0f 8c b6 f9 ff ff              jl     0x32c45b
32caa5  4c 8d 9c 24 c0 02 00 00        lea    r11,[rsp+0x2c0]
32caad  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
32cab1  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
32cab6  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
32cabb  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
32cac0  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
32cac5  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
32caca  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
32cacf  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
32cad4  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
32cad9  49 8b e3                       mov    rsp,r11
32cadc  41 5f                          pop    r15
32cade  41 5e                          pop    r14
32cae0  41 5d                          pop    r13
32cae2  41 5c                          pop    r12
32cae4  5f                             pop    rdi
32cae5  5e                             pop    rsi
32cae6  5d                             pop    rbp
32cae7  c3                             ret

