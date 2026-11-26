; pdata function 0x314bb4..0x314f08 unwind=0x3d3228
314bb4  48 8b c4                       mov    rax,rsp
314bb7  88 48 08                       mov    BYTE PTR [rax+0x8],cl
314bba  55                             push   rbp
314bbb  53                             push   rbx
314bbc  56                             push   rsi
314bbd  57                             push   rdi
314bbe  41 54                          push   r12
314bc0  41 55                          push   r13
314bc2  41 56                          push   r14
314bc4  41 57                          push   r15
314bc6  48 8d 68 a1                    lea    rbp,[rax-0x5f]
314bca  48 81 ec f8 00 00 00           sub    rsp,0xf8
314bd1  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
314bd5  33 f6                          xor    esi,esi
314bd7  89 75 6f                       mov    DWORD PTR [rbp+0x6f],esi
314bda  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
314bde  e8 b9 ba fc ff                 call   0x2e069c
314be3  48 8b c8                       mov    rcx,rax
314be6  4c 8b e8                       mov    r13,rax
314be9  e8 1a 63 fb ff                 call   0x2caf08
314bee  84 c0                          test   al,al
314bf0  0f 84 ee 02 00 00              je     0x314ee4
314bf6  e8 a1 8e fc ff                 call   0x2dda9c
314bfb  48 8b c8                       mov    rcx,rax
314bfe  4c 8b f8                       mov    r15,rax
314c01  e8 02 63 fb ff                 call   0x2caf08
314c06  84 c0                          test   al,al
314c08  0f 84 d6 02 00 00              je     0x314ee4
314c0e  48 8d 55 87                    lea    rdx,[rbp-0x79]
314c12  c7 45 6f 0f 27 00 00           mov    DWORD PTR [rbp+0x6f],0x270f
314c19  48 8d 0d b0 3b f0 ff           lea    rcx,[rip+0xfffffffffff03bb0]        # 0x2187d0
314c20  45 33 e4                       xor    r12d,r12d
314c23  e8 d4 ee fc ff                 call   0x2e3afc
314c28  48 8b c8                       mov    rcx,rax
314c2b  48 8b d8                       mov    rbx,rax
314c2e  e8 45 cd fb ff                 call   0x2d1978
314c33  48 8b cb                       mov    rcx,rbx
314c36  48 8b f8                       mov    rdi,rax
314c39  e8 82 2d fc ff                 call   0x2d79c0
314c3e  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
314c43  48 3b f8                       cmp    rdi,rax
314c46  0f 84 8a 02 00 00              je     0x314ed6
314c4c  48 8b 1f                       mov    rbx,QWORD PTR [rdi]
314c4f  48 8b cb                       mov    rcx,rbx
314c52  e8 b1 62 fb ff                 call   0x2caf08
314c57  84 c0                          test   al,al
314c59  0f 84 68 02 00 00              je     0x314ec7
314c5f  80 7f 08 00                    cmp    BYTE PTR [rdi+0x8],0x0
314c63  0f 85 5e 02 00 00              jne    0x314ec7
314c69  48 8b cb                       mov    rcx,rbx
314c6c  e8 2b c2 fc ff                 call   0x2e0e9c
314c71  84 c0                          test   al,al
314c73  0f 84 4e 02 00 00              je     0x314ec7
314c79  33 d2                          xor    edx,edx
314c7b  48 8b cb                       mov    rcx,rbx
314c7e  e8 41 62 05 00                 call   0x36aec4
314c83  84 c0                          test   al,al
314c85  0f 84 3c 02 00 00              je     0x314ec7
314c8b  49 3b df                       cmp    rbx,r15
314c8e  0f 84 33 02 00 00              je     0x314ec7
314c94  41 b8 35 00 00 00              mov    r8d,0x35
314c9a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
314c9f  48 8b cb                       mov    rcx,rbx
314ca2  e8 41 3f 05 00                 call   0x368be8
314ca7  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
314cac  e8 0b 2f 0b 00                 call   0x3c7bbc
314cb1  48 8b d0                       mov    rdx,rax
314cb4  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
314cb9  e8 f2 a8 fc ff                 call   0x2df5b0
314cbe  84 c0                          test   al,al
314cc0  0f 85 01 02 00 00              jne    0x314ec7
314cc6  48 8b cb                       mov    rcx,rbx
314cc9  e8 96 4a 05 00                 call   0x369764
314cce  48 8b c8                       mov    rcx,rax
314cd1  e8 32 62 fb ff                 call   0x2caf08
314cd6  84 c0                          test   al,al
314cd8  0f 84 e9 01 00 00              je     0x314ec7
314cde  33 d2                          xor    edx,edx
314ce0  48 8b cb                       mov    rcx,rbx
314ce3  e8 44 86 fb ff                 call   0x2cd32c
314ce8  33 d2                          xor    edx,edx
314cea  49 8b cf                       mov    rcx,r15
314ced  4c 8b f0                       mov    r14,rax
314cf0  e8 37 86 fb ff                 call   0x2cd32c
314cf5  4d 85 f6                       test   r14,r14
314cf8  74 0a                          je     0x314d04
314cfa  4c 3b f0                       cmp    r14,rax
314cfd  75 05                          jne    0x314d04
314cff  41 b6 01                       mov    r14b,0x1
314d02  eb 03                          jmp    0x314d07
314d04  45 32 f6                       xor    r14b,r14b
314d07  45 33 c0                       xor    r8d,r8d
314d0a  48 8d 55 cf                    lea    rdx,[rbp-0x31]
314d0e  48 8b cb                       mov    rcx,rbx
314d11  83 ce 01                       or     esi,0x1
314d14  e8 57 51 05 00                 call   0x369e70
314d19  48 8b d0                       mov    rdx,rax
314d1c  48 8d 0d 3d 25 0c 00           lea    rcx,[rip+0xc253d]        # 0x3d7260
314d23  e8 e0 a8 fc ff                 call   0x2df608
314d28  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
314d2c  74 05                          je     0x314d33
314d2e  45 84 f6                       test   r14b,r14b
314d31  74 03                          je     0x314d36
314d33  41 b6 01                       mov    r14b,0x1
314d36  48 8d 4d cf                    lea    rcx,[rbp-0x31]
314d3a  83 e6 fe                       and    esi,0xfffffffe
314d3d  e8 b2 77 fb ff                 call   0x2cc4f4
314d42  45 84 f6                       test   r14b,r14b
314d45  74 2c                          je     0x314d73
314d47  41 b8 04 00 00 00              mov    r8d,0x4
314d4d  48 8d 55 9f                    lea    rdx,[rbp-0x61]
314d51  48 8d 0d 80 b4 0d 00           lea    rcx,[rip+0xdb480]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
314d58  e8 93 4b fd ff                 call   0x2e98f0
314d5d  48 8b c8                       mov    rcx,rax
314d60  e8 0b 00 fc ff                 call   0x2d4d70
314d65  84 c0                          test   al,al
314d67  74 0a                          je     0x314d73
314d69  80 7d 67 00                    cmp    BYTE PTR [rbp+0x67],0x0
314d6d  0f 84 54 01 00 00              je     0x314ec7
314d73  48 8b cb                       mov    rcx,rbx
314d76  e8 fd 53 05 00                 call   0x36a178
314d7b  84 c0                          test   al,al
314d7d  74 30                          je     0x314daf
314d7f  41 b8 05 00 00 00              mov    r8d,0x5
314d85  48 8d 55 af                    lea    rdx,[rbp-0x51]
314d89  48 8d 0d 48 b4 0d 00           lea    rcx,[rip+0xdb448]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
314d90  e8 5b 4b fd ff                 call   0x2e98f0
314d95  48 8b c8                       mov    rcx,rax
314d98  e8 d3 ff fb ff                 call   0x2d4d70
314d9d  84 c0                          test   al,al
314d9f  0f 85 22 01 00 00              jne    0x314ec7
314da5  66 0f 6e 3d eb 33 0c 00        movd   xmm7,DWORD PTR [rip+0xc33eb]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
314dad  eb 08                          jmp    0x314db7
314daf  66 0f 6e 3d 91 33 0c 00        movd   xmm7,DWORD PTR [rip+0xc3391]        # 0x3d8148 ; CONFIG i.PlayerMaxDistance value(+0x48)
314db7  33 d2                          xor    edx,edx
314db9  48 8b cb                       mov    rcx,rbx
314dbc  0f 5b ff                       cvtdq2ps xmm7,xmm7
314dbf  e8 48 54 05 00                 call   0x36a20c
314dc4  84 c0                          test   al,al
314dc6  74 26                          je     0x314dee
314dc8  41 b8 06 00 00 00              mov    r8d,0x6
314dce  48 8d 55 bf                    lea    rdx,[rbp-0x41]
314dd2  48 8d 0d ff b3 0d 00           lea    rcx,[rip+0xdb3ff]        # 0x3f01d8 ; CONFIG VectorBools.hotbarOptions value(+0x48)
314dd9  e8 12 4b fd ff                 call   0x2e98f0
314dde  48 8b c8                       mov    rcx,rax
314de1  e8 8a ff fb ff                 call   0x2d4d70
314de6  84 c0                          test   al,al
314de8  0f 85 d9 00 00 00              jne    0x314ec7
314dee  48 8d 4d 77                    lea    rcx,[rbp+0x77]
314df2  e8 ad 65 fb ff                 call   0x2cb3a4
314df7  f2 0f 10 44 24 20              movsd  xmm0,QWORD PTR [rsp+0x20]
314dfd  4c 8d 0d a4 24 0c 00           lea    r9,[rip+0xc24a4]        # 0x3d72a8
314e04  8b 44 24 28                    mov    eax,DWORD PTR [rsp+0x28]
314e08  4c 8d 45 77                    lea    r8,[rbp+0x77]
314e0c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
314e11  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
314e17  49 8b cd                       mov    rcx,r13
314e1a  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
314e1e  e8 fd 7e 05 00                 call   0x36cd20
314e23  84 c0                          test   al,al
314e25  0f 84 9c 00 00 00              je     0x314ec7
314e2b  e8 c0 bc fc ff                 call   0x2e0af0
314e30  66 0f 6e f0                    movd   xmm6,eax
314e34  0f 5b f6                       cvtdq2ps xmm6,xmm6
314e37  f3 0f 59 35 11 84 f7 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff78411]        # 0x28d250 ; f32=0.5
314e3f  e8 ac bb fc ff                 call   0x2e09f0
314e44  0f 28 ce                       movaps xmm1,xmm6
314e47  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
314e4b  66 0f 6e d0                    movd   xmm2,eax
314e4f  0f 5b d2                       cvtdq2ps xmm2,xmm2
314e52  f3 0f 59 15 f6 83 f7 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff783f6]        # 0x28d250 ; f32=0.5
314e5a  e8 e1 74 fb ff                 call   0x2cc340
314e5f  f3 0f 10 85 83 00 00 00        movss  xmm0,DWORD PTR [rbp+0x83]
314e67  41 be 02 00 00 00              mov    r14d,0x2
314e6d  f3 0f 5c 45 7b                 subss  xmm0,DWORD PTR [rbp+0x7b]
314e72  41 8b d6                       mov    edx,r14d
314e75  e8 d6 ed fc ff                 call   0x2e3c50
314e7a  0f 28 f0                       movaps xmm6,xmm0
314e7d  41 8b d6                       mov    edx,r14d
314e80  f3 0f 10 45 7f                 movss  xmm0,DWORD PTR [rbp+0x7f]
314e85  f3 0f 5c 45 77                 subss  xmm0,DWORD PTR [rbp+0x77]
314e8a  e8 c1 ed fc ff                 call   0x2e3c50
314e8f  f3 0f 58 f0                    addss  xmm6,xmm0
314e93  0f 28 c6                       movaps xmm0,xmm6
314e96  e8 ed ed fc ff                 call   0x2e3c88
314e9b  66 0f 6e 4d 6f                 movd   xmm1,DWORD PTR [rbp+0x6f]
314ea0  0f 5b c9                       cvtdq2ps xmm1,xmm1
314ea3  0f 2f c8                       comiss xmm1,xmm0
314ea6  76 1f                          jbe    0x314ec7
314ea8  0f 2f c7                       comiss xmm0,xmm7
314eab  77 1a                          ja     0x314ec7
314ead  66 0f 6e 0d 33 33 0c 00        movd   xmm1,DWORD PTR [rip+0xc3333]        # 0x3d81e8 ; CONFIG i.AimbotFOV value(+0x48)
314eb5  0f 5b c9                       cvtdq2ps xmm1,xmm1
314eb8  0f 2f c1                       comiss xmm0,xmm1
314ebb  77 0a                          ja     0x314ec7
314ebd  f3 0f 2c c0                    cvttss2si eax,xmm0
314ec1  4c 8b e3                       mov    r12,rbx
314ec4  89 45 6f                       mov    DWORD PTR [rbp+0x6f],eax
314ec7  48 83 c7 10                    add    rdi,0x10
314ecb  48 3b 7c 24 30                 cmp    rdi,QWORD PTR [rsp+0x30]
314ed0  0f 85 76 fd ff ff              jne    0x314c4c
314ed6  48 8d 4d 87                    lea    rcx,[rbp-0x79]
314eda  e8 a1 a5 fc ff                 call   0x2df480
314edf  49 8b c4                       mov    rax,r12
314ee2  eb 02                          jmp    0x314ee6
314ee4  33 c0                          xor    eax,eax
314ee6  4c 8d 9c 24 f8 00 00 00        lea    r11,[rsp+0xf8]
314eee  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
314ef3  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
314ef8  49 8b e3                       mov    rsp,r11
314efb  41 5f                          pop    r15
314efd  41 5e                          pop    r14
314eff  41 5d                          pop    r13
314f01  41 5c                          pop    r12
314f03  5f                             pop    rdi
314f04  5e                             pop    rsi
314f05  5b                             pop    rbx
314f06  5d                             pop    rbp
314f07  c3                             ret

