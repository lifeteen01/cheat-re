; heuristic leaf/code range 0x2e1270..0x2e1278 unwind=0x0
2e1270  f3 0f 5f c8                    maxss  xmm1,xmm0
2e1274  0f 28 c1                       movaps xmm0,xmm1
2e1277  c3                             ret

; heuristic leaf/code range 0x2e5a44..0x2e5a54 unwind=0x0
2e5a44  0f 2f c8                       comiss xmm1,xmm0
2e5a47  77 07                          ja     0x2e5a50
2e5a49  0f 28 ca                       movaps xmm1,xmm2
2e5a4c  f3 0f 5d c8                    minss  xmm1,xmm0
2e5a50  0f 28 c1                       movaps xmm0,xmm1
2e5a53  c3                             ret

; pdata function 0x3226b0..0x3229d8 unwind=0x3d33ec
3226b0  48 8b c4                       mov    rax,rsp
3226b3  55                             push   rbp
3226b4  53                             push   rbx
3226b5  56                             push   rsi
3226b6  57                             push   rdi
3226b7  48 8d 68 a1                    lea    rbp,[rax-0x5f]
3226bb  48 81 ec d8 00 00 00           sub    rsp,0xd8
3226c2  f3 0f 10 0d 5e fa 0c 00        movss  xmm1,DWORD PTR [rip+0xcfa5e]        # 0x3f2128
3226ca  0f 57 c0                       xorps  xmm0,xmm0
3226cd  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
3226d1  f3 0f 5c ca                    subss  xmm1,xmm2
3226d5  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
3226d9  48 8b f2                       mov    rsi,rdx
3226dc  44 0f 29 40 a8                 movaps XMMWORD PTR [rax-0x58],xmm8
3226e1  48 8b d9                       mov    rbx,rcx
3226e4  44 0f 29 48 98                 movaps XMMWORD PTR [rax-0x68],xmm9
3226e9  0f 57 f6                       xorps  xmm6,xmm6
3226ec  44 0f 29 58 88                 movaps XMMWORD PTR [rax-0x78],xmm11
3226f1  e8 7a eb fb ff                 call   0x2e1270
3226f6  f3 0f 11 05 2a fa 0c 00        movss  DWORD PTR [rip+0xcfa2a],xmm0        # 0x3f2128
3226fe  e8 99 b3 fb ff                 call   0x2dda9c
322703  48 8b c8                       mov    rcx,rax
322706  48 8b f8                       mov    rdi,rax
322709  e8 fa 87 fa ff                 call   0x2caf08
32270e  84 c0                          test   al,al
322710  0f 84 97 02 00 00              je     0x3229ad
322716  48 8b cf                       mov    rcx,rdi
322719  e8 f2 63 04 00                 call   0x368b10
32271e  48 8b c8                       mov    rcx,rax
322721  e8 e2 87 fa ff                 call   0x2caf08
322726  84 c0                          test   al,al
322728  0f 85 7f 02 00 00              jne    0x3229ad
32272e  38 05 dc f9 0c 00              cmp    BYTE PTR [rip+0xcf9dc],al        # 0x3f2110
322734  75 15                          jne    0x32274b
322736  f2 0f 10 03                    movsd  xmm0,QWORD PTR [rbx]
32273a  8b 43 08                       mov    eax,DWORD PTR [rbx+0x8]
32273d  f2 0f 11 05 d3 f9 0c 00        movsd  QWORD PTR [rip+0xcf9d3],xmm0        # 0x3f2118
322745  89 05 d5 f9 0c 00              mov    DWORD PTR [rip+0xcf9d5],eax        # 0x3f2120
32274b  4c 8b c6                       mov    r8,rsi
32274e  c6 05 bb f9 0c 00 00           mov    BYTE PTR [rip+0xcf9bb],0x0        # 0x3f2110
322755  48 8d 55 d7                    lea    rdx,[rbp-0x29]
322759  48 8b cb                       mov    rcx,rbx
32275c  e8 a7 cf fb ff                 call   0x2df708
322761  f3 0f 10 15 e7 aa f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff6aae7]        # 0x28d250 ; f32=0.5
322769  48 8d 55 97                    lea    rdx,[rbp-0x69]
32276d  48 8b c8                       mov    rcx,rax
322770  e8 f7 ce fb ff                 call   0x2df66c
322775  48 8b cf                       mov    rcx,rdi
322778  e8 e7 7b 04 00                 call   0x36a364
32277d  f3 44 0f 10 1d 62 b3 f6 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff6b362]        # 0x28dae8 ; f32=0.4
322786  84 c0                          test   al,al
322788  0f 85 26 01 00 00              jne    0x3228b4
32278e  f3 0f 10 15 9e 09 f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7099e]        # 0x293134 ; f32=2
322796  48 8d 4d d7                    lea    rcx,[rbp-0x29]
32279a  0f 57 db                       xorps  xmm3,xmm3
32279d  0f 57 c9                       xorps  xmm1,xmm1
3227a0  e8 03 54 0a 00                 call   0x3c7ba8
3227a5  4c 8b c0                       mov    r8,rax
3227a8  48 8d 55 c7                    lea    rdx,[rbp-0x39]
3227ac  48 8d 4d 97                    lea    rcx,[rbp-0x69]
3227b0  e8 17 cf fb ff                 call   0x2df6cc
3227b5  41 b0 01                       mov    r8b,0x1
3227b8  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3227bc  4c 8b cf                       mov    r9,rdi
3227bf  41 8a d0                       mov    dl,r8b
3227c2  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
3227c6  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
3227c9  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
3227ce  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
3227d1  e8 36 fe ff ff                 call   0x32260c
3227d6  84 c0                          test   al,al
3227d8  74 1c                          je     0x3227f6
3227da  0f 2f 35 53 f9 0c 00           comiss xmm6,DWORD PTR [rip+0xcf953]        # 0x3f2134
3227e1  0f 82 cd 00 00 00              jb     0x3228b4
3227e7  c7 05 43 f9 0c 00 9a 99 99 3e  mov    DWORD PTR [rip+0xcf943],0x3e99999a        # 0x3f2134
3227f1  e9 be 00 00 00                 jmp    0x3228b4
3227f6  f2 0f 10 45 97                 movsd  xmm0,QWORD PTR [rbp-0x69]
3227fb  48 8d 4d a7                    lea    rcx,[rbp-0x59]
3227ff  8b 45 9f                       mov    eax,DWORD PTR [rbp-0x61]
322802  f3 0f 10 0d 82 08 f7 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff70882]        # 0x29308c ; f32=0.01
32280a  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
32280f  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
322812  e8 69 fd ff ff                 call   0x322580
322817  a8 08                          test   al,0x8
322819  0f 85 95 00 00 00              jne    0x3228b4
32281f  f3 0f 10 15 21 0c f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff70c21]        # 0x293448 ; f32=-1.5
322827  48 8d 4d d7                    lea    rcx,[rbp-0x29]
32282b  0f 57 db                       xorps  xmm3,xmm3
32282e  0f 57 c9                       xorps  xmm1,xmm1
322831  e8 72 53 0a 00                 call   0x3c7ba8
322836  4c 8b c0                       mov    r8,rax
322839  48 8d 55 b7                    lea    rdx,[rbp-0x49]
32283d  48 8d 4d 97                    lea    rcx,[rbp-0x69]
322841  e8 c2 ce fb ff                 call   0x2df708
322846  f3 0f 10 15 82 b9 f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff6b982]        # 0x28e1d0 ; f32=1.3
32284e  48 8d 4d d7                    lea    rcx,[rbp-0x29]
322852  0f 57 db                       xorps  xmm3,xmm3
322855  0f 57 c9                       xorps  xmm1,xmm1
322858  e8 4b 53 0a 00                 call   0x3c7ba8
32285d  4c 8b c0                       mov    r8,rax
322860  48 8d 55 a7                    lea    rdx,[rbp-0x59]
322864  48 8d 4d 97                    lea    rcx,[rbp-0x69]
322868  e8 9b ce fb ff                 call   0x2df708
32286d  f2 0f 10 45 a7                 movsd  xmm0,QWORD PTR [rbp-0x59]
322872  48 8d 55 c7                    lea    rdx,[rbp-0x39]
322876  8b 45 af                       mov    eax,DWORD PTR [rbp-0x51]
322879  48 8d 4d d7                    lea    rcx,[rbp-0x29]
32287d  f2 0f 11 45 c7                 movsd  QWORD PTR [rbp-0x39],xmm0
322882  41 b9 01 21 a1 59              mov    r9d,0x59a12101
322888  f2 0f 10 45 b7                 movsd  xmm0,QWORD PTR [rbp-0x49]
32288d  41 0f 28 d3                    movaps xmm2,xmm11
322891  89 45 cf                       mov    DWORD PTR [rbp-0x31],eax
322894  8b 45 bf                       mov    eax,DWORD PTR [rbp-0x41]
322897  f2 0f 11 45 d7                 movsd  QWORD PTR [rbp-0x29],xmm0
32289c  89 45 df                       mov    DWORD PTR [rbp-0x21],eax
32289f  c7 44 24 20 01 00 00 00        mov    DWORD PTR [rsp+0x20],0x1
3228a7  e8 b0 fb ff ff                 call   0x32245c
3228ac  34 01                          xor    al,0x1
3228ae  88 05 5c f8 0c 00              mov    BYTE PTR [rip+0xcf85c],al        # 0x3f2110
3228b4  80 3d 55 f8 0c 00 00           cmp    BYTE PTR [rip+0xcf855],0x0        # 0x3f2110
3228bb  0f 84 d4 00 00 00              je     0x322995
3228c1  4c 8b c3                       mov    r8,rbx
3228c4  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3228c8  48 8b ce                       mov    rcx,rsi
3228cb  40 32 ff                       xor    dil,dil
3228ce  e8 f9 cd fb ff                 call   0x2df6cc
3228d3  f3 0f 10 45 ab                 movss  xmm0,DWORD PTR [rbp-0x55]
3228d8  e8 4f 0e fc ff                 call   0x2e372c
3228dd  f3 0f 10 5d af                 movss  xmm3,DWORD PTR [rbp-0x51]
3228e2  48 8d 4d d7                    lea    rcx,[rbp-0x29]
3228e6  f3 0f 10 4d a7                 movss  xmm1,DWORD PTR [rbp-0x59]
3228eb  0f 57 d2                       xorps  xmm2,xmm2
3228ee  44 0f 28 c8                    movaps xmm9,xmm0
3228f2  e8 b1 52 0a 00                 call   0x3c7ba8
3228f7  48 8b c8                       mov    rcx,rax
3228fa  e8 e9 e5 fb ff                 call   0x2e0ee8
3228ff  f3 0f 10 4d ab                 movss  xmm1,DWORD PTR [rbp-0x55]
322904  0f 2f ce                       comiss xmm1,xmm6
322907  f3 44 0f 10 05 80 37 0c 00     movss  xmm8,DWORD PTR [rip+0xc3780]        # 0x3e6090
322910  f3 0f 10 3d 7c 37 0c 00        movss  xmm7,DWORD PTR [rip+0xc377c]        # 0x3e6094
322918  72 08                          jb     0x322922
32291a  f3 44 0f 58 c1                 addss  xmm8,xmm1
32291f  40 b7 01                       mov    dil,0x1
322922  41 0f 2f c1                    comiss xmm0,xmm9
322926  76 06                          jbe    0x32292e
322928  f3 0f 58 f8                    addss  xmm7,xmm0
32292c  eb 05                          jmp    0x322933
32292e  40 84 ff                       test   dil,dil
322931  74 69                          je     0x32299c
322933  f3 44 0f 10 0d ec f7 0c 00     movss  xmm9,DWORD PTR [rip+0xcf7ec]        # 0x3f2128
32293c  44 0f 2f ce                    comiss xmm9,xmm6
322940  76 09                          jbe    0x32294b
322942  f3 44 0f 10 1d 35 08 f7 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff70835]        # 0x293180 ; f32=5
32294b  0f 57 c9                       xorps  xmm1,xmm1
32294e  41 0f 28 c3                    movaps xmm0,xmm11
322952  e8 19 e9 fb ff                 call   0x2e1270
322957  f3 0f 10 0d 9d b1 f6 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff6b19d]        # 0x28dafc ; f32=1.5
32295f  f3 0f 58 c1                    addss  xmm0,xmm1
322963  44 0f 2f c0                    comiss xmm8,xmm0
322967  77 28                          ja     0x322991
322969  44 0f 2f ce                    comiss xmm9,xmm6
32296d  76 0a                          jbe    0x322979
32296f  f3 0f 10 05 a5 b1 f6 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff6b1a5]        # 0x28db1c ; f32=10
322977  eb 03                          jmp    0x32297c
322979  0f 28 c1                       movaps xmm0,xmm1
32297c  0f 57 c9                       xorps  xmm1,xmm1
32297f  e8 ec e8 fb ff                 call   0x2e1270
322984  f3 0f 58 05 f4 07 f7 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff707f4]        # 0x293180 ; f32=5
32298c  0f 2f f8                       comiss xmm7,xmm0
32298f  76 0b                          jbe    0x32299c
322991  32 c0                          xor    al,al
322993  eb 1a                          jmp    0x3229af
322995  0f 57 ff                       xorps  xmm7,xmm7
322998  45 0f 57 c0                    xorps  xmm8,xmm8
32299c  f3 44 0f 11 05 eb 36 0c 00     movss  DWORD PTR [rip+0xc36eb],xmm8        # 0x3e6090
3229a5  f3 0f 11 3d e7 36 0c 00        movss  DWORD PTR [rip+0xc36e7],xmm7        # 0x3e6094
3229ad  b0 01                          mov    al,0x1
3229af  4c 8d 9c 24 d8 00 00 00        lea    r11,[rsp+0xd8]
3229b7  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
3229bc  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
3229c1  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
3229c6  45 0f 28 4b b8                 movaps xmm9,XMMWORD PTR [r11-0x48]
3229cb  45 0f 28 5b a8                 movaps xmm11,XMMWORD PTR [r11-0x58]
3229d0  49 8b e3                       mov    rsp,r11
3229d3  5f                             pop    rdi
3229d4  5e                             pop    rsi
3229d5  5b                             pop    rbx
3229d6  5d                             pop    rbp
3229d7  c3                             ret

