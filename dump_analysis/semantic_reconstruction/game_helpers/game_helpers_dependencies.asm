; pdata function 0x36c3b4..0x36c3d4 unwind=0x3d2064
36c3b4  48 83 ec 28                    sub    rsp,0x28
36c3b8  48 8b d1                       mov    rdx,rcx
36c3bb  e8 48 eb f5 ff                 call   0x2caf08
36c3c0  84 c0                          test   al,al
36c3c2  75 04                          jne    0x36c3c8
36c3c4  33 c0                          xor    eax,eax
36c3c6  eb 07                          jmp    0x36c3cf
36c3c8  48 8b 82 f8 03 00 00           mov    rax,QWORD PTR [rdx+0x3f8]
36c3cf  48 83 c4 28                    add    rsp,0x28
36c3d3  c3                             ret

; pdata function 0x32210c..0x322132 unwind=0x3d2038
32210c  40 53                          rex push rbx
32210e  48 83 ec 20                    sub    rsp,0x20
322112  48 8b d9                       mov    rbx,rcx
322115  e8 6a 00 00 00                 call   0x322184
32211a  84 c0                          test   al,al
32211c  74 0b                          je     0x322129
32211e  48 8b d3                       mov    rdx,rbx
322121  48 8b cb                       mov    rcx,rbx
322124  e8 2f ff ff ff                 call   0x322058
322129  48 8b c3                       mov    rax,rbx
32212c  48 83 c4 20                    add    rsp,0x20
322130  5b                             pop    rbx
322131  c3                             ret

; pdata function 0x3703ec..0x370508 unwind=0x3d2628
3703ec  40 53                          rex push rbx
3703ee  55                             push   rbp
3703ef  56                             push   rsi
3703f0  57                             push   rdi
3703f1  48 83 ec 68                    sub    rsp,0x68
3703f5  48 8b e9                       mov    rbp,rcx
3703f8  48 8b ca                       mov    rcx,rdx
3703fb  e8 a4 06 00 00                 call   0x370aa4
370400  48 85 c0                       test   rax,rax
370403  0f 84 f4 00 00 00              je     0x3704fd
370409  48 8b c8                       mov    rcx,rax
37040c  e8 73 04 00 00                 call   0x370884
370411  48 8b f0                       mov    rsi,rax
370414  48 85 c0                       test   rax,rax
370417  0f 84 e0 00 00 00              je     0x3704fd
37041d  8b 0d 9d 00 09 00              mov    ecx,DWORD PTR [rip+0x9009d]        # 0x4004c0
370423  f6 c1 01                       test   cl,0x1
370426  0f 85 8b 00 00 00              jne    0x3704b7
37042c  83 c9 01                       or     ecx,0x1
37042f  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
370434  89 0d 86 00 09 00              mov    DWORD PTR [rip+0x90086],ecx        # 0x4004c0
37043a  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
370442  e8 dd fe ff ff                 call   0x370324 ; STRING getter=0x370324 UnityEngine
370447  48 8b c8                       mov    rcx,rax
37044a  e8 e5 d9 f5 ff                 call   0x2cde34
37044f  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
370454  48 8b f8                       mov    rdi,rax
370457  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
37045f  e8 10 fe ff ff                 call   0x370274 ; STRING getter=0x370274 GetComponent
370464  48 8b c8                       mov    rcx,rax
370467  e8 88 81 f6 ff                 call   0x2d85f4
37046c  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
370471  48 8b d8                       mov    rbx,rax
370474  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
37047c  e8 4f fd ff ff                 call   0x3701d0 ; STRING getter=0x3701d0 Component
370481  48 8b c8                       mov    rcx,rax
370484  e8 bb d8 f5 ff                 call   0x2cdd44
370489  48 8b c8                       mov    rcx,rax
37048c  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
370494  41 b9 01 00 00 00              mov    r9d,0x1
37049a  4c 8b c7                       mov    r8,rdi
37049d  48 8b d3                       mov    rdx,rbx
3704a0  e8 c7 3c fc ff                 call   0x33416c
3704a5  8b 0d 15 00 09 00              mov    ecx,DWORD PTR [rip+0x90015]        # 0x4004c0
3704ab  4c 8b 00                       mov    r8,QWORD PTR [rax]
3704ae  4c 89 05 03 00 09 00           mov    QWORD PTR [rip+0x90003],r8        # 0x4004b8
3704b5  eb 07                          jmp    0x3704be
3704b7  4c 8b 05 fa ff 08 00           mov    r8,QWORD PTR [rip+0x8fffa]        # 0x4004b8
3704be  f6 c1 02                       test   cl,0x2
3704c1  75 1f                          jne    0x3704e2
3704c3  83 c9 02                       or     ecx,0x2
3704c6  48 8d 15 03 00 09 00           lea    rdx,[rip+0x90003]        # 0x4004d0
3704cd  89 0d ed ff 08 00              mov    DWORD PTR [rip+0x8ffed],ecx        # 0x4004c0
3704d3  45 33 c9                       xor    r9d,r9d
3704d6  48 8b 0d 83 59 06 00           mov    rcx,QWORD PTR [rip+0x65983]        # 0x3d5e60
3704dd  e8 42 b8 f5 ff                 call   0x2cbd24
3704e2  48 8b 0d 77 59 06 00           mov    rcx,QWORD PTR [rip+0x65977]        # 0x3d5e60
3704e9  48 8d 15 e0 ff 08 00           lea    rdx,[rip+0x8ffe0]        # 0x4004d0
3704f0  4c 8b ce                       mov    r9,rsi
3704f3  4c 8b c5                       mov    r8,rbp
3704f6  e8 99 1b f6 ff                 call   0x2d2094
3704fb  eb 02                          jmp    0x3704ff
3704fd  33 c0                          xor    eax,eax
3704ff  48 83 c4 68                    add    rsp,0x68
370503  5f                             pop    rdi
370504  5e                             pop    rsi
370505  5d                             pop    rbp
370506  5b                             pop    rbx
370507  c3                             ret

