; pdata function 0x2fa300..0x2fabf6 unwind=0x3d2e38
2fa300  48 8b c4                       mov    rax,rsp
2fa303  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2fa307  55                             push   rbp
2fa308  56                             push   rsi
2fa309  57                             push   rdi
2fa30a  41 54                          push   r12
2fa30c  41 55                          push   r13
2fa30e  41 56                          push   r14
2fa310  41 57                          push   r15
2fa312  48 8d 68 b8                    lea    rbp,[rax-0x48]
2fa316  48 81 ec 10 01 00 00           sub    rsp,0x110
2fa31d  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
2fa321  48 8b ca                       mov    rcx,rdx
2fa324  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
2fa328  4c 8b f2                       mov    r14,rdx
2fa32b  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
2fa330  e8 d3 0b fd ff                 call   0x2caf08
2fa335  84 c0                          test   al,al
2fa337  0f 84 8f 08 00 00              je     0x2fabcc
2fa33d  48 8b ca                       mov    rcx,rdx
2fa340  e8 57 6b fe ff                 call   0x2e0e9c
2fa345  84 c0                          test   al,al
2fa347  0f 84 7f 08 00 00              je     0x2fabcc
2fa34d  80 3d 14 fa 0e 00 00           cmp    BYTE PTR [rip+0xefa14],0x0        # 0x3e9d68 ; CONFIG Bools.TargetHelicopter value(+0x48)
2fa354  0f 84 72 08 00 00              je     0x2fabcc
2fa35a  48 8b 3d 57 cf 0d 00           mov    rdi,QWORD PTR [rip+0xdcf57]        # 0x3d72b8
2fa361  48 8b cf                       mov    rcx,rdi
2fa364  e8 9f 0b fd ff                 call   0x2caf08
2fa369  84 c0                          test   al,al
2fa36b  0f 84 5b 08 00 00              je     0x2fabcc
2fa371  48 8b cf                       mov    rcx,rdi
2fa374  e8 23 6b fe ff                 call   0x2e0e9c
2fa379  84 c0                          test   al,al
2fa37b  0f 84 4b 08 00 00              je     0x2fabcc
2fa381  41 b8 3e 00 00 00              mov    r8d,0x3e
2fa387  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2fa38c  48 8b cf                       mov    rcx,rdi
2fa38f  e8 54 e8 06 00                 call   0x368be8
2fa394  48 8b cf                       mov    rcx,rdi
2fa397  e8 70 f3 06 00                 call   0x36970c
2fa39c  f3 0f 10 0d ac 8e f9 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff98eac]        # 0x293250 ; f32=5000
2fa3a4  0f 2f c8                       comiss xmm1,xmm0
2fa3a7  72 23                          jb     0x2fa3cc
2fa3a9  41 b8 3f 00 00 00              mov    r8d,0x3f
2fa3af  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa3b3  48 8b cf                       mov    rcx,rdi
2fa3b6  e8 2d e8 06 00                 call   0x368be8
2fa3bb  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa3bf  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2fa3c5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa3c8  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2fa3cc  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2fa3d0  e8 e7 d7 0c 00                 call   0x3c7bbc
2fa3d5  48 8b d0                       mov    rdx,rax
2fa3d8  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2fa3dd  e8 ce 51 fe ff                 call   0x2df5b0
2fa3e2  84 c0                          test   al,al
2fa3e4  0f 85 e2 07 00 00              jne    0x2fabcc
2fa3ea  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2fa3ee  49 8b ce                       mov    rcx,r14
2fa3f1  e8 6e ed 06 00                 call   0x369164
2fa3f6  49 8b ce                       mov    rcx,r14
2fa3f9  e8 86 e6 06 00                 call   0x368a84
2fa3fe  48 8b c8                       mov    rcx,rax
2fa401  48 8b d8                       mov    rbx,rax
2fa404  e8 ff 0a fd ff                 call   0x2caf08
2fa409  84 c0                          test   al,al
2fa40b  0f 84 bb 07 00 00              je     0x2fabcc
2fa411  48 8b cb                       mov    rcx,rbx
2fa414  e8 9b 7d 07 00                 call   0x3721b4
2fa419  48 8b cb                       mov    rcx,rbx
2fa41c  4c 8b e0                       mov    r12,rax
2fa41f  e8 40 70 07 00                 call   0x371464
2fa424  48 8b cb                       mov    rcx,rbx
2fa427  48 8b f0                       mov    rsi,rax
2fa42a  e8 89 7a 07 00                 call   0x371eb8
2fa42f  48 8b cb                       mov    rcx,rbx
2fa432  4c 8b f8                       mov    r15,rax
2fa435  e8 a6 72 07 00                 call   0x3716e0
2fa43a  48 8b c8                       mov    rcx,rax
2fa43d  4c 8b e8                       mov    r13,rax
2fa440  e8 c3 0a fd ff                 call   0x2caf08
2fa445  84 c0                          test   al,al
2fa447  0f 84 9d 01 00 00              je     0x2fa5ea
2fa44d  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa451  49 8b ce                       mov    rcx,r14
2fa454  e8 0b ed 06 00                 call   0x369164
2fa459  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2fa45e  49 8b ce                       mov    rcx,r14
2fa461  48 8b d8                       mov    rbx,rax
2fa464  e8 97 dc 06 00                 call   0x368100
2fa469  f3 0f 10 15 3b 8c f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff98c3b]        # 0x2930ac ; f32=0.25
2fa471  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2fa476  48 8b c8                       mov    rcx,rax
2fa479  e8 ee 51 fe ff                 call   0x2df66c
2fa47e  4c 8b c0                       mov    r8,rax
2fa481  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2fa486  48 8b cb                       mov    rcx,rbx
2fa489  e8 7a 52 fe ff                 call   0x2df708
2fa48e  f3 41 0f 10 85 f8 03 00 00     movss  xmm0,DWORD PTR [r13+0x3f8]
2fa497  48 8b cf                       mov    rcx,rdi
2fa49a  0f 5a c0                       cvtps2pd xmm0,xmm0
2fa49d  f2 0f 5c 05 6b 8c f9 ff        subsd  xmm0,QWORD PTR [rip+0xfffffffffff98c6b]        # 0x293110
2fa4a5  66 0f 5a f0                    cvtpd2ps xmm6,xmm0
2fa4a9  e8 a6 b5 01 00                 call   0x315a54
2fa4ae  48 8b c8                       mov    rcx,rax
2fa4b1  4c 8b c0                       mov    r8,rax
2fa4b4  e8 4f 0a fd ff                 call   0x2caf08
2fa4b9  45 33 ed                       xor    r13d,r13d
2fa4bc  84 c0                          test   al,al
2fa4be  74 1d                          je     0x2fa4dd
2fa4c0  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa4c4  49 8b c8                       mov    rcx,r8
2fa4c7  e8 08 a3 07 00                 call   0x3747d4
2fa4cc  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa4d0  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2fa4d6  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa4d9  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2fa4dd  0f 28 ce                       movaps xmm1,xmm6
2fa4e0  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2fa4e4  e8 57 f0 fd ff                 call   0x2d9540
2fa4e9  48 8b 1d 28 b2 0e 00           mov    rbx,QWORD PTR [rip+0xeb228]        # 0x3e5718
2fa4f0  48 85 db                       test   rbx,rbx
2fa4f3  75 0e                          jne    0x2fa503
2fa4f5  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2fa4f9  e8 f6 1f fd ff                 call   0x2cc4f4
2fa4fe  e9 c9 06 00 00                 jmp    0x2fabcc
2fa503  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa507  48 8b cf                       mov    rcx,rdi
2fa50a  e8 0d f7 06 00                 call   0x369c1c
2fa50f  4c 8d 4c 24 50                 lea    r9,[rsp+0x50]
2fa514  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
2fa519  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2fa51e  48 8d 55 90                    lea    rdx,[rbp-0x70]
2fa522  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa526  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2fa52b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa52e  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2fa534  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2fa53a  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2fa53e  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2fa542  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2fa548  f2 0f 10 44 24 60              movsd  xmm0,QWORD PTR [rsp+0x60]
2fa54e  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2fa552  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
2fa556  f2 0f 11 45 90                 movsd  QWORD PTR [rbp-0x70],xmm0
2fa55b  89 45 98                       mov    DWORD PTR [rbp-0x68],eax
2fa55e  e8 11 7e fe ff                 call   0x2e2374
2fa563  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2fa568  e8 eb 95 fe ff                 call   0x2e3b58
2fa56d  84 c0                          test   al,al
2fa56f  75 6b                          jne    0x2fa5dc
2fa571  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa575  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
2fa57a  e8 f9 6c fe ff                 call   0x2e1278
2fa57f  48 8b c8                       mov    rcx,rax
2fa582  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2fa587  0f 28 d6                       movaps xmm2,xmm6
2fa58a  e8 dd 50 fe ff                 call   0x2df66c
2fa58f  48 8b c8                       mov    rcx,rax
2fa592  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2fa597  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2fa59c  e8 67 51 fe ff                 call   0x2df708
2fa5a1  f3 0f 10 15 a7 2c f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff92ca7]        # 0x28d250 ; f32=0.5
2fa5a9  48 8d 55 90                    lea    rdx,[rbp-0x70]
2fa5ad  48 8d 0d ac ba 0e 00           lea    rcx,[rip+0xebaac]        # 0x3e6060
2fa5b4  48 8b d8                       mov    rbx,rax
2fa5b7  e8 b0 50 fe ff                 call   0x2df66c
2fa5bc  4c 8b c0                       mov    r8,rax
2fa5bf  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa5c3  48 8b cb                       mov    rcx,rbx
2fa5c6  e8 01 51 fe ff                 call   0x2df6cc
2fa5cb  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa5cf  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2fa5d5  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa5d8  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2fa5dc  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2fa5e0  e8 0f 1f fd ff                 call   0x2cc4f4
2fa5e5  e9 68 04 00 00                 jmp    0x2faa52
2fa5ea  49 8b cf                       mov    rcx,r15
2fa5ed  e8 16 09 fd ff                 call   0x2caf08
2fa5f2  45 33 ed                       xor    r13d,r13d
2fa5f5  84 c0                          test   al,al
2fa5f7  0f 84 78 01 00 00              je     0x2fa775
2fa5fd  49 8b cf                       mov    rcx,r15
2fa600  e8 33 13 07 00                 call   0x36b938
2fa605  48 8b c8                       mov    rcx,rax
2fa608  48 8b d0                       mov    rdx,rax
2fa60b  e8 f8 08 fd ff                 call   0x2caf08
2fa610  84 c0                          test   al,al
2fa612  0f 84 3a 04 00 00              je     0x2faa52
2fa618  48 8b ca                       mov    rcx,rdx
2fa61b  e8 10 85 07 00                 call   0x372b30
2fa620  48 8b c8                       mov    rcx,rax
2fa623  48 8b d0                       mov    rdx,rax
2fa626  e8 dd 08 fd ff                 call   0x2caf08
2fa62b  84 c0                          test   al,al
2fa62d  0f 84 1f 04 00 00              je     0x2faa52
2fa633  f3 0f 10 72 3c                 movss  xmm6,DWORD PTR [rdx+0x3c]
2fa638  49 8b ce                       mov    rcx,r14
2fa63b  f3 41 0f 10 bf ac 03 00 00     movss  xmm7,DWORD PTR [r15+0x3ac]
2fa644  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa648  e8 b3 da 06 00                 call   0x368100
2fa64d  48 8b c8                       mov    rcx,rax
2fa650  48 8d 55 80                    lea    rdx,[rbp-0x80]
2fa654  e8 1f 6c fe ff                 call   0x2e1278
2fa659  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa65d  49 8b ce                       mov    rcx,r14
2fa660  e8 ff ea 06 00                 call   0x369164
2fa665  f3 0f 10 15 e7 2b f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff92be7]        # 0x28d254 ; f32=1
2fa66d  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2fa672  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2fa676  48 8b d8                       mov    rbx,rax
2fa679  e8 ee 4f fe ff                 call   0x2df66c
2fa67e  4c 8b c0                       mov    r8,rax
2fa681  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2fa686  48 8b cb                       mov    rcx,rbx
2fa689  e8 7a 50 fe ff                 call   0x2df708
2fa68e  48 8b cf                       mov    rcx,rdi
2fa691  e8 be b3 01 00                 call   0x315a54
2fa696  48 8b c8                       mov    rcx,rax
2fa699  4c 8b c0                       mov    r8,rax
2fa69c  e8 67 08 fd ff                 call   0x2caf08
2fa6a1  84 c0                          test   al,al
2fa6a3  74 1d                          je     0x2fa6c2
2fa6a5  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa6a9  49 8b c8                       mov    rcx,r8
2fa6ac  e8 23 a1 07 00                 call   0x3747d4
2fa6b1  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa6b5  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2fa6bb  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa6be  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2fa6c2  48 8b 1d 4f b0 0e 00           mov    rbx,QWORD PTR [rip+0xeb04f]        # 0x3e5718
2fa6c9  48 85 db                       test   rbx,rbx
2fa6cc  0f 84 fa 04 00 00              je     0x2fabcc
2fa6d2  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa6d6  48 8b cf                       mov    rcx,rdi
2fa6d9  e8 3e f5 06 00                 call   0x369c1c
2fa6de  4c 8d 4c 24 70                 lea    r9,[rsp+0x70]
2fa6e3  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
2fa6e8  4c 8d 44 24 50                 lea    r8,[rsp+0x50]
2fa6ed  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2fa6f2  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa6f6  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2fa6fa  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa6fd  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2fa703  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2fa709  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2fa70d  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2fa711  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2fa717  f2 0f 10 44 24 60              movsd  xmm0,QWORD PTR [rsp+0x60]
2fa71d  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2fa721  8b 44 24 68                    mov    eax,DWORD PTR [rsp+0x68]
2fa725  f2 0f 11 44 24 40              movsd  QWORD PTR [rsp+0x40],xmm0
2fa72b  89 44 24 48                    mov    DWORD PTR [rsp+0x48],eax
2fa72f  e8 40 7c fe ff                 call   0x2e2374
2fa734  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2fa738  e8 1b 94 fe ff                 call   0x2e3b58
2fa73d  84 c0                          test   al,al
2fa73f  0f 85 0d 03 00 00              jne    0x2faa52
2fa745  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa749  f3 0f 59 f7                    mulss  xmm6,xmm7
2fa74d  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2fa751  e8 22 6b fe ff                 call   0x2e1278
2fa756  48 8b c8                       mov    rcx,rax
2fa759  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2fa75e  0f 28 d6                       movaps xmm2,xmm6
2fa761  e8 06 4f fe ff                 call   0x2df66c
2fa766  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2fa76b  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2fa770  e9 c4 02 00 00                 jmp    0x2faa39
2fa775  49 8b cc                       mov    rcx,r12
2fa778  e8 8b 07 fd ff                 call   0x2caf08
2fa77d  84 c0                          test   al,al
2fa77f  0f 84 f8 00 00 00              je     0x2fa87d
2fa785  48 8b cb                       mov    rcx,rbx
2fa788  e8 a3 6e 07 00                 call   0x371630
2fa78d  48 8b c8                       mov    rcx,rax
2fa790  48 8b d8                       mov    rbx,rax
2fa793  e8 70 07 fd ff                 call   0x2caf08
2fa798  84 c0                          test   al,al
2fa79a  0f 84 b2 02 00 00              je     0x2faa52
2fa7a0  48 8b cb                       mov    rcx,rbx
2fa7a3  e8 14 83 07 00                 call   0x372abc
2fa7a8  48 8b c8                       mov    rcx,rax
2fa7ab  e8 58 07 fd ff                 call   0x2caf08
2fa7b0  84 c0                          test   al,al
2fa7b2  0f 84 9a 02 00 00              je     0x2faa52
2fa7b8  44 38 2d 29 d5 0d 00           cmp    BYTE PTR [rip+0xdd529],r13b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
2fa7bf  74 12                          je     0x2fa7d3
2fa7c1  f3 0f 10 35 df d8 0d 00        movss  xmm6,DWORD PTR [rip+0xdd8df]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
2fa7c9  f3 0f 5d 35 27 33 f9 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff93327]        # 0x28daf8
2fa7d1  eb 08                          jmp    0x2fa7db
2fa7d3  f3 0f 10 35 79 2a f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff92a79]        # 0x28d254 ; f32=1
2fa7db  48 8b 35 36 af 0e 00           mov    rsi,QWORD PTR [rip+0xeaf36]        # 0x3e5718
2fa7e2  48 85 f6                       test   rsi,rsi
2fa7e5  0f 84 e1 03 00 00              je     0x2fabcc
2fa7eb  f3 0f 10 7b 40                 movss  xmm7,DWORD PTR [rbx+0x40]
2fa7f0  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa7f4  48 8b cf                       mov    rcx,rdi
2fa7f7  e8 20 f4 06 00                 call   0x369c1c
2fa7fc  4c 8d 4c 24 70                 lea    r9,[rsp+0x70]
2fa801  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
2fa806  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2fa80b  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2fa810  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa814  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa819  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa81c  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2fa822  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2fa828  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2fa82c  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2fa830  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
2fa836  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2fa83b  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
2fa83f  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
2fa842  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2fa848  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2fa84c  e8 23 7b fe ff                 call   0x2e2374
2fa851  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa856  e8 fd 92 fe ff                 call   0x2e3b58
2fa85b  84 c0                          test   al,al
2fa85d  0f 85 ef 01 00 00              jne    0x2faa52
2fa863  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa867  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa86c  e8 07 6a fe ff                 call   0x2e1278
2fa871  f3 0f 59 f7                    mulss  xmm6,xmm7
2fa875  0f 28 d6                       movaps xmm2,xmm6
2fa878  e9 a7 01 00 00                 jmp    0x2faa24
2fa87d  48 8b ce                       mov    rcx,rsi
2fa880  e8 83 06 fd ff                 call   0x2caf08
2fa885  84 c0                          test   al,al
2fa887  0f 84 3f 03 00 00              je     0x2fabcc
2fa88d  48 8b cb                       mov    rcx,rbx
2fa890  e8 b7 6c 07 00                 call   0x37154c
2fa895  48 8b c8                       mov    rcx,rax
2fa898  4c 8b f8                       mov    r15,rax
2fa89b  e8 68 06 fd ff                 call   0x2caf08
2fa8a0  84 c0                          test   al,al
2fa8a2  0f 84 aa 01 00 00              je     0x2faa52
2fa8a8  48 8b ce                       mov    rcx,rsi
2fa8ab  e8 88 10 07 00                 call   0x36b938
2fa8b0  48 8b c8                       mov    rcx,rax
2fa8b3  48 8b d8                       mov    rbx,rax
2fa8b6  e8 4d 06 fd ff                 call   0x2caf08
2fa8bb  84 c0                          test   al,al
2fa8bd  0f 84 8f 01 00 00              je     0x2faa52
2fa8c3  48 8b cb                       mov    rcx,rbx
2fa8c6  e8 f1 81 07 00                 call   0x372abc
2fa8cb  48 8b c8                       mov    rcx,rax
2fa8ce  e8 35 06 fd ff                 call   0x2caf08
2fa8d3  84 c0                          test   al,al
2fa8d5  0f 84 77 01 00 00              je     0x2faa52
2fa8db  f3 44 0f 10 86 ac 03 00 00     movss  xmm8,DWORD PTR [rsi+0x3ac]
2fa8e4  49 8b cf                       mov    rcx,r15
2fa8e7  e8 30 7d 07 00                 call   0x37261c
2fa8ec  3d 71 3d b7 34                 cmp    eax,0x34b73d71
2fa8f1  75 0c                          jne    0x2fa8ff
2fa8f3  48 8b ce                       mov    rcx,rsi
2fa8f6  e8 09 0c 07 00                 call   0x36b504
2fa8fb  44 0f 28 c0                    movaps xmm8,xmm0
2fa8ff  48 8b ce                       mov    rcx,rsi
2fa902  e8 51 0e 07 00                 call   0x36b758
2fa907  0f 2f 05 c2 38 f9 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff938c2]        # 0x28e1d0 ; f32=1.3
2fa90e  73 4a                          jae    0x2fa95a
2fa910  44 38 2d ea d9 0d 00           cmp    BYTE PTR [rip+0xdd9ea],r13b        # 0x3d8301
2fa917  74 13                          je     0x2fa92c
2fa919  44 38 2d 18 99 0e 00           cmp    BYTE PTR [rip+0xe9918],r13b        # 0x3e4238
2fa920  74 0a                          je     0x2fa92c
2fa922  f3 0f 10 35 5a b7 0e 00        movss  xmm6,DWORD PTR [rip+0xeb75a]        # 0x3e6084
2fa92a  eb 24                          jmp    0x2fa950
2fa92c  44 38 2d 85 d6 0d 00           cmp    BYTE PTR [rip+0xdd685],r13b        # 0x3d7fb8 ; CONFIG Bools.instanthit value(+0x48)
2fa933  74 0a                          je     0x2fa93f
2fa935  f3 0f 10 35 bb 31 f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff931bb]        # 0x28daf8 ; f32=1.495
2fa93d  eb 23                          jmp    0x2fa962
2fa93f  44 38 2d a2 d3 0d 00           cmp    BYTE PTR [rip+0xdd3a2],r13b        # 0x3d7ce8 ; CONFIG Bools.IncreaseVelocity value(+0x48)
2fa946  74 12                          je     0x2fa95a
2fa948  f3 0f 10 35 58 d7 0d 00        movss  xmm6,DWORD PTR [rip+0xdd758]        # 0x3d80a8 ; CONFIG F.projectilespeed value(+0x48)
2fa950  f3 0f 5d 35 a0 31 f9 ff        minss  xmm6,DWORD PTR [rip+0xfffffffffff931a0]        # 0x28daf8
2fa958  eb 08                          jmp    0x2fa962
2fa95a  f3 0f 10 35 f2 28 f9 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff928f2]        # 0x28d254 ; f32=1
2fa962  0f 2e 05 e3 28 f9 ff           ucomiss xmm0,DWORD PTR [rip+0xfffffffffff928e3]        # 0x28d24c
2fa969  7a 02                          jp     0x2fa96d
2fa96b  74 0c                          je     0x2fa979
2fa96d  48 8b ce                       mov    rcx,rsi
2fa970  e8 e3 0d 07 00                 call   0x36b758
2fa975  f3 0f 59 f0                    mulss  xmm6,xmm0
2fa979  f3 0f 10 7b 44                 movss  xmm7,DWORD PTR [rbx+0x44]
2fa97e  f3 0f 58 7b 40                 addss  xmm7,DWORD PTR [rbx+0x40]
2fa983  48 8b 1d 8e ad 0e 00           mov    rbx,QWORD PTR [rip+0xead8e]        # 0x3e5718
2fa98a  f3 41 0f 59 f8                 mulss  xmm7,xmm8
2fa98f  f3 0f 59 fe                    mulss  xmm7,xmm6
2fa993  f3 0f 11 3d d9 b4 0e 00        movss  DWORD PTR [rip+0xeb4d9],xmm7        # 0x3e5e74
2fa99b  48 85 db                       test   rbx,rbx
2fa99e  0f 84 28 02 00 00              je     0x2fabcc
2fa9a4  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fa9a8  48 8b cf                       mov    rcx,rdi
2fa9ab  e8 6c f2 06 00                 call   0x369c1c
2fa9b0  4c 8d 4c 24 70                 lea    r9,[rsp+0x70]
2fa9b5  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
2fa9ba  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
2fa9bf  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2fa9c4  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2fa9c8  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fa9cd  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2fa9d0  f2 0f 11 44 24 70              movsd  QWORD PTR [rsp+0x70],xmm0
2fa9d6  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
2fa9dc  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
2fa9e0  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
2fa9e4  f2 0f 11 44 24 60              movsd  QWORD PTR [rsp+0x60],xmm0
2fa9ea  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2fa9ef  89 44 24 68                    mov    DWORD PTR [rsp+0x68],eax
2fa9f3  8b 45 b8                       mov    eax,DWORD PTR [rbp-0x48]
2fa9f6  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
2fa9fc  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
2faa00  e8 6f 79 fe ff                 call   0x2e2374
2faa05  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2faa0a  e8 49 91 fe ff                 call   0x2e3b58
2faa0f  84 c0                          test   al,al
2faa11  75 3f                          jne    0x2faa52
2faa13  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2faa17  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2faa1c  e8 57 68 fe ff                 call   0x2e1278
2faa21  0f 28 d7                       movaps xmm2,xmm7
2faa24  48 8d 55 80                    lea    rdx,[rbp-0x80]
2faa28  48 8b c8                       mov    rcx,rax
2faa2b  e8 3c 4c fe ff                 call   0x2df66c
2faa30  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2faa35  4c 8d 45 b0                    lea    r8,[rbp-0x50]
2faa39  48 8b c8                       mov    rcx,rax
2faa3c  e8 c7 4c fe ff                 call   0x2df708
2faa41  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2faa45  f2 0f 11 44 24 30              movsd  QWORD PTR [rsp+0x30],xmm0
2faa4b  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2faa4e  89 44 24 38                    mov    DWORD PTR [rsp+0x38],eax
2faa52  44 38 2d 0f f3 0e 00           cmp    BYTE PTR [rip+0xef30f],r13b        # 0x3e9d68 ; CONFIG Bools.TargetHelicopter value(+0x48)
2faa59  0f 84 6d 01 00 00              je     0x2fabcc
2faa5f  44 38 2d 12 d4 0d 00           cmp    BYTE PTR [rip+0xdd412],r13b        # 0x3d7e78 ; CONFIG Bools.PSilent value(+0x48)
2faa66  0f 85 60 01 00 00              jne    0x2fabcc
2faa6c  44 38 2d 2d c8 0d 00           cmp    BYTE PTR [rip+0xdc82d],r13b        # 0x3d72a0
2faa73  0f 84 53 01 00 00              je     0x2fabcc
2faa79  49 8b ce                       mov    rcx,r14
2faa7c  e8 b7 ec 06 00                 call   0x369738
2faa81  48 8b c8                       mov    rcx,rax
2faa84  48 8b d8                       mov    rbx,rax
2faa87  e8 7c 04 fd ff                 call   0x2caf08
2faa8c  84 c0                          test   al,al
2faa8e  0f 84 38 01 00 00              je     0x2fabcc
2faa94  f2 0f 10 43 44                 movsd  xmm0,QWORD PTR [rbx+0x44]
2faa99  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
2faa9e  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2faaa2  f2 0f 11 45 68                 movsd  QWORD PTR [rbp+0x68],xmm0
2faaa7  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2faaac  e8 0b d6 ff ff                 call   0x2f80bc
2faab1  48 8b c8                       mov    rcx,rax
2faab4  4c 8d 45 68                    lea    r8,[rbp+0x68]
2faab8  48 8d 55 90                    lea    rdx,[rbp-0x70]
2faabc  e8 db 4b fe ff                 call   0x2df69c
2faac1  48 8d 4d 90                    lea    rcx,[rbp-0x70]
2faac5  e8 06 c5 01 00                 call   0x316fd0
2faaca  4c 8d 45 90                    lea    r8,[rbp-0x70]
2faace  48 8d 55 60                    lea    rdx,[rbp+0x60]
2faad2  48 8d 4d 68                    lea    rcx,[rbp+0x68]
2faad6  e8 29 4f ff ff                 call   0x2efa04
2faadb  49 8b 4e 38                    mov    rcx,QWORD PTR [r14+0x38]
2faadf  e8 24 04 fd ff                 call   0x2caf08
2faae4  84 c0                          test   al,al
2faae6  74 52                          je     0x2fab3a
2faae8  49 8b 4e 38                    mov    rcx,QWORD PTR [r14+0x38]
2faaec  e8 63 af 01 00                 call   0x315a54
2faaf1  48 8b c8                       mov    rcx,rax
2faaf4  4c 8b c0                       mov    r8,rax
2faaf7  e8 0c 04 fd ff                 call   0x2caf08
2faafc  84 c0                          test   al,al
2faafe  74 3a                          je     0x2fab3a
2fab00  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
2fab05  49 8b c8                       mov    rcx,r8
2fab08  e8 97 9f 07 00                 call   0x374aa4
2fab0d  48 8d 55 a0                    lea    rdx,[rbp-0x60]
2fab11  48 8d 4d 80                    lea    rcx,[rbp-0x80]
2fab15  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2fab18  f3 0f 7f 45 a0                 movdqu XMMWORD PTR [rbp-0x60],xmm0
2fab1d  e8 ea a7 01 00                 call   0x31530c
2fab22  f3 0f 10 45 64                 movss  xmm0,DWORD PTR [rbp+0x64]
2fab27  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2fab2b  f3 0f 5c 45 84                 subss  xmm0,DWORD PTR [rbp-0x7c]
2fab30  f3 0f 11 45 64                 movss  DWORD PTR [rbp+0x64],xmm0
2fab35  e8 96 c4 01 00                 call   0x316fd0
2fab3a  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2fab3e  e8 8d c4 01 00                 call   0x316fd0
2fab43  44 38 2d ee ef 0e 00           cmp    BYTE PTR [rip+0xeefee],r13b        # 0x3e9b38 ; CONFIG Bools.usesmooth value(+0x48)
2fab4a  74 6c                          je     0x2fabb8
2fab4c  f3 0f 10 35 f4 31 0f 00        movss  xmm6,DWORD PTR [rip+0xf31f4]        # 0x3edd48 ; CONFIG F.FloatSmoothing value(+0x48)
2fab54  4c 8d 45 68                    lea    r8,[rbp+0x68]
2fab58  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2fab5d  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2fab61  e8 36 4b fe ff                 call   0x2df69c
2fab66  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2fab6b  e8 60 c4 01 00                 call   0x316fd0
2fab70  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
2fab75  0f 28 ce                       movaps xmm1,xmm6
2fab78  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2fab7d  e8 92 4c ff ff                 call   0x2ef814
2fab82  4c 8b c0                       mov    r8,rax
2fab85  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2fab8a  48 8d 4d 68                    lea    rcx,[rbp+0x68]
2fab8e  e8 71 4e ff ff                 call   0x2efa04
2fab93  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2fab97  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
2fab9b  f3 0f 11 45 60                 movss  DWORD PTR [rbp+0x60],xmm0
2faba0  f3 0f 10 48 04                 movss  xmm1,DWORD PTR [rax+0x4]
2faba5  f3 0f 11 4d 64                 movss  DWORD PTR [rbp+0x64],xmm1
2fabaa  e8 21 c4 01 00                 call   0x316fd0
2fabaf  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2fabb3  e8 30 d9 ff ff                 call   0x2f84e8
2fabb8  f3 0f 10 45 60                 movss  xmm0,DWORD PTR [rbp+0x60]
2fabbd  f3 0f 10 4d 64                 movss  xmm1,DWORD PTR [rbp+0x64]
2fabc2  f3 0f 11 43 44                 movss  DWORD PTR [rbx+0x44],xmm0
2fabc7  f3 0f 11 4b 48                 movss  DWORD PTR [rbx+0x48],xmm1
2fabcc  4c 8d 9c 24 10 01 00 00        lea    r11,[rsp+0x110]
2fabd4  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
2fabd8  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2fabdd  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
2fabe2  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2fabe7  49 8b e3                       mov    rsp,r11
2fabea  41 5f                          pop    r15
2fabec  41 5e                          pop    r14
2fabee  41 5d                          pop    r13
2fabf0  41 5c                          pop    r12
2fabf2  5f                             pop    rdi
2fabf3  5e                             pop    rsi
2fabf4  5d                             pop    rbp
2fabf5  c3                             ret

