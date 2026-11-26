; pdata function 0x365f90..0x366140 unwind=0x3d2858
365f90  40 55                          rex push rbp
365f92  53                             push   rbx
365f93  56                             push   rsi
365f94  57                             push   rdi
365f95  41 54                          push   r12
365f97  41 55                          push   r13
365f99  41 56                          push   r14
365f9b  41 57                          push   r15
365f9d  48 8b ec                       mov    rbp,rsp
365fa0  48 83 ec 58                    sub    rsp,0x58
365fa4  4d 8b f0                       mov    r14,r8
365fa7  48 8b da                       mov    rbx,rdx
365faa  4c 8d 41 10                    lea    r8,[rcx+0x10]
365fae  48 8b f1                       mov    rsi,rcx
365fb1  f2 41 0f 10 00                 movsd  xmm0,QWORD PTR [r8]
365fb6  48 8d 55 d8                    lea    rdx,[rbp-0x28]
365fba  41 8b 40 08                    mov    eax,DWORD PTR [r8+0x8]
365fbe  49 8b ce                       mov    rcx,r14
365fc1  f2 0f 11 45 c8                 movsd  QWORD PTR [rbp-0x38],xmm0
365fc6  45 32 ed                       xor    r13b,r13b
365fc9  45 32 e4                       xor    r12b,r12b
365fcc  89 45 d0                       mov    DWORD PTR [rbp-0x30],eax
365fcf  45 32 ff                       xor    r15b,r15b
365fd2  e8 f5 96 f7 ff                 call   0x2df6cc
365fd7  48 8d 7e 34                    lea    rdi,[rsi+0x34]
365fdb  48 8b d7                       mov    rdx,rdi
365fde  48 8d 4d d8                    lea    rcx,[rbp-0x28]
365fe2  e8 9d 01 00 00                 call   0x366184
365fe7  f3 0f 10 56 1c                 movss  xmm2,DWORD PTR [rsi+0x1c]
365fec  0f 28 c8                       movaps xmm1,xmm0
365fef  0f 2f ca                       comiss xmm1,xmm2
365ff2  77 2f                          ja     0x366023
365ff4  0f 28 c2                       movaps xmm0,xmm2
365ff7  0f 57 05 a2 d2 f2 ff           xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff2d2a2]        # 0x2932a0
365ffe  0f 2f c1                       comiss xmm0,xmm1
366001  76 1a                          jbe    0x36601d
366003  48 8d 55 e8                    lea    rdx,[rbp-0x18]
366007  48 8b cf                       mov    rcx,rdi
36600a  e8 5d 96 f7 ff                 call   0x2df66c
36600f  48 8b d0                       mov    rdx,rax
366012  48 8d 4d c8                    lea    rcx,[rbp-0x38]
366016  e8 dd 1b 06 00                 call   0x3c7bf8
36601b  eb 1e                          jmp    0x36603b
36601d  41 b5 01                       mov    r13b,0x1
366020  0f 28 d1                       movaps xmm2,xmm1
366023  48 8d 55 e8                    lea    rdx,[rbp-0x18]
366027  48 8b cf                       mov    rcx,rdi
36602a  e8 3d 96 f7 ff                 call   0x2df66c
36602f  48 8b d0                       mov    rdx,rax
366032  48 8d 4d c8                    lea    rcx,[rbp-0x38]
366036  e8 8d 1b 06 00                 call   0x3c7bc8
36603b  48 8d 7e 40                    lea    rdi,[rsi+0x40]
36603f  48 8b d7                       mov    rdx,rdi
366042  48 8d 4d d8                    lea    rcx,[rbp-0x28]
366046  e8 39 01 00 00                 call   0x366184
36604b  f3 0f 10 56 20                 movss  xmm2,DWORD PTR [rsi+0x20]
366050  0f 28 c8                       movaps xmm1,xmm0
366053  0f 2f ca                       comiss xmm1,xmm2
366056  77 2f                          ja     0x366087
366058  0f 28 c2                       movaps xmm0,xmm2
36605b  0f 57 05 3e d2 f2 ff           xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff2d23e]        # 0x2932a0
366062  0f 2f c1                       comiss xmm0,xmm1
366065  76 1a                          jbe    0x366081
366067  48 8d 55 e8                    lea    rdx,[rbp-0x18]
36606b  48 8b cf                       mov    rcx,rdi
36606e  e8 f9 95 f7 ff                 call   0x2df66c
366073  48 8b d0                       mov    rdx,rax
366076  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36607a  e8 79 1b 06 00                 call   0x3c7bf8
36607f  eb 1e                          jmp    0x36609f
366081  41 b4 01                       mov    r12b,0x1
366084  0f 28 d1                       movaps xmm2,xmm1
366087  48 8d 55 e8                    lea    rdx,[rbp-0x18]
36608b  48 8b cf                       mov    rcx,rdi
36608e  e8 d9 95 f7 ff                 call   0x2df66c
366093  48 8b d0                       mov    rdx,rax
366096  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36609a  e8 29 1b 06 00                 call   0x3c7bc8
36609f  48 8d 7e 28                    lea    rdi,[rsi+0x28]
3660a3  48 8b d7                       mov    rdx,rdi
3660a6  48 8d 4d d8                    lea    rcx,[rbp-0x28]
3660aa  e8 d5 00 00 00                 call   0x366184
3660af  f3 0f 10 56 24                 movss  xmm2,DWORD PTR [rsi+0x24]
3660b4  0f 28 c8                       movaps xmm1,xmm0
3660b7  0f 2f ca                       comiss xmm1,xmm2
3660ba  77 2f                          ja     0x3660eb
3660bc  0f 28 c2                       movaps xmm0,xmm2
3660bf  0f 57 05 da d1 f2 ff           xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff2d1da]        # 0x2932a0
3660c6  0f 2f c1                       comiss xmm0,xmm1
3660c9  76 1a                          jbe    0x3660e5
3660cb  48 8d 55 e8                    lea    rdx,[rbp-0x18]
3660cf  48 8b cf                       mov    rcx,rdi
3660d2  e8 95 95 f7 ff                 call   0x2df66c
3660d7  48 8b d0                       mov    rdx,rax
3660da  48 8d 4d c8                    lea    rcx,[rbp-0x38]
3660de  e8 15 1b 06 00                 call   0x3c7bf8
3660e3  eb 1e                          jmp    0x366103
3660e5  41 b7 01                       mov    r15b,0x1
3660e8  0f 28 d1                       movaps xmm2,xmm1
3660eb  48 8d 55 e8                    lea    rdx,[rbp-0x18]
3660ef  48 8b cf                       mov    rcx,rdi
3660f2  e8 75 95 f7 ff                 call   0x2df66c
3660f7  48 8b d0                       mov    rdx,rax
3660fa  48 8d 4d c8                    lea    rcx,[rbp-0x38]
3660fe  e8 c5 1a 06 00                 call   0x3c7bc8
366103  45 84 ed                       test   r13b,r13b
366106  74 15                          je     0x36611d
366108  45 84 e4                       test   r12b,r12b
36610b  74 10                          je     0x36611d
36610d  45 84 ff                       test   r15b,r15b
366110  74 0b                          je     0x36611d
366112  f2 41 0f 10 06                 movsd  xmm0,QWORD PTR [r14]
366117  41 8b 46 08                    mov    eax,DWORD PTR [r14+0x8]
36611b  eb 08                          jmp    0x366125
36611d  f2 0f 10 45 c8                 movsd  xmm0,QWORD PTR [rbp-0x38]
366122  8b 45 d0                       mov    eax,DWORD PTR [rbp-0x30]
366125  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
366129  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
36612c  48 8b c3                       mov    rax,rbx
36612f  48 83 c4 58                    add    rsp,0x58
366133  41 5f                          pop    r15
366135  41 5e                          pop    r14
366137  41 5d                          pop    r13
366139  41 5c                          pop    r12
36613b  5f                             pop    rdi
36613c  5e                             pop    rsi
36613d  5b                             pop    rbx
36613e  5d                             pop    rbp
36613f  c3                             ret

