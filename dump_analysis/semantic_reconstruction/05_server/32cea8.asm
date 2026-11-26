; pdata function 0x32cea8..0x32db94 unwind=0x3d3638
32cea8  48 8b c4                       mov    rax,rsp
32ceab  55                             push   rbp
32ceac  53                             push   rbx
32cead  56                             push   rsi
32ceae  57                             push   rdi
32ceaf  41 54                          push   r12
32ceb1  41 55                          push   r13
32ceb3  41 56                          push   r14
32ceb5  41 57                          push   r15
32ceb7  48 8d 68 a8                    lea    rbp,[rax-0x58]
32cebb  48 81 ec 18 01 00 00           sub    rsp,0x118
32cec2  8b 1d a8 b5 0c 00              mov    ebx,DWORD PTR [rip+0xcb5a8]        # 0x3f8470
32cec8  41 bd 01 00 00 00              mov    r13d,0x1
32cece  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
32ced2  48 8b f9                       mov    rdi,rcx
32ced5  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
32ced9  44 0f 29 40 88                 movaps XMMWORD PTR [rax-0x78],xmm8
32cede  44 0f 29 88 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm9
32cee6  44 0f 29 90 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm10
32ceee  44 0f 29 98 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm11
32cef6  41 84 dd                       test   r13b,bl
32cef9  75 1e                          jne    0x32cf19
32cefb  41 0b dd                       or     ebx,r13d
32cefe  48 8d 0d 83 39 0c 00           lea    rcx,[rip+0xc3983]        # 0x3f0888
32cf05  89 1d 65 b5 0c 00              mov    DWORD PTR [rip+0xcb565],ebx        # 0x3f8470
32cf0b  e8 c8 16 fa ff                 call   0x2ce5d8
32cf10  48 89 05 51 b5 0c 00           mov    QWORD PTR [rip+0xcb551],rax        # 0x3f8468
32cf17  eb 07                          jmp    0x32cf20
32cf19  48 8b 05 48 b5 0c 00           mov    rax,QWORD PTR [rip+0xcb548]        # 0x3f8468
32cf20  f6 c3 02                       test   bl,0x2
32cf23  75 22                          jne    0x32cf47
32cf25  48 8b 0d 34 8f 0a 00           mov    rcx,QWORD PTR [rip+0xa8f34]        # 0x3d5e60
32cf2c  48 8d 15 4d b5 0c 00           lea    rdx,[rip+0xcb54d]        # 0x3f8480
32cf33  83 cb 02                       or     ebx,0x2
32cf36  45 33 c9                       xor    r9d,r9d
32cf39  4c 8b c0                       mov    r8,rax
32cf3c  89 1d 2e b5 0c 00              mov    DWORD PTR [rip+0xcb52e],ebx        # 0x3f8470
32cf42  e8 dd ed f9 ff                 call   0x2cbd24
32cf47  48 8b 0d 12 8f 0a 00           mov    rcx,QWORD PTR [rip+0xa8f12]        # 0x3d5e60
32cf4e  48 8d 15 2b b5 0c 00           lea    rdx,[rip+0xcb52b]        # 0x3f8480
32cf55  4c 8b c7                       mov    r8,rdi
32cf58  e8 9f ea f9 ff                 call   0x2cb9fc
32cf5d  48 8b 15 9c 9f 0a 00           mov    rdx,QWORD PTR [rip+0xa9f9c]        # 0x3d6f00
32cf64  48 8b 4d 58                    mov    rcx,QWORD PTR [rbp+0x58]
32cf68  48 81 c2 37 4a fe 03           add    rdx,0x3fe4a37
32cf6f  89 45 68                       mov    DWORD PTR [rbp+0x68],eax
32cf72  48 3b ca                       cmp    rcx,rdx
32cf75  74 07                          je     0x32cf7e
32cf77  84 c0                          test   al,al
32cf79  e9 dd 0b 00 00                 jmp    0x32db5b
32cf7e  e8 c9 3e fb ff                 call   0x2e0e4c
32cf83  33 ff                          xor    edi,edi
32cf85  84 c0                          test   al,al
32cf87  0f 85 b0 0b 00 00              jne    0x32db3d
32cf8d  e8 0a 37 fb ff                 call   0x2e069c
32cf92  48 8b c8                       mov    rcx,rax
32cf95  e8 6e df f9 ff                 call   0x2caf08
32cf9a  84 c0                          test   al,al
32cf9c  0f 84 9b 0b 00 00              je     0x32db3d
32cfa2  e8 f5 0a fb ff                 call   0x2dda9c
32cfa7  48 8b c8                       mov    rcx,rax
32cfaa  48 8b f0                       mov    rsi,rax
32cfad  e8 56 df f9 ff                 call   0x2caf08
32cfb2  84 c0                          test   al,al
32cfb4  0f 84 83 0b 00 00              je     0x32db3d
32cfba  e8 5d 88 fe ff                 call   0x31581c
32cfbf  0f 28 f0                       movaps xmm6,xmm0
32cfc2  0f 57 ff                       xorps  xmm7,xmm7
32cfc5  f3 0f 5c 35 57 51 0c 00        subss  xmm6,DWORD PTR [rip+0xc5157]        # 0x3f2124
32cfcd  f3 0f 5d 35 7f 02 f6 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff6027f]        # 0x28d254
32cfd5  0f 2f fe                       comiss xmm7,xmm6
32cfd8  76 03                          jbe    0x32cfdd
32cfda  0f 57 f6                       xorps  xmm6,xmm6
32cfdd  f3 0f 11 35 07 a3 0a 00        movss  DWORD PTR [rip+0xaa307],xmm6        # 0x3d72ec
32cfe5  e8 32 88 fe ff                 call   0x31581c
32cfea  40 38 3d 57 ae 0c 00           cmp    BYTE PTR [rip+0xcae57],dil        # 0x3f7e48 ; CONFIG Bools.SpecialTeleport value(+0x48)
32cff1  44 0f 28 c0                    movaps xmm8,xmm0
32cff5  f3 44 0f 5c 05 26 51 0c 00     subss  xmm8,DWORD PTR [rip+0xc5126]        # 0x3f2124
32cffe  0f 84 30 04 00 00              je     0x32d434
32d004  e8 a7 32 fb ff                 call   0x2e02b0
32d009  48 8b 96 e8 04 00 00           mov    rdx,QWORD PTR [rsi+0x4e8]
32d010  4c 8b e0                       mov    r12,rax
32d013  48 8b ca                       mov    rcx,rdx
32d016  e8 ed de f9 ff                 call   0x2caf08
32d01b  84 c0                          test   al,al
32d01d  0f 84 11 04 00 00              je     0x32d434
32d023  40 38 3d 76 a2 0a 00           cmp    BYTE PTR [rip+0xaa276],dil        # 0x3d72a0
32d02a  0f 84 e3 03 00 00              je     0x32d413
32d030  49 8b cc                       mov    rcx,r12
32d033  e8 d0 de f9 ff                 call   0x2caf08
32d038  84 c0                          test   al,al
32d03a  0f 84 d3 03 00 00              je     0x32d413
32d040  f3 44 0f 10 4a 30              movss  xmm9,DWORD PTR [rdx+0x30]
32d046  4c 8d 35 6b be f1 ff           lea    r14,[rip+0xfffffffffff1be6b]        # 0x248eb8
32d04d  f3 44 0f 10 52 34              movss  xmm10,DWORD PTR [rdx+0x34]
32d053  49 8b ce                       mov    rcx,r14
32d056  f3 44 0f 10 5a 38              movss  xmm11,DWORD PTR [rdx+0x38]
32d05c  e8 03 dc fe ff                 call   0x31ac64
32d061  45 8b fd                       mov    r15d,r13d
32d064  66 41 0f 6e c7                 movd   xmm0,r15d
32d069  0f 5b c0                       cvtdq2ps xmm0,xmm0
32d06c  f3 44 0f 11 4c 24 40           movss  DWORD PTR [rsp+0x40],xmm9
32d073  f3 0f 59 05 2d 60 f6 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff6602d]        # 0x2930a8 ; f32=0.2
32d07b  f3 44 0f 11 5c 24 48           movss  DWORD PTR [rsp+0x48],xmm11
32d082  f3 41 0f 58 c2                 addss  xmm0,xmm10
32d087  f3 0f 11 44 24 44              movss  DWORD PTR [rsp+0x44],xmm0
32d08d  e8 da 99 fb ff                 call   0x2e6a6c
32d092  f3 0f 10 15 62 0a f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff60a62]        # 0x28dafc ; f32=1.5
32d09a  48 8d 4d a0                    lea    rcx,[rbp-0x60]
32d09e  0f 57 db                       xorps  xmm3,xmm3
32d0a1  f3 44 0f 11 4c 24 60           movss  DWORD PTR [rsp+0x60],xmm9
32d0a8  0f 57 c9                       xorps  xmm1,xmm1
32d0ab  f3 44 0f 11 54 24 64           movss  DWORD PTR [rsp+0x64],xmm10
32d0b2  f3 44 0f 11 5c 24 68           movss  DWORD PTR [rsp+0x68],xmm11
32d0b9  8b d8                          mov    ebx,eax
32d0bb  e8 e8 aa 09 00                 call   0x3c7ba8
32d0c0  4c 8b c0                       mov    r8,rax
32d0c3  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d0c8  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
32d0cd  e8 36 26 fb ff                 call   0x2df708
32d0d2  0f 57 db                       xorps  xmm3,xmm3
32d0d5  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
32d0db  44 8b c3                       mov    r8d,ebx
32d0de  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
32d0e3  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
32d0e8  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32d0ec  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32d0ef  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
32d0f5  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
32d0f9  e8 22 52 fb ff                 call   0x2e2320
32d0fe  84 c0                          test   al,al
32d100  74 5e                          je     0x32d160
32d102  48 8b ce                       mov    rcx,rsi
32d105  e8 be d1 03 00                 call   0x36a2c8
32d10a  48 8b c8                       mov    rcx,rax
32d10d  48 8b d0                       mov    rdx,rax
32d110  e8 f3 dd f9 ff                 call   0x2caf08
32d115  84 c0                          test   al,al
32d117  74 3a                          je     0x32d153
32d119  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
32d11f  41 0f 28 d0                    movaps xmm2,xmm8
32d123  8b 4c 24 48                    mov    ecx,DWORD PTR [rsp+0x48]
32d127  8b 42 38                       mov    eax,DWORD PTR [rdx+0x38]
32d12a  f2 0f 11 45 80                 movsd  QWORD PTR [rbp-0x80],xmm0
32d12f  f2 0f 10 42 30                 movsd  xmm0,QWORD PTR [rdx+0x30]
32d134  48 8d 55 80                    lea    rdx,[rbp-0x80]
32d138  89 4d 88                       mov    DWORD PTR [rbp-0x78],ecx
32d13b  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
32d140  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
32d146  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
32d14a  e8 61 55 ff ff                 call   0x3226b0
32d14f  84 c0                          test   al,al
32d151  74 0d                          je     0x32d160
32d153  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
32d158  49 8b ce                       mov    rcx,r14
32d15b  e8 3c 3c ff ff                 call   0x320d9c
32d160  45 03 fd                       add    r15d,r13d
32d163  41 83 ff 19                    cmp    r15d,0x19
32d167  0f 8e f7 fe ff ff              jle    0x32d064
32d16d  40 38 3d 54 b0 0c 00           cmp    BYTE PTR [rip+0xcb054],dil        # 0x3f81c8
32d174  0f 85 79 02 00 00              jne    0x32d3f3
32d17a  49 8b ce                       mov    rcx,r14
32d17d  e8 1e b5 fa ff                 call   0x2d86a0
32d182  84 c0                          test   al,al
32d184  0f 85 aa 02 00 00              jne    0x32d434
32d18a  49 8b ce                       mov    rcx,r14
32d18d  e8 ba d7 fe ff                 call   0x31a94c
32d192  f3 0f 10 15 62 09 f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff60962]        # 0x28dafc ; f32=1.5
32d19a  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
32d19f  0f 57 db                       xorps  xmm3,xmm3
32d1a2  0f 57 c9                       xorps  xmm1,xmm1
32d1a5  48 8b d8                       mov    rbx,rax
32d1a8  e8 fb a9 09 00                 call   0x3c7ba8
32d1ad  4c 8b c0                       mov    r8,rax
32d1b0  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
32d1b5  48 8b cb                       mov    rcx,rbx
32d1b8  e8 4b 25 fb ff                 call   0x2df708
32d1bd  41 b8 37 00 00 00              mov    r8d,0x37
32d1c3  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
32d1c8  49 8b cc                       mov    rcx,r12
32d1cb  e8 18 ba 03 00                 call   0x368be8
32d1d0  41 b8 36 00 00 00              mov    r8d,0x36
32d1d6  48 8d 55 a0                    lea    rdx,[rbp-0x60]
32d1da  49 8b cc                       mov    rcx,r12
32d1dd  e8 06 ba 03 00                 call   0x368be8
32d1e2  48 8d 55 80                    lea    rdx,[rbp-0x80]
32d1e6  49 8b cc                       mov    rcx,r12
32d1e9  e8 a2 c5 03 00                 call   0x369790
32d1ee  f3 0f 10 5c 24 78              movss  xmm3,DWORD PTR [rsp+0x78]
32d1f4  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
32d1f9  f3 0f 10 55 a4                 movss  xmm2,DWORD PTR [rbp-0x5c]
32d1fe  f3 0f 10 4c 24 70              movss  xmm1,DWORD PTR [rsp+0x70]
32d204  e8 9f a9 09 00                 call   0x3c7ba8
32d209  f3 0f 10 15 87 5e f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff65e87]        # 0x293098 ; f32=0.05
32d211  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
32d216  0f 57 db                       xorps  xmm3,xmm3
32d219  0f 57 c9                       xorps  xmm1,xmm1
32d21c  48 8b d8                       mov    rbx,rax
32d21f  e8 84 a9 09 00                 call   0x3c7ba8
32d224  4c 8b c0                       mov    r8,rax
32d227  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
32d22c  48 8b cb                       mov    rcx,rbx
32d22f  e8 d4 24 fb ff                 call   0x2df708
32d234  40 38 3d 8d ac 0a 00           cmp    BYTE PTR [rip+0xaac8d],dil        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
32d23b  74 2b                          je     0x32d268
32d23d  f3 0f 10 15 ef 5e f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff65eef]        # 0x293134 ; f32=2
32d245  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
32d24a  0f 57 db                       xorps  xmm3,xmm3
32d24d  0f 57 c9                       xorps  xmm1,xmm1
32d250  e8 53 a9 09 00                 call   0x3c7ba8
32d255  4c 8b c0                       mov    r8,rax
32d258  48 8d 55 90                    lea    rdx,[rbp-0x70]
32d25c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
32d261  e8 a2 24 fb ff                 call   0x2df708
32d266  eb 17                          jmp    0x32d27f
32d268  8b 45 88                       mov    eax,DWORD PTR [rbp-0x78]
32d26b  f2 0f 10 45 80                 movsd  xmm0,QWORD PTR [rbp-0x80]
32d270  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
32d274  48 8d 44 24 50                 lea    rax,[rsp+0x50]
32d279  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
32d27f  f2 44 0f 10 08                 movsd  xmm9,QWORD PTR [rax]
32d284  8b 58 08                       mov    ebx,DWORD PTR [rax+0x8]
32d287  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
32d28d  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
32d291  f2 44 0f 11 4c 24 30           movsd  QWORD PTR [rsp+0x30],xmm9
32d298  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
32d29e  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
32d2a2  89 5c 24 38                    mov    DWORD PTR [rsp+0x38],ebx
32d2a6  e8 c1 97 fb ff                 call   0x2e6a6c
32d2ab  44 8b c0                       mov    r8d,eax
32d2ae  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
32d2b4  0f 57 db                       xorps  xmm3,xmm3
32d2b7  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d2bc  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
32d2c1  e8 5a 50 fb ff                 call   0x2e2320
32d2c6  84 c0                          test   al,al
32d2c8  0f 84 15 01 00 00              je     0x32d3e3
32d2ce  f2 0f 10 44 24 60              movsd  xmm0,QWORD PTR [rsp+0x60]
32d2d4  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
32d2d8  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d2de  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
32d2e2  f2 44 0f 11 4c 24 50           movsd  QWORD PTR [rsp+0x50],xmm9
32d2e9  89 5c 24 58                    mov    DWORD PTR [rsp+0x58],ebx
32d2ed  e8 7a 97 fb ff                 call   0x2e6a6c
32d2f2  44 8b c0                       mov    r8d,eax
32d2f5  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
32d2fb  0f 57 db                       xorps  xmm3,xmm3
32d2fe  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d303  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
32d308  e8 13 50 fb ff                 call   0x2e2320
32d30d  84 c0                          test   al,al
32d30f  0f 84 ce 00 00 00              je     0x32d3e3
32d315  48 8b ce                       mov    rcx,rsi
32d318  e8 b7 ad 03 00                 call   0x3680d4
32d31d  48 8b c8                       mov    rcx,rax
32d320  4c 8b f8                       mov    r15,rax
32d323  e8 e0 db f9 ff                 call   0x2caf08
32d328  84 c0                          test   al,al
32d32a  0f 84 aa 00 00 00              je     0x32d3da
32d330  49 8b ce                       mov    rcx,r14
32d333  8b df                          mov    ebx,edi
32d335  e8 2a 3c ff ff                 call   0x320f64
32d33a  48 85 c0                       test   rax,rax
32d33d  0f 84 97 00 00 00              je     0x32d3da
32d343  48 63 d3                       movsxd rdx,ebx
32d346  49 8b ce                       mov    rcx,r14
32d349  e8 82 24 fc ff                 call   0x2ef7d0
32d34e  48 8b ce                       mov    rcx,rsi
32d351  f2 44 0f 10 08                 movsd  xmm9,QWORD PTR [rax]
32d356  44 8b 60 08                    mov    r12d,DWORD PTR [rax+0x8]
32d35a  f2 44 0f 11 4c 24 30           movsd  QWORD PTR [rsp+0x30],xmm9
32d361  44 89 64 24 38                 mov    DWORD PTR [rsp+0x38],r12d
32d366  e8 31 f9 ff ff                 call   0x32cc9c
32d36b  48 8b c8                       mov    rcx,rax
32d36e  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d373  e8 50 7b 04 00                 call   0x374ec8
32d378  48 8b ce                       mov    rcx,rsi
32d37b  e8 80 c0 03 00                 call   0x369400
32d380  48 8b c8                       mov    rcx,rax
32d383  4c 8b c0                       mov    r8,rax
32d386  e8 7d db f9 ff                 call   0x2caf08
32d38b  84 c0                          test   al,al
32d38d  74 0d                          je     0x32d39c
32d38f  ba 10 00 00 00                 mov    edx,0x10
32d394  49 8b c8                       mov    rcx,r8
32d397  e8 80 58 04 00                 call   0x372c1c
32d39c  45 33 c9                       xor    r9d,r9d
32d39f  f2 44 0f 11 4c 24 50           movsd  QWORD PTR [rsp+0x50],xmm9
32d3a6  4c 8b c6                       mov    r8,rsi
32d3a9  44 89 64 24 58                 mov    DWORD PTR [rsp+0x58],r12d
32d3ae  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
32d3b3  49 8b cf                       mov    rcx,r15
32d3b6  e8 3d d6 ff ff                 call   0x32a9f8
32d3bb  48 8b ce                       mov    rcx,rsi
32d3be  e8 1d d9 03 00                 call   0x36ace0
32d3c3  49 8b ce                       mov    rcx,r14
32d3c6  41 03 dd                       add    ebx,r13d
32d3c9  e8 96 3b ff ff                 call   0x320f64
32d3ce  48 63 cb                       movsxd rcx,ebx
32d3d1  48 3b c8                       cmp    rcx,rax
32d3d4  0f 82 69 ff ff ff              jb     0x32d343
32d3da  44 88 2d e7 ad 0c 00           mov    BYTE PTR [rip+0xcade7],r13b        # 0x3f81c8
32d3e1  eb 10                          jmp    0x32d3f3
32d3e3  40 38 3d de ad 0c 00           cmp    BYTE PTR [rip+0xcadde],dil        # 0x3f81c8
32d3ea  40 88 3d 67 b1 0c 00           mov    BYTE PTR [rip+0xcb167],dil        # 0x3f8558
32d3f1  74 41                          je     0x32d434
32d3f3  40 38 3d 5f b1 0c 00           cmp    BYTE PTR [rip+0xcb15f],dil        # 0x3f8559
32d3fa  75 38                          jne    0x32d434
32d3fc  48 8b ce                       mov    rcx,rsi
32d3ff  e8 dc d8 03 00                 call   0x36ace0
32d404  89 3d 52 b1 0c 00              mov    DWORD PTR [rip+0xcb152],edi        # 0x3f855c
32d40a  44 88 2d 48 b1 0c 00           mov    BYTE PTR [rip+0xcb148],r13b        # 0x3f8559
32d411  eb 21                          jmp    0x32d434
32d413  48 8d 0d 9e ba f1 ff           lea    rcx,[rip+0xfffffffffff1ba9e]        # 0x248eb8
32d41a  40 88 3d 37 b1 0c 00           mov    BYTE PTR [rip+0xcb137],dil        # 0x3f8558
32d421  40 88 3d 31 b1 0c 00           mov    BYTE PTR [rip+0xcb131],dil        # 0x3f8559
32d428  40 88 3d 99 ad 0c 00           mov    BYTE PTR [rip+0xcad99],dil        # 0x3f81c8
32d42f  e8 30 d8 fe ff                 call   0x31ac64
32d434  40 38 3d 65 9e 0a 00           cmp    BYTE PTR [rip+0xa9e65],dil        # 0x3d72a0
32d43b  74 23                          je     0x32d460
32d43d  40 38 3d 94 d1 0b 00           cmp    BYTE PTR [rip+0xbd194],dil        # 0x3ea5d8 ; CONFIG Bools.desyncnotvisible value(+0x48)
32d444  75 09                          jne    0x32d44f
32d446  40 38 3d db d1 0b 00           cmp    BYTE PTR [rip+0xbd1db],dil        # 0x3ea628 ; CONFIG Bools.ShouldAttempDesync value(+0x48)
32d44d  74 11                          je     0x32d460
32d44f  f3 0f 10 05 5d 6d f6 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff66d5d]        # 0x2941b4 ; f32=0.75
32d457  0f 2f c6                       comiss xmm0,xmm6
32d45a  0f 87 a8 00 00 00              ja     0x32d508
32d460  48 8b ce                       mov    rcx,rsi
32d463  e8 34 f8 ff ff                 call   0x32cc9c
32d468  48 8b c8                       mov    rcx,rax
32d46b  4c 8b f0                       mov    r14,rax
32d46e  e8 95 da f9 ff                 call   0x2caf08
32d473  84 c0                          test   al,al
32d475  0f 84 c2 06 00 00              je     0x32db3d
32d47b  40 38 3d 1f ae 0a 00           cmp    BYTE PTR [rip+0xaae1f],dil        # 0x3d82a1
32d482  0f 85 87 00 00 00              jne    0x32d50f
32d488  40 38 3d 79 56 0c 00           cmp    BYTE PTR [rip+0xc5679],dil        # 0x3f2b08
32d48f  74 7e                          je     0x32d50f
32d491  48 8d 0d 20 ad 0c 00           lea    rcx,[rip+0xcad20]        # 0x3f81b8
32d498  e8 bb 66 fb ff                 call   0x2e3b58
32d49d  84 c0                          test   al,al
32d49f  75 67                          jne    0x32d508
32d4a1  48 8b ce                       mov    rcx,rsi
32d4a4  e8 2b ac 03 00                 call   0x3680d4
32d4a9  48 8b c8                       mov    rcx,rax
32d4ac  4c 8b d0                       mov    r10,rax
32d4af  e8 54 da f9 ff                 call   0x2caf08
32d4b4  84 c0                          test   al,al
32d4b6  74 50                          je     0x32d508
32d4b8  8b 0d 02 ad 0c 00              mov    ecx,DWORD PTR [rip+0xcad02]        # 0x3f81c0
32d4be  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d4c3  f2 0f 10 05 ed ac 0c 00        movsd  xmm0,QWORD PTR [rip+0xcaced]        # 0x3f81b8
32d4cb  45 8a cd                       mov    r9b,r13b
32d4ce  89 4c 24 38                    mov    DWORD PTR [rsp+0x38],ecx
32d4d2  4c 8b c6                       mov    r8,rsi
32d4d5  49 8b ca                       mov    rcx,r10
32d4d8  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d4de  e8 15 d5 ff ff                 call   0x32a9f8
32d4e3  f2 0f 10 05 cd ac 0c 00        movsd  xmm0,QWORD PTR [rip+0xcaccd]        # 0x3f81b8
32d4eb  8b 05 cf ac 0c 00              mov    eax,DWORD PTR [rip+0xcaccf]        # 0x3f81c0
32d4f1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d4f6  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d4fc  49 8b ce                       mov    rcx,r14
32d4ff  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
32d503  e8 c0 79 04 00                 call   0x374ec8
32d508  32 c0                          xor    al,al
32d50a  e9 4f 06 00 00                 jmp    0x32db5e
32d50f  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
32d514  49 8b ce                       mov    rcx,r14
32d517  e8 b8 72 04 00                 call   0x3747d4
32d51c  8a 1d 7f ad 0a 00              mov    bl,BYTE PTR [rip+0xaad7f]        # 0x3d82a1
32d522  84 db                          test   bl,bl
32d524  74 36                          je     0x32d55c
32d526  48 8d 0d 8b ac 0c 00           lea    rcx,[rip+0xcac8b]        # 0x3f81b8
32d52d  e8 26 66 fb ff                 call   0x2e3b58
32d532  84 c0                          test   al,al
32d534  74 15                          je     0x32d54b
32d536  f2 0f 10 74 24 40              movsd  xmm6,QWORD PTR [rsp+0x40]
32d53c  44 8b 7c 24 48                 mov    r15d,DWORD PTR [rsp+0x48]
32d541  f2 0f 11 35 6f ac 0c 00        movsd  QWORD PTR [rip+0xcac6f],xmm6        # 0x3f81b8
32d549  eb 30                          jmp    0x32d57b
32d54b  44 8b 3d 6e ac 0c 00           mov    r15d,DWORD PTR [rip+0xcac6e]        # 0x3f81c0
32d552  f2 0f 10 35 5e ac 0c 00        movsd  xmm6,QWORD PTR [rip+0xcac5e]        # 0x3f81b8
32d55a  eb 26                          jmp    0x32d582
32d55c  48 8d 4d 90                    lea    rcx,[rbp-0x70]
32d560  e8 57 a6 09 00                 call   0x3c7bbc
32d565  8a 1d 36 ad 0a 00              mov    bl,BYTE PTR [rip+0xaad36]        # 0x3d82a1
32d56b  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
32d56f  f2 0f 11 35 41 ac 0c 00        movsd  QWORD PTR [rip+0xcac41],xmm6        # 0x3f81b8
32d577  44 8b 78 08                    mov    r15d,DWORD PTR [rax+0x8]
32d57b  44 89 3d 3e ac 0c 00           mov    DWORD PTR [rip+0xcac3e],r15d        # 0x3f81c0
32d582  48 8d 0d 2f ac 0c 00           lea    rcx,[rip+0xcac2f]        # 0x3f81b8
32d589  e8 ca 65 fb ff                 call   0x2e3b58
32d58e  84 c0                          test   al,al
32d590  0f 85 be 00 00 00              jne    0x32d654
32d596  8b 05 d4 ae 0c 00              mov    eax,DWORD PTR [rip+0xcaed4]        # 0x3f8470
32d59c  a8 04                          test   al,0x4
32d59e  75 13                          jne    0x32d5b3
32d5a0  83 c8 04                       or     eax,0x4
32d5a3  88 1d b7 af 0c 00              mov    BYTE PTR [rip+0xcafb7],bl        # 0x3f8560
32d5a9  89 05 c1 ae 0c 00              mov    DWORD PTR [rip+0xcaec1],eax        # 0x3f8470
32d5af  8a c3                          mov    al,bl
32d5b1  eb 06                          jmp    0x32d5b9
32d5b3  8a 05 a7 af 0c 00              mov    al,BYTE PTR [rip+0xcafa7]        # 0x3f8560
32d5b9  3a c3                          cmp    al,bl
32d5bb  74 64                          je     0x32d621
32d5bd  88 1d 9d af 0c 00              mov    BYTE PTR [rip+0xcaf9d],bl        # 0x3f8560
32d5c3  84 db                          test   bl,bl
32d5c5  75 5e                          jne    0x32d625
32d5c7  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d5cc  f2 0f 11 74 24 30              movsd  QWORD PTR [rsp+0x30],xmm6
32d5d2  49 8b ce                       mov    rcx,r14
32d5d5  44 89 7c 24 38                 mov    DWORD PTR [rsp+0x38],r15d
32d5da  e8 e9 78 04 00                 call   0x374ec8
32d5df  48 8b ce                       mov    rcx,rsi
32d5e2  e8 f9 d6 03 00                 call   0x36ace0
32d5e7  f2 0f 10 05 c9 ab 0c 00        movsd  xmm0,QWORD PTR [rip+0xcabc9]        # 0x3f81b8
32d5ef  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d5f4  8b 05 c6 ab 0c 00              mov    eax,DWORD PTR [rip+0xcabc6]        # 0x3f81c0
32d5fa  49 8b ce                       mov    rcx,r14
32d5fd  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d603  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
32d607  e8 bc 78 04 00                 call   0x374ec8
32d60c  8a 1d 8f ac 0a 00              mov    bl,BYTE PTR [rip+0xaac8f]        # 0x3d82a1
32d612  44 8b 3d a7 ab 0c 00           mov    r15d,DWORD PTR [rip+0xcaba7]        # 0x3f81c0
32d619  f2 0f 10 35 97 ab 0c 00        movsd  xmm6,QWORD PTR [rip+0xcab97]        # 0x3f81b8
32d621  84 db                          test   bl,bl
32d623  74 2f                          je     0x32d654
32d625  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d62a  f2 0f 11 74 24 30              movsd  QWORD PTR [rsp+0x30],xmm6
32d630  49 8b ce                       mov    rcx,r14
32d633  44 89 7c 24 38                 mov    DWORD PTR [rsp+0x38],r15d
32d638  e8 8b 78 04 00                 call   0x374ec8
32d63d  48 8b ce                       mov    rcx,rsi
32d640  e8 9b d6 03 00                 call   0x36ace0
32d645  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
32d64b  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
32d64f  e9 9d fe ff ff                 jmp    0x32d4f1
32d654  44 8a 3d e6 24 0c 00           mov    r15b,BYTE PTR [rip+0xc24e6]        # 0x3efb41
32d65b  45 84 ff                       test   r15b,r15b
32d65e  75 2b                          jne    0x32d68b
32d660  48 8d 4d 90                    lea    rcx,[rbp-0x70]
32d664  e8 53 a5 09 00                 call   0x3c7bbc
32d669  8a 1d 32 ac 0a 00              mov    bl,BYTE PTR [rip+0xaac32]        # 0x3d82a1
32d66f  44 8a 3d cb 24 0c 00           mov    r15b,BYTE PTR [rip+0xc24cb]        # 0x3efb41
32d676  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32d67a  f2 0f 11 05 76 ad 0c 00        movsd  QWORD PTR [rip+0xcad76],xmm0        # 0x3f83f8 ; CONFIG V3.InteractivePosStartOther value(+0x48)
32d682  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32d685  89 05 75 ad 0c 00              mov    DWORD PTR [rip+0xcad75],eax        # 0x3f8400
32d68b  44 38 3d 0e ab 0c 00           cmp    BYTE PTR [rip+0xcab0e],r15b        # 0x3f81a0
32d692  4c 8d 25 c7 b2 ee ff           lea    r12,[rip+0xffffffffffeeb2c7]        # 0x218960
32d699  0f 84 15 01 00 00              je     0x32d7b4
32d69f  45 84 ff                       test   r15b,r15b
32d6a2  74 3f                          je     0x32d6e3
32d6a4  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
32d6a8  f2 0f 10 4c 24 40              movsd  xmm1,QWORD PTR [rsp+0x40]
32d6ae  f3 0f 10 44 24 44              movss  xmm0,DWORD PTR [rsp+0x44]
32d6b4  f3 0f 11 0d ec aa 0c 00        movss  DWORD PTR [rip+0xcaaec],xmm1        # 0x3f81a8
32d6bc  66 0f 6e d0                    movd   xmm2,eax
32d6c0  f3 0f 11 15 e8 aa 0c 00        movss  DWORD PTR [rip+0xcaae8],xmm2        # 0x3f81b0
32d6c8  f3 0f 11 05 dc aa 0c 00        movss  DWORD PTR [rip+0xcaadc],xmm0        # 0x3f81ac
32d6d0  f2 0f 11 0d 20 ad 0c 00        movsd  QWORD PTR [rip+0xcad20],xmm1        # 0x3f83f8 ; CONFIG V3.InteractivePosStartOther value(+0x48)
32d6d8  89 05 22 ad 0c 00              mov    DWORD PTR [rip+0xcad22],eax        # 0x3f8400
32d6de  e9 c8 00 00 00                 jmp    0x32d7ab
32d6e3  49 8b cc                       mov    rcx,r12
32d6e6  8b df                          mov    ebx,edi
32d6e8  e8 77 38 ff ff                 call   0x320f64
32d6ed  48 85 c0                       test   rax,rax
32d6f0  74 68                          je     0x32d75a
32d6f2  48 63 d3                       movsxd rdx,ebx
32d6f5  49 8b cc                       mov    rcx,r12
32d6f8  e8 d3 20 fc ff                 call   0x2ef7d0
32d6fd  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d702  49 8b ce                       mov    rcx,r14
32d705  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32d709  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32d70c  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d712  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
32d716  e8 ad 77 04 00                 call   0x374ec8
32d71b  48 8b ce                       mov    rcx,rsi
32d71e  e8 dd bc 03 00                 call   0x369400
32d723  48 8b c8                       mov    rcx,rax
32d726  4c 8b c0                       mov    r8,rax
32d729  e8 da d7 f9 ff                 call   0x2caf08
32d72e  84 c0                          test   al,al
32d730  74 0d                          je     0x32d73f
32d732  ba 10 00 00 00                 mov    edx,0x10
32d737  49 8b c8                       mov    rcx,r8
32d73a  e8 dd 54 04 00                 call   0x372c1c
32d73f  48 8b ce                       mov    rcx,rsi
32d742  e8 99 d5 03 00                 call   0x36ace0
32d747  49 8b cc                       mov    rcx,r12
32d74a  41 03 dd                       add    ebx,r13d
32d74d  e8 12 38 ff ff                 call   0x320f64
32d752  48 63 cb                       movsxd rcx,ebx
32d755  48 3b c8                       cmp    rcx,rax
32d758  72 98                          jb     0x32d6f2
32d75a  48 8d 4d 90                    lea    rcx,[rbp-0x70]
32d75e  e8 59 a4 09 00                 call   0x3c7bbc
32d763  49 8b cc                       mov    rcx,r12
32d766  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32d76a  f2 0f 11 05 86 ac 0c 00        movsd  QWORD PTR [rip+0xcac86],xmm0        # 0x3f83f8 ; CONFIG V3.InteractivePosStartOther value(+0x48)
32d772  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32d775  89 05 85 ac 0c 00              mov    DWORD PTR [rip+0xcac85],eax        # 0x3f8400
32d77b  e8 e4 37 ff ff                 call   0x320f64
32d780  49 3b c5                       cmp    rax,r13
32d783  72 0d                          jb     0x32d792
32d785  49 8b cc                       mov    rcx,r12
32d788  e8 d7 d4 fe ff                 call   0x31ac64
32d78d  e9 76 fd ff ff                 jmp    0x32d508
32d792  8a 1d 09 ab 0a 00              mov    bl,BYTE PTR [rip+0xaab09]        # 0x3d82a1
32d798  f3 0f 10 54 24 48              movss  xmm2,DWORD PTR [rsp+0x48]
32d79e  f3 0f 10 4c 24 40              movss  xmm1,DWORD PTR [rsp+0x40]
32d7a4  44 8a 3d 96 23 0c 00           mov    r15b,BYTE PTR [rip+0xc2396]        # 0x3efb41
32d7ab  44 88 3d ee a9 0c 00           mov    BYTE PTR [rip+0xca9ee],r15b        # 0x3f81a0
32d7b2  eb 0c                          jmp    0x32d7c0
32d7b4  f3 0f 10 54 24 48              movss  xmm2,DWORD PTR [rsp+0x48]
32d7ba  f3 0f 10 4c 24 40              movss  xmm1,DWORD PTR [rsp+0x40]
32d7c0  f3 0f 10 05 e4 a9 0c 00        movss  xmm0,DWORD PTR [rip+0xca9e4]        # 0x3f81ac
32d7c8  48 8d 15 d9 a9 0c 00           lea    rdx,[rip+0xca9d9]        # 0x3f81a8
32d7cf  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
32d7d4  f3 0f 11 44 24 64              movss  DWORD PTR [rsp+0x64],xmm0
32d7da  f3 0f 11 4c 24 60              movss  DWORD PTR [rsp+0x60],xmm1
32d7e0  f3 0f 11 54 24 68              movss  DWORD PTR [rsp+0x68],xmm2
32d7e6  e8 45 27 fb ff                 call   0x2dff30
32d7eb  f3 0f 10 15 8d 59 f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff6598d]        # 0x293180 ; f32=5
32d7f3  0f 57 c9                       xorps  xmm1,xmm1
32d7f6  0f 28 da                       movaps xmm3,xmm2
32d7f9  f3 0f 5c d8                    subss  xmm3,xmm0
32d7fd  0f 28 c3                       movaps xmm0,xmm3
32d800  e8 3f 82 fb ff                 call   0x2e5a44
32d805  f3 0f 11 05 ab fe 0b 00        movss  DWORD PTR [rip+0xbfeab],xmm0        # 0x3ed6b8 ; CONFIG F.teleportdistance value(+0x48)
32d80d  45 84 ff                       test   r15b,r15b
32d810  0f 84 e5 00 00 00              je     0x32d8fb
32d816  49 8b cc                       mov    rcx,r12
32d819  e8 82 ae fa ff                 call   0x2d86a0
32d81e  84 c0                          test   al,al
32d820  75 43                          jne    0x32d865
32d822  49 8b cc                       mov    rcx,r12
32d825  e8 76 ae fa ff                 call   0x2d86a0
32d82a  84 c0                          test   al,al
32d82c  75 44                          jne    0x32d872
32d82e  49 8b cc                       mov    rcx,r12
32d831  e8 16 d1 fe ff                 call   0x31a94c
32d836  48 8b d0                       mov    rdx,rax
32d839  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
32d83e  e8 99 1d fb ff                 call   0x2df5dc
32d843  84 c0                          test   al,al
32d845  74 2b                          je     0x32d872
32d847  49 8b cc                       mov    rcx,r12
32d84a  e8 fd d0 fe ff                 call   0x31a94c
32d84f  48 8b d0                       mov    rdx,rax
32d852  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
32d857  e8 d4 26 fb ff                 call   0x2dff30
32d85c  0f 2f 05 ed f9 f5 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff5f9ed]        # 0x28d250 ; f32=0.5
32d863  76 0d                          jbe    0x32d872
32d865  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
32d86a  49 8b cc                       mov    rcx,r12
32d86d  e8 2a 35 ff ff                 call   0x320d9c
32d872  49 8b cc                       mov    rcx,r12
32d875  e8 26 ae fa ff                 call   0x2d86a0
32d87a  84 c0                          test   al,al
32d87c  75 2b                          jne    0x32d8a9
32d87e  49 8b cc                       mov    rcx,r12
32d881  e8 de 36 ff ff                 call   0x320f64
32d886  49 2b c5                       sub    rax,r13
32d889  49 8b cc                       mov    rcx,r12
32d88c  48 8b d0                       mov    rdx,rax
32d88f  e8 3c 1f fc ff                 call   0x2ef7d0
32d894  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32d898  f2 0f 11 05 b8 ab 0c 00        movsd  QWORD PTR [rip+0xcabb8],xmm0        # 0x3f8458 ; CONFIG V3.InteractivePosRage value(+0x48)
32d8a0  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32d8a3  89 05 b7 ab 0c 00              mov    DWORD PTR [rip+0xcabb7],eax        # 0x3f8460
32d8a9  f2 0f 10 05 f7 a8 0c 00        movsd  xmm0,QWORD PTR [rip+0xca8f7]        # 0x3f81a8
32d8b1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d8b6  8b 05 f4 a8 0c 00              mov    eax,DWORD PTR [rip+0xca8f4]        # 0x3f81b0
32d8bc  49 8b ce                       mov    rcx,r14
32d8bf  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d8c5  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
32d8c9  e8 fa 75 04 00                 call   0x374ec8
32d8ce  48 8b ce                       mov    rcx,rsi
32d8d1  e8 2a bb 03 00                 call   0x369400
32d8d6  48 8b c8                       mov    rcx,rax
32d8d9  4c 8b c0                       mov    r8,rax
32d8dc  e8 27 d6 f9 ff                 call   0x2caf08
32d8e1  84 c0                          test   al,al
32d8e3  0f 84 54 fd ff ff              je     0x32d63d
32d8e9  ba 10 00 00 00                 mov    edx,0x10
32d8ee  49 8b c8                       mov    rcx,r8
32d8f1  e8 26 53 04 00                 call   0x372c1c
32d8f6  e9 42 fd ff ff                 jmp    0x32d63d
32d8fb  84 db                          test   bl,bl
32d8fd  0f 85 3a 02 00 00              jne    0x32db3d
32d903  48 8b ce                       mov    rcx,rsi
32d906  e8 bd c9 03 00                 call   0x36a2c8
32d90b  48 8b c8                       mov    rcx,rax
32d90e  48 8b d8                       mov    rbx,rax
32d911  e8 f2 d5 f9 ff                 call   0x2caf08
32d916  84 c0                          test   al,al
32d918  0f 84 1f 02 00 00              je     0x32db3d
32d91e  8b 4b 38                       mov    ecx,DWORD PTR [rbx+0x38]
32d921  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
32d926  f2 0f 10 43 30                 movsd  xmm0,QWORD PTR [rbx+0x30]
32d92b  48 8d 55 90                    lea    rdx,[rbp-0x70]
32d92f  8b 44 24 48                    mov    eax,DWORD PTR [rsp+0x48]
32d933  44 8b f1                       mov    r14d,ecx
32d936  f2 0f 10 73 30                 movsd  xmm6,QWORD PTR [rbx+0x30]
32d93b  44 8b 7b 28                    mov    r15d,DWORD PTR [rbx+0x28]
32d93f  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
32d945  f2 0f 10 44 24 40              movsd  xmm0,QWORD PTR [rsp+0x40]
32d94b  89 4c 24 78                    mov    DWORD PTR [rsp+0x78],ecx
32d94f  89 4c 24 58                    mov    DWORD PTR [rsp+0x58],ecx
32d953  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
32d958  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
32d95e  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
32d964  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
32d968  f2 0f 11 74 24 50              movsd  QWORD PTR [rsp+0x50],xmm6
32d96e  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
32d972  e8 55 1d fb ff                 call   0x2df6cc
32d977  48 8b c8                       mov    rcx,rax
32d97a  48 8d 55 a0                    lea    rdx,[rbp-0x60]
32d97e  41 0f 28 d0                    movaps xmm2,xmm8
32d982  e8 bd 1d fb ff                 call   0x2df744
32d987  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32d98c  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
32d991  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
32d995  f2 0f 11 05 c3 86 0b 00        movsd  QWORD PTR [rip+0xb86c3],xmm0        # 0x3e6060
32d99d  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
32d9a0  89 05 c2 86 0b 00              mov    DWORD PTR [rip+0xb86c2],eax        # 0x3e6068
32d9a6  e8 31 1c fb ff                 call   0x2df5dc
32d9ab  84 c0                          test   al,al
32d9ad  0f 84 8a 01 00 00              je     0x32db3d
32d9b3  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
32d9b8  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
32d9bd  e8 1a 1c fb ff                 call   0x2df5dc
32d9c2  84 c0                          test   al,al
32d9c4  0f 84 73 01 00 00              je     0x32db3d
32d9ca  41 0f 28 d0                    movaps xmm2,xmm8
32d9ce  f2 0f 11 74 24 30              movsd  QWORD PTR [rsp+0x30],xmm6
32d9d4  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
32d9d9  44 89 74 24 38                 mov    DWORD PTR [rsp+0x38],r14d
32d9de  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
32d9e3  e8 c8 4c ff ff                 call   0x3226b0
32d9e8  41 0f 28 d8                    movaps xmm3,xmm8
32d9ec  f2 0f 11 74 24 30              movsd  QWORD PTR [rsp+0x30],xmm6
32d9f2  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
32d9f7  44 89 74 24 38                 mov    DWORD PTR [rsp+0x38],r14d
32d9fc  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32da01  48 8b ce                       mov    rcx,rsi
32da04  44 8a e0                       mov    r12b,al
32da07  e8 a4 01 00 00                 call   0x32dbb0
32da0c  44 8a e8                       mov    r13b,al
32da0f  45 85 ff                       test   r15d,r15d
32da12  0f 85 0d 01 00 00              jne    0x32db25
32da18  33 d2                          xor    edx,edx
32da1a  48 8b ce                       mov    rcx,rsi
32da1d  e8 ea c7 03 00                 call   0x36a20c
32da22  84 c0                          test   al,al
32da24  75 0f                          jne    0x32da35
32da26  48 8b ce                       mov    rcx,rsi
32da29  e8 82 b9 03 00                 call   0x3693b0
32da2e  44 8a ff                       mov    r15b,dil
32da31  84 c0                          test   al,al
32da33  74 03                          je     0x32da38
32da35  41 b7 01                       mov    r15b,0x1
32da38  40 38 3d 69 c4 0b 00           cmp    BYTE PTR [rip+0xbc469],dil        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
32da3f  74 1f                          je     0x32da60
32da41  45 33 c0                       xor    r8d,r8d
32da44  48 8d 55 90                    lea    rdx,[rbp-0x70]
32da48  48 8d 0d 19 28 0c 00           lea    rcx,[rip+0xc2819]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
32da4f  e8 9c be fb ff                 call   0x2e98f0
32da54  48 8b c8                       mov    rcx,rax
32da57  e8 14 73 fa ff                 call   0x2d4d70
32da5c  84 c0                          test   al,al
32da5e  75 12                          jne    0x32da72
32da60  40 38 3d da a7 0a 00           cmp    BYTE PTR [rip+0xaa7da],dil        # 0x3d8241
32da67  75 09                          jne    0x32da72
32da69  40 38 3d 71 1a 0c 00           cmp    BYTE PTR [rip+0xc1a71],dil        # 0x3ef4e1
32da70  74 43                          je     0x32dab5
32da72  45 0a e7                       or     r12b,r15b
32da75  75 3e                          jne    0x32dab5
32da77  f2 0f 11 73 30                 movsd  QWORD PTR [rbx+0x30],xmm6
32da7c  48 8b ce                       mov    rcx,rsi
32da7f  44 89 73 38                    mov    DWORD PTR [rbx+0x38],r14d
32da83  e8 4c a6 03 00                 call   0x3680d4
32da88  48 8b c8                       mov    rcx,rax
32da8b  4c 8b d0                       mov    r10,rax
32da8e  e8 75 d4 f9 ff                 call   0x2caf08
32da93  84 c0                          test   al,al
32da95  74 1e                          je     0x32dab5
32da97  41 b1 01                       mov    r9b,0x1
32da9a  f2 0f 11 74 24 30              movsd  QWORD PTR [rsp+0x30],xmm6
32daa0  4c 8b c6                       mov    r8,rsi
32daa3  44 89 74 24 38                 mov    DWORD PTR [rsp+0x38],r14d
32daa8  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32daad  49 8b ca                       mov    rcx,r10
32dab0  e8 43 cf ff ff                 call   0x32a9f8
32dab5  41 b8 03 00 00 00              mov    r8d,0x3
32dabb  48 8d 55 90                    lea    rdx,[rbp-0x70]
32dabf  48 8d 0d a2 27 0c 00           lea    rcx,[rip+0xc27a2]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
32dac6  e8 25 be fb ff                 call   0x2e98f0
32dacb  48 8b c8                       mov    rcx,rax
32dace  e8 9d 72 fa ff                 call   0x2d4d70
32dad3  84 c0                          test   al,al
32dad5  74 66                          je     0x32db3d
32dad7  40 38 3d ca c3 0b 00           cmp    BYTE PTR [rip+0xbc3ca],dil        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
32dade  74 5d                          je     0x32db3d
32dae0  45 0a ef                       or     r13b,r15b
32dae3  75 58                          jne    0x32db3d
32dae5  f2 0f 11 73 30                 movsd  QWORD PTR [rbx+0x30],xmm6
32daea  48 8b ce                       mov    rcx,rsi
32daed  44 89 73 38                    mov    DWORD PTR [rbx+0x38],r14d
32daf1  e8 de a5 03 00                 call   0x3680d4
32daf6  48 8b c8                       mov    rcx,rax
32daf9  4c 8b d0                       mov    r10,rax
32dafc  e8 07 d4 f9 ff                 call   0x2caf08
32db01  84 c0                          test   al,al
32db03  74 38                          je     0x32db3d
32db05  41 b1 01                       mov    r9b,0x1
32db08  f2 0f 11 74 24 30              movsd  QWORD PTR [rsp+0x30],xmm6
32db0e  4c 8b c6                       mov    r8,rsi
32db11  44 89 74 24 38                 mov    DWORD PTR [rsp+0x38],r14d
32db16  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
32db1b  49 8b ca                       mov    rcx,r10
32db1e  e8 d5 ce ff ff                 call   0x32a9f8
32db23  eb 18                          jmp    0x32db3d
32db25  89 3d 05 46 0c 00              mov    DWORD PTR [rip+0xc4605],edi        # 0x3f2130
32db2b  89 3d fb 45 0c 00              mov    DWORD PTR [rip+0xc45fb],edi        # 0x3f212c
32db31  89 3d 5d 85 0b 00              mov    DWORD PTR [rip+0xb855d],edi        # 0x3e6094
32db37  89 3d 53 85 0b 00              mov    DWORD PTR [rip+0xb8553],edi        # 0x3e6090
32db3d  e8 da 7c fe ff                 call   0x31581c
32db42  f3 0f 11 05 da 45 0c 00        movss  DWORD PTR [rip+0xc45da],xmm0        # 0x3f2124
32db4a  e8 f1 86 fb ff                 call   0x2e6240
32db4f  40 38 7d 68                    cmp    BYTE PTR [rbp+0x68],dil
32db53  f3 0f 11 05 69 a6 0c 00        movss  DWORD PTR [rip+0xca669],xmm0        # 0x3f81c4
32db5b  0f 95 c0                       setne  al
32db5e  4c 8d 9c 24 18 01 00 00        lea    r11,[rsp+0x118]
32db66  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
32db6b  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
32db70  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
32db75  45 0f 28 4b b8                 movaps xmm9,XMMWORD PTR [r11-0x48]
32db7a  45 0f 28 53 a8                 movaps xmm10,XMMWORD PTR [r11-0x58]
32db7f  45 0f 28 5b 98                 movaps xmm11,XMMWORD PTR [r11-0x68]
32db84  49 8b e3                       mov    rsp,r11
32db87  41 5f                          pop    r15
32db89  41 5e                          pop    r14
32db8b  41 5d                          pop    r13
32db8d  41 5c                          pop    r12
32db8f  5f                             pop    rdi
32db90  5e                             pop    rsi
32db91  5b                             pop    rbx
32db92  5d                             pop    rbp
32db93  c3                             ret