; pdata function 0x2e02b0..0x2e069a unwind=0x3d2aa4
2e02b0  48 8b c4                       mov    rax,rsp
2e02b3  55                             push   rbp
2e02b4  53                             push   rbx
2e02b5  56                             push   rsi
2e02b6  57                             push   rdi
2e02b7  41 54                          push   r12
2e02b9  41 55                          push   r13
2e02bb  41 56                          push   r14
2e02bd  41 57                          push   r15
2e02bf  48 8d 68 a1                    lea    rbp,[rax-0x5f]
2e02c3  48 81 ec b8 00 00 00           sub    rsp,0xb8
2e02ca  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
2e02ce  45 33 ff                       xor    r15d,r15d
2e02d1  44 89 7d 67                    mov    DWORD PTR [rbp+0x67],r15d
2e02d5  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
2e02d9  e8 6e 0b 00 00                 call   0x2e0e4c
2e02de  84 c0                          test   al,al
2e02e0  0f 85 89 03 00 00              jne    0x2e066f
2e02e6  e8 b1 03 00 00                 call   0x2e069c
2e02eb  48 8b c8                       mov    rcx,rax
2e02ee  48 89 45 67                    mov    QWORD PTR [rbp+0x67],rax
2e02f2  4c 8b e0                       mov    r12,rax
2e02f5  e8 0e ac fe ff                 call   0x2caf08
2e02fa  84 c0                          test   al,al
2e02fc  0f 84 6d 03 00 00              je     0x2e066f
2e0302  e8 95 d7 ff ff                 call   0x2dda9c
2e0307  48 8b c8                       mov    rcx,rax
2e030a  4c 8b e8                       mov    r13,rax
2e030d  e8 f6 ab fe ff                 call   0x2caf08
2e0312  84 c0                          test   al,al
2e0314  0f 84 55 03 00 00              je     0x2e066f
2e031a  44 38 3d e7 7c 0f 00           cmp    BYTE PTR [rip+0xf7ce7],r15b        # 0x3d8008 ; CONFIG Bools.KeepTarget value(+0x48)
2e0321  74 47                          je     0x2e036a
2e0323  48 8b 1d 66 3b 10 00           mov    rbx,QWORD PTR [rip+0x103b66]        # 0x3e3e90
2e032a  48 8b cb                       mov    rcx,rbx
2e032d  e8 d6 ab fe ff                 call   0x2caf08
2e0332  84 c0                          test   al,al
2e0334  74 34                          je     0x2e036a
2e0336  48 8b cb                       mov    rcx,rbx
2e0339  e8 5e 0b 00 00                 call   0x2e0e9c
2e033e  84 c0                          test   al,al
2e0340  74 21                          je     0x2e0363
2e0342  48 8b cb                       mov    rcx,rbx
2e0345  e8 66 90 08 00                 call   0x3693b0
2e034a  84 c0                          test   al,al
2e034c  75 15                          jne    0x2e0363
2e034e  44 38 3d 4b 6f 0f 00           cmp    BYTE PTR [rip+0xf6f4b],r15b        # 0x3d72a0
2e0355  74 0c                          je     0x2e0363
2e0357  48 8b 05 32 3b 10 00           mov    rax,QWORD PTR [rip+0x103b32]        # 0x3e3e90
2e035e  e9 15 03 00 00                 jmp    0x2e0678
2e0363  4c 89 3d 26 3b 10 00           mov    QWORD PTR [rip+0x103b26],r15        # 0x3e3e90
2e036a  f3 0f 10 3d da d7 fa ff        movss  xmm7,DWORD PTR [rip+0xfffffffffffad7da]        # 0x28db4c ; f32=9999
2e0372  48 8d 55 bf                    lea    rdx,[rbp-0x41]
2e0376  48 8d 0d 53 84 f3 ff           lea    rcx,[rip+0xfffffffffff38453]        # 0x2187d0
2e037d  33 f6                          xor    esi,esi
2e037f  e8 78 37 00 00                 call   0x2e3afc
2e0384  48 8b c8                       mov    rcx,rax
2e0387  48 8b d8                       mov    rbx,rax
2e038a  e8 e9 15 ff ff                 call   0x2d1978
2e038f  48 8b cb                       mov    rcx,rbx
2e0392  4c 8b f0                       mov    r14,rax
2e0395  e8 26 76 ff ff                 call   0x2d79c0
2e039a  48 89 45 7f                    mov    QWORD PTR [rbp+0x7f],rax
2e039e  4c 3b f0                       cmp    r14,rax
2e03a1  0f 84 ae 02 00 00              je     0x2e0655
2e03a7  49 8b 3e                       mov    rdi,QWORD PTR [r14]
2e03aa  48 8b cf                       mov    rcx,rdi
2e03ad  e8 56 ab fe ff                 call   0x2caf08
2e03b2  84 c0                          test   al,al
2e03b4  0f 84 8d 02 00 00              je     0x2e0647
2e03ba  48 8b cf                       mov    rcx,rdi
2e03bd  e8 da 0a 00 00                 call   0x2e0e9c
2e03c2  84 c0                          test   al,al
2e03c4  0f 84 7d 02 00 00              je     0x2e0647
2e03ca  41 8a 5e 08                    mov    bl,BYTE PTR [r14+0x8]
2e03ce  48 8b cf                       mov    rcx,rdi
2e03d1  8a d3                          mov    dl,bl
2e03d3  e8 ec aa 08 00                 call   0x36aec4
2e03d8  84 c0                          test   al,al
2e03da  0f 84 67 02 00 00              je     0x2e0647
2e03e0  49 3b fd                       cmp    rdi,r13
2e03e3  0f 84 5e 02 00 00              je     0x2e0647
2e03e9  8a c3                          mov    al,bl
2e03eb  48 8d 55 87                    lea    rdx,[rbp-0x79]
2e03ef  f6 d8                          neg    al
2e03f1  48 8b cf                       mov    rcx,rdi
2e03f4  45 1b c0                       sbb    r8d,r8d
2e03f7  41 83 e0 fa                    and    r8d,0xfffffffa
2e03fb  41 83 c0 35                    add    r8d,0x35
2e03ff  e8 e4 87 08 00                 call   0x368be8
2e0404  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2e0408  e8 af 77 0e 00                 call   0x3c7bbc
2e040d  48 8b d0                       mov    rdx,rax
2e0410  48 8d 4d 87                    lea    rcx,[rbp-0x79]
2e0414  e8 97 f1 ff ff                 call   0x2df5b0
2e0419  84 c0                          test   al,al
2e041b  0f 85 26 02 00 00              jne    0x2e0647
2e0421  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
2e0425  e8 7a af fe ff                 call   0x2cb3a4
2e042a  f2 0f 10 45 87                 movsd  xmm0,QWORD PTR [rbp-0x79]
2e042f  4c 8d 0d 72 6e 0f 00           lea    r9,[rip+0xf6e72]        # 0x3d72a8
2e0436  8b 45 8f                       mov    eax,DWORD PTR [rbp-0x71]
2e0439  4c 8d 45 6f                    lea    r8,[rbp+0x6f]
2e043d  48 8d 55 97                    lea    rdx,[rbp-0x69]
2e0441  f2 0f 11 45 97                 movsd  QWORD PTR [rbp-0x69],xmm0
2e0446  49 8b cc                       mov    rcx,r12
2e0449  89 45 9f                       mov    DWORD PTR [rbp-0x61],eax
2e044c  e8 cf c8 08 00                 call   0x36cd20
2e0451  84 c0                          test   al,al
2e0453  75 0c                          jne    0x2e0461
2e0455  38 05 cd 79 0f 00              cmp    BYTE PTR [rip+0xf79cd],al        # 0x3d7e28 ; CONFIG Bools.autoenemy value(+0x48)
2e045b  0f 84 e6 01 00 00              je     0x2e0647
2e0461  8a d3                          mov    dl,bl
2e0463  48 8b cf                       mov    rcx,rdi
2e0466  e8 c1 ce fe ff                 call   0x2cd32c
2e046b  8a d3                          mov    dl,bl
2e046d  49 8b cd                       mov    rcx,r13
2e0470  4c 8b e0                       mov    r12,rax
2e0473  e8 b4 ce fe ff                 call   0x2cd32c
2e0478  4d 85 e4                       test   r12,r12
2e047b  74 0a                          je     0x2e0487
2e047d  4c 3b e0                       cmp    r12,rax
2e0480  75 05                          jne    0x2e0487
2e0482  41 b4 01                       mov    r12b,0x1
2e0485  eb 03                          jmp    0x2e048a
2e0487  45 32 e4                       xor    r12b,r12b
2e048a  44 8a c3                       mov    r8b,bl
2e048d  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2e0491  48 8b cf                       mov    rcx,rdi
2e0494  41 83 cf 01                    or     r15d,0x1
2e0498  e8 d3 99 08 00                 call   0x369e70
2e049d  48 8b d0                       mov    rdx,rax
2e04a0  48 8d 0d b9 6d 0f 00           lea    rcx,[rip+0xf6db9]        # 0x3d7260
2e04a7  e8 5c f1 ff ff                 call   0x2df608
2e04ac  83 78 24 01                    cmp    DWORD PTR [rax+0x24],0x1
2e04b0  74 05                          je     0x2e04b7
2e04b2  45 84 e4                       test   r12b,r12b
2e04b5  74 03                          je     0x2e04ba
2e04b7  41 b4 01                       mov    r12b,0x1
2e04ba  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2e04be  41 83 e7 fe                    and    r15d,0xfffffffe
2e04c2  e8 2d c0 fe ff                 call   0x2cc4f4
2e04c7  45 84 e4                       test   r12b,r12b
2e04ca  0f 85 73 01 00 00              jne    0x2e0643
2e04d0  44 8a c3                       mov    r8b,bl
2e04d3  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2e04d7  48 8b cf                       mov    rcx,rdi
2e04da  e8 91 99 08 00                 call   0x369e70
2e04df  48 8b d0                       mov    rdx,rax
2e04e2  48 8d 0d 77 6d 0f 00           lea    rcx,[rip+0xf6d77]        # 0x3d7260
2e04e9  e8 1a f1 ff ff                 call   0x2df608
2e04ee  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2e04f2  44 8b 60 24                    mov    r12d,DWORD PTR [rax+0x24]
2e04f6  e8 f9 bf fe ff                 call   0x2cc4f4
2e04fb  41 83 fc 02                    cmp    r12d,0x2
2e04ff  75 22                          jne    0x2e0523
2e0501  80 3d 20 79 0f 00 00           cmp    BYTE PTR [rip+0xf7920],0x0        # 0x3d7e28 ; CONFIG Bools.autoenemy value(+0x48)
2e0508  74 19                          je     0x2e0523
2e050a  80 3d 8f 6d 0f 00 00           cmp    BYTE PTR [rip+0xf6d8f],0x0        # 0x3d72a0
2e0511  75 10                          jne    0x2e0523
2e0513  48 8b cf                       mov    rcx,rdi
2e0516  e8 29 ad 08 00                 call   0x36b244
2e051b  84 c0                          test   al,al
2e051d  0f 84 20 01 00 00              je     0x2e0643
2e0523  80 3d 9e 79 0f 00 00           cmp    BYTE PTR [rip+0xf799e],0x0        # 0x3d7ec8 ; CONFIG Bools.Pierce value(+0x48)
2e052a  75 19                          jne    0x2e0545
2e052c  80 3d 55 78 0f 00 00           cmp    BYTE PTR [rip+0xf7855],0x0        # 0x3d7d88 ; CONFIG Bools.AimbotVischeck value(+0x48)
2e0533  74 10                          je     0x2e0545
2e0535  48 8b cf                       mov    rcx,rdi
2e0538  e8 07 ad 08 00                 call   0x36b244
2e053d  84 c0                          test   al,al
2e053f  0f 84 fe 00 00 00              je     0x2e0643
2e0545  48 8b cf                       mov    rcx,rdi
2e0548  e8 2b 9c 08 00                 call   0x36a178
2e054d  48 8b 4d 67                    mov    rcx,QWORD PTR [rbp+0x67]
2e0551  48 8d 55 b3                    lea    rdx,[rbp-0x4d]
2e0555  8a d8                          mov    bl,al
2e0557  e8 d8 c4 08 00                 call   0x36ca34
2e055c  48 8b c8                       mov    rcx,rax
2e055f  48 8d 55 87                    lea    rdx,[rbp-0x79]
2e0563  e8 c8 f9 ff ff                 call   0x2dff30
2e0568  84 db                          test   bl,bl
2e056a  74 0a                          je     0x2e0576
2e056c  66 0f 6e 0d 24 7c 0f 00        movd   xmm1,DWORD PTR [rip+0xf7c24]        # 0x3d8198 ; CONFIG i.ScientistMaxDistance value(+0x48)
2e0574  eb 08                          jmp    0x2e057e
2e0576  66 0f 6e 0d ca 7b 0f 00        movd   xmm1,DWORD PTR [rip+0xf7bca]        # 0x3d8148 ; CONFIG i.PlayerMaxDistance value(+0x48)
2e057e  0f 5b c9                       cvtdq2ps xmm1,xmm1
2e0581  0f 2f c1                       comiss xmm0,xmm1
2e0584  0f 87 b9 00 00 00              ja     0x2e0643
2e058a  e8 61 05 00 00                 call   0x2e0af0
2e058f  66 0f 6e f0                    movd   xmm6,eax
2e0593  0f 5b f6                       cvtdq2ps xmm6,xmm6
2e0596  f3 0f 59 35 b2 cc fa ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffffaccb2]        # 0x28d250 ; f32=0.5
2e059e  e8 4d 04 00 00                 call   0x2e09f0
2e05a3  0f 28 ce                       movaps xmm1,xmm6
2e05a6  48 8d 4d 77                    lea    rcx,[rbp+0x77]
2e05aa  66 0f 6e d0                    movd   xmm2,eax
2e05ae  0f 5b d2                       cvtdq2ps xmm2,xmm2
2e05b1  f3 0f 59 15 97 cc fa ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffffacc97]        # 0x28d250 ; f32=0.5
2e05b9  e8 82 bd fe ff                 call   0x2cc340
2e05be  f3 0f 10 45 7b                 movss  xmm0,DWORD PTR [rbp+0x7b]
2e05c3  bb 02 00 00 00                 mov    ebx,0x2
2e05c8  f3 0f 5c 45 73                 subss  xmm0,DWORD PTR [rbp+0x73]
2e05cd  8b d3                          mov    edx,ebx
2e05cf  e8 7c 36 00 00                 call   0x2e3c50
2e05d4  0f 28 f0                       movaps xmm6,xmm0
2e05d7  8b d3                          mov    edx,ebx
2e05d9  f3 0f 10 45 77                 movss  xmm0,DWORD PTR [rbp+0x77]
2e05de  f3 0f 5c 45 6f                 subss  xmm0,DWORD PTR [rbp+0x6f]
2e05e3  e8 68 36 00 00                 call   0x2e3c50
2e05e8  f3 0f 58 f0                    addss  xmm6,xmm0
2e05ec  0f 28 c6                       movaps xmm0,xmm6
2e05ef  e8 94 36 00 00                 call   0x2e3c88
2e05f4  80 3d 2d 78 0f 00 00           cmp    BYTE PTR [rip+0xf782d],0x0        # 0x3d7e28 ; CONFIG Bools.autoenemy value(+0x48)
2e05fb  0f 28 f0                       movaps xmm6,xmm0
2e05fe  74 15                          je     0x2e0615
2e0600  48 8b cf                       mov    rcx,rdi
2e0603  e8 3c ac 08 00                 call   0x36b244
2e0608  84 c0                          test   al,al
2e060a  74 09                          je     0x2e0615
2e060c  44 3b e3                       cmp    r12d,ebx
2e060f  75 04                          jne    0x2e0615
2e0611  b0 01                          mov    al,0x1
2e0613  eb 02                          jmp    0x2e0617
2e0615  32 c0                          xor    al,al
2e0617  0f 2f fe                       comiss xmm7,xmm6
2e061a  76 20                          jbe    0x2e063c
2e061c  84 c0                          test   al,al
2e061e  75 20                          jne    0x2e0640
2e0620  66 0f 6e 05 c0 7b 0f 00        movd   xmm0,DWORD PTR [rip+0xf7bc0]        # 0x3d81e8 ; CONFIG i.AimbotFOV value(+0x48)
2e0628  4c 8b 65 67                    mov    r12,QWORD PTR [rbp+0x67]
2e062c  0f 5b c0                       cvtdq2ps xmm0,xmm0
2e062f  0f 2f f0                       comiss xmm6,xmm0
2e0632  77 13                          ja     0x2e0647
2e0634  0f 28 fe                       movaps xmm7,xmm6
2e0637  48 8b f7                       mov    rsi,rdi
2e063a  eb 0b                          jmp    0x2e0647
2e063c  84 c0                          test   al,al
2e063e  74 03                          je     0x2e0643
2e0640  48 8b f7                       mov    rsi,rdi
2e0643  4c 8b 65 67                    mov    r12,QWORD PTR [rbp+0x67]
2e0647  49 83 c6 10                    add    r14,0x10
2e064b  4c 3b 75 7f                    cmp    r14,QWORD PTR [rbp+0x7f]
2e064f  0f 85 52 fd ff ff              jne    0x2e03a7
2e0655  48 8d 4d bf                    lea    rcx,[rbp-0x41]
2e0659  e8 22 ee ff ff                 call   0x2df480
2e065e  48 85 f6                       test   rsi,rsi
2e0661  74 07                          je     0x2e066a
2e0663  48 89 35 26 38 10 00           mov    QWORD PTR [rip+0x103826],rsi        # 0x3e3e90
2e066a  48 8b c6                       mov    rax,rsi
2e066d  eb 09                          jmp    0x2e0678
2e066f  4c 89 3d 1a 38 10 00           mov    QWORD PTR [rip+0x10381a],r15        # 0x3e3e90
2e0676  33 c0                          xor    eax,eax
2e0678  4c 8d 9c 24 b8 00 00 00        lea    r11,[rsp+0xb8]
2e0680  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
2e0685  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
2e068a  49 8b e3                       mov    rsp,r11
2e068d  41 5f                          pop    r15
2e068f  41 5e                          pop    r14
2e0691  41 5d                          pop    r13
2e0693  41 5c                          pop    r12
2e0695  5f                             pop    rdi
2e0696  5e                             pop    rsi
2e0697  5b                             pop    rbx
2e0698  5d                             pop    rbp
2e0699  c3                             ret

