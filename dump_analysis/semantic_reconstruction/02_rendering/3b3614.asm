; pdata function 0x3b3614..0x3b3795 unwind=0x3d5644
3b3614  4c 8b dc                       mov    r11,rsp
3b3617  53                             push   rbx
3b3618  55                             push   rbp
3b3619  56                             push   rsi
3b361a  57                             push   rdi
3b361b  48 81 ec a8 00 00 00           sub    rsp,0xa8
3b3622  8b 05 f0 a4 05 00              mov    eax,DWORD PTR [rip+0x5a4f0]        # 0x40db18
3b3628  48 8b e9                       mov    rbp,rcx
3b362b  41 0f 29 73 c8                 movaps XMMWORD PTR [r11-0x38],xmm6
3b3630  0f 28 f3                       movaps xmm6,xmm3
3b3633  41 0f 29 7b b8                 movaps XMMWORD PTR [r11-0x48],xmm7
3b3638  0f 28 fa                       movaps xmm7,xmm2
3b363b  45 0f 29 43 a8                 movaps XMMWORD PTR [r11-0x58],xmm8
3b3640  44 0f 28 c1                    movaps xmm8,xmm1
3b3644  a8 01                          test   al,0x1
3b3646  0f 85 a2 00 00 00              jne    0x3b36ee
3b364c  83 c8 01                       or     eax,0x1
3b364f  49 8d 53 99                    lea    rdx,[r11-0x67]
3b3653  49 8d 4b 08                    lea    rcx,[r11+0x8]
3b3657  89 05 bb a4 05 00              mov    DWORD PTR [rip+0x5a4bb],eax        # 0x40db18
3b365d  e8 52 e1 ff ff                 call   0x3b17b4 ; STRING getter=0x3b17b4 UnityEngine
3b3662  48 8b c8                       mov    rcx,rax
3b3665  e8 f6 21 fc ff                 call   0x375860
3b366a  48 8d 94 24 d0 00 00 00        lea    rdx,[rsp+0xd0]
3b3672  48 8b f0                       mov    rsi,rax
3b3675  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3b367a  e8 b1 90 f1 ff                 call   0x2cc730
3b367f  48 8b c8                       mov    rcx,rax
3b3682  e8 1d a6 f1 ff                 call   0x2cdca4
3b3687  48 8d 54 24 51                 lea    rdx,[rsp+0x51]
3b368c  48 8b f8                       mov    rdi,rax
3b368f  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3b3694  e8 bb dd ff ff                 call   0x3b1454 ; STRING getter=0x3b1454 Ortho
3b3699  48 8b c8                       mov    rcx,rax
3b369c  e8 9f 69 fc ff                 call   0x37a040
3b36a1  48 8d 54 24 57                 lea    rdx,[rsp+0x57]
3b36a6  48 8b d8                       mov    rbx,rax
3b36a9  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
3b36ae  e8 b1 d7 ff ff                 call   0x3b0e64 ; STRING getter=0x3b0e64 Matrix4x4
3b36b3  48 8b c8                       mov    rcx,rax
3b36b6  e8 05 21 fc ff                 call   0x3757c0
3b36bb  48 8b c8                       mov    rcx,rax
3b36be  c7 44 24 28 ff ff ff ff        mov    DWORD PTR [rsp+0x28],0xffffffff
3b36c6  4c 8b cf                       mov    r9,rdi
3b36c9  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
3b36ce  41 b8 06 00 00 00              mov    r8d,0x6
3b36d4  48 8b d3                       mov    rdx,rbx
3b36d7  e8 18 05 f8 ff                 call   0x333bf4
3b36dc  4c 8b 00                       mov    r8,QWORD PTR [rax]
3b36df  8b 05 33 a4 05 00              mov    eax,DWORD PTR [rip+0x5a433]        # 0x40db18
3b36e5  4c 89 05 24 a4 05 00           mov    QWORD PTR [rip+0x5a424],r8        # 0x40db10
3b36ec  eb 07                          jmp    0x3b36f5
3b36ee  4c 8b 05 1b a4 05 00           mov    r8,QWORD PTR [rip+0x5a41b]        # 0x40db10
3b36f5  a8 02                          test   al,0x2
3b36f7  75 1f                          jne    0x3b3718
3b36f9  48 8b 0d 60 27 02 00           mov    rcx,QWORD PTR [rip+0x22760]        # 0x3d5e60
3b3700  48 8d 15 19 a4 05 00           lea    rdx,[rip+0x5a419]        # 0x40db20
3b3707  83 c8 02                       or     eax,0x2
3b370a  45 33 c9                       xor    r9d,r9d
3b370d  89 05 05 a4 05 00              mov    DWORD PTR [rip+0x5a405],eax        # 0x40db18
3b3713  e8 0c 86 f1 ff                 call   0x2cbd24
3b3718  48 8b cd                       mov    rcx,rbp
3b371b  e8 f8 d2 ff ff                 call   0x3b0a18
3b3720  f3 0f 10 84 24 00 01 00 00     movss  xmm0,DWORD PTR [rsp+0x100]
3b3729  48 8d 15 f0 a3 05 00           lea    rdx,[rip+0x5a3f0]        # 0x40db20
3b3730  f3 0f 10 8c 24 f8 00 00 00     movss  xmm1,DWORD PTR [rsp+0xf8]
3b3739  41 0f 28 d8                    movaps xmm3,xmm8
3b373d  48 8b 0d 1c 27 02 00           mov    rcx,QWORD PTR [rip+0x2271c]        # 0x3d5e60
3b3744  4c 8b c5                       mov    r8,rbp
3b3747  f3 0f 11 44 24 40              movss  DWORD PTR [rsp+0x40],xmm0
3b374d  f3 0f 10 84 24 f0 00 00 00     movss  xmm0,DWORD PTR [rsp+0xf0]
3b3756  f3 0f 11 4c 24 38              movss  DWORD PTR [rsp+0x38],xmm1
3b375c  f3 0f 11 44 24 30              movss  DWORD PTR [rsp+0x30],xmm0
3b3762  f3 0f 11 74 24 28              movss  DWORD PTR [rsp+0x28],xmm6
3b3768  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
3b376e  e8 99 c7 ff ff                 call   0x3aff0c
3b3773  4c 8d 9c 24 a8 00 00 00        lea    r11,[rsp+0xa8]
3b377b  48 8b c5                       mov    rax,rbp
3b377e  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
3b3783  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
3b3788  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
3b378d  49 8b e3                       mov    rsp,r11
3b3790  5f                             pop    rdi
3b3791  5e                             pop    rsi
3b3792  5d                             pop    rbp
3b3793  5b                             pop    rbx
3b3794  c3                             ret