; pdata function 0x3664cc..0x3665b8 unwind=0x3d3df0
3664cc  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3664d1  57                             push   rdi
3664d2  48 83 ec 70                    sub    rsp,0x70
3664d6  48 8b da                       mov    rbx,rdx
3664d9  48 8b f9                       mov    rdi,rcx
3664dc  e8 27 4a f6 ff                 call   0x2caf08
3664e1  84 c0                          test   al,al
3664e3  75 1b                          jne    0x366500
3664e5  33 d2                          xor    edx,edx
3664e7  48 8b cb                       mov    rcx,rbx
3664ea  44 8d 42 50                    lea    r8d,[rdx+0x50]
3664ee  e8 7d 28 06 00                 call   0x3c8d70
3664f3  48 8b cb                       mov    rcx,rbx
3664f6  e8 e1 f8 ff ff                 call   0x365ddc
3664fb  e9 a7 00 00 00                 jmp    0x3665a7
366500  8b 0d ca 7a 09 00              mov    ecx,DWORD PTR [rip+0x97aca]        # 0x3fdfd0
366506  f6 c1 01                       test   cl,0x1
366509  75 20                          jne    0x36652b
36650b  4c 8b 05 ee 09 07 00           mov    r8,QWORD PTR [rip+0x709ee]        # 0x3d6f00
366512  83 c9 01                       or     ecx,0x1
366515  49 81 c0 20 bd f0 03           add    r8,0x3f0bd20
36651c  89 0d ae 7a 09 00              mov    DWORD PTR [rip+0x97aae],ecx        # 0x3fdfd0
366522  4c 89 05 9f 7a 09 00           mov    QWORD PTR [rip+0x97a9f],r8        # 0x3fdfc8
366529  eb 07                          jmp    0x366532
36652b  4c 8b 05 96 7a 09 00           mov    r8,QWORD PTR [rip+0x97a96]        # 0x3fdfc8
366532  f6 c1 02                       test   cl,0x2
366535  75 1f                          jne    0x366556
366537  83 c9 02                       or     ecx,0x2
36653a  48 8d 15 9f 7a 09 00           lea    rdx,[rip+0x97a9f]        # 0x3fdfe0
366541  89 0d 89 7a 09 00              mov    DWORD PTR [rip+0x97a89],ecx        # 0x3fdfd0
366547  45 33 c9                       xor    r9d,r9d
36654a  48 8b 0d 0f f9 06 00           mov    rcx,QWORD PTR [rip+0x6f90f]        # 0x3d5e60
366551  e8 ce 57 f6 ff                 call   0x2cbd24
366556  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36655b  e8 7c f8 ff ff                 call   0x365ddc
366560  48 8b 0d f9 f8 06 00           mov    rcx,QWORD PTR [rip+0x6f8f9]        # 0x3d5e60
366567  4c 8d 44 24 20                 lea    r8,[rsp+0x20]
36656c  4c 8b cf                       mov    r9,rdi
36656f  48 8d 15 6a 7a 09 00           lea    rdx,[rip+0x97a6a]        # 0x3fdfe0
366576  e8 19 bb f6 ff                 call   0x2d2094
36657b  0f 28 44 24 20                 movaps xmm0,XMMWORD PTR [rsp+0x20]
366580  0f 28 4c 24 30                 movaps xmm1,XMMWORD PTR [rsp+0x30]
366585  0f 11 03                       movups XMMWORD PTR [rbx],xmm0
366588  0f 28 44 24 40                 movaps xmm0,XMMWORD PTR [rsp+0x40]
36658d  0f 11 4b 10                    movups XMMWORD PTR [rbx+0x10],xmm1
366591  0f 28 4c 24 50                 movaps xmm1,XMMWORD PTR [rsp+0x50]
366596  0f 11 43 20                    movups XMMWORD PTR [rbx+0x20],xmm0
36659a  0f 28 44 24 60                 movaps xmm0,XMMWORD PTR [rsp+0x60]
36659f  0f 11 4b 30                    movups XMMWORD PTR [rbx+0x30],xmm1
3665a3  0f 11 43 40                    movups XMMWORD PTR [rbx+0x40],xmm0
3665a7  48 8b c3                       mov    rax,rbx
3665aa  48 8b 9c 24 80 00 00 00        mov    rbx,QWORD PTR [rsp+0x80]
3665b2  48 83 c4 70                    add    rsp,0x70
3665b6  5f                             pop    rdi
3665b7  c3                             ret