; pdata function 0x2f80bc..0x2f817e unwind=0x3d2fc8
2f80bc  40 53                          rex push rbx
2f80be  48 83 ec 50                    sub    rsp,0x50
2f80c2  48 8b c2                       mov    rax,rdx
2f80c5  0f 29 7c 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm7
2f80ca  48 8b d9                       mov    rbx,rcx
2f80cd  44 0f 29 44 24 30              movaps XMMWORD PTR [rsp+0x30],xmm8
2f80d3  48 8b c8                       mov    rcx,rax
2f80d6  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2f80db  e8 ec 75 fe ff                 call   0x2df6cc
2f80e0  f3 0f 10 44 24 24              movss  xmm0,DWORD PTR [rsp+0x24]
2f80e6  f3 0f 10 4c 24 20              movss  xmm1,DWORD PTR [rsp+0x20]
2f80ec  f3 0f 10 54 24 28              movss  xmm2,DWORD PTR [rsp+0x28]
2f80f2  f3 0f 59 c0                    mulss  xmm0,xmm0
2f80f6  f3 0f 59 c9                    mulss  xmm1,xmm1
2f80fa  f3 0f 59 d2                    mulss  xmm2,xmm2
2f80fe  f3 0f 58 c1                    addss  xmm0,xmm1
2f8102  f3 0f 58 c2                    addss  xmm0,xmm2
2f8106  e8 7d bb fe ff                 call   0x2e3c88
2f810b  44 0f 28 c0                    movaps xmm8,xmm0
2f810f  f3 0f 10 44 24 24              movss  xmm0,DWORD PTR [rsp+0x24]
2f8115  e8 f2 0c 0d 00                 call   0x3c8e0c
2f811a  f3 0f 10 4c 24 28              movss  xmm1,DWORD PTR [rsp+0x28]
2f8120  0f 57 0d 79 b1 f9 ff           xorps  xmm1,XMMWORD PTR [rip+0xfffffffffff9b179]        # 0x2932a0
2f8127  f3 0f 10 44 24 20              movss  xmm0,DWORD PTR [rsp+0x20]
2f812d  e8 f2 27 02 00                 call   0x31a924
2f8132  0f 28 f8                       movaps xmm7,xmm0
2f8135  f3 0f 10 44 24 24              movss  xmm0,DWORD PTR [rsp+0x24]
2f813b  0f 57 3d 5e b1 f9 ff           xorps  xmm7,XMMWORD PTR [rip+0xfffffffffff9b15e]        # 0x2932a0
2f8142  f3 0f 59 3d aa b0 f9 ff        mulss  xmm7,DWORD PTR [rip+0xfffffffffff9b0aa]        # 0x2931f4 ; f32=57.2958
2f814a  f3 41 0f 5e c0                 divss  xmm0,xmm8
2f814f  e8 90 27 02 00                 call   0x31a8e4
2f8154  f3 0f 59 05 98 b0 f9 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff9b098]        # 0x2931f4 ; f32=57.2958
2f815c  0f 28 d7                       movaps xmm2,xmm7
2f815f  48 8b cb                       mov    rcx,rbx
2f8162  0f 28 c8                       movaps xmm1,xmm0
2f8165  e8 d6 41 fd ff                 call   0x2cc340
2f816a  0f 28 7c 24 40                 movaps xmm7,XMMWORD PTR [rsp+0x40]
2f816f  48 8b c3                       mov    rax,rbx
2f8172  44 0f 28 44 24 30              movaps xmm8,XMMWORD PTR [rsp+0x30]
2f8178  48 83 c4 50                    add    rsp,0x50
2f817c  5b                             pop    rbx
2f817d  c3                             ret