; pdata function 0x32dbb0..0x32ded9 unwind=0x3d360c
32dbb0  48 8b c4                       mov    rax,rsp
32dbb3  55                             push   rbp
32dbb4  53                             push   rbx
32dbb5  56                             push   rsi
32dbb6  57                             push   rdi
32dbb7  41 56                          push   r14
32dbb9  41 57                          push   r15
32dbbb  48 8d 68 a1                    lea    rbp,[rax-0x5f]
32dbbf  48 81 ec c8 00 00 00           sub    rsp,0xc8
32dbc6  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
32dbca  49 8b d8                       mov    rbx,r8
32dbcd  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
32dbd1  48 8b f2                       mov    rsi,rdx
32dbd4  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
32dbd9  48 8b f9                       mov    rdi,rcx
32dbdc  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
32dbe1  44 0f 29 54 24 70              movaps XMMWORD PTR [rsp+0x70],xmm10
32dbe7  44 0f 29 5c 24 60              movaps XMMWORD PTR [rsp+0x60],xmm11
32dbed  44 0f 28 db                    movaps xmm11,xmm3
32dbf1  e8 12 d3 f9 ff                 call   0x2caf08
32dbf6  84 c0                          test   al,al
32dbf8  0f 84 a7 02 00 00              je     0x32dea5
32dbfe  48 8b cf                       mov    rcx,rdi
32dc01  e8 0a af 03 00                 call   0x368b10
32dc06  48 8b c8                       mov    rcx,rax
32dc09  e8 fa d2 f9 ff                 call   0x2caf08
32dc0e  84 c0                          test   al,al
32dc10  0f 85 8f 02 00 00              jne    0x32dea5
32dc16  8b 46 08                       mov    eax,DWORD PTR [rsi+0x8]
32dc19  f2 0f 10 06                    movsd  xmm0,QWORD PTR [rsi]
32dc1d  f3 0f 10 0d 0b 45 0c 00        movss  xmm1,DWORD PTR [rip+0xc450b]        # 0x3f2130
32dc25  f2 0f 11 45 97                 movsd  QWORD PTR [rbp-0x69],xmm0
32dc2a  f3 41 0f 5c cb                 subss  xmm1,xmm11
32dc2f  f2 0f 10 03                    movsd  xmm0,QWORD PTR [rbx]
32dc33  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
32dc38  0f 57 c0                       xorps  xmm0,xmm0
32dc3b  89 45 9f                       mov    DWORD PTR [rbp-0x61],eax
32dc3e  8b 43 08                       mov    eax,DWORD PTR [rbx+0x8]
32dc41  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
32dc44  e8 27 36 fb ff                 call   0x2e1270
32dc49  48 8b cf                       mov    rcx,rdi
32dc4c  f3 0f 11 05 dc 44 0c 00        movss  DWORD PTR [rip+0xc44dc],xmm0        # 0x3f2130
32dc54  e8 1f d0 03 00                 call   0x36ac78
32dc59  48 8b cf                       mov    rcx,rdi
32dc5c  8a d8                          mov    bl,al
32dc5e  e8 05 a8 03 00                 call   0x368468
32dc63  48 8b cf                       mov    rcx,rdi
32dc66  44 8a f0                       mov    r14b,al
32dc69  e8 ca c5 03 00                 call   0x36a238
32dc6e  48 8b cf                       mov    rcx,rdi
32dc71  44 8a f8                       mov    r15b,al
32dc74  e8 cb a5 03 00                 call   0x368244
32dc79  f3 0f 10 35 d3 f5 f5 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff5f5d3]        # 0x28d254 ; f32=1
32dc81  84 db                          test   bl,bl
32dc83  74 06                          je     0x32dc8b
32dc85  44 0f 28 ce                    movaps xmm9,xmm6
32dc89  eb 04                          jmp    0x32dc8f
32dc8b  45 0f 57 c9                    xorps  xmm9,xmm9
32dc8f  45 0a f7                       or     r14b,r15b
32dc92  75 06                          jne    0x32dc9a
32dc94  45 0f 57 c0                    xorps  xmm8,xmm8
32dc98  eb 04                          jmp    0x32dc9e
32dc9a  44 0f 28 c6                    movaps xmm8,xmm6
32dc9e  84 c0                          test   al,al
32dca0  74 05                          je     0x32dca7
32dca2  0f 28 fe                       movaps xmm7,xmm6
32dca5  eb 03                          jmp    0x32dcaa
32dca7  0f 57 ff                       xorps  xmm7,xmm7
32dcaa  80 3d b0 19 0c 00 00           cmp    BYTE PTR [rip+0xc19b0],0x0        # 0x3ef661
32dcb1  75 33                          jne    0x32dce6
32dcb3  80 3d 87 a5 0a 00 00           cmp    BYTE PTR [rip+0xaa587],0x0        # 0x3d8241
32dcba  75 2a                          jne    0x32dce6
32dcbc  80 3d 1e 18 0c 00 00           cmp    BYTE PTR [rip+0xc181e],0x0        # 0x3ef4e1
32dcc3  75 21                          jne    0x32dce6
32dcc5  80 3d b5 1d 0c 00 00           cmp    BYTE PTR [rip+0xc1db5],0x0        # 0x3efa81
32dccc  75 18                          jne    0x32dce6
32dcce  48 8d 0d 6b 5b 0c 00           lea    rcx,[rip+0xc5b6b]        # 0x3f3840
32dcd5  e8 22 1b fc ff                 call   0x2ef7fc
32dcda  84 c0                          test   al,al
32dcdc  75 08                          jne    0x32dce6
32dcde  38 05 b4 c2 0b 00              cmp    BYTE PTR [rip+0xbc2b4],al        # 0x3e9f98 ; CONFIG Bools.AutoAdjustSpeed value(+0x48)
32dce4  74 0b                          je     0x32dcf1
32dce6  44 0f 28 ce                    movaps xmm9,xmm6
32dcea  0f 57 ff                       xorps  xmm7,xmm7
32dced  45 0f 57 c0                    xorps  xmm8,xmm8
32dcf1  0f 28 df                       movaps xmm3,xmm7
32dcf4  41 0f 28 d0                    movaps xmm2,xmm8
32dcf8  41 0f 28 c9                    movaps xmm1,xmm9
32dcfc  48 8b cf                       mov    rcx,rdi
32dcff  e8 a4 c6 03 00                 call   0x36a3a8
32dd04  4c 8d 45 97                    lea    r8,[rbp-0x69]
32dd08  44 0f 28 d0                    movaps xmm10,xmm0
32dd0c  48 8d 55 87                    lea    rdx,[rbp-0x79]
32dd10  48 8d 4d a7                    lea    rcx,[rbp-0x59]
32dd14  e8 b3 19 fb ff                 call   0x2df6cc
32dd19  48 8d 4d 87                    lea    rcx,[rbp-0x79]
32dd1d  e8 72 fe ff ff                 call   0x32db94
32dd22  f3 44 0f 10 05 f1 fd f5 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff5fdf1]        # 0x28db1c ; f32=10
32dd2b  44 0f 28 c8                    movaps xmm9,xmm0
32dd2f  f3 45 0f 59 d3                 mulss  xmm10,xmm11
32dd34  45 0f 2f ca                    comiss xmm9,xmm10
32dd38  0f 86 b7 00 00 00              jbe    0x32ddf5
32dd3e  f2 0f 10 06                    movsd  xmm0,QWORD PTR [rsi]
32dd42  48 8d 55 a7                    lea    rdx,[rbp-0x59]
32dd46  8b 46 08                       mov    eax,DWORD PTR [rsi+0x8]
32dd49  48 8d 4d 97                    lea    rcx,[rbp-0x69]
32dd4d  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
32dd52  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
32dd55  e8 72 f0 ff ff                 call   0x32cdcc
32dd5a  e8 15 ef ff ff                 call   0x32cc74
32dd5f  48 85 c0                       test   rax,rax
32dd62  74 16                          je     0x32dd7a
32dd64  8b 45 9f                       mov    eax,DWORD PTR [rbp-0x61]
32dd67  f2 0f 10 45 97                 movsd  xmm0,QWORD PTR [rbp-0x69]
32dd6c  89 45 af                       mov    DWORD PTR [rbp-0x51],eax
32dd6f  48 8d 45 a7                    lea    rax,[rbp-0x59]
32dd73  f2 0f 11 45 a7                 movsd  QWORD PTR [rbp-0x59],xmm0
32dd78  eb 12                          jmp    0x32dd8c
32dd7a  0f 57 db                       xorps  xmm3,xmm3
32dd7d  48 8d 4d b7                    lea    rcx,[rbp-0x49]
32dd81  0f 28 d6                       movaps xmm2,xmm6
32dd84  0f 57 c9                       xorps  xmm1,xmm1
32dd87  e8 1c 9e 09 00                 call   0x3c7ba8
32dd8c  f3 0f 10 5d 8f                 movss  xmm3,DWORD PTR [rbp-0x71]
32dd91  48 8d 4d b7                    lea    rcx,[rbp-0x49]
32dd95  f3 0f 10 4d 87                 movss  xmm1,DWORD PTR [rbp-0x79]
32dd9a  0f 57 d2                       xorps  xmm2,xmm2
32dd9d  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
32dda1  f3 0f 10 70 08                 movss  xmm6,DWORD PTR [rax+0x8]
32dda6  e8 fd 9d 09 00                 call   0x3c7ba8
32ddab  0f 28 de                       movaps xmm3,xmm6
32ddae  48 8d 4d a7                    lea    rcx,[rbp-0x59]
32ddb2  0f 57 d2                       xorps  xmm2,xmm2
32ddb5  0f 28 cf                       movaps xmm1,xmm7
32ddb8  48 8b d8                       mov    rbx,rax
32ddbb  e8 e8 9d 09 00                 call   0x3c7ba8
32ddc0  48 8b c8                       mov    rcx,rax
32ddc3  48 8b d3                       mov    rdx,rbx
32ddc6  e8 f9 7d fb ff                 call   0x2e5bc4
32ddcb  0f 28 c8                       movaps xmm1,xmm0
32ddce  0f 57 c0                       xorps  xmm0,xmm0
32ddd1  e8 9a 34 fb ff                 call   0x2e1270
32ddd6  f3 41 0f 59 c0                 mulss  xmm0,xmm8
32dddb  f3 41 0f 59 c3                 mulss  xmm0,xmm11
32dde0  f3 44 0f 5c c8                 subss  xmm9,xmm0
32dde5  0f 57 c0                       xorps  xmm0,xmm0
32dde8  41 0f 28 c9                    movaps xmm1,xmm9
32ddec  e8 7f 34 fb ff                 call   0x2e1270
32ddf1  44 0f 28 c8                    movaps xmm9,xmm0
32ddf5  f3 0f 10 05 33 43 0c 00        movss  xmm0,DWORD PTR [rip+0xc4333]        # 0x3f2130
32ddfd  0f 2f 05 48 f4 f5 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff5f448]        # 0x28d24c
32de04  f3 0f 10 3d 28 53 f6 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff65328]        # 0x293134 ; f32=2
32de0c  77 04                          ja     0x32de12
32de0e  44 0f 28 c7                    movaps xmm8,xmm7
32de12  f3 0f 10 35 ca fc f5 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff5fcca]        # 0x28dae4 ; f32=0.1
32de1a  41 0f 28 c0                    movaps xmm0,xmm8
32de1e  0f 28 ce                       movaps xmm1,xmm6
32de21  e8 4a 34 fb ff                 call   0x2e1270
32de26  44 0f 28 c0                    movaps xmm8,xmm0
32de2a  0f 28 ce                       movaps xmm1,xmm6
32de2d  0f 28 c7                       movaps xmm0,xmm7
32de30  e8 3b 34 fb ff                 call   0x2e1270
32de35  0f 28 d0                       movaps xmm2,xmm0
32de38  f3 0f 10 05 ec 42 0c 00        movss  xmm0,DWORD PTR [rip+0xc42ec]        # 0x3f212c
32de40  f3 41 0f 58 d0                 addss  xmm2,xmm8
32de45  0f 28 da                       movaps xmm3,xmm2
32de48  0f 57 1d 51 54 f6 ff           xorps  xmm3,XMMWORD PTR [rip+0xfffffffffff65451]        # 0x2932a0
32de4f  0f 28 cb                       movaps xmm1,xmm3
32de52  e8 ed 7b fb ff                 call   0x2e5a44
32de57  f3 41 0f 5c c2                 subss  xmm0,xmm10
32de5c  0f 28 cb                       movaps xmm1,xmm3
32de5f  e8 e0 7b fb ff                 call   0x2e5a44
32de64  41 0f 2f c0                    comiss xmm0,xmm8
32de68  f3 0f 11 05 bc 42 0c 00        movss  DWORD PTR [rip+0xc42bc],xmm0        # 0x3f212c
32de70  72 04                          jb     0x32de76
32de72  32 c0                          xor    al,al
32de74  eb 1d                          jmp    0x32de93
32de76  f3 41 0f 58 c1                 addss  xmm0,xmm9
32de7b  0f 28 cb                       movaps xmm1,xmm3
32de7e  e8 c1 7b fb ff                 call   0x2e5a44
32de83  41 0f 2f c0                    comiss xmm0,xmm8
32de87  f3 0f 11 05 9d 42 0c 00        movss  DWORD PTR [rip+0xc429d],xmm0        # 0x3f212c
32de8f  73 e1                          jae    0x32de72
32de91  b0 01                          mov    al,0x1
32de93  0f 28 c8                       movaps xmm1,xmm0
32de96  0f 2f f9                       comiss xmm7,xmm1
32de99  72 0c                          jb     0x32dea7
32de9b  f3 0f 11 05 f5 81 0b 00        movss  DWORD PTR [rip+0xb81f5],xmm0        # 0x3e6098
32dea3  eb 02                          jmp    0x32dea7
32dea5  b0 01                          mov    al,0x1
32dea7  4c 8d 9c 24 c8 00 00 00        lea    r11,[rsp+0xc8]
32deaf  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
32deb4  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
32deb9  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
32debe  45 0f 28 4b b8                 movaps xmm9,XMMWORD PTR [r11-0x48]
32dec3  45 0f 28 53 a8                 movaps xmm10,XMMWORD PTR [r11-0x58]
32dec8  45 0f 28 5b 98                 movaps xmm11,XMMWORD PTR [r11-0x68]
32decd  49 8b e3                       mov    rsp,r11
32ded0  41 5f                          pop    r15
32ded2  41 5e                          pop    r14
32ded4  5f                             pop    rdi
32ded5  5e                             pop    rsi
32ded6  5b                             pop    rbx
32ded7  5d                             pop    rbp
32ded8  c3                             ret

