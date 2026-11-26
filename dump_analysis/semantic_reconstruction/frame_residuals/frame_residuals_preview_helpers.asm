; heuristic leaf/code range 0x2ef6c4..0x2ef6df unwind=0x0
2ef6c4  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
2ef6c8  0f 2e 02                       ucomiss xmm0,DWORD PTR [rdx]
2ef6cb  7a 12                          jp     0x2ef6df
2ef6cd  75 10                          jne    0x2ef6df
2ef6cf  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2ef6d4  0f 2e 42 04                    ucomiss xmm0,DWORD PTR [rdx+0x4]
2ef6d8  7a 05                          jp     0x2ef6df
2ef6da  75 03                          jne    0x2ef6df
2ef6dc  32 c0                          xor    al,al
2ef6de  c3                             ret

; pdata function 0x37d394..0x37d7af unwind=0x3d42e4
37d394  48 8b c4                       mov    rax,rsp
37d397  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
37d39b  4c 89 40 18                    mov    QWORD PTR [rax+0x18],r8
37d39f  55                             push   rbp
37d3a0  56                             push   rsi
37d3a1  57                             push   rdi
37d3a2  41 54                          push   r12
37d3a4  41 55                          push   r13
37d3a6  41 56                          push   r14
37d3a8  41 57                          push   r15
37d3aa  48 8d 68 a1                    lea    rbp,[rax-0x5f]
37d3ae  48 81 ec 00 01 00 00           sub    rsp,0x100
37d3b5  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
37d3b9  4c 8b e2                       mov    r12,rdx
37d3bc  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
37d3c0  4c 8b e9                       mov    r13,rcx
37d3c3  44 0f 29 48 98                 movaps XMMWORD PTR [rax-0x68],xmm9
37d3c8  e8 33 fe fd ff                 call   0x35d200
37d3cd  48 8b 35 54 87 08 00           mov    rsi,QWORD PTR [rip+0x88754]        # 0x405b28
37d3d4  49 8b cd                       mov    rcx,r13
37d3d7  48 89 45 6f                    mov    QWORD PTR [rbp+0x6f],rax
37d3db  48 8d 98 00 01 00 00           lea    rbx,[rax+0x100]
37d3e2  e8 05 04 f5 ff                 call   0x2cd7ec
37d3e7  f3 44 0f 10 0d 70 5e f1 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff15e70]        # 0x293260 ; f32=-1
37d3f0  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
37d3f4  48 8b d0                       mov    rdx,rax
37d3f7  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37d3fe  45 33 c9                       xor    r9d,r9d
37d401  45 33 c0                       xor    r8d,r8d
37d404  e8 93 23 01 00                 call   0x38f79c
37d409  4c 8b c0                       mov    r8,rax
37d40c  48 8d 4d a7                    lea    rcx,[rbp-0x59]
37d410  48 8b d3                       mov    rdx,rbx
37d413  e8 c0 25 f7 ff                 call   0x2ef9d8
37d418  4c 8b c0                       mov    r8,rax
37d41b  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37d420  48 8b d3                       mov    rdx,rbx
37d423  e8 60 df f5 ff                 call   0x2db388
37d428  41 0f 28 c9                    movaps xmm1,xmm9
37d42c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37d431  e8 4a f6 ff ff                 call   0x37ca80
37d436  45 33 c9                       xor    r9d,r9d
37d439  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37d43e  45 33 c0                       xor    r8d,r8d
37d441  33 d2                          xor    edx,edx
37d443  e8 94 74 01 00                 call   0x3948dc
37d448  33 d2                          xor    edx,edx
37d44a  c7 44 24 40 00 00 00 00        mov    DWORD PTR [rsp+0x40],0x0
37d452  48 8d 4c 24 44                 lea    rcx,[rsp+0x44]
37d457  e8 78 90 fb ff                 call   0x3364d4
37d45c  0f 10 4c 24 44                 movups xmm1,XMMWORD PTR [rsp+0x44]
37d461  49 8b cd                       mov    rcx,r13
37d464  f3 0f 10 44 24 40              movss  xmm0,DWORD PTR [rsp+0x40]
37d46a  f3 0f 7f 4d 8b                 movdqu XMMWORD PTR [rbp-0x75],xmm1
37d46f  f3 0f 11 45 87                 movss  DWORD PTR [rbp-0x79],xmm0
37d474  e8 73 03 f5 ff                 call   0x2cd7ec
37d479  48 8b c8                       mov    rcx,rax
37d47c  4c 8d 45 87                    lea    r8,[rbp-0x79]
37d480  ba 56 04 00 00                 mov    edx,0x456
37d485  e8 fa ef ff ff                 call   0x37c484
37d48a  41 b0 01                       mov    r8b,0x1
37d48d  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
37d492  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37d497  48 8b d8                       mov    rbx,rax
37d49a  e8 0d 70 01 00                 call   0x3944ac
37d49f  f3 0f 10 05 0d 5d f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff15d0d]        # 0x2931b4 ; f32=14
37d4a7  44 8a c8                       mov    r9b,al
37d4aa  f3 0f 10 35 a2 fd f0 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff0fda2]        # 0x28d254 ; f32=1
37d4b2  0f 57 c9                       xorps  xmm1,xmm1
37d4b5  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
37d4bb  0f 28 d6                       movaps xmm2,xmm6
37d4be  f3 0f 10 03                    movss  xmm0,DWORD PTR [rbx]
37d4c2  e8 81 89 fb ff                 call   0x335e48
37d4c7  0f 28 f8                       movaps xmm7,xmm0
37d4ca  0f 28 ce                       movaps xmm1,xmm6
37d4cd  b9 01 00 00 00                 mov    ecx,0x1
37d4d2  f3 0f 11 3b                    movss  DWORD PTR [rbx],xmm7
37d4d6  e8 bd 4d 01 00                 call   0x392298
37d4db  8b d0                          mov    edx,eax
37d4dd  48 8d 4d af                    lea    rcx,[rbp-0x51]
37d4e1  e8 ee 8f fb ff                 call   0x3364d4
37d4e6  0f 28 ce                       movaps xmm1,xmm6
37d4e9  b9 02 00 00 00                 mov    ecx,0x2
37d4ee  0f 10 10                       movups xmm2,XMMWORD PTR [rax]
37d4f1  f3 0f 7f 54 24 40              movdqu XMMWORD PTR [rsp+0x40],xmm2
37d4f7  e8 9c 4d 01 00                 call   0x392298
37d4fc  8b d0                          mov    edx,eax
37d4fe  48 8d 4d df                    lea    rcx,[rbp-0x21]
37d502  e8 cd 8f fb ff                 call   0x3364d4
37d507  48 83 c3 04                    add    rbx,0x4
37d50b  48 89 5d 7f                    mov    QWORD PTR [rbp+0x7f],rbx
37d50f  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
37d512  f3 0f 7f 45 87                 movdqu XMMWORD PTR [rbp-0x79],xmm0
37d517  0f 28 df                       movaps xmm3,xmm7
37d51a  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
37d51f  48 8d 55 87                    lea    rdx,[rbp-0x79]
37d523  48 8d 4d cf                    lea    rcx,[rbp-0x31]
37d527  e8 78 c0 ff ff                 call   0x3795a4
37d52c  41 b0 01                       mov    r8b,0x1
37d52f  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
37d534  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37d539  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
37d53c  f3 0f 7f 03                    movdqu XMMWORD PTR [rbx],xmm0
37d540  e8 67 6f 01 00                 call   0x3944ac
37d545  84 c0                          test   al,al
37d547  74 12                          je     0x37d55b
37d549  33 d2                          xor    edx,edx
37d54b  33 c9                          xor    ecx,ecx
37d54d  e8 92 6e 01 00                 call   0x3943e4
37d552  84 c0                          test   al,al
37d554  74 05                          je     0x37d55b
37d556  41 c6 04 24 01                 mov    BYTE PTR [r12],0x1
37d55b  41 80 3c 24 00                 cmp    BYTE PTR [r12],0x0
37d560  0f 84 dc 01 00 00              je     0x37d742
37d566  e8 39 50 01 00                 call   0x3925a4
37d56b  f3 0f 10 3d dd fc f0 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff0fcdd]        # 0x28d250 ; f32=0.5
37d573  b9 08 00 00 00                 mov    ecx,0x8
37d578  f3 0f 10 b6 14 38 00 00        movss  xmm6,DWORD PTR [rsi+0x3814]
37d580  0f 28 cf                       movaps xmm1,xmm7
37d583  4c 8b f8                       mov    r15,rax
37d586  e8 0d 4d 01 00                 call   0x392298
37d58b  49 8b cd                       mov    rcx,r13
37d58e  44 8b f0                       mov    r14d,eax
37d591  e8 56 02 f5 ff                 call   0x2cd7ec
37d596  48 8b d0                       mov    rdx,rax
37d599  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37d5a0  45 33 c9                       xor    r9d,r9d
37d5a3  48 8d 4d a7                    lea    rcx,[rbp-0x59]
37d5a7  45 33 c0                       xor    r8d,r8d
37d5aa  e8 ed 21 01 00                 call   0x38f79c
37d5af  f3 0f 10 15 7d 5b f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff15b7d]        # 0x293134 ; f32=2
37d5b7  48 8d 4d bf                    lea    rcx,[rbp-0x41]
37d5bb  48 8b d0                       mov    rdx,rax
37d5be  e8 3d f4 ff ff                 call   0x37ca00
37d5c3  48 8b d8                       mov    rbx,rax
37d5c6  e8 e1 50 01 00                 call   0x3926ac
37d5cb  4c 8b c3                       mov    r8,rbx
37d5ce  48 8d 4d c7                    lea    rcx,[rbp-0x39]
37d5d2  48 8d 90 00 0e 00 00           lea    rdx,[rax+0xe00]
37d5d9  e8 fa 23 f7 ff                 call   0x2ef9d8
37d5de  48 8b d0                       mov    rdx,rax
37d5e1  4c 8d 86 0c 38 00 00           lea    r8,[rsi+0x380c]
37d5e8  48 8d 4d cf                    lea    rcx,[rbp-0x31]
37d5ec  e8 e7 23 f7 ff                 call   0x2ef9d8
37d5f1  49 8b cd                       mov    rcx,r13
37d5f4  48 8b f8                       mov    rdi,rax
37d5f7  e8 f0 01 f5 ff                 call   0x2cd7ec
37d5fc  48 8b d0                       mov    rdx,rax
37d5ff  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37d606  45 33 c9                       xor    r9d,r9d
37d609  48 8d 4d df                    lea    rcx,[rbp-0x21]
37d60d  45 33 c0                       xor    r8d,r8d
37d610  e8 87 21 01 00                 call   0x38f79c
37d615  f3 0f 10 15 17 5b f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff15b17]        # 0x293134 ; f32=2
37d61d  48 8d 4d af                    lea    rcx,[rbp-0x51]
37d621  48 8b d0                       mov    rdx,rax
37d624  e8 d7 f3 ff ff                 call   0x37ca00
37d629  48 8b d8                       mov    rbx,rax
37d62c  e8 7b 50 01 00                 call   0x3926ac
37d631  4c 8b c3                       mov    r8,rbx
37d634  48 8d 4d 87                    lea    rcx,[rbp-0x79]
37d638  48 8d 90 00 0e 00 00           lea    rdx,[rax+0xe00]
37d63f  e8 a0 91 fb ff                 call   0x3367e4
37d644  48 8b d0                       mov    rdx,rax
37d647  4c 8d 86 0c 38 00 00           lea    r8,[rsi+0x380c]
37d64e  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
37d653  e8 8c 91 fb ff                 call   0x3367e4
37d658  48 8b d0                       mov    rdx,rax
37d65b  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
37d663  45 8b ce                       mov    r9d,r14d
37d666  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
37d66c  4c 8b c7                       mov    r8,rdi
37d66f  49 8b cf                       mov    rcx,r15
37d672  e8 cd 3b 02 00                 call   0x3a1244
37d677  e8 28 4f 01 00                 call   0x3925a4
37d67c  49 8b cd                       mov    rcx,r13
37d67f  4c 8b f0                       mov    r14,rax
37d682  e8 65 01 f5 ff                 call   0x2cd7ec
37d687  8b 15 83 b8 ec ff              mov    edx,DWORD PTR [rip+0xffffffffffecb883]        # 0x248f10
37d68d  33 c9                          xor    ecx,ecx
37d68f  83 fa 05                       cmp    edx,0x5
37d692  48 8b f0                       mov    rsi,rax
37d695  0f 95 c1                       setne  cl
37d698  66 0f 6e c9                    movd   xmm1,ecx
37d69c  33 c9                          xor    ecx,ecx
37d69e  0f 5b c9                       cvtdq2ps xmm1,xmm1
37d6a1  83 fa 05                       cmp    edx,0x5
37d6a4  0f 94 c1                       sete   cl
37d6a7  f3 0f 59 cf                    mulss  xmm1,xmm7
37d6ab  f3 0f 58 cf                    addss  xmm1,xmm7
37d6af  e8 e4 4b 01 00                 call   0x392298
37d6b4  49 8b cd                       mov    rcx,r13
37d6b7  8b f8                          mov    edi,eax
37d6b9  e8 2e 01 f5 ff                 call   0x2cd7ec
37d6be  48 8b d0                       mov    rdx,rax
37d6c1  45 33 c9                       xor    r9d,r9d
37d6c4  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37d6cb  45 33 c0                       xor    r8d,r8d
37d6ce  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
37d6d3  e8 c4 20 01 00                 call   0x38f79c
37d6d8  f3 0f 10 15 54 5a f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff15a54]        # 0x293134 ; f32=2
37d6e0  48 8d 4d 87                    lea    rcx,[rbp-0x79]
37d6e4  48 8b d0                       mov    rdx,rax
37d6e7  e8 14 f3 ff ff                 call   0x37ca00
37d6ec  48 8b d8                       mov    rbx,rax
37d6ef  e8 b8 4f 01 00                 call   0x3926ac
37d6f4  4c 8b c3                       mov    r8,rbx
37d6f7  48 8d 4d af                    lea    rcx,[rbp-0x51]
37d6fb  48 8d 90 00 0e 00 00           lea    rdx,[rax+0xe00]
37d702  e8 dd 90 fb ff                 call   0x3367e4
37d707  48 8b d0                       mov    rdx,rax
37d70a  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
37d713  4c 8b ce                       mov    r9,rsi
37d716  44 8b c7                       mov    r8d,edi
37d719  49 8b ce                       mov    rcx,r14
37d71c  e8 9b 5a 02 00                 call   0x3a31bc
37d721  33 c9                          xor    ecx,ecx
37d723  e8 60 6e 01 00                 call   0x394588
37d728  84 c0                          test   al,al
37d72a  74 16                          je     0x37d742
37d72c  8b 05 de b7 ec ff              mov    eax,DWORD PTR [rip+0xffffffffffecb7de]        # 0x248f10
37d732  83 f8 05                       cmp    eax,0x5
37d735  74 06                          je     0x37d73d
37d737  48 8b 4d 77                    mov    rcx,QWORD PTR [rbp+0x77]
37d73b  89 01                          mov    DWORD PTR [rcx],eax
37d73d  41 c6 04 24 00                 mov    BYTE PTR [r12],0x0
37d742  48 8b 7d 6f                    mov    rdi,QWORD PTR [rbp+0x6f]
37d746  49 8b cd                       mov    rcx,r13
37d749  48 8b bf 98 02 00 00           mov    rdi,QWORD PTR [rdi+0x298]
37d750  e8 97 00 f5 ff                 call   0x2cd7ec
37d755  48 8b 4d 7f                    mov    rcx,QWORD PTR [rbp+0x7f]
37d759  48 8b d8                       mov    rbx,rax
37d75c  e8 ab 20 f7 ff                 call   0x2ef80c
37d761  44 8b c0                       mov    r8d,eax
37d764  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
37d76d  4c 8b cb                       mov    r9,rbx
37d770  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
37d775  48 8b cf                       mov    rcx,rdi
37d778  e8 3f 5a 02 00                 call   0x3a31bc
37d77d  49 8b cd                       mov    rcx,r13
37d780  e8 6f ed f4 ff                 call   0x2cc4f4
37d785  4c 8d 9c 24 00 01 00 00        lea    r11,[rsp+0x100]
37d78d  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
37d791  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
37d796  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
37d79b  45 0f 28 4b d0                 movaps xmm9,XMMWORD PTR [r11-0x30]
37d7a0  49 8b e3                       mov    rsp,r11
37d7a3  41 5f                          pop    r15
37d7a5  41 5e                          pop    r14
37d7a7  41 5d                          pop    r13
37d7a9  41 5c                          pop    r12
37d7ab  5f                             pop    rdi
37d7ac  5e                             pop    rsi
37d7ad  5d                             pop    rbp
37d7ae  c3                             ret