; heuristic leaf/code range 0x316fd0..0x31703c unwind=0x0
316fd0  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
316fd4  f3 0f 10 0d 50 c2 f7 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff7c250]        # 0x29322c ; f32=180
316fdc  0f 2f c1                       comiss xmm0,xmm1
316fdf  f3 0f 10 1d 59 c2 f7 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff7c259]        # 0x293240 ; f32=360
316fe7  76 0d                          jbe    0x316ff6
316fe9  f3 0f 5c c3                    subss  xmm0,xmm3
316fed  0f 2f c1                       comiss xmm0,xmm1
316ff0  77 f7                          ja     0x316fe9
316ff2  f3 0f 11 01                    movss  DWORD PTR [rcx],xmm0
316ff6  f3 0f 10 15 6e c2 f7 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff7c26e]        # 0x29326c ; f32=-180
316ffe  0f 2f d0                       comiss xmm2,xmm0
317001  76 0d                          jbe    0x317010
317003  f3 0f 58 c3                    addss  xmm0,xmm3
317007  0f 2f d0                       comiss xmm2,xmm0
31700a  77 f7                          ja     0x317003
31700c  f3 0f 11 01                    movss  DWORD PTR [rcx],xmm0
317010  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
317015  0f 2f c1                       comiss xmm0,xmm1
317018  76 0e                          jbe    0x317028
31701a  f3 0f 5c c3                    subss  xmm0,xmm3
31701e  0f 2f c1                       comiss xmm0,xmm1
317021  77 f7                          ja     0x31701a
317023  f3 0f 11 41 04                 movss  DWORD PTR [rcx+0x4],xmm0
317028  0f 2f d0                       comiss xmm2,xmm0
31702b  76 0e                          jbe    0x31703b
31702d  f3 0f 58 c3                    addss  xmm0,xmm3
317031  0f 2f d0                       comiss xmm2,xmm0
317034  77 f7                          ja     0x31702d
317036  f3 0f 11 41 04                 movss  DWORD PTR [rcx+0x4],xmm0
31703b  c3                             ret

