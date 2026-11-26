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

; pdata function 0x371c38..0x371da3 unwind=0x3d2568
371c38  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
371c3d  55                             push   rbp
371c3e  56                             push   rsi
371c3f  57                             push   rdi
371c40  48 83 ec 50                    sub    rsp,0x50
371c44  48 8b d1                       mov    rdx,rcx
371c47  e8 bc 92 f5 ff                 call   0x2caf08
371c4c  84 c0                          test   al,al
371c4e  0f 84 40 01 00 00              je     0x371d94
371c54  48 8b ca                       mov    rcx,rdx
371c57  e8 7c f9 ff ff                 call   0x3715d8
371c5c  48 8b c8                       mov    rcx,rax
371c5f  48 8b d0                       mov    rdx,rax
371c62  e8 a1 92 f5 ff                 call   0x2caf08
371c67  84 c0                          test   al,al
371c69  0f 84 25 01 00 00              je     0x371d94
371c6f  48 8b 6a 50                    mov    rbp,QWORD PTR [rdx+0x50]
371c73  48 8b cd                       mov    rcx,rbp
371c76  e8 8d 92 f5 ff                 call   0x2caf08
371c7b  84 c0                          test   al,al
371c7d  0f 84 11 01 00 00              je     0x371d94
371c83  8b 05 b7 ef 08 00              mov    eax,DWORD PTR [rip+0x8efb7]        # 0x400c40
371c89  a8 01                          test   al,0x1
371c8b  0f 85 ae 00 00 00              jne    0x371d3f
371c91  83 c8 01                       or     eax,0x1
371c94  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
371c99  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
371c9e  89 05 9c ef 08 00              mov    DWORD PTR [rip+0x8ef9c],eax        # 0x400c40
371ca4  e8 87 aa f5 ff                 call   0x2cc730
371ca9  48 8b c8                       mov    rcx,rax
371cac  e8 f3 bf f5 ff                 call   0x2cdca4
371cb1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
371cb6  48 8b f0                       mov    rsi,rax
371cb9  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
371cc1  e8 b2 f5 ff ff                 call   0x371278 ; STRING getter=0x371278 get_texture
371cc6  48 8b c8                       mov    rcx,rax
371cc9  e8 66 c1 f5 ff                 call   0x2cde34
371cce  48 8d 54 24 3c                 lea    rdx,[rsp+0x3c]
371cd3  48 8b f8                       mov    rdi,rax
371cd6  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
371cde  e8 79 f5 ff ff                 call   0x37125c ; STRING getter=0x37125c UnityEngine
371ce3  48 8b c8                       mov    rcx,rax
371ce6  e8 49 c1 f5 ff                 call   0x2cde34
371ceb  48 8d 94 24 88 00 00 00        lea    rdx,[rsp+0x88]
371cf3  48 8b d8                       mov    rbx,rax
371cf6  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
371cfe  e8 39 f5 ff ff                 call   0x37123c ; STRING getter=0x37123c Sprite
371d03  48 8b c8                       mov    rcx,rax
371d06  e8 e9 bf f5 ff                 call   0x2cdcf4
371d0b  48 8b c8                       mov    rcx,rax
371d0e  48 8b d3                       mov    rdx,rbx
371d11  e8 0e 25 fc ff                 call   0x334224
371d16  41 83 c8 ff                    or     r8d,0xffffffff
371d1a  48 8b c8                       mov    rcx,rax
371d1d  4c 8b ce                       mov    r9,rsi
371d20  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
371d25  48 8b d7                       mov    rdx,rdi
371d28  e8 7f 2c fc ff                 call   0x3349ac
371d2d  4c 8b 00                       mov    r8,QWORD PTR [rax]
371d30  8b 05 0a ef 08 00              mov    eax,DWORD PTR [rip+0x8ef0a]        # 0x400c40
371d36  4c 89 05 fb ee 08 00           mov    QWORD PTR [rip+0x8eefb],r8        # 0x400c38
371d3d  eb 07                          jmp    0x371d46
371d3f  4c 8b 05 f2 ee 08 00           mov    r8,QWORD PTR [rip+0x8eef2]        # 0x400c38
371d46  a8 02                          test   al,0x2
371d48  75 1f                          jne    0x371d69
371d4a  48 8b 0d 0f 41 06 00           mov    rcx,QWORD PTR [rip+0x6410f]        # 0x3d5e60
371d51  48 8d 15 f8 ee 08 00           lea    rdx,[rip+0x8eef8]        # 0x400c50
371d58  83 c8 02                       or     eax,0x2
371d5b  45 33 c9                       xor    r9d,r9d
371d5e  89 05 dc ee 08 00              mov    DWORD PTR [rip+0x8eedc],eax        # 0x400c40
371d64  e8 bb 9f f5 ff                 call   0x2cbd24
371d69  48 8b 0d f0 40 06 00           mov    rcx,QWORD PTR [rip+0x640f0]        # 0x3d5e60
371d70  48 8d 15 d9 ee 08 00           lea    rdx,[rip+0x8eed9]        # 0x400c50
371d77  4c 8b c5                       mov    r8,rbp
371d7a  e8 7d 9c f5 ff                 call   0x2cb9fc
371d7f  48 8b c8                       mov    rcx,rax
371d82  48 8b d0                       mov    rdx,rax
371d85  e8 7e 91 f5 ff                 call   0x2caf08
371d8a  f6 d8                          neg    al
371d8c  48 1b c0                       sbb    rax,rax
371d8f  48 23 c2                       and    rax,rdx
371d92  eb 02                          jmp    0x371d96
371d94  33 c0                          xor    eax,eax
371d96  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
371d9b  48 83 c4 50                    add    rsp,0x50
371d9f  5f                             pop    rdi
371da0  5e                             pop    rsi
371da1  5d                             pop    rbp
371da2  c3                             ret

