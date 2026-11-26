; pdata function 0x365004..0x365037 unwind=0x3d2038
365004  40 53                          rex push rbx
365006  48 83 ec 20                    sub    rsp,0x20
36500a  48 8b d9                       mov    rbx,rcx
36500d  e8 72 5b 06 00                 call   0x3cab84
365012  4c 8b c3                       mov    r8,rbx
365015  48 8d 0d 74 71 09 00           lea    rcx,[rip+0x97174]        # 0x3fc190
36501c  ba 00 02 00 00                 mov    edx,0x200
365021  4c 8d 0c 43                    lea    r9,[rbx+rax*2]
365025  e8 0e ec 02 00                 call   0x393c38
36502a  48 8d 05 5f 71 09 00           lea    rax,[rip+0x9715f]        # 0x3fc190
365031  48 83 c4 20                    add    rsp,0x20
365035  5b                             pop    rbx
365036  c3                             ret

; pdata function 0x3665b8..0x3666ae unwind=0x3d2d5c
3665b8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3665bd  55                             push   rbp
3665be  48 8b ec                       mov    rbp,rsp
3665c1  48 83 ec 40                    sub    rsp,0x40
3665c5  48 8b da                       mov    rbx,rdx
3665c8  48 8b d1                       mov    rdx,rcx
3665cb  e8 38 49 f6 ff                 call   0x2caf08
3665d0  84 c0                          test   al,al
3665d2  75 25                          jne    0x3665f9
3665d4  48 8d 55 20                    lea    rdx,[rbp+0x20]
3665d8  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3665dc  e8 4f 61 f6 ff                 call   0x2cc730
3665e1  48 8b c8                       mov    rcx,rax
3665e4  e8 bb 76 f6 ff                 call   0x2cdca4
3665e9  48 8b d0                       mov    rdx,rax
3665ec  48 8b cb                       mov    rcx,rbx
3665ef  e8 d8 5c f6 ff                 call   0x2cc2cc
3665f4  e9 a7 00 00 00                 jmp    0x3666a0
3665f9  48 8b 92 48 03 00 00           mov    rdx,QWORD PTR [rdx+0x348]
366600  48 8b ca                       mov    rcx,rdx
366603  e8 00 49 f6 ff                 call   0x2caf08
366608  84 c0                          test   al,al
36660a  75 0f                          jne    0x36661b
36660c  48 8d 55 20                    lea    rdx,[rbp+0x20]
366610  48 8d 4d 20                    lea    rcx,[rbp+0x20]
366614  e8 17 61 f6 ff                 call   0x2cc730
366619  eb c6                          jmp    0x3665e1
36661b  48 8d 4a 14                    lea    rcx,[rdx+0x14]
36661f  e8 e4 48 f6 ff                 call   0x2caf08
366624  84 c0                          test   al,al
366626  75 0f                          jne    0x366637
366628  48 8d 55 20                    lea    rdx,[rbp+0x20]
36662c  48 8d 4d 20                    lea    rcx,[rbp+0x20]
366630  e8 fb 60 f6 ff                 call   0x2cc730
366635  eb aa                          jmp    0x3665e1
366637  48 8d 4a 14                    lea    rcx,[rdx+0x14]
36663b  e8 c4 e9 ff ff                 call   0x365004
366640  48 8b d0                       mov    rdx,rax
366643  48 8d 4d e0                    lea    rcx,[rbp-0x20]
366647  e8 80 5c f6 ff                 call   0x2cc2cc
36664c  48 8d 4d e0                    lea    rcx,[rbp-0x20]
366650  e8 3f 20 f7 ff                 call   0x2d8694
366655  84 c0                          test   al,al
366657  74 22                          je     0x36667b
366659  48 8d 55 20                    lea    rdx,[rbp+0x20]
36665d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
366661  e8 ca 60 f6 ff                 call   0x2cc730
366666  48 8b c8                       mov    rcx,rax
366669  e8 36 76 f6 ff                 call   0x2cdca4
36666e  48 8b d0                       mov    rdx,rax
366671  48 8b cb                       mov    rcx,rbx
366674  e8 53 5c f6 ff                 call   0x2cc2cc
366679  eb 1c                          jmp    0x366697
36667b  80 3d 46 5e 09 00 00           cmp    BYTE PTR [rip+0x95e46],0x0        # 0x3fc4c8 ; CONFIG Bools.StreamerMode value(+0x48)
366682  48 8d 55 e0                    lea    rdx,[rbp-0x20]
366686  48 8b cb                       mov    rcx,rbx
366689  74 07                          je     0x366692
36668b  e8 1c fb ff ff                 call   0x3661ac
366690  eb 05                          jmp    0x366697
366692  e8 ed 5b f6 ff                 call   0x2cc284
366697  48 8d 4d e0                    lea    rcx,[rbp-0x20]
36669b  e8 54 5e f6 ff                 call   0x2cc4f4
3666a0  48 8b c3                       mov    rax,rbx
3666a3  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
3666a8  48 83 c4 40                    add    rsp,0x40
3666ac  5d                             pop    rbp
3666ad  c3                             ret

