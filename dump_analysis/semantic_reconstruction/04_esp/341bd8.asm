; pdata function 0x341bd8..0x34296d unwind=0x3d3c2c
341bd8  48 8b c4                       mov    rax,rsp
341bdb  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
341bdf  55                             push   rbp
341be0  56                             push   rsi
341be1  57                             push   rdi
341be2  41 56                          push   r14
341be4  41 57                          push   r15
341be6  48 8d 68 a1                    lea    rbp,[rax-0x5f]
341bea  48 81 ec 00 01 00 00           sub    rsp,0x100
341bf1  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
341bf5  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
341bfa  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
341bfe  0f 57 c9                       xorps  xmm1,xmm1
341c01  f3 0f 10 3d 57 16 f5 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff51657]        # 0x293260 ; f32=-1
341c09  0f 28 d7                       movaps xmm2,xmm7
341c0c  e8 2f a7 f8 ff                 call   0x2cc340
341c11  bf 02 00 00 00                 mov    edi,0x2
341c16  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
341c1a  8b 05 c8 b4 0b 00              mov    eax,DWORD PTR [rip+0xbb4c8]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341c20  8d 77 ff                       lea    esi,[rdi-0x1]
341c23  3b c6                          cmp    eax,esi
341c25  75 0e                          jne    0x341c35
341c27  48 8d 0d 1a b2 f5 ff           lea    rcx,[rip+0xfffffffffff5b21a]        # 0x29ce48
341c2e  e8 d1 33 02 00                 call   0x365004
341c33  eb 22                          jmp    0x341c57
341c35  3b c7                          cmp    eax,edi
341c37  75 09                          jne    0x341c42
341c39  48 8d 0d 14 b2 f5 ff           lea    rcx,[rip+0xfffffffffff5b214]        # 0x29ce54
341c40  eb ec                          jmp    0x341c2e
341c42  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
341c46  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341c4a  e8 e1 1b 01 00                 call   0x353830 ; STRING getter=0x353830 Radar
341c4f  48 8b c8                       mov    rcx,rax
341c52  e8 85 68 f9 ff                 call   0x2d84dc
341c57  48 8d 55 77                    lea    rdx,[rbp+0x77]
341c5b  48 8b d8                       mov    rbx,rax
341c5e  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341c62  e8 a5 ea 00 00                 call   0x35070c ; STRING getter=0x35070c C
341c67  48 8b c8                       mov    rcx,rax
341c6a  e8 f5 67 f9 ff                 call   0x2d8464
341c6f  48 8b d0                       mov    rdx,rax
341c72  48 8d 4d 87                    lea    rcx,[rbp-0x79]
341c76  e8 51 a6 f8 ff                 call   0x2cc2cc
341c7b  48 8b c8                       mov    rcx,rax
341c7e  44 8a ce                       mov    r9b,sil
341c81  66 49 0f 7e f0                 movq   r8,xmm6
341c86  48 8b d3                       mov    rdx,rbx
341c89  e8 62 31 04 00                 call   0x384df0
341c8e  8b 05 54 b4 0b 00              mov    eax,DWORD PTR [rip+0xbb454]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341c94  3b c6                          cmp    eax,esi
341c96  75 09                          jne    0x341ca1
341c98  48 8d 0d c1 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b1c1]        # 0x29ce60
341c9f  eb 0b                          jmp    0x341cac
341ca1  3b c7                          cmp    eax,edi
341ca3  75 0e                          jne    0x341cb3
341ca5  48 8d 0d d4 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b1d4]        # 0x29ce80
341cac  e8 53 33 02 00                 call   0x365004
341cb1  eb 16                          jmp    0x341cc9
341cb3  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341cb8  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341cbc  e8 d3 31 01 00                 call   0x354e94 ; STRING getter=0x354e94 EnableRadar
341cc1  48 8b c8                       mov    rcx,rax
341cc4  e8 6b c1 f8 ff                 call   0x2cde34
341cc9  45 33 f6                       xor    r14d,r14d
341ccc  4c 8d 3d 55 b6 f4 ff           lea    r15,[rip+0xfffffffffff4b655]        # 0x28d328
341cd3  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341cd8  48 8d 15 59 83 0a 00           lea    rdx,[rip+0xa8359]        # 0x3ea038 ; CONFIG Bools.radar value(+0x48)
341cdf  45 33 c9                       xor    r9d,r9d
341ce2  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341ce7  45 33 c0                       xor    r8d,r8d
341cea  48 8b c8                       mov    rcx,rax
341ced  e8 22 b4 07 00                 call   0x3bd114
341cf2  8b 05 f0 b3 0b 00              mov    eax,DWORD PTR [rip+0xbb3f0]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341cf8  3b c6                          cmp    eax,esi
341cfa  75 09                          jne    0x341d05
341cfc  48 8d 0d 8d b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b18d]        # 0x29ce90
341d03  eb 0b                          jmp    0x341d10
341d05  3b c7                          cmp    eax,edi
341d07  75 0e                          jne    0x341d17
341d09  48 8d 0d a8 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b1a8]        # 0x29ceb8
341d10  e8 ef 32 02 00                 call   0x365004
341d15  eb 16                          jmp    0x341d2d
341d17  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341d1c  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341d20  e8 4f 46 01 00                 call   0x356374 ; STRING getter=0x356374 Draw Scientist
341d25  48 8b c8                       mov    rcx,rax
341d28  e8 3f 69 f9 ff                 call   0x2d866c
341d2d  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341d32  48 8d 15 4f 83 0a 00           lea    rdx,[rip+0xa834f]        # 0x3ea088 ; CONFIG Bools.DrawScientist value(+0x48)
341d39  45 33 c9                       xor    r9d,r9d
341d3c  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341d41  45 33 c0                       xor    r8d,r8d
341d44  48 8b c8                       mov    rcx,rax
341d47  e8 c8 b3 07 00                 call   0x3bd114
341d4c  8b 05 96 b3 0b 00              mov    eax,DWORD PTR [rip+0xbb396]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341d52  3b c6                          cmp    eax,esi
341d54  75 09                          jne    0x341d5f
341d56  48 8d 0d 6b b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b16b]        # 0x29cec8
341d5d  eb 0b                          jmp    0x341d6a
341d5f  3b c7                          cmp    eax,edi
341d61  75 0e                          jne    0x341d71
341d63  48 8d 0d 96 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b196]        # 0x29cf00
341d6a  e8 95 32 02 00                 call   0x365004
341d6f  eb 16                          jmp    0x341d87
341d71  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341d76  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341d7a  e8 25 58 01 00                 call   0x3575a4 ; STRING getter=0x3575a4 Draw Other Entities
341d7f  48 8b c8                       mov    rcx,rax
341d82  e8 0d e7 fd ff                 call   0x320494
341d87  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341d8c  48 8d 15 35 66 0a 00           lea    rdx,[rip+0xa6635]        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
341d93  45 33 c9                       xor    r9d,r9d
341d96  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341d9b  45 33 c0                       xor    r8d,r8d
341d9e  48 8b c8                       mov    rcx,rax
341da1  e8 6e b3 07 00                 call   0x3bd114
341da6  8b 05 3c b3 0b 00              mov    eax,DWORD PTR [rip+0xbb33c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341dac  3b c6                          cmp    eax,esi
341dae  75 09                          jne    0x341db9
341db0  48 8d 0d 59 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b159]        # 0x29cf10
341db7  eb 0b                          jmp    0x341dc4
341db9  3b c7                          cmp    eax,edi
341dbb  75 0e                          jne    0x341dcb
341dbd  48 8d 0d 74 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b174]        # 0x29cf38
341dc4  e8 3b 32 02 00                 call   0x365004
341dc9  eb 16                          jmp    0x341de1
341dcb  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341dd0  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341dd4  e8 cf 62 01 00                 call   0x3580a8 ; STRING getter=0x3580a8 Draw Cross
341dd9  48 8b c8                       mov    rcx,rax
341ddc  e8 73 7e fa ff                 call   0x2e9c54
341de1  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341de6  4c 8d 0d 2b 8c 0a 00           lea    r9,[rip+0xa8c2b]        # 0x3eaa18 ; CONFIG C.RadarCrossColor value(+0x48)
341ded  45 33 c0                       xor    r8d,r8d
341df0  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341df5  48 8d 15 2c 83 0a 00           lea    rdx,[rip+0xa832c]        # 0x3ea128 ; CONFIG Bools.radarcross value(+0x48)
341dfc  48 8b c8                       mov    rcx,rax
341dff  e8 10 b3 07 00                 call   0x3bd114
341e04  8b 05 de b2 0b 00              mov    eax,DWORD PTR [rip+0xbb2de]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341e0a  3b c6                          cmp    eax,esi
341e0c  75 09                          jne    0x341e17
341e0e  48 8d 0d 33 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b133]        # 0x29cf48
341e15  eb 0b                          jmp    0x341e22
341e17  3b c7                          cmp    eax,edi
341e19  75 0e                          jne    0x341e29
341e1b  48 8d 0d 46 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b146]        # 0x29cf68
341e22  e8 dd 31 02 00                 call   0x365004
341e27  eb 16                          jmp    0x341e3f
341e29  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341e2e  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341e32  e8 9d 68 01 00                 call   0x3586d4 ; STRING getter=0x3586d4 Draw Background
341e37  48 8b c8                       mov    rcx,rax
341e3a  e8 21 b3 f9 ff                 call   0x2dd160
341e3f  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341e44  4c 8d 0d 2d 8c 0a 00           lea    r9,[rip+0xa8c2d]        # 0x3eaa78 ; CONFIG C.RadarBGColor value(+0x48)
341e4b  45 33 c0                       xor    r8d,r8d
341e4e  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341e53  48 8d 15 8e 86 0a 00           lea    rdx,[rip+0xa868e]        # 0x3ea4e8 ; CONFIG Bools.radarbackground value(+0x48)
341e5a  48 8b c8                       mov    rcx,rax
341e5d  e8 b2 b2 07 00                 call   0x3bd114
341e62  8b 05 80 b2 0b 00              mov    eax,DWORD PTR [rip+0xbb280]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341e68  3b c6                          cmp    eax,esi
341e6a  75 09                          jne    0x341e75
341e6c  48 8d 0d 05 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b105]        # 0x29cf78
341e73  eb 0b                          jmp    0x341e80
341e75  3b c7                          cmp    eax,edi
341e77  75 0e                          jne    0x341e87
341e79  48 8d 0d 20 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b120]        # 0x29cfa0
341e80  e8 7f 31 02 00                 call   0x365004
341e85  eb 16                          jmp    0x341e9d
341e87  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341e8c  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341e90  e8 93 6c 01 00                 call   0x358b28 ; STRING getter=0x358b28 Draw Circles
341e95  48 8b c8                       mov    rcx,rax
341e98  e8 57 67 f9 ff                 call   0x2d85f4
341e9d  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341ea2  4c 8d 0d 0f 8b 0a 00           lea    r9,[rip+0xa8b0f]        # 0x3ea9b8 ; CONFIG C.RadarCriclesColor value(+0x48)
341ea9  45 33 c0                       xor    r8d,r8d
341eac  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341eb1  48 8d 15 40 80 0a 00           lea    rdx,[rip+0xa8040]        # 0x3e9ef8 ; CONFIG Bools.DrawRadarCircles value(+0x48)
341eb8  48 8b c8                       mov    rcx,rax
341ebb  e8 54 b2 07 00                 call   0x3bd114
341ec0  8b 05 22 b2 0b 00              mov    eax,DWORD PTR [rip+0xbb222]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341ec6  3b c6                          cmp    eax,esi
341ec8  75 09                          jne    0x341ed3
341eca  48 8d 0d df b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0df]        # 0x29cfb0
341ed1  eb 0b                          jmp    0x341ede
341ed3  3b c7                          cmp    eax,edi
341ed5  75 0e                          jne    0x341ee5
341ed7  48 8d 0d fa b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0fa]        # 0x29cfd8
341ede  e8 21 31 02 00                 call   0x365004
341ee3  eb 16                          jmp    0x341efb
341ee5  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341eea  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341eee  e8 39 86 01 00                 call   0x35a52c ; STRING getter=0x35a52c Draw Text
341ef3  48 8b c8                       mov    rcx,rax
341ef6  e8 49 be f8 ff                 call   0x2cdd44
341efb  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341f00  48 8d 15 a1 84 0a 00           lea    rdx,[rip+0xa84a1]        # 0x3ea3a8 ; CONFIG Bools.ShowRadarText value(+0x48)
341f07  45 33 c9                       xor    r9d,r9d
341f0a  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341f0f  45 33 c0                       xor    r8d,r8d
341f12  48 8b c8                       mov    rcx,rax
341f15  e8 fa b1 07 00                 call   0x3bd114
341f1a  8b 05 c8 b1 0b 00              mov    eax,DWORD PTR [rip+0xbb1c8]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341f20  3b c6                          cmp    eax,esi
341f22  75 09                          jne    0x341f2d
341f24  48 8d 0d bd b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0bd]        # 0x29cfe8
341f2b  eb 0b                          jmp    0x341f38
341f2d  3b c7                          cmp    eax,edi
341f2f  75 0e                          jne    0x341f3f
341f31  48 8d 0d e0 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0e0]        # 0x29d018
341f38  e8 c7 30 02 00                 call   0x365004
341f3d  eb 16                          jmp    0x341f55
341f3f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341f44  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341f48  e8 d7 33 00 00                 call   0x345324 ; STRING getter=0x345324 Draw Direction
341f4d  48 8b c8                       mov    rcx,rax
341f50  e8 17 67 f9 ff                 call   0x2d866c
341f55  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
341f5a  48 8d 15 f7 83 0a 00           lea    rdx,[rip+0xa83f7]        # 0x3ea358 ; CONFIG Bools.ShowRadarDirection value(+0x48)
341f61  45 33 c9                       xor    r9d,r9d
341f64  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
341f69  45 33 c0                       xor    r8d,r8d
341f6c  48 8b c8                       mov    rcx,rax
341f6f  e8 a0 b1 07 00                 call   0x3bd114
341f74  8b 05 6e b1 0b 00              mov    eax,DWORD PTR [rip+0xbb16e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341f7a  3b c6                          cmp    eax,esi
341f7c  75 09                          jne    0x341f87
341f7e  48 8d 0d a3 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0a3]        # 0x29d028
341f85  eb 0b                          jmp    0x341f92
341f87  3b c7                          cmp    eax,edi
341f89  75 0e                          jne    0x341f99
341f8b  48 8d 0d b6 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0b6]        # 0x29d048
341f92  e8 6d 30 02 00                 call   0x365004
341f97  eb 16                          jmp    0x341faf
341f99  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
341f9e  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341fa2  e8 59 e5 00 00                 call   0x350500 ; STRING getter=0x350500 Ingame Radar
341fa7  48 8b c8                       mov    rcx,rax
341faa  e8 45 66 f9 ff                 call   0x2d85f4
341faf  48 8b c8                       mov    rcx,rax
341fb2  e8 d9 2e 08 00                 call   0x3c4e90
341fb7  8b 05 2b b1 0b 00              mov    eax,DWORD PTR [rip+0xbb12b]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341fbd  3b c6                          cmp    eax,esi
341fbf  75 0e                          jne    0x341fcf
341fc1  48 8d 0d 98 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b098]        # 0x29d060
341fc8  e8 37 30 02 00                 call   0x365004
341fcd  eb 22                          jmp    0x341ff1
341fcf  3b c7                          cmp    eax,edi
341fd1  75 09                          jne    0x341fdc
341fd3  48 8d 0d 26 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b126]        # 0x29d100
341fda  eb ec                          jmp    0x341fc8
341fdc  48 8d 55 a7                    lea    rdx,[rbp-0x59]
341fe0  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
341fe4  e8 8f f0 00 00                 call   0x351078 ; STRING getter=0x351078 While pressing G or your ingame map hotkey, the cheat will draw players on the map.
341fe9  48 8b c8                       mov    rcx,rax
341fec  e8 87 cf fe ff                 call   0x32ef78
341ff1  48 8b d8                       mov    rbx,rax
341ff4  8b 05 ee b0 0b 00              mov    eax,DWORD PTR [rip+0xbb0ee]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
341ffa  3b c6                          cmp    eax,esi
341ffc  75 09                          jne    0x342007
341ffe  48 8d 0d 33 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b133]        # 0x29d138
342005  eb 0b                          jmp    0x342012
342007  3b c7                          cmp    eax,edi
342009  75 0e                          jne    0x342019
34200b  48 8d 0d 46 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b146]        # 0x29d158
342012  e8 ed 2f 02 00                 call   0x365004
342017  eb 16                          jmp    0x34202f
342019  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
34201e  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342022  e8 c1 ec 00 00                 call   0x350ce8 ; STRING getter=0x350ce8 Ingame Map Players
342027  48 8b c8                       mov    rcx,rax
34202a  e8 65 bd f8 ff                 call   0x2cdd94
34202f  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
342034  48 8d 15 dd 81 0a 00           lea    rdx,[rip+0xa81dd]        # 0x3ea218 ; CONFIG Bools.DrawIngameRadarPlayers value(+0x48)
34203b  45 33 c9                       xor    r9d,r9d
34203e  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342043  45 33 c0                       xor    r8d,r8d
342046  48 8b c8                       mov    rcx,rax
342049  e8 c6 b0 07 00                 call   0x3bd114
34204e  8b 05 94 b0 0b 00              mov    eax,DWORD PTR [rip+0xbb094]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342054  3b c6                          cmp    eax,esi
342056  75 09                          jne    0x342061
342058  48 8d 0d 09 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b109]        # 0x29d168
34205f  eb 0b                          jmp    0x34206c
342061  3b c7                          cmp    eax,edi
342063  75 0e                          jne    0x342073
342065  48 8d 0d 1c b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b11c]        # 0x29d188
34206c  e8 93 2f 02 00                 call   0x365004
342071  eb 16                          jmp    0x342089
342073  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342078  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34207c  e8 77 f3 00 00                 call   0x3513f8 ; STRING getter=0x3513f8 Ingame Map Scientist
342081  48 8b c8                       mov    rcx,rax
342084  e8 33 e4 fd ff                 call   0x3204bc
342089  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
34208e  48 8d 15 43 80 0a 00           lea    rdx,[rip+0xa8043]        # 0x3ea0d8 ; CONFIG Bools.DrawIngamemapScientist value(+0x48)
342095  45 33 c9                       xor    r9d,r9d
342098  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
34209d  45 33 c0                       xor    r8d,r8d
3420a0  48 8b c8                       mov    rcx,rax
3420a3  e8 6c b0 07 00                 call   0x3bd114
3420a8  8b 05 3a b0 0b 00              mov    eax,DWORD PTR [rip+0xbb03a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3420ae  3b c6                          cmp    eax,esi
3420b0  75 09                          jne    0x3420bb
3420b2  48 8d 0d df b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0df]        # 0x29d198
3420b9  eb 0b                          jmp    0x3420c6
3420bb  3b c7                          cmp    eax,edi
3420bd  75 0e                          jne    0x3420cd
3420bf  48 8d 0d de b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0de]        # 0x29d1a4
3420c6  e8 39 2f 02 00                 call   0x365004
3420cb  eb 15                          jmp    0x3420e2
3420cd  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
3420d1  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3420d5  e8 ae f5 00 00                 call   0x351688 ; STRING getter=0x351688 Text
3420da  48 8b c8                       mov    rcx,rax
3420dd  e8 ea bb f8 ff                 call   0x2cdccc
3420e2  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
3420e7  48 8d 15 5a 83 0a 00           lea    rdx,[rip+0xa835a]        # 0x3ea448 ; CONFIG Bools.ShowIngameRadarText value(+0x48)
3420ee  45 33 c9                       xor    r9d,r9d
3420f1  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
3420f6  45 33 c0                       xor    r8d,r8d
3420f9  48 8b c8                       mov    rcx,rax
3420fc  e8 13 b0 07 00                 call   0x3bd114
342101  8b 05 e1 af 0b 00              mov    eax,DWORD PTR [rip+0xbafe1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342107  3b c6                          cmp    eax,esi
342109  75 09                          jne    0x342114
34210b  48 8d 0d 9e b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b09e]        # 0x29d1b0
342112  eb 0b                          jmp    0x34211f
342114  3b c7                          cmp    eax,edi
342116  75 0e                          jne    0x342126
342118  48 8d 0d a9 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0a9]        # 0x29d1c8
34211f  e8 e0 2e 02 00                 call   0x365004
342124  eb 16                          jmp    0x34213c
342126  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
34212b  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34212f  e8 08 f8 00 00                 call   0x35193c ; STRING getter=0x35193c Direction
342134  48 8b c8                       mov    rcx,rax
342137  e8 08 bc f8 ff                 call   0x2cdd44
34213c  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
342141  48 8d 15 b0 82 0a 00           lea    rdx,[rip+0xa82b0]        # 0x3ea3f8 ; CONFIG Bools.ShowIngameRadarDirection value(+0x48)
342148  45 33 c9                       xor    r9d,r9d
34214b  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
342150  45 33 c0                       xor    r8d,r8d
342153  48 8b c8                       mov    rcx,rax
342156  e8 b9 af 07 00                 call   0x3bd114
34215b  8b 05 87 af 0b 00              mov    eax,DWORD PTR [rip+0xbaf87]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342161  3b c6                          cmp    eax,esi
342163  75 09                          jne    0x34216e
342165  48 8d 0d 64 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b064]        # 0x29d1d0
34216c  eb 0b                          jmp    0x342179
34216e  3b c7                          cmp    eax,edi
342170  75 0e                          jne    0x342180
342172  48 8d 0d 77 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b077]        # 0x29d1f0
342179  e8 86 2e 02 00                 call   0x365004
34217e  eb 16                          jmp    0x342196
342180  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342185  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342189  e8 06 fa 00 00                 call   0x351b94 ; STRING getter=0x351b94 Ingame Radar Entities
34218e  48 8b c8                       mov    rcx,rax
342191  e8 0e 64 f9 ff                 call   0x2d85a4
342196  48 8b c8                       mov    rcx,rax
342199  e8 f2 2c 08 00                 call   0x3c4e90
34219e  8b 05 44 af 0b 00              mov    eax,DWORD PTR [rip+0xbaf44]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3421a4  3b c6                          cmp    eax,esi
3421a6  75 0e                          jne    0x3421b6
3421a8  48 8d 0d 51 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b051]        # 0x29d200
3421af  e8 50 2e 02 00                 call   0x365004
3421b4  eb 22                          jmp    0x3421d8
3421b6  3b c7                          cmp    eax,edi
3421b8  75 09                          jne    0x3421c3
3421ba  48 8d 0d ff b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0ff]        # 0x29d2c0
3421c1  eb ec                          jmp    0x3421af
3421c3  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3421c7  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3421cb  e8 18 fe 00 00                 call   0x351fe8 ; STRING getter=0x351fe8 This will draw enabled entities on the ingame map when you press G, or your ingame map hotkey.
3421d0  48 8b c8                       mov    rcx,rax
3421d3  e8 0c 1f 02 00                 call   0x3640e4
3421d8  48 8b d8                       mov    rbx,rax
3421db  8b 05 07 af 0b 00              mov    eax,DWORD PTR [rip+0xbaf07]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3421e1  3b c6                          cmp    eax,esi
3421e3  75 09                          jne    0x3421ee
3421e5  48 8d 0d 1c b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b11c]        # 0x29d308
3421ec  eb 0b                          jmp    0x3421f9
3421ee  3b c7                          cmp    eax,edi
3421f0  75 0e                          jne    0x342200
3421f2  48 8d 0d 47 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b147]        # 0x29d340
3421f9  e8 06 2e 02 00                 call   0x365004
3421fe  eb 16                          jmp    0x342216
342200  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342205  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342209  e8 7a fb 00 00                 call   0x351d88 ; STRING getter=0x351d88 Ingame Map Entities
34220e  48 8b c8                       mov    rcx,rax
342211  e8 7e e2 fd ff                 call   0x320494
342216  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
34221b  48 8d 15 96 80 0a 00           lea    rdx,[rip+0xa8096]        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
342222  45 33 c9                       xor    r9d,r9d
342225  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34222a  45 33 c0                       xor    r8d,r8d
34222d  48 8b c8                       mov    rcx,rax
342230  e8 df ae 07 00                 call   0x3bd114
342235  44 38 35 7c 80 0a 00           cmp    BYTE PTR [rip+0xa807c],r14b        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
34223c  74 5a                          je     0x342298
34223e  8b 05 a4 ae 0b 00              mov    eax,DWORD PTR [rip+0xbaea4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342244  3b c6                          cmp    eax,esi
342246  75 09                          jne    0x342251
342248  48 8d 0d 01 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b101]        # 0x29d350
34224f  eb 0b                          jmp    0x34225c
342251  3b c7                          cmp    eax,edi
342253  75 0e                          jne    0x342263
342255  48 8d 0d 6c 63 f5 ff           lea    rcx,[rip+0xfffffffffff5636c]        # 0x2985c8
34225c  e8 a3 2d 02 00                 call   0x365004
342261  eb 16                          jmp    0x342279
342263  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342268  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34226c  e8 7b 01 01 00                 call   0x3523ec ; STRING getter=0x3523ec Use Icons
342271  48 8b c8                       mov    rcx,rax
342274  e8 cb ba f8 ff                 call   0x2cdd44
342279  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
34227e  48 8d 15 83 80 0a 00           lea    rdx,[rip+0xa8083]        # 0x3ea308 ; CONFIG Bools.UseRadarIcons value(+0x48)
342285  45 33 c9                       xor    r9d,r9d
342288  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
34228d  45 33 c0                       xor    r8d,r8d
342290  48 8b c8                       mov    rcx,rax
342293  e8 7c ae 07 00                 call   0x3bd114
342298  8b 05 4a ae 0b 00              mov    eax,DWORD PTR [rip+0xbae4a]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34229e  3b c6                          cmp    eax,esi
3422a0  75 0e                          jne    0x3422b0
3422a2  48 8d 0d d7 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0d7]        # 0x29d380
3422a9  e8 56 2d 02 00                 call   0x365004
3422ae  eb 22                          jmp    0x3422d2
3422b0  3b c7                          cmp    eax,edi
3422b2  75 09                          jne    0x3422bd
3422b4  48 8d 0d a5 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b1a5]        # 0x29d460
3422bb  eb ec                          jmp    0x3422a9
3422bd  48 8d 55 a7                    lea    rdx,[rbp-0x59]
3422c1  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3422c5  e8 b6 05 01 00                 call   0x352880 ; STRING getter=0x352880 This will draw your saved local stashes on the ingame map when you press G, or your ingame map hotkey.
3422ca  48 8b c8                       mov    rcx,rax
3422cd  e8 da 1e 02 00                 call   0x3641ac
3422d2  48 8b d8                       mov    rbx,rax
3422d5  8b 05 0d ae 0b 00              mov    eax,DWORD PTR [rip+0xbae0d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3422db  3b c6                          cmp    eax,esi
3422dd  75 09                          jne    0x3422e8
3422df  48 8d 0d d2 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b1d2]        # 0x29d4b8
3422e6  eb 0b                          jmp    0x3422f3
3422e8  3b c7                          cmp    eax,edi
3422ea  75 0e                          jne    0x3422fa
3422ec  48 8d 0d fd b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b1fd]        # 0x29d4f0
3422f3  e8 0c 2d 02 00                 call   0x365004
3422f8  eb 16                          jmp    0x342310
3422fa  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3422ff  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342303  e8 40 03 01 00                 call   0x352648 ; STRING getter=0x352648 Ingame Map LocalStashes
342308  48 8b c8                       mov    rcx,rax
34230b  e8 d4 e1 fd ff                 call   0x3204e4
342310  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
342315  48 8d 15 4c 7f 0a 00           lea    rdx,[rip+0xa7f4c]        # 0x3ea268 ; CONFIG Bools.DrawIngameRadarLocalStashes value(+0x48)
34231c  45 33 c9                       xor    r9d,r9d
34231f  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342324  45 33 c0                       xor    r8d,r8d
342327  48 8b c8                       mov    rcx,rax
34232a  e8 e5 ad 07 00                 call   0x3bd114
34232f  ba ff 00 00 ff                 mov    edx,0xff0000ff
342334  8b ce                          mov    ecx,esi
342336  e8 b1 68 05 00                 call   0x398bec
34233b  48 8d 55 a7                    lea    rdx,[rbp-0x59]
34233f  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342343  e8 38 09 01 00                 call   0x352c80 ; STRING getter=0x352c80 This will draw raids on the ingame map when you press G, or your ingame map hotkey.
342348  48 8b c8                       mov    rcx,rax
34234b  e8 28 cc fe ff                 call   0x32ef78
342350  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342355  48 8b d8                       mov    rbx,rax
342358  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34235c  e8 3b 07 01 00                 call   0x352a9c ; STRING getter=0x352a9c Ingame Map Raids
342361  48 8b c8                       mov    rcx,rax
342364  e8 4b 78 fa ff                 call   0x2e9bb4
342369  48 8b c8                       mov    rcx,rax
34236c  44 88 74 24 28                 mov    BYTE PTR [rsp+0x28],r14b
342371  45 33 c9                       xor    r9d,r9d
342374  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342379  45 33 c0                       xor    r8d,r8d
34237c  48 8d 15 05 1a 0b 00           lea    rdx,[rip+0xb1a05]        # 0x3f3d88 ; CONFIG Bools.DrawIngameRadarRaids value(+0x48)
342383  e8 8c ad 07 00                 call   0x3bd114
342388  8b ce                          mov    ecx,esi
34238a  e8 7d 65 05 00                 call   0x39890c
34238f  e8 b8 4e 04 00                 call   0x38724c
342394  0f 28 cf                       movaps xmm1,xmm7
342397  0f 57 c0                       xorps  xmm0,xmm0
34239a  e8 65 88 05 00                 call   0x39ac04
34239f  0f 28 d7                       movaps xmm2,xmm7
3423a2  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
3423a6  0f 57 c9                       xorps  xmm1,xmm1
3423a9  e8 92 9f f8 ff                 call   0x2cc340
3423ae  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
3423b2  8b 05 30 ad 0b 00              mov    eax,DWORD PTR [rip+0xbad30]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3423b8  3b c6                          cmp    eax,esi
3423ba  75 0e                          jne    0x3423ca
3423bc  48 8d 0d 3d b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b13d]        # 0x29d500
3423c3  e8 3c 2c 02 00                 call   0x365004
3423c8  eb 23                          jmp    0x3423ed
3423ca  3b c7                          cmp    eax,edi
3423cc  75 09                          jne    0x3423d7
3423ce  48 8d 0d 53 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b153]        # 0x29d528
3423d5  eb ec                          jmp    0x3423c3
3423d7  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3423dc  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3423e0  e8 d7 0b 01 00                 call   0x352fbc ; STRING getter=0x352fbc Radar Modifications
3423e5  48 8b c8                       mov    rcx,rax
3423e8  e8 a7 e0 fd ff                 call   0x320494
3423ed  48 8d 55 77                    lea    rdx,[rbp+0x77]
3423f1  48 8b d8                       mov    rbx,rax
3423f4  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3423f8  e8 c7 2e 00 00                 call   0x3452c4 ; STRING getter=0x3452c4 D
3423fd  48 8b c8                       mov    rcx,rax
342400  e8 5f 60 f9 ff                 call   0x2d8464
342405  48 8b d0                       mov    rdx,rax
342408  48 8d 4d 87                    lea    rcx,[rbp-0x79]
34240c  e8 bb 9e f8 ff                 call   0x2cc2cc
342411  48 8b c8                       mov    rcx,rax
342414  44 8a ce                       mov    r9b,sil
342417  66 49 0f 7e f0                 movq   r8,xmm6
34241c  48 8b d3                       mov    rdx,rbx
34241f  e8 cc 29 04 00                 call   0x384df0
342424  48 8d 55 77                    lea    rdx,[rbp+0x77]
342428  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34242c  e8 c7 0f 01 00                 call   0x3533f8 ; STRING getter=0x3533f8 %.1f%%
342431  48 8b c8                       mov    rcx,rax
342434  e8 bb b8 f8 ff                 call   0x2cdcf4
342439  8b 0d a9 ac 0b 00              mov    ecx,DWORD PTR [rip+0xbaca9]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34243f  48 8b d8                       mov    rbx,rax
342442  3b ce                          cmp    ecx,esi
342444  75 09                          jne    0x34244f
342446  48 8d 0d eb b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0eb]        # 0x29d538
34244d  eb 0b                          jmp    0x34245a
34244f  3b cf                          cmp    ecx,edi
342451  75 0e                          jne    0x342461
342453  48 8d 0d fe b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0fe]        # 0x29d558
34245a  e8 a5 2b 02 00                 call   0x365004
34245f  eb 16                          jmp    0x342477
342461  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342466  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34246a  e8 d5 0d 01 00                 call   0x353244 ; STRING getter=0x353244 Radar Size
34246f  48 8b c8                       mov    rcx,rax
342472  e8 dd 77 fa ff                 call   0x2e9c54
342477  f3 0f 10 1d 69 bd f4 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff4bd69]        # 0x28e1e8 ; f32=300
34247f  48 8d 15 b2 b4 0a 00           lea    rdx,[rip+0xab4b2]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
342486  f3 0f 10 15 9e b6 f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff4b69e]        # 0x28db2c ; f32=50
34248e  48 8b c8                       mov    rcx,rax
342491  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
342496  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34249b  e8 54 1f 08 00                 call   0x3c43f4
3424a0  48 8d 55 77                    lea    rdx,[rbp+0x77]
3424a4  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3424a8  e8 bf 15 01 00                 call   0x353a6c ; STRING getter=0x353a6c %.1f%%
3424ad  48 8b c8                       mov    rcx,rax
3424b0  e8 3f b8 f8 ff                 call   0x2cdcf4
3424b5  8b 0d 2d ac 0b 00              mov    ecx,DWORD PTR [rip+0xbac2d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3424bb  48 8b d8                       mov    rbx,rax
3424be  3b ce                          cmp    ecx,esi
3424c0  75 09                          jne    0x3424cb
3424c2  48 8d 0d 9f b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b09f]        # 0x29d568
3424c9  eb 0b                          jmp    0x3424d6
3424cb  3b cf                          cmp    ecx,edi
3424cd  75 0e                          jne    0x3424dd
3424cf  48 8d 0d b2 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b0b2]        # 0x29d588
3424d6  e8 29 2b 02 00                 call   0x365004
3424db  eb 16                          jmp    0x3424f3
3424dd  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3424e2  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3424e6  e8 15 11 01 00                 call   0x353600 ; STRING getter=0x353600 Players Length
3424eb  48 8b c8                       mov    rcx,rax
3424ee  e8 79 61 f9 ff                 call   0x2d866c
3424f3  f3 0f 10 3d 35 0d f5 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff50d35]        # 0x293230 ; f32=200
3424fb  48 8d 15 66 b6 0a 00           lea    rdx,[rip+0xab666]        # 0x3edb68 ; CONFIG F.PlayerDirectionLength value(+0x48)
342502  f3 0f 10 35 ae 0c f5 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff50cae]        # 0x2931b8 ; f32=15
34250a  0f 28 df                       movaps xmm3,xmm7
34250d  0f 28 d6                       movaps xmm2,xmm6
342510  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
342515  48 8b c8                       mov    rcx,rax
342518  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34251d  e8 d2 1e 08 00                 call   0x3c43f4
342522  48 8d 55 77                    lea    rdx,[rbp+0x77]
342526  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34252a  e8 ed 18 01 00                 call   0x353e1c ; STRING getter=0x353e1c %.1f%%
34252f  48 8b c8                       mov    rcx,rax
342532  e8 bd b7 f8 ff                 call   0x2cdcf4
342537  8b 0d ab ab 0b 00              mov    ecx,DWORD PTR [rip+0xbabab]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34253d  48 8b d8                       mov    rbx,rax
342540  3b ce                          cmp    ecx,esi
342542  75 09                          jne    0x34254d
342544  48 8d 0d 4d b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b04d]        # 0x29d598
34254b  eb 0b                          jmp    0x342558
34254d  3b cf                          cmp    ecx,edi
34254f  75 0e                          jne    0x34255f
342551  48 8d 0d 58 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b058]        # 0x29d5b0
342558  e8 a7 2a 02 00                 call   0x365004
34255d  eb 16                          jmp    0x342575
34255f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342564  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342568  e8 9b 16 01 00                 call   0x353c08 ; STRING getter=0x353c08 NPC Length
34256d  48 8b c8                       mov    rcx,rax
342570  e8 df 76 fa ff                 call   0x2e9c54
342575  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34257a  48 8d 15 97 b5 0a 00           lea    rdx,[rip+0xab597]        # 0x3edb18 ; CONFIG F.NPCDirectionLength value(+0x48)
342581  0f 28 df                       movaps xmm3,xmm7
342584  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342589  0f 28 d6                       movaps xmm2,xmm6
34258c  48 8b c8                       mov    rcx,rax
34258f  e8 60 1e 08 00                 call   0x3c43f4
342594  48 8d 55 77                    lea    rdx,[rbp+0x77]
342598  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34259c  e8 c3 1b 01 00                 call   0x354164 ; STRING getter=0x354164 %.1f%%
3425a1  48 8b c8                       mov    rcx,rax
3425a4  e8 4b b7 f8 ff                 call   0x2cdcf4
3425a9  8b 0d 39 ab 0b 00              mov    ecx,DWORD PTR [rip+0xbab39]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3425af  48 8b d8                       mov    rbx,rax
3425b2  3b ce                          cmp    ecx,esi
3425b4  75 09                          jne    0x3425bf
3425b6  48 8d 0d 03 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b003]        # 0x29d5c0
3425bd  eb 0b                          jmp    0x3425ca
3425bf  3b cf                          cmp    ecx,edi
3425c1  75 0e                          jne    0x3425d1
3425c3  48 8d 0d 16 b0 f5 ff           lea    rcx,[rip+0xfffffffffff5b016]        # 0x29d5e0
3425ca  e8 35 2a 02 00                 call   0x365004
3425cf  eb 16                          jmp    0x3425e7
3425d1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3425d6  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3425da  e8 e9 19 01 00                 call   0x353fc8 ; STRING getter=0x353fc8 Player Thickness
3425df  48 8b c8                       mov    rcx,rax
3425e2  e8 cd 75 fa ff                 call   0x2e9bb4
3425e7  f3 0f 10 3d 2d b5 f4 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff4b52d]        # 0x28db1c ; f32=10
3425ef  48 8d 15 12 b6 0a 00           lea    rdx,[rip+0xab612]        # 0x3edc08 ; CONFIG F.PlayerDirectionWidth value(+0x48)
3425f6  0f 28 df                       movaps xmm3,xmm7
3425f9  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
3425fe  0f 57 d2                       xorps  xmm2,xmm2
342601  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342606  48 8b c8                       mov    rcx,rax
342609  e8 e6 1d 08 00                 call   0x3c43f4
34260e  48 8d 55 77                    lea    rdx,[rbp+0x77]
342612  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342616  e8 25 1f 01 00                 call   0x354540 ; STRING getter=0x354540 %.1f%%
34261b  48 8b c8                       mov    rcx,rax
34261e  e8 d1 b6 f8 ff                 call   0x2cdcf4
342623  8b 0d bf aa 0b 00              mov    ecx,DWORD PTR [rip+0xbaabf]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342629  48 8b d8                       mov    rbx,rax
34262c  3b ce                          cmp    ecx,esi
34262e  75 09                          jne    0x342639
342630  48 8d 0d b9 af f5 ff           lea    rcx,[rip+0xfffffffffff5afb9]        # 0x29d5f0
342637  eb 0b                          jmp    0x342644
342639  3b cf                          cmp    ecx,edi
34263b  75 0e                          jne    0x34264b
34263d  48 8d 0d c4 af f5 ff           lea    rcx,[rip+0xfffffffffff5afc4]        # 0x29d608
342644  e8 bb 29 02 00                 call   0x365004
342649  eb 16                          jmp    0x342661
34264b  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342650  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342654  e8 5b 1d 01 00                 call   0x3543b4 ; STRING getter=0x3543b4 NPC Thickness
342659  48 8b c8                       mov    rcx,rax
34265c  e8 27 ab f9 ff                 call   0x2dd188
342661  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
342666  48 8d 15 4b b5 0a 00           lea    rdx,[rip+0xab54b]        # 0x3edbb8 ; CONFIG F.NPCDirectionWidth value(+0x48)
34266d  0f 28 df                       movaps xmm3,xmm7
342670  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342675  0f 57 d2                       xorps  xmm2,xmm2
342678  48 8b c8                       mov    rcx,rax
34267b  e8 74 1d 08 00                 call   0x3c43f4
342680  48 8d 55 77                    lea    rdx,[rbp+0x77]
342684  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342688  e8 fb 22 01 00                 call   0x354988 ; STRING getter=0x354988 %.1f%%
34268d  48 8b c8                       mov    rcx,rax
342690  e8 5f b6 f8 ff                 call   0x2cdcf4
342695  8b 0d 4d aa 0b 00              mov    ecx,DWORD PTR [rip+0xbaa4d]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34269b  48 8b d8                       mov    rbx,rax
34269e  3b ce                          cmp    ecx,esi
3426a0  75 09                          jne    0x3426ab
3426a2  48 8d 0d 6f af f5 ff           lea    rcx,[rip+0xfffffffffff5af6f]        # 0x29d618
3426a9  eb 0b                          jmp    0x3426b6
3426ab  3b cf                          cmp    ecx,edi
3426ad  75 0e                          jne    0x3426bd
3426af  48 8d 0d 8a af f5 ff           lea    rcx,[rip+0xfffffffffff5af8a]        # 0x29d640
3426b6  e8 49 29 02 00                 call   0x365004
3426bb  eb 16                          jmp    0x3426d3
3426bd  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3426c2  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3426c6  e8 51 20 01 00                 call   0x35471c ; STRING getter=0x35471c Player Circle Size
3426cb  48 8b c8                       mov    rcx,rax
3426ce  e8 c1 b6 f8 ff                 call   0x2cdd94
3426d3  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
3426d8  48 8d 15 f9 b2 0a 00           lea    rdx,[rip+0xab2f9]        # 0x3ed9d8 ; CONFIG F.PlayerCirlceSize value(+0x48)
3426df  0f 28 de                       movaps xmm3,xmm6
3426e2  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3426e7  0f 57 d2                       xorps  xmm2,xmm2
3426ea  48 8b c8                       mov    rcx,rax
3426ed  e8 02 1d 08 00                 call   0x3c43f4
3426f2  48 8d 55 77                    lea    rdx,[rbp+0x77]
3426f6  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3426fa  e8 45 29 01 00                 call   0x355044 ; STRING getter=0x355044 %.1f%%
3426ff  48 8b c8                       mov    rcx,rax
342702  e8 ed b5 f8 ff                 call   0x2cdcf4
342707  8b 0d db a9 0b 00              mov    ecx,DWORD PTR [rip+0xba9db]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34270d  48 8b d8                       mov    rbx,rax
342710  3b ce                          cmp    ecx,esi
342712  75 09                          jne    0x34271d
342714  48 8d 0d 35 af f5 ff           lea    rcx,[rip+0xfffffffffff5af35]        # 0x29d650
34271b  eb 0b                          jmp    0x342728
34271d  3b cf                          cmp    ecx,edi
34271f  75 0e                          jne    0x34272f
342721  48 8d 0d 50 af f5 ff           lea    rcx,[rip+0xfffffffffff5af50]        # 0x29d678
342728  e8 d7 28 02 00                 call   0x365004
34272d  eb 16                          jmp    0x342745
34272f  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342734  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342738  e8 93 24 01 00                 call   0x354bd0 ; STRING getter=0x354bd0 NPC Circle Size
34273d  48 8b c8                       mov    rcx,rax
342740  e8 1b aa f9 ff                 call   0x2dd160
342745  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34274a  48 8d 15 37 b2 0a 00           lea    rdx,[rip+0xab237]        # 0x3ed988 ; CONFIG F.NPCCircleSize value(+0x48)
342751  0f 28 de                       movaps xmm3,xmm6
342754  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
342759  0f 57 d2                       xorps  xmm2,xmm2
34275c  48 8b c8                       mov    rcx,rax
34275f  e8 90 1c 08 00                 call   0x3c43f4
342764  48 8d 55 77                    lea    rdx,[rbp+0x77]
342768  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34276c  e8 1f 2d 01 00                 call   0x355490 ; STRING getter=0x355490 %.1f%%
342771  48 8b c8                       mov    rcx,rax
342774  e8 7b b5 f8 ff                 call   0x2cdcf4
342779  8b 0d 69 a9 0b 00              mov    ecx,DWORD PTR [rip+0xba969]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34277f  48 8b d8                       mov    rbx,rax
342782  3b ce                          cmp    ecx,esi
342784  75 09                          jne    0x34278f
342786  48 8d 0d fb ae f5 ff           lea    rcx,[rip+0xfffffffffff5aefb]        # 0x29d688
34278d  eb 0b                          jmp    0x34279a
34278f  3b cf                          cmp    ecx,edi
342791  75 0e                          jne    0x3427a1
342793  48 8d 0d 1e af f5 ff           lea    rcx,[rip+0xfffffffffff5af1e]        # 0x29d6b8
34279a  e8 65 28 02 00                 call   0x365004
34279f  eb 16                          jmp    0x3427b7
3427a1  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3427a6  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3427aa  e8 f1 2a 01 00                 call   0x3552a0 ; STRING getter=0x3552a0 Entity Circle Size
3427af  48 8b c8                       mov    rcx,rax
3427b2  e8 dd b5 f8 ff                 call   0x2cdd94
3427b7  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
3427bc  48 8d 15 65 b2 0a 00           lea    rdx,[rip+0xab265]        # 0x3eda28 ; CONFIG F.EntityCircleSize value(+0x48)
3427c3  0f 28 de                       movaps xmm3,xmm6
3427c6  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
3427cb  0f 57 d2                       xorps  xmm2,xmm2
3427ce  48 8b c8                       mov    rcx,rax
3427d1  e8 1e 1c 08 00                 call   0x3c43f4
3427d6  8b 05 0c a9 0b 00              mov    eax,DWORD PTR [rip+0xba90c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3427dc  3b c6                          cmp    eax,esi
3427de  75 09                          jne    0x3427e9
3427e0  48 8d 0d e1 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aee1]        # 0x29d6c8
3427e7  eb 0b                          jmp    0x3427f4
3427e9  3b c7                          cmp    eax,edi
3427eb  75 0e                          jne    0x3427fb
3427ed  48 8d 0d f4 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aef4]        # 0x29d6e8
3427f4  e8 0b 28 02 00                 call   0x365004
3427f9  eb 16                          jmp    0x342811
3427fb  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342800  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342804  e8 c3 2e 01 00                 call   0x3556cc ; STRING getter=0x3556cc Ingame Radar Sliders
342809  48 8b c8                       mov    rcx,rax
34280c  e8 ab dc fd ff                 call   0x3204bc
342811  48 8b c8                       mov    rcx,rax
342814  e8 77 26 08 00                 call   0x3c4e90
342819  48 8d 55 77                    lea    rdx,[rbp+0x77]
34281d  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
342821  e8 da 31 01 00                 call   0x355a00 ; STRING getter=0x355a00 %.1f%%
342826  48 8b c8                       mov    rcx,rax
342829  e8 c6 b4 f8 ff                 call   0x2cdcf4
34282e  8b 0d b4 a8 0b 00              mov    ecx,DWORD PTR [rip+0xba8b4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342834  48 8b d8                       mov    rbx,rax
342837  3b ce                          cmp    ecx,esi
342839  75 09                          jne    0x342844
34283b  48 8d 0d b6 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aeb6]        # 0x29d6f8
342842  eb 0b                          jmp    0x34284f
342844  3b cf                          cmp    ecx,edi
342846  75 0e                          jne    0x342856
342848  48 8d 0d d9 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aed9]        # 0x29d728
34284f  e8 b0 27 02 00                 call   0x365004
342854  eb 16                          jmp    0x34286c
342856  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
34285b  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34285f  e8 e4 2f 01 00                 call   0x355848 ; STRING getter=0x355848 Map Circle Size
342864  48 8b c8                       mov    rcx,rax
342867  e8 f4 a8 f9 ff                 call   0x2dd160
34286c  f3 0f 10 3d 20 09 f5 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff50920]        # 0x293194 ; f32=7
342874  48 8d 15 fd b1 0a 00           lea    rdx,[rip+0xab1fd]        # 0x3eda78 ; CONFIG F.IngameCircleSize value(+0x48)
34287b  0f 28 d7                       movaps xmm2,xmm7
34287e  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
342883  0f 28 de                       movaps xmm3,xmm6
342886  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34288b  48 8b c8                       mov    rcx,rax
34288e  e8 61 1b 08 00                 call   0x3c43f4
342893  8b 05 4f a8 0b 00              mov    eax,DWORD PTR [rip+0xba84f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
342899  3b c6                          cmp    eax,esi
34289b  75 09                          jne    0x3428a6
34289d  48 8d 0d 94 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae94]        # 0x29d738
3428a4  eb 0b                          jmp    0x3428b1
3428a6  3b c7                          cmp    eax,edi
3428a8  75 0e                          jne    0x3428b8
3428aa  48 8d 0d af ae f5 ff           lea    rcx,[rip+0xfffffffffff5aeaf]        # 0x29d760
3428b1  e8 4e 27 02 00                 call   0x365004
3428b6  eb 16                          jmp    0x3428ce
3428b8  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3428bd  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3428c1  e8 ea 32 01 00                 call   0x355bb0 ; STRING getter=0x355bb0 Ingame Radar Entity Sliders
3428c6  48 8b c8                       mov    rcx,rax
3428c9  e8 b6 dc fd ff                 call   0x320584
3428ce  48 8b c8                       mov    rcx,rax
3428d1  e8 ba 25 08 00                 call   0x3c4e90
3428d6  48 8d 55 77                    lea    rdx,[rbp+0x77]
3428da  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3428de  e8 21 36 01 00                 call   0x355f04 ; STRING getter=0x355f04 %.1f%%
3428e3  48 8b c8                       mov    rcx,rax
3428e6  e8 09 b4 f8 ff                 call   0x2cdcf4
3428eb  8b 0d f7 a7 0b 00              mov    ecx,DWORD PTR [rip+0xba7f7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
3428f1  48 8b d8                       mov    rbx,rax
3428f4  3b ce                          cmp    ecx,esi
3428f6  75 09                          jne    0x342901
3428f8  48 8d 0d 71 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae71]        # 0x29d770
3428ff  eb 0b                          jmp    0x34290c
342901  3b cf                          cmp    ecx,edi
342903  75 0e                          jne    0x342913
342905  48 8d 0d a4 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aea4]        # 0x29d7b0
34290c  e8 f3 26 02 00                 call   0x365004
342911  eb 16                          jmp    0x342929
342913  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
342918  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
34291c  e8 77 34 01 00                 call   0x355d98 ; STRING getter=0x355d98 Ent Map Circle Size
342921  48 8b c8                       mov    rcx,rax
342924  e8 6b db fd ff                 call   0x320494
342929  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
34292e  48 8d 15 93 b1 0a 00           lea    rdx,[rip+0xab193]        # 0x3edac8 ; CONFIG F.IngameCircleSizeEntity value(+0x48)
342935  0f 28 de                       movaps xmm3,xmm6
342938  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34293d  0f 28 d7                       movaps xmm2,xmm7
342940  48 8b c8                       mov    rcx,rax
342943  e8 ac 1a 08 00                 call   0x3c43f4
342948  4c 8d 9c 24 00 01 00 00        lea    r11,[rsp+0x100]
342950  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
342954  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
342959  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
34295e  49 8b e3                       mov    rsp,r11
342961  41 5f                          pop    r15
342963  41 5e                          pop    r14
342965  5f                             pop    rdi
342966  5e                             pop    rsi
342967  5d                             pop    rbp
342968  e9 df 48 04 00                 jmp    0x38724c