; pdata function 0x372754..0x3727df unwind=0x3d2038
372754  40 53                          rex push rbx
372756  48 83 ec 20                    sub    rsp,0x20
37275a  48 8b d9                       mov    rbx,rcx
37275d  e8 a6 87 f5 ff                 call   0x2caf08
372762  84 c0                          test   al,al
372764  75 08                          jne    0x37276e
372766  33 c0                          xor    eax,eax
372768  48 83 c4 20                    add    rsp,0x20
37276c  5b                             pop    rbx
37276d  c3                             ret
37276e  8b 0d bc e5 08 00              mov    ecx,DWORD PTR [rip+0x8e5bc]        # 0x400d30
372774  f6 c1 01                       test   cl,0x1
372777  75 20                          jne    0x372799
372779  4c 8b 05 80 47 06 00           mov    r8,QWORD PTR [rip+0x64780]        # 0x3d6f00
372780  83 c9 01                       or     ecx,0x1
372783  49 81 c0 b0 a6 14 05           add    r8,0x514a6b0
37278a  89 0d a0 e5 08 00              mov    DWORD PTR [rip+0x8e5a0],ecx        # 0x400d30
372790  4c 89 05 91 e5 08 00           mov    QWORD PTR [rip+0x8e591],r8        # 0x400d28
372797  eb 07                          jmp    0x3727a0
372799  4c 8b 05 88 e5 08 00           mov    r8,QWORD PTR [rip+0x8e588]        # 0x400d28
3727a0  f6 c1 02                       test   cl,0x2
3727a3  75 1f                          jne    0x3727c4
3727a5  83 c9 02                       or     ecx,0x2
3727a8  48 8d 15 91 e5 08 00           lea    rdx,[rip+0x8e591]        # 0x400d40
3727af  89 0d 7b e5 08 00              mov    DWORD PTR [rip+0x8e57b],ecx        # 0x400d30
3727b5  45 33 c9                       xor    r9d,r9d
3727b8  48 8b 0d a1 36 06 00           mov    rcx,QWORD PTR [rip+0x636a1]        # 0x3d5e60
3727bf  e8 60 95 f5 ff                 call   0x2cbd24
3727c4  48 8b 0d 95 36 06 00           mov    rcx,QWORD PTR [rip+0x63695]        # 0x3d5e60
3727cb  48 8d 15 6e e5 08 00           lea    rdx,[rip+0x8e56e]        # 0x400d40
3727d2  4c 8b c3                       mov    r8,rbx
3727d5  48 83 c4 20                    add    rsp,0x20
3727d9  5b                             pop    rbx
3727da  e9 1d 92 f5 ff                 jmp    0x2cb9fc

