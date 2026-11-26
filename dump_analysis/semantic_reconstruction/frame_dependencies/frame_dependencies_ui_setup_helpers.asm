; pdata function 0x364f50..0x364f8b unwind=0x3d2130
364f50  40 53                          rex push rbx
364f52  55                             push   rbp
364f53  56                             push   rsi
364f54  57                             push   rdi
364f55  48 83 ec 28                    sub    rsp,0x28
364f59  48 8b f1                       mov    rsi,rcx
364f5c  49 8b e8                       mov    rbp,r8
364f5f  49 8b c8                       mov    rcx,r8
364f62  48 8b fa                       mov    rdi,rdx
364f65  e8 5a 54 02 00                 call   0x38a3c4
364f6a  4c 8b c5                       mov    r8,rbp
364f6d  48 8b d7                       mov    rdx,rdi
364f70  48 8b c8                       mov    rcx,rax
364f73  48 8b d8                       mov    rbx,rax
364f76  e8 d1 3d 06 00                 call   0x3c8d4c
364f7b  48 89 1e                       mov    QWORD PTR [rsi],rbx
364f7e  48 89 6e 08                    mov    QWORD PTR [rsi+0x8],rbp
364f82  48 83 c4 28                    add    rsp,0x28
364f86  5f                             pop    rdi
364f87  5e                             pop    rsi
364f88  5d                             pop    rbp
364f89  5b                             pop    rbx
364f8a  c3                             ret

; heuristic leaf/code range 0x364f8c..0x364f91 unwind=0x0
364f8c  48 89 51 50                    mov    QWORD PTR [rcx+0x50],rdx
364f90  c3                             ret

; pdata function 0x364ba4..0x364c53 unwind=0x3d37d0
364ba4  48 8b c4                       mov    rax,rsp
364ba7  48 89 58 18                    mov    QWORD PTR [rax+0x18],rbx
364bab  48 89 78 20                    mov    QWORD PTR [rax+0x20],rdi
364baf  f3 0f 11 48 10                 movss  DWORD PTR [rax+0x10],xmm1
364bb4  55                             push   rbp
364bb5  48 8d 68 a1                    lea    rbp,[rax-0x5f]
364bb9  48 81 ec e0 00 00 00           sub    rsp,0xe0
364bc0  48 8b f9                       mov    rdi,rcx
364bc3  41 8a d8                       mov    bl,r8b
364bc6  48 8d 4d c7                    lea    rcx,[rbp-0x39]
364bca  e8 81 a9 03 00                 call   0x39f550
364bcf  c6 45 d3 00                    mov    BYTE PTR [rbp-0x2d],0x0
364bd3  84 db                          test   bl,bl
364bd5  74 0d                          je     0x364be4
364bd7  48 8d 4f 58                    lea    rcx,[rdi+0x58]
364bdb  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
364bdf  e8 e8 14 fd ff                 call   0x3360cc
364be4  e8 c3 da 02 00                 call   0x3926ac
364be9  f3 0f 10 5d 6f                 movss  xmm3,DWORD PTR [rbp+0x6f]
364bee  f3 0f 59 1d f2 42 ee ff        mulss  xmm3,DWORD PTR [rip+0xffffffffffee42f2]        # 0x248ee8 ; f32=1
364bf6  44 8b 47 08                    mov    r8d,DWORD PTR [rdi+0x8]
364bfa  48 8b 48 50                    mov    rcx,QWORD PTR [rax+0x50]
364bfe  48 8b 47 50                    mov    rax,QWORD PTR [rdi+0x50]
364c02  48 8b 17                       mov    rdx,QWORD PTR [rdi]
364c05  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
364c0a  48 8d 45 c7                    lea    rax,[rbp-0x39]
364c0e  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
364c13  e8 3c b2 03 00                 call   0x39fe54
364c18  4c 8d 45 67                    lea    r8,[rbp+0x67]
364c1c  48 89 45 67                    mov    QWORD PTR [rbp+0x67],rax
364c20  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
364c24  48 8d 4d a7                    lea    rcx,[rbp-0x59]
364c28  e8 57 db fc ff                 call   0x332784
364c2d  48 8d 4f 10                    lea    rcx,[rdi+0x10]
364c31  4c 8d 45 a7                    lea    r8,[rbp-0x59]
364c35  48 8d 55 b7                    lea    rdx,[rbp-0x49]
364c39  e8 16 00 00 00                 call   0x364c54
364c3e  4c 8d 9c 24 e0 00 00 00        lea    r11,[rsp+0xe0]
364c46  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
364c4a  49 8b 7b 28                    mov    rdi,QWORD PTR [r11+0x28]
364c4e  49 8b e3                       mov    rsp,r11
364c51  5d                             pop    rbp
364c52  c3                             ret

