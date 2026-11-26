; pdata function 0x2fb72c..0x307637 unwind=0x3d2e60
2fb72c  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2fb731  55                             push   rbp
2fb732  53                             push   rbx
2fb733  56                             push   rsi
2fb734  57                             push   rdi
2fb735  41 54                          push   r12
2fb737  41 55                          push   r13
2fb739  41 56                          push   r14
2fb73b  41 57                          push   r15
2fb73d  48 8d ac 24 78 d6 ff ff        lea    rbp,[rsp-0x2988]
2fb745  b8 88 2a 00 00                 mov    eax,0x2a88
2fb74a  e8 01 19 fd ff                 call   0x2cd050
2fb74f  48 2b e0                       sub    rsp,rax
2fb752  0f 29 b4 24 70 2a 00 00        movaps XMMWORD PTR [rsp+0x2a70],xmm6
2fb75a  4c 8b e9                       mov    r13,rcx
2fb75d  0f 29 bc 24 60 2a 00 00        movaps XMMWORD PTR [rsp+0x2a60],xmm7
2fb765  48 8d 8d 68 02 00 00           lea    rcx,[rbp+0x268]
2fb76c  44 0f 29 84 24 50 2a 00 00     movaps XMMWORD PTR [rsp+0x2a50],xmm8
2fb775  33 f6                          xor    esi,esi
2fb777  44 0f 29 8c 24 40 2a 00 00     movaps XMMWORD PTR [rsp+0x2a40],xmm9
2fb780  44 0f 29 94 24 30 2a 00 00     movaps XMMWORD PTR [rsp+0x2a30],xmm10
2fb789  44 0f 29 9c 24 20 2a 00 00     movaps XMMWORD PTR [rsp+0x2a20],xmm11
2fb792  44 0f 29 a4 24 10 2a 00 00     movaps XMMWORD PTR [rsp+0x2a10],xmm12
2fb79b  44 0f 29 ac 24 00 2a 00 00     movaps XMMWORD PTR [rsp+0x2a00],xmm13
2fb7a4  44 0f 29 b4 24 f0 29 00 00     movaps XMMWORD PTR [rsp+0x29f0],xmm14
2fb7ad  44 0f 29 bc 24 e0 29 00 00     movaps XMMWORD PTR [rsp+0x29e0],xmm15
2fb7b6  89 b5 e0 29 00 00              mov    DWORD PTR [rbp+0x29e0],esi
2fb7bc  e8 33 71 09 00                 call   0x3928f4
2fb7c1  e8 d6 4e fe ff                 call   0x2e069c
2fb7c6  48 8b c8                       mov    rcx,rax
2fb7c9  48 89 85 50 02 00 00           mov    QWORD PTR [rbp+0x250],rax
2fb7d0  e8 33 f7 fc ff                 call   0x2caf08
2fb7d5  84 c0                          test   al,al
2fb7d7  0f 84 fb bd 00 00              je     0x3075d8
2fb7dd  e8 ba 22 fe ff                 call   0x2dda9c
2fb7e2  48 8b c8                       mov    rcx,rax
2fb7e5  48 89 85 18 02 00 00           mov    QWORD PTR [rbp+0x218],rax
2fb7ec  4c 8b e0                       mov    r12,rax
2fb7ef  e8 14 f7 fc ff                 call   0x2caf08
2fb7f4  84 c0                          test   al,al
2fb7f6  0f 84 dc bd 00 00              je     0x3075d8
2fb7fc  33 c0                          xor    eax,eax
2fb7fe  44 8d 7e 01                    lea    r15d,[rsi+0x1]
2fb802  38 05 00 89 0e 00              cmp    BYTE PTR [rip+0xe8900],al        # 0x3e4108 ; CONFIG Bools.FishingBot value(+0x48)
2fb808  45 0f 57 db                    xorps  xmm11,xmm11
2fb80c  88 05 a6 88 0e 00              mov    BYTE PTR [rip+0xe88a6],al        # 0x3e40b8
2fb812  49 be 25 23 22 84 e4 9c f2 cb  movabs r14,0xcbf29ce484222325
2fb81c  0f 84 5f 0a 00 00              je     0x2fc281
2fb822  41 8a d7                       mov    dl,r15b
2fb825  8d 4e 60                       lea    ecx,[rsi+0x60]
2fb828  e8 e3 d0 fe ff                 call   0x2e8910
2fb82d  84 c0                          test   al,al
2fb82f  0f 84 98 01 00 00              je     0x2fb9cd
2fb835  49 8b cc                       mov    rcx,r12
2fb838  e8 b7 ea 06 00                 call   0x36a2f4
2fb83d  48 8b c8                       mov    rcx,rax
2fb840  48 8b f8                       mov    rdi,rax
2fb843  e8 c0 f6 fc ff                 call   0x2caf08
2fb848  84 c0                          test   al,al
2fb84a  0f 84 7d 01 00 00              je     0x2fb9cd
2fb850  48 8b cf                       mov    rcx,rdi
2fb853  e8 fc a1 fe ff                 call   0x2e5a54
2fb858  48 8b c8                       mov    rcx,rax
2fb85b  48 8b d0                       mov    rdx,rax
2fb85e  e8 a5 f6 fc ff                 call   0x2caf08
2fb863  84 c0                          test   al,al
2fb865  0f 84 62 01 00 00              je     0x2fb9cd
2fb86b  48 8b ca                       mov    rcx,rdx
2fb86e  e8 e1 aa fd ff                 call   0x2d6354
2fb873  48 8d 95 8c 11 00 00           lea    rdx,[rbp+0x118c]
2fb87a  48 8b d8                       mov    rbx,rax
2fb87d  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fb884  e8 af 66 ff ff                 call   0x2f1f38 ; STRING getter=0x2f1f38 BoxStorage
2fb889  48 8b c8                       mov    rcx,rax
2fb88c  e8 c3 e3 fe ff                 call   0x2e9c54
2fb891  48 8b c8                       mov    rcx,rax
2fb894  49 8b d6                       mov    rdx,r14
2fb897  e8 b0 a2 fe ff                 call   0x2e5b4c
2fb89c  48 3b d8                       cmp    rbx,rax
2fb89f  0f 85 28 01 00 00              jne    0x2fb9cd
2fb8a5  48 8b 57 48                    mov    rdx,QWORD PTR [rdi+0x48]
2fb8a9  48 8b ca                       mov    rcx,rdx
2fb8ac  e8 57 f6 fc ff                 call   0x2caf08
2fb8b1  84 c0                          test   al,al
2fb8b3  0f 84 14 01 00 00              je     0x2fb9cd
2fb8b9  44 8b 72 38                    mov    r14d,DWORD PTR [rdx+0x38]
2fb8bd  48 8d 0d 5c cf f1 ff           lea    rcx,[rip+0xfffffffffff1cf5c]        # 0x218820
2fb8c4  44 89 b5 70 03 00 00           mov    DWORD PTR [rbp+0x370],r14d
2fb8cb  e8 a8 60 fd ff                 call   0x2d1978
2fb8d0  48 8d 0d 49 cf f1 ff           lea    rcx,[rip+0xfffffffffff1cf49]        # 0x218820
2fb8d7  48 8b d8                       mov    rbx,rax
2fb8da  e8 e1 c0 fd ff                 call   0x2d79c0
2fb8df  eb 0e                          jmp    0x2fb8ef
2fb8e1  44 39 73 20                    cmp    DWORD PTR [rbx+0x20],r14d
2fb8e5  0f 84 e2 00 00 00              je     0x2fb9cd
2fb8eb  48 83 c3 28                    add    rbx,0x28
2fb8ef  48 3b d8                       cmp    rbx,rax
2fb8f2  75 ed                          jne    0x2fb8e1
2fb8f4  48 8b cf                       mov    rcx,rdi
2fb8f7  e8 58 a1 01 00                 call   0x315a54
2fb8fc  48 8b c8                       mov    rcx,rax
2fb8ff  4c 8b c0                       mov    r8,rax
2fb902  e8 01 f6 fc ff                 call   0x2caf08
2fb907  84 c0                          test   al,al
2fb909  0f 84 be 00 00 00              je     0x2fb9cd
2fb90f  48 8d 95 f8 03 00 00           lea    rdx,[rbp+0x3f8]
2fb916  49 8b c8                       mov    rcx,r8
2fb919  e8 b6 8e 07 00                 call   0x3747d4
2fb91e  8b 85 00 04 00 00              mov    eax,DWORD PTR [rbp+0x400]
2fb924  4c 8d 85 98 0a 00 00           lea    r8,[rbp+0xa98]
2fb92b  f2 0f 10 85 f8 03 00 00        movsd  xmm0,QWORD PTR [rbp+0x3f8]
2fb933  48 8d 95 70 03 00 00           lea    rdx,[rbp+0x370]
2fb93a  89 85 a0 0a 00 00              mov    DWORD PTR [rbp+0xaa0],eax
2fb940  48 8d 8d a0 27 00 00           lea    rcx,[rbp+0x27a0]
2fb947  8b 85 70 03 00 00              mov    eax,DWORD PTR [rbp+0x370]
2fb94d  89 85 b0 0a 00 00              mov    DWORD PTR [rbp+0xab0],eax
2fb953  f2 0f 11 85 98 0a 00 00        movsd  QWORD PTR [rbp+0xa98],xmm0
2fb95b  48 89 bd a8 0a 00 00           mov    QWORD PTR [rbp+0xaa8],rdi
2fb962  e8 81 e7 fe ff                 call   0x2ea0e8
2fb967  48 8d 95 a0 27 00 00           lea    rdx,[rbp+0x27a0]
2fb96e  48 8d 0d ab ce f1 ff           lea    rcx,[rip+0xfffffffffff1ceab]        # 0x218820
2fb975  e8 da 53 02 00                 call   0x320d54
2fb97a  8b 85 00 04 00 00              mov    eax,DWORD PTR [rbp+0x400]
2fb980  ba d8 01 00 00                 mov    edx,0x1d8
2fb985  f2 0f 10 85 f8 03 00 00        movsd  xmm0,QWORD PTR [rbp+0x3f8]
2fb98d  48 8b cf                       mov    rcx,rdi
2fb990  f2 0f 11 85 f0 01 00 00        movsd  QWORD PTR [rbp+0x1f0],xmm0
2fb998  89 85 f8 01 00 00              mov    DWORD PTR [rbp+0x1f8],eax
2fb99e  e8 99 34 fe ff                 call   0x2dee3c
2fb9a3  41 b9 02 00 00 00              mov    r9d,0x2
2fb9a9  4c 8d 85 f0 01 00 00           lea    r8,[rbp+0x1f0]
2fb9b0  49 8b d4                       mov    rdx,r12
2fb9b3  0f bf 08                       movsx  ecx,WORD PTR [rax]
2fb9b6  c1 e9 03                       shr    ecx,0x3
2fb9b9  41 22 cf                       and    cl,r15b
2fb9bc  88 4c 24 28                    mov    BYTE PTR [rsp+0x28],cl
2fb9c0  48 8b cf                       mov    rcx,rdi
2fb9c3  40 88 74 24 20                 mov    BYTE PTR [rsp+0x20],sil
2fb9c8  e8 5b bf 01 00                 call   0x317928
2fb9cd  48 8d 0d 4c ce f1 ff           lea    rcx,[rip+0xfffffffffff1ce4c]        # 0x218820
2fb9d4  45 8b e7                       mov    r12d,r15d
2fb9d7  e8 e4 bf fd ff                 call   0x2d79c0
2fb9dc  48 8d 0d 3d ce f1 ff           lea    rcx,[rip+0xfffffffffff1ce3d]        # 0x218820
2fb9e3  4c 8b f0                       mov    r14,rax
2fb9e6  e8 8d 5f fd ff                 call   0x2d1978
2fb9eb  4c 8b f8                       mov    r15,rax
2fb9ee  49 3b c6                       cmp    rax,r14
2fb9f1  0f 84 bb 01 00 00              je     0x2fbbb2
2fb9f7  49 8b f6                       mov    rsi,r14
2fb9fa  4d 8b 77 18                    mov    r14,QWORD PTR [r15+0x18]
2fb9fe  49 8b ce                       mov    rcx,r14
2fba01  e8 02 f5 fc ff                 call   0x2caf08
2fba06  84 c0                          test   al,al
2fba08  0f 84 7f 01 00 00              je     0x2fbb8d
2fba0e  49 8b 56 48                    mov    rdx,QWORD PTR [r14+0x48]
2fba12  48 8b ca                       mov    rcx,rdx
2fba15  e8 ee f4 fc ff                 call   0x2caf08
2fba1a  84 c0                          test   al,al
2fba1c  0f 84 6b 01 00 00              je     0x2fbb8d
2fba22  8b 42 38                       mov    eax,DWORD PTR [rdx+0x38]
2fba25  49 8b ce                       mov    rcx,r14
2fba28  f2 41 0f 10 77 08              movsd  xmm6,QWORD PTR [r15+0x8]
2fba2e  ba d8 01 00 00                 mov    edx,0x1d8
2fba33  45 8b 6f 10                    mov    r13d,DWORD PTR [r15+0x10]
2fba37  89 85 18 03 00 00              mov    DWORD PTR [rbp+0x318],eax
2fba3d  e8 fa 33 fe ff                 call   0x2dee3c
2fba42  48 8d 0d 07 a5 0e 00           lea    rcx,[rip+0xea507]        # 0x3e5f50
2fba49  48 8b f8                       mov    rdi,rax
2fba4c  e8 6b d9 fd ff                 call   0x2d93bc
2fba51  48 85 c0                       test   rax,rax
2fba54  0f 84 33 01 00 00              je     0x2fbb8d
2fba5a  0f b7 3f                       movzx  edi,WORD PTR [rdi]
2fba5d  48 8d 95 18 03 00 00           lea    rdx,[rbp+0x318]
2fba64  41 8b 9e 38 03 00 00           mov    ebx,DWORD PTR [r14+0x338]
2fba6b  48 8d 0d de a4 0e 00           lea    rcx,[rip+0xea4de]        # 0x3e5f50
2fba72  e8 6d 3c ff ff                 call   0x2ef6e4
2fba77  39 18                          cmp    DWORD PTR [rax],ebx
2fba79  0f 84 0e 01 00 00              je     0x2fbb8d
2fba7f  c1 ef 03                       shr    edi,0x3
2fba82  bb 01 00 00 00                 mov    ebx,0x1
2fba87  40 22 fb                       and    dil,bl
2fba8a  80 3d ea a3 0e 00 00           cmp    BYTE PTR [rip+0xea3ea],0x0        # 0x3e5e7b
2fba91  74 56                          je     0x2fbae9
2fba93  44 3b e3                       cmp    r12d,ebx
2fba96  75 51                          jne    0x2fbae9
2fba98  48 8d 0d 31 a5 0e 00           lea    rcx,[rip+0xea531]        # 0x3e5fd0
2fba9f  e8 18 d9 fd ff                 call   0x2d93bc
2fbaa4  48 85 c0                       test   rax,rax
2fbaa7  74 40                          je     0x2fbae9
2fbaa9  80 3d f8 86 0e 00 00           cmp    BYTE PTR [rip+0xe86f8],0x0        # 0x3e41a8 ; CONFIG Bools.AutoReloadBait value(+0x48)
2fbab0  74 37                          je     0x2fbae9
2fbab2  48 8d 95 18 03 00 00           lea    rdx,[rbp+0x318]
2fbab9  48 8d 0d 10 a5 0e 00           lea    rcx,[rip+0xea510]        # 0x3e5fd0
2fbac0  e8 33 96 fe ff                 call   0x2e50f8
2fbac5  80 38 00                       cmp    BYTE PTR [rax],0x0
2fbac8  0f 84 bf 00 00 00              je     0x2fbb8d
2fbace  f2 0f 11 b5 f0 01 00 00        movsd  QWORD PTR [rbp+0x1f0],xmm6
2fbad6  4c 8d 85 f0 01 00 00           lea    r8,[rbp+0x1f0]
2fbadd  44 89 ad f8 01 00 00           mov    DWORD PTR [rbp+0x1f8],r13d
2fbae4  e9 85 00 00 00                 jmp    0x2fbb6e
2fbae9  80 3d 8a a3 0e 00 00           cmp    BYTE PTR [rip+0xea38a],0x0        # 0x3e5e7a
2fbaf0  74 58                          je     0x2fbb4a
2fbaf2  44 3b e3                       cmp    r12d,ebx
2fbaf5  75 53                          jne    0x2fbb4a
2fbaf7  48 8d 0d 92 a4 0e 00           lea    rcx,[rip+0xea492]        # 0x3e5f90
2fbafe  e8 b9 d8 fd ff                 call   0x2d93bc
2fbb03  48 85 c0                       test   rax,rax
2fbb06  74 42                          je     0x2fbb4a
2fbb08  33 c0                          xor    eax,eax
2fbb0a  38 05 18 e1 0e 00              cmp    BYTE PTR [rip+0xee118],al        # 0x3e9c28 ; CONFIG Bools.autodepositbrokenrods value(+0x48)
2fbb10  75 08                          jne    0x2fbb1a
2fbb12  38 05 c0 e0 0e 00              cmp    BYTE PTR [rip+0xee0c0],al        # 0x3e9bd8 ; CONFIG Bools.autolootrods value(+0x48)
2fbb18  74 30                          je     0x2fbb4a
2fbb1a  48 8d 95 18 03 00 00           lea    rdx,[rbp+0x318]
2fbb21  48 8d 0d 68 a4 0e 00           lea    rcx,[rip+0xea468]        # 0x3e5f90
2fbb28  e8 cb 95 fe ff                 call   0x2e50f8
2fbb2d  80 38 00                       cmp    BYTE PTR [rax],0x0
2fbb30  74 5b                          je     0x2fbb8d
2fbb32  f2 0f 11 b5 30 02 00 00        movsd  QWORD PTR [rbp+0x230],xmm6
2fbb3a  4c 8d 85 30 02 00 00           lea    r8,[rbp+0x230]
2fbb41  44 89 ad 38 02 00 00           mov    DWORD PTR [rbp+0x238],r13d
2fbb48  eb 24                          jmp    0x2fbb6e
2fbb4a  80 3d 07 86 0e 00 00           cmp    BYTE PTR [rip+0xe8607],0x0        # 0x3e4158 ; CONFIG Bools.autodepositfish value(+0x48)
2fbb51  74 3a                          je     0x2fbb8d
2fbb53  44 3b e3                       cmp    r12d,ebx
2fbb56  7e 35                          jle    0x2fbb8d
2fbb58  f2 0f 11 b5 40 02 00 00        movsd  QWORD PTR [rbp+0x240],xmm6
2fbb60  4c 8d 85 40 02 00 00           lea    r8,[rbp+0x240]
2fbb67  44 89 ad 48 02 00 00           mov    DWORD PTR [rbp+0x248],r13d
2fbb6e  48 8b 95 18 02 00 00           mov    rdx,QWORD PTR [rbp+0x218]
2fbb75  41 b9 02 00 00 00              mov    r9d,0x2
2fbb7b  40 88 7c 24 28                 mov    BYTE PTR [rsp+0x28],dil
2fbb80  49 8b ce                       mov    rcx,r14
2fbb83  c6 44 24 20 00                 mov    BYTE PTR [rsp+0x20],0x0
2fbb88  e8 9b bd 01 00                 call   0x317928
2fbb8d  41 be 01 00 00 00              mov    r14d,0x1
2fbb93  49 83 c7 28                    add    r15,0x28
2fbb97  45 03 e6                       add    r12d,r14d
2fbb9a  4c 3b fe                       cmp    r15,rsi
2fbb9d  0f 85 57 fe ff ff              jne    0x2fb9fa
2fbba3  8b b5 e0 29 00 00              mov    esi,DWORD PTR [rbp+0x29e0]
2fbba9  4c 8b ad d0 29 00 00           mov    r13,QWORD PTR [rbp+0x29d0]
2fbbb0  eb 06                          jmp    0x2fbbb8
2fbbb2  41 be 01 00 00 00              mov    r14d,0x1
2fbbb8  80 3d 49 85 0e 00 00           cmp    BYTE PTR [rip+0xe8549],0x0        # 0x3e4108 ; CONFIG Bools.FishingBot value(+0x48)
2fbbbf  0f 84 af 06 00 00              je     0x2fc274
2fbbc5  48 8d 8d 7c 12 00 00           lea    rcx,[rbp+0x127c]
2fbbcc  e8 eb bf 0c 00                 call   0x3c7bbc
2fbbd1  48 8b d0                       mov    rdx,rax
2fbbd4  48 8d 0d 95 a4 0e 00           lea    rcx,[rip+0xea495]        # 0x3e6070
2fbbdb  e8 fc 39 fe ff                 call   0x2df5dc
2fbbe0  33 ff                          xor    edi,edi
2fbbe2  84 c0                          test   al,al
2fbbe4  0f 84 49 02 00 00              je     0x2fbe33
2fbbea  48 8d 8d f8 02 00 00           lea    rcx,[rbp+0x2f8]
2fbbf1  e8 ae f7 fc ff                 call   0x2cb3a4
2fbbf6  f2 0f 10 05 72 a4 0e 00        movsd  xmm0,QWORD PTR [rip+0xea472]        # 0x3e6070
2fbbfe  4c 8d 0d a3 b6 0d 00           lea    r9,[rip+0xdb6a3]        # 0x3d72a8
2fbc05  8b 05 6d a4 0e 00              mov    eax,DWORD PTR [rip+0xea46d]        # 0x3e6078
2fbc0b  4c 8d 85 f8 02 00 00           lea    r8,[rbp+0x2f8]
2fbc12  48 8b 9d 50 02 00 00           mov    rbx,QWORD PTR [rbp+0x250]
2fbc19  48 8d 95 f0 01 00 00           lea    rdx,[rbp+0x1f0]
2fbc20  48 8b cb                       mov    rcx,rbx
2fbc23  f2 0f 11 85 f0 01 00 00        movsd  QWORD PTR [rbp+0x1f0],xmm0
2fbc2b  89 85 f8 01 00 00              mov    DWORD PTR [rbp+0x1f8],eax
2fbc31  e8 ea 10 07 00                 call   0x36cd20
2fbc36  84 c0                          test   al,al
2fbc38  0f 84 fc 01 00 00              je     0x2fbe3a
2fbc3e  48 8d 95 88 12 00 00           lea    rdx,[rbp+0x1288]
2fbc45  48 8b cb                       mov    rcx,rbx
2fbc48  e8 e7 0d 07 00                 call   0x36ca34
2fbc4d  48 8b c8                       mov    rcx,rax
2fbc50  48 8d 15 19 a4 0e 00           lea    rdx,[rip+0xea419]        # 0x3e6070
2fbc57  e8 d4 42 fe ff                 call   0x2dff30
2fbc5c  48 8d 95 3f 04 00 00           lea    rdx,[rbp+0x43f]
2fbc63  0f 28 f0                       movaps xmm6,xmm0
2fbc66  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fbc6d  e8 9a 86 ff ff                 call   0x2f430c ; STRING getter=0x2f430c m)
2fbc72  48 8b c8                       mov    rcx,rax
2fbc75  e8 7a 47 02 00                 call   0x3203f4
2fbc7a  48 8b d0                       mov    rdx,rax
2fbc7d  48 8d 8d a8 21 00 00           lea    rcx,[rbp+0x21a8]
2fbc84  e8 43 06 fd ff                 call   0x2cc2cc
2fbc89  f3 0f 2c d6                    cvttss2si edx,xmm6
2fbc8d  48 8d 8d 88 21 00 00           lea    rcx,[rbp+0x2188]
2fbc94  48 8b f8                       mov    rdi,rax
2fbc97  e8 74 d8 fd ff                 call   0x2d9510
2fbc9c  48 8d 95 6a 27 00 00           lea    rdx,[rbp+0x276a]
2fbca3  48 8b d8                       mov    rbx,rax
2fbca6  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fbcad  e8 7a 7b ff ff                 call   0x2f382c ; STRING getter=0x2f382c Throw Position (
2fbcb2  48 8b c8                       mov    rcx,rax
2fbcb5  e8 fa de fe ff                 call   0x2e9bb4
2fbcba  48 8b d0                       mov    rdx,rax
2fbcbd  48 8d 8d 68 21 00 00           lea    rcx,[rbp+0x2168]
2fbcc4  e8 03 06 fd ff                 call   0x2cc2cc
2fbcc9  48 8b d0                       mov    rdx,rax
2fbccc  48 8d 8d 48 21 00 00           lea    rcx,[rbp+0x2148]
2fbcd3  4c 8b c3                       mov    r8,rbx
2fbcd6  e8 65 32 fd ff                 call   0x2cef40
2fbcdb  48 8b d0                       mov    rdx,rax
2fbcde  48 8d 8d 60 0f 00 00           lea    rcx,[rbp+0xf60]
2fbce5  4c 8b c7                       mov    r8,rdi
2fbce8  e8 53 32 fd ff                 call   0x2cef40
2fbced  48 8d 8d 48 21 00 00           lea    rcx,[rbp+0x2148]
2fbcf4  e8 fb 07 fd ff                 call   0x2cc4f4
2fbcf9  48 8d 8d 68 21 00 00           lea    rcx,[rbp+0x2168]
2fbd00  e8 ef 07 fd ff                 call   0x2cc4f4
2fbd05  48 8d 8d 88 21 00 00           lea    rcx,[rbp+0x2188]
2fbd0c  e8 e3 07 fd ff                 call   0x2cc4f4
2fbd11  48 8d 8d a8 21 00 00           lea    rcx,[rbp+0x21a8]
2fbd18  e8 d7 07 fd ff                 call   0x2cc4f4
2fbd1d  bb ff 00 00 00                 mov    ebx,0xff
2fbd22  48 8d 8d e8 1f 00 00           lea    rcx,[rbp+0x1fe8]
2fbd29  44 8b cb                       mov    r9d,ebx
2fbd2c  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
2fbd30  44 8b c3                       mov    r8d,ebx
2fbd33  8b d3                          mov    edx,ebx
2fbd35  e8 de f5 fd ff                 call   0x2db318
2fbd3a  f3 0f 10 95 fc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2fc]
2fbd42  48 8d 8d 60 0d 00 00           lea    rcx,[rbp+0xd60]
2fbd49  f3 0f 10 8d f8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2f8]
2fbd51  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fbd55  e8 e6 05 fd ff                 call   0x2cc340
2fbd5a  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
2fbd5e  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fbd65  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
2fbd6a  4c 8d 85 60 0f 00 00           lea    r8,[rbp+0xf60]
2fbd71  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fbd76  4c 8b c8                       mov    r9,rax
2fbd79  49 8b cd                       mov    rcx,r13
2fbd7c  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fbd84  e8 d3 55 06 00                 call   0x36135c
2fbd89  f3 0f 10 85 fc 02 00 00        movss  xmm0,DWORD PTR [rbp+0x2fc]
2fbd91  48 8d 8d f8 1f 00 00           lea    rcx,[rbp+0x1ff8]
2fbd98  f3 0f 58 05 38 d1 f4 ff        addss  xmm0,DWORD PTR [rip+0xfffffffffff4d138]        # 0x248ed8 ; f32=16
2fbda0  44 8b cb                       mov    r9d,ebx
2fbda3  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
2fbda7  44 8b c3                       mov    r8d,ebx
2fbdaa  8b d3                          mov    edx,ebx
2fbdac  f3 0f 11 85 fc 02 00 00        movss  DWORD PTR [rbp+0x2fc],xmm0
2fbdb4  e8 5f f5 fd ff                 call   0x2db318
2fbdb9  f3 0f 10 95 fc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2fc]
2fbdc1  48 8d 8d 58 0d 00 00           lea    rcx,[rbp+0xd58]
2fbdc8  f3 0f 10 8d f8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2f8]
2fbdd0  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fbdd4  e8 67 05 fd ff                 call   0x2cc340
2fbdd9  8b 15 c1 a2 0e 00              mov    edx,DWORD PTR [rip+0xea2c1]        # 0x3e60a0
2fbddf  48 8b d8                       mov    rbx,rax
2fbde2  48 8d 8d c8 21 00 00           lea    rcx,[rbp+0x21c8]
2fbde9  e8 ca cd 01 00                 call   0x318bb8
2fbdee  49 8b 55 10                    mov    rdx,QWORD PTR [r13+0x10]
2fbdf2  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fbdf9  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
2fbdfe  4c 8b cb                       mov    r9,rbx
2fbe01  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fbe06  4c 8b c0                       mov    r8,rax
2fbe09  49 8b cd                       mov    rcx,r13
2fbe0c  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fbe14  e8 43 55 06 00                 call   0x36135c
2fbe19  48 8d 8d c8 21 00 00           lea    rcx,[rbp+0x21c8]
2fbe20  e8 cf 06 fd ff                 call   0x2cc4f4
2fbe25  48 8d 8d 60 0f 00 00           lea    rcx,[rbp+0xf60]
2fbe2c  e8 c3 06 fd ff                 call   0x2cc4f4
2fbe31  33 ff                          xor    edi,edi
2fbe33  48 8b 9d 50 02 00 00           mov    rbx,QWORD PTR [rbp+0x250]
2fbe3a  48 8d 0d df c9 f1 ff           lea    rcx,[rip+0xfffffffffff1c9df]        # 0x218820
2fbe41  45 8b fe                       mov    r15d,r14d
2fbe44  e8 2f 5b fd ff                 call   0x2d1978
2fbe49  48 8d 0d d0 c9 f1 ff           lea    rcx,[rip+0xfffffffffff1c9d0]        # 0x218820
2fbe50  4c 8b f0                       mov    r14,rax
2fbe53  e8 68 bb fd ff                 call   0x2d79c0
2fbe58  48 89 85 e8 29 00 00           mov    QWORD PTR [rbp+0x29e8],rax
2fbe5f  4c 3b f0                       cmp    r14,rax
2fbe62  0f 84 0c 04 00 00              je     0x2fc274
2fbe68  f3 0f 10 3d bc 1c f9 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff91cbc]        # 0x28db2c ; f32=50
2fbe70  f2 41 0f 10 76 08              movsd  xmm6,QWORD PTR [r14+0x8]
2fbe76  48 8d 8d a0 07 00 00           lea    rcx,[rbp+0x7a0]
2fbe7d  45 8b 66 10                    mov    r12d,DWORD PTR [r14+0x10]
2fbe81  f2 0f 11 b5 f0 01 00 00        movsd  QWORD PTR [rbp+0x1f0],xmm6
2fbe89  44 89 a5 f8 01 00 00           mov    DWORD PTR [rbp+0x1f8],r12d
2fbe90  e8 0f f5 fc ff                 call   0x2cb3a4
2fbe95  4c 8d 0d 0c b4 0d 00           lea    r9,[rip+0xdb40c]        # 0x3d72a8
2fbe9c  f2 0f 11 b5 30 02 00 00        movsd  QWORD PTR [rbp+0x230],xmm6
2fbea4  4c 8d 85 a0 07 00 00           lea    r8,[rbp+0x7a0]
2fbeab  44 89 a5 38 02 00 00           mov    DWORD PTR [rbp+0x238],r12d
2fbeb2  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
2fbeb9  48 8b cb                       mov    rcx,rbx
2fbebc  e8 5f 0e 07 00                 call   0x36cd20
2fbec1  84 c0                          test   al,al
2fbec3  0f 84 97 03 00 00              je     0x2fc260
2fbec9  48 8d 8d e0 03 00 00           lea    rcx,[rbp+0x3e0]
2fbed0  e8 cf f4 fc ff                 call   0x2cb3a4
2fbed5  0f 57 db                       xorps  xmm3,xmm3
2fbed8  48 8d 8d 94 12 00 00           lea    rcx,[rbp+0x1294]
2fbedf  0f 57 d2                       xorps  xmm2,xmm2
2fbee2  0f 57 c9                       xorps  xmm1,xmm1
2fbee5  e8 be bc 0c 00                 call   0x3c7ba8
2fbeea  48 8b d0                       mov    rdx,rax
2fbeed  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
2fbef4  e8 e3 36 fe ff                 call   0x2df5dc
2fbef9  84 c0                          test   al,al
2fbefb  0f 84 5f 03 00 00              je     0x2fc260
2fbf01  48 8d 95 a0 12 00 00           lea    rdx,[rbp+0x12a0]
2fbf08  48 8b cb                       mov    rcx,rbx
2fbf0b  e8 24 0b 07 00                 call   0x36ca34
2fbf10  48 8b c8                       mov    rcx,rax
2fbf13  48 8d 95 f0 01 00 00           lea    rdx,[rbp+0x1f0]
2fbf1a  e8 11 40 fe ff                 call   0x2dff30
2fbf1f  0f 2f f8                       comiss xmm7,xmm0
2fbf22  0f 86 38 03 00 00              jbe    0x2fc260
2fbf28  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fbf2f  f3 0f 2c d8                    cvttss2si ebx,xmm0
2fbf33  41 83 ff 01                    cmp    r15d,0x1
2fbf37  75 70                          jne    0x2fbfa9
2fbf39  48 8d 95 42 04 00 00           lea    rdx,[rbp+0x442]
2fbf40  e8 93 93 ff ff                 call   0x2f52d8 ; STRING getter=0x2f52d8 m)
2fbf45  48 8b c8                       mov    rcx,rax
2fbf48  e8 a7 44 02 00                 call   0x3203f4
2fbf4d  48 8b d0                       mov    rdx,rax
2fbf50  48 8d 8d 48 23 00 00           lea    rcx,[rbp+0x2348]
2fbf57  e8 70 03 fd ff                 call   0x2cc2cc
2fbf5c  8b d3                          mov    edx,ebx
2fbf5e  48 8d 8d 28 23 00 00           lea    rcx,[rbp+0x2328]
2fbf65  4c 8b e8                       mov    r13,rax
2fbf68  e8 a3 d5 fd ff                 call   0x2d9510
2fbf6d  48 8d 95 08 20 00 00           lea    rdx,[rbp+0x2008]
2fbf74  48 8b f8                       mov    rdi,rax
2fbf77  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fbf7e  83 ce 0f                       or     esi,0xf
2fbf81  48 8d 9d e8 22 00 00           lea    rbx,[rbp+0x22e8]
2fbf88  e8 1b 8b ff ff                 call   0x2f4aa8 ; STRING getter=0x2f4aa8 Pole/Bait Box (
2fbf8d  48 8b c8                       mov    rcx,rax
2fbf90  e8 cb 11 fe ff                 call   0x2dd160
2fbf95  48 8b d0                       mov    rdx,rax
2fbf98  48 8d 8d 08 23 00 00           lea    rcx,[rbp+0x2308]
2fbf9f  e8 28 03 fd ff                 call   0x2cc2cc
2fbfa4  e9 dc 00 00 00                 jmp    0x2fc085
2fbfa9  48 8d 95 45 04 00 00           lea    rdx,[rbp+0x445]
2fbfb0  e8 9b b3 ff ff                 call   0x2f7350 ; STRING getter=0x2f7350 m)
2fbfb5  48 8b c8                       mov    rcx,rax
2fbfb8  e8 37 44 02 00                 call   0x3203f4
2fbfbd  48 8b d0                       mov    rdx,rax
2fbfc0  48 8d 8d c8 22 00 00           lea    rcx,[rbp+0x22c8]
2fbfc7  e8 00 03 fd ff                 call   0x2cc2cc
2fbfcc  8b d3                          mov    edx,ebx
2fbfce  48 8d 8d a8 22 00 00           lea    rcx,[rbp+0x22a8]
2fbfd5  4c 8b e8                       mov    r13,rax
2fbfd8  e8 33 d5 fd ff                 call   0x2d9510
2fbfdd  48 8d 95 3c 04 00 00           lea    rdx,[rbp+0x43c]
2fbfe4  48 89 85 e0 29 00 00           mov    QWORD PTR [rbp+0x29e0],rax
2fbfeb  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fbff2  e8 15 ac ff ff                 call   0x2f6c0c ; STRING getter=0x2f6c0c  (
2fbff7  48 8b c8                       mov    rcx,rax
2fbffa  e8 f5 43 02 00                 call   0x3203f4
2fbfff  48 8b d0                       mov    rdx,rax
2fc002  48 8d 8d 88 22 00 00           lea    rcx,[rbp+0x2288]
2fc009  e8 be 02 fd ff                 call   0x2cc2cc
2fc00e  41 8b d7                       mov    edx,r15d
2fc011  48 8d 8d 68 22 00 00           lea    rcx,[rbp+0x2268]
2fc018  48 8b f8                       mov    rdi,rax
2fc01b  e8 f0 d4 fd ff                 call   0x2d9510
2fc020  48 8d 95 4c 0a 00 00           lea    rdx,[rbp+0xa4c]
2fc027  48 8b d8                       mov    rbx,rax
2fc02a  48 8d 8d d8 29 00 00           lea    rcx,[rbp+0x29d8]
2fc031  81 ce f0 0f 00 00              or     esi,0xff0
2fc037  e8 58 a0 ff ff                 call   0x2f6094 ; STRING getter=0x2f6094 Box #
2fc03c  48 8b c8                       mov    rcx,rax
2fc03f  e8 98 c4 fd ff                 call   0x2d84dc
2fc044  48 8b d0                       mov    rdx,rax
2fc047  48 8d 8d 48 22 00 00           lea    rcx,[rbp+0x2248]
2fc04e  e8 79 02 fd ff                 call   0x2cc2cc
2fc053  48 8b d0                       mov    rdx,rax
2fc056  48 8d 8d 28 22 00 00           lea    rcx,[rbp+0x2228]
2fc05d  4c 8b c3                       mov    r8,rbx
2fc060  e8 db 2e fd ff                 call   0x2cef40
2fc065  48 8b d0                       mov    rdx,rax
2fc068  48 8d 8d 08 22 00 00           lea    rcx,[rbp+0x2208]
2fc06f  4c 8b c7                       mov    r8,rdi
2fc072  e8 c9 2e fd ff                 call   0x2cef40
2fc077  48 8b bd e0 29 00 00           mov    rdi,QWORD PTR [rbp+0x29e0]
2fc07e  48 8d 9d e8 21 00 00           lea    rbx,[rbp+0x21e8]
2fc085  4c 8b c7                       mov    r8,rdi
2fc088  48 8b d0                       mov    rdx,rax
2fc08b  48 8b cb                       mov    rcx,rbx
2fc08e  e8 ad 2e fd ff                 call   0x2cef40
2fc093  48 8b d0                       mov    rdx,rax
2fc096  48 8d 8d 80 0f 00 00           lea    rcx,[rbp+0xf80]
2fc09d  4d 8b c5                       mov    r8,r13
2fc0a0  e8 9b 2e fd ff                 call   0x2cef40
2fc0a5  0f ba e6 0b                    bt     esi,0xb
2fc0a9  73 10                          jae    0x2fc0bb
2fc0ab  0f ba f6 0b                    btr    esi,0xb
2fc0af  48 8d 8d e8 21 00 00           lea    rcx,[rbp+0x21e8]
2fc0b6  e8 39 04 fd ff                 call   0x2cc4f4
2fc0bb  0f ba e6 0a                    bt     esi,0xa
2fc0bf  73 10                          jae    0x2fc0d1
2fc0c1  0f ba f6 0a                    btr    esi,0xa
2fc0c5  48 8d 8d 08 22 00 00           lea    rcx,[rbp+0x2208]
2fc0cc  e8 23 04 fd ff                 call   0x2cc4f4
2fc0d1  0f ba e6 09                    bt     esi,0x9
2fc0d5  73 10                          jae    0x2fc0e7
2fc0d7  0f ba f6 09                    btr    esi,0x9
2fc0db  48 8d 8d 28 22 00 00           lea    rcx,[rbp+0x2228]
2fc0e2  e8 0d 04 fd ff                 call   0x2cc4f4
2fc0e7  0f ba e6 08                    bt     esi,0x8
2fc0eb  73 10                          jae    0x2fc0fd
2fc0ed  0f ba f6 08                    btr    esi,0x8
2fc0f1  48 8d 8d 48 22 00 00           lea    rcx,[rbp+0x2248]
2fc0f8  e8 f7 03 fd ff                 call   0x2cc4f4
2fc0fd  40 84 f6                       test   sil,sil
2fc100  79 10                          jns    0x2fc112
2fc102  0f ba f6 07                    btr    esi,0x7
2fc106  48 8d 8d 68 22 00 00           lea    rcx,[rbp+0x2268]
2fc10d  e8 e2 03 fd ff                 call   0x2cc4f4
2fc112  40 f6 c6 40                    test   sil,0x40
2fc116  74 0f                          je     0x2fc127
2fc118  83 e6 bf                       and    esi,0xffffffbf
2fc11b  48 8d 8d 88 22 00 00           lea    rcx,[rbp+0x2288]
2fc122  e8 cd 03 fd ff                 call   0x2cc4f4
2fc127  40 f6 c6 20                    test   sil,0x20
2fc12b  74 0f                          je     0x2fc13c
2fc12d  83 e6 df                       and    esi,0xffffffdf
2fc130  48 8d 8d a8 22 00 00           lea    rcx,[rbp+0x22a8]
2fc137  e8 b8 03 fd ff                 call   0x2cc4f4
2fc13c  40 f6 c6 10                    test   sil,0x10
2fc140  74 0f                          je     0x2fc151
2fc142  83 e6 ef                       and    esi,0xffffffef
2fc145  48 8d 8d c8 22 00 00           lea    rcx,[rbp+0x22c8]
2fc14c  e8 a3 03 fd ff                 call   0x2cc4f4
2fc151  40 f6 c6 08                    test   sil,0x8
2fc155  74 0f                          je     0x2fc166
2fc157  83 e6 f7                       and    esi,0xfffffff7
2fc15a  48 8d 8d e8 22 00 00           lea    rcx,[rbp+0x22e8]
2fc161  e8 8e 03 fd ff                 call   0x2cc4f4
2fc166  40 f6 c6 04                    test   sil,0x4
2fc16a  74 0f                          je     0x2fc17b
2fc16c  83 e6 fb                       and    esi,0xfffffffb
2fc16f  48 8d 8d 08 23 00 00           lea    rcx,[rbp+0x2308]
2fc176  e8 79 03 fd ff                 call   0x2cc4f4
2fc17b  40 f6 c6 02                    test   sil,0x2
2fc17f  74 0f                          je     0x2fc190
2fc181  83 e6 fd                       and    esi,0xfffffffd
2fc184  48 8d 8d 28 23 00 00           lea    rcx,[rbp+0x2328]
2fc18b  e8 64 03 fd ff                 call   0x2cc4f4
2fc190  40 f6 c6 01                    test   sil,0x1
2fc194  74 0f                          je     0x2fc1a5
2fc196  83 e6 fe                       and    esi,0xfffffffe
2fc199  48 8d 8d 48 23 00 00           lea    rcx,[rbp+0x2348]
2fc1a0  e8 4f 03 fd ff                 call   0x2cc4f4
2fc1a5  48 8b 9d 50 02 00 00           mov    rbx,QWORD PTR [rbp+0x250]
2fc1ac  4c 8d 0d f5 b0 0d 00           lea    r9,[rip+0xdb0f5]        # 0x3d72a8
2fc1b3  48 8b cb                       mov    rcx,rbx
2fc1b6  f2 0f 11 b5 40 02 00 00        movsd  QWORD PTR [rbp+0x240],xmm6
2fc1be  4c 8d 85 e0 03 00 00           lea    r8,[rbp+0x3e0]
2fc1c5  44 89 a5 48 02 00 00           mov    DWORD PTR [rbp+0x248],r12d
2fc1cc  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
2fc1d3  e8 48 0b 07 00                 call   0x36cd20
2fc1d8  33 ff                          xor    edi,edi
2fc1da  84 c0                          test   al,al
2fc1dc  74 76                          je     0x2fc254
2fc1de  b8 ff 00 00 00                 mov    eax,0xff
2fc1e3  48 8d 8d 18 20 00 00           lea    rcx,[rbp+0x2018]
2fc1ea  44 8b c8                       mov    r9d,eax
2fc1ed  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
2fc1f1  44 8b c0                       mov    r8d,eax
2fc1f4  8b d0                          mov    edx,eax
2fc1f6  e8 1d f1 fd ff                 call   0x2db318
2fc1fb  f3 0f 10 95 e4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3e4]
2fc203  48 8d 8d 50 0d 00 00           lea    rcx,[rbp+0xd50]
2fc20a  f3 0f 10 8d e0 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3e0]
2fc212  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fc216  e8 25 01 fd ff                 call   0x2cc340
2fc21b  4c 8b c8                       mov    r9,rax
2fc21e  c7 44 24 28 01 00 00 00        mov    DWORD PTR [rsp+0x28],0x1
2fc226  48 8b 85 d0 29 00 00           mov    rax,QWORD PTR [rbp+0x29d0]
2fc22d  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fc234  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fc239  4c 8d 85 80 0f 00 00           lea    r8,[rbp+0xf80]
2fc240  48 8b c8                       mov    rcx,rax
2fc243  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fc24b  48 8b 50 10                    mov    rdx,QWORD PTR [rax+0x10]
2fc24f  e8 08 51 06 00                 call   0x36135c
2fc254  48 8d 8d 80 0f 00 00           lea    rcx,[rbp+0xf80]
2fc25b  e8 94 02 fd ff                 call   0x2cc4f4
2fc260  41 ff c7                       inc    r15d
2fc263  49 83 c6 28                    add    r14,0x28
2fc267  4c 3b b5 e8 29 00 00           cmp    r14,QWORD PTR [rbp+0x29e8]
2fc26e  0f 85 fc fb ff ff              jne    0x2fbe70
2fc274  4c 8b a5 18 02 00 00           mov    r12,QWORD PTR [rbp+0x218]
2fc27b  41 bf 01 00 00 00              mov    r15d,0x1
2fc281  4c 8b ad 50 02 00 00           mov    r13,QWORD PTR [rbp+0x250]
2fc288  48 8d 95 68 0a 00 00           lea    rdx,[rbp+0xa68]
2fc28f  49 8b cd                       mov    rcx,r13
2fc292  e8 9d 07 07 00                 call   0x36ca34
2fc297  48 8d 95 b0 12 00 00           lea    rdx,[rbp+0x12b0]
2fc29e  49 8b cc                       mov    rcx,r12
2fc2a1  e8 be ce 06 00                 call   0x369164
2fc2a6  80 3d 8b ab 0e 00 00           cmp    BYTE PTR [rip+0xeab8b],0x0        # 0x3e6e38 ; CONFIG Bools.DisableESPMap value(+0x48)
2fc2ad  74 10                          je     0x2fc2bf
2fc2af  e8 d0 98 01 00                 call   0x315b84
2fc2b4  c6 85 d8 29 00 00 00           mov    BYTE PTR [rbp+0x29d8],0x0
2fc2bb  84 c0                          test   al,al
2fc2bd  75 07                          jne    0x2fc2c6
2fc2bf  44 88 bd d8 29 00 00           mov    BYTE PTR [rbp+0x29d8],r15b
2fc2c6  80 3d cb d2 0e 00 00           cmp    BYTE PTR [rip+0xed2cb],0x0        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
2fc2cd  0f 84 57 01 00 00              je     0x2fc42a
2fc2d3  49 8b cc                       mov    rcx,r12
2fc2d6  e8 19 e0 06 00                 call   0x36a2f4
2fc2db  48 8b c8                       mov    rcx,rax
2fc2de  48 8b d8                       mov    rbx,rax
2fc2e1  e8 22 ec fc ff                 call   0x2caf08
2fc2e6  84 c0                          test   al,al
2fc2e8  0f 84 3c 01 00 00              je     0x2fc42a
2fc2ee  48 8b cb                       mov    rcx,rbx
2fc2f1  e8 a6 4b fe ff                 call   0x2e0e9c
2fc2f6  84 c0                          test   al,al
2fc2f8  0f 84 2c 01 00 00              je     0x2fc42a
2fc2fe  48 8b cb                       mov    rcx,rbx
2fc301  e8 4e 97 fe ff                 call   0x2e5a54
2fc306  48 8b c8                       mov    rcx,rax
2fc309  48 8b d0                       mov    rdx,rax
2fc30c  e8 f7 eb fc ff                 call   0x2caf08
2fc311  84 c0                          test   al,al
2fc313  0f 84 11 01 00 00              je     0x2fc42a
2fc319  48 8b ca                       mov    rcx,rdx
2fc31c  e8 33 a0 fd ff                 call   0x2d6354
2fc321  48 8d 95 50 0e 00 00           lea    rdx,[rbp+0xe50]
2fc328  48 8b f8                       mov    rdi,rax
2fc32b  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc332  e8 61 b9 ff ff                 call   0x2f7c98 ; STRING getter=0x2f7c98 CodeLock
2fc337  48 8b c8                       mov    rcx,rax
2fc33a  e8 4d d8 fe ff                 call   0x2e9b8c
2fc33f  48 be 25 23 22 84 e4 9c f2 cb  movabs rsi,0xcbf29ce484222325
2fc349  48 8b c8                       mov    rcx,rax
2fc34c  48 8b d6                       mov    rdx,rsi
2fc34f  e8 f8 97 fe ff                 call   0x2e5b4c
2fc354  48 3b f8                       cmp    rdi,rax
2fc357  74 2f                          je     0x2fc388
2fc359  48 8d 95 8c 27 00 00           lea    rdx,[rbp+0x278c]
2fc360  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc367  e8 3c 3f ff ff                 call   0x2f02a8 ; STRING getter=0x2f02a8 DigitSendCodeLock
2fc36c  48 8b c8                       mov    rcx,rax
2fc36f  e8 68 d8 fe ff                 call   0x2e9bdc
2fc374  48 8b c8                       mov    rcx,rax
2fc377  48 8b d6                       mov    rdx,rsi
2fc37a  e8 cd 97 fe ff                 call   0x2e5b4c
2fc37f  48 3b f8                       cmp    rdi,rax
2fc382  0f 85 a2 00 00 00              jne    0x2fc42a
2fc388  48 8b cb                       mov    rcx,rbx
2fc38b  e8 c4 96 01 00                 call   0x315a54
2fc390  48 8b c8                       mov    rcx,rax
2fc393  48 8b f0                       mov    rsi,rax
2fc396  e8 6d eb fc ff                 call   0x2caf08
2fc39b  84 c0                          test   al,al
2fc39d  0f 84 87 00 00 00              je     0x2fc42a
2fc3a3  48 8b 53 48                    mov    rdx,QWORD PTR [rbx+0x48]
2fc3a7  48 8b ca                       mov    rcx,rdx
2fc3aa  e8 59 eb fc ff                 call   0x2caf08
2fc3af  84 c0                          test   al,al
2fc3b1  74 77                          je     0x2fc42a
2fc3b3  8b 7a 38                       mov    edi,DWORD PTR [rdx+0x38]
2fc3b6  4c 8d 35 7b c4 f1 ff           lea    r14,[rip+0xfffffffffff1c47b]        # 0x218838
2fc3bd  49 8b ce                       mov    rcx,r14
2fc3c0  89 bd 74 03 00 00              mov    DWORD PTR [rbp+0x374],edi
2fc3c6  e8 ad 55 fd ff                 call   0x2d1978
2fc3cb  49 8b ce                       mov    rcx,r14
2fc3ce  48 8b d8                       mov    rbx,rax
2fc3d1  e8 ea b5 fd ff                 call   0x2d79c0
2fc3d6  eb 09                          jmp    0x2fc3e1
2fc3d8  39 7b 10                       cmp    DWORD PTR [rbx+0x10],edi
2fc3db  74 4d                          je     0x2fc42a
2fc3dd  48 83 c3 14                    add    rbx,0x14
2fc3e1  48 3b d8                       cmp    rbx,rax
2fc3e4  75 f2                          jne    0x2fc3d8
2fc3e6  48 8d 95 d0 09 00 00           lea    rdx,[rbp+0x9d0]
2fc3ed  48 8b ce                       mov    rcx,rsi
2fc3f0  e8 df 83 07 00                 call   0x3747d4
2fc3f5  8b 85 74 03 00 00              mov    eax,DWORD PTR [rbp+0x374]
2fc3fb  4c 8d 85 d0 09 00 00           lea    r8,[rbp+0x9d0]
2fc402  48 8d 95 74 03 00 00           lea    rdx,[rbp+0x374]
2fc409  89 85 dc 09 00 00              mov    DWORD PTR [rbp+0x9dc],eax
2fc40f  48 8d 8d 40 0f 00 00           lea    rcx,[rbp+0xf40]
2fc416  e8 51 dc fe ff                 call   0x2ea06c
2fc41b  48 8d 95 40 0f 00 00           lea    rdx,[rbp+0xf40]
2fc422  49 8b ce                       mov    rcx,r14
2fc425  e8 e2 48 02 00                 call   0x320d0c
2fc42a  49 8b cc                       mov    rcx,r12
2fc42d  e8 7a db 06 00                 call   0x369fac
2fc432  80 3d 9f c3 0e 00 00           cmp    BYTE PTR [rip+0xec39f],0x0        # 0x3e87d8 ; CONFIG Bools.SamsiteESP value(+0x48)
2fc439  f3 44 0f 10 15 4a 6d f9 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff96d4a]        # 0x29318c ; f32=6.325
2fc442  f3 44 0f 10 0d 05 6d f9 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff96d05]        # 0x293150 ; f32=2.8
2fc44b  f3 44 0f 10 25 5c 6d f9 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff96d5c]        # 0x2931b0 ; f32=13
2fc454  88 85 e8 29 00 00              mov    BYTE PTR [rbp+0x29e8],al
2fc45a  0f 84 a1 04 00 00              je     0x2fc901
2fc460  80 3d c1 c3 0e 00 00           cmp    BYTE PTR [rip+0xec3c1],0x0        # 0x3e8828 ; CONFIG Bools.UseCachedPositions value(+0x48)
2fc467  0f 84 94 04 00 00              je     0x2fc901
2fc46d  48 8d 95 b0 02 00 00           lea    rdx,[rbp+0x2b0]
2fc474  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc47b  e8 b0 02 fd ff                 call   0x2cc730
2fc480  48 8b c8                       mov    rcx,rax
2fc483  e8 1c 18 fd ff                 call   0x2cdca4
2fc488  48 8d 95 60 28 00 00           lea    rdx,[rbp+0x2860]
2fc48f  48 8b d8                       mov    rbx,rax
2fc492  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc499  e8 72 44 ff ff                 call   0x2f0910 ; STRING getter=0x2f0910 %0e7b8295f9567c35261c2c1ae35d9654f0ffa04b
2fc49e  48 8b c8                       mov    rcx,rax
2fc4a1  e8 5e 72 fe ff                 call   0x2e3704
2fc4a6  48 8b c8                       mov    rcx,rax
2fc4a9  48 8b d3                       mov    rdx,rbx
2fc4ac  e8 73 7d 03 00                 call   0x334224
2fc4b1  48 8b c8                       mov    rcx,rax
2fc4b4  48 8b d0                       mov    rdx,rax
2fc4b7  e8 4c ea fc ff                 call   0x2caf08
2fc4bc  84 c0                          test   al,al
2fc4be  0f 84 3d 04 00 00              je     0x2fc901
2fc4c4  48 8b 92 b8 00 00 00           mov    rdx,QWORD PTR [rdx+0xb8]
2fc4cb  48 8b ca                       mov    rcx,rdx
2fc4ce  e8 35 ea fc ff                 call   0x2caf08
2fc4d3  84 c0                          test   al,al
2fc4d5  0f 84 26 04 00 00              je     0x2fc901
2fc4db  4c 8b 42 78                    mov    r8,QWORD PTR [rdx+0x78]
2fc4df  49 8b c8                       mov    rcx,r8
2fc4e2  e8 21 ea fc ff                 call   0x2caf08
2fc4e7  84 c0                          test   al,al
2fc4e9  0f 84 12 04 00 00              je     0x2fc901
2fc4ef  49 8b 90 08 01 00 00           mov    rdx,QWORD PTR [r8+0x108]
2fc4f6  48 8b ca                       mov    rcx,rdx
2fc4f9  e8 0a ea fc ff                 call   0x2caf08
2fc4fe  84 c0                          test   al,al
2fc500  0f 84 fb 03 00 00              je     0x2fc901
2fc506  4c 8d 7a 14                    lea    r15,[rdx+0x14]
2fc50a  49 8b cf                       mov    rcx,r15
2fc50d  e8 f6 e9 fc ff                 call   0x2caf08
2fc512  84 c0                          test   al,al
2fc514  0f 84 e7 03 00 00              je     0x2fc901
2fc51a  48 8d 0d 5f c2 f1 ff           lea    rcx,[rip+0xfffffffffff1c25f]        # 0x218780
2fc521  e8 9a b4 fd ff                 call   0x2d79c0
2fc526  48 8d 0d 53 c2 f1 ff           lea    rcx,[rip+0xfffffffffff1c253]        # 0x218780
2fc52d  4c 8b f0                       mov    r14,rax
2fc530  e8 43 54 fd ff                 call   0x2d1978
2fc535  48 8b f8                       mov    rdi,rax
2fc538  49 3b c6                       cmp    rax,r14
2fc53b  0f 84 c0 03 00 00              je     0x2fc901
2fc541  f2 44 0f 10 47 08              movsd  xmm8,QWORD PTR [rdi+0x8]
2fc547  48 8d 8d e8 02 00 00           lea    rcx,[rbp+0x2e8]
2fc54e  8b 77 10                       mov    esi,DWORD PTR [rdi+0x10]
2fc551  f2 44 0f 11 85 f0 01 00 00     movsd  QWORD PTR [rbp+0x1f0],xmm8
2fc55a  89 b5 f8 01 00 00              mov    DWORD PTR [rbp+0x1f8],esi
2fc560  e8 3f ee fc ff                 call   0x2cb3a4
2fc565  83 7f 18 00                    cmp    DWORD PTR [rdi+0x18],0x0
2fc569  0f 84 85 03 00 00              je     0x2fc8f4
2fc56f  49 8b cf                       mov    rcx,r15
2fc572  e8 75 b6 01 00                 call   0x317bec
2fc577  3b 47 18                       cmp    eax,DWORD PTR [rdi+0x18]
2fc57a  0f 85 74 03 00 00              jne    0x2fc8f4
2fc580  48 8d 57 20                    lea    rdx,[rdi+0x20]
2fc584  48 8d 8d 20 11 00 00           lea    rcx,[rbp+0x1120]
2fc58b  e8 04 7c fd ff                 call   0x2d4194
2fc590  48 8d 95 a8 03 00 00           lea    rdx,[rbp+0x3a8]
2fc597  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc59e  e8 ed 43 ff ff                 call   0x2f0990 ; STRING getter=0x2f0990 m
2fc5a3  48 8b c8                       mov    rcx,rax
2fc5a6  e8 b9 be fd ff                 call   0x2d8464
2fc5ab  48 8d 95 c0 12 00 00           lea    rdx,[rbp+0x12c0]
2fc5b2  49 8b cd                       mov    rcx,r13
2fc5b5  48 8b d8                       mov    rbx,rax
2fc5b8  e8 77 04 07 00                 call   0x36ca34
2fc5bd  48 8b d0                       mov    rdx,rax
2fc5c0  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
2fc5c7  e8 64 39 fe ff                 call   0x2dff30
2fc5cc  f3 0f 2c d0                    cvttss2si edx,xmm0
2fc5d0  48 8d 8d 68 23 00 00           lea    rcx,[rbp+0x2368]
2fc5d7  e8 34 cf fd ff                 call   0x2d9510
2fc5dc  48 8b d0                       mov    rdx,rax
2fc5df  48 8d 8d 68 0d 00 00           lea    rcx,[rbp+0xd68]
2fc5e6  4c 8b c3                       mov    r8,rbx
2fc5e9  e8 4a e7 fc ff                 call   0x2cad38
2fc5ee  48 8d 8d 68 23 00 00           lea    rcx,[rbp+0x2368]
2fc5f5  e8 fa fe fc ff                 call   0x2cc4f4
2fc5fa  80 bd e8 29 00 00 00           cmp    BYTE PTR [rbp+0x29e8],0x0
2fc601  0f 84 d5 02 00 00              je     0x2fc8dc
2fc607  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
2fc60e  f2 44 0f 11 85 30 02 00 00     movsd  QWORD PTR [rbp+0x230],xmm8
2fc617  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
2fc61e  89 b5 38 02 00 00              mov    DWORD PTR [rbp+0x238],esi
2fc624  e8 df 88 01 00                 call   0x314f08
2fc629  0f 57 d2                       xorps  xmm2,xmm2
2fc62c  48 8d 8d 08 0e 00 00           lea    rcx,[rbp+0xe08]
2fc633  0f 57 c9                       xorps  xmm1,xmm1
2fc636  e8 05 fd fc ff                 call   0x2cc340
2fc63b  48 8b d0                       mov    rdx,rax
2fc63e  48 8d 8d f0 02 00 00           lea    rcx,[rbp+0x2f0]
2fc645  e8 7a 30 ff ff                 call   0x2ef6c4
2fc64a  84 c0                          test   al,al
2fc64c  0f 84 3a 01 00 00              je     0x2fc78c
2fc652  e8 21 91 01 00                 call   0x315778
2fc657  80 3d aa dc 0e 00 00           cmp    BYTE PTR [rip+0xedcaa],0x0        # 0x3ea308 ; CONFIG Bools.UseRadarIcons value(+0x48)
2fc65e  0f 28 f0                       movaps xmm6,xmm0
2fc661  f3 0f 58 35 5f 14 0f 00        addss  xmm6,DWORD PTR [rip+0xf145f]        # 0x3edac8 ; CONFIG F.IngameCircleSizeEntity value(+0x48)
2fc669  f3 0f 10 bd f4 02 00 00        movss  xmm7,DWORD PTR [rbp+0x2f4]
2fc671  f3 0f 58 fe                    addss  xmm7,xmm6
2fc675  f3 41 0f 58 fa                 addss  xmm7,xmm10
2fc67a  74 56                          je     0x2fc6d2
2fc67c  f3 0f 10 95 f4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2f4]
2fc684  48 8d 8d a0 0b 00 00           lea    rcx,[rbp+0xba0]
2fc68b  f3 0f 10 8d f0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2f0]
2fc693  e8 a8 fc fc ff                 call   0x2cc340
2fc698  48 8d 95 39 04 00 00           lea    rdx,[rbp+0x439]
2fc69f  48 8b d8                       mov    rbx,rax
2fc6a2  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc6a9  e8 62 47 ff ff                 call   0x2f0e10 ; STRING getter=0x2f0e10 84
2fc6ae  48 8b c8                       mov    rcx,rax
2fc6b1  e8 3e 3d 02 00                 call   0x3203f4
2fc6b6  f3 41 0f 59 f1                 mulss  xmm6,xmm9
2fc6bb  48 8b c8                       mov    rcx,rax
2fc6be  48 8b d3                       mov    rdx,rbx
2fc6c1  0f 28 d6                       movaps xmm2,xmm6
2fc6c4  e8 07 02 fd ff                 call   0x2cc8d0
2fc6c9  48 8b 9d d0 29 00 00           mov    rbx,QWORD PTR [rbp+0x29d0]
2fc6d0  eb 4e                          jmp    0x2fc720
2fc6d2  48 8d 0d 7f fd 0e 00           lea    rcx,[rip+0xefd7f]        # 0x3ec458 ; CONFIG C.SamsiteColor value(+0x48)
2fc6d9  e8 2e 31 ff ff                 call   0x2ef80c
2fc6de  f3 0f 10 95 f4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2f4]
2fc6e6  48 8d 8d 98 0b 00 00           lea    rcx,[rbp+0xb98]
2fc6ed  f3 0f 10 8d f0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2f0]
2fc6f5  8b d8                          mov    ebx,eax
2fc6f7  e8 44 fc fc ff                 call   0x2cc340
2fc6fc  44 8b cb                       mov    r9d,ebx
2fc6ff  f3 44 0f 11 5c 24 28           movss  DWORD PTR [rsp+0x28],xmm11
2fc706  48 8b 9d d0 29 00 00           mov    rbx,QWORD PTR [rbp+0x29d0]
2fc70d  48 8b d0                       mov    rdx,rax
2fc710  48 8b cb                       mov    rcx,rbx
2fc713  c6 44 24 20 00                 mov    BYTE PTR [rsp+0x20],0x0
2fc718  0f 28 d6                       movaps xmm2,xmm6
2fc71b  e8 58 fe 05 00                 call   0x35c578
2fc720  b8 ff 00 00 00                 mov    eax,0xff
2fc725  48 8d 8d 28 20 00 00           lea    rcx,[rbp+0x2028]
2fc72c  44 8b c8                       mov    r9d,eax
2fc72f  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
2fc733  44 8b c0                       mov    r8d,eax
2fc736  8b d0                          mov    edx,eax
2fc738  e8 db eb fd ff                 call   0x2db318
2fc73d  f3 0f 10 8d f0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2f0]
2fc745  48 8d 8d 90 0b 00 00           lea    rcx,[rbp+0xb90]
2fc74c  0f 28 d7                       movaps xmm2,xmm7
2fc74f  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fc753  e8 e8 fb fc ff                 call   0x2cc340
2fc758  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2fc75c  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fc763  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
2fc76b  4c 8d 85 68 0d 00 00           lea    r8,[rbp+0xd68]
2fc772  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fc777  4c 8b c8                       mov    r9,rax
2fc77a  48 8b cb                       mov    rcx,rbx
2fc77d  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fc785  e8 d2 4b 06 00                 call   0x36135c
2fc78a  eb 07                          jmp    0x2fc793
2fc78c  48 8b 9d d0 29 00 00           mov    rbx,QWORD PTR [rbp+0x29d0]
2fc793  80 bd d8 29 00 00 00           cmp    BYTE PTR [rbp+0x29d8],0x0
2fc79a  0f 84 3c 01 00 00              je     0x2fc8dc
2fc7a0  4c 8d 0d 01 ab 0d 00           lea    r9,[rip+0xdab01]        # 0x3d72a8
2fc7a7  f2 44 0f 11 85 40 02 00 00     movsd  QWORD PTR [rbp+0x240],xmm8
2fc7b0  4c 8d 85 e8 02 00 00           lea    r8,[rbp+0x2e8]
2fc7b7  89 b5 48 02 00 00              mov    DWORD PTR [rbp+0x248],esi
2fc7bd  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
2fc7c4  49 8b cd                       mov    rcx,r13
2fc7c7  e8 54 05 07 00                 call   0x36cd20
2fc7cc  84 c0                          test   al,al
2fc7ce  0f 84 08 01 00 00              je     0x2fc8dc
2fc7d4  48 8d 95 cc 12 00 00           lea    rdx,[rbp+0x12cc]
2fc7db  49 8b cc                       mov    rcx,r12
2fc7de  e8 81 c9 06 00                 call   0x369164
2fc7e3  48 8b d0                       mov    rdx,rax
2fc7e6  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
2fc7ed  e8 3e 37 fe ff                 call   0x2dff30
2fc7f2  66 0f 6e 0d fe 23 0f 00        movd   xmm1,DWORD PTR [rip+0xf23fe]        # 0x3eebf8 ; CONFIG i.samsitedist value(+0x48)
2fc7fa  0f 5b c9                       cvtdq2ps xmm1,xmm1
2fc7fd  0f 2f c8                       comiss xmm1,xmm0
2fc800  0f 86 d6 00 00 00              jbe    0x2fc8dc
2fc806  f3 0f 10 95 ec 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2ec]
2fc80e  48 8d 8d 88 0b 00 00           lea    rcx,[rbp+0xb88]
2fc815  f3 0f 10 8d e8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e8]
2fc81d  e8 1e fb fc ff                 call   0x2cc340
2fc822  0f 10 05 2f fc 0e 00           movups xmm0,XMMWORD PTR [rip+0xefc2f]        # 0x3ec458 ; CONFIG C.SamsiteColor value(+0x48)
2fc829  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2fc82d  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fc834  be 01 00 00 00                 mov    esi,0x1
2fc839  4c 8d 85 20 11 00 00           lea    r8,[rbp+0x1120]
2fc840  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
2fc844  4c 8b c8                       mov    r9,rax
2fc847  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fc84c  48 8b cb                       mov    rcx,rbx
2fc84f  66 0f 7f 85 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm0
2fc857  e8 00 4b 06 00                 call   0x36135c
2fc85c  f3 0f 10 85 ec 02 00 00        movss  xmm0,DWORD PTR [rbp+0x2ec]
2fc864  48 8d 8d 38 20 00 00           lea    rcx,[rbp+0x2038]
2fc86b  b8 ff 00 00 00                 mov    eax,0xff
2fc870  f3 41 0f 58 c4                 addss  xmm0,xmm12
2fc875  44 8b c8                       mov    r9d,eax
2fc878  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
2fc87c  44 8b c0                       mov    r8d,eax
2fc87f  8b d0                          mov    edx,eax
2fc881  f3 0f 11 85 ec 02 00 00        movss  DWORD PTR [rbp+0x2ec],xmm0
2fc889  e8 8a ea fd ff                 call   0x2db318
2fc88e  f3 0f 10 95 ec 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2ec]
2fc896  48 8d 8d 80 0b 00 00           lea    rcx,[rbp+0xb80]
2fc89d  f3 0f 10 8d e8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e8]
2fc8a5  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fc8a9  e8 92 fa fc ff                 call   0x2cc340
2fc8ae  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2fc8b2  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fc8b9  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
2fc8bd  4c 8d 85 68 0d 00 00           lea    r8,[rbp+0xd68]
2fc8c4  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fc8c9  4c 8b c8                       mov    r9,rax
2fc8cc  48 8b cb                       mov    rcx,rbx
2fc8cf  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fc8d7  e8 80 4a 06 00                 call   0x36135c
2fc8dc  48 8d 8d 68 0d 00 00           lea    rcx,[rbp+0xd68]
2fc8e3  e8 0c fc fc ff                 call   0x2cc4f4
2fc8e8  48 8d 8d 20 11 00 00           lea    rcx,[rbp+0x1120]
2fc8ef  e8 00 fc fc ff                 call   0x2cc4f4
2fc8f4  48 83 c7 40                    add    rdi,0x40
2fc8f8  49 3b fe                       cmp    rdi,r14
2fc8fb  0f 85 40 fc ff ff              jne    0x2fc541
2fc901  80 3d 50 c6 0e 00 00           cmp    BYTE PTR [rip+0xec650],0x0        # 0x3e8f58 ; CONFIG Bools.StashesHidden value(+0x48)
2fc908  0f 84 3d 07 00 00              je     0x2fd04b
2fc90e  80 3d a3 93 0e 00 00           cmp    BYTE PTR [rip+0xe93a3],0x0        # 0x3e5cb8
2fc915  0f 85 94 04 00 00              jne    0x2fcdaf
2fc91b  48 8d 95 1f 03 00 00           lea    rdx,[rbp+0x31f]
2fc922  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc929  e8 02 fe fc ff                 call   0x2cc730
2fc92e  48 8b c8                       mov    rcx,rax
2fc931  e8 6e 13 fd ff                 call   0x2cdca4
2fc936  48 8d 95 8a 28 00 00           lea    rdx,[rbp+0x288a]
2fc93d  48 8b d8                       mov    rbx,rax
2fc940  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fc947  e8 c8 48 ff ff                 call   0x2f1214 ; STRING getter=0x2f1214 %0e7b8295f9567c35261c2c1ae35d9654f0ffa04b
2fc94c  48 8b c8                       mov    rcx,rax
2fc94f  e8 b0 6d fe ff                 call   0x2e3704
2fc954  48 8b c8                       mov    rcx,rax
2fc957  48 8b d3                       mov    rdx,rbx
2fc95a  e8 c5 78 03 00                 call   0x334224
2fc95f  48 8b c8                       mov    rcx,rax
2fc962  48 8b d0                       mov    rdx,rax
2fc965  e8 9e e5 fc ff                 call   0x2caf08
2fc96a  84 c0                          test   al,al
2fc96c  0f 84 3d 04 00 00              je     0x2fcdaf
2fc972  48 8b 92 b8 00 00 00           mov    rdx,QWORD PTR [rdx+0xb8]
2fc979  48 8b ca                       mov    rcx,rdx
2fc97c  e8 87 e5 fc ff                 call   0x2caf08
2fc981  84 c0                          test   al,al
2fc983  0f 84 26 04 00 00              je     0x2fcdaf
2fc989  4c 8b 42 78                    mov    r8,QWORD PTR [rdx+0x78]
2fc98d  49 8b c8                       mov    rcx,r8
2fc990  e8 73 e5 fc ff                 call   0x2caf08
2fc995  84 c0                          test   al,al
2fc997  0f 84 12 04 00 00              je     0x2fcdaf
2fc99d  49 8b 90 08 01 00 00           mov    rdx,QWORD PTR [r8+0x108]
2fc9a4  48 8b ca                       mov    rcx,rdx
2fc9a7  e8 5c e5 fc ff                 call   0x2caf08
2fc9ac  84 c0                          test   al,al
2fc9ae  0f 84 fb 03 00 00              je     0x2fcdaf
2fc9b4  4c 8d 7a 14                    lea    r15,[rdx+0x14]
2fc9b8  49 8b cf                       mov    rcx,r15
2fc9bb  e8 48 e5 fc ff                 call   0x2caf08
2fc9c0  84 c0                          test   al,al
2fc9c2  0f 84 e7 03 00 00              je     0x2fcdaf
2fc9c8  48 8d 0d 99 bd f1 ff           lea    rcx,[rip+0xfffffffffff1bd99]        # 0x218768
2fc9cf  e8 ec af fd ff                 call   0x2d79c0
2fc9d4  48 8d 0d 8d bd f1 ff           lea    rcx,[rip+0xfffffffffff1bd8d]        # 0x218768
2fc9db  4c 8b f0                       mov    r14,rax
2fc9de  e8 95 4f fd ff                 call   0x2d1978
2fc9e3  48 8b f8                       mov    rdi,rax
2fc9e6  49 3b c6                       cmp    rax,r14
2fc9e9  0f 84 c0 03 00 00              je     0x2fcdaf
2fc9ef  f2 44 0f 10 47 08              movsd  xmm8,QWORD PTR [rdi+0x8]
2fc9f5  48 8d 8d d8 02 00 00           lea    rcx,[rbp+0x2d8]
2fc9fc  8b 77 10                       mov    esi,DWORD PTR [rdi+0x10]
2fc9ff  f2 44 0f 11 85 f0 01 00 00     movsd  QWORD PTR [rbp+0x1f0],xmm8
2fca08  89 b5 f8 01 00 00              mov    DWORD PTR [rbp+0x1f8],esi
2fca0e  e8 91 e9 fc ff                 call   0x2cb3a4
2fca13  83 7f 18 00                    cmp    DWORD PTR [rdi+0x18],0x0
2fca17  0f 84 85 03 00 00              je     0x2fcda2
2fca1d  49 8b cf                       mov    rcx,r15
2fca20  e8 c7 b1 01 00                 call   0x317bec
2fca25  3b 47 18                       cmp    eax,DWORD PTR [rdi+0x18]
2fca28  0f 85 74 03 00 00              jne    0x2fcda2
2fca2e  48 8d 57 20                    lea    rdx,[rdi+0x20]
2fca32  48 8d 8d a0 0f 00 00           lea    rcx,[rbp+0xfa0]
2fca39  e8 56 77 fd ff                 call   0x2d4194
2fca3e  48 8d 95 aa 03 00 00           lea    rdx,[rbp+0x3aa]
2fca45  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fca4c  e8 3f 3f ff ff                 call   0x2f0990 ; STRING getter=0x2f0990 m
2fca51  48 8b c8                       mov    rcx,rax
2fca54  e8 0b ba fd ff                 call   0x2d8464
2fca59  48 8d 95 d8 12 00 00           lea    rdx,[rbp+0x12d8]
2fca60  49 8b cd                       mov    rcx,r13
2fca63  48 8b d8                       mov    rbx,rax
2fca66  e8 c9 ff 06 00                 call   0x36ca34
2fca6b  48 8b d0                       mov    rdx,rax
2fca6e  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
2fca75  e8 b6 34 fe ff                 call   0x2dff30
2fca7a  f3 0f 2c d0                    cvttss2si edx,xmm0
2fca7e  48 8d 8d 88 23 00 00           lea    rcx,[rbp+0x2388]
2fca85  e8 86 ca fd ff                 call   0x2d9510
2fca8a  48 8b d0                       mov    rdx,rax
2fca8d  48 8d 8d 88 0d 00 00           lea    rcx,[rbp+0xd88]
2fca94  4c 8b c3                       mov    r8,rbx
2fca97  e8 9c e2 fc ff                 call   0x2cad38
2fca9c  48 8d 8d 88 23 00 00           lea    rcx,[rbp+0x2388]
2fcaa3  e8 4c fa fc ff                 call   0x2cc4f4
2fcaa8  80 3d b9 d7 0e 00 00           cmp    BYTE PTR [rip+0xed7b9],0x0        # 0x3ea268 ; CONFIG Bools.DrawIngameRadarLocalStashes value(+0x48)
2fcaaf  0f 84 85 01 00 00              je     0x2fcc3a
2fcab5  48 8d 95 30 02 00 00           lea    rdx,[rbp+0x230]
2fcabc  f2 44 0f 11 85 30 02 00 00     movsd  QWORD PTR [rbp+0x230],xmm8
2fcac5  48 8d 8d e0 02 00 00           lea    rcx,[rbp+0x2e0]
2fcacc  89 b5 38 02 00 00              mov    DWORD PTR [rbp+0x238],esi
2fcad2  e8 31 84 01 00                 call   0x314f08
2fcad7  0f 57 d2                       xorps  xmm2,xmm2
2fcada  48 8d 8d 78 0b 00 00           lea    rcx,[rbp+0xb78]
2fcae1  0f 57 c9                       xorps  xmm1,xmm1
2fcae4  e8 57 f8 fc ff                 call   0x2cc340
2fcae9  48 8b d0                       mov    rdx,rax
2fcaec  48 8d 8d e0 02 00 00           lea    rcx,[rbp+0x2e0]
2fcaf3  e8 cc 2b ff ff                 call   0x2ef6c4
2fcaf8  84 c0                          test   al,al
2fcafa  0f 84 3a 01 00 00              je     0x2fcc3a
2fcb00  e8 73 8c 01 00                 call   0x315778
2fcb05  80 3d fc d7 0e 00 00           cmp    BYTE PTR [rip+0xed7fc],0x0        # 0x3ea308 ; CONFIG Bools.UseRadarIcons value(+0x48)
2fcb0c  0f 28 f0                       movaps xmm6,xmm0
2fcb0f  f3 0f 58 35 b1 0f 0f 00        addss  xmm6,DWORD PTR [rip+0xf0fb1]        # 0x3edac8 ; CONFIG F.IngameCircleSizeEntity value(+0x48)
2fcb17  f3 0f 10 bd e4 02 00 00        movss  xmm7,DWORD PTR [rbp+0x2e4]
2fcb1f  f3 0f 58 fe                    addss  xmm7,xmm6
2fcb23  f3 41 0f 58 fa                 addss  xmm7,xmm10
2fcb28  74 56                          je     0x2fcb80
2fcb2a  f3 0f 10 95 e4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2e4]
2fcb32  48 8d 8d 70 0b 00 00           lea    rcx,[rbp+0xb70]
2fcb39  f3 0f 10 8d e0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e0]
2fcb41  e8 fa f7 fc ff                 call   0x2cc340
2fcb46  48 8d 95 68 04 00 00           lea    rdx,[rbp+0x468]
2fcb4d  48 8b d8                       mov    rbx,rax
2fcb50  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fcb57  e8 b0 4c ff ff                 call   0x2f180c ; STRING getter=0x2f180c 124
2fcb5c  48 8b c8                       mov    rcx,rax
2fcb5f  e8 b8 38 02 00                 call   0x32041c
2fcb64  f3 41 0f 59 f1                 mulss  xmm6,xmm9
2fcb69  48 8b c8                       mov    rcx,rax
2fcb6c  48 8b d3                       mov    rdx,rbx
2fcb6f  0f 28 d6                       movaps xmm2,xmm6
2fcb72  e8 59 fd fc ff                 call   0x2cc8d0
2fcb77  48 8b 9d d0 29 00 00           mov    rbx,QWORD PTR [rbp+0x29d0]
2fcb7e  eb 4e                          jmp    0x2fcbce
2fcb80  48 8d 0d d1 e3 0e 00           lea    rcx,[rip+0xee3d1]        # 0x3eaf58 ; CONFIG C.StashesHiddenC value(+0x48)
2fcb87  e8 80 2c ff ff                 call   0x2ef80c
2fcb8c  f3 0f 10 95 e4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2e4]
2fcb94  48 8d 8d e8 0c 00 00           lea    rcx,[rbp+0xce8]
2fcb9b  f3 0f 10 8d e0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e0]
2fcba3  8b d8                          mov    ebx,eax
2fcba5  e8 96 f7 fc ff                 call   0x2cc340
2fcbaa  44 8b cb                       mov    r9d,ebx
2fcbad  f3 44 0f 11 5c 24 28           movss  DWORD PTR [rsp+0x28],xmm11
2fcbb4  48 8b 9d d0 29 00 00           mov    rbx,QWORD PTR [rbp+0x29d0]
2fcbbb  48 8b d0                       mov    rdx,rax
2fcbbe  48 8b cb                       mov    rcx,rbx
2fcbc1  c6 44 24 20 00                 mov    BYTE PTR [rsp+0x20],0x0
2fcbc6  0f 28 d6                       movaps xmm2,xmm6
2fcbc9  e8 aa f9 05 00                 call   0x35c578
2fcbce  b8 ff 00 00 00                 mov    eax,0xff
2fcbd3  48 8d 8d 48 20 00 00           lea    rcx,[rbp+0x2048]
2fcbda  44 8b c8                       mov    r9d,eax
2fcbdd  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
2fcbe1  44 8b c0                       mov    r8d,eax
2fcbe4  8b d0                          mov    edx,eax
2fcbe6  e8 2d e7 fd ff                 call   0x2db318
2fcbeb  f3 0f 10 8d e0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2e0]
2fcbf3  48 8d 8d a8 0b 00 00           lea    rcx,[rbp+0xba8]
2fcbfa  0f 28 d7                       movaps xmm2,xmm7
2fcbfd  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fcc01  e8 3a f7 fc ff                 call   0x2cc340
2fcc06  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2fcc0a  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fcc11  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
2fcc19  4c 8d 85 88 0d 00 00           lea    r8,[rbp+0xd88]
2fcc20  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fcc25  4c 8b c8                       mov    r9,rax
2fcc28  48 8b cb                       mov    rcx,rbx
2fcc2b  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fcc33  e8 24 47 06 00                 call   0x36135c
2fcc38  eb 07                          jmp    0x2fcc41
2fcc3a  48 8b 9d d0 29 00 00           mov    rbx,QWORD PTR [rbp+0x29d0]
2fcc41  80 bd d8 29 00 00 00           cmp    BYTE PTR [rbp+0x29d8],0x0
2fcc48  0f 84 3c 01 00 00              je     0x2fcd8a
2fcc4e  4c 8d 0d 53 a6 0d 00           lea    r9,[rip+0xda653]        # 0x3d72a8
2fcc55  f2 44 0f 11 85 40 02 00 00     movsd  QWORD PTR [rbp+0x240],xmm8
2fcc5e  4c 8d 85 d8 02 00 00           lea    r8,[rbp+0x2d8]
2fcc65  89 b5 48 02 00 00              mov    DWORD PTR [rbp+0x248],esi
2fcc6b  48 8d 95 40 02 00 00           lea    rdx,[rbp+0x240]
2fcc72  49 8b cd                       mov    rcx,r13
2fcc75  e8 a6 00 07 00                 call   0x36cd20
2fcc7a  84 c0                          test   al,al
2fcc7c  0f 84 08 01 00 00              je     0x2fcd8a
2fcc82  48 8d 95 e4 12 00 00           lea    rdx,[rbp+0x12e4]
2fcc89  49 8b cc                       mov    rcx,r12
2fcc8c  e8 d3 c4 06 00                 call   0x369164
2fcc91  48 8b d0                       mov    rdx,rax
2fcc94  48 8d 8d f0 01 00 00           lea    rcx,[rbp+0x1f0]
2fcc9b  e8 90 32 fe ff                 call   0x2dff30
2fcca0  66 0f 6e 0d 30 1c 0f 00        movd   xmm1,DWORD PTR [rip+0xf1c30]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
2fcca8  0f 5b c9                       cvtdq2ps xmm1,xmm1
2fccab  0f 2f c8                       comiss xmm1,xmm0
2fccae  0f 86 d6 00 00 00              jbe    0x2fcd8a
2fccb4  f3 0f 10 95 dc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2dc]
2fccbc  48 8d 8d b0 0b 00 00           lea    rcx,[rbp+0xbb0]
2fccc3  f3 0f 10 8d d8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d8]
2fcccb  e8 70 f6 fc ff                 call   0x2cc340
2fccd0  0f 10 05 81 e2 0e 00           movups xmm0,XMMWORD PTR [rip+0xee281]        # 0x3eaf58 ; CONFIG C.StashesHiddenC value(+0x48)
2fccd7  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2fccdb  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fcce2  be 01 00 00 00                 mov    esi,0x1
2fcce7  4c 8d 85 a0 0f 00 00           lea    r8,[rbp+0xfa0]
2fccee  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
2fccf2  4c 8b c8                       mov    r9,rax
2fccf5  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fccfa  48 8b cb                       mov    rcx,rbx
2fccfd  66 0f 7f 85 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm0
2fcd05  e8 52 46 06 00                 call   0x36135c
2fcd0a  f3 0f 10 85 dc 02 00 00        movss  xmm0,DWORD PTR [rbp+0x2dc]
2fcd12  48 8d 8d 58 20 00 00           lea    rcx,[rbp+0x2058]
2fcd19  b8 ff 00 00 00                 mov    eax,0xff
2fcd1e  f3 41 0f 58 c4                 addss  xmm0,xmm12
2fcd23  44 8b c8                       mov    r9d,eax
2fcd26  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
2fcd2a  44 8b c0                       mov    r8d,eax
2fcd2d  8b d0                          mov    edx,eax
2fcd2f  f3 0f 11 85 dc 02 00 00        movss  DWORD PTR [rbp+0x2dc],xmm0
2fcd37  e8 dc e5 fd ff                 call   0x2db318
2fcd3c  f3 0f 10 95 dc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2dc]
2fcd44  48 8d 8d b8 0b 00 00           lea    rcx,[rbp+0xbb8]
2fcd4b  f3 0f 10 8d d8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d8]
2fcd53  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
2fcd57  e8 e4 f5 fc ff                 call   0x2cc340
2fcd5c  48 8b 53 10                    mov    rdx,QWORD PTR [rbx+0x10]
2fcd60  48 8d 8d 20 02 00 00           lea    rcx,[rbp+0x220]
2fcd67  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
2fcd6b  4c 8d 85 88 0d 00 00           lea    r8,[rbp+0xd88]
2fcd72  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
2fcd77  4c 8b c8                       mov    r9,rax
2fcd7a  48 8b cb                       mov    rcx,rbx
2fcd7d  66 0f 7f b5 20 02 00 00        movdqa XMMWORD PTR [rbp+0x220],xmm6
2fcd85  e8 d2 45 06 00                 call   0x36135c
2fcd8a  48 8d 8d 88 0d 00 00           lea    rcx,[rbp+0xd88]
2fcd91  e8 5e f7 fc ff                 call   0x2cc4f4
2fcd96  48 8d 8d a0 0f 00 00           lea    rcx,[rbp+0xfa0]
2fcd9d  e8 52 f7 fc ff                 call   0x2cc4f4
2fcda2  48 83 c7 40                    add    rdi,0x40
2fcda6  49 3b fe                       cmp    rdi,r14
2fcda9  0f 85 40 fc ff ff              jne    0x2fc9ef
2fcdaf  80 3d a2 c1 0e 00 00           cmp    BYTE PTR [rip+0xec1a2],0x0        # 0x3e8f58 ; CONFIG Bools.StashesHidden value(+0x48)
2fcdb6  0f 84 8f 02 00 00              je     0x2fd04b
2fcdbc  49 8b cc                       mov    rcx,r12
2fcdbf  e8 30 d5 06 00                 call   0x36a2f4
2fcdc4  48 8b c8                       mov    rcx,rax
2fcdc7  48 8b f8                       mov    rdi,rax
2fcdca  e8 39 e1 fc ff                 call   0x2caf08
2fcdcf  84 c0                          test   al,al
2fcdd1  0f 84 74 02 00 00              je     0x2fd04b
2fcdd7  48 8b cf                       mov    rcx,rdi
2fcdda  e8 bd 40 fe ff                 call   0x2e0e9c
2fcddf  84 c0                          test   al,al
2fcde1  0f 84 64 02 00 00              je     0x2fd04b
2fcde7  48 8b cf                       mov    rcx,rdi
2fcdea  e8 65 8c fe ff                 call   0x2e5a54
2fcdef  48 8b c8                       mov    rcx,rax
2fcdf2  48 8b d0                       mov    rdx,rax
2fcdf5  e8 0e e1 fc ff                 call   0x2caf08
2fcdfa  84 c0                          test   al,al
2fcdfc  0f 84 49 02 00 00              je     0x2fd04b
2fce02  48 8b ca                       mov    rcx,rdx
2fce05  e8 4a 95 fd ff                 call   0x2d6354
2fce0a  48 8d 95 c3 14 00 00           lea    rdx,[rbp+0x14c3]
2fce11  48 8b d8                       mov    rbx,rax
2fce14  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fce1b  e8 7c 4c ff ff                 call   0x2f1a9c ; STRING getter=0x2f1a9c StashContainer
2fce20  48 8b c8                       mov    rcx,rax
2fce23  e8 44 b8 fd ff                 call   0x2d866c
2fce28  48 8b c8                       mov    rcx,rax
2fce2b  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
2fce35  e8 12 8d fe ff                 call   0x2e5b4c
2fce3a  48 3b d8                       cmp    rbx,rax
2fce3d  0f 85 08 02 00 00              jne    0x2fd04b
2fce43  48 8b cf                       mov    rcx,rdi
2fce46  e8 09 8c 01 00                 call   0x315a54
2fce4b  48 8b c8                       mov    rcx,rax
2fce4e  48 8b f0                       mov    rsi,rax
2fce51  e8 b2 e0 fc ff                 call   0x2caf08
2fce56  84 c0                          test   al,al
2fce58  0f 84 ed 01 00 00              je     0x2fd04b
2fce5e  48 8b 57 48                    mov    rdx,QWORD PTR [rdi+0x48]
2fce62  48 8b ca                       mov    rcx,rdx
2fce65  e8 9e e0 fc ff                 call   0x2caf08
2fce6a  84 c0                          test   al,al
2fce6c  0f 84 d9 01 00 00              je     0x2fd04b
2fce72  8b 7a 38                       mov    edi,DWORD PTR [rdx+0x38]
2fce75  48 8d 0d ec b8 f1 ff           lea    rcx,[rip+0xfffffffffff1b8ec]        # 0x218768
2fce7c  89 bd 78 03 00 00              mov    DWORD PTR [rbp+0x378],edi
2fce82  e8 f1 4a fd ff                 call   0x2d1978
2fce87  48 8d 0d da b8 f1 ff           lea    rcx,[rip+0xfffffffffff1b8da]        # 0x218768
2fce8e  48 8b d8                       mov    rbx,rax
2fce91  e8 2a ab fd ff                 call   0x2d79c0
2fce96  eb 0d                          jmp    0x2fcea5
2fce98  39 7b 14                       cmp    DWORD PTR [rbx+0x14],edi
2fce9b  0f 84 aa 01 00 00              je     0x2fd04b
2fcea1  48 83 c3 40                    add    rbx,0x40
2fcea5  48 3b d8                       cmp    rbx,rax
2fcea8  75 ee                          jne    0x2fce98
2fceaa  48 8d 95 1e 03 00 00           lea    rdx,[rbp+0x31e]
2fceb1  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fceb8  e8 73 f8 fc ff                 call   0x2cc730
2fcebd  48 8b c8                       mov    rcx,rax
2fcec0  e8 df 0d fd ff                 call   0x2cdca4
2fcec5  48 8d 95 b4 28 00 00           lea    rdx,[rbp+0x28b4]
2fcecc  48 8b d8                       mov    rbx,rax
2fcecf  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fced6  e8 49 4e ff ff                 call   0x2f1d24 ; STRING getter=0x2f1d24 %0e7b8295f9567c35261c2c1ae35d9654f0ffa04b
2fcedb  48 8b c8                       mov    rcx,rax
2fcede  e8 21 68 fe ff                 call   0x2e3704
2fcee3  48 8b c8                       mov    rcx,rax
2fcee6  48 8b d3                       mov    rdx,rbx
2fcee9  e8 36 73 03 00                 call   0x334224
2fceee  48 8b c8                       mov    rcx,rax
2fcef1  48 8b d0                       mov    rdx,rax
2fcef4  e8 0f e0 fc ff                 call   0x2caf08
2fcef9  84 c0                          test   al,al
2fcefb  0f 84 4a 01 00 00              je     0x2fd04b
2fcf01  48 8b 92 b8 00 00 00           mov    rdx,QWORD PTR [rdx+0xb8]
2fcf08  48 8b ca                       mov    rcx,rdx
2fcf0b  e8 f8 df fc ff                 call   0x2caf08
2fcf10  84 c0                          test   al,al
2fcf12  0f 84 33 01 00 00              je     0x2fd04b
2fcf18  4c 8b 42 78                    mov    r8,QWORD PTR [rdx+0x78]
2fcf1c  49 8b c8                       mov    rcx,r8
2fcf1f  e8 e4 df fc ff                 call   0x2caf08
2fcf24  84 c0                          test   al,al
2fcf26  0f 84 1f 01 00 00              je     0x2fd04b
2fcf2c  49 8b 90 08 01 00 00           mov    rdx,QWORD PTR [r8+0x108]
2fcf33  48 8b ca                       mov    rcx,rdx
2fcf36  e8 cd df fc ff                 call   0x2caf08
2fcf3b  84 c0                          test   al,al
2fcf3d  0f 84 08 01 00 00              je     0x2fd04b
2fcf43  48 8d 4a 14                    lea    rcx,[rdx+0x14]
2fcf47  e8 bc df fc ff                 call   0x2caf08
2fcf4c  84 c0                          test   al,al
2fcf4e  0f 84 f7 00 00 00              je     0x2fd04b
2fcf54  48 8d 4a 14                    lea    rcx,[rdx+0x14]
2fcf58  e8 8f ac 01 00                 call   0x317bec
2fcf5d  48 8d 95 e0 0e 00 00           lea    rdx,[rbp+0xee0]
2fcf64  48 8b ce                       mov    rcx,rsi
2fcf67  48 8b d8                       mov    rbx,rax
2fcf6a  e8 65 78 07 00                 call   0x3747d4
2fcf6f  8b 8d 78 03 00 00              mov    ecx,DWORD PTR [rbp+0x378]
2fcf75  48 8d 95 52 0a 00 00           lea    rdx,[rbp+0xa52]
2fcf7c  89 8d ec 0e 00 00              mov    DWORD PTR [rbp+0xeec],ecx
2fcf82  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fcf89  89 9d f0 0e 00 00              mov    DWORD PTR [rbp+0xef0],ebx
2fcf8f  e8 14 4f ff ff                 call   0x2f1ea8 ; STRING getter=0x2f1ea8 Stash
2fcf94  48 8b c8                       mov    rcx,rax
2fcf97  e8 40 b5 fd ff                 call   0x2d84dc
2fcf9c  48 8b d0                       mov    rdx,rax
2fcf9f  48 8d 8d f8 0e 00 00           lea    rcx,[rbp+0xef8]
2fcfa6  e8 21 f3 fc ff                 call   0x2cc2cc
2fcfab  4c 8d 85 e0 0e 00 00           lea    r8,[rbp+0xee0]
2fcfb2  48 8d 95 78 03 00 00           lea    rdx,[rbp+0x378]
2fcfb9  48 8d 8d e0 27 00 00           lea    rcx,[rbp+0x27e0]
2fcfc0  e8 e3 d0 fe ff                 call   0x2ea0a8
2fcfc5  48 8d 95 e0 27 00 00           lea    rdx,[rbp+0x27e0]
2fcfcc  48 8d 0d 95 b7 f1 ff           lea    rcx,[rip+0xfffffffffff1b795]        # 0x218768
2fcfd3  e8 58 3d 02 00                 call   0x320d30
2fcfd8  48 8d 8d e0 27 00 00           lea    rcx,[rbp+0x27e0]
2fcfdf  e8 80 7a fd ff                 call   0x2d4a64
2fcfe4  48 8d 8d e0 0e 00 00           lea    rcx,[rbp+0xee0]
2fcfeb  e8 a0 7a fd ff                 call   0x2d4a90
2fcff0  e8 9b f5 fd ff                 call   0x2dc590
2fcff5  48 8d 95 20 28 00 00           lea    rdx,[rbp+0x2820]
2fcffc  48 8d 8d e0 29 00 00           lea    rcx,[rbp+0x29e0]
2fd003  e8 b4 54 ff ff                 call   0x2f24bc ; STRING getter=0x2f24bc Successfully saved stash
2fd008  48 8b c8                       mov    rcx,rax
2fd00b  e8 fc 34 02 00                 call   0x32050c
2fd010  48 8b d0                       mov    rdx,rax
2fd013  48 8d 8d c0 0f 00 00           lea    rcx,[rbp+0xfc0]
2fd01a  e8 ad f2 fc ff                 call   0x2cc2cc
2fd01f  48 8d 95 c0 0f 00 00           lea    rdx,[rbp+0xfc0]
2fd026  48 8d 8d 40 28 00 00           lea    rcx,[rbp+0x2840]
2fd02d  e8 62 71 fd ff                 call   0x2d4194
2fd032  48 8b c8                       mov    rcx,rax
2fd035  45 33 c0                       xor    r8d,r8d
2fd038  33 d2                          xor    edx,edx
2fd03a  e8 d9 28 08 00                 call   0x37f918
2fd03f  48 8d 8d c0 0f 00 00           lea    rcx,[rbp+0xfc0]
2fd046  e8 a9 f4 fc ff                 call   0x2cc4f4
2fd04b  8b 0d 97 17 0f 00              mov    ecx,DWORD PTR [rip+0xf1797]        # 0x3ee7e8 ; CONFIG i.CurrentFontIndexItems value(+0x48)
2fd051  f3 0f 10 05 63 61 f9 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff96163]        # 0x2931bc ; f32=16
2fd059  85 c9                          test   ecx,ecx
2fd05b  74 49                          je     0x2fd0a6
2fd05d  83 e9 01                       sub    ecx,0x1
2fd060  74 40                          je     0x2fd0a2
2fd062  83 e9 01                       sub    ecx,0x1
2fd065  74 30                          je     0x2fd097
2fd067  83 e9 01                       sub    ecx,0x1
2fd06a  74 20                          je     0x2fd08c
2fd06c  83 e9 01                       sub    ecx,0x1
2fd06f  74 10                          je     0x2fd081
2fd071  83 f9 01                       cmp    ecx,0x1
2fd074  75 2c                          jne    0x2fd0a2
2fd076  f3 44 0f 10 25 51 61 f9 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff96151]        # 0x2931d0 ; f32=24
2fd07f  eb 25                          jmp    0x2fd0a6
2fd081  f3 44 0f 10 25 3e 61 f9 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff9613e]        # 0x2931c8 ; f32=22
2fd08a  eb 1a                          jmp    0x2fd0a6
2fd08c  f3 44 0f 10 25 8b 0a f9 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff90a8b]        # 0x28db20 ; f32=20
2fd095  eb 0f                          jmp    0x2fd0a6
2fd097  f3 44 0f 10 25 20 61 f9 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff96120]        # 0x2931c0 ; f32=18
2fd0a0  eb 04                          jmp    0x2fd0a6
2fd0a2  44 0f 28 e0                    movaps xmm12,xmm0
2fd0a6  8b 05 8c 1c 0f 00              mov    eax,DWORD PTR [rip+0xf1c8c]        # 0x3eed38 ; CONFIG i.FontIndex value(+0x48)
2fd0ac  f3 44 0f 10 2d 67 0a f9 ff     movss  xmm13,DWORD PTR [rip+0xfffffffffff90a67]        # 0x28db1c ; f32=10
2fd0b5  83 f8 02                       cmp    eax,0x2
2fd0b8  75 0b                          jne    0x2fd0c5
2fd0ba  f3 44 0f 10 25 e1 60 f9 ff     movss  xmm12,DWORD PTR [rip+0xfffffffffff960e1]        # 0x2931a4 ; f32=11
2fd0c3  eb 13                          jmp    0x2fd0d8
2fd0c5  85 c0                          test   eax,eax
2fd0c7  75 06                          jne    0x2fd0cf
2fd0c9  45 0f 28 e5                    movaps xmm12,xmm13
2fd0cd  eb 09                          jmp    0x2fd0d8
2fd0cf  83 f8 03                       cmp    eax,0x3
2fd0d2  75 04                          jne    0x2fd0d8
2fd0d4  44 0f 28 e0                    movaps xmm12,xmm0
2fd0d8  49 8b cc                       mov    rcx,r12
2fd0db  e8 a0 b0 ff ff                 call   0x2f8180
2fd0e0  49 8b cc                       mov    rcx,r12
2fd0e3  88 85 e0 29 00 00              mov    BYTE PTR [rbp+0x29e0],al
2fd0e9  44 8a f0                       mov    r14b,al
2fd0ec  e8 f7 b0 ff ff                 call   0x2f81e8
2fd0f1  40 8a f0                       mov    sil,al
2fd0f4  88 85 e0 01 00 00              mov    BYTE PTR [rbp+0x1e0],al
2fd0fa  e8 f1 39 fe ff                 call   0x2e0af0
2fd0ff  e8 ec 38 fe ff                 call   0x2e09f0
2fd104  48 8d 95 00 13 00 00           lea    rdx,[rbp+0x1300]
2fd10b  48 8d 0d be b6 f1 ff           lea    rcx,[rip+0xfffffffffff1b6be]        # 0x2187d0
2fd112  e8 55 37 02 00                 call   0x32086c
2fd117  48 8b c8                       mov    rcx,rax
2fd11a  48 8b d8                       mov    rbx,rax
2fd11d  e8 56 48 fd ff                 call   0x2d1978
2fd122  48 8b cb                       mov    rcx,rbx
2fd125  48 89 85 48 03 00 00           mov    QWORD PTR [rbp+0x348],rax
2fd12c  48 8b f8                       mov    rdi,rax
2fd12f  e8 8c a8 fd ff                 call   0x2d79c0
2fd134  48 89 85 f0 01 00 00           mov    QWORD PTR [rbp+0x1f0],rax
2fd13b  48 3b f8                       cmp    rdi,rax
2fd13e  0f 84 88 a4 00 00              je     0x3075cc
2fd144  f3 44 0f 10 3d 07 01 f9 ff     movss  xmm15,DWORD PTR [rip+0xfffffffffff90107]        # 0x28d254 ; f32=1
2fd14d  f3 44 0f 10 35 2a 60 f9 ff     movss  xmm14,DWORD PTR [rip+0xfffffffffff9602a]        # 0x293180 ; f32=5
2fd156  48 8b d7                       mov    rdx,rdi
2fd159  48 8d 8d 70 02 00 00           lea    rcx,[rbp+0x270]
2fd160  e8 e3 1d ff ff                 call   0x2eef48
2fd165  4c 8b ad 78 02 00 00           mov    r13,QWORD PTR [rbp+0x278]
2fd16c  49 8b cd                       mov    rcx,r13
2fd16f  e8 94 dd fc ff                 call   0x2caf08
2fd174  33 db                          xor    ebx,ebx
2fd176  84 c0                          test   al,al
2fd178  0f 84 23 a4 00 00              je     0x3075a1
2fd17e  49 8b cd                       mov    rcx,r13
2fd181  e8 16 3d fe ff                 call   0x2e0e9c
2fd186  84 c0                          test   al,al
2fd188  0f 84 13 a4 00 00              je     0x3075a1
2fd18e  49 8b cd                       mov    rcx,r13
2fd191  e8 be 88 01 00                 call   0x315a54
2fd196  48 8b c8                       mov    rcx,rax
2fd199  4c 8b c0                       mov    r8,rax
2fd19c  e8 67 dd fc ff                 call   0x2caf08
2fd1a1  84 c0                          test   al,al
2fd1a3  0f 84 f8 a3 00 00              je     0x3075a1
2fd1a9  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
2fd1ae  49 8b c8                       mov    rcx,r8
2fd1b1  e8 1e 76 07 00                 call   0x3747d4
2fd1b6  48 8d 8d d0 01 00 00           lea    rcx,[rbp+0x1d0]
2fd1bd  e8 e2 e1 fc ff                 call   0x2cb3a4
2fd1c2  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fd1c8  4c 8d 0d d9 a0 0d 00           lea    r9,[rip+0xda0d9]        # 0x3d72a8
2fd1cf  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fd1d3  4c 8d 85 d0 01 00 00           lea    r8,[rbp+0x1d0]
2fd1da  4c 8b bd 50 02 00 00           mov    r15,QWORD PTR [rbp+0x250]
2fd1e1  48 8d 95 b0 08 00 00           lea    rdx,[rbp+0x8b0]
2fd1e8  49 8b cf                       mov    rcx,r15
2fd1eb  f2 0f 11 85 b0 08 00 00        movsd  QWORD PTR [rbp+0x8b0],xmm0
2fd1f3  89 85 b8 08 00 00              mov    DWORD PTR [rbp+0x8b8],eax
2fd1f9  e8 22 fb 06 00                 call   0x36cd20
2fd1fe  48 8d 95 68 0a 00 00           lea    rdx,[rbp+0xa68]
2fd205  40 8a f8                       mov    dil,al
2fd208  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2fd20d  e8 1e 2d fe ff                 call   0x2dff30
2fd212  33 d2                          xor    edx,edx
2fd214  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd219  41 b8 68 02 00 00              mov    r8d,0x268
2fd21f  44 0f 28 c8                    movaps xmm9,xmm0
2fd223  e8 48 bb 0c 00                 call   0x3c8d70
2fd228  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd22d  e8 86 1d ff ff                 call   0x2eefb8
2fd232  8b 8d a0 02 00 00              mov    ecx,DWORD PTR [rbp+0x2a0]
2fd238  44 8d 43 01                    lea    r8d,[rbx+0x1]
2fd23c  41 3b c8                       cmp    ecx,r8d
2fd23f  0f 85 e8 00 00 00              jne    0x2fd32d
2fd245  48 8d 95 62 0e 00 00           lea    rdx,[rbp+0xe62]
2fd24c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fd251  e8 56 54 ff ff                 call   0x2f26ac ; STRING getter=0x2f26ac StoneOre
2fd256  48 8b c8                       mov    rcx,rax
2fd259  e8 2e c9 fe ff                 call   0x2e9b8c
2fd25e  48 8b d0                       mov    rdx,rax
2fd261  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd266  e8 fd 79 fd ff                 call   0x2d4c68
2fd26b  0f 10 05 a6 e3 0e 00           movups xmm0,XMMWORD PTR [rip+0xee3a6]        # 0x3eb618 ; CONFIG C.StoneOreColor value(+0x48)
2fd272  8a 15 50 a7 0e 00              mov    dl,BYTE PTR [rip+0xea750]        # 0x3e79c8 ; CONFIG Bools.StoneOre value(+0x48)
2fd278  33 c0                          xor    eax,eax
2fd27a  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd27e  84 d2                          test   dl,dl
2fd280  74 16                          je     0x2fd298
2fd282  40 84 ff                       test   dil,dil
2fd285  74 11                          je     0x2fd298
2fd287  45 84 f6                       test   r14b,r14b
2fd28a  74 0c                          je     0x2fd298
2fd28c  44 8d 4b 01                    lea    r9d,[rbx+0x1]
2fd290  41 8a c9                       mov    cl,r9b
2fd293  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd296  eb 0b                          jmp    0x2fd2a3
2fd298  8a c8                          mov    cl,al
2fd29a  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd29d  41 b9 01 00 00 00              mov    r9d,0x1
2fd2a3  8b 05 df 15 0f 00              mov    eax,DWORD PTR [rip+0xf15df]        # 0x3ee888 ; CONFIG i.OreDistance value(+0x48)
2fd2a9  44 8a 05 18 b1 0e 00           mov    r8b,BYTE PTR [rip+0xeb118]        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd2b0  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd2b3  33 c0                          xor    eax,eax
2fd2b5  38 05 3d 9a 0e 00              cmp    BYTE PTR [rip+0xe9a3d],al        # 0x3e6cf8 ; CONFIG Bools.DrawOnlyOre value(+0x48)
2fd2bb  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd2c5  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd2cf  74 12                          je     0x2fd2e3
2fd2d1  45 84 c0                       test   r8b,r8b
2fd2d4  74 0d                          je     0x2fd2e3
2fd2d6  45 84 f6                       test   r14b,r14b
2fd2d9  74 08                          je     0x2fd2e3
2fd2db  44 88 4d c5                    mov    BYTE PTR [rbp-0x3b],r9b
2fd2df  84 d2                          test   dl,dl
2fd2e1  75 03                          jne    0x2fd2e6
2fd2e3  88 45 c5                       mov    BYTE PTR [rbp-0x3b],al
2fd2e6  8b 05 6c 1d 0f 00              mov    eax,DWORD PTR [rip+0xf1d6c]        # 0x3ef058 ; CONFIG i.OreChamIndex value(+0x48)
2fd2ec  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd2ef  33 c0                          xor    eax,eax
2fd2f1  38 05 91 9b 0e 00              cmp    BYTE PTR [rip+0xe9b91],al        # 0x3e6e88 ; CONFIG Bools.ChamOres value(+0x48)
2fd2f7  74 08                          je     0x2fd301
2fd2f9  44 88 4d b8                    mov    BYTE PTR [rbp-0x48],r9b
2fd2fd  84 c9                          test   cl,cl
2fd2ff  75 03                          jne    0x2fd304
2fd301  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd304  45 84 c0                       test   r8b,r8b
2fd307  75 08                          jne    0x2fd311
2fd309  38 05 a9 cf 0e 00              cmp    BYTE PTR [rip+0xecfa9],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd30f  74 0d                          je     0x2fd31e
2fd311  84 d2                          test   dl,dl
2fd313  74 09                          je     0x2fd31e
2fd315  44 88 4d c7                    mov    BYTE PTR [rbp-0x39],r9b
2fd319  45 84 f6                       test   r14b,r14b
2fd31c  75 03                          jne    0x2fd321
2fd31e  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd321  48 8d 95 68 20 00 00           lea    rdx,[rbp+0x2068]
2fd328  e9 75 03 00 00                 jmp    0x2fd6a2
2fd32d  83 f9 7a                       cmp    ecx,0x7a
2fd330  0f 85 e8 00 00 00              jne    0x2fd41e
2fd336  48 8d 95 e9 0a 00 00           lea    rdx,[rbp+0xae9]
2fd33d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fd342  e8 d9 54 ff ff                 call   0x2f2820 ; STRING getter=0x2f2820 HQMOre
2fd347  48 8b c8                       mov    rcx,rax
2fd34a  e8 a5 09 fd ff                 call   0x2cdcf4
2fd34f  48 8b d0                       mov    rdx,rax
2fd352  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd357  e8 0c 79 fd ff                 call   0x2d4c68
2fd35c  0f 10 05 d5 e3 0e 00           movups xmm0,XMMWORD PTR [rip+0xee3d5]        # 0x3eb738 ; CONFIG C.MetalOreColor value(+0x48)
2fd363  8a 15 af a6 0e 00              mov    dl,BYTE PTR [rip+0xea6af]        # 0x3e7a18 ; CONFIG Bools.HQMOre value(+0x48)
2fd369  33 c0                          xor    eax,eax
2fd36b  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd36f  84 d2                          test   dl,dl
2fd371  74 16                          je     0x2fd389
2fd373  40 84 ff                       test   dil,dil
2fd376  74 11                          je     0x2fd389
2fd378  45 84 f6                       test   r14b,r14b
2fd37b  74 0c                          je     0x2fd389
2fd37d  44 8d 48 01                    lea    r9d,[rax+0x1]
2fd381  41 8a c9                       mov    cl,r9b
2fd384  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd387  eb 0b                          jmp    0x2fd394
2fd389  8a c8                          mov    cl,al
2fd38b  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd38e  41 b9 01 00 00 00              mov    r9d,0x1
2fd394  8b 05 ee 14 0f 00              mov    eax,DWORD PTR [rip+0xf14ee]        # 0x3ee888 ; CONFIG i.OreDistance value(+0x48)
2fd39a  44 8a 05 27 b0 0e 00           mov    r8b,BYTE PTR [rip+0xeb027]        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd3a1  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd3a4  33 c0                          xor    eax,eax
2fd3a6  38 05 4c 99 0e 00              cmp    BYTE PTR [rip+0xe994c],al        # 0x3e6cf8 ; CONFIG Bools.DrawOnlyOre value(+0x48)
2fd3ac  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd3b6  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd3c0  74 12                          je     0x2fd3d4
2fd3c2  45 84 c0                       test   r8b,r8b
2fd3c5  74 0d                          je     0x2fd3d4
2fd3c7  45 84 f6                       test   r14b,r14b
2fd3ca  74 08                          je     0x2fd3d4
2fd3cc  44 88 4d c5                    mov    BYTE PTR [rbp-0x3b],r9b
2fd3d0  84 d2                          test   dl,dl
2fd3d2  75 03                          jne    0x2fd3d7
2fd3d4  88 45 c5                       mov    BYTE PTR [rbp-0x3b],al
2fd3d7  8b 05 7b 1c 0f 00              mov    eax,DWORD PTR [rip+0xf1c7b]        # 0x3ef058 ; CONFIG i.OreChamIndex value(+0x48)
2fd3dd  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd3e0  33 c0                          xor    eax,eax
2fd3e2  38 05 a0 9a 0e 00              cmp    BYTE PTR [rip+0xe9aa0],al        # 0x3e6e88 ; CONFIG Bools.ChamOres value(+0x48)
2fd3e8  74 08                          je     0x2fd3f2
2fd3ea  44 88 4d b8                    mov    BYTE PTR [rbp-0x48],r9b
2fd3ee  84 c9                          test   cl,cl
2fd3f0  75 03                          jne    0x2fd3f5
2fd3f2  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd3f5  45 84 c0                       test   r8b,r8b
2fd3f8  75 08                          jne    0x2fd402
2fd3fa  38 05 b8 ce 0e 00              cmp    BYTE PTR [rip+0xeceb8],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd400  74 0d                          je     0x2fd40f
2fd402  84 d2                          test   dl,dl
2fd404  74 09                          je     0x2fd40f
2fd406  44 88 4d c7                    mov    BYTE PTR [rbp-0x39],r9b
2fd40a  45 84 f6                       test   r14b,r14b
2fd40d  75 03                          jne    0x2fd412
2fd40f  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd412  48 8d 95 78 20 00 00           lea    rdx,[rbp+0x2078]
2fd419  e9 84 02 00 00                 jmp    0x2fd6a2
2fd41e  41 b9 02 00 00 00              mov    r9d,0x2
2fd424  41 3b c9                       cmp    ecx,r9d
2fd427  0f 85 e5 00 00 00              jne    0x2fd512
2fd42d  48 8d 95 6b 0e 00 00           lea    rdx,[rbp+0xe6b]
2fd434  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fd439  e8 ae 55 ff ff                 call   0x2f29ec ; STRING getter=0x2f29ec MetalOre
2fd43e  48 8b c8                       mov    rcx,rax
2fd441  e8 46 c7 fe ff                 call   0x2e9b8c
2fd446  48 8b d0                       mov    rdx,rax
2fd449  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd44e  e8 15 78 fd ff                 call   0x2d4c68
2fd453  0f 10 05 7e e2 0e 00           movups xmm0,XMMWORD PTR [rip+0xee27e]        # 0x3eb6d8
2fd45a  40 8a 35 07 a6 0e 00           mov    sil,BYTE PTR [rip+0xea607]        # 0x3e7a68 ; CONFIG Bools.MetalOre value(+0x48)
2fd461  33 c0                          xor    eax,eax
2fd463  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd467  40 84 f6                       test   sil,sil
2fd46a  74 11                          je     0x2fd47d
2fd46c  40 84 ff                       test   dil,dil
2fd46f  74 0c                          je     0x2fd47d
2fd471  45 84 f6                       test   r14b,r14b
2fd474  74 07                          je     0x2fd47d
2fd476  b3 01                          mov    bl,0x1
2fd478  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fd47b  eb 03                          jmp    0x2fd480
2fd47d  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd480  8b 05 02 14 0f 00              mov    eax,DWORD PTR [rip+0xf1402]        # 0x3ee888 ; CONFIG i.OreDistance value(+0x48)
2fd486  40 8a 3d 3b af 0e 00           mov    dil,BYTE PTR [rip+0xeaf3b]        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd48d  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd490  33 c0                          xor    eax,eax
2fd492  38 05 60 98 0e 00              cmp    BYTE PTR [rip+0xe9860],al        # 0x3e6cf8 ; CONFIG Bools.DrawOnlyOre value(+0x48)
2fd498  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd4a2  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd4ac  74 13                          je     0x2fd4c1
2fd4ae  40 84 ff                       test   dil,dil
2fd4b1  74 0e                          je     0x2fd4c1
2fd4b3  45 84 f6                       test   r14b,r14b
2fd4b6  74 09                          je     0x2fd4c1
2fd4b8  c6 45 c5 01                    mov    BYTE PTR [rbp-0x3b],0x1
2fd4bc  40 84 f6                       test   sil,sil
2fd4bf  75 03                          jne    0x2fd4c4
2fd4c1  88 45 c5                       mov    BYTE PTR [rbp-0x3b],al
2fd4c4  48 8d 0d 45 1b 0f 00           lea    rcx,[rip+0xf1b45]        # 0x3ef010
2fd4cb  e8 0c 23 ff ff                 call   0x2ef7dc
2fd4d0  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd4d3  33 c0                          xor    eax,eax
2fd4d5  38 05 ad 99 0e 00              cmp    BYTE PTR [rip+0xe99ad],al        # 0x3e6e88 ; CONFIG Bools.ChamOres value(+0x48)
2fd4db  74 08                          je     0x2fd4e5
2fd4dd  c6 45 b8 01                    mov    BYTE PTR [rbp-0x48],0x1
2fd4e1  84 db                          test   bl,bl
2fd4e3  75 03                          jne    0x2fd4e8
2fd4e5  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd4e8  40 84 ff                       test   dil,dil
2fd4eb  75 08                          jne    0x2fd4f5
2fd4ed  38 05 c5 cd 0e 00              cmp    BYTE PTR [rip+0xecdc5],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd4f3  74 0e                          je     0x2fd503
2fd4f5  40 84 f6                       test   sil,sil
2fd4f8  74 09                          je     0x2fd503
2fd4fa  c6 45 c7 01                    mov    BYTE PTR [rbp-0x39],0x1
2fd4fe  45 84 f6                       test   r14b,r14b
2fd501  75 03                          jne    0x2fd506
2fd503  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd506  48 8d 95 88 20 00 00           lea    rdx,[rbp+0x2088]
2fd50d  e9 90 01 00 00                 jmp    0x2fd6a2
2fd512  83 f9 03                       cmp    ecx,0x3
2fd515  0f 85 e8 00 00 00              jne    0x2fd603
2fd51b  48 8d 95 36 0f 00 00           lea    rdx,[rbp+0xf36]
2fd522  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fd527  e8 08 57 ff ff                 call   0x2f2c34 ; STRING getter=0x2f2c34 SulfurOre
2fd52c  48 8b c8                       mov    rcx,rax
2fd52f  e8 10 08 fd ff                 call   0x2cdd44
2fd534  48 8b d0                       mov    rdx,rax
2fd537  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd53c  e8 27 77 fd ff                 call   0x2d4c68
2fd541  0f 10 05 50 e2 0e 00           movups xmm0,XMMWORD PTR [rip+0xee250]        # 0x3eb798 ; CONFIG C.SulfurOreColor value(+0x48)
2fd548  8a 15 ba a5 0e 00              mov    dl,BYTE PTR [rip+0xea5ba]        # 0x3e7b08 ; CONFIG Bools.SulfurOre value(+0x48)
2fd54e  33 c0                          xor    eax,eax
2fd550  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd554  84 d2                          test   dl,dl
2fd556  74 16                          je     0x2fd56e
2fd558  40 84 ff                       test   dil,dil
2fd55b  74 11                          je     0x2fd56e
2fd55d  45 84 f6                       test   r14b,r14b
2fd560  74 0c                          je     0x2fd56e
2fd562  44 8d 48 01                    lea    r9d,[rax+0x1]
2fd566  41 8a c9                       mov    cl,r9b
2fd569  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd56c  eb 0b                          jmp    0x2fd579
2fd56e  8a c8                          mov    cl,al
2fd570  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd573  41 b9 01 00 00 00              mov    r9d,0x1
2fd579  8b 05 09 13 0f 00              mov    eax,DWORD PTR [rip+0xf1309]        # 0x3ee888 ; CONFIG i.OreDistance value(+0x48)
2fd57f  44 8a 05 42 ae 0e 00           mov    r8b,BYTE PTR [rip+0xeae42]        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd586  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd589  33 c0                          xor    eax,eax
2fd58b  38 05 67 97 0e 00              cmp    BYTE PTR [rip+0xe9767],al        # 0x3e6cf8 ; CONFIG Bools.DrawOnlyOre value(+0x48)
2fd591  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd59b  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd5a5  74 12                          je     0x2fd5b9
2fd5a7  45 84 c0                       test   r8b,r8b
2fd5aa  74 0d                          je     0x2fd5b9
2fd5ac  45 84 f6                       test   r14b,r14b
2fd5af  74 08                          je     0x2fd5b9
2fd5b1  44 88 4d c5                    mov    BYTE PTR [rbp-0x3b],r9b
2fd5b5  84 d2                          test   dl,dl
2fd5b7  75 03                          jne    0x2fd5bc
2fd5b9  88 45 c5                       mov    BYTE PTR [rbp-0x3b],al
2fd5bc  8b 05 96 1a 0f 00              mov    eax,DWORD PTR [rip+0xf1a96]        # 0x3ef058 ; CONFIG i.OreChamIndex value(+0x48)
2fd5c2  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd5c5  33 c0                          xor    eax,eax
2fd5c7  38 05 bb 98 0e 00              cmp    BYTE PTR [rip+0xe98bb],al        # 0x3e6e88 ; CONFIG Bools.ChamOres value(+0x48)
2fd5cd  74 08                          je     0x2fd5d7
2fd5cf  44 88 4d b8                    mov    BYTE PTR [rbp-0x48],r9b
2fd5d3  84 c9                          test   cl,cl
2fd5d5  75 03                          jne    0x2fd5da
2fd5d7  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd5da  45 84 c0                       test   r8b,r8b
2fd5dd  75 08                          jne    0x2fd5e7
2fd5df  38 05 d3 cc 0e 00              cmp    BYTE PTR [rip+0xeccd3],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd5e5  74 0d                          je     0x2fd5f4
2fd5e7  84 d2                          test   dl,dl
2fd5e9  74 09                          je     0x2fd5f4
2fd5eb  44 88 4d c7                    mov    BYTE PTR [rbp-0x39],r9b
2fd5ef  45 84 f6                       test   r14b,r14b
2fd5f2  75 03                          jne    0x2fd5f7
2fd5f4  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd5f7  48 8d 95 98 20 00 00           lea    rdx,[rbp+0x2098]
2fd5fe  e9 9f 00 00 00                 jmp    0x2fd6a2
2fd603  41 bb 04 00 00 00              mov    r11d,0x4
2fd609  41 3b cb                       cmp    ecx,r11d
2fd60c  0f 85 de 00 00 00              jne    0x2fd6f0
2fd612  0f 10 05 5f e0 0e 00           movups xmm0,XMMWORD PTR [rip+0xee05f]        # 0x3eb678 ; CONFIG C.WoodPileColor value(+0x48)
2fd619  8a 15 09 99 0e 00              mov    dl,BYTE PTR [rip+0xe9909]        # 0x3e6f28 ; CONFIG Bools.WoodPile value(+0x48)
2fd61f  33 c0                          xor    eax,eax
2fd621  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd625  84 d2                          test   dl,dl
2fd627  74 12                          je     0x2fd63b
2fd629  40 84 ff                       test   dil,dil
2fd62c  74 0d                          je     0x2fd63b
2fd62e  40 84 f6                       test   sil,sil
2fd631  74 08                          je     0x2fd63b
2fd633  41 8a c8                       mov    cl,r8b
2fd636  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd639  eb 05                          jmp    0x2fd640
2fd63b  8a c8                          mov    cl,al
2fd63d  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd640  8b 05 42 12 0f 00              mov    eax,DWORD PTR [rip+0xf1242]        # 0x3ee888 ; CONFIG i.OreDistance value(+0x48)
2fd646  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd649  8b 05 09 1a 0f 00              mov    eax,DWORD PTR [rip+0xf1a09]        # 0x3ef058 ; CONFIG i.OreChamIndex value(+0x48)
2fd64f  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd652  33 c0                          xor    eax,eax
2fd654  38 05 2e 98 0e 00              cmp    BYTE PTR [rip+0xe982e],al        # 0x3e6e88 ; CONFIG Bools.ChamOres value(+0x48)
2fd65a  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd664  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd66e  74 08                          je     0x2fd678
2fd670  44 88 45 b8                    mov    BYTE PTR [rbp-0x48],r8b
2fd674  84 c9                          test   cl,cl
2fd676  75 03                          jne    0x2fd67b
2fd678  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd67b  38 05 47 ad 0e 00              cmp    BYTE PTR [rip+0xead47],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd681  75 08                          jne    0x2fd68b
2fd683  38 05 2f cc 0e 00              cmp    BYTE PTR [rip+0xecc2f],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd689  74 0d                          je     0x2fd698
2fd68b  84 d2                          test   dl,dl
2fd68d  74 09                          je     0x2fd698
2fd68f  44 88 45 c7                    mov    BYTE PTR [rbp-0x39],r8b
2fd693  40 84 f6                       test   sil,sil
2fd696  75 03                          jne    0x2fd69b
2fd698  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd69b  48 8d 95 a8 20 00 00           lea    rdx,[rbp+0x20a8]
2fd6a2  8a 05 30 93 0e 00              mov    al,BYTE PTR [rip+0xe9330]        # 0x3e69d8 ; CONFIG Bools.OreIcons value(+0x48)
2fd6a8  48 8d 0d 89 2e 0f 00           lea    rcx,[rip+0xf2e89]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fd6af  f3 0f 10 05 41 fc 0e 00        movss  xmm0,DWORD PTR [rip+0xefc41]        # 0x3ed2f8 ; CONFIG F.OreIconsMult value(+0x48)
2fd6b7  45 33 c0                       xor    r8d,r8d
2fd6ba  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fd6bf  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fd6c2  e8 29 c2 fe ff                 call   0x2e98f0
2fd6c7  48 8b c8                       mov    rcx,rax
2fd6ca  e8 a1 76 fd ff                 call   0x2d4d70
2fd6cf  84 c0                          test   al,al
2fd6d1  75 16                          jne    0x2fd6e9
2fd6d3  33 c0                          xor    eax,eax
2fd6d5  38 05 dd 85 0e 00              cmp    BYTE PTR [rip+0xe85dd],al        # 0x3e5cb8
2fd6db  74 0c                          je     0x2fd6e9
2fd6dd  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd6e0  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd6e3  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd6e6  88 45 c5                       mov    BYTE PTR [rbp-0x3b],al
2fd6e9  33 d2                          xor    edx,edx
2fd6eb  e9 66 82 00 00                 jmp    0x305956
2fd6f0  8d 41 e1                       lea    eax,[rcx-0x1f]
2fd6f3  49 8b f0                       mov    rsi,r8
2fd6f6  3b c6                          cmp    eax,esi
2fd6f8  0f 86 81 83 00 00              jbe    0x305a7f
2fd6fe  83 f9 21                       cmp    ecx,0x21
2fd701  0f 85 3e 01 00 00              jne    0x2fd845
2fd707  0f 10 05 6a e2 0e 00           movups xmm0,XMMWORD PTR [rip+0xee26a]        # 0x3eb978 ; CONFIG C.HempColor value(+0x48)
2fd70e  8a 15 b4 b1 0e 00              mov    dl,BYTE PTR [rip+0xeb1b4]        # 0x3e88c8 ; CONFIG Bools.hempesp value(+0x48)
2fd714  33 c0                          xor    eax,eax
2fd716  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd71a  84 d2                          test   dl,dl
2fd71c  74 0d                          je     0x2fd72b
2fd71e  40 84 ff                       test   dil,dil
2fd721  74 08                          je     0x2fd72b
2fd723  40 8a ce                       mov    cl,sil
2fd726  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd729  eb 05                          jmp    0x2fd730
2fd72b  8a c8                          mov    cl,al
2fd72d  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd730  8b 05 a2 1b 0f 00              mov    eax,DWORD PTR [rip+0xf1ba2]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fd736  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd739  8b 05 f9 1a 0f 00              mov    eax,DWORD PTR [rip+0xf1af9]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fd73f  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd742  33 c0                          xor    eax,eax
2fd744  38 05 4e b4 0e 00              cmp    BYTE PTR [rip+0xeb44e],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fd74a  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd754  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd75e  74 08                          je     0x2fd768
2fd760  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fd764  84 c9                          test   cl,cl
2fd766  75 03                          jne    0x2fd76b
2fd768  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd76b  38 05 57 ac 0e 00              cmp    BYTE PTR [rip+0xeac57],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd771  75 08                          jne    0x2fd77b
2fd773  38 05 3f cb 0e 00              cmp    BYTE PTR [rip+0xecb3f],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd779  74 08                          je     0x2fd783
2fd77b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fd77f  84 d2                          test   dl,dl
2fd781  75 03                          jne    0x2fd786
2fd783  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd786  8a 05 9c 92 0e 00              mov    al,BYTE PTR [rip+0xe929c]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fd78c  48 8d 95 b8 20 00 00           lea    rdx,[rbp+0x20b8]
2fd793  f3 0f 10 05 ad fb 0e 00        movss  xmm0,DWORD PTR [rip+0xefbad]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fd79b  48 8d 0d 96 2d 0f 00           lea    rcx,[rip+0xf2d96]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fd7a2  4d 8b c1                       mov    r8,r9
2fd7a5  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fd7aa  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fd7ad  e8 3e c1 fe ff                 call   0x2e98f0
2fd7b2  48 8b c8                       mov    rcx,rax
2fd7b5  e8 b6 75 fd ff                 call   0x2d4d70
2fd7ba  84 c0                          test   al,al
2fd7bc  75 13                          jne    0x2fd7d1
2fd7be  33 c0                          xor    eax,eax
2fd7c0  38 05 f2 84 0e 00              cmp    BYTE PTR [rip+0xe84f2],al        # 0x3e5cb8
2fd7c6  74 09                          je     0x2fd7d1
2fd7c8  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd7cb  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd7ce  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd7d1  8b d6                          mov    edx,esi
2fd7d3  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd7d8  e8 27 d0 fe ff                 call   0x2ea804
2fd7dd  38 1d 75 c1 0e 00              cmp    BYTE PTR [rip+0xec175],bl        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fd7e3  0f 84 d8 7a 00 00              je     0x3052c1
2fd7e9  38 1d 92 1c 0f 00              cmp    BYTE PTR [rip+0xf1c92],bl        # 0x3ef481
2fd7ef  0f 84 cc 7a 00 00              je     0x3052c1
2fd7f5  45 33 c0                       xor    r8d,r8d
2fd7f8  48 8d 95 c8 20 00 00           lea    rdx,[rbp+0x20c8]
2fd7ff  48 8d 0d e2 2e 0f 00           lea    rcx,[rip+0xf2ee2]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fd806  e8 e5 c0 fe ff                 call   0x2e98f0
2fd80b  48 8b c8                       mov    rcx,rax
2fd80e  e8 5d 75 fd ff                 call   0x2d4d70
2fd813  84 c0                          test   al,al
2fd815  0f 84 a6 7a 00 00              je     0x3052c1
2fd81b  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fd821  4c 8d 85 c0 08 00 00           lea    r8,[rbp+0x8c0]
2fd828  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fd82c  41 b9 06 00 00 00              mov    r9d,0x6
2fd832  f2 0f 11 85 c0 08 00 00        movsd  QWORD PTR [rbp+0x8c0],xmm0
2fd83a  89 85 c8 08 00 00              mov    DWORD PTR [rbp+0x8c8],eax
2fd840  e9 f7 1c 00 00                 jmp    0x2ff53c
2fd845  83 f9 3f                       cmp    ecx,0x3f
2fd848  0f 85 40 01 00 00              jne    0x2fd98e
2fd84e  0f 10 05 a3 f7 0e 00           movups xmm0,XMMWORD PTR [rip+0xef7a3]        # 0x3ecff8 ; CONFIG C.RoseColor value(+0x48)
2fd855  8a 15 0d ac 0e 00              mov    dl,BYTE PTR [rip+0xeac0d]        # 0x3e8468 ; CONFIG Bools.RoseESP value(+0x48)
2fd85b  33 c0                          xor    eax,eax
2fd85d  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd861  84 d2                          test   dl,dl
2fd863  74 0d                          je     0x2fd872
2fd865  40 84 ff                       test   dil,dil
2fd868  74 08                          je     0x2fd872
2fd86a  40 8a ce                       mov    cl,sil
2fd86d  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd870  eb 05                          jmp    0x2fd877
2fd872  8a c8                          mov    cl,al
2fd874  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd877  8b 05 5b 1a 0f 00              mov    eax,DWORD PTR [rip+0xf1a5b]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fd87d  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd880  8b 05 b2 19 0f 00              mov    eax,DWORD PTR [rip+0xf19b2]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fd886  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd889  33 c0                          xor    eax,eax
2fd88b  38 05 07 b3 0e 00              cmp    BYTE PTR [rip+0xeb307],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fd891  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd89b  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd8a5  74 08                          je     0x2fd8af
2fd8a7  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fd8ab  84 c9                          test   cl,cl
2fd8ad  75 03                          jne    0x2fd8b2
2fd8af  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd8b2  38 05 10 ab 0e 00              cmp    BYTE PTR [rip+0xeab10],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fd8b8  75 08                          jne    0x2fd8c2
2fd8ba  38 05 f8 c9 0e 00              cmp    BYTE PTR [rip+0xec9f8],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fd8c0  74 08                          je     0x2fd8ca
2fd8c2  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fd8c6  84 d2                          test   dl,dl
2fd8c8  75 03                          jne    0x2fd8cd
2fd8ca  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd8cd  8a 05 55 91 0e 00              mov    al,BYTE PTR [rip+0xe9155]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fd8d3  48 8d 95 d8 20 00 00           lea    rdx,[rbp+0x20d8]
2fd8da  f3 0f 10 05 66 fa 0e 00        movss  xmm0,DWORD PTR [rip+0xefa66]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fd8e2  48 8d 0d 4f 2c 0f 00           lea    rcx,[rip+0xf2c4f]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fd8e9  4d 8b c1                       mov    r8,r9
2fd8ec  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fd8f1  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fd8f4  e8 f7 bf fe ff                 call   0x2e98f0
2fd8f9  48 8b c8                       mov    rcx,rax
2fd8fc  e8 6f 74 fd ff                 call   0x2d4d70
2fd901  84 c0                          test   al,al
2fd903  75 13                          jne    0x2fd918
2fd905  33 c0                          xor    eax,eax
2fd907  38 05 ab 83 0e 00              cmp    BYTE PTR [rip+0xe83ab],al        # 0x3e5cb8
2fd90d  74 09                          je     0x2fd918
2fd90f  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd912  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fd915  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd918  8b d6                          mov    edx,esi
2fd91a  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fd91f  e8 e0 ce fe ff                 call   0x2ea804
2fd924  33 c0                          xor    eax,eax
2fd926  38 05 2c c0 0e 00              cmp    BYTE PTR [rip+0xec02c],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fd92c  0f 84 8f 79 00 00              je     0x3052c1
2fd932  38 05 49 1b 0f 00              cmp    BYTE PTR [rip+0xf1b49],al        # 0x3ef481
2fd938  0f 84 83 79 00 00              je     0x3052c1
2fd93e  45 33 c0                       xor    r8d,r8d
2fd941  48 8d 95 e8 20 00 00           lea    rdx,[rbp+0x20e8]
2fd948  48 8d 0d 99 2d 0f 00           lea    rcx,[rip+0xf2d99]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fd94f  e8 9c bf fe ff                 call   0x2e98f0
2fd954  48 8b c8                       mov    rcx,rax
2fd957  e8 14 74 fd ff                 call   0x2d4d70
2fd95c  84 c0                          test   al,al
2fd95e  0f 84 5d 79 00 00              je     0x3052c1
2fd964  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fd96a  4c 8d 85 d0 08 00 00           lea    r8,[rbp+0x8d0]
2fd971  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fd975  41 b9 06 00 00 00              mov    r9d,0x6
2fd97b  f2 0f 11 85 d0 08 00 00        movsd  QWORD PTR [rbp+0x8d0],xmm0
2fd983  89 85 d8 08 00 00              mov    DWORD PTR [rbp+0x8d8],eax
2fd989  e9 ae 1b 00 00                 jmp    0x2ff53c
2fd98e  83 f9 3e                       cmp    ecx,0x3e
2fd991  0f 85 40 01 00 00              jne    0x2fdad7
2fd997  0f 10 05 ba f6 0e 00           movups xmm0,XMMWORD PTR [rip+0xef6ba]        # 0x3ed058 ; CONFIG C.SunflowerColor value(+0x48)
2fd99e  8a 15 14 ab 0e 00              mov    dl,BYTE PTR [rip+0xeab14]        # 0x3e84b8 ; CONFIG Bools.SunflowerESP value(+0x48)
2fd9a4  33 c0                          xor    eax,eax
2fd9a6  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fd9aa  84 d2                          test   dl,dl
2fd9ac  74 0d                          je     0x2fd9bb
2fd9ae  40 84 ff                       test   dil,dil
2fd9b1  74 08                          je     0x2fd9bb
2fd9b3  40 8a ce                       mov    cl,sil
2fd9b6  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fd9b9  eb 05                          jmp    0x2fd9c0
2fd9bb  8a c8                          mov    cl,al
2fd9bd  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fd9c0  8b 05 12 19 0f 00              mov    eax,DWORD PTR [rip+0xf1912]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fd9c6  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fd9c9  8b 05 69 18 0f 00              mov    eax,DWORD PTR [rip+0xf1869]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fd9cf  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fd9d2  33 c0                          xor    eax,eax
2fd9d4  38 05 be b1 0e 00              cmp    BYTE PTR [rip+0xeb1be],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fd9da  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fd9e4  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fd9ee  74 08                          je     0x2fd9f8
2fd9f0  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fd9f4  84 c9                          test   cl,cl
2fd9f6  75 03                          jne    0x2fd9fb
2fd9f8  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fd9fb  38 05 c7 a9 0e 00              cmp    BYTE PTR [rip+0xea9c7],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fda01  75 08                          jne    0x2fda0b
2fda03  38 05 af c8 0e 00              cmp    BYTE PTR [rip+0xec8af],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fda09  74 08                          je     0x2fda13
2fda0b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fda0f  84 d2                          test   dl,dl
2fda11  75 03                          jne    0x2fda16
2fda13  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fda16  8a 05 0c 90 0e 00              mov    al,BYTE PTR [rip+0xe900c]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fda1c  48 8d 95 f8 20 00 00           lea    rdx,[rbp+0x20f8]
2fda23  f3 0f 10 05 1d f9 0e 00        movss  xmm0,DWORD PTR [rip+0xef91d]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fda2b  48 8d 0d 06 2b 0f 00           lea    rcx,[rip+0xf2b06]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fda32  4d 8b c1                       mov    r8,r9
2fda35  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fda3a  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fda3d  e8 ae be fe ff                 call   0x2e98f0
2fda42  48 8b c8                       mov    rcx,rax
2fda45  e8 26 73 fd ff                 call   0x2d4d70
2fda4a  84 c0                          test   al,al
2fda4c  75 13                          jne    0x2fda61
2fda4e  33 c0                          xor    eax,eax
2fda50  38 05 62 82 0e 00              cmp    BYTE PTR [rip+0xe8262],al        # 0x3e5cb8
2fda56  74 09                          je     0x2fda61
2fda58  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fda5b  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fda5e  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fda61  8b d6                          mov    edx,esi
2fda63  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fda68  e8 97 cd fe ff                 call   0x2ea804
2fda6d  33 c0                          xor    eax,eax
2fda6f  38 05 e3 be 0e 00              cmp    BYTE PTR [rip+0xebee3],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fda75  0f 84 46 78 00 00              je     0x3052c1
2fda7b  38 05 00 1a 0f 00              cmp    BYTE PTR [rip+0xf1a00],al        # 0x3ef481
2fda81  0f 84 3a 78 00 00              je     0x3052c1
2fda87  45 33 c0                       xor    r8d,r8d
2fda8a  48 8d 95 08 21 00 00           lea    rdx,[rbp+0x2108]
2fda91  48 8d 0d 50 2c 0f 00           lea    rcx,[rip+0xf2c50]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fda98  e8 53 be fe ff                 call   0x2e98f0
2fda9d  48 8b c8                       mov    rcx,rax
2fdaa0  e8 cb 72 fd ff                 call   0x2d4d70
2fdaa5  84 c0                          test   al,al
2fdaa7  0f 84 14 78 00 00              je     0x3052c1
2fdaad  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fdab3  4c 8d 85 e0 08 00 00           lea    r8,[rbp+0x8e0]
2fdaba  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fdabe  41 b9 06 00 00 00              mov    r9d,0x6
2fdac4  f2 0f 11 85 e0 08 00 00        movsd  QWORD PTR [rbp+0x8e0],xmm0
2fdacc  89 85 e8 08 00 00              mov    DWORD PTR [rbp+0x8e8],eax
2fdad2  e9 65 1a 00 00                 jmp    0x2ff53c
2fdad7  83 f9 40                       cmp    ecx,0x40
2fdada  0f 85 40 01 00 00              jne    0x2fdc20
2fdae0  0f 10 05 d1 f5 0e 00           movups xmm0,XMMWORD PTR [rip+0xef5d1]        # 0x3ed0b8 ; CONFIG C.OrchidColor value(+0x48)
2fdae7  8a 15 1b aa 0e 00              mov    dl,BYTE PTR [rip+0xeaa1b]        # 0x3e8508 ; CONFIG Bools.OrchidESP value(+0x48)
2fdaed  33 c0                          xor    eax,eax
2fdaef  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fdaf3  84 d2                          test   dl,dl
2fdaf5  74 0d                          je     0x2fdb04
2fdaf7  40 84 ff                       test   dil,dil
2fdafa  74 08                          je     0x2fdb04
2fdafc  40 8a ce                       mov    cl,sil
2fdaff  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fdb02  eb 05                          jmp    0x2fdb09
2fdb04  8a c8                          mov    cl,al
2fdb06  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fdb09  8b 05 c9 17 0f 00              mov    eax,DWORD PTR [rip+0xf17c9]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fdb0f  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fdb12  8b 05 20 17 0f 00              mov    eax,DWORD PTR [rip+0xf1720]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fdb18  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fdb1b  33 c0                          xor    eax,eax
2fdb1d  38 05 75 b0 0e 00              cmp    BYTE PTR [rip+0xeb075],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fdb23  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fdb2d  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fdb37  74 08                          je     0x2fdb41
2fdb39  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fdb3d  84 c9                          test   cl,cl
2fdb3f  75 03                          jne    0x2fdb44
2fdb41  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fdb44  38 05 7e a8 0e 00              cmp    BYTE PTR [rip+0xea87e],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fdb4a  75 08                          jne    0x2fdb54
2fdb4c  38 05 66 c7 0e 00              cmp    BYTE PTR [rip+0xec766],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fdb52  74 08                          je     0x2fdb5c
2fdb54  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fdb58  84 d2                          test   dl,dl
2fdb5a  75 03                          jne    0x2fdb5f
2fdb5c  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fdb5f  8a 05 c3 8e 0e 00              mov    al,BYTE PTR [rip+0xe8ec3]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fdb65  48 8d 95 18 21 00 00           lea    rdx,[rbp+0x2118]
2fdb6c  f3 0f 10 05 d4 f7 0e 00        movss  xmm0,DWORD PTR [rip+0xef7d4]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fdb74  48 8d 0d bd 29 0f 00           lea    rcx,[rip+0xf29bd]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fdb7b  4d 8b c1                       mov    r8,r9
2fdb7e  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fdb83  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fdb86  e8 65 bd fe ff                 call   0x2e98f0
2fdb8b  48 8b c8                       mov    rcx,rax
2fdb8e  e8 dd 71 fd ff                 call   0x2d4d70
2fdb93  84 c0                          test   al,al
2fdb95  75 13                          jne    0x2fdbaa
2fdb97  33 c0                          xor    eax,eax
2fdb99  38 05 19 81 0e 00              cmp    BYTE PTR [rip+0xe8119],al        # 0x3e5cb8
2fdb9f  74 09                          je     0x2fdbaa
2fdba1  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fdba4  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fdba7  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fdbaa  8b d6                          mov    edx,esi
2fdbac  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fdbb1  e8 4e cc fe ff                 call   0x2ea804
2fdbb6  33 c0                          xor    eax,eax
2fdbb8  38 05 9a bd 0e 00              cmp    BYTE PTR [rip+0xebd9a],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fdbbe  0f 84 fd 76 00 00              je     0x3052c1
2fdbc4  38 05 b7 18 0f 00              cmp    BYTE PTR [rip+0xf18b7],al        # 0x3ef481
2fdbca  0f 84 f1 76 00 00              je     0x3052c1
2fdbd0  45 33 c0                       xor    r8d,r8d
2fdbd3  48 8d 95 28 21 00 00           lea    rdx,[rbp+0x2128]
2fdbda  48 8d 0d 07 2b 0f 00           lea    rcx,[rip+0xf2b07]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fdbe1  e8 0a bd fe ff                 call   0x2e98f0
2fdbe6  48 8b c8                       mov    rcx,rax
2fdbe9  e8 82 71 fd ff                 call   0x2d4d70
2fdbee  84 c0                          test   al,al
2fdbf0  0f 84 cb 76 00 00              je     0x3052c1
2fdbf6  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fdbfc  4c 8d 85 f0 08 00 00           lea    r8,[rbp+0x8f0]
2fdc03  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fdc07  41 b9 06 00 00 00              mov    r9d,0x6
2fdc0d  f2 0f 11 85 f0 08 00 00        movsd  QWORD PTR [rbp+0x8f0],xmm0
2fdc15  89 85 f8 08 00 00              mov    DWORD PTR [rbp+0x8f8],eax
2fdc1b  e9 1c 19 00 00                 jmp    0x2ff53c
2fdc20  83 f9 22                       cmp    ecx,0x22
2fdc23  0f 85 ca 01 00 00              jne    0x2fddf3
2fdc29  45 33 c9                       xor    r9d,r9d
2fdc2c  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
2fdc34  45 33 c0                       xor    r8d,r8d
2fdc37  48 8d 8d f0 0c 00 00           lea    rcx,[rbp+0xcf0]
2fdc3e  33 d2                          xor    edx,edx
2fdc40  e8 d3 d6 fd ff                 call   0x2db318
2fdc45  0f 10 85 f0 0c 00 00           movups xmm0,XMMWORD PTR [rbp+0xcf0]
2fdc4c  48 8d 95 e0 09 00 00           lea    rdx,[rbp+0x9e0]
2fdc53  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fdc58  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fdc5c  e8 8b 52 ff ff                 call   0x2f2eec ; STRING getter=0x2f2eec Berry
2fdc61  48 8b c8                       mov    rcx,rax
2fdc64  e8 73 a8 fd ff                 call   0x2d84dc
2fdc69  48 8b d0                       mov    rdx,rax
2fdc6c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fdc71  e8 f2 6f fd ff                 call   0x2d4c68
2fdc76  45 33 c0                       xor    r8d,r8d
2fdc79  48 8d 95 38 21 00 00           lea    rdx,[rbp+0x2138]
2fdc80  48 8d 0d 31 24 0f 00           lea    rcx,[rip+0xf2431]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fdc87  e8 64 bc fe ff                 call   0x2e98f0
2fdc8c  48 8b c8                       mov    rcx,rax
2fdc8f  e8 dc 70 fd ff                 call   0x2d4d70
2fdc94  84 c0                          test   al,al
2fdc96  74 09                          je     0x2fdca1
2fdc98  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
2fdc9c  40 84 ff                       test   dil,dil
2fdc9f  75 03                          jne    0x2fdca4
2fdca1  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fdca4  8b 05 2e 16 0f 00              mov    eax,DWORD PTR [rip+0xf162e]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fdcaa  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fdcad  33 c0                          xor    eax,eax
2fdcaf  38 05 13 a7 0e 00              cmp    BYTE PTR [rip+0xea713],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fdcb5  75 08                          jne    0x2fdcbf
2fdcb7  38 05 fb c5 0e 00              cmp    BYTE PTR [rip+0xec5fb],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fdcbd  74 2a                          je     0x2fdce9
2fdcbf  45 33 c0                       xor    r8d,r8d
2fdcc2  48 8d 95 08 27 00 00           lea    rdx,[rbp+0x2708]
2fdcc9  48 8d 0d e8 23 0f 00           lea    rcx,[rip+0xf23e8]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fdcd0  e8 1b bc fe ff                 call   0x2e98f0
2fdcd5  48 8b c8                       mov    rcx,rax
2fdcd8  e8 93 70 fd ff                 call   0x2d4d70
2fdcdd  84 c0                          test   al,al
2fdcdf  74 06                          je     0x2fdce7
2fdce1  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fdce5  eb 05                          jmp    0x2fdcec
2fdce7  33 c0                          xor    eax,eax
2fdce9  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fdcec  8b 05 46 15 0f 00              mov    eax,DWORD PTR [rip+0xf1546]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fdcf2  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fdcf5  33 c0                          xor    eax,eax
2fdcf7  38 05 9b ae 0e 00              cmp    BYTE PTR [rip+0xeae9b],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fdcfd  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fdd07  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fdd11  74 09                          je     0x2fdd1c
2fdd13  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fdd17  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2fdd1a  75 03                          jne    0x2fdd1f
2fdd1c  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fdd1f  8a 05 03 8d 0e 00              mov    al,BYTE PTR [rip+0xe8d03]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fdd25  48 8d 95 18 27 00 00           lea    rdx,[rbp+0x2718]
2fdd2c  f3 0f 10 05 14 f6 0e 00        movss  xmm0,DWORD PTR [rip+0xef614]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fdd34  48 8d 0d fd 27 0f 00           lea    rcx,[rip+0xf27fd]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fdd3b  41 b8 02 00 00 00              mov    r8d,0x2
2fdd41  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fdd46  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fdd49  e8 a2 bb fe ff                 call   0x2e98f0
2fdd4e  48 8b c8                       mov    rcx,rax
2fdd51  e8 1a 70 fd ff                 call   0x2d4d70
2fdd56  84 c0                          test   al,al
2fdd58  75 13                          jne    0x2fdd6d
2fdd5a  33 c0                          xor    eax,eax
2fdd5c  38 05 56 7f 0e 00              cmp    BYTE PTR [rip+0xe7f56],al        # 0x3e5cb8
2fdd62  74 09                          je     0x2fdd6d
2fdd64  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fdd67  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fdd6a  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fdd6d  8b d6                          mov    edx,esi
2fdd6f  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fdd74  e8 8b ca fe ff                 call   0x2ea804
2fdd79  33 c0                          xor    eax,eax
2fdd7b  38 05 d7 bb 0e 00              cmp    BYTE PTR [rip+0xebbd7],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fdd81  0f 84 3a 75 00 00              je     0x3052c1
2fdd87  38 05 f4 16 0f 00              cmp    BYTE PTR [rip+0xf16f4],al        # 0x3ef481
2fdd8d  0f 84 2e 75 00 00              je     0x3052c1
2fdd93  44 8d 70 06                    lea    r14d,[rax+0x6]
2fdd97  45 8b c6                       mov    r8d,r14d
2fdd9a  48 8d 95 28 27 00 00           lea    rdx,[rbp+0x2728]
2fdda1  48 8d 0d 40 29 0f 00           lea    rcx,[rip+0xf2940]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fdda8  e8 43 bb fe ff                 call   0x2e98f0
2fddad  48 8b c8                       mov    rcx,rax
2fddb0  e8 bb 6f fd ff                 call   0x2d4d70
2fddb5  84 c0                          test   al,al
2fddb7  0f 84 04 75 00 00              je     0x3052c1
2fddbd  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fddc1  4c 8d 85 00 09 00 00           lea    r8,[rbp+0x900]
2fddc8  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fddce  89 85 08 09 00 00              mov    DWORD PTR [rbp+0x908],eax
2fddd4  8a 05 ce bb 0e 00              mov    al,BYTE PTR [rip+0xebbce]        # 0x3e99a8 ; CONFIG Bools.autoeat value(+0x48)
2fddda  f6 d8                          neg    al
2fdddc  f2 0f 11 85 00 09 00 00        movsd  QWORD PTR [rbp+0x900],xmm0
2fdde4  45 1b c9                       sbb    r9d,r9d
2fdde7  41 83 e1 fe                    and    r9d,0xfffffffe
2fddeb  45 03 ce                       add    r9d,r14d
2fddee  e9 49 17 00 00                 jmp    0x2ff53c
2fddf3  83 f9 23                       cmp    ecx,0x23
2fddf6  0f 85 b8 01 00 00              jne    0x2fdfb4
2fddfc  41 be ff 00 00 00              mov    r14d,0xff
2fde02  48 8d 8d 00 0d 00 00           lea    rcx,[rbp+0xd00]
2fde09  45 8b ce                       mov    r9d,r14d
2fde0c  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
2fde11  45 33 c0                       xor    r8d,r8d
2fde14  33 d2                          xor    edx,edx
2fde16  e8 fd d4 fd ff                 call   0x2db318
2fde1b  0f 10 85 00 0d 00 00           movups xmm0,XMMWORD PTR [rbp+0xd00]
2fde22  48 8d 95 e6 09 00 00           lea    rdx,[rbp+0x9e6]
2fde29  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fde2e  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fde32  e8 61 52 ff ff                 call   0x2f3098 ; STRING getter=0x2f3098 Berry
2fde37  48 8b c8                       mov    rcx,rax
2fde3a  e8 9d a6 fd ff                 call   0x2d84dc
2fde3f  48 8b d0                       mov    rdx,rax
2fde42  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fde47  e8 1c 6e fd ff                 call   0x2d4c68
2fde4c  4c 8b c6                       mov    r8,rsi
2fde4f  48 8d 95 38 27 00 00           lea    rdx,[rbp+0x2738]
2fde56  48 8d 0d 5b 22 0f 00           lea    rcx,[rip+0xf225b]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fde5d  e8 8e ba fe ff                 call   0x2e98f0
2fde62  48 8b c8                       mov    rcx,rax
2fde65  e8 06 6f fd ff                 call   0x2d4d70
2fde6a  84 c0                          test   al,al
2fde6c  74 09                          je     0x2fde77
2fde6e  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
2fde72  40 84 ff                       test   dil,dil
2fde75  75 03                          jne    0x2fde7a
2fde77  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fde7a  8b 05 58 14 0f 00              mov    eax,DWORD PTR [rip+0xf1458]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fde80  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fde83  33 c0                          xor    eax,eax
2fde85  38 05 3d a5 0e 00              cmp    BYTE PTR [rip+0xea53d],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fde8b  75 08                          jne    0x2fde95
2fde8d  38 05 25 c4 0e 00              cmp    BYTE PTR [rip+0xec425],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fde93  74 2a                          je     0x2fdebf
2fde95  4c 8b c6                       mov    r8,rsi
2fde98  48 8d 95 78 1f 00 00           lea    rdx,[rbp+0x1f78]
2fde9f  48 8d 0d 12 22 0f 00           lea    rcx,[rip+0xf2212]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fdea6  e8 45 ba fe ff                 call   0x2e98f0
2fdeab  48 8b c8                       mov    rcx,rax
2fdeae  e8 bd 6e fd ff                 call   0x2d4d70
2fdeb3  84 c0                          test   al,al
2fdeb5  74 06                          je     0x2fdebd
2fdeb7  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fdebb  eb 05                          jmp    0x2fdec2
2fdebd  33 c0                          xor    eax,eax
2fdebf  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fdec2  8b 05 70 13 0f 00              mov    eax,DWORD PTR [rip+0xf1370]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fdec8  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fdecb  33 c0                          xor    eax,eax
2fdecd  38 05 c5 ac 0e 00              cmp    BYTE PTR [rip+0xeacc5],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fded3  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fdedd  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fdee7  74 09                          je     0x2fdef2
2fdee9  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fdeed  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2fdef0  75 03                          jne    0x2fdef5
2fdef2  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fdef5  8a 05 2d 8b 0e 00              mov    al,BYTE PTR [rip+0xe8b2d]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fdefb  48 8d 95 98 1f 00 00           lea    rdx,[rbp+0x1f98]
2fdf02  f3 0f 10 05 3e f4 0e 00        movss  xmm0,DWORD PTR [rip+0xef43e]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fdf0a  48 8d 0d 27 26 0f 00           lea    rcx,[rip+0xf2627]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fdf11  41 b8 02 00 00 00              mov    r8d,0x2
2fdf17  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fdf1c  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fdf1f  e8 cc b9 fe ff                 call   0x2e98f0
2fdf24  48 8b c8                       mov    rcx,rax
2fdf27  e8 44 6e fd ff                 call   0x2d4d70
2fdf2c  84 c0                          test   al,al
2fdf2e  75 13                          jne    0x2fdf43
2fdf30  33 c0                          xor    eax,eax
2fdf32  38 05 80 7d 0e 00              cmp    BYTE PTR [rip+0xe7d80],al        # 0x3e5cb8
2fdf38  74 09                          je     0x2fdf43
2fdf3a  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fdf3d  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fdf40  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fdf43  8b d6                          mov    edx,esi
2fdf45  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fdf4a  e8 b5 c8 fe ff                 call   0x2ea804
2fdf4f  33 c0                          xor    eax,eax
2fdf51  38 05 01 ba 0e 00              cmp    BYTE PTR [rip+0xeba01],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fdf57  0f 84 64 73 00 00              je     0x3052c1
2fdf5d  38 05 1e 15 0f 00              cmp    BYTE PTR [rip+0xf151e],al        # 0x3ef481
2fdf63  0f 84 58 73 00 00              je     0x3052c1
2fdf69  44 8d 40 07                    lea    r8d,[rax+0x7]
2fdf6d  48 8d 95 a8 1f 00 00           lea    rdx,[rbp+0x1fa8]
2fdf74  48 8d 0d 6d 27 0f 00           lea    rcx,[rip+0xf276d]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fdf7b  e8 70 b9 fe ff                 call   0x2e98f0
2fdf80  48 8b c8                       mov    rcx,rax
2fdf83  e8 e8 6d fd ff                 call   0x2d4d70
2fdf88  84 c0                          test   al,al
2fdf8a  0f 84 31 73 00 00              je     0x3052c1
2fdf90  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fdf96  4c 8d 85 10 09 00 00           lea    r8,[rbp+0x910]
2fdf9d  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fdfa1  f2 0f 11 85 10 09 00 00        movsd  QWORD PTR [rbp+0x910],xmm0
2fdfa9  89 85 18 09 00 00              mov    DWORD PTR [rbp+0x918],eax
2fdfaf  e9 75 15 00 00                 jmp    0x2ff529
2fdfb4  83 f9 24                       cmp    ecx,0x24
2fdfb7  0f 85 bb 01 00 00              jne    0x2fe178
2fdfbd  41 be ff 00 00 00              mov    r14d,0xff
2fdfc3  48 8d 8d 10 0d 00 00           lea    rcx,[rbp+0xd10]
2fdfca  45 8b c6                       mov    r8d,r14d
2fdfcd  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
2fdfd2  45 33 c9                       xor    r9d,r9d
2fdfd5  33 d2                          xor    edx,edx
2fdfd7  e8 3c d3 fd ff                 call   0x2db318
2fdfdc  0f 10 85 10 0d 00 00           movups xmm0,XMMWORD PTR [rbp+0xd10]
2fdfe3  48 8d 95 ec 09 00 00           lea    rdx,[rbp+0x9ec]
2fdfea  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fdfef  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fdff3  e8 dc 52 ff ff                 call   0x2f32d4 ; STRING getter=0x2f32d4 Berry
2fdff8  48 8b c8                       mov    rcx,rax
2fdffb  e8 dc a4 fd ff                 call   0x2d84dc
2fe000  48 8b d0                       mov    rdx,rax
2fe003  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe008  e8 5b 6c fd ff                 call   0x2d4c68
2fe00d  41 be 02 00 00 00              mov    r14d,0x2
2fe013  48 8d 95 b8 1f 00 00           lea    rdx,[rbp+0x1fb8]
2fe01a  45 8b c6                       mov    r8d,r14d
2fe01d  48 8d 0d 94 20 0f 00           lea    rcx,[rip+0xf2094]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe024  e8 c7 b8 fe ff                 call   0x2e98f0
2fe029  48 8b c8                       mov    rcx,rax
2fe02c  e8 3f 6d fd ff                 call   0x2d4d70
2fe031  84 c0                          test   al,al
2fe033  74 09                          je     0x2fe03e
2fe035  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
2fe039  40 84 ff                       test   dil,dil
2fe03c  75 03                          jne    0x2fe041
2fe03e  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fe041  8b 05 91 12 0f 00              mov    eax,DWORD PTR [rip+0xf1291]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe047  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe04a  33 c0                          xor    eax,eax
2fe04c  38 05 76 a3 0e 00              cmp    BYTE PTR [rip+0xea376],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe052  75 08                          jne    0x2fe05c
2fe054  38 05 5e c2 0e 00              cmp    BYTE PTR [rip+0xec25e],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fe05a  74 2a                          je     0x2fe086
2fe05c  4d 8b c6                       mov    r8,r14
2fe05f  48 8d 95 c8 1f 00 00           lea    rdx,[rbp+0x1fc8]
2fe066  48 8d 0d 4b 20 0f 00           lea    rcx,[rip+0xf204b]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe06d  e8 7e b8 fe ff                 call   0x2e98f0
2fe072  48 8b c8                       mov    rcx,rax
2fe075  e8 f6 6c fd ff                 call   0x2d4d70
2fe07a  84 c0                          test   al,al
2fe07c  74 06                          je     0x2fe084
2fe07e  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fe082  eb 05                          jmp    0x2fe089
2fe084  33 c0                          xor    eax,eax
2fe086  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe089  8b 05 a9 11 0f 00              mov    eax,DWORD PTR [rip+0xf11a9]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fe08f  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fe092  33 c0                          xor    eax,eax
2fe094  38 05 fe aa 0e 00              cmp    BYTE PTR [rip+0xeaafe],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fe09a  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fe0a4  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fe0ae  74 09                          je     0x2fe0b9
2fe0b0  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fe0b4  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2fe0b7  75 03                          jne    0x2fe0bc
2fe0b9  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe0bc  8a 05 66 89 0e 00              mov    al,BYTE PTR [rip+0xe8966]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fe0c2  48 8d 95 d8 1f 00 00           lea    rdx,[rbp+0x1fd8]
2fe0c9  f3 0f 10 05 77 f2 0e 00        movss  xmm0,DWORD PTR [rip+0xef277]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fe0d1  48 8d 0d 60 24 0f 00           lea    rcx,[rip+0xf2460]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fe0d8  4d 8b c6                       mov    r8,r14
2fe0db  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fe0e0  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fe0e3  e8 08 b8 fe ff                 call   0x2e98f0
2fe0e8  48 8b c8                       mov    rcx,rax
2fe0eb  e8 80 6c fd ff                 call   0x2d4d70
2fe0f0  84 c0                          test   al,al
2fe0f2  75 13                          jne    0x2fe107
2fe0f4  33 c0                          xor    eax,eax
2fe0f6  38 05 bc 7b 0e 00              cmp    BYTE PTR [rip+0xe7bbc],al        # 0x3e5cb8
2fe0fc  74 09                          je     0x2fe107
2fe0fe  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe101  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe104  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe107  8b d6                          mov    edx,esi
2fe109  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe10e  e8 f1 c6 fe ff                 call   0x2ea804
2fe113  33 c0                          xor    eax,eax
2fe115  38 05 3d b8 0e 00              cmp    BYTE PTR [rip+0xeb83d],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fe11b  0f 84 a0 71 00 00              je     0x3052c1
2fe121  38 05 5a 13 0f 00              cmp    BYTE PTR [rip+0xf135a],al        # 0x3ef481
2fe127  0f 84 94 71 00 00              je     0x3052c1
2fe12d  44 8d 40 08                    lea    r8d,[rax+0x8]
2fe131  48 8d 95 e8 14 00 00           lea    rdx,[rbp+0x14e8]
2fe138  48 8d 0d a9 25 0f 00           lea    rcx,[rip+0xf25a9]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fe13f  e8 ac b7 fe ff                 call   0x2e98f0
2fe144  48 8b c8                       mov    rcx,rax
2fe147  e8 24 6c fd ff                 call   0x2d4d70
2fe14c  84 c0                          test   al,al
2fe14e  0f 84 6d 71 00 00              je     0x3052c1
2fe154  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fe15a  4c 8d 85 20 09 00 00           lea    r8,[rbp+0x920]
2fe161  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fe165  f2 0f 11 85 20 09 00 00        movsd  QWORD PTR [rbp+0x920],xmm0
2fe16d  89 85 28 09 00 00              mov    DWORD PTR [rbp+0x928],eax
2fe173  e9 b1 13 00 00                 jmp    0x2ff529
2fe178  83 f9 25                       cmp    ecx,0x25
2fe17b  0f 85 bc 01 00 00              jne    0x2fe33d
2fe181  b8 ff 00 00 00                 mov    eax,0xff
2fe186  48 8d 8d 20 0d 00 00           lea    rcx,[rbp+0xd20]
2fe18d  8b d0                          mov    edx,eax
2fe18f  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
2fe193  45 33 c9                       xor    r9d,r9d
2fe196  45 33 c0                       xor    r8d,r8d
2fe199  e8 7a d1 fd ff                 call   0x2db318
2fe19e  0f 10 85 20 0d 00 00           movups xmm0,XMMWORD PTR [rbp+0xd20]
2fe1a5  48 8d 95 f2 09 00 00           lea    rdx,[rbp+0x9f2]
2fe1ac  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fe1b1  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fe1b5  e8 9e 52 ff ff                 call   0x2f3458 ; STRING getter=0x2f3458 Berry
2fe1ba  48 8b c8                       mov    rcx,rax
2fe1bd  e8 1a a3 fd ff                 call   0x2d84dc
2fe1c2  48 8b d0                       mov    rdx,rax
2fe1c5  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe1ca  e8 99 6a fd ff                 call   0x2d4c68
2fe1cf  41 be 03 00 00 00              mov    r14d,0x3
2fe1d5  48 8d 95 f8 14 00 00           lea    rdx,[rbp+0x14f8]
2fe1dc  45 8b c6                       mov    r8d,r14d
2fe1df  48 8d 0d d2 1e 0f 00           lea    rcx,[rip+0xf1ed2]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe1e6  e8 05 b7 fe ff                 call   0x2e98f0
2fe1eb  48 8b c8                       mov    rcx,rax
2fe1ee  e8 7d 6b fd ff                 call   0x2d4d70
2fe1f3  84 c0                          test   al,al
2fe1f5  74 09                          je     0x2fe200
2fe1f7  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
2fe1fb  40 84 ff                       test   dil,dil
2fe1fe  75 03                          jne    0x2fe203
2fe200  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fe203  8b 05 cf 10 0f 00              mov    eax,DWORD PTR [rip+0xf10cf]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe209  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe20c  33 c0                          xor    eax,eax
2fe20e  38 05 b4 a1 0e 00              cmp    BYTE PTR [rip+0xea1b4],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe214  75 08                          jne    0x2fe21e
2fe216  38 05 9c c0 0e 00              cmp    BYTE PTR [rip+0xec09c],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fe21c  74 2a                          je     0x2fe248
2fe21e  4d 8b c6                       mov    r8,r14
2fe221  48 8d 95 08 15 00 00           lea    rdx,[rbp+0x1508]
2fe228  48 8d 0d 89 1e 0f 00           lea    rcx,[rip+0xf1e89]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe22f  e8 bc b6 fe ff                 call   0x2e98f0
2fe234  48 8b c8                       mov    rcx,rax
2fe237  e8 34 6b fd ff                 call   0x2d4d70
2fe23c  84 c0                          test   al,al
2fe23e  74 06                          je     0x2fe246
2fe240  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fe244  eb 05                          jmp    0x2fe24b
2fe246  33 c0                          xor    eax,eax
2fe248  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe24b  8b 05 e7 0f 0f 00              mov    eax,DWORD PTR [rip+0xf0fe7]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fe251  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fe254  33 c0                          xor    eax,eax
2fe256  38 05 3c a9 0e 00              cmp    BYTE PTR [rip+0xea93c],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fe25c  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fe266  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fe270  74 09                          je     0x2fe27b
2fe272  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fe276  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2fe279  75 03                          jne    0x2fe27e
2fe27b  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe27e  8a 05 a4 87 0e 00              mov    al,BYTE PTR [rip+0xe87a4]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fe284  48 8d 95 18 15 00 00           lea    rdx,[rbp+0x1518]
2fe28b  f3 0f 10 05 b5 f0 0e 00        movss  xmm0,DWORD PTR [rip+0xef0b5]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fe293  48 8d 0d 9e 22 0f 00           lea    rcx,[rip+0xf229e]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fe29a  41 b8 02 00 00 00              mov    r8d,0x2
2fe2a0  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fe2a5  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fe2a8  e8 43 b6 fe ff                 call   0x2e98f0
2fe2ad  48 8b c8                       mov    rcx,rax
2fe2b0  e8 bb 6a fd ff                 call   0x2d4d70
2fe2b5  84 c0                          test   al,al
2fe2b7  75 13                          jne    0x2fe2cc
2fe2b9  33 c0                          xor    eax,eax
2fe2bb  38 05 f7 79 0e 00              cmp    BYTE PTR [rip+0xe79f7],al        # 0x3e5cb8
2fe2c1  74 09                          je     0x2fe2cc
2fe2c3  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe2c6  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe2c9  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe2cc  8b d6                          mov    edx,esi
2fe2ce  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe2d3  e8 2c c5 fe ff                 call   0x2ea804
2fe2d8  33 c0                          xor    eax,eax
2fe2da  38 05 78 b6 0e 00              cmp    BYTE PTR [rip+0xeb678],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fe2e0  0f 84 db 6f 00 00              je     0x3052c1
2fe2e6  38 05 95 11 0f 00              cmp    BYTE PTR [rip+0xf1195],al        # 0x3ef481
2fe2ec  0f 84 cf 6f 00 00              je     0x3052c1
2fe2f2  44 8d 40 09                    lea    r8d,[rax+0x9]
2fe2f6  48 8d 95 28 15 00 00           lea    rdx,[rbp+0x1528]
2fe2fd  48 8d 0d e4 23 0f 00           lea    rcx,[rip+0xf23e4]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fe304  e8 e7 b5 fe ff                 call   0x2e98f0
2fe309  48 8b c8                       mov    rcx,rax
2fe30c  e8 5f 6a fd ff                 call   0x2d4d70
2fe311  84 c0                          test   al,al
2fe313  0f 84 a8 6f 00 00              je     0x3052c1
2fe319  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fe31f  4c 8d 85 30 09 00 00           lea    r8,[rbp+0x930]
2fe326  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fe32a  f2 0f 11 85 30 09 00 00        movsd  QWORD PTR [rbp+0x930],xmm0
2fe332  89 85 38 09 00 00              mov    DWORD PTR [rbp+0x938],eax
2fe338  e9 ec 11 00 00                 jmp    0x2ff529
2fe33d  83 f9 26                       cmp    ecx,0x26
2fe340  0f 85 94 01 00 00              jne    0x2fe4da
2fe346  48 8d 95 f8 09 00 00           lea    rdx,[rbp+0x9f8]
2fe34d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fe352  e8 65 52 ff ff                 call   0x2f35bc ; STRING getter=0x2f35bc Berry
2fe357  48 8b c8                       mov    rcx,rax
2fe35a  e8 7d a1 fd ff                 call   0x2d84dc
2fe35f  48 8b d0                       mov    rdx,rax
2fe362  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe367  e8 fc 68 fd ff                 call   0x2d4c68
2fe36c  41 be 04 00 00 00              mov    r14d,0x4
2fe372  48 8d 95 38 15 00 00           lea    rdx,[rbp+0x1538]
2fe379  45 8b c6                       mov    r8d,r14d
2fe37c  48 8d 0d 35 1d 0f 00           lea    rcx,[rip+0xf1d35]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe383  e8 68 b5 fe ff                 call   0x2e98f0
2fe388  48 8b c8                       mov    rcx,rax
2fe38b  e8 e0 69 fd ff                 call   0x2d4d70
2fe390  84 c0                          test   al,al
2fe392  74 09                          je     0x2fe39d
2fe394  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
2fe398  40 84 ff                       test   dil,dil
2fe39b  75 03                          jne    0x2fe3a0
2fe39d  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fe3a0  8b 05 32 0f 0f 00              mov    eax,DWORD PTR [rip+0xf0f32]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe3a6  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe3a9  33 c0                          xor    eax,eax
2fe3ab  38 05 17 a0 0e 00              cmp    BYTE PTR [rip+0xea017],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe3b1  75 08                          jne    0x2fe3bb
2fe3b3  38 05 ff be 0e 00              cmp    BYTE PTR [rip+0xebeff],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fe3b9  74 2a                          je     0x2fe3e5
2fe3bb  4d 8b c6                       mov    r8,r14
2fe3be  48 8d 95 48 15 00 00           lea    rdx,[rbp+0x1548]
2fe3c5  48 8d 0d ec 1c 0f 00           lea    rcx,[rip+0xf1cec]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe3cc  e8 1f b5 fe ff                 call   0x2e98f0
2fe3d1  48 8b c8                       mov    rcx,rax
2fe3d4  e8 97 69 fd ff                 call   0x2d4d70
2fe3d9  84 c0                          test   al,al
2fe3db  74 06                          je     0x2fe3e3
2fe3dd  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fe3e1  eb 05                          jmp    0x2fe3e8
2fe3e3  33 c0                          xor    eax,eax
2fe3e5  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe3e8  8b 05 4a 0e 0f 00              mov    eax,DWORD PTR [rip+0xf0e4a]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fe3ee  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fe3f1  33 c0                          xor    eax,eax
2fe3f3  38 05 9f a7 0e 00              cmp    BYTE PTR [rip+0xea79f],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fe3f9  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fe403  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fe40d  74 09                          je     0x2fe418
2fe40f  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fe413  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2fe416  75 03                          jne    0x2fe41b
2fe418  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe41b  8a 05 07 86 0e 00              mov    al,BYTE PTR [rip+0xe8607]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fe421  48 8d 95 58 15 00 00           lea    rdx,[rbp+0x1558]
2fe428  f3 0f 10 05 18 ef 0e 00        movss  xmm0,DWORD PTR [rip+0xeef18]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fe430  48 8d 0d 01 21 0f 00           lea    rcx,[rip+0xf2101]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fe437  41 b8 02 00 00 00              mov    r8d,0x2
2fe43d  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fe442  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fe445  e8 a6 b4 fe ff                 call   0x2e98f0
2fe44a  48 8b c8                       mov    rcx,rax
2fe44d  e8 1e 69 fd ff                 call   0x2d4d70
2fe452  84 c0                          test   al,al
2fe454  75 13                          jne    0x2fe469
2fe456  33 c0                          xor    eax,eax
2fe458  38 05 5a 78 0e 00              cmp    BYTE PTR [rip+0xe785a],al        # 0x3e5cb8
2fe45e  74 09                          je     0x2fe469
2fe460  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe463  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe466  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe469  8b d6                          mov    edx,esi
2fe46b  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe470  e8 8f c3 fe ff                 call   0x2ea804
2fe475  33 c0                          xor    eax,eax
2fe477  38 05 db b4 0e 00              cmp    BYTE PTR [rip+0xeb4db],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fe47d  0f 84 3e 6e 00 00              je     0x3052c1
2fe483  38 05 f8 0f 0f 00              cmp    BYTE PTR [rip+0xf0ff8],al        # 0x3ef481
2fe489  0f 84 32 6e 00 00              je     0x3052c1
2fe48f  44 8d 40 0a                    lea    r8d,[rax+0xa]
2fe493  48 8d 95 68 15 00 00           lea    rdx,[rbp+0x1568]
2fe49a  48 8d 0d 47 22 0f 00           lea    rcx,[rip+0xf2247]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fe4a1  e8 4a b4 fe ff                 call   0x2e98f0
2fe4a6  48 8b c8                       mov    rcx,rax
2fe4a9  e8 c2 68 fd ff                 call   0x2d4d70
2fe4ae  84 c0                          test   al,al
2fe4b0  0f 84 0b 6e 00 00              je     0x3052c1
2fe4b6  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fe4bc  4c 8d 85 80 04 00 00           lea    r8,[rbp+0x480]
2fe4c3  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fe4c7  f2 0f 11 85 80 04 00 00        movsd  QWORD PTR [rbp+0x480],xmm0
2fe4cf  89 85 88 04 00 00              mov    DWORD PTR [rbp+0x488],eax
2fe4d5  e9 4f 10 00 00                 jmp    0x2ff529
2fe4da  83 f9 27                       cmp    ecx,0x27
2fe4dd  0f 85 bf 01 00 00              jne    0x2fe6a2
2fe4e3  41 be ff 00 00 00              mov    r14d,0xff
2fe4e9  48 8d 8d 30 0d 00 00           lea    rcx,[rbp+0xd30]
2fe4f0  45 8b c6                       mov    r8d,r14d
2fe4f3  44 89 74 24 20                 mov    DWORD PTR [rsp+0x20],r14d
2fe4f8  41 8b d6                       mov    edx,r14d
2fe4fb  45 33 c9                       xor    r9d,r9d
2fe4fe  e8 15 ce fd ff                 call   0x2db318
2fe503  0f 10 85 30 0d 00 00           movups xmm0,XMMWORD PTR [rbp+0xd30]
2fe50a  48 8d 95 fe 09 00 00           lea    rdx,[rbp+0x9fe]
2fe511  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fe516  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fe51a  e8 09 54 ff ff                 call   0x2f3928 ; STRING getter=0x2f3928 Berry
2fe51f  48 8b c8                       mov    rcx,rax
2fe522  e8 b5 9f fd ff                 call   0x2d84dc
2fe527  48 8b d0                       mov    rdx,rax
2fe52a  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe52f  e8 34 67 fd ff                 call   0x2d4c68
2fe534  41 be 05 00 00 00              mov    r14d,0x5
2fe53a  48 8d 95 78 15 00 00           lea    rdx,[rbp+0x1578]
2fe541  45 8b c6                       mov    r8d,r14d
2fe544  48 8d 0d 6d 1b 0f 00           lea    rcx,[rip+0xf1b6d]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe54b  e8 a0 b3 fe ff                 call   0x2e98f0
2fe550  48 8b c8                       mov    rcx,rax
2fe553  e8 18 68 fd ff                 call   0x2d4d70
2fe558  84 c0                          test   al,al
2fe55a  74 09                          je     0x2fe565
2fe55c  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
2fe560  40 84 ff                       test   dil,dil
2fe563  75 03                          jne    0x2fe568
2fe565  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fe568  8b 05 6a 0d 0f 00              mov    eax,DWORD PTR [rip+0xf0d6a]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe56e  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe571  33 c0                          xor    eax,eax
2fe573  38 05 4f 9e 0e 00              cmp    BYTE PTR [rip+0xe9e4f],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe579  75 08                          jne    0x2fe583
2fe57b  38 05 37 bd 0e 00              cmp    BYTE PTR [rip+0xebd37],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fe581  74 2a                          je     0x2fe5ad
2fe583  4d 8b c6                       mov    r8,r14
2fe586  48 8d 95 88 15 00 00           lea    rdx,[rbp+0x1588]
2fe58d  48 8d 0d 24 1b 0f 00           lea    rcx,[rip+0xf1b24]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
2fe594  e8 57 b3 fe ff                 call   0x2e98f0
2fe599  48 8b c8                       mov    rcx,rax
2fe59c  e8 cf 67 fd ff                 call   0x2d4d70
2fe5a1  84 c0                          test   al,al
2fe5a3  74 06                          je     0x2fe5ab
2fe5a5  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fe5a9  eb 05                          jmp    0x2fe5b0
2fe5ab  33 c0                          xor    eax,eax
2fe5ad  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe5b0  8b 05 82 0c 0f 00              mov    eax,DWORD PTR [rip+0xf0c82]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fe5b6  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fe5b9  33 c0                          xor    eax,eax
2fe5bb  38 05 d7 a5 0e 00              cmp    BYTE PTR [rip+0xea5d7],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fe5c1  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fe5cb  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fe5d5  74 09                          je     0x2fe5e0
2fe5d7  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fe5db  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2fe5de  75 03                          jne    0x2fe5e3
2fe5e0  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe5e3  8a 05 3f 84 0e 00              mov    al,BYTE PTR [rip+0xe843f]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fe5e9  48 8d 95 98 15 00 00           lea    rdx,[rbp+0x1598]
2fe5f0  f3 0f 10 05 50 ed 0e 00        movss  xmm0,DWORD PTR [rip+0xeed50]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fe5f8  48 8d 0d 39 1f 0f 00           lea    rcx,[rip+0xf1f39]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fe5ff  41 b8 02 00 00 00              mov    r8d,0x2
2fe605  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fe60a  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fe60d  e8 de b2 fe ff                 call   0x2e98f0
2fe612  48 8b c8                       mov    rcx,rax
2fe615  e8 56 67 fd ff                 call   0x2d4d70
2fe61a  84 c0                          test   al,al
2fe61c  75 13                          jne    0x2fe631
2fe61e  33 c0                          xor    eax,eax
2fe620  38 05 92 76 0e 00              cmp    BYTE PTR [rip+0xe7692],al        # 0x3e5cb8
2fe626  74 09                          je     0x2fe631
2fe628  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe62b  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe62e  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe631  8b d6                          mov    edx,esi
2fe633  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe638  e8 c7 c1 fe ff                 call   0x2ea804
2fe63d  33 c0                          xor    eax,eax
2fe63f  38 05 13 b3 0e 00              cmp    BYTE PTR [rip+0xeb313],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fe645  0f 84 76 6c 00 00              je     0x3052c1
2fe64b  38 05 30 0e 0f 00              cmp    BYTE PTR [rip+0xf0e30],al        # 0x3ef481
2fe651  0f 84 6a 6c 00 00              je     0x3052c1
2fe657  44 8d 40 0b                    lea    r8d,[rax+0xb]
2fe65b  48 8d 95 a8 15 00 00           lea    rdx,[rbp+0x15a8]
2fe662  48 8d 0d 7f 20 0f 00           lea    rcx,[rip+0xf207f]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fe669  e8 82 b2 fe ff                 call   0x2e98f0
2fe66e  48 8b c8                       mov    rcx,rax
2fe671  e8 fa 66 fd ff                 call   0x2d4d70
2fe676  84 c0                          test   al,al
2fe678  0f 84 43 6c 00 00              je     0x3052c1
2fe67e  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fe684  4c 8d 85 90 04 00 00           lea    r8,[rbp+0x490]
2fe68b  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fe68f  f2 0f 11 85 90 04 00 00        movsd  QWORD PTR [rbp+0x490],xmm0
2fe697  89 85 98 04 00 00              mov    DWORD PTR [rbp+0x498],eax
2fe69d  e9 87 0e 00 00                 jmp    0x2ff529
2fe6a2  83 f9 28                       cmp    ecx,0x28
2fe6a5  0f 85 77 01 00 00              jne    0x2fe822
2fe6ab  48 8d 95 04 0a 00 00           lea    rdx,[rbp+0xa04]
2fe6b2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fe6b7  e8 40 53 ff ff                 call   0x2f39fc ; STRING getter=0x2f39fc Stone
2fe6bc  48 8b c8                       mov    rcx,rax
2fe6bf  e8 18 9e fd ff                 call   0x2d84dc
2fe6c4  48 8b d0                       mov    rdx,rax
2fe6c7  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe6cc  e8 97 65 fd ff                 call   0x2d4c68
2fe6d1  33 c0                          xor    eax,eax
2fe6d3  38 05 3f a2 0e 00              cmp    BYTE PTR [rip+0xea23f],al        # 0x3e8918 ; CONFIG Bools.stoneesp value(+0x48)
2fe6d9  74 0d                          je     0x2fe6e8
2fe6db  40 84 ff                       test   dil,dil
2fe6de  74 08                          je     0x2fe6e8
2fe6e0  40 8a de                       mov    bl,sil
2fe6e3  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2fe6e6  eb 03                          jmp    0x2fe6eb
2fe6e8  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe6eb  8b 05 e7 0b 0f 00              mov    eax,DWORD PTR [rip+0xf0be7]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe6f1  0f 10 05 e0 d2 0e 00           movups xmm0,XMMWORD PTR [rip+0xed2e0]        # 0x3eb9d8 ; CONFIG C.StoneCollectableColor value(+0x48)
2fe6f8  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe6fb  33 c0                          xor    eax,eax
2fe6fd  38 05 c5 9c 0e 00              cmp    BYTE PTR [rip+0xe9cc5],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe703  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fe707  75 08                          jne    0x2fe711
2fe709  38 05 a9 bb 0e 00              cmp    BYTE PTR [rip+0xebba9],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fe70f  74 18                          je     0x2fe729
2fe711  48 8d 0d b8 a1 0e 00           lea    rcx,[rip+0xea1b8]        # 0x3e88d0
2fe718  e8 df 10 ff ff                 call   0x2ef7fc
2fe71d  84 c0                          test   al,al
2fe71f  74 06                          je     0x2fe727
2fe721  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fe725  eb 05                          jmp    0x2fe72c
2fe727  33 c0                          xor    eax,eax
2fe729  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe72c  8b 05 06 0b 0f 00              mov    eax,DWORD PTR [rip+0xf0b06]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fe732  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fe735  33 c0                          xor    eax,eax
2fe737  38 05 5b a4 0e 00              cmp    BYTE PTR [rip+0xea45b],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fe73d  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fe747  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fe751  74 08                          je     0x2fe75b
2fe753  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fe757  84 db                          test   bl,bl
2fe759  75 03                          jne    0x2fe75e
2fe75b  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe75e  8a 05 c4 82 0e 00              mov    al,BYTE PTR [rip+0xe82c4]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fe764  48 8d 95 b8 15 00 00           lea    rdx,[rbp+0x15b8]
2fe76b  f3 0f 10 05 d5 eb 0e 00        movss  xmm0,DWORD PTR [rip+0xeebd5]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fe773  48 8d 0d be 1d 0f 00           lea    rcx,[rip+0xf1dbe]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fe77a  41 b8 02 00 00 00              mov    r8d,0x2
2fe780  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fe785  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fe788  e8 63 b1 fe ff                 call   0x2e98f0
2fe78d  48 8b c8                       mov    rcx,rax
2fe790  e8 db 65 fd ff                 call   0x2d4d70
2fe795  84 c0                          test   al,al
2fe797  75 13                          jne    0x2fe7ac
2fe799  33 c0                          xor    eax,eax
2fe79b  38 05 17 75 0e 00              cmp    BYTE PTR [rip+0xe7517],al        # 0x3e5cb8
2fe7a1  74 09                          je     0x2fe7ac
2fe7a3  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe7a6  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe7a9  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe7ac  8b d6                          mov    edx,esi
2fe7ae  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe7b3  e8 4c c0 fe ff                 call   0x2ea804
2fe7b8  33 c0                          xor    eax,eax
2fe7ba  38 05 98 b1 0e 00              cmp    BYTE PTR [rip+0xeb198],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fe7c0  0f 84 fb 6a 00 00              je     0x3052c1
2fe7c6  38 05 b5 0c 0f 00              cmp    BYTE PTR [rip+0xf0cb5],al        # 0x3ef481
2fe7cc  0f 84 ef 6a 00 00              je     0x3052c1
2fe7d2  4c 8b c6                       mov    r8,rsi
2fe7d5  48 8d 95 c8 15 00 00           lea    rdx,[rbp+0x15c8]
2fe7dc  48 8d 0d 05 1f 0f 00           lea    rcx,[rip+0xf1f05]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fe7e3  e8 08 b1 fe ff                 call   0x2e98f0
2fe7e8  48 8b c8                       mov    rcx,rax
2fe7eb  e8 80 65 fd ff                 call   0x2d4d70
2fe7f0  84 c0                          test   al,al
2fe7f2  0f 84 c9 6a 00 00              je     0x3052c1
2fe7f8  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fe7fe  4c 8d 85 a0 04 00 00           lea    r8,[rbp+0x4a0]
2fe805  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fe809  41 b9 06 00 00 00              mov    r9d,0x6
2fe80f  f2 0f 11 85 a0 04 00 00        movsd  QWORD PTR [rbp+0x4a0],xmm0
2fe817  89 85 a8 04 00 00              mov    DWORD PTR [rbp+0x4a8],eax
2fe81d  e9 1a 0d 00 00                 jmp    0x2ff53c
2fe822  83 f9 29                       cmp    ecx,0x29
2fe825  0f 85 6e 01 00 00              jne    0x2fe999
2fe82b  48 8d 95 0a 0a 00 00           lea    rdx,[rbp+0xa0a]
2fe832  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fe837  e8 d4 52 ff ff                 call   0x2f3b10 ; STRING getter=0x2f3b10 Metal
2fe83c  48 8b c8                       mov    rcx,rax
2fe83f  e8 98 9c fd ff                 call   0x2d84dc
2fe844  48 8b d0                       mov    rdx,rax
2fe847  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe84c  e8 17 64 fd ff                 call   0x2d4c68
2fe851  8a 15 11 a1 0e 00              mov    dl,BYTE PTR [rip+0xea111]        # 0x3e8968 ; CONFIG Bools.metalesp value(+0x48)
2fe857  33 c0                          xor    eax,eax
2fe859  84 d2                          test   dl,dl
2fe85b  74 0d                          je     0x2fe86a
2fe85d  40 84 ff                       test   dil,dil
2fe860  74 08                          je     0x2fe86a
2fe862  40 8a ce                       mov    cl,sil
2fe865  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fe868  eb 05                          jmp    0x2fe86f
2fe86a  8a c8                          mov    cl,al
2fe86c  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe86f  8b 05 63 0a 0f 00              mov    eax,DWORD PTR [rip+0xf0a63]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe875  0f 10 05 bc d1 0e 00           movups xmm0,XMMWORD PTR [rip+0xed1bc]        # 0x3eba38 ; CONFIG C.MetalCollectableColor value(+0x48)
2fe87c  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe87f  33 c0                          xor    eax,eax
2fe881  38 05 41 9b 0e 00              cmp    BYTE PTR [rip+0xe9b41],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe887  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fe88b  75 08                          jne    0x2fe895
2fe88d  38 05 25 ba 0e 00              cmp    BYTE PTR [rip+0xeba25],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fe893  74 08                          je     0x2fe89d
2fe895  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fe899  84 d2                          test   dl,dl
2fe89b  75 03                          jne    0x2fe8a0
2fe89d  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe8a0  8b 05 92 09 0f 00              mov    eax,DWORD PTR [rip+0xf0992]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fe8a6  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fe8a9  33 c0                          xor    eax,eax
2fe8ab  38 05 e7 a2 0e 00              cmp    BYTE PTR [rip+0xea2e7],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fe8b1  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fe8bb  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fe8c5  74 08                          je     0x2fe8cf
2fe8c7  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fe8cb  84 c9                          test   cl,cl
2fe8cd  75 03                          jne    0x2fe8d2
2fe8cf  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe8d2  8a 05 50 81 0e 00              mov    al,BYTE PTR [rip+0xe8150]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fe8d8  48 8d 95 d8 15 00 00           lea    rdx,[rbp+0x15d8]
2fe8df  f3 0f 10 05 61 ea 0e 00        movss  xmm0,DWORD PTR [rip+0xeea61]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fe8e7  48 8d 0d 4a 1c 0f 00           lea    rcx,[rip+0xf1c4a]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fe8ee  41 be 02 00 00 00              mov    r14d,0x2
2fe8f4  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fe8f9  45 8b c6                       mov    r8d,r14d
2fe8fc  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fe8ff  e8 ec af fe ff                 call   0x2e98f0
2fe904  48 8b c8                       mov    rcx,rax
2fe907  e8 64 64 fd ff                 call   0x2d4d70
2fe90c  84 c0                          test   al,al
2fe90e  75 13                          jne    0x2fe923
2fe910  33 c0                          xor    eax,eax
2fe912  38 05 a0 73 0e 00              cmp    BYTE PTR [rip+0xe73a0],al        # 0x3e5cb8
2fe918  74 09                          je     0x2fe923
2fe91a  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe91d  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fe920  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fe923  8b d6                          mov    edx,esi
2fe925  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe92a  e8 d5 be fe ff                 call   0x2ea804
2fe92f  33 c0                          xor    eax,eax
2fe931  38 05 21 b0 0e 00              cmp    BYTE PTR [rip+0xeb021],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fe937  0f 84 84 69 00 00              je     0x3052c1
2fe93d  38 05 3e 0b 0f 00              cmp    BYTE PTR [rip+0xf0b3e],al        # 0x3ef481
2fe943  0f 84 78 69 00 00              je     0x3052c1
2fe949  4d 8b c6                       mov    r8,r14
2fe94c  48 8d 95 e8 15 00 00           lea    rdx,[rbp+0x15e8]
2fe953  48 8d 0d 8e 1d 0f 00           lea    rcx,[rip+0xf1d8e]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fe95a  e8 91 af fe ff                 call   0x2e98f0
2fe95f  48 8b c8                       mov    rcx,rax
2fe962  e8 09 64 fd ff                 call   0x2d4d70
2fe967  84 c0                          test   al,al
2fe969  0f 84 52 69 00 00              je     0x3052c1
2fe96f  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fe975  4c 8d 85 b0 04 00 00           lea    r8,[rbp+0x4b0]
2fe97c  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fe980  41 b9 06 00 00 00              mov    r9d,0x6
2fe986  f2 0f 11 85 b0 04 00 00        movsd  QWORD PTR [rbp+0x4b0],xmm0
2fe98e  89 85 b8 04 00 00              mov    DWORD PTR [rbp+0x4b8],eax
2fe994  e9 a3 0b 00 00                 jmp    0x2ff53c
2fe999  83 f9 2a                       cmp    ecx,0x2a
2fe99c  0f 85 6c 01 00 00              jne    0x2feb0e
2fe9a2  48 8d 95 21 0b 00 00           lea    rdx,[rbp+0xb21]
2fe9a9  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fe9ae  e8 d1 52 ff ff                 call   0x2f3c84 ; STRING getter=0x2f3c84 Sulfur
2fe9b3  48 8b c8                       mov    rcx,rax
2fe9b6  e8 39 f3 fc ff                 call   0x2cdcf4
2fe9bb  48 8b d0                       mov    rdx,rax
2fe9be  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fe9c3  e8 a0 62 fd ff                 call   0x2d4c68
2fe9c8  8a 15 ea 9f 0e 00              mov    dl,BYTE PTR [rip+0xe9fea]        # 0x3e89b8 ; CONFIG Bools.sulfuresp value(+0x48)
2fe9ce  33 c0                          xor    eax,eax
2fe9d0  84 d2                          test   dl,dl
2fe9d2  74 0d                          je     0x2fe9e1
2fe9d4  40 84 ff                       test   dil,dil
2fe9d7  74 08                          je     0x2fe9e1
2fe9d9  40 8a ce                       mov    cl,sil
2fe9dc  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fe9df  eb 05                          jmp    0x2fe9e6
2fe9e1  8a c8                          mov    cl,al
2fe9e3  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fe9e6  8b 05 ec 08 0f 00              mov    eax,DWORD PTR [rip+0xf08ec]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fe9ec  0f 10 05 a5 d0 0e 00           movups xmm0,XMMWORD PTR [rip+0xed0a5]        # 0x3eba98 ; CONFIG C.SulfurCollectableColor value(+0x48)
2fe9f3  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fe9f6  33 c0                          xor    eax,eax
2fe9f8  38 05 ca 99 0e 00              cmp    BYTE PTR [rip+0xe99ca],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fe9fe  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fea02  75 08                          jne    0x2fea0c
2fea04  38 05 ae b8 0e 00              cmp    BYTE PTR [rip+0xeb8ae],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fea0a  74 08                          je     0x2fea14
2fea0c  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fea10  84 d2                          test   dl,dl
2fea12  75 03                          jne    0x2fea17
2fea14  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fea17  8b 05 1b 08 0f 00              mov    eax,DWORD PTR [rip+0xf081b]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fea1d  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fea20  33 c0                          xor    eax,eax
2fea22  38 05 70 a1 0e 00              cmp    BYTE PTR [rip+0xea170],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fea28  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fea32  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fea3c  74 08                          je     0x2fea46
2fea3e  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fea42  84 c9                          test   cl,cl
2fea44  75 03                          jne    0x2fea49
2fea46  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fea49  8a 05 d9 7f 0e 00              mov    al,BYTE PTR [rip+0xe7fd9]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fea4f  48 8d 95 f8 15 00 00           lea    rdx,[rbp+0x15f8]
2fea56  f3 0f 10 05 ea e8 0e 00        movss  xmm0,DWORD PTR [rip+0xee8ea]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fea5e  48 8d 0d d3 1a 0f 00           lea    rcx,[rip+0xf1ad3]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fea65  41 b8 02 00 00 00              mov    r8d,0x2
2fea6b  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fea70  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fea73  e8 78 ae fe ff                 call   0x2e98f0
2fea78  48 8b c8                       mov    rcx,rax
2fea7b  e8 f0 62 fd ff                 call   0x2d4d70
2fea80  84 c0                          test   al,al
2fea82  75 13                          jne    0x2fea97
2fea84  33 c0                          xor    eax,eax
2fea86  38 05 2c 72 0e 00              cmp    BYTE PTR [rip+0xe722c],al        # 0x3e5cb8
2fea8c  74 09                          je     0x2fea97
2fea8e  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fea91  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fea94  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fea97  8b d6                          mov    edx,esi
2fea99  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fea9e  e8 61 bd fe ff                 call   0x2ea804
2feaa3  33 c0                          xor    eax,eax
2feaa5  38 05 ad ae 0e 00              cmp    BYTE PTR [rip+0xeaead],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2feaab  0f 84 10 68 00 00              je     0x3052c1
2feab1  38 05 ca 09 0f 00              cmp    BYTE PTR [rip+0xf09ca],al        # 0x3ef481
2feab7  0f 84 04 68 00 00              je     0x3052c1
2feabd  44 8d 40 03                    lea    r8d,[rax+0x3]
2feac1  48 8d 95 08 16 00 00           lea    rdx,[rbp+0x1608]
2feac8  48 8d 0d 19 1c 0f 00           lea    rcx,[rip+0xf1c19]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2feacf  e8 1c ae fe ff                 call   0x2e98f0
2fead4  48 8b c8                       mov    rcx,rax
2fead7  e8 94 62 fd ff                 call   0x2d4d70
2feadc  84 c0                          test   al,al
2feade  0f 84 dd 67 00 00              je     0x3052c1
2feae4  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2feaea  4c 8d 85 c0 04 00 00           lea    r8,[rbp+0x4c0]
2feaf1  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2feaf5  41 b9 06 00 00 00              mov    r9d,0x6
2feafb  f2 0f 11 85 c0 04 00 00        movsd  QWORD PTR [rbp+0x4c0],xmm0
2feb03  89 85 c8 04 00 00              mov    DWORD PTR [rbp+0x4c8],eax
2feb09  e9 2e 0a 00 00                 jmp    0x2ff53c
2feb0e  83 f9 2b                       cmp    ecx,0x2b
2feb11  0f 85 77 01 00 00              jne    0x2fec8e
2feb17  48 8d 95 40 09 00 00           lea    rdx,[rbp+0x940]
2feb1e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2feb23  e8 74 52 ff ff                 call   0x2f3d9c ; STRING getter=0x2f3d9c Wood
2feb28  48 8b c8                       mov    rcx,rax
2feb2b  e8 9c f1 fc ff                 call   0x2cdccc
2feb30  48 8b d0                       mov    rdx,rax
2feb33  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2feb38  e8 2b 61 fd ff                 call   0x2d4c68
2feb3d  40 8a 35 c4 9e 0e 00           mov    sil,BYTE PTR [rip+0xe9ec4]        # 0x3e8a08 ; CONFIG Bools.woodesp value(+0x48)
2feb44  33 c0                          xor    eax,eax
2feb46  40 84 f6                       test   sil,sil
2feb49  74 11                          je     0x2feb5c
2feb4b  40 84 ff                       test   dil,dil
2feb4e  74 0c                          je     0x2feb5c
2feb50  44 8d 70 01                    lea    r14d,[rax+0x1]
2feb54  41 8a de                       mov    bl,r14b
2feb57  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
2feb5a  eb 09                          jmp    0x2feb65
2feb5c  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2feb5f  41 be 01 00 00 00              mov    r14d,0x1
2feb65  0f 10 05 8c cf 0e 00           movups xmm0,XMMWORD PTR [rip+0xecf8c]        # 0x3ebaf8 ; CONFIG C.WoodCollectableColor value(+0x48)
2feb6c  8b 05 66 07 0f 00              mov    eax,DWORD PTR [rip+0xf0766]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2feb72  48 8d 0d 07 98 0e 00           lea    rcx,[rip+0xe9807]        # 0x3e8380
2feb79  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2feb7c  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2feb80  e8 77 0c ff ff                 call   0x2ef7fc
2feb85  84 c0                          test   al,al
2feb87  74 09                          je     0x2feb92
2feb89  44 88 75 c7                    mov    BYTE PTR [rbp-0x39],r14b
2feb8d  40 84 f6                       test   sil,sil
2feb90  75 04                          jne    0x2feb96
2feb92  c6 45 c7 00                    mov    BYTE PTR [rbp-0x39],0x0
2feb96  8b 05 9c 06 0f 00              mov    eax,DWORD PTR [rip+0xf069c]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2feb9c  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2feb9f  33 c0                          xor    eax,eax
2feba1  38 05 f1 9f 0e 00              cmp    BYTE PTR [rip+0xe9ff1],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2feba7  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2febb1  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2febbb  74 08                          je     0x2febc5
2febbd  44 88 75 b8                    mov    BYTE PTR [rbp-0x48],r14b
2febc1  84 db                          test   bl,bl
2febc3  75 03                          jne    0x2febc8
2febc5  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2febc8  8a 05 5a 7e 0e 00              mov    al,BYTE PTR [rip+0xe7e5a]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2febce  48 8d 95 18 16 00 00           lea    rdx,[rbp+0x1618]
2febd5  f3 0f 10 05 6b e7 0e 00        movss  xmm0,DWORD PTR [rip+0xee76b]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2febdd  48 8d 0d 54 19 0f 00           lea    rcx,[rip+0xf1954]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2febe4  41 b8 02 00 00 00              mov    r8d,0x2
2febea  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2febef  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2febf2  e8 f9 ac fe ff                 call   0x2e98f0
2febf7  48 8b c8                       mov    rcx,rax
2febfa  e8 71 61 fd ff                 call   0x2d4d70
2febff  84 c0                          test   al,al
2fec01  75 13                          jne    0x2fec16
2fec03  33 c0                          xor    eax,eax
2fec05  38 05 ad 70 0e 00              cmp    BYTE PTR [rip+0xe70ad],al        # 0x3e5cb8
2fec0b  74 09                          je     0x2fec16
2fec0d  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fec10  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fec13  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fec16  41 8b d6                       mov    edx,r14d
2fec19  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fec1e  e8 e1 bb fe ff                 call   0x2ea804
2fec23  33 c0                          xor    eax,eax
2fec25  38 05 2d ad 0e 00              cmp    BYTE PTR [rip+0xead2d],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fec2b  0f 84 90 66 00 00              je     0x3052c1
2fec31  38 05 4a 08 0f 00              cmp    BYTE PTR [rip+0xf084a],al        # 0x3ef481
2fec37  0f 84 84 66 00 00              je     0x3052c1
2fec3d  44 8d 40 04                    lea    r8d,[rax+0x4]
2fec41  48 8d 95 28 16 00 00           lea    rdx,[rbp+0x1628]
2fec48  48 8d 0d 99 1a 0f 00           lea    rcx,[rip+0xf1a99]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fec4f  e8 9c ac fe ff                 call   0x2e98f0
2fec54  48 8b c8                       mov    rcx,rax
2fec57  e8 14 61 fd ff                 call   0x2d4d70
2fec5c  84 c0                          test   al,al
2fec5e  0f 84 5d 66 00 00              je     0x3052c1
2fec64  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fec6a  4c 8d 85 d0 04 00 00           lea    r8,[rbp+0x4d0]
2fec71  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fec75  41 b9 06 00 00 00              mov    r9d,0x6
2fec7b  f2 0f 11 85 d0 04 00 00        movsd  QWORD PTR [rbp+0x4d0],xmm0
2fec83  89 85 d8 04 00 00              mov    DWORD PTR [rbp+0x4d8],eax
2fec89  e9 ae 08 00 00                 jmp    0x2ff53c
2fec8e  83 f9 2f                       cmp    ecx,0x2f
2fec91  0f 85 6c 01 00 00              jne    0x2fee03
2fec97  48 8d 95 28 0b 00 00           lea    rdx,[rbp+0xb28]
2fec9e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2feca3  e8 fc 51 ff ff                 call   0x2f3ea4 ; STRING getter=0x2f3ea4 Diesel
2feca8  48 8b c8                       mov    rcx,rax
2fecab  e8 44 f0 fc ff                 call   0x2cdcf4
2fecb0  48 8b d0                       mov    rdx,rax
2fecb3  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fecb8  e8 ab 5f fd ff                 call   0x2d4c68
2fecbd  8a 15 b5 a0 0e 00              mov    dl,BYTE PTR [rip+0xea0b5]        # 0x3e8d78 ; CONFIG Bools.diselesp value(+0x48)
2fecc3  33 c0                          xor    eax,eax
2fecc5  84 d2                          test   dl,dl
2fecc7  74 0d                          je     0x2fecd6
2fecc9  40 84 ff                       test   dil,dil
2feccc  74 08                          je     0x2fecd6
2fecce  40 8a ce                       mov    cl,sil
2fecd1  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fecd4  eb 05                          jmp    0x2fecdb
2fecd6  8a c8                          mov    cl,al
2fecd8  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fecdb  8b 05 f7 05 0f 00              mov    eax,DWORD PTR [rip+0xf05f7]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
2fece1  0f 10 05 70 ce 0e 00           movups xmm0,XMMWORD PTR [rip+0xece70]        # 0x3ebb58 ; CONFIG C.DieselCollectableColor value(+0x48)
2fece8  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2feceb  33 c0                          xor    eax,eax
2feced  38 05 d5 96 0e 00              cmp    BYTE PTR [rip+0xe96d5],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fecf3  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fecf7  75 08                          jne    0x2fed01
2fecf9  38 05 b9 b5 0e 00              cmp    BYTE PTR [rip+0xeb5b9],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fecff  74 08                          je     0x2fed09
2fed01  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fed05  84 d2                          test   dl,dl
2fed07  75 03                          jne    0x2fed0c
2fed09  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fed0c  8b 05 26 05 0f 00              mov    eax,DWORD PTR [rip+0xf0526]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fed12  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fed15  33 c0                          xor    eax,eax
2fed17  38 05 7b 9e 0e 00              cmp    BYTE PTR [rip+0xe9e7b],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fed1d  c7 85 d4 00 00 00 4b 00 00 00  mov    DWORD PTR [rbp+0xd4],0x4b
2fed27  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2fed31  74 08                          je     0x2fed3b
2fed33  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fed37  84 c9                          test   cl,cl
2fed39  75 03                          jne    0x2fed3e
2fed3b  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fed3e  8a 05 e4 7c 0e 00              mov    al,BYTE PTR [rip+0xe7ce4]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
2fed44  48 8d 95 38 16 00 00           lea    rdx,[rbp+0x1638]
2fed4b  f3 0f 10 05 f5 e5 0e 00        movss  xmm0,DWORD PTR [rip+0xee5f5]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
2fed53  48 8d 0d de 17 0f 00           lea    rcx,[rip+0xf17de]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fed5a  41 b8 02 00 00 00              mov    r8d,0x2
2fed60  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fed65  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fed68  e8 83 ab fe ff                 call   0x2e98f0
2fed6d  48 8b c8                       mov    rcx,rax
2fed70  e8 fb 5f fd ff                 call   0x2d4d70
2fed75  84 c0                          test   al,al
2fed77  75 13                          jne    0x2fed8c
2fed79  33 c0                          xor    eax,eax
2fed7b  38 05 37 6f 0e 00              cmp    BYTE PTR [rip+0xe6f37],al        # 0x3e5cb8
2fed81  74 09                          je     0x2fed8c
2fed83  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fed86  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fed89  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fed8c  8b d6                          mov    edx,esi
2fed8e  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fed93  e8 6c ba fe ff                 call   0x2ea804
2fed98  33 c0                          xor    eax,eax
2fed9a  38 05 b8 ab 0e 00              cmp    BYTE PTR [rip+0xeabb8],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2feda0  0f 84 1b 65 00 00              je     0x3052c1
2feda6  38 05 d5 06 0f 00              cmp    BYTE PTR [rip+0xf06d5],al        # 0x3ef481
2fedac  0f 84 0f 65 00 00              je     0x3052c1
2fedb2  44 8d 40 05                    lea    r8d,[rax+0x5]
2fedb6  48 8d 95 48 16 00 00           lea    rdx,[rbp+0x1648]
2fedbd  48 8d 0d 24 19 0f 00           lea    rcx,[rip+0xf1924]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fedc4  e8 27 ab fe ff                 call   0x2e98f0
2fedc9  48 8b c8                       mov    rcx,rax
2fedcc  e8 9f 5f fd ff                 call   0x2d4d70
2fedd1  84 c0                          test   al,al
2fedd3  0f 84 e8 64 00 00              je     0x3052c1
2fedd9  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2feddf  4c 8d 85 e0 04 00 00           lea    r8,[rbp+0x4e0]
2fede6  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fedea  41 b9 06 00 00 00              mov    r9d,0x6
2fedf0  f2 0f 11 85 e0 04 00 00        movsd  QWORD PTR [rbp+0x4e0],xmm0
2fedf8  89 85 e8 04 00 00              mov    DWORD PTR [rbp+0x4e8],eax
2fedfe  e9 39 07 00 00                 jmp    0x2ff53c
2fee03  83 f9 2c                       cmp    ecx,0x2c
2fee06  0f 85 66 01 00 00              jne    0x2fef72
2fee0c  48 8d 95 45 09 00 00           lea    rdx,[rbp+0x945]
2fee13  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fee18  e8 37 51 ff ff                 call   0x2f3f54 ; STRING getter=0x2f3f54 Corn
2fee1d  48 8b c8                       mov    rcx,rax
2fee20  e8 a7 ee fc ff                 call   0x2cdccc
2fee25  48 8b d0                       mov    rdx,rax
2fee28  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fee2d  e8 36 5e fd ff                 call   0x2d4c68
2fee32  0f 10 05 bf c9 0e 00           movups xmm0,XMMWORD PTR [rip+0xec9bf]        # 0x3eb7f8 ; CONFIG C.CornColor value(+0x48)
2fee39  8a 15 19 9c 0e 00              mov    dl,BYTE PTR [rip+0xe9c19]        # 0x3e8a58 ; CONFIG Bools.cornesp value(+0x48)
2fee3f  33 c0                          xor    eax,eax
2fee41  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fee45  84 d2                          test   dl,dl
2fee47  74 0d                          je     0x2fee56
2fee49  40 84 ff                       test   dil,dil
2fee4c  74 08                          je     0x2fee56
2fee4e  40 8a ce                       mov    cl,sil
2fee51  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fee54  eb 05                          jmp    0x2fee5b
2fee56  8a c8                          mov    cl,al
2fee58  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fee5b  8b 05 c7 04 0f 00              mov    eax,DWORD PTR [rip+0xf04c7]        # 0x3ef328 ; CONFIG i.FoodDistance value(+0x48)
2fee61  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fee64  33 c0                          xor    eax,eax
2fee66  38 05 5c 95 0e 00              cmp    BYTE PTR [rip+0xe955c],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fee6c  75 08                          jne    0x2fee76
2fee6e  38 05 44 b4 0e 00              cmp    BYTE PTR [rip+0xeb444],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fee74  74 08                          je     0x2fee7e
2fee76  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fee7a  84 d2                          test   dl,dl
2fee7c  75 03                          jne    0x2fee81
2fee7e  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fee81  8b 05 b1 03 0f 00              mov    eax,DWORD PTR [rip+0xf03b1]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2fee87  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fee8a  33 c0                          xor    eax,eax
2fee8c  38 05 06 9d 0e 00              cmp    BYTE PTR [rip+0xe9d06],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2fee92  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2fee9c  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2feea6  74 08                          je     0x2feeb0
2feea8  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2feeac  84 c9                          test   cl,cl
2feeae  75 03                          jne    0x2feeb3
2feeb0  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2feeb3  8a 05 bf 7b 0e 00              mov    al,BYTE PTR [rip+0xe7bbf]        # 0x3e6a78 ; CONFIG Bools.FoodIcons value(+0x48)
2feeb9  48 8d 95 58 16 00 00           lea    rdx,[rbp+0x1658]
2feec0  f3 0f 10 05 d0 e4 0e 00        movss  xmm0,DWORD PTR [rip+0xee4d0]        # 0x3ed398 ; CONFIG F.FoodIconsMult value(+0x48)
2feec8  48 8d 0d 69 16 0f 00           lea    rcx,[rip+0xf1669]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2feecf  41 b8 03 00 00 00              mov    r8d,0x3
2feed5  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2feeda  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2feedd  e8 0e aa fe ff                 call   0x2e98f0
2feee2  48 8b c8                       mov    rcx,rax
2feee5  e8 86 5e fd ff                 call   0x2d4d70
2feeea  84 c0                          test   al,al
2feeec  75 13                          jne    0x2fef01
2feeee  33 c0                          xor    eax,eax
2feef0  38 05 c2 6d 0e 00              cmp    BYTE PTR [rip+0xe6dc2],al        # 0x3e5cb8
2feef6  74 09                          je     0x2fef01
2feef8  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2feefb  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2feefe  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fef01  8b d6                          mov    edx,esi
2fef03  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fef08  e8 f7 b8 fe ff                 call   0x2ea804
2fef0d  33 c0                          xor    eax,eax
2fef0f  38 05 43 aa 0e 00              cmp    BYTE PTR [rip+0xeaa43],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2fef15  0f 84 a6 63 00 00              je     0x3052c1
2fef1b  38 05 60 05 0f 00              cmp    BYTE PTR [rip+0xf0560],al        # 0x3ef481
2fef21  0f 84 9a 63 00 00              je     0x3052c1
2fef27  44 8d 40 0f                    lea    r8d,[rax+0xf]
2fef2b  48 8d 95 68 16 00 00           lea    rdx,[rbp+0x1668]
2fef32  48 8d 0d af 17 0f 00           lea    rcx,[rip+0xf17af]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2fef39  e8 b2 a9 fe ff                 call   0x2e98f0
2fef3e  48 8b c8                       mov    rcx,rax
2fef41  e8 2a 5e fd ff                 call   0x2d4d70
2fef46  84 c0                          test   al,al
2fef48  0f 84 73 63 00 00              je     0x3052c1
2fef4e  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2fef54  4c 8d 85 f0 04 00 00           lea    r8,[rbp+0x4f0]
2fef5b  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2fef5f  f2 0f 11 85 f0 04 00 00        movsd  QWORD PTR [rbp+0x4f0],xmm0
2fef67  89 85 f8 04 00 00              mov    DWORD PTR [rbp+0x4f8],eax
2fef6d  e9 b7 05 00 00                 jmp    0x2ff529
2fef72  83 f9 39                       cmp    ecx,0x39
2fef75  0f 85 66 01 00 00              jne    0x2ff0e1
2fef7b  48 8d 95 10 0a 00 00           lea    rdx,[rbp+0xa10]
2fef82  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fef87  e8 2c 51 ff ff                 call   0x2f40b8 ; STRING getter=0x2f40b8 Wheat
2fef8c  48 8b c8                       mov    rcx,rax
2fef8f  e8 48 95 fd ff                 call   0x2d84dc
2fef94  48 8b d0                       mov    rdx,rax
2fef97  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2fef9c  e8 c7 5c fd ff                 call   0x2d4c68
2fefa1  0f 10 05 f0 df 0e 00           movups xmm0,XMMWORD PTR [rip+0xedff0]        # 0x3ecf98 ; CONFIG C.WheatColor value(+0x48)
2fefa8  8a 15 6a 94 0e 00              mov    dl,BYTE PTR [rip+0xe946a]        # 0x3e8418 ; CONFIG Bools.WheatESP value(+0x48)
2fefae  33 c0                          xor    eax,eax
2fefb0  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fefb4  84 d2                          test   dl,dl
2fefb6  74 0d                          je     0x2fefc5
2fefb8  40 84 ff                       test   dil,dil
2fefbb  74 08                          je     0x2fefc5
2fefbd  40 8a ce                       mov    cl,sil
2fefc0  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fefc3  eb 05                          jmp    0x2fefca
2fefc5  8a c8                          mov    cl,al
2fefc7  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fefca  8b 05 58 03 0f 00              mov    eax,DWORD PTR [rip+0xf0358]        # 0x3ef328 ; CONFIG i.FoodDistance value(+0x48)
2fefd0  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fefd3  33 c0                          xor    eax,eax
2fefd5  38 05 ed 93 0e 00              cmp    BYTE PTR [rip+0xe93ed],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fefdb  75 08                          jne    0x2fefe5
2fefdd  38 05 d5 b2 0e 00              cmp    BYTE PTR [rip+0xeb2d5],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fefe3  74 08                          je     0x2fefed
2fefe5  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fefe9  84 d2                          test   dl,dl
2fefeb  75 03                          jne    0x2feff0
2fefed  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2feff0  8b 05 42 02 0f 00              mov    eax,DWORD PTR [rip+0xf0242]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2feff6  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2feff9  33 c0                          xor    eax,eax
2feffb  38 05 97 9b 0e 00              cmp    BYTE PTR [rip+0xe9b97],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2ff001  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2ff00b  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2ff015  74 08                          je     0x2ff01f
2ff017  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff01b  84 c9                          test   cl,cl
2ff01d  75 03                          jne    0x2ff022
2ff01f  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff022  8a 05 50 7a 0e 00              mov    al,BYTE PTR [rip+0xe7a50]        # 0x3e6a78 ; CONFIG Bools.FoodIcons value(+0x48)
2ff028  48 8d 95 78 16 00 00           lea    rdx,[rbp+0x1678]
2ff02f  f3 0f 10 05 61 e3 0e 00        movss  xmm0,DWORD PTR [rip+0xee361]        # 0x3ed398 ; CONFIG F.FoodIconsMult value(+0x48)
2ff037  48 8d 0d fa 14 0f 00           lea    rcx,[rip+0xf14fa]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ff03e  41 b8 03 00 00 00              mov    r8d,0x3
2ff044  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ff049  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ff04c  e8 9f a8 fe ff                 call   0x2e98f0
2ff051  48 8b c8                       mov    rcx,rax
2ff054  e8 17 5d fd ff                 call   0x2d4d70
2ff059  84 c0                          test   al,al
2ff05b  75 13                          jne    0x2ff070
2ff05d  33 c0                          xor    eax,eax
2ff05f  38 05 53 6c 0e 00              cmp    BYTE PTR [rip+0xe6c53],al        # 0x3e5cb8
2ff065  74 09                          je     0x2ff070
2ff067  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff06a  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff06d  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff070  8b d6                          mov    edx,esi
2ff072  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff077  e8 88 b7 fe ff                 call   0x2ea804
2ff07c  33 c0                          xor    eax,eax
2ff07e  38 05 d4 a8 0e 00              cmp    BYTE PTR [rip+0xea8d4],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2ff084  0f 84 37 62 00 00              je     0x3052c1
2ff08a  38 05 f1 03 0f 00              cmp    BYTE PTR [rip+0xf03f1],al        # 0x3ef481
2ff090  0f 84 2b 62 00 00              je     0x3052c1
2ff096  44 8d 40 0f                    lea    r8d,[rax+0xf]
2ff09a  48 8d 95 88 16 00 00           lea    rdx,[rbp+0x1688]
2ff0a1  48 8d 0d 40 16 0f 00           lea    rcx,[rip+0xf1640]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2ff0a8  e8 43 a8 fe ff                 call   0x2e98f0
2ff0ad  48 8b c8                       mov    rcx,rax
2ff0b0  e8 bb 5c fd ff                 call   0x2d4d70
2ff0b5  84 c0                          test   al,al
2ff0b7  0f 84 04 62 00 00              je     0x3052c1
2ff0bd  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2ff0c3  4c 8d 85 00 05 00 00           lea    r8,[rbp+0x500]
2ff0ca  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2ff0ce  f2 0f 11 85 00 05 00 00        movsd  QWORD PTR [rbp+0x500],xmm0
2ff0d6  89 85 08 05 00 00              mov    DWORD PTR [rbp+0x508],eax
2ff0dc  e9 48 04 00 00                 jmp    0x2ff529
2ff0e1  83 f9 2d                       cmp    ecx,0x2d
2ff0e4  0f 85 66 01 00 00              jne    0x2ff250
2ff0ea  48 8d 95 74 0e 00 00           lea    rdx,[rbp+0xe74]
2ff0f1  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff0f6  e8 05 50 ff ff                 call   0x2f4100 ; STRING getter=0x2f4100 Mushroom
2ff0fb  48 8b c8                       mov    rcx,rax
2ff0fe  e8 89 aa fe ff                 call   0x2e9b8c
2ff103  48 8b d0                       mov    rdx,rax
2ff106  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff10b  e8 58 5b fd ff                 call   0x2d4c68
2ff110  0f 10 05 41 c7 0e 00           movups xmm0,XMMWORD PTR [rip+0xec741]        # 0x3eb858 ; CONFIG C.MushroomColor value(+0x48)
2ff117  8a 15 bb 9b 0e 00              mov    dl,BYTE PTR [rip+0xe9bbb]        # 0x3e8cd8 ; CONFIG Bools.mushroomesp value(+0x48)
2ff11d  33 c0                          xor    eax,eax
2ff11f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff123  84 d2                          test   dl,dl
2ff125  74 0d                          je     0x2ff134
2ff127  40 84 ff                       test   dil,dil
2ff12a  74 08                          je     0x2ff134
2ff12c  40 8a ce                       mov    cl,sil
2ff12f  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff132  eb 05                          jmp    0x2ff139
2ff134  8a c8                          mov    cl,al
2ff136  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff139  8b 05 e9 01 0f 00              mov    eax,DWORD PTR [rip+0xf01e9]        # 0x3ef328 ; CONFIG i.FoodDistance value(+0x48)
2ff13f  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff142  33 c0                          xor    eax,eax
2ff144  38 05 7e 92 0e 00              cmp    BYTE PTR [rip+0xe927e],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff14a  75 08                          jne    0x2ff154
2ff14c  38 05 66 b1 0e 00              cmp    BYTE PTR [rip+0xeb166],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff152  74 08                          je     0x2ff15c
2ff154  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff158  84 d2                          test   dl,dl
2ff15a  75 03                          jne    0x2ff15f
2ff15c  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff15f  8b 05 d3 00 0f 00              mov    eax,DWORD PTR [rip+0xf00d3]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2ff165  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff168  33 c0                          xor    eax,eax
2ff16a  38 05 28 9a 0e 00              cmp    BYTE PTR [rip+0xe9a28],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2ff170  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2ff17a  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2ff184  74 08                          je     0x2ff18e
2ff186  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff18a  84 c9                          test   cl,cl
2ff18c  75 03                          jne    0x2ff191
2ff18e  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff191  8a 05 e1 78 0e 00              mov    al,BYTE PTR [rip+0xe78e1]        # 0x3e6a78 ; CONFIG Bools.FoodIcons value(+0x48)
2ff197  48 8d 95 98 16 00 00           lea    rdx,[rbp+0x1698]
2ff19e  f3 0f 10 05 f2 e1 0e 00        movss  xmm0,DWORD PTR [rip+0xee1f2]        # 0x3ed398 ; CONFIG F.FoodIconsMult value(+0x48)
2ff1a6  48 8d 0d 8b 13 0f 00           lea    rcx,[rip+0xf138b]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ff1ad  41 b8 03 00 00 00              mov    r8d,0x3
2ff1b3  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ff1b8  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ff1bb  e8 30 a7 fe ff                 call   0x2e98f0
2ff1c0  48 8b c8                       mov    rcx,rax
2ff1c3  e8 a8 5b fd ff                 call   0x2d4d70
2ff1c8  84 c0                          test   al,al
2ff1ca  75 13                          jne    0x2ff1df
2ff1cc  33 c0                          xor    eax,eax
2ff1ce  38 05 e4 6a 0e 00              cmp    BYTE PTR [rip+0xe6ae4],al        # 0x3e5cb8
2ff1d4  74 09                          je     0x2ff1df
2ff1d6  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff1d9  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff1dc  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff1df  8b d6                          mov    edx,esi
2ff1e1  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff1e6  e8 19 b6 fe ff                 call   0x2ea804
2ff1eb  33 c0                          xor    eax,eax
2ff1ed  38 05 65 a7 0e 00              cmp    BYTE PTR [rip+0xea765],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2ff1f3  0f 84 c8 60 00 00              je     0x3052c1
2ff1f9  38 05 82 02 0f 00              cmp    BYTE PTR [rip+0xf0282],al        # 0x3ef481
2ff1ff  0f 84 bc 60 00 00              je     0x3052c1
2ff205  44 8d 40 0e                    lea    r8d,[rax+0xe]
2ff209  48 8d 95 a8 16 00 00           lea    rdx,[rbp+0x16a8]
2ff210  48 8d 0d d1 14 0f 00           lea    rcx,[rip+0xf14d1]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2ff217  e8 d4 a6 fe ff                 call   0x2e98f0
2ff21c  48 8b c8                       mov    rcx,rax
2ff21f  e8 4c 5b fd ff                 call   0x2d4d70
2ff224  84 c0                          test   al,al
2ff226  0f 84 95 60 00 00              je     0x3052c1
2ff22c  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2ff232  4c 8d 85 10 05 00 00           lea    r8,[rbp+0x510]
2ff239  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2ff23d  f2 0f 11 85 10 05 00 00        movsd  QWORD PTR [rbp+0x510],xmm0
2ff245  89 85 18 05 00 00              mov    DWORD PTR [rbp+0x518],eax
2ff24b  e9 d9 02 00 00                 jmp    0x2ff529
2ff250  83 f9 2e                       cmp    ecx,0x2e
2ff253  0f 85 66 01 00 00              jne    0x2ff3bf
2ff259  48 8d 95 c0 0b 00 00           lea    rdx,[rbp+0xbc0]
2ff260  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff265  e8 12 4f ff ff                 call   0x2f417c
2ff26a  48 8b c8                       mov    rcx,rax
2ff26d  e8 a2 43 fe ff                 call   0x2e3614
2ff272  48 8b d0                       mov    rdx,rax
2ff275  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff27a  e8 e9 59 fd ff                 call   0x2d4c68
2ff27f  0f 10 05 32 c6 0e 00           movups xmm0,XMMWORD PTR [rip+0xec632]        # 0x3eb8b8 ; CONFIG C.PumpkinColor value(+0x48)
2ff286  8a 15 9c 9a 0e 00              mov    dl,BYTE PTR [rip+0xe9a9c]        # 0x3e8d28 ; CONFIG Bools.pumpkinesp value(+0x48)
2ff28c  33 c0                          xor    eax,eax
2ff28e  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff292  84 d2                          test   dl,dl
2ff294  74 0d                          je     0x2ff2a3
2ff296  40 84 ff                       test   dil,dil
2ff299  74 08                          je     0x2ff2a3
2ff29b  40 8a ce                       mov    cl,sil
2ff29e  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff2a1  eb 05                          jmp    0x2ff2a8
2ff2a3  8a c8                          mov    cl,al
2ff2a5  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff2a8  8b 05 7a 00 0f 00              mov    eax,DWORD PTR [rip+0xf007a]        # 0x3ef328 ; CONFIG i.FoodDistance value(+0x48)
2ff2ae  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff2b1  33 c0                          xor    eax,eax
2ff2b3  38 05 0f 91 0e 00              cmp    BYTE PTR [rip+0xe910f],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff2b9  75 08                          jne    0x2ff2c3
2ff2bb  38 05 f7 af 0e 00              cmp    BYTE PTR [rip+0xeaff7],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff2c1  74 08                          je     0x2ff2cb
2ff2c3  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff2c7  84 d2                          test   dl,dl
2ff2c9  75 03                          jne    0x2ff2ce
2ff2cb  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff2ce  8b 05 64 ff 0e 00              mov    eax,DWORD PTR [rip+0xeff64]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2ff2d4  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff2d7  33 c0                          xor    eax,eax
2ff2d9  38 05 b9 98 0e 00              cmp    BYTE PTR [rip+0xe98b9],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2ff2df  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2ff2e9  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2ff2f3  74 08                          je     0x2ff2fd
2ff2f5  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff2f9  84 c9                          test   cl,cl
2ff2fb  75 03                          jne    0x2ff300
2ff2fd  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff300  8a 05 72 77 0e 00              mov    al,BYTE PTR [rip+0xe7772]        # 0x3e6a78 ; CONFIG Bools.FoodIcons value(+0x48)
2ff306  48 8d 95 b8 16 00 00           lea    rdx,[rbp+0x16b8]
2ff30d  f3 0f 10 05 83 e0 0e 00        movss  xmm0,DWORD PTR [rip+0xee083]        # 0x3ed398 ; CONFIG F.FoodIconsMult value(+0x48)
2ff315  48 8d 0d 1c 12 0f 00           lea    rcx,[rip+0xf121c]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ff31c  41 b8 03 00 00 00              mov    r8d,0x3
2ff322  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ff327  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ff32a  e8 c1 a5 fe ff                 call   0x2e98f0
2ff32f  48 8b c8                       mov    rcx,rax
2ff332  e8 39 5a fd ff                 call   0x2d4d70
2ff337  84 c0                          test   al,al
2ff339  75 13                          jne    0x2ff34e
2ff33b  33 c0                          xor    eax,eax
2ff33d  38 05 75 69 0e 00              cmp    BYTE PTR [rip+0xe6975],al        # 0x3e5cb8
2ff343  74 09                          je     0x2ff34e
2ff345  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff348  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff34b  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff34e  8b d6                          mov    edx,esi
2ff350  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff355  e8 aa b4 fe ff                 call   0x2ea804
2ff35a  33 c0                          xor    eax,eax
2ff35c  38 05 f6 a5 0e 00              cmp    BYTE PTR [rip+0xea5f6],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2ff362  0f 84 59 5f 00 00              je     0x3052c1
2ff368  38 05 13 01 0f 00              cmp    BYTE PTR [rip+0xf0113],al        # 0x3ef481
2ff36e  0f 84 4d 5f 00 00              je     0x3052c1
2ff374  44 8d 40 0d                    lea    r8d,[rax+0xd]
2ff378  48 8d 95 c8 16 00 00           lea    rdx,[rbp+0x16c8]
2ff37f  48 8d 0d 62 13 0f 00           lea    rcx,[rip+0xf1362]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2ff386  e8 65 a5 fe ff                 call   0x2e98f0
2ff38b  48 8b c8                       mov    rcx,rax
2ff38e  e8 dd 59 fd ff                 call   0x2d4d70
2ff393  84 c0                          test   al,al
2ff395  0f 84 26 5f 00 00              je     0x3052c1
2ff39b  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2ff3a1  4c 8d 85 20 05 00 00           lea    r8,[rbp+0x520]
2ff3a8  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2ff3ac  f2 0f 11 85 20 05 00 00        movsd  QWORD PTR [rbp+0x520],xmm0
2ff3b4  89 85 28 05 00 00              mov    DWORD PTR [rbp+0x528],eax
2ff3ba  e9 6a 01 00 00                 jmp    0x2ff529
2ff3bf  83 f9 30                       cmp    ecx,0x30
2ff3c2  0f 85 92 01 00 00              jne    0x2ff55a
2ff3c8  48 8d 95 2f 0b 00 00           lea    rdx,[rbp+0xb2f]
2ff3cf  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff3d4  e8 cf 4f ff ff                 call   0x2f43a8 ; STRING getter=0x2f43a8 Potato
2ff3d9  48 8b c8                       mov    rcx,rax
2ff3dc  e8 13 e9 fc ff                 call   0x2cdcf4
2ff3e1  48 8b d0                       mov    rdx,rax
2ff3e4  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff3e9  e8 7a 58 fd ff                 call   0x2d4c68
2ff3ee  0f 10 05 23 c5 0e 00           movups xmm0,XMMWORD PTR [rip+0xec523]        # 0x3eb918 ; CONFIG C.PotatoColor value(+0x48)
2ff3f5  8a 15 cd 99 0e 00              mov    dl,BYTE PTR [rip+0xe99cd]        # 0x3e8dc8 ; CONFIG Bools.potatoesp value(+0x48)
2ff3fb  33 c0                          xor    eax,eax
2ff3fd  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff401  84 d2                          test   dl,dl
2ff403  74 0d                          je     0x2ff412
2ff405  40 84 ff                       test   dil,dil
2ff408  74 08                          je     0x2ff412
2ff40a  40 8a ce                       mov    cl,sil
2ff40d  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff410  eb 05                          jmp    0x2ff417
2ff412  8a c8                          mov    cl,al
2ff414  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff417  8b 05 0b ff 0e 00              mov    eax,DWORD PTR [rip+0xeff0b]        # 0x3ef328 ; CONFIG i.FoodDistance value(+0x48)
2ff41d  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff420  33 c0                          xor    eax,eax
2ff422  38 05 a0 8f 0e 00              cmp    BYTE PTR [rip+0xe8fa0],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff428  75 08                          jne    0x2ff432
2ff42a  38 05 88 ae 0e 00              cmp    BYTE PTR [rip+0xeae88],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff430  74 08                          je     0x2ff43a
2ff432  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff436  84 d2                          test   dl,dl
2ff438  75 03                          jne    0x2ff43d
2ff43a  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff43d  8b 05 f5 fd 0e 00              mov    eax,DWORD PTR [rip+0xefdf5]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
2ff443  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff446  33 c0                          xor    eax,eax
2ff448  38 05 4a 97 0e 00              cmp    BYTE PTR [rip+0xe974a],al        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
2ff44e  c7 85 d4 00 00 00 64 00 00 00  mov    DWORD PTR [rbp+0xd4],0x64
2ff458  c7 85 d0 00 00 00 23 00 00 00  mov    DWORD PTR [rbp+0xd0],0x23
2ff462  74 08                          je     0x2ff46c
2ff464  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff468  84 c9                          test   cl,cl
2ff46a  75 03                          jne    0x2ff46f
2ff46c  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff46f  8a 05 03 76 0e 00              mov    al,BYTE PTR [rip+0xe7603]        # 0x3e6a78 ; CONFIG Bools.FoodIcons value(+0x48)
2ff475  48 8d 95 d8 16 00 00           lea    rdx,[rbp+0x16d8]
2ff47c  f3 0f 10 05 14 df 0e 00        movss  xmm0,DWORD PTR [rip+0xedf14]        # 0x3ed398 ; CONFIG F.FoodIconsMult value(+0x48)
2ff484  48 8d 0d ad 10 0f 00           lea    rcx,[rip+0xf10ad]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ff48b  41 b8 03 00 00 00              mov    r8d,0x3
2ff491  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ff496  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ff499  e8 52 a4 fe ff                 call   0x2e98f0
2ff49e  48 8b c8                       mov    rcx,rax
2ff4a1  e8 ca 58 fd ff                 call   0x2d4d70
2ff4a6  84 c0                          test   al,al
2ff4a8  75 13                          jne    0x2ff4bd
2ff4aa  33 c0                          xor    eax,eax
2ff4ac  38 05 06 68 0e 00              cmp    BYTE PTR [rip+0xe6806],al        # 0x3e5cb8
2ff4b2  74 09                          je     0x2ff4bd
2ff4b4  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff4b7  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff4ba  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff4bd  8b d6                          mov    edx,esi
2ff4bf  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff4c4  e8 3b b3 fe ff                 call   0x2ea804
2ff4c9  33 c0                          xor    eax,eax
2ff4cb  38 05 87 a4 0e 00              cmp    BYTE PTR [rip+0xea487],al        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
2ff4d1  0f 84 ea 5d 00 00              je     0x3052c1
2ff4d7  38 05 a4 ff 0e 00              cmp    BYTE PTR [rip+0xeffa4],al        # 0x3ef481
2ff4dd  0f 84 de 5d 00 00              je     0x3052c1
2ff4e3  44 8d 40 10                    lea    r8d,[rax+0x10]
2ff4e7  48 8d 95 e8 16 00 00           lea    rdx,[rbp+0x16e8]
2ff4ee  48 8d 0d f3 11 0f 00           lea    rcx,[rip+0xf11f3]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
2ff4f5  e8 f6 a3 fe ff                 call   0x2e98f0
2ff4fa  48 8b c8                       mov    rcx,rax
2ff4fd  e8 6e 58 fd ff                 call   0x2d4d70
2ff502  84 c0                          test   al,al
2ff504  0f 84 b7 5d 00 00              je     0x3052c1
2ff50a  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2ff510  4c 8d 85 30 05 00 00           lea    r8,[rbp+0x530]
2ff517  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2ff51b  f2 0f 11 85 30 05 00 00        movsd  QWORD PTR [rbp+0x530],xmm0
2ff523  89 85 38 05 00 00              mov    DWORD PTR [rbp+0x538],eax
2ff529  8a 05 79 a4 0e 00              mov    al,BYTE PTR [rip+0xea479]        # 0x3e99a8 ; CONFIG Bools.autoeat value(+0x48)
2ff52f  f6 d8                          neg    al
2ff531  45 1b c9                       sbb    r9d,r9d
2ff534  41 83 e1 fe                    and    r9d,0xfffffffe
2ff538  41 83 c1 06                    add    r9d,0x6
2ff53c  33 c0                          xor    eax,eax
2ff53e  88 44 24 28                    mov    BYTE PTR [rsp+0x28],al
2ff542  88 44 24 20                    mov    BYTE PTR [rsp+0x20],al
2ff546  48 8b 8d 78 02 00 00           mov    rcx,QWORD PTR [rbp+0x278]
2ff54d  49 8b d4                       mov    rdx,r12
2ff550  e8 d3 83 01 00                 call   0x317928
2ff555  e9 67 5d 00 00                 jmp    0x3052c1
2ff55a  83 f9 31                       cmp    ecx,0x31
2ff55d  0f 85 c0 00 00 00              jne    0x2ff623
2ff563  0f 10 05 ce ca 0e 00           movups xmm0,XMMWORD PTR [rip+0xecace]        # 0x3ec038 ; CONFIG C.AirDropColor value(+0x48)
2ff56a  8a 15 88 9a 0e 00              mov    dl,BYTE PTR [rip+0xe9a88]        # 0x3e8ff8 ; CONFIG Bools.Airdrop value(+0x48)
2ff570  33 c0                          xor    eax,eax
2ff572  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff576  84 d2                          test   dl,dl
2ff578  74 0d                          je     0x2ff587
2ff57a  40 84 ff                       test   dil,dil
2ff57d  74 08                          je     0x2ff587
2ff57f  40 8a ce                       mov    cl,sil
2ff582  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff585  eb 05                          jmp    0x2ff58c
2ff587  8a c8                          mov    cl,al
2ff589  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff58c  8b 05 f6 ed 0e 00              mov    eax,DWORD PTR [rip+0xeedf6]        # 0x3ee388 ; CONFIG i.AirdropDistance value(+0x48)
2ff592  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff595  33 c0                          xor    eax,eax
2ff597  38 05 2b 8e 0e 00              cmp    BYTE PTR [rip+0xe8e2b],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff59d  75 08                          jne    0x2ff5a7
2ff59f  38 05 13 ad 0e 00              cmp    BYTE PTR [rip+0xead13],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff5a5  74 08                          je     0x2ff5af
2ff5a7  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff5ab  84 d2                          test   dl,dl
2ff5ad  75 07                          jne    0x2ff5b6
2ff5af  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff5b2  84 d2                          test   dl,dl
2ff5b4  74 43                          je     0x2ff5f9
2ff5b6  ba d8 01 00 00                 mov    edx,0x1d8
2ff5bb  49 8b cd                       mov    rcx,r13
2ff5be  e8 79 f8 fd ff                 call   0x2dee3c
2ff5c3  48 8d 95 f0 12 00 00           lea    rdx,[rbp+0x12f0]
2ff5ca  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff5cf  0f bf 18                       movsx  ebx,WORD PTR [rax]
2ff5d2  e8 7d 4e ff ff                 call   0x2f4454
2ff5d7  48 8b c8                       mov    rcx,rax
2ff5da  e8 8d 0e 02 00                 call   0x32046c
2ff5df  48 8b d0                       mov    rdx,rax
2ff5e2  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2ff5e6  e8 fd ff fe ff                 call   0x2ef5e8
2ff5eb  8a 4d c4                       mov    cl,BYTE PTR [rbp-0x3c]
2ff5ee  0f ba e3 03                    bt     ebx,0x3
2ff5f2  0f 92 85 10 01 00 00           setb   BYTE PTR [rbp+0x110]
2ff5f9  8b 05 f9 fa 0e 00              mov    eax,DWORD PTR [rip+0xefaf9]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ff5ff  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff602  33 c0                          xor    eax,eax
2ff604  38 05 9e 94 0e 00              cmp    BYTE PTR [rip+0xe949e],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ff60a  74 08                          je     0x2ff614
2ff60c  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff610  84 c9                          test   cl,cl
2ff612  75 03                          jne    0x2ff617
2ff614  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff617  48 8d 95 f8 16 00 00           lea    rdx,[rbp+0x16f8]
2ff61e  e9 91 04 00 00                 jmp    0x2ffab4
2ff623  83 f9 32                       cmp    ecx,0x32
2ff626  0f 85 3f 02 00 00              jne    0x2ff86b
2ff62c  48 8d 95 18 13 00 00           lea    rdx,[rbp+0x1318]
2ff633  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff638  e8 97 4e ff ff                 call   0x2f44d4 ; STRING getter=0x2f44d4 LockedCrate
2ff63d  48 8b c8                       mov    rcx,rax
2ff640  e8 ef e7 fc ff                 call   0x2cde34
2ff645  48 8b d0                       mov    rdx,rax
2ff648  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff64d  e8 16 56 fd ff                 call   0x2d4c68
2ff652  0f 10 05 7f c9 0e 00           movups xmm0,XMMWORD PTR [rip+0xec97f]        # 0x3ebfd8 ; CONFIG C.LockedCrateColor value(+0x48)
2ff659  8a 15 89 9a 0e 00              mov    dl,BYTE PTR [rip+0xe9a89]        # 0x3e90e8 ; CONFIG Bools.LockedCrates value(+0x48)
2ff65f  33 c0                          xor    eax,eax
2ff661  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff665  84 d2                          test   dl,dl
2ff667  74 0d                          je     0x2ff676
2ff669  40 84 ff                       test   dil,dil
2ff66c  74 08                          je     0x2ff676
2ff66e  40 8a ce                       mov    cl,sil
2ff671  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff674  eb 05                          jmp    0x2ff67b
2ff676  8a c8                          mov    cl,al
2ff678  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff67b  8b 05 57 ed 0e 00              mov    eax,DWORD PTR [rip+0xeed57]        # 0x3ee3d8 ; CONFIG i.LockedCrateDistance value(+0x48)
2ff681  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff684  8b 05 6e fa 0e 00              mov    eax,DWORD PTR [rip+0xefa6e]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ff68a  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff68d  33 c0                          xor    eax,eax
2ff68f  38 05 13 94 0e 00              cmp    BYTE PTR [rip+0xe9413],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ff695  74 08                          je     0x2ff69f
2ff697  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff69b  84 c9                          test   cl,cl
2ff69d  75 03                          jne    0x2ff6a2
2ff69f  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff6a2  38 05 20 8d 0e 00              cmp    BYTE PTR [rip+0xe8d20],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff6a8  75 08                          jne    0x2ff6b2
2ff6aa  38 05 08 ac 0e 00              cmp    BYTE PTR [rip+0xeac08],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff6b0  74 08                          je     0x2ff6ba
2ff6b2  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff6b6  84 d2                          test   dl,dl
2ff6b8  75 03                          jne    0x2ff6bd
2ff6ba  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff6bd  8a 05 55 74 0e 00              mov    al,BYTE PTR [rip+0xe7455]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2ff6c3  48 8d 95 08 17 00 00           lea    rdx,[rbp+0x1708]
2ff6ca  f3 0f 10 05 66 dd 0e 00        movss  xmm0,DWORD PTR [rip+0xedd66]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2ff6d2  48 8d 0d 5f 0e 0f 00           lea    rcx,[rip+0xf0e5f]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ff6d9  41 b8 05 00 00 00              mov    r8d,0x5
2ff6df  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ff6e4  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ff6e7  e8 04 a2 fe ff                 call   0x2e98f0
2ff6ec  48 8b c8                       mov    rcx,rax
2ff6ef  e8 7c 56 fd ff                 call   0x2d4d70
2ff6f4  84 c0                          test   al,al
2ff6f6  75 13                          jne    0x2ff70b
2ff6f8  33 c0                          xor    eax,eax
2ff6fa  38 05 b8 65 0e 00              cmp    BYTE PTR [rip+0xe65b8],al        # 0x3e5cb8
2ff700  74 09                          je     0x2ff70b
2ff702  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff705  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff708  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff70b  ba 03 00 00 00                 mov    edx,0x3
2ff710  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ff715  e8 ea b0 fe ff                 call   0x2ea804
2ff71a  38 1d c8 99 0e 00              cmp    BYTE PTR [rip+0xe99c8],bl        # 0x3e90e8 ; CONFIG Bools.LockedCrates value(+0x48)
2ff720  0f 84 9b 5b 00 00              je     0x3052c1
2ff726  ba d8 01 00 00                 mov    edx,0x1d8
2ff72b  49 8b cd                       mov    rcx,r13
2ff72e  e8 09 f7 fd ff                 call   0x2dee3c
2ff733  0f bf 38                       movsx  edi,WORD PTR [rax]
2ff736  8b df                          mov    ebx,edi
2ff738  81 e3 00 01 00 00              and    ebx,0x100
2ff73e  74 4d                          je     0x2ff78d
2ff740  80 3d b1 4a 0e 00 00           cmp    BYTE PTR [rip+0xe4ab1],0x0        # 0x3e41f8 ; CONFIG Bools.SilentLoot value(+0x48)
2ff747  74 44                          je     0x2ff78d
2ff749  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
2ff74d  4c 8d 85 40 05 00 00           lea    r8,[rbp+0x540]
2ff754  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
2ff75a  40 f6 c7 08                    test   dil,0x8
2ff75e  48 8b 8d 78 02 00 00           mov    rcx,QWORD PTR [rbp+0x278]
2ff765  41 b9 02 00 00 00              mov    r9d,0x2
2ff76b  89 85 48 05 00 00              mov    DWORD PTR [rbp+0x548],eax
2ff771  49 8b d4                       mov    rdx,r12
2ff774  0f 95 c0                       setne  al
2ff777  f2 0f 11 85 40 05 00 00        movsd  QWORD PTR [rbp+0x540],xmm0
2ff77f  88 44 24 28                    mov    BYTE PTR [rsp+0x28],al
2ff783  c6 44 24 20 00                 mov    BYTE PTR [rsp+0x20],0x0
2ff788  e8 9b 81 01 00                 call   0x317928
2ff78d  48 8d 95 e0 0f 00 00           lea    rdx,[rbp+0xfe0]
2ff794  49 8b cd                       mov    rcx,r13
2ff797  e8 c4 72 06 00                 call   0x366a60
2ff79c  33 c0                          xor    eax,eax
2ff79e  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
2ff7a1  0f 84 b8 00 00 00              je     0x2ff85f
2ff7a7  85 db                          test   ebx,ebx
2ff7a9  74 2a                          je     0x2ff7d5
2ff7ab  48 8d 95 7d 0e 00 00           lea    rdx,[rbp+0xe7d]
2ff7b2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff7b7  e8 cc 4d ff ff                 call   0x2f4588 ; STRING getter=0x2f4588 [Hacked]
2ff7bc  48 8b c8                       mov    rcx,rax
2ff7bf  e8 c8 a3 fe ff                 call   0x2e9b8c
2ff7c4  48 8b d0                       mov    rdx,rax
2ff7c7  48 8d 4d 58                    lea    rcx,[rbp+0x58]
2ff7cb  e8 98 54 fd ff                 call   0x2d4c68
2ff7d0  e9 8a 00 00 00                 jmp    0x2ff85f
2ff7d5  40 84 ff                       test   dil,dil
2ff7d8  0f 89 81 00 00 00              jns    0x2ff85f
2ff7de  48 8d 95 ac 03 00 00           lea    rdx,[rbp+0x3ac]
2ff7e5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff7ea  e8 f1 09 ff ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
2ff7ef  48 8b c8                       mov    rcx,rax
2ff7f2  e8 6d 8c fd ff                 call   0x2d8464
2ff7f7  48 8d 95 ae 03 00 00           lea    rdx,[rbp+0x3ae]
2ff7fe  48 8b d8                       mov    rbx,rax
2ff801  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ff806  e8 ed 08 ff ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
2ff80b  48 8b c8                       mov    rcx,rax
2ff80e  e8 51 8c fd ff                 call   0x2d8464
2ff813  48 8b d0                       mov    rdx,rax
2ff816  4c 8d 85 e0 0f 00 00           lea    r8,[rbp+0xfe0]
2ff81d  48 8d 8d c8 23 00 00           lea    rcx,[rbp+0x23c8]
2ff824  e8 eb ae fe ff                 call   0x2ea714
2ff829  48 8b d0                       mov    rdx,rax
2ff82c  48 8d 8d a8 23 00 00           lea    rcx,[rbp+0x23a8]
2ff833  4c 8b c3                       mov    r8,rbx
2ff836  e8 fd b4 fc ff                 call   0x2cad38
2ff83b  48 8b d0                       mov    rdx,rax
2ff83e  48 8d 4d 58                    lea    rcx,[rbp+0x58]
2ff842  e8 9d 53 fd ff                 call   0x2d4be4
2ff847  48 8d 8d a8 23 00 00           lea    rcx,[rbp+0x23a8]
2ff84e  e8 a1 cc fc ff                 call   0x2cc4f4
2ff853  48 8d 8d c8 23 00 00           lea    rcx,[rbp+0x23c8]
2ff85a  e8 95 cc fc ff                 call   0x2cc4f4
2ff85f  48 8d 8d e0 0f 00 00           lea    rcx,[rbp+0xfe0]
2ff866  e9 ff 4b 00 00                 jmp    0x30446a
2ff86b  83 f9 35                       cmp    ecx,0x35
2ff86e  75 77                          jne    0x2ff8e7
2ff870  0f 10 05 41 c3 0e 00           movups xmm0,XMMWORD PTR [rip+0xec341]        # 0x3ebbb8 ; CONFIG C.BarrelColor value(+0x48)
2ff877  8a 15 db 82 0e 00              mov    dl,BYTE PTR [rip+0xe82db]        # 0x3e7b58 ; CONFIG Bools.BlueBarrelEsp value(+0x48)
2ff87d  33 c0                          xor    eax,eax
2ff87f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff883  84 d2                          test   dl,dl
2ff885  74 0d                          je     0x2ff894
2ff887  40 84 ff                       test   dil,dil
2ff88a  74 08                          je     0x2ff894
2ff88c  40 8a ce                       mov    cl,sil
2ff88f  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff892  eb 05                          jmp    0x2ff899
2ff894  8a c8                          mov    cl,al
2ff896  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff899  8b 05 59 ee 0e 00              mov    eax,DWORD PTR [rip+0xeee59]        # 0x3ee6f8 ; CONFIG i.NormalBarrelDistance value(+0x48)
2ff89f  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff8a2  8b 05 50 f8 0e 00              mov    eax,DWORD PTR [rip+0xef850]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ff8a8  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff8ab  33 c0                          xor    eax,eax
2ff8ad  38 05 f5 91 0e 00              cmp    BYTE PTR [rip+0xe91f5],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ff8b3  74 08                          je     0x2ff8bd
2ff8b5  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff8b9  84 c9                          test   cl,cl
2ff8bb  75 03                          jne    0x2ff8c0
2ff8bd  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff8c0  38 05 02 8b 0e 00              cmp    BYTE PTR [rip+0xe8b02],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff8c6  75 08                          jne    0x2ff8d0
2ff8c8  38 05 ea a9 0e 00              cmp    BYTE PTR [rip+0xea9ea],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff8ce  74 08                          je     0x2ff8d8
2ff8d0  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff8d4  84 d2                          test   dl,dl
2ff8d6  75 03                          jne    0x2ff8db
2ff8d8  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff8db  48 8d 95 18 17 00 00           lea    rdx,[rbp+0x1718]
2ff8e2  e9 cd 01 00 00                 jmp    0x2ffab4
2ff8e7  41 ba 07 00 00 00              mov    r10d,0x7
2ff8ed  41 3b ca                       cmp    ecx,r10d
2ff8f0  75 77                          jne    0x2ff969
2ff8f2  0f 10 05 df d5 0e 00           movups xmm0,XMMWORD PTR [rip+0xed5df]        # 0x3eced8 ; CONFIG C.BeeHiveColor value(+0x48)
2ff8f9  8a 15 89 89 0e 00              mov    dl,BYTE PTR [rip+0xe8989]        # 0x3e8288 ; CONFIG Bools.BeeHive value(+0x48)
2ff8ff  33 c0                          xor    eax,eax
2ff901  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff905  84 d2                          test   dl,dl
2ff907  74 0d                          je     0x2ff916
2ff909  40 84 ff                       test   dil,dil
2ff90c  74 08                          je     0x2ff916
2ff90e  40 8a ce                       mov    cl,sil
2ff911  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff914  eb 05                          jmp    0x2ff91b
2ff916  8a c8                          mov    cl,al
2ff918  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff91b  8b 05 57 f5 0e 00              mov    eax,DWORD PTR [rip+0xef557]        # 0x3eee78 ; CONFIG i.BeeHiveDistance value(+0x48)
2ff921  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff924  8b 05 ce f7 0e 00              mov    eax,DWORD PTR [rip+0xef7ce]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ff92a  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff92d  33 c0                          xor    eax,eax
2ff92f  38 05 73 91 0e 00              cmp    BYTE PTR [rip+0xe9173],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ff935  74 08                          je     0x2ff93f
2ff937  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff93b  84 c9                          test   cl,cl
2ff93d  75 03                          jne    0x2ff942
2ff93f  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff942  38 05 80 8a 0e 00              cmp    BYTE PTR [rip+0xe8a80],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff948  75 08                          jne    0x2ff952
2ff94a  38 05 68 a9 0e 00              cmp    BYTE PTR [rip+0xea968],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff950  74 08                          je     0x2ff95a
2ff952  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff956  84 d2                          test   dl,dl
2ff958  75 03                          jne    0x2ff95d
2ff95a  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff95d  48 8d 95 28 17 00 00           lea    rdx,[rbp+0x1728]
2ff964  e9 4b 01 00 00                 jmp    0x2ffab4
2ff969  ba 06 00 00 00                 mov    edx,0x6
2ff96e  3b ca                          cmp    ecx,edx
2ff970  0f 85 c3 00 00 00              jne    0x2ffa39
2ff976  0f 10 05 bb d5 0e 00           movups xmm0,XMMWORD PTR [rip+0xed5bb]        # 0x3ecf38 ; CONFIG C.BeeSwarmColor value(+0x48)
2ff97d  8a 15 55 89 0e 00              mov    dl,BYTE PTR [rip+0xe8955]        # 0x3e82d8 ; CONFIG Bools.BeeSwarmAI value(+0x48)
2ff983  33 c0                          xor    eax,eax
2ff985  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ff989  84 d2                          test   dl,dl
2ff98b  74 0d                          je     0x2ff99a
2ff98d  40 84 ff                       test   dil,dil
2ff990  74 08                          je     0x2ff99a
2ff992  40 8a ce                       mov    cl,sil
2ff995  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ff998  eb 05                          jmp    0x2ff99f
2ff99a  8a c8                          mov    cl,al
2ff99c  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ff99f  8b 05 83 f4 0e 00              mov    eax,DWORD PTR [rip+0xef483]        # 0x3eee28 ; CONFIG i.BeeSwarmDistance value(+0x48)
2ff9a5  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ff9a8  8b 05 ea f7 0e 00              mov    eax,DWORD PTR [rip+0xef7ea]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
2ff9ae  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ff9b1  33 c0                          xor    eax,eax
2ff9b3  38 05 8f 91 0e 00              cmp    BYTE PTR [rip+0xe918f],al        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
2ff9b9  74 08                          je     0x2ff9c3
2ff9bb  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ff9bf  84 c9                          test   cl,cl
2ff9c1  75 03                          jne    0x2ff9c6
2ff9c3  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ff9c6  38 05 fc 89 0e 00              cmp    BYTE PTR [rip+0xe89fc],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ff9cc  75 08                          jne    0x2ff9d6
2ff9ce  38 05 e4 a8 0e 00              cmp    BYTE PTR [rip+0xea8e4],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ff9d4  74 08                          je     0x2ff9de
2ff9d6  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ff9da  84 d2                          test   dl,dl
2ff9dc  75 03                          jne    0x2ff9e1
2ff9de  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ff9e1  8a 05 e1 70 0e 00              mov    al,BYTE PTR [rip+0xe70e1]        # 0x3e6ac8 ; CONFIG Bools.AnimalIcons value(+0x48)
2ff9e7  48 8d 95 38 17 00 00           lea    rdx,[rbp+0x1738]
2ff9ee  f3 0f 10 05 f2 d9 0e 00        movss  xmm0,DWORD PTR [rip+0xed9f2]        # 0x3ed3e8 ; CONFIG F.AnimalIconsMult value(+0x48)
2ff9f6  48 8d 0d 3b 0b 0f 00           lea    rcx,[rip+0xf0b3b]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ff9fd  4d 8b c3                       mov    r8,r11
2ffa00  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ffa05  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ffa08  e8 e3 9e fe ff                 call   0x2e98f0
2ffa0d  48 8b c8                       mov    rcx,rax
2ffa10  e8 5b 53 fd ff                 call   0x2d4d70
2ffa15  84 c0                          test   al,al
2ffa17  0f 85 58 60 00 00              jne    0x305a75
2ffa1d  33 c0                          xor    eax,eax
2ffa1f  38 05 93 62 0e 00              cmp    BYTE PTR [rip+0xe6293],al        # 0x3e5cb8
2ffa25  0f 84 4a 60 00 00              je     0x305a75
2ffa2b  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffa2e  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffa31  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffa34  e9 3c 60 00 00                 jmp    0x305a75
2ffa39  83 f9 37                       cmp    ecx,0x37
2ffa3c  0f 85 c3 00 00 00              jne    0x2ffb05
2ffa42  0f 10 05 cf c1 0e 00           movups xmm0,XMMWORD PTR [rip+0xec1cf]        # 0x3ebc18 ; CONFIG C.OilBarrelColor value(+0x48)
2ffa49  8a 15 59 81 0e 00              mov    dl,BYTE PTR [rip+0xe8159]        # 0x3e7ba8 ; CONFIG Bools.OilBarrelEsp value(+0x48)
2ffa4f  33 c0                          xor    eax,eax
2ffa51  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ffa55  84 d2                          test   dl,dl
2ffa57  74 0d                          je     0x2ffa66
2ffa59  40 84 ff                       test   dil,dil
2ffa5c  74 08                          je     0x2ffa66
2ffa5e  40 8a ce                       mov    cl,sil
2ffa61  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ffa64  eb 05                          jmp    0x2ffa6b
2ffa66  8a c8                          mov    cl,al
2ffa68  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffa6b  8b 05 d7 ec 0e 00              mov    eax,DWORD PTR [rip+0xeecd7]        # 0x3ee748 ; CONFIG i.OilBarrelDistance value(+0x48)
2ffa71  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ffa74  8b 05 7e f6 0e 00              mov    eax,DWORD PTR [rip+0xef67e]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ffa7a  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ffa7d  33 c0                          xor    eax,eax
2ffa7f  38 05 23 90 0e 00              cmp    BYTE PTR [rip+0xe9023],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ffa85  74 08                          je     0x2ffa8f
2ffa87  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ffa8b  84 c9                          test   cl,cl
2ffa8d  75 03                          jne    0x2ffa92
2ffa8f  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffa92  38 05 30 89 0e 00              cmp    BYTE PTR [rip+0xe8930],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ffa98  75 08                          jne    0x2ffaa2
2ffa9a  38 05 18 a8 0e 00              cmp    BYTE PTR [rip+0xea818],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ffaa0  74 08                          je     0x2ffaaa
2ffaa2  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ffaa6  84 d2                          test   dl,dl
2ffaa8  75 03                          jne    0x2ffaad
2ffaaa  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffaad  48 8d 95 48 17 00 00           lea    rdx,[rbp+0x1748]
2ffab4  8a 05 5e 70 0e 00              mov    al,BYTE PTR [rip+0xe705e]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2ffaba  48 8d 0d 77 0a 0f 00           lea    rcx,[rip+0xf0a77]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ffac1  f3 0f 10 05 6f d9 0e 00        movss  xmm0,DWORD PTR [rip+0xed96f]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2ffac9  41 b8 05 00 00 00              mov    r8d,0x5
2ffacf  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ffad4  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ffad7  e8 14 9e fe ff                 call   0x2e98f0
2ffadc  48 8b c8                       mov    rcx,rax
2ffadf  e8 8c 52 fd ff                 call   0x2d4d70
2ffae4  84 c0                          test   al,al
2ffae6  75 13                          jne    0x2ffafb
2ffae8  33 c0                          xor    eax,eax
2ffaea  38 05 c8 61 0e 00              cmp    BYTE PTR [rip+0xe61c8],al        # 0x3e5cb8
2ffaf0  74 09                          je     0x2ffafb
2ffaf2  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffaf5  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffaf8  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffafb  ba 03 00 00 00                 mov    edx,0x3
2ffb00  e9 51 5e 00 00                 jmp    0x305956
2ffb05  83 f9 38                       cmp    ecx,0x38
2ffb08  0f 85 06 01 00 00              jne    0x2ffc14
2ffb0e  0f 10 05 63 c1 0e 00           movups xmm0,XMMWORD PTR [rip+0xec163]        # 0x3ebc78 ; CONFIG C.NormalCrateColor value(+0x48)
2ffb15  8a 15 dd 80 0e 00              mov    dl,BYTE PTR [rip+0xe80dd]        # 0x3e7bf8 ; CONFIG Bools.NormalCrateESP value(+0x48)
2ffb1b  33 c0                          xor    eax,eax
2ffb1d  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ffb21  84 d2                          test   dl,dl
2ffb23  74 0d                          je     0x2ffb32
2ffb25  40 84 ff                       test   dil,dil
2ffb28  74 08                          je     0x2ffb32
2ffb2a  40 8a ce                       mov    cl,sil
2ffb2d  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ffb30  eb 05                          jmp    0x2ffb37
2ffb32  8a c8                          mov    cl,al
2ffb34  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffb37  8b 05 eb e8 0e 00              mov    eax,DWORD PTR [rip+0xee8eb]        # 0x3ee428 ; CONFIG i.NormalCrateDistance value(+0x48)
2ffb3d  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ffb40  8b 05 b2 f5 0e 00              mov    eax,DWORD PTR [rip+0xef5b2]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ffb46  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ffb49  33 c0                          xor    eax,eax
2ffb4b  38 05 57 8f 0e 00              cmp    BYTE PTR [rip+0xe8f57],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ffb51  74 08                          je     0x2ffb5b
2ffb53  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ffb57  84 c9                          test   cl,cl
2ffb59  75 03                          jne    0x2ffb5e
2ffb5b  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffb5e  38 05 64 88 0e 00              cmp    BYTE PTR [rip+0xe8864],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ffb64  75 08                          jne    0x2ffb6e
2ffb66  38 05 4c a7 0e 00              cmp    BYTE PTR [rip+0xea74c],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ffb6c  74 08                          je     0x2ffb76
2ffb6e  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ffb72  84 d2                          test   dl,dl
2ffb74  75 03                          jne    0x2ffb79
2ffb76  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffb79  8a 05 99 6f 0e 00              mov    al,BYTE PTR [rip+0xe6f99]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2ffb7f  48 8d 95 58 17 00 00           lea    rdx,[rbp+0x1758]
2ffb86  f3 0f 10 05 aa d8 0e 00        movss  xmm0,DWORD PTR [rip+0xed8aa]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2ffb8e  48 8d 0d a3 09 0f 00           lea    rcx,[rip+0xf09a3]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ffb95  41 b8 05 00 00 00              mov    r8d,0x5
2ffb9b  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ffba0  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ffba3  e8 48 9d fe ff                 call   0x2e98f0
2ffba8  48 8b c8                       mov    rcx,rax
2ffbab  e8 c0 51 fd ff                 call   0x2d4d70
2ffbb0  84 c0                          test   al,al
2ffbb2  75 13                          jne    0x2ffbc7
2ffbb4  33 c0                          xor    eax,eax
2ffbb6  38 05 fc 60 0e 00              cmp    BYTE PTR [rip+0xe60fc],al        # 0x3e5cb8
2ffbbc  74 09                          je     0x2ffbc7
2ffbbe  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffbc1  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffbc4  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffbc7  ba 03 00 00 00                 mov    edx,0x3
2ffbcc  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ffbd1  e8 2e ac fe ff                 call   0x2ea804
2ffbd6  38 1d 1c 80 0e 00              cmp    BYTE PTR [rip+0xe801c],bl        # 0x3e7bf8 ; CONFIG Bools.NormalCrateESP value(+0x48)
2ffbdc  0f 84 df 56 00 00              je     0x3052c1
2ffbe2  ba d8 01 00 00                 mov    edx,0x1d8
2ffbe7  49 8b cd                       mov    rcx,r13
2ffbea  e8 4d f2 fd ff                 call   0x2dee3c
2ffbef  48 8d 95 24 13 00 00           lea    rdx,[rbp+0x1324]
2ffbf6  0f bf 08                       movsx  ecx,WORD PTR [rax]
2ffbf9  c1 e9 03                       shr    ecx,0x3
2ffbfc  40 22 ce                       and    cl,sil
2ffbff  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
2ffc05  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ffc0a  e8 79 4b ff ff                 call   0x2f4788
2ffc0f  e9 75 08 00 00                 jmp    0x300489
2ffc14  83 f9 3a                       cmp    ecx,0x3a
2ffc17  0f 85 06 01 00 00              jne    0x2ffd23
2ffc1d  0f 10 05 b4 c0 0e 00           movups xmm0,XMMWORD PTR [rip+0xec0b4]        # 0x3ebcd8 ; CONFIG C.MilitaryCrateColor value(+0x48)
2ffc24  8a 15 1e 80 0e 00              mov    dl,BYTE PTR [rip+0xe801e]        # 0x3e7c48 ; CONFIG Bools.MilitaryCrateESP value(+0x48)
2ffc2a  33 c0                          xor    eax,eax
2ffc2c  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ffc30  84 d2                          test   dl,dl
2ffc32  74 0d                          je     0x2ffc41
2ffc34  40 84 ff                       test   dil,dil
2ffc37  74 08                          je     0x2ffc41
2ffc39  40 8a ce                       mov    cl,sil
2ffc3c  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ffc3f  eb 05                          jmp    0x2ffc46
2ffc41  8a c8                          mov    cl,al
2ffc43  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffc46  8b 05 2c e8 0e 00              mov    eax,DWORD PTR [rip+0xee82c]        # 0x3ee478 ; CONFIG i.MilitaryCrateDistance value(+0x48)
2ffc4c  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ffc4f  8b 05 a3 f4 0e 00              mov    eax,DWORD PTR [rip+0xef4a3]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ffc55  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ffc58  33 c0                          xor    eax,eax
2ffc5a  38 05 48 8e 0e 00              cmp    BYTE PTR [rip+0xe8e48],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ffc60  74 08                          je     0x2ffc6a
2ffc62  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ffc66  84 c9                          test   cl,cl
2ffc68  75 03                          jne    0x2ffc6d
2ffc6a  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffc6d  38 05 55 87 0e 00              cmp    BYTE PTR [rip+0xe8755],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ffc73  75 08                          jne    0x2ffc7d
2ffc75  38 05 3d a6 0e 00              cmp    BYTE PTR [rip+0xea63d],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ffc7b  74 08                          je     0x2ffc85
2ffc7d  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ffc81  84 d2                          test   dl,dl
2ffc83  75 03                          jne    0x2ffc88
2ffc85  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffc88  8a 05 8a 6e 0e 00              mov    al,BYTE PTR [rip+0xe6e8a]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2ffc8e  48 8d 95 68 17 00 00           lea    rdx,[rbp+0x1768]
2ffc95  f3 0f 10 05 9b d7 0e 00        movss  xmm0,DWORD PTR [rip+0xed79b]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2ffc9d  48 8d 0d 94 08 0f 00           lea    rcx,[rip+0xf0894]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ffca4  41 b8 05 00 00 00              mov    r8d,0x5
2ffcaa  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ffcaf  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ffcb2  e8 39 9c fe ff                 call   0x2e98f0
2ffcb7  48 8b c8                       mov    rcx,rax
2ffcba  e8 b1 50 fd ff                 call   0x2d4d70
2ffcbf  84 c0                          test   al,al
2ffcc1  75 13                          jne    0x2ffcd6
2ffcc3  33 c0                          xor    eax,eax
2ffcc5  38 05 ed 5f 0e 00              cmp    BYTE PTR [rip+0xe5fed],al        # 0x3e5cb8
2ffccb  74 09                          je     0x2ffcd6
2ffccd  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffcd0  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffcd3  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffcd6  ba 03 00 00 00                 mov    edx,0x3
2ffcdb  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ffce0  e8 1f ab fe ff                 call   0x2ea804
2ffce5  38 1d 5d 7f 0e 00              cmp    BYTE PTR [rip+0xe7f5d],bl        # 0x3e7c48 ; CONFIG Bools.MilitaryCrateESP value(+0x48)
2ffceb  0f 84 d0 55 00 00              je     0x3052c1
2ffcf1  ba d8 01 00 00                 mov    edx,0x1d8
2ffcf6  49 8b cd                       mov    rcx,r13
2ffcf9  e8 3e f1 fd ff                 call   0x2dee3c
2ffcfe  48 8d 95 30 13 00 00           lea    rdx,[rbp+0x1330]
2ffd05  0f bf 08                       movsx  ecx,WORD PTR [rax]
2ffd08  c1 e9 03                       shr    ecx,0x3
2ffd0b  40 22 ce                       and    cl,sil
2ffd0e  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
2ffd14  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ffd19  e8 1e 4b ff ff                 call   0x2f483c
2ffd1e  e9 66 07 00 00                 jmp    0x300489
2ffd23  83 f9 3b                       cmp    ecx,0x3b
2ffd26  0f 85 06 01 00 00              jne    0x2ffe32
2ffd2c  0f 10 05 05 c0 0e 00           movups xmm0,XMMWORD PTR [rip+0xec005]        # 0x3ebd38 ; CONFIG C.EliteCrateColor value(+0x48)
2ffd33  8a 15 5f 7f 0e 00              mov    dl,BYTE PTR [rip+0xe7f5f]        # 0x3e7c98 ; CONFIG Bools.EliteCrateESP value(+0x48)
2ffd39  33 c0                          xor    eax,eax
2ffd3b  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ffd3f  84 d2                          test   dl,dl
2ffd41  74 0d                          je     0x2ffd50
2ffd43  40 84 ff                       test   dil,dil
2ffd46  74 08                          je     0x2ffd50
2ffd48  40 8a ce                       mov    cl,sil
2ffd4b  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ffd4e  eb 05                          jmp    0x2ffd55
2ffd50  8a c8                          mov    cl,al
2ffd52  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffd55  8b 05 6d e7 0e 00              mov    eax,DWORD PTR [rip+0xee76d]        # 0x3ee4c8 ; CONFIG i.EliteCrateDistance value(+0x48)
2ffd5b  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ffd5e  8b 05 94 f3 0e 00              mov    eax,DWORD PTR [rip+0xef394]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ffd64  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ffd67  33 c0                          xor    eax,eax
2ffd69  38 05 39 8d 0e 00              cmp    BYTE PTR [rip+0xe8d39],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ffd6f  74 08                          je     0x2ffd79
2ffd71  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ffd75  84 c9                          test   cl,cl
2ffd77  75 03                          jne    0x2ffd7c
2ffd79  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffd7c  38 05 46 86 0e 00              cmp    BYTE PTR [rip+0xe8646],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ffd82  75 08                          jne    0x2ffd8c
2ffd84  38 05 2e a5 0e 00              cmp    BYTE PTR [rip+0xea52e],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ffd8a  74 08                          je     0x2ffd94
2ffd8c  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ffd90  84 d2                          test   dl,dl
2ffd92  75 03                          jne    0x2ffd97
2ffd94  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffd97  8a 05 7b 6d 0e 00              mov    al,BYTE PTR [rip+0xe6d7b]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2ffd9d  48 8d 95 78 17 00 00           lea    rdx,[rbp+0x1778]
2ffda4  f3 0f 10 05 8c d6 0e 00        movss  xmm0,DWORD PTR [rip+0xed68c]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2ffdac  48 8d 0d 85 07 0f 00           lea    rcx,[rip+0xf0785]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ffdb3  41 b8 05 00 00 00              mov    r8d,0x5
2ffdb9  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ffdbe  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ffdc1  e8 2a 9b fe ff                 call   0x2e98f0
2ffdc6  48 8b c8                       mov    rcx,rax
2ffdc9  e8 a2 4f fd ff                 call   0x2d4d70
2ffdce  84 c0                          test   al,al
2ffdd0  75 13                          jne    0x2ffde5
2ffdd2  33 c0                          xor    eax,eax
2ffdd4  38 05 de 5e 0e 00              cmp    BYTE PTR [rip+0xe5ede],al        # 0x3e5cb8
2ffdda  74 09                          je     0x2ffde5
2ffddc  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffddf  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffde2  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffde5  ba 03 00 00 00                 mov    edx,0x3
2ffdea  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ffdef  e8 10 aa fe ff                 call   0x2ea804
2ffdf4  38 1d 9e 7e 0e 00              cmp    BYTE PTR [rip+0xe7e9e],bl        # 0x3e7c98 ; CONFIG Bools.EliteCrateESP value(+0x48)
2ffdfa  0f 84 c1 54 00 00              je     0x3052c1
2ffe00  ba d8 01 00 00                 mov    edx,0x1d8
2ffe05  49 8b cd                       mov    rcx,r13
2ffe08  e8 2f f0 fd ff                 call   0x2dee3c
2ffe0d  48 8d 95 3c 13 00 00           lea    rdx,[rbp+0x133c]
2ffe14  0f bf 08                       movsx  ecx,WORD PTR [rax]
2ffe17  c1 e9 03                       shr    ecx,0x3
2ffe1a  40 22 ce                       and    cl,sil
2ffe1d  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
2ffe23  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2ffe28  e8 8f 4a ff ff                 call   0x2f48bc
2ffe2d  e9 57 06 00 00                 jmp    0x300489
2ffe32  83 f9 3c                       cmp    ecx,0x3c
2ffe35  0f 85 06 01 00 00              jne    0x2fff41
2ffe3b  0f 10 05 56 bf 0e 00           movups xmm0,XMMWORD PTR [rip+0xebf56]        # 0x3ebd98 ; CONFIG C.ToolCrateColor value(+0x48)
2ffe42  8a 15 a0 7e 0e 00              mov    dl,BYTE PTR [rip+0xe7ea0]        # 0x3e7ce8 ; CONFIG Bools.ToolCrateESP value(+0x48)
2ffe48  33 c0                          xor    eax,eax
2ffe4a  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2ffe4e  84 d2                          test   dl,dl
2ffe50  74 0d                          je     0x2ffe5f
2ffe52  40 84 ff                       test   dil,dil
2ffe55  74 08                          je     0x2ffe5f
2ffe57  40 8a ce                       mov    cl,sil
2ffe5a  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2ffe5d  eb 05                          jmp    0x2ffe64
2ffe5f  8a c8                          mov    cl,al
2ffe61  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffe64  8b 05 ae e6 0e 00              mov    eax,DWORD PTR [rip+0xee6ae]        # 0x3ee518 ; CONFIG i.ToolCrateDistance value(+0x48)
2ffe6a  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2ffe6d  8b 05 85 f2 0e 00              mov    eax,DWORD PTR [rip+0xef285]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2ffe73  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2ffe76  33 c0                          xor    eax,eax
2ffe78  38 05 2a 8c 0e 00              cmp    BYTE PTR [rip+0xe8c2a],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2ffe7e  74 08                          je     0x2ffe88
2ffe80  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2ffe84  84 c9                          test   cl,cl
2ffe86  75 03                          jne    0x2ffe8b
2ffe88  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffe8b  38 05 37 85 0e 00              cmp    BYTE PTR [rip+0xe8537],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2ffe91  75 08                          jne    0x2ffe9b
2ffe93  38 05 1f a4 0e 00              cmp    BYTE PTR [rip+0xea41f],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2ffe99  74 08                          je     0x2ffea3
2ffe9b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2ffe9f  84 d2                          test   dl,dl
2ffea1  75 03                          jne    0x2ffea6
2ffea3  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffea6  8a 05 6c 6c 0e 00              mov    al,BYTE PTR [rip+0xe6c6c]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2ffeac  48 8d 95 88 17 00 00           lea    rdx,[rbp+0x1788]
2ffeb3  f3 0f 10 05 7d d5 0e 00        movss  xmm0,DWORD PTR [rip+0xed57d]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2ffebb  48 8d 0d 76 06 0f 00           lea    rcx,[rip+0xf0676]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2ffec2  41 b8 05 00 00 00              mov    r8d,0x5
2ffec8  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2ffecd  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2ffed0  e8 1b 9a fe ff                 call   0x2e98f0
2ffed5  48 8b c8                       mov    rcx,rax
2ffed8  e8 93 4e fd ff                 call   0x2d4d70
2ffedd  84 c0                          test   al,al
2ffedf  75 13                          jne    0x2ffef4
2ffee1  33 c0                          xor    eax,eax
2ffee3  38 05 cf 5d 0e 00              cmp    BYTE PTR [rip+0xe5dcf],al        # 0x3e5cb8
2ffee9  74 09                          je     0x2ffef4
2ffeeb  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffeee  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2ffef1  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2ffef4  ba 03 00 00 00                 mov    edx,0x3
2ffef9  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2ffefe  e8 01 a9 fe ff                 call   0x2ea804
2fff03  38 1d df 7d 0e 00              cmp    BYTE PTR [rip+0xe7ddf],bl        # 0x3e7ce8 ; CONFIG Bools.ToolCrateESP value(+0x48)
2fff09  0f 84 b2 53 00 00              je     0x3052c1
2fff0f  ba d8 01 00 00                 mov    edx,0x1d8
2fff14  49 8b cd                       mov    rcx,r13
2fff17  e8 20 ef fd ff                 call   0x2dee3c
2fff1c  48 8d 95 48 13 00 00           lea    rdx,[rbp+0x1348]
2fff23  0f bf 08                       movsx  ecx,WORD PTR [rax]
2fff26  c1 e9 03                       shr    ecx,0x3
2fff29  40 22 ce                       and    cl,sil
2fff2c  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
2fff32  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fff37  e8 d8 49 ff ff                 call   0x2f4914
2fff3c  e9 48 05 00 00                 jmp    0x300489
2fff41  83 f9 3d                       cmp    ecx,0x3d
2fff44  0f 85 06 01 00 00              jne    0x300050
2fff4a  0f 10 05 a7 be 0e 00           movups xmm0,XMMWORD PTR [rip+0xebea7]        # 0x3ebdf8 ; CONFIG C.FoodCrateColor value(+0x48)
2fff51  8a 15 e1 7d 0e 00              mov    dl,BYTE PTR [rip+0xe7de1]        # 0x3e7d38 ; CONFIG Bools.FoodCrateESP value(+0x48)
2fff57  33 c0                          xor    eax,eax
2fff59  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
2fff5d  84 d2                          test   dl,dl
2fff5f  74 0d                          je     0x2fff6e
2fff61  40 84 ff                       test   dil,dil
2fff64  74 08                          je     0x2fff6e
2fff66  40 8a ce                       mov    cl,sil
2fff69  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
2fff6c  eb 05                          jmp    0x2fff73
2fff6e  8a c8                          mov    cl,al
2fff70  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2fff73  8b 05 df e6 0e 00              mov    eax,DWORD PTR [rip+0xee6df]        # 0x3ee658 ; CONFIG i.FoodCrateDistance value(+0x48)
2fff79  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
2fff7c  8b 05 76 f1 0e 00              mov    eax,DWORD PTR [rip+0xef176]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
2fff82  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
2fff85  33 c0                          xor    eax,eax
2fff87  38 05 1b 8b 0e 00              cmp    BYTE PTR [rip+0xe8b1b],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
2fff8d  74 08                          je     0x2fff97
2fff8f  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
2fff93  84 c9                          test   cl,cl
2fff95  75 03                          jne    0x2fff9a
2fff97  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
2fff9a  38 05 28 84 0e 00              cmp    BYTE PTR [rip+0xe8428],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
2fffa0  75 08                          jne    0x2fffaa
2fffa2  38 05 10 a3 0e 00              cmp    BYTE PTR [rip+0xea310],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
2fffa8  74 08                          je     0x2fffb2
2fffaa  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
2fffae  84 d2                          test   dl,dl
2fffb0  75 03                          jne    0x2fffb5
2fffb2  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
2fffb5  8a 05 5d 6b 0e 00              mov    al,BYTE PTR [rip+0xe6b5d]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
2fffbb  48 8d 95 98 17 00 00           lea    rdx,[rbp+0x1798]
2fffc2  f3 0f 10 05 6e d4 0e 00        movss  xmm0,DWORD PTR [rip+0xed46e]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
2fffca  48 8d 0d 67 05 0f 00           lea    rcx,[rip+0xf0567]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
2fffd1  41 b8 05 00 00 00              mov    r8d,0x5
2fffd7  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
2fffdc  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
2fffdf  e8 0c 99 fe ff                 call   0x2e98f0
2fffe4  48 8b c8                       mov    rcx,rax
2fffe7  e8 84 4d fd ff                 call   0x2d4d70
2fffec  84 c0                          test   al,al
2fffee  75 13                          jne    0x300003
2ffff0  33 c0                          xor    eax,eax
2ffff2  38 05 c0 5c 0e 00              cmp    BYTE PTR [rip+0xe5cc0],al        # 0x3e5cb8
2ffff8  74 09                          je     0x300003
2ffffa  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
2ffffd  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300000  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300003  ba 03 00 00 00                 mov    edx,0x3
300008  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30000d  e8 f2 a7 fe ff                 call   0x2ea804
300012  38 1d 20 7d 0e 00              cmp    BYTE PTR [rip+0xe7d20],bl        # 0x3e7d38 ; CONFIG Bools.FoodCrateESP value(+0x48)
300018  0f 84 a3 52 00 00              je     0x3052c1
30001e  ba d8 01 00 00                 mov    edx,0x1d8
300023  49 8b cd                       mov    rcx,r13
300026  e8 11 ee fd ff                 call   0x2dee3c
30002b  48 8d 95 54 13 00 00           lea    rdx,[rbp+0x1354]
300032  0f bf 08                       movsx  ecx,WORD PTR [rax]
300035  c1 e9 03                       shr    ecx,0x3
300038  40 22 ce                       and    cl,sil
30003b  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
300041  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300046  e8 0d 4b ff ff                 call   0x2f4b58
30004b  e9 39 04 00 00                 jmp    0x300489
300050  83 f9 41                       cmp    ecx,0x41
300053  0f 85 06 01 00 00              jne    0x30015f
300059  0f 10 05 f8 bd 0e 00           movups xmm0,XMMWORD PTR [rip+0xebdf8]        # 0x3ebe58 ; CONFIG C.MedicalCrateColor value(+0x48)
300060  8a 15 22 7d 0e 00              mov    dl,BYTE PTR [rip+0xe7d22]        # 0x3e7d88 ; CONFIG Bools.MedicalCrateESP value(+0x48)
300066  33 c0                          xor    eax,eax
300068  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30006c  84 d2                          test   dl,dl
30006e  74 0d                          je     0x30007d
300070  40 84 ff                       test   dil,dil
300073  74 08                          je     0x30007d
300075  40 8a ce                       mov    cl,sil
300078  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30007b  eb 05                          jmp    0x300082
30007d  8a c8                          mov    cl,al
30007f  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300082  8b 05 80 e5 0e 00              mov    eax,DWORD PTR [rip+0xee580]        # 0x3ee608 ; CONFIG i.MedicalCrateDistance value(+0x48)
300088  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30008b  8b 05 67 f0 0e 00              mov    eax,DWORD PTR [rip+0xef067]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
300091  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300094  33 c0                          xor    eax,eax
300096  38 05 0c 8a 0e 00              cmp    BYTE PTR [rip+0xe8a0c],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
30009c  74 08                          je     0x3000a6
30009e  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3000a2  84 c9                          test   cl,cl
3000a4  75 03                          jne    0x3000a9
3000a6  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3000a9  38 05 19 83 0e 00              cmp    BYTE PTR [rip+0xe8319],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3000af  75 08                          jne    0x3000b9
3000b1  38 05 01 a2 0e 00              cmp    BYTE PTR [rip+0xea201],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3000b7  74 08                          je     0x3000c1
3000b9  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3000bd  84 d2                          test   dl,dl
3000bf  75 03                          jne    0x3000c4
3000c1  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3000c4  8a 05 4e 6a 0e 00              mov    al,BYTE PTR [rip+0xe6a4e]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
3000ca  48 8d 95 a8 17 00 00           lea    rdx,[rbp+0x17a8]
3000d1  f3 0f 10 05 5f d3 0e 00        movss  xmm0,DWORD PTR [rip+0xed35f]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
3000d9  48 8d 0d 58 04 0f 00           lea    rcx,[rip+0xf0458]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
3000e0  41 b8 05 00 00 00              mov    r8d,0x5
3000e6  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
3000eb  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
3000ee  e8 fd 97 fe ff                 call   0x2e98f0
3000f3  48 8b c8                       mov    rcx,rax
3000f6  e8 75 4c fd ff                 call   0x2d4d70
3000fb  84 c0                          test   al,al
3000fd  75 13                          jne    0x300112
3000ff  33 c0                          xor    eax,eax
300101  38 05 b1 5b 0e 00              cmp    BYTE PTR [rip+0xe5bb1],al        # 0x3e5cb8
300107  74 09                          je     0x300112
300109  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
30010c  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30010f  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300112  ba 03 00 00 00                 mov    edx,0x3
300117  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30011c  e8 e3 a6 fe ff                 call   0x2ea804
300121  38 1d 61 7c 0e 00              cmp    BYTE PTR [rip+0xe7c61],bl        # 0x3e7d88 ; CONFIG Bools.MedicalCrateESP value(+0x48)
300127  0f 84 94 51 00 00              je     0x3052c1
30012d  ba d8 01 00 00                 mov    edx,0x1d8
300132  49 8b cd                       mov    rcx,r13
300135  e8 02 ed fd ff                 call   0x2dee3c
30013a  48 8d 95 60 13 00 00           lea    rdx,[rbp+0x1360]
300141  0f bf 08                       movsx  ecx,WORD PTR [rax]
300144  c1 e9 03                       shr    ecx,0x3
300147  40 22 ce                       and    cl,sil
30014a  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
300150  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300155  e8 56 4a ff ff                 call   0x2f4bb0
30015a  e9 2a 03 00 00                 jmp    0x300489
30015f  83 f9 33                       cmp    ecx,0x33
300162  0f 85 07 01 00 00              jne    0x30026f
300168  ba d8 01 00 00                 mov    edx,0x1d8
30016d  49 8b cd                       mov    rcx,r13
300170  e8 c7 ec fd ff                 call   0x2dee3c
300175  0f 10 05 3c bd 0e 00           movups xmm0,XMMWORD PTR [rip+0xebd3c]        # 0x3ebeb8 ; CONFIG C.AWaterCrateColor value(+0x48)
30017c  8a 15 56 7c 0e 00              mov    dl,BYTE PTR [rip+0xe7c56]        # 0x3e7dd8 ; CONFIG Bools.AWaterCrateESP value(+0x48)
300182  0f b7 18                       movzx  ebx,WORD PTR [rax]
300185  33 c0                          xor    eax,eax
300187  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30018b  84 d2                          test   dl,dl
30018d  74 0d                          je     0x30019c
30018f  40 84 ff                       test   dil,dil
300192  74 08                          je     0x30019c
300194  40 8a ce                       mov    cl,sil
300197  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30019a  eb 05                          jmp    0x3001a1
30019c  8a c8                          mov    cl,al
30019e  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3001a1  8b 05 c1 e3 0e 00              mov    eax,DWORD PTR [rip+0xee3c1]        # 0x3ee568 ; CONFIG i.AdvancedWaterCrateDistance value(+0x48)
3001a7  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3001aa  8b 05 48 ef 0e 00              mov    eax,DWORD PTR [rip+0xeef48]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
3001b0  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3001b3  33 c0                          xor    eax,eax
3001b5  38 05 ed 88 0e 00              cmp    BYTE PTR [rip+0xe88ed],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
3001bb  74 08                          je     0x3001c5
3001bd  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3001c1  84 c9                          test   cl,cl
3001c3  75 03                          jne    0x3001c8
3001c5  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3001c8  38 05 fa 81 0e 00              cmp    BYTE PTR [rip+0xe81fa],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3001ce  75 08                          jne    0x3001d8
3001d0  38 05 e2 a0 0e 00              cmp    BYTE PTR [rip+0xea0e2],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3001d6  74 08                          je     0x3001e0
3001d8  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3001dc  84 d2                          test   dl,dl
3001de  75 03                          jne    0x3001e3
3001e0  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3001e3  8a 05 2f 69 0e 00              mov    al,BYTE PTR [rip+0xe692f]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
3001e9  48 8d 95 b8 17 00 00           lea    rdx,[rbp+0x17b8]
3001f0  f3 0f 10 05 40 d2 0e 00        movss  xmm0,DWORD PTR [rip+0xed240]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
3001f8  48 8d 0d 39 03 0f 00           lea    rcx,[rip+0xf0339]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
3001ff  41 b8 05 00 00 00              mov    r8d,0x5
300205  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
30020a  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
30020d  e8 de 96 fe ff                 call   0x2e98f0
300212  48 8b c8                       mov    rcx,rax
300215  e8 56 4b fd ff                 call   0x2d4d70
30021a  84 c0                          test   al,al
30021c  75 13                          jne    0x300231
30021e  33 c0                          xor    eax,eax
300220  38 05 92 5a 0e 00              cmp    BYTE PTR [rip+0xe5a92],al        # 0x3e5cb8
300226  74 09                          je     0x300231
300228  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
30022b  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30022e  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300231  ba 03 00 00 00                 mov    edx,0x3
300236  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30023b  e8 c4 a5 fe ff                 call   0x2ea804
300240  80 3d 91 7b 0e 00 00           cmp    BYTE PTR [rip+0xe7b91],0x0        # 0x3e7dd8 ; CONFIG Bools.AWaterCrateESP value(+0x48)
300247  0f 84 74 50 00 00              je     0x3052c1
30024d  c1 eb 03                       shr    ebx,0x3
300250  48 8d 95 6c 13 00 00           lea    rdx,[rbp+0x136c]
300257  40 22 de                       and    bl,sil
30025a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30025f  88 9d 10 01 00 00              mov    BYTE PTR [rbp+0x110],bl
300265  e8 e6 49 ff ff                 call   0x2f4c50
30026a  e9 1a 02 00 00                 jmp    0x300489
30026f  83 f9 34                       cmp    ecx,0x34
300272  0f 85 07 01 00 00              jne    0x30037f
300278  ba d8 01 00 00                 mov    edx,0x1d8
30027d  49 8b cd                       mov    rcx,r13
300280  e8 b7 eb fd ff                 call   0x2dee3c
300285  0f 10 05 8c bc 0e 00           movups xmm0,XMMWORD PTR [rip+0xebc8c]        # 0x3ebf18 ; CONFIG C.BasicWaterCrateColor value(+0x48)
30028c  8a 15 96 7b 0e 00              mov    dl,BYTE PTR [rip+0xe7b96]        # 0x3e7e28 ; CONFIG Bools.BWaterCrateESP value(+0x48)
300292  0f bf 18                       movsx  ebx,WORD PTR [rax]
300295  33 c0                          xor    eax,eax
300297  c1 eb 03                       shr    ebx,0x3
30029a  40 22 de                       and    bl,sil
30029d  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3002a1  84 d2                          test   dl,dl
3002a3  74 0d                          je     0x3002b2
3002a5  40 84 ff                       test   dil,dil
3002a8  74 08                          je     0x3002b2
3002aa  40 8a ce                       mov    cl,sil
3002ad  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3002b0  eb 05                          jmp    0x3002b7
3002b2  8a c8                          mov    cl,al
3002b4  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3002b7  8b 05 fb e2 0e 00              mov    eax,DWORD PTR [rip+0xee2fb]        # 0x3ee5b8 ; CONFIG i.BasicWaterCrateDistance value(+0x48)
3002bd  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3002c0  8b 05 32 ee 0e 00              mov    eax,DWORD PTR [rip+0xeee32]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
3002c6  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3002c9  33 c0                          xor    eax,eax
3002cb  38 05 d7 87 0e 00              cmp    BYTE PTR [rip+0xe87d7],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
3002d1  74 08                          je     0x3002db
3002d3  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3002d7  84 c9                          test   cl,cl
3002d9  75 03                          jne    0x3002de
3002db  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3002de  38 05 e4 80 0e 00              cmp    BYTE PTR [rip+0xe80e4],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3002e4  75 08                          jne    0x3002ee
3002e6  38 05 cc 9f 0e 00              cmp    BYTE PTR [rip+0xe9fcc],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3002ec  74 08                          je     0x3002f6
3002ee  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3002f2  84 d2                          test   dl,dl
3002f4  75 03                          jne    0x3002f9
3002f6  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3002f9  8a 05 19 68 0e 00              mov    al,BYTE PTR [rip+0xe6819]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
3002ff  48 8d 95 c8 17 00 00           lea    rdx,[rbp+0x17c8]
300306  f3 0f 10 05 2a d1 0e 00        movss  xmm0,DWORD PTR [rip+0xed12a]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
30030e  48 8d 0d 23 02 0f 00           lea    rcx,[rip+0xf0223]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
300315  41 b8 05 00 00 00              mov    r8d,0x5
30031b  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
300320  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
300323  e8 c8 95 fe ff                 call   0x2e98f0
300328  48 8b c8                       mov    rcx,rax
30032b  e8 40 4a fd ff                 call   0x2d4d70
300330  84 c0                          test   al,al
300332  75 13                          jne    0x300347
300334  33 c0                          xor    eax,eax
300336  38 05 7c 59 0e 00              cmp    BYTE PTR [rip+0xe597c],al        # 0x3e5cb8
30033c  74 09                          je     0x300347
30033e  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300341  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300344  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300347  ba 03 00 00 00                 mov    edx,0x3
30034c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300351  e8 ae a4 fe ff                 call   0x2ea804
300356  80 3d cb 7a 0e 00 00           cmp    BYTE PTR [rip+0xe7acb],0x0        # 0x3e7e28 ; CONFIG Bools.BWaterCrateESP value(+0x48)
30035d  0f 84 5e 4f 00 00              je     0x3052c1
300363  48 8d 95 78 13 00 00           lea    rdx,[rbp+0x1378]
30036a  88 9d 10 01 00 00              mov    BYTE PTR [rbp+0x110],bl
300370  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300375  e8 3a 49 ff ff                 call   0x2f4cb4
30037a  e9 0a 01 00 00                 jmp    0x300489
30037f  83 f9 42                       cmp    ecx,0x42
300382  0f 85 1a 01 00 00              jne    0x3004a2
300388  0f 10 05 e9 bb 0e 00           movups xmm0,XMMWORD PTR [rip+0xebbe9]        # 0x3ebf78 ; CONFIG C.BasicCrateColor value(+0x48)
30038f  8a 15 e3 7a 0e 00              mov    dl,BYTE PTR [rip+0xe7ae3]        # 0x3e7e78 ; CONFIG Bools.BasicCrateESP value(+0x48)
300395  33 c0                          xor    eax,eax
300397  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30039b  84 d2                          test   dl,dl
30039d  74 0d                          je     0x3003ac
30039f  40 84 ff                       test   dil,dil
3003a2  74 08                          je     0x3003ac
3003a4  40 8a ce                       mov    cl,sil
3003a7  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3003aa  eb 05                          jmp    0x3003b1
3003ac  8a c8                          mov    cl,al
3003ae  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3003b1  8b 05 f1 e2 0e 00              mov    eax,DWORD PTR [rip+0xee2f1]        # 0x3ee6a8 ; CONFIG i.BasicCrateDistance value(+0x48)
3003b7  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3003ba  8b 05 38 ed 0e 00              mov    eax,DWORD PTR [rip+0xeed38]        # 0x3ef0f8 ; CONFIG i.ContainerChamsIndex value(+0x48)
3003c0  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3003c3  33 c0                          xor    eax,eax
3003c5  38 05 dd 86 0e 00              cmp    BYTE PTR [rip+0xe86dd],al        # 0x3e8aa8 ; CONFIG Bools.ContainerChams value(+0x48)
3003cb  74 08                          je     0x3003d5
3003cd  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3003d1  84 c9                          test   cl,cl
3003d3  75 03                          jne    0x3003d8
3003d5  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3003d8  38 05 ea 7f 0e 00              cmp    BYTE PTR [rip+0xe7fea],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3003de  75 08                          jne    0x3003e8
3003e0  38 05 d2 9e 0e 00              cmp    BYTE PTR [rip+0xe9ed2],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3003e6  74 08                          je     0x3003f0
3003e8  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3003ec  84 d2                          test   dl,dl
3003ee  75 03                          jne    0x3003f3
3003f0  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3003f3  8a 05 1f 67 0e 00              mov    al,BYTE PTR [rip+0xe671f]        # 0x3e6b18 ; CONFIG Bools.ContainerIcons value(+0x48)
3003f9  48 8d 95 d8 17 00 00           lea    rdx,[rbp+0x17d8]
300400  f3 0f 10 05 30 d0 0e 00        movss  xmm0,DWORD PTR [rip+0xed030]        # 0x3ed438 ; CONFIG F.ContainerIconsMult value(+0x48)
300408  48 8d 0d 29 01 0f 00           lea    rcx,[rip+0xf0129]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
30040f  41 b8 05 00 00 00              mov    r8d,0x5
300415  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
30041a  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
30041d  e8 ce 94 fe ff                 call   0x2e98f0
300422  48 8b c8                       mov    rcx,rax
300425  e8 46 49 fd ff                 call   0x2d4d70
30042a  84 c0                          test   al,al
30042c  75 13                          jne    0x300441
30042e  33 c0                          xor    eax,eax
300430  38 05 82 58 0e 00              cmp    BYTE PTR [rip+0xe5882],al        # 0x3e5cb8
300436  74 09                          je     0x300441
300438  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
30043b  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30043e  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300441  ba 03 00 00 00                 mov    edx,0x3
300446  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30044b  e8 b4 a3 fe ff                 call   0x2ea804
300450  38 1d 22 7a 0e 00              cmp    BYTE PTR [rip+0xe7a22],bl        # 0x3e7e78 ; CONFIG Bools.BasicCrateESP value(+0x48)
300456  0f 84 65 4e 00 00              je     0x3052c1
30045c  ba d8 01 00 00                 mov    edx,0x1d8
300461  49 8b cd                       mov    rcx,r13
300464  e8 d3 e9 fd ff                 call   0x2dee3c
300469  48 8d 95 84 13 00 00           lea    rdx,[rbp+0x1384]
300470  0f bf 08                       movsx  ecx,WORD PTR [rax]
300473  c1 e9 03                       shr    ecx,0x3
300476  40 22 ce                       and    cl,sil
300479  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
30047f  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300484  e8 3f 49 ff ff                 call   0x2f4dc8
300489  48 8b c8                       mov    rcx,rax
30048c  e8 db ff 01 00                 call   0x32046c
300491  48 8b d0                       mov    rdx,rax
300494  48 8d 4d 80                    lea    rcx,[rbp-0x80]
300498  e8 4b f1 fe ff                 call   0x2ef5e8
30049d  e9 1f 4e 00 00                 jmp    0x3052c1
3004a2  83 f9 0c                       cmp    ecx,0xc
3004a5  0f 85 e7 00 00 00              jne    0x300592
3004ab  ba d8 01 00 00                 mov    edx,0x1d8
3004b0  49 8b cd                       mov    rcx,r13
3004b3  e8 84 e9 fd ff                 call   0x2dee3c
3004b8  0f bf 18                       movsx  ebx,WORD PTR [rax]
3004bb  0f ba e3 09                    bt     ebx,0x9
3004bf  73 25                          jae    0x3004e6
3004c1  48 8d 95 16 0a 00 00           lea    rdx,[rbp+0xa16]
3004c8  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3004cd  e8 96 49 ff ff                 call   0x2f4e68 ; STRING getter=0x2f4e68 ALERT
3004d2  48 8b c8                       mov    rcx,rax
3004d5  e8 02 80 fd ff                 call   0x2d84dc
3004da  48 8b d0                       mov    rdx,rax
3004dd  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3004e1  e8 82 47 fd ff                 call   0x2d4c68
3004e6  48 8d 95 1c 0a 00 00           lea    rdx,[rbp+0xa1c]
3004ed  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3004f2  e8 49 4a ff ff                 call   0x2f4f40 ; STRING getter=0x2f4f40 Drone
3004f7  48 8b c8                       mov    rcx,rax
3004fa  e8 dd 7f fd ff                 call   0x2d84dc
3004ff  48 8b d0                       mov    rdx,rax
300502  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300507  e8 5c 47 fd ff                 call   0x2d4c68
30050c  0f 10 05 c5 ae 0e 00           movups xmm0,XMMWORD PTR [rip+0xeaec5]        # 0x3eb3d8 ; CONFIG C.DroneColor value(+0x48)
300513  8a 15 df 94 0e 00              mov    dl,BYTE PTR [rip+0xe94df]        # 0x3e99f8 ; CONFIG Bools.DrawDrone value(+0x48)
300519  33 c0                          xor    eax,eax
30051b  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30051f  84 d2                          test   dl,dl
300521  74 15                          je     0x300538
300523  40 84 ff                       test   dil,dil
300526  74 10                          je     0x300538
300528  f7 c3 80 01 00 00              test   ebx,0x180
30052e  74 08                          je     0x300538
300530  40 8a ce                       mov    cl,sil
300533  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300536  eb 05                          jmp    0x30053d
300538  8a c8                          mov    cl,al
30053a  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
30053d  8b 05 95 e8 0e 00              mov    eax,DWORD PTR [rip+0xee895]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300543  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300546  8b 05 5c eb 0e 00              mov    eax,DWORD PTR [rip+0xeeb5c]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
30054c  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
30054f  33 c0                          xor    eax,eax
300551  38 05 31 87 0e 00              cmp    BYTE PTR [rip+0xe8731],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300557  c6 85 d8 00 00 00 00           mov    BYTE PTR [rbp+0xd8],0x0
30055e  74 08                          je     0x300568
300560  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300564  84 c9                          test   cl,cl
300566  75 03                          jne    0x30056b
300568  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
30056b  38 05 57 7e 0e 00              cmp    BYTE PTR [rip+0xe7e57],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300571  75 08                          jne    0x30057b
300573  38 05 3f 9d 0e 00              cmp    BYTE PTR [rip+0xe9d3f],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300579  74 08                          je     0x300583
30057b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30057f  84 d2                          test   dl,dl
300581  75 03                          jne    0x300586
300583  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300586  48 8d 95 e8 17 00 00           lea    rdx,[rbp+0x17e8]
30058d  e9 16 0d 00 00                 jmp    0x3012a8
300592  83 f9 0d                       cmp    ecx,0xd
300595  75 7f                          jne    0x300616
300597  0f 10 05 ba c4 0e 00           movups xmm0,XMMWORD PTR [rip+0xec4ba]        # 0x3eca58 ; CONFIG C.BikeColor value(+0x48)
30059e  8a 1d 24 6a 0e 00              mov    bl,BYTE PTR [rip+0xe6a24]        # 0x3e6fc8 ; CONFIG Bools.DrawBikes value(+0x48)
3005a4  33 c0                          xor    eax,eax
3005a6  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3005aa  84 db                          test   bl,bl
3005ac  74 0d                          je     0x3005bb
3005ae  40 84 ff                       test   dil,dil
3005b1  74 08                          je     0x3005bb
3005b3  40 8a ce                       mov    cl,sil
3005b6  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3005b9  eb 05                          jmp    0x3005c0
3005bb  8a c8                          mov    cl,al
3005bd  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3005c0  8b 05 12 e8 0e 00              mov    eax,DWORD PTR [rip+0xee812]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
3005c6  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3005c9  8b 05 d9 ea 0e 00              mov    eax,DWORD PTR [rip+0xeead9]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
3005cf  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3005d2  33 c0                          xor    eax,eax
3005d4  38 05 ae 86 0e 00              cmp    BYTE PTR [rip+0xe86ae],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
3005da  c6 85 d8 00 00 00 00           mov    BYTE PTR [rbp+0xd8],0x0
3005e1  74 08                          je     0x3005eb
3005e3  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3005e7  84 c9                          test   cl,cl
3005e9  75 03                          jne    0x3005ee
3005eb  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3005ee  48 8d 0d 8b 7d 0e 00           lea    rcx,[rip+0xe7d8b]        # 0x3e8380
3005f5  e8 02 f2 fe ff                 call   0x2ef7fc
3005fa  84 c0                          test   al,al
3005fc  74 08                          je     0x300606
3005fe  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300602  84 db                          test   bl,bl
300604  75 04                          jne    0x30060a
300606  c6 45 c7 00                    mov    BYTE PTR [rbp-0x39],0x0
30060a  48 8d 95 f8 17 00 00           lea    rdx,[rbp+0x17f8]
300611  e9 ba 08 00 00                 jmp    0x300ed0
300616  83 f9 0e                       cmp    ecx,0xe
300619  0f 85 80 00 00 00              jne    0x30069f
30061f  0f 10 05 32 a3 0e 00           movups xmm0,XMMWORD PTR [rip+0xea332]        # 0x3ea958 ; CONFIG C.MetalBikeColor value(+0x48)
300626  8a 15 4c 69 0e 00              mov    dl,BYTE PTR [rip+0xe694c]        # 0x3e6f78 ; CONFIG Bools.MetalBike value(+0x48)
30062c  33 c0                          xor    eax,eax
30062e  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300632  84 d2                          test   dl,dl
300634  74 0d                          je     0x300643
300636  40 84 ff                       test   dil,dil
300639  74 08                          je     0x300643
30063b  40 8a ce                       mov    cl,sil
30063e  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300641  eb 05                          jmp    0x300648
300643  8a c8                          mov    cl,al
300645  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300648  8b 05 8a e7 0e 00              mov    eax,DWORD PTR [rip+0xee78a]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
30064e  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300651  8b 05 51 ea 0e 00              mov    eax,DWORD PTR [rip+0xeea51]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300657  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
30065a  33 c0                          xor    eax,eax
30065c  38 05 26 86 0e 00              cmp    BYTE PTR [rip+0xe8626],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300662  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300668  74 08                          je     0x300672
30066a  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30066e  84 c9                          test   cl,cl
300670  75 03                          jne    0x300675
300672  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300675  38 05 4d 7d 0e 00              cmp    BYTE PTR [rip+0xe7d4d],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30067b  75 08                          jne    0x300685
30067d  38 05 35 9c 0e 00              cmp    BYTE PTR [rip+0xe9c35],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300683  74 08                          je     0x30068d
300685  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300689  84 d2                          test   dl,dl
30068b  75 03                          jne    0x300690
30068d  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300690  4d 8b c2                       mov    r8,r10
300693  48 8d 95 08 18 00 00           lea    rdx,[rbp+0x1808]
30069a  e9 d8 0a 00 00                 jmp    0x301177
30069f  83 f9 0f                       cmp    ecx,0xf
3006a2  0f 85 ed 01 00 00              jne    0x300895
3006a8  48 8d 95 60 11 00 00           lea    rdx,[rbp+0x1160]
3006af  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3006b4  e8 df 48 ff ff                 call   0x2f4f98 ; STRING getter=0x2f4f98 Helicopter
3006b9  48 8b c8                       mov    rcx,rax
3006bc  e8 93 95 fe ff                 call   0x2e9c54
3006c1  48 8b d0                       mov    rdx,rax
3006c4  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3006c9  e8 9a 45 fd ff                 call   0x2d4c68
3006ce  0f 10 05 23 c3 0e 00           movups xmm0,XMMWORD PTR [rip+0xec323]        # 0x3ec9f8 ; CONFIG C.HelicopterColor value(+0x48)
3006d5  8a 15 fd 8a 0e 00              mov    dl,BYTE PTR [rip+0xe8afd]        # 0x3e91d8 ; CONFIG Bools.PatrolHeli value(+0x48)
3006db  33 c0                          xor    eax,eax
3006dd  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3006e1  84 d2                          test   dl,dl
3006e3  74 0d                          je     0x3006f2
3006e5  40 84 ff                       test   dil,dil
3006e8  74 08                          je     0x3006f2
3006ea  40 8a ce                       mov    cl,sil
3006ed  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3006f0  eb 05                          jmp    0x3006f7
3006f2  8a c8                          mov    cl,al
3006f4  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3006f7  8b 05 db e6 0e 00              mov    eax,DWORD PTR [rip+0xee6db]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
3006fd  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300700  8b 05 a2 e9 0e 00              mov    eax,DWORD PTR [rip+0xee9a2]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300706  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300709  33 c0                          xor    eax,eax
30070b  38 05 77 85 0e 00              cmp    BYTE PTR [rip+0xe8577],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300711  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300717  74 08                          je     0x300721
300719  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30071d  84 c9                          test   cl,cl
30071f  75 03                          jne    0x300724
300721  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300724  38 05 9e 7c 0e 00              cmp    BYTE PTR [rip+0xe7c9e],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30072a  75 08                          jne    0x300734
30072c  38 05 86 9b 0e 00              cmp    BYTE PTR [rip+0xe9b86],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300732  74 08                          je     0x30073c
300734  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300738  84 d2                          test   dl,dl
30073a  75 03                          jne    0x30073f
30073c  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30073f  8a 05 73 64 0e 00              mov    al,BYTE PTR [rip+0xe6473]        # 0x3e6bb8 ; CONFIG Bools.VehicleIcons value(+0x48)
300745  48 8d 95 18 18 00 00           lea    rdx,[rbp+0x1818]
30074c  f3 0f 10 05 84 cd 0e 00        movss  xmm0,DWORD PTR [rip+0xecd84]        # 0x3ed4d8 ; CONFIG F.VehicleIconsMult value(+0x48)
300754  48 8d 0d dd fd 0e 00           lea    rcx,[rip+0xefddd]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
30075b  41 b8 07 00 00 00              mov    r8d,0x7
300761  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
300766  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
300769  e8 82 91 fe ff                 call   0x2e98f0
30076e  48 8b c8                       mov    rcx,rax
300771  e8 fa 45 fd ff                 call   0x2d4d70
300776  84 c0                          test   al,al
300778  75 13                          jne    0x30078d
30077a  33 c0                          xor    eax,eax
30077c  38 05 36 55 0e 00              cmp    BYTE PTR [rip+0xe5536],al        # 0x3e5cb8
300782  74 09                          je     0x30078d
300784  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300787  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30078a  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
30078d  ba 05 00 00 00                 mov    edx,0x5
300792  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300797  e8 68 a0 fe ff                 call   0x2ea804
30079c  33 c0                          xor    eax,eax
30079e  38 05 34 8a 0e 00              cmp    BYTE PTR [rip+0xe8a34],al        # 0x3e91d8 ; CONFIG Bools.PatrolHeli value(+0x48)
3007a4  0f 84 df 00 00 00              je     0x300889
3007aa  49 8b 95 e8 02 00 00           mov    rdx,QWORD PTR [r13+0x2e8]
3007b1  48 8b ca                       mov    rcx,rdx
3007b4  e8 4f a7 fc ff                 call   0x2caf08
3007b9  84 c0                          test   al,al
3007bb  0f 84 00 4b 00 00              je     0x3052c1
3007c1  4c 8b 4a 28                    mov    r9,QWORD PTR [rdx+0x28]
3007c5  49 8b c9                       mov    rcx,r9
3007c8  e8 3b a7 fc ff                 call   0x2caf08
3007cd  84 c0                          test   al,al
3007cf  0f 84 ec 4a 00 00              je     0x3052c1
3007d5  4c 8b 42 20                    mov    r8,QWORD PTR [rdx+0x20]
3007d9  49 8b c8                       mov    rcx,r8
3007dc  e8 27 a7 fc ff                 call   0x2caf08
3007e1  84 c0                          test   al,al
3007e3  0f 84 d8 4a 00 00              je     0x3052c1
3007e9  f3 41 0f 10 78 24              movss  xmm7,DWORD PTR [r8+0x24]
3007ef  f3 41 0f 10 71 24              movss  xmm6,DWORD PTR [r9+0x24]
3007f5  40 84 ff                       test   dil,dil
3007f8  74 34                          je     0x30082e
3007fa  f3 41 0f 10 40 20              movss  xmm0,DWORD PTR [r8+0x20]
300800  f3 41 0f 10 49 20              movss  xmm1,DWORD PTR [r9+0x20]
300806  f3 0f 2c c7                    cvttss2si eax,xmm7
30080a  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
300810  f3 0f 2c c0                    cvttss2si eax,xmm0
300814  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
30081a  f3 0f 2c c6                    cvttss2si eax,xmm6
30081e  89 85 a0 00 00 00              mov    DWORD PTR [rbp+0xa0],eax
300824  f3 0f 2c c1                    cvttss2si eax,xmm1
300828  89 85 a4 00 00 00              mov    DWORD PTR [rbp+0xa4],eax
30082e  48 8d 95 7b 27 00 00           lea    rdx,[rbp+0x277b]
300835  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30083a  e8 fd 47 ff ff                 call   0x2f503c ; STRING getter=0x2f503c HELICOPTER ALERT
30083f  48 8b c8                       mov    rcx,rax
300842  e8 6d 93 fe ff                 call   0x2e9bb4
300847  48 8b d0                       mov    rdx,rax
30084a  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
300851  e8 12 44 fd ff                 call   0x2d4c68
300856  41 0f 2f f3                    comiss xmm6,xmm11
30085a  77 26                          ja     0x300882
30085c  41 0f 2f fb                    comiss xmm7,xmm11
300860  77 20                          ja     0x300882
300862  44 0f 2f de                    comiss xmm11,xmm6
300866  0f 82 55 4a 00 00              jb     0x3052c1
30086c  44 0f 2f df                    comiss xmm11,xmm7
300870  0f 82 4b 4a 00 00              jb     0x3052c1
300876  48 89 1d 3b 6a 0d 00           mov    QWORD PTR [rip+0xd6a3b],rbx        # 0x3d72b8
30087d  e9 3f 4a 00 00                 jmp    0x3052c1
300882  48 8b 85 78 02 00 00           mov    rax,QWORD PTR [rbp+0x278]
300889  48 89 05 28 6a 0d 00           mov    QWORD PTR [rip+0xd6a28],rax        # 0x3d72b8
300890  e9 2c 4a 00 00                 jmp    0x3052c1
300895  83 f9 10                       cmp    ecx,0x10
300898  0f 85 59 01 00 00              jne    0x3009f7
30089e  48 8d 95 2c 0f 00 00           lea    rdx,[rbp+0xf2c]
3008a5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3008aa  e8 fd 48 ff ff                 call   0x2f51ac ; STRING getter=0x2f51ac HeliCrate
3008af  48 8b c8                       mov    rcx,rax
3008b2  e8 8d d4 fc ff                 call   0x2cdd44
3008b7  48 8b d0                       mov    rdx,rax
3008ba  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3008bf  e8 a4 43 fd ff                 call   0x2d4c68
3008c4  0f 10 05 2d c1 0e 00           movups xmm0,XMMWORD PTR [rip+0xec12d]        # 0x3ec9f8 ; CONFIG C.HelicopterColor value(+0x48)
3008cb  8a 0d 07 89 0e 00              mov    cl,BYTE PTR [rip+0xe8907]        # 0x3e91d8 ; CONFIG Bools.PatrolHeli value(+0x48)
3008d1  33 c0                          xor    eax,eax
3008d3  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3008d7  84 c9                          test   cl,cl
3008d9  74 09                          je     0x3008e4
3008db  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
3008df  40 84 ff                       test   dil,dil
3008e2  75 03                          jne    0x3008e7
3008e4  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3008e7  8b 05 eb e4 0e 00              mov    eax,DWORD PTR [rip+0xee4eb]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
3008ed  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3008f0  33 c0                          xor    eax,eax
3008f2  38 05 d0 7a 0e 00              cmp    BYTE PTR [rip+0xe7ad0],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3008f8  75 08                          jne    0x300902
3008fa  38 05 b8 99 0e 00              cmp    BYTE PTR [rip+0xe99b8],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300900  74 08                          je     0x30090a
300902  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300906  84 c9                          test   cl,cl
300908  75 03                          jne    0x30090d
30090a  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30090d  8a 05 a5 62 0e 00              mov    al,BYTE PTR [rip+0xe62a5]        # 0x3e6bb8 ; CONFIG Bools.VehicleIcons value(+0x48)
300913  48 8d 95 28 18 00 00           lea    rdx,[rbp+0x1828]
30091a  f3 0f 10 05 b6 cb 0e 00        movss  xmm0,DWORD PTR [rip+0xecbb6]        # 0x3ed4d8 ; CONFIG F.VehicleIconsMult value(+0x48)
300922  48 8d 0d 0f fc 0e 00           lea    rcx,[rip+0xefc0f]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
300929  41 b8 07 00 00 00              mov    r8d,0x7
30092f  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
300934  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
300937  e8 b4 8f fe ff                 call   0x2e98f0
30093c  48 8b c8                       mov    rcx,rax
30093f  e8 2c 44 fd ff                 call   0x2d4d70
300944  84 c0                          test   al,al
300946  75 15                          jne    0x30095d
300948  33 c0                          xor    eax,eax
30094a  38 05 68 53 0e 00              cmp    BYTE PTR [rip+0xe5368],al        # 0x3e5cb8
300950  74 0d                          je     0x30095f
300952  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300955  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300958  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
30095b  eb 02                          jmp    0x30095f
30095d  33 c0                          xor    eax,eax
30095f  38 05 73 88 0e 00              cmp    BYTE PTR [rip+0xe8873],al        # 0x3e91d8 ; CONFIG Bools.PatrolHeli value(+0x48)
300965  0f 84 56 49 00 00              je     0x3052c1
30096b  ba d8 01 00 00                 mov    edx,0x1d8
300970  49 8b cd                       mov    rcx,r13
300973  e8 c4 e4 fd ff                 call   0x2dee3c
300978  48 8d 95 90 13 00 00           lea    rdx,[rbp+0x1390]
30097f  0f bf 08                       movsx  ecx,WORD PTR [rax]
300982  0f ba e1 02                    bt     ecx,0x2
300986  8b d9                          mov    ebx,ecx
300988  0f 92 85 11 01 00 00           setb   BYTE PTR [rbp+0x111]
30098f  c1 e9 03                       shr    ecx,0x3
300992  40 22 ce                       and    cl,sil
300995  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
30099b  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3009a0  e8 b3 49 ff ff                 call   0x2f5358
3009a5  48 8b c8                       mov    rcx,rax
3009a8  e8 bf fa 01 00                 call   0x32046c
3009ad  48 8b d0                       mov    rdx,rax
3009b0  48 8d 4d 80                    lea    rcx,[rbp-0x80]
3009b4  e8 2f ec fe ff                 call   0x2ef5e8
3009b9  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3009be  0f ba e3 02                    bt     ebx,0x2
3009c2  73 16                          jae    0x3009da
3009c4  48 8d 95 59 0e 00 00           lea    rdx,[rbp+0xe59]
3009cb  e8 a0 4a ff ff                 call   0x2f5470 ; STRING getter=0x2f5470 [OnFire]
3009d0  48 8b c8                       mov    rcx,rax
3009d3  e8 b4 91 fe ff                 call   0x2e9b8c
3009d8  eb 14                          jmp    0x3009ee
3009da  48 8d 95 1d 03 00 00           lea    rdx,[rbp+0x31d]
3009e1  e8 4a bd fc ff                 call   0x2cc730
3009e6  48 8b c8                       mov    rcx,rax
3009e9  e8 b6 d2 fc ff                 call   0x2cdca4
3009ee  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3009f2  e9 5f 19 00 00                 jmp    0x302356
3009f7  83 f9 15                       cmp    ecx,0x15
3009fa  0f 85 a3 00 00 00              jne    0x300aa3
300a00  48 8d 95 c8 0b 00 00           lea    rdx,[rbp+0xbc8]
300a07  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300a0c  e8 47 4d ff ff                 call   0x2f5758
300a11  48 8b c8                       mov    rcx,rax
300a14  e8 fb 2b fe ff                 call   0x2e3614
300a19  48 8b d0                       mov    rdx,rax
300a1c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300a21  e8 42 42 fd ff                 call   0x2d4c68
300a26  0f 10 05 2b a8 0e 00           movups xmm0,XMMWORD PTR [rip+0xea82b]        # 0x3eb258 ; CONFIG C.BradleyColor value(+0x48)
300a2d  8a 15 f5 87 0e 00              mov    dl,BYTE PTR [rip+0xe87f5]        # 0x3e9228 ; CONFIG Bools.Bradley value(+0x48)
300a33  33 c0                          xor    eax,eax
300a35  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300a39  84 d2                          test   dl,dl
300a3b  74 0d                          je     0x300a4a
300a3d  40 84 ff                       test   dil,dil
300a40  74 08                          je     0x300a4a
300a42  40 8a ce                       mov    cl,sil
300a45  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300a48  eb 05                          jmp    0x300a4f
300a4a  8a c8                          mov    cl,al
300a4c  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300a4f  8b 05 83 e3 0e 00              mov    eax,DWORD PTR [rip+0xee383]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300a55  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300a58  8b 05 4a e6 0e 00              mov    eax,DWORD PTR [rip+0xee64a]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300a5e  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300a61  33 c0                          xor    eax,eax
300a63  38 05 1f 82 0e 00              cmp    BYTE PTR [rip+0xe821f],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300a69  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300a6f  74 08                          je     0x300a79
300a71  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300a75  84 c9                          test   cl,cl
300a77  75 03                          jne    0x300a7c
300a79  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300a7c  38 05 46 79 0e 00              cmp    BYTE PTR [rip+0xe7946],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300a82  75 08                          jne    0x300a8c
300a84  38 05 2e 98 0e 00              cmp    BYTE PTR [rip+0xe982e],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300a8a  74 08                          je     0x300a94
300a8c  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300a90  84 d2                          test   dl,dl
300a92  75 03                          jne    0x300a97
300a94  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300a97  48 8d 95 38 18 00 00           lea    rdx,[rbp+0x1838]
300a9e  e9 ce 06 00 00                 jmp    0x301171
300aa3  83 f9 16                       cmp    ecx,0x16
300aa6  0f 85 7d 01 00 00              jne    0x300c29
300aac  48 8d 95 9a 14 00 00           lea    rdx,[rbp+0x149a]
300ab3  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300ab8  e8 23 4e ff ff                 call   0x2f58e0 ; STRING getter=0x2f58e0 BradleyCrate
300abd  48 8b c8                       mov    rcx,rax
300ac0  e8 2f 7b fd ff                 call   0x2d85f4
300ac5  48 8b d0                       mov    rdx,rax
300ac8  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300acd  e8 96 41 fd ff                 call   0x2d4c68
300ad2  0f 10 05 7f a7 0e 00           movups xmm0,XMMWORD PTR [rip+0xea77f]        # 0x3eb258 ; CONFIG C.BradleyColor value(+0x48)
300ad9  8a 15 49 87 0e 00              mov    dl,BYTE PTR [rip+0xe8749]        # 0x3e9228 ; CONFIG Bools.Bradley value(+0x48)
300adf  33 c0                          xor    eax,eax
300ae1  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300ae5  84 d2                          test   dl,dl
300ae7  74 0d                          je     0x300af6
300ae9  40 84 ff                       test   dil,dil
300aec  74 08                          je     0x300af6
300aee  40 8a ce                       mov    cl,sil
300af1  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300af4  eb 05                          jmp    0x300afb
300af6  8a c8                          mov    cl,al
300af8  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300afb  8b 05 d7 e2 0e 00              mov    eax,DWORD PTR [rip+0xee2d7]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300b01  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300b04  8b 05 9e e5 0e 00              mov    eax,DWORD PTR [rip+0xee59e]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300b0a  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300b0d  33 c0                          xor    eax,eax
300b0f  38 05 73 81 0e 00              cmp    BYTE PTR [rip+0xe8173],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300b15  74 08                          je     0x300b1f
300b17  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300b1b  84 c9                          test   cl,cl
300b1d  75 03                          jne    0x300b22
300b1f  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300b22  38 05 a0 78 0e 00              cmp    BYTE PTR [rip+0xe78a0],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300b28  75 08                          jne    0x300b32
300b2a  38 05 88 97 0e 00              cmp    BYTE PTR [rip+0xe9788],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300b30  74 08                          je     0x300b3a
300b32  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300b36  84 d2                          test   dl,dl
300b38  75 03                          jne    0x300b3d
300b3a  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300b3d  8a 05 75 60 0e 00              mov    al,BYTE PTR [rip+0xe6075]        # 0x3e6bb8 ; CONFIG Bools.VehicleIcons value(+0x48)
300b43  48 8d 95 48 18 00 00           lea    rdx,[rbp+0x1848]
300b4a  f3 0f 10 05 86 c9 0e 00        movss  xmm0,DWORD PTR [rip+0xec986]        # 0x3ed4d8 ; CONFIG F.VehicleIconsMult value(+0x48)
300b52  48 8d 0d df f9 0e 00           lea    rcx,[rip+0xef9df]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
300b59  41 b8 07 00 00 00              mov    r8d,0x7
300b5f  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
300b64  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
300b67  e8 84 8d fe ff                 call   0x2e98f0
300b6c  48 8b c8                       mov    rcx,rax
300b6f  e8 fc 41 fd ff                 call   0x2d4d70
300b74  84 c0                          test   al,al
300b76  75 13                          jne    0x300b8b
300b78  33 c0                          xor    eax,eax
300b7a  38 05 38 51 0e 00              cmp    BYTE PTR [rip+0xe5138],al        # 0x3e5cb8
300b80  74 09                          je     0x300b8b
300b82  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300b85  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300b88  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300b8b  ba 05 00 00 00                 mov    edx,0x5
300b90  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300b95  e8 6a 9c fe ff                 call   0x2ea804
300b9a  38 1d 88 86 0e 00              cmp    BYTE PTR [rip+0xe8688],bl        # 0x3e9228 ; CONFIG Bools.Bradley value(+0x48)
300ba0  0f 84 1b 47 00 00              je     0x3052c1
300ba6  ba d8 01 00 00                 mov    edx,0x1d8
300bab  49 8b cd                       mov    rcx,r13
300bae  e8 89 e2 fd ff                 call   0x2dee3c
300bb3  48 8d 95 9c 13 00 00           lea    rdx,[rbp+0x139c]
300bba  0f bf 08                       movsx  ecx,WORD PTR [rax]
300bbd  0f ba e1 02                    bt     ecx,0x2
300bc1  8b d9                          mov    ebx,ecx
300bc3  0f 92 85 11 01 00 00           setb   BYTE PTR [rbp+0x111]
300bca  c1 e9 03                       shr    ecx,0x3
300bcd  40 22 ce                       and    cl,sil
300bd0  88 8d 10 01 00 00              mov    BYTE PTR [rbp+0x110],cl
300bd6  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300bdb  e8 bc 4e ff ff                 call   0x2f5a9c
300be0  48 8b c8                       mov    rcx,rax
300be3  e8 84 f8 01 00                 call   0x32046c
300be8  48 8b d0                       mov    rdx,rax
300beb  48 8d 4d 80                    lea    rcx,[rbp-0x80]
300bef  e8 f4 e9 fe ff                 call   0x2ef5e8
300bf4  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
300bf9  0f ba e3 02                    bt     ebx,0x2
300bfd  73 19                          jae    0x300c18
300bff  48 8d 95 b8 0a 00 00           lea    rdx,[rbp+0xab8]
300c06  e8 b9 4f ff ff                 call   0x2f5bc4 ; STRING getter=0x2f5bc4 OnFire
300c0b  48 8b c8                       mov    rcx,rax
300c0e  e8 e1 d0 fc ff                 call   0x2cdcf4
300c13  e9 d6 fd ff ff                 jmp    0x3009ee
300c18  48 8d 95 1c 03 00 00           lea    rdx,[rbp+0x31c]
300c1f  e8 0c bb fc ff                 call   0x2cc730
300c24  e9 bd fd ff ff                 jmp    0x3009e6
300c29  83 f9 17                       cmp    ecx,0x17
300c2c  0f 85 80 00 00 00              jne    0x300cb2
300c32  0f 10 05 7f a6 0e 00           movups xmm0,XMMWORD PTR [rip+0xea67f]        # 0x3eb2b8 ; CONFIG C.SubColor value(+0x48)
300c39  8a 15 19 88 0e 00              mov    dl,BYTE PTR [rip+0xe8819]        # 0x3e9458 ; CONFIG Bools.Submarine value(+0x48)
300c3f  33 c0                          xor    eax,eax
300c41  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300c45  84 d2                          test   dl,dl
300c47  74 0d                          je     0x300c56
300c49  40 84 ff                       test   dil,dil
300c4c  74 08                          je     0x300c56
300c4e  40 8a ce                       mov    cl,sil
300c51  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300c54  eb 05                          jmp    0x300c5b
300c56  8a c8                          mov    cl,al
300c58  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300c5b  8b 05 77 e1 0e 00              mov    eax,DWORD PTR [rip+0xee177]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300c61  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300c64  8b 05 3e e4 0e 00              mov    eax,DWORD PTR [rip+0xee43e]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300c6a  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300c6d  33 c0                          xor    eax,eax
300c6f  38 05 13 80 0e 00              cmp    BYTE PTR [rip+0xe8013],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300c75  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300c7b  74 08                          je     0x300c85
300c7d  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300c81  84 c9                          test   cl,cl
300c83  75 03                          jne    0x300c88
300c85  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300c88  38 05 3a 77 0e 00              cmp    BYTE PTR [rip+0xe773a],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300c8e  75 08                          jne    0x300c98
300c90  38 05 22 96 0e 00              cmp    BYTE PTR [rip+0xe9622],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300c96  74 08                          je     0x300ca0
300c98  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300c9c  84 d2                          test   dl,dl
300c9e  75 03                          jne    0x300ca3
300ca0  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300ca3  4d 8b c2                       mov    r8,r10
300ca6  48 8d 95 58 18 00 00           lea    rdx,[rbp+0x1858]
300cad  e9 c5 04 00 00                 jmp    0x301177
300cb2  83 f9 18                       cmp    ecx,0x18
300cb5  0f 85 80 00 00 00              jne    0x300d3b
300cbb  0f 10 05 76 a7 0e 00           movups xmm0,XMMWORD PTR [rip+0xea776]        # 0x3eb438 ; CONFIG C.ScrapheliColor value(+0x48)
300cc2  8a 15 40 87 0e 00              mov    dl,BYTE PTR [rip+0xe8740]        # 0x3e9408 ; CONFIG Bools.ScrapHeli value(+0x48)
300cc8  33 c0                          xor    eax,eax
300cca  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300cce  84 d2                          test   dl,dl
300cd0  74 0d                          je     0x300cdf
300cd2  40 84 ff                       test   dil,dil
300cd5  74 08                          je     0x300cdf
300cd7  40 8a ce                       mov    cl,sil
300cda  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300cdd  eb 05                          jmp    0x300ce4
300cdf  8a c8                          mov    cl,al
300ce1  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300ce4  8b 05 ee e0 0e 00              mov    eax,DWORD PTR [rip+0xee0ee]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300cea  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300ced  8b 05 b5 e3 0e 00              mov    eax,DWORD PTR [rip+0xee3b5]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300cf3  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300cf6  33 c0                          xor    eax,eax
300cf8  38 05 8a 7f 0e 00              cmp    BYTE PTR [rip+0xe7f8a],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300cfe  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300d04  74 08                          je     0x300d0e
300d06  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300d0a  84 c9                          test   cl,cl
300d0c  75 03                          jne    0x300d11
300d0e  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300d11  38 05 b1 76 0e 00              cmp    BYTE PTR [rip+0xe76b1],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300d17  75 08                          jne    0x300d21
300d19  38 05 99 95 0e 00              cmp    BYTE PTR [rip+0xe9599],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300d1f  74 08                          je     0x300d29
300d21  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300d25  84 d2                          test   dl,dl
300d27  75 03                          jne    0x300d2c
300d29  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300d2c  4d 8b c2                       mov    r8,r10
300d2f  48 8d 95 68 18 00 00           lea    rdx,[rbp+0x1868]
300d36  e9 3c 04 00 00                 jmp    0x301177
300d3b  83 f9 7d                       cmp    ecx,0x7d
300d3e  0f 85 80 00 00 00              jne    0x300dc4
300d44  0f 10 05 cd c3 0e 00           movups xmm0,XMMWORD PTR [rip+0xec3cd]        # 0x3ed118 ; CONFIG C.CarColor value(+0x48)
300d4b  8a 15 07 78 0e 00              mov    dl,BYTE PTR [rip+0xe7807]        # 0x3e8558 ; CONFIG Bools.CarESP value(+0x48)
300d51  33 c0                          xor    eax,eax
300d53  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300d57  84 d2                          test   dl,dl
300d59  74 0d                          je     0x300d68
300d5b  40 84 ff                       test   dil,dil
300d5e  74 08                          je     0x300d68
300d60  40 8a ce                       mov    cl,sil
300d63  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300d66  eb 05                          jmp    0x300d6d
300d68  8a c8                          mov    cl,al
300d6a  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300d6d  8b 05 65 e0 0e 00              mov    eax,DWORD PTR [rip+0xee065]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300d73  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300d76  8b 05 2c e3 0e 00              mov    eax,DWORD PTR [rip+0xee32c]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300d7c  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300d7f  33 c0                          xor    eax,eax
300d81  38 05 01 7f 0e 00              cmp    BYTE PTR [rip+0xe7f01],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300d87  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300d8d  74 08                          je     0x300d97
300d8f  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300d93  84 c9                          test   cl,cl
300d95  75 03                          jne    0x300d9a
300d97  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300d9a  38 05 28 76 0e 00              cmp    BYTE PTR [rip+0xe7628],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300da0  75 08                          jne    0x300daa
300da2  38 05 10 95 0e 00              cmp    BYTE PTR [rip+0xe9510],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300da8  74 08                          je     0x300db2
300daa  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300dae  84 d2                          test   dl,dl
300db0  75 03                          jne    0x300db5
300db2  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300db5  4d 8b c2                       mov    r8,r10
300db8  48 8d 95 78 18 00 00           lea    rdx,[rbp+0x1878]
300dbf  e9 ea 04 00 00                 jmp    0x3012ae
300dc4  83 f9 72                       cmp    ecx,0x72
300dc7  0f 85 80 00 00 00              jne    0x300e4d
300dcd  0f 10 05 a4 c3 0e 00           movups xmm0,XMMWORD PTR [rip+0xec3a4]        # 0x3ed178 ; CONFIG C.TrainColor value(+0x48)
300dd4  8a 15 ce 77 0e 00              mov    dl,BYTE PTR [rip+0xe77ce]        # 0x3e85a8 ; CONFIG Bools.TrainESP value(+0x48)
300dda  33 c0                          xor    eax,eax
300ddc  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300de0  84 d2                          test   dl,dl
300de2  74 0d                          je     0x300df1
300de4  40 84 ff                       test   dil,dil
300de7  74 08                          je     0x300df1
300de9  40 8a ce                       mov    cl,sil
300dec  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300def  eb 05                          jmp    0x300df6
300df1  8a c8                          mov    cl,al
300df3  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300df6  8b 05 dc df 0e 00              mov    eax,DWORD PTR [rip+0xedfdc]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300dfc  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300dff  8b 05 a3 e2 0e 00              mov    eax,DWORD PTR [rip+0xee2a3]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300e05  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300e08  33 c0                          xor    eax,eax
300e0a  38 05 78 7e 0e 00              cmp    BYTE PTR [rip+0xe7e78],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300e10  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300e16  74 08                          je     0x300e20
300e18  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300e1c  84 c9                          test   cl,cl
300e1e  75 03                          jne    0x300e23
300e20  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300e23  38 05 9f 75 0e 00              cmp    BYTE PTR [rip+0xe759f],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300e29  75 08                          jne    0x300e33
300e2b  38 05 87 94 0e 00              cmp    BYTE PTR [rip+0xe9487],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300e31  74 08                          je     0x300e3b
300e33  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300e37  84 d2                          test   dl,dl
300e39  75 03                          jne    0x300e3e
300e3b  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300e3e  4d 8b c2                       mov    r8,r10
300e41  48 8d 95 88 18 00 00           lea    rdx,[rbp+0x1888]
300e48  e9 2a 03 00 00                 jmp    0x301177
300e4d  83 f9 19                       cmp    ecx,0x19
300e50  0f 85 d9 00 00 00              jne    0x300f2f
300e56  0f 10 05 3b a6 0e 00           movups xmm0,XMMWORD PTR [rip+0xea63b]        # 0x3eb498 ; CONFIG C.MinicopterColor value(+0x48)
300e5d  8a 1d 55 85 0e 00              mov    bl,BYTE PTR [rip+0xe8555]        # 0x3e93b8 ; CONFIG Bools.Minicopter value(+0x48)
300e63  33 c0                          xor    eax,eax
300e65  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300e69  84 db                          test   bl,bl
300e6b  74 0d                          je     0x300e7a
300e6d  40 84 ff                       test   dil,dil
300e70  74 08                          je     0x300e7a
300e72  40 8a ce                       mov    cl,sil
300e75  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300e78  eb 05                          jmp    0x300e7f
300e7a  8a c8                          mov    cl,al
300e7c  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300e7f  8b 05 53 df 0e 00              mov    eax,DWORD PTR [rip+0xedf53]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300e85  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300e88  8b 05 1a e2 0e 00              mov    eax,DWORD PTR [rip+0xee21a]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300e8e  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300e91  33 c0                          xor    eax,eax
300e93  38 05 ef 7d 0e 00              cmp    BYTE PTR [rip+0xe7def],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300e99  c6 85 d8 00 00 00 00           mov    BYTE PTR [rbp+0xd8],0x0
300ea0  74 08                          je     0x300eaa
300ea2  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300ea6  84 c9                          test   cl,cl
300ea8  75 03                          jne    0x300ead
300eaa  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300ead  48 8d 0d cc 74 0e 00           lea    rcx,[rip+0xe74cc]        # 0x3e8380
300eb4  e8 43 e9 fe ff                 call   0x2ef7fc
300eb9  84 c0                          test   al,al
300ebb  74 08                          je     0x300ec5
300ebd  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300ec1  84 db                          test   bl,bl
300ec3  75 04                          jne    0x300ec9
300ec5  c6 45 c7 00                    mov    BYTE PTR [rbp-0x39],0x0
300ec9  48 8d 95 98 18 00 00           lea    rdx,[rbp+0x1898]
300ed0  8a 05 e2 5c 0e 00              mov    al,BYTE PTR [rip+0xe5ce2]        # 0x3e6bb8 ; CONFIG Bools.VehicleIcons value(+0x48)
300ed6  48 8d 0d 5b f6 0e 00           lea    rcx,[rip+0xef65b]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
300edd  f3 0f 10 05 f3 c5 0e 00        movss  xmm0,DWORD PTR [rip+0xec5f3]        # 0x3ed4d8 ; CONFIG F.VehicleIconsMult value(+0x48)
300ee5  41 b8 07 00 00 00              mov    r8d,0x7
300eeb  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
300ef0  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
300ef3  e8 f8 89 fe ff                 call   0x2e98f0
300ef8  48 8b c8                       mov    rcx,rax
300efb  e8 70 3e fd ff                 call   0x2d4d70
300f00  84 c0                          test   al,al
300f02  75 13                          jne    0x300f17
300f04  33 c0                          xor    eax,eax
300f06  38 05 ac 4d 0e 00              cmp    BYTE PTR [rip+0xe4dac],al        # 0x3e5cb8
300f0c  74 09                          je     0x300f17
300f0e  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300f11  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300f14  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300f17  ba 05 00 00 00                 mov    edx,0x5
300f1c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
300f21  e8 de 98 fe ff                 call   0x2ea804
300f26  80 7d c4 00                    cmp    BYTE PTR [rbp-0x3c],0x0
300f2a  e9 9b 02 00 00                 jmp    0x3011ca
300f2f  83 f9 1a                       cmp    ecx,0x1a
300f32  0f 85 80 00 00 00              jne    0x300fb8
300f38  0f 10 05 d9 a3 0e 00           movups xmm0,XMMWORD PTR [rip+0xea3d9]        # 0x3eb318 ; CONFIG C.atackhelicolor value(+0x48)
300f3f  8a 15 83 83 0e 00              mov    dl,BYTE PTR [rip+0xe8383]        # 0x3e92c8 ; CONFIG Bools.attackhelicopter value(+0x48)
300f45  33 c0                          xor    eax,eax
300f47  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300f4b  84 d2                          test   dl,dl
300f4d  74 0d                          je     0x300f5c
300f4f  40 84 ff                       test   dil,dil
300f52  74 08                          je     0x300f5c
300f54  40 8a ce                       mov    cl,sil
300f57  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300f5a  eb 05                          jmp    0x300f61
300f5c  8a c8                          mov    cl,al
300f5e  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300f61  8b 05 71 de 0e 00              mov    eax,DWORD PTR [rip+0xede71]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300f67  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300f6a  8b 05 38 e1 0e 00              mov    eax,DWORD PTR [rip+0xee138]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300f70  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300f73  33 c0                          xor    eax,eax
300f75  38 05 0d 7d 0e 00              cmp    BYTE PTR [rip+0xe7d0d],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
300f7b  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
300f81  74 08                          je     0x300f8b
300f83  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
300f87  84 c9                          test   cl,cl
300f89  75 03                          jne    0x300f8e
300f8b  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
300f8e  38 05 34 74 0e 00              cmp    BYTE PTR [rip+0xe7434],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
300f94  75 08                          jne    0x300f9e
300f96  38 05 1c 93 0e 00              cmp    BYTE PTR [rip+0xe931c],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
300f9c  74 08                          je     0x300fa6
300f9e  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
300fa2  84 d2                          test   dl,dl
300fa4  75 03                          jne    0x300fa9
300fa6  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
300fa9  4d 8b c2                       mov    r8,r10
300fac  48 8d 95 a8 18 00 00           lea    rdx,[rbp+0x18a8]
300fb3  e9 bf 01 00 00                 jmp    0x301177
300fb8  83 f9 1b                       cmp    ecx,0x1b
300fbb  0f 85 80 00 00 00              jne    0x301041
300fc1  0f 10 05 b0 a3 0e 00           movups xmm0,XMMWORD PTR [rip+0xea3b0]        # 0x3eb378 ; CONFIG C.tugboatcolor value(+0x48)
300fc8  8a 15 aa 82 0e 00              mov    dl,BYTE PTR [rip+0xe82aa]        # 0x3e9278 ; CONFIG Bools.tugboat value(+0x48)
300fce  33 c0                          xor    eax,eax
300fd0  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
300fd4  84 d2                          test   dl,dl
300fd6  74 0d                          je     0x300fe5
300fd8  40 84 ff                       test   dil,dil
300fdb  74 08                          je     0x300fe5
300fdd  40 8a ce                       mov    cl,sil
300fe0  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
300fe3  eb 05                          jmp    0x300fea
300fe5  8a c8                          mov    cl,al
300fe7  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
300fea  8b 05 e8 dd 0e 00              mov    eax,DWORD PTR [rip+0xedde8]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
300ff0  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
300ff3  8b 05 af e0 0e 00              mov    eax,DWORD PTR [rip+0xee0af]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
300ff9  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
300ffc  33 c0                          xor    eax,eax
300ffe  38 05 84 7c 0e 00              cmp    BYTE PTR [rip+0xe7c84],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
301004  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
30100a  74 08                          je     0x301014
30100c  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301010  84 c9                          test   cl,cl
301012  75 03                          jne    0x301017
301014  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
301017  38 05 ab 73 0e 00              cmp    BYTE PTR [rip+0xe73ab],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30101d  75 08                          jne    0x301027
30101f  38 05 93 92 0e 00              cmp    BYTE PTR [rip+0xe9293],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301025  74 08                          je     0x30102f
301027  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30102b  84 d2                          test   dl,dl
30102d  75 03                          jne    0x301032
30102f  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
301032  4d 8b c2                       mov    r8,r10
301035  48 8d 95 b8 18 00 00           lea    rdx,[rbp+0x18b8]
30103c  e9 36 01 00 00                 jmp    0x301177
301041  83 f9 1c                       cmp    ecx,0x1c
301044  0f 85 80 00 00 00              jne    0x3010ca
30104a  0f 10 05 a7 a4 0e 00           movups xmm0,XMMWORD PTR [rip+0xea4a7]        # 0x3eb4f8 ; CONFIG C.RHIBColor value(+0x48)
301051  8a 15 c1 82 0e 00              mov    dl,BYTE PTR [rip+0xe82c1]        # 0x3e9318 ; CONFIG Bools.RHIB value(+0x48)
301057  33 c0                          xor    eax,eax
301059  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30105d  84 d2                          test   dl,dl
30105f  74 0d                          je     0x30106e
301061  40 84 ff                       test   dil,dil
301064  74 08                          je     0x30106e
301066  40 8a ce                       mov    cl,sil
301069  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30106c  eb 05                          jmp    0x301073
30106e  8a c8                          mov    cl,al
301070  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
301073  8b 05 5f dd 0e 00              mov    eax,DWORD PTR [rip+0xedd5f]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
301079  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30107c  8b 05 26 e0 0e 00              mov    eax,DWORD PTR [rip+0xee026]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
301082  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301085  33 c0                          xor    eax,eax
301087  38 05 fb 7b 0e 00              cmp    BYTE PTR [rip+0xe7bfb],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
30108d  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
301093  74 08                          je     0x30109d
301095  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301099  84 c9                          test   cl,cl
30109b  75 03                          jne    0x3010a0
30109d  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3010a0  38 05 22 73 0e 00              cmp    BYTE PTR [rip+0xe7322],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3010a6  75 08                          jne    0x3010b0
3010a8  38 05 0a 92 0e 00              cmp    BYTE PTR [rip+0xe920a],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3010ae  74 08                          je     0x3010b8
3010b0  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3010b4  84 d2                          test   dl,dl
3010b6  75 03                          jne    0x3010bb
3010b8  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3010bb  4d 8b c2                       mov    r8,r10
3010be  48 8d 95 c8 18 00 00           lea    rdx,[rbp+0x18c8]
3010c5  e9 ad 00 00 00                 jmp    0x301177
3010ca  83 f9 1d                       cmp    ecx,0x1d
3010cd  0f 85 2e 01 00 00              jne    0x301201
3010d3  48 8d 95 4a 09 00 00           lea    rdx,[rbp+0x94a]
3010da  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3010df  e8 3c 4d ff ff                 call   0x2f5e20 ; STRING getter=0x2f5e20 Boat
3010e4  48 8b c8                       mov    rcx,rax
3010e7  e8 e0 cb fc ff                 call   0x2cdccc
3010ec  48 8b d0                       mov    rdx,rax
3010ef  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3010f4  e8 6f 3b fd ff                 call   0x2d4c68
3010f9  0f 10 05 58 a4 0e 00           movups xmm0,XMMWORD PTR [rip+0xea458]        # 0x3eb558 ; CONFIG C.RowboatColor value(+0x48)
301100  8a 15 62 82 0e 00              mov    dl,BYTE PTR [rip+0xe8262]        # 0x3e9368 ; CONFIG Bools.Rowboat value(+0x48)
301106  33 c0                          xor    eax,eax
301108  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30110c  84 d2                          test   dl,dl
30110e  74 0d                          je     0x30111d
301110  40 84 ff                       test   dil,dil
301113  74 08                          je     0x30111d
301115  40 8a ce                       mov    cl,sil
301118  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30111b  eb 05                          jmp    0x301122
30111d  8a c8                          mov    cl,al
30111f  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
301122  8b 05 b0 dc 0e 00              mov    eax,DWORD PTR [rip+0xedcb0]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
301128  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30112b  8b 05 77 df 0e 00              mov    eax,DWORD PTR [rip+0xedf77]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
301131  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301134  33 c0                          xor    eax,eax
301136  38 05 4c 7b 0e 00              cmp    BYTE PTR [rip+0xe7b4c],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
30113c  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
301142  74 08                          je     0x30114c
301144  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301148  84 c9                          test   cl,cl
30114a  75 03                          jne    0x30114f
30114c  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
30114f  38 05 73 72 0e 00              cmp    BYTE PTR [rip+0xe7273],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
301155  75 08                          jne    0x30115f
301157  38 05 5b 91 0e 00              cmp    BYTE PTR [rip+0xe915b],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
30115d  74 08                          je     0x301167
30115f  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301163  84 d2                          test   dl,dl
301165  75 03                          jne    0x30116a
301167  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30116a  48 8d 95 d8 18 00 00           lea    rdx,[rbp+0x18d8]
301171  41 b8 07 00 00 00              mov    r8d,0x7
301177  8a 05 3b 5a 0e 00              mov    al,BYTE PTR [rip+0xe5a3b]        # 0x3e6bb8 ; CONFIG Bools.VehicleIcons value(+0x48)
30117d  48 8d 0d b4 f3 0e 00           lea    rcx,[rip+0xef3b4]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
301184  f3 0f 10 05 4c c3 0e 00        movss  xmm0,DWORD PTR [rip+0xec34c]        # 0x3ed4d8 ; CONFIG F.VehicleIconsMult value(+0x48)
30118c  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
301191  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
301194  e8 57 87 fe ff                 call   0x2e98f0
301199  48 8b c8                       mov    rcx,rax
30119c  e8 cf 3b fd ff                 call   0x2d4d70
3011a1  84 c0                          test   al,al
3011a3  75 13                          jne    0x3011b8
3011a5  33 c0                          xor    eax,eax
3011a7  38 05 0b 4b 0e 00              cmp    BYTE PTR [rip+0xe4b0b],al        # 0x3e5cb8
3011ad  74 09                          je     0x3011b8
3011af  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3011b2  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3011b5  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3011b8  ba 05 00 00 00                 mov    edx,0x5
3011bd  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3011c2  e8 3d 96 fe ff                 call   0x2ea804
3011c7  38 5d c4                       cmp    BYTE PTR [rbp-0x3c],bl
3011ca  0f 84 f1 40 00 00              je     0x3052c1
3011d0  ba d0 02 00 00                 mov    edx,0x2d0
3011d5  49 8b cd                       mov    rcx,r13
3011d8  e8 5f dc fd ff                 call   0x2dee3c
3011dd  ba cc 02 00 00                 mov    edx,0x2cc
3011e2  49 8b cd                       mov    rcx,r13
3011e5  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
3011e9  e8 4e dc fd ff                 call   0x2dee3c
3011ee  f3 0f 2c 08                    cvttss2si ecx,DWORD PTR [rax]
3011f2  f3 0f 2c c0                    cvttss2si eax,xmm0
3011f6  89 8d 98 00 00 00              mov    DWORD PTR [rbp+0x98],ecx
3011fc  e9 db 12 00 00                 jmp    0x3024dc
301201  83 f9 1e                       cmp    ecx,0x1e
301204  0f 85 ef 00 00 00              jne    0x3012f9
30120a  48 8d 95 22 0a 00 00           lea    rdx,[rbp+0xa22]
301211  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301216  e8 49 4d ff ff                 call   0x2f5f64 ; STRING getter=0x2f5f64 Cargo
30121b  48 8b c8                       mov    rcx,rax
30121e  e8 b9 72 fd ff                 call   0x2d84dc
301223  48 8b d0                       mov    rdx,rax
301226  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30122b  e8 38 3a fd ff                 call   0x2d4c68
301230  0f 10 05 81 a3 0e 00           movups xmm0,XMMWORD PTR [rip+0xea381]        # 0x3eb5b8 ; CONFIG C.CargoshipColor value(+0x48)
301237  8a 15 5b 7e 0e 00              mov    dl,BYTE PTR [rip+0xe7e5b]        # 0x3e9098 ; CONFIG Bools.Cargoship value(+0x48)
30123d  33 c0                          xor    eax,eax
30123f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301243  84 d2                          test   dl,dl
301245  74 0d                          je     0x301254
301247  40 84 ff                       test   dil,dil
30124a  74 08                          je     0x301254
30124c  40 8a ce                       mov    cl,sil
30124f  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301252  eb 05                          jmp    0x301259
301254  8a c8                          mov    cl,al
301256  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
301259  8b 05 79 db 0e 00              mov    eax,DWORD PTR [rip+0xedb79]        # 0x3eedd8 ; CONFIG i.VehicleDistance value(+0x48)
30125f  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301262  8b 05 40 de 0e 00              mov    eax,DWORD PTR [rip+0xede40]        # 0x3ef0a8 ; CONFIG i.VehicleChamIndex value(+0x48)
301268  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
30126b  33 c0                          xor    eax,eax
30126d  38 05 15 7a 0e 00              cmp    BYTE PTR [rip+0xe7a15],al        # 0x3e8c88 ; CONFIG Bools.VehicleChams value(+0x48)
301273  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
301279  74 08                          je     0x301283
30127b  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30127f  84 c9                          test   cl,cl
301281  75 03                          jne    0x301286
301283  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
301286  38 05 3c 71 0e 00              cmp    BYTE PTR [rip+0xe713c],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30128c  75 08                          jne    0x301296
30128e  38 05 24 90 0e 00              cmp    BYTE PTR [rip+0xe9024],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301294  74 08                          je     0x30129e
301296  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30129a  84 d2                          test   dl,dl
30129c  75 03                          jne    0x3012a1
30129e  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3012a1  48 8d 95 e8 18 00 00           lea    rdx,[rbp+0x18e8]
3012a8  41 b8 07 00 00 00              mov    r8d,0x7
3012ae  8a 05 04 59 0e 00              mov    al,BYTE PTR [rip+0xe5904]        # 0x3e6bb8 ; CONFIG Bools.VehicleIcons value(+0x48)
3012b4  48 8d 0d 7d f2 0e 00           lea    rcx,[rip+0xef27d]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
3012bb  f3 0f 10 05 15 c2 0e 00        movss  xmm0,DWORD PTR [rip+0xec215]        # 0x3ed4d8 ; CONFIG F.VehicleIconsMult value(+0x48)
3012c3  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
3012c8  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
3012cb  e8 20 86 fe ff                 call   0x2e98f0
3012d0  48 8b c8                       mov    rcx,rax
3012d3  e8 98 3a fd ff                 call   0x2d4d70
3012d8  84 c0                          test   al,al
3012da  75 13                          jne    0x3012ef
3012dc  33 c0                          xor    eax,eax
3012de  38 05 d4 49 0e 00              cmp    BYTE PTR [rip+0xe49d4],al        # 0x3e5cb8
3012e4  74 09                          je     0x3012ef
3012e6  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3012e9  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3012ec  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3012ef  ba 05 00 00 00                 mov    edx,0x5
3012f4  e9 5d 46 00 00                 jmp    0x305956
3012f9  83 f9 49                       cmp    ecx,0x49
3012fc  0f 85 59 06 00 00              jne    0x30195b
301302  48 8b 8d 78 02 00 00           mov    rcx,QWORD PTR [rbp+0x278]
301309  ba 10 05 00 00                 mov    edx,0x510
30130e  e8 29 db fd ff                 call   0x2dee3c
301313  4d 8b c2                       mov    r8,r10
301316  48 8d 95 f8 18 00 00           lea    rdx,[rbp+0x18f8]
30131d  48 8d 0d d4 ef 0e 00           lea    rcx,[rip+0xeefd4]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
301324  f3 44 0f 10 00                 movss  xmm8,DWORD PTR [rax]
301329  e8 c2 85 fe ff                 call   0x2e98f0
30132e  48 8b c8                       mov    rcx,rax
301331  e8 3a 3a fd ff                 call   0x2d4d70
301336  84 c0                          test   al,al
301338  0f 84 99 00 00 00              je     0x3013d7
30133e  ba 90 00 00 00                 mov    edx,0x90
301343  49 8b cd                       mov    rcx,r13
301346  e8 f1 da fd ff                 call   0x2dee3c
30134b  48 8b 30                       mov    rsi,QWORD PTR [rax]
30134e  48 8b ce                       mov    rcx,rsi
301351  e8 b2 9b fc ff                 call   0x2caf08
301356  84 c0                          test   al,al
301358  74 78                          je     0x3013d2
30135a  44 8b 76 18                    mov    r14d,DWORD PTR [rsi+0x18]
30135e  33 c0                          xor    eax,eax
301360  45 85 f6                       test   r14d,r14d
301363  7e 6d                          jle    0x3013d2
301365  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
301369  48 8b ca                       mov    rcx,rdx
30136c  e8 97 9b fc ff                 call   0x2caf08
301371  84 c0                          test   al,al
301373  74 56                          je     0x3013cb
301375  8d 04 dd 00 00 00 00           lea    eax,[rbx*8+0x0]
30137c  48 63 c8                       movsxd rcx,eax
30137f  48 8b 54 0a 20                 mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
301384  48 8b ca                       mov    rcx,rdx
301387  e8 7c 9b fc ff                 call   0x2caf08
30138c  84 c0                          test   al,al
30138e  74 3b                          je     0x3013cb
301390  8b 52 54                       mov    edx,DWORD PTR [rdx+0x54]
301393  48 8d 8d a8 0d 00 00           lea    rcx,[rbp+0xda8]
30139a  e8 d5 51 01 00                 call   0x316574
30139f  48 8d 8d a8 0d 00 00           lea    rcx,[rbp+0xda8]
3013a6  e8 e9 72 fd ff                 call   0x2d8694
3013ab  84 c0                          test   al,al
3013ad  75 10                          jne    0x3013bf
3013af  48 8d 95 a8 0d 00 00           lea    rdx,[rbp+0xda8]
3013b6  48 8d 4d 78                    lea    rcx,[rbp+0x78]
3013ba  e8 65 38 fd ff                 call   0x2d4c24
3013bf  48 8d 8d a8 0d 00 00           lea    rcx,[rbp+0xda8]
3013c6  e8 29 b1 fc ff                 call   0x2cc4f4
3013cb  ff c3                          inc    ebx
3013cd  41 3b de                       cmp    ebx,r14d
3013d0  7c 93                          jl     0x301365
3013d2  be 01 00 00 00                 mov    esi,0x1
3013d7  48 8d 95 bf 0a 00 00           lea    rdx,[rbp+0xabf]
3013de  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3013e3  e8 2c 4e ff ff                 call   0x2f6214 ; STRING getter=0x2f6214 Turret
3013e8  48 8b c8                       mov    rcx,rax
3013eb  e8 04 c9 fc ff                 call   0x2cdcf4
3013f0  48 8b d0                       mov    rdx,rax
3013f3  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3013f8  e8 6b 38 fd ff                 call   0x2d4c68
3013fd  0f 10 05 34 af 0e 00           movups xmm0,XMMWORD PTR [rip+0xeaf34]        # 0x3ec338 ; CONFIG C.TurretColor value(+0x48)
301404  8a 15 de 72 0e 00              mov    dl,BYTE PTR [rip+0xe72de]        # 0x3e86e8 ; CONFIG Bools.AutoTurretESP value(+0x48)
30140a  33 c0                          xor    eax,eax
30140c  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301410  84 d2                          test   dl,dl
301412  74 0d                          je     0x301421
301414  40 84 ff                       test   dil,dil
301417  74 08                          je     0x301421
301419  40 8a ce                       mov    cl,sil
30141c  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30141f  eb 05                          jmp    0x301426
301421  8a c8                          mov    cl,al
301423  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
301426  8b 05 2c d7 0e 00              mov    eax,DWORD PTR [rip+0xed72c]        # 0x3eeb58 ; CONFIG i.autoturretdist value(+0x48)
30142c  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30142f  8b 05 13 dd 0e 00              mov    eax,DWORD PTR [rip+0xedd13]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
301435  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301438  33 c0                          xor    eax,eax
30143a  38 05 a8 77 0e 00              cmp    BYTE PTR [rip+0xe77a8],al        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
301440  c6 85 d8 00 00 00 00           mov    BYTE PTR [rbp+0xd8],0x0
301447  74 08                          je     0x301451
301449  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30144d  84 c9                          test   cl,cl
30144f  75 03                          jne    0x301454
301451  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
301454  38 05 6e 6f 0e 00              cmp    BYTE PTR [rip+0xe6f6e],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30145a  75 08                          jne    0x301464
30145c  38 05 56 8e 0e 00              cmp    BYTE PTR [rip+0xe8e56],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301462  74 08                          je     0x30146c
301464  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301468  84 d2                          test   dl,dl
30146a  75 03                          jne    0x30146f
30146c  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
30146f  8a 05 e3 57 0e 00              mov    al,BYTE PTR [rip+0xe57e3]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
301475  48 8d 95 08 19 00 00           lea    rdx,[rbp+0x1908]
30147c  f3 0f 10 05 f4 c0 0e 00        movss  xmm0,DWORD PTR [rip+0xec0f4]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
301484  48 8d 0d ad f0 0e 00           lea    rcx,[rip+0xef0ad]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
30148b  4c 8b c6                       mov    r8,rsi
30148e  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
301493  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
301496  e8 55 84 fe ff                 call   0x2e98f0
30149b  48 8b c8                       mov    rcx,rax
30149e  e8 cd 38 fd ff                 call   0x2d4d70
3014a3  84 c0                          test   al,al
3014a5  75 13                          jne    0x3014ba
3014a7  33 c0                          xor    eax,eax
3014a9  38 05 09 48 0e 00              cmp    BYTE PTR [rip+0xe4809],al        # 0x3e5cb8
3014af  74 09                          je     0x3014ba
3014b1  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3014b4  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
3014b7  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3014ba  ba 07 00 00 00                 mov    edx,0x7
3014bf  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3014c4  e8 3b 93 fe ff                 call   0x2ea804
3014c9  80 3d 18 72 0e 00 00           cmp    BYTE PTR [rip+0xe7218],0x0        # 0x3e86e8 ; CONFIG Bools.AutoTurretESP value(+0x48)
3014d0  0f 84 eb 3d 00 00              je     0x3052c1
3014d6  ba d8 01 00 00                 mov    edx,0x1d8
3014db  49 8b cd                       mov    rcx,r13
3014de  e8 59 d9 fd ff                 call   0x2dee3c
3014e3  49 8b cd                       mov    rcx,r13
3014e6  ba c8 03 00 00                 mov    edx,0x3c8
3014eb  4c 8b c8                       mov    r9,rax
3014ee  e8 49 d9 fd ff                 call   0x2dee3c
3014f3  48 8b 10                       mov    rdx,QWORD PTR [rax]
3014f6  48 8b ca                       mov    rcx,rdx
3014f9  e8 0a 9a fc ff                 call   0x2caf08
3014fe  84 c0                          test   al,al
301500  0f 84 bb 3d 00 00              je     0x3052c1
301506  80 7d c4 00                    cmp    BYTE PTR [rbp-0x3c],0x0
30150a  0f 84 b1 3d 00 00              je     0x3052c1
301510  41 0f bf 39                    movsx  edi,WORD PTR [r9]
301514  49 8b cd                       mov    rcx,r13
301517  8b 72 20                       mov    esi,DWORD PTR [rdx+0x20]
30151a  8b df                          mov    ebx,edi
30151c  ba cc 02 00 00                 mov    edx,0x2cc
301521  83 e3 02                       and    ebx,0x2
301524  e8 13 d9 fd ff                 call   0x2dee3c
301529  ba d0 02 00 00                 mov    edx,0x2d0
30152e  49 8b cd                       mov    rcx,r13
301531  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
301535  e8 02 d9 fd ff                 call   0x2dee3c
30153a  41 b8 06 00 00 00              mov    r8d,0x6
301540  48 8d 95 18 19 00 00           lea    rdx,[rbp+0x1918]
301547  48 8d 0d aa ed 0e 00           lea    rcx,[rip+0xeedaa]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
30154e  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
301552  e8 99 83 fe ff                 call   0x2e98f0
301557  48 8b c8                       mov    rcx,rax
30155a  e8 11 38 fd ff                 call   0x2d4d70
30155f  45 33 f6                       xor    r14d,r14d
301562  84 c0                          test   al,al
301564  74 0e                          je     0x301574
301566  8b c7                          mov    eax,edi
301568  25 00 02 00 00                 and    eax,0x200
30156d  f7 d8                          neg    eax
30156f  1a c0                          sbb    al,al
301571  20 45 c4                       and    BYTE PTR [rbp-0x3c],al
301574  41 b8 05 00 00 00              mov    r8d,0x5
30157a  48 8d 95 28 19 00 00           lea    rdx,[rbp+0x1928]
301581  48 8d 0d 70 ed 0e 00           lea    rcx,[rip+0xeed70]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
301588  e8 63 83 fe ff                 call   0x2e98f0
30158d  48 8b c8                       mov    rcx,rax
301590  e8 db 37 fd ff                 call   0x2d4d70
301595  84 c0                          test   al,al
301597  74 09                          je     0x3015a2
301599  8b c3                          mov    eax,ebx
30159b  f7 d8                          neg    eax
30159d  1a c9                          sbb    cl,cl
30159f  20 4d c4                       and    BYTE PTR [rbp-0x3c],cl
3015a2  85 f6                          test   esi,esi
3015a4  7e 31                          jle    0x3015d7
3015a6  41 b8 04 00 00 00              mov    r8d,0x4
3015ac  48 8d 95 38 19 00 00           lea    rdx,[rbp+0x1938]
3015b3  48 8d 0d 3e ed 0e 00           lea    rcx,[rip+0xeed3e]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
3015ba  e8 31 83 fe ff                 call   0x2e98f0
3015bf  48 8b c8                       mov    rcx,rax
3015c2  e8 a9 37 fd ff                 call   0x2d4d70
3015c7  0f b6 55 c4                    movzx  edx,BYTE PTR [rbp-0x3c]
3015cb  45 33 c0                       xor    r8d,r8d
3015ce  84 c0                          test   al,al
3015d0  41 0f 45 d0                    cmovne edx,r8d
3015d4  88 55 c4                       mov    BYTE PTR [rbp-0x3c],dl
3015d7  45 33 c0                       xor    r8d,r8d
3015da  48 8d 95 48 19 00 00           lea    rdx,[rbp+0x1948]
3015e1  48 8d 0d 10 ed 0e 00           lea    rcx,[rip+0xeed10]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
3015e8  e8 03 83 fe ff                 call   0x2e98f0
3015ed  48 8b c8                       mov    rcx,rax
3015f0  e8 7b 37 fd ff                 call   0x2d4d70
3015f5  84 c0                          test   al,al
3015f7  0f 84 43 02 00 00              je     0x301840
3015fd  33 c0                          xor    eax,eax
3015ff  85 db                          test   ebx,ebx
301601  0f 84 39 02 00 00              je     0x301840
301607  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
30160a  0f 84 30 02 00 00              je     0x301840
301610  48 8b 8d 78 02 00 00           mov    rcx,QWORD PTR [rbp+0x278]
301617  ba e0 04 00 00                 mov    edx,0x4e0
30161c  e8 1b d8 fd ff                 call   0x2dee3c
301621  4c 8b 00                       mov    r8,QWORD PTR [rax]
301624  49 8b c8                       mov    rcx,r8
301627  e8 dc 98 fc ff                 call   0x2caf08
30162c  84 c0                          test   al,al
30162e  0f 84 0c 02 00 00              je     0x301840
301634  48 8d 95 98 03 00 00           lea    rdx,[rbp+0x398]
30163b  49 8b c8                       mov    rcx,r8
30163e  e8 91 31 07 00                 call   0x3747d4
301643  48 8d 8d 40 03 00 00           lea    rcx,[rbp+0x340]
30164a  e8 55 9d fc ff                 call   0x2cb3a4
30164f  0f 57 db                       xorps  xmm3,xmm3
301652  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
301659  0f 57 d2                       xorps  xmm2,xmm2
30165c  48 8d 8d 40 0d 00 00           lea    rcx,[rbp+0xd40]
301663  0f 57 c9                       xorps  xmm1,xmm1
301666  e8 e5 ac fc ff                 call   0x2cc350
30166b  f2 0f 10 85 98 03 00 00        movsd  xmm0,QWORD PTR [rbp+0x398]
301673  48 8d 35 2e 5c 0d 00           lea    rsi,[rip+0xd5c2e]        # 0x3d72a8
30167a  8b 85 a0 03 00 00              mov    eax,DWORD PTR [rbp+0x3a0]
301680  4c 8d 85 40 03 00 00           lea    r8,[rbp+0x340]
301687  4c 8b ce                       mov    r9,rsi
30168a  f2 0f 11 85 50 05 00 00        movsd  QWORD PTR [rbp+0x550],xmm0
301692  48 8d 95 50 05 00 00           lea    rdx,[rbp+0x550]
301699  89 85 58 05 00 00              mov    DWORD PTR [rbp+0x558],eax
30169f  49 8b cf                       mov    rcx,r15
3016a2  e8 79 b6 06 00                 call   0x36cd20
3016a7  84 c0                          test   al,al
3016a9  0f 84 91 01 00 00              je     0x301840
3016af  41 0f 28 d8                    movaps xmm3,xmm8
3016b3  48 8d 8d 58 0a 00 00           lea    rcx,[rbp+0xa58]
3016ba  0f 57 d2                       xorps  xmm2,xmm2
3016bd  0f 57 c9                       xorps  xmm1,xmm1
3016c0  e8 e3 64 0c 00                 call   0x3c7ba8
3016c5  4c 8d 85 40 0d 00 00           lea    r8,[rbp+0xd40]
3016cc  48 8d 95 58 0a 00 00           lea    rdx,[rbp+0xa58]
3016d3  48 8d 8d a8 13 00 00           lea    rcx,[rbp+0x13a8]
3016da  e8 d5 f6 01 00                 call   0x320db4
3016df  4c 8b c0                       mov    r8,rax
3016e2  48 8d 95 58 04 00 00           lea    rdx,[rbp+0x458]
3016e9  48 8d 8d 98 03 00 00           lea    rcx,[rbp+0x398]
3016f0  e8 13 e0 fd ff                 call   0x2df708
3016f5  48 8d 8d 28 03 00 00           lea    rcx,[rbp+0x328]
3016fc  e8 a3 9c fc ff                 call   0x2cb3a4
301701  0f 57 c0                       xorps  xmm0,xmm0
301704  48 8d 8d 40 0b 00 00           lea    rcx,[rbp+0xb40]
30170b  0f 11 85 50 0b 00 00           movups XMMWORD PTR [rbp+0xb50],xmm0
301712  0f 11 85 5c 0b 00 00           movups XMMWORD PTR [rbp+0xb5c],xmm0
301719  0f 11 85 40 0b 00 00           movups XMMWORD PTR [rbp+0xb40],xmm0
301720  e8 df 37 fe ff                 call   0x2e4f04
301725  4c 8d 85 98 03 00 00           lea    r8,[rbp+0x398]
30172c  48 8d 95 b4 13 00 00           lea    rdx,[rbp+0x13b4]
301733  48 8d 8d 58 04 00 00           lea    rcx,[rbp+0x458]
30173a  e8 8d df fd ff                 call   0x2df6cc
30173f  44 89 74 24 28                 mov    DWORD PTR [rsp+0x28],r14d
301744  48 8d 95 60 05 00 00           lea    rdx,[rbp+0x560]
30174b  41 b9 00 00 a1 40              mov    r9d,0x40a10000
301751  48 8d 8d 70 05 00 00           lea    rcx,[rbp+0x570]
301758  41 0f 28 d0                    movaps xmm2,xmm8
30175c  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
301760  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
301763  89 85 68 05 00 00              mov    DWORD PTR [rbp+0x568],eax
301769  8b 85 a0 03 00 00              mov    eax,DWORD PTR [rbp+0x3a0]
30176f  89 85 78 05 00 00              mov    DWORD PTR [rbp+0x578],eax
301775  48 8d 85 40 0b 00 00           lea    rax,[rbp+0xb40]
30177c  f2 0f 11 85 60 05 00 00        movsd  QWORD PTR [rbp+0x560],xmm0
301784  f2 0f 10 85 98 03 00 00        movsd  xmm0,QWORD PTR [rbp+0x398]
30178c  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
301791  f2 0f 11 85 70 05 00 00        movsd  QWORD PTR [rbp+0x570],xmm0
301799  e8 0e 78 fe ff                 call   0x2e8fac
30179e  4c 8d 85 28 03 00 00           lea    r8,[rbp+0x328]
3017a5  4c 8b ce                       mov    r9,rsi
3017a8  49 8b cf                       mov    rcx,r15
3017ab  84 c0                          test   al,al
3017ad  74 6c                          je     0x30181b
3017af  0f 10 85 40 0b 00 00           movups xmm0,XMMWORD PTR [rbp+0xb40]
3017b6  48 8d 95 80 05 00 00           lea    rdx,[rbp+0x580]
3017bd  f2 0f 11 85 80 05 00 00        movsd  QWORD PTR [rbp+0x580],xmm0
3017c5  66 0f 73 d8 08                 psrldq xmm0,0x8
3017ca  66 0f 7e 85 88 05 00 00        movd   DWORD PTR [rbp+0x588],xmm0
3017d2  e8 49 b5 06 00                 call   0x36cd20
3017d7  41 be 01 00 00 00              mov    r14d,0x1
3017dd  84 c0                          test   al,al
3017df  74 65                          je     0x301846
3017e1  f3 0f 10 85 40 03 00 00        movss  xmm0,DWORD PTR [rbp+0x340]
3017e9  f3 0f 10 8d 44 03 00 00        movss  xmm1,DWORD PTR [rbp+0x344]
3017f1  f3 0f 11 45 c8                 movss  DWORD PTR [rbp-0x38],xmm0
3017f6  f3 0f 10 85 28 03 00 00        movss  xmm0,DWORD PTR [rbp+0x328]
3017fe  f3 0f 11 4d cc                 movss  DWORD PTR [rbp-0x34],xmm1
301803  f3 0f 10 8d 2c 03 00 00        movss  xmm1,DWORD PTR [rbp+0x32c]
30180b  f3 0f 11 45 d0                 movss  DWORD PTR [rbp-0x30],xmm0
301810  f3 0f 11 4d d4                 movss  DWORD PTR [rbp-0x2c],xmm1
301815  44 88 75 c6                    mov    BYTE PTR [rbp-0x3a],r14b
301819  eb 2b                          jmp    0x301846
30181b  f2 0f 10 85 58 04 00 00        movsd  xmm0,QWORD PTR [rbp+0x458]
301823  48 8d 95 90 05 00 00           lea    rdx,[rbp+0x590]
30182a  8b 85 60 04 00 00              mov    eax,DWORD PTR [rbp+0x460]
301830  f2 0f 11 85 90 05 00 00        movsd  QWORD PTR [rbp+0x590],xmm0
301838  89 85 98 05 00 00              mov    DWORD PTR [rbp+0x598],eax
30183e  eb 92                          jmp    0x3017d2
301840  41 be 01 00 00 00              mov    r14d,0x1
301846  41 b8 02 00 00 00              mov    r8d,0x2
30184c  48 8d 95 58 19 00 00           lea    rdx,[rbp+0x1958]
301853  48 8d 0d 9e ea 0e 00           lea    rcx,[rip+0xeea9e]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
30185a  e8 91 80 fe ff                 call   0x2e98f0
30185f  48 8b c8                       mov    rcx,rax
301862  e8 09 35 fd ff                 call   0x2d4d70
301867  84 c0                          test   al,al
301869  74 1c                          je     0x301887
30186b  80 7d c4 00                    cmp    BYTE PTR [rbp-0x3c],0x0
30186f  74 16                          je     0x301887
301871  f3 0f 2c c6                    cvttss2si eax,xmm6
301875  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
30187b  f3 0f 2c c7                    cvttss2si eax,xmm7
30187f  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
301885  eb 3c                          jmp    0x3018c3
301887  4d 8b c6                       mov    r8,r14
30188a  48 8d 95 68 19 00 00           lea    rdx,[rbp+0x1968]
301891  48 8d 0d 60 ea 0e 00           lea    rcx,[rip+0xeea60]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
301898  e8 53 80 fe ff                 call   0x2e98f0
30189d  48 8b c8                       mov    rcx,rax
3018a0  e8 cb 34 fd ff                 call   0x2d4d70
3018a5  84 c0                          test   al,al
3018a7  74 1a                          je     0x3018c3
3018a9  80 7d c4 00                    cmp    BYTE PTR [rbp-0x3c],0x0
3018ad  74 14                          je     0x3018c3
3018af  f3 0f 2c c6                    cvttss2si eax,xmm6
3018b3  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
3018b9  f3 0f 2c c7                    cvttss2si eax,xmm7
3018bd  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
3018c3  41 b8 03 00 00 00              mov    r8d,0x3
3018c9  48 8d 95 78 19 00 00           lea    rdx,[rbp+0x1978]
3018d0  48 8d 0d 21 ea 0e 00           lea    rcx,[rip+0xeea21]        # 0x3f02f8 ; CONFIG VectorBools.TrapOptions value(+0x48)
3018d7  e8 14 80 fe ff                 call   0x2e98f0
3018dc  48 8b c8                       mov    rcx,rax
3018df  e8 8c 34 fd ff                 call   0x2d4d70
3018e4  84 c0                          test   al,al
3018e6  0f 84 d5 39 00 00              je     0x3052c1
3018ec  80 7d c4 00                    cmp    BYTE PTR [rbp-0x3c],0x0
3018f0  0f 84 cb 39 00 00              je     0x3052c1
3018f6  40 84 ff                       test   dil,dil
3018f9  79 25                          jns    0x301920
3018fb  48 8d 95 c6 0a 00 00           lea    rdx,[rbp+0xac6]
301902  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301907  e8 64 4a ff ff                 call   0x2f6370 ; STRING getter=0x2f6370 [Safe]
30190c  48 8b c8                       mov    rcx,rax
30190f  e8 e0 c3 fc ff                 call   0x2cdcf4
301914  48 8b d0                       mov    rdx,rax
301917  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30191b  e8 48 33 fd ff                 call   0x2d4c68
301920  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301925  85 db                          test   ebx,ebx
301927  74 19                          je     0x301942
301929  48 8d 95 4f 09 00 00           lea    rdx,[rbp+0x94f]
301930  e8 b3 4b ff ff                 call   0x2f64e8 ; STRING getter=0x2f64e8 [On]
301935  48 8b c8                       mov    rcx,rax
301938  e8 8f c3 fc ff                 call   0x2cdccc
30193d  e9 10 0a 00 00                 jmp    0x302352
301942  48 8d 95 28 0a 00 00           lea    rdx,[rbp+0xa28]
301949  e8 1e 4c ff ff                 call   0x2f656c ; STRING getter=0x2f656c [Off]
30194e  48 8b c8                       mov    rcx,rax
301951  e8 86 6b fd ff                 call   0x2d84dc
301956  e9 f7 09 00 00                 jmp    0x302352
30195b  83 f9 4a                       cmp    ecx,0x4a
30195e  0f 85 04 01 00 00              jne    0x301a68
301964  48 8d 95 2e 0a 00 00           lea    rdx,[rbp+0xa2e]
30196b  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301970  e8 c7 4c ff ff                 call   0x2f663c ; STRING getter=0x2f663c SnapT
301975  48 8b c8                       mov    rcx,rax
301978  e8 5f 6b fd ff                 call   0x2d84dc
30197d  48 8b d0                       mov    rdx,rax
301980  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301985  e8 de 32 fd ff                 call   0x2d4c68
30198a  0f 10 05 87 ab 0e 00           movups xmm0,XMMWORD PTR [rip+0xeab87]        # 0x3ec518 ; CONFIG C.SnapTrapColor value(+0x48)
301991  8a 15 e1 69 0e 00              mov    dl,BYTE PTR [rip+0xe69e1]        # 0x3e8378 ; CONFIG Bools.SnaptrapESP value(+0x48)
301997  33 c0                          xor    eax,eax
301999  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30199d  84 d2                          test   dl,dl
30199f  74 0d                          je     0x3019ae
3019a1  40 84 ff                       test   dil,dil
3019a4  74 08                          je     0x3019ae
3019a6  40 8a ce                       mov    cl,sil
3019a9  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3019ac  eb 05                          jmp    0x3019b3
3019ae  8a c8                          mov    cl,al
3019b0  88 45 c4                       mov    BYTE PTR [rbp-0x3c],al
3019b3  8b 05 4f d1 0e 00              mov    eax,DWORD PTR [rip+0xed14f]        # 0x3eeb08 ; CONFIG i.snaptrapdist value(+0x48)
3019b9  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3019bc  8b 05 86 d7 0e 00              mov    eax,DWORD PTR [rip+0xed786]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
3019c2  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3019c5  33 c0                          xor    eax,eax
3019c7  38 05 1b 72 0e 00              cmp    BYTE PTR [rip+0xe721b],al        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
3019cd  40 88 b5 d8 00 00 00           mov    BYTE PTR [rbp+0xd8],sil
3019d4  c7 85 d0 00 00 00 0c 00 00 00  mov    DWORD PTR [rbp+0xd0],0xc
3019de  c7 85 d4 00 00 00 32 00 00 00  mov    DWORD PTR [rbp+0xd4],0x32
3019e8  74 08                          je     0x3019f2
3019ea  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3019ee  84 c9                          test   cl,cl
3019f0  75 03                          jne    0x3019f5
3019f2  88 45 b8                       mov    BYTE PTR [rbp-0x48],al
3019f5  38 05 cd 69 0e 00              cmp    BYTE PTR [rip+0xe69cd],al        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3019fb  75 08                          jne    0x301a05
3019fd  38 05 b5 88 0e 00              cmp    BYTE PTR [rip+0xe88b5],al        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301a03  74 08                          je     0x301a0d
301a05  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301a09  84 d2                          test   dl,dl
301a0b  75 03                          jne    0x301a10
301a0d  88 45 c7                       mov    BYTE PTR [rbp-0x39],al
301a10  8a 05 42 52 0e 00              mov    al,BYTE PTR [rip+0xe5242]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
301a16  48 8d 95 88 19 00 00           lea    rdx,[rbp+0x1988]
301a1d  f3 0f 10 05 53 bb 0e 00        movss  xmm0,DWORD PTR [rip+0xebb53]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
301a25  48 8d 0d 0c eb 0e 00           lea    rcx,[rip+0xeeb0c]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
301a2c  4c 8b c6                       mov    r8,rsi
301a2f  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
301a34  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
301a37  e8 b4 7e fe ff                 call   0x2e98f0
301a3c  48 8b c8                       mov    rcx,rax
301a3f  e8 2c 33 fd ff                 call   0x2d4d70
301a44  33 c9                          xor    ecx,ecx
301a46  84 c0                          test   al,al
301a48  0f 85 53 06 00 00              jne    0x3020a1
301a4e  38 0d 64 42 0e 00              cmp    BYTE PTR [rip+0xe4264],cl        # 0x3e5cb8
301a54  0f 84 47 06 00 00              je     0x3020a1
301a5a  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301a5d  88 4d c7                       mov    BYTE PTR [rbp-0x39],cl
301a60  88 4d b8                       mov    BYTE PTR [rbp-0x48],cl
301a63  e9 39 06 00 00                 jmp    0x3020a1
301a68  83 f9 4c                       cmp    ecx,0x4c
301a6b  0f 85 0f 01 00 00              jne    0x301b80
301a71  48 8d 95 c0 13 00 00           lea    rdx,[rbp+0x13c0]
301a78  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301a7d  e8 ee 4c ff ff                 call   0x2f6770 ; STRING getter=0x2f6770 TinCanAlarm
301a82  48 8b c8                       mov    rcx,rax
301a85  e8 aa c3 fc ff                 call   0x2cde34
301a8a  48 8b d0                       mov    rdx,rax
301a8d  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301a92  e8 d1 31 fd ff                 call   0x2d4c68
301a97  0f 10 05 fa a8 0e 00           movups xmm0,XMMWORD PTR [rip+0xea8fa]        # 0x3ec398 ; CONFIG C.TinCanColor value(+0x48)
301a9e  8a 1d b4 83 0e 00              mov    bl,BYTE PTR [rip+0xe83b4]        # 0x3e9e58 ; CONFIG Bools.tunacanalarm value(+0x48)
301aa4  33 f6                          xor    esi,esi
301aa6  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301aaa  84 db                          test   bl,bl
301aac  74 0e                          je     0x301abc
301aae  40 84 ff                       test   dil,dil
301ab1  74 09                          je     0x301abc
301ab3  44 8d 76 01                    lea    r14d,[rsi+0x1]
301ab7  41 8a ce                       mov    cl,r14b
301aba  eb 09                          jmp    0x301ac5
301abc  40 8a ce                       mov    cl,sil
301abf  41 be 01 00 00 00              mov    r14d,0x1
301ac5  40 38 35 1c 71 0e 00           cmp    BYTE PTR [rip+0xe711c],sil        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
301acc  8b 05 d6 d0 0e 00              mov    eax,DWORD PTR [rip+0xed0d6]        # 0x3eeba8 ; CONFIG i.tincandistance value(+0x48)
301ad2  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301ad5  8b 05 6d d6 0e 00              mov    eax,DWORD PTR [rip+0xed66d]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
301adb  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301ade  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301ae1  44 88 b5 d8 00 00 00           mov    BYTE PTR [rbp+0xd8],r14b
301ae8  c7 85 d0 00 00 00 0c 00 00 00  mov    DWORD PTR [rbp+0xd0],0xc
301af2  c7 85 d4 00 00 00 32 00 00 00  mov    DWORD PTR [rbp+0xd4],0x32
301afc  74 08                          je     0x301b06
301afe  44 88 75 b8                    mov    BYTE PTR [rbp-0x48],r14b
301b02  84 c9                          test   cl,cl
301b04  75 04                          jne    0x301b0a
301b06  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301b0a  48 8d 0d 6f 68 0e 00           lea    rcx,[rip+0xe686f]        # 0x3e8380
301b11  e8 e6 dc fe ff                 call   0x2ef7fc
301b16  84 c0                          test   al,al
301b18  74 08                          je     0x301b22
301b1a  44 88 75 c7                    mov    BYTE PTR [rbp-0x39],r14b
301b1e  84 db                          test   bl,bl
301b20  75 04                          jne    0x301b26
301b22  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301b26  8a 05 2c 51 0e 00              mov    al,BYTE PTR [rip+0xe512c]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
301b2c  48 8d 95 98 19 00 00           lea    rdx,[rbp+0x1998]
301b33  f3 0f 10 05 3d ba 0e 00        movss  xmm0,DWORD PTR [rip+0xeba3d]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
301b3b  48 8d 0d f6 e9 0e 00           lea    rcx,[rip+0xee9f6]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
301b42  4d 8b c6                       mov    r8,r14
301b45  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
301b4a  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
301b4d  e8 9e 7d fe ff                 call   0x2e98f0
301b52  48 8b c8                       mov    rcx,rax
301b55  e8 16 32 fd ff                 call   0x2d4d70
301b5a  84 c0                          test   al,al
301b5c  0f 85 3f 05 00 00              jne    0x3020a1
301b62  40 38 35 4f 41 0e 00           cmp    BYTE PTR [rip+0xe414f],sil        # 0x3e5cb8
301b69  0f 84 32 05 00 00              je     0x3020a1
301b6f  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
301b73  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301b77  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301b7b  e9 21 05 00 00                 jmp    0x3020a1
301b80  83 f9 4b                       cmp    ecx,0x4b
301b83  0f 85 79 01 00 00              jne    0x301d02
301b89  48 8d 95 cd 0a 00 00           lea    rdx,[rbp+0xacd]
301b90  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301b95  e8 4e 4d ff ff                 call   0x2f68e8 ; STRING getter=0x2f68e8 FlameT
301b9a  48 8b c8                       mov    rcx,rax
301b9d  e8 52 c1 fc ff                 call   0x2cdcf4
301ba2  48 8b d0                       mov    rdx,rax
301ba5  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301baa  e8 b9 30 fd ff                 call   0x2d4c68
301baf  0f 10 05 02 a9 0e 00           movups xmm0,XMMWORD PTR [rip+0xea902]        # 0x3ec4b8 ; CONFIG C.FlameTrapColor value(+0x48)
301bb6  8a 15 7c 6b 0e 00              mov    dl,BYTE PTR [rip+0xe6b7c]        # 0x3e8738 ; CONFIG Bools.FlameTrapESP value(+0x48)
301bbc  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301bc0  84 d2                          test   dl,dl
301bc2  74 0d                          je     0x301bd1
301bc4  40 84 ff                       test   dil,dil
301bc7  74 08                          je     0x301bd1
301bc9  40 8a ce                       mov    cl,sil
301bcc  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301bcf  eb 05                          jmp    0x301bd6
301bd1  8a cb                          mov    cl,bl
301bd3  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
301bd6  38 1d 0c 70 0e 00              cmp    BYTE PTR [rip+0xe700c],bl        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
301bdc  8b 05 b6 d0 0e 00              mov    eax,DWORD PTR [rip+0xed0b6]        # 0x3eec98 ; CONFIG i.flametrapdist value(+0x48)
301be2  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301be5  8b 05 5d d5 0e 00              mov    eax,DWORD PTR [rip+0xed55d]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
301beb  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301bee  40 88 b5 d8 00 00 00           mov    BYTE PTR [rbp+0xd8],sil
301bf5  c7 85 d0 00 00 00 0c 00 00 00  mov    DWORD PTR [rbp+0xd0],0xc
301bff  c7 85 d4 00 00 00 32 00 00 00  mov    DWORD PTR [rbp+0xd4],0x32
301c09  74 08                          je     0x301c13
301c0b  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301c0f  84 c9                          test   cl,cl
301c11  75 03                          jne    0x301c16
301c13  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
301c16  38 1d ac 67 0e 00              cmp    BYTE PTR [rip+0xe67ac],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
301c1c  75 08                          jne    0x301c26
301c1e  38 1d 94 86 0e 00              cmp    BYTE PTR [rip+0xe8694],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301c24  74 08                          je     0x301c2e
301c26  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301c2a  84 d2                          test   dl,dl
301c2c  75 03                          jne    0x301c31
301c2e  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
301c31  8a 05 21 50 0e 00              mov    al,BYTE PTR [rip+0xe5021]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
301c37  48 8d 95 a8 19 00 00           lea    rdx,[rbp+0x19a8]
301c3e  f3 0f 10 05 32 b9 0e 00        movss  xmm0,DWORD PTR [rip+0xeb932]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
301c46  48 8d 0d eb e8 0e 00           lea    rcx,[rip+0xee8eb]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
301c4d  4c 8b c6                       mov    r8,rsi
301c50  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
301c55  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
301c58  e8 93 7c fe ff                 call   0x2e98f0
301c5d  48 8b c8                       mov    rcx,rax
301c60  e8 0b 31 fd ff                 call   0x2d4d70
301c65  84 c0                          test   al,al
301c67  75 11                          jne    0x301c7a
301c69  38 1d 49 40 0e 00              cmp    BYTE PTR [rip+0xe4049],bl        # 0x3e5cb8
301c6f  74 09                          je     0x301c7a
301c71  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
301c74  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
301c77  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
301c7a  ba 07 00 00 00                 mov    edx,0x7
301c7f  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301c84  e8 7b 8b fe ff                 call   0x2ea804
301c89  38 5d c4                       cmp    BYTE PTR [rbp-0x3c],bl
301c8c  0f 84 2f 36 00 00              je     0x3052c1
301c92  ba cc 02 00 00                 mov    edx,0x2cc
301c97  49 8b cd                       mov    rcx,r13
301c9a  e8 9d d1 fd ff                 call   0x2dee3c
301c9f  ba d0 02 00 00                 mov    edx,0x2d0
301ca4  49 8b cd                       mov    rcx,r13
301ca7  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
301cab  e8 8c d1 fd ff                 call   0x2dee3c
301cb0  4c 8b c6                       mov    r8,rsi
301cb3  48 8d 95 b8 19 00 00           lea    rdx,[rbp+0x19b8]
301cba  48 8d 0d 07 e9 0e 00           lea    rcx,[rip+0xee907]        # 0x3f05c8 ; CONFIG VectorBools.flameTrapOptions value(+0x48)
301cc1  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
301cc5  e8 26 7c fe ff                 call   0x2e98f0
301cca  48 8b c8                       mov    rcx,rax
301ccd  e8 9e 30 fd ff                 call   0x2d4d70
301cd2  84 c0                          test   al,al
301cd4  74 19                          je     0x301cef
301cd6  f3 0f 2c c6                    cvttss2si eax,xmm6
301cda  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
301ce0  f3 0f 2c c7                    cvttss2si eax,xmm7
301ce4  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
301cea  e9 d2 35 00 00                 jmp    0x3052c1
301cef  48 8d 95 c8 19 00 00           lea    rdx,[rbp+0x19c8]
301cf6  48 8d 0d cb e8 0e 00           lea    rcx,[rip+0xee8cb]        # 0x3f05c8 ; CONFIG VectorBools.flameTrapOptions value(+0x48)
301cfd  e9 b4 07 00 00                 jmp    0x3024b6
301d02  83 f9 11                       cmp    ecx,0x11
301d05  0f 85 32 01 00 00              jne    0x301e3d
301d0b  38 1d 57 58 0e 00              cmp    BYTE PTR [rip+0xe5857],bl        # 0x3e7568 ; CONFIG Bools.recycler value(+0x48)
301d11  0f 84 aa 35 00 00              je     0x3052c1
301d17  ba d8 01 00 00                 mov    edx,0x1d8
301d1c  49 8b cd                       mov    rcx,r13
301d1f  e8 18 d1 fd ff                 call   0x2dee3c
301d24  48 8d 95 86 0e 00 00           lea    rdx,[rbp+0xe86]
301d2b  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301d30  0f bf 18                       movsx  ebx,WORD PTR [rax]
301d33  41 23 d9                       and    ebx,r9d
301d36  e8 35 4d ff ff                 call   0x2f6a70 ; STRING getter=0x2f6a70 Recycler
301d3b  48 8b c8                       mov    rcx,rax
301d3e  e8 49 7e fe ff                 call   0x2e9b8c
301d43  48 8b d0                       mov    rdx,rax
301d46  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301d4b  e8 18 2f fd ff                 call   0x2d4c68
301d50  0f 10 05 41 91 0e 00           movups xmm0,XMMWORD PTR [rip+0xe9141]        # 0x3eae98 ; CONFIG C.RecyclerC value(+0x48)
301d57  8a 15 0b 58 0e 00              mov    dl,BYTE PTR [rip+0xe580b]        # 0x3e7568 ; CONFIG Bools.recycler value(+0x48)
301d5d  33 f6                          xor    esi,esi
301d5f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301d63  84 d2                          test   dl,dl
301d65  74 0e                          je     0x301d75
301d67  40 84 ff                       test   dil,dil
301d6a  74 09                          je     0x301d75
301d6c  44 8d 76 01                    lea    r14d,[rsi+0x1]
301d70  41 8a ce                       mov    cl,r14b
301d73  eb 09                          jmp    0x301d7e
301d75  40 8a ce                       mov    cl,sil
301d78  41 be 01 00 00 00              mov    r14d,0x1
301d7e  40 38 35 b3 6e 0e 00           cmp    BYTE PTR [rip+0xe6eb3],sil        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
301d85  8b 05 4d cb 0e 00              mov    eax,DWORD PTR [rip+0xecb4d]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
301d8b  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301d8e  8b 05 f4 d4 0e 00              mov    eax,DWORD PTR [rip+0xed4f4]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
301d94  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301d97  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301d9a  74 08                          je     0x301da4
301d9c  44 88 75 b8                    mov    BYTE PTR [rbp-0x48],r14b
301da0  84 c9                          test   cl,cl
301da2  75 04                          jne    0x301da8
301da4  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301da8  40 38 35 19 66 0e 00           cmp    BYTE PTR [rip+0xe6619],sil        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
301daf  75 09                          jne    0x301dba
301db1  40 38 35 00 85 0e 00           cmp    BYTE PTR [rip+0xe8500],sil        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301db8  74 08                          je     0x301dc2
301dba  44 88 75 c7                    mov    BYTE PTR [rbp-0x39],r14b
301dbe  84 d2                          test   dl,dl
301dc0  75 04                          jne    0x301dc6
301dc2  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301dc6  8a 05 3c 4e 0e 00              mov    al,BYTE PTR [rip+0xe4e3c]        # 0x3e6c08 ; CONFIG Bools.DeployableIcons value(+0x48)
301dcc  48 8d 95 d8 19 00 00           lea    rdx,[rbp+0x19d8]
301dd3  f3 0f 10 05 4d b7 0e 00        movss  xmm0,DWORD PTR [rip+0xeb74d]        # 0x3ed528 ; CONFIG F.DeployableIconsMult value(+0x48)
301ddb  48 8d 0d 56 e7 0e 00           lea    rcx,[rip+0xee756]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
301de2  41 b8 08 00 00 00              mov    r8d,0x8
301de8  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
301ded  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
301df0  e8 fb 7a fe ff                 call   0x2e98f0
301df5  48 8b c8                       mov    rcx,rax
301df8  e8 73 2f fd ff                 call   0x2d4d70
301dfd  84 c0                          test   al,al
301dff  75 15                          jne    0x301e16
301e01  40 38 35 b0 3e 0e 00           cmp    BYTE PTR [rip+0xe3eb0],sil        # 0x3e5cb8
301e08  74 0c                          je     0x301e16
301e0a  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
301e0e  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301e12  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301e16  ba 06 00 00 00                 mov    edx,0x6
301e1b  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301e20  e8 df 89 fe ff                 call   0x2ea804
301e25  85 db                          test   ebx,ebx
301e27  0f 84 94 34 00 00              je     0x3052c1
301e2d  48 8d 15 28 08 f9 ff           lea    rdx,[rip+0xfffffffffff90828]        # 0x29265c
301e34  48 8d 4d d8                    lea    rcx,[rbp-0x28]
301e38  e9 1c 05 00 00                 jmp    0x302359
301e3d  83 f9 12                       cmp    ecx,0x12
301e40  75 68                          jne    0x301eaa
301e42  38 1d 50 4f 0e 00              cmp    BYTE PTR [rip+0xe4f50],bl        # 0x3e6d98 ; CONFIG Bools.HBHFSensor value(+0x48)
301e48  0f 84 73 34 00 00              je     0x3052c1
301e4e  8b 05 84 ca 0e 00              mov    eax,DWORD PTR [rip+0xeca84]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
301e54  40 84 ff                       test   dil,dil
301e57  0f 10 05 3a 8a 0e 00           movups xmm0,XMMWORD PTR [rip+0xe8a3a]        # 0x3ea898 ; CONFIG C.HBHFSensorColor value(+0x48)
301e5e  0f 95 c1                       setne  cl
301e61  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301e64  38 1d ce 6d 0e 00              cmp    BYTE PTR [rip+0xe6dce],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
301e6a  8b 05 18 d4 0e 00              mov    eax,DWORD PTR [rip+0xed418]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
301e70  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301e73  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301e77  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301e7a  74 08                          je     0x301e84
301e7c  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301e80  84 c9                          test   cl,cl
301e82  75 03                          jne    0x301e87
301e84  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
301e87  38 1d 3b 65 0e 00              cmp    BYTE PTR [rip+0xe653b],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
301e8d  75 0b                          jne    0x301e9a
301e8f  38 1d 23 84 0e 00              cmp    BYTE PTR [rip+0xe8423],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301e95  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
301e98  74 04                          je     0x301e9e
301e9a  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301e9e  48 8d 95 e8 19 00 00           lea    rdx,[rbp+0x19e8]
301ea5  e9 62 3a 00 00                 jmp    0x30590c
301eaa  83 f9 13                       cmp    ecx,0x13
301ead  75 68                          jne    0x301f17
301eaf  38 1d 33 4f 0e 00              cmp    BYTE PTR [rip+0xe4f33],bl        # 0x3e6de8 ; CONFIG Bools.SeismicSensor value(+0x48)
301eb5  0f 84 06 34 00 00              je     0x3052c1
301ebb  8b 05 17 ca 0e 00              mov    eax,DWORD PTR [rip+0xeca17]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
301ec1  40 84 ff                       test   dil,dil
301ec4  0f 10 05 2d 8a 0e 00           movups xmm0,XMMWORD PTR [rip+0xe8a2d]        # 0x3ea8f8 ; CONFIG C.SeismicSensorColor value(+0x48)
301ecb  0f 95 c1                       setne  cl
301ece  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301ed1  38 1d 61 6d 0e 00              cmp    BYTE PTR [rip+0xe6d61],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
301ed7  8b 05 ab d3 0e 00              mov    eax,DWORD PTR [rip+0xed3ab]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
301edd  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301ee0  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301ee4  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301ee7  74 08                          je     0x301ef1
301ee9  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301eed  84 c9                          test   cl,cl
301eef  75 03                          jne    0x301ef4
301ef1  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
301ef4  38 1d ce 64 0e 00              cmp    BYTE PTR [rip+0xe64ce],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
301efa  75 0b                          jne    0x301f07
301efc  38 1d b6 83 0e 00              cmp    BYTE PTR [rip+0xe83b6],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301f02  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
301f05  74 04                          je     0x301f0b
301f07  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301f0b  48 8d 95 f8 19 00 00           lea    rdx,[rbp+0x19f8]
301f12  e9 f5 39 00 00                 jmp    0x30590c
301f17  83 f9 14                       cmp    ecx,0x14
301f1a  0f 85 87 00 00 00              jne    0x301fa7
301f20  48 8d 0d d9 4d 0e 00           lea    rcx,[rip+0xe4dd9]        # 0x3e6d00
301f27  e8 d0 d8 fe ff                 call   0x2ef7fc
301f2c  84 c0                          test   al,al
301f2e  0f 84 8d 33 00 00              je     0x3052c1
301f34  0f 10 05 fd 88 0e 00           movups xmm0,XMMWORD PTR [rip+0xe88fd]        # 0x3ea838 ; CONFIG C.LargeBatteryColor value(+0x48)
301f3b  8a 15 07 4e 0e 00              mov    dl,BYTE PTR [rip+0xe4e07]        # 0x3e6d48 ; CONFIG Bools.LargeBattery value(+0x48)
301f41  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301f45  84 d2                          test   dl,dl
301f47  74 0d                          je     0x301f56
301f49  40 84 ff                       test   dil,dil
301f4c  74 08                          je     0x301f56
301f4e  40 8a ce                       mov    cl,sil
301f51  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301f54  eb 05                          jmp    0x301f5b
301f56  8a cb                          mov    cl,bl
301f58  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
301f5b  38 1d d7 6c 0e 00              cmp    BYTE PTR [rip+0xe6cd7],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
301f61  8b 05 71 c9 0e 00              mov    eax,DWORD PTR [rip+0xec971]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
301f67  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
301f6a  8b 05 18 d3 0e 00              mov    eax,DWORD PTR [rip+0xed318]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
301f70  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
301f73  74 08                          je     0x301f7d
301f75  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
301f79  84 c9                          test   cl,cl
301f7b  75 03                          jne    0x301f80
301f7d  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
301f80  38 1d 42 64 0e 00              cmp    BYTE PTR [rip+0xe6442],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
301f86  75 08                          jne    0x301f90
301f88  38 1d 2a 83 0e 00              cmp    BYTE PTR [rip+0xe832a],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
301f8e  74 08                          je     0x301f98
301f90  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
301f94  84 d2                          test   dl,dl
301f96  75 03                          jne    0x301f9b
301f98  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
301f9b  48 8d 95 08 1a 00 00           lea    rdx,[rbp+0x1a08]
301fa2  e9 65 39 00 00                 jmp    0x30590c
301fa7  83 f9 53                       cmp    ecx,0x53
301faa  0f 85 fb 00 00 00              jne    0x3020ab
301fb0  48 8d 95 54 09 00 00           lea    rdx,[rbp+0x954]
301fb7  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
301fbc  e8 27 4b ff ff                 call   0x2f6ae8 ; STRING getter=0x2f6ae8 Mine
301fc1  48 8b c8                       mov    rcx,rax
301fc4  e8 03 bd fc ff                 call   0x2cdccc
301fc9  48 8b d0                       mov    rdx,rax
301fcc  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
301fd1  e8 92 2c fd ff                 call   0x2d4c68
301fd6  0f 10 05 9b a5 0e 00           movups xmm0,XMMWORD PTR [rip+0xea59b]        # 0x3ec578 ; CONFIG C.LandMineColor value(+0x48)
301fdd  8a 15 a5 67 0e 00              mov    dl,BYTE PTR [rip+0xe67a5]        # 0x3e8788 ; CONFIG Bools.LandmineESP value(+0x48)
301fe3  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
301fe7  84 d2                          test   dl,dl
301fe9  74 0d                          je     0x301ff8
301feb  40 84 ff                       test   dil,dil
301fee  74 08                          je     0x301ff8
301ff0  40 8a ce                       mov    cl,sil
301ff3  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
301ff6  eb 05                          jmp    0x301ffd
301ff8  8a cb                          mov    cl,bl
301ffa  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
301ffd  38 1d e5 6b 0e 00              cmp    BYTE PTR [rip+0xe6be5],bl        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
302003  8b 05 af ca 0e 00              mov    eax,DWORD PTR [rip+0xecaaf]        # 0x3eeab8 ; CONFIG i.landminedist value(+0x48)
302009  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30200c  8b 05 36 d1 0e 00              mov    eax,DWORD PTR [rip+0xed136]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
302012  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
302015  74 08                          je     0x30201f
302017  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30201b  84 c9                          test   cl,cl
30201d  75 03                          jne    0x302022
30201f  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
302022  38 1d a0 63 0e 00              cmp    BYTE PTR [rip+0xe63a0],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
302028  75 08                          jne    0x302032
30202a  38 1d 88 82 0e 00              cmp    BYTE PTR [rip+0xe8288],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
302030  74 08                          je     0x30203a
302032  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
302036  84 d2                          test   dl,dl
302038  75 03                          jne    0x30203d
30203a  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
30203d  8a 05 15 4c 0e 00              mov    al,BYTE PTR [rip+0xe4c15]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
302043  48 8d 95 18 1a 00 00           lea    rdx,[rbp+0x1a18]
30204a  f3 0f 10 05 26 b5 0e 00        movss  xmm0,DWORD PTR [rip+0xeb526]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
302052  48 8d 0d df e4 0e 00           lea    rcx,[rip+0xee4df]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
302059  4c 8b c6                       mov    r8,rsi
30205c  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
302061  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
302064  40 88 b5 d8 00 00 00           mov    BYTE PTR [rbp+0xd8],sil
30206b  c7 85 d0 00 00 00 0c 00 00 00  mov    DWORD PTR [rbp+0xd0],0xc
302075  c7 85 d4 00 00 00 32 00 00 00  mov    DWORD PTR [rbp+0xd4],0x32
30207f  e8 6c 78 fe ff                 call   0x2e98f0
302084  48 8b c8                       mov    rcx,rax
302087  e8 e4 2c fd ff                 call   0x2d4d70
30208c  84 c0                          test   al,al
30208e  75 11                          jne    0x3020a1
302090  38 1d 22 3c 0e 00              cmp    BYTE PTR [rip+0xe3c22],bl        # 0x3e5cb8
302096  74 09                          je     0x3020a1
302098  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30209b  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
30209e  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3020a1  ba 07 00 00 00                 mov    edx,0x7
3020a6  e9 ab 38 00 00                 jmp    0x305956
3020ab  83 f9 54                       cmp    ecx,0x54
3020ae  0f 85 af 02 00 00              jne    0x302363
3020b4  48 8d 95 6c 04 00 00           lea    rdx,[rbp+0x46c]
3020bb  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3020c0  e8 77 4a ff ff                 call   0x2f6b3c ; STRING getter=0x2f6b3c Sam
3020c5  48 8b c8                       mov    rcx,rax
3020c8  e8 4f e3 01 00                 call   0x32041c
3020cd  48 8b d0                       mov    rdx,rax
3020d0  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3020d5  e8 8e 2b fd ff                 call   0x2d4c68
3020da  0f 10 05 77 a3 0e 00           movups xmm0,XMMWORD PTR [rip+0xea377]        # 0x3ec458 ; CONFIG C.SamsiteColor value(+0x48)
3020e1  8a 15 f1 66 0e 00              mov    dl,BYTE PTR [rip+0xe66f1]        # 0x3e87d8 ; CONFIG Bools.SamsiteESP value(+0x48)
3020e7  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3020eb  84 d2                          test   dl,dl
3020ed  74 1d                          je     0x30210c
3020ef  40 84 ff                       test   dil,dil
3020f2  74 18                          je     0x30210c
3020f4  38 1d 2e 67 0e 00              cmp    BYTE PTR [rip+0xe672e],bl        # 0x3e8828 ; CONFIG Bools.UseCachedPositions value(+0x48)
3020fa  75 10                          jne    0x30210c
3020fc  38 9d e8 29 00 00              cmp    BYTE PTR [rbp+0x29e8],bl
302102  74 08                          je     0x30210c
302104  40 8a ce                       mov    cl,sil
302107  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30210a  eb 05                          jmp    0x302111
30210c  8a cb                          mov    cl,bl
30210e  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
302111  38 1d d1 6a 0e 00              cmp    BYTE PTR [rip+0xe6ad1],bl        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
302117  8b 05 db ca 0e 00              mov    eax,DWORD PTR [rip+0xecadb]        # 0x3eebf8 ; CONFIG i.samsitedist value(+0x48)
30211d  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
302120  8b 05 22 d0 0e 00              mov    eax,DWORD PTR [rip+0xed022]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
302126  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
302129  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
30212f  74 08                          je     0x302139
302131  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
302135  84 c9                          test   cl,cl
302137  75 03                          jne    0x30213c
302139  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
30213c  38 1d 86 62 0e 00              cmp    BYTE PTR [rip+0xe6286],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
302142  75 08                          jne    0x30214c
302144  38 1d 6e 81 0e 00              cmp    BYTE PTR [rip+0xe816e],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
30214a  74 08                          je     0x302154
30214c  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
302150  84 d2                          test   dl,dl
302152  75 03                          jne    0x302157
302154  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
302157  8a 05 fb 4a 0e 00              mov    al,BYTE PTR [rip+0xe4afb]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
30215d  48 8d 95 28 1a 00 00           lea    rdx,[rbp+0x1a28]
302164  f3 0f 10 05 0c b4 0e 00        movss  xmm0,DWORD PTR [rip+0xeb40c]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
30216c  48 8d 0d c5 e3 0e 00           lea    rcx,[rip+0xee3c5]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
302173  4c 8b c6                       mov    r8,rsi
302176  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
30217b  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
30217e  e8 6d 77 fe ff                 call   0x2e98f0
302183  48 8b c8                       mov    rcx,rax
302186  e8 e5 2b fd ff                 call   0x2d4d70
30218b  84 c0                          test   al,al
30218d  75 11                          jne    0x3021a0
30218f  38 1d 23 3b 0e 00              cmp    BYTE PTR [rip+0xe3b23],bl        # 0x3e5cb8
302195  74 09                          je     0x3021a0
302197  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30219a  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
30219d  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3021a0  ba 07 00 00 00                 mov    edx,0x7
3021a5  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3021aa  e8 55 86 fe ff                 call   0x2ea804
3021af  38 1d 23 66 0e 00              cmp    BYTE PTR [rip+0xe6623],bl        # 0x3e87d8 ; CONFIG Bools.SamsiteESP value(+0x48)
3021b5  75 0c                          jne    0x3021c3
3021b7  38 1d cb 83 0e 00              cmp    BYTE PTR [rip+0xe83cb],bl        # 0x3ea588 ; CONFIG Bools.SamSiteAlert value(+0x48)
3021bd  0f 84 fe 30 00 00              je     0x3052c1
3021c3  49 8b cd                       mov    rcx,r13
3021c6  e8 f5 49 06 00                 call   0x366bc0
3021cb  49 8b cd                       mov    rcx,r13
3021ce  40 8a f8                       mov    dil,al
3021d1  e8 1a 4a 06 00                 call   0x366bf0
3021d6  33 f6                          xor    esi,esi
3021d8  8a d8                          mov    bl,al
3021da  40 38 75 c4                    cmp    BYTE PTR [rbp-0x3c],sil
3021de  0f 84 dd 30 00 00              je     0x3052c1
3021e4  ba cc 02 00 00                 mov    edx,0x2cc
3021e9  49 8b cd                       mov    rcx,r13
3021ec  e8 4b cc fd ff                 call   0x2dee3c
3021f1  ba d0 02 00 00                 mov    edx,0x2d0
3021f6  49 8b cd                       mov    rcx,r13
3021f9  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3021fd  e8 3a cc fd ff                 call   0x2dee3c
302202  4c 8d 35 7f e1 0e 00           lea    r14,[rip+0xee17f]        # 0x3f0388 ; CONFIG VectorBools.SamsiteOptions value(+0x48)
302209  44 8d 46 04                    lea    r8d,[rsi+0x4]
30220d  49 8b ce                       mov    rcx,r14
302210  48 8d 95 38 1a 00 00           lea    rdx,[rbp+0x1a38]
302217  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
30221b  e8 d0 76 fe ff                 call   0x2e98f0
302220  48 8b c8                       mov    rcx,rax
302223  e8 48 2b fd ff                 call   0x2d4d70
302228  84 c0                          test   al,al
30222a  74 0d                          je     0x302239
30222c  0f b6 4d c4                    movzx  ecx,BYTE PTR [rbp-0x3c]
302230  40 84 ff                       test   dil,dil
302233  0f 45 ce                       cmovne ecx,esi
302236  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
302239  41 b8 03 00 00 00              mov    r8d,0x3
30223f  48 8d 95 48 1a 00 00           lea    rdx,[rbp+0x1a48]
302246  49 8b ce                       mov    rcx,r14
302249  e8 a2 76 fe ff                 call   0x2e98f0
30224e  48 8b c8                       mov    rcx,rax
302251  e8 1a 2b fd ff                 call   0x2d4d70
302256  84 c0                          test   al,al
302258  74 09                          je     0x302263
30225a  8a c3                          mov    al,bl
30225c  f6 d8                          neg    al
30225e  1a c9                          sbb    cl,cl
302260  20 4d c4                       and    BYTE PTR [rbp-0x3c],cl
302263  41 b8 01 00 00 00              mov    r8d,0x1
302269  48 8d 95 58 1a 00 00           lea    rdx,[rbp+0x1a58]
302270  49 8b ce                       mov    rcx,r14
302273  e8 78 76 fe ff                 call   0x2e98f0
302278  48 8b c8                       mov    rcx,rax
30227b  e8 f0 2a fd ff                 call   0x2d4d70
302280  84 c0                          test   al,al
302282  74 16                          je     0x30229a
302284  f3 0f 2c c6                    cvttss2si eax,xmm6
302288  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
30228e  f3 0f 2c c7                    cvttss2si eax,xmm7
302292  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
302298  eb 32                          jmp    0x3022cc
30229a  45 33 c0                       xor    r8d,r8d
30229d  48 8d 95 68 1a 00 00           lea    rdx,[rbp+0x1a68]
3022a4  49 8b ce                       mov    rcx,r14
3022a7  e8 44 76 fe ff                 call   0x2e98f0
3022ac  48 8b c8                       mov    rcx,rax
3022af  e8 bc 2a fd ff                 call   0x2d4d70
3022b4  84 c0                          test   al,al
3022b6  74 14                          je     0x3022cc
3022b8  f3 0f 2c c6                    cvttss2si eax,xmm6
3022bc  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
3022c2  f3 0f 2c c7                    cvttss2si eax,xmm7
3022c6  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
3022cc  41 b8 02 00 00 00              mov    r8d,0x2
3022d2  48 8d 95 78 1a 00 00           lea    rdx,[rbp+0x1a78]
3022d9  49 8b ce                       mov    rcx,r14
3022dc  e8 0f 76 fe ff                 call   0x2e98f0
3022e1  48 8b c8                       mov    rcx,rax
3022e4  e8 87 2a fd ff                 call   0x2d4d70
3022e9  84 c0                          test   al,al
3022eb  0f 84 d0 2f 00 00              je     0x3052c1
3022f1  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3022f6  84 db                          test   bl,bl
3022f8  74 16                          je     0x302310
3022fa  48 8d 95 59 09 00 00           lea    rdx,[rbp+0x959]
302301  e8 be 49 ff ff                 call   0x2f6cc4 ; STRING getter=0x2f6cc4 [On]
302306  48 8b c8                       mov    rcx,rax
302309  e8 be b9 fc ff                 call   0x2cdccc
30230e  eb 14                          jmp    0x302324
302310  48 8d 95 34 0a 00 00           lea    rdx,[rbp+0xa34]
302317  e8 34 4a ff ff                 call   0x2f6d50 ; STRING getter=0x2f6d50 [Off]
30231c  48 8b c8                       mov    rcx,rax
30231f  e8 b8 61 fd ff                 call   0x2d84dc
302324  48 8b d0                       mov    rdx,rax
302327  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30232b  e8 38 29 fd ff                 call   0x2d4c68
302330  40 84 ff                       test   dil,dil
302333  0f 84 88 2f 00 00              je     0x3052c1
302339  48 8d 95 6b 11 00 00           lea    rdx,[rbp+0x116b]
302340  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
302345  e8 66 4a ff ff                 call   0x2f6db0 ; STRING getter=0x2f6db0 [Defender]
30234a  48 8b c8                       mov    rcx,rax
30234d  e8 02 79 fe ff                 call   0x2e9c54
302352  48 8d 4d f8                    lea    rcx,[rbp-0x8]
302356  48 8b d0                       mov    rdx,rax
302359  e8 0a 29 fd ff                 call   0x2d4c68
30235e  e9 5e 2f 00 00                 jmp    0x3052c1
302363  83 f9 55                       cmp    ecx,0x55
302366  0f 85 7b 01 00 00              jne    0x3024e7
30236c  48 8d 95 5e 09 00 00           lea    rdx,[rbp+0x95e]
302373  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
302378  e8 23 4b ff ff                 call   0x2f6ea0 ; STRING getter=0x2f6ea0 GunT
30237d  48 8b c8                       mov    rcx,rax
302380  e8 47 b9 fc ff                 call   0x2cdccc
302385  48 8b d0                       mov    rdx,rax
302388  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30238d  e8 d6 28 fd ff                 call   0x2d4c68
302392  0f 10 05 5f a0 0e 00           movups xmm0,XMMWORD PTR [rip+0xea05f]        # 0x3ec3f8 ; CONFIG C.GuntrapColor value(+0x48)
302399  8a 15 d9 64 0e 00              mov    dl,BYTE PTR [rip+0xe64d9]        # 0x3e8878 ; CONFIG Bools.ShotgunTrapESP value(+0x48)
30239f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3023a3  84 d2                          test   dl,dl
3023a5  74 0d                          je     0x3023b4
3023a7  40 84 ff                       test   dil,dil
3023aa  74 08                          je     0x3023b4
3023ac  40 8a ce                       mov    cl,sil
3023af  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3023b2  eb 05                          jmp    0x3023b9
3023b4  8a cb                          mov    cl,bl
3023b6  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3023b9  38 1d 29 68 0e 00              cmp    BYTE PTR [rip+0xe6829],bl        # 0x3e8be8 ; CONFIG Bools.TrapChams value(+0x48)
3023bf  8b 05 83 c8 0e 00              mov    eax,DWORD PTR [rip+0xec883]        # 0x3eec48 ; CONFIG i.guntrapdist value(+0x48)
3023c5  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3023c8  8b 05 7a cd 0e 00              mov    eax,DWORD PTR [rip+0xecd7a]        # 0x3ef148 ; CONFIG i.TrapsChamIndex value(+0x48)
3023ce  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3023d1  88 9d d8 00 00 00              mov    BYTE PTR [rbp+0xd8],bl
3023d7  74 08                          je     0x3023e1
3023d9  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3023dd  84 c9                          test   cl,cl
3023df  75 03                          jne    0x3023e4
3023e1  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3023e4  38 1d de 5f 0e 00              cmp    BYTE PTR [rip+0xe5fde],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3023ea  75 08                          jne    0x3023f4
3023ec  38 1d c6 7e 0e 00              cmp    BYTE PTR [rip+0xe7ec6],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3023f2  74 08                          je     0x3023fc
3023f4  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3023f8  84 d2                          test   dl,dl
3023fa  75 03                          jne    0x3023ff
3023fc  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3023ff  8a 05 53 48 0e 00              mov    al,BYTE PTR [rip+0xe4853]        # 0x3e6c58 ; CONFIG Bools.TrapIcons value(+0x48)
302405  48 8d 95 88 1a 00 00           lea    rdx,[rbp+0x1a88]
30240c  f3 0f 10 05 64 b1 0e 00        movss  xmm0,DWORD PTR [rip+0xeb164]        # 0x3ed578 ; CONFIG F.TrapIconsMult value(+0x48)
302414  48 8d 0d 1d e1 0e 00           lea    rcx,[rip+0xee11d]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
30241b  4c 8b c6                       mov    r8,rsi
30241e  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
302423  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
302426  e8 c5 74 fe ff                 call   0x2e98f0
30242b  48 8b c8                       mov    rcx,rax
30242e  e8 3d 29 fd ff                 call   0x2d4d70
302433  84 c0                          test   al,al
302435  75 11                          jne    0x302448
302437  38 1d 7b 38 0e 00              cmp    BYTE PTR [rip+0xe387b],bl        # 0x3e5cb8
30243d  74 09                          je     0x302448
30243f  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
302442  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
302445  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
302448  ba 07 00 00 00                 mov    edx,0x7
30244d  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
302452  e8 ad 83 fe ff                 call   0x2ea804
302457  38 5d c4                       cmp    BYTE PTR [rbp-0x3c],bl
30245a  0f 84 61 2e 00 00              je     0x3052c1
302460  ba cc 02 00 00                 mov    edx,0x2cc
302465  49 8b cd                       mov    rcx,r13
302468  e8 cf c9 fd ff                 call   0x2dee3c
30246d  ba d0 02 00 00                 mov    edx,0x2d0
302472  49 8b cd                       mov    rcx,r13
302475  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
302479  e8 be c9 fd ff                 call   0x2dee3c
30247e  4c 8b c6                       mov    r8,rsi
302481  48 8d 95 88 1f 00 00           lea    rdx,[rbp+0x1f88]
302488  48 8d 0d 89 df 0e 00           lea    rcx,[rip+0xedf89]        # 0x3f0418 ; CONFIG VectorBools.gunTrapOptions value(+0x48)
30248f  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
302493  e8 58 74 fe ff                 call   0x2e98f0
302498  48 8b c8                       mov    rcx,rax
30249b  e8 d0 28 fd ff                 call   0x2d4d70
3024a0  84 c0                          test   al,al
3024a2  0f 85 2e f8 ff ff              jne    0x301cd6
3024a8  48 8d 95 98 1a 00 00           lea    rdx,[rbp+0x1a98]
3024af  48 8d 0d 62 df 0e 00           lea    rcx,[rip+0xedf62]        # 0x3f0418 ; CONFIG VectorBools.gunTrapOptions value(+0x48)
3024b6  45 33 c0                       xor    r8d,r8d
3024b9  e8 32 74 fe ff                 call   0x2e98f0
3024be  48 8b c8                       mov    rcx,rax
3024c1  e8 aa 28 fd ff                 call   0x2d4d70
3024c6  84 c0                          test   al,al
3024c8  0f 84 f3 2d 00 00              je     0x3052c1
3024ce  f3 0f 2c c6                    cvttss2si eax,xmm6
3024d2  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
3024d8  f3 0f 2c c7                    cvttss2si eax,xmm7
3024dc  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
3024e2  e9 da 2d 00 00                 jmp    0x3052c1
3024e7  83 f9 43                       cmp    ecx,0x43
3024ea  0f 85 6c 0b 00 00              jne    0x30305c
3024f0  38 1d 0b d1 0e 00              cmp    BYTE PTR [rip+0xed10b],bl        # 0x3ef601
3024f6  0f 84 90 09 00 00              je     0x302e8c
3024fc  45 0f 2f e9                    comiss xmm13,xmm9
302500  0f 86 86 09 00 00              jbe    0x302e8c
302506  48 8d 95 80 09 00 00           lea    rdx,[rbp+0x980]
30250d  49 8b cd                       mov    rcx,r13
302510  e8 b7 3f 06 00                 call   0x3664cc
302515  f3 0f 10 95 9c 09 00 00        movss  xmm2,DWORD PTR [rbp+0x99c]
30251d  48 8d 95 30 03 00 00           lea    rdx,[rbp+0x330]
302524  48 8d 8d b4 09 00 00           lea    rcx,[rbp+0x9b4]
30252b  e8 3c d1 fd ff                 call   0x2df66c
302530  f3 0f 10 95 a0 09 00 00        movss  xmm2,DWORD PTR [rbp+0x9a0]
302538  48 8d 95 60 03 00 00           lea    rdx,[rbp+0x360]
30253f  48 8d 8d c0 09 00 00           lea    rcx,[rbp+0x9c0]
302546  e8 21 d1 fd ff                 call   0x2df66c
30254b  f3 0f 10 95 a4 09 00 00        movss  xmm2,DWORD PTR [rbp+0x9a4]
302553  48 8d 95 50 03 00 00           lea    rdx,[rbp+0x350]
30255a  48 8d 8d a8 09 00 00           lea    rcx,[rbp+0x9a8]
302561  e8 06 d1 fd ff                 call   0x2df66c
302566  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
30256d  48 8d 95 cc 13 00 00           lea    rdx,[rbp+0x13cc]
302574  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
30257b  e8 88 d1 fd ff                 call   0x2df708
302580  48 8b c8                       mov    rcx,rax
302583  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
30258a  48 8d 95 d8 13 00 00           lea    rdx,[rbp+0x13d8]
302591  e8 72 d1 fd ff                 call   0x2df708
302596  48 8b c8                       mov    rcx,rax
302599  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
3025a0  48 8d 95 a0 05 00 00           lea    rdx,[rbp+0x5a0]
3025a7  e8 5c d1 fd ff                 call   0x2df708
3025ac  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
3025b3  48 8d 95 e4 13 00 00           lea    rdx,[rbp+0x13e4]
3025ba  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
3025c1  e8 42 d1 fd ff                 call   0x2df708
3025c6  48 8b c8                       mov    rcx,rax
3025c9  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
3025d0  48 8d 95 f0 13 00 00           lea    rdx,[rbp+0x13f0]
3025d7  e8 2c d1 fd ff                 call   0x2df708
3025dc  48 8b c8                       mov    rcx,rax
3025df  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
3025e6  48 8d 95 c0 05 00 00           lea    rdx,[rbp+0x5c0]
3025ed  e8 da d0 fd ff                 call   0x2df6cc
3025f2  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
3025f9  48 8d 95 fc 13 00 00           lea    rdx,[rbp+0x13fc]
302600  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
302607  e8 c0 d0 fd ff                 call   0x2df6cc
30260c  48 8b c8                       mov    rcx,rax
30260f  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
302616  48 8d 95 08 14 00 00           lea    rdx,[rbp+0x1408]
30261d  e8 e6 d0 fd ff                 call   0x2df708
302622  48 8b c8                       mov    rcx,rax
302625  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
30262c  48 8d 95 e0 05 00 00           lea    rdx,[rbp+0x5e0]
302633  e8 94 d0 fd ff                 call   0x2df6cc
302638  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
30263f  48 8d 95 14 14 00 00           lea    rdx,[rbp+0x1414]
302646  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
30264d  e8 7a d0 fd ff                 call   0x2df6cc
302652  48 8b c8                       mov    rcx,rax
302655  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
30265c  48 8d 95 20 14 00 00           lea    rdx,[rbp+0x1420]
302663  e8 a0 d0 fd ff                 call   0x2df708
302668  48 8b c8                       mov    rcx,rax
30266b  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
302672  48 8d 95 00 06 00 00           lea    rdx,[rbp+0x600]
302679  e8 8a d0 fd ff                 call   0x2df708
30267e  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
302685  48 8d 95 2c 14 00 00           lea    rdx,[rbp+0x142c]
30268c  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
302693  e8 70 d0 fd ff                 call   0x2df708
302698  48 8b c8                       mov    rcx,rax
30269b  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
3026a2  48 8d 95 38 14 00 00           lea    rdx,[rbp+0x1438]
3026a9  e8 1e d0 fd ff                 call   0x2df6cc
3026ae  48 8b c8                       mov    rcx,rax
3026b1  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
3026b8  48 8d 95 20 06 00 00           lea    rdx,[rbp+0x620]
3026bf  e8 44 d0 fd ff                 call   0x2df708
3026c4  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
3026cb  48 8d 95 44 14 00 00           lea    rdx,[rbp+0x1444]
3026d2  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
3026d9  e8 2a d0 fd ff                 call   0x2df708
3026de  48 8b c8                       mov    rcx,rax
3026e1  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
3026e8  48 8d 95 50 14 00 00           lea    rdx,[rbp+0x1450]
3026ef  e8 d8 cf fd ff                 call   0x2df6cc
3026f4  48 8b c8                       mov    rcx,rax
3026f7  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
3026fe  48 8d 95 40 06 00 00           lea    rdx,[rbp+0x640]
302705  e8 c2 cf fd ff                 call   0x2df6cc
30270a  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
302711  48 8d 95 5c 14 00 00           lea    rdx,[rbp+0x145c]
302718  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
30271f  e8 a8 cf fd ff                 call   0x2df6cc
302724  48 8b c8                       mov    rcx,rax
302727  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
30272e  48 8d 95 68 14 00 00           lea    rdx,[rbp+0x1468]
302735  e8 92 cf fd ff                 call   0x2df6cc
30273a  48 8b c8                       mov    rcx,rax
30273d  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
302744  48 8d 95 60 06 00 00           lea    rdx,[rbp+0x660]
30274b  e8 7c cf fd ff                 call   0x2df6cc
302750  4c 8d 85 30 03 00 00           lea    r8,[rbp+0x330]
302757  48 8d 95 74 14 00 00           lea    rdx,[rbp+0x1474]
30275e  48 8d 8d 90 09 00 00           lea    rcx,[rbp+0x990]
302765  e8 62 cf fd ff                 call   0x2df6cc
30276a  48 8b c8                       mov    rcx,rax
30276d  4c 8d 85 60 03 00 00           lea    r8,[rbp+0x360]
302774  48 8d 95 a4 11 00 00           lea    rdx,[rbp+0x11a4]
30277b  e8 4c cf fd ff                 call   0x2df6cc
302780  48 8b c8                       mov    rcx,rax
302783  4c 8d 85 50 03 00 00           lea    r8,[rbp+0x350]
30278a  48 8d 95 80 06 00 00           lea    rdx,[rbp+0x680]
302791  e8 72 cf fd ff                 call   0x2df708
302796  48 8d 8d c8 02 00 00           lea    rcx,[rbp+0x2c8]
30279d  e8 02 8c fc ff                 call   0x2cb3a4
3027a2  48 8d 8d b8 02 00 00           lea    rcx,[rbp+0x2b8]
3027a9  e8 f6 8b fc ff                 call   0x2cb3a4
3027ae  48 8d 8d 00 03 00 00           lea    rcx,[rbp+0x300]
3027b5  e8 ea 8b fc ff                 call   0x2cb3a4
3027ba  48 8d 8d 10 03 00 00           lea    rcx,[rbp+0x310]
3027c1  e8 de 8b fc ff                 call   0x2cb3a4
3027c6  48 8d 8d d0 02 00 00           lea    rcx,[rbp+0x2d0]
3027cd  e8 d2 8b fc ff                 call   0x2cb3a4
3027d2  48 8d 8d c0 02 00 00           lea    rcx,[rbp+0x2c0]
3027d9  e8 c6 8b fc ff                 call   0x2cb3a4
3027de  48 8d 8d 20 03 00 00           lea    rcx,[rbp+0x320]
3027e5  e8 ba 8b fc ff                 call   0x2cb3a4
3027ea  48 8d 8d 08 03 00 00           lea    rcx,[rbp+0x308]
3027f1  e8 ae 8b fc ff                 call   0x2cb3a4
3027f6  f2 0f 10 85 a0 05 00 00        movsd  xmm0,QWORD PTR [rbp+0x5a0]
3027fe  4c 8d 35 a3 4a 0d 00           lea    r14,[rip+0xd4aa3]        # 0x3d72a8
302805  8b 85 a8 05 00 00              mov    eax,DWORD PTR [rbp+0x5a8]
30280b  4c 8d 85 c8 02 00 00           lea    r8,[rbp+0x2c8]
302812  4d 8b ce                       mov    r9,r14
302815  f2 0f 11 85 b0 05 00 00        movsd  QWORD PTR [rbp+0x5b0],xmm0
30281d  48 8d 95 b0 05 00 00           lea    rdx,[rbp+0x5b0]
302824  89 85 b8 05 00 00              mov    DWORD PTR [rbp+0x5b8],eax
30282a  49 8b cf                       mov    rcx,r15
30282d  e8 ee a4 06 00                 call   0x36cd20
302832  84 c0                          test   al,al
302834  0f 84 52 06 00 00              je     0x302e8c
30283a  f2 0f 10 85 c0 05 00 00        movsd  xmm0,QWORD PTR [rbp+0x5c0]
302842  4c 8d 85 b8 02 00 00           lea    r8,[rbp+0x2b8]
302849  8b 85 c8 05 00 00              mov    eax,DWORD PTR [rbp+0x5c8]
30284f  48 8d 95 d0 05 00 00           lea    rdx,[rbp+0x5d0]
302856  4d 8b ce                       mov    r9,r14
302859  f2 0f 11 85 d0 05 00 00        movsd  QWORD PTR [rbp+0x5d0],xmm0
302861  49 8b cf                       mov    rcx,r15
302864  89 85 d8 05 00 00              mov    DWORD PTR [rbp+0x5d8],eax
30286a  e8 b1 a4 06 00                 call   0x36cd20
30286f  84 c0                          test   al,al
302871  0f 84 15 06 00 00              je     0x302e8c
302877  f2 0f 10 85 e0 05 00 00        movsd  xmm0,QWORD PTR [rbp+0x5e0]
30287f  4c 8d 85 00 03 00 00           lea    r8,[rbp+0x300]
302886  8b 85 e8 05 00 00              mov    eax,DWORD PTR [rbp+0x5e8]
30288c  48 8d 95 f0 05 00 00           lea    rdx,[rbp+0x5f0]
302893  4d 8b ce                       mov    r9,r14
302896  f2 0f 11 85 f0 05 00 00        movsd  QWORD PTR [rbp+0x5f0],xmm0
30289e  49 8b cf                       mov    rcx,r15
3028a1  89 85 f8 05 00 00              mov    DWORD PTR [rbp+0x5f8],eax
3028a7  e8 74 a4 06 00                 call   0x36cd20
3028ac  84 c0                          test   al,al
3028ae  0f 84 d8 05 00 00              je     0x302e8c
3028b4  f2 0f 10 85 00 06 00 00        movsd  xmm0,QWORD PTR [rbp+0x600]
3028bc  4c 8d 85 10 03 00 00           lea    r8,[rbp+0x310]
3028c3  8b 85 08 06 00 00              mov    eax,DWORD PTR [rbp+0x608]
3028c9  48 8d 95 10 06 00 00           lea    rdx,[rbp+0x610]
3028d0  4d 8b ce                       mov    r9,r14
3028d3  f2 0f 11 85 10 06 00 00        movsd  QWORD PTR [rbp+0x610],xmm0
3028db  49 8b cf                       mov    rcx,r15
3028de  89 85 18 06 00 00              mov    DWORD PTR [rbp+0x618],eax
3028e4  e8 37 a4 06 00                 call   0x36cd20
3028e9  84 c0                          test   al,al
3028eb  0f 84 9b 05 00 00              je     0x302e8c
3028f1  f2 0f 10 85 20 06 00 00        movsd  xmm0,QWORD PTR [rbp+0x620]
3028f9  4c 8d 85 d0 02 00 00           lea    r8,[rbp+0x2d0]
302900  8b 85 28 06 00 00              mov    eax,DWORD PTR [rbp+0x628]
302906  48 8d 95 30 06 00 00           lea    rdx,[rbp+0x630]
30290d  4d 8b ce                       mov    r9,r14
302910  f2 0f 11 85 30 06 00 00        movsd  QWORD PTR [rbp+0x630],xmm0
302918  49 8b cf                       mov    rcx,r15
30291b  89 85 38 06 00 00              mov    DWORD PTR [rbp+0x638],eax
302921  e8 fa a3 06 00                 call   0x36cd20
302926  84 c0                          test   al,al
302928  0f 84 5e 05 00 00              je     0x302e8c
30292e  f2 0f 10 85 40 06 00 00        movsd  xmm0,QWORD PTR [rbp+0x640]
302936  4c 8d 85 c0 02 00 00           lea    r8,[rbp+0x2c0]
30293d  8b 85 48 06 00 00              mov    eax,DWORD PTR [rbp+0x648]
302943  48 8d 95 50 06 00 00           lea    rdx,[rbp+0x650]
30294a  4d 8b ce                       mov    r9,r14
30294d  f2 0f 11 85 50 06 00 00        movsd  QWORD PTR [rbp+0x650],xmm0
302955  49 8b cf                       mov    rcx,r15
302958  89 85 58 06 00 00              mov    DWORD PTR [rbp+0x658],eax
30295e  e8 bd a3 06 00                 call   0x36cd20
302963  84 c0                          test   al,al
302965  0f 84 21 05 00 00              je     0x302e8c
30296b  f2 0f 10 85 60 06 00 00        movsd  xmm0,QWORD PTR [rbp+0x660]
302973  4c 8d 85 20 03 00 00           lea    r8,[rbp+0x320]
30297a  8b 85 68 06 00 00              mov    eax,DWORD PTR [rbp+0x668]
302980  48 8d 95 70 06 00 00           lea    rdx,[rbp+0x670]
302987  4d 8b ce                       mov    r9,r14
30298a  f2 0f 11 85 70 06 00 00        movsd  QWORD PTR [rbp+0x670],xmm0
302992  49 8b cf                       mov    rcx,r15
302995  89 85 78 06 00 00              mov    DWORD PTR [rbp+0x678],eax
30299b  e8 80 a3 06 00                 call   0x36cd20
3029a0  84 c0                          test   al,al
3029a2  0f 84 e4 04 00 00              je     0x302e8c
3029a8  f2 0f 10 85 80 06 00 00        movsd  xmm0,QWORD PTR [rbp+0x680]
3029b0  4c 8d 85 08 03 00 00           lea    r8,[rbp+0x308]
3029b7  8b 85 88 06 00 00              mov    eax,DWORD PTR [rbp+0x688]
3029bd  48 8d 95 90 06 00 00           lea    rdx,[rbp+0x690]
3029c4  4d 8b ce                       mov    r9,r14
3029c7  f2 0f 11 85 90 06 00 00        movsd  QWORD PTR [rbp+0x690],xmm0
3029cf  49 8b cf                       mov    rcx,r15
3029d2  89 85 98 06 00 00              mov    DWORD PTR [rbp+0x698],eax
3029d8  e8 43 a3 06 00                 call   0x36cd20
3029dd  84 c0                          test   al,al
3029df  0f 84 a7 04 00 00              je     0x302e8c
3029e5  4c 8d 35 ac 96 0e 00           lea    r14,[rip+0xe96ac]        # 0x3ec098 ; CONFIG C.CorpseC value(+0x48)
3029ec  49 8b ce                       mov    rcx,r14
3029ef  e8 18 ce fe ff                 call   0x2ef80c
3029f4  f3 0f 10 95 bc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2bc]
3029fc  48 8d 8d a8 07 00 00           lea    rcx,[rbp+0x7a8]
302a03  f3 0f 10 8d b8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b8]
302a0b  8b d8                          mov    ebx,eax
302a0d  e8 2e 99 fc ff                 call   0x2cc340
302a12  f3 0f 10 95 cc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2cc]
302a1a  48 8d 8d b0 07 00 00           lea    rcx,[rbp+0x7b0]
302a21  f3 0f 10 8d c8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2c8]
302a29  e8 12 99 fc ff                 call   0x2cc340
302a2e  48 8b b5 d0 29 00 00           mov    rsi,QWORD PTR [rbp+0x29d0]
302a35  4c 8d 85 a8 07 00 00           lea    r8,[rbp+0x7a8]
302a3c  f3 0f 10 35 b4 06 f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff906b4]        # 0x2930f8 ; f32=1.25
302a44  48 8d 95 b0 07 00 00           lea    rdx,[rbp+0x7b0]
302a4b  48 8b ce                       mov    rcx,rsi
302a4e  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302a54  44 8b cb                       mov    r9d,ebx
302a57  e8 00 98 05 00                 call   0x35c25c
302a5c  49 8b ce                       mov    rcx,r14
302a5f  e8 a8 cd fe ff                 call   0x2ef80c
302a64  f3 0f 10 95 04 03 00 00        movss  xmm2,DWORD PTR [rbp+0x304]
302a6c  48 8d 8d b8 07 00 00           lea    rcx,[rbp+0x7b8]
302a73  f3 0f 10 8d 00 03 00 00        movss  xmm1,DWORD PTR [rbp+0x300]
302a7b  8b d8                          mov    ebx,eax
302a7d  e8 be 98 fc ff                 call   0x2cc340
302a82  f3 0f 10 95 bc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2bc]
302a8a  48 8d 8d c0 07 00 00           lea    rcx,[rbp+0x7c0]
302a91  f3 0f 10 8d b8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b8]
302a99  e8 a2 98 fc ff                 call   0x2cc340
302a9e  44 8b cb                       mov    r9d,ebx
302aa1  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302aa7  4c 8d 85 b8 07 00 00           lea    r8,[rbp+0x7b8]
302aae  48 8b ce                       mov    rcx,rsi
302ab1  48 8d 95 c0 07 00 00           lea    rdx,[rbp+0x7c0]
302ab8  e8 9f 97 05 00                 call   0x35c25c
302abd  49 8b ce                       mov    rcx,r14
302ac0  e8 47 cd fe ff                 call   0x2ef80c
302ac5  f3 0f 10 95 14 03 00 00        movss  xmm2,DWORD PTR [rbp+0x314]
302acd  48 8d 8d c8 07 00 00           lea    rcx,[rbp+0x7c8]
302ad4  f3 0f 10 8d 10 03 00 00        movss  xmm1,DWORD PTR [rbp+0x310]
302adc  8b d8                          mov    ebx,eax
302ade  e8 5d 98 fc ff                 call   0x2cc340
302ae3  f3 0f 10 95 04 03 00 00        movss  xmm2,DWORD PTR [rbp+0x304]
302aeb  48 8d 8d d0 07 00 00           lea    rcx,[rbp+0x7d0]
302af2  f3 0f 10 8d 00 03 00 00        movss  xmm1,DWORD PTR [rbp+0x300]
302afa  e8 41 98 fc ff                 call   0x2cc340
302aff  44 8b cb                       mov    r9d,ebx
302b02  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302b08  4c 8d 85 c8 07 00 00           lea    r8,[rbp+0x7c8]
302b0f  48 8b ce                       mov    rcx,rsi
302b12  48 8d 95 d0 07 00 00           lea    rdx,[rbp+0x7d0]
302b19  e8 3e 97 05 00                 call   0x35c25c
302b1e  49 8b ce                       mov    rcx,r14
302b21  e8 e6 cc fe ff                 call   0x2ef80c
302b26  f3 0f 10 95 cc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2cc]
302b2e  48 8d 8d d8 07 00 00           lea    rcx,[rbp+0x7d8]
302b35  f3 0f 10 8d c8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2c8]
302b3d  8b d8                          mov    ebx,eax
302b3f  e8 fc 97 fc ff                 call   0x2cc340
302b44  f3 0f 10 95 14 03 00 00        movss  xmm2,DWORD PTR [rbp+0x314]
302b4c  48 8d 8d e0 07 00 00           lea    rcx,[rbp+0x7e0]
302b53  f3 0f 10 8d 10 03 00 00        movss  xmm1,DWORD PTR [rbp+0x310]
302b5b  e8 e0 97 fc ff                 call   0x2cc340
302b60  44 8b cb                       mov    r9d,ebx
302b63  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302b69  4c 8d 85 d8 07 00 00           lea    r8,[rbp+0x7d8]
302b70  48 8b ce                       mov    rcx,rsi
302b73  48 8d 95 e0 07 00 00           lea    rdx,[rbp+0x7e0]
302b7a  e8 dd 96 05 00                 call   0x35c25c
302b7f  49 8b ce                       mov    rcx,r14
302b82  e8 85 cc fe ff                 call   0x2ef80c
302b87  f3 0f 10 95 c4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2c4]
302b8f  48 8d 8d e8 07 00 00           lea    rcx,[rbp+0x7e8]
302b96  f3 0f 10 8d c0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2c0]
302b9e  8b d8                          mov    ebx,eax
302ba0  e8 9b 97 fc ff                 call   0x2cc340
302ba5  f3 0f 10 95 d4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2d4]
302bad  48 8d 8d f0 07 00 00           lea    rcx,[rbp+0x7f0]
302bb4  f3 0f 10 8d d0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d0]
302bbc  e8 7f 97 fc ff                 call   0x2cc340
302bc1  44 8b cb                       mov    r9d,ebx
302bc4  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302bca  4c 8d 85 e8 07 00 00           lea    r8,[rbp+0x7e8]
302bd1  48 8b ce                       mov    rcx,rsi
302bd4  48 8d 95 f0 07 00 00           lea    rdx,[rbp+0x7f0]
302bdb  e8 7c 96 05 00                 call   0x35c25c
302be0  49 8b ce                       mov    rcx,r14
302be3  e8 24 cc fe ff                 call   0x2ef80c
302be8  f3 0f 10 95 24 03 00 00        movss  xmm2,DWORD PTR [rbp+0x324]
302bf0  48 8d 8d f8 07 00 00           lea    rcx,[rbp+0x7f8]
302bf7  f3 0f 10 8d 20 03 00 00        movss  xmm1,DWORD PTR [rbp+0x320]
302bff  8b d8                          mov    ebx,eax
302c01  e8 3a 97 fc ff                 call   0x2cc340
302c06  f3 0f 10 95 c4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2c4]
302c0e  48 8d 8d 00 08 00 00           lea    rcx,[rbp+0x800]
302c15  f3 0f 10 8d c0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2c0]
302c1d  e8 1e 97 fc ff                 call   0x2cc340
302c22  44 8b cb                       mov    r9d,ebx
302c25  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302c2b  4c 8d 85 f8 07 00 00           lea    r8,[rbp+0x7f8]
302c32  48 8b ce                       mov    rcx,rsi
302c35  48 8d 95 00 08 00 00           lea    rdx,[rbp+0x800]
302c3c  e8 1b 96 05 00                 call   0x35c25c
302c41  49 8b ce                       mov    rcx,r14
302c44  e8 c3 cb fe ff                 call   0x2ef80c
302c49  f3 0f 10 95 0c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x30c]
302c51  48 8d 8d 08 08 00 00           lea    rcx,[rbp+0x808]
302c58  f3 0f 10 8d 08 03 00 00        movss  xmm1,DWORD PTR [rbp+0x308]
302c60  8b d8                          mov    ebx,eax
302c62  e8 d9 96 fc ff                 call   0x2cc340
302c67  f3 0f 10 95 24 03 00 00        movss  xmm2,DWORD PTR [rbp+0x324]
302c6f  48 8d 8d 10 08 00 00           lea    rcx,[rbp+0x810]
302c76  f3 0f 10 8d 20 03 00 00        movss  xmm1,DWORD PTR [rbp+0x320]
302c7e  e8 bd 96 fc ff                 call   0x2cc340
302c83  44 8b cb                       mov    r9d,ebx
302c86  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302c8c  4c 8d 85 08 08 00 00           lea    r8,[rbp+0x808]
302c93  48 8b ce                       mov    rcx,rsi
302c96  48 8d 95 10 08 00 00           lea    rdx,[rbp+0x810]
302c9d  e8 ba 95 05 00                 call   0x35c25c
302ca2  49 8b ce                       mov    rcx,r14
302ca5  e8 62 cb fe ff                 call   0x2ef80c
302caa  f3 0f 10 95 d4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2d4]
302cb2  48 8d 8d 18 08 00 00           lea    rcx,[rbp+0x818]
302cb9  f3 0f 10 8d d0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d0]
302cc1  8b d8                          mov    ebx,eax
302cc3  e8 78 96 fc ff                 call   0x2cc340
302cc8  f3 0f 10 95 0c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x30c]
302cd0  48 8d 8d 20 08 00 00           lea    rcx,[rbp+0x820]
302cd7  f3 0f 10 8d 08 03 00 00        movss  xmm1,DWORD PTR [rbp+0x308]
302cdf  e8 5c 96 fc ff                 call   0x2cc340
302ce4  44 8b cb                       mov    r9d,ebx
302ce7  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302ced  4c 8d 85 18 08 00 00           lea    r8,[rbp+0x818]
302cf4  48 8b ce                       mov    rcx,rsi
302cf7  48 8d 95 20 08 00 00           lea    rdx,[rbp+0x820]
302cfe  e8 59 95 05 00                 call   0x35c25c
302d03  49 8b ce                       mov    rcx,r14
302d06  e8 01 cb fe ff                 call   0x2ef80c
302d0b  f3 0f 10 95 d4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2d4]
302d13  48 8d 8d 28 08 00 00           lea    rcx,[rbp+0x828]
302d1a  f3 0f 10 8d d0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2d0]
302d22  8b d8                          mov    ebx,eax
302d24  e8 17 96 fc ff                 call   0x2cc340
302d29  f3 0f 10 95 cc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2cc]
302d31  48 8d 8d 30 08 00 00           lea    rcx,[rbp+0x830]
302d38  f3 0f 10 8d c8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2c8]
302d40  e8 fb 95 fc ff                 call   0x2cc340
302d45  44 8b cb                       mov    r9d,ebx
302d48  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302d4e  4c 8d 85 28 08 00 00           lea    r8,[rbp+0x828]
302d55  48 8b ce                       mov    rcx,rsi
302d58  48 8d 95 30 08 00 00           lea    rdx,[rbp+0x830]
302d5f  e8 f8 94 05 00                 call   0x35c25c
302d64  49 8b ce                       mov    rcx,r14
302d67  e8 a0 ca fe ff                 call   0x2ef80c
302d6c  f3 0f 10 95 c4 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2c4]
302d74  48 8d 8d 38 08 00 00           lea    rcx,[rbp+0x838]
302d7b  f3 0f 10 8d c0 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2c0]
302d83  8b d8                          mov    ebx,eax
302d85  e8 b6 95 fc ff                 call   0x2cc340
302d8a  f3 0f 10 95 bc 02 00 00        movss  xmm2,DWORD PTR [rbp+0x2bc]
302d92  48 8d 8d 40 08 00 00           lea    rcx,[rbp+0x840]
302d99  f3 0f 10 8d b8 02 00 00        movss  xmm1,DWORD PTR [rbp+0x2b8]
302da1  e8 9a 95 fc ff                 call   0x2cc340
302da6  44 8b cb                       mov    r9d,ebx
302da9  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302daf  4c 8d 85 38 08 00 00           lea    r8,[rbp+0x838]
302db6  48 8b ce                       mov    rcx,rsi
302db9  48 8d 95 40 08 00 00           lea    rdx,[rbp+0x840]
302dc0  e8 97 94 05 00                 call   0x35c25c
302dc5  49 8b ce                       mov    rcx,r14
302dc8  e8 3f ca fe ff                 call   0x2ef80c
302dcd  f3 0f 10 95 24 03 00 00        movss  xmm2,DWORD PTR [rbp+0x324]
302dd5  48 8d 8d 48 08 00 00           lea    rcx,[rbp+0x848]
302ddc  f3 0f 10 8d 20 03 00 00        movss  xmm1,DWORD PTR [rbp+0x320]
302de4  8b d8                          mov    ebx,eax
302de6  e8 55 95 fc ff                 call   0x2cc340
302deb  f3 0f 10 95 04 03 00 00        movss  xmm2,DWORD PTR [rbp+0x304]
302df3  48 8d 8d 50 08 00 00           lea    rcx,[rbp+0x850]
302dfa  f3 0f 10 8d 00 03 00 00        movss  xmm1,DWORD PTR [rbp+0x300]
302e02  e8 39 95 fc ff                 call   0x2cc340
302e07  44 8b cb                       mov    r9d,ebx
302e0a  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302e10  4c 8d 85 48 08 00 00           lea    r8,[rbp+0x848]
302e17  48 8b ce                       mov    rcx,rsi
302e1a  48 8d 95 50 08 00 00           lea    rdx,[rbp+0x850]
302e21  e8 36 94 05 00                 call   0x35c25c
302e26  49 8b ce                       mov    rcx,r14
302e29  e8 de c9 fe ff                 call   0x2ef80c
302e2e  f3 0f 10 95 0c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x30c]
302e36  48 8d 8d 58 08 00 00           lea    rcx,[rbp+0x858]
302e3d  f3 0f 10 8d 08 03 00 00        movss  xmm1,DWORD PTR [rbp+0x308]
302e45  8b d8                          mov    ebx,eax
302e47  e8 f4 94 fc ff                 call   0x2cc340
302e4c  f3 0f 10 95 14 03 00 00        movss  xmm2,DWORD PTR [rbp+0x314]
302e54  48 8d 8d 60 08 00 00           lea    rcx,[rbp+0x860]
302e5b  f3 0f 10 8d 10 03 00 00        movss  xmm1,DWORD PTR [rbp+0x310]
302e63  e8 d8 94 fc ff                 call   0x2cc340
302e68  44 8b cb                       mov    r9d,ebx
302e6b  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
302e71  4c 8d 85 58 08 00 00           lea    r8,[rbp+0x858]
302e78  48 8b ce                       mov    rcx,rsi
302e7b  48 8d 95 60 08 00 00           lea    rdx,[rbp+0x860]
302e82  e8 d5 93 05 00                 call   0x35c25c
302e87  33 db                          xor    ebx,ebx
302e89  8d 73 01                       lea    esi,[rbx+0x1]
302e8c  0f 10 05 05 92 0e 00           movups xmm0,XMMWORD PTR [rip+0xe9205]        # 0x3ec098 ; CONFIG C.CorpseC value(+0x48)
302e93  49 8b cd                       mov    rcx,r13
302e96  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
302e9a  e8 a1 32 06 00                 call   0x366140
302e9f  84 c0                          test   al,al
302ea1  74 0b                          je     0x302eae
302ea3  0f 10 05 4e 92 0e 00           movups xmm0,XMMWORD PTR [rip+0xe924e]        # 0x3ec0f8 ; CONFIG C.CorpseCNonNaked value(+0x48)
302eaa  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
302eae  38 1d c4 45 0e 00              cmp    BYTE PTR [rip+0xe45c4],bl        # 0x3e7478 ; CONFIG Bools.Corpse value(+0x48)
302eb4  74 09                          je     0x302ebf
302eb6  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
302eba  40 84 ff                       test   dil,dil
302ebd  75 03                          jne    0x302ec2
302ebf  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
302ec2  8b 05 e0 b2 0e 00              mov    eax,DWORD PTR [rip+0xeb2e0]        # 0x3ee1a8 ; CONFIG i.PlayerCorpseDistance value(+0x48)
302ec8  48 8d 95 d4 0a 00 00           lea    rdx,[rbp+0xad4]
302ecf  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
302ed4  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
302ed7  e8 28 40 ff ff                 call   0x2f6f04 ; STRING getter=0x2f6f04 Corpse
302edc  48 8b c8                       mov    rcx,rax
302edf  e8 10 ae fc ff                 call   0x2cdcf4
302ee4  48 8b d0                       mov    rdx,rax
302ee7  48 8d 8d e8 0d 00 00           lea    rcx,[rbp+0xde8]
302eee  e8 d9 93 fc ff                 call   0x2cc2cc
302ef3  48 8d 95 c8 0d 00 00           lea    rdx,[rbp+0xdc8]
302efa  49 8b cd                       mov    rcx,r13
302efd  e8 b6 36 06 00                 call   0x3665b8
302f02  48 8d 8d c8 0d 00 00           lea    rcx,[rbp+0xdc8]
302f09  e8 86 57 fd ff                 call   0x2d8694
302f0e  84 c0                          test   al,al
302f10  0f 85 86 00 00 00              jne    0x302f9c
302f16  48 8d 95 b4 03 00 00           lea    rdx,[rbp+0x3b4]
302f1d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
302f22  e8 b9 d2 fe ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
302f27  48 8b c8                       mov    rcx,rax
302f2a  e8 35 55 fd ff                 call   0x2d8464
302f2f  48 8d 95 36 04 00 00           lea    rdx,[rbp+0x436]
302f36  48 8b d8                       mov    rbx,rax
302f39  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
302f3e  e8 05 40 ff ff                 call   0x2f6f48 ; STRING getter=0x2f6f48  [
302f43  48 8b c8                       mov    rcx,rax
302f46  e8 a9 d4 01 00                 call   0x3203f4
302f4b  48 8b d0                       mov    rdx,rax
302f4e  4c 8d 85 c8 0d 00 00           lea    r8,[rbp+0xdc8]
302f55  48 8d 8d 08 24 00 00           lea    rcx,[rbp+0x2408]
302f5c  e8 b3 77 fe ff                 call   0x2ea714
302f61  48 8b d0                       mov    rdx,rax
302f64  48 8d 8d e8 23 00 00           lea    rcx,[rbp+0x23e8]
302f6b  4c 8b c3                       mov    r8,rbx
302f6e  e8 c5 7d fc ff                 call   0x2cad38
302f73  48 8b d0                       mov    rdx,rax
302f76  48 8d 8d e8 0d 00 00           lea    rcx,[rbp+0xde8]
302f7d  e8 62 26 fd ff                 call   0x2d55e4
302f82  48 8d 8d e8 23 00 00           lea    rcx,[rbp+0x23e8]
302f89  e8 66 95 fc ff                 call   0x2cc4f4
302f8e  48 8d 8d 08 24 00 00           lea    rcx,[rbp+0x2408]
302f95  e8 5a 95 fc ff                 call   0x2cc4f4
302f9a  33 db                          xor    ebx,ebx
302f9c  48 8d 95 e8 0d 00 00           lea    rdx,[rbp+0xde8]
302fa3  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
302fa8  e8 77 1c fd ff                 call   0x2d4c24
302fad  38 1d 45 5b 0e 00              cmp    BYTE PTR [rip+0xe5b45],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
302fb3  8b 05 2f c2 0e 00              mov    eax,DWORD PTR [rip+0xec22f]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
302fb9  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
302fbc  74 09                          je     0x302fc7
302fbe  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
302fc2  38 5d c4                       cmp    BYTE PTR [rbp-0x3c],bl
302fc5  75 03                          jne    0x302fca
302fc7  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
302fca  38 1d f8 53 0e 00              cmp    BYTE PTR [rip+0xe53f8],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
302fd0  75 08                          jne    0x302fda
302fd2  38 1d e0 72 0e 00              cmp    BYTE PTR [rip+0xe72e0],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
302fd8  74 0c                          je     0x302fe6
302fda  38 1d 98 44 0e 00              cmp    BYTE PTR [rip+0xe4498],bl        # 0x3e7478 ; CONFIG Bools.Corpse value(+0x48)
302fe0  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
302fe4  75 03                          jne    0x302fe9
302fe6  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
302fe9  8a 05 79 3b 0e 00              mov    al,BYTE PTR [rip+0xe3b79]        # 0x3e6b68 ; CONFIG Bools.OtherIcons value(+0x48)
302fef  48 8d 95 a8 1a 00 00           lea    rdx,[rbp+0x1aa8]
302ff6  f3 0f 10 05 8a a4 0e 00        movss  xmm0,DWORD PTR [rip+0xea48a]        # 0x3ed488 ; CONFIG F.OtherIconsMult value(+0x48)
302ffe  48 8d 0d 33 d5 0e 00           lea    rcx,[rip+0xed533]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
303005  41 b8 06 00 00 00              mov    r8d,0x6
30300b  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
303010  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
303013  e8 d8 68 fe ff                 call   0x2e98f0
303018  48 8b c8                       mov    rcx,rax
30301b  e8 50 1d fd ff                 call   0x2d4d70
303020  84 c0                          test   al,al
303022  75 11                          jne    0x303035
303024  38 1d 8e 2c 0e 00              cmp    BYTE PTR [rip+0xe2c8e],bl        # 0x3e5cb8
30302a  74 09                          je     0x303035
30302c  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30302f  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
303032  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
303035  ba 04 00 00 00                 mov    edx,0x4
30303a  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30303f  e8 c0 77 fe ff                 call   0x2ea804
303044  48 8d 8d c8 0d 00 00           lea    rcx,[rbp+0xdc8]
30304b  e8 a4 94 fc ff                 call   0x2cc4f4
303050  48 8d 8d e8 0d 00 00           lea    rcx,[rbp+0xde8]
303057  e9 0e 14 00 00                 jmp    0x30446a
30305c  83 f9 44                       cmp    ecx,0x44
30305f  0f 85 97 00 00 00              jne    0x3030fc
303065  48 8d 95 db 0a 00 00           lea    rdx,[rbp+0xadb]
30306c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303071  e8 c6 40 ff ff                 call   0x2f713c ; STRING getter=0x2f713c Corpse
303076  48 8b c8                       mov    rcx,rax
303079  e8 76 ac fc ff                 call   0x2cdcf4
30307e  48 8b d0                       mov    rdx,rax
303081  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
303086  e8 dd 1b fd ff                 call   0x2d4c68
30308b  38 1d 37 44 0e 00              cmp    BYTE PTR [rip+0xe4437],bl        # 0x3e74c8 ; CONFIG Bools.ScientistCorpse value(+0x48)
303091  0f 10 05 c0 90 0e 00           movups xmm0,XMMWORD PTR [rip+0xe90c0]        # 0x3ec158 ; CONFIG C.NPCCorpseC value(+0x48)
303098  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30309c  74 09                          je     0x3030a7
30309e  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
3030a2  40 84 ff                       test   dil,dil
3030a5  75 03                          jne    0x3030aa
3030a7  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3030aa  8b 05 48 b1 0e 00              mov    eax,DWORD PTR [rip+0xeb148]        # 0x3ee1f8 ; CONFIG i.ScientistCorpseDistance value(+0x48)
3030b0  48 8d 95 3a 0a 00 00           lea    rdx,[rbp+0xa3a]
3030b7  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3030bc  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3030bf  e8 b0 40 ff ff                 call   0x2f7174 ; STRING getter=0x2f7174 [NPC]
3030c4  48 8b c8                       mov    rcx,rax
3030c7  e8 10 54 fd ff                 call   0x2d84dc
3030cc  48 8b d0                       mov    rdx,rax
3030cf  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3030d3  e8 90 1b fd ff                 call   0x2d4c68
3030d8  38 1d ea 52 0e 00              cmp    BYTE PTR [rip+0xe52ea],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3030de  75 08                          jne    0x3030e8
3030e0  38 1d d2 71 0e 00              cmp    BYTE PTR [rip+0xe71d2],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3030e6  74 0c                          je     0x3030f4
3030e8  38 1d da 43 0e 00              cmp    BYTE PTR [rip+0xe43da],bl        # 0x3e74c8 ; CONFIG Bools.ScientistCorpse value(+0x48)
3030ee  0f 85 a4 00 00 00              jne    0x303198
3030f4  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3030f7  e9 c5 21 00 00                 jmp    0x3052c1
3030fc  83 f9 45                       cmp    ecx,0x45
3030ff  0f 85 9c 00 00 00              jne    0x3031a1
303105  48 8d 95 e2 0a 00 00           lea    rdx,[rbp+0xae2]
30310c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303111  e8 4e 41 ff ff                 call   0x2f7264 ; STRING getter=0x2f7264 Corpse
303116  48 8b c8                       mov    rcx,rax
303119  e8 d6 ab fc ff                 call   0x2cdcf4
30311e  48 8b d0                       mov    rdx,rax
303121  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
303126  e8 3d 1b fd ff                 call   0x2d4c68
30312b  38 1d e7 43 0e 00              cmp    BYTE PTR [rip+0xe43e7],bl        # 0x3e7518 ; CONFIG Bools.AnimalCorpse value(+0x48)
303131  0f 10 05 80 90 0e 00           movups xmm0,XMMWORD PTR [rip+0xe9080]        # 0x3ec1b8 ; CONFIG C.AnimalCorpseC value(+0x48)
303138  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30313c  74 09                          je     0x303147
30313e  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
303142  40 84 ff                       test   dil,dil
303145  75 03                          jne    0x30314a
303147  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30314a  8b 05 f8 b0 0e 00              mov    eax,DWORD PTR [rip+0xeb0f8]        # 0x3ee248 ; CONFIG i.AnimalCorpseDistance value(+0x48)
303150  48 8d 95 8f 0e 00 00           lea    rdx,[rbp+0xe8f]
303157  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30315c  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30315f  e8 6c 42 ff ff                 call   0x2f73d0 ; STRING getter=0x2f73d0 [Animal]
303164  48 8b c8                       mov    rcx,rax
303167  e8 20 6a fe ff                 call   0x2e9b8c
30316c  48 8b d0                       mov    rdx,rax
30316f  48 8d 4d d8                    lea    rcx,[rbp-0x28]
303173  e8 f0 1a fd ff                 call   0x2d4c68
303178  38 1d 4a 52 0e 00              cmp    BYTE PTR [rip+0xe524a],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30317e  75 0c                          jne    0x30318c
303180  38 1d 32 71 0e 00              cmp    BYTE PTR [rip+0xe7132],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
303186  0f 84 68 ff ff ff              je     0x3030f4
30318c  38 1d 86 43 0e 00              cmp    BYTE PTR [rip+0xe4386],bl        # 0x3e7518 ; CONFIG Bools.AnimalCorpse value(+0x48)
303192  0f 84 5c ff ff ff              je     0x3030f4
303198  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30319c  e9 20 21 00 00                 jmp    0x3052c1
3031a1  83 f9 46                       cmp    ecx,0x46
3031a4  0f 85 b9 01 00 00              jne    0x303363
3031aa  48 8d 95 d2 14 00 00           lea    rdx,[rbp+0x14d2]
3031b1  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3031b6  e8 91 43 ff ff                 call   0x2f754c ; STRING getter=0x2f754c World Backpack
3031bb  48 8b c8                       mov    rcx,rax
3031be  e8 a9 54 fd ff                 call   0x2d866c
3031c3  48 8b d0                       mov    rdx,rax
3031c6  48 8d 8d 10 0e 00 00           lea    rcx,[rbp+0xe10]
3031cd  e8 fa 90 fc ff                 call   0x2cc2cc
3031d2  48 8d 95 30 0e 00 00           lea    rdx,[rbp+0xe30]
3031d9  49 8b cd                       mov    rcx,r13
3031dc  e8 f3 31 06 00                 call   0x3663d4
3031e1  48 8d 8d 30 0e 00 00           lea    rcx,[rbp+0xe30]
3031e8  e8 a7 54 fd ff                 call   0x2d8694
3031ed  84 c0                          test   al,al
3031ef  0f 85 86 00 00 00              jne    0x30327b
3031f5  48 8d 95 b0 03 00 00           lea    rdx,[rbp+0x3b0]
3031fc  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303201  e8 da cf fe ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
303206  48 8b c8                       mov    rcx,rax
303209  e8 56 52 fd ff                 call   0x2d8464
30320e  48 8d 95 4b 04 00 00           lea    rdx,[rbp+0x44b]
303215  48 8b d8                       mov    rbx,rax
303218  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30321d  e8 6e 44 ff ff                 call   0x2f7690 ; STRING getter=0x2f7690  [
303222  48 8b c8                       mov    rcx,rax
303225  e8 ca d1 01 00                 call   0x3203f4
30322a  48 8b d0                       mov    rdx,rax
30322d  4c 8d 85 30 0e 00 00           lea    r8,[rbp+0xe30]
303234  48 8d 8d 48 24 00 00           lea    rcx,[rbp+0x2448]
30323b  e8 d4 74 fe ff                 call   0x2ea714
303240  48 8b d0                       mov    rdx,rax
303243  48 8d 8d 28 24 00 00           lea    rcx,[rbp+0x2428]
30324a  4c 8b c3                       mov    r8,rbx
30324d  e8 e6 7a fc ff                 call   0x2cad38
303252  48 8b d0                       mov    rdx,rax
303255  48 8d 8d 10 0e 00 00           lea    rcx,[rbp+0xe10]
30325c  e8 83 23 fd ff                 call   0x2d55e4
303261  48 8d 8d 28 24 00 00           lea    rcx,[rbp+0x2428]
303268  e8 87 92 fc ff                 call   0x2cc4f4
30326d  48 8d 8d 48 24 00 00           lea    rcx,[rbp+0x2448]
303274  e8 7b 92 fc ff                 call   0x2cc4f4
303279  33 db                          xor    ebx,ebx
30327b  38 1d 37 43 0e 00              cmp    BYTE PTR [rip+0xe4337],bl        # 0x3e75b8 ; CONFIG Bools.Backpack value(+0x48)
303281  0f 10 05 90 8f 0e 00           movups xmm0,XMMWORD PTR [rip+0xe8f90]        # 0x3ec218 ; CONFIG C.BackpackC value(+0x48)
303288  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30328c  74 09                          je     0x303297
30328e  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
303292  40 84 ff                       test   dil,dil
303295  75 03                          jne    0x30329a
303297  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30329a  8b 05 f8 af 0e 00              mov    eax,DWORD PTR [rip+0xeaff8]        # 0x3ee298 ; CONFIG i.BackpackDistance value(+0x48)
3032a0  48 8d 95 10 0e 00 00           lea    rdx,[rbp+0xe10]
3032a7  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3032aa  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3032af  8b 05 33 bf 0e 00              mov    eax,DWORD PTR [rip+0xebf33]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
3032b5  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3032b8  e8 67 19 fd ff                 call   0x2d4c24
3032bd  38 1d 35 58 0e 00              cmp    BYTE PTR [rip+0xe5835],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
3032c3  74 09                          je     0x3032ce
3032c5  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3032c9  38 5d c4                       cmp    BYTE PTR [rbp-0x3c],bl
3032cc  75 03                          jne    0x3032d1
3032ce  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3032d1  38 1d f1 50 0e 00              cmp    BYTE PTR [rip+0xe50f1],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3032d7  75 08                          jne    0x3032e1
3032d9  38 1d d9 6f 0e 00              cmp    BYTE PTR [rip+0xe6fd9],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3032df  74 0c                          je     0x3032ed
3032e1  38 1d d1 42 0e 00              cmp    BYTE PTR [rip+0xe42d1],bl        # 0x3e75b8 ; CONFIG Bools.Backpack value(+0x48)
3032e7  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3032eb  75 03                          jne    0x3032f0
3032ed  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3032f0  8a 05 72 38 0e 00              mov    al,BYTE PTR [rip+0xe3872]        # 0x3e6b68 ; CONFIG Bools.OtherIcons value(+0x48)
3032f6  48 8d 95 b8 1a 00 00           lea    rdx,[rbp+0x1ab8]
3032fd  f3 0f 10 05 83 a1 0e 00        movss  xmm0,DWORD PTR [rip+0xea183]        # 0x3ed488 ; CONFIG F.OtherIconsMult value(+0x48)
303305  48 8d 0d 2c d2 0e 00           lea    rcx,[rip+0xed22c]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
30330c  41 b8 06 00 00 00              mov    r8d,0x6
303312  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
303317  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
30331a  e8 d1 65 fe ff                 call   0x2e98f0
30331f  48 8b c8                       mov    rcx,rax
303322  e8 49 1a fd ff                 call   0x2d4d70
303327  84 c0                          test   al,al
303329  75 11                          jne    0x30333c
30332b  38 1d 87 29 0e 00              cmp    BYTE PTR [rip+0xe2987],bl        # 0x3e5cb8
303331  74 09                          je     0x30333c
303333  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
303336  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
303339  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
30333c  ba 04 00 00 00                 mov    edx,0x4
303341  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
303346  e8 b9 74 fe ff                 call   0x2ea804
30334b  48 8d 8d 30 0e 00 00           lea    rcx,[rbp+0xe30]
303352  e8 9d 91 fc ff                 call   0x2cc4f4
303357  48 8d 8d 10 0e 00 00           lea    rcx,[rbp+0xe10]
30335e  e9 07 11 00 00                 jmp    0x30446a
303363  83 f9 05                       cmp    ecx,0x5
303366  0f 85 e9 00 00 00              jne    0x303455
30336c  48 8d 95 18 0f 00 00           lea    rdx,[rbp+0xf18]
303373  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303378  e8 f3 44 ff ff                 call   0x2f7870 ; STRING getter=0x2f7870 Explosive
30337d  48 8b c8                       mov    rcx,rax
303380  e8 bf a9 fc ff                 call   0x2cdd44
303385  48 8b d0                       mov    rdx,rax
303388  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30338d  e8 d6 18 fd ff                 call   0x2d4c68
303392  0f 10 05 df 8e 0e 00           movups xmm0,XMMWORD PTR [rip+0xe8edf]        # 0x3ec278 ; CONFIG C.droppeditemsC value(+0x48)
303399  8a 0d c9 5a 0e 00              mov    cl,BYTE PTR [rip+0xe5ac9]        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
30339f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3033a3  84 c9                          test   cl,cl
3033a5  74 34                          je     0x3033db
3033a7  40 84 ff                       test   dil,dil
3033aa  74 2f                          je     0x3033db
3033ac  41 b8 10 00 00 00              mov    r8d,0x10
3033b2  48 8d 95 c8 1a 00 00           lea    rdx,[rbp+0x1ac8]
3033b9  48 8d 0d e8 d0 0e 00           lea    rcx,[rip+0xed0e8]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
3033c0  e8 2b 65 fe ff                 call   0x2e98f0
3033c5  48 8b c8                       mov    rcx,rax
3033c8  e8 a3 19 fd ff                 call   0x2d4d70
3033cd  8a 0d 95 5a 0e 00              mov    cl,BYTE PTR [rip+0xe5a95]        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
3033d3  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
3033d7  84 c0                          test   al,al
3033d9  75 03                          jne    0x3033de
3033db  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3033de  38 1d 14 57 0e 00              cmp    BYTE PTR [rip+0xe5714],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
3033e4  8b 05 fe bd 0e 00              mov    eax,DWORD PTR [rip+0xebdfe]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
3033ea  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3033ed  8b 05 f5 ae 0e 00              mov    eax,DWORD PTR [rip+0xeaef5]        # 0x3ee2e8 ; CONFIG i.DroppedItemsDistance value(+0x48)
3033f3  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3033f6  74 08                          je     0x303400
3033f8  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3033fc  84 c9                          test   cl,cl
3033fe  75 03                          jne    0x303403
303400  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
303403  38 1d bf 4f 0e 00              cmp    BYTE PTR [rip+0xe4fbf],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
303409  75 08                          jne    0x303413
30340b  38 1d a7 6e 0e 00              cmp    BYTE PTR [rip+0xe6ea7],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
303411  74 2d                          je     0x303440
303413  84 c9                          test   cl,cl
303415  74 29                          je     0x303440
303417  41 b8 10 00 00 00              mov    r8d,0x10
30341d  48 8d 95 d8 1a 00 00           lea    rdx,[rbp+0x1ad8]
303424  48 8d 0d 7d d0 0e 00           lea    rcx,[rip+0xed07d]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
30342b  e8 c0 64 fe ff                 call   0x2e98f0
303430  48 8b c8                       mov    rcx,rax
303433  e8 38 19 fd ff                 call   0x2d4d70
303438  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30343c  84 c0                          test   al,al
30343e  75 03                          jne    0x303443
303440  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
303443  41 b8 06 00 00 00              mov    r8d,0x6
303449  48 8d 95 e8 1a 00 00           lea    rdx,[rbp+0x1ae8]
303450  e9 5b 01 00 00                 jmp    0x3035b0
303455  83 f9 5f                       cmp    ecx,0x5f
303458  75 70                          jne    0x3034ca
30345a  0f 10 05 77 9d 0e 00           movups xmm0,XMMWORD PTR [rip+0xe9d77]        # 0x3ed1d8 ; CONFIG C.FragmentsColor value(+0x48)
303461  8a 0d 91 51 0e 00              mov    cl,BYTE PTR [rip+0xe5191]        # 0x3e85f8 ; CONFIG Bools.FragmentsESP value(+0x48)
303467  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30346b  84 c9                          test   cl,cl
30346d  74 09                          je     0x303478
30346f  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
303473  40 84 ff                       test   dil,dil
303476  75 03                          jne    0x30347b
303478  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30347b  38 1d 77 56 0e 00              cmp    BYTE PTR [rip+0xe5677],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
303481  8b 05 61 bd 0e 00              mov    eax,DWORD PTR [rip+0xebd61]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
303487  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
30348a  8b 05 38 ba 0e 00              mov    eax,DWORD PTR [rip+0xeba38]        # 0x3eeec8 ; CONFIG i.FragmentsDistance value(+0x48)
303490  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
303493  74 08                          je     0x30349d
303495  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
303499  84 c9                          test   cl,cl
30349b  75 03                          jne    0x3034a0
30349d  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3034a0  38 1d 22 4f 0e 00              cmp    BYTE PTR [rip+0xe4f22],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3034a6  75 08                          jne    0x3034b0
3034a8  38 1d 0a 6e 0e 00              cmp    BYTE PTR [rip+0xe6e0a],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3034ae  74 08                          je     0x3034b8
3034b0  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3034b4  84 c9                          test   cl,cl
3034b6  75 03                          jne    0x3034bb
3034b8  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3034bb  4c 8b c2                       mov    r8,rdx
3034be  48 8d 95 f8 1a 00 00           lea    rdx,[rbp+0x1af8]
3034c5  e9 e6 00 00 00                 jmp    0x3035b0
3034ca  83 f9 60                       cmp    ecx,0x60
3034cd  75 6d                          jne    0x30353c
3034cf  0f 10 05 62 9d 0e 00           movups xmm0,XMMWORD PTR [rip+0xe9d62]        # 0x3ed238 ; CONFIG C.SmallFragmentsColor value(+0x48)
3034d6  8a 0d 6c 51 0e 00              mov    cl,BYTE PTR [rip+0xe516c]        # 0x3e8648 ; CONFIG Bools.SmallFragmentsESP value(+0x48)
3034dc  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3034e0  84 c9                          test   cl,cl
3034e2  74 09                          je     0x3034ed
3034e4  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
3034e8  40 84 ff                       test   dil,dil
3034eb  75 03                          jne    0x3034f0
3034ed  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3034f0  38 1d 02 56 0e 00              cmp    BYTE PTR [rip+0xe5602],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
3034f6  8b 05 ec bc 0e 00              mov    eax,DWORD PTR [rip+0xebcec]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
3034fc  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3034ff  8b 05 13 ba 0e 00              mov    eax,DWORD PTR [rip+0xeba13]        # 0x3eef18 ; CONFIG i.SmallFragmentsDistance value(+0x48)
303505  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
303508  74 08                          je     0x303512
30350a  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30350e  84 c9                          test   cl,cl
303510  75 03                          jne    0x303515
303512  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
303515  38 1d ad 4e 0e 00              cmp    BYTE PTR [rip+0xe4ead],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30351b  75 08                          jne    0x303525
30351d  38 1d 95 6d 0e 00              cmp    BYTE PTR [rip+0xe6d95],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
303523  74 08                          je     0x30352d
303525  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
303529  84 c9                          test   cl,cl
30352b  75 03                          jne    0x303530
30352d  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
303530  4c 8b c2                       mov    r8,rdx
303533  48 8d 95 08 1b 00 00           lea    rdx,[rbp+0x1b08]
30353a  eb 74                          jmp    0x3035b0
30353c  83 f9 61                       cmp    ecx,0x61
30353f  0f 85 b4 00 00 00              jne    0x3035f9
303545  0f 10 05 4c 9d 0e 00           movups xmm0,XMMWORD PTR [rip+0xe9d4c]        # 0x3ed298 ; CONFIG C.RedCardColor value(+0x48)
30354c  8a 0d 46 51 0e 00              mov    cl,BYTE PTR [rip+0xe5146]        # 0x3e8698 ; CONFIG Bools.RedCardESP value(+0x48)
303552  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
303556  84 c9                          test   cl,cl
303558  74 09                          je     0x303563
30355a  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
30355e  40 84 ff                       test   dil,dil
303561  75 03                          jne    0x303566
303563  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
303566  38 1d 8c 55 0e 00              cmp    BYTE PTR [rip+0xe558c],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
30356c  8b 05 76 bc 0e 00              mov    eax,DWORD PTR [rip+0xebc76]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
303572  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
303575  8b 05 ed b9 0e 00              mov    eax,DWORD PTR [rip+0xeb9ed]        # 0x3eef68 ; CONFIG i.RedCardDistance value(+0x48)
30357b  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30357e  74 08                          je     0x303588
303580  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
303584  84 c9                          test   cl,cl
303586  75 03                          jne    0x30358b
303588  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
30358b  38 1d 37 4e 0e 00              cmp    BYTE PTR [rip+0xe4e37],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
303591  75 08                          jne    0x30359b
303593  38 1d 1f 6d 0e 00              cmp    BYTE PTR [rip+0xe6d1f],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
303599  74 08                          je     0x3035a3
30359b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30359f  84 c9                          test   cl,cl
3035a1  75 03                          jne    0x3035a6
3035a3  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3035a6  4c 8b c2                       mov    r8,rdx
3035a9  48 8d 95 18 1b 00 00           lea    rdx,[rbp+0x1b18]
3035b0  8a 05 b2 35 0e 00              mov    al,BYTE PTR [rip+0xe35b2]        # 0x3e6b68 ; CONFIG Bools.OtherIcons value(+0x48)
3035b6  48 8d 0d 7b cf 0e 00           lea    rcx,[rip+0xecf7b]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
3035bd  f3 0f 10 05 c3 9e 0e 00        movss  xmm0,DWORD PTR [rip+0xe9ec3]        # 0x3ed488 ; CONFIG F.OtherIconsMult value(+0x48)
3035c5  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
3035ca  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
3035cd  e8 1e 63 fe ff                 call   0x2e98f0
3035d2  48 8b c8                       mov    rcx,rax
3035d5  e8 96 17 fd ff                 call   0x2d4d70
3035da  84 c0                          test   al,al
3035dc  75 11                          jne    0x3035ef
3035de  38 1d d4 26 0e 00              cmp    BYTE PTR [rip+0xe26d4],bl        # 0x3e5cb8
3035e4  74 09                          je     0x3035ef
3035e6  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3035e9  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3035ec  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3035ef  ba 04 00 00 00                 mov    edx,0x4
3035f4  e9 5d 23 00 00                 jmp    0x305956
3035f9  83 f9 09                       cmp    ecx,0x9
3035fc  0f 85 16 01 00 00              jne    0x303718
303602  ba d8 01 00 00                 mov    edx,0x1d8
303607  49 8b cd                       mov    rcx,r13
30360a  e8 2d b8 fd ff                 call   0x2dee3c
30360f  48 8d 95 b0 11 00 00           lea    rdx,[rbp+0x11b0]
303616  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30361b  0f b7 18                       movzx  ebx,WORD PTR [rax]
30361e  e8 0d 43 ff ff                 call   0x2f7930 ; STRING getter=0x2f7930 CCTV Camera
303623  48 8b c8                       mov    rcx,rax
303626  e8 09 a8 fc ff                 call   0x2cde34
30362b  48 8b d0                       mov    rdx,rax
30362e  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
303633  e8 30 16 fd ff                 call   0x2d4c68
303638  0f 10 05 f9 77 0e 00           movups xmm0,XMMWORD PTR [rip+0xe77f9]        # 0x3eae38
30363f  8a 15 63 36 0e 00              mov    dl,BYTE PTR [rip+0xe3663]        # 0x3e6ca8 ; CONFIG Bools.CCTV value(+0x48)
303645  33 f6                          xor    esi,esi
303647  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30364b  84 d2                          test   dl,dl
30364d  74 14                          je     0x303663
30364f  40 84 ff                       test   dil,dil
303652  74 0f                          je     0x303663
303654  0f ba e3 0b                    bt     ebx,0xb
303658  73 09                          jae    0x303663
30365a  44 8d 46 01                    lea    r8d,[rsi+0x1]
30365e  41 8a c8                       mov    cl,r8b
303661  eb 09                          jmp    0x30366c
303663  40 8a ce                       mov    cl,sil
303666  41 b8 01 00 00 00              mov    r8d,0x1
30366c  40 38 35 c5 55 0e 00           cmp    BYTE PTR [rip+0xe55c5],sil        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
303673  8b 05 5f b2 0e 00              mov    eax,DWORD PTR [rip+0xeb25f]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
303679  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30367c  8b 05 06 bc 0e 00              mov    eax,DWORD PTR [rip+0xebc06]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
303682  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
303685  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
303688  40 88 b5 d8 00 00 00           mov    BYTE PTR [rbp+0xd8],sil
30368f  74 08                          je     0x303699
303691  44 88 45 b8                    mov    BYTE PTR [rbp-0x48],r8b
303695  84 c9                          test   cl,cl
303697  75 04                          jne    0x30369d
303699  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30369d  40 38 35 24 4d 0e 00           cmp    BYTE PTR [rip+0xe4d24],sil        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3036a4  75 09                          jne    0x3036af
3036a6  40 38 35 0b 6c 0e 00           cmp    BYTE PTR [rip+0xe6c0b],sil        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3036ad  74 08                          je     0x3036b7
3036af  44 88 45 c7                    mov    BYTE PTR [rbp-0x39],r8b
3036b3  84 d2                          test   dl,dl
3036b5  75 04                          jne    0x3036bb
3036b7  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3036bb  8a 05 47 35 0e 00              mov    al,BYTE PTR [rip+0xe3547]        # 0x3e6c08 ; CONFIG Bools.DeployableIcons value(+0x48)
3036c1  48 8d 95 28 1b 00 00           lea    rdx,[rbp+0x1b28]
3036c8  f3 0f 10 05 58 9e 0e 00        movss  xmm0,DWORD PTR [rip+0xe9e58]        # 0x3ed528 ; CONFIG F.DeployableIconsMult value(+0x48)
3036d0  48 8d 0d 61 ce 0e 00           lea    rcx,[rip+0xece61]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
3036d7  41 b8 08 00 00 00              mov    r8d,0x8
3036dd  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
3036e2  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
3036e5  e8 06 62 fe ff                 call   0x2e98f0
3036ea  48 8b c8                       mov    rcx,rax
3036ed  e8 7e 16 fd ff                 call   0x2d4d70
3036f2  84 c0                          test   al,al
3036f4  0f 85 57 22 00 00              jne    0x305951
3036fa  40 38 35 b7 25 0e 00           cmp    BYTE PTR [rip+0xe25b7],sil        # 0x3e5cb8
303701  0f 84 4a 22 00 00              je     0x305951
303707  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
30370b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30370f  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
303713  e9 39 22 00 00                 jmp    0x305951
303718  83 f9 47                       cmp    ecx,0x47
30371b  0f 85 53 0d 00 00              jne    0x304474
303721  48 8d 95 10 04 00 00           lea    rdx,[rbp+0x410]
303728  49 8b cd                       mov    rcx,r13
30372b  e8 6c 30 06 00                 call   0x36679c
303730  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
303737  e8 58 4f fd ff                 call   0x2d8694
30373c  84 c0                          test   al,al
30373e  0f 85 1f 0d 00 00              jne    0x304463
303744  38 1d 3e 5f 0e 00              cmp    BYTE PTR [rip+0xe5f3e],bl        # 0x3e9688 ; CONFIG Bools.ExcludeTrash value(+0x48)
30374a  0f 84 25 02 00 00              je     0x303975
303750  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
303757  e8 90 a0 fc ff                 call   0x2cd7ec
30375c  48 8b c8                       mov    rcx,rax
30375f  e8 f0 2b fd ff                 call   0x2d6354
303764  48 8d 95 63 09 00 00           lea    rdx,[rbp+0x963]
30376b  48 8b d8                       mov    rbx,rax
30376e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303773  e8 28 42 ff ff                 call   0x2f79a0 ; STRING getter=0x2f79a0 Rock
303778  48 8b c8                       mov    rcx,rax
30377b  e8 4c a5 fc ff                 call   0x2cdccc
303780  48 be 25 23 22 84 e4 9c f2 cb  movabs rsi,0xcbf29ce484222325
30378a  48 8b c8                       mov    rcx,rax
30378d  48 8b d6                       mov    rdx,rsi
303790  e8 b7 23 fe ff                 call   0x2e5b4c
303795  48 3b d8                       cmp    rbx,rax
303798  0f 84 a9 01 00 00              je     0x303947
30379e  48 8d 95 c8 27 00 00           lea    rdx,[rbp+0x27c8]
3037a5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3037aa  e8 d9 42 ff ff                 call   0x2f7a88 ; STRING getter=0x2f7a88 High Velocity Arrow
3037af  48 8b c8                       mov    rcx,rax
3037b2  e8 dd cc 01 00                 call   0x320494
3037b7  48 8b c8                       mov    rcx,rax
3037ba  48 8b d6                       mov    rdx,rsi
3037bd  e8 8a 23 fe ff                 call   0x2e5b4c
3037c2  48 3b d8                       cmp    rbx,rax
3037c5  0f 84 7c 01 00 00              je     0x303947
3037cb  48 8d 95 97 11 00 00           lea    rdx,[rbp+0x1197]
3037d2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3037d7  e8 ec 43 ff ff                 call   0x2f7bc8 ; STRING getter=0x2f7bc8 Bone Arrow
3037dc  48 8b c8                       mov    rcx,rax
3037df  e8 70 64 fe ff                 call   0x2e9c54
3037e4  48 8b c8                       mov    rcx,rax
3037e7  48 8b d6                       mov    rdx,rsi
3037ea  e8 5d 23 fe ff                 call   0x2e5b4c
3037ef  48 3b d8                       cmp    rbx,rax
3037f2  0f 84 4f 01 00 00              je     0x303947
3037f8  48 8d 95 80 14 00 00           lea    rdx,[rbp+0x1480]
3037ff  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303804  e8 47 44 ff ff                 call   0x2f7c50 ; STRING getter=0x2f7c50 Wooden Arrow
303809  48 8b c8                       mov    rcx,rax
30380c  e8 e3 4d fd ff                 call   0x2d85f4
303811  48 8b c8                       mov    rcx,rax
303814  48 8b d6                       mov    rdx,rsi
303817  e8 30 23 fe ff                 call   0x2e5b4c
30381c  48 3b d8                       cmp    rbx,rax
30381f  0f 84 22 01 00 00              je     0x303947
303825  48 8d 95 98 0e 00 00           lea    rdx,[rbp+0xe98]
30382c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303831  e8 7a c2 fe ff                 call   0x2efab0 ; STRING getter=0x2efab0 Snowball
303836  48 8b c8                       mov    rcx,rax
303839  e8 4e 63 fe ff                 call   0x2e9b8c
30383e  48 8b c8                       mov    rcx,rax
303841  48 8b d6                       mov    rdx,rsi
303844  e8 03 23 fe ff                 call   0x2e5b4c
303849  48 3b d8                       cmp    rbx,rax
30384c  0f 84 f5 00 00 00              je     0x303947
303852  48 8d 95 68 09 00 00           lea    rdx,[rbp+0x968]
303859  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30385e  e8 9d c3 fe ff                 call   0x2efc00 ; STRING getter=0x2efc00 Grub
303863  48 8b c8                       mov    rcx,rax
303866  e8 61 a4 fc ff                 call   0x2cdccc
30386b  48 8b c8                       mov    rcx,rax
30386e  48 8b d6                       mov    rdx,rsi
303871  e8 d6 22 fe ff                 call   0x2e5b4c
303876  48 3b d8                       cmp    rbx,rax
303879  0f 84 c8 00 00 00              je     0x303947
30387f  48 8d 95 6d 09 00 00           lea    rdx,[rbp+0x96d]
303886  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30388b  e8 b4 c4 fe ff                 call   0x2efd44 ; STRING getter=0x2efd44 Worm
303890  48 8b c8                       mov    rcx,rax
303893  e8 34 a4 fc ff                 call   0x2cdccc
303898  48 8b c8                       mov    rcx,rax
30389b  48 8b d6                       mov    rdx,rsi
30389e  e8 a9 22 fe ff                 call   0x2e5b4c
3038a3  48 3b d8                       cmp    rbx,rax
3038a6  0f 84 9b 00 00 00              je     0x303947
3038ac  48 8d 95 a7 14 00 00           lea    rdx,[rbp+0x14a7]
3038b3  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3038b8  e8 c7 c4 fe ff                 call   0x2efd84 ; STRING getter=0x2efd84 Nailgun Nails
3038bd  48 8b c8                       mov    rcx,rax
3038c0  e8 c3 98 fd ff                 call   0x2dd188
3038c5  48 8b c8                       mov    rcx,rax
3038c8  48 8b d6                       mov    rdx,rsi
3038cb  e8 7c 22 fe ff                 call   0x2e5b4c
3038d0  48 3b d8                       cmp    rbx,rax
3038d3  74 72                          je     0x303947
3038d5  48 8d 95 72 09 00 00           lea    rdx,[rbp+0x972]
3038dc  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3038e1  e8 62 c5 fe ff                 call   0x2efe48 ; STRING getter=0x2efe48 seed
3038e6  48 8b c8                       mov    rcx,rax
3038e9  e8 de a3 fc ff                 call   0x2cdccc
3038ee  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
3038f5  48 8b d8                       mov    rbx,rax
3038f8  e8 ef 9e fc ff                 call   0x2cd7ec
3038fd  48 8b c8                       mov    rcx,rax
303900  48 8b d3                       mov    rdx,rbx
303903  e8 58 70 0c 00                 call   0x3ca960
303908  48 85 c0                       test   rax,rax
30390b  75 3a                          jne    0x303947
30390d  48 8d 95 40 0a 00 00           lea    rdx,[rbp+0xa40]
303914  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303919  e8 52 c6 fe ff                 call   0x2eff70 ; STRING getter=0x2eff70 torch
30391e  48 8b c8                       mov    rcx,rax
303921  e8 b6 4b fd ff                 call   0x2d84dc
303926  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
30392d  48 8b d8                       mov    rbx,rax
303930  e8 b7 9e fc ff                 call   0x2cd7ec
303935  48 8b c8                       mov    rcx,rax
303938  48 8b d3                       mov    rdx,rbx
30393b  e8 20 70 0c 00                 call   0x3ca960
303940  33 db                          xor    ebx,ebx
303942  48 85 c0                       test   rax,rax
303945  74 2e                          je     0x303975
303947  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
30394e  e8 a1 8b fc ff                 call   0x2cc4f4
303953  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
303958  e8 e7 bb fe ff                 call   0x2ef544
30395d  48 8d 8d 70 02 00 00           lea    rcx,[rbp+0x270]
303964  e8 7f bb fd ff                 call   0x2df4e8
303969  48 8b bd 48 03 00 00           mov    rdi,QWORD PTR [rbp+0x348]
303970  e9 38 3c 00 00                 jmp    0x3075ad
303975  49 8b cd                       mov    rcx,r13
303978  e8 db 2d 06 00                 call   0x366758
30397d  41 b8 11 00 00 00              mov    r8d,0x11
303983  48 8d 95 38 1b 00 00           lea    rdx,[rbp+0x1b38]
30398a  48 8d 0d 57 cd 0e 00           lea    rcx,[rip+0xecd57]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
303991  0f b7 f0                       movzx  esi,ax
303994  e8 57 5f fe ff                 call   0x2e98f0
303999  48 8b c8                       mov    rcx,rax
30399c  e8 cf 13 fd ff                 call   0x2d4d70
3039a1  84 c0                          test   al,al
3039a3  0f 84 47 05 00 00              je     0x303ef0
3039a9  38 1d a9 5f 0e 00              cmp    BYTE PTR [rip+0xe5fa9],bl        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
3039af  0f 84 3b 05 00 00              je     0x303ef0
3039b5  38 1d c6 ba 0e 00              cmp    BYTE PTR [rip+0xebac6],bl        # 0x3ef481
3039bb  0f 84 2f 05 00 00              je     0x303ef0
3039c1  41 b8 0f 00 00 00              mov    r8d,0xf
3039c7  48 8d 95 48 1b 00 00           lea    rdx,[rbp+0x1b48]
3039ce  48 8d 0d d3 ca 0e 00           lea    rcx,[rip+0xecad3]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
3039d5  e8 16 5f fe ff                 call   0x2e98f0
3039da  48 8b c8                       mov    rcx,rax
3039dd  e8 8e 13 fd ff                 call   0x2d4d70
3039e2  84 c0                          test   al,al
3039e4  0f 85 cd 04 00 00              jne    0x303eb7
3039ea  66 85 f6                       test   si,si
3039ed  75 4a                          jne    0x303a39
3039ef  45 33 c0                       xor    r8d,r8d
3039f2  48 8d 95 58 1b 00 00           lea    rdx,[rbp+0x1b58]
3039f9  48 8d 0d a8 ca 0e 00           lea    rcx,[rip+0xecaa8]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303a00  e8 eb 5e fe ff                 call   0x2e98f0
303a05  48 8b c8                       mov    rcx,rax
303a08  e8 63 13 fd ff                 call   0x2d4d70
303a0d  84 c0                          test   al,al
303a0f  0f 84 db 04 00 00              je     0x303ef0
303a15  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303a1b  4c 8d 85 a0 06 00 00           lea    r8,[rbp+0x6a0]
303a22  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303a26  f2 0f 11 85 a0 06 00 00        movsd  QWORD PTR [rbp+0x6a0],xmm0
303a2e  89 85 a8 06 00 00              mov    DWORD PTR [rbp+0x6a8],eax
303a34  e9 9d 04 00 00                 jmp    0x303ed6
303a39  b8 01 00 00 00                 mov    eax,0x1
303a3e  66 3b f0                       cmp    si,ax
303a41  75 4a                          jne    0x303a8d
303a43  44 8b c0                       mov    r8d,eax
303a46  48 8d 95 68 1b 00 00           lea    rdx,[rbp+0x1b68]
303a4d  48 8d 0d 54 ca 0e 00           lea    rcx,[rip+0xeca54]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303a54  e8 97 5e fe ff                 call   0x2e98f0
303a59  48 8b c8                       mov    rcx,rax
303a5c  e8 0f 13 fd ff                 call   0x2d4d70
303a61  84 c0                          test   al,al
303a63  0f 84 87 04 00 00              je     0x303ef0
303a69  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303a6f  4c 8d 85 b0 06 00 00           lea    r8,[rbp+0x6b0]
303a76  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303a7a  f2 0f 11 85 b0 06 00 00        movsd  QWORD PTR [rbp+0x6b0],xmm0
303a82  89 85 b8 06 00 00              mov    DWORD PTR [rbp+0x6b8],eax
303a88  e9 49 04 00 00                 jmp    0x303ed6
303a8d  b8 02 00 00 00                 mov    eax,0x2
303a92  66 3b f0                       cmp    si,ax
303a95  75 4a                          jne    0x303ae1
303a97  44 8b c0                       mov    r8d,eax
303a9a  48 8d 95 78 1b 00 00           lea    rdx,[rbp+0x1b78]
303aa1  48 8d 0d 00 ca 0e 00           lea    rcx,[rip+0xeca00]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303aa8  e8 43 5e fe ff                 call   0x2e98f0
303aad  48 8b c8                       mov    rcx,rax
303ab0  e8 bb 12 fd ff                 call   0x2d4d70
303ab5  84 c0                          test   al,al
303ab7  0f 84 33 04 00 00              je     0x303ef0
303abd  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303ac3  4c 8d 85 c0 06 00 00           lea    r8,[rbp+0x6c0]
303aca  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303ace  f2 0f 11 85 c0 06 00 00        movsd  QWORD PTR [rbp+0x6c0],xmm0
303ad6  89 85 c8 06 00 00              mov    DWORD PTR [rbp+0x6c8],eax
303adc  e9 f5 03 00 00                 jmp    0x303ed6
303ae1  b8 03 00 00 00                 mov    eax,0x3
303ae6  66 3b f0                       cmp    si,ax
303ae9  75 4a                          jne    0x303b35
303aeb  44 8b c0                       mov    r8d,eax
303aee  48 8d 95 88 1b 00 00           lea    rdx,[rbp+0x1b88]
303af5  48 8d 0d ac c9 0e 00           lea    rcx,[rip+0xec9ac]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303afc  e8 ef 5d fe ff                 call   0x2e98f0
303b01  48 8b c8                       mov    rcx,rax
303b04  e8 67 12 fd ff                 call   0x2d4d70
303b09  84 c0                          test   al,al
303b0b  0f 84 df 03 00 00              je     0x303ef0
303b11  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303b17  4c 8d 85 d0 06 00 00           lea    r8,[rbp+0x6d0]
303b1e  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303b22  f2 0f 11 85 d0 06 00 00        movsd  QWORD PTR [rbp+0x6d0],xmm0
303b2a  89 85 d8 06 00 00              mov    DWORD PTR [rbp+0x6d8],eax
303b30  e9 a1 03 00 00                 jmp    0x303ed6
303b35  b8 04 00 00 00                 mov    eax,0x4
303b3a  66 3b f0                       cmp    si,ax
303b3d  0f 85 88 00 00 00              jne    0x303bcb
303b43  44 8b c0                       mov    r8d,eax
303b46  48 8d 95 98 1b 00 00           lea    rdx,[rbp+0x1b98]
303b4d  48 8d 0d 54 c9 0e 00           lea    rcx,[rip+0xec954]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303b54  e8 97 5d fe ff                 call   0x2e98f0
303b59  48 8b c8                       mov    rcx,rax
303b5c  e8 0f 12 fd ff                 call   0x2d4d70
303b61  84 c0                          test   al,al
303b63  0f 84 87 03 00 00              je     0x303ef0
303b69  48 8d 95 a1 0e 00 00           lea    rdx,[rbp+0xea1]
303b70  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303b75  e8 e6 c4 fe ff                 call   0x2f0060 ; STRING getter=0x2f0060 Backpack
303b7a  48 8b c8                       mov    rcx,rax
303b7d  e8 0a 60 fe ff                 call   0x2e9b8c
303b82  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
303b89  48 8b d8                       mov    rbx,rax
303b8c  e8 5b 9c fc ff                 call   0x2cd7ec
303b91  48 8b c8                       mov    rcx,rax
303b94  48 8b d3                       mov    rdx,rbx
303b97  e8 c4 6d 0c 00                 call   0x3ca960
303b9c  33 db                          xor    ebx,ebx
303b9e  48 85 c0                       test   rax,rax
303ba1  0f 85 49 03 00 00              jne    0x303ef0
303ba7  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303bad  4c 8d 85 e0 06 00 00           lea    r8,[rbp+0x6e0]
303bb4  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303bb8  f2 0f 11 85 e0 06 00 00        movsd  QWORD PTR [rbp+0x6e0],xmm0
303bc0  89 85 e8 06 00 00              mov    DWORD PTR [rbp+0x6e8],eax
303bc6  e9 0b 03 00 00                 jmp    0x303ed6
303bcb  b8 05 00 00 00                 mov    eax,0x5
303bd0  66 3b f0                       cmp    si,ax
303bd3  75 4a                          jne    0x303c1f
303bd5  44 8b c0                       mov    r8d,eax
303bd8  48 8d 95 a8 1b 00 00           lea    rdx,[rbp+0x1ba8]
303bdf  48 8d 0d c2 c8 0e 00           lea    rcx,[rip+0xec8c2]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303be6  e8 05 5d fe ff                 call   0x2e98f0
303beb  48 8b c8                       mov    rcx,rax
303bee  e8 7d 11 fd ff                 call   0x2d4d70
303bf3  84 c0                          test   al,al
303bf5  0f 84 f5 02 00 00              je     0x303ef0
303bfb  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303c01  4c 8d 85 f0 06 00 00           lea    r8,[rbp+0x6f0]
303c08  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303c0c  f2 0f 11 85 f0 06 00 00        movsd  QWORD PTR [rbp+0x6f0],xmm0
303c14  89 85 f8 06 00 00              mov    DWORD PTR [rbp+0x6f8],eax
303c1a  e9 b7 02 00 00                 jmp    0x303ed6
303c1f  b8 06 00 00 00                 mov    eax,0x6
303c24  66 3b f0                       cmp    si,ax
303c27  75 4a                          jne    0x303c73
303c29  44 8b c0                       mov    r8d,eax
303c2c  48 8d 95 b8 1b 00 00           lea    rdx,[rbp+0x1bb8]
303c33  48 8d 0d 6e c8 0e 00           lea    rcx,[rip+0xec86e]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303c3a  e8 b1 5c fe ff                 call   0x2e98f0
303c3f  48 8b c8                       mov    rcx,rax
303c42  e8 29 11 fd ff                 call   0x2d4d70
303c47  84 c0                          test   al,al
303c49  0f 84 a1 02 00 00              je     0x303ef0
303c4f  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303c55  4c 8d 85 00 07 00 00           lea    r8,[rbp+0x700]
303c5c  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303c60  f2 0f 11 85 00 07 00 00        movsd  QWORD PTR [rbp+0x700],xmm0
303c68  89 85 08 07 00 00              mov    DWORD PTR [rbp+0x708],eax
303c6e  e9 63 02 00 00                 jmp    0x303ed6
303c73  b8 07 00 00 00                 mov    eax,0x7
303c78  66 3b f0                       cmp    si,ax
303c7b  75 4a                          jne    0x303cc7
303c7d  44 8b c0                       mov    r8d,eax
303c80  48 8d 95 c8 1b 00 00           lea    rdx,[rbp+0x1bc8]
303c87  48 8d 0d 1a c8 0e 00           lea    rcx,[rip+0xec81a]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303c8e  e8 5d 5c fe ff                 call   0x2e98f0
303c93  48 8b c8                       mov    rcx,rax
303c96  e8 d5 10 fd ff                 call   0x2d4d70
303c9b  84 c0                          test   al,al
303c9d  0f 84 4d 02 00 00              je     0x303ef0
303ca3  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303ca9  4c 8d 85 10 07 00 00           lea    r8,[rbp+0x710]
303cb0  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303cb4  f2 0f 11 85 10 07 00 00        movsd  QWORD PTR [rbp+0x710],xmm0
303cbc  89 85 18 07 00 00              mov    DWORD PTR [rbp+0x718],eax
303cc2  e9 0f 02 00 00                 jmp    0x303ed6
303cc7  b8 08 00 00 00                 mov    eax,0x8
303ccc  66 3b f0                       cmp    si,ax
303ccf  75 4a                          jne    0x303d1b
303cd1  44 8b c0                       mov    r8d,eax
303cd4  48 8d 95 d8 1b 00 00           lea    rdx,[rbp+0x1bd8]
303cdb  48 8d 0d c6 c7 0e 00           lea    rcx,[rip+0xec7c6]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303ce2  e8 09 5c fe ff                 call   0x2e98f0
303ce7  48 8b c8                       mov    rcx,rax
303cea  e8 81 10 fd ff                 call   0x2d4d70
303cef  84 c0                          test   al,al
303cf1  0f 84 f9 01 00 00              je     0x303ef0
303cf7  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303cfd  4c 8d 85 20 07 00 00           lea    r8,[rbp+0x720]
303d04  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303d08  f2 0f 11 85 20 07 00 00        movsd  QWORD PTR [rbp+0x720],xmm0
303d10  89 85 28 07 00 00              mov    DWORD PTR [rbp+0x728],eax
303d16  e9 bb 01 00 00                 jmp    0x303ed6
303d1b  b8 09 00 00 00                 mov    eax,0x9
303d20  66 3b f0                       cmp    si,ax
303d23  75 4a                          jne    0x303d6f
303d25  44 8b c0                       mov    r8d,eax
303d28  48 8d 95 e8 1b 00 00           lea    rdx,[rbp+0x1be8]
303d2f  48 8d 0d 72 c7 0e 00           lea    rcx,[rip+0xec772]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303d36  e8 b5 5b fe ff                 call   0x2e98f0
303d3b  48 8b c8                       mov    rcx,rax
303d3e  e8 2d 10 fd ff                 call   0x2d4d70
303d43  84 c0                          test   al,al
303d45  0f 84 a5 01 00 00              je     0x303ef0
303d4b  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303d51  4c 8d 85 30 07 00 00           lea    r8,[rbp+0x730]
303d58  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303d5c  f2 0f 11 85 30 07 00 00        movsd  QWORD PTR [rbp+0x730],xmm0
303d64  89 85 38 07 00 00              mov    DWORD PTR [rbp+0x738],eax
303d6a  e9 67 01 00 00                 jmp    0x303ed6
303d6f  b8 0a 00 00 00                 mov    eax,0xa
303d74  66 3b f0                       cmp    si,ax
303d77  75 4a                          jne    0x303dc3
303d79  44 8b c0                       mov    r8d,eax
303d7c  48 8d 95 f8 1b 00 00           lea    rdx,[rbp+0x1bf8]
303d83  48 8d 0d 1e c7 0e 00           lea    rcx,[rip+0xec71e]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303d8a  e8 61 5b fe ff                 call   0x2e98f0
303d8f  48 8b c8                       mov    rcx,rax
303d92  e8 d9 0f fd ff                 call   0x2d4d70
303d97  84 c0                          test   al,al
303d99  0f 84 51 01 00 00              je     0x303ef0
303d9f  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303da5  4c 8d 85 40 07 00 00           lea    r8,[rbp+0x740]
303dac  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303db0  f2 0f 11 85 40 07 00 00        movsd  QWORD PTR [rbp+0x740],xmm0
303db8  89 85 48 07 00 00              mov    DWORD PTR [rbp+0x748],eax
303dbe  e9 13 01 00 00                 jmp    0x303ed6
303dc3  b8 0d 00 00 00                 mov    eax,0xd
303dc8  66 3b f0                       cmp    si,ax
303dcb  75 4b                          jne    0x303e18
303dcd  44 8d 40 fe                    lea    r8d,[rax-0x2]
303dd1  48 8d 95 08 1c 00 00           lea    rdx,[rbp+0x1c08]
303dd8  48 8d 0d c9 c6 0e 00           lea    rcx,[rip+0xec6c9]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303ddf  e8 0c 5b fe ff                 call   0x2e98f0
303de4  48 8b c8                       mov    rcx,rax
303de7  e8 84 0f fd ff                 call   0x2d4d70
303dec  84 c0                          test   al,al
303dee  0f 84 fc 00 00 00              je     0x303ef0
303df4  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303dfa  4c 8d 85 50 07 00 00           lea    r8,[rbp+0x750]
303e01  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303e05  f2 0f 11 85 50 07 00 00        movsd  QWORD PTR [rbp+0x750],xmm0
303e0d  89 85 58 07 00 00              mov    DWORD PTR [rbp+0x758],eax
303e13  e9 be 00 00 00                 jmp    0x303ed6
303e18  b9 10 00 00 00                 mov    ecx,0x10
303e1d  66 3b f1                       cmp    si,cx
303e20  75 48                          jne    0x303e6a
303e22  44 8d 41 fc                    lea    r8d,[rcx-0x4]
303e26  48 8d 0d 7b c6 0e 00           lea    rcx,[rip+0xec67b]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303e2d  48 8d 95 18 1c 00 00           lea    rdx,[rbp+0x1c18]
303e34  e8 b7 5a fe ff                 call   0x2e98f0
303e39  48 8b c8                       mov    rcx,rax
303e3c  e8 2f 0f fd ff                 call   0x2d4d70
303e41  84 c0                          test   al,al
303e43  0f 84 a7 00 00 00              je     0x303ef0
303e49  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303e4f  4c 8d 85 60 07 00 00           lea    r8,[rbp+0x760]
303e56  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303e5a  f2 0f 11 85 60 07 00 00        movsd  QWORD PTR [rbp+0x760],xmm0
303e62  89 85 68 07 00 00              mov    DWORD PTR [rbp+0x768],eax
303e68  eb 6c                          jmp    0x303ed6
303e6a  b9 11 00 00 00                 mov    ecx,0x11
303e6f  66 3b f1                       cmp    si,cx
303e72  75 7c                          jne    0x303ef0
303e74  4c 8b c0                       mov    r8,rax
303e77  48 8d 95 28 1c 00 00           lea    rdx,[rbp+0x1c28]
303e7e  48 8d 0d 23 c6 0e 00           lea    rcx,[rip+0xec623]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
303e85  e8 66 5a fe ff                 call   0x2e98f0
303e8a  48 8b c8                       mov    rcx,rax
303e8d  e8 de 0e fd ff                 call   0x2d4d70
303e92  84 c0                          test   al,al
303e94  74 5a                          je     0x303ef0
303e96  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303e9c  4c 8d 85 70 07 00 00           lea    r8,[rbp+0x770]
303ea3  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303ea7  f2 0f 11 85 70 07 00 00        movsd  QWORD PTR [rbp+0x770],xmm0
303eaf  89 85 78 07 00 00              mov    DWORD PTR [rbp+0x778],eax
303eb5  eb 1f                          jmp    0x303ed6
303eb7  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
303ebd  4c 8d 85 80 07 00 00           lea    r8,[rbp+0x780]
303ec4  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
303ec8  f2 0f 11 85 80 07 00 00        movsd  QWORD PTR [rbp+0x780],xmm0
303ed0  89 85 88 07 00 00              mov    DWORD PTR [rbp+0x788],eax
303ed6  48 8b 8d 78 02 00 00           mov    rcx,QWORD PTR [rbp+0x278]
303edd  45 33 c9                       xor    r9d,r9d
303ee0  88 5c 24 28                    mov    BYTE PTR [rsp+0x28],bl
303ee4  49 8b d4                       mov    rdx,r12
303ee7  88 5c 24 20                    mov    BYTE PTR [rsp+0x20],bl
303eeb  e8 38 3a 01 00                 call   0x317928
303ef0  40 84 ff                       test   dil,dil
303ef3  0f 84 6a 05 00 00              je     0x304463
303ef9  38 1d 19 4f 0e 00              cmp    BYTE PTR [rip+0xe4f19],bl        # 0x3e8e18 ; CONFIG Bools.droppedweapons value(+0x48)
303eff  75 0c                          jne    0x303f0d
303f01  38 1d 61 4f 0e 00              cmp    BYTE PTR [rip+0xe4f61],bl        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
303f07  0f 84 56 05 00 00              je     0x304463
303f0d  49 8b cd                       mov    rcx,r13
303f10  e8 0f 28 06 00                 call   0x366724
303f15  8b d0                          mov    edx,eax
303f17  48 8d 8d 78 0a 00 00           lea    rcx,[rbp+0xa78]
303f1e  8b f8                          mov    edi,eax
303f20  e8 eb 55 fd ff                 call   0x2d9510
303f25  66 85 f6                       test   si,si
303f28  0f 85 65 01 00 00              jne    0x304093
303f2e  8a 0d e4 4e 0e 00              mov    cl,BYTE PTR [rip+0xe4ee4]        # 0x3e8e18 ; CONFIG Bools.droppedweapons value(+0x48)
303f34  84 c9                          test   cl,cl
303f36  0f 84 55 01 00 00              je     0x304091
303f3c  48 8d 95 10 04 00 00           lea    rdx,[rbp+0x410]
303f43  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
303f48  e8 d7 0c fd ff                 call   0x2d4c24
303f4d  b9 01 00 00 00                 mov    ecx,0x1
303f52  3b f9                          cmp    edi,ecx
303f54  0f 8e 86 00 00 00              jle    0x303fe0
303f5a  48 8d 95 ca 03 00 00           lea    rdx,[rbp+0x3ca]
303f61  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303f66  e8 75 c2 fe ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
303f6b  48 8b c8                       mov    rcx,rax
303f6e  e8 f1 44 fd ff                 call   0x2d8464
303f73  48 8d 95 c8 03 00 00           lea    rdx,[rbp+0x3c8]
303f7a  48 8b d8                       mov    rbx,rax
303f7d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
303f82  e8 71 c1 fe ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
303f87  48 8b c8                       mov    rcx,rax
303f8a  e8 d5 44 fd ff                 call   0x2d8464
303f8f  48 8b d0                       mov    rdx,rax
303f92  4c 8d 85 78 0a 00 00           lea    r8,[rbp+0xa78]
303f99  48 8d 8d 88 24 00 00           lea    rcx,[rbp+0x2488]
303fa0  e8 6f 67 fe ff                 call   0x2ea714
303fa5  48 8b d0                       mov    rdx,rax
303fa8  48 8d 8d 68 24 00 00           lea    rcx,[rbp+0x2468]
303faf  4c 8b c3                       mov    r8,rbx
303fb2  e8 81 6d fc ff                 call   0x2cad38
303fb7  48 8b d0                       mov    rdx,rax
303fba  48 8d 4d d8                    lea    rcx,[rbp-0x28]
303fbe  e8 21 0c fd ff                 call   0x2d4be4
303fc3  48 8d 8d 68 24 00 00           lea    rcx,[rbp+0x2468]
303fca  e8 25 85 fc ff                 call   0x2cc4f4
303fcf  48 8d 8d 88 24 00 00           lea    rcx,[rbp+0x2488]
303fd6  e8 19 85 fc ff                 call   0x2cc4f4
303fdb  33 db                          xor    ebx,ebx
303fdd  8d 4b 01                       lea    ecx,[rbx+0x1]
303fe0  38 1d 12 4b 0e 00              cmp    BYTE PTR [rip+0xe4b12],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
303fe6  8b 05 4c a3 0e 00              mov    eax,DWORD PTR [rip+0xea34c]        # 0x3ee338 ; CONFIG i.DroppedWeaponsDistance value(+0x48)
303fec  0f 10 05 e5 82 0e 00           movups xmm0,XMMWORD PTR [rip+0xe82e5]        # 0x3ec2d8 ; CONFIG C.droppedweaponsC value(+0x48)
303ff3  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
303ff6  8b 05 ec b1 0e 00              mov    eax,DWORD PTR [rip+0xeb1ec]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
303ffc  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
303fff  8a 05 13 4e 0e 00              mov    al,BYTE PTR [rip+0xe4e13]        # 0x3e8e18 ; CONFIG Bools.droppedweapons value(+0x48)
304005  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304009  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30400c  74 07                          je     0x304015
30400e  88 4d b8                       mov    BYTE PTR [rbp-0x48],cl
304011  84 c0                          test   al,al
304013  75 03                          jne    0x304018
304015  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304018  38 1d aa 43 0e 00              cmp    BYTE PTR [rip+0xe43aa],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30401e  75 08                          jne    0x304028
304020  38 1d 92 62 0e 00              cmp    BYTE PTR [rip+0xe6292],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
304026  74 07                          je     0x30402f
304028  88 4d c7                       mov    BYTE PTR [rbp-0x39],cl
30402b  84 c0                          test   al,al
30402d  75 03                          jne    0x304032
30402f  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304032  f3 0f 10 05 4e 94 0e 00        movss  xmm0,DWORD PTR [rip+0xe944e]        # 0x3ed488 ; CONFIG F.OtherIconsMult value(+0x48)
30403a  48 8d 95 38 1c 00 00           lea    rdx,[rbp+0x1c38]
304041  41 b8 06 00 00 00              mov    r8d,0x6
304047  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
30404c  48 8d 0d e5 c4 0e 00           lea    rcx,[rip+0xec4e5]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
304053  88 5d a4                       mov    BYTE PTR [rbp-0x5c],bl
304056  e8 95 58 fe ff                 call   0x2e98f0
30405b  48 8b c8                       mov    rcx,rax
30405e  e8 0d 0d fd ff                 call   0x2d4d70
304063  84 c0                          test   al,al
304065  75 11                          jne    0x304078
304067  38 1d 4b 1c 0e 00              cmp    BYTE PTR [rip+0xe1c4b],bl        # 0x3e5cb8
30406d  74 09                          je     0x304078
30406f  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
304072  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304075  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304078  ba 04 00 00 00                 mov    edx,0x4
30407d  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
304082  e8 7d 67 fe ff                 call   0x2ea804
304087  8a 0d 8b 4d 0e 00              mov    cl,BYTE PTR [rip+0xe4d8b]        # 0x3e8e18 ; CONFIG Bools.droppedweapons value(+0x48)
30408d  84 c9                          test   cl,cl
30408f  75 02                          jne    0x304093
304091  b3 01                          mov    bl,0x1
304093  33 c0                          xor    eax,eax
304095  38 45 c4                       cmp    BYTE PTR [rbp-0x3c],al
304098  0f 85 b9 03 00 00              jne    0x304457
30409e  38 05 c4 4d 0e 00              cmp    BYTE PTR [rip+0xe4dc4],al        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
3040a4  0f 84 ad 03 00 00              je     0x304457
3040aa  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
3040b1  e8 de 45 fd ff                 call   0x2d8694
3040b6  84 c0                          test   al,al
3040b8  0f 85 99 03 00 00              jne    0x304457
3040be  41 b8 0f 00 00 00              mov    r8d,0xf
3040c4  48 8d 95 48 1c 00 00           lea    rdx,[rbp+0x1c48]
3040cb  48 8d 0d d6 c3 0e 00           lea    rcx,[rip+0xec3d6]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
3040d2  e8 19 58 fe ff                 call   0x2e98f0
3040d7  48 8b c8                       mov    rcx,rax
3040da  e8 91 0c fd ff                 call   0x2d4d70
3040df  84 c0                          test   al,al
3040e1  0f 85 25 02 00 00              jne    0x30430c
3040e7  66 85 f6                       test   si,si
3040ea  75 33                          jne    0x30411f
3040ec  45 33 c0                       xor    r8d,r8d
3040ef  48 8d 95 58 1c 00 00           lea    rdx,[rbp+0x1c58]
3040f6  48 8d 0d ab c3 0e 00           lea    rcx,[rip+0xec3ab]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
3040fd  e8 ee 57 fe ff                 call   0x2e98f0
304102  48 8b c8                       mov    rcx,rax
304105  e8 66 0c fd ff                 call   0x2d4d70
30410a  84 c0                          test   al,al
30410c  0f 85 8c 01 00 00              jne    0x30429e
304112  84 db                          test   bl,bl
304114  0f 85 e1 01 00 00              jne    0x3042fb
30411a  e9 7f 01 00 00                 jmp    0x30429e
30411f  b8 01 00 00 00                 mov    eax,0x1
304124  66 3b f0                       cmp    si,ax
304127  75 0c                          jne    0x304135
304129  48 8d 95 68 1c 00 00           lea    rdx,[rbp+0x1c68]
304130  e9 4e 01 00 00                 jmp    0x304283
304135  b8 02 00 00 00                 mov    eax,0x2
30413a  66 3b f0                       cmp    si,ax
30413d  75 0c                          jne    0x30414b
30413f  48 8d 95 78 1c 00 00           lea    rdx,[rbp+0x1c78]
304146  e9 38 01 00 00                 jmp    0x304283
30414b  b8 03 00 00 00                 mov    eax,0x3
304150  66 3b f0                       cmp    si,ax
304153  75 0c                          jne    0x304161
304155  48 8d 95 88 1c 00 00           lea    rdx,[rbp+0x1c88]
30415c  e9 22 01 00 00                 jmp    0x304283
304161  b8 04 00 00 00                 mov    eax,0x4
304166  66 3b f0                       cmp    si,ax
304169  75 61                          jne    0x3041cc
30416b  44 8b c0                       mov    r8d,eax
30416e  48 8d 95 98 1c 00 00           lea    rdx,[rbp+0x1c98]
304175  48 8d 0d 2c c3 0e 00           lea    rcx,[rip+0xec32c]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
30417c  e8 6f 57 fe ff                 call   0x2e98f0
304181  48 8b c8                       mov    rcx,rax
304184  e8 e7 0b fd ff                 call   0x2d4d70
304189  84 c0                          test   al,al
30418b  0f 85 0d 01 00 00              jne    0x30429e
304191  48 8d 95 bc 0e 00 00           lea    rdx,[rbp+0xebc]
304198  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30419d  e8 9e c0 fe ff                 call   0x2f0240 ; STRING getter=0x2f0240 Backpack
3041a2  48 8b c8                       mov    rcx,rax
3041a5  e8 e2 59 fe ff                 call   0x2e9b8c
3041aa  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
3041b1  48 8b d8                       mov    rbx,rax
3041b4  e8 33 96 fc ff                 call   0x2cd7ec
3041b9  48 8b c8                       mov    rcx,rax
3041bc  48 8b d3                       mov    rdx,rbx
3041bf  e8 9c 67 0c 00                 call   0x3ca960
3041c4  48 85 c0                       test   rax,rax
3041c7  e9 d0 00 00 00                 jmp    0x30429c
3041cc  b8 05 00 00 00                 mov    eax,0x5
3041d1  66 3b f0                       cmp    si,ax
3041d4  75 0c                          jne    0x3041e2
3041d6  48 8d 95 a8 1c 00 00           lea    rdx,[rbp+0x1ca8]
3041dd  e9 a1 00 00 00                 jmp    0x304283
3041e2  b8 06 00 00 00                 mov    eax,0x6
3041e7  66 3b f0                       cmp    si,ax
3041ea  75 0c                          jne    0x3041f8
3041ec  48 8d 95 b8 1c 00 00           lea    rdx,[rbp+0x1cb8]
3041f3  e9 8b 00 00 00                 jmp    0x304283
3041f8  b8 07 00 00 00                 mov    eax,0x7
3041fd  66 3b f0                       cmp    si,ax
304200  75 09                          jne    0x30420b
304202  48 8d 95 c8 1c 00 00           lea    rdx,[rbp+0x1cc8]
304209  eb 78                          jmp    0x304283
30420b  b8 08 00 00 00                 mov    eax,0x8
304210  66 3b f0                       cmp    si,ax
304213  75 09                          jne    0x30421e
304215  48 8d 95 d8 1c 00 00           lea    rdx,[rbp+0x1cd8]
30421c  eb 65                          jmp    0x304283
30421e  b8 09 00 00 00                 mov    eax,0x9
304223  66 3b f0                       cmp    si,ax
304226  75 09                          jne    0x304231
304228  48 8d 95 e8 1c 00 00           lea    rdx,[rbp+0x1ce8]
30422f  eb 52                          jmp    0x304283
304231  b8 0a 00 00 00                 mov    eax,0xa
304236  66 3b f0                       cmp    si,ax
304239  75 09                          jne    0x304244
30423b  48 8d 95 f8 1c 00 00           lea    rdx,[rbp+0x1cf8]
304242  eb 3f                          jmp    0x304283
304244  b8 0d 00 00 00                 mov    eax,0xd
304249  66 3b f0                       cmp    si,ax
30424c  75 0d                          jne    0x30425b
30424e  44 8d 40 fe                    lea    r8d,[rax-0x2]
304252  48 8d 95 08 1d 00 00           lea    rdx,[rbp+0x1d08]
304259  eb 2b                          jmp    0x304286
30425b  b9 10 00 00 00                 mov    ecx,0x10
304260  66 3b f1                       cmp    si,cx
304263  75 0d                          jne    0x304272
304265  44 8d 41 fc                    lea    r8d,[rcx-0x4]
304269  48 8d 95 18 1d 00 00           lea    rdx,[rbp+0x1d18]
304270  eb 14                          jmp    0x304286
304272  b9 11 00 00 00                 mov    ecx,0x11
304277  66 3b f1                       cmp    si,cx
30427a  75 22                          jne    0x30429e
30427c  48 8d 95 28 1d 00 00           lea    rdx,[rbp+0x1d28]
304283  4c 8b c0                       mov    r8,rax
304286  48 8d 0d 1b c2 0e 00           lea    rcx,[rip+0xec21b]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
30428d  e8 5e 56 fe ff                 call   0x2e98f0
304292  48 8b c8                       mov    rcx,rax
304295  e8 d6 0a fd ff                 call   0x2d4d70
30429a  84 c0                          test   al,al
30429c  74 5d                          je     0x3042fb
30429e  48 8d 95 c5 0e 00 00           lea    rdx,[rbp+0xec5]
3042a5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3042aa  e8 91 c1 fe ff                 call   0x2f0440 ; STRING getter=0x2f0440 Backpack
3042af  48 8b c8                       mov    rcx,rax
3042b2  e8 d5 58 fe ff                 call   0x2e9b8c
3042b7  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
3042be  48 8b d8                       mov    rbx,rax
3042c1  e8 26 95 fc ff                 call   0x2cd7ec
3042c6  48 8b c8                       mov    rcx,rax
3042c9  48 8b d3                       mov    rdx,rbx
3042cc  e8 8f 66 0c 00                 call   0x3ca960
3042d1  48 85 c0                       test   rax,rax
3042d4  74 36                          je     0x30430c
3042d6  41 b8 0e 00 00 00              mov    r8d,0xe
3042dc  48 8d 95 38 1d 00 00           lea    rdx,[rbp+0x1d38]
3042e3  48 8d 0d be c1 0e 00           lea    rcx,[rip+0xec1be]        # 0x3f04a8 ; CONFIG VectorBools.WorldItemCatOptions value(+0x48)
3042ea  e8 01 56 fe ff                 call   0x2e98f0
3042ef  48 8b c8                       mov    rcx,rax
3042f2  e8 79 0a fd ff                 call   0x2d4d70
3042f7  84 c0                          test   al,al
3042f9  75 11                          jne    0x30430c
3042fb  48 8d 8d 78 0a 00 00           lea    rcx,[rbp+0xa78]
304302  e8 ed 81 fc ff                 call   0x2cc4f4
304307  e9 3b f6 ff ff                 jmp    0x303947
30430c  48 8d 95 10 04 00 00           lea    rdx,[rbp+0x410]
304313  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
304318  e8 07 09 fd ff                 call   0x2d4c24
30431d  be 01 00 00 00                 mov    esi,0x1
304322  3b fe                          cmp    edi,esi
304324  0f 8e 81 00 00 00              jle    0x3043ab
30432a  48 8d 95 f2 03 00 00           lea    rdx,[rbp+0x3f2]
304331  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
304336  e8 a5 be fe ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
30433b  48 8b c8                       mov    rcx,rax
30433e  e8 21 41 fd ff                 call   0x2d8464
304343  48 8d 95 f0 03 00 00           lea    rdx,[rbp+0x3f0]
30434a  48 8b d8                       mov    rbx,rax
30434d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
304352  e8 a1 bd fe ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
304357  48 8b c8                       mov    rcx,rax
30435a  e8 05 41 fd ff                 call   0x2d8464
30435f  48 8b d0                       mov    rdx,rax
304362  4c 8d 85 78 0a 00 00           lea    r8,[rbp+0xa78]
304369  48 8d 8d c8 24 00 00           lea    rcx,[rbp+0x24c8]
304370  e8 9f 63 fe ff                 call   0x2ea714
304375  48 8b d0                       mov    rdx,rax
304378  48 8d 8d a8 24 00 00           lea    rcx,[rbp+0x24a8]
30437f  4c 8b c3                       mov    r8,rbx
304382  e8 b1 69 fc ff                 call   0x2cad38
304387  48 8b d0                       mov    rdx,rax
30438a  48 8d 4d d8                    lea    rcx,[rbp-0x28]
30438e  e8 51 08 fd ff                 call   0x2d4be4
304393  48 8d 8d a8 24 00 00           lea    rcx,[rbp+0x24a8]
30439a  e8 55 81 fc ff                 call   0x2cc4f4
30439f  48 8d 8d c8 24 00 00           lea    rcx,[rbp+0x24c8]
3043a6  e8 49 81 fc ff                 call   0x2cc4f4
3043ab  8b 05 37 9f 0e 00              mov    eax,DWORD PTR [rip+0xe9f37]        # 0x3ee2e8 ; CONFIG i.DroppedItemsDistance value(+0x48)
3043b1  33 db                          xor    ebx,ebx
3043b3  38 1d 3f 47 0e 00              cmp    BYTE PTR [rip+0xe473f],bl        # 0x3e8af8 ; CONFIG Bools.OtherChams value(+0x48)
3043b9  0f 10 05 b8 7e 0e 00           movups xmm0,XMMWORD PTR [rip+0xe7eb8]        # 0x3ec278 ; CONFIG C.droppeditemsC value(+0x48)
3043c0  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3043c3  8b 05 1f ae 0e 00              mov    eax,DWORD PTR [rip+0xeae1f]        # 0x3ef1e8 ; CONFIG i.OtherChamsIndex value(+0x48)
3043c9  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3043cc  8a 05 96 4a 0e 00              mov    al,BYTE PTR [rip+0xe4a96]        # 0x3e8e68 ; CONFIG Bools.droppeditems value(+0x48)
3043d2  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3043d6  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
3043da  74 08                          je     0x3043e4
3043dc  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3043e0  84 c0                          test   al,al
3043e2  75 03                          jne    0x3043e7
3043e4  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3043e7  38 1d db 3f 0e 00              cmp    BYTE PTR [rip+0xe3fdb],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3043ed  75 08                          jne    0x3043f7
3043ef  38 1d c3 5e 0e 00              cmp    BYTE PTR [rip+0xe5ec3],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3043f5  74 08                          je     0x3043ff
3043f7  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3043fb  84 c0                          test   al,al
3043fd  75 03                          jne    0x304402
3043ff  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304402  f3 0f 10 05 7e 90 0e 00        movss  xmm0,DWORD PTR [rip+0xe907e]        # 0x3ed488 ; CONFIG F.OtherIconsMult value(+0x48)
30440a  48 8d 95 48 1d 00 00           lea    rdx,[rbp+0x1d48]
304411  41 b8 06 00 00 00              mov    r8d,0x6
304417  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
30441c  48 8d 0d 15 c1 0e 00           lea    rcx,[rip+0xec115]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
304423  88 5d a4                       mov    BYTE PTR [rbp-0x5c],bl
304426  e8 c5 54 fe ff                 call   0x2e98f0
30442b  48 8b c8                       mov    rcx,rax
30442e  e8 3d 09 fd ff                 call   0x2d4d70
304433  84 c0                          test   al,al
304435  75 11                          jne    0x304448
304437  38 1d 7b 18 0e 00              cmp    BYTE PTR [rip+0xe187b],bl        # 0x3e5cb8
30443d  74 09                          je     0x304448
30443f  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
304442  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304445  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304448  ba 04 00 00 00                 mov    edx,0x4
30444d  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
304452  e8 ad 63 fe ff                 call   0x2ea804
304457  48 8d 8d 78 0a 00 00           lea    rcx,[rbp+0xa78]
30445e  e8 91 80 fc ff                 call   0x2cc4f4
304463  48 8d 8d 10 04 00 00           lea    rcx,[rbp+0x410]
30446a  e8 85 80 fc ff                 call   0x2cc4f4
30446f  e9 4d 0e 00 00                 jmp    0x3052c1
304474  83 f9 7f                       cmp    ecx,0x7f
304477  0f 85 d3 00 00 00              jne    0x304550
30447d  ba cc 02 00 00                 mov    edx,0x2cc
304482  49 8b cd                       mov    rcx,r13
304485  e8 b2 a9 fd ff                 call   0x2dee3c
30448a  ba d0 02 00 00                 mov    edx,0x2d0
30448f  49 8b cd                       mov    rcx,r13
304492  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304496  e8 a1 a9 fd ff                 call   0x2dee3c
30449b  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
30449f  8b 05 93 a3 0e 00              mov    eax,DWORD PTR [rip+0xea393]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
3044a5  3b c6                          cmp    eax,esi
3044a7  75 16                          jne    0x3044bf
3044a9  f3 0f 2c c1                    cvttss2si eax,xmm1
3044ad  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
3044b3  f3 0f 2c c0                    cvttss2si eax,xmm0
3044b7  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
3044bd  eb 18                          jmp    0x3044d7
3044bf  85 c0                          test   eax,eax
3044c1  75 14                          jne    0x3044d7
3044c3  f3 0f 2c c1                    cvttss2si eax,xmm1
3044c7  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
3044cd  f3 0f 2c c0                    cvttss2si eax,xmm0
3044d1  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
3044d7  0f 10 05 1a 67 0e 00           movups xmm0,XMMWORD PTR [rip+0xe671a]        # 0x3eabf8 ; CONFIG C.CowEspC value(+0x48)
3044de  8a 15 64 3c 0e 00              mov    dl,BYTE PTR [rip+0xe3c64]        # 0x3e8148 ; CONFIG Bools.CowESP value(+0x48)
3044e4  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3044e8  84 d2                          test   dl,dl
3044ea  74 13                          je     0x3044ff
3044ec  40 84 ff                       test   dil,dil
3044ef  74 0e                          je     0x3044ff
3044f1  41 0f 2f cb                    comiss xmm1,xmm11
3044f5  76 08                          jbe    0x3044ff
3044f7  40 8a ce                       mov    cl,sil
3044fa  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3044fd  eb 05                          jmp    0x304504
3044ff  8a cb                          mov    cl,bl
304501  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
304504  38 1d be 3e 0e 00              cmp    BYTE PTR [rip+0xe3ebe],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30450a  8b 05 58 9b 0e 00              mov    eax,DWORD PTR [rip+0xe9b58]        # 0x3ee068 ; CONFIG i.CowDistance value(+0x48)
304510  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304513  75 08                          jne    0x30451d
304515  38 1d 9d 5d 0e 00              cmp    BYTE PTR [rip+0xe5d9d],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
30451b  74 08                          je     0x304525
30451d  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304521  84 d2                          test   dl,dl
304523  75 03                          jne    0x304528
304525  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304528  38 1d 1a 46 0e 00              cmp    BYTE PTR [rip+0xe461a],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
30452e  8b 05 64 ac 0e 00              mov    eax,DWORD PTR [rip+0xeac64]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304534  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304537  74 08                          je     0x304541
304539  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30453d  84 c9                          test   cl,cl
30453f  75 03                          jne    0x304544
304541  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304544  48 8d 95 58 1d 00 00           lea    rdx,[rbp+0x1d58]
30454b  e9 e3 14 00 00                 jmp    0x305a33
304550  83 f9 7e                       cmp    ecx,0x7e
304553  0f 85 d3 00 00 00              jne    0x30462c
304559  ba cc 02 00 00                 mov    edx,0x2cc
30455e  49 8b cd                       mov    rcx,r13
304561  e8 d6 a8 fd ff                 call   0x2dee3c
304566  ba d0 02 00 00                 mov    edx,0x2d0
30456b  49 8b cd                       mov    rcx,r13
30456e  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304572  e8 c5 a8 fd ff                 call   0x2dee3c
304577  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
30457b  8b 05 b7 a2 0e 00              mov    eax,DWORD PTR [rip+0xea2b7]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304581  3b c6                          cmp    eax,esi
304583  75 16                          jne    0x30459b
304585  f3 0f 2c c1                    cvttss2si eax,xmm1
304589  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
30458f  f3 0f 2c c0                    cvttss2si eax,xmm0
304593  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304599  eb 18                          jmp    0x3045b3
30459b  85 c0                          test   eax,eax
30459d  75 14                          jne    0x3045b3
30459f  f3 0f 2c c1                    cvttss2si eax,xmm1
3045a3  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
3045a9  f3 0f 2c c0                    cvttss2si eax,xmm0
3045ad  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
3045b3  0f 10 05 9e 66 0e 00           movups xmm0,XMMWORD PTR [rip+0xe669e]        # 0x3eac58 ; CONFIG C.SheepEspC value(+0x48)
3045ba  8a 15 38 3b 0e 00              mov    dl,BYTE PTR [rip+0xe3b38]        # 0x3e80f8 ; CONFIG Bools.SheepESP value(+0x48)
3045c0  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3045c4  84 d2                          test   dl,dl
3045c6  74 13                          je     0x3045db
3045c8  40 84 ff                       test   dil,dil
3045cb  74 0e                          je     0x3045db
3045cd  41 0f 2f cb                    comiss xmm1,xmm11
3045d1  76 08                          jbe    0x3045db
3045d3  40 8a ce                       mov    cl,sil
3045d6  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3045d9  eb 05                          jmp    0x3045e0
3045db  8a cb                          mov    cl,bl
3045dd  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3045e0  38 1d e2 3d 0e 00              cmp    BYTE PTR [rip+0xe3de2],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3045e6  8b 05 cc 9a 0e 00              mov    eax,DWORD PTR [rip+0xe9acc]        # 0x3ee0b8 ; CONFIG i.SheepDistance value(+0x48)
3045ec  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3045ef  75 08                          jne    0x3045f9
3045f1  38 1d c1 5c 0e 00              cmp    BYTE PTR [rip+0xe5cc1],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3045f7  74 08                          je     0x304601
3045f9  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3045fd  84 d2                          test   dl,dl
3045ff  75 03                          jne    0x304604
304601  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304604  38 1d 3e 45 0e 00              cmp    BYTE PTR [rip+0xe453e],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
30460a  8b 05 88 ab 0e 00              mov    eax,DWORD PTR [rip+0xeab88]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304610  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304613  74 08                          je     0x30461d
304615  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304619  84 c9                          test   cl,cl
30461b  75 03                          jne    0x304620
30461d  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304620  48 8d 95 68 1d 00 00           lea    rdx,[rbp+0x1d68]
304627  e9 07 14 00 00                 jmp    0x305a33
30462c  8d 41 a3                       lea    eax,[rcx-0x5d]
30462f  3b c6                          cmp    eax,esi
304631  0f 86 2e 13 00 00              jbe    0x305965
304637  83 f9 4f                       cmp    ecx,0x4f
30463a  0f 85 d3 00 00 00              jne    0x304713
304640  ba cc 02 00 00                 mov    edx,0x2cc
304645  49 8b cd                       mov    rcx,r13
304648  e8 ef a7 fd ff                 call   0x2dee3c
30464d  ba d0 02 00 00                 mov    edx,0x2d0
304652  49 8b cd                       mov    rcx,r13
304655  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304659  e8 de a7 fd ff                 call   0x2dee3c
30465e  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
304662  8b 05 d0 a1 0e 00              mov    eax,DWORD PTR [rip+0xea1d0]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304668  3b c6                          cmp    eax,esi
30466a  75 16                          jne    0x304682
30466c  f3 0f 2c c1                    cvttss2si eax,xmm1
304670  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
304676  f3 0f 2c c0                    cvttss2si eax,xmm0
30467a  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304680  eb 18                          jmp    0x30469a
304682  85 c0                          test   eax,eax
304684  75 14                          jne    0x30469a
304686  f3 0f 2c c1                    cvttss2si eax,xmm1
30468a  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304690  f3 0f 2c c0                    cvttss2si eax,xmm0
304694  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
30469a  0f 10 05 b7 86 0e 00           movups xmm0,XMMWORD PTR [rip+0xe86b7]        # 0x3ecd58 ; CONFIG C.SnakeEspC value(+0x48)
3046a1  8a 15 71 38 0e 00              mov    dl,BYTE PTR [rip+0xe3871]        # 0x3e7f18 ; CONFIG Bools.SnakeEsp value(+0x48)
3046a7  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3046ab  84 d2                          test   dl,dl
3046ad  74 13                          je     0x3046c2
3046af  40 84 ff                       test   dil,dil
3046b2  74 0e                          je     0x3046c2
3046b4  41 0f 2f cb                    comiss xmm1,xmm11
3046b8  76 08                          jbe    0x3046c2
3046ba  40 8a ce                       mov    cl,sil
3046bd  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3046c0  eb 05                          jmp    0x3046c7
3046c2  8a cb                          mov    cl,bl
3046c4  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3046c7  38 1d 7b 44 0e 00              cmp    BYTE PTR [rip+0xe447b],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
3046cd  8b 05 55 a2 0e 00              mov    eax,DWORD PTR [rip+0xea255]        # 0x3ee928 ; CONFIG i.SnakeDistance value(+0x48)
3046d3  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3046d6  8b 05 bc aa 0e 00              mov    eax,DWORD PTR [rip+0xeaabc]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
3046dc  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3046df  74 08                          je     0x3046e9
3046e1  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3046e5  84 c9                          test   cl,cl
3046e7  75 03                          jne    0x3046ec
3046e9  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3046ec  38 1d d6 3c 0e 00              cmp    BYTE PTR [rip+0xe3cd6],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3046f2  75 08                          jne    0x3046fc
3046f4  38 1d be 5b 0e 00              cmp    BYTE PTR [rip+0xe5bbe],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3046fa  74 08                          je     0x304704
3046fc  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304700  84 d2                          test   dl,dl
304702  75 03                          jne    0x304707
304704  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304707  48 8d 95 78 1d 00 00           lea    rdx,[rbp+0x1d78]
30470e  e9 20 13 00 00                 jmp    0x305a33
304713  83 f9 50                       cmp    ecx,0x50
304716  0f 85 d3 00 00 00              jne    0x3047ef
30471c  ba cc 02 00 00                 mov    edx,0x2cc
304721  49 8b cd                       mov    rcx,r13
304724  e8 13 a7 fd ff                 call   0x2dee3c
304729  ba d0 02 00 00                 mov    edx,0x2d0
30472e  49 8b cd                       mov    rcx,r13
304731  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304735  e8 02 a7 fd ff                 call   0x2dee3c
30473a  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
30473e  8b 05 f4 a0 0e 00              mov    eax,DWORD PTR [rip+0xea0f4]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304744  3b c6                          cmp    eax,esi
304746  75 16                          jne    0x30475e
304748  f3 0f 2c c1                    cvttss2si eax,xmm1
30474c  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
304752  f3 0f 2c c0                    cvttss2si eax,xmm0
304756  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
30475c  eb 18                          jmp    0x304776
30475e  85 c0                          test   eax,eax
304760  75 14                          jne    0x304776
304762  f3 0f 2c c1                    cvttss2si eax,xmm1
304766  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
30476c  f3 0f 2c c0                    cvttss2si eax,xmm0
304770  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304776  0f 10 05 3b 86 0e 00           movups xmm0,XMMWORD PTR [rip+0xe863b]        # 0x3ecdb8 ; CONFIG C.TigerEspC value(+0x48)
30477d  8a 15 e5 37 0e 00              mov    dl,BYTE PTR [rip+0xe37e5]        # 0x3e7f68 ; CONFIG Bools.TigerEsp value(+0x48)
304783  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304787  84 d2                          test   dl,dl
304789  74 13                          je     0x30479e
30478b  40 84 ff                       test   dil,dil
30478e  74 0e                          je     0x30479e
304790  41 0f 2f cb                    comiss xmm1,xmm11
304794  76 08                          jbe    0x30479e
304796  40 8a ce                       mov    cl,sil
304799  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30479c  eb 05                          jmp    0x3047a3
30479e  8a cb                          mov    cl,bl
3047a0  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3047a3  38 1d 9f 43 0e 00              cmp    BYTE PTR [rip+0xe439f],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
3047a9  8b 05 c9 a1 0e 00              mov    eax,DWORD PTR [rip+0xea1c9]        # 0x3ee978 ; CONFIG i.TigerDistance value(+0x48)
3047af  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3047b2  8b 05 e0 a9 0e 00              mov    eax,DWORD PTR [rip+0xea9e0]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
3047b8  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3047bb  74 08                          je     0x3047c5
3047bd  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3047c1  84 c9                          test   cl,cl
3047c3  75 03                          jne    0x3047c8
3047c5  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3047c8  38 1d fa 3b 0e 00              cmp    BYTE PTR [rip+0xe3bfa],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3047ce  75 08                          jne    0x3047d8
3047d0  38 1d e2 5a 0e 00              cmp    BYTE PTR [rip+0xe5ae2],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3047d6  74 08                          je     0x3047e0
3047d8  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3047dc  84 d2                          test   dl,dl
3047de  75 03                          jne    0x3047e3
3047e0  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3047e3  48 8d 95 88 1d 00 00           lea    rdx,[rbp+0x1d88]
3047ea  e9 44 12 00 00                 jmp    0x305a33
3047ef  83 f9 51                       cmp    ecx,0x51
3047f2  0f 85 d3 00 00 00              jne    0x3048cb
3047f8  ba cc 02 00 00                 mov    edx,0x2cc
3047fd  49 8b cd                       mov    rcx,r13
304800  e8 37 a6 fd ff                 call   0x2dee3c
304805  ba d0 02 00 00                 mov    edx,0x2d0
30480a  49 8b cd                       mov    rcx,r13
30480d  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304811  e8 26 a6 fd ff                 call   0x2dee3c
304816  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
30481a  8b 05 18 a0 0e 00              mov    eax,DWORD PTR [rip+0xea018]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304820  3b c6                          cmp    eax,esi
304822  75 16                          jne    0x30483a
304824  f3 0f 2c c1                    cvttss2si eax,xmm1
304828  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
30482e  f3 0f 2c c0                    cvttss2si eax,xmm0
304832  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304838  eb 18                          jmp    0x304852
30483a  85 c0                          test   eax,eax
30483c  75 14                          jne    0x304852
30483e  f3 0f 2c c1                    cvttss2si eax,xmm1
304842  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304848  f3 0f 2c c0                    cvttss2si eax,xmm0
30484c  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304852  0f 10 05 bf 85 0e 00           movups xmm0,XMMWORD PTR [rip+0xe85bf]        # 0x3ece18 ; CONFIG C.PantherEspC value(+0x48)
304859  8a 15 59 37 0e 00              mov    dl,BYTE PTR [rip+0xe3759]        # 0x3e7fb8 ; CONFIG Bools.PantherEsp value(+0x48)
30485f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304863  84 d2                          test   dl,dl
304865  74 13                          je     0x30487a
304867  40 84 ff                       test   dil,dil
30486a  74 0e                          je     0x30487a
30486c  41 0f 2f cb                    comiss xmm1,xmm11
304870  76 08                          jbe    0x30487a
304872  40 8a ce                       mov    cl,sil
304875  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304878  eb 05                          jmp    0x30487f
30487a  8a cb                          mov    cl,bl
30487c  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30487f  38 1d c3 42 0e 00              cmp    BYTE PTR [rip+0xe42c3],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304885  8b 05 3d a1 0e 00              mov    eax,DWORD PTR [rip+0xea13d]        # 0x3ee9c8 ; CONFIG i.PantherDistance value(+0x48)
30488b  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30488e  8b 05 04 a9 0e 00              mov    eax,DWORD PTR [rip+0xea904]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304894  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304897  74 08                          je     0x3048a1
304899  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30489d  84 c9                          test   cl,cl
30489f  75 03                          jne    0x3048a4
3048a1  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3048a4  38 1d 1e 3b 0e 00              cmp    BYTE PTR [rip+0xe3b1e],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3048aa  75 08                          jne    0x3048b4
3048ac  38 1d 06 5a 0e 00              cmp    BYTE PTR [rip+0xe5a06],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3048b2  74 08                          je     0x3048bc
3048b4  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3048b8  84 d2                          test   dl,dl
3048ba  75 03                          jne    0x3048bf
3048bc  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3048bf  48 8d 95 98 1d 00 00           lea    rdx,[rbp+0x1d98]
3048c6  e9 68 11 00 00                 jmp    0x305a33
3048cb  83 f9 52                       cmp    ecx,0x52
3048ce  0f 85 d3 00 00 00              jne    0x3049a7
3048d4  ba cc 02 00 00                 mov    edx,0x2cc
3048d9  49 8b cd                       mov    rcx,r13
3048dc  e8 5b a5 fd ff                 call   0x2dee3c
3048e1  ba d0 02 00 00                 mov    edx,0x2d0
3048e6  49 8b cd                       mov    rcx,r13
3048e9  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
3048ed  e8 4a a5 fd ff                 call   0x2dee3c
3048f2  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
3048f6  8b 05 3c 9f 0e 00              mov    eax,DWORD PTR [rip+0xe9f3c]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
3048fc  3b c6                          cmp    eax,esi
3048fe  75 16                          jne    0x304916
304900  f3 0f 2c c1                    cvttss2si eax,xmm1
304904  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
30490a  f3 0f 2c c0                    cvttss2si eax,xmm0
30490e  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304914  eb 18                          jmp    0x30492e
304916  85 c0                          test   eax,eax
304918  75 14                          jne    0x30492e
30491a  f3 0f 2c c1                    cvttss2si eax,xmm1
30491e  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304924  f3 0f 2c c0                    cvttss2si eax,xmm0
304928  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
30492e  0f 10 05 43 85 0e 00           movups xmm0,XMMWORD PTR [rip+0xe8543]        # 0x3ece78 ; CONFIG C.CrocodileEspC value(+0x48)
304935  8a 15 cd 36 0e 00              mov    dl,BYTE PTR [rip+0xe36cd]        # 0x3e8008 ; CONFIG Bools.CrocodileEsp value(+0x48)
30493b  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30493f  84 d2                          test   dl,dl
304941  74 13                          je     0x304956
304943  40 84 ff                       test   dil,dil
304946  74 0e                          je     0x304956
304948  41 0f 2f cb                    comiss xmm1,xmm11
30494c  76 08                          jbe    0x304956
30494e  40 8a ce                       mov    cl,sil
304951  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304954  eb 05                          jmp    0x30495b
304956  8a cb                          mov    cl,bl
304958  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30495b  38 1d e7 41 0e 00              cmp    BYTE PTR [rip+0xe41e7],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304961  8b 05 b1 a0 0e 00              mov    eax,DWORD PTR [rip+0xea0b1]        # 0x3eea18 ; CONFIG i.CrocodileDistance value(+0x48)
304967  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30496a  8b 05 28 a8 0e 00              mov    eax,DWORD PTR [rip+0xea828]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304970  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304973  74 08                          je     0x30497d
304975  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304979  84 c9                          test   cl,cl
30497b  75 03                          jne    0x304980
30497d  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304980  38 1d 42 3a 0e 00              cmp    BYTE PTR [rip+0xe3a42],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
304986  75 08                          jne    0x304990
304988  38 1d 2a 59 0e 00              cmp    BYTE PTR [rip+0xe592a],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
30498e  74 08                          je     0x304998
304990  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304994  84 d2                          test   dl,dl
304996  75 03                          jne    0x30499b
304998  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
30499b  48 8d 95 a8 1d 00 00           lea    rdx,[rbp+0x1da8]
3049a2  e9 8c 10 00 00                 jmp    0x305a33
3049a7  83 f9 64                       cmp    ecx,0x64
3049aa  0f 85 d3 00 00 00              jne    0x304a83
3049b0  ba cc 02 00 00                 mov    edx,0x2cc
3049b5  49 8b cd                       mov    rcx,r13
3049b8  e8 7f a4 fd ff                 call   0x2dee3c
3049bd  ba d0 02 00 00                 mov    edx,0x2d0
3049c2  49 8b cd                       mov    rcx,r13
3049c5  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
3049c9  e8 6e a4 fd ff                 call   0x2dee3c
3049ce  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
3049d2  8b 05 60 9e 0e 00              mov    eax,DWORD PTR [rip+0xe9e60]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
3049d8  3b c6                          cmp    eax,esi
3049da  75 16                          jne    0x3049f2
3049dc  f3 0f 2c c1                    cvttss2si eax,xmm1
3049e0  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
3049e6  f3 0f 2c c0                    cvttss2si eax,xmm0
3049ea  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
3049f0  eb 18                          jmp    0x304a0a
3049f2  85 c0                          test   eax,eax
3049f4  75 14                          jne    0x304a0a
3049f6  f3 0f 2c c1                    cvttss2si eax,xmm1
3049fa  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304a00  f3 0f 2c c0                    cvttss2si eax,xmm0
304a04  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304a0a  0f 10 05 27 61 0e 00           movups xmm0,XMMWORD PTR [rip+0xe6127]        # 0x3eab38 ; CONFIG C.StagEspC value(+0x48)
304a11  8a 15 41 36 0e 00              mov    dl,BYTE PTR [rip+0xe3641]        # 0x3e8058 ; CONFIG Bools.StagEsp value(+0x48)
304a17  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304a1b  84 d2                          test   dl,dl
304a1d  74 13                          je     0x304a32
304a1f  40 84 ff                       test   dil,dil
304a22  74 0e                          je     0x304a32
304a24  41 0f 2f cb                    comiss xmm1,xmm11
304a28  76 08                          jbe    0x304a32
304a2a  40 8a ce                       mov    cl,sil
304a2d  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304a30  eb 05                          jmp    0x304a37
304a32  8a cb                          mov    cl,bl
304a34  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
304a37  38 1d 0b 41 0e 00              cmp    BYTE PTR [rip+0xe410b],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304a3d  8b 05 35 95 0e 00              mov    eax,DWORD PTR [rip+0xe9535]        # 0x3edf78 ; CONFIG i.StagDistance value(+0x48)
304a43  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304a46  8b 05 4c a7 0e 00              mov    eax,DWORD PTR [rip+0xea74c]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304a4c  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304a4f  74 08                          je     0x304a59
304a51  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304a55  84 c9                          test   cl,cl
304a57  75 03                          jne    0x304a5c
304a59  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304a5c  38 1d 66 39 0e 00              cmp    BYTE PTR [rip+0xe3966],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
304a62  75 08                          jne    0x304a6c
304a64  38 1d 4e 58 0e 00              cmp    BYTE PTR [rip+0xe584e],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
304a6a  74 08                          je     0x304a74
304a6c  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304a70  84 d2                          test   dl,dl
304a72  75 03                          jne    0x304a77
304a74  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304a77  48 8d 95 b8 1d 00 00           lea    rdx,[rbp+0x1db8]
304a7e  e9 b0 0f 00 00                 jmp    0x305a33
304a83  83 f9 65                       cmp    ecx,0x65
304a86  0f 85 d3 00 00 00              jne    0x304b5f
304a8c  ba cc 02 00 00                 mov    edx,0x2cc
304a91  49 8b cd                       mov    rcx,r13
304a94  e8 a3 a3 fd ff                 call   0x2dee3c
304a99  ba d0 02 00 00                 mov    edx,0x2d0
304a9e  49 8b cd                       mov    rcx,r13
304aa1  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304aa5  e8 92 a3 fd ff                 call   0x2dee3c
304aaa  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
304aae  8b 05 84 9d 0e 00              mov    eax,DWORD PTR [rip+0xe9d84]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304ab4  3b c6                          cmp    eax,esi
304ab6  75 16                          jne    0x304ace
304ab8  f3 0f 2c c1                    cvttss2si eax,xmm1
304abc  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
304ac2  f3 0f 2c c0                    cvttss2si eax,xmm0
304ac6  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304acc  eb 18                          jmp    0x304ae6
304ace  85 c0                          test   eax,eax
304ad0  75 14                          jne    0x304ae6
304ad2  f3 0f 2c c1                    cvttss2si eax,xmm1
304ad6  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304adc  f3 0f 2c c0                    cvttss2si eax,xmm0
304ae0  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304ae6  0f 10 05 ab 60 0e 00           movups xmm0,XMMWORD PTR [rip+0xe60ab]        # 0x3eab98 ; CONFIG C.WolfEspC value(+0x48)
304aed  8a 15 b5 35 0e 00              mov    dl,BYTE PTR [rip+0xe35b5]        # 0x3e80a8 ; CONFIG Bools.WolfEsp value(+0x48)
304af3  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304af7  84 d2                          test   dl,dl
304af9  74 13                          je     0x304b0e
304afb  40 84 ff                       test   dil,dil
304afe  74 0e                          je     0x304b0e
304b00  41 0f 2f cb                    comiss xmm1,xmm11
304b04  76 08                          jbe    0x304b0e
304b06  40 8a ce                       mov    cl,sil
304b09  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304b0c  eb 05                          jmp    0x304b13
304b0e  8a cb                          mov    cl,bl
304b10  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
304b13  38 1d 2f 40 0e 00              cmp    BYTE PTR [rip+0xe402f],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304b19  8b 05 a9 94 0e 00              mov    eax,DWORD PTR [rip+0xe94a9]        # 0x3edfc8 ; CONFIG i.WolfDistance value(+0x48)
304b1f  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304b22  8b 05 70 a6 0e 00              mov    eax,DWORD PTR [rip+0xea670]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304b28  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304b2b  74 08                          je     0x304b35
304b2d  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304b31  84 c9                          test   cl,cl
304b33  75 03                          jne    0x304b38
304b35  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304b38  38 1d 8a 38 0e 00              cmp    BYTE PTR [rip+0xe388a],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
304b3e  75 08                          jne    0x304b48
304b40  38 1d 72 57 0e 00              cmp    BYTE PTR [rip+0xe5772],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
304b46  74 08                          je     0x304b50
304b48  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304b4c  84 d2                          test   dl,dl
304b4e  75 03                          jne    0x304b53
304b50  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304b53  48 8d 95 c8 1d 00 00           lea    rdx,[rbp+0x1dc8]
304b5a  e9 d4 0e 00 00                 jmp    0x305a33
304b5f  83 f9 66                       cmp    ecx,0x66
304b62  0f 85 de 00 00 00              jne    0x304c46
304b68  ba cc 02 00 00                 mov    edx,0x2cc
304b6d  49 8b cd                       mov    rcx,r13
304b70  e8 c7 a2 fd ff                 call   0x2dee3c
304b75  ba d0 02 00 00                 mov    edx,0x2d0
304b7a  49 8b cd                       mov    rcx,r13
304b7d  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304b81  e8 b6 a2 fd ff                 call   0x2dee3c
304b86  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
304b8a  8b 05 a8 9c 0e 00              mov    eax,DWORD PTR [rip+0xe9ca8]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304b90  3b c6                          cmp    eax,esi
304b92  75 16                          jne    0x304baa
304b94  f3 0f 2c c1                    cvttss2si eax,xmm1
304b98  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
304b9e  f3 0f 2c c0                    cvttss2si eax,xmm0
304ba2  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304ba8  eb 18                          jmp    0x304bc2
304baa  85 c0                          test   eax,eax
304bac  75 14                          jne    0x304bc2
304bae  f3 0f 2c c1                    cvttss2si eax,xmm1
304bb2  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304bb8  f3 0f 2c c0                    cvttss2si eax,xmm0
304bbc  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304bc2  0f 10 05 ef 60 0e 00           movups xmm0,XMMWORD PTR [rip+0xe60ef]        # 0x3eacb8 ; CONFIG C.PigEspC value(+0x48)
304bc9  8a 1d c9 35 0e 00              mov    bl,BYTE PTR [rip+0xe35c9]        # 0x3e8198 ; CONFIG Bools.PigEsp value(+0x48)
304bcf  33 f6                          xor    esi,esi
304bd1  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304bd5  84 db                          test   bl,bl
304bd7  74 13                          je     0x304bec
304bd9  40 84 ff                       test   dil,dil
304bdc  74 0e                          je     0x304bec
304bde  41 0f 2f cb                    comiss xmm1,xmm11
304be2  76 08                          jbe    0x304bec
304be4  8d 7e 01                       lea    edi,[rsi+0x1]
304be7  40 8a cf                       mov    cl,dil
304bea  eb 08                          jmp    0x304bf4
304bec  40 8a ce                       mov    cl,sil
304bef  bf 01 00 00 00                 mov    edi,0x1
304bf4  40 38 35 4d 3f 0e 00           cmp    BYTE PTR [rip+0xe3f4d],sil        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304bfb  8b 05 17 94 0e 00              mov    eax,DWORD PTR [rip+0xe9417]        # 0x3ee018 ; CONFIG i.BoarDistance value(+0x48)
304c01  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304c04  8b 05 8e a5 0e 00              mov    eax,DWORD PTR [rip+0xea58e]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304c0a  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304c0d  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304c10  74 08                          je     0x304c1a
304c12  40 88 7d b8                    mov    BYTE PTR [rbp-0x48],dil
304c16  84 c9                          test   cl,cl
304c18  75 04                          jne    0x304c1e
304c1a  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304c1e  48 8d 0d 5b 37 0e 00           lea    rcx,[rip+0xe375b]        # 0x3e8380
304c25  e8 d2 ab fe ff                 call   0x2ef7fc
304c2a  84 c0                          test   al,al
304c2c  74 08                          je     0x304c36
304c2e  40 88 7d c7                    mov    BYTE PTR [rbp-0x39],dil
304c32  84 db                          test   bl,bl
304c34  75 04                          jne    0x304c3a
304c36  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304c3a  48 8d 95 d8 1d 00 00           lea    rdx,[rbp+0x1dd8]
304c41  e9 e2 00 00 00                 jmp    0x304d28
304c46  83 f9 67                       cmp    ecx,0x67
304c49  0f 85 2f 01 00 00              jne    0x304d7e
304c4f  ba cc 02 00 00                 mov    edx,0x2cc
304c54  49 8b cd                       mov    rcx,r13
304c57  e8 e0 a1 fd ff                 call   0x2dee3c
304c5c  ba d0 02 00 00                 mov    edx,0x2d0
304c61  49 8b cd                       mov    rcx,r13
304c64  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304c68  e8 cf a1 fd ff                 call   0x2dee3c
304c6d  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
304c71  8b 05 c1 9b 0e 00              mov    eax,DWORD PTR [rip+0xe9bc1]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304c77  3b c6                          cmp    eax,esi
304c79  75 16                          jne    0x304c91
304c7b  f3 0f 2c c1                    cvttss2si eax,xmm1
304c7f  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
304c85  f3 0f 2c c0                    cvttss2si eax,xmm0
304c89  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304c8f  eb 18                          jmp    0x304ca9
304c91  85 c0                          test   eax,eax
304c93  75 14                          jne    0x304ca9
304c95  f3 0f 2c c1                    cvttss2si eax,xmm1
304c99  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304c9f  f3 0f 2c c0                    cvttss2si eax,xmm0
304ca3  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304ca9  0f 10 05 68 60 0e 00           movups xmm0,XMMWORD PTR [rip+0xe6068]        # 0x3ead18 ; CONFIG C.HorseEspC value(+0x48)
304cb0  8a 1d 32 35 0e 00              mov    bl,BYTE PTR [rip+0xe3532]        # 0x3e81e8 ; CONFIG Bools.HorseEsp value(+0x48)
304cb6  33 f6                          xor    esi,esi
304cb8  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304cbc  84 db                          test   bl,bl
304cbe  74 13                          je     0x304cd3
304cc0  40 84 ff                       test   dil,dil
304cc3  74 0e                          je     0x304cd3
304cc5  41 0f 2f cb                    comiss xmm1,xmm11
304cc9  76 08                          jbe    0x304cd3
304ccb  8d 7e 01                       lea    edi,[rsi+0x1]
304cce  40 8a cf                       mov    cl,dil
304cd1  eb 08                          jmp    0x304cdb
304cd3  40 8a ce                       mov    cl,sil
304cd6  bf 01 00 00 00                 mov    edi,0x1
304cdb  40 38 35 66 3e 0e 00           cmp    BYTE PTR [rip+0xe3e66],sil        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304ce2  8b 05 20 94 0e 00              mov    eax,DWORD PTR [rip+0xe9420]        # 0x3ee108 ; CONFIG i.HorseDistance value(+0x48)
304ce8  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304ceb  8b 05 a7 a4 0e 00              mov    eax,DWORD PTR [rip+0xea4a7]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304cf1  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304cf4  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304cf7  74 08                          je     0x304d01
304cf9  40 88 7d b8                    mov    BYTE PTR [rbp-0x48],dil
304cfd  84 c9                          test   cl,cl
304cff  75 04                          jne    0x304d05
304d01  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304d05  48 8d 0d 74 36 0e 00           lea    rcx,[rip+0xe3674]        # 0x3e8380
304d0c  e8 eb aa fe ff                 call   0x2ef7fc
304d11  84 c0                          test   al,al
304d13  74 08                          je     0x304d1d
304d15  40 88 7d c7                    mov    BYTE PTR [rbp-0x39],dil
304d19  84 db                          test   bl,bl
304d1b  75 04                          jne    0x304d21
304d1d  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304d21  48 8d 95 e8 1d 00 00           lea    rdx,[rbp+0x1de8]
304d28  f3 0f 10 05 b8 86 0e 00        movss  xmm0,DWORD PTR [rip+0xe86b8]        # 0x3ed3e8 ; CONFIG F.AnimalIconsMult value(+0x48)
304d30  48 8d 0d 01 b8 0e 00           lea    rcx,[rip+0xeb801]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
304d37  8a 05 8b 1d 0e 00              mov    al,BYTE PTR [rip+0xe1d8b]        # 0x3e6ac8 ; CONFIG Bools.AnimalIcons value(+0x48)
304d3d  41 b8 04 00 00 00              mov    r8d,0x4
304d43  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
304d48  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
304d4b  e8 a0 4b fe ff                 call   0x2e98f0
304d50  48 8b c8                       mov    rcx,rax
304d53  e8 18 00 fd ff                 call   0x2d4d70
304d58  84 c0                          test   al,al
304d5a  0f 85 15 0d 00 00              jne    0x305a75
304d60  40 38 35 51 0f 0e 00           cmp    BYTE PTR [rip+0xe0f51],sil        # 0x3e5cb8
304d67  0f 84 08 0d 00 00              je     0x305a75
304d6d  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
304d71  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304d75  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304d79  e9 f7 0c 00 00                 jmp    0x305a75
304d7e  83 f9 68                       cmp    ecx,0x68
304d81  0f 85 d3 00 00 00              jne    0x304e5a
304d87  ba cc 02 00 00                 mov    edx,0x2cc
304d8c  49 8b cd                       mov    rcx,r13
304d8f  e8 a8 a0 fd ff                 call   0x2dee3c
304d94  ba d0 02 00 00                 mov    edx,0x2d0
304d99  49 8b cd                       mov    rcx,r13
304d9c  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
304da0  e8 97 a0 fd ff                 call   0x2dee3c
304da5  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
304da9  8b 05 89 9a 0e 00              mov    eax,DWORD PTR [rip+0xe9a89]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
304daf  3b c6                          cmp    eax,esi
304db1  75 16                          jne    0x304dc9
304db3  f3 0f 2c c1                    cvttss2si eax,xmm1
304db7  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
304dbd  f3 0f 2c c0                    cvttss2si eax,xmm0
304dc1  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
304dc7  eb 18                          jmp    0x304de1
304dc9  85 c0                          test   eax,eax
304dcb  75 14                          jne    0x304de1
304dcd  f3 0f 2c c1                    cvttss2si eax,xmm1
304dd1  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
304dd7  f3 0f 2c c0                    cvttss2si eax,xmm0
304ddb  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
304de1  0f 10 05 90 5f 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5f90]        # 0x3ead78 ; CONFIG C.SharkEspC value(+0x48)
304de8  8a 15 4a 34 0e 00              mov    dl,BYTE PTR [rip+0xe344a]        # 0x3e8238 ; CONFIG Bools.SharkEsp value(+0x48)
304dee  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304df2  84 d2                          test   dl,dl
304df4  74 13                          je     0x304e09
304df6  40 84 ff                       test   dil,dil
304df9  74 0e                          je     0x304e09
304dfb  41 0f 2f cb                    comiss xmm1,xmm11
304dff  76 08                          jbe    0x304e09
304e01  40 8a ce                       mov    cl,sil
304e04  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304e07  eb 05                          jmp    0x304e0e
304e09  8a cb                          mov    cl,bl
304e0b  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
304e0e  38 1d 34 3d 0e 00              cmp    BYTE PTR [rip+0xe3d34],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
304e14  8b 05 3e 93 0e 00              mov    eax,DWORD PTR [rip+0xe933e]        # 0x3ee158 ; CONFIG i.SharkDistance value(+0x48)
304e1a  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304e1d  8b 05 75 a3 0e 00              mov    eax,DWORD PTR [rip+0xea375]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
304e23  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304e26  74 08                          je     0x304e30
304e28  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304e2c  84 c9                          test   cl,cl
304e2e  75 03                          jne    0x304e33
304e30  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
304e33  38 1d 8f 35 0e 00              cmp    BYTE PTR [rip+0xe358f],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
304e39  75 08                          jne    0x304e43
304e3b  38 1d 77 54 0e 00              cmp    BYTE PTR [rip+0xe5477],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
304e41  74 08                          je     0x304e4b
304e43  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304e47  84 d2                          test   dl,dl
304e49  75 03                          jne    0x304e4e
304e4b  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
304e4e  48 8d 95 f8 1d 00 00           lea    rdx,[rbp+0x1df8]
304e55  e9 d9 0b 00 00                 jmp    0x305a33
304e5a  83 f9 56                       cmp    ecx,0x56
304e5d  0f 85 e5 06 00 00              jne    0x305548
304e63  ba f0 03 00 00                 mov    edx,0x3f0
304e68  49 8b cd                       mov    rcx,r13
304e6b  e8 cc 9f fd ff                 call   0x2dee3c
304e70  48 8b d8                       mov    rbx,rax
304e73  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
304e77  41 0f 2f c3                    comiss xmm0,xmm11
304e7b  76 2a                          jbe    0x304ea7
304e7d  4d 8b c3                       mov    r8,r11
304e80  48 8d 95 08 1e 00 00           lea    rdx,[rbp+0x1e08]
304e87  48 8d 0d ca b7 0e 00           lea    rcx,[rip+0xeb7ca]        # 0x3f0658 ; CONFIG VectorBools.WorldOptionsStuff value(+0x48)
304e8e  e8 5d 4a fe ff                 call   0x2e98f0
304e93  48 8b c8                       mov    rcx,rax
304e96  e8 d5 fe fc ff                 call   0x2d4d70
304e9b  33 f6                          xor    esi,esi
304e9d  84 c0                          test   al,al
304e9f  0f 85 ae ea ff ff              jne    0x303953
304ea5  eb 02                          jmp    0x304ea9
304ea7  33 f6                          xor    esi,esi
304ea9  48 8d 95 ce 0e 00 00           lea    rdx,[rbp+0xece]
304eb0  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
304eb5  e8 12 b8 fe ff                 call   0x2f06cc ; STRING getter=0x2f06cc Cupboard
304eba  48 8b c8                       mov    rcx,rax
304ebd  e8 ca 4c fe ff                 call   0x2e9b8c
304ec2  48 8b d0                       mov    rdx,rax
304ec5  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
304eca  e8 99 fd fc ff                 call   0x2d4c68
304ecf  0f 10 05 02 5f 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5f02]        # 0x3eadd8 ; CONFIG C.CupboardC value(+0x48)
304ed6  8a 15 dc 3f 0e 00              mov    dl,BYTE PTR [rip+0xe3fdc]        # 0x3e8eb8 ; CONFIG Bools.Cupboard value(+0x48)
304edc  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
304ee0  84 d2                          test   dl,dl
304ee2  74 10                          je     0x304ef4
304ee4  40 84 ff                       test   dil,dil
304ee7  74 0b                          je     0x304ef4
304ee9  41 be 01 00 00 00              mov    r14d,0x1
304eef  41 8a ce                       mov    cl,r14b
304ef2  eb 09                          jmp    0x304efd
304ef4  40 8a ce                       mov    cl,sil
304ef7  41 be 01 00 00 00              mov    r14d,0x1
304efd  40 38 35 34 3d 0e 00           cmp    BYTE PTR [rip+0xe3d34],sil        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
304f04  8b 05 ce 99 0e 00              mov    eax,DWORD PTR [rip+0xe99ce]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
304f0a  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
304f0d  8b 05 75 a3 0e 00              mov    eax,DWORD PTR [rip+0xea375]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
304f13  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
304f16  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
304f19  74 08                          je     0x304f23
304f1b  44 88 75 b8                    mov    BYTE PTR [rbp-0x48],r14b
304f1f  84 c9                          test   cl,cl
304f21  75 04                          jne    0x304f27
304f23  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304f27  40 38 35 9a 34 0e 00           cmp    BYTE PTR [rip+0xe349a],sil        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
304f2e  75 09                          jne    0x304f39
304f30  40 38 35 81 53 0e 00           cmp    BYTE PTR [rip+0xe5381],sil        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
304f37  74 08                          je     0x304f41
304f39  44 88 75 c7                    mov    BYTE PTR [rbp-0x39],r14b
304f3d  84 d2                          test   dl,dl
304f3f  75 04                          jne    0x304f45
304f41  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304f45  8a 05 bd 1c 0e 00              mov    al,BYTE PTR [rip+0xe1cbd]        # 0x3e6c08 ; CONFIG Bools.DeployableIcons value(+0x48)
304f4b  48 8d 95 18 1e 00 00           lea    rdx,[rbp+0x1e18]
304f52  f3 0f 10 05 ce 85 0e 00        movss  xmm0,DWORD PTR [rip+0xe85ce]        # 0x3ed528 ; CONFIG F.DeployableIconsMult value(+0x48)
304f5a  48 8d 0d d7 b5 0e 00           lea    rcx,[rip+0xeb5d7]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
304f61  41 b8 08 00 00 00              mov    r8d,0x8
304f67  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
304f6c  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
304f6f  e8 7c 49 fe ff                 call   0x2e98f0
304f74  48 8b c8                       mov    rcx,rax
304f77  e8 f4 fd fc ff                 call   0x2d4d70
304f7c  84 c0                          test   al,al
304f7e  75 15                          jne    0x304f95
304f80  40 38 35 31 0d 0e 00           cmp    BYTE PTR [rip+0xe0d31],sil        # 0x3e5cb8
304f87  74 0c                          je     0x304f95
304f89  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
304f8d  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
304f91  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
304f95  ba 06 00 00 00                 mov    edx,0x6
304f9a  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
304f9f  e8 60 58 fe ff                 call   0x2ea804
304fa4  40 38 35 0d 3f 0e 00           cmp    BYTE PTR [rip+0xe3f0d],sil        # 0x3e8eb8 ; CONFIG Bools.Cupboard value(+0x48)
304fab  0f 84 10 03 00 00              je     0x3052c1
304fb1  f3 0f 2c 3b                    cvttss2si edi,DWORD PTR [rbx]
304fb5  48 8d 95 33 04 00 00           lea    rdx,[rbp+0x433]
304fbc  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
304fc1  e8 1e b8 fe ff                 call   0x2f07e4 ; STRING getter=0x2f07e4 M]
304fc6  48 8b c8                       mov    rcx,rax
304fc9  e8 26 b4 01 00                 call   0x3203f4
304fce  4c 8b e0                       mov    r12,rax
304fd1  b8 89 88 88 88                 mov    eax,0x88888889
304fd6  f7 ef                          imul   edi
304fd8  8d 34 17                       lea    esi,[rdi+rdx*1]
304fdb  8b d7                          mov    edx,edi
304fdd  c1 fe 05                       sar    esi,0x5
304fe0  8b ce                          mov    ecx,esi
304fe2  c1 e9 1f                       shr    ecx,0x1f
304fe5  03 f1                          add    esi,ecx
304fe7  6b ce 3c                       imul   ecx,esi,0x3c
304fea  2b d1                          sub    edx,ecx
304fec  48 8d 8d 08 26 00 00           lea    rcx,[rbp+0x2608]
304ff3  e8 18 45 fd ff                 call   0x2d9510
304ff8  48 8d 95 30 04 00 00           lea    rdx,[rbp+0x430]
304fff  4c 8b f8                       mov    r15,rax
305002  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
305007  e8 a8 b7 fe ff                 call   0x2f07b4 ; STRING getter=0x2f07b4 H 
30500c  48 8b c8                       mov    rcx,rax
30500f  e8 e0 b3 01 00                 call   0x3203f4
305014  4c 8b f0                       mov    r14,rax
305017  b8 b7 60 0b b6                 mov    eax,0xb60b60b7
30501c  f7 ef                          imul   edi
30501e  8d 1c 17                       lea    ebx,[rdi+rdx*1]
305021  c1 fb 0a                       sar    ebx,0xa
305024  8b cb                          mov    ecx,ebx
305026  c1 e9 1f                       shr    ecx,0x1f
305029  03 d9                          add    ebx,ecx
30502b  8d 0c 5b                       lea    ecx,[rbx+rbx*2]
30502e  c1 e1 03                       shl    ecx,0x3
305031  2b f1                          sub    esi,ecx
305033  48 8d 8d e8 25 00 00           lea    rcx,[rbp+0x25e8]
30503a  8b d6                          mov    edx,esi
30503c  e8 cf 44 fd ff                 call   0x2d9510
305041  48 8d 95 48 04 00 00           lea    rdx,[rbp+0x448]
305048  48 8b f0                       mov    rsi,rax
30504b  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
305050  e8 1b b7 fe ff                 call   0x2f0770 ; STRING getter=0x2f0770 D 
305055  48 8b c8                       mov    rcx,rax
305058  e8 97 b3 01 00                 call   0x3203f4
30505d  8b d3                          mov    edx,ebx
30505f  48 8d 8d c8 25 00 00           lea    rcx,[rbp+0x25c8]
305066  48 8b f8                       mov    rdi,rax
305069  e8 a2 44 fd ff                 call   0x2d9510
30506e  48 8d 95 ee 03 00 00           lea    rdx,[rbp+0x3ee]
305075  48 8b d8                       mov    rbx,rax
305078  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30507d  e8 76 b0 fe ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
305082  48 8b c8                       mov    rcx,rax
305085  e8 da 33 fd ff                 call   0x2d8464
30508a  48 8b d0                       mov    rdx,rax
30508d  48 8d 8d a8 25 00 00           lea    rcx,[rbp+0x25a8]
305094  e8 33 72 fc ff                 call   0x2cc2cc
305099  48 8b d0                       mov    rdx,rax
30509c  48 8d 8d 88 25 00 00           lea    rcx,[rbp+0x2588]
3050a3  4c 8b c3                       mov    r8,rbx
3050a6  e8 95 9e fc ff                 call   0x2cef40
3050ab  48 8b d0                       mov    rdx,rax
3050ae  48 8d 8d 68 25 00 00           lea    rcx,[rbp+0x2568]
3050b5  4c 8b c7                       mov    r8,rdi
3050b8  e8 7b 5c fc ff                 call   0x2cad38
3050bd  48 8b d0                       mov    rdx,rax
3050c0  48 8d 8d 48 25 00 00           lea    rcx,[rbp+0x2548]
3050c7  4c 8b c6                       mov    r8,rsi
3050ca  e8 71 9e fc ff                 call   0x2cef40
3050cf  48 8b d0                       mov    rdx,rax
3050d2  48 8d 8d 28 25 00 00           lea    rcx,[rbp+0x2528]
3050d9  4d 8b c6                       mov    r8,r14
3050dc  e8 57 5c fc ff                 call   0x2cad38
3050e1  48 8b d0                       mov    rdx,rax
3050e4  48 8d 8d 08 25 00 00           lea    rcx,[rbp+0x2508]
3050eb  4d 8b c7                       mov    r8,r15
3050ee  e8 4d 9e fc ff                 call   0x2cef40
3050f3  48 8b d0                       mov    rdx,rax
3050f6  48 8d 8d e8 24 00 00           lea    rcx,[rbp+0x24e8]
3050fd  4d 8b c4                       mov    r8,r12
305100  e8 33 5c fc ff                 call   0x2cad38
305105  48 8b d0                       mov    rdx,rax
305108  48 8d 4d 38                    lea    rcx,[rbp+0x38]
30510c  e8 d3 fa fc ff                 call   0x2d4be4
305111  48 8d 8d e8 24 00 00           lea    rcx,[rbp+0x24e8]
305118  e8 d7 73 fc ff                 call   0x2cc4f4
30511d  48 8d 8d 08 25 00 00           lea    rcx,[rbp+0x2508]
305124  e8 cb 73 fc ff                 call   0x2cc4f4
305129  48 8d 8d 28 25 00 00           lea    rcx,[rbp+0x2528]
305130  e8 bf 73 fc ff                 call   0x2cc4f4
305135  48 8d 8d 48 25 00 00           lea    rcx,[rbp+0x2548]
30513c  e8 b3 73 fc ff                 call   0x2cc4f4
305141  48 8d 8d 68 25 00 00           lea    rcx,[rbp+0x2568]
305148  e8 a7 73 fc ff                 call   0x2cc4f4
30514d  48 8d 8d 88 25 00 00           lea    rcx,[rbp+0x2588]
305154  e8 9b 73 fc ff                 call   0x2cc4f4
305159  48 8d 8d a8 25 00 00           lea    rcx,[rbp+0x25a8]
305160  e8 8f 73 fc ff                 call   0x2cc4f4
305165  48 8d 8d c8 25 00 00           lea    rcx,[rbp+0x25c8]
30516c  e8 83 73 fc ff                 call   0x2cc4f4
305171  48 8d 8d e8 25 00 00           lea    rcx,[rbp+0x25e8]
305178  e8 77 73 fc ff                 call   0x2cc4f4
30517d  48 8d 8d 08 26 00 00           lea    rcx,[rbp+0x2608]
305184  e8 6b 73 fc ff                 call   0x2cc4f4
305189  33 db                          xor    ebx,ebx
30518b  38 5d c4                       cmp    BYTE PTR [rbp-0x3c],bl
30518e  0f 84 c3 00 00 00              je     0x305257
305194  ba cc 02 00 00                 mov    edx,0x2cc
305199  49 8b cd                       mov    rcx,r13
30519c  e8 9b 9c fd ff                 call   0x2dee3c
3051a1  ba d0 02 00 00                 mov    edx,0x2d0
3051a6  49 8b cd                       mov    rcx,r13
3051a9  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3051ad  e8 8a 9c fd ff                 call   0x2dee3c
3051b2  44 8d 43 01                    lea    r8d,[rbx+0x1]
3051b6  48 8d 95 28 1e 00 00           lea    rdx,[rbp+0x1e28]
3051bd  48 8d 0d 94 b4 0e 00           lea    rcx,[rip+0xeb494]        # 0x3f0658 ; CONFIG VectorBools.WorldOptionsStuff value(+0x48)
3051c4  f3 0f 10 38                    movss  xmm7,DWORD PTR [rax]
3051c8  e8 23 47 fe ff                 call   0x2e98f0
3051cd  48 8b c8                       mov    rcx,rax
3051d0  e8 9b fb fc ff                 call   0x2d4d70
3051d5  84 c0                          test   al,al
3051d7  74 16                          je     0x3051ef
3051d9  f3 0f 2c c6                    cvttss2si eax,xmm6
3051dd  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
3051e3  f3 0f 2c c7                    cvttss2si eax,xmm7
3051e7  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
3051ed  eb 36                          jmp    0x305225
3051ef  45 33 c0                       xor    r8d,r8d
3051f2  48 8d 95 38 1e 00 00           lea    rdx,[rbp+0x1e38]
3051f9  48 8d 0d 58 b4 0e 00           lea    rcx,[rip+0xeb458]        # 0x3f0658 ; CONFIG VectorBools.WorldOptionsStuff value(+0x48)
305200  e8 eb 46 fe ff                 call   0x2e98f0
305205  48 8b c8                       mov    rcx,rax
305208  e8 63 fb fc ff                 call   0x2d4d70
30520d  84 c0                          test   al,al
30520f  74 14                          je     0x305225
305211  f3 0f 2c c6                    cvttss2si eax,xmm6
305215  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
30521b  f3 0f 2c c7                    cvttss2si eax,xmm7
30521f  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
305225  41 b8 02 00 00 00              mov    r8d,0x2
30522b  48 8d 95 48 1e 00 00           lea    rdx,[rbp+0x1e48]
305232  48 8d 0d 1f b4 0e 00           lea    rcx,[rip+0xeb41f]        # 0x3f0658 ; CONFIG VectorBools.WorldOptionsStuff value(+0x48)
305239  e8 b2 46 fe ff                 call   0x2e98f0
30523e  48 8b c8                       mov    rcx,rax
305241  e8 2a fb fc ff                 call   0x2d4d70
305246  84 c0                          test   al,al
305248  74 0d                          je     0x305257
30524a  48 8d 55 38                    lea    rdx,[rbp+0x38]
30524e  48 8d 4d d8                    lea    rcx,[rbp-0x28]
305252  e8 cd f9 fc ff                 call   0x2d4c24
305257  41 b8 03 00 00 00              mov    r8d,0x3
30525d  48 8d 95 58 1e 00 00           lea    rdx,[rbp+0x1e58]
305264  48 8d 0d ed b3 0e 00           lea    rcx,[rip+0xeb3ed]        # 0x3f0658 ; CONFIG VectorBools.WorldOptionsStuff value(+0x48)
30526b  e8 80 46 fe ff                 call   0x2e98f0
305270  48 8b c8                       mov    rcx,rax
305273  e8 f8 fa fc ff                 call   0x2d4d70
305278  84 c0                          test   al,al
30527a  74 37                          je     0x3052b3
30527c  49 8b 55 48                    mov    rdx,QWORD PTR [r13+0x48]
305280  48 8b ca                       mov    rcx,rdx
305283  e8 80 5c fc ff                 call   0x2caf08
305288  84 c0                          test   al,al
30528a  74 27                          je     0x3052b3
30528c  8b 52 38                       mov    edx,DWORD PTR [rdx+0x38]
30528f  48 8d 8d 28 26 00 00           lea    rcx,[rbp+0x2628]
305296  e8 75 42 fd ff                 call   0x2d9510
30529b  48 8b d0                       mov    rdx,rax
30529e  48 8d 4d f8                    lea    rcx,[rbp-0x8]
3052a2  e8 3d f9 fc ff                 call   0x2d4be4
3052a7  48 8d 8d 28 26 00 00           lea    rcx,[rbp+0x2628]
3052ae  e8 41 72 fc ff                 call   0x2cc4f4
3052b3  4c 8b a5 18 02 00 00           mov    r12,QWORD PTR [rbp+0x218]
3052ba  4c 8b bd 50 02 00 00           mov    r15,QWORD PTR [rbp+0x250]
3052c1  80 3d 70 4d 0e 00 00           cmp    BYTE PTR [rip+0xe4d70],0x0        # 0x3ea038 ; CONFIG Bools.radar value(+0x48)
3052c8  f3 41 0f 2c f1                 cvttss2si esi,xmm9
3052cd  0f 84 93 0b 00 00              je     0x305e66
3052d3  80 bd d8 29 00 00 00           cmp    BYTE PTR [rbp+0x29d8],0x0
3052da  0f 84 86 0b 00 00              je     0x305e66
3052e0  80 3d 11 1a 0e 00 00           cmp    BYTE PTR [rip+0xe1a11],0x0        # 0x3e6cf8 ; CONFIG Bools.DrawOnlyOre value(+0x48)
3052e7  0f 84 31 09 00 00              je     0x305c1e
3052ed  80 7d c7 00                    cmp    BYTE PTR [rbp-0x39],0x0
3052f1  0f 84 6f 0b 00 00              je     0x305e66
3052f7  80 7d c5 00                    cmp    BYTE PTR [rbp-0x3b],0x0
3052fb  0f 84 65 0b 00 00              je     0x305e66
305301  80 3d c0 30 0e 00 00           cmp    BYTE PTR [rip+0xe30c0],0x0        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
305308  0f 84 58 0b 00 00              je     0x305e66
30530e  49 8b cf                       mov    rcx,r15
305311  e8 3e 07 01 00                 call   0x315a54
305316  48 8b c8                       mov    rcx,rax
305319  48 8b d8                       mov    rbx,rax
30531c  e8 e7 5b fc ff                 call   0x2caf08
305321  33 ff                          xor    edi,edi
305323  84 c0                          test   al,al
305325  0f 84 3b 0b 00 00              je     0x305e66
30532b  48 8d 95 bc 11 00 00           lea    rdx,[rbp+0x11bc]
305332  48 8b cb                       mov    rcx,rbx
305335  e8 9a f4 06 00                 call   0x3747d4
30533a  48 8d 95 c8 11 00 00           lea    rdx,[rbp+0x11c8]
305341  48 8b cb                       mov    rcx,rbx
305344  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
305348  e8 87 f4 06 00                 call   0x3747d4
30534d  0f 28 ce                       movaps xmm1,xmm6
305350  48 8d 8d 68 08 00 00           lea    rcx,[rbp+0x868]
305357  f3 0f 10 50 08                 movss  xmm2,DWORD PTR [rax+0x8]
30535c  e8 df 6f fc ff                 call   0x2cc340
305361  f3 0f 10 54 24 50              movss  xmm2,DWORD PTR [rsp+0x50]
305367  48 8d 8d 58 02 00 00           lea    rcx,[rbp+0x258]
30536e  f3 0f 10 4c 24 48              movss  xmm1,DWORD PTR [rsp+0x48]
305374  e8 c7 6f fc ff                 call   0x2cc340
305379  4c 8d 85 58 02 00 00           lea    r8,[rbp+0x258]
305380  48 8d 95 d8 0b 00 00           lea    rdx,[rbp+0xbd8]
305387  48 8d 8d 68 08 00 00           lea    rcx,[rbp+0x868]
30538e  e8 09 a3 fd ff                 call   0x2df69c
305393  48 8d 8d 58 02 00 00           lea    rcx,[rbp+0x258]
30539a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
30539e  f2 0f 11 85 58 02 00 00        movsd  QWORD PTR [rbp+0x258],xmm0
3053a6  e8 7d 28 0c 00                 call   0x3c7c28
3053ab  0f 28 f0                       movaps xmm6,xmm0
3053ae  48 8d 95 e0 0b 00 00           lea    rdx,[rbp+0xbe0]
3053b5  f3 0f 59 35 87 87 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff88787]        # 0x28db44 ; f32=100
3053bd  48 8d 8d 58 02 00 00           lea    rcx,[rbp+0x258]
3053c4  f3 0f 5e 35 78 87 f8 ff        divss  xmm6,DWORD PTR [rip+0xfffffffffff88778]        # 0x28db44 ; f32=100
3053cc  e8 73 28 0c 00                 call   0x3c7c44
3053d1  48 8d 8d 58 02 00 00           lea    rcx,[rbp+0x258]
3053d8  f2 0f 10 08                    movsd  xmm1,QWORD PTR [rax]
3053dc  f2 0f 11 8d 58 02 00 00        movsd  QWORD PTR [rbp+0x258],xmm1
3053e4  f3 0f 10 0d 4c 85 0e 00        movss  xmm1,DWORD PTR [rip+0xe854c]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
3053ec  f3 0f 5d ce                    minss  xmm1,xmm6
3053f0  e8 33 a3 09 00                 call   0x39f728
3053f5  48 8d 95 28 1f 00 00           lea    rdx,[rbp+0x1f28]
3053fc  48 8b cb                       mov    rcx,rbx
3053ff  e8 a0 f6 06 00                 call   0x374aa4
305404  48 8d 95 00 02 00 00           lea    rdx,[rbp+0x200]
30540b  48 8d 8d d4 11 00 00           lea    rcx,[rbp+0x11d4]
305412  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
305415  f3 0f 7f 85 00 02 00 00        movdqu XMMWORD PTR [rbp+0x200],xmm0
30541d  e8 ea fe 00 00                 call   0x31530c
305422  f3 0f 10 35 16 de f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff8de16]        # 0x293240 ; f32=360
30542a  48 8d 8d e8 0b 00 00           lea    rcx,[rbp+0xbe8]
305431  0f 57 d2                       xorps  xmm2,xmm2
305434  0f 57 c9                       xorps  xmm1,xmm1
305437  f3 0f 5c 70 04                 subss  xmm6,DWORD PTR [rax+0x4]
30543c  e8 ff 6e fc ff                 call   0x2cc340
305441  48 8b 95 58 02 00 00           mov    rdx,QWORD PTR [rbp+0x258]
305448  48 8d 8d f0 0b 00 00           lea    rcx,[rbp+0xbf0]
30544f  0f 28 de                       movaps xmm3,xmm6
305452  40 88 7c 24 20                 mov    BYTE PTR [rsp+0x20],dil
305457  4c 8b 00                       mov    r8,QWORD PTR [rax]
30545a  e8 bd 26 01 00                 call   0x317b1c
30545f  f3 0f 10 3d 41 a9 0e 00        movss  xmm7,DWORD PTR [rip+0xea941]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
305467  48 8d 4d a8                    lea    rcx,[rbp-0x58]
30546b  f3 44 0f 10 05 b4 85 0e 00     movss  xmm8,DWORD PTR [rip+0xe85b4]        # 0x3eda28 ; CONFIG F.EntityCircleSize value(+0x48)
305474  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
305478  f2 0f 11 85 58 02 00 00        movsd  QWORD PTR [rbp+0x258],xmm0
305480  f3 0f 5c f8                    subss  xmm7,xmm0
305484  f3 0f 10 b5 5c 02 00 00        movss  xmm6,DWORD PTR [rbp+0x25c]
30548c  f3 0f 58 35 18 a9 0e 00        addss  xmm6,DWORD PTR [rip+0xea918]        # 0x3efdac
305494  e8 73 a3 fe ff                 call   0x2ef80c
305499  0f 28 d6                       movaps xmm2,xmm6
30549c  48 8d 8d 70 08 00 00           lea    rcx,[rbp+0x870]
3054a3  0f 28 cf                       movaps xmm1,xmm7
3054a6  8b d8                          mov    ebx,eax
3054a8  e8 93 6e fc ff                 call   0x2cc340
3054ad  4c 8b b5 d0 29 00 00           mov    r14,QWORD PTR [rbp+0x29d0]
3054b4  48 8d 95 70 08 00 00           lea    rdx,[rbp+0x870]
3054bb  49 8b ce                       mov    rcx,r14
3054be  44 8b cb                       mov    r9d,ebx
3054c1  41 0f 28 d0                    movaps xmm2,xmm8
3054c5  e8 72 5b 05 00                 call   0x35b03c
3054ca  40 38 3d d7 4e 0e 00           cmp    BYTE PTR [rip+0xe4ed7],dil        # 0x3ea3a8 ; CONFIG Bools.ShowRadarText value(+0x48)
3054d1  0f 84 96 09 00 00              je     0x305e6d
3054d7  8b d6                          mov    edx,esi
3054d9  48 8d 8d 00 10 00 00           lea    rcx,[rbp+0x1000]
3054e0  e8 2b 40 fd ff                 call   0x2d9510
3054e5  f3 41 0f 58 f0                 addss  xmm6,xmm8
3054ea  0f 28 cf                       movaps xmm1,xmm7
3054ed  48 8d 8d f8 0b 00 00           lea    rcx,[rbp+0xbf8]
3054f4  f3 41 0f 58 f2                 addss  xmm6,xmm10
3054f9  0f 28 d6                       movaps xmm2,xmm6
3054fc  e8 3f 6e fc ff                 call   0x2cc340
305501  0f 10 45 a8                    movups xmm0,XMMWORD PTR [rbp-0x58]
305505  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
305509  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
305510  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
305518  4c 8d 85 00 10 00 00           lea    r8,[rbp+0x1000]
30551f  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
305524  4c 8b c8                       mov    r9,rax
305527  49 8b ce                       mov    rcx,r14
30552a  66 0f 7f 85 00 02 00 00        movdqa XMMWORD PTR [rbp+0x200],xmm0
305532  e8 25 be 05 00                 call   0x36135c
305537  48 8d 8d 00 10 00 00           lea    rcx,[rbp+0x1000]
30553e  e8 b1 6f fc ff                 call   0x2cc4f4
305543  e9 25 09 00 00                 jmp    0x305e6d
305548  83 f9 7c                       cmp    ecx,0x7c
30554b  0f 85 e9 00 00 00              jne    0x30563a
305551  38 1d e1 36 0e 00              cmp    BYTE PTR [rip+0xe36e1],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
305557  8b 05 7b 93 0e 00              mov    eax,DWORD PTR [rip+0xe937b]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
30555d  0f 10 05 94 59 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5994]        # 0x3eaef8 ; CONFIG C.StashesUnHiddenC value(+0x48)
305564  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
305567  8b 05 1b 9d 0e 00              mov    eax,DWORD PTR [rip+0xe9d1b]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
30556d  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
305570  8a 05 32 3a 0e 00              mov    al,BYTE PTR [rip+0xe3a32]        # 0x3e8fa8 ; CONFIG Bools.StashesUnHidden value(+0x48)
305576  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30557a  74 0d                          je     0x305589
30557c  40 84 ff                       test   dil,dil
30557f  74 08                          je     0x305589
305581  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
305585  84 c0                          test   al,al
305587  75 03                          jne    0x30558c
305589  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
30558c  38 1d 36 2e 0e 00              cmp    BYTE PTR [rip+0xe2e36],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
305592  75 08                          jne    0x30559c
305594  38 1d 1e 4d 0e 00              cmp    BYTE PTR [rip+0xe4d1e],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
30559a  74 08                          je     0x3055a4
30559c  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3055a0  84 c0                          test   al,al
3055a2  75 03                          jne    0x3055a7
3055a4  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3055a7  8a 05 5b 16 0e 00              mov    al,BYTE PTR [rip+0xe165b]        # 0x3e6c08 ; CONFIG Bools.DeployableIcons value(+0x48)
3055ad  48 8d 95 68 1e 00 00           lea    rdx,[rbp+0x1e68]
3055b4  f3 0f 10 05 6c 7f 0e 00        movss  xmm0,DWORD PTR [rip+0xe7f6c]        # 0x3ed528 ; CONFIG F.DeployableIconsMult value(+0x48)
3055bc  48 8d 0d 75 af 0e 00           lea    rcx,[rip+0xeaf75]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
3055c3  41 b8 08 00 00 00              mov    r8d,0x8
3055c9  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
3055ce  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
3055d1  e8 1a 43 fe ff                 call   0x2e98f0
3055d6  48 8b c8                       mov    rcx,rax
3055d9  e8 92 f7 fc ff                 call   0x2d4d70
3055de  84 c0                          test   al,al
3055e0  75 11                          jne    0x3055f3
3055e2  38 1d d0 06 0e 00              cmp    BYTE PTR [rip+0xe06d0],bl        # 0x3e5cb8
3055e8  74 09                          je     0x3055f3
3055ea  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3055ed  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3055f0  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3055f3  ba 06 00 00 00                 mov    edx,0x6
3055f8  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3055fd  e8 02 52 fe ff                 call   0x2ea804
305602  40 84 ff                       test   dil,dil
305605  0f 84 b6 fc ff ff              je     0x3052c1
30560b  38 1d 97 39 0e 00              cmp    BYTE PTR [rip+0xe3997],bl        # 0x3e8fa8 ; CONFIG Bools.StashesUnHidden value(+0x48)
305611  0f 84 aa fc ff ff              je     0x3052c1
305617  ba d8 01 00 00                 mov    edx,0x1d8
30561c  49 8b cd                       mov    rcx,r13
30561f  e8 18 98 fd ff                 call   0x2dee3c
305624  0f bf 08                       movsx  ecx,WORD PTR [rax]
305627  0f ba e1 0b                    bt     ecx,0xb
30562b  0f 82 90 fc ff ff              jb     0x3052c1
305631  40 88 75 c4                    mov    BYTE PTR [rbp-0x3c],sil
305635  e9 87 fc ff ff                 jmp    0x3052c1
30563a  83 f9 58                       cmp    ecx,0x58
30563d  0f 85 99 00 00 00              jne    0x3056dc
305643  48 8d 95 70 04 00 00           lea    rdx,[rbp+0x470]
30564a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30564f  e8 b8 b1 fe ff                 call   0x2f080c ; STRING getter=0x2f080c Bag
305654  48 8b c8                       mov    rcx,rax
305657  e8 c0 ad 01 00                 call   0x32041c
30565c  48 8b d0                       mov    rdx,rax
30565f  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
305664  e8 ff f5 fc ff                 call   0x2d4c68
305669  0f 10 05 48 59 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5948]        # 0x3eafb8 ; CONFIG C.SleepingBagC value(+0x48)
305670  8a 15 92 38 0e 00              mov    dl,BYTE PTR [rip+0xe3892]        # 0x3e8f08 ; CONFIG Bools.SleepingBag value(+0x48)
305676  8b 05 5c 92 0e 00              mov    eax,DWORD PTR [rip+0xe925c]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
30567c  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30567f  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
305683  84 d2                          test   dl,dl
305685  74 0d                          je     0x305694
305687  40 84 ff                       test   dil,dil
30568a  74 08                          je     0x305694
30568c  40 8a ce                       mov    cl,sil
30568f  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
305692  eb 05                          jmp    0x305699
305694  8a cb                          mov    cl,bl
305696  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
305699  38 1d 99 35 0e 00              cmp    BYTE PTR [rip+0xe3599],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
30569f  8b 05 e3 9b 0e 00              mov    eax,DWORD PTR [rip+0xe9be3]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
3056a5  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3056a8  74 08                          je     0x3056b2
3056aa  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3056ae  84 c9                          test   cl,cl
3056b0  75 03                          jne    0x3056b5
3056b2  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3056b5  38 1d 0d 2d 0e 00              cmp    BYTE PTR [rip+0xe2d0d],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3056bb  75 08                          jne    0x3056c5
3056bd  38 1d f5 4b 0e 00              cmp    BYTE PTR [rip+0xe4bf5],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3056c3  74 08                          je     0x3056cd
3056c5  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3056c9  84 d2                          test   dl,dl
3056cb  75 03                          jne    0x3056d0
3056cd  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
3056d0  48 8d 95 78 1e 00 00           lea    rdx,[rbp+0x1e78]
3056d7  e9 30 02 00 00                 jmp    0x30590c
3056dc  83 f9 59                       cmp    ecx,0x59
3056df  0f 85 99 00 00 00              jne    0x30577e
3056e5  48 8d 95 46 0a 00 00           lea    rdx,[rbp+0xa46]
3056ec  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3056f1  e8 3e b1 fe ff                 call   0x2f0834 ; STRING getter=0x2f0834 RFRec
3056f6  48 8b c8                       mov    rcx,rax
3056f9  e8 de 2d fd ff                 call   0x2d84dc
3056fe  48 8b d0                       mov    rdx,rax
305701  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
305706  e8 5d f5 fc ff                 call   0x2d4c68
30570b  0f 10 05 06 59 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5906]        # 0x3eb018 ; CONFIG C.RFReceiverC value(+0x48)
305712  8a 15 70 3a 0e 00              mov    dl,BYTE PTR [rip+0xe3a70]        # 0x3e9188 ; CONFIG Bools.RFReceiver value(+0x48)
305718  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
30571c  84 d2                          test   dl,dl
30571e  74 0d                          je     0x30572d
305720  40 84 ff                       test   dil,dil
305723  74 08                          je     0x30572d
305725  40 8a ce                       mov    cl,sil
305728  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
30572b  eb 05                          jmp    0x305732
30572d  8a cb                          mov    cl,bl
30572f  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
305732  38 1d 00 35 0e 00              cmp    BYTE PTR [rip+0xe3500],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
305738  8b 05 9a 91 0e 00              mov    eax,DWORD PTR [rip+0xe919a]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
30573e  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
305741  8b 05 41 9b 0e 00              mov    eax,DWORD PTR [rip+0xe9b41]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
305747  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
30574a  74 08                          je     0x305754
30574c  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
305750  84 c9                          test   cl,cl
305752  75 03                          jne    0x305757
305754  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305757  38 1d 6b 2c 0e 00              cmp    BYTE PTR [rip+0xe2c6b],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30575d  75 08                          jne    0x305767
30575f  38 1d 53 4b 0e 00              cmp    BYTE PTR [rip+0xe4b53],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
305765  74 08                          je     0x30576f
305767  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30576b  84 d2                          test   dl,dl
30576d  75 03                          jne    0x305772
30576f  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305772  48 8d 95 88 1e 00 00           lea    rdx,[rbp+0x1e88]
305779  e9 8e 01 00 00                 jmp    0x30590c
30577e  83 f9 5a                       cmp    ecx,0x5a
305781  0f 85 99 00 00 00              jne    0x305820
305787  48 8d 95 d0 0b 00 00           lea    rdx,[rbp+0xbd0]
30578e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
305793  e8 b4 b1 fe ff                 call   0x2f094c
305798  48 8b c8                       mov    rcx,rax
30579b  e8 74 de fd ff                 call   0x2e3614
3057a0  48 8b d0                       mov    rdx,rax
3057a3  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3057a8  e8 bb f4 fc ff                 call   0x2d4c68
3057ad  0f 10 05 c4 58 0e 00           movups xmm0,XMMWORD PTR [rip+0xe58c4]        # 0x3eb078 ; CONFIG C.RFBroadcasterC value(+0x48)
3057b4  8a 15 7e 39 0e 00              mov    dl,BYTE PTR [rip+0xe397e]        # 0x3e9138 ; CONFIG Bools.RFBroadcaster value(+0x48)
3057ba  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3057be  84 d2                          test   dl,dl
3057c0  74 0d                          je     0x3057cf
3057c2  40 84 ff                       test   dil,dil
3057c5  74 08                          je     0x3057cf
3057c7  40 8a ce                       mov    cl,sil
3057ca  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3057cd  eb 05                          jmp    0x3057d4
3057cf  8a cb                          mov    cl,bl
3057d1  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3057d4  38 1d 5e 34 0e 00              cmp    BYTE PTR [rip+0xe345e],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
3057da  8b 05 f8 90 0e 00              mov    eax,DWORD PTR [rip+0xe90f8]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
3057e0  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3057e3  8b 05 9f 9a 0e 00              mov    eax,DWORD PTR [rip+0xe9a9f]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
3057e9  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3057ec  74 08                          je     0x3057f6
3057ee  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3057f2  84 c9                          test   cl,cl
3057f4  75 03                          jne    0x3057f9
3057f6  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3057f9  38 1d c9 2b 0e 00              cmp    BYTE PTR [rip+0xe2bc9],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3057ff  75 08                          jne    0x305809
305801  38 1d b1 4a 0e 00              cmp    BYTE PTR [rip+0xe4ab1],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
305807  74 08                          je     0x305811
305809  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
30580d  84 d2                          test   dl,dl
30580f  75 03                          jne    0x305814
305811  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305814  48 8d 95 98 1e 00 00           lea    rdx,[rbp+0x1e98]
30581b  e9 ec 00 00 00                 jmp    0x30590c
305820  83 f9 5c                       cmp    ecx,0x5c
305823  75 70                          jne    0x305895
305825  0f 10 05 ac 58 0e 00           movups xmm0,XMMWORD PTR [rip+0xe58ac]        # 0x3eb0d8 ; CONFIG C.WorkbenchC value(+0x48)
30582c  8a 15 16 38 0e 00              mov    dl,BYTE PTR [rip+0xe3816]        # 0x3e9048 ; CONFIG Bools.Workbench value(+0x48)
305832  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
305836  84 d2                          test   dl,dl
305838  74 0d                          je     0x305847
30583a  40 84 ff                       test   dil,dil
30583d  74 08                          je     0x305847
30583f  40 8a ce                       mov    cl,sil
305842  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
305845  eb 05                          jmp    0x30584c
305847  8a cb                          mov    cl,bl
305849  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30584c  38 1d e6 33 0e 00              cmp    BYTE PTR [rip+0xe33e6],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
305852  8b 05 80 90 0e 00              mov    eax,DWORD PTR [rip+0xe9080]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
305858  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
30585b  8b 05 27 9a 0e 00              mov    eax,DWORD PTR [rip+0xe9a27]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
305861  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
305864  74 08                          je     0x30586e
305866  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
30586a  84 c9                          test   cl,cl
30586c  75 03                          jne    0x305871
30586e  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305871  38 1d 51 2b 0e 00              cmp    BYTE PTR [rip+0xe2b51],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
305877  75 08                          jne    0x305881
305879  38 1d 39 4a 0e 00              cmp    BYTE PTR [rip+0xe4a39],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
30587f  74 08                          je     0x305889
305881  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
305885  84 d2                          test   dl,dl
305887  75 03                          jne    0x30588c
305889  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
30588c  48 8d 95 a8 1e 00 00           lea    rdx,[rbp+0x1ea8]
305893  eb 77                          jmp    0x30590c
305895  83 f9 5b                       cmp    ecx,0x5b
305898  0f 85 23 fa ff ff              jne    0x3052c1
30589e  0f 10 05 93 58 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5893]        # 0x3eb138 ; CONFIG C.workbench2C value(+0x48)
3058a5  8a 15 fd 3b 0e 00              mov    dl,BYTE PTR [rip+0xe3bfd]        # 0x3e94a8 ; CONFIG Bools.workbench2 value(+0x48)
3058ab  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3058af  84 d2                          test   dl,dl
3058b1  74 0d                          je     0x3058c0
3058b3  40 84 ff                       test   dil,dil
3058b6  74 08                          je     0x3058c0
3058b8  40 8a ce                       mov    cl,sil
3058bb  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3058be  eb 05                          jmp    0x3058c5
3058c0  8a cb                          mov    cl,bl
3058c2  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3058c5  38 1d 6d 33 0e 00              cmp    BYTE PTR [rip+0xe336d],bl        # 0x3e8c38 ; CONFIG Bools.DeployableChams value(+0x48)
3058cb  8b 05 07 90 0e 00              mov    eax,DWORD PTR [rip+0xe9007]        # 0x3ee8d8 ; CONFIG i.deployabledist value(+0x48)
3058d1  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3058d4  8b 05 ae 99 0e 00              mov    eax,DWORD PTR [rip+0xe99ae]        # 0x3ef288 ; CONFIG i.DeployableChamIndex value(+0x48)
3058da  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
3058dd  74 08                          je     0x3058e7
3058df  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
3058e3  84 c9                          test   cl,cl
3058e5  75 03                          jne    0x3058ea
3058e7  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
3058ea  38 1d d8 2a 0e 00              cmp    BYTE PTR [rip+0xe2ad8],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3058f0  75 08                          jne    0x3058fa
3058f2  38 1d c0 49 0e 00              cmp    BYTE PTR [rip+0xe49c0],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3058f8  74 08                          je     0x305902
3058fa  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
3058fe  84 d2                          test   dl,dl
305900  75 03                          jne    0x305905
305902  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305905  48 8d 95 b8 1e 00 00           lea    rdx,[rbp+0x1eb8]
30590c  8a 05 f6 12 0e 00              mov    al,BYTE PTR [rip+0xe12f6]        # 0x3e6c08 ; CONFIG Bools.DeployableIcons value(+0x48)
305912  48 8d 0d 1f ac 0e 00           lea    rcx,[rip+0xeac1f]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
305919  f3 0f 10 05 07 7c 0e 00        movss  xmm0,DWORD PTR [rip+0xe7c07]        # 0x3ed528 ; CONFIG F.DeployableIconsMult value(+0x48)
305921  41 b8 08 00 00 00              mov    r8d,0x8
305927  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
30592c  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
30592f  e8 bc 3f fe ff                 call   0x2e98f0
305934  48 8b c8                       mov    rcx,rax
305937  e8 34 f4 fc ff                 call   0x2d4d70
30593c  84 c0                          test   al,al
30593e  75 11                          jne    0x305951
305940  38 1d 72 03 0e 00              cmp    BYTE PTR [rip+0xe0372],bl        # 0x3e5cb8
305946  74 09                          je     0x305951
305948  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
30594b  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
30594e  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305951  ba 06 00 00 00                 mov    edx,0x6
305956  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30595b  e8 a4 4e fe ff                 call   0x2ea804
305960  e9 5c f9 ff ff                 jmp    0x3052c1
305965  ba cc 02 00 00                 mov    edx,0x2cc
30596a  49 8b cd                       mov    rcx,r13
30596d  e8 ca 94 fd ff                 call   0x2dee3c
305972  ba d0 02 00 00                 mov    edx,0x2d0
305977  49 8b cd                       mov    rcx,r13
30597a  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
30597e  e8 b9 94 fd ff                 call   0x2dee3c
305983  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
305987  8b 05 ab 8e 0e 00              mov    eax,DWORD PTR [rip+0xe8eab]        # 0x3ee838 ; CONFIG i.animalIndex value(+0x48)
30598d  3b c6                          cmp    eax,esi
30598f  75 16                          jne    0x3059a7
305991  f3 0f 2c c1                    cvttss2si eax,xmm1
305995  89 85 a8 00 00 00              mov    DWORD PTR [rbp+0xa8],eax
30599b  f3 0f 2c c0                    cvttss2si eax,xmm0
30599f  89 85 ac 00 00 00              mov    DWORD PTR [rbp+0xac],eax
3059a5  eb 18                          jmp    0x3059bf
3059a7  85 c0                          test   eax,eax
3059a9  75 14                          jne    0x3059bf
3059ab  f3 0f 2c c1                    cvttss2si eax,xmm1
3059af  89 85 98 00 00 00              mov    DWORD PTR [rbp+0x98],eax
3059b5  f3 0f 2c c0                    cvttss2si eax,xmm0
3059b9  89 85 9c 00 00 00              mov    DWORD PTR [rbp+0x9c],eax
3059bf  0f 10 05 12 51 0e 00           movups xmm0,XMMWORD PTR [rip+0xe5112]        # 0x3eaad8 ; CONFIG C.BearEspC value(+0x48)
3059c6  8a 15 fc 24 0e 00              mov    dl,BYTE PTR [rip+0xe24fc]        # 0x3e7ec8 ; CONFIG Bools.BearEsp value(+0x48)
3059cc  0f 11 45 a8                    movups XMMWORD PTR [rbp-0x58],xmm0
3059d0  84 d2                          test   dl,dl
3059d2  74 13                          je     0x3059e7
3059d4  40 84 ff                       test   dil,dil
3059d7  74 0e                          je     0x3059e7
3059d9  41 0f 2f cb                    comiss xmm1,xmm11
3059dd  76 08                          jbe    0x3059e7
3059df  40 8a ce                       mov    cl,sil
3059e2  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
3059e5  eb 05                          jmp    0x3059ec
3059e7  8a cb                          mov    cl,bl
3059e9  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
3059ec  38 1d d6 29 0e 00              cmp    BYTE PTR [rip+0xe29d6],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
3059f2  8b 05 30 85 0e 00              mov    eax,DWORD PTR [rip+0xe8530]        # 0x3edf28 ; CONFIG i.BearDistance value(+0x48)
3059f8  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
3059fb  75 08                          jne    0x305a05
3059fd  38 1d b5 48 0e 00              cmp    BYTE PTR [rip+0xe48b5],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
305a03  74 08                          je     0x305a0d
305a05  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
305a09  84 d2                          test   dl,dl
305a0b  75 03                          jne    0x305a10
305a0d  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305a10  38 1d 32 31 0e 00              cmp    BYTE PTR [rip+0xe3132],bl        # 0x3e8b48 ; CONFIG Bools.AnimalChams value(+0x48)
305a16  8b 05 7c 97 0e 00              mov    eax,DWORD PTR [rip+0xe977c]        # 0x3ef198 ; CONFIG i.AnimalChamsIndex value(+0x48)
305a1c  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
305a1f  74 08                          je     0x305a29
305a21  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
305a25  84 c9                          test   cl,cl
305a27  75 03                          jne    0x305a2c
305a29  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305a2c  48 8d 95 c8 1e 00 00           lea    rdx,[rbp+0x1ec8]
305a33  8a 05 8f 10 0e 00              mov    al,BYTE PTR [rip+0xe108f]        # 0x3e6ac8 ; CONFIG Bools.AnimalIcons value(+0x48)
305a39  48 8d 0d f8 aa 0e 00           lea    rcx,[rip+0xeaaf8]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
305a40  f3 0f 10 05 a0 79 0e 00        movss  xmm0,DWORD PTR [rip+0xe79a0]        # 0x3ed3e8 ; CONFIG F.AnimalIconsMult value(+0x48)
305a48  4d 8b c3                       mov    r8,r11
305a4b  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
305a50  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
305a53  e8 98 3e fe ff                 call   0x2e98f0
305a58  48 8b c8                       mov    rcx,rax
305a5b  e8 10 f3 fc ff                 call   0x2d4d70
305a60  84 c0                          test   al,al
305a62  75 11                          jne    0x305a75
305a64  38 1d 4e 02 0e 00              cmp    BYTE PTR [rip+0xe024e],bl        # 0x3e5cb8
305a6a  74 09                          je     0x305a75
305a6c  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305a6f  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305a72  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
305a75  ba 02 00 00 00                 mov    edx,0x2
305a7a  e9 d7 fe ff ff                 jmp    0x305956
305a7f  ba eb 00 00 00                 mov    edx,0xeb
305a84  c7 44 24 20 ff 00 00 00        mov    DWORD PTR [rsp+0x20],0xff
305a8c  41 b9 1f 00 00 00              mov    r9d,0x1f
305a92  48 8d 8d d8 1e 00 00           lea    rcx,[rbp+0x1ed8]
305a99  44 8d 42 89                    lea    r8d,[rdx-0x77]
305a9d  e8 76 58 fd ff                 call   0x2db318
305aa2  41 be 06 00 00 00              mov    r14d,0x6
305aa8  48 8d 95 e8 1e 00 00           lea    rdx,[rbp+0x1ee8]
305aaf  45 8b c6                       mov    r8d,r14d
305ab2  48 8d 0d ff a5 0e 00           lea    rcx,[rip+0xea5ff]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
305ab9  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
305abc  f3 0f 7f 45 a8                 movdqu XMMWORD PTR [rbp-0x58],xmm0
305ac1  e8 2a 3e fe ff                 call   0x2e98f0
305ac6  48 8b c8                       mov    rcx,rax
305ac9  e8 a2 f2 fc ff                 call   0x2d4d70
305ace  84 c0                          test   al,al
305ad0  74 0d                          je     0x305adf
305ad2  40 84 ff                       test   dil,dil
305ad5  74 08                          je     0x305adf
305ad7  40 8a ce                       mov    cl,sil
305ada  88 4d c4                       mov    BYTE PTR [rbp-0x3c],cl
305add  eb 05                          jmp    0x305ae4
305adf  8a cb                          mov    cl,bl
305ae1  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
305ae4  38 1d ae 30 0e 00              cmp    BYTE PTR [rip+0xe30ae],bl        # 0x3e8b98 ; CONFIG Bools.FoodChams value(+0x48)
305aea  8b 05 e8 97 0e 00              mov    eax,DWORD PTR [rip+0xe97e8]        # 0x3ef2d8 ; CONFIG i.CollectableDistance value(+0x48)
305af0  89 45 a0                       mov    DWORD PTR [rbp-0x60],eax
305af3  8b 05 3f 97 0e 00              mov    eax,DWORD PTR [rip+0xe973f]        # 0x3ef238 ; CONFIG i.FoodChamsIndex value(+0x48)
305af9  89 45 bc                       mov    DWORD PTR [rbp-0x44],eax
305afc  c7 85 d4 00 00 00 46 00 00 00  mov    DWORD PTR [rbp+0xd4],0x46
305b06  c7 85 d0 00 00 00 1e 00 00 00  mov    DWORD PTR [rbp+0xd0],0x1e
305b10  74 08                          je     0x305b1a
305b12  40 88 75 b8                    mov    BYTE PTR [rbp-0x48],sil
305b16  84 c9                          test   cl,cl
305b18  75 03                          jne    0x305b1d
305b1a  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305b1d  38 1d a5 28 0e 00              cmp    BYTE PTR [rip+0xe28a5],bl        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
305b23  75 08                          jne    0x305b2d
305b25  38 1d 8d 47 0e 00              cmp    BYTE PTR [rip+0xe478d],bl        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
305b2b  74 26                          je     0x305b53
305b2d  4d 8b c6                       mov    r8,r14
305b30  48 8d 95 f8 1e 00 00           lea    rdx,[rbp+0x1ef8]
305b37  48 8d 0d 7a a5 0e 00           lea    rcx,[rip+0xea57a]        # 0x3f00b8 ; CONFIG VectorBools.BerryOptions value(+0x48)
305b3e  e8 ad 3d fe ff                 call   0x2e98f0
305b43  48 8b c8                       mov    rcx,rax
305b46  e8 25 f2 fc ff                 call   0x2d4d70
305b4b  40 88 75 c7                    mov    BYTE PTR [rbp-0x39],sil
305b4f  84 c0                          test   al,al
305b51  75 03                          jne    0x305b56
305b53  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305b56  8a 05 cc 0e 0e 00              mov    al,BYTE PTR [rip+0xe0ecc]        # 0x3e6a28 ; CONFIG Bools.CollectableIcons value(+0x48)
305b5c  48 8d 95 08 1f 00 00           lea    rdx,[rbp+0x1f08]
305b63  f3 0f 10 05 dd 77 0e 00        movss  xmm0,DWORD PTR [rip+0xe77dd]        # 0x3ed348 ; CONFIG F.CollectableIconsMult value(+0x48)
305b6b  48 8d 0d c6 a9 0e 00           lea    rcx,[rip+0xea9c6]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
305b72  41 b8 02 00 00 00              mov    r8d,0x2
305b78  f3 0f 11 45 c0                 movss  DWORD PTR [rbp-0x40],xmm0
305b7d  88 45 a4                       mov    BYTE PTR [rbp-0x5c],al
305b80  e8 6b 3d fe ff                 call   0x2e98f0
305b85  48 8b c8                       mov    rcx,rax
305b88  e8 e3 f1 fc ff                 call   0x2d4d70
305b8d  84 c0                          test   al,al
305b8f  75 11                          jne    0x305ba2
305b91  38 1d 21 01 0e 00              cmp    BYTE PTR [rip+0xe0121],bl        # 0x3e5cb8
305b97  74 09                          je     0x305ba2
305b99  88 5d c4                       mov    BYTE PTR [rbp-0x3c],bl
305b9c  88 5d c7                       mov    BYTE PTR [rbp-0x39],bl
305b9f  88 5d b8                       mov    BYTE PTR [rbp-0x48],bl
305ba2  8b d6                          mov    edx,esi
305ba4  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
305ba9  e8 56 4c fe ff                 call   0x2ea804
305bae  38 1d a4 3d 0e 00              cmp    BYTE PTR [rip+0xe3da4],bl        # 0x3e9958 ; CONFIG Bools.AutoCollect value(+0x48)
305bb4  0f 84 07 f7 ff ff              je     0x3052c1
305bba  38 1d c1 98 0e 00              cmp    BYTE PTR [rip+0xe98c1],bl        # 0x3ef481
305bc0  0f 84 fb f6 ff ff              je     0x3052c1
305bc6  41 b8 0c 00 00 00              mov    r8d,0xc
305bcc  48 8d 95 18 1f 00 00           lea    rdx,[rbp+0x1f18]
305bd3  48 8d 0d 0e ab 0e 00           lea    rcx,[rip+0xeab0e]        # 0x3f06e8 ; CONFIG VectorBools.CollectableOptions value(+0x48)
305bda  e8 11 3d fe ff                 call   0x2e98f0
305bdf  48 8b c8                       mov    rcx,rax
305be2  e8 89 f1 fc ff                 call   0x2d4d70
305be7  84 c0                          test   al,al
305be9  0f 84 d2 f6 ff ff              je     0x3052c1
305bef  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
305bf5  4c 8d 85 a0 08 00 00           lea    r8,[rbp+0x8a0]
305bfc  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
305c00  44 8b ce                       mov    r9d,esi
305c03  88 5c 24 28                    mov    BYTE PTR [rsp+0x28],bl
305c07  f2 0f 11 85 a0 08 00 00        movsd  QWORD PTR [rbp+0x8a0],xmm0
305c0f  89 85 a8 08 00 00              mov    DWORD PTR [rbp+0x8a8],eax
305c15  88 5c 24 20                    mov    BYTE PTR [rsp+0x20],bl
305c19  e9 28 99 ff ff                 jmp    0x2ff546
305c1e  80 7d c7 00                    cmp    BYTE PTR [rbp-0x39],0x0
305c22  0f 84 3e 02 00 00              je     0x305e66
305c28  80 3d 99 27 0e 00 00           cmp    BYTE PTR [rip+0xe2799],0x0        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
305c2f  0f 84 31 02 00 00              je     0x305e66
305c35  49 8b cf                       mov    rcx,r15
305c38  e8 17 fe 00 00                 call   0x315a54
305c3d  48 8b c8                       mov    rcx,rax
305c40  48 8b d8                       mov    rbx,rax
305c43  e8 c0 52 fc ff                 call   0x2caf08
305c48  33 ff                          xor    edi,edi
305c4a  84 c0                          test   al,al
305c4c  0f 84 14 02 00 00              je     0x305e66
305c52  48 8d 95 e0 11 00 00           lea    rdx,[rbp+0x11e0]
305c59  48 8b cb                       mov    rcx,rbx
305c5c  e8 73 eb 06 00                 call   0x3747d4
305c61  48 8d 95 ec 11 00 00           lea    rdx,[rbp+0x11ec]
305c68  48 8b cb                       mov    rcx,rbx
305c6b  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
305c6f  e8 60 eb 06 00                 call   0x3747d4
305c74  0f 28 ce                       movaps xmm1,xmm6
305c77  48 8d 8d 78 08 00 00           lea    rcx,[rbp+0x878]
305c7e  f3 0f 10 50 08                 movss  xmm2,DWORD PTR [rax+0x8]
305c83  e8 b8 66 fc ff                 call   0x2cc340
305c88  f3 0f 10 54 24 50              movss  xmm2,DWORD PTR [rsp+0x50]
305c8e  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
305c95  f3 0f 10 4c 24 48              movss  xmm1,DWORD PTR [rsp+0x48]
305c9b  e8 a0 66 fc ff                 call   0x2cc340
305ca0  4c 8d 85 60 02 00 00           lea    r8,[rbp+0x260]
305ca7  48 8d 95 00 0c 00 00           lea    rdx,[rbp+0xc00]
305cae  48 8d 8d 78 08 00 00           lea    rcx,[rbp+0x878]
305cb5  e8 e2 99 fd ff                 call   0x2df69c
305cba  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
305cc1  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
305cc5  f2 0f 11 85 60 02 00 00        movsd  QWORD PTR [rbp+0x260],xmm0
305ccd  e8 56 1f 0c 00                 call   0x3c7c28
305cd2  0f 28 f0                       movaps xmm6,xmm0
305cd5  48 8d 95 08 0c 00 00           lea    rdx,[rbp+0xc08]
305cdc  f3 0f 59 35 60 7e f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff87e60]        # 0x28db44 ; f32=100
305ce4  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
305ceb  f3 0f 5e 35 51 7e f8 ff        divss  xmm6,DWORD PTR [rip+0xfffffffffff87e51]        # 0x28db44 ; f32=100
305cf3  e8 4c 1f 0c 00                 call   0x3c7c44
305cf8  48 8d 8d 60 02 00 00           lea    rcx,[rbp+0x260]
305cff  f2 0f 10 08                    movsd  xmm1,QWORD PTR [rax]
305d03  f2 0f 11 8d 60 02 00 00        movsd  QWORD PTR [rbp+0x260],xmm1
305d0b  f3 0f 10 0d 25 7c 0e 00        movss  xmm1,DWORD PTR [rip+0xe7c25]        # 0x3ed938 ; CONFIG F.RadarSize value(+0x48)
305d13  f3 0f 5d ce                    minss  xmm1,xmm6
305d17  e8 0c 9a 09 00                 call   0x39f728
305d1c  48 8d 95 38 1f 00 00           lea    rdx,[rbp+0x1f38]
305d23  48 8b cb                       mov    rcx,rbx
305d26  e8 79 ed 06 00                 call   0x374aa4
305d2b  48 8d 95 00 02 00 00           lea    rdx,[rbp+0x200]
305d32  48 8d 8d f8 11 00 00           lea    rcx,[rbp+0x11f8]
305d39  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
305d3c  f3 0f 7f 85 00 02 00 00        movdqu XMMWORD PTR [rbp+0x200],xmm0
305d44  e8 c3 f5 00 00                 call   0x31530c
305d49  f3 0f 10 35 ef d4 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff8d4ef]        # 0x293240 ; f32=360
305d51  48 8d 8d 10 0c 00 00           lea    rcx,[rbp+0xc10]
305d58  0f 57 d2                       xorps  xmm2,xmm2
305d5b  0f 57 c9                       xorps  xmm1,xmm1
305d5e  f3 0f 5c 70 04                 subss  xmm6,DWORD PTR [rax+0x4]
305d63  e8 d8 65 fc ff                 call   0x2cc340
305d68  48 8b 95 60 02 00 00           mov    rdx,QWORD PTR [rbp+0x260]
305d6f  48 8d 8d 18 0c 00 00           lea    rcx,[rbp+0xc18]
305d76  0f 28 de                       movaps xmm3,xmm6
305d79  40 88 7c 24 20                 mov    BYTE PTR [rsp+0x20],dil
305d7e  4c 8b 00                       mov    r8,QWORD PTR [rax]
305d81  e8 96 1d 01 00                 call   0x317b1c
305d86  f3 0f 10 3d 1a a0 0e 00        movss  xmm7,DWORD PTR [rip+0xea01a]        # 0x3efda8 ; CONFIG V2.radarpos value(+0x48)
305d8e  48 8d 4d a8                    lea    rcx,[rbp-0x58]
305d92  f3 44 0f 10 05 8d 7c 0e 00     movss  xmm8,DWORD PTR [rip+0xe7c8d]        # 0x3eda28 ; CONFIG F.EntityCircleSize value(+0x48)
305d9b  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
305d9f  f2 0f 11 85 60 02 00 00        movsd  QWORD PTR [rbp+0x260],xmm0
305da7  f3 0f 5c f8                    subss  xmm7,xmm0
305dab  f3 0f 10 b5 64 02 00 00        movss  xmm6,DWORD PTR [rbp+0x264]
305db3  f3 0f 58 35 f1 9f 0e 00        addss  xmm6,DWORD PTR [rip+0xe9ff1]        # 0x3efdac
305dbb  e8 4c 9a fe ff                 call   0x2ef80c
305dc0  0f 28 d6                       movaps xmm2,xmm6
305dc3  48 8d 8d 80 08 00 00           lea    rcx,[rbp+0x880]
305dca  0f 28 cf                       movaps xmm1,xmm7
305dcd  8b d8                          mov    ebx,eax
305dcf  e8 6c 65 fc ff                 call   0x2cc340
305dd4  4c 8b b5 d0 29 00 00           mov    r14,QWORD PTR [rbp+0x29d0]
305ddb  48 8d 95 80 08 00 00           lea    rdx,[rbp+0x880]
305de2  49 8b ce                       mov    rcx,r14
305de5  44 8b cb                       mov    r9d,ebx
305de8  41 0f 28 d0                    movaps xmm2,xmm8
305dec  e8 4b 52 05 00                 call   0x35b03c
305df1  40 38 3d b0 45 0e 00           cmp    BYTE PTR [rip+0xe45b0],dil        # 0x3ea3a8 ; CONFIG Bools.ShowRadarText value(+0x48)
305df8  74 73                          je     0x305e6d
305dfa  8b d6                          mov    edx,esi
305dfc  48 8d 8d 20 10 00 00           lea    rcx,[rbp+0x1020]
305e03  e8 08 37 fd ff                 call   0x2d9510
305e08  f3 41 0f 58 f0                 addss  xmm6,xmm8
305e0d  0f 28 cf                       movaps xmm1,xmm7
305e10  48 8d 8d 20 0c 00 00           lea    rcx,[rbp+0xc20]
305e17  f3 41 0f 58 f2                 addss  xmm6,xmm10
305e1c  0f 28 d6                       movaps xmm2,xmm6
305e1f  e8 1c 65 fc ff                 call   0x2cc340
305e24  0f 10 45 a8                    movups xmm0,XMMWORD PTR [rbp-0x58]
305e28  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
305e2c  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
305e33  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
305e3b  4c 8d 85 20 10 00 00           lea    r8,[rbp+0x1020]
305e42  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
305e47  4c 8b c8                       mov    r9,rax
305e4a  49 8b ce                       mov    rcx,r14
305e4d  66 0f 7f 85 00 02 00 00        movdqa XMMWORD PTR [rbp+0x200],xmm0
305e55  e8 02 b5 05 00                 call   0x36135c
305e5a  48 8d 8d 20 10 00 00           lea    rcx,[rbp+0x1020]
305e61  e9 d8 f6 ff ff                 jmp    0x30553e
305e66  4c 8b b5 d0 29 00 00           mov    r14,QWORD PTR [rbp+0x29d0]
305e6d  80 3d 44 44 0e 00 00           cmp    BYTE PTR [rip+0xe4444],0x0        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
305e74  0f 84 5e 08 00 00              je     0x3066d8
305e7a  80 7d c7 00                    cmp    BYTE PTR [rbp-0x39],0x0
305e7e  0f 84 54 08 00 00              je     0x3066d8
305e84  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
305e8a  48 8d 95 90 07 00 00           lea    rdx,[rbp+0x790]
305e91  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
305e95  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
305e9c  f2 0f 11 85 90 07 00 00        movsd  QWORD PTR [rbp+0x790],xmm0
305ea4  89 85 98 07 00 00              mov    DWORD PTR [rbp+0x798],eax
305eaa  e8 59 f0 00 00                 call   0x314f08
305eaf  0f 57 d2                       xorps  xmm2,xmm2
305eb2  48 8d 8d 28 0c 00 00           lea    rcx,[rbp+0xc28]
305eb9  0f 57 c9                       xorps  xmm1,xmm1
305ebc  e8 7f 64 fc ff                 call   0x2cc340
305ec1  48 8b d0                       mov    rdx,rax
305ec4  48 8d 8d 10 02 00 00           lea    rcx,[rbp+0x210]
305ecb  e8 f4 97 fe ff                 call   0x2ef6c4
305ed0  33 ff                          xor    edi,edi
305ed2  84 c0                          test   al,al
305ed4  0f 84 fe 07 00 00              je     0x3066d8
305eda  e8 99 f8 00 00                 call   0x315778
305edf  f3 44 0f 10 85 14 02 00 00     movss  xmm8,DWORD PTR [rbp+0x214]
305ee8  48 8d 8d e0 10 00 00           lea    rcx,[rbp+0x10e0]
305eef  8b 95 a0 02 00 00              mov    edx,DWORD PTR [rbp+0x2a0]
305ef5  0f 28 f8                       movaps xmm7,xmm0
305ef8  f3 0f 58 3d c8 7b 0e 00        addss  xmm7,DWORD PTR [rip+0xe7bc8]        # 0x3edac8 ; CONFIG F.IngameCircleSizeEntity value(+0x48)
305f00  f3 44 0f 58 c7                 addss  xmm8,xmm7
305f05  f3 45 0f 58 c2                 addss  xmm8,xmm10
305f0a  e8 01 36 fd ff                 call   0x2d9510
305f0f  40 38 3d f2 43 0e 00           cmp    BYTE PTR [rip+0xe43f2],dil        # 0x3ea308 ; CONFIG Bools.UseRadarIcons value(+0x48)
305f16  74 58                          je     0x305f70
305f18  83 bd a0 02 00 00 05           cmp    DWORD PTR [rbp+0x2a0],0x5
305f1f  74 4f                          je     0x305f70
305f21  83 bd a0 02 00 00 47           cmp    DWORD PTR [rbp+0x2a0],0x47
305f28  74 46                          je     0x305f70
305f2a  f3 0f 10 95 14 02 00 00        movss  xmm2,DWORD PTR [rbp+0x214]
305f32  48 8d 8d 30 0c 00 00           lea    rcx,[rbp+0xc30]
305f39  f3 0f 10 8d 10 02 00 00        movss  xmm1,DWORD PTR [rbp+0x210]
305f41  e8 fa 63 fc ff                 call   0x2cc340
305f46  0f 28 f7                       movaps xmm6,xmm7
305f49  48 8d 8d e0 10 00 00           lea    rcx,[rbp+0x10e0]
305f50  f3 0f 59 35 f8 d1 f8 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff8d1f8]        # 0x293150 ; f32=2.8
305f58  48 8b d8                       mov    rbx,rax
305f5b  e8 8c 78 fc ff                 call   0x2cd7ec
305f60  48 8b c8                       mov    rcx,rax
305f63  0f 28 d6                       movaps xmm2,xmm6
305f66  48 8b d3                       mov    rdx,rbx
305f69  e8 62 69 fc ff                 call   0x2cc8d0
305f6e  eb 44                          jmp    0x305fb4
305f70  48 8d 4d a8                    lea    rcx,[rbp-0x58]
305f74  e8 93 98 fe ff                 call   0x2ef80c
305f79  f3 0f 10 95 14 02 00 00        movss  xmm2,DWORD PTR [rbp+0x214]
305f81  48 8d 8d 38 0c 00 00           lea    rcx,[rbp+0xc38]
305f88  f3 0f 10 8d 10 02 00 00        movss  xmm1,DWORD PTR [rbp+0x210]
305f90  8b d8                          mov    ebx,eax
305f92  e8 a9 63 fc ff                 call   0x2cc340
305f97  f3 44 0f 11 5c 24 28           movss  DWORD PTR [rsp+0x28],xmm11
305f9e  48 8b d0                       mov    rdx,rax
305fa1  44 8b cb                       mov    r9d,ebx
305fa4  40 88 7c 24 20                 mov    BYTE PTR [rsp+0x20],dil
305fa9  0f 28 d7                       movaps xmm2,xmm7
305fac  49 8b ce                       mov    rcx,r14
305faf  e8 c4 65 05 00                 call   0x35c578
305fb4  48 8d 95 ec 03 00 00           lea    rdx,[rbp+0x3ec]
305fbb  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
305fc0  e8 cb a9 fe ff                 call   0x2f0990 ; STRING getter=0x2f0990 m
305fc5  48 8b c8                       mov    rcx,rax
305fc8  e8 97 24 fd ff                 call   0x2d8464
305fcd  48 8d 95 04 12 00 00           lea    rdx,[rbp+0x1204]
305fd4  49 8b cf                       mov    rcx,r15
305fd7  48 8b d8                       mov    rbx,rax
305fda  e8 55 6a 06 00                 call   0x36ca34
305fdf  48 8b d0                       mov    rdx,rax
305fe2  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
305fe7  e8 44 9f fd ff                 call   0x2dff30
305fec  f3 0f 2c d0                    cvttss2si edx,xmm0
305ff0  48 8d 8d 48 26 00 00           lea    rcx,[rbp+0x2648]
305ff7  e8 14 35 fd ff                 call   0x2d9510
305ffc  48 8b d0                       mov    rdx,rax
305fff  48 8d 8d 40 10 00 00           lea    rcx,[rbp+0x1040]
306006  4c 8b c3                       mov    r8,rbx
306009  e8 2a 4d fc ff                 call   0x2cad38
30600e  48 8d 8d 48 26 00 00           lea    rcx,[rbp+0x2648]
306015  e8 da 64 fc ff                 call   0x2cc4f4
30601a  b8 ff 00 00 00                 mov    eax,0xff
30601f  48 8d 8d 48 1f 00 00           lea    rcx,[rbp+0x1f48]
306026  44 8b c8                       mov    r9d,eax
306029  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
30602d  44 8b c0                       mov    r8d,eax
306030  8b d0                          mov    edx,eax
306032  e8 e1 52 fd ff                 call   0x2db318
306037  f3 0f 10 8d 10 02 00 00        movss  xmm1,DWORD PTR [rbp+0x210]
30603f  48 8d 8d 40 0c 00 00           lea    rcx,[rbp+0xc40]
306046  41 0f 28 d0                    movaps xmm2,xmm8
30604a  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
30604e  e8 ed 62 fc ff                 call   0x2cc340
306053  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306057  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
30605e  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
306066  4c 8d 85 40 10 00 00           lea    r8,[rbp+0x1040]
30606d  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306072  4c 8b c8                       mov    r9,rax
306075  49 8b ce                       mov    rcx,r14
306078  66 0f 7f b5 00 02 00 00        movdqa XMMWORD PTR [rbp+0x200],xmm6
306080  e8 d7 b2 05 00                 call   0x36135c
306085  83 bd a0 02 00 00 32           cmp    DWORD PTR [rbp+0x2a0],0x32
30608c  0f 85 2b 03 00 00              jne    0x3063bd
306092  45 33 ff                       xor    r15d,r15d
306095  44 38 3d 2c 23 0e 00           cmp    BYTE PTR [rip+0xe232c],r15b        # 0x3e83c8 ; CONFIG Bools.DrawRadarEntities value(+0x48)
30609c  75 0d                          jne    0x3060ab
30609e  44 38 3d 13 42 0e 00           cmp    BYTE PTR [rip+0xe4213],r15b        # 0x3ea2b8 ; CONFIG Bools.DrawIngameRadarEntities value(+0x48)
3060a5  0f 84 15 06 00 00              je     0x3066c0
3060ab  f3 0f 10 85 68 02 00 00        movss  xmm0,DWORD PTR [rbp+0x268]
3060b3  f3 0f 10 8d 6c 02 00 00        movss  xmm1,DWORD PTR [rbp+0x26c]
3060bb  f3 0f 5c 8d 14 02 00 00        subss  xmm1,DWORD PTR [rbp+0x214]
3060c3  f3 0f 5c 85 10 02 00 00        subss  xmm0,DWORD PTR [rbp+0x210]
3060cb  f3 0f 59 ff                    mulss  xmm7,xmm7
3060cf  f3 0f 59 c9                    mulss  xmm1,xmm1
3060d3  f3 0f 59 c0                    mulss  xmm0,xmm0
3060d7  f3 0f 58 c8                    addss  xmm1,xmm0
3060db  0f 2f f9                       comiss xmm7,xmm1
3060de  0f 82 dc 05 00 00              jb     0x3066c0
3060e4  48 8d 4d 58                    lea    rcx,[rbp+0x58]
3060e8  e8 a7 25 fd ff                 call   0x2d8694
3060ed  84 c0                          test   al,al
3060ef  0f 85 cb 05 00 00              jne    0x3066c0
3060f5  48 8d 95 8d 14 00 00           lea    rdx,[rbp+0x148d]
3060fc  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306101  e8 ae a8 fe ff                 call   0x2f09b4 ; STRING getter=0x2f09b4 Locked Crate
306106  48 8b c8                       mov    rcx,rax
306109  e8 e6 24 fd ff                 call   0x2d85f4
30610e  f3 0f 10 35 4a d1 f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff8d14a]        # 0x293260 ; f32=-1
306116  48 8d 8d 88 03 00 00           lea    rcx,[rbp+0x388]
30611d  45 33 c9                       xor    r9d,r9d
306120  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
306126  45 33 c0                       xor    r8d,r8d
306129  48 8b d0                       mov    rdx,rax
30612c  48 8b d8                       mov    rbx,rax
30612f  e8 68 96 08 00                 call   0x38f79c
306134  48 8d 4d 58                    lea    rcx,[rbp+0x58]
306138  e8 af 76 fc ff                 call   0x2cd7ec
30613d  48 8b d0                       mov    rdx,rax
306140  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
306146  45 33 c9                       xor    r9d,r9d
306149  48 8d 8d b8 03 00 00           lea    rcx,[rbp+0x3b8]
306150  45 33 c0                       xor    r8d,r8d
306153  e8 44 96 08 00                 call   0x38f79c
306158  f3 0f 10 95 8c 03 00 00        movss  xmm2,DWORD PTR [rbp+0x38c]
306160  48 8d 8d 40 02 00 00           lea    rcx,[rbp+0x240]
306167  f3 0f 58 15 c5 cf f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff8cfc5]        # 0x293134 ; f32=2
30616f  f3 0f 10 bd 88 03 00 00        movss  xmm7,DWORD PTR [rbp+0x388]
306177  f3 0f 5f bd b8 03 00 00        maxss  xmm7,DWORD PTR [rbp+0x3b8]
30617f  f3 0f 58 95 bc 03 00 00        addss  xmm2,DWORD PTR [rbp+0x3bc]
306187  0f 28 cf                       movaps xmm1,xmm7
30618a  f3 41 0f 58 cd                 addss  xmm1,xmm13
30618f  f3 41 0f 58 d5                 addss  xmm2,xmm13
306194  e8 a7 61 fc ff                 call   0x2cc340
306199  e8 52 a8 fd ff                 call   0x2e09f0
30619e  66 0f 6e f0                    movd   xmm6,eax
3061a2  0f 5b f6                       cvtdq2ps xmm6,xmm6
3061a5  e8 46 a9 fd ff                 call   0x2e0af0
3061aa  48 8d 8d 90 03 00 00           lea    rcx,[rbp+0x390]
3061b1  66 0f 6e c8                    movd   xmm1,eax
3061b5  0f 28 d6                       movaps xmm2,xmm6
3061b8  0f 5b c9                       cvtdq2ps xmm1,xmm1
3061bb  e8 80 61 fc ff                 call   0x2cc340
3061c0  f3 0f 10 05 e0 cf f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8cfe0]        # 0x2931a8 ; f32=12
3061c8  48 8d 8d e8 01 00 00           lea    rcx,[rbp+0x1e8]
3061cf  f3 0f 10 95 6c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x26c]
3061d7  f3 0f 10 8d 68 02 00 00        movss  xmm1,DWORD PTR [rbp+0x268]
3061df  f3 0f 58 d0                    addss  xmm2,xmm0
3061e3  f3 0f 58 c8                    addss  xmm1,xmm0
3061e7  e8 54 61 fc ff                 call   0x2cc340
3061ec  f3 44 0f 10 85 40 02 00 00     movss  xmm8,DWORD PTR [rbp+0x240]
3061f5  f3 0f 10 95 e8 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1e8]
3061fd  41 0f 28 c0                    movaps xmm0,xmm8
306201  f3 0f 58 c2                    addss  xmm0,xmm2
306205  0f 2f 85 90 03 00 00           comiss xmm0,DWORD PTR [rbp+0x390]
30620c  76 15                          jbe    0x306223
30620e  f3 0f 10 95 90 03 00 00        movss  xmm2,DWORD PTR [rbp+0x390]
306216  f3 41 0f 5c d0                 subss  xmm2,xmm8
30621b  f3 0f 11 95 e8 01 00 00        movss  DWORD PTR [rbp+0x1e8],xmm2
306223  f3 0f 10 b5 44 02 00 00        movss  xmm6,DWORD PTR [rbp+0x244]
30622b  f3 0f 10 8d ec 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1ec]
306233  0f 28 c6                       movaps xmm0,xmm6
306236  f3 0f 58 c1                    addss  xmm0,xmm1
30623a  0f 2f 85 94 03 00 00           comiss xmm0,DWORD PTR [rbp+0x394]
306241  76 14                          jbe    0x306257
306243  f3 0f 10 8d 94 03 00 00        movss  xmm1,DWORD PTR [rbp+0x394]
30624b  f3 0f 5c ce                    subss  xmm1,xmm6
30624f  f3 0f 11 8d ec 01 00 00        movss  DWORD PTR [rbp+0x1ec],xmm1
306257  44 0f 2f da                    comiss xmm11,xmm2
30625b  76 06                          jbe    0x306263
30625d  89 bd e8 01 00 00              mov    DWORD PTR [rbp+0x1e8],edi
306263  44 0f 2f d9                    comiss xmm11,xmm1
306267  76 06                          jbe    0x30626f
306269  89 bd ec 01 00 00              mov    DWORD PTR [rbp+0x1ec],edi
30626f  e8 24 bf 08 00                 call   0x392198
306274  0f 28 d6                       movaps xmm2,xmm6
306277  48 8d 8d 48 0c 00 00           lea    rcx,[rbp+0xc48]
30627e  f3 0f 58 95 ec 01 00 00        addss  xmm2,DWORD PTR [rbp+0x1ec]
306286  41 0f 28 c8                    movaps xmm1,xmm8
30628a  48 8b f8                       mov    rdi,rax
30628d  f3 0f 58 8d e8 01 00 00        addss  xmm1,DWORD PTR [rbp+0x1e8]
306295  e8 a6 60 fc ff                 call   0x2cc340
30629a  f3 0f 10 05 d6 ce f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8ced6]        # 0x293178 ; f32=4
3062a2  48 8d 95 e8 01 00 00           lea    rdx,[rbp+0x1e8]
3062a9  4c 8b c0                       mov    r8,rax
3062ac  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
3062b1  41 b9 00 00 00 8c              mov    r9d,0x8c000000
3062b7  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3062bd  48 8b cf                       mov    rcx,rdi
3062c0  e8 7f af 09 00                 call   0x3a1244
3062c5  f3 0f 58 b5 ec 01 00 00        addss  xmm6,DWORD PTR [rbp+0x1ec]
3062cd  f3 44 0f 58 85 e8 01 00 00     addss  xmm8,DWORD PTR [rbp+0x1e8]
3062d6  48 8d 8d 50 0c 00 00           lea    rcx,[rbp+0xc50]
3062dd  0f 28 d6                       movaps xmm2,xmm6
3062e0  41 0f 28 c8                    movaps xmm1,xmm8
3062e4  e8 57 60 fc ff                 call   0x2cc340
3062e9  f3 0f 10 05 87 ce f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8ce87]        # 0x293178 ; f32=4
3062f1  48 8d 95 e8 01 00 00           lea    rdx,[rbp+0x1e8]
3062f8  f3 44 0f 11 7c 24 30           movss  DWORD PTR [rsp+0x30],xmm15
3062ff  4c 8b c0                       mov    r8,rax
306302  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
306307  41 b9 ff ff ff 24              mov    r9d,0x24ffffff
30630d  48 8b cf                       mov    rcx,rdi
306310  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
306316  e8 2d ae 09 00                 call   0x3a1148
30631b  f3 0f 10 0d 2d 6f f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff86f2d]        # 0x28d250 ; f32=0.5
306323  48 8d 8d 58 0c 00 00           lea    rcx,[rbp+0xc58]
30632a  f3 0f 10 85 e8 01 00 00        movss  xmm0,DWORD PTR [rbp+0x1e8]
306332  0f 28 f7                       movaps xmm6,xmm7
306335  f3 0f 5c bd 88 03 00 00        subss  xmm7,DWORD PTR [rbp+0x388]
30633d  f3 0f 5c b5 b8 03 00 00        subss  xmm6,DWORD PTR [rbp+0x3b8]
306345  f3 0f 10 95 ec 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1ec]
30634d  f3 41 0f 58 c6                 addss  xmm0,xmm14
306352  f3 41 0f 58 d6                 addss  xmm2,xmm14
306357  f3 0f 59 f9                    mulss  xmm7,xmm1
30635b  f3 0f 59 f1                    mulss  xmm6,xmm1
30635f  f3 0f 58 f8                    addss  xmm7,xmm0
306363  f3 0f 58 f0                    addss  xmm6,xmm0
306367  0f 28 cf                       movaps xmm1,xmm7
30636a  e8 d1 5f fc ff                 call   0x2cc340
30636f  48 8b d0                       mov    rdx,rax
306372  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
306377  4c 8b cb                       mov    r9,rbx
30637a  41 b8 96 be 9e f0              mov    r8d,0xf09ebe96
306380  48 8b cf                       mov    rcx,rdi
306383  e8 34 ce 09 00                 call   0x3a31bc
306388  f3 0f 10 95 ec 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1ec]
306390  48 8d 8d 60 0c 00 00           lea    rcx,[rbp+0xc60]
306397  f3 41 0f 58 d6                 addss  xmm2,xmm14
30639c  0f 28 ce                       movaps xmm1,xmm6
30639f  f3 0f 58 95 8c 03 00 00        addss  xmm2,DWORD PTR [rbp+0x38c]
3063a7  f3 0f 58 15 85 cd f8 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff8cd85]        # 0x293134 ; f32=2
3063af  e8 8c 5f fc ff                 call   0x2cc340
3063b4  48 8d 4d 58                    lea    rcx,[rbp+0x58]
3063b8  e9 e2 02 00 00                 jmp    0x30669f
3063bd  83 bd a0 02 00 00 56           cmp    DWORD PTR [rbp+0x2a0],0x56
3063c4  0f 85 f6 02 00 00              jne    0x3066c0
3063ca  f3 0f 10 85 68 02 00 00        movss  xmm0,DWORD PTR [rbp+0x268]
3063d2  f3 0f 10 8d 6c 02 00 00        movss  xmm1,DWORD PTR [rbp+0x26c]
3063da  f3 0f 5c 8d 14 02 00 00        subss  xmm1,DWORD PTR [rbp+0x214]
3063e2  f3 0f 5c 85 10 02 00 00        subss  xmm0,DWORD PTR [rbp+0x210]
3063ea  f3 0f 59 ff                    mulss  xmm7,xmm7
3063ee  f3 0f 59 c9                    mulss  xmm1,xmm1
3063f2  f3 0f 59 c0                    mulss  xmm0,xmm0
3063f6  f3 0f 58 c8                    addss  xmm1,xmm0
3063fa  0f 2f f9                       comiss xmm7,xmm1
3063fd  0f 82 bd 02 00 00              jb     0x3066c0
306403  48 8d 95 b5 14 00 00           lea    rdx,[rbp+0x14b5]
30640a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30640f  e8 00 a6 fe ff                 call   0x2f0a14 ; STRING getter=0x2f0a14 Tool Cupboard
306414  48 8b c8                       mov    rcx,rax
306417  e8 6c 6d fd ff                 call   0x2dd188
30641c  f3 0f 10 35 3c ce f8 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff8ce3c]        # 0x293260 ; f32=-1
306424  48 8d 8d c0 03 00 00           lea    rcx,[rbp+0x3c0]
30642b  45 33 c9                       xor    r9d,r9d
30642e  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
306434  45 33 c0                       xor    r8d,r8d
306437  48 8b d0                       mov    rdx,rax
30643a  48 8b d8                       mov    rbx,rax
30643d  e8 5a 93 08 00                 call   0x38f79c
306442  48 8d 4d 38                    lea    rcx,[rbp+0x38]
306446  e8 a1 73 fc ff                 call   0x2cd7ec
30644b  48 8b d0                       mov    rdx,rax
30644e  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
306454  45 33 c9                       xor    r9d,r9d
306457  48 8d 8d 08 04 00 00           lea    rcx,[rbp+0x408]
30645e  45 33 c0                       xor    r8d,r8d
306461  e8 36 93 08 00                 call   0x38f79c
306466  f3 0f 10 95 c4 03 00 00        movss  xmm2,DWORD PTR [rbp+0x3c4]
30646e  48 8d 8d 30 02 00 00           lea    rcx,[rbp+0x230]
306475  f3 0f 10 8d c0 03 00 00        movss  xmm1,DWORD PTR [rbp+0x3c0]
30647d  f3 0f 5f 8d 08 04 00 00        maxss  xmm1,DWORD PTR [rbp+0x408]
306485  f3 44 0f 10 05 a6 cc f8 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff8cca6]        # 0x293134 ; f32=2
30648e  f3 41 0f 58 d0                 addss  xmm2,xmm8
306493  f3 41 0f 58 cd                 addss  xmm1,xmm13
306498  f3 0f 58 95 0c 04 00 00        addss  xmm2,DWORD PTR [rbp+0x40c]
3064a0  f3 41 0f 58 d5                 addss  xmm2,xmm13
3064a5  e8 96 5e fc ff                 call   0x2cc340
3064aa  e8 41 a5 fd ff                 call   0x2e09f0
3064af  66 0f 6e f0                    movd   xmm6,eax
3064b3  0f 5b f6                       cvtdq2ps xmm6,xmm6
3064b6  e8 35 a6 fd ff                 call   0x2e0af0
3064bb  48 8d 8d 80 03 00 00           lea    rcx,[rbp+0x380]
3064c2  66 0f 6e c8                    movd   xmm1,eax
3064c6  0f 28 d6                       movaps xmm2,xmm6
3064c9  0f 5b c9                       cvtdq2ps xmm1,xmm1
3064cc  e8 6f 5e fc ff                 call   0x2cc340
3064d1  f3 0f 10 05 cf cc f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8cccf]        # 0x2931a8 ; f32=12
3064d9  48 8d 8d d8 01 00 00           lea    rcx,[rbp+0x1d8]
3064e0  f3 0f 10 95 6c 02 00 00        movss  xmm2,DWORD PTR [rbp+0x26c]
3064e8  f3 0f 10 8d 68 02 00 00        movss  xmm1,DWORD PTR [rbp+0x268]
3064f0  f3 0f 58 d0                    addss  xmm2,xmm0
3064f4  f3 0f 58 c8                    addss  xmm1,xmm0
3064f8  e8 43 5e fc ff                 call   0x2cc340
3064fd  f3 0f 10 bd 30 02 00 00        movss  xmm7,DWORD PTR [rbp+0x230]
306505  f3 0f 10 95 d8 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1d8]
30650d  0f 28 c7                       movaps xmm0,xmm7
306510  f3 0f 58 c2                    addss  xmm0,xmm2
306514  0f 2f 85 80 03 00 00           comiss xmm0,DWORD PTR [rbp+0x380]
30651b  76 14                          jbe    0x306531
30651d  f3 0f 10 95 80 03 00 00        movss  xmm2,DWORD PTR [rbp+0x380]
306525  f3 0f 5c d7                    subss  xmm2,xmm7
306529  f3 0f 11 95 d8 01 00 00        movss  DWORD PTR [rbp+0x1d8],xmm2
306531  f3 0f 10 b5 34 02 00 00        movss  xmm6,DWORD PTR [rbp+0x234]
306539  f3 0f 10 8d dc 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1dc]
306541  0f 28 c6                       movaps xmm0,xmm6
306544  f3 0f 58 c1                    addss  xmm0,xmm1
306548  0f 2f 85 84 03 00 00           comiss xmm0,DWORD PTR [rbp+0x384]
30654f  76 14                          jbe    0x306565
306551  f3 0f 10 8d 84 03 00 00        movss  xmm1,DWORD PTR [rbp+0x384]
306559  f3 0f 5c ce                    subss  xmm1,xmm6
30655d  f3 0f 11 8d dc 01 00 00        movss  DWORD PTR [rbp+0x1dc],xmm1
306565  44 0f 2f da                    comiss xmm11,xmm2
306569  76 06                          jbe    0x306571
30656b  89 bd d8 01 00 00              mov    DWORD PTR [rbp+0x1d8],edi
306571  44 0f 2f d9                    comiss xmm11,xmm1
306575  76 06                          jbe    0x30657d
306577  89 bd dc 01 00 00              mov    DWORD PTR [rbp+0x1dc],edi
30657d  e8 16 bc 08 00                 call   0x392198
306582  0f 28 d6                       movaps xmm2,xmm6
306585  48 8d 8d 68 0c 00 00           lea    rcx,[rbp+0xc68]
30658c  f3 0f 58 95 dc 01 00 00        addss  xmm2,DWORD PTR [rbp+0x1dc]
306594  0f 28 cf                       movaps xmm1,xmm7
306597  48 8b f8                       mov    rdi,rax
30659a  f3 0f 58 8d d8 01 00 00        addss  xmm1,DWORD PTR [rbp+0x1d8]
3065a2  e8 99 5d fc ff                 call   0x2cc340
3065a7  f3 0f 10 05 c9 cb f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8cbc9]        # 0x293178 ; f32=4
3065af  48 8d 95 d8 01 00 00           lea    rdx,[rbp+0x1d8]
3065b6  45 33 ff                       xor    r15d,r15d
3065b9  4c 8b c0                       mov    r8,rax
3065bc  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
3065c1  41 b9 00 00 00 8c              mov    r9d,0x8c000000
3065c7  48 8b cf                       mov    rcx,rdi
3065ca  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
3065d0  e8 6f ac 09 00                 call   0x3a1244
3065d5  f3 0f 58 b5 dc 01 00 00        addss  xmm6,DWORD PTR [rbp+0x1dc]
3065dd  f3 0f 58 bd d8 01 00 00        addss  xmm7,DWORD PTR [rbp+0x1d8]
3065e5  48 8d 8d 70 0c 00 00           lea    rcx,[rbp+0xc70]
3065ec  0f 28 d6                       movaps xmm2,xmm6
3065ef  0f 28 cf                       movaps xmm1,xmm7
3065f2  e8 49 5d fc ff                 call   0x2cc340
3065f7  f3 0f 10 05 79 cb f8 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff8cb79]        # 0x293178 ; f32=4
3065ff  48 8d 95 d8 01 00 00           lea    rdx,[rbp+0x1d8]
306606  f3 44 0f 11 7c 24 30           movss  DWORD PTR [rsp+0x30],xmm15
30660d  4c 8b c0                       mov    r8,rax
306610  44 89 7c 24 28                 mov    DWORD PTR [rsp+0x28],r15d
306615  41 b9 ff ff ff 24              mov    r9d,0x24ffffff
30661b  48 8b cf                       mov    rcx,rdi
30661e  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
306624  e8 1f ab 09 00                 call   0x3a1148
306629  f3 0f 10 95 dc 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1dc]
306631  48 8d 8d 78 0c 00 00           lea    rcx,[rbp+0xc78]
306638  f3 0f 10 8d d8 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d8]
306640  f3 41 0f 58 d6                 addss  xmm2,xmm14
306645  f3 41 0f 58 ce                 addss  xmm1,xmm14
30664a  e8 f1 5c fc ff                 call   0x2cc340
30664f  48 8b d0                       mov    rdx,rax
306652  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
306657  4c 8b cb                       mov    r9,rbx
30665a  41 b8 96 be 9e f0              mov    r8d,0xf09ebe96
306660  48 8b cf                       mov    rcx,rdi
306663  e8 54 cb 09 00                 call   0x3a31bc
306668  f3 0f 10 95 dc 01 00 00        movss  xmm2,DWORD PTR [rbp+0x1dc]
306670  48 8d 8d 80 0c 00 00           lea    rcx,[rbp+0xc80]
306677  f3 0f 10 8d d8 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d8]
30667f  f3 41 0f 58 d6                 addss  xmm2,xmm14
306684  f3 41 0f 58 ce                 addss  xmm1,xmm14
306689  f3 0f 58 95 c4 03 00 00        addss  xmm2,DWORD PTR [rbp+0x3c4]
306691  f3 41 0f 58 d0                 addss  xmm2,xmm8
306696  e8 a5 5c fc ff                 call   0x2cc340
30669b  48 8d 4d 38                    lea    rcx,[rbp+0x38]
30669f  48 8b d8                       mov    rbx,rax
3066a2  e8 45 71 fc ff                 call   0x2cd7ec
3066a7  4c 8b c8                       mov    r9,rax
3066aa  4c 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],r15
3066af  41 b8 ff ff ff eb              mov    r8d,0xebffffff
3066b5  48 8b d3                       mov    rdx,rbx
3066b8  48 8b cf                       mov    rcx,rdi
3066bb  e8 fc ca 09 00                 call   0x3a31bc
3066c0  48 8d 8d 40 10 00 00           lea    rcx,[rbp+0x1040]
3066c7  e8 28 5e fc ff                 call   0x2cc4f4
3066cc  48 8d 8d e0 10 00 00           lea    rcx,[rbp+0x10e0]
3066d3  e8 1c 5e fc ff                 call   0x2cc4f4
3066d8  48 8d 95 10 12 00 00           lea    rdx,[rbp+0x1210]
3066df  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3066e4  e8 4f a3 fe ff                 call   0x2f0a38
3066e9  48 8b c8                       mov    rcx,rax
3066ec  e8 7b 9d 01 00                 call   0x32046c
3066f1  48 8b d0                       mov    rdx,rax
3066f4  48 8d 4d 80                    lea    rcx,[rbp-0x80]
3066f8  e8 13 3f fe ff                 call   0x2ea610
3066fd  33 ff                          xor    edi,edi
3066ff  84 c0                          test   al,al
306701  74 4f                          je     0x306752
306703  40 38 3d ee da 0d 00           cmp    BYTE PTR [rip+0xddaee],dil        # 0x3e41f8 ; CONFIG Bools.SilentLoot value(+0x48)
30670a  74 46                          je     0x306752
30670c  8b 44 24 50                    mov    eax,DWORD PTR [rsp+0x50]
306710  44 8d 4f 02                    lea    r9d,[rdi+0x2]
306714  f2 0f 10 44 24 48              movsd  xmm0,QWORD PTR [rsp+0x48]
30671a  4c 8d 85 20 02 00 00           lea    r8,[rbp+0x220]
306721  48 8b 8d 78 02 00 00           mov    rcx,QWORD PTR [rbp+0x278]
306728  49 8b d4                       mov    rdx,r12
30672b  89 85 28 02 00 00              mov    DWORD PTR [rbp+0x228],eax
306731  8a 85 10 01 00 00              mov    al,BYTE PTR [rbp+0x110]
306737  88 44 24 28                    mov    BYTE PTR [rsp+0x28],al
30673b  8a 85 11 01 00 00              mov    al,BYTE PTR [rbp+0x111]
306741  88 44 24 20                    mov    BYTE PTR [rsp+0x20],al
306745  f2 0f 11 85 20 02 00 00        movsd  QWORD PTR [rbp+0x220],xmm0
30674d  e8 d6 11 01 00                 call   0x317928
306752  40 38 7d c4                    cmp    BYTE PTR [rbp-0x3c],dil
306756  0f 84 cf 0e 00 00              je     0x30762b
30675c  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
306761  e8 72 23 fd ff                 call   0x2d8ad8
306766  48 85 c0                       test   rax,rax
306769  75 11                          jne    0x30677c
30676b  48 8d 95 80 02 00 00           lea    rdx,[rbp+0x280]
306772  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
306777  e8 a8 e4 fc ff                 call   0x2d4c24
30677c  66 0f 6e 45 a0                 movd   xmm0,DWORD PTR [rbp-0x60]
306781  0f 5b c0                       cvtdq2ps xmm0,xmm0
306784  44 0f 2f c8                    comiss xmm9,xmm0
306788  0f 87 9d 0e 00 00              ja     0x30762b
30678e  40 38 bd d8 29 00 00           cmp    BYTE PTR [rbp+0x29d8],dil
306795  0f 84 90 0e 00 00              je     0x30762b
30679b  48 8b 8d d0 01 00 00           mov    rcx,QWORD PTR [rbp+0x1d0]
3067a2  e8 89 09 01 00                 call   0x317130
3067a7  84 c0                          test   al,al
3067a9  0f 84 7c 0e 00 00              je     0x30762b
3067af  0f 57 ff                       xorps  xmm7,xmm7
3067b2  40 38 7d c6                    cmp    BYTE PTR [rbp-0x3a],dil
3067b6  74 57                          je     0x30680f
3067b8  48 8d 4d a8                    lea    rcx,[rbp-0x58]
3067bc  e8 4b 90 fe ff                 call   0x2ef80c
3067c1  f3 0f 10 55 d4                 movss  xmm2,DWORD PTR [rbp-0x2c]
3067c6  48 8d 8d 88 08 00 00           lea    rcx,[rbp+0x888]
3067cd  f3 0f 10 4d d0                 movss  xmm1,DWORD PTR [rbp-0x30]
3067d2  8b d8                          mov    ebx,eax
3067d4  e8 67 5b fc ff                 call   0x2cc340
3067d9  f3 0f 10 55 cc                 movss  xmm2,DWORD PTR [rbp-0x34]
3067de  48 8d 8d 90 08 00 00           lea    rcx,[rbp+0x890]
3067e5  f3 0f 10 4d c8                 movss  xmm1,DWORD PTR [rbp-0x38]
3067ea  e8 51 5b fc ff                 call   0x2cc340
3067ef  44 8b cb                       mov    r9d,ebx
3067f2  f3 44 0f 11 7c 24 20           movss  DWORD PTR [rsp+0x20],xmm15
3067f9  4c 8d 85 88 08 00 00           lea    r8,[rbp+0x888]
306800  49 8b ce                       mov    rcx,r14
306803  48 8d 95 90 08 00 00           lea    rdx,[rbp+0x890]
30680a  e8 4d 5a 05 00                 call   0x35c25c
30680f  f3 0f 10 75 c0                 movss  xmm6,DWORD PTR [rbp-0x40]
306814  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
306819  48 8d 8d 00 11 00 00           lea    rcx,[rbp+0x1100]
306820  f3 41 0f 59 f4                 mulss  xmm6,xmm12
306825  e8 6a d9 fc ff                 call   0x2d4194
30682a  48 8d 95 ea 03 00 00           lea    rdx,[rbp+0x3ea]
306831  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306836  e8 55 a1 fe ff                 call   0x2f0990 ; STRING getter=0x2f0990 m
30683b  48 8b c8                       mov    rcx,rax
30683e  e8 21 1c fd ff                 call   0x2d8464
306843  48 8b d0                       mov    rdx,rax
306846  48 8d 8d 88 26 00 00           lea    rcx,[rbp+0x2688]
30684d  e8 7a 5a fc ff                 call   0x2cc2cc
306852  8b d6                          mov    edx,esi
306854  48 8d 8d 68 26 00 00           lea    rcx,[rbp+0x2668]
30685b  48 8b d8                       mov    rbx,rax
30685e  e8 ad 2c fd ff                 call   0x2d9510
306863  48 8b d0                       mov    rdx,rax
306866  48 8d 8d 40 11 00 00           lea    rcx,[rbp+0x1140]
30686d  4c 8b c3                       mov    r8,rbx
306870  e8 cb 86 fc ff                 call   0x2cef40
306875  48 8d 8d 68 26 00 00           lea    rcx,[rbp+0x2668]
30687c  e8 73 5c fc ff                 call   0x2cc4f4
306881  48 8d 8d 88 26 00 00           lea    rcx,[rbp+0x2688]
306888  e8 67 5c fc ff                 call   0x2cc4f4
30688d  8b 95 a8 00 00 00              mov    edx,DWORD PTR [rbp+0xa8]
306893  48 8d 8d c0 10 00 00           lea    rcx,[rbp+0x10c0]
30689a  e8 71 2c fd ff                 call   0x2d9510
30689f  8b 95 ac 00 00 00              mov    edx,DWORD PTR [rbp+0xac]
3068a5  48 8d 8d a0 10 00 00           lea    rcx,[rbp+0x10a0]
3068ac  e8 5f 2c fd ff                 call   0x2d9510
3068b1  48 8d 95 e8 03 00 00           lea    rdx,[rbp+0x3e8]
3068b8  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3068bd  e8 1e 99 fe ff                 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
3068c2  48 8b c8                       mov    rcx,rax
3068c5  e8 9a 1b fd ff                 call   0x2d8464
3068ca  48 8d 95 b2 03 00 00           lea    rdx,[rbp+0x3b2]
3068d1  48 8b f8                       mov    rdi,rax
3068d4  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3068d9  e8 fe a1 fe ff                 call   0x2f0adc ; STRING getter=0x2f0adc /
3068de  48 8b c8                       mov    rcx,rax
3068e1  e8 7e 1b fd ff                 call   0x2d8464
3068e6  48 8d 95 da 03 00 00           lea    rdx,[rbp+0x3da]
3068ed  48 8b d8                       mov    rbx,rax
3068f0  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3068f5  e8 fe 97 fe ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
3068fa  48 8b c8                       mov    rcx,rax
3068fd  e8 62 1b fd ff                 call   0x2d8464
306902  48 8b d0                       mov    rdx,rax
306905  4c 8d 85 c0 10 00 00           lea    r8,[rbp+0x10c0]
30690c  48 8d 8d e8 26 00 00           lea    rcx,[rbp+0x26e8]
306913  e8 fc 3d fe ff                 call   0x2ea714
306918  48 8b d0                       mov    rdx,rax
30691b  48 8d 8d c8 26 00 00           lea    rcx,[rbp+0x26c8]
306922  4c 8b c3                       mov    r8,rbx
306925  e8 0e 44 fc ff                 call   0x2cad38
30692a  48 8b d0                       mov    rdx,rax
30692d  4c 8d 85 a0 10 00 00           lea    r8,[rbp+0x10a0]
306934  48 8d 8d a8 26 00 00           lea    rcx,[rbp+0x26a8]
30693b  e8 24 86 fc ff                 call   0x2cef64
306940  48 8b d0                       mov    rdx,rax
306943  48 8d 8d 80 10 00 00           lea    rcx,[rbp+0x1080]
30694a  4c 8b c7                       mov    r8,rdi
30694d  e8 e6 43 fc ff                 call   0x2cad38
306952  48 8d 8d a8 26 00 00           lea    rcx,[rbp+0x26a8]
306959  e8 96 5b fc ff                 call   0x2cc4f4
30695e  48 8d 8d c8 26 00 00           lea    rcx,[rbp+0x26c8]
306965  e8 8a 5b fc ff                 call   0x2cc4f4
30696a  48 8d 8d e8 26 00 00           lea    rcx,[rbp+0x26e8]
306971  e8 7e 5b fc ff                 call   0x2cc4f4
306976  8a 45 a4                       mov    al,BYTE PTR [rbp-0x5c]
306979  33 db                          xor    ebx,ebx
30697b  f3 44 0f 10 8d d4 01 00 00     movss  xmm9,DWORD PTR [rbp+0x1d4]
306984  f3 0f 10 05 4c 25 f4 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff4254c]        # 0x248ed8 ; f32=16
30698c  44 0f 10 55 a8                 movups xmm10,XMMWORD PTR [rbp-0x58]
306991  84 c0                          test   al,al
306993  74 2e                          je     0x3069c3
306995  f3 44 0f 10 45 c0              movss  xmm8,DWORD PTR [rbp-0x40]
30699b  f3 0f 10 0d 59 71 f8 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff87159]        # 0x28dafc ; f32=1.5
3069a3  44 0f 2f c1                    comiss xmm8,xmm1
3069a7  76 1a                          jbe    0x3069c3
3069a9  f3 44 0f 5c c1                 subss  xmm8,xmm1
3069ae  f3 44 0f 59 05 ed c6 f8 ff     mulss  xmm8,DWORD PTR [rip+0xfffffffffff8c6ed]        # 0x2930a4 ; f32=0.15
3069b7  f3 45 0f 58 c7                 addss  xmm8,xmm15
3069bc  f3 44 0f 59 c0                 mulss  xmm8,xmm0
3069c1  eb 04                          jmp    0x3069c7
3069c3  44 0f 28 c0                    movaps xmm8,xmm0
3069c7  84 c0                          test   al,al
3069c9  0f 84 a6 00 00 00              je     0x306a75
3069cf  38 9d 11 01 00 00              cmp    BYTE PTR [rbp+0x111],bl
3069d5  74 44                          je     0x306a1b
3069d7  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
3069df  48 8d 8d 88 0c 00 00           lea    rcx,[rbp+0xc88]
3069e6  41 0f 28 d1                    movaps xmm2,xmm9
3069ea  e8 51 59 fc ff                 call   0x2cc340
3069ef  48 8d 95 1a 0b 00 00           lea    rdx,[rbp+0xb1a]
3069f6  48 8b d8                       mov    rbx,rax
3069f9  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3069fe  e8 15 a1 fe ff                 call   0x2f0b18 ; STRING getter=0x2f0b18 OnFire
306a03  48 8b c8                       mov    rcx,rax
306a06  e8 e9 72 fc ff                 call   0x2cdcf4
306a0b  48 8b c8                       mov    rcx,rax
306a0e  0f 28 d6                       movaps xmm2,xmm6
306a11  48 8b d3                       mov    rdx,rbx
306a14  e8 b7 5e fc ff                 call   0x2cc8d0
306a19  eb 53                          jmp    0x306a6e
306a1b  8b 95 a0 02 00 00              mov    edx,DWORD PTR [rbp+0x2a0]
306a21  48 8d 8d 60 10 00 00           lea    rcx,[rbp+0x1060]
306a28  e8 e3 2a fd ff                 call   0x2d9510
306a2d  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306a35  48 8d 8d 90 0c 00 00           lea    rcx,[rbp+0xc90]
306a3c  41 0f 28 d1                    movaps xmm2,xmm9
306a40  e8 fb 58 fc ff                 call   0x2cc340
306a45  48 8d 8d 60 10 00 00           lea    rcx,[rbp+0x1060]
306a4c  48 8b d8                       mov    rbx,rax
306a4f  e8 98 6d fc ff                 call   0x2cd7ec
306a54  48 8b c8                       mov    rcx,rax
306a57  0f 28 d6                       movaps xmm2,xmm6
306a5a  48 8b d3                       mov    rdx,rbx
306a5d  e8 6e 5e fc ff                 call   0x2cc8d0
306a62  48 8d 8d 60 10 00 00           lea    rcx,[rbp+0x1060]
306a69  e8 86 5a fc ff                 call   0x2cc4f4
306a6e  33 db                          xor    ebx,ebx
306a70  8d 7b 01                       lea    edi,[rbx+0x1]
306a73  eb 4c                          jmp    0x306ac1
306a75  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306a7d  48 8d 8d 98 0c 00 00           lea    rcx,[rbp+0xc98]
306a84  41 0f 28 d1                    movaps xmm2,xmm9
306a88  e8 b3 58 fc ff                 call   0x2cc340
306a8d  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306a91  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306a98  bf 01 00 00 00                 mov    edi,0x1
306a9d  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306aa6  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306aaa  4c 8d 85 00 11 00 00           lea    r8,[rbp+0x1100]
306ab1  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306ab6  4c 8b c8                       mov    r9,rax
306ab9  49 8b ce                       mov    rcx,r14
306abc  e8 9b a8 05 00                 call   0x36135c
306ac1  48 8d 4d 78                    lea    rcx,[rbp+0x78]
306ac5  e8 0e 20 fd ff                 call   0x2d8ad8
306aca  48 85 c0                       test   rax,rax
306acd  74 51                          je     0x306b20
306acf  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306ad7  48 8d 8d a0 0c 00 00           lea    rcx,[rbp+0xca0]
306ade  41 0f 28 f8                    movaps xmm7,xmm8
306ae2  f3 41 0f 58 fb                 addss  xmm7,xmm11
306ae7  0f 28 d7                       movaps xmm2,xmm7
306aea  f3 41 0f 58 d1                 addss  xmm2,xmm9
306aef  e8 4c 58 fc ff                 call   0x2cc340
306af4  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306af8  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306aff  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306b03  4c 8d 45 78                    lea    r8,[rbp+0x78]
306b07  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306b0c  4c 8b c8                       mov    r9,rax
306b0f  49 8b ce                       mov    rcx,r14
306b12  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306b1b  e8 3c a8 05 00                 call   0x36135c
306b20  48 8d 4d 58                    lea    rcx,[rbp+0x58]
306b24  e8 af 1f fd ff                 call   0x2d8ad8
306b29  48 85 c0                       test   rax,rax
306b2c  74 4d                          je     0x306b7b
306b2e  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306b36  f3 41 0f 58 f8                 addss  xmm7,xmm8
306b3b  48 8d 8d a8 0c 00 00           lea    rcx,[rbp+0xca8]
306b42  0f 28 d7                       movaps xmm2,xmm7
306b45  f3 41 0f 58 d1                 addss  xmm2,xmm9
306b4a  e8 f1 57 fc ff                 call   0x2cc340
306b4f  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306b53  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306b5a  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306b5e  4c 8d 45 58                    lea    r8,[rbp+0x58]
306b62  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306b67  4c 8b c8                       mov    r9,rax
306b6a  49 8b ce                       mov    rcx,r14
306b6d  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306b76  e8 e1 a7 05 00                 call   0x36135c
306b7b  48 8d 4d d8                    lea    rcx,[rbp-0x28]
306b7f  e8 54 1f fd ff                 call   0x2d8ad8
306b84  48 85 c0                       test   rax,rax
306b87  74 4d                          je     0x306bd6
306b89  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306b91  f3 41 0f 58 f8                 addss  xmm7,xmm8
306b96  48 8d 8d b0 0c 00 00           lea    rcx,[rbp+0xcb0]
306b9d  0f 28 d7                       movaps xmm2,xmm7
306ba0  f3 41 0f 58 d1                 addss  xmm2,xmm9
306ba5  e8 96 57 fc ff                 call   0x2cc340
306baa  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306bae  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306bb5  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306bb9  4c 8d 45 d8                    lea    r8,[rbp-0x28]
306bbd  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306bc2  4c 8b c8                       mov    r9,rax
306bc5  49 8b ce                       mov    rcx,r14
306bc8  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306bd1  e8 86 a7 05 00                 call   0x36135c
306bd6  48 8d 4d f8                    lea    rcx,[rbp-0x8]
306bda  e8 f9 1e fd ff                 call   0x2d8ad8
306bdf  48 85 c0                       test   rax,rax
306be2  74 4d                          je     0x306c31
306be4  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306bec  f3 41 0f 58 f8                 addss  xmm7,xmm8
306bf1  48 8d 8d b8 0c 00 00           lea    rcx,[rbp+0xcb8]
306bf8  0f 28 d7                       movaps xmm2,xmm7
306bfb  f3 41 0f 58 d1                 addss  xmm2,xmm9
306c00  e8 3b 57 fc ff                 call   0x2cc340
306c05  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306c09  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306c10  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306c14  4c 8d 45 f8                    lea    r8,[rbp-0x8]
306c18  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306c1d  4c 8b c8                       mov    r9,rax
306c20  49 8b ce                       mov    rcx,r14
306c23  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306c2c  e8 2b a7 05 00                 call   0x36135c
306c31  48 8d 4d 18                    lea    rcx,[rbp+0x18]
306c35  e8 9e 1e fd ff                 call   0x2d8ad8
306c3a  48 85 c0                       test   rax,rax
306c3d  74 4d                          je     0x306c8c
306c3f  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306c47  f3 41 0f 58 f8                 addss  xmm7,xmm8
306c4c  48 8d 8d c0 0c 00 00           lea    rcx,[rbp+0xcc0]
306c53  0f 28 d7                       movaps xmm2,xmm7
306c56  f3 41 0f 58 d1                 addss  xmm2,xmm9
306c5b  e8 e0 56 fc ff                 call   0x2cc340
306c60  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306c64  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306c6b  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306c6f  4c 8d 45 18                    lea    r8,[rbp+0x18]
306c73  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306c78  4c 8b c8                       mov    r9,rax
306c7b  49 8b ce                       mov    rcx,r14
306c7e  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306c87  e8 d0 a6 05 00                 call   0x36135c
306c8c  48 8d 95 54 0f 00 00           lea    rdx,[rbp+0xf54]
306c93  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306c98  e8 6f 9f fe ff                 call   0x2f0c0c
306c9d  48 8b c8                       mov    rcx,rax
306ca0  e8 9f 97 01 00                 call   0x320444
306ca5  48 8b d0                       mov    rdx,rax
306ca8  48 8d 4d 80                    lea    rcx,[rbp-0x80]
306cac  e8 5f 39 fe ff                 call   0x2ea610
306cb1  84 c0                          test   al,al
306cb3  75 70                          jne    0x306d25
306cb5  b8 ff 00 00 00                 mov    eax,0xff
306cba  48 8d 8d 58 1f 00 00           lea    rcx,[rbp+0x1f58]
306cc1  44 8b c8                       mov    r9d,eax
306cc4  89 44 24 20                    mov    DWORD PTR [rsp+0x20],eax
306cc8  44 8b c0                       mov    r8d,eax
306ccb  8b d0                          mov    edx,eax
306ccd  e8 46 46 fd ff                 call   0x2db318
306cd2  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306cda  f3 41 0f 58 f8                 addss  xmm7,xmm8
306cdf  48 8d 8d c8 0c 00 00           lea    rcx,[rbp+0xcc8]
306ce6  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
306cea  0f 28 d7                       movaps xmm2,xmm7
306ced  f3 41 0f 58 d1                 addss  xmm2,xmm9
306cf2  e8 49 56 fc ff                 call   0x2cc340
306cf7  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306cfb  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306d02  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306d06  4c 8d 85 40 11 00 00           lea    r8,[rbp+0x1140]
306d0d  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306d12  4c 8b c8                       mov    r9,rax
306d15  49 8b ce                       mov    rcx,r14
306d18  66 0f 7f b5 00 02 00 00        movdqa XMMWORD PTR [rbp+0x200],xmm6
306d20  e8 37 a6 05 00                 call   0x36135c
306d25  8b 95 98 00 00 00              mov    edx,DWORD PTR [rbp+0x98]
306d2b  85 d2                          test   edx,edx
306d2d  0f 8e 8a 00 00 00              jle    0x306dbd
306d33  66 0f 6e 95 9c 00 00 00        movd   xmm2,DWORD PTR [rbp+0x9c]
306d3b  41 0f 28 c0                    movaps xmm0,xmm8
306d3f  f3 0f 59 05 8d c3 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8c38d]        # 0x2930d4 ; f32=0.8
306d47  41 0f 28 c8                    movaps xmm1,xmm8
306d4b  f3 0f 59 0d 65 c3 f8 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff8c365]        # 0x2930b8 ; f32=0.38
306d53  f3 0f 58 f8                    addss  xmm7,xmm0
306d57  66 0f 6e da                    movd   xmm3,edx
306d5b  41 0f 28 c0                    movaps xmm0,xmm8
306d5f  f3 0f 59 05 d9 c3 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8c3d9]        # 0x293140 ; f32=2.31
306d67  f3 0f 2c c9                    cvttss2si ecx,xmm1
306d6b  f3 0f 2c c0                    cvttss2si eax,xmm0
306d6f  89 4c 24 30                    mov    DWORD PTR [rsp+0x30],ecx
306d73  49 8b ce                       mov    rcx,r14
306d76  0f 28 c7                       movaps xmm0,xmm7
306d79  41 0f 28 c8                    movaps xmm1,xmm8
306d7d  f3 0f 58 85 d4 01 00 00        addss  xmm0,DWORD PTR [rbp+0x1d4]
306d85  f3 0f 59 0d 4f c3 f8 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff8c34f]        # 0x2930dc ; f32=1.04
306d8d  89 44 24 28                    mov    DWORD PTR [rsp+0x28],eax
306d91  0f 5b d2                       cvtdq2ps xmm2,xmm2
306d94  f3 44 0f 2c c0                 cvttss2si r8d,xmm0
306d99  f3 0f 10 85 d0 01 00 00        movss  xmm0,DWORD PTR [rbp+0x1d0]
306da1  f3 0f 5c c1                    subss  xmm0,xmm1
306da5  f3 0f 11 54 24 20              movss  DWORD PTR [rsp+0x20],xmm2
306dab  0f 5b db                       cvtdq2ps xmm3,xmm3
306dae  f3 0f 2c d0                    cvttss2si edx,xmm0
306db2  e8 cd 48 05 00                 call   0x35b684
306db7  8b 95 98 00 00 00              mov    edx,DWORD PTR [rbp+0x98]
306dbd  44 8b 85 a0 00 00 00           mov    r8d,DWORD PTR [rbp+0xa0]
306dc4  45 85 c0                       test   r8d,r8d
306dc7  0f 8e 99 00 00 00              jle    0x306e66
306dcd  41 0f 28 d0                    movaps xmm2,xmm8
306dd1  41 0f 28 c8                    movaps xmm1,xmm8
306dd5  f3 0f 59 15 ff c2 f8 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff8c2ff]        # 0x2930dc ; f32=1.04
306ddd  41 0f 28 d8                    movaps xmm3,xmm8
306de1  f3 0f 59 0d 57 c3 f8 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff8c357]        # 0x293140 ; f32=2.31
306de9  f3 0f 59 1d c7 c2 f8 ff        mulss  xmm3,DWORD PTR [rip+0xfffffffffff8c2c7]        # 0x2930b8 ; f32=0.38
306df1  85 d2                          test   edx,edx
306df3  7f 10                          jg     0x306e05
306df5  41 0f 28 c0                    movaps xmm0,xmm8
306df9  f3 0f 59 05 c3 c2 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8c2c3]        # 0x2930c4 ; f32=0.54
306e01  f3 0f 58 f8                    addss  xmm7,xmm0
306e05  66 0f 6e a5 a4 00 00 00        movd   xmm4,DWORD PTR [rbp+0xa4]
306e0d  41 0f 28 c0                    movaps xmm0,xmm8
306e11  f3 0f 59 05 ab c2 f8 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff8c2ab]        # 0x2930c4 ; f32=0.54
306e19  f3 0f 2c c9                    cvttss2si ecx,xmm1
306e1d  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306e25  f3 0f 58 f8                    addss  xmm7,xmm0
306e29  f3 0f 2c c3                    cvttss2si eax,xmm3
306e2d  66 41 0f 6e d8                 movd   xmm3,r8d
306e32  f3 0f 5c ca                    subss  xmm1,xmm2
306e36  89 44 24 30                    mov    DWORD PTR [rsp+0x30],eax
306e3a  0f 28 c7                       movaps xmm0,xmm7
306e3d  f3 0f 58 85 d4 01 00 00        addss  xmm0,DWORD PTR [rbp+0x1d4]
306e45  89 4c 24 28                    mov    DWORD PTR [rsp+0x28],ecx
306e49  49 8b ce                       mov    rcx,r14
306e4c  0f 5b e4                       cvtdq2ps xmm4,xmm4
306e4f  f3 44 0f 2c c0                 cvttss2si r8d,xmm0
306e54  f3 0f 2c d1                    cvttss2si edx,xmm1
306e58  0f 5b db                       cvtdq2ps xmm3,xmm3
306e5b  f3 0f 11 64 24 20              movss  DWORD PTR [rsp+0x20],xmm4
306e61  e8 1e 48 05 00                 call   0x35b684
306e66  39 9d a8 00 00 00              cmp    DWORD PTR [rbp+0xa8],ebx
306e6c  7e 50                          jle    0x306ebe
306e6e  f3 0f 10 8d d0 01 00 00        movss  xmm1,DWORD PTR [rbp+0x1d0]
306e76  f3 41 0f 58 f8                 addss  xmm7,xmm8
306e7b  48 8d 8d d0 0c 00 00           lea    rcx,[rbp+0xcd0]
306e82  f3 41 0f 58 f9                 addss  xmm7,xmm9
306e87  0f 28 d7                       movaps xmm2,xmm7
306e8a  e8 b1 54 fc ff                 call   0x2cc340
306e8f  49 8b 56 10                    mov    rdx,QWORD PTR [r14+0x10]
306e93  48 8d 8d 00 02 00 00           lea    rcx,[rbp+0x200]
306e9a  89 7c 24 28                    mov    DWORD PTR [rsp+0x28],edi
306e9e  4c 8d 85 80 10 00 00           lea    r8,[rbp+0x1080]
306ea5  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
306eaa  4c 8b c8                       mov    r9,rax
306ead  49 8b ce                       mov    rcx,r14
306eb0  66 44 0f 7f 95 00 02 00 00     movdqa XMMWORD PTR [rbp+0x200],xmm10
306eb9  e8 9e a4 05 00                 call   0x36135c
306ebe  38 5d b8                       cmp    BYTE PTR [rbp-0x48],bl
306ec1  0f 84 76 06 00 00              je     0x30753d
306ec7  48 8d 95 1c 12 00 00           lea    rdx,[rbp+0x121c]
306ece  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306ed3  e8 b8 9d fe ff                 call   0x2f0c90 ; STRING getter=0x2f0c90 UnityEngine
306ed8  48 8b c8                       mov    rcx,rax
306edb  e8 54 6f fc ff                 call   0x2cde34
306ee0  48 8d 95 d7 0e 00 00           lea    rdx,[rbp+0xed7]
306ee7  48 8b d8                       mov    rbx,rax
306eea  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306eef  e8 6c 9d fe ff                 call   0x2f0c60 ; STRING getter=0x2f0c60 Renderer
306ef4  48 8b c8                       mov    rcx,rax
306ef7  e8 90 2c fe ff                 call   0x2e9b8c
306efc  48 8b c8                       mov    rcx,rax
306eff  48 8b d3                       mov    rdx,rbx
306f02  e8 fd d2 02 00                 call   0x334204
306f07  48 8b c8                       mov    rcx,rax
306f0a  48 8b d0                       mov    rdx,rax
306f0d  e8 f6 3f fc ff                 call   0x2caf08
306f12  33 db                          xor    ebx,ebx
306f14  84 c0                          test   al,al
306f16  0f 84 21 06 00 00              je     0x30753d
306f1c  49 8b cd                       mov    rcx,r13
306f1f  e8 98 e2 00 00                 call   0x3151bc
306f24  48 8b c8                       mov    rcx,rax
306f27  4c 8b e8                       mov    r13,rax
306f2a  e8 d9 3f fc ff                 call   0x2caf08
306f2f  84 c0                          test   al,al
306f31  0f 84 06 06 00 00              je     0x30753d
306f37  41 8b 45 18                    mov    eax,DWORD PTR [r13+0x18]
306f3b  44 8b f3                       mov    r14d,ebx
306f3e  89 85 f4 03 00 00              mov    DWORD PTR [rbp+0x3f4],eax
306f44  85 c0                          test   eax,eax
306f46  0f 8e f1 05 00 00              jle    0x30753d
306f4c  48 8d 95 48 27 00 00           lea    rdx,[rbp+0x2748]
306f53  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306f58  e8 4f 9d fe ff                 call   0x2f0cac ; STRING getter=0x2f0cac PatrolHelicopter
306f5d  48 8b c8                       mov    rcx,rax
306f60  e8 4f 2c fe ff                 call   0x2e9bb4
306f65  48 8b d0                       mov    rdx,rax
306f68  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
306f6f  e8 c4 7f fc ff                 call   0x2cef38
306f74  84 c0                          test   al,al
306f76  0f 85 6f 01 00 00              jne    0x3070eb
306f7c  48 8d 95 76 11 00 00           lea    rdx,[rbp+0x1176]
306f83  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306f88  e8 4f 9d fe ff                 call   0x2f0cdc ; STRING getter=0x2f0cdc Minicopter
306f8d  48 8b c8                       mov    rcx,rax
306f90  e8 bf 2c fe ff                 call   0x2e9c54
306f95  48 8b d0                       mov    rdx,rax
306f98  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
306f9f  e8 94 7f fc ff                 call   0x2cef38
306fa4  84 c0                          test   al,al
306fa6  74 08                          je     0x306fb0
306fa8  44 3b f7                       cmp    r14d,edi
306fab  e9 cf 00 00 00                 jmp    0x30707f
306fb0  48 8d 95 68 1f 00 00           lea    rdx,[rbp+0x1f68]
306fb7  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306fbc  e8 4f 9d fe ff                 call   0x2f0d10 ; STRING getter=0x2f0d10 ScrapHelicopter
306fc1  48 8b c8                       mov    rcx,rax
306fc4  e8 97 61 fd ff                 call   0x2dd160
306fc9  48 8b d0                       mov    rdx,rax
306fcc  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
306fd3  e8 60 7f fc ff                 call   0x2cef38
306fd8  84 c0                          test   al,al
306fda  74 09                          je     0x306fe5
306fdc  41 83 fe 0f                    cmp    r14d,0xf
306fe0  e9 0a 01 00 00                 jmp    0x3070ef
306fe5  48 8d 95 81 11 00 00           lea    rdx,[rbp+0x1181]
306fec  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
306ff1  e8 46 9d fe ff                 call   0x2f0d3c ; STRING getter=0x2f0d3c BradleyAPC
306ff6  48 8b c8                       mov    rcx,rax
306ff9  e8 56 2c fe ff                 call   0x2e9c54
306ffe  48 8b d0                       mov    rdx,rax
307001  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
307008  e8 2b 7f fc ff                 call   0x2cef38
30700d  84 c0                          test   al,al
30700f  74 09                          je     0x30701a
307011  41 83 fe 19                    cmp    r14d,0x19
307015  e9 d5 00 00 00                 jmp    0x3070ef
30701a  48 8d 95 d8 0c 00 00           lea    rdx,[rbp+0xcd8]
307021  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307026  e8 51 9d fe ff                 call   0x2f0d7c
30702b  48 8b c8                       mov    rcx,rax
30702e  e8 e1 c5 fd ff                 call   0x2e3614
307033  48 8b d0                       mov    rdx,rax
307036  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
30703d  e8 f6 7e fc ff                 call   0x2cef38
307042  84 c0                          test   al,al
307044  74 09                          je     0x30704f
307046  41 83 fe 02                    cmp    r14d,0x2
30704a  e9 a0 00 00 00                 jmp    0x3070ef
30704f  48 8d 95 77 09 00 00           lea    rdx,[rbp+0x977]
307056  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30705b  e8 48 9d fe ff                 call   0x2f0da8 ; STRING getter=0x2f0da8 RHIB
307060  48 8b c8                       mov    rcx,rax
307063  e8 64 6c fc ff                 call   0x2cdccc
307068  48 8b d0                       mov    rdx,rax
30706b  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
307072  e8 c1 7e fc ff                 call   0x2cef38
307077  84 c0                          test   al,al
307079  74 0c                          je     0x307087
30707b  41 83 fe 04                    cmp    r14d,0x4
30707f  0f 93 c0                       setae  al
307082  e9 fb 00 00 00                 jmp    0x307182
307087  48 8d 95 e0 0c 00 00           lea    rdx,[rbp+0xce0]
30708e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307093  e8 44 9d fe ff                 call   0x2f0ddc
307098  48 8b c8                       mov    rcx,rax
30709b  e8 74 c5 fd ff                 call   0x2e3614
3070a0  48 8b d0                       mov    rdx,rax
3070a3  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
3070aa  e8 89 7e fc ff                 call   0x2cef38
3070af  84 c0                          test   al,al
3070b1  74 0c                          je     0x3070bf
3070b3  41 83 fe 02                    cmp    r14d,0x2
3070b7  0f 97 c0                       seta   al
3070ba  e9 c3 00 00 00                 jmp    0x307182
3070bf  48 8d 95 59 27 00 00           lea    rdx,[rbp+0x2759]
3070c6  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3070cb  e8 30 9e fe ff                 call   0x2f0f00 ; STRING getter=0x2f0f00 AttackHelicopter
3070d0  48 8b c8                       mov    rcx,rax
3070d3  e8 dc 2a fe ff                 call   0x2e9bb4
3070d8  48 8b d0                       mov    rdx,rax
3070db  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
3070e2  e8 51 7e fc ff                 call   0x2cef38
3070e7  84 c0                          test   al,al
3070e9  74 0c                          je     0x3070f7
3070eb  41 83 fe 14                    cmp    r14d,0x14
3070ef  0f 92 c0                       setb   al
3070f2  e9 8b 00 00 00                 jmp    0x307182
3070f7  48 8d 95 b3 0e 00 00           lea    rdx,[rbp+0xeb3]
3070fe  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307103  e8 34 9e fe ff                 call   0x2f0f3c ; STRING getter=0x2f0f3c StoneOre
307108  48 8b c8                       mov    rcx,rax
30710b  e8 7c 2a fe ff                 call   0x2e9b8c
307110  48 8b d0                       mov    rdx,rax
307113  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
30711a  e8 19 7e fc ff                 call   0x2cef38
30711f  84 c0                          test   al,al
307121  75 58                          jne    0x30717b
307123  48 8d 95 aa 0e 00 00           lea    rdx,[rbp+0xeaa]
30712a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30712f  e8 40 9e fe ff                 call   0x2f0f74 ; STRING getter=0x2f0f74 MetalOre
307134  48 8b c8                       mov    rcx,rax
307137  e8 50 2a fe ff                 call   0x2e9b8c
30713c  48 8b d0                       mov    rdx,rax
30713f  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
307146  e8 ed 7d fc ff                 call   0x2cef38
30714b  84 c0                          test   al,al
30714d  75 2c                          jne    0x30717b
30714f  48 8d 95 22 0f 00 00           lea    rdx,[rbp+0xf22]
307156  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30715b  e8 4c 9e fe ff                 call   0x2f0fac ; STRING getter=0x2f0fac SulfurOre
307160  48 8b c8                       mov    rcx,rax
307163  e8 dc 6b fc ff                 call   0x2cdd44
307168  48 8b d0                       mov    rdx,rax
30716b  48 8d 8d 80 02 00 00           lea    rcx,[rbp+0x280]
307172  e8 c1 7d fc ff                 call   0x2cef38
307177  84 c0                          test   al,al
307179  74 0f                          je     0x30718a
30717b  41 83 fe 03                    cmp    r14d,0x3
30717f  0f 96 c0                       setbe  al
307182  84 c0                          test   al,al
307184  0f 84 a3 03 00 00              je     0x30752d
30718a  42 8d 04 f5 00 00 00 00        lea    eax,[r14*8+0x0]
307192  48 63 c8                       movsxd rcx,eax
307195  4a 8b 54 29 20                 mov    rdx,QWORD PTR [rcx+r13*1+0x20]
30719a  48 8b ca                       mov    rcx,rdx
30719d  e8 66 3d fc ff                 call   0x2caf08
3071a2  84 c0                          test   al,al
3071a4  0f 84 83 03 00 00              je     0x30752d
3071aa  48 8b ca                       mov    rcx,rdx
3071ad  e8 fa 9d 06 00                 call   0x370fac
3071b2  48 8b c8                       mov    rcx,rax
3071b5  4c 8b e0                       mov    r12,rax
3071b8  e8 4b 3d fc ff                 call   0x2caf08
3071bd  84 c0                          test   al,al
3071bf  0f 84 68 03 00 00              je     0x30752d
3071c5  49 8b cc                       mov    rcx,r12
3071c8  e8 b7 9c 06 00                 call   0x370e84
3071cd  48 8b c8                       mov    rcx,rax
3071d0  e8 33 3d fc ff                 call   0x2caf08
3071d5  84 c0                          test   al,al
3071d7  0f 84 50 03 00 00              je     0x30752d
3071dd  48 63 0d 24 7e 0e 00           movsxd rcx,DWORD PTR [rip+0xe7e24]        # 0x3ef008 ; CONFIG i.ItemChamsIndex value(+0x48)
3071e4  48 8d 15 15 8e cf ff           lea    rdx,[rip+0xffffffffffcf8e15]        # 0x0
3071eb  4c 8b bc ca 88 5e 3e 00        mov    r15,QWORD PTR [rdx+rcx*8+0x3e5e88]
3071f3  4d 85 ff                       test   r15,r15
3071f6  0f 84 31 03 00 00              je     0x30752d
3071fc  48 8d 34 cd c0 5e 3e 00        lea    rsi,[rcx*8+0x3e5ec0]
307204  48 03 f2                       add    rsi,rdx
307207  48 8b 06                       mov    rax,QWORD PTR [rsi]
30720a  48 85 c0                       test   rax,rax
30720d  0f 85 86 02 00 00              jne    0x307499
307213  85 c9                          test   ecx,ecx
307215  0f 84 03 02 00 00              je     0x30741e
30721b  83 e9 01                       sub    ecx,0x1
30721e  0f 84 af 01 00 00              je     0x3073d3
307224  83 e9 01                       sub    ecx,0x1
307227  0f 84 58 01 00 00              je     0x307385
30722d  83 e9 01                       sub    ecx,0x1
307230  0f 84 01 01 00 00              je     0x307337
307236  83 e9 01                       sub    ecx,0x1
307239  0f 84 aa 00 00 00              je     0x3072e9
30723f  83 e9 01                       sub    ecx,0x1
307242  74 57                          je     0x30729b
307244  83 f9 01                       cmp    ecx,0x1
307247  0f 85 e0 02 00 00              jne    0x30752d
30724d  48 8d 95 28 12 00 00           lea    rdx,[rbp+0x1228]
307254  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307259  e8 6e a4 fe ff                 call   0x2f16cc ; STRING getter=0x2f16cc UnityEngine
30725e  48 8b c8                       mov    rcx,rax
307261  e8 ce 6b fc ff                 call   0x2cde34
307266  48 8d 95 f0 0a 00 00           lea    rdx,[rbp+0xaf0]
30726d  48 8b f8                       mov    rdi,rax
307270  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307275  e8 16 a4 fe ff                 call   0x2f1690 ; STRING getter=0x2f1690 Shader
30727a  48 8b c8                       mov    rcx,rax
30727d  e8 72 6a fc ff                 call   0x2cdcf4
307282  48 8d 95 d8 03 00 00           lea    rdx,[rbp+0x3d8]
307289  48 8b d8                       mov    rbx,rax
30728c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307291  e8 ae a3 fe ff                 call   0x2f1644 ; STRING getter=0x2f1644 6
307296  e9 cc 01 00 00                 jmp    0x307467
30729b  48 8d 95 34 12 00 00           lea    rdx,[rbp+0x1234]
3072a2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3072a7  e8 5c a3 fe ff                 call   0x2f1608 ; STRING getter=0x2f1608 UnityEngine
3072ac  48 8b c8                       mov    rcx,rax
3072af  e8 80 6b fc ff                 call   0x2cde34
3072b4  48 8d 95 f7 0a 00 00           lea    rdx,[rbp+0xaf7]
3072bb  48 8b f8                       mov    rdi,rax
3072be  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3072c3  e8 cc a2 fe ff                 call   0x2f1594 ; STRING getter=0x2f1594 Shader
3072c8  48 8b c8                       mov    rcx,rax
3072cb  e8 24 6a fc ff                 call   0x2cdcf4
3072d0  48 8d 95 d6 03 00 00           lea    rdx,[rbp+0x3d6]
3072d7  48 8b d8                       mov    rbx,rax
3072da  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3072df  e8 f4 a1 fe ff                 call   0x2f14d8 ; STRING getter=0x2f14d8 5
3072e4  e9 7e 01 00 00                 jmp    0x307467
3072e9  48 8d 95 40 12 00 00           lea    rdx,[rbp+0x1240]
3072f0  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3072f5  e8 8e a1 fe ff                 call   0x2f1488 ; STRING getter=0x2f1488 UnityEngine
3072fa  48 8b c8                       mov    rcx,rax
3072fd  e8 32 6b fc ff                 call   0x2cde34
307302  48 8d 95 fe 0a 00 00           lea    rdx,[rbp+0xafe]
307309  48 8b f8                       mov    rdi,rax
30730c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307311  e8 0a a1 fe ff                 call   0x2f1420 ; STRING getter=0x2f1420 Shader
307316  48 8b c8                       mov    rcx,rax
307319  e8 d6 69 fc ff                 call   0x2cdcf4
30731e  48 8d 95 d4 03 00 00           lea    rdx,[rbp+0x3d4]
307325  48 8b d8                       mov    rbx,rax
307328  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30732d  e8 b6 a0 fe ff                 call   0x2f13e8 ; STRING getter=0x2f13e8 4
307332  e9 30 01 00 00                 jmp    0x307467
307337  48 8d 95 4c 12 00 00           lea    rdx,[rbp+0x124c]
30733e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307343  e8 4c a0 fe ff                 call   0x2f1394 ; STRING getter=0x2f1394 UnityEngine
307348  48 8b c8                       mov    rcx,rax
30734b  e8 e4 6a fc ff                 call   0x2cde34
307350  48 8d 95 05 0b 00 00           lea    rdx,[rbp+0xb05]
307357  48 8b f8                       mov    rdi,rax
30735a  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30735f  e8 d0 9f fe ff                 call   0x2f1334 ; STRING getter=0x2f1334 Shader
307364  48 8b c8                       mov    rcx,rax
307367  e8 88 69 fc ff                 call   0x2cdcf4
30736c  48 8d 95 d2 03 00 00           lea    rdx,[rbp+0x3d2]
307373  48 8b d8                       mov    rbx,rax
307376  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30737b  e8 54 98 fe ff                 call   0x2f0bd4 ; STRING getter=0x2f0bd4 3
307380  e9 e2 00 00 00                 jmp    0x307467
307385  48 8d 95 58 12 00 00           lea    rdx,[rbp+0x1258]
30738c  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307391  e8 1e 9f fe ff                 call   0x2f12b4 ; STRING getter=0x2f12b4 UnityEngine
307396  48 8b c8                       mov    rcx,rax
307399  e8 96 6a fc ff                 call   0x2cde34
30739e  48 8d 95 0c 0b 00 00           lea    rdx,[rbp+0xb0c]
3073a5  48 8b f8                       mov    rdi,rax
3073a8  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3073ad  e8 c6 9e fe ff                 call   0x2f1278 ; STRING getter=0x2f1278 Shader
3073b2  48 8b c8                       mov    rcx,rax
3073b5  e8 3a 69 fc ff                 call   0x2cdcf4
3073ba  48 8d 95 d0 03 00 00           lea    rdx,[rbp+0x3d0]
3073c1  48 8b d8                       mov    rbx,rax
3073c4  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3073c9  e8 82 9e fe ff                 call   0x2f1250 ; STRING getter=0x2f1250 2
3073ce  e9 94 00 00 00                 jmp    0x307467
3073d3  48 8d 95 64 12 00 00           lea    rdx,[rbp+0x1264]
3073da  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3073df  e8 50 9d fe ff                 call   0x2f1134 ; STRING getter=0x2f1134 UnityEngine
3073e4  48 8b c8                       mov    rcx,rax
3073e7  e8 48 6a fc ff                 call   0x2cde34
3073ec  48 8d 95 13 0b 00 00           lea    rdx,[rbp+0xb13]
3073f3  48 8b f8                       mov    rdi,rax
3073f6  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3073fb  e8 f0 9c fe ff                 call   0x2f10f0 ; STRING getter=0x2f10f0 Shader
307400  48 8b c8                       mov    rcx,rax
307403  e8 ec 68 fc ff                 call   0x2cdcf4
307408  48 8d 95 ce 03 00 00           lea    rdx,[rbp+0x3ce]
30740f  48 8b d8                       mov    rbx,rax
307412  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307417  e8 b0 9c fe ff                 call   0x2f10cc ; STRING getter=0x2f10cc 1
30741c  eb 49                          jmp    0x307467
30741e  48 8d 95 70 12 00 00           lea    rdx,[rbp+0x1270]
307425  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
30742a  e8 65 9c fe ff                 call   0x2f1094 ; STRING getter=0x2f1094 UnityEngine
30742f  48 8b c8                       mov    rcx,rax
307432  e8 fd 69 fc ff                 call   0x2cde34
307437  48 8d 95 36 0b 00 00           lea    rdx,[rbp+0xb36]
30743e  48 8b f8                       mov    rdi,rax
307441  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307446  e8 f1 9b fe ff                 call   0x2f103c ; STRING getter=0x2f103c Shader
30744b  48 8b c8                       mov    rcx,rax
30744e  e8 a1 68 fc ff                 call   0x2cdcf4
307453  48 8d 95 cc 03 00 00           lea    rdx,[rbp+0x3cc]
30745a  48 8b d8                       mov    rbx,rax
30745d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
307462  e8 9d 9b fe ff                 call   0x2f1004 ; STRING getter=0x2f1004 0
307467  48 8b c8                       mov    rcx,rax
30746a  e8 f5 0f fd ff                 call   0x2d8464
30746f  48 8b c8                       mov    rcx,rax
307472  e8 65 71 fc ff                 call   0x2ce5dc
307477  4c 8b cf                       mov    r9,rdi
30747a  4c 8b c3                       mov    r8,rbx
30747d  48 8b d0                       mov    rdx,rax
307480  49 8b cf                       mov    rcx,r15
307483  e8 34 e6 06 00                 call   0x375abc
307488  33 db                          xor    ebx,ebx
30748a  48 89 06                       mov    QWORD PTR [rsi],rax
30748d  48 8b c8                       mov    rcx,rax
307490  48 85 c0                       test   rax,rax
307493  0f 84 8f 00 00 00              je     0x307528
307499  48 8b d0                       mov    rdx,rax
30749c  49 8b cc                       mov    rcx,r12
30749f  e8 38 9c 06 00                 call   0x3710dc
3074a4  0f 10 05 2d 7f 0e 00           movups xmm0,XMMWORD PTR [rip+0xe7f2d]        # 0x3ef3d8
3074ab  48 8d 95 51 04 00 00           lea    rdx,[rbp+0x451]
3074b2  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3074b7  66 0f 7f 85 00 02 00 00        movdqa XMMWORD PTR [rbp+0x200],xmm0
3074bf  e8 40 a2 fe ff                 call   0x2f1704 ; STRING getter=0x2f1704 _b
3074c4  48 8b c8                       mov    rcx,rax
3074c7  e8 28 8f 01 00                 call   0x3203f4
3074cc  48 8b c8                       mov    rcx,rax
3074cf  e8 08 71 fc ff                 call   0x2ce5dc
3074d4  48 8b d0                       mov    rdx,rax
3074d7  4c 8d 85 00 02 00 00           lea    r8,[rbp+0x200]
3074de  49 8b cc                       mov    rcx,r12
3074e1  e8 7e 98 06 00                 call   0x370d64
3074e6  0f 10 05 db 7e 0e 00           movups xmm0,XMMWORD PTR [rip+0xe7edb]        # 0x3ef3c8
3074ed  48 8d 95 4e 04 00 00           lea    rdx,[rbp+0x44e]
3074f4  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3074f9  66 0f 7f 85 00 02 00 00        movdqa XMMWORD PTR [rbp+0x200],xmm0
307501  e8 3a a2 fe ff                 call   0x2f1740 ; STRING getter=0x2f1740 _a
307506  48 8b c8                       mov    rcx,rax
307509  e8 e6 8e 01 00                 call   0x3203f4
30750e  48 8b c8                       mov    rcx,rax
307511  e8 c6 70 fc ff                 call   0x2ce5dc
307516  48 8b d0                       mov    rdx,rax
307519  4c 8d 85 00 02 00 00           lea    r8,[rbp+0x200]
307520  49 8b cc                       mov    rcx,r12
307523  e8 3c 98 06 00                 call   0x370d64
307528  bf 01 00 00 00                 mov    edi,0x1
30752d  44 03 f7                       add    r14d,edi
307530  44 3b b5 f4 03 00 00           cmp    r14d,DWORD PTR [rbp+0x3f4]
307537  0f 8c 0f fa ff ff              jl     0x306f4c
30753d  48 8d 8d 80 10 00 00           lea    rcx,[rbp+0x1080]
307544  e8 ab 4f fc ff                 call   0x2cc4f4
307549  48 8d 8d a0 10 00 00           lea    rcx,[rbp+0x10a0]
307550  e8 9f 4f fc ff                 call   0x2cc4f4
307555  48 8d 8d c0 10 00 00           lea    rcx,[rbp+0x10c0]
30755c  e8 93 4f fc ff                 call   0x2cc4f4
307561  48 8d 8d 40 11 00 00           lea    rcx,[rbp+0x1140]
307568  e8 87 4f fc ff                 call   0x2cc4f4
30756d  48 8d 8d 00 11 00 00           lea    rcx,[rbp+0x1100]
307574  e8 7b 4f fc ff                 call   0x2cc4f4
307579  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
30757e  e8 c1 7f fe ff                 call   0x2ef544
307583  f3 44 0f 10 15 00 bc f8 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff8bc00]        # 0x29318c ; f32=6.325
30758c  4c 8b a5 18 02 00 00           mov    r12,QWORD PTR [rbp+0x218]
307593  44 8a b5 e0 29 00 00           mov    r14b,BYTE PTR [rbp+0x29e0]
30759a  48 8b bd 48 03 00 00           mov    rdi,QWORD PTR [rbp+0x348]
3075a1  48 8d 8d 70 02 00 00           lea    rcx,[rbp+0x270]
3075a8  e8 3b 7f fd ff                 call   0x2df4e8
3075ad  40 8a b5 e0 01 00 00           mov    sil,BYTE PTR [rbp+0x1e0]
3075b4  48 83 c7 40                    add    rdi,0x40
3075b8  48 89 bd 48 03 00 00           mov    QWORD PTR [rbp+0x348],rdi
3075bf  48 3b bd f0 01 00 00           cmp    rdi,QWORD PTR [rbp+0x1f0]
3075c6  0f 85 8a 5b ff ff              jne    0x2fd156
3075cc  48 8d 8d 00 13 00 00           lea    rcx,[rbp+0x1300]
3075d3  e8 a0 7e fd ff                 call   0x2df478
3075d8  4c 8d 9c 24 88 2a 00 00        lea    r11,[rsp+0x2a88]
3075e0  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
3075e5  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
3075ea  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
3075ef  45 0f 28 4b b8                 movaps xmm9,XMMWORD PTR [r11-0x48]
3075f4  45 0f 28 53 a8                 movaps xmm10,XMMWORD PTR [r11-0x58]
3075f9  45 0f 28 5b 98                 movaps xmm11,XMMWORD PTR [r11-0x68]
3075fe  45 0f 28 63 88                 movaps xmm12,XMMWORD PTR [r11-0x78]
307603  45 0f 28 ab 78 ff ff ff        movaps xmm13,XMMWORD PTR [r11-0x88]
30760b  45 0f 28 b3 68 ff ff ff        movaps xmm14,XMMWORD PTR [r11-0x98]
307613  45 0f 28 bb 58 ff ff ff        movaps xmm15,XMMWORD PTR [r11-0xa8]
30761b  49 8b e3                       mov    rsp,r11
30761e  41 5f                          pop    r15
307620  41 5e                          pop    r14
307622  41 5d                          pop    r13
307624  41 5c                          pop    r12
307626  5f                             pop    rdi
307627  5e                             pop    rsi
307628  5b                             pop    rbx
307629  5d                             pop    rbp
30762a  c3                             ret
30762b  44 8a b5 e0 29 00 00           mov    r14b,BYTE PTR [rbp+0x29e0]
307632  e9 1c c3 ff ff                 jmp    0x303953