; pdata function 0x320584..0x3205aa unwind=0x3d2038
320584  40 53                          rex push rbx
320586  48 83 ec 20                    sub    rsp,0x20
32058a  48 8b d9                       mov    rbx,rcx
32058d  e8 22 04 00 00                 call   0x3209b4
320592  84 c0                          test   al,al
320594  74 0b                          je     0x3205a1
320596  48 8b d3                       mov    rdx,rbx
320599  48 8b cb                       mov    rcx,rbx
32059c  e8 77 fb ff ff                 call   0x320118
3205a1  48 8b c3                       mov    rax,rbx
3205a4  48 83 c4 20                    add    rsp,0x20
3205a8  5b                             pop    rbx
3205a9  c3                             ret

; pdata function 0x332284..0x3322aa unwind=0x3d2038
332284  40 53                          rex push rbx
332286  48 83 ec 20                    sub    rsp,0x20
33228a  48 8b d9                       mov    rbx,rcx
33228d  e8 4a e7 fe ff                 call   0x3209dc
332292  84 c0                          test   al,al
332294  74 0b                          je     0x3322a1
332296  48 8b d3                       mov    rdx,rbx
332299  48 8b cb                       mov    rcx,rbx
33229c  e8 a7 ff ff ff                 call   0x332248
3322a1  48 8b c3                       mov    rax,rbx
3322a4  48 83 c4 20                    add    rsp,0x20
3322a8  5b                             pop    rbx
3322a9  c3                             ret

; pdata function 0x370638..0x370754 unwind=0x3d2628
370638  40 53                          rex push rbx
37063a  55                             push   rbp
37063b  56                             push   rsi
37063c  57                             push   rdi
37063d  48 83 ec 68                    sub    rsp,0x68
370641  48 8b e9                       mov    rbp,rcx
370644  48 8b ca                       mov    rcx,rdx
370647  e8 58 04 00 00                 call   0x370aa4
37064c  48 85 c0                       test   rax,rax
37064f  0f 84 f4 00 00 00              je     0x370749
370655  48 8b c8                       mov    rcx,rax
370658  e8 27 02 00 00                 call   0x370884
37065d  48 8b f0                       mov    rsi,rax
370660  48 85 c0                       test   rax,rax
370663  0f 84 e0 00 00 00              je     0x370749
370669  8b 0d 41 ff 08 00              mov    ecx,DWORD PTR [rip+0x8ff41]        # 0x4005b0
37066f  f6 c1 01                       test   cl,0x1
370672  0f 85 8b 00 00 00              jne    0x370703
370678  83 c9 01                       or     ecx,0x1
37067b  48 8d 54 24 3b                 lea    rdx,[rsp+0x3b]
370680  89 0d 2a ff 08 00              mov    DWORD PTR [rip+0x8ff2a],ecx        # 0x4005b0
370686  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
37068e  e8 dd fc ff ff                 call   0x370370 ; STRING getter=0x370370 UnityEngine
370693  48 8b c8                       mov    rcx,rax
370696  e8 99 d7 f5 ff                 call   0x2cde34
37069b  48 8d 54 24 47                 lea    rdx,[rsp+0x47]
3706a0  48 8b f8                       mov    rdi,rax
3706a3  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
3706ab  e8 04 fc ff ff                 call   0x3702b4 ; STRING getter=0x3702b4 GetComponent
3706b0  48 8b c8                       mov    rcx,rax
3706b3  e8 3c 7f f6 ff                 call   0x2d85f4
3706b8  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3706bd  48 8b d8                       mov    rbx,rax
3706c0  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
3706c8  e8 3b fb ff ff                 call   0x370208 ; STRING getter=0x370208 GameObject
3706cd  48 8b c8                       mov    rcx,rax
3706d0  e8 7f 95 f7 ff                 call   0x2e9c54
3706d5  48 8b c8                       mov    rcx,rax
3706d8  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
3706e0  41 b9 01 00 00 00              mov    r9d,0x1
3706e6  4c 8b c7                       mov    r8,rdi
3706e9  48 8b d3                       mov    rdx,rbx
3706ec  e8 7b 3a fc ff                 call   0x33416c
3706f1  8b 0d b9 fe 08 00              mov    ecx,DWORD PTR [rip+0x8feb9]        # 0x4005b0
3706f7  4c 8b 00                       mov    r8,QWORD PTR [rax]
3706fa  4c 89 05 a7 fe 08 00           mov    QWORD PTR [rip+0x8fea7],r8        # 0x4005a8
370701  eb 07                          jmp    0x37070a
370703  4c 8b 05 9e fe 08 00           mov    r8,QWORD PTR [rip+0x8fe9e]        # 0x4005a8
37070a  f6 c1 02                       test   cl,0x2
37070d  75 1f                          jne    0x37072e
37070f  83 c9 02                       or     ecx,0x2
370712  48 8d 15 a7 fe 08 00           lea    rdx,[rip+0x8fea7]        # 0x4005c0
370719  89 0d 91 fe 08 00              mov    DWORD PTR [rip+0x8fe91],ecx        # 0x4005b0
37071f  45 33 c9                       xor    r9d,r9d
370722  48 8b 0d 37 57 06 00           mov    rcx,QWORD PTR [rip+0x65737]        # 0x3d5e60
370729  e8 f6 b5 f5 ff                 call   0x2cbd24
37072e  48 8b 0d 2b 57 06 00           mov    rcx,QWORD PTR [rip+0x6572b]        # 0x3d5e60
370735  48 8d 15 84 fe 08 00           lea    rdx,[rip+0x8fe84]        # 0x4005c0
37073c  4c 8b ce                       mov    r9,rsi
37073f  4c 8b c5                       mov    r8,rbp
370742  e8 4d 19 f6 ff                 call   0x2d2094
370747  eb 02                          jmp    0x37074b
370749  33 c0                          xor    eax,eax
37074b  48 83 c4 68                    add    rsp,0x68
37074f  5f                             pop    rdi
370750  5e                             pop    rsi
370751  5d                             pop    rbp
370752  5b                             pop    rbx
370753  c3                             ret