; pdata function 0x364aec..0x364ba2 unwind=0x3d37e4
364aec  f3 0f 11 4c 24 10              movss  DWORD PTR [rsp+0x10],xmm1
364af2  55                             push   rbp
364af3  53                             push   rbx
364af4  57                             push   rdi
364af5  48 8b ec                       mov    rbp,rsp
364af8  48 83 ec 30                    sub    rsp,0x30
364afc  48 8b f9                       mov    rdi,rcx
364aff  4c 8d 45 28                    lea    r8,[rbp+0x28]
364b03  48 83 c1 10                    add    rcx,0x10
364b07  48 8d 55 20                    lea    rdx,[rbp+0x20]
364b0b  e8 8c ff ff ff                 call   0x364a9c
364b10  48 8d 55 30                    lea    rdx,[rbp+0x30]
364b14  48 8d 4f 10                    lea    rcx,[rdi+0x10]
364b18  e8 9b 3b f7 ff                 call   0x2d86b8
364b1d  48 8b d0                       mov    rdx,rax
364b20  48 8d 4d 20                    lea    rcx,[rbp+0x20]
364b24  e8 0b 7a f6 ff                 call   0x2cc534
364b29  84 c0                          test   al,al
364b2b  74 60                          je     0x364b8d
364b2d  48 83 c7 58                    add    rdi,0x58
364b31  48 8d 55 20                    lea    rdx,[rbp+0x20]
364b35  48 8b cf                       mov    rcx,rdi
364b38  e8 73 3c f7 ff                 call   0x2d87b0
364b3d  48 8d 55 30                    lea    rdx,[rbp+0x30]
364b41  48 8b cf                       mov    rcx,rdi
364b44  48 8b 18                       mov    rbx,QWORD PTR [rax]
364b47  e8 44 32 f7 ff                 call   0x2d7d90
364b4c  4c 8d 4d 28                    lea    r9,[rbp+0x28]
364b50  4c 8b c3                       mov    r8,rbx
364b53  48 8d 4d 38                    lea    rcx,[rbp+0x38]
364b57  48 8b 10                       mov    rdx,QWORD PTR [rax]
364b5a  e8 99 15 fd ff                 call   0x3360f8
364b5f  48 8d 55 f0                    lea    rdx,[rbp-0x10]
364b63  48 8b cf                       mov    rcx,rdi
364b66  48 8b d8                       mov    rbx,rax
364b69  e8 42 3c f7 ff                 call   0x2d87b0
364b6e  48 8b d0                       mov    rdx,rax
364b71  48 8b cb                       mov    rcx,rbx
364b74  e8 bb 79 f6 ff                 call   0x2cc534
364b79  84 c0                          test   al,al
364b7b  74 0c                          je     0x364b89
364b7d  48 8d 55 28                    lea    rdx,[rbp+0x28]
364b81  48 8b cf                       mov    rcx,rdi
364b84  e8 43 15 fd ff                 call   0x3360cc
364b89  33 c0                          xor    eax,eax
364b8b  eb 0d                          jmp    0x364b9a
364b8d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
364b91  e8 0a 02 f7 ff                 call   0x2d4da0
364b96  48 8b 40 08                    mov    rax,QWORD PTR [rax+0x8]
364b9a  48 83 c4 30                    add    rsp,0x30
364b9e  5f                             pop    rdi
364b9f  5b                             pop    rbx
364ba0  5d                             pop    rbp
364ba1  c3                             ret

