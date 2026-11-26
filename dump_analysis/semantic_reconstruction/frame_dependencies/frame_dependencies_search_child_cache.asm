; pdata function 0x38128c..0x381355 unwind=0x3d4650
38128c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
381291  44 88 44 24 18                 mov    BYTE PTR [rsp+0x18],r8b
381296  55                             push   rbp
381297  48 8b ec                       mov    rbp,rsp
38129a  48 83 ec 40                    sub    rsp,0x40
38129e  44 8b c2                       mov    r8d,edx
3812a1  33 d2                          xor    edx,edx
3812a3  e8 a4 20 01 00                 call   0x39334c
3812a8  89 45 28                       mov    DWORD PTR [rbp+0x28],eax
3812ab  48 8d 1d 0e 47 08 00           lea    rbx,[rip+0x8470e]        # 0x4059c0
3812b2  8b 05 48 47 08 00              mov    eax,DWORD PTR [rip+0x84748]        # 0x405a00
3812b8  a8 01                          test   al,0x1
3812ba  75 1d                          jne    0x3812d9
3812bc  83 c8 01                       or     eax,0x1
3812bf  48 8b cb                       mov    rcx,rbx
3812c2  89 05 38 47 08 00              mov    DWORD PTR [rip+0x84738],eax        # 0x405a00
3812c8  e8 83 14 00 00                 call   0x382750
3812cd  48 8d 0d 14 fa 04 00           lea    rcx,[rip+0x4fa14]        # 0x3d0ce8
3812d4  e8 53 c0 f4 ff                 call   0x2cd32c
3812d9  4c 8d 45 28                    lea    r8,[rbp+0x28]
3812dd  48 8b cb                       mov    rcx,rbx
3812e0  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3812e4  e8 83 d6 ff ff                 call   0x37e96c
3812e9  48 8d 55 e8                    lea    rdx,[rbp-0x18]
3812ed  48 8b cb                       mov    rcx,rbx
3812f0  e8 3b d6 ff ff                 call   0x37e930
3812f5  48 8b d0                       mov    rdx,rax
3812f8  48 8d 4d e0                    lea    rcx,[rbp-0x20]
3812fc  e8 33 b2 f4 ff                 call   0x2cc534
381301  84 c0                          test   al,al
381303  74 38                          je     0x38133d
381305  4c 8d 45 20                    lea    r8,[rbp+0x20]
381309  48 8d 55 28                    lea    rdx,[rbp+0x28]
38130d  48 8d 4d e0                    lea    rcx,[rbp-0x20]
381311  e8 3a ec ff ff                 call   0x37ff50
381316  4c 8d 45 e0                    lea    r8,[rbp-0x20]
38131a  48 8b cb                       mov    rcx,rbx
38131d  48 8d 55 e8                    lea    rdx,[rbp-0x18]
381321  e8 16 63 00 00                 call   0x38763c
381326  4c 8d 45 28                    lea    r8,[rbp+0x28]
38132a  48 8b cb                       mov    rcx,rbx
38132d  48 8d 55 e8                    lea    rdx,[rbp-0x18]
381331  e8 36 d6 ff ff                 call   0x37e96c
381336  48 8b 08                       mov    rcx,QWORD PTR [rax]
381339  48 89 4d e0                    mov    QWORD PTR [rbp-0x20],rcx
38133d  48 8d 4d e0                    lea    rcx,[rbp-0x20]
381341  e8 86 b6 ff ff                 call   0x37c9cc
381346  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
38134b  48 83 c0 04                    add    rax,0x4
38134f  48 83 c4 40                    add    rsp,0x40
381353  5d                             pop    rbp
381354  c3                             ret