; pdata function 0x36920c..0x36924c unwind=0x3d2038
36920c  40 53                          rex push rbx
36920e  48 83 ec 20                    sub    rsp,0x20
369212  48 8b da                       mov    rbx,rdx
369215  48 8b d1                       mov    rdx,rcx
369218  e8 eb 1c f6 ff                 call   0x2caf08
36921d  84 c0                          test   al,al
36921f  74 22                          je     0x369243
369221  48 8b ca                       mov    rcx,rdx
369224  e8 6f 00 00 00                 call   0x369298
369229  48 8b c8                       mov    rcx,rax
36922c  4c 8b c0                       mov    r8,rax
36922f  e8 d4 1c f6 ff                 call   0x2caf08
369234  84 c0                          test   al,al
369236  74 0b                          je     0x369243
369238  48 8b d3                       mov    rdx,rbx
36923b  49 8b c8                       mov    rcx,r8
36923e  e8 81 a7 00 00                 call   0x3739c4
369243  48 8b c3                       mov    rax,rbx
369246  48 83 c4 20                    add    rsp,0x20
36924a  5b                             pop    rbx
36924b  c3                             ret

; pdata function 0x2ef834..0x2ef9d7 unwind=0x3d2d68
2ef834  48 8b c4                       mov    rax,rsp
2ef837  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2ef83b  57                             push   rdi
2ef83c  48 81 ec b0 00 00 00           sub    rsp,0xb0
2ef843  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2ef848  49 8b d8                       mov    rbx,r8
2ef84b  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
2ef84f  48 8b fa                       mov    rdi,rdx
2ef852  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
2ef856  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
2ef85b  44 0f 29 48 b8                 movaps XMMWORD PTR [rax-0x48],xmm9
2ef860  f3 44 0f 10 49 08              movss  xmm9,DWORD PTR [rcx+0x8]
2ef866  44 0f 29 50 a8                 movaps XMMWORD PTR [rax-0x58],xmm10
2ef86b  f3 45 0f 58 c9                 addss  xmm9,xmm9
2ef870  44 0f 29 58 98                 movaps XMMWORD PTR [rax-0x68],xmm11
2ef875  44 0f 29 60 88                 movaps XMMWORD PTR [rax-0x78],xmm12
2ef87a  44 0f 29 6c 24 30              movaps XMMWORD PTR [rsp+0x30],xmm13
2ef880  44 0f 28 e8                    movaps xmm13,xmm0
2ef884  44 0f 29 74 24 20              movaps XMMWORD PTR [rsp+0x20],xmm14
2ef88a  f3 44 0f 58 e8                 addss  xmm13,xmm0
2ef88f  f3 44 0f 10 31                 movss  xmm14,DWORD PTR [rcx]
2ef894  41 0f 28 f1                    movaps xmm6,xmm9
2ef898  f3 0f 59 71 08                 mulss  xmm6,DWORD PTR [rcx+0x8]
2ef89d  f3 45 0f 58 f6                 addss  xmm14,xmm14
2ef8a2  45 0f 28 d1                    movaps xmm10,xmm9
2ef8a6  45 0f 28 c1                    movaps xmm8,xmm9
2ef8aa  f3 44 0f 59 11                 mulss  xmm10,DWORD PTR [rcx]
2ef8af  41 0f 28 fd                    movaps xmm7,xmm13
2ef8b3  f3 0f 59 39                    mulss  xmm7,DWORD PTR [rcx]
2ef8b7  45 0f 28 dd                    movaps xmm11,xmm13
2ef8bb  f3 44 0f 59 69 0c              mulss  xmm13,DWORD PTR [rcx+0xc]
2ef8c1  45 0f 28 e6                    movaps xmm12,xmm14
2ef8c5  f3 44 0f 59 21                 mulss  xmm12,DWORD PTR [rcx]
2ef8ca  f3 44 0f 59 71 0c              mulss  xmm14,DWORD PTR [rcx+0xc]
2ef8d0  f3 44 0f 59 49 0c              mulss  xmm9,DWORD PTR [rcx+0xc]
2ef8d6  48 8b ca                       mov    rcx,rdx
2ef8d9  f3 44 0f 59 d8                 mulss  xmm11,xmm0
2ef8de  f3 44 0f 59 c0                 mulss  xmm8,xmm0
2ef8e3  e8 d4 82 0d 00                 call   0x3c7bbc
2ef8e8  f3 0f 10 1d 64 d9 f9 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff9d964]        # 0x28d254 ; f32=1
2ef8f0  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
2ef8f8  0f 28 c6                       movaps xmm0,xmm6
2ef8fb  0f 28 d3                       movaps xmm2,xmm3
2ef8fe  f3 41 0f 58 c3                 addss  xmm0,xmm11
2ef903  41 0f 28 cd                    movaps xmm1,xmm13
2ef907  f3 41 0f 58 ca                 addss  xmm1,xmm10
2ef90c  48 8b c7                       mov    rax,rdi
2ef90f  f3 41 0f 58 f4                 addss  xmm6,xmm12
2ef914  f3 45 0f 5c d5                 subss  xmm10,xmm13
2ef919  f3 45 0f 58 dc                 addss  xmm11,xmm12
2ef91e  f3 0f 5c d0                    subss  xmm2,xmm0
2ef922  0f 28 c7                       movaps xmm0,xmm7
2ef925  f3 0f 59 4b 08                 mulss  xmm1,DWORD PTR [rbx+0x8]
2ef92a  f3 41 0f 5c c1                 subss  xmm0,xmm9
2ef92f  f3 44 0f 59 13                 mulss  xmm10,DWORD PTR [rbx]
2ef934  f3 44 0f 58 cf                 addss  xmm9,xmm7
2ef939  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2ef93e  f3 0f 59 43 04                 mulss  xmm0,DWORD PTR [rbx+0x4]
2ef943  f3 0f 59 13                    mulss  xmm2,DWORD PTR [rbx]
2ef947  f3 44 0f 59 0b                 mulss  xmm9,DWORD PTR [rbx]
2ef94c  f3 0f 58 d0                    addss  xmm2,xmm0
2ef950  41 0f 28 c0                    movaps xmm0,xmm8
2ef954  f3 41 0f 5c c6                 subss  xmm0,xmm14
2ef959  f3 45 0f 58 f0                 addss  xmm14,xmm8
2ef95e  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2ef963  f3 0f 58 d1                    addss  xmm2,xmm1
2ef967  0f 28 cb                       movaps xmm1,xmm3
2ef96a  f3 0f 59 43 08                 mulss  xmm0,DWORD PTR [rbx+0x8]
2ef96f  f3 0f 5c ce                    subss  xmm1,xmm6
2ef973  f3 44 0f 59 73 04              mulss  xmm14,DWORD PTR [rbx+0x4]
2ef979  f3 41 0f 5c db                 subss  xmm3,xmm11
2ef97e  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2ef983  f3 0f 59 4b 04                 mulss  xmm1,DWORD PTR [rbx+0x4]
2ef988  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
2ef98d  f3 45 0f 58 f2                 addss  xmm14,xmm10
2ef992  f3 0f 59 5b 08                 mulss  xmm3,DWORD PTR [rbx+0x8]
2ef997  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
2ef99b  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
2ef9a0  f3 41 0f 58 c9                 addss  xmm1,xmm9
2ef9a5  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
2ef9aa  f3 44 0f 58 f3                 addss  xmm14,xmm3
2ef9af  f3 0f 11 17                    movss  DWORD PTR [rdi],xmm2
2ef9b3  f3 0f 58 c8                    addss  xmm1,xmm0
2ef9b7  f3 44 0f 11 77 08              movss  DWORD PTR [rdi+0x8],xmm14
2ef9bd  f3 0f 11 4f 04                 movss  DWORD PTR [rdi+0x4],xmm1
2ef9c2  45 0f 28 63 90                 movaps xmm12,XMMWORD PTR [r11-0x70]
2ef9c7  45 0f 28 6b 80                 movaps xmm13,XMMWORD PTR [r11-0x80]
2ef9cc  44 0f 28 74 24 20              movaps xmm14,XMMWORD PTR [rsp+0x20]
2ef9d2  49 8b e3                       mov    rsp,r11
2ef9d5  5f                             pop    rdi
2ef9d6  c3                             ret

