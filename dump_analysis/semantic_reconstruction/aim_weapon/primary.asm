; pdata function 0x2f9988..0x2fa2fd unwind=0x3d2e0c
2f9988  48 8b c4                       mov    rax,rsp
2f998b  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2f998f  55                             push   rbp
2f9990  56                             push   rsi
2f9991  57                             push   rdi
2f9992  41 54                          push   r12
2f9994  41 55                          push   r13
2f9996  41 56                          push   r14
2f9998  41 57                          push   r15
2f999a  48 8d 68 a8                    lea    rbp,[rax-0x58]
2f999e  48 81 ec 20 01 00 00           sub    rsp,0x120
2f99a5  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
2f99a9  48 8b d9                       mov    rbx,rcx
2f99ac  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
2f99b0  48 8b ca                       mov    rcx,rdx
2f99b3  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
2f99b8  48 8b f2                       mov    rsi,rdx
2f99bb  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
2f99c0  e8 43 15 fd ff                 call   0x2caf08
2f99c5  33 ff                          xor    edi,edi
2f99c7  84 c0                          test   al,al
2f99c9  0f 84 ff 08 00 00              je     0x2fa2ce
2f99cf  48 8b ca                       mov    rcx,rdx
2f99d2  e8 c5 74 fe ff                 call   0x2e0e9c
2f99d7  84 c0                          test   al,al
2f99d9  0f 84 ef 08 00 00              je     0x2fa2ce
2f99df  40 38 3d 42 df 0e 00           cmp    BYTE PTR [rip+0xedf42],dil        # 0x3e7928 ; CONFIG Bools.Aimbot value(+0x48)
2f99e6  75 25                          jne    0x2f9a0d
2f99e8  40 38 3d d9 0c 0f 00           cmp    BYTE PTR [rip+0xf0cd9],dil        # 0x3ea6c8 ; CONFIG Bools.aimmarker value(+0x48)
2f99ef  75 1c                          jne    0x2f9a0d
2f99f1  40 38 3d 80 e4 0d 00           cmp    BYTE PTR [rip+0xde480],dil        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
2f99f8  75 13                          jne    0x2f9a0d
2f99fa  40 38 3d 67 03 0f 00           cmp    BYTE PTR [rip+0xf0367],dil        # 0x3e9d68 ; CONFIG Bools.TargetHelicopter value(+0x48)
2f9a01  75 0a                          jne    0x2f9a0d
2f9a03  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2f9a08  e9 a7 08 00 00                 jmp    0x2fa2b4
2f9a0d  e8 9e 68 fe ff                 call   0x2e02b0
2f9a12  48 8b c8                       mov    rcx,rax
2f9a15  4c 8b f0                       mov    r14,rax
2f9a18  e8 eb 14 fd ff                 call   0x2caf08
2f9a1d  84 c0                          test   al,al
2f9a1f  75 0d                          jne    0x2f9a2e
2f9a21  48 8b d6                       mov    rdx,rsi
2f9a24  48 8b cb                       mov    rcx,rbx
2f9a27  e8 d4 08 00 00                 call   0x2fa300
2f9a2c  eb d5                          jmp    0x2f9a03
2f9a2e  49 8b ce                       mov    rcx,r14
2f9a31  e8 66 74 fe ff                 call   0x2e0e9c
2f9a36  84 c0                          test   al,al
2f9a38  74 c9                          je     0x2f9a03
2f9a3a  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2f9a3f  49 8b ce                       mov    rcx,r14
2f9a42  e8 49 fd 06 00                 call   0x369790
2f9a47  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2f9a4c  e8 6b e1 0c 00                 call   0x3c7bbc
2f9a51  48 8b d0                       mov    rdx,rax
2f9a54  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2f9a59  e8 52 5b fe ff                 call   0x2df5b0
2f9a5e  84 c0                          test   al,al
2f9a60  75 a1                          jne    0x2f9a03
2f9a62  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2f9a66  48 8b ce                       mov    rcx,rsi
2f9a69  e8 f6 f6 06 00                 call   0x369164
2f9a6e  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2f9a73  48 8d 4d b0                    lea    rcx,[rbp-0x50]
2f9a77  e8 b4 64 fe ff                 call   0x2dff30
2f9a7c  66 0f 6e 0d c4 e6 0d 00        movd   xmm1,DWORD PTR [rip+0xde6c4]        # 0x3d8148 ; CONFIG i.PlayerMaxDistance value(+0x48)
2f9a84  0f 5b c9                       cvtdq2ps xmm1,xmm1
2f9a87  0f 2f c1                       comiss xmm0,xmm1
2f9a8a  0f 87 73 ff ff ff              ja     0x2f9a03
2f9a90  48 8b ce                       mov    rcx,rsi
2f9a93  e8 ec ef 06 00                 call   0x368a84
2f9a98  48 8b c8                       mov    rcx,rax
2f9a9b  48 8b d8                       mov    rbx,rax
2f9a9e  e8 65 14 fd ff                 call   0x2caf08
2f9aa3  84 c0                          test   al,al
2f9aa5  0f 84 58 ff ff ff              je     0x2f9a03
2f9aab  48 8b cb                       mov    rcx,rbx
2f9aae  e8 01 87 07 00                 call   0x3721b4
2f9ab3  48 8b cb                       mov    rcx,rbx
2f9ab6  4c 8b e0                       mov    r12,rax
2f9ab9  e8 a6 79 07 00                 call   0x371464
2f9abe  48 8b cb                       mov    rcx,rbx
2f9ac1  48 8b f8                       mov    rdi,rax
2f9ac4  e8 ef 83 07 00                 call   0x371eb8
2f9ac9  48 8b cb                       mov    rcx,rbx
2f9acc  4c 8b f8                       mov    r15,rax
2f9acf  e8 0c 7c 07 00                 call   0x3716e0
2f9ad4  48 8b c8                       mov    rcx,rax
2f9ad7  4c 8b e8                       mov    r13,rax
2f9ada  e8 29 14 fd ff                 call   0x2caf08
2f9adf  84 c0                          test   al,al
2f9ae1  0f 84 c6 01 00 00              je     0x2f9cad
2f9ae7  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2f9aec  48 8b ce                       mov    rcx,rsi
2f9aef  e8 70 f6 06 00                 call   0x369164
2f9af4  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2f9af9  48 8b ce                       mov    rcx,rsi
2f9afc  48 8b d8                       mov    rbx,rax
2f9aff  e8 fc e5 06 00                 call   0x368100
2f9b04  f3 0f 10 15 a0 95 f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff995a0]        # 0x2930ac ; f32=0.25
2f9b0c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2f9b11  48 8b c8                       mov    rcx,rax
2f9b14  e8 53 5b fe ff                 call   0x2df66c
2f9b19  4c 8b c0                       mov    r8,rax
2f9b1c  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2f9b21  48 8b cb                       mov    rcx,rbx
2f9b24  e8 df 5b fe ff                 call   0x2df708
2f9b29  f3 41 0f 10 85 f8 03 00 00     movss  xmm0,DWORD PTR [r13+0x3f8]
2f9b32  49 8b ce                       mov    rcx,r14
2f9b35  0f 5a c0                       cvtps2pd xmm0,xmm0
2f9b38  f2 0f 5c 05 d0 95 f9 ff        subsd  xmm0,QWORD PTR [rip+0xfffffffffff995d0]        # 0x293110
2f9b40  66 0f 5a f0                    cvtpd2ps xmm6,xmm0
2f9b44  e8 0b bf 01 00                 call   0x315a54
2f9b49  48 8b c8                       mov    rcx,rax
2f9b4c  4c 8b c0                       mov    r8,rax
2f9b4f  e8 b4 13 fd ff                 call   0x2caf08
2f9b54  45 33 ed                       xor    r13d,r13d
2f9b57  84 c0                          test   al,al
2f9b59  74 1e                          je     0x2f9b79
2f9b5b  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2f9b60  49 8b c8                       mov    rcx,r8
2f9b63  e8 6c ac 07 00                 call   0x3747d4
2f9b68  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2f9b6c  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2f9b72  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2f9b75  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2f9b79  0f 28 ce                       movaps xmm1,xmm6
2f9b7c  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2f9b80  e8 bb f9 fd ff                 call   0x2d9540
2f9b85  48 8b 0d 8c bb 0e 00           mov    rcx,QWORD PTR [rip+0xebb8c]        # 0x3e5718
2f9b8c  48 85 c9                       test   rcx,rcx
2f9b8f  75 0e                          jne    0x2f9b9f
2f9b91  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2f9b95  e8 5a 29 fd ff                 call   0x2cc4f4
2f9b9a  e9 2f 07 00 00                 jmp    0x2fa2ce
2f9b9f  f2 0f 10 05 a1 d6 0d 00        movsd  xmm0,QWORD PTR [rip+0xdd6a1]        # 0x3d7248
2f9ba7  4c 8d 4c 24 50                 lea    r9,[rsp+0x50]
2f9bac  8b 05 9e d6 0d 00              mov    eax,DWORD PTR [rip+0xdd69e]        # 0x3d7250
2f9bb2  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2f9bb7  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2f9bbd  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2f9bc1  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2f9bc7  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2f9bcb  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2f9bcf  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2f9bd5  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
2f9bdb  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2f9bdf  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
2f9be3  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2f9be8  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2f9bec  f2 0f 11 45 a0                 movsd  QWORD PTR [rbp-0x60],xmm0
2f9bf1  89 45 a8                       mov    DWORD PTR [rbp-0x58],eax
2f9bf4  e8 7b 87 fe ff                 call   0x2e2374
2f9bf9  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2f9bfd  e8 56 9f fe ff                 call   0x2e3b58
2f9c02  84 c0                          test   al,al
2f9c04  75 7b                          jne    0x2f9c81
2f9c06  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2f9c0b  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2f9c0f  e8 64 76 fe ff                 call   0x2e1278
2f9c14  48 8b c8                       mov    rcx,rax
2f9c17  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2f9c1c  0f 28 d6                       movaps xmm2,xmm6
2f9c1f  e8 48 5a fe ff                 call   0x2df66c
2f9c24  48 8b c8                       mov    rcx,rax
2f9c27  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2f9c2c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2f9c31  e8 d2 5a fe ff                 call   0x2df708
2f9c36  f3 0f 10 15 12 36 f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff93612]        # 0x28d250 ; f32=0.5
2f9c3e  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2f9c42  48 8d 0d 17 c4 0e 00           lea    rcx,[rip+0xec417]        # 0x3e6060
2f9c49  48 8b d8                       mov    rbx,rax
2f9c4c  e8 1b 5a fe ff                 call   0x2df66c
2f9c51  4c 8b c0                       mov    r8,rax
2f9c54  48 8d 55 90                    lea    rdx,[rbp-0x70]
2f9c58  48 8b cb                       mov    rcx,rbx
2f9c5b  e8 6c 5a fe ff                 call   0x2df6cc
2f9c60  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2f9c64  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2f9c6a  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
2f9c6d  89 4c 24 38                    mov    DWORD PTR [rsp+0x38],ecx
2f9c71  f2 0f 11 05 d7 c3 0e 00        movsd  QWORD PTR [rip+0xec3d7],xmm0        # 0x3e6050
2f9c79  89 0d d9 c3 0e 00              mov    DWORD PTR [rip+0xec3d9],ecx        # 0x3e6058
2f9c7f  eb 1e                          jmp    0x2f9c9f
2f9c81  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2f9c85  e8 32 df 0c 00                 call   0x3c7bbc
2f9c8a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2f9c8e  f2 0f 11 05 ba c3 0e 00        movsd  QWORD PTR [rip+0xec3ba],xmm0        # 0x3e6050
2f9c96  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2f9c99  89 05 b9 c3 0e 00              mov    DWORD PTR [rip+0xec3b9],eax        # 0x3e6058
2f9c9f  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2f9ca3  e8 4c 28 fd ff                 call   0x2cc4f4
2f9ca8  e9 86 04 00 00                 jmp    0x2fa133
2f9cad  49 8b cf                       mov    rcx,r15
2f9cb0  e8 53 12 fd ff                 call   0x2caf08
2f9cb5  45 33 ed                       xor    r13d,r13d
2f9cb8  84 c0                          test   al,al
2f9cba  0f 84 72 01 00 00              je     0x2f9e32
2f9cc0  49 8b cf                       mov    rcx,r15
2f9cc3  e8 70 1c 07 00                 call   0x36b938
2f9cc8  48 8b c8                       mov    rcx,rax
2f9ccb  48 8b d0                       mov    rdx,rax
2f9cce  e8 35 12 fd ff                 call   0x2caf08
2f9cd3  84 c0                          test   al,al
2f9cd5  0f 84 58 04 00 00              je     0x2fa133
2f9cdb  48 8b ca                       mov    rcx,rdx
2f9cde  e8 4d 8e 07 00                 call   0x372b30
2f9ce3  48 8b c8                       mov    rcx,rax
2f9ce6  48 8b d0                       mov    rdx,rax
2f9ce9  e8 1a 12 fd ff                 call   0x2caf08
2f9cee  84 c0                          test   al,al
2f9cf0  0f 84 3d 04 00 00              je     0x2fa133
2f9cf6  f3 0f 10 72 3c                 movss  xmm6,DWORD PTR [rdx+0x3c]
2f9cfb  48 8b ce                       mov    rcx,rsi
2f9cfe  f3 41 0f 10 bf ac 03 00 00     movss  xmm7,DWORD PTR [r15+0x3ac]
2f9d07  48 8d 55 90                    lea    rdx,[rbp-0x70]
2f9d0b  e8 f0 e3 06 00                 call   0x368100
2f9d10  48 8b c8                       mov    rcx,rax
2f9d13  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2f9d18  e8 5b 75 fe ff                 call   0x2e1278
2f9d1d  48 8d 55 90                    lea    rdx,[rbp-0x70]
2f9d21  48 8b ce                       mov    rcx,rsi
2f9d24  e8 3b f4 06 00                 call   0x369164
2f9d29  f3 0f 10 15 23 35 f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff93523]        # 0x28d254 ; f32=1
2f9d31  48 8d 55 80                    lea    rdx,[rbp-0x80]
2f9d35  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2f9d3a  48 8b d8                       mov    rbx,rax
2f9d3d  e8 2a 59 fe ff                 call   0x2df66c
2f9d42  4c 8b c0                       mov    r8,rax
2f9d45  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2f9d4a  48 8b cb                       mov    rcx,rbx
2f9d4d  e8 b6 59 fe ff                 call   0x2df708
2f9d52  49 8b ce                       mov    rcx,r14
2f9d55  e8 fa bc 01 00                 call   0x315a54
2f9d5a  48 8b c8                       mov    rcx,rax
2f9d5d  4c 8b c0                       mov    r8,rax
2f9d60  e8 a3 11 fd ff                 call   0x2caf08
2f9d65  84 c0                          test   al,al
2f9d67  74 1f                          je     0x2f9d88
2f9d69  48 8d 55 90                    lea    rdx,[rbp-0x70]
2f9d6d  49 8b c8                       mov    rcx,r8
2f9d70  e8 5f aa 07 00                 call   0x3747d4
2f9d75  f2 0f 10 08                    movsd  xmm1,QWORD PTR [rax]
2f9d79  f2 0f 11 4c 24 30              movsd  QWORD PTR [rsp+0x30],xmm1
2f9d7f  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
2f9d82  89 4c 24 38                    mov    DWORD PTR [rsp+0x38],ecx
2f9d86  eb 0a                          jmp    0x2f9d92
2f9d88  8b 4c 24 38                    mov    ecx,DWORD PTR [rsp+0x38]
2f9d8c  f2 0f 10 4c 24 30              movsd  xmm1,QWORD PTR [rsp+0x30]
2f9d92  48 8b 15 7f b9 0e 00           mov    rdx,QWORD PTR [rip+0xeb97f]        # 0x3e5718
2f9d99  48 85 d2                       test   rdx,rdx
2f9d9c  0f 84 2c 05 00 00              je     0x2fa2ce
2f9da2  f2 0f 10 05 9e d4 0d 00        movsd  xmm0,QWORD PTR [rip+0xdd49e]        # 0x3d7248
2f9daa  4c 8d 4d 80                    lea    r9,[rbp-0x80]
2f9dae  8b 05 9c d4 0d 00              mov    eax,DWORD PTR [rip+0xdd49c]        # 0x3d7250
2f9db4  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
2f9db9  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
2f9dbe  f2 0f 10 44 24 70              movsd  xmm0,QWORD PTR [rsp+0x70]
2f9dc4  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
2f9dc7  8b 44 24 78                    mov    eax,DWORD PTR [rsp+0x78]
2f9dcb  89 4c 24 58                    mov    DWORD PTR [rsp+0x58],ecx
2f9dcf  48 8d 4d a0                    lea    rcx,[rbp-0x60]
2f9dd3  48 89 54 24 20                 mov    QWORD PTR [rsp+0x20],rdx
2f9dd8  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2f9ddd  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2f9de3  f2 0f 11 4c 24 50              movsd  QWORD PTR [rsp+0x50],xmm1
2f9de9  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2f9ded  e8 82 85 fe ff                 call   0x2e2374
2f9df2  48 8d 4d a0                    lea    rcx,[rbp-0x60]
2f9df6  e8 5d 9d fe ff                 call   0x2e3b58
2f9dfb  84 c0                          test   al,al
2f9dfd  0f 85 12 03 00 00              jne    0x2fa115
2f9e03  48 8d 55 90                    lea    rdx,[rbp-0x70]
2f9e07  f3 0f 59 f7                    mulss  xmm6,xmm7
2f9e0b  48 8d 4d a0                    lea    rcx,[rbp-0x60]
2f9e0f  e8 64 74 fe ff                 call   0x2e1278
2f9e14  48 8b c8                       mov    rcx,rax
2f9e17  48 8d 55 80                    lea    rdx,[rbp-0x80]
2f9e1b  0f 28 d6                       movaps xmm2,xmm6
2f9e1e  e8 49 58 fe ff                 call   0x2df66c
2f9e23  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2f9e28  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2f9e2d  e9 ba 02 00 00                 jmp    0x2fa0ec
2f9e32  49 8b cc                       mov    rcx,r12
2f9e35  e8 ce 10 fd ff                 call   0x2caf08
2f9e3a  84 c0                          test   al,al
2f9e3c  0f 84 f0 00 00 00              je     0x2f9f32
2f9e42  48 8b cb                       mov    rcx,rbx
2f9e45  e8 e6 77 07 00                 call   0x371630
2f9e4a  48 8b c8                       mov    rcx,rax
2f9e4d  48 8b d8                       mov    rbx,rax
2f9e50  e8 b3 10 fd ff                 call   0x2caf08
2f9e55  84 c0                          test   al,al
2f9e57  0f 84 d6 02 00 00              je     0x2fa133
2f9e5d  48 8b cb                       mov    rcx,rbx
2f9e60  e8 57 8c 07 00                 call   0x372abc
2f9e65  48 8b c8                       mov    rcx,rax
2f9e68  e8 9b 10 fd ff                 call   0x2caf08
2f9e6d  84 c0                          test   al,al
2f9e6f  0f 84 be 02 00 00              je     0x2fa133
2f9e75  44 38 2d 6c de 0d 00           cmp    BYTE PTR [rip+0xdde6c],r13b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
2f9e7c  74 12                          je     0x2f9e90
2f9e7e  f3 0f 10 35 22 e2 0d 00        movss  xmm6,DWORD PTR [rip+0xde222]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
2f9e86  f3 0f 5d 35 6a 3c f9 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff93c6a]        # 0x28daf8
2f9e8e  eb 08                          jmp    0x2f9e98
2f9e90  f3 0f 10 35 bc 33 f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff933bc]        # 0x28d254 ; f32=1
2f9e98  48 8b 0d 79 b8 0e 00           mov    rcx,QWORD PTR [rip+0xeb879]        # 0x3e5718
2f9e9f  48 85 c9                       test   rcx,rcx
2f9ea2  0f 84 26 04 00 00              je     0x2fa2ce
2f9ea8  f2 0f 10 05 98 d3 0d 00        movsd  xmm0,QWORD PTR [rip+0xdd398]        # 0x3d7248
2f9eb0  4c 8d 4d 80                    lea    r9,[rbp-0x80]
2f9eb4  8b 05 96 d3 0d 00              mov    eax,DWORD PTR [rip+0xdd396]        # 0x3d7250
2f9eba  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2f9ebf  f3 0f 10 7b 40                 movss  xmm7,DWORD PTR [rbx+0x40]
2f9ec4  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2f9ec9  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
2f9ece  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2f9ed4  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
2f9ed7  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2f9edb  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2f9ee1  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2f9ee6  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2f9eea  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
2f9eed  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2f9ef2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2f9ef7  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2f9efd  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2f9f01  e8 6e 84 fe ff                 call   0x2e2374
2f9f06  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2f9f0b  e8 48 9c fe ff                 call   0x2e3b58
2f9f10  84 c0                          test   al,al
2f9f12  0f 85 fd 01 00 00              jne    0x2fa115
2f9f18  48 8d 55 90                    lea    rdx,[rbp-0x70]
2f9f1c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2f9f21  e8 52 73 fe ff                 call   0x2e1278
2f9f26  f3 0f 59 f7                    mulss  xmm6,xmm7
2f9f2a  0f 28 d6                       movaps xmm2,xmm6
2f9f2d  e9 a5 01 00 00                 jmp    0x2fa0d7
2f9f32  48 8b cf                       mov    rcx,rdi
2f9f35  e8 ce 0f fd ff                 call   0x2caf08
2f9f3a  84 c0                          test   al,al
2f9f3c  0f 84 6e 03 00 00              je     0x2fa2b0
2f9f42  48 8b cb                       mov    rcx,rbx
2f9f45  e8 02 76 07 00                 call   0x37154c
2f9f4a  48 8b c8                       mov    rcx,rax
2f9f4d  4c 8b f0                       mov    r14,rax
2f9f50  e8 b3 0f fd ff                 call   0x2caf08
2f9f55  84 c0                          test   al,al
2f9f57  0f 84 d6 01 00 00              je     0x2fa133
2f9f5d  48 8b cf                       mov    rcx,rdi
2f9f60  e8 d3 19 07 00                 call   0x36b938
2f9f65  48 8b c8                       mov    rcx,rax
2f9f68  48 8b d8                       mov    rbx,rax
2f9f6b  e8 98 0f fd ff                 call   0x2caf08
2f9f70  84 c0                          test   al,al
2f9f72  0f 84 bb 01 00 00              je     0x2fa133
2f9f78  48 8b cb                       mov    rcx,rbx
2f9f7b  e8 3c 8b 07 00                 call   0x372abc
2f9f80  48 8b c8                       mov    rcx,rax
2f9f83  e8 80 0f fd ff                 call   0x2caf08
2f9f88  84 c0                          test   al,al
2f9f8a  0f 84 a3 01 00 00              je     0x2fa133
2f9f90  f3 44 0f 10 87 ac 03 00 00     movss  xmm8,DWORD PTR [rdi+0x3ac]
2f9f99  49 8b ce                       mov    rcx,r14
2f9f9c  e8 7b 86 07 00                 call   0x37261c
2f9fa1  3d 71 3d b7 34                 cmp    eax,0x34b73d71
2f9fa6  75 0c                          jne    0x2f9fb4
2f9fa8  48 8b cf                       mov    rcx,rdi
2f9fab  e8 54 15 07 00                 call   0x36b504
2f9fb0  44 0f 28 c0                    movaps xmm8,xmm0
2f9fb4  48 8b cf                       mov    rcx,rdi
2f9fb7  e8 9c 17 07 00                 call   0x36b758
2f9fbc  0f 2f 05 0d 42 f9 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff9420d]        # 0x28e1d0 ; f32=1.3
2f9fc3  8a 05 6f a2 0e 00              mov    al,BYTE PTR [rip+0xea26f]        # 0x3e4238
2f9fc9  73 45                          jae    0x2fa010
2f9fcb  44 38 2d 2f e3 0d 00           cmp    BYTE PTR [rip+0xde32f],r13b        # 0x3d8301
2f9fd2  74 0e                          je     0x2f9fe2
2f9fd4  84 c0                          test   al,al
2f9fd6  74 0a                          je     0x2f9fe2
2f9fd8  f3 0f 10 35 a4 c0 0e 00        movss  xmm6,DWORD PTR [rip+0xec0a4]        # 0x3e6084
2f9fe0  eb 24                          jmp    0x2fa006
2f9fe2  44 38 2d cf df 0d 00           cmp    BYTE PTR [rip+0xddfcf],r13b        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
2f9fe9  74 0a                          je     0x2f9ff5
2f9feb  f3 0f 10 35 05 3b f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff93b05]        # 0x28daf8 ; f32=1.495
2f9ff3  eb 23                          jmp    0x2fa018
2f9ff5  44 38 2d ec dc 0d 00           cmp    BYTE PTR [rip+0xddcec],r13b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
2f9ffc  74 12                          je     0x2fa010
2f9ffe  f3 0f 10 35 a2 e0 0d 00        movss  xmm6,DWORD PTR [rip+0xde0a2]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
2fa006  f3 0f 5d 35 ea 3a f9 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff93aea]        # 0x28daf8
2fa00e  eb 08                          jmp    0x2fa018
2fa010  f3 0f 10 35 3c 32 f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff9323c]        # 0x28d254 ; f32=1
2fa018  0f 2e 05 2d 32 f9 ff           ucomiss xmm0,DWORD PTR [rip+0xfffffffffff9322d]        # 0x28d24c
2fa01f  7a 02                          jp     0x2fa023
2fa021  74 13                          je     0x2fa036
2fa023  84 c0                          test   al,al
2fa025  75 0f                          jne    0x2fa036
2fa027  48 8b cf                       mov    rcx,rdi
2fa02a  e8 29 17 07 00                 call   0x36b758
2fa02f  f3 0f 59 c6                    mulss  xmm0,xmm6
2fa033  0f 28 f0                       movaps xmm6,xmm0
2fa036  48 8b 0d db b6 0e 00           mov    rcx,QWORD PTR [rip+0xeb6db]        # 0x3e5718
2fa03d  48 85 c9                       test   rcx,rcx
2fa040  0f 84 88 02 00 00              je     0x2fa2ce
2fa046  f2 0f 10 05 fa d1 0d 00        movsd  xmm0,QWORD PTR [rip+0xdd1fa]        # 0x3d7248
2fa04e  4c 8d 4d 80                    lea    r9,[rbp-0x80]
2fa052  8b 05 f8 d1 0d 00              mov    eax,DWORD PTR [rip+0xdd1f8]        # 0x3d7250
2fa058  4c 8d 44 24 70                 lea    r8,[rsp+0x70]
2fa05d  f3 0f 10 7b 44                 movss  xmm7,DWORD PTR [rbx+0x44]
2fa062  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2fa067  f3 44 0f 10 4b 40              movss  xmm9,DWORD PTR [rbx+0x40]
2fa06d  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
2fa072  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2fa078  89 45 88                       mov    DWORD PTR [rbp-0x78],eax
2fa07b  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2fa07f  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2fa085  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2fa08a  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2fa08e  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
2fa091  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fa096  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa09b  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2fa0a1  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2fa0a5  e8 ca 82 fe ff                 call   0x2e2374
2fa0aa  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa0af  e8 a4 9a fe ff                 call   0x2e3b58
2fa0b4  84 c0                          test   al,al
2fa0b6  75 5d                          jne    0x2fa115
2fa0b8  f3 41 0f 58 f9                 addss  xmm7,xmm9
2fa0bd  48 8d 55 90                    lea    rdx,[rbp-0x70]
2fa0c1  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa0c6  f3 41 0f 59 f8                 mulss  xmm7,xmm8
2fa0cb  f3 0f 59 fe                    mulss  xmm7,xmm6
2fa0cf  e8 a4 71 fe ff                 call   0x2e1278
2fa0d4  0f 28 d7                       movaps xmm2,xmm7
2fa0d7  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2fa0dc  48 8b c8                       mov    rcx,rax
2fa0df  e8 88 55 fe ff                 call   0x2df66c
2fa0e4  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa0e8  4c 8d 45 b0                    lea    r8,[rbp-0x50]
2fa0ec  48 8b c8                       mov    rcx,rax
2fa0ef  e8 14 56 fe ff                 call   0x2df708
2fa0f4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa0f8  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2fa0fe  8b 48 08                       mov    ecx,DWORD PTR [rax+0x8]
2fa101  89 4c 24 38                    mov    DWORD PTR [rsp+0x38],ecx
2fa105  f2 0f 11 05 43 bf 0e 00        movsd  QWORD PTR [rip+0xebf43],xmm0        # 0x3e6050
2fa10d  89 0d 45 bf 0e 00              mov    DWORD PTR [rip+0xebf45],ecx        # 0x3e6058
2fa113  eb 1e                          jmp    0x2fa133
2fa115  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2fa119  e8 9e da 0c 00                 call   0x3c7bbc
2fa11e  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa122  f2 0f 11 05 26 bf 0e 00        movsd  QWORD PTR [rip+0xebf26],xmm0        # 0x3e6050
2fa12a  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa12d  89 05 25 bf 0e 00              mov    DWORD PTR [rip+0xebf25],eax        # 0x3e6058
2fa133  44 38 2d ee d7 0e 00           cmp    BYTE PTR [rip+0xed7ee],r13b        # 0x3e7928 ; CONFIG Bools.Aimbot value(+0x48)
2fa13a  0f 84 8e 01 00 00              je     0x2fa2ce
2fa140  44 38 2d 31 dd 0d 00           cmp    BYTE PTR [rip+0xddd31],r13b        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
2fa147  0f 85 81 01 00 00              jne    0x2fa2ce
2fa14d  44 38 2d 4c d1 0d 00           cmp    BYTE PTR [rip+0xdd14c],r13b        # 0x3d72a0
2fa154  0f 84 74 01 00 00              je     0x2fa2ce
2fa15a  48 8b ce                       mov    rcx,rsi
2fa15d  e8 d6 f5 06 00                 call   0x369738
2fa162  48 8b c8                       mov    rcx,rax
2fa165  48 8b d8                       mov    rbx,rax
2fa168  e8 9b 0d fd ff                 call   0x2caf08
2fa16d  84 c0                          test   al,al
2fa16f  0f 84 59 01 00 00              je     0x2fa2ce
2fa175  f2 0f 10 43 44                 movsd  xmm0,QWORD PTR [rbx+0x44]
2fa17a  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2fa17f  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2fa183  f2 0f 11 45 78                 movsd  QWORD PTR [rbp+0x78],xmm0
2fa188  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa18d  e8 2a df ff ff                 call   0x2f80bc
2fa192  48 8b c8                       mov    rcx,rax
2fa195  4c 8d 45 78                    lea    r8,[rbp+0x78]
2fa199  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa19d  e8 fa 54 fe ff                 call   0x2df69c
2fa1a2  48 8d 4d a0                    lea    rcx,[rbp-0x60]
2fa1a6  e8 25 ce 01 00                 call   0x316fd0
2fa1ab  4c 8d 45 a0                    lea    r8,[rbp-0x60]
2fa1af  48 8d 55 70                    lea    rdx,[rbp+0x70]
2fa1b3  48 8d 4d 78                    lea    rcx,[rbp+0x78]
2fa1b7  e8 48 58 ff ff                 call   0x2efa04
2fa1bc  48 8b 4e 38                    mov    rcx,QWORD PTR [rsi+0x38]
2fa1c0  e8 43 0d fd ff                 call   0x2caf08
2fa1c5  84 c0                          test   al,al
2fa1c7  74 53                          je     0x2fa21c
2fa1c9  48 8b 4e 38                    mov    rcx,QWORD PTR [rsi+0x38]
2fa1cd  e8 82 b8 01 00                 call   0x315a54
2fa1d2  48 8b c8                       mov    rcx,rax
2fa1d5  4c 8b c0                       mov    r8,rax
2fa1d8  e8 2b 0d fd ff                 call   0x2caf08
2fa1dd  84 c0                          test   al,al
2fa1df  74 3b                          je     0x2fa21c
2fa1e1  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa1e5  49 8b c8                       mov    rcx,r8
2fa1e8  e8 b7 a8 07 00                 call   0x374aa4
2fa1ed  48 8d 55 90                    lea    rdx,[rbp-0x70]
2fa1f1  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fa1f6  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2fa1f9  f3 0f 7f 45 90                 movdqu XMMWORD PTR [rbp-0x70],xmm0
2fa1fe  e8 09 b1 01 00                 call   0x31530c
2fa203  f3 0f 10 45 74                 movss  xmm0,DWORD PTR [rbp+0x74]
2fa208  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2fa20c  f3 0f 5c 44 24 64              subss  xmm0,DWORD PTR [rsp+0x64]
2fa212  f3 0f 11 45 74                 movss  DWORD PTR [rbp+0x74],xmm0
2fa217  e8 b4 cd 01 00                 call   0x316fd0
2fa21c  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2fa220  e8 ab cd 01 00                 call   0x316fd0
2fa225  44 38 2d 0c f9 0e 00           cmp    BYTE PTR [rip+0xef90c],r13b        # 0x3e9b38 ; CONFIG Bools.usesmooth value(+0x48)
2fa22c  74 6c                          je     0x2fa29a
2fa22e  f3 0f 10 35 12 3b 0f 00        movss  xmm6,DWORD PTR [rip+0xf3b12]        # 0x3edd48 ; CONFIG F.FloatSmoothing value(+0x48)
2fa236  4c 8d 45 78                    lea    r8,[rbp+0x78]
2fa23a  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2fa23f  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2fa243  e8 54 54 fe ff                 call   0x2df69c
2fa248  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa24d  e8 7e cd 01 00                 call   0x316fd0
2fa252  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2fa257  0f 28 ce                       movaps xmm1,xmm6
2fa25a  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2fa25f  e8 b0 55 ff ff                 call   0x2ef814
2fa264  4c 8b c0                       mov    r8,rax
2fa267  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2fa26c  48 8d 4d 78                    lea    rcx,[rbp+0x78]
2fa270  e8 8f 57 ff ff                 call   0x2efa04
2fa275  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2fa279  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
2fa27d  f3 0f 11 45 70                 movss  DWORD PTR [rbp+0x70],xmm0
2fa282  f3 0f 10 48 04                 movss  xmm1,DWORD PTR [rax+0x4]
2fa287  f3 0f 11 4d 74                 movss  DWORD PTR [rbp+0x74],xmm1
2fa28c  e8 3f cd 01 00                 call   0x316fd0
2fa291  48 8d 4d 70                    lea    rcx,[rbp+0x70]
2fa295  e8 4e e2 ff ff                 call   0x2f84e8
2fa29a  f3 0f 10 45 70                 movss  xmm0,DWORD PTR [rbp+0x70]
2fa29f  f3 0f 10 4d 74                 movss  xmm1,DWORD PTR [rbp+0x74]
2fa2a4  f3 0f 11 43 44                 movss  DWORD PTR [rbx+0x44],xmm0
2fa2a9  f3 0f 11 4b 48                 movss  DWORD PTR [rbx+0x48],xmm1
2fa2ae  eb 1e                          jmp    0x2fa2ce
2fa2b0  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2fa2b4  e8 03 d9 0c 00                 call   0x3c7bbc
2fa2b9  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa2bd  f2 0f 11 05 8b bd 0e 00        movsd  QWORD PTR [rip+0xebd8b],xmm0        # 0x3e6050
2fa2c5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa2c8  89 05 8a bd 0e 00              mov    DWORD PTR [rip+0xebd8a],eax        # 0x3e6058
2fa2ce  4c 8d 9c 24 20 01 00 00        lea    r11,[rsp+0x120]
2fa2d6  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
2fa2da  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2fa2df  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2fa2e4  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2fa2e9  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
2fa2ee  49 8b e3                       mov    rsp,r11
2fa2f1  41 5f                          pop    r15
2fa2f3  41 5e                          pop    r14
2fa2f5  41 5d                          pop    r13
2fa2f7  41 5c                          pop    r12
2fa2f9  5f                             pop    rdi
2fa2fa  5e                             pop    rsi
2fa2fb  5d                             pop    rbp
2fa2fc  c3                             ret

