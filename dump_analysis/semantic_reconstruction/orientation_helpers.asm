; pdata function 0x3739c4..0x373a65 unwind=0x3d2348
3739c4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3739c9  57                             push   rdi
3739ca  48 83 ec 30                    sub    rsp,0x30
3739ce  48 8b da                       mov    rbx,rdx
3739d1  48 8b f9                       mov    rdi,rcx
3739d4  e8 2f 75 f5 ff                 call   0x2caf08
3739d9  84 c0                          test   al,al
3739db  74 7a                          je     0x373a57
3739dd  8b 0d 8d de 08 00              mov    ecx,DWORD PTR [rip+0x8de8d]        # 0x401870
3739e3  f6 c1 01                       test   cl,0x1
3739e6  75 20                          jne    0x373a08
3739e8  4c 8b 05 11 35 06 00           mov    r8,QWORD PTR [rip+0x63511]        # 0x3d6f00
3739ef  83 c9 01                       or     ecx,0x1
3739f2  49 81 c0 50 db 9e 01           add    r8,0x19edb50
3739f9  89 0d 71 de 08 00              mov    DWORD PTR [rip+0x8de71],ecx        # 0x401870
3739ff  4c 89 05 62 de 08 00           mov    QWORD PTR [rip+0x8de62],r8        # 0x401868
373a06  eb 07                          jmp    0x373a0f
373a08  4c 8b 05 59 de 08 00           mov    r8,QWORD PTR [rip+0x8de59]        # 0x401868
373a0f  f6 c1 02                       test   cl,0x2
373a12  75 1f                          jne    0x373a33
373a14  83 c9 02                       or     ecx,0x2
373a17  48 8d 15 62 de 08 00           lea    rdx,[rip+0x8de62]        # 0x401880
373a1e  89 0d 4c de 08 00              mov    DWORD PTR [rip+0x8de4c],ecx        # 0x401870
373a24  45 33 c9                       xor    r9d,r9d
373a27  48 8b 0d 32 24 06 00           mov    rcx,QWORD PTR [rip+0x62432]        # 0x3d5e60
373a2e  e8 f1 82 f5 ff                 call   0x2cbd24
373a33  48 8b 0d 26 24 06 00           mov    rcx,QWORD PTR [rip+0x62426]        # 0x3d5e60
373a3a  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
373a3f  4c 8b cf                       mov    r9,rdi
373a42  48 8d 15 37 de 08 00           lea    rdx,[rip+0x8de37]        # 0x401880
373a49  e8 46 e6 f5 ff                 call   0x2d2094
373a4e  0f 10 44 24 20                 movups xmm0,XMMWORD PTR [rsp+0x20]
373a53  f3 0f 7f 03                    movdqu XMMWORD PTR [rbx],xmm0
373a57  48 8b c3                       mov    rax,rbx
373a5a  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
373a5f  48 83 c4 30                    add    rsp,0x30
373a63  5f                             pop    rdi
373a64  c3                             ret

