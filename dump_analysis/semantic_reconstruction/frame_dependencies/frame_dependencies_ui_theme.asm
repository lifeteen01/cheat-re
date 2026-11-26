; pdata function 0x386acc..0x386def unwind=0x3d4430
386acc  40 55                          rex push rbp
386ace  53                             push   rbx
386acf  56                             push   rsi
386ad0  57                             push   rdi
386ad1  48 8b ec                       mov    rbp,rsp
386ad4  48 83 ec 78                    sub    rsp,0x78
386ad8  48 8b 1d 49 f0 07 00           mov    rbx,QWORD PTR [rip+0x7f049]        # 0x405b28
386adf  48 8d 4d b8                    lea    rcx,[rbp-0x48]
386ae3  be ff 00 00 00                 mov    esi,0xff
386ae8  0f 29 74 24 60                 movaps XMMWORD PTR [rsp+0x60],xmm6
386aed  ba 54 00 00 00                 mov    edx,0x54
386af2  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386af6  44 8d 46 a7                    lea    r8d,[rsi-0x59]
386afa  44 8d 4a 0e                    lea    r9d,[rdx+0xe]
386afe  e8 15 48 f5 ff                 call   0x2db318
386b03  48 8b c8                       mov    rcx,rax
386b06  48 8d 55 c8                    lea    rdx,[rbp-0x38]
386b0a  e8 f1 8c f6 ff                 call   0x2ef800
386b0f  8d 7e d2                       lea    edi,[rsi-0x2e]
386b12  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386b16  44 8b cf                       mov    r9d,edi
386b19  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386b1d  44 8b c7                       mov    r8d,edi
386b20  8b d7                          mov    edx,edi
386b22  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386b25  f3 0f 7f 83 b8 38 00 00        movdqu XMMWORD PTR [rbx+0x38b8],xmm0
386b2d  e8 e6 47 f5 ff                 call   0x2db318
386b32  48 8b c8                       mov    rcx,rax
386b35  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386b39  e8 c2 8c f6 ff                 call   0x2ef800
386b3e  44 8b cf                       mov    r9d,edi
386b41  c7 44 24 20 66 00 00 00        mov    DWORD PTR [rsp+0x20],0x66
386b49  44 8b c7                       mov    r8d,edi
386b4c  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386b50  8b d7                          mov    edx,edi
386b52  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386b55  f3 0f 7f 83 c8 38 00 00        movdqu XMMWORD PTR [rbx+0x38c8],xmm0
386b5d  e8 b6 47 f5 ff                 call   0x2db318
386b62  48 8b c8                       mov    rcx,rax
386b65  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386b69  e8 92 8c f6 ff                 call   0x2ef800
386b6e  ba 11 00 00 00                 mov    edx,0x11
386b73  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386b77  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386b7b  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386b7e  44 8d 4a ff                    lea    r9d,[rdx-0x1]
386b82  44 8d 42 02                    lea    r8d,[rdx+0x2]
386b86  f3 0f 7f 83 d8 38 00 00        movdqu XMMWORD PTR [rbx+0x38d8],xmm0
386b8e  e8 85 47 f5 ff                 call   0x2db318
386b93  48 8b c8                       mov    rcx,rax
386b96  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386b9a  e8 61 8c f6 ff                 call   0x2ef800
386b9f  ba 18 00 00 00                 mov    edx,0x18
386ba4  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386ba8  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386bac  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386baf  44 8d 4a 01                    lea    r9d,[rdx+0x1]
386bb3  44 8d 42 02                    lea    r8d,[rdx+0x2]
386bb7  f3 0f 7f 83 e8 38 00 00        movdqu XMMWORD PTR [rbx+0x38e8],xmm0
386bbf  e8 54 47 f5 ff                 call   0x2db318
386bc4  48 8b c8                       mov    rcx,rax
386bc7  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386bcb  e8 30 8c f6 ff                 call   0x2ef800
386bd0  ba 1e 00 00 00                 mov    edx,0x1e
386bd5  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386bd9  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386bdd  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386be0  44 8d 4a 02                    lea    r9d,[rdx+0x2]
386be4  44 8d 42 03                    lea    r8d,[rdx+0x3]
386be8  f3 0f 7f 83 f8 38 00 00        movdqu XMMWORD PTR [rbx+0x38f8],xmm0
386bf0  e8 23 47 f5 ff                 call   0x2db318
386bf5  48 8b c8                       mov    rcx,rax
386bf8  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386bfc  e8 ff 8b f6 ff                 call   0x2ef800
386c01  8d 57 a9                       lea    edx,[rdi-0x57]
386c04  c7 44 24 20 0a 00 00 00        mov    DWORD PTR [rsp+0x20],0xa
386c0c  44 8b ca                       mov    r9d,edx
386c0f  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386c13  44 8b c2                       mov    r8d,edx
386c16  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386c19  f3 0f 7f 83 38 39 00 00        movdqu XMMWORD PTR [rbx+0x3938],xmm0
386c21  f3 0f 7f 83 08 39 00 00        movdqu XMMWORD PTR [rbx+0x3908],xmm0
386c29  e8 ea 46 f5 ff                 call   0x2db318
386c2e  48 8b c8                       mov    rcx,rax
386c31  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386c35  e8 c6 8b f6 ff                 call   0x2ef800
386c3a  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386c3d  0f 57 f6                       xorps  xmm6,xmm6
386c40  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386c44  0f 57 db                       xorps  xmm3,xmm3
386c47  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
386c4d  0f 57 d2                       xorps  xmm2,xmm2
386c50  0f 57 c9                       xorps  xmm1,xmm1
386c53  f3 0f 7f 83 18 39 00 00        movdqu XMMWORD PTR [rbx+0x3918],xmm0
386c5b  e8 f0 56 f4 ff                 call   0x2cc350
386c60  f3 0f 10 0d 70 6e f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff06e70]        # 0x28dad8 ; f32=0.02
386c68  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386c6c  0f 28 d9                       movaps xmm3,xmm1
386c6f  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
386c75  0f 28 d1                       movaps xmm2,xmm1
386c78  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386c7b  f3 0f 7f 83 28 39 00 00        movdqu XMMWORD PTR [rbx+0x3928],xmm0
386c83  e8 c8 56 f4 ff                 call   0x2cc350
386c88  0f 10 8b b8 38 00 00           movups xmm1,XMMWORD PTR [rbx+0x38b8]
386c8f  44 8b ce                       mov    r9d,esi
386c92  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386c96  44 8b c6                       mov    r8d,esi
386c99  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386c9d  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386ca0  8b d6                          mov    edx,esi
386ca2  f3 0f 7f 8b b8 39 00 00        movdqu XMMWORD PTR [rbx+0x39b8],xmm1
386caa  f3 0f 7f 83 a8 39 00 00        movdqu XMMWORD PTR [rbx+0x39a8],xmm0
386cb2  f3 0f 7f 8b c8 39 00 00        movdqu XMMWORD PTR [rbx+0x39c8],xmm1
386cba  f3 0f 7f 8b d8 39 00 00        movdqu XMMWORD PTR [rbx+0x39d8],xmm1
386cc2  e8 51 46 f5 ff                 call   0x2db318
386cc7  48 8b c8                       mov    rcx,rax
386cca  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386cce  e8 2d 8b f6 ff                 call   0x2ef800
386cd3  44 8b ce                       mov    r9d,esi
386cd6  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386cda  44 8b c6                       mov    r8d,esi
386cdd  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386ce1  8b d6                          mov    edx,esi
386ce3  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386ce6  f3 0f 7f 83 e8 39 00 00        movdqu XMMWORD PTR [rbx+0x39e8],xmm0
386cee  e8 25 46 f5 ff                 call   0x2db318
386cf3  48 8b c8                       mov    rcx,rax
386cf6  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386cfa  e8 01 8b f6 ff                 call   0x2ef800
386cff  0f 10 8b 38 39 00 00           movups xmm1,XMMWORD PTR [rbx+0x3938]
386d06  8d 7e d0                       lea    edi,[rsi-0x30]
386d09  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386d0d  44 8d 4f 93                    lea    r9d,[rdi-0x6d]
386d11  44 8b c7                       mov    r8d,edi
386d14  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386d17  8d 57 85                       lea    edx,[rdi-0x7b]
386d1a  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386d1e  f3 0f 7f 83 f8 39 00 00        movdqu XMMWORD PTR [rbx+0x39f8],xmm0
386d26  f3 0f 7f 8b 18 3a 00 00        movdqu XMMWORD PTR [rbx+0x3a18],xmm1
386d2e  e8 e5 45 f5 ff                 call   0x2db318
386d33  f3 0f 10 15 e5 26 f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff226e5]        # 0x2a9420 ; f32=1.15
386d3b  48 8d 4d b8                    lea    rcx,[rbp-0x48]
386d3f  48 8b d0                       mov    rdx,rax
386d42  e8 a1 c0 ff ff                 call   0x382de8
386d47  48 8b c8                       mov    rcx,rax
386d4a  48 8d 55 d8                    lea    rdx,[rbp-0x28]
386d4e  e8 ad 8a f6 ff                 call   0x2ef800
386d53  44 8d 4f 93                    lea    r9d,[rdi-0x6d]
386d57  89 74 24 20                    mov    DWORD PTR [rsp+0x20],esi
386d5b  44 8b c7                       mov    r8d,edi
386d5e  8d 57 85                       lea    edx,[rdi-0x7b]
386d61  48 8d 4d d8                    lea    rcx,[rbp-0x28]
386d65  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386d68  f3 0f 7f 83 28 3a 00 00        movdqu XMMWORD PTR [rbx+0x3a28],xmm0
386d70  e8 a3 45 f5 ff                 call   0x2db318
386d75  f3 0f 10 15 7f c3 f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff0c37f]        # 0x2930fc ; f32=1.35
386d7d  48 8d 4d c8                    lea    rcx,[rbp-0x38]
386d81  48 8b d0                       mov    rdx,rax
386d84  e8 5f c0 ff ff                 call   0x382de8
386d89  48 8b c8                       mov    rcx,rax
386d8c  48 8d 55 b8                    lea    rdx,[rbp-0x48]
386d90  e8 6b 8a f6 ff                 call   0x2ef800
386d95  0f 10 8b 18 39 00 00           movups xmm1,XMMWORD PTR [rbx+0x3918]
386d9c  c7 44 24 20 12 00 00 00        mov    DWORD PTR [rsp+0x20],0x12
386da4  44 8d 4f 93                    lea    r9d,[rdi-0x6d]
386da8  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386dab  f3 0f 7f 8b 78 3a 00 00        movdqu XMMWORD PTR [rbx+0x3a78],xmm1
386db3  f3 0f 7f 83 38 3a 00 00        movdqu XMMWORD PTR [rbx+0x3a38],xmm0
386dbb  44 8b c7                       mov    r8d,edi
386dbe  8d 57 85                       lea    edx,[rdi-0x7b]
386dc1  48 8d 4d d8                    lea    rcx,[rbp-0x28]
386dc5  e8 4e 45 f5 ff                 call   0x2db318
386dca  48 8b c8                       mov    rcx,rax
386dcd  48 8d 55 c8                    lea    rdx,[rbp-0x38]
386dd1  e8 2a 8a f6 ff                 call   0x2ef800
386dd6  0f 28 74 24 60                 movaps xmm6,XMMWORD PTR [rsp+0x60]
386ddb  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
386dde  f3 0f 7f 83 b8 3b 00 00        movdqu XMMWORD PTR [rbx+0x3bb8],xmm0
386de6  48 83 c4 78                    add    rsp,0x78
386dea  5f                             pop    rdi
386deb  5e                             pop    rsi
386dec  5b                             pop    rbx
386ded  5d                             pop    rbp
386dee  c3                             ret