; pdata function 0x2ef814..0x2ef834 unwind=0x3d2038
2ef814  40 53                          rex push rbx
2ef816  48 83 ec 20                    sub    rsp,0x20
2ef81a  48 8b d9                       mov    rbx,rcx
2ef81d  48 8b d1                       mov    rdx,rcx
2ef820  49 8b c8                       mov    rcx,r8
2ef823  0f 28 d1                       movaps xmm2,xmm1
2ef826  e8 19 fe fe ff                 call   0x2df644
2ef82b  48 8b c3                       mov    rax,rbx
2ef82e  48 83 c4 20                    add    rsp,0x20
2ef832  5b                             pop    rbx
2ef833  c3                             ret

; heuristic leaf/code range 0x2f84e8..0x2f8540 unwind=0x0
2f84e8  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2f84ec  f3 0f 10 15 38 ad f9 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff9ad38]        # 0x29322c ; f32=180
2f84f4  0f 2f c2                       comiss xmm0,xmm2
2f84f7  f3 0f 10 0d 41 ad f9 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff9ad41]        # 0x293240 ; f32=360
2f84ff  76 08                          jbe    0x2f8509
2f8501  f3 0f 5c c1                    subss  xmm0,xmm1
2f8505  f3 0f 11 01                    movss  DWORD PTR [rcx],xmm0
2f8509  f3 0f 10 1d 5b ad f9 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff9ad5b]        # 0x29326c ; f32=-180
2f8511  0f 2f d8                       comiss xmm3,xmm0
2f8514  76 08                          jbe    0x2f851e
2f8516  f3 0f 58 c1                    addss  xmm0,xmm1
2f851a  f3 0f 11 01                    movss  DWORD PTR [rcx],xmm0
2f851e  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2f8523  0f 2f c2                       comiss xmm0,xmm2
2f8526  76 09                          jbe    0x2f8531
2f8528  f3 0f 5c c1                    subss  xmm0,xmm1
2f852c  f3 0f 11 41 04                 movss  DWORD PTR [rcx+0x4],xmm0
2f8531  0f 2f d8                       comiss xmm3,xmm0
2f8534  76 09                          jbe    0x2f853f
2f8536  f3 0f 58 c1                    addss  xmm0,xmm1
2f853a  f3 0f 11 41 04                 movss  DWORD PTR [rcx+0x4],xmm0
2f853f  c3                             ret