; pdata function 0x373c60..0x373d01 unwind=0x3d2348
373c60  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
373c65  57                             push   rdi
373c66  48 83 ec 30                    sub    rsp,0x30
373c6a  48 8b da                       mov    rbx,rdx
373c6d  48 8b f9                       mov    rdi,rcx
373c70  e8 93 72 f5 ff                 call   0x2caf08
373c75  84 c0                          test   al,al
373c77  74 7a                          je     0x373cf3
373c79  8b 0d e1 dc 08 00              mov    ecx,DWORD PTR [rip+0x8dce1]        # 0x401960
373c7f  f6 c1 01                       test   cl,0x1
373c82  75 20                          jne    0x373ca4
373c84  4c 8b 05 75 32 06 00           mov    r8,QWORD PTR [rip+0x63275]        # 0x3d6f00
373c8b  83 c9 01                       or     ecx,0x1
373c8e  49 81 c0 b0 3d 9f 01           add    r8,0x19f3db0
373c95  89 0d c5 dc 08 00              mov    DWORD PTR [rip+0x8dcc5],ecx        # 0x401960
373c9b  4c 89 05 b6 dc 08 00           mov    QWORD PTR [rip+0x8dcb6],r8        # 0x401958
373ca2  eb 07                          jmp    0x373cab
373ca4  4c 8b 05 ad dc 08 00           mov    r8,QWORD PTR [rip+0x8dcad]        # 0x401958
373cab  f6 c1 02                       test   cl,0x2
373cae  75 1f                          jne    0x373ccf
373cb0  83 c9 02                       or     ecx,0x2
373cb3  48 8d 15 b6 dc 08 00           lea    rdx,[rip+0x8dcb6]        # 0x401970
373cba  89 0d a0 dc 08 00              mov    DWORD PTR [rip+0x8dca0],ecx        # 0x401960
373cc0  45 33 c9                       xor    r9d,r9d
373cc3  48 8b 0d 96 21 06 00           mov    rcx,QWORD PTR [rip+0x62196]        # 0x3d5e60
373cca  e8 55 80 f5 ff                 call   0x2cbd24
373ccf  48 8b 0d 8a 21 06 00           mov    rcx,QWORD PTR [rip+0x6218a]        # 0x3d5e60
373cd6  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
373cdb  4c 8b cf                       mov    r9,rdi
373cde  48 8d 15 8b dc 08 00           lea    rdx,[rip+0x8dc8b]        # 0x401970
373ce5  e8 aa e3 f5 ff                 call   0x2d2094
373cea  0f 10 44 24 20                 movups xmm0,XMMWORD PTR [rsp+0x20]
373cef  f3 0f 7f 03                    movdqu XMMWORD PTR [rbx],xmm0
373cf3  48 8b c3                       mov    rax,rbx
373cf6  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
373cfb  48 83 c4 30                    add    rsp,0x30
373cff  5f                             pop    rdi
373d00  c3                             ret