; pdata function 0x366140..0x366183 unwind=0x3d2064
366140  48 83 ec 28                    sub    rsp,0x28
366144  48 8b d1                       mov    rdx,rcx
366147  e8 bc 4d f6 ff                 call   0x2caf08
36614c  84 c0                          test   al,al
36614e  74 2c                          je     0x36617c
366150  48 8b 92 70 03 00 00           mov    rdx,QWORD PTR [rdx+0x370]
366157  48 8b ca                       mov    rcx,rdx
36615a  e8 a9 4d f6 ff                 call   0x2caf08
36615f  84 c0                          test   al,al
366161  74 19                          je     0x36617c
366163  48 8b 52 20                    mov    rdx,QWORD PTR [rdx+0x20]
366167  48 8b ca                       mov    rcx,rdx
36616a  e8 99 4d f6 ff                 call   0x2caf08
36616f  84 c0                          test   al,al
366171  74 09                          je     0x36617c
366173  83 7a 18 00                    cmp    DWORD PTR [rdx+0x18],0x0
366177  0f 9f c0                       setg   al
36617a  eb 02                          jmp    0x36617e
36617c  32 c0                          xor    al,al
36617e  48 83 c4 28                    add    rsp,0x28
366182  c3                             ret

; pdata function 0x3661ac..0x3663d1 unwind=0x3d3dfc
3661ac  48 8b c4                       mov    rax,rsp
3661af  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
3661b3  48 89 70 10                    mov    QWORD PTR [rax+0x10],rsi
3661b7  55                             push   rbp
3661b8  57                             push   rdi
3661b9  41 55                          push   r13
3661bb  41 56                          push   r14
3661bd  41 57                          push   r15
3661bf  48 8d 68 a1                    lea    rbp,[rax-0x5f]
3661c3  48 81 ec b0 00 00 00           sub    rsp,0xb0
3661ca  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
3661ce  4c 8d 2d fb 78 09 00           lea    r13,[rip+0x978fb]        # 0x3fdad0
3661d5  8b 05 35 79 09 00              mov    eax,DWORD PTR [rip+0x97935]        # 0x3fdb10
3661db  48 8b f2                       mov    rsi,rdx
3661de  48 8b f9                       mov    rdi,rcx
3661e1  a8 01                          test   al,0x1
3661e3  75 1d                          jne    0x366202
3661e5  83 c8 01                       or     eax,0x1
3661e8  49 8b cd                       mov    rcx,r13
3661eb  89 05 1f 79 09 00              mov    DWORD PTR [rip+0x9791f],eax        # 0x3fdb10
3661f1  e8 a6 fb ff ff                 call   0x365d9c
3661f6  48 8d 0d 43 aa 06 00           lea    rcx,[rip+0x6aa43]        # 0x3d0c40
3661fd  e8 2a 71 f6 ff                 call   0x2cd32c
366202  48 8b d6                       mov    rdx,rsi
366205  49 8b cd                       mov    rcx,r13
366208  e8 73 13 00 00                 call   0x367580
36620d  48 85 c0                       test   rax,rax
366210  74 1b                          je     0x36622d
366212  48 8b d6                       mov    rdx,rsi
366215  49 8b cd                       mov    rcx,r13
366218  e8 bb fc ff ff                 call   0x365ed8
36621d  48 8b d0                       mov    rdx,rax
366220  48 8b cf                       mov    rcx,rdi
366223  e8 6c df f6 ff                 call   0x2d4194
366228  e9 80 01 00 00                 jmp    0x3663ad
36622d  48 8d 55 77                    lea    rdx,[rbp+0x77]
366231  48 8d 4d 77                    lea    rcx,[rbp+0x77]
366235  e8 be fc ff ff                 call   0x365ef8 ; STRING getter=0x365ef8 aeiou
36623a  48 8b c8                       mov    rcx,rax
36623d  e8 72 22 f7 ff                 call   0x2d84b4
366242  48 8b d0                       mov    rdx,rax
366245  48 8d 4d ff                    lea    rcx,[rbp-0x1]
366249  e8 7e 60 f6 ff                 call   0x2cc2cc
36624e  48 8d 55 a7                    lea    rdx,[rbp-0x59]
366252  48 8d 4d 77                    lea    rcx,[rbp+0x77]
366256  e8 b5 fc ff ff                 call   0x365f10 ; STRING getter=0x365f10 bcdfghjklmnpqrstvwxyz
36625b  48 8b c8                       mov    rcx,rax
36625e  e8 01 d4 f7 ff                 call   0x2e3664
366263  48 8b d0                       mov    rdx,rax
366266  48 8d 4d df                    lea    rcx,[rbp-0x21]
36626a  e8 5d 60 f6 ff                 call   0x2cc2cc
36626f  f3 0f 10 0d 69 7f f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff27f69]        # 0x28e1e0 ; f32=8
366277  f3 0f 10 05 f9 ce f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff2cef9]        # 0x293178 ; f32=4
36627f  e8 d8 da f7 ff                 call   0x2e3d5c
366284  48 8d 4d bf                    lea    rcx,[rbp-0x41]
366288  f3 44 0f 2c f8                 cvttss2si r15d,xmm0
36628d  e8 ce e2 f6 ff                 call   0x2d4560
366292  f3 0f 10 0d ba 6f f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff26fba]        # 0x28d254 ; f32=1
36629a  0f 57 c0                       xorps  xmm0,xmm0
36629d  e8 ba da f7 ff                 call   0x2e3d5c
3662a2  0f 2e 05 a3 6f f2 ff           ucomiss xmm0,DWORD PTR [rip+0xfffffffffff26fa3]        # 0x28d24c
3662a9  7a 0a                          jp     0x3662b5
3662ab  75 08                          jne    0x3662b5
3662ad  41 be 01 00 00 00              mov    r14d,0x1
3662b3  eb 03                          jmp    0x3662b8
3662b5  45 33 f6                       xor    r14d,r14d
3662b8  33 db                          xor    ebx,ebx
3662ba  45 85 ff                       test   r15d,r15d
3662bd  0f 8e ac 00 00 00              jle    0x36636f
3662c3  f3 0f 10 35 39 73 f2 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff27339]        # 0x28d604
3662cb  49 bd 00 00 00 00 00 00 00 80  movabs r13,0x8000000000000000
3662d5  8b c3                          mov    eax,ebx
3662d7  f7 d0                          not    eax
3662d9  83 e0 01                       and    eax,0x1
3662dc  41 3b c6                       cmp    eax,r14d
3662df  75 33                          jne    0x366314
3662e1  48 8d 4d df                    lea    rcx,[rbp-0x21]
3662e5  e8 ee 27 f7 ff                 call   0x2d8ad8
3662ea  ff c8                          dec    eax
3662ec  0f 57 c0                       xorps  xmm0,xmm0
3662ef  66 0f 6e c8                    movd   xmm1,eax
3662f3  0f 5b c9                       cvtdq2ps xmm1,xmm1
3662f6  e8 61 da f7 ff                 call   0x2e3d5c
3662fb  33 c0                          xor    eax,eax
3662fd  0f 2f c6                       comiss xmm0,xmm6
366300  72 0c                          jb     0x36630e
366302  f3 0f 5c c6                    subss  xmm0,xmm6
366306  0f 2f c6                       comiss xmm0,xmm6
366309  73 03                          jae    0x36630e
36630b  49 8b c5                       mov    rax,r13
36630e  48 8d 4d df                    lea    rcx,[rbp-0x21]
366312  eb 31                          jmp    0x366345
366314  48 8d 4d ff                    lea    rcx,[rbp-0x1]
366318  e8 bb 27 f7 ff                 call   0x2d8ad8
36631d  ff c8                          dec    eax
36631f  0f 57 c0                       xorps  xmm0,xmm0
366322  66 0f 6e c8                    movd   xmm1,eax
366326  0f 5b c9                       cvtdq2ps xmm1,xmm1
366329  e8 2e da f7 ff                 call   0x2e3d5c
36632e  33 c0                          xor    eax,eax
366330  0f 2f c6                       comiss xmm0,xmm6
366333  72 0c                          jb     0x366341
366335  f3 0f 5c c6                    subss  xmm0,xmm6
366339  0f 2f c6                       comiss xmm0,xmm6
36633c  73 03                          jae    0x366341
36633e  49 8b c5                       mov    rax,r13
366341  48 8d 4d ff                    lea    rcx,[rbp-0x1]
366345  f3 48 0f 2c d0                 cvttss2si rdx,xmm0
36634a  48 03 d0                       add    rdx,rax
36634d  e8 7a e9 f6 ff                 call   0x2d4ccc
366352  48 8d 4d bf                    lea    rcx,[rbp-0x41]
366356  8a 10                          mov    dl,BYTE PTR [rax]
366358  e8 8f f2 f6 ff                 call   0x2d55ec
36635d  ff c3                          inc    ebx
36635f  41 3b df                       cmp    ebx,r15d
366362  0f 8c 6d ff ff ff              jl     0x3662d5
366368  4c 8d 2d 61 77 09 00           lea    r13,[rip+0x97761]        # 0x3fdad0
36636f  48 8b d6                       mov    rdx,rsi
366372  49 8b cd                       mov    rcx,r13
366375  e8 5e fb ff ff                 call   0x365ed8
36637a  48 8b c8                       mov    rcx,rax
36637d  48 8d 55 bf                    lea    rdx,[rbp-0x41]
366381  e8 9e e8 f6 ff                 call   0x2d4c24
366386  48 8d 55 bf                    lea    rdx,[rbp-0x41]
36638a  48 8b cf                       mov    rcx,rdi
36638d  e8 f2 5e f6 ff                 call   0x2cc284
366392  48 8d 4d bf                    lea    rcx,[rbp-0x41]
366396  e8 59 61 f6 ff                 call   0x2cc4f4
36639b  48 8d 4d df                    lea    rcx,[rbp-0x21]
36639f  e8 50 61 f6 ff                 call   0x2cc4f4
3663a4  48 8d 4d ff                    lea    rcx,[rbp-0x1]
3663a8  e8 47 61 f6 ff                 call   0x2cc4f4
3663ad  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
3663b5  48 8b c7                       mov    rax,rdi
3663b8  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
3663bc  49 8b 73 38                    mov    rsi,QWORD PTR [r11+0x38]
3663c0  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3663c5  49 8b e3                       mov    rsp,r11
3663c8  41 5f                          pop    r15
3663ca  41 5e                          pop    r14
3663cc  41 5d                          pop    r13
3663ce  5f                             pop    rdi
3663cf  5d                             pop    rbp
3663d0  c3                             ret