; pdata function 0x38f224..0x38f370 unwind=0x3d4810
38f224  48 8b c4                       mov    rax,rsp
38f227  48 89 58 18                    mov    QWORD PTR [rax+0x18],rbx
38f22b  57                             push   rdi
38f22c  48 81 ec 80 00 00 00           sub    rsp,0x80
38f233  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
38f237  48 8b d9                       mov    rbx,rcx
38f23a  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
38f23e  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
38f243  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
38f248  66 48 0f 6e f2                 movq   xmm6,rdx
38f24d  44 0f 29 48 b8                 movaps XMMWORD PTR [rax-0x48],xmm9
38f252  44 0f 28 cb                    movaps xmm9,xmm3
38f256  44 0f 29 50 a8                 movaps XMMWORD PTR [rax-0x58],xmm10
38f25b  44 0f 28 d2                    movaps xmm10,xmm2
38f25f  48 8b 05 c2 68 07 00           mov    rax,QWORD PTR [rip+0x768c2]        # 0x405b28
38f266  f2 0f 11 b4 24 90 00 00 00     movsd  QWORD PTR [rsp+0x90],xmm6
38f26f  48 8b b8 08 3f 00 00           mov    rdi,QWORD PTR [rax+0x3f08]
38f276  e8 f5 55 f4 ff                 call   0x2d4870
38f27b  f3 0f 10 bc 24 94 00 00 00     movss  xmm7,DWORD PTR [rsp+0x94]
38f284  45 0f 57 c0                    xorps  xmm8,xmm8
38f288  44 0f 2f c6                    comiss xmm8,xmm6
38f28c  77 06                          ja     0x38f294
38f28e  44 0f 2f c7                    comiss xmm8,xmm7
38f292  76 14                          jbe    0x38f2a8
38f294  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
38f299  e8 e6 30 00 00                 call   0x392384
38f29e  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
38f2a2  f2 0f 11 44 24 20              movsd  QWORD PTR [rsp+0x20],xmm0
38f2a8  41 0f 2e f0                    ucomiss xmm6,xmm8
38f2ac  f3 0f 10 15 c4 3e f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff03ec4]        # 0x293178 ; f32=4
38f2b4  7a 14                          jp     0x38f2ca
38f2b6  75 12                          jne    0x38f2ca
38f2b8  41 0f 28 f2                    movaps xmm6,xmm10
38f2bc  0f 14 f7                       unpcklps xmm6,xmm7
38f2bf  f2 0f 11 b4 24 90 00 00 00     movsd  QWORD PTR [rsp+0x90],xmm6
38f2c8  eb 2f                          jmp    0x38f2f9
38f2ca  44 0f 2f c6                    comiss xmm8,xmm6
38f2ce  76 29                          jbe    0x38f2f9
38f2d0  f3 0f 10 4c 24 20              movss  xmm1,DWORD PTR [rsp+0x20]
38f2d6  0f 28 c2                       movaps xmm0,xmm2
38f2d9  f3 0f 5c 8f 00 01 00 00        subss  xmm1,DWORD PTR [rdi+0x100]
38f2e1  f3 0f 58 ce                    addss  xmm1,xmm6
38f2e5  e8 0a b1 ff ff                 call   0x38a3f4
38f2ea  0f 14 c7                       unpcklps xmm0,xmm7
38f2ed  0f 28 f0                       movaps xmm6,xmm0
38f2f0  f2 0f 11 84 24 90 00 00 00     movsd  QWORD PTR [rsp+0x90],xmm0
38f2f9  41 0f 2e f8                    ucomiss xmm7,xmm8
38f2fd  7a 0e                          jp     0x38f30d
38f2ff  75 0c                          jne    0x38f30d
38f301  f3 44 0f 11 8c 24 94 00 00 00  movss  DWORD PTR [rsp+0x94],xmm9
38f30b  eb 29                          jmp    0x38f336
38f30d  44 0f 2f c7                    comiss xmm8,xmm7
38f311  76 2c                          jbe    0x38f33f
38f313  f3 0f 10 4c 24 24              movss  xmm1,DWORD PTR [rsp+0x24]
38f319  0f 28 c2                       movaps xmm0,xmm2
38f31c  f3 0f 5c 8f 04 01 00 00        subss  xmm1,DWORD PTR [rdi+0x104]
38f324  f3 0f 58 cf                    addss  xmm1,xmm7
38f328  e8 c7 b0 ff ff                 call   0x38a3f4
38f32d  f3 0f 11 84 24 94 00 00 00     movss  DWORD PTR [rsp+0x94],xmm0
38f336  f2 0f 10 b4 24 90 00 00 00     movsd  xmm6,QWORD PTR [rsp+0x90]
38f33f  0f 28 7c 24 60                 movaps xmm7,XMMWORD PTR [rsp+0x60]
38f344  4c 8d 9c 24 80 00 00 00        lea    r11,[rsp+0x80]
38f34c  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
38f351  48 8b c3                       mov    rax,rbx
38f354  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
38f359  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
38f35e  f2 0f 11 33                    movsd  QWORD PTR [rbx],xmm6
38f362  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
38f366  0f 28 74 24 70                 movaps xmm6,XMMWORD PTR [rsp+0x70]
38f36b  49 8b e3                       mov    rsp,r11
38f36e  5f                             pop    rdi
38f36f  c3                             ret