; pdata function 0x319024..0x3192da unwind=0x3d2ef0
319024  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
319029  55                             push   rbp
31902a  56                             push   rsi
31902b  57                             push   rdi
31902c  48 83 ec 50                    sub    rsp,0x50
319030  48 8b ca                       mov    rcx,rdx
319033  0f 29 74 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm6
319038  48 8b f2                       mov    rsi,rdx
31903b  e8 c8 1e fb ff                 call   0x2caf08
319040  33 ed                          xor    ebp,ebp
319042  84 c0                          test   al,al
319044  0f 84 7e 02 00 00              je     0x3192c8
31904a  48 8b ca                       mov    rcx,rdx
31904d  e8 4a 7e fc ff                 call   0x2e0e9c
319052  84 c0                          test   al,al
319054  0f 84 6e 02 00 00              je     0x3192c8
31905a  48 8b ce                       mov    rcx,rsi
31905d  e8 22 fa 04 00                 call   0x368a84
319062  48 8b c8                       mov    rcx,rax
319065  48 8b f8                       mov    rdi,rax
319068  e8 9b 1e fb ff                 call   0x2caf08
31906d  84 c0                          test   al,al
31906f  0f 84 53 02 00 00              je     0x3192c8
319075  48 8b cf                       mov    rcx,rdi
319078  e8 37 91 05 00                 call   0x3721b4
31907d  48 8b c8                       mov    rcx,rax
319080  48 8b d0                       mov    rdx,rax
319083  e8 80 1e fb ff                 call   0x2caf08
319088  84 c0                          test   al,al
31908a  74 10                          je     0x31909c
31908c  40 38 2d 65 04 0d 00           cmp    BYTE PTR [rip+0xd0465],bpl        # 0x3e94f8 ; CONFIG Bools.nomeleeslow value(+0x48)
319093  74 07                          je     0x31909c
319095  40 88 aa c1 03 00 00           mov    BYTE PTR [rdx+0x3c1],bpl
31909c  40 38 2d 25 07 0d 00           cmp    BYTE PTR [rip+0xd0725],bpl        # 0x3e97c8 ; CONFIG Bools.eokatap value(+0x48)
3190a3  75 0d                          jne    0x3190b2
3190a5  40 38 2d ec bf 0c 00           cmp    BYTE PTR [rip+0xcbfec],bpl        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
3190ac  0f 84 a3 00 00 00              je     0x319155
3190b2  48 8b cf                       mov    rcx,rdi
3190b5  e8 9a c9 fc ff                 call   0x2e5a54
3190ba  48 8b c8                       mov    rcx,rax
3190bd  48 8b d0                       mov    rdx,rax
3190c0  e8 43 1e fb ff                 call   0x2caf08
3190c5  84 c0                          test   al,al
3190c7  0f 84 88 00 00 00              je     0x319155
3190cd  48 8b ca                       mov    rcx,rdx
3190d0  e8 7f d2 fb ff                 call   0x2d6354
3190d5  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
3190da  48 8b d8                       mov    rbx,rax
3190dd  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
3190e5  e8 9e 8e fd ff                 call   0x2f1f88 ; STRING getter=0x2f1f88 FlintStrikeWeapon
3190ea  48 8b c8                       mov    rcx,rax
3190ed  e8 ea 0a fd ff                 call   0x2e9bdc
3190f2  48 8b c8                       mov    rcx,rax
3190f5  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
3190ff  e8 48 ca fc ff                 call   0x2e5b4c
319104  48 3b d8                       cmp    rbx,rax
319107  75 4c                          jne    0x319155
319109  8b 05 59 59 0d 00              mov    eax,DWORD PTR [rip+0xd5959]        # 0x3eea68 ; CONFIG i.EokaIndex value(+0x48)
31910f  83 f8 01                       cmp    eax,0x1
319112  74 30                          je     0x319144
319114  40 38 2d 7d bf 0c 00           cmp    BYTE PTR [rip+0xcbf7d],bpl        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
31911b  75 27                          jne    0x319144
31911d  85 c0                          test   eax,eax
31911f  75 12                          jne    0x319133
319121  f3 0f 10 05 bf 47 0d 00        movss  xmm0,DWORD PTR [rip+0xd47bf]        # 0x3ed8e8 ; CONFIG F.SuccessRate value(+0x48)
319129  f3 0f 11 87 d8 04 00 00        movss  DWORD PTR [rdi+0x4d8],xmm0
319131  eb 22                          jmp    0x319155
319133  83 f8 02                       cmp    eax,0x2
319136  75 1d                          jne    0x319155
319138  c7 87 d8 04 00 00 00 3c 1c c6  mov    DWORD PTR [rdi+0x4d8],0xc61c3c00
319142  eb 11                          jmp    0x319155
319144  c7 87 d8 04 00 00 00 00 80 3f  mov    DWORD PTR [rdi+0x4d8],0x3f800000
31914e  c6 87 e8 04 00 00 01           mov    BYTE PTR [rdi+0x4e8],0x1
319155  40 38 2d 45 f1 0b 00           cmp    BYTE PTR [rip+0xbf145],bpl        # 0x3d82a1
31915c  75 12                          jne    0x319170
31915e  40 38 2d a3 0c 0d 00           cmp    BYTE PTR [rip+0xd0ca3],bpl        # 0x3e9e08 ; CONFIG Bools.noweaponbob value(+0x48)
319165  75 09                          jne    0x319170
319167  40 38 2d 33 6a 0d 00           cmp    BYTE PTR [rip+0xd6a33],bpl        # 0x3efba1
31916e  74 5d                          je     0x3191cd
319170  48 8b cf                       mov    rcx,rdi
319173  e8 4c 83 05 00                 call   0x3714c4
319178  48 8b c8                       mov    rcx,rax
31917b  48 8b d0                       mov    rdx,rax
31917e  e8 85 1d fb ff                 call   0x2caf08
319183  84 c0                          test   al,al
319185  74 46                          je     0x3191cd
319187  48 8b 92 18 02 00 00           mov    rdx,QWORD PTR [rdx+0x218]
31918e  48 8b ca                       mov    rcx,rdx
319191  e8 72 1d fb ff                 call   0x2caf08
319196  84 c0                          test   al,al
319198  0f 84 2a 01 00 00              je     0x3192c8
31919e  48 8b 52 28                    mov    rdx,QWORD PTR [rdx+0x28]
3191a2  48 8b ca                       mov    rcx,rdx
3191a5  e8 5e 1d fb ff                 call   0x2caf08
3191aa  84 c0                          test   al,al
3191ac  0f 84 16 01 00 00              je     0x3192c8
3191b2  48 8b 92 f0 00 00 00           mov    rdx,QWORD PTR [rdx+0xf0]
3191b9  48 8b ca                       mov    rcx,rdx
3191bc  e8 47 1d fb ff                 call   0x2caf08
3191c1  84 c0                          test   al,al
3191c3  0f 84 ff 00 00 00              je     0x3192c8
3191c9  66 89 6a 20                    mov    WORD PTR [rdx+0x20],bp
3191cd  48 8b cf                       mov    rcx,rdi
3191d0  e8 8f 82 05 00                 call   0x371464
3191d5  48 8b c8                       mov    rcx,rax
3191d8  48 8b d8                       mov    rbx,rax
3191db  e8 28 1d fb ff                 call   0x2caf08
3191e0  84 c0                          test   al,al
3191e2  0f 84 e0 00 00 00              je     0x3192c8
3191e8  8a 15 13 6a 0d 00              mov    dl,BYTE PTR [rip+0xd6a13]        # 0x3efc01
3191ee  4c 8b c6                       mov    r8,rsi
3191f1  48 8b cb                       mov    rcx,rbx
3191f4  e8 1b 2a 05 00                 call   0x36bc14
3191f9  48 8b cb                       mov    rcx,rbx
3191fc  e8 67 e4 04 00                 call   0x367668
319201  48 8d 94 24 80 00 00 00        lea    rdx,[rsp+0x80]
319209  89 84 24 80 00 00 00           mov    DWORD PTR [rsp+0x80],eax
319210  48 8d 0d f9 cc 0c 00           lea    rcx,[rip+0xcccf9]        # 0x3e5f10
319217  e8 08 65 fd ff                 call   0x2ef724
31921c  48 8b f8                       mov    rdi,rax
31921f  48 85 c0                       test   rax,rax
319222  74 79                          je     0x31929d
319224  40 38 2d 4d 05 0d 00           cmp    BYTE PTR [rip+0xd054d],bpl        # 0x3e9778 ; CONFIG Bools.fastfire value(+0x48)
31922b  f3 0f 10 05 c5 45 0d 00        movss  xmm0,DWORD PTR [rip+0xd45c5]        # 0x3ed7f8 ; CONFIG F.ViewValue value(+0x48)
319233  f3 0f 5c 05 8d 4f f7 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff74f8d]        # 0x28e1c8 ; f32=0.3
31923b  f3 0f 10 35 11 40 f7 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff74011]        # 0x28d254 ; f32=1
319243  c7 84 24 88 00 00 00 00 00 80 3f mov    DWORD PTR [rsp+0x88],0x3f800000
31924e  89 6c 24 20                    mov    DWORD PTR [rsp+0x20],ebp
319252  f3 0f 5e 05 72 9e f7 ff        divss  xmm0,DWORD PTR [rip+0xfffffffffff79e72]        # 0x2930cc ; f32=0.7
31925a  f3 0f 11 44 24 24              movss  DWORD PTR [rsp+0x24],xmm0
319260  74 2e                          je     0x319290
319262  4c 8d 84 24 88 00 00 00        lea    r8,[rsp+0x88]
31926a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
31926f  48 8d 4c 24 24                 lea    rcx,[rsp+0x24]
319274  e8 33 40 fd ff                 call   0x2ed2ac
319279  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
31927d  f3 0f 59 05 47 9e f7 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff79e47]        # 0x2930cc ; f32=0.7
319285  f3 0f 5c f0                    subss  xmm6,xmm0
319289  f3 0f 59 77 10                 mulss  xmm6,DWORD PTR [rdi+0x10]
31928e  eb 05                          jmp    0x319295
319290  f3 0f 10 70 10                 movss  xmm6,DWORD PTR [rax+0x10]
319295  f3 0f 11 b3 04 03 00 00        movss  DWORD PTR [rbx+0x304],xmm6
31929d  40 38 2d 84 04 0d 00           cmp    BYTE PTR [rip+0xd0484],bpl        # 0x3e9728 ; CONFIG Bools.fullauto value(+0x48)
3192a4  75 09                          jne    0x3192af
3192a6  40 38 2d eb bd 0c 00           cmp    BYTE PTR [rip+0xcbdeb],bpl        # 0x3e5098 ; CONFIG Bools.AutoFire value(+0x48)
3192ad  74 08                          je     0x3192b7
3192af  48 8b cb                       mov    rcx,rbx
3192b2  e8 7d 21 05 00                 call   0x36b434
3192b7  40 38 2d 1a 04 0d 00           cmp    BYTE PTR [rip+0xd041a],bpl        # 0x3e96d8 ; CONFIG Bools.NoSway value(+0x48)
3192be  74 08                          je     0x3192c8
3192c0  48 8b cb                       mov    rcx,rbx
3192c3  e8 d4 2b 05 00                 call   0x36be9c
3192c8  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
3192cd  0f 28 74 24 40                 movaps xmm6,XMMWORD PTR [rsp+0x40]
3192d2  48 83 c4 50                    add    rsp,0x50
3192d6  5f                             pop    rdi
3192d7  5e                             pop    rsi
3192d8  5d                             pop    rbp
3192d9  c3                             ret

