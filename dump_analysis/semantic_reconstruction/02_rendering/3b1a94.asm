; pdata function 0x3b1a94..0x3b1dc1 unwind=0x3d55e8
3b1a94  48 8b c4                       mov    rax,rsp
3b1a97  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
3b1a9b  48 89 50 10                    mov    QWORD PTR [rax+0x10],rdx
3b1a9f  55                             push   rbp
3b1aa0  56                             push   rsi
3b1aa1  57                             push   rdi
3b1aa2  41 54                          push   r12
3b1aa4  41 55                          push   r13
3b1aa6  41 56                          push   r14
3b1aa8  41 57                          push   r15
3b1aaa  48 8d a8 08 ff ff ff           lea    rbp,[rax-0xf8]
3b1ab1  48 81 ec c0 01 00 00           sub    rsp,0x1c0
3b1ab8  f3 0f 10 5a 18                 movss  xmm3,DWORD PTR [rdx+0x18]
3b1abd  4c 8b f1                       mov    r14,rcx
3b1ac0  f3 0f 10 52 1c                 movss  xmm2,DWORD PTR [rdx+0x1c]
3b1ac5  48 8d 4d 80                    lea    rcx,[rbp-0x80]
3b1ac9  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
3b1acd  0f 28 cb                       movaps xmm1,xmm3
3b1ad0  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
3b1ad4  48 8b da                       mov    rbx,rdx
3b1ad7  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
3b1adc  66 4d 0f 6e c0                 movq   xmm8,r8
3b1ae1  f2 44 0f 11 85 18 01 00 00     movsd  QWORD PTR [rbp+0x118],xmm8
3b1aea  f3 0f 11 54 24 20              movss  DWORD PTR [rsp+0x20],xmm2
3b1af0  e8 5b a8 f1 ff                 call   0x2cc350
3b1af5  f3 0f 10 5b 28                 movss  xmm3,DWORD PTR [rbx+0x28]
3b1afa  48 8d 4d 90                    lea    rcx,[rbp-0x70]
3b1afe  f3 0f 10 53 2c                 movss  xmm2,DWORD PTR [rbx+0x2c]
3b1b03  0f 28 cb                       movaps xmm1,xmm3
3b1b06  f3 0f 11 54 24 20              movss  DWORD PTR [rsp+0x20],xmm2
3b1b0c  e8 3f a8 f1 ff                 call   0x2cc350
3b1b11  48 8b 15 60 b6 05 00           mov    rdx,QWORD PTR [rip+0x5b660]        # 0x40d178
3b1b18  48 8d 4d d0                    lea    rcx,[rbp-0x30]
3b1b1c  0f 57 c0                       xorps  xmm0,xmm0
3b1b1f  33 c0                          xor    eax,eax
3b1b21  0f 11 45 d0                    movups XMMWORD PTR [rbp-0x30],xmm0
3b1b25  48 89 45 f0                    mov    QWORD PTR [rbp-0x10],rax
3b1b29  0f 11 45 e0                    movups XMMWORD PTR [rbp-0x20],xmm0
3b1b2d  e8 f2 2c 00 00                 call   0x3b4824
3b1b32  48 8d 55 d0                    lea    rdx,[rbp-0x30]
3b1b36  49 8b ce                       mov    rcx,r14
3b1b39  e8 52 21 00 00                 call   0x3b3c90
3b1b3e  0f 57 f6                       xorps  xmm6,xmm6
3b1b41  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3b1b46  0f 57 db                       xorps  xmm3,xmm3
3b1b49  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3b1b4f  0f 57 d2                       xorps  xmm2,xmm2
3b1b52  0f 57 c9                       xorps  xmm1,xmm1
3b1b55  e8 f2 2c f2 ff                 call   0x2d484c
3b1b5a  41 b0 01                       mov    r8b,0x1
3b1b5d  4c 8d 4c 24 60                 lea    r9,[rsp+0x60]
3b1b62  41 8a d0                       mov    dl,r8b
3b1b65  49 8b ce                       mov    rcx,r14
3b1b68  e8 5b d6 ff ff                 call   0x3af1c8
3b1b6d  f3 0f 10 bd 1c 01 00 00        movss  xmm7,DWORD PTR [rbp+0x11c]
3b1b75  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3b1b7a  41 0f 28 d8                    movaps xmm3,xmm8
3b1b7e  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
3b1b84  0f 57 d2                       xorps  xmm2,xmm2
3b1b87  0f 57 c9                       xorps  xmm1,xmm1
3b1b8a  e8 c1 a7 f1 ff                 call   0x2cc350
3b1b8f  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3b1b94  49 8b ce                       mov    rcx,r14
3b1b97  e8 18 dd ff ff                 call   0x3af8b4
3b1b9c  f3 0f 10 0d ac b6 ed ff        movss  xmm1,DWORD PTR [rip+0xffffffffffedb6ac]        # 0x28d250 ; f32=0.5
3b1ba4  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3b1ba9  0f 28 d1                       movaps xmm2,xmm1
3b1bac  0f 57 db                       xorps  xmm3,xmm3
3b1baf  f3 0f 5e d7                    divss  xmm2,xmm7
3b1bb3  f3 41 0f 5e c8                 divss  xmm1,xmm8
3b1bb8  e8 eb 5f 01 00                 call   0x3c7ba8
3b1bbd  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
3b1bc2  48 8d 4d 50                    lea    rcx,[rbp+0x50]
3b1bc6  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3b1bca  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3b1bcd  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
3b1bd3  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
3b1bd7  e8 1c 26 00 00                 call   0x3b41f8
3b1bdc  f3 0f 10 05 70 b6 ed ff        movss  xmm0,DWORD PTR [rip+0xffffffffffedb670]        # 0x28d254 ; f32=1
3b1be4  48 8d 4d 10                    lea    rcx,[rbp+0x10]
3b1be8  f3 0f 11 44 24 30              movss  DWORD PTR [rsp+0x30],xmm0
3b1bee  0f 28 df                       movaps xmm3,xmm7
3b1bf1  f3 0f 11 74 24 28              movss  DWORD PTR [rsp+0x28],xmm6
3b1bf7  41 0f 28 d0                    movaps xmm2,xmm8
3b1bfb  0f 57 c9                       xorps  xmm1,xmm1
3b1bfe  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3b1c04  e8 0b 1a 00 00                 call   0x3b3614
3b1c09  4c 8d 45 10                    lea    r8,[rbp+0x10]
3b1c0d  49 8b ce                       mov    rcx,r14
3b1c10  48 8d 55 50                    lea    rdx,[rbp+0x50]
3b1c14  e8 fb db ff ff                 call   0x3af814
3b1c19  8b 43 04                       mov    eax,DWORD PTR [rbx+0x4]
3b1c1c  45 33 ff                       xor    r15d,r15d
3b1c1f  33 ff                          xor    edi,edi
3b1c21  89 85 18 01 00 00              mov    DWORD PTR [rbp+0x118],eax
3b1c27  85 c0                          test   eax,eax
3b1c29  0f 8e 60 01 00 00              jle    0x3b1d8f
3b1c2f  48 8b 43 10                    mov    rax,QWORD PTR [rbx+0x10]
3b1c33  33 db                          xor    ebx,ebx
3b1c35  4c 8b 24 f8                    mov    r12,QWORD PTR [rax+rdi*8]
3b1c39  41 8b 34 24                    mov    esi,DWORD PTR [r12]
3b1c3d  85 f6                          test   esi,esi
3b1c3f  0f 8e 35 01 00 00              jle    0x3b1d7a
3b1c45  8b d3                          mov    edx,ebx
3b1c47  49 8b cc                       mov    rcx,r12
3b1c4a  e8 41 9f fd ff                 call   0x38bb90
3b1c4f  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3b1c53  f3 0f 10 40 0c                 movss  xmm0,DWORD PTR [rax+0xc]
3b1c58  f3 0f 10 58 08                 movss  xmm3,DWORD PTR [rax+0x8]
3b1c5d  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
3b1c62  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
3b1c66  4c 8b 68 10                    mov    r13,QWORD PTR [rax+0x10]
3b1c6a  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3b1c70  e8 db a6 f1 ff                 call   0x2cc350
3b1c75  48 8b c8                       mov    rcx,rax
3b1c78  4c 8d 45 80                    lea    r8,[rbp-0x80]
3b1c7c  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
3b1c81  e8 26 ee ff ff                 call   0x3b0aac
3b1c86  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
3b1c8a  4c 8d 45 a0                    lea    r8,[rbp-0x60]
3b1c8e  0f 10 4c 24 50                 movups xmm1,XMMWORD PTR [rsp+0x50]
3b1c93  48 8d 55 b0                    lea    rdx,[rbp-0x50]
3b1c97  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3b1c9c  66 0f 7f 45 a0                 movdqa XMMWORD PTR [rbp-0x60],xmm0
3b1ca1  66 0f 7f 4d b0                 movdqa XMMWORD PTR [rbp-0x50],xmm1
3b1ca6  e8 a5 1c 00 00                 call   0x3b3950
3b1cab  f3 0f 10 44 24 40              movss  xmm0,DWORD PTR [rsp+0x40]
3b1cb1  41 0f 2f c0                    comiss xmm0,xmm8
3b1cb5  0f 83 b2 00 00 00              jae    0x3b1d6d
3b1cbb  f3 0f 10 44 24 44              movss  xmm0,DWORD PTR [rsp+0x44]
3b1cc1  0f 2f c7                       comiss xmm0,xmm7
3b1cc4  0f 83 a3 00 00 00              jae    0x3b1d6d
3b1cca  0f 2f 74 24 48                 comiss xmm6,DWORD PTR [rsp+0x48]
3b1ccf  0f 87 98 00 00 00              ja     0x3b1d6d
3b1cd5  0f 2f 74 24 4c                 comiss xmm6,DWORD PTR [rsp+0x4c]
3b1cda  0f 87 8d 00 00 00              ja     0x3b1d6d
3b1ce0  8b 15 6a b4 05 00              mov    edx,DWORD PTR [rip+0x5b46a]        # 0x40d150
3b1ce6  4d 8b c5                       mov    r8,r13
3b1ce9  48 8b 0d 68 b4 05 00           mov    rcx,QWORD PTR [rip+0x5b468]        # 0x40d158
3b1cf0  e8 7f da ff ff                 call   0x3af774
3b1cf5  f3 0f 10 44 24 4c              movss  xmm0,DWORD PTR [rsp+0x4c]
3b1cfb  48 8d 4d c0                    lea    rcx,[rbp-0x40]
3b1cff  f3 0f 10 5c 24 48              movss  xmm3,DWORD PTR [rsp+0x48]
3b1d05  0f 28 d7                       movaps xmm2,xmm7
3b1d08  f3 0f 5c 44 24 44              subss  xmm0,DWORD PTR [rsp+0x44]
3b1d0e  f3 0f 5c 5c 24 40              subss  xmm3,DWORD PTR [rsp+0x40]
3b1d14  f3 0f 5c 54 24 4c              subss  xmm2,DWORD PTR [rsp+0x4c]
3b1d1a  f3 0f 10 4c 24 40              movss  xmm1,DWORD PTR [rsp+0x40]
3b1d20  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3b1d26  e8 25 a6 f1 ff                 call   0x2cc350
3b1d2b  48 8d 55 c0                    lea    rdx,[rbp-0x40]
3b1d2f  49 8b ce                       mov    rcx,r14
3b1d32  e8 a5 01 00 00                 call   0x3b1edc
3b1d37  48 8b 05 1a b4 05 00           mov    rax,QWORD PTR [rip+0x5b41a]        # 0x40d158
3b1d3e  4c 8d 05 9b b3 05 00           lea    r8,[rip+0x5b39b]        # 0x40d0e0
3b1d45  4c 8b 0d ec b3 05 00           mov    r9,QWORD PTR [rip+0x5b3ec]        # 0x40d138
3b1d4c  49 8b ce                       mov    rcx,r14
3b1d4f  48 8b 15 ea b3 05 00           mov    rdx,QWORD PTR [rip+0x5b3ea]        # 0x40d140
3b1d56  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
3b1d5b  c7 44 24 28 ff ff ff ff        mov    DWORD PTR [rsp+0x28],0xffffffff
3b1d63  44 89 7c 24 20                 mov    DWORD PTR [rsp+0x20],r15d
3b1d68  e8 77 d5 ff ff                 call   0x3af2e4
3b1d6d  ff c3                          inc    ebx
3b1d6f  41 ff c7                       inc    r15d
3b1d72  3b de                          cmp    ebx,esi
3b1d74  0f 8c cb fe ff ff              jl     0x3b1c45
3b1d7a  48 8b 9d 08 01 00 00           mov    rbx,QWORD PTR [rbp+0x108]
3b1d81  ff c7                          inc    edi
3b1d83  3b bd 18 01 00 00              cmp    edi,DWORD PTR [rbp+0x118]
3b1d89  0f 8c a0 fe ff ff              jl     0x3b1c2f
3b1d8f  49 8b ce                       mov    rcx,r14
3b1d92  e8 2d 00 00 00                 call   0x3b1dc4
3b1d97  4c 8d 9c 24 c0 01 00 00        lea    r11,[rsp+0x1c0]
3b1d9f  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
3b1da3  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3b1da8  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
3b1dad  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
3b1db2  49 8b e3                       mov    rsp,r11
3b1db5  41 5f                          pop    r15
3b1db7  41 5e                          pop    r14
3b1db9  41 5d                          pop    r13
3b1dbb  41 5c                          pop    r12
3b1dbd  5f                             pop    rdi
3b1dbe  5e                             pop    rsi
3b1dbf  5d                             pop    rbp
3b1dc0  c3                             ret