; heuristic leaf/code range 0x2ed2ac..0x2ed2b4 unwind=0x0
2ed2ac  45 33 c9                       xor    r9d,r9d
2ed2af  e9 00 00 00 00                 jmp    0x2ed2b4

; pdata function 0x36bc14..0x36be9a unwind=0x3d3f64
36bc14  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36bc19  48 89 6c 24 10                 mov    QWORD PTR [rsp+0x10],rbp
36bc1e  56                             push   rsi
36bc1f  57                             push   rdi
36bc20  41 56                          push   r14
36bc22  48 83 ec 40                    sub    rsp,0x40
36bc26  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
36bc2b  4d 8b f0                       mov    r14,r8
36bc2e  40 8a ea                       mov    bpl,dl
36bc31  48 8b f1                       mov    rsi,rcx
36bc34  e8 cf f2 f5 ff                 call   0x2caf08
36bc39  84 c0                          test   al,al
36bc3b  0f 84 41 02 00 00              je     0x36be82
36bc41  48 8b ce                       mov    rcx,rsi
36bc44  e8 1f ba ff ff                 call   0x367668
36bc49  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
36bc4e  89 44 24 78                    mov    DWORD PTR [rsp+0x78],eax
36bc52  48 8d 0d b7 a2 07 00           lea    rcx,[rip+0x7a2b7]        # 0x3e5f10
36bc59  e8 c6 3a f8 ff                 call   0x2ef724
36bc5e  48 8b f8                       mov    rdi,rax
36bc61  48 85 c0                       test   rax,rax
36bc64  0f 84 18 02 00 00              je     0x36be82
36bc6a  48 8b 9e 20 04 00 00           mov    rbx,QWORD PTR [rsi+0x420]
36bc71  48 8b cb                       mov    rcx,rbx
36bc74  e8 8f f2 f5 ff                 call   0x2caf08
36bc79  84 c0                          test   al,al
36bc7b  0f 84 01 02 00 00              je     0x36be82
36bc81  48 8b 93 80 00 00 00           mov    rdx,QWORD PTR [rbx+0x80]
36bc88  48 8b ca                       mov    rcx,rdx
36bc8b  e8 78 f2 f5 ff                 call   0x2caf08
36bc90  84 c0                          test   al,al
36bc92  48 0f 45 da                    cmovne rbx,rdx
36bc96  80 7f 14 00                    cmp    BYTE PTR [rdi+0x14],0x0
36bc9a  75 46                          jne    0x36bce2
36bc9c  8b 86 04 03 00 00              mov    eax,DWORD PTR [rsi+0x304]
36bca2  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36bca7  89 47 10                       mov    DWORD PTR [rdi+0x10],eax
36bcaa  f3 0f 10 53 24                 movss  xmm2,DWORD PTR [rbx+0x24]
36bcaf  f3 0f 10 4b 20                 movss  xmm1,DWORD PTR [rbx+0x20]
36bcb4  e8 87 06 f6 ff                 call   0x2cc340
36bcb9  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36bcbe  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36bcc2  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
36bcc6  f3 0f 10 53 1c                 movss  xmm2,DWORD PTR [rbx+0x1c]
36bccb  f3 0f 10 4b 18                 movss  xmm1,DWORD PTR [rbx+0x18]
36bcd0  e8 6b 06 f6 ff                 call   0x2cc340
36bcd5  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36bcd9  f2 0f 11 47 08                 movsd  QWORD PTR [rdi+0x8],xmm0
36bcde  c6 47 14 01                    mov    BYTE PTR [rdi+0x14],0x1
36bce2  49 8b ce                       mov    rcx,r14
36bce5  e8 1e f2 f5 ff                 call   0x2caf08
36bcea  84 c0                          test   al,al
36bcec  0f 84 90 01 00 00              je     0x36be82
36bcf2  49 8b ce                       mov    rcx,r14
36bcf5  e8 3e da ff ff                 call   0x369738
36bcfa  48 8b c8                       mov    rcx,rax
36bcfd  4c 8b c0                       mov    r8,rax
36bd00  e8 03 f2 f5 ff                 call   0x2caf08
36bd05  84 c0                          test   al,al
36bd07  0f 84 75 01 00 00              je     0x36be82
36bd0d  8a 15 45 09 09 00              mov    dl,BYTE PTR [rip+0x90945]        # 0x3fc658 ; CONFIG Bools.RageRecoil value(+0x48)
36bd13  f3 0f 10 35 29 1e f2 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff21e29]        # 0x28db44 ; f32=100
36bd1b  84 d2                          test   dl,dl
36bd1d  0f 85 a0 00 00 00              jne    0x36bdc3
36bd23  40 84 ed                       test   bpl,bpl
36bd26  0f 84 97 00 00 00              je     0x36bdc3
36bd2c  38 15 c6 74 08 00              cmp    BYTE PTR [rip+0x874c6],dl        # 0x3f31f8 ; CONFIG Bools.recoilmod value(+0x48)
36bd32  0f 84 8b 00 00 00              je     0x36bdc3
36bd38  66 0f 6e 05 58 13 09 00        movd   xmm0,DWORD PTR [rip+0x91358]        # 0x3fd098 ; CONFIG i.Recoilpercent1 value(+0x48)
36bd40  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36bd45  f3 0f 10 0d 07 15 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff21507]        # 0x28d254 ; f32=1
36bd4d  f3 41 0f 10 50 48              movss  xmm2,DWORD PTR [r8+0x48]
36bd53  0f 5b c0                       cvtdq2ps xmm0,xmm0
36bd56  f3 0f 5e c6                    divss  xmm0,xmm6
36bd5a  f3 0f 5c c8                    subss  xmm1,xmm0
36bd5e  66 0f 6e 05 e2 12 09 00        movd   xmm0,DWORD PTR [rip+0x912e2]        # 0x3fd048 ; CONFIG i.Recoilpercent value(+0x48)
36bd66  0f 5b c0                       cvtdq2ps xmm0,xmm0
36bd69  f3 0f 59 8e 24 02 00 00        mulss  xmm1,DWORD PTR [rsi+0x224]
36bd71  f3 0f 5e c6                    divss  xmm0,xmm6
36bd75  f3 0f 5c d1                    subss  xmm2,xmm1
36bd79  f3 0f 10 0d d3 14 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff214d3]        # 0x28d254 ; f32=1
36bd81  f3 0f 5c c8                    subss  xmm1,xmm0
36bd85  f3 41 0f 10 40 44              movss  xmm0,DWORD PTR [r8+0x44]
36bd8b  f3 0f 59 8e 20 02 00 00        mulss  xmm1,DWORD PTR [rsi+0x220]
36bd93  f3 41 0f 11 50 48              movss  DWORD PTR [r8+0x48],xmm2
36bd99  f3 0f 5c c1                    subss  xmm0,xmm1
36bd9d  f3 41 0f 11 40 44              movss  DWORD PTR [r8+0x44],xmm0
36bda3  e8 14 be 05 00                 call   0x3c7bbc
36bda8  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36bdac  f2 0f 11 86 20 02 00 00        movsd  QWORD PTR [rsi+0x220],xmm0
36bdb4  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
36bdb7  89 86 28 02 00 00              mov    DWORD PTR [rsi+0x228],eax
36bdbd  8a 15 95 08 09 00              mov    dl,BYTE PTR [rip+0x90895]        # 0x3fc658 ; CONFIG Bools.RageRecoil value(+0x48)
36bdc3  48 8b cb                       mov    rcx,rbx
36bdc6  e8 3d f1 f5 ff                 call   0x2caf08
36bdcb  84 c0                          test   al,al
36bdcd  0f 84 af 00 00 00              je     0x36be82
36bdd3  40 84 ed                       test   bpl,bpl
36bdd6  74 11                          je     0x36bde9
36bdd8  84 d2                          test   dl,dl
36bdda  74 0d                          je     0x36bde9
36bddc  66 0f 6e 05 b4 12 09 00        movd   xmm0,DWORD PTR [rip+0x912b4]        # 0x3fd098 ; CONFIG i.Recoilpercent1 value(+0x48)
36bde4  0f 5b c0                       cvtdq2ps xmm0,xmm0
36bde7  eb 03                          jmp    0x36bdec
36bde9  0f 28 c6                       movaps xmm0,xmm6
36bdec  0f 57 e4                       xorps  xmm4,xmm4
36bdef  0f 2f c4                       comiss xmm0,xmm4
36bdf2  76 27                          jbe    0x36be1b
36bdf4  f3 0f 10 15 58 14 f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff21458]        # 0x28d254 ; f32=1
36bdfc  0f 57 c9                       xorps  xmm1,xmm1
36bdff  f3 0f 5e c6                    divss  xmm0,xmm6
36be03  e8 3c 9c f7 ff                 call   0x2e5a44
36be08  0f 28 d8                       movaps xmm3,xmm0
36be0b  f3 0f 59 1f                    mulss  xmm3,DWORD PTR [rdi]
36be0f  f3 0f 11 5b 20                 movss  DWORD PTR [rbx+0x20],xmm3
36be14  f3 0f 59 47 04                 mulss  xmm0,DWORD PTR [rdi+0x4]
36be19  eb 0a                          jmp    0x36be25
36be1b  c7 43 20 00 00 00 00           mov    DWORD PTR [rbx+0x20],0x0
36be22  0f 57 c0                       xorps  xmm0,xmm0
36be25  f3 0f 11 43 24                 movss  DWORD PTR [rbx+0x24],xmm0
36be2a  40 84 ed                       test   bpl,bpl
36be2d  74 16                          je     0x36be45
36be2f  80 3d 22 08 09 00 00           cmp    BYTE PTR [rip+0x90822],0x0        # 0x3fc658 ; CONFIG Bools.RageRecoil value(+0x48)
36be36  74 0d                          je     0x36be45
36be38  66 0f 6e 05 08 12 09 00        movd   xmm0,DWORD PTR [rip+0x91208]        # 0x3fd048 ; CONFIG i.Recoilpercent value(+0x48)
36be40  0f 5b c0                       cvtdq2ps xmm0,xmm0
36be43  eb 03                          jmp    0x36be48
36be45  0f 28 c6                       movaps xmm0,xmm6
36be48  0f 2f c4                       comiss xmm0,xmm4
36be4b  76 2d                          jbe    0x36be7a
36be4d  f3 0f 10 15 ff 13 f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff213ff]        # 0x28d254 ; f32=1
36be55  0f 57 c9                       xorps  xmm1,xmm1
36be58  f3 0f 5e c6                    divss  xmm0,xmm6
36be5c  e8 e3 9b f7 ff                 call   0x2e5a44
36be61  0f 28 d8                       movaps xmm3,xmm0
36be64  f3 0f 59 5f 08                 mulss  xmm3,DWORD PTR [rdi+0x8]
36be69  f3 0f 11 5b 18                 movss  DWORD PTR [rbx+0x18],xmm3
36be6e  f3 0f 59 47 0c                 mulss  xmm0,DWORD PTR [rdi+0xc]
36be73  f3 0f 11 43 1c                 movss  DWORD PTR [rbx+0x1c],xmm0
36be78  eb 08                          jmp    0x36be82
36be7a  48 c7 43 18 00 00 00 00        mov    QWORD PTR [rbx+0x18],0x0
36be82  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
36be87  48 8b 6c 24 68                 mov    rbp,QWORD PTR [rsp+0x68]
36be8c  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
36be91  48 83 c4 40                    add    rsp,0x40
36be95  41 5e                          pop    r14
36be97  5f                             pop    rdi
36be98  5e                             pop    rsi
36be99  c3                             ret