; pdata function 0x372398..0x37261b unwind=0x3d3dc8
372398  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37239d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3723a2  55                             push   rbp
3723a3  57                             push   rdi
3723a4  41 56                          push   r14
3723a6  48 8d 6c 24 b9                 lea    rbp,[rsp-0x47]
3723ab  48 81 ec b0 00 00 00           sub    rsp,0xb0
3723b2  48 8b f2                       mov    rsi,rdx
3723b5  4c 8b f1                       mov    r14,rcx
3723b8  e8 4b 8b f5 ff                 call   0x2caf08
3723bd  84 c0                          test   al,al
3723bf  75 25                          jne    0x3723e6
3723c1  48 8d 55 77                    lea    rdx,[rbp+0x77]
3723c5  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3723c9  e8 62 a3 f5 ff                 call   0x2cc730
3723ce  48 8b c8                       mov    rcx,rax
3723d1  e8 ce b8 f5 ff                 call   0x2cdca4
3723d6  48 8b d0                       mov    rdx,rax
3723d9  48 8b ce                       mov    rcx,rsi
3723dc  e8 eb 9e f5 ff                 call   0x2cc2cc
3723e1  e9 1a 02 00 00                 jmp    0x372600
3723e6  49 8b 56 28                    mov    rdx,QWORD PTR [r14+0x28]
3723ea  48 8b ca                       mov    rcx,rdx
3723ed  e8 16 8b f5 ff                 call   0x2caf08
3723f2  84 c0                          test   al,al
3723f4  75 0f                          jne    0x372405
3723f6  48 8d 55 77                    lea    rdx,[rbp+0x77]
3723fa  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3723fe  e8 2d a3 f5 ff                 call   0x2cc730
372403  eb c9                          jmp    0x3723ce
372405  48 83 c2 14                    add    rdx,0x14
372409  48 8d 4d b7                    lea    rcx,[rbp-0x49]
37240d  e8 b6 21 f6 ff                 call   0x2d45c8
372412  48 8d 4d b7                    lea    rcx,[rbp-0x49]
372416  e8 79 62 f6 ff                 call   0x2d8694
37241b  84 c0                          test   al,al
37241d  74 25                          je     0x372444
37241f  48 8d 55 77                    lea    rdx,[rbp+0x77]
372423  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372427  e8 04 a3 f5 ff                 call   0x2cc730
37242c  48 8b c8                       mov    rcx,rax
37242f  e8 70 b8 f5 ff                 call   0x2cdca4
372434  48 8b d0                       mov    rdx,rax
372437  48 8b ce                       mov    rcx,rsi
37243a  e8 8d 9e f5 ff                 call   0x2cc2cc
37243f  e9 b3 01 00 00                 jmp    0x3725f7
372444  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
372448  48 8d 4d b7                    lea    rcx,[rbp-0x49]
37244c  e8 d7 62 f6 ff                 call   0x2d8728
372451  48 8d 55 d7                    lea    rdx,[rbp-0x29]
372455  48 8d 4d b7                    lea    rcx,[rbp-0x49]
372459  48 8b 18                       mov    rbx,QWORD PTR [rax]
37245c  e8 df 58 f6 ff                 call   0x2d7d40
372461  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372465  48 8b f8                       mov    rdi,rax
372468  e8 37 8f f5 ff                 call   0x2cb3a4
37246d  48 8b 17                       mov    rdx,QWORD PTR [rdi]
372470  48 8d 4d df                    lea    rcx,[rbp-0x21]
372474  4c 8b c8                       mov    r9,rax
372477  4c 8b c3                       mov    r8,rbx
37247a  e8 c5 c9 f5 ff                 call   0x2cee44
37247f  48 8d 4d df                    lea    rcx,[rbp-0x21]
372483  e8 64 b3 f5 ff                 call   0x2cd7ec
372488  48 8b c8                       mov    rcx,rax
37248b  e8 c4 3e f6 ff                 call   0x2d6354
372490  48 8d 55 77                    lea    rdx,[rbp+0x77]
372494  48 8b d8                       mov    rbx,rax
372497  48 8d 4d 77                    lea    rcx,[rbp+0x77]
37249b  e8 9c fe ff ff                 call   0x37233c ; STRING getter=0x37233c m16a2
3724a0  48 8b c8                       mov    rcx,rax
3724a3  e8 34 60 f6 ff                 call   0x2d84dc
3724a8  48 8b c8                       mov    rcx,rax
3724ab  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
3724b5  e8 92 36 f7 ff                 call   0x2e5b4c
3724ba  48 3b d8                       cmp    rbx,rax
3724bd  75 25                          jne    0x3724e4
3724bf  48 8d 55 77                    lea    rdx,[rbp+0x77]
3724c3  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3724c7  e8 88 fe ff ff                 call   0x372354 ; STRING getter=0x372354 M-16
3724cc  48 8b c8                       mov    rcx,rax
3724cf  e8 f8 b7 f5 ff                 call   0x2cdccc
3724d4  48 8b d0                       mov    rdx,rax
3724d7  48 8b ce                       mov    rcx,rsi
3724da  e8 ed 9d f5 ff                 call   0x2cc2cc
3724df  e9 0a 01 00 00                 jmp    0x3725ee
3724e4  49 8b 56 40                    mov    rdx,QWORD PTR [r14+0x40]
3724e8  48 8b ca                       mov    rcx,rdx
3724eb  e8 18 8a f5 ff                 call   0x2caf08
3724f0  84 c0                          test   al,al
3724f2  75 17                          jne    0x37250b
3724f4  48 8d 55 77                    lea    rdx,[rbp+0x77]
3724f8  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3724fc  e8 2f a2 f5 ff                 call   0x2cc730
372501  48 8b c8                       mov    rcx,rax
372504  e8 9b b7 f5 ff                 call   0x2cdca4
372509  eb c9                          jmp    0x3724d4
37250b  48 8b 52 20                    mov    rdx,QWORD PTR [rdx+0x20]
37250f  48 8b ca                       mov    rcx,rdx
372512  e8 f1 89 f5 ff                 call   0x2caf08
372517  84 c0                          test   al,al
372519  75 0f                          jne    0x37252a
37251b  48 8d 55 77                    lea    rdx,[rbp+0x77]
37251f  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372523  e8 08 a2 f5 ff                 call   0x2cc730
372528  eb d7                          jmp    0x372501
37252a  48 83 c2 14                    add    rdx,0x14
37252e  48 8d 4d ff                    lea    rcx,[rbp-0x1]
372532  e8 91 20 f6 ff                 call   0x2d45c8
372537  48 8d 4d ff                    lea    rcx,[rbp-0x1]
37253b  e8 54 61 f6 ff                 call   0x2d8694
372540  84 c0                          test   al,al
372542  74 22                          je     0x372566
372544  48 8d 55 77                    lea    rdx,[rbp+0x77]
372548  48 8d 4d 77                    lea    rcx,[rbp+0x77]
37254c  e8 df a1 f5 ff                 call   0x2cc730
372551  48 8b c8                       mov    rcx,rax
372554  e8 4b b7 f5 ff                 call   0x2cdca4
372559  48 8b d0                       mov    rdx,rax
37255c  48 8b ce                       mov    rcx,rsi
37255f  e8 68 9d f5 ff                 call   0x2cc2cc
372564  eb 7f                          jmp    0x3725e5
372566  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
37256a  48 8d 4d ff                    lea    rcx,[rbp-0x1]
37256e  e8 b5 61 f6 ff                 call   0x2d8728
372573  48 8d 55 d7                    lea    rdx,[rbp-0x29]
372577  48 8d 4d ff                    lea    rcx,[rbp-0x1]
37257b  48 8b 18                       mov    rbx,QWORD PTR [rax]
37257e  e8 bd 57 f6 ff                 call   0x2d7d40
372583  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372587  48 8b f8                       mov    rdi,rax
37258a  e8 15 8e f5 ff                 call   0x2cb3a4
37258f  48 8b 17                       mov    rdx,QWORD PTR [rdi]
372592  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
372596  4c 8b c8                       mov    r9,rax
372599  4c 8b c3                       mov    r8,rbx
37259c  e8 a3 c8 f5 ff                 call   0x2cee44
3725a1  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
3725a5  e8 ea 60 f6 ff                 call   0x2d8694
3725aa  84 c0                          test   al,al
3725ac  74 22                          je     0x3725d0
3725ae  48 8d 55 77                    lea    rdx,[rbp+0x77]
3725b2  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3725b6  e8 75 a1 f5 ff                 call   0x2cc730
3725bb  48 8b c8                       mov    rcx,rax
3725be  e8 e1 b6 f5 ff                 call   0x2cdca4
3725c3  48 8b d0                       mov    rdx,rax
3725c6  48 8b ce                       mov    rcx,rsi
3725c9  e8 fe 9c f5 ff                 call   0x2cc2cc
3725ce  eb 0c                          jmp    0x3725dc
3725d0  48 8d 55 1f                    lea    rdx,[rbp+0x1f]
3725d4  48 8b ce                       mov    rcx,rsi
3725d7  e8 a8 9c f5 ff                 call   0x2cc284
3725dc  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
3725e0  e8 0f 9f f5 ff                 call   0x2cc4f4
3725e5  48 8d 4d ff                    lea    rcx,[rbp-0x1]
3725e9  e8 62 24 f6 ff                 call   0x2d4a50
3725ee  48 8d 4d df                    lea    rcx,[rbp-0x21]
3725f2  e8 fd 9e f5 ff                 call   0x2cc4f4
3725f7  48 8d 4d b7                    lea    rcx,[rbp-0x49]
3725fb  e8 50 24 f6 ff                 call   0x2d4a50
372600  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
372608  48 8b c6                       mov    rax,rsi
37260b  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
37260f  49 8b 73 28                    mov    rsi,QWORD PTR [r11+0x28]
372613  49 8b e3                       mov    rsp,r11
372616  41 5e                          pop    r14
372618  5f                             pop    rdi
372619  5d                             pop    rbp
37261a  c3                             ret