; pdata function 0x389220..0x3893ad unwind=0x3d2038
389220  40 53                          rex push rbx
389222  48 83 ec 20                    sub    rsp,0x20
389226  f3 0f 10 05 ba fc eb ff        movss  xmm0,DWORD PTR [rip+0xffffffffffebfcba]        # 0x248ee8 ; f32=1
38922e  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
389233  f3 0f 59 05 45 9f f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff09f45]        # 0x293180 ; f32=5
38923b  0f 57 d2                       xorps  xmm2,xmm2
38923e  48 8b 1d e3 c8 07 00           mov    rbx,QWORD PTR [rip+0x7c8e3]        # 0x405b28
389245  0f 57 c9                       xorps  xmm1,xmm1
389248  f3 0f 11 83 e0 37 00 00        movss  DWORD PTR [rbx+0x37e0],xmm0
389250  e8 eb 30 f4 ff                 call   0x2cc340
389255  0f 57 d2                       xorps  xmm2,xmm2
389258  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
38925d  0f 57 c9                       xorps  xmm1,xmm1
389260  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
389264  f2 0f 11 83 d8 37 00 00        movsd  QWORD PTR [rbx+0x37d8],xmm0
38926c  e8 cf 30 f4 ff                 call   0x2cc340
389271  f3 0f 10 0d 67 4f f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff04f67]        # 0x28e1e0 ; f32=8
389279  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
38927e  0f 28 d1                       movaps xmm2,xmm1
389281  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
389285  f2 0f 11 83 e8 37 00 00        movsd  QWORD PTR [rbx+0x37e8],xmm0
38928d  c7 83 e4 37 00 00 00 00 00 00  mov    DWORD PTR [rbx+0x37e4],0x0
389297  f3 0f 10 05 49 fc eb ff        movss  xmm0,DWORD PTR [rip+0xffffffffffebfc49]        # 0x248ee8 ; f32=1
38929f  f3 0f 59 05 b1 9e f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff09eb1]        # 0x293158 ; f32=3
3892a7  f3 0f 11 83 14 38 00 00        movss  DWORD PTR [rbx+0x3814],xmm0
3892af  e8 8c 30 f4 ff                 call   0x2cc340
3892b4  48 8b c8                       mov    rcx,rax
3892b7  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
3892bc  e8 5f bc fd ff                 call   0x364f20
3892c1  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3892c6  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3892ca  f2 0f 11 83 0c 38 00 00        movsd  QWORD PTR [rbx+0x380c],xmm0
3892d2  c7 83 18 38 00 00 00 00 00 00  mov    DWORD PTR [rbx+0x3818],0x0
3892dc  f3 0f 10 0d 04 fc eb ff        movss  xmm1,DWORD PTR [rip+0xffffffffffebfc04]        # 0x248ee8 ; f32=1
3892e4  f3 0f 59 0d 6c 9e f0 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff09e6c]        # 0x293158 ; f32=3
3892ec  c7 83 08 38 00 00 00 00 00 00  mov    DWORD PTR [rbx+0x3808],0x0
3892f6  f3 0f 11 8b 04 38 00 00        movss  DWORD PTR [rbx+0x3804],xmm1
3892fe  f3 0f 10 05 e2 fb eb ff        movss  xmm0,DWORD PTR [rip+0xffffffffffebfbe2]        # 0x248ee8 ; f32=1
389306  f3 0f 59 05 6a 9e f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff09e6a]        # 0x293178 ; f32=4
38930e  c7 83 00 38 00 00 00 00 00 00  mov    DWORD PTR [rbx+0x3800],0x0
389318  f3 0f 10 0d 00 48 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff04800]        # 0x28db20 ; f32=20
389320  0f 28 d1                       movaps xmm2,xmm1
389323  f3 0f 11 83 fc 37 00 00        movss  DWORD PTR [rbx+0x37fc],xmm0
38932b  e8 10 30 f4 ff                 call   0x2cc340
389330  48 8b c8                       mov    rcx,rax
389333  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
389338  e8 e3 bb fd ff                 call   0x364f20
38933d  f3 0f 10 0d d7 47 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff047d7]        # 0x28db1c ; f32=10
389345  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
38934a  0f 28 d1                       movaps xmm2,xmm1
38934d  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
389351  f2 0f 11 83 1c 38 00 00        movsd  QWORD PTR [rbx+0x381c],xmm0
389359  e8 e2 2f f4 ff                 call   0x2cc340
38935e  48 8b c8                       mov    rcx,rax
389361  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
389366  e8 b5 bb fd ff                 call   0x364f20
38936b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
38936f  f2 0f 11 83 24 38 00 00        movsd  QWORD PTR [rbx+0x3824],xmm0
389377  f3 0f 10 0d 69 fb eb ff        movss  xmm1,DWORD PTR [rip+0xffffffffffebfb69]        # 0x248ee8 ; f32=1
38937f  f3 0f 59 0d f1 9d f0 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff09df1]        # 0x293178 ; f32=4
389387  f3 0f 11 8b 48 38 00 00        movss  DWORD PTR [rbx+0x3848],xmm1
38938f  f3 0f 10 05 51 fb eb ff        movss  xmm0,DWORD PTR [rip+0xffffffffffebfb51]        # 0x248ee8 ; f32=1
389397  f3 0f 59 05 d9 9d f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff09dd9]        # 0x293178 ; f32=4
38939f  f3 0f 11 83 44 38 00 00        movss  DWORD PTR [rbx+0x3844],xmm0
3893a7  48 83 c4 20                    add    rsp,0x20
3893ab  5b                             pop    rbx
3893ac  c3                             ret