; pdata function 0x369298..0x369323 unwind=0x3d2038
369298  40 53                          rex push rbx
36929a  48 83 ec 20                    sub    rsp,0x20
36929e  48 8b d9                       mov    rbx,rcx
3692a1  e8 62 1c f6 ff                 call   0x2caf08
3692a6  84 c0                          test   al,al
3692a8  75 08                          jne    0x3692b2
3692aa  33 c0                          xor    eax,eax
3692ac  48 83 c4 20                    add    rsp,0x20
3692b0  5b                             pop    rbx
3692b1  c3                             ret
3692b2  8b 0d b8 57 09 00              mov    ecx,DWORD PTR [rip+0x957b8]        # 0x3fea70
3692b8  f6 c1 01                       test   cl,0x1
3692bb  75 20                          jne    0x3692dd
3692bd  4c 8b 05 3c dc 06 00           mov    r8,QWORD PTR [rip+0x6dc3c]        # 0x3d6f00
3692c4  83 c9 01                       or     ecx,0x1
3692c7  49 81 c0 60 c7 f1 03           add    r8,0x3f1c760
3692ce  89 0d 9c 57 09 00              mov    DWORD PTR [rip+0x9579c],ecx        # 0x3fea70
3692d4  4c 89 05 8d 57 09 00           mov    QWORD PTR [rip+0x9578d],r8        # 0x3fea68
3692db  eb 07                          jmp    0x3692e4
3692dd  4c 8b 05 84 57 09 00           mov    r8,QWORD PTR [rip+0x95784]        # 0x3fea68
3692e4  f6 c1 02                       test   cl,0x2
3692e7  75 1f                          jne    0x369308
3692e9  83 c9 02                       or     ecx,0x2
3692ec  48 8d 15 8d 57 09 00           lea    rdx,[rip+0x9578d]        # 0x3fea80
3692f3  89 0d 77 57 09 00              mov    DWORD PTR [rip+0x95777],ecx        # 0x3fea70
3692f9  45 33 c9                       xor    r9d,r9d
3692fc  48 8b 0d 5d cb 06 00           mov    rcx,QWORD PTR [rip+0x6cb5d]        # 0x3d5e60
369303  e8 1c 2a f6 ff                 call   0x2cbd24
369308  48 8b 0d 51 cb 06 00           mov    rcx,QWORD PTR [rip+0x6cb51]        # 0x3d5e60
36930f  48 8d 15 6a 57 09 00           lea    rdx,[rip+0x9576a]        # 0x3fea80
369316  4c 8b c3                       mov    r8,rbx
369319  48 83 c4 20                    add    rsp,0x20
36931d  5b                             pop    rbx
36931e  e9 d9 26 f6 ff                 jmp    0x2cb9fc