; pdata function 0x316574..0x316fce unwind=0x3d2d5c
316574  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
316579  55                             push   rbp
31657a  48 8b ec                       mov    rbp,rsp
31657d  48 83 ec 40                    sub    rsp,0x40
316581  b8 ba 6c 19 ff                 mov    eax,0xff196cba
316586  48 8b d9                       mov    rbx,rcx
316589  3b d0                          cmp    edx,eax
31658b  0f 8f 38 05 00 00              jg     0x316ac9
316591  0f 84 20 05 00 00              je     0x316ab7
316597  b8 c0 8a 6a ca                 mov    eax,0xca6a8ac0
31659c  3b d0                          cmp    edx,eax
31659e  0f 8f d1 02 00 00              jg     0x316875
3165a4  0f 84 b9 02 00 00              je     0x316863
3165aa  b8 6a af 90 a2                 mov    eax,0xa290af6a
3165af  3b d0                          cmp    edx,eax
3165b1  0f 8f 6d 01 00 00              jg     0x316724
3165b7  0f 84 55 01 00 00              je     0x316712
3165bd  b8 77 9b b9 97                 mov    eax,0x97b99b77
3165c2  3b d0                          cmp    edx,eax
3165c4  0f 8f c7 00 00 00              jg     0x316691
3165ca  0f 84 a7 00 00 00              je     0x316677
3165d0  81 fa 3e 38 66 80              cmp    edx,0x8066383e
3165d6  0f 84 81 00 00 00              je     0x31665d
3165dc  81 fa f9 be be 81              cmp    edx,0x81bebef9
3165e2  74 5f                          je     0x316643
3165e4  81 fa de b0 b9 88              cmp    edx,0x88b9b0de
3165ea  74 48                          je     0x316634
3165ec  81 fa 39 77 10 90              cmp    edx,0x90107739
3165f2  74 26                          je     0x31661a
3165f4  81 fa 50 35 ac 93              cmp    edx,0x93ac3550
3165fa  0f 85 f1 08 00 00              jne    0x316ef1
316600  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316604  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316608  e8 d3 0c fe ff                 call   0x2f72e0 ; STRING getter=0x2f72e0 Revolver
31660d  48 8b c8                       mov    rcx,rax
316610  e8 ef 1e fc ff                 call   0x2d8504
316615  e9 9b 09 00 00                 jmp    0x316fb5
31661a  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31661e  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316622  e8 e1 f9 fd ff                 call   0x2f6008 ; STRING getter=0x2f6008 M4 Shotgun
316627  48 8b c8                       mov    rcx,rax
31662a  e8 9d 1f fc ff                 call   0x2d85cc
31662f  e9 81 09 00 00                 jmp    0x316fb5
316634  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316638  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31663c  e8 ab 16 fe ff                 call   0x2f7cec ; STRING getter=0x2f7cec M92 Pistol
316641  eb e4                          jmp    0x316627
316643  48 8d 55 20                    lea    rdx,[rbp+0x20]
316647  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31664b  e8 10 b2 fd ff                 call   0x2f1860 ; STRING getter=0x2f1860 Eoka
316650  48 8b c8                       mov    rcx,rax
316653  e8 94 cf fc ff                 call   0x2e35ec
316658  e9 58 09 00 00                 jmp    0x316fb5
31665d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316661  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316665  e8 02 bc fd ff                 call   0x2f226c ; STRING getter=0x2f226c High Caliber Revolver
31666a  48 8b c8                       mov    rcx,rax
31666d  e8 f2 cf fc ff                 call   0x2e3664
316672  e9 3e 09 00 00                 jmp    0x316fb5
316677  48 8d 55 18                    lea    rdx,[rbp+0x18]
31667b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31667f  e8 a4 c5 fd ff                 call   0x2f2c28 ; STRING getter=0x2f2c28 MP5
316684  48 8b c8                       mov    rcx,rax
316687  e8 5c 6a fc ff                 call   0x2dd0e8
31668c  e9 24 09 00 00                 jmp    0x316fb5
316691  81 fa 4d 20 75 98              cmp    edx,0x9875204d
316697  74 5f                          je     0x3166f8
316699  81 fa 19 a4 2c 9c              cmp    edx,0x9c2ca419
31669f  74 48                          je     0x3166e9
3166a1  81 fa a1 36 3c 9f              cmp    edx,0x9f3c36a1
3166a7  74 26                          je     0x3166cf
3166a9  81 fa 44 b2 ba a0              cmp    edx,0xa0bab244
3166af  0f 85 3c 08 00 00              jne    0x316ef1
3166b5  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3166b9  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3166bd  e8 2a b6 fd ff                 call   0x2f1cec ; STRING getter=0x2f1cec Waterpipe
3166c2  48 8b c8                       mov    rcx,rax
3166c5  e8 52 76 fb ff                 call   0x2cdd1c
3166ca  e9 e6 08 00 00                 jmp    0x316fb5
3166cf  48 8d 55 20                    lea    rdx,[rbp+0x20]
3166d3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3166d7  e8 38 d2 fd ff                 call   0x2f3914
3166dc  48 8b c8                       mov    rcx,rax
3166df  e8 54 6a fc ff                 call   0x2dd138
3166e4  e9 cc 08 00 00                 jmp    0x316fb5
3166e9  48 8d 55 18                    lea    rdx,[rbp+0x18]
3166ed  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3166f1  e8 8a a1 fd ff                 call   0x2f0880 ; STRING getter=0x2f0880 L96
3166f6  eb 8c                          jmp    0x316684
3166f8  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3166fc  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316700  e8 83 d7 fd ff                 call   0x2f3e88 ; STRING getter=0x2f3e88 Blunderbuss
316705  48 8b c8                       mov    rcx,rax
316708  e8 ff 76 fb ff                 call   0x2cde0c
31670d  e9 a3 08 00 00                 jmp    0x316fb5
316712  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316716  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31671a  e8 61 e7 fd ff                 call   0x2f4e80 ; STRING getter=0x2f4e80 Crossbow
31671f  e9 e9 fe ff ff                 jmp    0x31660d
316724  b8 c2 4a 44 be                 mov    eax,0xbe444ac2
316729  3b d0                          cmp    edx,eax
31672b  0f 8f b6 00 00 00              jg     0x3167e7
316731  0f 84 96 00 00 00              je     0x3167cd
316737  81 fa 0f 32 98 a8              cmp    edx,0xa898320f
31673d  74 74                          je     0x3167b3
31673f  81 fa 69 fc 0e a9              cmp    edx,0xa90efc69
316745  74 5a                          je     0x3167a1
316747  81 fa 7c 20 81 ae              cmp    edx,0xae81207c
31674d  74 40                          je     0x31678f
31674f  81 fa 01 1f 63 af              cmp    edx,0xaf631f01
316755  74 26                          je     0x31677d
316757  81 fa 83 e4 f5 b4              cmp    edx,0xb4f5e483
31675d  0f 85 8e 07 00 00              jne    0x316ef1
316763  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316767  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31676b  e8 90 d3 fd ff                 call   0x2f3b00 ; STRING getter=0x2f3b00 Rocket Launcher
316770  48 8b c8                       mov    rcx,rax
316773  e8 b4 1d fc ff                 call   0x2d852c
316778  e9 38 08 00 00                 jmp    0x316fb5
31677d  48 8d 55 20                    lea    rdx,[rbp+0x20]
316781  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316785  e8 f2 f3 fd ff                 call   0x2f5b7c
31678a  e9 4d ff ff ff                 jmp    0x3166dc
31678f  48 8d 55 20                    lea    rdx,[rbp+0x20]
316793  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316797  e8 b0 f7 fd ff                 call   0x2f5f4c ; STRING getter=0x2f5f4c Mace
31679c  e9 af fe ff ff                 jmp    0x316650
3167a1  48 8d 55 18                    lea    rdx,[rbp+0x18]
3167a5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3167a9  e8 82 e8 fd ff                 call   0x2f5030 ; STRING getter=0x2f5030 Bow
3167ae  e9 d1 fe ff ff                 jmp    0x316684
3167b3  48 8d 55 20                    lea    rdx,[rbp+0x20]
3167b7  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3167bb  e8 f0 f9 fd ff                 call   0x2f61b0 ; STRING getter=0x2f61b0 Spear
3167c0  48 8b c8                       mov    rcx,rax
3167c3  e8 ec 1c fc ff                 call   0x2d84b4
3167c8  e9 e8 07 00 00                 jmp    0x316fb5
3167cd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3167d1  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3167d5  e8 ae f0 fd ff                 call   0x2f5888 ; STRING getter=0x2f5888 Assault Rifle
3167da  48 8b c8                       mov    rcx,rax
3167dd  e8 3a 1e fc ff                 call   0x2d861c
3167e2  e9 ce 07 00 00                 jmp    0x316fb5
3167e7  81 fa e7 a8 6a c0              cmp    edx,0xc06aa8e7
3167ed  74 5a                          je     0x316849
3167ef  81 fa 47 00 5a c1              cmp    edx,0xc15a0047
3167f5  74 40                          je     0x316837
3167f7  81 fa 18 7d fe c4              cmp    edx,0xc4fe7d18
3167fd  74 1e                          je     0x31681d
3167ff  81 fa e8 35 15 c7              cmp    edx,0xc71535e8
316805  0f 85 e6 06 00 00              jne    0x316ef1
31680b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31680f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316813  e8 40 ff fd ff                 call   0x2f6758 ; STRING getter=0x2f6758 Salvaged Cleaver
316818  e9 90 07 00 00                 jmp    0x316fad
31681d  48 8d 55 20                    lea    rdx,[rbp+0x20]
316821  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316825  e8 16 a6 fd ff                 call   0x2f0e40 ; STRING getter=0x2f0e40 Python
31682a  48 8b c8                       mov    rcx,rax
31682d  e8 de 68 fc ff                 call   0x2dd110
316832  e9 7e 07 00 00                 jmp    0x316fb5
316837  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31683b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31683f  e8 4c be fd ff                 call   0x2f2690 ; STRING getter=0x2f2690 Thompson
316844  e9 c4 fd ff ff                 jmp    0x31660d
316849  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31684d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316851  e8 76 fc fd ff                 call   0x2f64cc ; STRING getter=0x2f64cc Snowball Launcher
316856  48 8b c8                       mov    rcx,rax
316859  e8 1e 1d fc ff                 call   0x2d857c
31685e  e9 52 07 00 00                 jmp    0x316fb5
316863  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316867  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31686b  e8 0c e7 fd ff                 call   0x2f4f7c ; STRING getter=0x2f4f7c Longsword
316870  e9 4d fe ff ff                 jmp    0x3166c2
316875  b8 69 72 12 e4                 mov    eax,0xe4127269
31687a  3b d0                          cmp    edx,eax
31687c  0f 8f 37 01 00 00              jg     0x3169b9
316882  0f 84 17 01 00 00              je     0x31699f
316888  b8 2f f4 46 da                 mov    eax,0xda46f42f
31688d  3b d0                          cmp    edx,eax
31688f  0f 8f 9e 00 00 00              jg     0x316933
316895  0f 84 86 00 00 00              je     0x316921
31689b  81 fa 06 2f 2e ce              cmp    edx,0xce2e2f06
3168a1  74 6c                          je     0x31690f
3168a3  81 fa 07 7f 18 cf              cmp    edx,0xcf187f07
3168a9  74 52                          je     0x3168fd
3168ab  81 fa fd ba d4 d2              cmp    edx,0xd2d4bafd
3168b1  74 38                          je     0x3168eb
3168b3  81 fa 43 5a 0b d3              cmp    edx,0xd30b5a43
3168b9  74 1e                          je     0x3168d9
3168bb  81 fa 14 eb cd d9              cmp    edx,0xd9cdeb14
3168c1  0f 85 2a 06 00 00              jne    0x316ef1
3168c7  48 8d 55 20                    lea    rdx,[rbp+0x20]
3168cb  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3168cf  e8 9c d3 fd ff                 call   0x2f3c70
3168d4  e9 03 fe ff ff                 jmp    0x3166dc
3168d9  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3168dd  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3168e1  e8 7e de fd ff                 call   0x2f4764 ; STRING getter=0x2f4764 Stone Hatchet
3168e6  e9 ef fe ff ff                 jmp    0x3167da
3168eb  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3168ef  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3168f3  e8 ec d7 fd ff                 call   0x2f40e4 ; STRING getter=0x2f40e4 Jackhammer
3168f8  e9 2a fd ff ff                 jmp    0x316627
3168fd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316901  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316905  e8 be c5 fd ff                 call   0x2f2ec8 ; STRING getter=0x2f2ec8 Double Barrel
31690a  e9 cb fe ff ff                 jmp    0x3167da
31690f  48 8d 55 20                    lea    rdx,[rbp+0x20]
316913  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316917  e8 f8 ab fd ff                 call   0x2f1514 ; STRING getter=0x2f1514 HMLMG
31691c  e9 9f fe ff ff                 jmp    0x3167c0
316921  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316925  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316929  e8 0a e3 fd ff                 call   0x2f4c38 ; STRING getter=0x2f4c38 Frontier Hatchet
31692e  e9 7a 06 00 00                 jmp    0x316fad
316933  81 fa b4 8c 8e dd              cmp    edx,0xdd8e8cb4
316939  74 52                          je     0x31698d
31693b  81 fa dc 0d 79 df              cmp    edx,0xdf790ddc
316941  74 38                          je     0x31697b
316943  81 fa 9f a0 1a e0              cmp    edx,0xe01aa09f
316949  74 1e                          je     0x316969
31694b  81 fa 55 dd 59 e3              cmp    edx,0xe359dd55
316951  0f 85 9a 05 00 00              jne    0x316ef1
316957  48 8d 55 20                    lea    rdx,[rbp+0x20]
31695b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
31695f  e8 a8 ed fd ff                 call   0x2f570c ; STRING getter=0x2f570c Spear
316964  e9 57 fe ff ff                 jmp    0x3167c0
316969  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31696d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316971  e8 1e a2 fd ff                 call   0x2f0b94 ; STRING getter=0x2f0b94 Custom SMG
316976  e9 ac fc ff ff                 jmp    0x316627
31697b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
31697f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316983  e8 a4 03 fe ff                 call   0x2f6d2c ; STRING getter=0x2f6d2c PaintBall gun
316988  e9 4d fe ff ff                 jmp    0x3167da
31698d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316991  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316995  e8 96 d5 fd ff                 call   0x2f3f30 ; STRING getter=0x2f3f30 Flame Thrower
31699a  e9 3b fe ff ff                 jmp    0x3167da
31699f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
3169a3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3169a7  e8 84 da fd ff                 call   0x2f4430 ; STRING getter=0x2f4430 Salvaged Axe
3169ac  48 8b c8                       mov    rcx,rax
3169af  e8 a8 74 fb ff                 call   0x2cde5c
3169b4  e9 fc 05 00 00                 jmp    0x316fb5
3169b9  81 fa 1f 16 d8 ee              cmp    edx,0xeed8161f
3169bf  0f 84 e0 00 00 00              je     0x316aa5
3169c5  81 fa 6b cb 2f f4              cmp    edx,0xf42fcb6b
3169cb  0f 84 c2 00 00 00              je     0x316a93
3169d1  81 fa 03 02 a0 f4              cmp    edx,0xf4a00203
3169d7  0f 84 a4 00 00 00              je     0x316a81
3169dd  81 fa 6d 3d 0a fc              cmp    edx,0xfc0a3d6d
3169e3  0f 84 86 00 00 00              je     0x316a6f
3169e9  81 fa a8 3d 34 fc              cmp    edx,0xfc343da8
3169ef  74 6c                          je     0x316a5d
3169f1  81 fa 1e c3 68 fd              cmp    edx,0xfd68c31e
3169f7  74 52                          je     0x316a4b
3169f9  81 fa 1f 47 d8 fd              cmp    edx,0xfdd8471f
3169ff  74 38                          je     0x316a39
316a01  81 fa fb ce 0e fe              cmp    edx,0xfe0ecefb
316a07  74 1e                          je     0x316a27
316a09  81 fa 04 be c0 fe              cmp    edx,0xfec0be04
316a0f  0f 85 dc 04 00 00              jne    0x316ef1
316a15  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a19  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a1d  e8 a6 f3 fd ff                 call   0x2f5dc8 ; STRING getter=0x2f5dc8 Mini Crossbow
316a22  e9 b3 fd ff ff                 jmp    0x3167da
316a27  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a2b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a2f  e8 04 fb fd ff                 call   0x2f6538 ; STRING getter=0x2f6538 Speargun
316a34  e9 d4 fb ff ff                 jmp    0x31660d
316a39  48 8d 55 18                    lea    rdx,[rbp+0x18]
316a3d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a41  e8 fe ff fd ff                 call   0x2f6a44 ; STRING getter=0x2f6a44 M16
316a46  e9 39 fc ff ff                 jmp    0x316684
316a4b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a4f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a53  e8 30 e7 fd ff                 call   0x2f5188 ; STRING getter=0x2f5188 Handmade SMG
316a58  e9 4f ff ff ff                 jmp    0x3169ac
316a5d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a61  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a65  e8 66 bf fd ff                 call   0x2f29d0 ; STRING getter=0x2f29d0 Semi-Rifle
316a6a  e9 b8 fb ff ff                 jmp    0x316627
316a6f  48 8d 55 18                    lea    rdx,[rbp+0x18]
316a73  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a77  e8 ac 98 fd ff                 call   0x2f0328 ; STRING getter=0x2f0328 SKS
316a7c  e9 03 fc ff ff                 jmp    0x316684
316a81  48 8d 55 20                    lea    rdx,[rbp+0x20]
316a85  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a89  e8 c6 ef fd ff                 call   0x2f5a54
316a8e  e9 49 fc ff ff                 jmp    0x3166dc
316a93  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316a97  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316a9b  e8 14 d8 fd ff                 call   0x2f42b4 ; STRING getter=0x2f42b4 Assault Rifle
316aa0  e9 35 fd ff ff                 jmp    0x3167da
316aa5  48 8d 55 20                    lea    rdx,[rbp+0x20]
316aa9  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316aad  e8 e2 b3 fd ff                 call   0x2f1e94
316ab2  e9 25 fc ff ff                 jmp    0x3166dc
316ab7  48 8d 55 20                    lea    rdx,[rbp+0x20]
316abb  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316abf  e8 cc 00 fe ff                 call   0x2f6b90
316ac4  e9 13 fc ff ff                 jmp    0x3166dc
316ac9  b8 39 ba 72 53                 mov    eax,0x5372ba39
316ace  3b d0                          cmp    edx,eax
316ad0  0f 8f 83 02 00 00              jg     0x316d59
316ad6  0f 84 6b 02 00 00              je     0x316d47
316adc  b8 93 5e 94 21                 mov    eax,0x21945e93
316ae1  3b d0                          cmp    edx,eax
316ae3  0f 8f 3f 01 00 00              jg     0x316c28
316ae9  0f 84 27 01 00 00              je     0x316c16
316aef  b8 f7 0a 8c 13                 mov    eax,0x138c0af7
316af4  3b d0                          cmp    edx,eax
316af6  0f 8f a6 00 00 00              jg     0x316ba2
316afc  0f 84 8e 00 00 00              je     0x316b90
316b02  81 fa 2a e0 42 02              cmp    edx,0x242e02a
316b08  74 74                          je     0x316b7e
316b0a  81 fa 8c 49 b9 02              cmp    edx,0x2b9498c
316b10  74 5a                          je     0x316b6c
316b12  81 fa 36 ef 82 06              cmp    edx,0x682ef36
316b18  74 40                          je     0x316b5a
316b1a  81 fa 96 de 5c 0b              cmp    edx,0xb5cde96
316b20  74 1e                          je     0x316b40
316b22  81 fa 63 8b ec 10              cmp    edx,0x10ec8b63
316b28  0f 85 c3 03 00 00              jne    0x316ef1
316b2e  48 8d 55 20                    lea    rdx,[rbp+0x20]
316b32  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b36  e8 b5 03 fe ff                 call   0x2f6ef0
316b3b  e9 9c fb ff ff                 jmp    0x3166dc
316b40  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b44  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b48  e8 0b db fd ff                 call   0x2f4658 ; STRING getter=0x2f4658 Abyss Metal Pickaxe
316b4d  48 8b c8                       mov    rcx,rax
316b50  e8 67 72 fb ff                 call   0x2cddbc
316b55  e9 5b 04 00 00                 jmp    0x316fb5
316b5a  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b5e  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b62  e8 25 d8 fd ff                 call   0x2f438c ; STRING getter=0x2f438c Ice Pick
316b67  e9 a1 fa ff ff                 jmp    0x31660d
316b6c  48 8d 55 20                    lea    rdx,[rbp+0x20]
316b70  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b74  e8 53 ea fd ff                 call   0x2f55cc
316b79  e9 5e fb ff ff                 jmp    0x3166dc
316b7e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b82  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b86  e8 f9 02 fe ff                 call   0x2f6e84 ; STRING getter=0x2f6e84 Watergun
316b8b  e9 7d fa ff ff                 jmp    0x31660d
316b90  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316b94  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316b98  e8 ef e1 fd ff                 call   0x2f4d8c ; STRING getter=0x2f4d8c Combat Knife
316b9d  e9 0a fe ff ff                 jmp    0x3169ac
316ba2  81 fa 5d 04 c5 15              cmp    edx,0x15c5045d
316ba8  74 5a                          je     0x316c04
316baa  81 fa 36 30 fd 19              cmp    edx,0x19fd3036
316bb0  74 40                          je     0x316bf2
316bb2  81 fa 65 6b 57 20              cmp    edx,0x20576b65
316bb8  74 1e                          je     0x316bd8
316bba  81 fa 92 41 0e 21              cmp    edx,0x210e4192
316bc0  0f 85 2b 03 00 00              jne    0x316ef1
316bc6  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316bca  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316bce  e8 29 bc fd ff                 call   0x2f27fc ; STRING getter=0x2f27fc Pump Shotgun
316bd3  e9 d4 fd ff ff                 jmp    0x3169ac
316bd8  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316bdc  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316be0  e8 6f e8 fd ff                 call   0x2f5454 ; STRING getter=0x2f5454 Homing Missile Launcher
316be5  48 8b c8                       mov    rcx,rax
316be8  e8 c7 ca fc ff                 call   0x2e36b4
316bed  e9 c3 03 00 00                 jmp    0x316fb5
316bf2  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316bf6  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316bfa  e8 c1 d9 fd ff                 call   0x2f45c0 ; STRING getter=0x2f45c0 Binoculars
316bff  e9 23 fa ff ff                 jmp    0x316627
316c04  48 8d 55 20                    lea    rdx,[rbp+0x20]
316c08  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c0c  e8 d7 dc fd ff                 call   0x2f48e8
316c11  e9 c6 fa ff ff                 jmp    0x3166dc
316c16  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316c1a  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c1e  e8 59 c4 fd ff                 call   0x2f307c ; STRING getter=0x2f307c Semi Pistol
316c23  e9 dd fa ff ff                 jmp    0x316705
316c28  b8 39 63 51 3b                 mov    eax,0x3b516339
316c2d  3b d0                          cmp    edx,eax
316c2f  0f 8f a6 00 00 00              jg     0x316cdb
316c35  0f 84 86 00 00 00              je     0x316cc1
316c3b  81 fa 87 3f d9 23              cmp    edx,0x23d93f87
316c41  74 6c                          je     0x316caf
316c43  81 fa 6f 4f ee 25              cmp    edx,0x25ee4f6f
316c49  74 52                          je     0x316c9d
316c4b  81 fa e4 23 33 2d              cmp    edx,0x2d3323e4
316c51  74 38                          je     0x316c8b
316c53  81 fa 5c bd 52 2e              cmp    edx,0x2e52bd5c
316c59  74 1e                          je     0x316c79
316c5b  81 fa 51 24 54 32              cmp    edx,0x32542451
316c61  0f 85 8a 02 00 00              jne    0x316ef1
316c67  48 8d 55 20                    lea    rdx,[rbp+0x20]
316c6b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c6f  e8 40 c6 fd ff                 call   0x2f32b4 ; STRING getter=0x2f32b4 LR-300
316c74  e9 b1 fb ff ff                 jmp    0x31682a
316c79  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316c7d  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c81  e8 1a fc fd ff                 call   0x2f68a0 ; STRING getter=0x2f68a0 Bowless Crossbow
316c86  e9 22 03 00 00                 jmp    0x316fad
316c8b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316c8f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316c93  e8 20 d8 fd ff                 call   0x2f44b8 ; STRING getter=0x2f44b8 Flash Bang
316c98  e9 8a f9 ff ff                 jmp    0x316627
316c9d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316ca1  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316ca5  e8 76 e5 fd ff                 call   0x2f5220 ; STRING getter=0x2f5220 ProtoType
316caa  e9 13 fa ff ff                 jmp    0x3166c2
316caf  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316cb3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316cb7  e8 30 cd fd ff                 call   0x2f39ec ; STRING getter=0x2f39ec Rocket Launcher
316cbc  e9 af fa ff ff                 jmp    0x316770
316cc1  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316cc5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316cc9  e8 c6 ff fd ff                 call   0x2f6c94 ; STRING getter=0x2f6c94 Skinning Knife
316cce  48 8b c8                       mov    rcx,rax
316cd1  e8 6e 19 fc ff                 call   0x2d8644
316cd6  e9 da 02 00 00                 jmp    0x316fb5
316cdb  81 fa 73 7c 2a 3c              cmp    edx,0x3c2a7c73
316ce1  74 52                          je     0x316d35
316ce3  81 fa c0 a9 86 49              cmp    edx,0x4986a9c0
316ce9  74 38                          je     0x316d23
316ceb  81 fa d3 f9 7d 52              cmp    edx,0x527df9d3
316cf1  74 1e                          je     0x316d11
316cf3  81 fa 24 58 44 53              cmp    edx,0x53445824
316cf9  0f 85 f2 01 00 00              jne    0x316ef1
316cff  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316d03  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d07  e8 78 df fd ff                 call   0x2f4c84 ; STRING getter=0x2f4c84 Abyss Metal Hatchet
316d0c  e9 3c fe ff ff                 jmp    0x316b4d
316d11  48 8d 55 20                    lea    rdx,[rbp+0x20]
316d15  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d19  e8 56 02 fe ff                 call   0x2f6f74
316d1e  e9 b9 f9 ff ff                 jmp    0x3166dc
316d23  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316d27  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d2b  e8 50 d0 fd ff                 call   0x2f3d80 ; STRING getter=0x2f3d80 HELauncher
316d30  e9 f2 f8 ff ff                 jmp    0x316627
316d35  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316d39  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d3d  e8 6a ef fd ff                 call   0x2f5cac ; STRING getter=0x2f5cac Pitchfork
316d42  e9 7b f9 ff ff                 jmp    0x3166c2
316d47  48 8d 55 18                    lea    rdx,[rbp+0x18]
316d4b  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316d4f  e8 dc e2 fd ff                 call   0x2f5030 ; STRING getter=0x2f5030 Bow
316d54  e9 2b f9 ff ff                 jmp    0x316684
316d59  b8 a9 d0 77 69                 mov    eax,0x6977d0a9
316d5e  3b d0                          cmp    edx,eax
316d60  0f 8f 2f 01 00 00              jg     0x316e95
316d66  0f 84 17 01 00 00              je     0x316e83
316d6c  b8 f8 e2 a2 5b                 mov    eax,0x5ba2e2f8
316d71  3b d0                          cmp    edx,eax
316d73  0f 8f 9e 00 00 00              jg     0x316e17
316d79  0f 84 86 00 00 00              je     0x316e05
316d7f  81 fa 3a ab ea 53              cmp    edx,0x53eaab3a
316d85  74 6c                          je     0x316df3
316d87  81 fa 77 9a e2 55              cmp    edx,0x55e29a77
316d8d  74 52                          je     0x316de1
316d8f  81 fa a3 21 76 56              cmp    edx,0x567621a3
316d95  74 38                          je     0x316dcf
316d97  81 fa 3b 5f 3d 58              cmp    edx,0x583d5f3b
316d9d  74 1e                          je     0x316dbd
316d9f  81 fa 80 f3 6c 5a              cmp    edx,0x5a6cf380
316da5  0f 85 46 01 00 00              jne    0x316ef1
316dab  48 8d 55 18                    lea    rdx,[rbp+0x18]
316daf  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316db3  e8 f8 b6 fd ff                 call   0x2f24b0 ; STRING getter=0x2f24b0 M39
316db8  e9 c7 f8 ff ff                 jmp    0x316684
316dbd  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316dc1  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316dc5  e8 aa dd fd ff                 call   0x2f4b74 ; STRING getter=0x2f4b74 Concrete Pickaxe
316dca  e9 de 01 00 00                 jmp    0x316fad
316dcf  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316dd3  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316dd7  e8 3c da fd ff                 call   0x2f4818 ; STRING getter=0x2f4818 Stone Pickaxe
316ddc  e9 f9 f9 ff ff                 jmp    0x3167da
316de1  48 8d 55 20                    lea    rdx,[rbp+0x20]
316de5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316de9  e8 b6 a3 fd ff                 call   0x2f11a4 ; STRING getter=0x2f11a4 M249
316dee  e9 5d f8 ff ff                 jmp    0x316650
316df3  48 8d 55 20                    lea    rdx,[rbp+0x20]
316df7  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316dfb  e8 e8 ff fd ff                 call   0x2f6de8 ; STRING getter=0x2f6de8 LR300
316e00  e9 bb f9 ff ff                 jmp    0x3167c0
316e05  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e09  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e0d  e8 fa e0 fd ff                 call   0x2f4f0c ; STRING getter=0x2f4f0c Compoundbow
316e12  e9 ee f8 ff ff                 jmp    0x316705
316e17  81 fa e9 7f 2e 63              cmp    edx,0x632e7fe9
316e1d  74 52                          je     0x316e71
316e1f  81 fa 54 3a 45 63              cmp    edx,0x63453a54
316e25  74 38                          je     0x316e5f
316e27  81 fa a0 b7 ef 65              cmp    edx,0x65efb7a0
316e2d  74 1e                          je     0x316e4d
316e2f  81 fa a3 14 f6 67              cmp    edx,0x67f614a3
316e35  0f 85 b6 00 00 00              jne    0x316ef1
316e3b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e3f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e43  e8 a4 d8 fd ff                 call   0x2f46ec ; STRING getter=0x2f46ec Salvaged Hammer
316e48  e9 23 f9 ff ff                 jmp    0x316770
316e4d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e51  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e55  e8 3a d2 fd ff                 call   0x2f4094 ; STRING getter=0x2f4094 Flame Thrower
316e5a  e9 7b f9 ff ff                 jmp    0x3167da
316e5f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e63  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e67  e8 d0 c5 fd ff                 call   0x2f343c ; STRING getter=0x2f343c Bolt Action Rifle
316e6c  e9 e5 f9 ff ff                 jmp    0x316856
316e71  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e75  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e79  e8 5a f7 fd ff                 call   0x2f65d8 ; STRING getter=0x2f65d8 Salvaged Sword
316e7e  e9 4b fe ff ff                 jmp    0x316cce
316e83  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316e87  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316e8b  e8 0c fc fd ff                 call   0x2f6a9c ; STRING getter=0x2f6a9c Baseball Bat
316e90  e9 17 fb ff ff                 jmp    0x3169ac
316e95  81 fa 0b 68 f6 69              cmp    edx,0x69f6680b
316e9b  0f 84 ff 00 00 00              je     0x316fa0
316ea1  81 fa 85 03 72 6b              cmp    edx,0x6b720385
316ea7  0f 84 e1 00 00 00              je     0x316f8e
316ead  81 fa 64 62 47 6e              cmp    edx,0x6e476264
316eb3  0f 84 c3 00 00 00              je     0x316f7c
316eb9  81 fa 77 df e6 6f              cmp    edx,0x6fe6df77
316ebf  0f 84 a5 00 00 00              je     0x316f6a
316ec5  81 fa 2b a2 29 72              cmp    edx,0x7229a22b
316ecb  0f 84 82 00 00 00              je     0x316f53
316ed1  81 fa 89 d6 cb 73              cmp    edx,0x73cbd689
316ed7  74 68                          je     0x316f41
316ed9  81 fa ef 8b d9 73              cmp    edx,0x73d98bef
316edf  74 4e                          je     0x316f2f
316ee1  81 fa 79 2c f1 75              cmp    edx,0x75f12c79
316ee7  74 34                          je     0x316f1d
316ee9  81 fa b9 89 a8 7a              cmp    edx,0x7aa889b9
316eef  74 1a                          je     0x316f0b
316ef1  48 8d 55 18                    lea    rdx,[rbp+0x18]
316ef5  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316ef9  e8 32 58 fb ff                 call   0x2cc730
316efe  48 8b c8                       mov    rcx,rax
316f01  e8 9e 6d fb ff                 call   0x2cdca4
316f06  e9 aa 00 00 00                 jmp    0x316fb5
316f0b  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f0f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f13  e8 08 dc fd ff                 call   0x2f4b20 ; STRING getter=0x2f4b20 FishingPole
316f18  e9 e8 f7 ff ff                 jmp    0x316705
316f1d  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f21  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f25  e8 be da fd ff                 call   0x2f49e8 ; STRING getter=0x2f49e8 Assault Rifle
316f2a  e9 ab f8 ff ff                 jmp    0x3167da
316f2f  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f33  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f37  e8 78 f4 fd ff                 call   0x2f63b4 ; STRING getter=0x2f63b4 Stone Spear
316f3c  e9 c4 f7 ff ff                 jmp    0x316705
316f41  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f45  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f49  e8 d6 c7 fd ff                 call   0x2f3724 ; STRING getter=0x2f3724 Assault Rifle
316f4e  e9 87 f8 ff ff                 jmp    0x3167da
316f53  48 8d 55 18                    lea    rdx,[rbp+0x18]
316f57  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f5b  e8 44 c6 fd ff                 call   0x2f35a4 ; STRING getter=0x2f35a4 C4
316f60  48 8b c8                       mov    rcx,rax
316f63  e8 24 15 fc ff                 call   0x2d848c
316f68  eb 4b                          jmp    0x316fb5
316f6a  48 8d 55 20                    lea    rdx,[rbp+0x20]
316f6e  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f72  e8 79 ab fd ff                 call   0x2f1af0
316f77  e9 60 f7 ff ff                 jmp    0x3166dc
316f7c  48 8d 55 20                    lea    rdx,[rbp+0x20]
316f80  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f84  e8 93 fb fd ff                 call   0x2f6b1c ; STRING getter=0x2f6b1c Paddle
316f89  e9 9c f8 ff ff                 jmp    0x31682a
316f8e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316f92  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316f96  e8 c5 d1 fd ff                 call   0x2f4160 ; STRING getter=0x2f4160 Chainsaw
316f9b  e9 6d f6 ff ff                 jmp    0x31660d
316fa0  48 8d 55 e0                    lea    rdx,[rbp-0x20]
316fa4  48 8d 4d 18                    lea    rcx,[rbp+0x18]
316fa8  e8 db d8 fd ff                 call   0x2f4888 ; STRING getter=0x2f4888 Concrete Hatchet
316fad  48 8b c8                       mov    rcx,rax
316fb0  e8 9f 15 fc ff                 call   0x2d8554
316fb5  48 8b d0                       mov    rdx,rax
316fb8  48 8b cb                       mov    rcx,rbx
316fbb  e8 0c 53 fb ff                 call   0x2cc2cc
316fc0  48 8b c3                       mov    rax,rbx
316fc3  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
316fc8  48 83 c4 40                    add    rsp,0x40
316fcc  5d                             pop    rbp
316fcd  c3                             ret