; pdata function 0x3738cc..0x3739c4 unwind=0x3d4060
3738cc  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
3738d1  55                             push   rbp
3738d2  56                             push   rsi
3738d3  57                             push   rdi
3738d4  48 83 ec 40                    sub    rsp,0x40
3738d8  8b 05 a2 de 08 00              mov    eax,DWORD PTR [rip+0x8dea2]        # 0x401780
3738de  48 8b ea                       mov    rbp,rdx
3738e1  48 8b f1                       mov    rsi,rcx
3738e4  a8 01                          test   al,0x1
3738e6  0f 85 85 00 00 00              jne    0x373971
3738ec  83 c8 01                       or     eax,0x1
3738ef  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3738f4  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3738f9  89 05 81 de 08 00              mov    DWORD PTR [rip+0x8de81],eax        # 0x401780
3738ff  e8 b4 ff ff ff                 call   0x3738b8
373904  48 8b c8                       mov    rcx,rax
373907  e8 2c 98 f6 ff                 call   0x2dd138
37390c  48 8d 54 24 2b                 lea    rdx,[rsp+0x2b]
373911  48 8b f8                       mov    rdi,rax
373914  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
373919  e8 7e ff ff ff                 call   0x37389c ; STRING getter=0x37389c UnityEngine
37391e  48 8b c8                       mov    rcx,rax
373921  e8 e6 a4 f5 ff                 call   0x2cde0c
373926  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
37392b  48 8b d8                       mov    rbx,rax
37392e  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
373933  e8 48 ff ff ff                 call   0x373880 ; STRING getter=0x373880 Quaternion
373938  48 8b c8                       mov    rcx,rax
37393b  e8 8c 4c f6 ff                 call   0x2d85cc
373940  48 8b c8                       mov    rcx,rax
373943  48 8b d3                       mov    rdx,rbx
373946  e8 d9 08 fc ff                 call   0x334224
37394b  48 8b c8                       mov    rcx,rax
37394e  41 b1 01                       mov    r9b,0x1
373951  41 b8 01 00 00 00              mov    r8d,0x1
373957  48 8b d7                       mov    rdx,rdi
37395a  e8 31 11 fc ff                 call   0x334a90
37395f  4c 8b 00                       mov    r8,QWORD PTR [rax]
373962  8b 05 18 de 08 00              mov    eax,DWORD PTR [rip+0x8de18]        # 0x401780
373968  4c 89 05 09 de 08 00           mov    QWORD PTR [rip+0x8de09],r8        # 0x401778
37396f  eb 07                          jmp    0x373978
373971  4c 8b 05 00 de 08 00           mov    r8,QWORD PTR [rip+0x8de00]        # 0x401778
373978  a8 02                          test   al,0x2
37397a  75 1f                          jne    0x37399b
37397c  48 8b 0d dd 24 06 00           mov    rcx,QWORD PTR [rip+0x624dd]        # 0x3d5e60
373983  48 8d 15 06 de 08 00           lea    rdx,[rip+0x8de06]        # 0x401790
37398a  83 c8 02                       or     eax,0x2
37398d  45 33 c9                       xor    r9d,r9d
373990  89 05 ea dd 08 00              mov    DWORD PTR [rip+0x8ddea],eax        # 0x401780
373996  e8 89 83 f5 ff                 call   0x2cbd24
37399b  48 8b 0d be 24 06 00           mov    rcx,QWORD PTR [rip+0x624be]        # 0x3d5e60
3739a2  48 8d 15 e7 dd 08 00           lea    rdx,[rip+0x8dde7]        # 0x401790
3739a9  4c 8b cd                       mov    r9,rbp
3739ac  4c 8b c6                       mov    r8,rsi
3739af  e8 e0 e6 f5 ff                 call   0x2d2094
3739b4  48 8b 5c 24 68                 mov    rbx,QWORD PTR [rsp+0x68]
3739b9  48 8b c6                       mov    rax,rsi
3739bc  48 83 c4 40                    add    rsp,0x40
3739c0  5f                             pop    rdi
3739c1  5e                             pop    rsi
3739c2  5d                             pop    rbp
3739c3  c3                             ret