; pdata function 0x373a68..0x373b28 unwind=0x3d2348
373a68  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
373a6d  57                             push   rdi
373a6e  48 83 ec 30                    sub    rsp,0x30
373a72  48 8b da                       mov    rbx,rdx
373a75  48 8b f9                       mov    rdi,rcx
373a78  e8 8b 74 f5 ff                 call   0x2caf08
373a7d  84 c0                          test   al,al
373a7f  75 0d                          jne    0x373a8e
373a81  48 8b ca                       mov    rcx,rdx
373a84  e8 33 41 05 00                 call   0x3c7bbc
373a89  e9 8c 00 00 00                 jmp    0x373b1a
373a8e  8b 0d bc df 08 00              mov    ecx,DWORD PTR [rip+0x8dfbc]        # 0x401a50
373a94  f6 c1 01                       test   cl,0x1
373a97  75 20                          jne    0x373ab9
373a99  4c 8b 05 60 34 06 00           mov    r8,QWORD PTR [rip+0x63460]        # 0x3d6f00
373aa0  83 c9 01                       or     ecx,0x1
373aa3  49 81 c0 00 0a 9f 01           add    r8,0x19f0a00
373aaa  89 0d a0 df 08 00              mov    DWORD PTR [rip+0x8dfa0],ecx        # 0x401a50
373ab0  4c 89 05 91 df 08 00           mov    QWORD PTR [rip+0x8df91],r8        # 0x401a48
373ab7  eb 07                          jmp    0x373ac0
373ab9  4c 8b 05 88 df 08 00           mov    r8,QWORD PTR [rip+0x8df88]        # 0x401a48
373ac0  f6 c1 02                       test   cl,0x2
373ac3  75 1f                          jne    0x373ae4
373ac5  83 c9 02                       or     ecx,0x2
373ac8  48 8d 15 91 df 08 00           lea    rdx,[rip+0x8df91]        # 0x401a60
373acf  89 0d 7b df 08 00              mov    DWORD PTR [rip+0x8df7b],ecx        # 0x401a50
373ad5  45 33 c9                       xor    r9d,r9d
373ad8  48 8b 0d 81 23 06 00           mov    rcx,QWORD PTR [rip+0x62381]        # 0x3d5e60
373adf  e8 40 82 f5 ff                 call   0x2cbd24
373ae4  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
373ae9  e8 ce 40 05 00                 call   0x3c7bbc
373aee  48 8b 0d 6b 23 06 00           mov    rcx,QWORD PTR [rip+0x6236b]        # 0x3d5e60
373af5  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
373afa  4c 8b cf                       mov    r9,rdi
373afd  48 8d 15 5c df 08 00           lea    rdx,[rip+0x8df5c]        # 0x401a60
373b04  e8 8b e5 f5 ff                 call   0x2d2094
373b09  f2 0f 10 44 24 20              movsd  xmm0,QWORD PTR [rsp+0x20]
373b0f  8b 44 24 28                    mov    eax,DWORD PTR [rsp+0x28]
373b13  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
373b17  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
373b1a  48 8b c3                       mov    rax,rbx
373b1d  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
373b22  48 83 c4 30                    add    rsp,0x30
373b26  5f                             pop    rdi
373b27  c3                             ret