; pdata function 0x35a8c0..0x35aa86 unwind=0x3d37b4
35a8c0  48 8b c4                       mov    rax,rsp
35a8c3  55                             push   rbp
35a8c4  53                             push   rbx
35a8c5  56                             push   rsi
35a8c6  57                             push   rdi
35a8c7  41 56                          push   r14
35a8c9  48 8d a8 c8 fe ff ff           lea    rbp,[rax-0x138]
35a8d0  48 81 ec 10 02 00 00           sub    rsp,0x210
35a8d7  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
35a8db  48 8b fa                       mov    rdi,rdx
35a8de  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
35a8e2  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
35a8e7  4c 8b f1                       mov    r14,rcx
35a8ea  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
35a8f3  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35a8f8  0f 28 fa                       movaps xmm7,xmm2
35a8fb  49 8b d9                       mov    rbx,r9
35a8fe  e8 75 79 ff ff                 call   0x352278 ; STRING getter=0x352278 rb
35a903  48 8b c8                       mov    rcx,rax
35a906  e8 e9 5a fc ff                 call   0x3203f4
35a90b  48 8b d0                       mov    rdx,rax
35a90e  4c 8d 44 24 38                 lea    r8,[rsp+0x38]
35a913  45 33 c9                       xor    r9d,r9d
35a916  48 8b cf                       mov    rcx,rdi
35a919  e8 3a 23 00 00                 call   0x35cc58
35a91e  48 8b f0                       mov    rsi,rax
35a921  48 85 c0                       test   rax,rax
35a924  0f 84 40 01 00 00              je     0x35aa6a
35a92a  48 85 db                       test   rbx,rbx
35a92d  74 50                          je     0x35a97f
35a92f  0f 10 03                       movups xmm0,XMMWORD PTR [rbx]
35a932  48 8b 83 80 00 00 00           mov    rax,QWORD PTR [rbx+0x80]
35a939  0f 10 4b 10                    movups xmm1,XMMWORD PTR [rbx+0x10]
35a93d  48 89 45 60                    mov    QWORD PTR [rbp+0x60],rax
35a941  48 8d 45 e0                    lea    rax,[rbp-0x20]
35a945  0f 11 45 e0                    movups XMMWORD PTR [rbp-0x20],xmm0
35a949  0f 10 43 20                    movups xmm0,XMMWORD PTR [rbx+0x20]
35a94d  0f 11 4d f0                    movups XMMWORD PTR [rbp-0x10],xmm1
35a951  0f 10 4b 30                    movups xmm1,XMMWORD PTR [rbx+0x30]
35a955  0f 11 45 00                    movups XMMWORD PTR [rbp+0x0],xmm0
35a959  0f 10 43 40                    movups xmm0,XMMWORD PTR [rbx+0x40]
35a95d  0f 11 4d 10                    movups XMMWORD PTR [rbp+0x10],xmm1
35a961  0f 10 4b 50                    movups xmm1,XMMWORD PTR [rbx+0x50]
35a965  0f 11 45 20                    movups XMMWORD PTR [rbp+0x20],xmm0
35a969  0f 10 43 60                    movups xmm0,XMMWORD PTR [rbx+0x60]
35a96d  0f 11 4d 30                    movups XMMWORD PTR [rbp+0x30],xmm1
35a971  0f 10 4b 70                    movups xmm1,XMMWORD PTR [rbx+0x70]
35a975  0f 11 45 40                    movups XMMWORD PTR [rbp+0x40],xmm0
35a979  0f 11 4d 50                    movups XMMWORD PTR [rbp+0x50],xmm1
35a97d  eb 09                          jmp    0x35a988
35a97f  48 8d 4d 68                    lea    rcx,[rbp+0x68]
35a983  e8 c8 4b 04 00                 call   0x39f550
35a988  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
35a98b  0f 11 44 24 50                 movups XMMWORD PTR [rsp+0x50],xmm0
35a990  0f 10 48 10                    movups xmm1,XMMWORD PTR [rax+0x10]
35a994  0f 11 4c 24 60                 movups XMMWORD PTR [rsp+0x60],xmm1
35a999  0f 10 40 20                    movups xmm0,XMMWORD PTR [rax+0x20]
35a99d  0f 11 44 24 70                 movups XMMWORD PTR [rsp+0x70],xmm0
35a9a2  0f 10 48 30                    movups xmm1,XMMWORD PTR [rax+0x30]
35a9a6  0f 11 4d 80                    movups XMMWORD PTR [rbp-0x80],xmm1
35a9aa  0f 10 40 40                    movups xmm0,XMMWORD PTR [rax+0x40]
35a9ae  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
35a9b2  0f 10 50 50                    movups xmm2,XMMWORD PTR [rax+0x50]
35a9b6  0f 29 55 a0                    movaps XMMWORD PTR [rbp-0x60],xmm2
35a9ba  0f 10 40 60                    movups xmm0,XMMWORD PTR [rax+0x60]
35a9be  66 0f 73 da 06                 psrldq xmm2,0x6
35a9c3  0f 11 45 b0                    movups XMMWORD PTR [rbp-0x50],xmm0
35a9c7  0f 10 48 70                    movups xmm1,XMMWORD PTR [rax+0x70]
35a9cb  0f 11 4d c0                    movups XMMWORD PTR [rbp-0x40],xmm1
35a9cf  48 8b 80 80 00 00 00           mov    rax,QWORD PTR [rax+0x80]
35a9d6  48 89 45 d0                    mov    QWORD PTR [rbp-0x30],rax
35a9da  66 0f 7e d0                    movd   eax,xmm2
35a9de  84 c0                          test   al,al
35a9e0  75 5f                          jne    0x35aa41
35a9e2  48 8b cf                       mov    rcx,rdi
35a9e5  e8 1a ff 06 00                 call   0x3ca904
35a9ea  48 8d 1c 38                    lea    rbx,[rax+rdi*1]
35a9ee  48 3b df                       cmp    rbx,rdi
35a9f1  76 16                          jbe    0x35aa09
35a9f3  48 8d 43 ff                    lea    rax,[rbx-0x1]
35a9f7  80 38 2f                       cmp    BYTE PTR [rax],0x2f
35a9fa  74 0d                          je     0x35aa09
35a9fc  80 38 5c                       cmp    BYTE PTR [rax],0x5c
35a9ff  74 08                          je     0x35aa09
35aa01  48 8b d8                       mov    rbx,rax
35aa04  48 3b c7                       cmp    rax,rdi
35aa07  77 ea                          ja     0x35a9f3
35aa09  0f 57 f6                       xorps  xmm6,xmm6
35aa0c  48 8d 54 24 43                 lea    rdx,[rsp+0x43]
35aa11  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
35aa16  f3 0f 5a f7                    cvtss2sd xmm6,xmm7
35aa1a  e8 99 8f ff ff                 call   0x3539b8 ; STRING getter=0x3539b8 %s, %.0fpx
35aa1f  48 8b c8                       mov    rcx,rax
35aa22  e8 2d f2 f8 ff                 call   0x2e9c54
35aa27  4c 8b c0                       mov    r8,rax
35aa2a  4c 8b cb                       mov    r9,rbx
35aa2d  48 8d 4d a6                    lea    rcx,[rbp-0x5a]
35aa31  f2 0f 11 74 24 20              movsd  QWORD PTR [rsp+0x20],xmm6
35aa37  ba 28 00 00 00                 mov    edx,0x28
35aa3c  e8 cf 86 03 00                 call   0x393110
35aa41  48 8b 85 60 01 00 00           mov    rax,QWORD PTR [rbp+0x160]
35aa48  0f 28 df                       movaps xmm3,xmm7
35aa4b  44 8b 44 24 38                 mov    r8d,DWORD PTR [rsp+0x38]
35aa50  48 8b d6                       mov    rdx,rsi
35aa53  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
35aa58  49 8b ce                       mov    rcx,r14
35aa5b  48 8d 44 24 50                 lea    rax,[rsp+0x50]
35aa60  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
35aa65  e8 ea 53 04 00                 call   0x39fe54
35aa6a  4c 8d 9c 24 10 02 00 00        lea    r11,[rsp+0x210]
35aa72  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
35aa77  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
35aa7c  49 8b e3                       mov    rsp,r11
35aa7f  41 5e                          pop    r14
35aa81  5f                             pop    rdi
35aa82  5e                             pop    rsi
35aa83  5b                             pop    rbx
35aa84  5d                             pop    rbp
35aa85  c3                             ret

; pdata function 0x33655c..0x33657b unwind=0x3d2038
33655c  40 53                          rex push rbx
33655e  48 83 ec 20                    sub    rsp,0x20
336562  48 8b d9                       mov    rbx,rcx
336565  e8 36 4e fa ff                 call   0x2db3a0
33656a  48 8b cb                       mov    rcx,rbx
33656d  e8 7e 46 02 00                 call   0x35abf0
336572  48 8b c3                       mov    rax,rbx
336575  48 83 c4 20                    add    rsp,0x20
336579  5b                             pop    rbx
33657a  c3                             ret

; heuristic leaf/code range 0x3366dc..0x3366e4 unwind=0x0
3366dc  e9 43 ff ff ff                 jmp    0x336624
3366e1  cc                             int3
3366e2  cc                             int3
3366e3  cc                             int3

