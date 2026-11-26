; pdata function 0x336868..0x337e5f unwind=0x3d3b54
336868  48 8b c4                       mov    rax,rsp
33686b  55                             push   rbp
33686c  53                             push   rbx
33686d  56                             push   rsi
33686e  57                             push   rdi
33686f  41 55                          push   r13
336871  41 56                          push   r14
336873  41 57                          push   r15
336875  48 8d a8 28 ff ff ff           lea    rbp,[rax-0xd8]
33687c  48 81 ec a0 01 00 00           sub    rsp,0x1a0
336883  f3 0f 10 15 d5 c9 f5 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff5c9d5]        # 0x293260 ; f32=-1
33688b  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
336892  0f 57 c9                       xorps  xmm1,xmm1
336895  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
336899  e8 a2 5a f9 ff                 call   0x2cc340
33689e  bf 02 00 00 00                 mov    edi,0x2
3368a3  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
3368a7  8b 05 3b 68 0c 00              mov    eax,DWORD PTR [rip+0xc683b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3368ad  8d 77 ff                       lea    esi,[rdi-0x1]
3368b0  3b c6                          cmp    eax,esi
3368b2  75 0e                          jne    0x3368c2
3368b4  48 8d 0d 45 05 f6 ff           lea    rcx,[rip+0xfffffffffff60545]        # 0x296e00
3368bb  e8 44 e7 02 00                 call   0x365004
3368c0  eb 26                          jmp    0x3368e8
3368c2  3b c7                          cmp    eax,edi
3368c4  75 09                          jne    0x3368cf
3368c6  48 8d 0d 4b 05 f6 ff           lea    rcx,[rip+0xfffffffffff6054b]        # 0x296e18
3368cd  eb ec                          jmp    0x3368bb
3368cf  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3368d4  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3368db  e8 7c ce 01 00                 call   0x35375c ; STRING getter=0x35375c Exploits
3368e0  48 8b c8                       mov    rcx,rax
3368e3  e8 a4 32 fb ff                 call   0x2e9b8c
3368e8  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
3368ef  48 8b d8                       mov    rbx,rax
3368f2  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3368f9  e8 9e 9e 01 00                 call   0x35079c ; STRING getter=0x35079c N
3368fe  48 8b c8                       mov    rcx,rax
336901  e8 5e 1b fa ff                 call   0x2d8464
336906  48 8b d0                       mov    rdx,rax
336909  48 8d 4d a0                    lea    rcx,[rbp-0x60]
33690d  e8 ba 59 f9 ff                 call   0x2cc2cc
336912  48 8b c8                       mov    rcx,rax
336915  44 8a ce                       mov    r9b,sil
336918  66 49 0f 7e f0                 movq   r8,xmm6
33691d  48 8b d3                       mov    rdx,rbx
336920  e8 cb e4 04 00                 call   0x384df0
336925  ba ff 00 00 ff                 mov    edx,0xff0000ff
33692a  8b ce                          mov    ecx,esi
33692c  e8 bb 22 06 00                 call   0x398bec
336931  8b 05 b1 67 0c 00              mov    eax,DWORD PTR [rip+0xc67b1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336937  3b c6                          cmp    eax,esi
336939  75 0e                          jne    0x336949
33693b  48 8d 0d ee 04 f6 ff           lea    rcx,[rip+0xfffffffffff604ee]        # 0x296e30
336942  e8 bd e6 02 00                 call   0x365004
336947  eb 25                          jmp    0x33696e
336949  3b c7                          cmp    eax,edi
33694b  75 09                          jne    0x336956
33694d  48 8d 0d 24 05 f6 ff           lea    rcx,[rip+0xfffffffffff60524]        # 0x296e78
336954  eb ec                          jmp    0x336942
336956  48 8d 55 a0                    lea    rdx,[rbp-0x60]
33695a  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336961  e8 56 f9 01 00                 call   0x3562bc ; STRING getter=0x3562bc Teleports you upwards instantly
336966  48 8b c8                       mov    rcx,rax
336969  e8 2e af fe ff                 call   0x32189c
33696e  48 8b d8                       mov    rbx,rax
336971  8b 05 71 67 0c 00              mov    eax,DWORD PTR [rip+0xc6771]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336977  3b c6                          cmp    eax,esi
336979  75 09                          jne    0x336984
33697b  48 8d 0d 0e 05 f6 ff           lea    rcx,[rip+0xfffffffffff6050e]        # 0x296e90
336982  eb 0b                          jmp    0x33698f
336984  3b c7                          cmp    eax,edi
336986  75 0e                          jne    0x336996
336988  48 8d 0d 21 05 f6 ff           lea    rcx,[rip+0xfffffffffff60521]        # 0x296eb0
33698f  e8 70 e6 02 00                 call   0x365004
336994  eb 19                          jmp    0x3369af
336996  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
33699b  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3369a2  e8 0d e4 01 00                 call   0x354db4 ; STRING getter=0x354db4 Auto Teleport
3369a7  48 8b c8                       mov    rcx,rax
3369aa  e8 d9 67 fa ff                 call   0x2dd188
3369af  45 33 f6                       xor    r14d,r14d
3369b2  48 8d 15 8f 14 0c 00           lea    rdx,[rip+0xc148f]        # 0x3f7e48 ; CONFIG Bools.SpecialTeleport value(+0x48)
3369b9  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3369be  45 33 c9                       xor    r9d,r9d
3369c1  45 33 c0                       xor    r8d,r8d
3369c4  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3369c9  48 8b c8                       mov    rcx,rax
3369cc  e8 43 67 08 00                 call   0x3bd114
3369d1  8b 05 11 67 0c 00              mov    eax,DWORD PTR [rip+0xc6711]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3369d7  3b c6                          cmp    eax,esi
3369d9  75 0e                          jne    0x3369e9
3369db  48 8d 0d de 04 f6 ff           lea    rcx,[rip+0xfffffffffff604de]        # 0x296ec0
3369e2  e8 1d e6 02 00                 call   0x365004
3369e7  eb 26                          jmp    0x336a0f
3369e9  3b c7                          cmp    eax,edi
3369eb  75 09                          jne    0x3369f6
3369ed  48 8d 0d 04 05 f6 ff           lea    rcx,[rip+0xfffffffffff60504]        # 0x296ef8
3369f4  eb ec                          jmp    0x3369e2
3369f6  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3369fb  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336a02  e8 d1 15 02 00                 call   0x357fd8 ; STRING getter=0x357fd8 Pierce through objects
336a07  48 8b c8                       mov    rcx,rax
336a0a  e8 8d ba ff ff                 call   0x33249c
336a0f  48 8b d8                       mov    rbx,rax
336a12  8b 05 d0 66 0c 00              mov    eax,DWORD PTR [rip+0xc66d0]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336a18  3b c6                          cmp    eax,esi
336a1a  75 09                          jne    0x336a25
336a1c  48 8d 0d e5 04 f6 ff           lea    rcx,[rip+0xfffffffffff604e5]        # 0x296f08
336a23  eb 0b                          jmp    0x336a30
336a25  3b c7                          cmp    eax,edi
336a27  75 0e                          jne    0x336a37
336a29  48 8d 0d e4 04 f6 ff           lea    rcx,[rip+0xfffffffffff604e4]        # 0x296f14
336a30  e8 cf e5 02 00                 call   0x365004
336a35  eb 1b                          jmp    0x336a52
336a37  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
336a3e  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336a45  e8 c6 0a 02 00                 call   0x357510 ; STRING getter=0x357510 Pierce
336a4a  48 8b c8                       mov    rcx,rax
336a4d  e8 a2 72 f9 ff                 call   0x2cdcf4
336a52  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336a57  48 8d 15 ca e7 0a 00           lea    rdx,[rip+0xae7ca]        # 0x3e5228 ; CONFIG Bools.PierceFr value(+0x48)
336a5e  45 33 c9                       xor    r9d,r9d
336a61  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336a66  45 33 c0                       xor    r8d,r8d
336a69  48 8b c8                       mov    rcx,rax
336a6c  e8 a3 66 08 00                 call   0x3bd114
336a71  8b 05 71 66 0c 00              mov    eax,DWORD PTR [rip+0xc6671]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336a77  3b c6                          cmp    eax,esi
336a79  75 09                          jne    0x336a84
336a7b  48 8d 0d 9e 04 f6 ff           lea    rcx,[rip+0xfffffffffff6049e]        # 0x296f20
336a82  eb 0b                          jmp    0x336a8f
336a84  3b c7                          cmp    eax,edi
336a86  75 0e                          jne    0x336a96
336a88  48 8d 0d c1 04 f6 ff           lea    rcx,[rip+0xfffffffffff604c1]        # 0x296f50
336a8f  e8 70 e5 02 00                 call   0x365004
336a94  eb 19                          jmp    0x336aaf
336a96  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
336a9b  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336aa2  e8 79 1b 02 00                 call   0x358620 ; STRING getter=0x358620 Shoot Through Friends
336aa7  48 8b c8                       mov    rcx,rax
336aaa  e8 f5 1a fa ff                 call   0x2d85a4
336aaf  4c 8d 3d 72 68 f5 ff           lea    r15,[rip+0xfffffffffff56872]        # 0x28d328
336ab6  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336abb  45 33 c9                       xor    r9d,r9d
336abe  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
336ac3  45 33 c0                       xor    r8d,r8d
336ac6  48 8d 15 8b b2 0b 00           lea    rdx,[rip+0xbb28b]        # 0x3f1d58 ; CONFIG Bools.ShootThroughFriends value(+0x48)
336acd  48 8b c8                       mov    rcx,rax
336ad0  e8 3f 66 08 00                 call   0x3bd114
336ad5  8b 05 0d 66 0c 00              mov    eax,DWORD PTR [rip+0xc660d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336adb  3b c6                          cmp    eax,esi
336add  75 0e                          jne    0x336aed
336adf  48 8d 0d 7a 04 f6 ff           lea    rcx,[rip+0xfffffffffff6047a]        # 0x296f60
336ae6  e8 19 e5 02 00                 call   0x365004
336aeb  eb 25                          jmp    0x336b12
336aed  3b c7                          cmp    eax,edi
336aef  75 09                          jne    0x336afa
336af1  48 8d 0d 98 04 f6 ff           lea    rcx,[rip+0xfffffffffff60498]        # 0x296f90
336af8  eb ec                          jmp    0x336ae6
336afa  48 8d 55 a0                    lea    rdx,[rbp-0x60]
336afe  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336b05  e8 6a 39 02 00                 call   0x35a474 ; STRING getter=0x35a474 Makes projectile hit near target
336b0a  48 8b c8                       mov    rcx,rax
336b0d  e8 9a d1 02 00                 call   0x363cac
336b12  48 8b d8                       mov    rbx,rax
336b15  8b 05 cd 65 0c 00              mov    eax,DWORD PTR [rip+0xc65cd]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336b1b  3b c6                          cmp    eax,esi
336b1d  75 09                          jne    0x336b28
336b1f  48 8d 0d 7a 04 f6 ff           lea    rcx,[rip+0xfffffffffff6047a]        # 0x296fa0
336b26  eb 0b                          jmp    0x336b33
336b28  3b c7                          cmp    eax,edi
336b2a  75 0e                          jne    0x336b3a
336b2c  48 8d 0d 95 04 f6 ff           lea    rcx,[rip+0xfffffffffff60495]        # 0x296fc8
336b33  e8 cc e4 02 00                 call   0x365004
336b38  eb 19                          jmp    0x336b53
336b3a  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
336b3f  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336b46  e8 45 1f 02 00                 call   0x358a90 ; STRING getter=0x358a90 Custom Projectiles
336b4b  48 8b c8                       mov    rcx,rax
336b4e  e8 41 72 f9 ff                 call   0x2cdd94
336b53  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336b58  48 8d 15 69 13 0a 00           lea    rdx,[rip+0xa1369]        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
336b5f  45 33 c9                       xor    r9d,r9d
336b62  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336b67  45 33 c0                       xor    r8d,r8d
336b6a  48 8b c8                       mov    rcx,rax
336b6d  e8 a2 65 08 00                 call   0x3bd114
336b72  44 38 35 4f 13 0a 00           cmp    BYTE PTR [rip+0xa134f],r14b        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
336b79  f3 0f 10 35 9b 6f f5 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff56f9b]        # 0x28db1c ; f32=10
336b81  0f 84 81 03 00 00              je     0x336f08
336b87  8b 05 5b 65 0c 00              mov    eax,DWORD PTR [rip+0xc655b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336b8d  3b c6                          cmp    eax,esi
336b8f  75 0e                          jne    0x336b9f
336b91  48 8d 0d 38 04 f6 ff           lea    rcx,[rip+0xfffffffffff60438]        # 0x296fd0
336b98  e8 67 e4 02 00                 call   0x365004
336b9d  eb 25                          jmp    0x336bc4
336b9f  3b c7                          cmp    eax,edi
336ba1  75 09                          jne    0x336bac
336ba3  48 8d 0d 7e 04 f6 ff           lea    rcx,[rip+0xfffffffffff6047e]        # 0x297028
336baa  eb ec                          jmp    0x336b98
336bac  48 8d 55 a0                    lea    rdx,[rbp-0x60]
336bb0  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336bb7  e8 1c 9a 01 00                 call   0x3505d8 ; STRING getter=0x3505d8 Extends bullet size on mounted players
336bbc  48 8b c8                       mov    rcx,rax
336bbf  e8 70 b5 fe ff                 call   0x322134
336bc4  48 8b d8                       mov    rbx,rax
336bc7  8b 05 1b 65 0c 00              mov    eax,DWORD PTR [rip+0xc651b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336bcd  3b c6                          cmp    eax,esi
336bcf  75 09                          jne    0x336bda
336bd1  48 8d 0d 68 04 f6 ff           lea    rcx,[rip+0xfffffffffff60468]        # 0x297040
336bd8  eb 0b                          jmp    0x336be5
336bda  3b c7                          cmp    eax,edi
336bdc  75 0e                          jne    0x336bec
336bde  48 8d 0d 83 04 f6 ff           lea    rcx,[rip+0xfffffffffff60483]        # 0x297068
336be5  e8 1a e4 02 00                 call   0x365004
336bea  eb 19                          jmp    0x336c05
336bec  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
336bf1  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336bf8  e8 e7 e7 00 00                 call   0x3453e4 ; STRING getter=0x3453e4 ExtendMounted
336bfd  48 8b c8                       mov    rcx,rax
336c00  e8 83 65 fa ff                 call   0x2dd188
336c05  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336c0a  48 8d 15 c7 28 0c 00           lea    rdx,[rip+0xc28c7]        # 0x3f94d8 ; CONFIG Bools.ExtendMounted value(+0x48)
336c11  45 33 c9                       xor    r9d,r9d
336c14  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336c19  45 33 c0                       xor    r8d,r8d
336c1c  48 8b c8                       mov    rcx,rax
336c1f  e8 f0 64 08 00                 call   0x3bd114
336c24  8b 05 be 64 0c 00              mov    eax,DWORD PTR [rip+0xc64be]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336c2a  3b c6                          cmp    eax,esi
336c2c  75 09                          jne    0x336c37
336c2e  48 8d 0d 43 04 f6 ff           lea    rcx,[rip+0xfffffffffff60443]        # 0x297078
336c35  eb 0b                          jmp    0x336c42
336c37  3b c7                          cmp    eax,edi
336c39  75 0e                          jne    0x336c49
336c3b  48 8d 0d 56 04 f6 ff           lea    rcx,[rip+0xfffffffffff60456]        # 0x297098
336c42  e8 bd e3 02 00                 call   0x365004
336c47  eb 19                          jmp    0x336c62
336c49  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
336c4e  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336c55  e8 36 a1 01 00                 call   0x350d90 ; STRING getter=0x350d90 Legit Mode
336c5a  48 8b c8                       mov    rcx,rax
336c5d  e8 f2 2f fb ff                 call   0x2e9c54
336c62  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336c67  48 8d 15 1a 28 0c 00           lea    rdx,[rip+0xc281a]        # 0x3f9488 ; CONFIG Bools.LegitBulletTP value(+0x48)
336c6e  45 33 c9                       xor    r9d,r9d
336c71  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
336c76  45 33 c0                       xor    r8d,r8d
336c79  48 8b c8                       mov    rcx,rax
336c7c  e8 93 64 08 00                 call   0x3bd114
336c81  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
336c88  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336c8f  e8 c4 b6 01 00                 call   0x352358 ; STRING getter=0x352358 %.3f
336c94  44 38 35 ed 27 0c 00           cmp    BYTE PTR [rip+0xc27ed],r14b        # 0x3f9488 ; CONFIG Bools.LegitBulletTP value(+0x48)
336c9b  48 8b c8                       mov    rcx,rax
336c9e  74 57                          je     0x336cf7
336ca0  e8 47 c9 fa ff                 call   0x2e35ec
336ca5  8b 0d 3d 64 0c 00              mov    ecx,DWORD PTR [rip+0xc643d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336cab  48 8b d8                       mov    rbx,rax
336cae  3b ce                          cmp    ecx,esi
336cb0  75 09                          jne    0x336cbb
336cb2  48 8d 0d ef 03 f6 ff           lea    rcx,[rip+0xfffffffffff603ef]        # 0x2970a8
336cb9  eb 0b                          jmp    0x336cc6
336cbb  3b cf                          cmp    ecx,edi
336cbd  75 0e                          jne    0x336ccd
336cbf  48 8d 0d 02 04 f6 ff           lea    rcx,[rip+0xfffffffffff60402]        # 0x2970c8
336cc6  e8 39 e3 02 00                 call   0x365004
336ccb  eb 19                          jmp    0x336ce6
336ccd  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
336cd2  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336cd9  e8 9a a5 01 00                 call   0x351278 ; STRING getter=0x351278 Legit Projectile Size
336cde  48 8b c8                       mov    rcx,rax
336ce1  e8 be 18 fa ff                 call   0x2d85a4
336ce6  f3 0f 10 1d 1e 15 f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff7151e]        # 0x2a820c ; f32=1.947
336cee  48 8d 15 33 28 0c 00           lea    rdx,[rip+0xc2833]        # 0x3f9528 ; CONFIG F.BulletSizeLegit value(+0x48)
336cf5  eb 55                          jmp    0x336d4c
336cf7  e8 f0 c8 fa ff                 call   0x2e35ec
336cfc  8b 0d e6 63 0c 00              mov    ecx,DWORD PTR [rip+0xc63e6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336d02  48 8b d8                       mov    rbx,rax
336d05  3b ce                          cmp    ecx,esi
336d07  75 09                          jne    0x336d12
336d09  48 8d 0d 98 03 f6 ff           lea    rcx,[rip+0xfffffffffff60398]        # 0x2970a8
336d10  eb 0b                          jmp    0x336d1d
336d12  3b cf                          cmp    ecx,edi
336d14  75 0e                          jne    0x336d24
336d16  48 8d 0d ab 03 f6 ff           lea    rcx,[rip+0xfffffffffff603ab]        # 0x2970c8
336d1d  e8 e2 e2 02 00                 call   0x365004
336d22  eb 19                          jmp    0x336d3d
336d24  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
336d29  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336d30  e8 73 a7 01 00                 call   0x3514a8 ; STRING getter=0x3514a8 Projectile Size
336d35  48 8b c8                       mov    rcx,rax
336d38  e8 23 64 fa ff                 call   0x2dd160
336d3d  f3 0f 10 1d d3 14 f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff714d3]        # 0x2a8218 ; f32=2.395
336d45  48 8d 15 8c d0 0b 00           lea    rdx,[rip+0xbd08c]        # 0x3f3dd8 ; CONFIG F.BulletSize1 value(+0x48)
336d4c  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
336d51  0f 57 d2                       xorps  xmm2,xmm2
336d54  48 8b c8                       mov    rcx,rax
336d57  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336d5c  e8 93 d6 08 00                 call   0x3c43f4
336d61  8b 05 81 63 0c 00              mov    eax,DWORD PTR [rip+0xc6381]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336d67  3b c6                          cmp    eax,esi
336d69  75 0e                          jne    0x336d79
336d6b  48 8d 0d 66 03 f6 ff           lea    rcx,[rip+0xfffffffffff60366]        # 0x2970d8
336d72  e8 8d e2 02 00                 call   0x365004
336d77  eb 26                          jmp    0x336d9f
336d79  3b c7                          cmp    eax,edi
336d7b  75 09                          jne    0x336d86
336d7d  48 8d 0d 84 03 f6 ff           lea    rcx,[rip+0xfffffffffff60384]        # 0x297108
336d84  eb ec                          jmp    0x336d72
336d86  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
336d8b  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336d92  e8 15 ac 01 00                 call   0x3519ac ; STRING getter=0x3519ac Hit targets behind objects
336d97  48 8b c8                       mov    rcx,rax
336d9a  e8 45 70 f9 ff                 call   0x2cdde4
336d9f  48 8b d8                       mov    rbx,rax
336da2  8b 05 40 63 0c 00              mov    eax,DWORD PTR [rip+0xc6340]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336da8  3b c6                          cmp    eax,esi
336daa  75 09                          jne    0x336db5
336dac  48 8d 0d 65 03 f6 ff           lea    rcx,[rip+0xfffffffffff60365]        # 0x297118
336db3  eb 0b                          jmp    0x336dc0
336db5  3b c7                          cmp    eax,edi
336db7  75 0e                          jne    0x336dc7
336db9  48 8d 0d 80 03 f6 ff           lea    rcx,[rip+0xfffffffffff60380]        # 0x297140
336dc0  e8 3f e2 02 00                 call   0x365004
336dc5  eb 18                          jmp    0x336ddf
336dc7  48 8d 55 a0                    lea    rdx,[rbp-0x60]
336dcb  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336dd2  e8 75 a9 01 00                 call   0x35174c ; STRING getter=0x35174c Behind Wall Calculations
336dd7  48 8b c8                       mov    rcx,rax
336dda  e8 2d 97 fe ff                 call   0x32050c
336ddf  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336de4  48 8d 15 6d 12 0a 00           lea    rdx,[rip+0xa126d]        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
336deb  45 33 c9                       xor    r9d,r9d
336dee  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336df3  45 33 c0                       xor    r8d,r8d
336df6  48 8b c8                       mov    rcx,rax
336df9  e8 16 63 08 00                 call   0x3bd114
336dfe  44 38 35 53 12 0a 00           cmp    BYTE PTR [rip+0xa1253],r14b        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
336e05  0f 84 04 01 00 00              je     0x336f0f
336e0b  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
336e12  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336e19  e8 f6 13 02 00                 call   0x358214 ; STRING getter=0x358214 %d
336e1e  48 8b c8                       mov    rcx,rax
336e21  e8 66 16 fa ff                 call   0x2d848c
336e26  8b 0d bc 62 0c 00              mov    ecx,DWORD PTR [rip+0xc62bc]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336e2c  48 8b d8                       mov    rbx,rax
336e2f  3b ce                          cmp    ecx,esi
336e31  75 09                          jne    0x336e3c
336e33  48 8d 0d 16 03 f6 ff           lea    rcx,[rip+0xfffffffffff60316]        # 0x297150
336e3a  eb 0b                          jmp    0x336e47
336e3c  3b cf                          cmp    ecx,edi
336e3e  75 0e                          jne    0x336e4e
336e40  48 8d 0d 31 03 f6 ff           lea    rcx,[rip+0xfffffffffff60331]        # 0x297178
336e47  e8 b8 e1 02 00                 call   0x365004
336e4c  eb 18                          jmp    0x336e66
336e4e  48 8d 55 a0                    lea    rdx,[rbp-0x60]
336e52  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336e59  e8 aa ae 01 00                 call   0x351d08 ; STRING getter=0x351d08 Angle Generation Strength
336e5e  48 8b c8                       mov    rcx,rax
336e61  e8 6e 3a ff ff                 call   0x32a8d4
336e66  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
336e6b  48 8d 15 86 d2 0b 00           lea    rdx,[rip+0xbd286]        # 0x3f40f8 ; CONFIG i.MaxAnglesGenerated value(+0x48)
336e72  41 b9 f4 01 00 00              mov    r9d,0x1f4
336e78  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336e7d  41 b8 32 00 00 00              mov    r8d,0x32
336e83  48 8b c8                       mov    rcx,rax
336e86  e8 ad d5 08 00                 call   0x3c4438
336e8b  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
336e92  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336e99  e8 ba b4 01 00                 call   0x352358 ; STRING getter=0x352358 %.3f
336e9e  48 8b c8                       mov    rcx,rax
336ea1  e8 46 c7 fa ff                 call   0x2e35ec
336ea6  8b 0d 3c 62 0c 00              mov    ecx,DWORD PTR [rip+0xc623c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336eac  48 8b d8                       mov    rbx,rax
336eaf  3b ce                          cmp    ecx,esi
336eb1  75 09                          jne    0x336ebc
336eb3  48 8d 0d ce 02 f6 ff           lea    rcx,[rip+0xfffffffffff602ce]        # 0x297188
336eba  eb 0b                          jmp    0x336ec7
336ebc  3b cf                          cmp    ecx,edi
336ebe  75 0e                          jne    0x336ece
336ec0  48 8d 0d d9 02 f6 ff           lea    rcx,[rip+0xfffffffffff602d9]        # 0x2971a0
336ec7  e8 38 e1 02 00                 call   0x365004
336ecc  eb 19                          jmp    0x336ee7
336ece  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
336ed3  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336eda  e8 29 b0 01 00                 call   0x351f08 ; STRING getter=0x351f08 Cache(FPS!!)
336edf  48 8b c8                       mov    rcx,rax
336ee2  e8 0d 17 fa ff                 call   0x2d85f4
336ee7  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
336eec  48 8d 15 15 d1 0b 00           lea    rdx,[rip+0xbd115]        # 0x3f4008 ; CONFIG F.value3 value(+0x48)
336ef3  0f 28 de                       movaps xmm3,xmm6
336ef6  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336efb  0f 57 d2                       xorps  xmm2,xmm2
336efe  48 8b c8                       mov    rcx,rax
336f01  e8 ee d4 08 00                 call   0x3c43f4
336f06  eb 07                          jmp    0x336f0f
336f08  44 88 35 49 11 0a 00           mov    BYTE PTR [rip+0xa1149],r14b        # 0x3d8058 ; CONFIG Bools.DoFatBulletHit value(+0x48)
336f0f  8b 05 d3 61 0c 00              mov    eax,DWORD PTR [rip+0xc61d3]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336f15  3b c6                          cmp    eax,esi
336f17  75 0e                          jne    0x336f27
336f19  48 8d 0d 90 02 f6 ff           lea    rcx,[rip+0xfffffffffff60290]        # 0x2971b0
336f20  e8 df e0 02 00                 call   0x365004
336f25  eb 25                          jmp    0x336f4c
336f27  3b c7                          cmp    eax,edi
336f29  75 09                          jne    0x336f34
336f2b  48 8d 0d a6 02 f6 ff           lea    rcx,[rip+0xfffffffffff602a6]        # 0x2971d8
336f32  eb ec                          jmp    0x336f20
336f34  48 8d 55 a0                    lea    rdx,[rbp-0x60]
336f38  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336f3f  e8 48 b4 01 00                 call   0x35238c ; STRING getter=0x35238c Shoots multiple projectiles
336f44  48 8b c8                       mov    rcx,rax
336f47  e8 38 96 fe ff                 call   0x320584
336f4c  48 8b d8                       mov    rbx,rax
336f4f  8b 05 93 61 0c 00              mov    eax,DWORD PTR [rip+0xc6193]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336f55  3b c6                          cmp    eax,esi
336f57  75 09                          jne    0x336f62
336f59  48 8d 0d 88 02 f6 ff           lea    rcx,[rip+0xfffffffffff60288]        # 0x2971e8
336f60  eb 0b                          jmp    0x336f6d
336f62  3b c7                          cmp    eax,edi
336f64  75 0e                          jne    0x336f74
336f66  48 8d 0d a3 02 f6 ff           lea    rcx,[rip+0xfffffffffff602a3]        # 0x297210
336f6d  e8 92 e0 02 00                 call   0x365004
336f72  eb 19                          jmp    0x336f8d
336f74  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
336f79  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336f80  e8 d7 af 01 00                 call   0x351f5c ; STRING getter=0x351f5c Instant kill
336f85  48 8b c8                       mov    rcx,rax
336f88  e8 67 16 fa ff                 call   0x2d85f4
336f8d  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
336f92  48 8d 15 4f e1 0a 00           lea    rdx,[rip+0xae14f]        # 0x3e50e8 ; CONFIG Bools.InstantKill value(+0x48)
336f99  45 33 c9                       xor    r9d,r9d
336f9c  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
336fa1  45 33 c0                       xor    r8d,r8d
336fa4  48 8b c8                       mov    rcx,rax
336fa7  e8 68 61 08 00                 call   0x3bd114
336fac  44 38 35 35 e1 0a 00           cmp    BYTE PTR [rip+0xae135],r14b        # 0x3e50e8 ; CONFIG Bools.InstantKill value(+0x48)
336fb3  0f 84 80 00 00 00              je     0x337039
336fb9  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
336fc0  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
336fc7  e8 8c b3 01 00                 call   0x352358 ; STRING getter=0x352358 %.3f
336fcc  48 8b c8                       mov    rcx,rax
336fcf  e8 18 c6 fa ff                 call   0x2e35ec
336fd4  8b 0d 0e 61 0c 00              mov    ecx,DWORD PTR [rip+0xc610e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
336fda  48 8b d8                       mov    rbx,rax
336fdd  3b ce                          cmp    ecx,esi
336fdf  75 09                          jne    0x336fea
336fe1  48 8d 0d 38 02 f6 ff           lea    rcx,[rip+0xfffffffffff60238]        # 0x297220
336fe8  eb 0b                          jmp    0x336ff5
336fea  3b cf                          cmp    ecx,edi
336fec  75 0e                          jne    0x336ffc
336fee  48 8d 0d 43 02 f6 ff           lea    rcx,[rip+0xfffffffffff60243]        # 0x297238
336ff5  e8 0a e0 02 00                 call   0x365004
336ffa  eb 19                          jmp    0x337015
336ffc  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
337001  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337008  e8 97 b5 01 00                 call   0x3525a4 ; STRING getter=0x3525a4 Minimum Desync
33700d  48 8b c8                       mov    rcx,rax
337010  e8 57 16 fa ff                 call   0x2d866c
337015  f3 0f 10 1d af c0 f5 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff5c0af]        # 0x2930cc ; f32=0.7
33701d  48 8d 15 f4 e2 0a 00           lea    rdx,[rip+0xae2f4]        # 0x3e5318 ; CONFIG F.MinimumDesyncInstantkill value(+0x48)
337024  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
337029  0f 57 d2                       xorps  xmm2,xmm2
33702c  48 8b c8                       mov    rcx,rax
33702f  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
337034  e8 bb d3 08 00                 call   0x3c43f4
337039  8b 05 a9 60 0c 00              mov    eax,DWORD PTR [rip+0xc60a9]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33703f  3b c6                          cmp    eax,esi
337041  75 0e                          jne    0x337051
337043  48 8d 0d fe 01 f6 ff           lea    rcx,[rip+0xfffffffffff601fe]        # 0x297248
33704a  e8 b5 df 02 00                 call   0x365004
33704f  eb 26                          jmp    0x337077
337051  3b c7                          cmp    eax,edi
337053  75 09                          jne    0x33705e
337055  48 8d 0d 14 02 f6 ff           lea    rcx,[rip+0xfffffffffff60214]        # 0x297270
33705c  eb ec                          jmp    0x33704a
33705e  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
337063  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33706a  e8 ad b9 01 00                 call   0x352a1c ; STRING getter=0x352a1c Slows projectiles
33706f  48 8b c8                       mov    rcx,rax
337072  e8 65 2b fb ff                 call   0x2e9bdc
337077  48 8b d8                       mov    rbx,rax
33707a  8b 05 68 60 0c 00              mov    eax,DWORD PTR [rip+0xc6068]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337080  3b c6                          cmp    eax,esi
337082  75 09                          jne    0x33708d
337084  48 8d 0d f5 01 f6 ff           lea    rcx,[rip+0xfffffffffff601f5]        # 0x297280
33708b  eb 0b                          jmp    0x337098
33708d  3b c7                          cmp    eax,edi
33708f  75 0e                          jne    0x33709f
337091  48 8d 0d 08 02 f6 ff           lea    rcx,[rip+0xfffffffffff60208]        # 0x2972a0
337098  e8 67 df 02 00                 call   0x365004
33709d  eb 19                          jmp    0x3370b8
33709f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3370a4  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3370ab  e8 58 b7 01 00                 call   0x352808 ; STRING getter=0x352808 Low Velocity
3370b0  48 8b c8                       mov    rcx,rax
3370b3  e8 3c 15 fa ff                 call   0x2d85f4
3370b8  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3370bd  4c 8d 05 34 12 0a 00           lea    r8,[rip+0xa1234]        # 0x3d82f8 ; CONFIG K.LowVelocityVirtualKey value(+0x48)
3370c4  45 33 c9                       xor    r9d,r9d
3370c7  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3370cc  48 8d 15 35 c0 0b 00           lea    rdx,[rip+0xbc035]        # 0x3f3108 ; CONFIG Bools.LowVelocity value(+0x48)
3370d3  48 8b c8                       mov    rcx,rax
3370d6  e8 39 60 08 00                 call   0x3bd114
3370db  44 38 35 26 c0 0b 00           cmp    BYTE PTR [rip+0xbc026],r14b        # 0x3f3108 ; CONFIG Bools.LowVelocity value(+0x48)
3370e2  41 bd 20 00 00 00              mov    r13d,0x20
3370e8  0f 84 51 02 00 00              je     0x33733f
3370ee  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3370f5  e8 aa 42 f9 ff                 call   0x2cb3a4
3370fa  8b 0d e8 5f 0c 00              mov    ecx,DWORD PTR [rip+0xc5fe8]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337100  48 8b d8                       mov    rbx,rax
337103  3b ce                          cmp    ecx,esi
337105  75 09                          jne    0x337110
337107  48 8d 0d a2 01 f6 ff           lea    rcx,[rip+0xfffffffffff601a2]        # 0x2972b0
33710e  eb 0b                          jmp    0x33711b
337110  3b cf                          cmp    ecx,edi
337112  75 0e                          jne    0x337122
337114  48 8d 0d a5 01 f6 ff           lea    rcx,[rip+0xfffffffffff601a5]        # 0x2972c0
33711b  e8 e4 de 02 00                 call   0x365004
337120  eb 1b                          jmp    0x33713d
337122  48 8d 95 f8 00 00 00           lea    rdx,[rbp+0xf8]
337129  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337130  e8 db bd 01 00                 call   0x352f10 ; STRING getter=0x352f10 Weak
337135  48 8b c8                       mov    rcx,rax
337138  e8 8f 6b f9 ff                 call   0x2cdccc
33713d  48 8b d0                       mov    rdx,rax
337140  48 8d 4d d0                    lea    rcx,[rbp-0x30]
337144  e8 83 51 f9 ff                 call   0x2cc2cc
337149  8b 05 99 5f 0c 00              mov    eax,DWORD PTR [rip+0xc5f99]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33714f  3b c6                          cmp    eax,esi
337151  75 09                          jne    0x33715c
337153  48 8d 0d 6e 01 f6 ff           lea    rcx,[rip+0xfffffffffff6016e]        # 0x2972c8
33715a  eb 0b                          jmp    0x337167
33715c  3b c7                          cmp    eax,edi
33715e  75 0e                          jne    0x33716e
337160  48 8d 0d 71 01 f6 ff           lea    rcx,[rip+0xfffffffffff60171]        # 0x2972d8
337167  e8 98 de 02 00                 call   0x365004
33716c  eb 19                          jmp    0x337187
33716e  48 8d 54 24 53                 lea    rdx,[rsp+0x53]
337173  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
33717a  e8 61 bf 01 00                 call   0x3530e0 ; STRING getter=0x3530e0 Normal
33717f  48 8b c8                       mov    rcx,rax
337182  e8 6d 6b f9 ff                 call   0x2cdcf4
337187  48 8b d0                       mov    rdx,rax
33718a  48 8d 4d f0                    lea    rcx,[rbp-0x10]
33718e  e8 39 51 f9 ff                 call   0x2cc2cc
337193  8b 05 4f 5f 0c 00              mov    eax,DWORD PTR [rip+0xc5f4f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337199  3b c6                          cmp    eax,esi
33719b  75 09                          jne    0x3371a6
33719d  48 8d 0d 3c 01 f6 ff           lea    rcx,[rip+0xfffffffffff6013c]        # 0x2972e0
3371a4  eb 0b                          jmp    0x3371b1
3371a6  3b c7                          cmp    eax,edi
3371a8  75 0e                          jne    0x3371b8
3371aa  48 8d 0d 3f 01 f6 ff           lea    rcx,[rip+0xfffffffffff6013f]        # 0x2972f0
3371b1  e8 4e de 02 00                 call   0x365004
3371b6  eb 19                          jmp    0x3371d1
3371b8  48 8d 54 24 4c                 lea    rdx,[rsp+0x4c]
3371bd  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
3371c4  e8 bb c0 01 00                 call   0x353284 ; STRING getter=0x353284 Strong
3371c9  48 8b c8                       mov    rcx,rax
3371cc  e8 23 6b f9 ff                 call   0x2cdcf4
3371d1  48 8b d0                       mov    rdx,rax
3371d4  48 8d 4d 10                    lea    rcx,[rbp+0x10]
3371d8  e8 ef 50 f9 ff                 call   0x2cc2cc
3371dd  8b 05 05 5f 0c 00              mov    eax,DWORD PTR [rip+0xc5f05]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3371e3  3b c6                          cmp    eax,esi
3371e5  75 09                          jne    0x3371f0
3371e7  48 8d 0d 0a 01 f6 ff           lea    rcx,[rip+0xfffffffffff6010a]        # 0x2972f8
3371ee  eb 0b                          jmp    0x3371fb
3371f0  3b c7                          cmp    eax,edi
3371f2  75 0e                          jne    0x337202
3371f4  48 8d 0d 15 01 f6 ff           lea    rcx,[rip+0xfffffffffff60115]        # 0x297310
3371fb  e8 04 de 02 00                 call   0x365004
337200  eb 19                          jmp    0x33721b
337202  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
337207  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
33720e  e8 39 c2 01 00                 call   0x35344c ; STRING getter=0x35344c Strongest
337213  48 8b c8                       mov    rcx,rax
337216  e8 29 6b f9 ff                 call   0x2cdd44
33721b  48 8b d0                       mov    rdx,rax
33721e  48 8d 4d 30                    lea    rcx,[rbp+0x30]
337222  e8 a5 50 f9 ff                 call   0x2cc2cc
337227  4c 8d 45 50                    lea    r8,[rbp+0x50]
33722b  48 8d 55 d0                    lea    rdx,[rbp-0x30]
33722f  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
337234  e8 33 52 f9 ff                 call   0x2cc46c
337239  4c 8b c3                       mov    r8,rbx
33723c  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
337241  48 8d 4d a0                    lea    rcx,[rbp-0x60]
337245  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
337248  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
33724e  e8 e5 f1 ff ff                 call   0x336438
337253  8b 0d 8f 5e 0c 00              mov    ecx,DWORD PTR [rip+0xc5e8f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337259  48 8b d8                       mov    rbx,rax
33725c  3b ce                          cmp    ecx,esi
33725e  75 09                          jne    0x337269
337260  48 8d 0d b1 00 f6 ff           lea    rcx,[rip+0xfffffffffff600b1]        # 0x297318
337267  eb 0b                          jmp    0x337274
337269  3b cf                          cmp    ecx,edi
33726b  75 0e                          jne    0x33727b
33726d  48 8d 0d bc 00 f6 ff           lea    rcx,[rip+0xfffffffffff600bc]        # 0x297330
337274  e8 8b dd 02 00                 call   0x365004
337279  eb 19                          jmp    0x337294
33727b  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
337280  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337287  e8 b4 ba 01 00                 call   0x352d40 ; STRING getter=0x352d40 LV Iterations
33728c  48 8b c8                       mov    rcx,rax
33728f  e8 f4 5e fa ff                 call   0x2dd188
337294  4c 8b c3                       mov    r8,rbx
337297  48 8d 15 aa ce 0b 00           lea    rdx,[rip+0xbceaa]        # 0x3f4148 ; CONFIG i.LViterations value(+0x48)
33729e  48 8b c8                       mov    rcx,rax
3372a1  e8 62 7d 08 00                 call   0x3bf008
3372a6  4c 8d 0d 47 52 f9 ff           lea    r9,[rip+0xfffffffffff95247]        # 0x2cc4f4
3372ad  41 b8 04 00 00 00              mov    r8d,0x4
3372b3  49 8b d5                       mov    rdx,r13
3372b6  48 8d 4d d0                    lea    rcx,[rbp-0x30]
3372ba  e8 09 48 fa ff                 call   0x2dbac8
3372bf  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
3372c6  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3372cd  e8 86 b0 01 00                 call   0x352358 ; STRING getter=0x352358 %.3f
3372d2  48 8b c8                       mov    rcx,rax
3372d5  e8 12 c3 fa ff                 call   0x2e35ec
3372da  8b 0d 08 5e 0c 00              mov    ecx,DWORD PTR [rip+0xc5e08]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3372e0  48 8b d8                       mov    rbx,rax
3372e3  3b ce                          cmp    ecx,esi
3372e5  75 09                          jne    0x3372f0
3372e7  48 8d 0d 52 00 f6 ff           lea    rcx,[rip+0xfffffffffff60052]        # 0x297340
3372ee  eb 0b                          jmp    0x3372fb
3372f0  3b cf                          cmp    ecx,edi
3372f2  75 0e                          jne    0x337302
3372f4  48 8d 0d 59 00 f6 ff           lea    rcx,[rip+0xfffffffffff60059]        # 0x297354
3372fb  e8 04 dd 02 00                 call   0x365004
337300  eb 19                          jmp    0x33731b
337302  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
337307  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33730e  e8 81 c3 01 00                 call   0x353694 ; STRING getter=0x353694 LV Speed
337313  48 8b c8                       mov    rcx,rax
337316  e8 71 28 fb ff                 call   0x2e9b8c
33731b  f3 0f 10 15 c1 67 f5 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff567c1]        # 0x28dae4 ; f32=0.1
337323  48 8d 15 2e cd 0b 00           lea    rdx,[rip+0xbcd2e]        # 0x3f4058 ; CONFIG F.value4 value(+0x48)
33732a  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
33732f  0f 28 de                       movaps xmm3,xmm6
337332  48 8b c8                       mov    rcx,rax
337335  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33733a  e8 b5 d0 08 00                 call   0x3c43f4
33733f  8b 05 a3 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5da3]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337345  3b c6                          cmp    eax,esi
337347  75 0e                          jne    0x337357
337349  48 8d 0d 10 00 f6 ff           lea    rcx,[rip+0xfffffffffff60010]        # 0x297360
337350  e8 af dc 02 00                 call   0x365004
337355  eb 26                          jmp    0x33737d
337357  3b c7                          cmp    eax,edi
337359  75 09                          jne    0x337364
33735b  48 8d 0d 2e 00 f6 ff           lea    rcx,[rip+0xfffffffffff6002e]        # 0x297390
337362  eb ec                          jmp    0x337350
337364  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
337369  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337370  e8 2b c8 01 00                 call   0x353ba0 ; STRING getter=0x353ba0 Instant projectile hit
337375  48 8b c8                       mov    rcx,rax
337378  e8 1f b1 ff ff                 call   0x33249c
33737d  48 8b d8                       mov    rbx,rax
337380  8b 05 62 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d62]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337386  3b c6                          cmp    eax,esi
337388  75 09                          jne    0x337393
33738a  48 8d 0d 0f 00 f6 ff           lea    rcx,[rip+0xfffffffffff6000f]        # 0x2973a0
337391  eb 0b                          jmp    0x33739e
337393  3b c7                          cmp    eax,edi
337395  75 0e                          jne    0x3373a5
337397  48 8d 0d f2 ff f5 ff           lea    rcx,[rip+0xfffffffffff5fff2]        # 0x297390
33739e  e8 61 dc 02 00                 call   0x365004
3373a3  eb 19                          jmp    0x3373be
3373a5  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3373aa  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3373b1  e8 1e c6 01 00                 call   0x3539d4 ; STRING getter=0x3539d4 Instant Hit
3373b6  48 8b c8                       mov    rcx,rax
3373b9  e8 76 6a f9 ff                 call   0x2cde34
3373be  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3373c3  48 8d 15 ee 0b 0a 00           lea    rdx,[rip+0xa0bee]        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
3373ca  45 33 c9                       xor    r9d,r9d
3373cd  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3373d2  45 33 c0                       xor    r8d,r8d
3373d5  48 8b c8                       mov    rcx,rax
3373d8  e8 37 5d 08 00                 call   0x3bd114
3373dd  8b 05 05 5d 0c 00              mov    eax,DWORD PTR [rip+0xc5d05]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3373e3  3b c6                          cmp    eax,esi
3373e5  75 0e                          jne    0x3373f5
3373e7  48 8d 0d d2 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ffd2]        # 0x2973c0
3373ee  e8 11 dc 02 00                 call   0x365004
3373f3  eb 25                          jmp    0x33741a
3373f5  3b c7                          cmp    eax,edi
3373f7  75 09                          jne    0x337402
3373f9  48 8d 0d e8 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ffe8]        # 0x2973e8
337400  eb ec                          jmp    0x3373ee
337402  48 8d 55 a0                    lea    rdx,[rbp-0x60]
337406  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33740d  e8 26 cb 01 00                 call   0x353f38 ; STRING getter=0x353f38 Expands helicopter hitbox
337412  48 8b c8                       mov    rcx,rax
337415  e8 ba 34 ff ff                 call   0x32a8d4
33741a  48 8b d8                       mov    rbx,rax
33741d  8b 05 c5 5c 0c 00              mov    eax,DWORD PTR [rip+0xc5cc5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337423  3b c6                          cmp    eax,esi
337425  75 09                          jne    0x337430
337427  48 8d 0d ca ff f5 ff           lea    rcx,[rip+0xfffffffffff5ffca]        # 0x2973f8
33742e  eb 0b                          jmp    0x33743b
337430  3b c7                          cmp    eax,edi
337432  75 0e                          jne    0x337442
337434  48 8d 0d dd ff f5 ff           lea    rcx,[rip+0xfffffffffff5ffdd]        # 0x297418
33743b  e8 c4 db 02 00                 call   0x365004
337440  eb 19                          jmp    0x33745b
337442  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
337447  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33744e  e8 11 c9 01 00                 call   0x353d64 ; STRING getter=0x353d64 Heli Magic
337453  48 8b c8                       mov    rcx,rax
337456  e8 f9 27 fb ff                 call   0x2e9c54
33745b  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
337460  48 8d 15 41 c7 0b 00           lea    rdx,[rip+0xbc741]        # 0x3f3ba8 ; CONFIG Bools.HeliMagic value(+0x48)
337467  45 33 c9                       xor    r9d,r9d
33746a  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33746f  45 33 c0                       xor    r8d,r8d
337472  48 8b c8                       mov    rcx,rax
337475  e8 9a 5c 08 00                 call   0x3bd114
33747a  8b ce                          mov    ecx,esi
33747c  e8 8b 14 06 00                 call   0x39890c
337481  8b 05 61 5c 0c 00              mov    eax,DWORD PTR [rip+0xc5c61]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337487  3b c6                          cmp    eax,esi
337489  75 0e                          jne    0x337499
33748b  48 8d 0d 96 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff96]        # 0x297428
337492  e8 6d db 02 00                 call   0x365004
337497  eb 25                          jmp    0x3374be
337499  3b c7                          cmp    eax,edi
33749b  75 09                          jne    0x3374a6
33749d  48 8d 0d ac ff f5 ff           lea    rcx,[rip+0xfffffffffff5ffac]        # 0x297450
3374a4  eb ec                          jmp    0x337492
3374a6  48 8d 55 a0                    lea    rdx,[rbp-0x60]
3374aa  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3374b1  e8 fe cd 01 00                 call   0x3542b4 ; STRING getter=0x3542b4 Freeze player during desync
3374b6  48 8b c8                       mov    rcx,rax
3374b9  e8 c6 90 fe ff                 call   0x320584
3374be  48 8b d8                       mov    rbx,rax
3374c1  8b 05 21 5c 0c 00              mov    eax,DWORD PTR [rip+0xc5c21]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3374c7  3b c6                          cmp    eax,esi
3374c9  75 09                          jne    0x3374d4
3374cb  48 8d 0d 8e ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff8e]        # 0x297460
3374d2  eb 0b                          jmp    0x3374df
3374d4  3b c7                          cmp    eax,edi
3374d6  75 0e                          jne    0x3374e6
3374d8  48 8d 0d a9 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ffa9]        # 0x297488
3374df  e8 20 db 02 00                 call   0x365004
3374e4  eb 19                          jmp    0x3374ff
3374e6  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3374eb  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3374f2  e8 fd cb 01 00                 call   0x3540f4 ; STRING getter=0x3540f4 Desync On Keypress
3374f7  48 8b c8                       mov    rcx,rax
3374fa  e8 95 68 f9 ff                 call   0x2cdd94
3374ff  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
337504  48 8d 15 cd 30 0b 00           lea    rdx,[rip+0xb30cd]        # 0x3ea5d8 ; CONFIG Bools.desyncnotvisible value(+0x48)
33750b  45 33 c9                       xor    r9d,r9d
33750e  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
337513  45 33 c0                       xor    r8d,r8d
337516  48 8b c8                       mov    rcx,rax
337519  e8 f6 5b 08 00                 call   0x3bd114
33751e  8b 05 c4 5b 0c 00              mov    eax,DWORD PTR [rip+0xc5bc4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337524  3b c6                          cmp    eax,esi
337526  75 0e                          jne    0x337536
337528  48 8d 0d 69 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff69]        # 0x297498
33752f  e8 d0 da 02 00                 call   0x365004
337534  eb 26                          jmp    0x33755c
337536  3b c7                          cmp    eax,edi
337538  75 09                          jne    0x337543
33753a  48 8d 0d 7f ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff7f]        # 0x2974c0
337541  eb ec                          jmp    0x33752f
337543  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
337548  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33754f  e8 6c d1 01 00                 call   0x3546c0 ; STRING getter=0x3546c0 Override hit bone
337554  48 8b c8                       mov    rcx,rax
337557  e8 80 26 fb ff                 call   0x2e9bdc
33755c  48 8b d8                       mov    rbx,rax
33755f  8b 05 83 5b 0c 00              mov    eax,DWORD PTR [rip+0xc5b83]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337565  3b c6                          cmp    eax,esi
337567  75 09                          jne    0x337572
337569  48 8d 0d 60 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff60]        # 0x2974d0
337570  eb 0b                          jmp    0x33757d
337572  3b c7                          cmp    eax,edi
337574  75 0e                          jne    0x337584
337576  48 8d 0d 73 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff73]        # 0x2974f0
33757d  e8 82 da 02 00                 call   0x365004
337582  eb 19                          jmp    0x33759d
337584  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
337589  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337590  e8 6f cf 01 00                 call   0x354504 ; STRING getter=0x354504 Bone Override
337595  48 8b c8                       mov    rcx,rax
337598  e8 eb 5b fa ff                 call   0x2dd188
33759d  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3375a2  48 8d 15 ef 03 0c 00           lea    rdx,[rip+0xc03ef]        # 0x3f7998 ; CONFIG Bools.HitOverride value(+0x48)
3375a9  45 33 c9                       xor    r9d,r9d
3375ac  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3375b1  45 33 c0                       xor    r8d,r8d
3375b4  48 8b c8                       mov    rcx,rax
3375b7  e8 58 5b 08 00                 call   0x3bd114
3375bc  8b 05 26 5b 0c 00              mov    eax,DWORD PTR [rip+0xc5b26]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3375c2  3b c6                          cmp    eax,esi
3375c4  75 0e                          jne    0x3375d4
3375c6  48 8d 0d 33 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff33]        # 0x297500
3375cd  e8 32 da 02 00                 call   0x365004
3375d2  eb 26                          jmp    0x3375fa
3375d4  3b c7                          cmp    eax,edi
3375d6  75 09                          jne    0x3375e1
3375d8  48 8d 0d 41 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff41]        # 0x297520
3375df  eb ec                          jmp    0x3375cd
3375e1  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
3375e6  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3375ed  e8 02 d5 01 00                 call   0x354af4 ; STRING getter=0x354af4 Hit weak spots
3375f2  48 8b c8                       mov    rcx,rax
3375f5  e8 72 10 fa ff                 call   0x2d866c
3375fa  48 8b d8                       mov    rbx,rax
3375fd  8b 05 e5 5a 0c 00              mov    eax,DWORD PTR [rip+0xc5ae5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337603  3b c6                          cmp    eax,esi
337605  75 09                          jne    0x337610
337607  48 8d 0d 22 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff22]        # 0x297530
33760e  eb 0b                          jmp    0x33761b
337610  3b c7                          cmp    eax,edi
337612  75 0e                          jne    0x337622
337614  48 8d 0d 35 ff f5 ff           lea    rcx,[rip+0xfffffffffff5ff35]        # 0x297550
33761b  e8 e4 d9 02 00                 call   0x365004
337620  eb 19                          jmp    0x33763b
337622  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
337627  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33762e  e8 c5 d2 01 00                 call   0x3548f8 ; STRING getter=0x3548f8 Heli Rotor Override
337633  48 8b c8                       mov    rcx,rax
337636  e8 59 8e fe ff                 call   0x320494
33763b  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
337640  48 8d 15 01 03 0c 00           lea    rdx,[rip+0xc0301]        # 0x3f7948 ; CONFIG Bools.helihitover value(+0x48)
337647  45 33 c9                       xor    r9d,r9d
33764a  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
33764f  45 33 c0                       xor    r8d,r8d
337652  48 8b c8                       mov    rcx,rax
337655  e8 ba 5a 08 00                 call   0x3bd114
33765a  e8 ed fb 04 00                 call   0x38724c
33765f  f3 0f 10 0d f9 bb f5 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff5bbf9]        # 0x293260 ; f32=-1
337667  0f 57 c0                       xorps  xmm0,xmm0
33766a  e8 95 35 06 00                 call   0x39ac04
33766f  f3 0f 10 15 e9 bb f5 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff5bbe9]        # 0x293260 ; f32=-1
337677  48 8d 8d f8 00 00 00           lea    rcx,[rbp+0xf8]
33767e  0f 57 c9                       xorps  xmm1,xmm1
337681  e8 ba 4c f9 ff                 call   0x2cc340
337686  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
33768a  8b 05 58 5a 0c 00              mov    eax,DWORD PTR [rip+0xc5a58]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337690  3b c6                          cmp    eax,esi
337692  75 0e                          jne    0x3376a2
337694  48 8d 0d c5 fe f5 ff           lea    rcx,[rip+0xfffffffffff5fec5]        # 0x297560
33769b  e8 64 d9 02 00                 call   0x365004
3376a0  eb 26                          jmp    0x3376c8
3376a2  3b c7                          cmp    eax,edi
3376a4  75 09                          jne    0x3376af
3376a6  48 8d 0d e3 fe f5 ff           lea    rcx,[rip+0xfffffffffff5fee3]        # 0x297590
3376ad  eb ec                          jmp    0x33769b
3376af  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
3376b4  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3376bb  e8 44 db 01 00                 call   0x355204 ; STRING getter=0x355204 Exploits Modifications
3376c0  48 8b c8                       mov    rcx,rax
3376c3  e8 d4 ad ff ff                 call   0x33249c
3376c8  48 8d 95 f0 00 00 00           lea    rdx,[rbp+0xf0]
3376cf  48 8b d8                       mov    rbx,rax
3376d2  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3376d9  e8 e6 db 00 00                 call   0x3452c4 ; STRING getter=0x3452c4 D
3376de  48 8b c8                       mov    rcx,rax
3376e1  e8 7e 0d fa ff                 call   0x2d8464
3376e6  48 8b d0                       mov    rdx,rax
3376e9  48 8d 4d a0                    lea    rcx,[rbp-0x60]
3376ed  e8 da 4b f9 ff                 call   0x2cc2cc
3376f2  48 8b c8                       mov    rcx,rax
3376f5  44 8a ce                       mov    r9b,sil
3376f8  66 49 0f 7e f0                 movq   r8,xmm6
3376fd  48 8b d3                       mov    rdx,rbx
337700  e8 eb d6 04 00                 call   0x384df0
337705  44 38 35 bc 07 0a 00           cmp    BYTE PTR [rip+0xa07bc],r14b        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
33770c  41 bf 06 00 00 00              mov    r15d,0x6
337712  0f 84 c6 04 00 00              je     0x337bde
337718  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33771f  e8 80 3c f9 ff                 call   0x2cb3a4
337724  8b 0d be 59 0c 00              mov    ecx,DWORD PTR [rip+0xc59be]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33772a  48 8b d8                       mov    rbx,rax
33772d  3b ce                          cmp    ecx,esi
33772f  75 09                          jne    0x33773a
337731  48 8d 0d 80 f0 f5 ff           lea    rcx,[rip+0xfffffffffff5f080]        # 0x2967b8
337738  eb 0b                          jmp    0x337745
33773a  3b cf                          cmp    ecx,edi
33773c  75 0e                          jne    0x33774c
33773e  48 8d 0d 87 f1 f5 ff           lea    rcx,[rip+0xfffffffffff5f187]        # 0x2968cc
337745  e8 ba d8 02 00                 call   0x365004
33774a  eb 1b                          jmp    0x337767
33774c  48 8d 95 f8 00 00 00           lea    rdx,[rbp+0xf8]
337753  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
33775a  e8 ed df 01 00                 call   0x35574c ; STRING getter=0x35574c Head
33775f  48 8b c8                       mov    rcx,rax
337762  e8 65 65 f9 ff                 call   0x2cdccc
337767  48 8b d0                       mov    rdx,rax
33776a  48 8d 4d d0                    lea    rcx,[rbp-0x30]
33776e  e8 59 4b f9 ff                 call   0x2cc2cc
337773  8b 05 6f 59 0c 00              mov    eax,DWORD PTR [rip+0xc596f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337779  3b c6                          cmp    eax,esi
33777b  75 09                          jne    0x337786
33777d  48 8d 0d 1c fe f5 ff           lea    rcx,[rip+0xfffffffffff5fe1c]        # 0x2975a0
337784  eb 0b                          jmp    0x337791
337786  3b c7                          cmp    eax,edi
337788  75 0e                          jne    0x337798
33778a  48 8d 0d 1b fe f5 ff           lea    rcx,[rip+0xfffffffffff5fe1b]        # 0x2975ac
337791  e8 6e d8 02 00                 call   0x365004
337796  eb 19                          jmp    0x3377b1
337798  48 8d 54 24 53                 lea    rdx,[rsp+0x53]
33779d  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
3377a4  e8 13 e1 01 00                 call   0x3558bc ; STRING getter=0x3558bc Chest
3377a9  48 8b c8                       mov    rcx,rax
3377ac  e8 2b 0d fa ff                 call   0x2d84dc
3377b1  48 8b d0                       mov    rdx,rax
3377b4  48 8d 4d f0                    lea    rcx,[rbp-0x10]
3377b8  e8 0f 4b f9 ff                 call   0x2cc2cc
3377bd  8b 05 25 59 0c 00              mov    eax,DWORD PTR [rip+0xc5925]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3377c3  3b c6                          cmp    eax,esi
3377c5  75 09                          jne    0x3377d0
3377c7  48 8d 0d ea fd f5 ff           lea    rcx,[rip+0xfffffffffff5fdea]        # 0x2975b8
3377ce  eb 0b                          jmp    0x3377db
3377d0  3b c7                          cmp    eax,edi
3377d2  75 0e                          jne    0x3377e2
3377d4  48 8d 0d e9 fd f5 ff           lea    rcx,[rip+0xfffffffffff5fde9]        # 0x2975c4
3377db  e8 24 d8 02 00                 call   0x365004
3377e0  eb 18                          jmp    0x3377fa
3377e2  48 8d 55 90                    lea    rdx,[rbp-0x70]
3377e6  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
3377ed  e8 92 e2 01 00                 call   0x355a84 ; STRING getter=0x355a84 Hand
3377f2  48 8b c8                       mov    rcx,rax
3377f5  e8 d2 64 f9 ff                 call   0x2cdccc
3377fa  48 8b d0                       mov    rdx,rax
3377fd  48 8d 4d 10                    lea    rcx,[rbp+0x10]
337801  e8 c6 4a f9 ff                 call   0x2cc2cc
337806  8b 05 dc 58 0c 00              mov    eax,DWORD PTR [rip+0xc58dc]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33780c  3b c6                          cmp    eax,esi
33780e  75 09                          jne    0x337819
337810  48 8d 0d b9 fd f5 ff           lea    rcx,[rip+0xfffffffffff5fdb9]        # 0x2975d0
337817  eb 0b                          jmp    0x337824
337819  3b c7                          cmp    eax,edi
33781b  75 0e                          jne    0x33782b
33781d  48 8d 0d b8 fd f5 ff           lea    rcx,[rip+0xfffffffffff5fdb8]        # 0x2975dc
337824  e8 db d7 02 00                 call   0x365004
337829  eb 18                          jmp    0x337843
33782b  48 8d 55 96                    lea    rdx,[rbp-0x6a]
33782f  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337836  e8 e9 e3 01 00                 call   0x355c24 ; STRING getter=0x355c24 Foot
33783b  48 8b c8                       mov    rcx,rax
33783e  e8 89 64 f9 ff                 call   0x2cdccc
337843  48 8b d0                       mov    rdx,rax
337846  48 8d 4d 30                    lea    rcx,[rbp+0x30]
33784a  e8 7d 4a f9 ff                 call   0x2cc2cc
33784f  8b 05 93 58 0c 00              mov    eax,DWORD PTR [rip+0xc5893]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337855  3b c6                          cmp    eax,esi
337857  75 09                          jne    0x337862
337859  48 8d 0d 88 fd f5 ff           lea    rcx,[rip+0xfffffffffff5fd88]        # 0x2975e8
337860  eb 0b                          jmp    0x33786d
337862  3b c7                          cmp    eax,edi
337864  75 0e                          jne    0x337874
337866  48 8d 0d 8f fd f5 ff           lea    rcx,[rip+0xfffffffffff5fd8f]        # 0x2975fc
33786d  e8 92 d7 02 00                 call   0x365004
337872  eb 19                          jmp    0x33788d
337874  48 8d 54 24 4c                 lea    rdx,[rsp+0x4c]
337879  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337880  e8 a7 e5 01 00                 call   0x355e2c ; STRING getter=0x355e2c Rand
337885  48 8b c8                       mov    rcx,rax
337888  e8 3f 64 f9 ff                 call   0x2cdccc
33788d  48 8b d0                       mov    rdx,rax
337890  48 8d 4d 50                    lea    rcx,[rbp+0x50]
337894  e8 33 4a f9 ff                 call   0x2cc2cc
337899  8b 05 49 58 0c 00              mov    eax,DWORD PTR [rip+0xc5849]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33789f  3b c6                          cmp    eax,esi
3378a1  75 09                          jne    0x3378ac
3378a3  48 8d 0d 5e fd f5 ff           lea    rcx,[rip+0xfffffffffff5fd5e]        # 0x297608
3378aa  eb 0b                          jmp    0x3378b7
3378ac  3b c7                          cmp    eax,edi
3378ae  75 0e                          jne    0x3378be
3378b0  48 8d 0d 79 fd f5 ff           lea    rcx,[rip+0xfffffffffff5fd79]        # 0x297630
3378b7  e8 48 d7 02 00                 call   0x365004
3378bc  eb 19                          jmp    0x3378d7
3378be  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3378c3  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
3378ca  e8 dd e6 01 00                 call   0x355fac ; STRING getter=0x355fac Rand NoHead
3378cf  48 8b c8                       mov    rcx,rax
3378d2  e8 5d 65 f9 ff                 call   0x2cde34
3378d7  48 8b d0                       mov    rdx,rax
3378da  48 8d 4d 70                    lea    rcx,[rbp+0x70]
3378de  e8 e9 49 f9 ff                 call   0x2cc2cc
3378e3  4c 8d 85 90 00 00 00           lea    r8,[rbp+0x90]
3378ea  48 8d 55 d0                    lea    rdx,[rbp-0x30]
3378ee  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
3378f3  e8 74 4b f9 ff                 call   0x2cc46c
3378f8  4c 8b c3                       mov    r8,rbx
3378fb  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
337900  48 8d 4d a0                    lea    rcx,[rbp-0x60]
337904  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
337907  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
33790d  e8 26 eb ff ff                 call   0x336438
337912  8b 0d d0 57 0c 00              mov    ecx,DWORD PTR [rip+0xc57d0]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337918  48 8b d8                       mov    rbx,rax
33791b  3b ce                          cmp    ecx,esi
33791d  75 09                          jne    0x337928
33791f  48 8d 0d 1a fd f5 ff           lea    rcx,[rip+0xfffffffffff5fd1a]        # 0x297640
337926  eb 0b                          jmp    0x337933
337928  3b cf                          cmp    ecx,edi
33792a  75 0e                          jne    0x33793a
33792c  48 8d 0d 2d fd f5 ff           lea    rcx,[rip+0xfffffffffff5fd2d]        # 0x297660
337933  e8 cc d6 02 00                 call   0x365004
337938  eb 19                          jmp    0x337953
33793a  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
33793f  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337946  e8 11 dc 01 00                 call   0x35555c ; STRING getter=0x35555c Pierce Hitbone
33794b  48 8b c8                       mov    rcx,rax
33794e  e8 19 0d fa ff                 call   0x2d866c
337953  4c 8b c3                       mov    r8,rbx
337956  48 8d 15 1b 1c 0c 00           lea    rdx,[rip+0xc1c1b]        # 0x3f9578 ; CONFIG i.BoneIndex2 value(+0x48)
33795d  48 8b c8                       mov    rcx,rax
337960  e8 a3 76 08 00                 call   0x3bf008
337965  4c 8d 0d 88 4b f9 ff           lea    r9,[rip+0xfffffffffff94b88]        # 0x2cc4f4
33796c  4d 8b c7                       mov    r8,r15
33796f  49 8b d5                       mov    rdx,r13
337972  48 8d 4d d0                    lea    rcx,[rbp-0x30]
337976  e8 4d 41 fa ff                 call   0x2dbac8
33797b  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337982  e8 1d 3a f9 ff                 call   0x2cb3a4
337987  8b 0d 5b 57 0c 00              mov    ecx,DWORD PTR [rip+0xc575b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
33798d  48 8b d8                       mov    rbx,rax
337990  3b ce                          cmp    ecx,esi
337992  75 09                          jne    0x33799d
337994  48 8d 0d d5 fc f5 ff           lea    rcx,[rip+0xfffffffffff5fcd5]        # 0x297670
33799b  eb 0b                          jmp    0x3379a8
33799d  3b cf                          cmp    ecx,edi
33799f  75 0e                          jne    0x3379af
3379a1  48 8d 0d e0 fc f5 ff           lea    rcx,[rip+0xfffffffffff5fce0]        # 0x297688
3379a8  e8 57 d6 02 00                 call   0x365004
3379ad  eb 19                          jmp    0x3379c8
3379af  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3379b4  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
3379bb  e8 0c 82 fa ff                 call   0x2dfbcc
3379c0  48 8b c8                       mov    rcx,rax
3379c3  e8 4c bc fa ff                 call   0x2e3614
3379c8  48 8b d0                       mov    rdx,rax
3379cb  48 8d 4d d0                    lea    rcx,[rbp-0x30]
3379cf  e8 f8 48 f9 ff                 call   0x2cc2cc
3379d4  8b 05 0e 57 0c 00              mov    eax,DWORD PTR [rip+0xc570e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3379da  3b c6                          cmp    eax,esi
3379dc  75 09                          jne    0x3379e7
3379de  48 8d 0d ab fc f5 ff           lea    rcx,[rip+0xfffffffffff5fcab]        # 0x297690
3379e5  eb 0b                          jmp    0x3379f2
3379e7  3b c7                          cmp    eax,edi
3379e9  75 0e                          jne    0x3379f9
3379eb  48 8d 0d ae fc f5 ff           lea    rcx,[rip+0xfffffffffff5fcae]        # 0x2976a0
3379f2  e8 0d d6 02 00                 call   0x365004
3379f7  eb 19                          jmp    0x337a12
3379f9  48 8d 54 24 53                 lea    rdx,[rsp+0x53]
3379fe  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337a05  e8 56 ee 01 00                 call   0x356860 ; STRING getter=0x356860 Glass
337a0a  48 8b c8                       mov    rcx,rax
337a0d  e8 ca 0a fa ff                 call   0x2d84dc
337a12  48 8b d0                       mov    rdx,rax
337a15  48 8d 4d f0                    lea    rcx,[rbp-0x10]
337a19  e8 ae 48 f9 ff                 call   0x2cc2cc
337a1e  8b 05 c4 56 0c 00              mov    eax,DWORD PTR [rip+0xc56c4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337a24  3b c6                          cmp    eax,esi
337a26  75 09                          jne    0x337a31
337a28  48 8d 0d 79 fc f5 ff           lea    rcx,[rip+0xfffffffffff5fc79]        # 0x2976a8
337a2f  eb 0b                          jmp    0x337a3c
337a31  3b c7                          cmp    eax,edi
337a33  75 0e                          jne    0x337a43
337a35  48 8d 0d 7c fc f5 ff           lea    rcx,[rip+0xfffffffffff5fc7c]        # 0x2976b8
337a3c  e8 c3 d5 02 00                 call   0x365004
337a41  eb 18                          jmp    0x337a5b
337a43  48 8d 55 96                    lea    rdx,[rbp-0x6a]
337a47  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337a4e  e8 61 ef 01 00                 call   0x3569b4 ; STRING getter=0x3569b4 Metal
337a53  48 8b c8                       mov    rcx,rax
337a56  e8 81 0a fa ff                 call   0x2d84dc
337a5b  48 8b d0                       mov    rdx,rax
337a5e  48 8d 4d 10                    lea    rcx,[rbp+0x10]
337a62  e8 65 48 f9 ff                 call   0x2cc2cc
337a67  8b 05 7b 56 0c 00              mov    eax,DWORD PTR [rip+0xc567b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337a6d  3b c6                          cmp    eax,esi
337a6f  75 09                          jne    0x337a7a
337a71  48 8d 0d 48 fc f5 ff           lea    rcx,[rip+0xfffffffffff5fc48]        # 0x2976c0
337a78  eb 0b                          jmp    0x337a85
337a7a  3b c7                          cmp    eax,edi
337a7c  75 0e                          jne    0x337a8c
337a7e  48 8d 0d 4b fc f5 ff           lea    rcx,[rip+0xfffffffffff5fc4b]        # 0x2976d0
337a85  e8 7a d5 02 00                 call   0x365004
337a8a  eb 1b                          jmp    0x337aa7
337a8c  48 8d 95 f8 00 00 00           lea    rdx,[rbp+0xf8]
337a93  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337a9a  e8 75 f0 01 00                 call   0x356b14 ; STRING getter=0x356b14 Wood
337a9f  48 8b c8                       mov    rcx,rax
337aa2  e8 25 62 f9 ff                 call   0x2cdccc
337aa7  48 8b d0                       mov    rdx,rax
337aaa  48 8d 4d 30                    lea    rcx,[rbp+0x30]
337aae  e8 19 48 f9 ff                 call   0x2cc2cc
337ab3  8b 05 2f 56 0c 00              mov    eax,DWORD PTR [rip+0xc562f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337ab9  3b c6                          cmp    eax,esi
337abb  75 09                          jne    0x337ac6
337abd  48 8d 0d 14 fc f5 ff           lea    rcx,[rip+0xfffffffffff5fc14]        # 0x2976d8
337ac4  eb 0b                          jmp    0x337ad1
337ac6  3b c7                          cmp    eax,edi
337ac8  75 0e                          jne    0x337ad8
337aca  48 8d 0d 13 fc f5 ff           lea    rcx,[rip+0xfffffffffff5fc13]        # 0x2976e4
337ad1  e8 2e d5 02 00                 call   0x365004
337ad6  eb 18                          jmp    0x337af0
337ad8  48 8d 55 90                    lea    rdx,[rbp-0x70]
337adc  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337ae3  e8 a4 f1 01 00                 call   0x356c8c ; STRING getter=0x356c8c Flesh
337ae8  48 8b c8                       mov    rcx,rax
337aeb  e8 ec 09 fa ff                 call   0x2d84dc
337af0  48 8b d0                       mov    rdx,rax
337af3  48 8d 4d 50                    lea    rcx,[rbp+0x50]
337af7  e8 d0 47 f9 ff                 call   0x2cc2cc
337afc  8b 05 e6 55 0c 00              mov    eax,DWORD PTR [rip+0xc55e6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337b02  3b c6                          cmp    eax,esi
337b04  75 09                          jne    0x337b0f
337b06  48 8d 0d e3 fb f5 ff           lea    rcx,[rip+0xfffffffffff5fbe3]        # 0x2976f0
337b0d  eb 0b                          jmp    0x337b1a
337b0f  3b c7                          cmp    eax,edi
337b11  75 0e                          jne    0x337b21
337b13  48 8d 0d e2 fb f5 ff           lea    rcx,[rip+0xfffffffffff5fbe2]        # 0x2976fc
337b1a  e8 e5 d4 02 00                 call   0x365004
337b1f  eb 19                          jmp    0x337b3a
337b21  48 8d 54 24 4c                 lea    rdx,[rsp+0x4c]
337b26  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337b2d  e8 ee f2 01 00                 call   0x356e20 ; STRING getter=0x356e20 Snow
337b32  48 8b c8                       mov    rcx,rax
337b35  e8 92 61 f9 ff                 call   0x2cdccc
337b3a  48 8b d0                       mov    rdx,rax
337b3d  48 8d 4d 70                    lea    rcx,[rbp+0x70]
337b41  e8 86 47 f9 ff                 call   0x2cc2cc
337b46  4c 8d 85 90 00 00 00           lea    r8,[rbp+0x90]
337b4d  48 8d 55 d0                    lea    rdx,[rbp-0x30]
337b51  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
337b56  e8 11 49 f9 ff                 call   0x2cc46c
337b5b  4c 8b c3                       mov    r8,rbx
337b5e  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
337b63  48 8d 4d a0                    lea    rcx,[rbp-0x60]
337b67  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
337b6a  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
337b70  e8 c3 e8 ff ff                 call   0x336438
337b75  8b 0d 6d 55 0c 00              mov    ecx,DWORD PTR [rip+0xc556d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337b7b  48 8b d8                       mov    rbx,rax
337b7e  3b ce                          cmp    ecx,esi
337b80  75 09                          jne    0x337b8b
337b82  48 8d 0d 77 fb f5 ff           lea    rcx,[rip+0xfffffffffff5fb77]        # 0x297700
337b89  eb 0b                          jmp    0x337b96
337b8b  3b cf                          cmp    ecx,edi
337b8d  75 0e                          jne    0x337b9d
337b8f  48 8d 0d 92 fb f5 ff           lea    rcx,[rip+0xfffffffffff5fb92]        # 0x297728
337b96  e8 69 d4 02 00                 call   0x365004
337b9b  eb 19                          jmp    0x337bb6
337b9d  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
337ba2  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337ba9  e8 8a e6 01 00                 call   0x356238 ; STRING getter=0x356238 Hit Material
337bae  48 8b c8                       mov    rcx,rax
337bb1  e8 3e 0a fa ff                 call   0x2d85f4
337bb6  4c 8b c3                       mov    r8,rbx
337bb9  48 8d 15 08 1a 0c 00           lea    rdx,[rip+0xc1a08]        # 0x3f95c8 ; CONFIG i.CurrentProjectileMaterial value(+0x48)
337bc0  48 8b c8                       mov    rcx,rax
337bc3  e8 40 74 08 00                 call   0x3bf008
337bc8  4c 8d 0d 25 49 f9 ff           lea    r9,[rip+0xfffffffffff94925]        # 0x2cc4f4
337bcf  4d 8b c7                       mov    r8,r15
337bd2  49 8b d5                       mov    rdx,r13
337bd5  48 8d 4d d0                    lea    rcx,[rbp-0x30]
337bd9  e8 ea 3e fa ff                 call   0x2dbac8
337bde  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337be5  e8 ba 37 f9 ff                 call   0x2cb3a4
337bea  8b 15 f8 54 0c 00              mov    edx,DWORD PTR [rip+0xc54f8]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337bf0  48 8b d8                       mov    rbx,rax
337bf3  3b d6                          cmp    edx,esi
337bf5  75 09                          jne    0x337c00
337bf7  48 8d 0d ba eb f5 ff           lea    rcx,[rip+0xfffffffffff5ebba]        # 0x2967b8
337bfe  eb 0b                          jmp    0x337c0b
337c00  3b d7                          cmp    edx,edi
337c02  75 0e                          jne    0x337c12
337c04  48 8d 0d c1 ec f5 ff           lea    rcx,[rip+0xfffffffffff5ecc1]        # 0x2968cc
337c0b  e8 f4 d3 02 00                 call   0x365004
337c10  eb 1b                          jmp    0x337c2d
337c12  48 8d 95 f8 00 00 00           lea    rdx,[rbp+0xf8]
337c19  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
337c20  e8 f7 f4 01 00                 call   0x35711c ; STRING getter=0x35711c Head
337c25  48 8b c8                       mov    rcx,rax
337c28  e8 9f 60 f9 ff                 call   0x2cdccc
337c2d  48 8b d0                       mov    rdx,rax
337c30  48 8d 4d d0                    lea    rcx,[rbp-0x30]
337c34  e8 93 46 f9 ff                 call   0x2cc2cc
337c39  8b 05 a9 54 0c 00              mov    eax,DWORD PTR [rip+0xc54a9]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337c3f  3b c6                          cmp    eax,esi
337c41  75 09                          jne    0x337c4c
337c43  48 8d 0d 56 f9 f5 ff           lea    rcx,[rip+0xfffffffffff5f956]        # 0x2975a0
337c4a  eb 0b                          jmp    0x337c57
337c4c  3b c7                          cmp    eax,edi
337c4e  75 0e                          jne    0x337c5e
337c50  48 8d 0d 55 f9 f5 ff           lea    rcx,[rip+0xfffffffffff5f955]        # 0x2975ac
337c57  e8 a8 d3 02 00                 call   0x365004
337c5c  eb 19                          jmp    0x337c77
337c5e  48 8d 54 24 53                 lea    rdx,[rsp+0x53]
337c63  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337c6a  e8 15 f6 01 00                 call   0x357284 ; STRING getter=0x357284 Chest
337c6f  48 8b c8                       mov    rcx,rax
337c72  e8 65 08 fa ff                 call   0x2d84dc
337c77  48 8b d0                       mov    rdx,rax
337c7a  48 8d 4d f0                    lea    rcx,[rbp-0x10]
337c7e  e8 49 46 f9 ff                 call   0x2cc2cc
337c83  8b 05 5f 54 0c 00              mov    eax,DWORD PTR [rip+0xc545f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337c89  3b c6                          cmp    eax,esi
337c8b  75 09                          jne    0x337c96
337c8d  48 8d 0d 24 f9 f5 ff           lea    rcx,[rip+0xfffffffffff5f924]        # 0x2975b8
337c94  eb 0b                          jmp    0x337ca1
337c96  3b c7                          cmp    eax,edi
337c98  75 0e                          jne    0x337ca8
337c9a  48 8d 0d 23 f9 f5 ff           lea    rcx,[rip+0xfffffffffff5f923]        # 0x2975c4
337ca1  e8 5e d3 02 00                 call   0x365004
337ca6  eb 19                          jmp    0x337cc1
337ca8  48 8d 54 24 4c                 lea    rdx,[rsp+0x4c]
337cad  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337cb4  e8 5b f7 01 00                 call   0x357414 ; STRING getter=0x357414 Hand
337cb9  48 8b c8                       mov    rcx,rax
337cbc  e8 0b 60 f9 ff                 call   0x2cdccc
337cc1  48 8b d0                       mov    rdx,rax
337cc4  48 8d 4d 10                    lea    rcx,[rbp+0x10]
337cc8  e8 ff 45 f9 ff                 call   0x2cc2cc
337ccd  8b 05 15 54 0c 00              mov    eax,DWORD PTR [rip+0xc5415]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337cd3  3b c6                          cmp    eax,esi
337cd5  75 09                          jne    0x337ce0
337cd7  48 8d 0d f2 f8 f5 ff           lea    rcx,[rip+0xfffffffffff5f8f2]        # 0x2975d0
337cde  eb 0b                          jmp    0x337ceb
337ce0  3b c7                          cmp    eax,edi
337ce2  75 0e                          jne    0x337cf2
337ce4  48 8d 0d f1 f8 f5 ff           lea    rcx,[rip+0xfffffffffff5f8f1]        # 0x2975dc
337ceb  e8 14 d3 02 00                 call   0x365004
337cf0  eb 18                          jmp    0x337d0a
337cf2  48 8d 55 96                    lea    rdx,[rbp-0x6a]
337cf6  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337cfd  e8 0a fa 01 00                 call   0x35770c ; STRING getter=0x35770c Foot
337d02  48 8b c8                       mov    rcx,rax
337d05  e8 c2 5f f9 ff                 call   0x2cdccc
337d0a  48 8b d0                       mov    rdx,rax
337d0d  48 8d 4d 30                    lea    rcx,[rbp+0x30]
337d11  e8 b6 45 f9 ff                 call   0x2cc2cc
337d16  8b 05 cc 53 0c 00              mov    eax,DWORD PTR [rip+0xc53cc]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337d1c  3b c6                          cmp    eax,esi
337d1e  75 09                          jne    0x337d29
337d20  48 8d 0d c1 f8 f5 ff           lea    rcx,[rip+0xfffffffffff5f8c1]        # 0x2975e8
337d27  eb 0b                          jmp    0x337d34
337d29  3b c7                          cmp    eax,edi
337d2b  75 0e                          jne    0x337d3b
337d2d  48 8d 0d c8 f8 f5 ff           lea    rcx,[rip+0xfffffffffff5f8c8]        # 0x2975fc
337d34  e8 cb d2 02 00                 call   0x365004
337d39  eb 18                          jmp    0x337d53
337d3b  48 8d 55 90                    lea    rdx,[rbp-0x70]
337d3f  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337d46  e8 e1 fa 01 00                 call   0x35782c ; STRING getter=0x35782c Rand
337d4b  48 8b c8                       mov    rcx,rax
337d4e  e8 79 5f f9 ff                 call   0x2cdccc
337d53  48 8b d0                       mov    rdx,rax
337d56  48 8d 4d 50                    lea    rcx,[rbp+0x50]
337d5a  e8 6d 45 f9 ff                 call   0x2cc2cc
337d5f  8b 05 83 53 0c 00              mov    eax,DWORD PTR [rip+0xc5383]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337d65  3b c6                          cmp    eax,esi
337d67  75 09                          jne    0x337d72
337d69  48 8d 0d 98 f8 f5 ff           lea    rcx,[rip+0xfffffffffff5f898]        # 0x297608
337d70  eb 0b                          jmp    0x337d7d
337d72  3b c7                          cmp    eax,edi
337d74  75 0e                          jne    0x337d84
337d76  48 8d 0d b3 f8 f5 ff           lea    rcx,[rip+0xfffffffffff5f8b3]        # 0x297630
337d7d  e8 82 d2 02 00                 call   0x365004
337d82  eb 19                          jmp    0x337d9d
337d84  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
337d89  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337d90  e8 a3 fb 01 00                 call   0x357938 ; STRING getter=0x357938 Rand NoHead
337d95  48 8b c8                       mov    rcx,rax
337d98  e8 97 60 f9 ff                 call   0x2cde34
337d9d  48 8b d0                       mov    rdx,rax
337da0  48 8d 4d 70                    lea    rcx,[rbp+0x70]
337da4  e8 23 45 f9 ff                 call   0x2cc2cc
337da9  4c 8d 85 90 00 00 00           lea    r8,[rbp+0x90]
337db0  48 8d 55 d0                    lea    rdx,[rbp-0x30]
337db4  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
337db9  e8 ae 46 f9 ff                 call   0x2cc46c
337dbe  4c 8b c3                       mov    r8,rbx
337dc1  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
337dc6  48 8d 4d a0                    lea    rcx,[rbp-0x60]
337dca  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
337dcd  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
337dd3  e8 60 e6 ff ff                 call   0x336438
337dd8  8b 0d 0a 53 0c 00              mov    ecx,DWORD PTR [rip+0xc530a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
337dde  48 8b d8                       mov    rbx,rax
337de1  3b ce                          cmp    ecx,esi
337de3  75 09                          jne    0x337dee
337de5  48 8d 0d 4c f9 f5 ff           lea    rcx,[rip+0xfffffffffff5f94c]        # 0x297738
337dec  eb 0b                          jmp    0x337df9
337dee  3b cf                          cmp    ecx,edi
337df0  75 0e                          jne    0x337e00
337df2  48 8d 0d 6f f9 f5 ff           lea    rcx,[rip+0xfffffffffff5f96f]        # 0x297768
337df9  e8 06 d2 02 00                 call   0x365004
337dfe  eb 19                          jmp    0x337e19
337e00  48 8d 54 24 3d                 lea    rdx,[rsp+0x3d]
337e05  48 8d 8d f0 00 00 00           lea    rcx,[rbp+0xf0]
337e0c  e8 5f f1 01 00                 call   0x356f70 ; STRING getter=0x356f70 Override Bone
337e11  48 8b c8                       mov    rcx,rax
337e14  e8 6f 53 fa ff                 call   0x2dd188
337e19  4c 8b c3                       mov    r8,rbx
337e1c  48 8d 15 c5 fb 0b 00           lea    rdx,[rip+0xbfbc5]        # 0x3f79e8 ; CONFIG i.BoneIndex3 value(+0x48)
337e23  48 8b c8                       mov    rcx,rax
337e26  e8 dd 71 08 00                 call   0x3bf008
337e2b  4c 8d 0d c2 46 f9 ff           lea    r9,[rip+0xfffffffffff946c2]        # 0x2cc4f4
337e32  4d 8b c7                       mov    r8,r15
337e35  49 8b d5                       mov    rdx,r13
337e38  48 8d 4d d0                    lea    rcx,[rbp-0x30]
337e3c  e8 87 3c fa ff                 call   0x2dbac8
337e41  0f 28 b4 24 90 01 00 00        movaps xmm6,XMMWORD PTR [rsp+0x190]
337e49  48 81 c4 a0 01 00 00           add    rsp,0x1a0
337e50  41 5f                          pop    r15
337e52  41 5e                          pop    r14
337e54  41 5d                          pop    r13
337e56  5f                             pop    rdi
337e57  5e                             pop    rsi
337e58  5b                             pop    rbx
337e59  5d                             pop    rbp
337e5a  e9 ed f3 04 00                 jmp    0x38724c

; pdata function 0x346ccc..0x3483ea unwind=0x3d3c84
346ccc  48 8b c4                       mov    rax,rsp
346ccf  55                             push   rbp
346cd0  53                             push   rbx
346cd1  56                             push   rsi
346cd2  57                             push   rdi
346cd3  41 56                          push   r14
346cd5  48 8d a8 a8 fe ff ff           lea    rbp,[rax-0x158]
346cdc  48 81 ec 30 02 00 00           sub    rsp,0x230
346ce3  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
346ce7  48 8d 8d 78 01 00 00           lea    rcx,[rbp+0x178]
346cee  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
346cf2  0f 57 c9                       xorps  xmm1,xmm1
346cf5  f3 0f 10 3d 63 c5 f4 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff4c563]        # 0x293260 ; f32=-1
346cfd  0f 28 d7                       movaps xmm2,xmm7
346d00  e8 3b 56 f8 ff                 call   0x2cc340
346d05  bf 02 00 00 00                 mov    edi,0x2
346d0a  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
346d0e  8b 05 d4 63 0b 00              mov    eax,DWORD PTR [rip+0xb63d4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346d14  8d 77 ff                       lea    esi,[rdi-0x1]
346d17  3b c6                          cmp    eax,esi
346d19  75 0e                          jne    0x346d29
346d1b  48 8d 0d 06 c1 f5 ff           lea    rcx,[rip+0xfffffffffff5c106]        # 0x2a2e28
346d22  e8 dd e2 01 00                 call   0x365004
346d27  eb 26                          jmp    0x346d4f
346d29  3b c7                          cmp    eax,edi
346d2b  75 09                          jne    0x346d36
346d2d  48 8d 0d 10 c1 f5 ff           lea    rcx,[rip+0xfffffffffff5c110]        # 0x2a2e44
346d34  eb ec                          jmp    0x346d22
346d36  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
346d3b  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
346d42  e8 31 cb 00 00                 call   0x353878 ; STRING getter=0x353878 Movement
346d47  48 8b c8                       mov    rcx,rax
346d4a  e8 3d 2e fa ff                 call   0x2e9b8c
346d4f  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
346d56  48 8b d8                       mov    rbx,rax
346d59  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
346d60  e8 db 9a 00 00                 call   0x350840 ; STRING getter=0x350840 Y
346d65  48 8b c8                       mov    rcx,rax
346d68  e8 f7 16 f9 ff                 call   0x2d8464
346d6d  48 8b d0                       mov    rdx,rax
346d70  48 8d 4d 80                    lea    rcx,[rbp-0x80]
346d74  e8 53 55 f8 ff                 call   0x2cc2cc
346d79  48 8b c8                       mov    rcx,rax
346d7c  44 8a ce                       mov    r9b,sil
346d7f  66 49 0f 7e f0                 movq   r8,xmm6
346d84  48 8b d3                       mov    rdx,rbx
346d87  e8 64 e0 03 00                 call   0x384df0
346d8c  8b 05 56 63 0b 00              mov    eax,DWORD PTR [rip+0xb6356]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346d92  3b c6                          cmp    eax,esi
346d94  75 0e                          jne    0x346da4
346d96  48 8d 0d b3 c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c0b3]        # 0x2a2e50
346d9d  e8 62 e2 01 00                 call   0x365004
346da2  eb 25                          jmp    0x346dc9
346da4  3b c7                          cmp    eax,edi
346da6  75 09                          jne    0x346db1
346da8  48 8d 0d 01 c1 f5 ff           lea    rcx,[rip+0xfffffffffff5c101]        # 0x2a2eb0
346daf  eb ec                          jmp    0x346d9d
346db1  48 8d 55 80                    lea    rdx,[rbp-0x80]
346db5  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
346dbc  e8 5b f6 00 00                 call   0x35641c ; STRING getter=0x35641c Stops you from generating violations on the server
346dc1  48 8b c8                       mov    rcx,rax
346dc4  e8 eb d0 01 00                 call   0x363eb4
346dc9  48 8b d8                       mov    rbx,rax
346dcc  8b 05 16 63 0b 00              mov    eax,DWORD PTR [rip+0xb6316]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346dd2  3b c6                          cmp    eax,esi
346dd4  75 09                          jne    0x346ddf
346dd6  48 8d 0d f3 c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c0f3]        # 0x2a2ed0
346ddd  eb 0b                          jmp    0x346dea
346ddf  3b c7                          cmp    eax,edi
346de1  75 0e                          jne    0x346df1
346de3  48 8d 0d 06 c1 f5 ff           lea    rcx,[rip+0xfffffffffff5c106]        # 0x2a2ef0
346dea  e8 15 e2 01 00                 call   0x365004
346def  eb 19                          jmp    0x346e0a
346df1  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
346df6  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
346dfd  e8 02 e1 00 00                 call   0x354f04 ; STRING getter=0x354f04 Anti Violations
346e02  48 8b c8                       mov    rcx,rax
346e05  e8 56 63 f9 ff                 call   0x2dd160
346e0a  45 33 f6                       xor    r14d,r14d
346e0d  48 8d 15 94 30 0a 00           lea    rdx,[rip+0xa3094]        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
346e14  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
346e19  45 33 c9                       xor    r9d,r9d
346e1c  45 33 c0                       xor    r8d,r8d
346e1f  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
346e24  48 8b c8                       mov    rcx,rax
346e27  e8 e8 62 07 00                 call   0x3bd114
346e2c  44 38 35 75 30 0a 00           cmp    BYTE PTR [rip+0xa3075],r14b        # 0x3e9ea8 ; CONFIG Bools.AntiViolations value(+0x48)
346e33  0f 84 38 05 00 00              je     0x347371
346e39  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
346e40  e8 5f 45 f8 ff                 call   0x2cb3a4
346e45  8b 0d 9d 62 0b 00              mov    ecx,DWORD PTR [rip+0xb629d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346e4b  48 8b d8                       mov    rbx,rax
346e4e  3b ce                          cmp    ecx,esi
346e50  75 09                          jne    0x346e5b
346e52  48 8d 0d 9f c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c09f]        # 0x2a2ef8
346e59  eb 0b                          jmp    0x346e66
346e5b  3b cf                          cmp    ecx,edi
346e5d  75 0e                          jne    0x346e6d
346e5f  48 8d 0d a2 c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c0a2]        # 0x2a2f08
346e66  e8 99 e1 01 00                 call   0x365004
346e6b  eb 18                          jmp    0x346e85
346e6d  48 8d 55 ef                    lea    rdx,[rbp-0x11]
346e71  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
346e78  e8 53 d2 fa ff                 call   0x2f40d0
346e7d  48 8b c8                       mov    rcx,rax
346e80  e8 8f c7 f9 ff                 call   0x2e3614
346e85  48 8b d0                       mov    rdx,rax
346e88  48 8d 4d 00                    lea    rcx,[rbp+0x0]
346e8c  e8 3b 54 f8 ff                 call   0x2cc2cc
346e91  8b 05 51 62 0b 00              mov    eax,DWORD PTR [rip+0xb6251]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346e97  3b c6                          cmp    eax,esi
346e99  75 09                          jne    0x346ea4
346e9b  48 8d 0d 76 c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c076]        # 0x2a2f18
346ea2  eb 0b                          jmp    0x346eaf
346ea4  3b c7                          cmp    eax,edi
346ea6  75 0e                          jne    0x346eb6
346ea8  48 8d 0d 91 c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c091]        # 0x2a2f40
346eaf  e8 50 e1 01 00                 call   0x365004
346eb4  eb 19                          jmp    0x346ecf
346eb6  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
346ebb  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
346ec2  e8 d1 12 01 00                 call   0x358198 ; STRING getter=0x358198 DrawFlyBar
346ec7  48 8b c8                       mov    rcx,rax
346eca  e8 85 2d fa ff                 call   0x2e9c54
346ecf  48 8b d0                       mov    rdx,rax
346ed2  48 8d 4d 20                    lea    rcx,[rbp+0x20]
346ed6  e8 f1 53 f8 ff                 call   0x2cc2cc
346edb  8b 05 07 62 0b 00              mov    eax,DWORD PTR [rip+0xb6207]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346ee1  3b c6                          cmp    eax,esi
346ee3  75 09                          jne    0x346eee
346ee5  48 8d 0d 5c c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c05c]        # 0x2a2f48
346eec  eb 0b                          jmp    0x346ef9
346eee  3b c7                          cmp    eax,edi
346ef0  75 0e                          jne    0x346f00
346ef2  48 8d 0d 5f c0 f5 ff           lea    rcx,[rip+0xfffffffffff5c05f]        # 0x2a2f58
346ef9  e8 06 e1 01 00                 call   0x365004
346efe  eb 18                          jmp    0x346f18
346f00  48 8d 55 e8                    lea    rdx,[rbp-0x18]
346f04  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
346f0b  e8 64 18 01 00                 call   0x358774 ; STRING getter=0x358774 Noclip
346f10  48 8b c8                       mov    rcx,rax
346f13  e8 dc 6d f8 ff                 call   0x2cdcf4
346f18  48 8b d0                       mov    rdx,rax
346f1b  48 8d 4d 40                    lea    rcx,[rbp+0x40]
346f1f  e8 a8 53 f8 ff                 call   0x2cc2cc
346f24  8b 05 be 61 0b 00              mov    eax,DWORD PTR [rip+0xb61be]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346f2a  3b c6                          cmp    eax,esi
346f2c  75 09                          jne    0x346f37
346f2e  48 8d 0d 0b 04 f5 ff           lea    rcx,[rip+0xfffffffffff5040b]        # 0x297340
346f35  eb 0b                          jmp    0x346f42
346f37  3b c7                          cmp    eax,edi
346f39  75 0e                          jne    0x346f49
346f3b  48 8d 0d 12 04 f5 ff           lea    rcx,[rip+0xfffffffffff50412]        # 0x297354
346f42  e8 bd e0 01 00                 call   0x365004
346f47  eb 1b                          jmp    0x346f64
346f49  48 8d 95 78 01 00 00           lea    rdx,[rbp+0x178]
346f50  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
346f57  e8 90 1c 01 00                 call   0x358bec ; STRING getter=0x358bec Speed
346f5c  48 8b c8                       mov    rcx,rax
346f5f  e8 78 15 f9 ff                 call   0x2d84dc
346f64  48 8b d0                       mov    rdx,rax
346f67  48 8d 4d 60                    lea    rcx,[rbp+0x60]
346f6b  e8 5c 53 f8 ff                 call   0x2cc2cc
346f70  8b 05 72 61 0b 00              mov    eax,DWORD PTR [rip+0xb6172]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346f76  3b c6                          cmp    eax,esi
346f78  75 09                          jne    0x346f83
346f7a  48 8d 0d df bf f5 ff           lea    rcx,[rip+0xfffffffffff5bfdf]        # 0x2a2f60
346f81  eb 0b                          jmp    0x346f8e
346f83  3b c7                          cmp    eax,edi
346f85  75 0e                          jne    0x346f95
346f87  48 8d 0d fa bf f5 ff           lea    rcx,[rip+0xfffffffffff5bffa]        # 0x2a2f88
346f8e  e8 71 e0 01 00                 call   0x365004
346f93  eb 19                          jmp    0x346fae
346f95  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
346f9a  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
346fa1  e8 9e 36 01 00                 call   0x35a644 ; STRING getter=0x35a644 DrawSpeedBar
346fa6  48 8b c8                       mov    rcx,rax
346fa9  e8 46 16 f9 ff                 call   0x2d85f4
346fae  48 8b d0                       mov    rdx,rax
346fb1  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
346fb8  e8 0f 53 f8 ff                 call   0x2cc2cc
346fbd  8b 05 25 61 0b 00              mov    eax,DWORD PTR [rip+0xb6125]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
346fc3  3b c6                          cmp    eax,esi
346fc5  75 09                          jne    0x346fd0
346fc7  48 8d 0d c2 bf f5 ff           lea    rcx,[rip+0xfffffffffff5bfc2]        # 0x2a2f90
346fce  eb 0b                          jmp    0x346fdb
346fd0  3b c7                          cmp    eax,edi
346fd2  75 0e                          jne    0x346fe2
346fd4  48 8d 0d c5 bf f5 ff           lea    rcx,[rip+0xfffffffffff5bfc5]        # 0x2a2fa0
346fdb  e8 24 e0 01 00                 call   0x365004
346fe0  eb 19                          jmp    0x346ffb
346fe2  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
346fe7  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
346fee  e8 4d e4 ff ff                 call   0x345440
346ff3  48 8b c8                       mov    rcx,rax
346ff6  e8 19 c6 f9 ff                 call   0x2e3614
346ffb  48 8b d0                       mov    rdx,rax
346ffe  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
347005  e8 c2 52 f8 ff                 call   0x2cc2cc
34700a  4c 8d 85 c0 00 00 00           lea    r8,[rbp+0xc0]
347011  48 8d 55 00                    lea    rdx,[rbp+0x0]
347015  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34701a  e8 4d 54 f8 ff                 call   0x2cc46c
34701f  4c 8b c3                       mov    r8,rbx
347022  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
347027  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
34702e  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
347031  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
347037  e8 fc f3 fe ff                 call   0x336438
34703c  ba 20 00 00 00                 mov    edx,0x20
347041  4c 8d 0d ac 54 f8 ff           lea    r9,[rip+0xfffffffffff854ac]        # 0x2cc4f4
347048  48 8d 4d 00                    lea    rcx,[rbp+0x0]
34704c  44 8d 42 e6                    lea    r8d,[rdx-0x1a]
347050  e8 73 4a f9 ff                 call   0x2dbac8
347055  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
34705c  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
347061  e8 56 42 f9 ff                 call   0x2db2bc
347066  8b 0d 7c 60 0b 00              mov    ecx,DWORD PTR [rip+0xb607c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34706c  48 8b d8                       mov    rbx,rax
34706f  3b ce                          cmp    ecx,esi
347071  75 09                          jne    0x34707c
347073  48 8d 0d 2e bf f5 ff           lea    rcx,[rip+0xfffffffffff5bf2e]        # 0x2a2fa8
34707a  eb 0b                          jmp    0x347087
34707c  3b cf                          cmp    ecx,edi
34707e  75 0e                          jne    0x34708e
347080  48 8d 0d 35 bf f5 ff           lea    rcx,[rip+0xfffffffffff5bf35]        # 0x2a2fbc
347087  e8 78 df 01 00                 call   0x365004
34708c  eb 19                          jmp    0x3470a7
34708e  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347093  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34709a  e8 ad 95 00 00                 call   0x35064c ; STRING getter=0x35064c Violations
34709f  48 8b c8                       mov    rcx,rax
3470a2  e8 ad 2b fa ff                 call   0x2e9c54
3470a7  4c 8d 05 ba 91 0a 00           lea    r8,[rip+0xa91ba]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470ae  48 8b d3                       mov    rdx,rbx
3470b1  48 8b c8                       mov    rcx,rax
3470b4  e8 5f 0c 04 00                 call   0x387d18
3470b9  4c 8b c6                       mov    r8,rsi
3470bc  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
3470c1  48 8d 0d a0 91 0a 00           lea    rcx,[rip+0xa91a0]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470c8  e8 23 28 fa ff                 call   0x2e98f0
3470cd  48 8b c8                       mov    rcx,rax
3470d0  e8 9b dc f8 ff                 call   0x2d4d70
3470d5  84 c0                          test   al,al
3470d7  75 27                          jne    0x347100
3470d9  41 b8 04 00 00 00              mov    r8d,0x4
3470df  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
3470e4  48 8d 0d 7d 91 0a 00           lea    rcx,[rip+0xa917d]        # 0x3f0268 ; CONFIG VectorBools.ViolationOptions value(+0x48)
3470eb  e8 00 28 fa ff                 call   0x2e98f0
3470f0  48 8b c8                       mov    rcx,rax
3470f3  e8 78 dc f8 ff                 call   0x2d4d70
3470f8  84 c0                          test   al,al
3470fa  0f 84 d3 01 00 00              je     0x3472d3
347100  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347107  e8 98 42 f8 ff                 call   0x2cb3a4
34710c  8b 0d d6 5f 0b 00              mov    ecx,DWORD PTR [rip+0xb5fd6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347112  48 8b d8                       mov    rbx,rax
347115  3b ce                          cmp    ecx,esi
347117  75 09                          jne    0x347122
347119  48 8d 0d a8 be f5 ff           lea    rcx,[rip+0xfffffffffff5bea8]        # 0x2a2fc8
347120  eb 0b                          jmp    0x34712d
347122  3b cf                          cmp    ecx,edi
347124  75 0e                          jne    0x347134
347126  48 8d 0d c3 be f5 ff           lea    rcx,[rip+0xfffffffffff5bec3]        # 0x2a2ff0
34712d  e8 d2 de 01 00                 call   0x365004
347132  eb 19                          jmp    0x34714d
347134  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
347139  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347140  e8 0f a1 00 00                 call   0x351254 ; STRING getter=0x351254 Pulsating Bar
347145  48 8b c8                       mov    rcx,rax
347148  e8 3b 60 f9 ff                 call   0x2dd188
34714d  48 8b d0                       mov    rdx,rax
347150  48 8d 4d 00                    lea    rcx,[rbp+0x0]
347154  e8 73 51 f8 ff                 call   0x2cc2cc
347159  8b 05 89 5f 0b 00              mov    eax,DWORD PTR [rip+0xb5f89]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34715f  3b c6                          cmp    eax,esi
347161  75 09                          jne    0x34716c
347163  48 8d 0d 8e be f5 ff           lea    rcx,[rip+0xfffffffffff5be8e]        # 0x2a2ff8
34716a  eb 0b                          jmp    0x347177
34716c  3b c7                          cmp    eax,edi
34716e  75 0e                          jne    0x34717e
347170  48 8d 0d a1 be f5 ff           lea    rcx,[rip+0xfffffffffff5bea1]        # 0x2a3018
347177  e8 88 de 01 00                 call   0x365004
34717c  eb 19                          jmp    0x347197
34717e  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347183  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
34718a  e8 45 a3 00 00                 call   0x3514d4 ; STRING getter=0x3514d4 Normal Bar
34718f  48 8b c8                       mov    rcx,rax
347192  e8 bd 2a fa ff                 call   0x2e9c54
347197  48 8b d0                       mov    rdx,rax
34719a  48 8d 4d 20                    lea    rcx,[rbp+0x20]
34719e  e8 29 51 f8 ff                 call   0x2cc2cc
3471a3  8b 05 3f 5f 0b 00              mov    eax,DWORD PTR [rip+0xb5f3f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3471a9  3b c6                          cmp    eax,esi
3471ab  75 09                          jne    0x3471b6
3471ad  48 8d 0d 6c be f5 ff           lea    rcx,[rip+0xfffffffffff5be6c]        # 0x2a3020
3471b4  eb 0b                          jmp    0x3471c1
3471b6  3b c7                          cmp    eax,edi
3471b8  75 0e                          jne    0x3471c8
3471ba  48 8d 0d 8f be f5 ff           lea    rcx,[rip+0xfffffffffff5be8f]        # 0x2a3050
3471c1  e8 3e de 01 00                 call   0x365004
3471c6  eb 18                          jmp    0x3471e0
3471c8  48 8d 55 ef                    lea    rdx,[rbp-0x11]
3471cc  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
3471d3  e8 a0 a5 00 00                 call   0x351778 ; STRING getter=0x351778 Segmented Bar
3471d8  48 8b c8                       mov    rcx,rax
3471db  e8 a8 5f f9 ff                 call   0x2dd188
3471e0  48 8b d0                       mov    rdx,rax
3471e3  48 8d 4d 40                    lea    rcx,[rbp+0x40]
3471e7  e8 e0 50 f8 ff                 call   0x2cc2cc
3471ec  8b 05 f6 5e 0b 00              mov    eax,DWORD PTR [rip+0xb5ef6]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3471f2  3b c6                          cmp    eax,esi
3471f4  75 09                          jne    0x3471ff
3471f6  48 8d 0d 5b be f5 ff           lea    rcx,[rip+0xfffffffffff5be5b]        # 0x2a3058
3471fd  eb 0b                          jmp    0x34720a
3471ff  3b c7                          cmp    eax,edi
347201  75 0e                          jne    0x347211
347203  48 8d 0d 5a be f5 ff           lea    rcx,[rip+0xfffffffffff5be5a]        # 0x2a3064
34720a  e8 f5 dd 01 00                 call   0x365004
34720f  eb 1b                          jmp    0x34722c
347211  48 8d 95 78 01 00 00           lea    rdx,[rbp+0x178]
347218  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
34721f  e8 c8 a7 00 00                 call   0x3519ec ; STRING getter=0x3519ec Circle
347224  48 8b c8                       mov    rcx,rax
347227  e8 c8 6a f8 ff                 call   0x2cdcf4
34722c  48 8b d0                       mov    rdx,rax
34722f  48 8d 4d 60                    lea    rcx,[rbp+0x60]
347233  e8 94 50 f8 ff                 call   0x2cc2cc
347238  4c 8d 85 80 00 00 00           lea    r8,[rbp+0x80]
34723f  48 8d 55 00                    lea    rdx,[rbp+0x0]
347243  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
347248  e8 1f 52 f8 ff                 call   0x2cc46c
34724d  4c 8b c3                       mov    r8,rbx
347250  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
347255  48 8d 4d 80                    lea    rcx,[rbp-0x80]
347259  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
34725c  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
347262  e8 d1 f1 fe ff                 call   0x336438
347267  8b 0d 7b 5e 0b 00              mov    ecx,DWORD PTR [rip+0xb5e7b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34726d  48 8b d8                       mov    rbx,rax
347270  3b ce                          cmp    ecx,esi
347272  75 09                          jne    0x34727d
347274  48 8d 0d f5 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bdf5]        # 0x2a3070
34727b  eb 0b                          jmp    0x347288
34727d  3b cf                          cmp    ecx,edi
34727f  75 0e                          jne    0x34728f
347281  48 8d 0d 08 be f5 ff           lea    rcx,[rip+0xfffffffffff5be08]        # 0x2a3090
347288  e8 77 dd 01 00                 call   0x365004
34728d  eb 19                          jmp    0x3472a8
34728f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
347294  48 8d 8d 70 01 00 00           lea    rcx,[rbp+0x170]
34729b  e8 40 9b 00 00                 call   0x350de0 ; STRING getter=0x350de0 Bar Type
3472a0  48 8b c8                       mov    rcx,rax
3472a3  e8 e4 28 fa ff                 call   0x2e9b8c
3472a8  4c 8b c3                       mov    r8,rbx
3472ab  48 8d 15 36 7a 0a 00           lea    rdx,[rip+0xa7a36]        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
3472b2  48 8b c8                       mov    rcx,rax
3472b5  e8 4e 7d 07 00                 call   0x3bf008
3472ba  ba 20 00 00 00                 mov    edx,0x20
3472bf  4c 8d 0d 2e 52 f8 ff           lea    r9,[rip+0xfffffffffff8522e]        # 0x2cc4f4
3472c6  48 8d 4d 00                    lea    rcx,[rbp+0x0]
3472ca  44 8d 42 e4                    lea    r8d,[rdx-0x1c]
3472ce  e8 f5 47 f9 ff                 call   0x2dbac8
3472d3  83 3d 0e 7a 0a 00 03           cmp    DWORD PTR [rip+0xa7a0e],0x3        # 0x3eece8 ; CONFIG i.DrawBarType value(+0x48)
3472da  0f 85 85 00 00 00              jne    0x347365
3472e0  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
3472e7  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3472ee  e8 65 b0 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
3472f3  48 8b c8                       mov    rcx,rax
3472f6  e8 f1 c2 f9 ff                 call   0x2e35ec
3472fb  8b 0d e7 5d 0b 00              mov    ecx,DWORD PTR [rip+0xb5de7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347301  48 8b d8                       mov    rbx,rax
347304  3b ce                          cmp    ecx,esi
347306  75 09                          jne    0x347311
347308  48 8d 0d 91 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd91]        # 0x2a30a0
34730f  eb 0b                          jmp    0x34731c
347311  3b cf                          cmp    ecx,edi
347313  75 0e                          jne    0x347323
347315  48 8d 0d a4 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bda4]        # 0x2a30c0
34731c  e8 e3 dc 01 00                 call   0x365004
347321  eb 19                          jmp    0x34733c
347323  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
347328  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34732f  e8 0c a9 00 00                 call   0x351c40 ; STRING getter=0x351c40 Circle Distance
347334  48 8b c8                       mov    rcx,rax
347337  e8 24 5e f9 ff                 call   0x2dd160
34733c  f3 0f 10 1d bc 0e f6 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff60ebc]        # 0x2a8200 ; f32=0.991
347344  48 8d 15 1d 63 0a 00           lea    rdx,[rip+0xa631d]        # 0x3ed668 ; CONFIG F.outerRadius value(+0x48)
34734b  f3 0f 10 15 a1 0e f6 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff60ea1]        # 0x2a81f4 ; f32=0.151
347353  48 8b c8                       mov    rcx,rax
347356  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34735b  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347360  e8 8f d0 07 00                 call   0x3c43f4
347365  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
34736c  e8 0f d7 f8 ff                 call   0x2d4a80
347371  8b 05 71 5d 0b 00              mov    eax,DWORD PTR [rip+0xb5d71]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347377  3b c6                          cmp    eax,esi
347379  75 0e                          jne    0x347389
34737b  48 8d 0d 4e bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd4e]        # 0x2a30d0
347382  e8 7d dc 01 00                 call   0x365004
347387  eb 28                          jmp    0x3473b1
347389  3b c7                          cmp    eax,edi
34738b  75 09                          jne    0x347396
34738d  48 8d 0d d4 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bdd4]        # 0x2a3168
347394  eb ec                          jmp    0x347382
347396  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
34739d  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3473a4  e8 87 ac 00 00                 call   0x352030 ; STRING getter=0x352030 Automatically limits your speed based on your current speedhack levels
3473a9  48 8b c8                       mov    rcx,rax
3473ac  e8 6b cc 01 00                 call   0x36401c
3473b1  48 8b d8                       mov    rbx,rax
3473b4  8b 05 2e 5d 0b 00              mov    eax,DWORD PTR [rip+0xb5d2e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3473ba  3b c6                          cmp    eax,esi
3473bc  75 09                          jne    0x3473c7
3473be  48 8d 0d cb bd f5 ff           lea    rcx,[rip+0xfffffffffff5bdcb]        # 0x2a3190
3473c5  eb 0b                          jmp    0x3473d2
3473c7  3b c7                          cmp    eax,edi
3473c9  75 0e                          jne    0x3473d9
3473cb  48 8d 0d f6 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bdf6]        # 0x2a31c8
3473d2  e8 2d dc 01 00                 call   0x365004
3473d7  eb 18                          jmp    0x3473f1
3473d9  48 8d 55 80                    lea    rdx,[rbp-0x80]
3473dd  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3473e4  e8 b7 a9 00 00                 call   0x351da0 ; STRING getter=0x351da0 Auto Adjusting Speedhack
3473e9  48 8b c8                       mov    rcx,rax
3473ec  e8 1b 91 fd ff                 call   0x32050c
3473f1  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3473f6  48 8d 15 9b 2b 0a 00           lea    rdx,[rip+0xa2b9b]        # 0x3e9f98 ; CONFIG Bools.AutoAdjustSpeed value(+0x48)
3473fd  45 33 c9                       xor    r9d,r9d
347400  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347405  45 33 c0                       xor    r8d,r8d
347408  48 8b c8                       mov    rcx,rax
34740b  e8 04 5d 07 00                 call   0x3bd114
347410  44 38 35 81 2b 0a 00           cmp    BYTE PTR [rip+0xa2b81],r14b        # 0x3e9f98 ; CONFIG Bools.AutoAdjustSpeed value(+0x48)
347417  0f 84 38 03 00 00              je     0x347755
34741d  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347424  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34742b  e8 28 af 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
347430  48 8b c8                       mov    rcx,rax
347433  e8 b4 c1 f9 ff                 call   0x2e35ec
347438  8b 0d aa 5c 0b 00              mov    ecx,DWORD PTR [rip+0xb5caa]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34743e  48 8b d8                       mov    rbx,rax
347441  3b ce                          cmp    ecx,esi
347443  75 09                          jne    0x34744e
347445  48 8d 0d 8c bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd8c]        # 0x2a31d8
34744c  eb 0b                          jmp    0x347459
34744e  3b cf                          cmp    ecx,edi
347450  75 0e                          jne    0x347460
347452  48 8d 0d 9f bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd9f]        # 0x2a31f8
347459  e8 a6 db 01 00                 call   0x365004
34745e  eb 19                          jmp    0x347479
347460  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347465  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34746c  e8 d7 b0 00 00                 call   0x352548 ; STRING getter=0x352548 Speed Limit
347471  48 8b c8                       mov    rcx,rax
347474  e8 bb 69 f8 ff                 call   0x2cde34
347479  f3 0f 10 1d ab 0d f6 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff60dab]        # 0x2a822c ; f32=5.3
347481  48 8d 15 d0 67 0a 00           lea    rdx,[rip+0xa67d0]        # 0x3edc58 ; CONFIG F.speedlimiter value(+0x48)
347488  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34748d  0f 57 d2                       xorps  xmm2,xmm2
347490  48 8b c8                       mov    rcx,rax
347493  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347498  e8 57 cf 07 00                 call   0x3c43f4
34749d  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
3474a4  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3474ab  e8 a8 ae 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
3474b0  48 8b c8                       mov    rcx,rax
3474b3  e8 34 c1 f9 ff                 call   0x2e35ec
3474b8  8b 0d 2a 5c 0b 00              mov    ecx,DWORD PTR [rip+0xb5c2a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3474be  48 8b d8                       mov    rbx,rax
3474c1  3b ce                          cmp    ecx,esi
3474c3  75 09                          jne    0x3474ce
3474c5  48 8d 0d 3c bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd3c]        # 0x2a3208
3474cc  eb 0b                          jmp    0x3474d9
3474ce  3b cf                          cmp    ecx,edi
3474d0  75 0e                          jne    0x3474e0
3474d2  48 8d 0d 53 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd53]        # 0x2a322c
3474d9  e8 26 db 01 00                 call   0x365004
3474de  eb 19                          jmp    0x3474f9
3474e0  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
3474e5  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3474ec  e8 bf b2 00 00                 call   0x3527b0 ; STRING getter=0x3527b0 Fast Speed
3474f1  48 8b c8                       mov    rcx,rax
3474f4  e8 5b 27 fa ff                 call   0x2e9c54
3474f9  f3 0f 10 1d 57 bc f4 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff4bc57]        # 0x293158 ; f32=3
347501  48 8d 15 f0 67 0a 00           lea    rdx,[rip+0xa67f0]        # 0x3edcf8 ; CONFIG F.FastSpeed value(+0x48)
347508  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34750d  0f 57 d2                       xorps  xmm2,xmm2
347510  48 8b c8                       mov    rcx,rax
347513  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347518  e8 d7 ce 07 00                 call   0x3c43f4
34751d  0f 28 cf                       movaps xmm1,xmm7
347520  0f 57 c0                       xorps  xmm0,xmm0
347523  e8 dc 36 05 00                 call   0x39ac04
347528  e8 f7 ae 04 00                 call   0x392424
34752d  f3 0f 10 35 23 0d f6 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff60d23]        # 0x2a8258 ; f32=195
347535  f3 0f 5c c6                    subss  xmm0,xmm6
347539  e8 d2 3e 05 00                 call   0x39b410
34753e  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347545  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34754c  e8 83 b4 00 00                 call   0x3529d4 ; STRING getter=0x3529d4 ##
347551  48 8b c8                       mov    rcx,rax
347554  e8 9b 8e fd ff                 call   0x3203f4
347559  48 8b d0                       mov    rdx,rax
34755c  48 8d 4d 80                    lea    rcx,[rbp-0x80]
347560  e8 67 4d f8 ff                 call   0x2cc2cc
347565  8b 0d 7d 5b 0b 00              mov    ecx,DWORD PTR [rip+0xb5b7d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34756b  48 8b d8                       mov    rbx,rax
34756e  3b ce                          cmp    ecx,esi
347570  75 09                          jne    0x34757b
347572  48 8d 0d bf bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcbf]        # 0x2a3238
347579  eb 0b                          jmp    0x347586
34757b  3b cf                          cmp    ecx,edi
34757d  75 0e                          jne    0x34758d
34757f  48 8d 0d d2 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcd2]        # 0x2a3258
347586  e8 79 da 01 00                 call   0x365004
34758b  eb 19                          jmp    0x3475a6
34758d  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
347592  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347599  e8 fa b5 00 00                 call   0x352b98 ; STRING getter=0x352b98 Fast Key
34759e  48 8b c8                       mov    rcx,rax
3475a1  e8 e6 25 fa ff                 call   0x2e9b8c
3475a6  48 8b d0                       mov    rdx,rax
3475a9  48 8b cb                       mov    rcx,rbx
3475ac  e8 fb 61 f8 ff                 call   0x2cd7ac
3475b1  48 8d 95 78 01 00 00           lea    rdx,[rbp+0x178]
3475b8  48 8b d8                       mov    rbx,rax
3475bb  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3475c2  e8 e1 b7 00 00                 call   0x352da8 ; STRING getter=0x352da8 binder
3475c7  48 8b c8                       mov    rcx,rax
3475ca  e8 25 67 f8 ff                 call   0x2cdcf4
3475cf  48 8b d0                       mov    rdx,rax
3475d2  48 8b cb                       mov    rcx,rbx
3475d5  e8 d2 61 f8 ff                 call   0x2cd7ac
3475da  48 8b c8                       mov    rcx,rax
3475dd  e8 0a 62 f8 ff                 call   0x2cd7ec
3475e2  48 8b c8                       mov    rcx,rax
3475e5  48 8d 15 0c 83 0a 00           lea    rdx,[rip+0xa830c]        # 0x3ef8f8 ; CONFIG K.FastVirtualKey value(+0x48)
3475ec  44 8a c6                       mov    r8b,sil
3475ef  e8 7c e5 03 00                 call   0x385b70
3475f4  48 8d 4d 80                    lea    rcx,[rbp-0x80]
3475f8  e8 f7 4e f8 ff                 call   0x2cc4f4
3475fd  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347604  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34760b  e8 48 ad 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
347610  48 8b c8                       mov    rcx,rax
347613  e8 d4 bf f9 ff                 call   0x2e35ec
347618  8b 0d ca 5a 0b 00              mov    ecx,DWORD PTR [rip+0xb5aca]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34761e  48 8b d8                       mov    rbx,rax
347621  3b ce                          cmp    ecx,esi
347623  75 09                          jne    0x34762e
347625  48 8d 0d 54 fc f4 ff           lea    rcx,[rip+0xfffffffffff4fc54]        # 0x297280
34762c  eb 0b                          jmp    0x347639
34762e  3b cf                          cmp    ecx,edi
347630  75 0e                          jne    0x347640
347632  48 8d 0d 27 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc27]        # 0x2a3260
347639  e8 c6 d9 01 00                 call   0x365004
34763e  eb 19                          jmp    0x347659
347640  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347645  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34764c  e8 17 b9 00 00                 call   0x352f68 ; STRING getter=0x352f68 Slow Speed
347651  48 8b c8                       mov    rcx,rax
347654  e8 fb 25 fa ff                 call   0x2e9c54
347659  f3 0f 10 1d 73 ba f4 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff4ba73]        # 0x2930d4 ; f32=0.8
347661  48 8d 15 40 66 0a 00           lea    rdx,[rip+0xa6640]        # 0x3edca8 ; CONFIG F.SlowSpeed value(+0x48)
347668  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34766d  0f 57 d2                       xorps  xmm2,xmm2
347670  48 8b c8                       mov    rcx,rax
347673  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347678  e8 77 cd 07 00                 call   0x3c43f4
34767d  0f 28 cf                       movaps xmm1,xmm7
347680  0f 57 c0                       xorps  xmm0,xmm0
347683  e8 7c 35 05 00                 call   0x39ac04
347688  e8 97 ad 04 00                 call   0x392424
34768d  f3 0f 5c c6                    subss  xmm0,xmm6
347691  e8 7a 3d 05 00                 call   0x39b410
347696  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
34769d  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3476a4  e8 8b ba 00 00                 call   0x353134 ; STRING getter=0x353134 ##
3476a9  48 8b c8                       mov    rcx,rax
3476ac  e8 43 8d fd ff                 call   0x3203f4
3476b1  48 8b d0                       mov    rdx,rax
3476b4  48 8d 4d 80                    lea    rcx,[rbp-0x80]
3476b8  e8 0f 4c f8 ff                 call   0x2cc2cc
3476bd  8b 0d 25 5a 0b 00              mov    ecx,DWORD PTR [rip+0xb5a25]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3476c3  48 8b d8                       mov    rbx,rax
3476c6  3b ce                          cmp    ecx,esi
3476c8  75 09                          jne    0x3476d3
3476ca  48 8d 0d 97 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb97]        # 0x2a3268
3476d1  eb 0b                          jmp    0x3476de
3476d3  3b cf                          cmp    ecx,edi
3476d5  75 0e                          jne    0x3476e5
3476d7  48 8d 0d b2 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bbb2]        # 0x2a3290
3476de  e8 21 d9 01 00                 call   0x365004
3476e3  eb 19                          jmp    0x3476fe
3476e5  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3476ea  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3476f1  e8 fe bb 00 00                 call   0x3532f4 ; STRING getter=0x3532f4 Slow Key
3476f6  48 8b c8                       mov    rcx,rax
3476f9  e8 8e 24 fa ff                 call   0x2e9b8c
3476fe  48 8b d0                       mov    rdx,rax
347701  48 8b cb                       mov    rcx,rbx
347704  e8 a3 60 f8 ff                 call   0x2cd7ac
347709  48 8d 95 78 01 00 00           lea    rdx,[rbp+0x178]
347710  48 8b d8                       mov    rbx,rax
347713  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34771a  e8 99 bd 00 00                 call   0x3534b8 ; STRING getter=0x3534b8 binder
34771f  48 8b c8                       mov    rcx,rax
347722  e8 cd 65 f8 ff                 call   0x2cdcf4
347727  48 8b d0                       mov    rdx,rax
34772a  48 8b cb                       mov    rcx,rbx
34772d  e8 7a 60 f8 ff                 call   0x2cd7ac
347732  48 8b c8                       mov    rcx,rax
347735  e8 b2 60 f8 ff                 call   0x2cd7ec
34773a  48 8b c8                       mov    rcx,rax
34773d  48 8d 15 14 82 0a 00           lea    rdx,[rip+0xa8214]        # 0x3ef958 ; CONFIG K.SlowVirtualKey value(+0x48)
347744  44 8a c6                       mov    r8b,sil
347747  e8 24 e4 03 00                 call   0x385b70
34774c  48 8d 4d 80                    lea    rcx,[rbp-0x80]
347750  e8 9f 4d f8 ff                 call   0x2cc4f4
347755  ba ff 00 00 ff                 mov    edx,0xff0000ff
34775a  8b ce                          mov    ecx,esi
34775c  e8 8b 14 05 00                 call   0x398bec
347761  8b 05 81 59 0b 00              mov    eax,DWORD PTR [rip+0xb5981]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347767  3b c6                          cmp    eax,esi
347769  75 0e                          jne    0x347779
34776b  48 8d 0d 26 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb26]        # 0x2a3298
347772  e8 8d d8 01 00                 call   0x365004
347777  eb 25                          jmp    0x34779e
347779  3b c7                          cmp    eax,edi
34777b  75 09                          jne    0x347786
34777d  48 8d 0d 4c bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb4c]        # 0x2a32d0
347784  eb ec                          jmp    0x347772
347786  48 8d 55 80                    lea    rdx,[rbp-0x80]
34778a  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347791  e8 9e c2 00 00                 call   0x353a34 ; STRING getter=0x353a34 Allows you to walk on water
347796  48 8b c8                       mov    rcx,rax
347799  e8 e6 8d fd ff                 call   0x320584
34779e  48 8b d8                       mov    rbx,rax
3477a1  8b 05 41 59 0b 00              mov    eax,DWORD PTR [rip+0xb5941]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3477a7  3b c6                          cmp    eax,esi
3477a9  75 09                          jne    0x3477b4
3477ab  48 8d 0d 36 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb36]        # 0x2a32e8
3477b2  eb 0b                          jmp    0x3477bf
3477b4  3b c7                          cmp    eax,edi
3477b6  75 0e                          jne    0x3477c6
3477b8  48 8d 0d 51 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb51]        # 0x2a3310
3477bf  e8 40 d8 01 00                 call   0x365004
3477c4  eb 19                          jmp    0x3477df
3477c6  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
3477cb  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3477d2  e8 b5 bd 00 00                 call   0x35358c ; STRING getter=0x35358c Walk on water
3477d7  48 8b c8                       mov    rcx,rax
3477da  e8 a9 59 f9 ff                 call   0x2dd188
3477df  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3477e4  48 8d 15 8d bc 0a 00           lea    rdx,[rip+0xabc8d]        # 0x3f3478 ; CONFIG Bools.Jesus value(+0x48)
3477eb  45 33 c9                       xor    r9d,r9d
3477ee  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3477f3  45 33 c0                       xor    r8d,r8d
3477f6  48 8b c8                       mov    rcx,rax
3477f9  e8 16 59 07 00                 call   0x3bd114
3477fe  8b 05 e4 58 0b 00              mov    eax,DWORD PTR [rip+0xb58e4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347804  3b c6                          cmp    eax,esi
347806  75 0e                          jne    0x347816
347808  48 8d 0d 11 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb11]        # 0x2a3320
34780f  e8 f0 d7 01 00                 call   0x365004
347814  eb 25                          jmp    0x34783b
347816  3b c7                          cmp    eax,edi
347818  75 09                          jne    0x347823
34781a  48 8d 0d 4f bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb4f]        # 0x2a3370
347821  eb ec                          jmp    0x34780f
347823  48 8d 55 80                    lea    rdx,[rbp-0x80]
347827  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34782e  e8 ad c5 00 00                 call   0x353de0 ; STRING getter=0x353de0 Allows you to fly around with your WASD keys
347833  48 8b c8                       mov    rcx,rax
347836  e8 21 a9 fd ff                 call   0x32215c
34783b  48 8b d8                       mov    rbx,rax
34783e  8b 05 a4 58 0b 00              mov    eax,DWORD PTR [rip+0xb58a4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347844  3b c6                          cmp    eax,esi
347846  75 09                          jne    0x347851
347848  48 8d 0d a9 b6 f5 ff           lea    rcx,[rip+0xfffffffffff5b6a9]        # 0x2a2ef8
34784f  eb 0b                          jmp    0x34785c
347851  3b c7                          cmp    eax,edi
347853  75 0e                          jne    0x347863
347855  48 8d 0d ac b6 f5 ff           lea    rcx,[rip+0xfffffffffff5b6ac]        # 0x2a2f08
34785c  e8 a3 d7 01 00                 call   0x365004
347861  eb 1b                          jmp    0x34787e
347863  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
34786a  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347871  e8 5a c8 fa ff                 call   0x2f40d0
347876  48 8b c8                       mov    rcx,rax
347879  e8 96 bd f9 ff                 call   0x2e3614
34787e  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347883  4c 8d 05 ee 81 0a 00           lea    r8,[rip+0xa81ee]        # 0x3efa78 ; CONFIG K.FlyVirtualKey value(+0x48)
34788a  45 33 c9                       xor    r9d,r9d
34788d  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347892  48 8d 15 1f bd 0a 00           lea    rdx,[rip+0xabd1f]        # 0x3f35b8 ; CONFIG Bools.Flyhack value(+0x48)
347899  48 8b c8                       mov    rcx,rax
34789c  e8 73 58 07 00                 call   0x3bd114
3478a1  44 38 35 10 bd 0a 00           cmp    BYTE PTR [rip+0xabd10],r14b        # 0x3f35b8 ; CONFIG Bools.Flyhack value(+0x48)
3478a8  0f 84 1a 02 00 00              je     0x347ac8
3478ae  8b 05 34 58 0b 00              mov    eax,DWORD PTR [rip+0xb5834]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3478b4  3b c6                          cmp    eax,esi
3478b6  75 0e                          jne    0x3478c6
3478b8  48 8d 0d d1 ba f5 ff           lea    rcx,[rip+0xfffffffffff5bad1]        # 0x2a3390
3478bf  e8 40 d7 01 00                 call   0x365004
3478c4  eb 25                          jmp    0x3478eb
3478c6  3b c7                          cmp    eax,edi
3478c8  75 09                          jne    0x3478d3
3478ca  48 8d 0d 1f bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb1f]        # 0x2a33f0
3478d1  eb ec                          jmp    0x3478bf
3478d3  48 8d 55 80                    lea    rdx,[rbp-0x80]
3478d7  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3478de  e8 1d c9 00 00                 call   0x354200 ; STRING getter=0x354200 Allows you to clip into objects with flyhack
3478e3  48 8b c8                       mov    rcx,rax
3478e6  e8 71 a8 fd ff                 call   0x32215c
3478eb  48 8b d8                       mov    rbx,rax
3478ee  8b 05 f4 57 0b 00              mov    eax,DWORD PTR [rip+0xb57f4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3478f4  3b c6                          cmp    eax,esi
3478f6  75 09                          jne    0x347901
3478f8  48 8d 0d 11 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb11]        # 0x2a3410
3478ff  eb 0b                          jmp    0x34790c
347901  3b c7                          cmp    eax,edi
347903  75 0e                          jne    0x347913
347905  48 8d 0d 2c bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb2c]        # 0x2a3438
34790c  e8 f3 d6 01 00                 call   0x365004
347911  eb 19                          jmp    0x34792c
347913  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
347918  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34791f  e8 18 c7 00 00                 call   0x35403c ; STRING getter=0x35403c Disable Collisions
347924  48 8b c8                       mov    rcx,rax
347927  e8 68 64 f8 ff                 call   0x2cdd94
34792c  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347931  4c 8d 05 00 7f 0a 00           lea    r8,[rip+0xa7f00]        # 0x3ef838 ; CONFIG K.NoCollisionNoclipKey value(+0x48)
347938  45 33 c9                       xor    r9d,r9d
34793b  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347940  48 8d 15 41 ab 0a 00           lea    rdx,[rip+0xaab41]        # 0x3f2488 ; CONFIG Bools.SmoothFlyhack value(+0x48)
347947  48 8b c8                       mov    rcx,rax
34794a  e8 c5 57 07 00                 call   0x3bd114
34794f  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347956  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34795d  e8 f6 a9 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
347962  48 8b c8                       mov    rcx,rax
347965  e8 82 bc f9 ff                 call   0x2e35ec
34796a  8b 0d 78 57 0b 00              mov    ecx,DWORD PTR [rip+0xb5778]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347970  48 8b d8                       mov    rbx,rax
347973  3b ce                          cmp    ecx,esi
347975  75 09                          jne    0x347980
347977  48 8d 0d ca ba f5 ff           lea    rcx,[rip+0xfffffffffff5baca]        # 0x2a3448
34797e  eb 0b                          jmp    0x34798b
347980  3b cf                          cmp    ecx,edi
347982  75 0e                          jne    0x347992
347984  48 8d 0d dd ba f5 ff           lea    rcx,[rip+0xfffffffffff5badd]        # 0x2a3468
34798b  e8 74 d6 01 00                 call   0x365004
347990  eb 19                          jmp    0x3479ab
347992  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
347997  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34799e  e8 d1 ca 00 00                 call   0x354474 ; STRING getter=0x354474 Fly Speed
3479a3  48 8b c8                       mov    rcx,rax
3479a6  e8 99 63 f8 ff                 call   0x2cdd44
3479ab  f3 0f 10 35 4d b8 f4 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff4b84d]        # 0x293200 ; f32=75
3479b3  48 8d 15 6e c4 0a 00           lea    rdx,[rip+0xac46e]        # 0x3f3e28 ; CONFIG F.NoclipNormalSpeed value(+0x48)
3479ba  0f 28 de                       movaps xmm3,xmm6
3479bd  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
3479c2  0f 57 d2                       xorps  xmm2,xmm2
3479c5  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3479ca  48 8b c8                       mov    rcx,rax
3479cd  e8 22 ca 07 00                 call   0x3c43f4
3479d2  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
3479d9  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3479e0  e8 73 a9 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
3479e5  48 8b c8                       mov    rcx,rax
3479e8  e8 ff bb f9 ff                 call   0x2e35ec
3479ed  8b 0d f5 56 0b 00              mov    ecx,DWORD PTR [rip+0xb56f5]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3479f3  48 8b d8                       mov    rbx,rax
3479f6  3b ce                          cmp    ecx,esi
3479f8  75 09                          jne    0x347a03
3479fa  48 8d 0d 77 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba77]        # 0x2a3478
347a01  eb 0b                          jmp    0x347a0e
347a03  3b cf                          cmp    ecx,edi
347a05  75 0e                          jne    0x347a15
347a07  48 8d 0d 9a ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba9a]        # 0x2a34a8
347a0e  e8 f1 d5 01 00                 call   0x365004
347a13  eb 19                          jmp    0x347a2e
347a15  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
347a1a  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347a21  e8 b6 cb 00 00                 call   0x3545dc ; STRING getter=0x3545dc Shift Fly Speed
347a26  48 8b c8                       mov    rcx,rax
347a29  e8 32 57 f9 ff                 call   0x2dd160
347a2e  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
347a33  48 8d 15 8e c4 0a 00           lea    rdx,[rip+0xac48e]        # 0x3f3ec8 ; CONFIG F.NoclipShiftSpeed value(+0x48)
347a3a  0f 28 de                       movaps xmm3,xmm6
347a3d  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347a42  0f 57 d2                       xorps  xmm2,xmm2
347a45  48 8b c8                       mov    rcx,rax
347a48  e8 a7 c9 07 00                 call   0x3c43f4
347a4d  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347a54  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347a5b  e8 f8 a8 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
347a60  48 8b c8                       mov    rcx,rax
347a63  e8 84 bb f9 ff                 call   0x2e35ec
347a68  8b 0d 7a 56 0b 00              mov    ecx,DWORD PTR [rip+0xb567a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347a6e  48 8b d8                       mov    rbx,rax
347a71  3b ce                          cmp    ecx,esi
347a73  75 09                          jne    0x347a7e
347a75  48 8d 0d 44 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba44]        # 0x2a34c0
347a7c  eb 0b                          jmp    0x347a89
347a7e  3b cf                          cmp    ecx,edi
347a80  75 0e                          jne    0x347a90
347a82  48 8d 0d 67 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba67]        # 0x2a34f0
347a89  e8 76 d5 01 00                 call   0x365004
347a8e  eb 19                          jmp    0x347aa9
347a90  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
347a95  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347a9c  e8 2f cd 00 00                 call   0x3547d0 ; STRING getter=0x3547d0 Ctrl Fly Speed
347aa1  48 8b c8                       mov    rcx,rax
347aa4  e8 c3 0b f9 ff                 call   0x2d866c
347aa9  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
347aae  48 8d 15 c3 c3 0a 00           lea    rdx,[rip+0xac3c3]        # 0x3f3e78 ; CONFIG F.NoclipSlowSpeed value(+0x48)
347ab5  0f 28 de                       movaps xmm3,xmm6
347ab8  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347abd  0f 57 d2                       xorps  xmm2,xmm2
347ac0  48 8b c8                       mov    rcx,rax
347ac3  e8 2c c9 07 00                 call   0x3c43f4
347ac8  8b 05 1a 56 0b 00              mov    eax,DWORD PTR [rip+0xb561a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347ace  3b c6                          cmp    eax,esi
347ad0  75 0e                          jne    0x347ae0
347ad2  48 8d 0d 37 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba37]        # 0x2a3510
347ad9  e8 26 d5 01 00                 call   0x365004
347ade  eb 25                          jmp    0x347b05
347ae0  3b c7                          cmp    eax,edi
347ae2  75 09                          jne    0x347aed
347ae4  48 8d 0d 1d bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb1d]        # 0x2a3608
347aeb  eb ec                          jmp    0x347ad9
347aed  48 8d 55 80                    lea    rdx,[rbp-0x80]
347af1  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347af8  e8 43 d0 00 00                 call   0x354b40 ; STRING getter=0x354b40 Allows you to flyhack freely and interact with doors/furnaces ETC through walls at small distances
347afd  48 8b c8                       mov    rcx,rax
347b00  e8 57 c6 01 00                 call   0x36415c
347b05  48 8b d8                       mov    rbx,rax
347b08  8b 05 da 55 0b 00              mov    eax,DWORD PTR [rip+0xb55da]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347b0e  3b c6                          cmp    eax,esi
347b10  75 09                          jne    0x347b1b
347b12  48 8d 0d 2f bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb2f]        # 0x2a3648
347b19  eb 0b                          jmp    0x347b26
347b1b  3b c7                          cmp    eax,edi
347b1d  75 0e                          jne    0x347b2d
347b1f  48 8d 0d 42 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb42]        # 0x2a3668
347b26  e8 d9 d4 01 00                 call   0x365004
347b2b  eb 19                          jmp    0x347b46
347b2d  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347b32  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347b39  e8 d2 cd 00 00                 call   0x354910 ; STRING getter=0x354910 Interactive
347b3e  48 8b c8                       mov    rcx,rax
347b41  e8 ee 62 f8 ff                 call   0x2cde34
347b46  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347b4b  4c 8d 05 46 07 09 00           lea    r8,[rip+0x90746]        # 0x3d8298 ; CONFIG K.InteractiveVirtualKey value(+0x48)
347b52  45 33 c9                       xor    r9d,r9d
347b55  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347b5a  48 8d 15 a7 bf 0a 00           lea    rdx,[rip+0xabfa7]        # 0x3f3b08 ; CONFIG Bools.interactive value(+0x48)
347b61  48 8b c8                       mov    rcx,rax
347b64  e8 ab 55 07 00                 call   0x3bd114
347b69  44 38 35 98 bf 0a 00           cmp    BYTE PTR [rip+0xabf98],r14b        # 0x3f3b08 ; CONFIG Bools.interactive value(+0x48)
347b70  0f 84 fe 00 00 00              je     0x347c74
347b76  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347b7d  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347b84  e8 cf a7 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
347b89  48 8b c8                       mov    rcx,rax
347b8c  e8 5b ba f9 ff                 call   0x2e35ec
347b91  8b 15 51 55 0b 00              mov    edx,DWORD PTR [rip+0xb5551]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347b97  48 8b d8                       mov    rbx,rax
347b9a  3b d6                          cmp    edx,esi
347b9c  75 09                          jne    0x347ba7
347b9e  48 8d 0d 63 b6 f5 ff           lea    rcx,[rip+0xfffffffffff5b663]        # 0x2a3208
347ba5  eb 0b                          jmp    0x347bb2
347ba7  3b d7                          cmp    edx,edi
347ba9  75 0e                          jne    0x347bb9
347bab  48 8d 0d 7a b6 f5 ff           lea    rcx,[rip+0xfffffffffff5b67a]        # 0x2a322c
347bb2  e8 4d d4 01 00                 call   0x365004
347bb7  eb 19                          jmp    0x347bd2
347bb9  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347bbe  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347bc5  e8 32 d5 00 00                 call   0x3550fc ; STRING getter=0x3550fc Fast Speed
347bca  48 8b c8                       mov    rcx,rax
347bcd  e8 82 20 fa ff                 call   0x2e9c54
347bd2  f3 0f 10 35 56 b6 f4 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff4b656]        # 0x293230 ; f32=200
347bda  48 8d 15 d7 c3 0a 00           lea    rdx,[rip+0xac3d7]        # 0x3f3fb8 ; CONFIG F.InteractiveNoclipShiftSpeed value(+0x48)
347be1  0f 28 de                       movaps xmm3,xmm6
347be4  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
347be9  0f 57 d2                       xorps  xmm2,xmm2
347bec  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347bf1  48 8b c8                       mov    rcx,rax
347bf4  e8 fb c7 07 00                 call   0x3c43f4
347bf9  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
347c00  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347c07  e8 4c a7 00 00                 call   0x352358 ; STRING getter=0x352358 %.3f
347c0c  48 8b c8                       mov    rcx,rax
347c0f  e8 d8 b9 f9 ff                 call   0x2e35ec
347c14  8b 0d ce 54 0b 00              mov    ecx,DWORD PTR [rip+0xb54ce]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347c1a  48 8b d8                       mov    rbx,rax
347c1d  3b ce                          cmp    ecx,esi
347c1f  75 09                          jne    0x347c2a
347c21  48 8d 0d 48 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba48]        # 0x2a3670
347c28  eb 0b                          jmp    0x347c35
347c2a  3b cf                          cmp    ecx,edi
347c2c  75 0e                          jne    0x347c3c
347c2e  48 8d 0d 63 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba63]        # 0x2a3698
347c35  e8 ca d3 01 00                 call   0x365004
347c3a  eb 19                          jmp    0x347c55
347c3c  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
347c41  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347c48  e8 f3 d6 00 00                 call   0x355340 ; STRING getter=0x355340 Normal Speed
347c4d  48 8b c8                       mov    rcx,rax
347c50  e8 9f 09 f9 ff                 call   0x2d85f4
347c55  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
347c5a  48 8d 15 b7 c2 0a 00           lea    rdx,[rip+0xac2b7]        # 0x3f3f18 ; CONFIG F.InteractiveNormalSpeed value(+0x48)
347c61  0f 28 de                       movaps xmm3,xmm6
347c64  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347c69  0f 57 d2                       xorps  xmm2,xmm2
347c6c  48 8b c8                       mov    rcx,rax
347c6f  e8 80 c7 07 00                 call   0x3c43f4
347c74  8b 05 6e 54 0b 00              mov    eax,DWORD PTR [rip+0xb546e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347c7a  3b c6                          cmp    eax,esi
347c7c  75 0e                          jne    0x347c8c
347c7e  48 8d 0d 2b ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba2b]        # 0x2a36b0
347c85  e8 7a d3 01 00                 call   0x365004
347c8a  eb 28                          jmp    0x347cb4
347c8c  3b c7                          cmp    eax,edi
347c8e  75 09                          jne    0x347c99
347c90  48 8d 0d 71 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba71]        # 0x2a3708
347c97  eb ec                          jmp    0x347c85
347c99  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
347ca0  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347ca7  e8 c4 d9 00 00                 call   0x355670 ; STRING getter=0x355670 Allows you to sprint in any direction
347cac  48 8b c8                       mov    rcx,rax
347caf  e8 70 c0 01 00                 call   0x363d24
347cb4  48 8b d8                       mov    rbx,rax
347cb7  8b 05 2b 54 0b 00              mov    eax,DWORD PTR [rip+0xb542b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347cbd  3b c6                          cmp    eax,esi
347cbf  75 09                          jne    0x347cca
347cc1  48 8d 0d 58 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba58]        # 0x2a3720
347cc8  eb 0b                          jmp    0x347cd5
347cca  3b c7                          cmp    eax,edi
347ccc  75 0e                          jne    0x347cdc
347cce  48 8d 0d 83 ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba83]        # 0x2a3758
347cd5  e8 2a d3 01 00                 call   0x365004
347cda  eb 18                          jmp    0x347cf4
347cdc  48 8d 55 80                    lea    rdx,[rbp-0x80]
347ce0  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347ce7  e8 70 d7 00 00                 call   0x35545c ; STRING getter=0x35545c Omni Directional Sprint
347cec  48 8b c8                       mov    rcx,rax
347cef  e8 f0 87 fd ff                 call   0x3204e4
347cf4  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347cf9  48 8d 15 88 bb 0a 00           lea    rdx,[rip+0xabb88]        # 0x3f3888 ; CONFIG Bools.OmniSprint value(+0x48)
347d00  45 33 c9                       xor    r9d,r9d
347d03  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347d08  45 33 c0                       xor    r8d,r8d
347d0b  48 8b c8                       mov    rcx,rax
347d0e  e8 01 54 07 00                 call   0x3bd114
347d13  8b 05 cf 53 0b 00              mov    eax,DWORD PTR [rip+0xb53cf]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347d19  3b c6                          cmp    eax,esi
347d1b  75 0e                          jne    0x347d2b
347d1d  48 8d 0d 4c ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba4c]        # 0x2a3770
347d24  e8 db d2 01 00                 call   0x365004
347d29  eb 25                          jmp    0x347d50
347d2b  3b c7                          cmp    eax,edi
347d2d  75 09                          jne    0x347d38
347d2f  48 8d 0d ca ba f5 ff           lea    rcx,[rip+0xfffffffffff5baca]        # 0x2a3800
347d36  eb ec                          jmp    0x347d24
347d38  48 8d 55 80                    lea    rdx,[rbp-0x80]
347d3c  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347d43  e8 48 dc 00 00                 call   0x355990 ; STRING getter=0x355990 Spoofs your modelstate to OnLadder(your footsteps cannot be heard)
347d48  48 8b c8                       mov    rcx,rax
347d4b  e8 a4 c2 01 00                 call   0x363ff4
347d50  48 8b d8                       mov    rbx,rax
347d53  8b 05 8f 53 0b 00              mov    eax,DWORD PTR [rip+0xb538f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347d59  3b c6                          cmp    eax,esi
347d5b  75 09                          jne    0x347d66
347d5d  48 8d 0d d4 ba f5 ff           lea    rcx,[rip+0xfffffffffff5bad4]        # 0x2a3838
347d64  eb 0b                          jmp    0x347d71
347d66  3b c7                          cmp    eax,edi
347d68  75 0e                          jne    0x347d78
347d6a  48 8d 0d df ba f5 ff           lea    rcx,[rip+0xfffffffffff5badf]        # 0x2a3850
347d71  e8 8e d2 01 00                 call   0x365004
347d76  eb 19                          jmp    0x347d91
347d78  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
347d7d  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347d84  e8 8b da 00 00                 call   0x355814 ; STRING getter=0x355814 On Ladder
347d89  48 8b c8                       mov    rcx,rax
347d8c  e8 b3 5f f8 ff                 call   0x2cdd44
347d91  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347d96  4c 8d 05 fb 7d 0a 00           lea    r8,[rip+0xa7dfb]        # 0x3efb98 ; CONFIG K.laddervirtualkey value(+0x48)
347d9d  45 33 c9                       xor    r9d,r9d
347da0  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347da5  48 8d 15 bc bc 0a 00           lea    rdx,[rip+0xabcbc]        # 0x3f3a68 ; CONFIG Bools.ladder value(+0x48)
347dac  48 8b c8                       mov    rcx,rax
347daf  e8 60 53 07 00                 call   0x3bd114
347db4  44 38 35 ad bc 0a 00           cmp    BYTE PTR [rip+0xabcad],r14b        # 0x3f3a68 ; CONFIG Bools.ladder value(+0x48)
347dbb  0f 84 9d 00 00 00              je     0x347e5e
347dc1  8b 05 21 53 0b 00              mov    eax,DWORD PTR [rip+0xb5321]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347dc7  3b c6                          cmp    eax,esi
347dc9  75 0e                          jne    0x347dd9
347dcb  48 8d 0d 8e ba f5 ff           lea    rcx,[rip+0xfffffffffff5ba8e]        # 0x2a3860
347dd2  e8 2d d2 01 00                 call   0x365004
347dd7  eb 25                          jmp    0x347dfe
347dd9  3b c7                          cmp    eax,edi
347ddb  75 09                          jne    0x347de6
347ddd  48 8d 0d 24 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb24]        # 0x2a3908
347de4  eb ec                          jmp    0x347dd2
347de6  48 8d 55 80                    lea    rdx,[rbp-0x80]
347dea  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347df1  e8 f6 de 00 00                 call   0x355cec ; STRING getter=0x355cec Changes the effect of your onladder mode(must touch a ladder one time on the server beforehand)
347df6  48 8b c8                       mov    rcx,rax
347df9  e8 0e c3 01 00                 call   0x36410c
347dfe  48 8b d8                       mov    rbx,rax
347e01  8b 05 e1 52 0b 00              mov    eax,DWORD PTR [rip+0xb52e1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347e07  3b c6                          cmp    eax,esi
347e09  75 09                          jne    0x347e14
347e0b  48 8d 0d 2e bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb2e]        # 0x2a3940
347e12  eb 0b                          jmp    0x347e1f
347e14  3b c7                          cmp    eax,edi
347e16  75 0e                          jne    0x347e26
347e18  48 8d 0d 41 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb41]        # 0x2a3960
347e1f  e8 e0 d1 01 00                 call   0x365004
347e24  eb 19                          jmp    0x347e3f
347e26  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
347e2b  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347e32  e8 41 dd 00 00                 call   0x355b78 ; STRING getter=0x355b78 Dick mode
347e37  48 8b c8                       mov    rcx,rax
347e3a  e8 05 5f f8 ff                 call   0x2cdd44
347e3f  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347e44  48 8d 15 cd b1 0a 00           lea    rdx,[rip+0xab1cd]        # 0x3f3018 ; CONFIG Bools.ropemode value(+0x48)
347e4b  45 33 c9                       xor    r9d,r9d
347e4e  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347e53  45 33 c0                       xor    r8d,r8d
347e56  48 8b c8                       mov    rcx,rax
347e59  e8 b6 52 07 00                 call   0x3bd114
347e5e  8b 05 84 52 0b 00              mov    eax,DWORD PTR [rip+0xb5284]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347e64  3b c6                          cmp    eax,esi
347e66  75 0e                          jne    0x347e76
347e68  48 8d 0d 01 bb f5 ff           lea    rcx,[rip+0xfffffffffff5bb01]        # 0x2a3970
347e6f  e8 90 d1 01 00                 call   0x365004
347e74  eb 25                          jmp    0x347e9b
347e76  3b c7                          cmp    eax,edi
347e78  75 09                          jne    0x347e83
347e7a  48 8d 0d 3f bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc3f]        # 0x2a3ac0
347e81  eb ec                          jmp    0x347e6f
347e83  48 8d 55 00                    lea    rdx,[rbp+0x0]
347e87  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347e8e  e8 39 e2 00 00                 call   0x3560cc ; STRING getter=0x3560cc Allows you to teleport 5 meters, once the cheat says you've reached 66 mark, itll auto teleport you back, so make sure not to pass it up!
347e93  48 8b c8                       mov    rcx,rax
347e96  e8 29 c4 01 00                 call   0x3642c4
347e9b  48 8b d8                       mov    rbx,rax
347e9e  8b 05 44 52 0b 00              mov    eax,DWORD PTR [rip+0xb5244]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347ea4  3b c6                          cmp    eax,esi
347ea6  75 09                          jne    0x347eb1
347ea8  48 8d 0d 71 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc71]        # 0x2a3b20
347eaf  eb 0b                          jmp    0x347ebc
347eb1  3b c7                          cmp    eax,edi
347eb3  75 0e                          jne    0x347ec3
347eb5  48 8d 0d 78 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc78]        # 0x2a3b34
347ebc  e8 43 d1 01 00                 call   0x365004
347ec1  eb 19                          jmp    0x347edc
347ec3  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
347ec8  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347ecf  e8 fc df 00 00                 call   0x355ed0 ; STRING getter=0x355ed0 Teleport
347ed4  48 8b c8                       mov    rcx,rax
347ed7  e8 b0 1c fa ff                 call   0x2e9b8c
347edc  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347ee1  4c 8d 05 50 7c 0a 00           lea    r8,[rip+0xa7c50]        # 0x3efb38 ; CONFIG K.TeleportVirtualKey value(+0x48)
347ee8  45 33 c9                       xor    r9d,r9d
347eeb  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347ef0  48 8d 15 41 b9 0a 00           lea    rdx,[rip+0xab941]        # 0x3f3838 ; CONFIG Bools.teleport5m value(+0x48)
347ef7  48 8b c8                       mov    rcx,rax
347efa  e8 15 52 07 00                 call   0x3bd114
347eff  8b ce                          mov    ecx,esi
347f01  e8 06 0a 05 00                 call   0x39890c
347f06  8b 05 dc 51 0b 00              mov    eax,DWORD PTR [rip+0xb51dc]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347f0c  3b c6                          cmp    eax,esi
347f0e  75 0e                          jne    0x347f1e
347f10  48 8d 0d 29 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc29]        # 0x2a3b40
347f17  e8 e8 d0 01 00                 call   0x365004
347f1c  eb 25                          jmp    0x347f43
347f1e  3b c7                          cmp    eax,edi
347f20  75 09                          jne    0x347f2b
347f22  48 8d 0d cf bc f5 ff           lea    rcx,[rip+0xfffffffffff5bccf]        # 0x2a3bf8
347f29  eb ec                          jmp    0x347f17
347f2b  48 8d 55 80                    lea    rdx,[rbp-0x80]
347f2f  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347f36  e8 2d e8 00 00                 call   0x356768 ; STRING getter=0x356768 Sets your player as crouching, you can go full speed.
347f3b  48 8b c8                       mov    rcx,rax
347f3e  e8 99 bf 01 00                 call   0x363edc
347f43  48 8b d8                       mov    rbx,rax
347f46  8b 05 9c 51 0b 00              mov    eax,DWORD PTR [rip+0xb519c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347f4c  3b c6                          cmp    eax,esi
347f4e  75 09                          jne    0x347f59
347f50  48 8d 0d d1 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcd1]        # 0x2a3c28
347f57  eb 0b                          jmp    0x347f64
347f59  3b c7                          cmp    eax,edi
347f5b  75 0e                          jne    0x347f6b
347f5d  48 8d 0d ec bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcec]        # 0x2a3c50
347f64  e8 9b d0 01 00                 call   0x365004
347f69  eb 19                          jmp    0x347f84
347f6b  48 8d 54 24 3a                 lea    rdx,[rsp+0x3a]
347f70  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347f77  e8 9c e6 00 00                 call   0x356618 ; STRING getter=0x356618 Crouch Mode
347f7c  48 8b c8                       mov    rcx,rax
347f7f  e8 b0 5e f8 ff                 call   0x2cde34
347f84  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
347f89  4c 8d 05 c8 76 0a 00           lea    r8,[rip+0xa76c8]        # 0x3ef658 ; CONFIG K.CrouchKey value(+0x48)
347f90  45 33 c9                       xor    r9d,r9d
347f93  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
347f98  48 8d 15 19 bb 0a 00           lea    rdx,[rip+0xabb19]        # 0x3f3ab8 ; CONFIG Bools.CrouchMode value(+0x48)
347f9f  48 8b c8                       mov    rcx,rax
347fa2  e8 6d 51 07 00                 call   0x3bd114
347fa7  8b 05 3b 51 0b 00              mov    eax,DWORD PTR [rip+0xb513b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347fad  3b c6                          cmp    eax,esi
347faf  75 0e                          jne    0x347fbf
347fb1  48 8d 0d a8 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bca8]        # 0x2a3c60
347fb8  e8 47 d0 01 00                 call   0x365004
347fbd  eb 25                          jmp    0x347fe4
347fbf  3b c7                          cmp    eax,edi
347fc1  75 09                          jne    0x347fcc
347fc3  48 8d 0d ee bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcee]        # 0x2a3cb8
347fca  eb ec                          jmp    0x347fb8
347fcc  48 8d 55 80                    lea    rdx,[rbp-0x80]
347fd0  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
347fd7  e8 90 ea 00 00                 call   0x356a6c ; STRING getter=0x356a6c Allows you climb walls like SPOODERMAN
347fdc  48 8b c8                       mov    rcx,rax
347fdf  e8 50 a1 fd ff                 call   0x322134
347fe4  48 8b d8                       mov    rbx,rax
347fe7  8b 05 fb 50 0b 00              mov    eax,DWORD PTR [rip+0xb50fb]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
347fed  3b c6                          cmp    eax,esi
347fef  75 09                          jne    0x347ffa
347ff1  48 8d 0d d8 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcd8]        # 0x2a3cd0
347ff8  eb 0b                          jmp    0x348005
347ffa  3b c7                          cmp    eax,edi
347ffc  75 0e                          jne    0x34800c
347ffe  48 8d 0d eb bc f5 ff           lea    rcx,[rip+0xfffffffffff5bceb]        # 0x2a3cf0
348005  e8 fa cf 01 00                 call   0x365004
34800a  eb 19                          jmp    0x348025
34800c  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
348011  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
348018  e8 0b e9 00 00                 call   0x356928 ; STRING getter=0x356928 Spiderman
34801d  48 8b c8                       mov    rcx,rax
348020  e8 1f 5d f8 ff                 call   0x2cdd44
348025  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
34802a  4c 8d 05 a7 7a 0a 00           lea    r8,[rip+0xa7aa7]        # 0x3efad8 ; CONFIG K.SpidermanVirtualKey value(+0x48)
348031  45 33 c9                       xor    r9d,r9d
348034  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
348039  48 8d 15 08 b2 0a 00           lea    rdx,[rip+0xab208]        # 0x3f3248 ; CONFIG Bools.Spiderman value(+0x48)
348040  48 8b c8                       mov    rcx,rax
348043  e8 cc 50 07 00                 call   0x3bd114
348048  8b 05 9a 50 0b 00              mov    eax,DWORD PTR [rip+0xb509a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34804e  3b c6                          cmp    eax,esi
348050  75 0e                          jne    0x348060
348052  48 8d 0d a7 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bca7]        # 0x2a3d00
348059  e8 a6 cf 01 00                 call   0x365004
34805e  eb 25                          jmp    0x348085
348060  3b c7                          cmp    eax,edi
348062  75 09                          jne    0x34806d
348064  48 8d 0d fd bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcfd]        # 0x2a3d68
34806b  eb ec                          jmp    0x348059
34806d  48 8d 55 80                    lea    rdx,[rbp-0x80]
348071  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
348078  e8 eb ec 00 00                 call   0x356d68 ; STRING getter=0x356d68 Lets you jump instantly after another jump
34807d  48 8b c8                       mov    rcx,rax
348080  e8 17 bd 01 00                 call   0x363d9c
348085  48 8b d8                       mov    rbx,rax
348088  8b 05 5a 50 0b 00              mov    eax,DWORD PTR [rip+0xb505a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34808e  3b c6                          cmp    eax,esi
348090  75 09                          jne    0x34809b
348092  48 8d 0d ef bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcef]        # 0x2a3d88
348099  eb 0b                          jmp    0x3480a6
34809b  3b c7                          cmp    eax,edi
34809d  75 0e                          jne    0x3480ad
34809f  48 8d 0d 0a bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd0a]        # 0x2a3db0
3480a6  e8 59 cf 01 00                 call   0x365004
3480ab  eb 19                          jmp    0x3480c6
3480ad  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3480b2  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3480b9  e8 36 eb 00 00                 call   0x356bf4 ; STRING getter=0x356bf4 Inf Jump
3480be  48 8b c8                       mov    rcx,rax
3480c1  e8 c6 1a fa ff                 call   0x2e9b8c
3480c6  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3480cb  4c 8d 05 a6 76 0a 00           lea    r8,[rip+0xa76a6]        # 0x3ef778 ; CONFIG K.InfJumpVirtualKey value(+0x48)
3480d2  45 33 c9                       xor    r9d,r9d
3480d5  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3480da  48 8d 15 87 b4 0a 00           lea    rdx,[rip+0xab487]        # 0x3f3568 ; CONFIG Bools.InjJump value(+0x48)
3480e1  48 8b c8                       mov    rcx,rax
3480e4  e8 2b 50 07 00                 call   0x3bd114
3480e9  8b 05 f9 4f 0b 00              mov    eax,DWORD PTR [rip+0xb4ff9]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3480ef  3b c6                          cmp    eax,esi
3480f1  75 0e                          jne    0x348101
3480f3  48 8d 0d c6 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bcc6]        # 0x2a3dc0
3480fa  e8 05 cf 01 00                 call   0x365004
3480ff  eb 25                          jmp    0x348126
348101  3b c7                          cmp    eax,edi
348103  75 09                          jne    0x34810e
348105  48 8d 0d 54 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd54]        # 0x2a3e60
34810c  eb ec                          jmp    0x3480fa
34810e  48 8d 55 80                    lea    rdx,[rbp-0x80]
348112  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
348119  e8 36 ef 00 00                 call   0x357054 ; STRING getter=0x357054 Automatically makes you jump every so often so you don't get kicked for being AFK
34811e  48 8b c8                       mov    rcx,rax
348121  e8 46 bf 01 00                 call   0x36406c
348126  48 8b d8                       mov    rbx,rax
348129  8b 05 b9 4f 0b 00              mov    eax,DWORD PTR [rip+0xb4fb9]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34812f  3b c6                          cmp    eax,esi
348131  75 09                          jne    0x34813c
348133  48 8d 0d 4e bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd4e]        # 0x2a3e88
34813a  eb 0b                          jmp    0x348147
34813c  3b c7                          cmp    eax,edi
34813e  75 0e                          jne    0x34814e
348140  48 8d 0d 59 bd f5 ff           lea    rcx,[rip+0xfffffffffff5bd59]        # 0x2a3ea0
348147  e8 b8 ce 01 00                 call   0x365004
34814c  eb 19                          jmp    0x348167
34814e  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
348153  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34815a  e8 bd ed 00 00                 call   0x356f1c ; STRING getter=0x356f1c Anti AFK
34815f  48 8b c8                       mov    rcx,rax
348162  e8 25 1a fa ff                 call   0x2e9b8c
348167  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
34816c  48 8d 15 95 cd 09 00           lea    rdx,[rip+0x9cd95]        # 0x3e4f08 ; CONFIG Bools.AntiAFK value(+0x48)
348173  45 33 c9                       xor    r9d,r9d
348176  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34817b  45 33 c0                       xor    r8d,r8d
34817e  48 8b c8                       mov    rcx,rax
348181  e8 8e 4f 07 00                 call   0x3bd114
348186  e8 c1 f0 03 00                 call   0x38724c
34818b  0f 28 cf                       movaps xmm1,xmm7
34818e  0f 57 c0                       xorps  xmm0,xmm0
348191  e8 6e 2a 05 00                 call   0x39ac04
348196  0f 28 d7                       movaps xmm2,xmm7
348199  48 8d 8d 78 01 00 00           lea    rcx,[rbp+0x178]
3481a0  0f 57 c9                       xorps  xmm1,xmm1
3481a3  e8 98 41 f8 ff                 call   0x2cc340
3481a8  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
3481ac  8b 05 36 4f 0b 00              mov    eax,DWORD PTR [rip+0xb4f36]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3481b2  3b c6                          cmp    eax,esi
3481b4  75 0e                          jne    0x3481c4
3481b6  48 8d 0d 9b a4 f5 ff           lea    rcx,[rip+0xfffffffffff5a49b]        # 0x2a2658
3481bd  e8 42 ce 01 00                 call   0x365004
3481c2  eb 26                          jmp    0x3481ea
3481c4  3b c7                          cmp    eax,edi
3481c6  75 09                          jne    0x3481d1
3481c8  48 8d 0d 9d a4 f5 ff           lea    rcx,[rip+0xfffffffffff5a49d]        # 0x2a266c
3481cf  eb ec                          jmp    0x3481bd
3481d1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3481d6  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3481dd  e8 76 f1 00 00                 call   0x357358 ; STRING getter=0x357358 Removals
3481e2  48 8b c8                       mov    rcx,rax
3481e5  e8 a2 19 fa ff                 call   0x2e9b8c
3481ea  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
3481f1  48 8b d8                       mov    rbx,rax
3481f4  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3481fb  e8 34 86 00 00                 call   0x350834 ; STRING getter=0x350834 X
348200  48 8b c8                       mov    rcx,rax
348203  e8 5c 02 f9 ff                 call   0x2d8464
348208  48 8b d0                       mov    rdx,rax
34820b  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34820f  e8 b8 40 f8 ff                 call   0x2cc2cc
348214  48 8b c8                       mov    rcx,rax
348217  44 8a ce                       mov    r9b,sil
34821a  66 49 0f 7e f0                 movq   r8,xmm6
34821f  48 8b d3                       mov    rdx,rbx
348222  e8 c9 cb 03 00                 call   0x384df0
348227  8b 05 bb 4e 0b 00              mov    eax,DWORD PTR [rip+0xb4ebb]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34822d  3b c6                          cmp    eax,esi
34822f  75 0e                          jne    0x34823f
348231  48 8d 0d 70 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc70]        # 0x2a3ea8
348238  e8 c7 cd 01 00                 call   0x365004
34823d  eb 26                          jmp    0x348265
34823f  3b c7                          cmp    eax,edi
348241  75 09                          jne    0x34824c
348243  48 8d 0d 96 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc96]        # 0x2a3ee0
34824a  eb ec                          jmp    0x348238
34824c  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
348251  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
348258  e8 e7 f5 00 00                 call   0x357844 ; STRING getter=0x357844 Take no fall damage
34825d  48 8b c8                       mov    rcx,rax
348260  e8 2f 82 fd ff                 call   0x320494
348265  48 8b d8                       mov    rbx,rax
348268  8b 05 7a 4e 0b 00              mov    eax,DWORD PTR [rip+0xb4e7a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34826e  3b c6                          cmp    eax,esi
348270  75 09                          jne    0x34827b
348272  48 8d 0d 7f bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc7f]        # 0x2a3ef8
348279  eb 0b                          jmp    0x348286
34827b  3b c7                          cmp    eax,edi
34827d  75 0e                          jne    0x34828d
34827f  48 8d 0d a2 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bca2]        # 0x2a3f28
348286  e8 79 cd 01 00                 call   0x365004
34828b  eb 1b                          jmp    0x3482a8
34828d  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
348294  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34829b  e8 84 f4 00 00                 call   0x357724
3482a0  48 8b c8                       mov    rcx,rax
3482a3  e8 6c b3 f9 ff                 call   0x2e3614
3482a8  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3482ad  48 8d 15 74 b1 0a 00           lea    rdx,[rip+0xab174]        # 0x3f3428 ; CONFIG Bools.NoFall value(+0x48)
3482b4  45 33 c9                       xor    r9d,r9d
3482b7  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3482bc  45 33 c0                       xor    r8d,r8d
3482bf  48 8b c8                       mov    rcx,rax
3482c2  e8 4d 4e 07 00                 call   0x3bd114
3482c7  8b 05 1b 4e 0b 00              mov    eax,DWORD PTR [rip+0xb4e1b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3482cd  3b c6                          cmp    eax,esi
3482cf  75 09                          jne    0x3482da
3482d1  48 8d 0d 60 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc60]        # 0x2a3f38
3482d8  eb 0b                          jmp    0x3482e5
3482da  3b c7                          cmp    eax,edi
3482dc  75 0e                          jne    0x3482ec
3482de  48 8d 0d 73 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc73]        # 0x2a3f58
3482e5  e8 1a cd 01 00                 call   0x365004
3482ea  eb 19                          jmp    0x348305
3482ec  48 8d 54 24 46                 lea    rdx,[rsp+0x46]
3482f1  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
3482f8  e8 57 f6 00 00                 call   0x357954 ; STRING getter=0x357954 No Collision
3482fd  48 8b c8                       mov    rcx,rax
348300  e8 ef 02 f9 ff                 call   0x2d85f4
348305  48 8d 0d 1c 50 f4 ff           lea    rcx,[rip+0xfffffffffff4501c]        # 0x28d328
34830c  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
348311  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
348316  48 8d 15 fb b1 0a 00           lea    rdx,[rip+0xab1fb]        # 0x3f3518 ; CONFIG Bools.NoCollision value(+0x48)
34831d  48 8b c8                       mov    rcx,rax
348320  45 33 c9                       xor    r9d,r9d
348323  45 33 c0                       xor    r8d,r8d
348326  e8 e9 4d 07 00                 call   0x3bd114
34832b  8b 05 b7 4d 0b 00              mov    eax,DWORD PTR [rip+0xb4db7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
348331  3b c6                          cmp    eax,esi
348333  75 0e                          jne    0x348343
348335  48 8d 0d 24 bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc24]        # 0x2a3f60
34833c  e8 c3 cc 01 00                 call   0x365004
348341  eb 25                          jmp    0x348368
348343  3b c7                          cmp    eax,edi
348345  75 09                          jne    0x348350
348347  48 8d 0d 8a bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc8a]        # 0x2a3fd8
34834e  eb ec                          jmp    0x34833c
348350  48 8d 55 80                    lea    rdx,[rbp-0x80]
348354  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34835b  e8 30 f8 00 00                 call   0x357b90 ; STRING getter=0x357b90 Gives you the ability to walk through spikes/fire without slowdown
348360  48 8b c8                       mov    rcx,rax
348363  e8 8c bc 01 00                 call   0x363ff4
348368  48 8b d8                       mov    rbx,rax
34836b  8b 05 77 4d 0b 00              mov    eax,DWORD PTR [rip+0xb4d77]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
348371  3b c6                          cmp    eax,esi
348373  75 09                          jne    0x34837e
348375  48 8d 0d 7c bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc7c]        # 0x2a3ff8
34837c  eb 0b                          jmp    0x348389
34837e  3b c7                          cmp    eax,edi
348380  75 0e                          jne    0x348390
348382  48 8d 0d 8f bc f5 ff           lea    rcx,[rip+0xfffffffffff5bc8f]        # 0x2a4018
348389  e8 76 cc 01 00                 call   0x365004
34838e  eb 1b                          jmp    0x3483ab
348390  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
348397  48 8d 8d 68 01 00 00           lea    rcx,[rbp+0x168]
34839e  e8 cd f6 00 00                 call   0x357a70
3483a3  48 8b c8                       mov    rcx,rax
3483a6  e8 69 b2 f9 ff                 call   0x2e3614
3483ab  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3483b0  48 8d 15 b1 ac 0a 00           lea    rdx,[rip+0xaacb1]        # 0x3f3068 ; CONFIG Bools.nospikeslow value(+0x48)
3483b7  45 33 c9                       xor    r9d,r9d
3483ba  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3483bf  45 33 c0                       xor    r8d,r8d
3483c2  48 8b c8                       mov    rcx,rax
3483c5  e8 4a 4d 07 00                 call   0x3bd114
3483ca  4c 8d 9c 24 30 02 00 00        lea    r11,[rsp+0x230]
3483d2  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
3483d7  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
3483dc  49 8b e3                       mov    rsp,r11
3483df  41 5e                          pop    r14
3483e1  5f                             pop    rdi
3483e2  5e                             pop    rsi
3483e3  5b                             pop    rbx
3483e4  5d                             pop    rbp
3483e5  e9 62 ee 03 00                 jmp    0x38724c