; pdata function 0x368b10..0x368b9b unwind=0x3d2038
368b10  40 53                          rex push rbx
368b12  48 83 ec 20                    sub    rsp,0x20
368b16  48 8b d9                       mov    rbx,rcx
368b19  e8 ea 23 f6 ff                 call   0x2caf08
368b1e  84 c0                          test   al,al
368b20  75 08                          jne    0x368b2a
368b22  33 c0                          xor    eax,eax
368b24  48 83 c4 20                    add    rsp,0x20
368b28  5b                             pop    rbx
368b29  c3                             ret
368b2a  8b 0d 70 5c 09 00              mov    ecx,DWORD PTR [rip+0x95c70]        # 0x3fe7a0
368b30  f6 c1 01                       test   cl,0x1
368b33  75 20                          jne    0x368b55
368b35  4c 8b 05 c4 e3 06 00           mov    r8,QWORD PTR [rip+0x6e3c4]        # 0x3d6f00
368b3c  83 c9 01                       or     ecx,0x1
368b3f  49 81 c0 d0 2d f1 03           add    r8,0x3f12dd0
368b46  89 0d 54 5c 09 00              mov    DWORD PTR [rip+0x95c54],ecx        # 0x3fe7a0
368b4c  4c 89 05 45 5c 09 00           mov    QWORD PTR [rip+0x95c45],r8        # 0x3fe798
368b53  eb 07                          jmp    0x368b5c
368b55  4c 8b 05 3c 5c 09 00           mov    r8,QWORD PTR [rip+0x95c3c]        # 0x3fe798
368b5c  f6 c1 02                       test   cl,0x2
368b5f  75 1f                          jne    0x368b80
368b61  83 c9 02                       or     ecx,0x2
368b64  48 8d 15 45 5c 09 00           lea    rdx,[rip+0x95c45]        # 0x3fe7b0
368b6b  89 0d 2f 5c 09 00              mov    DWORD PTR [rip+0x95c2f],ecx        # 0x3fe7a0
368b71  45 33 c9                       xor    r9d,r9d
368b74  48 8b 0d e5 d2 06 00           mov    rcx,QWORD PTR [rip+0x6d2e5]        # 0x3d5e60
368b7b  e8 a4 31 f6 ff                 call   0x2cbd24
368b80  48 8b 0d d9 d2 06 00           mov    rcx,QWORD PTR [rip+0x6d2d9]        # 0x3d5e60
368b87  48 8d 15 22 5c 09 00           lea    rdx,[rip+0x95c22]        # 0x3fe7b0
368b8e  4c 8b c3                       mov    r8,rbx
368b91  48 83 c4 20                    add    rsp,0x20
368b95  5b                             pop    rbx
368b96  e9 61 2e f6 ff                 jmp    0x2cb9fc