; pdata function 0x318d74..0x318f31 unwind=0x3d32c8
318d74  48 8b c4                       mov    rax,rsp
318d77  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
318d7b  55                             push   rbp
318d7c  56                             push   rsi
318d7d  57                             push   rdi
318d7e  48 8d 68 a1                    lea    rbp,[rax-0x5f]
318d82  48 81 ec b0 00 00 00           sub    rsp,0xb0
318d89  0f 29 70 d8                    movaps XMMWORD PTR [rax-0x28],xmm6
318d8d  48 8b d9                       mov    rbx,rcx
318d90  48 8b ca                       mov    rcx,rdx
318d93  0f 29 78 c8                    movaps XMMWORD PTR [rax-0x38],xmm7
318d97  49 8b f1                       mov    rsi,r9
318d9a  0f 28 f2                       movaps xmm6,xmm2
318d9d  48 8b fa                       mov    rdi,rdx
318da0  e8 47 4a fb ff                 call   0x2cd7ec
318da5  f3 0f 10 1d a7 4d f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff74da7]        # 0x28db54
318dad  48 8d 55 d7                    lea    rdx,[rbp-0x29]
318db1  f3 0f 10 56 14                 movss  xmm2,DWORD PTR [rsi+0x14]
318db6  0f 57 ff                       xorps  xmm7,xmm7
318db9  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
318dc2  48 8b ce                       mov    rcx,rsi
318dc5  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
318dce  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
318dd3  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
318dd9  e8 96 aa 08 00                 call   0x3a3874
318dde  0f 2f 75 d7                    comiss xmm6,DWORD PTR [rbp-0x29]
318de2  48 8b d7                       mov    rdx,rdi
318de5  72 0d                          jb     0x318df4
318de7  48 8b cb                       mov    rcx,rbx
318dea  e8 a5 b3 fb ff                 call   0x2d4194
318def  e9 f7 00 00 00                 jmp    0x318eeb
318df4  48 8d 4d e7                    lea    rcx,[rbp-0x19]
318df8  e8 97 b3 fb ff                 call   0x2d4194
318dfd  e9 ad 00 00 00                 jmp    0x318eaf
318e02  48 8d 4d e7                    lea    rcx,[rbp-0x19]
318e06  e8 cd fc fb ff                 call   0x2d8ad8
318e0b  45 33 c0                       xor    r8d,r8d
318e0e  48 8d 55 07                    lea    rdx,[rbp+0x7]
318e12  48 8d 4d e7                    lea    rcx,[rbp-0x19]
318e16  4c 8d 48 ff                    lea    r9,[rax-0x1]
318e1a  e8 79 06 fc ff                 call   0x2d9498
318e1f  48 8b d0                       mov    rdx,rax
318e22  48 8d 4d e7                    lea    rcx,[rbp-0x19]
318e26  e8 b9 bd fb ff                 call   0x2d4be4
318e2b  48 8d 4d 07                    lea    rcx,[rbp+0x7]
318e2f  e8 c0 36 fb ff                 call   0x2cc4f4
318e34  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
318e38  48 8d 4d 77                    lea    rcx,[rbp+0x77]
318e3c  e8 57 94 fd ff                 call   0x2f2298 ; STRING getter=0x2f2298 ...
318e41  48 8b c8                       mov    rcx,rax
318e44  e8 d3 75 00 00                 call   0x32041c
318e49  4c 8b c0                       mov    r8,rax
318e4c  48 8d 55 e7                    lea    rdx,[rbp-0x19]
318e50  48 8d 4d 07                    lea    rcx,[rbp+0x7]
318e54  e8 7b 61 fb ff                 call   0x2cefd4
318e59  48 8b c8                       mov    rcx,rax
318e5c  e8 8b 49 fb ff                 call   0x2cd7ec
318e61  f3 0f 10 1d eb 4c f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff74ceb]        # 0x28db54
318e69  48 8d 55 df                    lea    rdx,[rbp-0x21]
318e6d  f3 0f 10 56 14                 movss  xmm2,DWORD PTR [rsi+0x14]
318e72  48 8b ce                       mov    rcx,rsi
318e75  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
318e7e  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
318e87  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
318e8c  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
318e92  e8 dd a9 08 00                 call   0x3a3874
318e97  48 8d 4d 07                    lea    rcx,[rbp+0x7]
318e9b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
318e9f  f2 0f 11 45 d7                 movsd  QWORD PTR [rbp-0x29],xmm0
318ea4  e8 4b 36 fb ff                 call   0x2cc4f4
318ea9  0f 2f 75 d7                    comiss xmm6,DWORD PTR [rbp-0x29]
318ead  73 5c                          jae    0x318f0b
318eaf  48 8d 4d e7                    lea    rcx,[rbp-0x19]
318eb3  e8 20 fc fb ff                 call   0x2d8ad8
318eb8  48 83 f8 03                    cmp    rax,0x3
318ebc  0f 87 40 ff ff ff              ja     0x318e02
318ec2  48 8d 55 77                    lea    rdx,[rbp+0x77]
318ec6  48 8d 4d 77                    lea    rcx,[rbp+0x77]
318eca  e8 c9 93 fd ff                 call   0x2f2298 ; STRING getter=0x2f2298 ...
318ecf  48 8b c8                       mov    rcx,rax
318ed2  e8 45 75 00 00                 call   0x32041c
318ed7  48 8b d0                       mov    rdx,rax
318eda  48 8b cb                       mov    rcx,rbx
318edd  e8 ea 33 fb ff                 call   0x2cc2cc
318ee2  48 8d 4d e7                    lea    rcx,[rbp-0x19]
318ee6  e8 09 36 fb ff                 call   0x2cc4f4
318eeb  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
318ef3  48 8b c3                       mov    rax,rbx
318ef6  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
318efa  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
318eff  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
318f04  49 8b e3                       mov    rsp,r11
318f07  5f                             pop    rdi
318f08  5e                             pop    rsi
318f09  5d                             pop    rbp
318f0a  c3                             ret
318f0b  48 8d 55 77                    lea    rdx,[rbp+0x77]
318f0f  48 8d 4d 77                    lea    rcx,[rbp+0x77]
318f13  e8 80 93 fd ff                 call   0x2f2298 ; STRING getter=0x2f2298 ...
318f18  48 8b c8                       mov    rcx,rax
318f1b  e8 fc 74 00 00                 call   0x32041c
318f20  4c 8b c0                       mov    r8,rax
318f23  48 8d 55 e7                    lea    rdx,[rbp-0x19]
318f27  48 8b cb                       mov    rcx,rbx
318f2a  e8 a5 60 fb ff                 call   0x2cefd4
318f2f  eb b1                          jmp    0x318ee2