; pdata function 0x36b434..0x36b457 unwind=0x3d2064
36b434  48 83 ec 28                    sub    rsp,0x28
36b438  48 8b d1                       mov    rdx,rcx
36b43b  e8 c8 fa f5 ff                 call   0x2caf08
36b440  84 c0                          test   al,al
36b442  74 0e                          je     0x36b452
36b444  c6 82 57 04 00 00 00           mov    BYTE PTR [rdx+0x457],0x0
36b44b  c6 82 b0 03 00 00 01           mov    BYTE PTR [rdx+0x3b0],0x1
36b452  48 83 c4 28                    add    rsp,0x28
36b456  c3                             ret

; pdata function 0x36be9c..0x36bebc unwind=0x3d2064
36be9c  48 83 ec 28                    sub    rsp,0x28
36bea0  48 8b d1                       mov    rdx,rcx
36bea3  e8 60 f0 f5 ff                 call   0x2caf08
36bea8  84 c0                          test   al,al
36beaa  74 0b                          je     0x36beb7
36beac  48 c7 82 18 04 00 00 00 00 00 00 mov    QWORD PTR [rdx+0x418],0x0
36beb7  48 83 c4 28                    add    rsp,0x28
36bebb  c3                             ret

; pdata function 0x371464..0x3714c2 unwind=0x3d2040
371464  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
371469  57                             push   rdi
37146a  48 83 ec 20                    sub    rsp,0x20
37146e  48 8b d9                       mov    rbx,rcx
371471  e8 92 9a f5 ff                 call   0x2caf08
371476  84 c0                          test   al,al
371478  74 3b                          je     0x3714b5
37147a  48 8b cb                       mov    rcx,rbx
37147d  e8 ca 00 00 00                 call   0x37154c
371482  48 8b c8                       mov    rcx,rax
371485  48 8b f8                       mov    rdi,rax
371488  e8 7b 9a f5 ff                 call   0x2caf08
37148d  84 c0                          test   al,al
37148f  74 24                          je     0x3714b5
371491  48 8b cf                       mov    rcx,rdi
371494  e8 83 11 00 00                 call   0x37261c
371499  8b c8                          mov    ecx,eax
37149b  e8 48 05 00 00                 call   0x3719e8
3714a0  84 c0                          test   al,al
3714a2  74 11                          je     0x3714b5
3714a4  48 8b cf                       mov    rcx,rdi
3714a7  e8 c0 0e 00 00                 call   0x37236c
3714ac  85 c0                          test   eax,eax
3714ae  75 05                          jne    0x3714b5
3714b0  48 8b c3                       mov    rax,rbx
3714b3  eb 02                          jmp    0x3714b7
3714b5  33 c0                          xor    eax,eax
3714b7  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3714bc  48 83 c4 20                    add    rsp,0x20
3714c0  5f                             pop    rdi
3714c1  c3                             ret

; pdata function 0x3721b4..0x37221f unwind=0x3d2040
3721b4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3721b9  57                             push   rdi
3721ba  48 83 ec 20                    sub    rsp,0x20
3721be  48 8b f9                       mov    rdi,rcx
3721c1  e8 42 8d f5 ff                 call   0x2caf08
3721c6  84 c0                          test   al,al
3721c8  74 48                          je     0x372212
3721ca  48 8b cf                       mov    rcx,rdi
3721cd  e8 7a f3 ff ff                 call   0x37154c
3721d2  48 8b c8                       mov    rcx,rax
3721d5  48 8b d8                       mov    rbx,rax
3721d8  e8 2b 8d f5 ff                 call   0x2caf08
3721dd  84 c0                          test   al,al
3721df  74 31                          je     0x372212
3721e1  48 8b cb                       mov    rcx,rbx
3721e4  e8 33 04 00 00                 call   0x37261c
3721e9  8b c8                          mov    ecx,eax
3721eb  e8 38 f6 ff ff                 call   0x371828
3721f0  84 c0                          test   al,al
3721f2  74 1e                          je     0x372212
3721f4  48 8b cb                       mov    rcx,rbx
3721f7  e8 70 01 00 00                 call   0x37236c
3721fc  85 c0                          test   eax,eax
3721fe  74 0d                          je     0x37220d
372200  48 8b cb                       mov    rcx,rbx
372203  e8 64 01 00 00                 call   0x37236c
372208  83 f8 05                       cmp    eax,0x5
37220b  75 05                          jne    0x372212
37220d  48 8b c7                       mov    rax,rdi
372210  eb 02                          jmp    0x372214
372212  33 c0                          xor    eax,eax
372214  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
372219  48 83 c4 20                    add    rsp,0x20
37221d  5f                             pop    rdi
37221e  c3                             ret