; heuristic leaf/code range 0x320714..0x320729 unwind=0x0
320714  48 83 c1 08                    add    rcx,0x8
320718  e9 03 00 00 00                 jmp    0x320720
32071d  cc                             int3
32071e  cc                             int3
32071f  cc                             int3
320720  48 83 79 08 00                 cmp    QWORD PTR [rcx+0x8],0x0
320725  0f 94 c0                       sete   al
320728  c3                             ret

; pdata function 0x367898..0x3678c6 unwind=0x3d2318
367898  40 53                          rex push rbx
36789a  48 83 ec 30                    sub    rsp,0x30
36789e  48 8b d9                       mov    rbx,rcx
3678a1  48 8b ca                       mov    rcx,rdx
3678a4  e8 fb 3a f6 ff                 call   0x2cb3a4
3678a9  4c 8b c0                       mov    r8,rax
3678ac  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
3678b1  48 8b cb                       mov    rcx,rbx
3678b4  e8 cb fd ff ff                 call   0x367684
3678b9  48 8b 00                       mov    rax,QWORD PTR [rax]
3678bc  48 83 c0 18                    add    rax,0x18
3678c0  48 83 c4 30                    add    rsp,0x30
3678c4  5b                             pop    rbx
3678c5  c3                             ret

; pdata function 0x32b2b4..0x32b306 unwind=0x3d2064
32b2b4  48 83 ec 28                    sub    rsp,0x28
32b2b8  48 8b 05 41 bc 0a 00           mov    rax,QWORD PTR [rip+0xabc41]        # 0x3d6f00
32b2bf  48 8b 90 90 e4 0e 0f           mov    rdx,QWORD PTR [rax+0xf0ee490]
32b2c6  48 8b ca                       mov    rcx,rdx
32b2c9  e8 3a fc f9 ff                 call   0x2caf08
32b2ce  84 c0                          test   al,al
32b2d0  74 2d                          je     0x32b2ff
32b2d2  4c 8b 82 b8 00 00 00           mov    r8,QWORD PTR [rdx+0xb8]
32b2d9  49 8b c8                       mov    rcx,r8
32b2dc  e8 27 fc f9 ff                 call   0x2caf08
32b2e1  84 c0                          test   al,al
32b2e3  74 1a                          je     0x32b2ff
32b2e5  49 8b 48 18                    mov    rcx,QWORD PTR [r8+0x18]
32b2e9  e8 1a fc f9 ff                 call   0x2caf08
32b2ee  84 c0                          test   al,al
32b2f0  74 0d                          je     0x32b2ff
32b2f2  49 8b 48 18                    mov    rcx,QWORD PTR [r8+0x18]
32b2f6  48 83 c4 28                    add    rsp,0x28
32b2fa  e9 51 e6 fc ff                 jmp    0x2f9950
32b2ff  33 c0                          xor    eax,eax
32b301  48 83 c4 28                    add    rsp,0x28
32b305  c3                             ret