; pdata function 0x373b28..0x373c5f unwind=0x3d4070
373b28  48 8b c4                       mov    rax,rsp
373b2b  53                             push   rbx
373b2c  48 81 ec 80 00 00 00           sub    rsp,0x80
373b33  f3 41 0f 10 60 0c              movss  xmm4,DWORD PTR [r8+0xc]
373b39  48 8b d9                       mov    rbx,rcx
373b3c  f3 0f 10 6a 0c                 movss  xmm5,DWORD PTR [rdx+0xc]
373b41  f3 41 0f 10 48 04              movss  xmm1,DWORD PTR [r8+0x4]
373b47  f3 0f 59 4a 04                 mulss  xmm1,DWORD PTR [rdx+0x4]
373b4c  f3 41 0f 10 58 04              movss  xmm3,DWORD PTR [r8+0x4]
373b52  f3 41 0f 10 50 04              movss  xmm2,DWORD PTR [r8+0x4]
373b58  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
373b5c  f3 41 0f 10 30                 movss  xmm6,DWORD PTR [r8]
373b61  44 0f 29 40 d8                 movaps XMMWORD PTR [rax-0x28],xmm8
373b66  0f 28 c6                       movaps xmm0,xmm6
373b69  44 0f 29 50 c8                 movaps XMMWORD PTR [rax-0x38],xmm10
373b6e  44 0f 28 c4                    movaps xmm8,xmm4
373b72  f3 45 0f 10 50 08              movss  xmm10,DWORD PTR [r8+0x8]
373b78  44 0f 29 58 b8                 movaps XMMWORD PTR [rax-0x48],xmm11
373b7d  f3 44 0f 10 5a 08              movss  xmm11,DWORD PTR [rdx+0x8]
373b83  44 0f 29 60 a8                 movaps XMMWORD PTR [rax-0x58],xmm12
373b88  f3 44 0f 10 22                 movss  xmm12,DWORD PTR [rdx]
373b8d  f3 41 0f 59 c4                 mulss  xmm0,xmm12
373b92  f3 41 0f 59 dc                 mulss  xmm3,xmm12
373b97  f3 44 0f 59 c5                 mulss  xmm8,xmm5
373b9c  f3 0f 59 d5                    mulss  xmm2,xmm5
373ba0  f3 44 0f 5c c0                 subss  xmm8,xmm0
373ba5  41 0f 28 c2                    movaps xmm0,xmm10
373ba9  f3 41 0f 59 c3                 mulss  xmm0,xmm11
373bae  f3 44 0f 5c c1                 subss  xmm8,xmm1
373bb3  f3 0f 10 4a 04                 movss  xmm1,DWORD PTR [rdx+0x4]
373bb8  f3 0f 59 ce                    mulss  xmm1,xmm6
373bbc  f3 44 0f 5c c0                 subss  xmm8,xmm0
373bc1  41 0f 28 c2                    movaps xmm0,xmm10
373bc5  f3 0f 59 c5                    mulss  xmm0,xmm5
373bc9  f3 0f 58 d8                    addss  xmm3,xmm0
373bcd  f3 44 0f 11 40 98              movss  DWORD PTR [rax-0x68],xmm8
373bd3  41 0f 28 c3                    movaps xmm0,xmm11
373bd7  f3 0f 59 c4                    mulss  xmm0,xmm4
373bdb  f3 0f 5c d9                    subss  xmm3,xmm1
373bdf  f3 0f 10 4a 04                 movss  xmm1,DWORD PTR [rdx+0x4]
373be4  f3 0f 59 cc                    mulss  xmm1,xmm4
373be8  f3 0f 58 d8                    addss  xmm3,xmm0
373bec  41 0f 28 c2                    movaps xmm0,xmm10
373bf0  f3 44 0f 59 52 04              mulss  xmm10,DWORD PTR [rdx+0x4]
373bf6  f3 41 0f 59 c4                 mulss  xmm0,xmm12
373bfb  f3 44 0f 59 e4                 mulss  xmm12,xmm4
373c00  f3 0f 5c d0                    subss  xmm2,xmm0
373c04  41 0f 28 c3                    movaps xmm0,xmm11
373c08  f3 45 0f 59 58 04              mulss  xmm11,DWORD PTR [r8+0x4]
373c0e  f3 0f 59 c6                    mulss  xmm0,xmm6
373c12  f3 0f 58 d1                    addss  xmm2,xmm1
373c16  f3 0f 59 f5                    mulss  xmm6,xmm5
373c1a  f3 44 0f 58 e6                 addss  xmm12,xmm6
373c1f  f3 0f 58 d0                    addss  xmm2,xmm0
373c23  f3 45 0f 58 e2                 addss  xmm12,xmm10
373c28  f3 45 0f 5c e3                 subss  xmm12,xmm11
373c2d  41 0f 28 cc                    movaps xmm1,xmm12
373c31  e8 1a 87 f5 ff                 call   0x2cc350
373c36  0f 28 74 24 70                 movaps xmm6,XMMWORD PTR [rsp+0x70]
373c3b  48 8b c3                       mov    rax,rbx
373c3e  44 0f 28 44 24 60              movaps xmm8,XMMWORD PTR [rsp+0x60]
373c44  44 0f 28 54 24 50              movaps xmm10,XMMWORD PTR [rsp+0x50]
373c4a  44 0f 28 5c 24 40              movaps xmm11,XMMWORD PTR [rsp+0x40]
373c50  44 0f 28 64 24 30              movaps xmm12,XMMWORD PTR [rsp+0x30]
373c56  48 81 c4 80 00 00 00           add    rsp,0x80
373c5d  5b                             pop    rbx
373c5e  c3                             ret