; pdata function 0x371eb8..0x371f24 unwind=0x3d2040
371eb8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
371ebd  57                             push   rdi
371ebe  48 83 ec 20                    sub    rsp,0x20
371ec2  48 8b d9                       mov    rbx,rcx
371ec5  e8 3e 90 f5 ff                 call   0x2caf08
371eca  84 c0                          test   al,al
371ecc  74 49                          je     0x371f17
371ece  48 8b cb                       mov    rcx,rbx
371ed1  e8 76 f6 ff ff                 call   0x37154c
371ed6  48 8b c8                       mov    rcx,rax
371ed9  48 8b f8                       mov    rdi,rax
371edc  e8 27 90 f5 ff                 call   0x2caf08
371ee1  84 c0                          test   al,al
371ee3  74 32                          je     0x371f17
371ee5  48 8b cf                       mov    rcx,rdi
371ee8  e8 2f 07 00 00                 call   0x37261c
371eed  3d 7c e8 65 1a                 cmp    eax,0x1a65e87c
371ef2  74 0e                          je     0x371f02
371ef4  3d 5b 8a 8f b1                 cmp    eax,0xb18f8a5b
371ef9  74 07                          je     0x371f02
371efb  3d 60 26 09 bd                 cmp    eax,0xbd092660
371f00  75 15                          jne    0x371f17
371f02  48 8b cf                       mov    rcx,rdi
371f05  e8 62 04 00 00                 call   0x37236c
371f0a  33 c9                          xor    ecx,ecx
371f0c  85 c0                          test   eax,eax
371f0e  48 0f 45 d9                    cmovne rbx,rcx
371f12  48 8b c3                       mov    rax,rbx
371f15  eb 02                          jmp    0x371f19
371f17  33 c0                          xor    eax,eax
371f19  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
371f1e  48 83 c4 20                    add    rsp,0x20
371f22  5f                             pop    rdi
371f23  c3                             ret

; pdata function 0x3716e0..0x371761 unwind=0x3d2040
3716e0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3716e5  57                             push   rdi
3716e6  48 83 ec 20                    sub    rsp,0x20
3716ea  48 8b d9                       mov    rbx,rcx
3716ed  e8 16 98 f5 ff                 call   0x2caf08
3716f2  84 c0                          test   al,al
3716f4  74 5e                          je     0x371754
3716f6  48 8b cb                       mov    rcx,rbx
3716f9  e8 4e fe ff ff                 call   0x37154c
3716fe  48 8b c8                       mov    rcx,rax
371701  48 8b f8                       mov    rdi,rax
371704  e8 ff 97 f5 ff                 call   0x2caf08
371709  84 c0                          test   al,al
37170b  74 47                          je     0x371754
37170d  48 8b cf                       mov    rcx,rdi
371710  e8 07 0f 00 00                 call   0x37261c
371715  3d 8f 44 92 08                 cmp    eax,0x892448f
37171a  74 23                          je     0x37173f
37171c  3d 4c 42 c4 5c                 cmp    eax,0x5cc4424c
371721  74 1c                          je     0x37173f
371723  3d 0a b7 b8 6d                 cmp    eax,0x6db8b70a
371728  74 15                          je     0x37173f
37172a  3d ca b4 27 c8                 cmp    eax,0xc827b4ca
37172f  74 0e                          je     0x37173f
371731  3d 6b 53 45 53                 cmp    eax,0x5345536b
371736  74 07                          je     0x37173f
371738  3d 23 e4 55 4b                 cmp    eax,0x4b55e423
37173d  75 15                          jne    0x371754
37173f  48 8b cf                       mov    rcx,rdi
371742  e8 25 0c 00 00                 call   0x37236c
371747  33 c9                          xor    ecx,ecx
371749  85 c0                          test   eax,eax
37174b  48 0f 45 d9                    cmovne rbx,rcx
37174f  48 8b c3                       mov    rax,rbx
371752  eb 02                          jmp    0x371756
371754  33 c0                          xor    eax,eax
371756  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
37175b  48 83 c4 20                    add    rsp,0x20
37175f  5f                             pop    rdi
371760  c3                             ret

; pdata function 0x371630..0x371685 unwind=0x3d2534
371630  40 53                          rex push rbx
371632  48 83 ec 50                    sub    rsp,0x50
371636  48 8b d1                       mov    rdx,rcx
371639  e8 ca 98 f5 ff                 call   0x2caf08
37163e  84 c0                          test   al,al
371640  74 3b                          je     0x37167d
371642  48 8b ca                       mov    rcx,rdx
371645  e8 02 ff ff ff                 call   0x37154c
37164a  48 8b c8                       mov    rcx,rax
37164d  48 8b d8                       mov    rbx,rax
371650  e8 b3 98 f5 ff                 call   0x2caf08
371655  84 c0                          test   al,al
371657  74 24                          je     0x37167d
371659  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
37165e  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
371663  e8 b0 fb ff ff                 call   0x371218 ; STRING getter=0x371218 ItemModProjectile, Assembly-CSharp
371668  48 8b c8                       mov    rcx,rax
37166b  e8 9c 0a fb ff                 call   0x32210c
371670  48 8b d0                       mov    rdx,rax
371673  48 8b cb                       mov    rcx,rbx
371676  e8 71 ed ff ff                 call   0x3703ec
37167b  eb 02                          jmp    0x37167f
37167d  33 c0                          xor    eax,eax
37167f  48 83 c4 50                    add    rsp,0x50
371683  5b                             pop    rbx
371684  c3                             ret

; pdata function 0x372abc..0x372b2f unwind=0x3d20e4
372abc  40 53                          rex push rbx
372abe  48 83 ec 40                    sub    rsp,0x40
372ac2  48 8b d1                       mov    rdx,rcx
372ac5  e8 3e 84 f5 ff                 call   0x2caf08
372aca  84 c0                          test   al,al
372acc  74 59                          je     0x372b27
372ace  4c 8b 42 20                    mov    r8,QWORD PTR [rdx+0x20]
372ad2  49 8b c8                       mov    rcx,r8
372ad5  e8 2e 84 f5 ff                 call   0x2caf08
372ada  84 c0                          test   al,al
372adc  74 49                          je     0x372b27
372ade  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372ae2  e8 21 84 f5 ff                 call   0x2caf08
372ae7  84 c0                          test   al,al
372ae9  74 3c                          je     0x372b27
372aeb  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372aef  e8 60 fc ff ff                 call   0x372754
372af4  48 8b c8                       mov    rcx,rax
372af7  48 8b d8                       mov    rbx,rax
372afa  e8 09 84 f5 ff                 call   0x2caf08
372aff  84 c0                          test   al,al
372b01  74 24                          je     0x372b27
372b03  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
372b08  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
372b0d  e8 62 fb ff ff                 call   0x372674 ; STRING getter=0x372674 Projectile, Assembly-CSharp
372b12  48 8b c8                       mov    rcx,rax
372b15  e8 6a da fa ff                 call   0x320584
372b1a  48 8b d0                       mov    rdx,rax
372b1d  48 8b cb                       mov    rcx,rbx
372b20  e8 13 db ff ff                 call   0x370638
372b25  eb 02                          jmp    0x372b29
372b27  33 c0                          xor    eax,eax
372b29  48 83 c4 40                    add    rsp,0x40
372b2d  5b                             pop    rbx
372b2e  c3                             ret

; pdata function 0x372b30..0x372ba3 unwind=0x3d2534
372b30  40 53                          rex push rbx
372b32  48 83 ec 50                    sub    rsp,0x50
372b36  48 8b d1                       mov    rdx,rcx
372b39  e8 ca 83 f5 ff                 call   0x2caf08
372b3e  84 c0                          test   al,al
372b40  74 59                          je     0x372b9b
372b42  4c 8b 42 20                    mov    r8,QWORD PTR [rdx+0x20]
372b46  49 8b c8                       mov    rcx,r8
372b49  e8 ba 83 f5 ff                 call   0x2caf08
372b4e  84 c0                          test   al,al
372b50  74 49                          je     0x372b9b
372b52  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372b56  e8 ad 83 f5 ff                 call   0x2caf08
372b5b  84 c0                          test   al,al
372b5d  74 3c                          je     0x372b9b
372b5f  49 8b 48 10                    mov    rcx,QWORD PTR [r8+0x10]
372b63  e8 ec fb ff ff                 call   0x372754
372b68  48 8b c8                       mov    rcx,rax
372b6b  48 8b d8                       mov    rbx,rax
372b6e  e8 95 83 f5 ff                 call   0x2caf08
372b73  84 c0                          test   al,al
372b75  74 24                          je     0x372b9b
372b77  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
372b7c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
372b81  e8 0a fb ff ff                 call   0x372690 ; STRING getter=0x372690 ServerProjectile, Assembly-CSharp
372b86  48 8b c8                       mov    rcx,rax
372b89  e8 f6 f6 fb ff                 call   0x332284
372b8e  48 8b d0                       mov    rdx,rax
372b91  48 8b cb                       mov    rcx,rbx
372b94  e8 9f da ff ff                 call   0x370638
372b99  eb 02                          jmp    0x372b9d
372b9b  33 c0                          xor    eax,eax
372b9d  48 83 c4 50                    add    rsp,0x50
372ba1  5b                             pop    rbx
372ba2  c3                             ret

; pdata function 0x36b938..0x36b99d unwind=0x3d2534
36b938  40 53                          rex push rbx
36b93a  48 83 ec 50                    sub    rsp,0x50
36b93e  48 8b d1                       mov    rdx,rcx
36b941  e8 c2 f5 f5 ff                 call   0x2caf08
36b946  84 c0                          test   al,al
36b948  74 4b                          je     0x36b995
36b94a  48 8b ca                       mov    rcx,rdx
36b94d  e8 62 0a 00 00                 call   0x36c3b4
36b952  48 8b c8                       mov    rcx,rax
36b955  48 8b d0                       mov    rdx,rax
36b958  e8 ab f5 f5 ff                 call   0x2caf08
36b95d  84 c0                          test   al,al
36b95f  74 34                          je     0x36b995
36b961  48 8b 5a 20                    mov    rbx,QWORD PTR [rdx+0x20]
36b965  48 8b cb                       mov    rcx,rbx
36b968  e8 9b f5 f5 ff                 call   0x2caf08
36b96d  84 c0                          test   al,al
36b96f  74 24                          je     0x36b995
36b971  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
36b976  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
36b97b  e8 00 fa ff ff                 call   0x36b380 ; STRING getter=0x36b380 ItemModProjectile, Assembly-CSharp
36b980  48 8b c8                       mov    rcx,rax
36b983  e8 84 67 fb ff                 call   0x32210c
36b988  48 8b d0                       mov    rdx,rax
36b98b  48 8b cb                       mov    rcx,rbx
36b98e  e8 59 4a 00 00                 call   0x3703ec
36b993  eb 02                          jmp    0x36b997
36b995  33 c0                          xor    eax,eax
36b997  48 83 c4 50                    add    rsp,0x50
36b99b  5b                             pop    rbx
36b99c  c3                             ret

