; pdata function 0x2d2874..0x2d29c0 unwind=0x3d2858
2d2874  40 55                          rex push rbp
2d2876  53                             push   rbx
2d2877  56                             push   rsi
2d2878  57                             push   rdi
2d2879  41 54                          push   r12
2d287b  41 55                          push   r13
2d287d  41 56                          push   r14
2d287f  41 57                          push   r15
2d2881  48 8b ec                       mov    rbp,rsp
2d2884  48 83 ec 58                    sub    rsp,0x58
2d2888  4c 8b f2                       mov    r14,rdx
2d288b  48 8b f1                       mov    rsi,rcx
2d288e  49 8b d1                       mov    rdx,r9
2d2891  49 8b c8                       mov    rcx,r8
2d2894  49 8b f9                       mov    rdi,r9
2d2897  4d 8b e8                       mov    r13,r8
2d289a  e8 05 8b ff ff                 call   0x2cb3a4
2d289f  48 8b d0                       mov    rdx,rax
2d28a2  48 8b ce                       mov    rcx,rsi
2d28a5  48 8b d8                       mov    rbx,rax
2d28a8  e8 37 c8 ff ff                 call   0x2cf0e4
2d28ad  4c 8b c8                       mov    r9,rax
2d28b0  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2d28b4  4c 8b c3                       mov    r8,rbx
2d28b7  48 8b ce                       mov    rcx,rsi
2d28ba  4c 8b e0                       mov    r12,rax
2d28bd  e8 12 df ff ff                 call   0x2d07d4
2d28c2  4c 8b 45 d8                    mov    r8,QWORD PTR [rbp-0x28]
2d28c6  4c 8d 7e 08                    lea    r15,[rsi+0x8]
2d28ca  4d 85 c0                       test   r8,r8
2d28cd  74 24                          je     0x2d28f3
2d28cf  48 8d 55 c8                    lea    rdx,[rbp-0x38]
2d28d3  49 8b cf                       mov    rcx,r15
2d28d6  e8 29 4c 00 00                 call   0x2d7504
2d28db  4c 8d 45 48                    lea    r8,[rbp+0x48]
2d28df  c6 45 48 00                    mov    BYTE PTR [rbp+0x48],0x0
2d28e3  48 8b d0                       mov    rdx,rax
2d28e6  49 8b ce                       mov    rcx,r14
2d28e9  e8 1a c5 ff ff                 call   0x2cee08
2d28ee  e9 b9 00 00 00                 jmp    0x2d29ac
2d28f3  48 8b ce                       mov    rcx,rsi
2d28f6  e8 05 44 00 00                 call   0x2d6d00
2d28fb  48 8b cf                       mov    rcx,rdi
2d28fe  e8 a1 8a ff ff                 call   0x2cb3a4
2d2903  49 8b cd                       mov    rcx,r13
2d2906  48 8b f8                       mov    rdi,rax
2d2909  e8 96 8a ff ff                 call   0x2cb3a4
2d290e  49 8b cf                       mov    rcx,r15
2d2911  48 8b d8                       mov    rbx,rax
2d2914  e8 0b aa ff ff                 call   0x2cd324
2d2919  48 8b d0                       mov    rdx,rax
2d291c  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d2920  4c 8b cf                       mov    r9,rdi
2d2923  4c 8b c3                       mov    r8,rbx
2d2926  e8 21 c3 ff ff                 call   0x2cec4c
2d292b  48 8b ce                       mov    rcx,rsi
2d292e  e8 11 44 00 00                 call   0x2d6d44
2d2933  84 c0                          test   al,al
2d2935  74 2f                          je     0x2d2966
2d2937  48 8b ce                       mov    rcx,rsi
2d293a  e8 d1 4c 00 00                 call   0x2d7610
2d293f  48 8b 4d e8                    mov    rcx,QWORD PTR [rbp-0x18]
2d2943  48 83 c1 10                    add    rcx,0x10
2d2947  e8 58 8a ff ff                 call   0x2cb3a4
2d294c  4c 8b c0                       mov    r8,rax
2d294f  48 8d 55 d0                    lea    rdx,[rbp-0x30]
2d2953  4d 8b cc                       mov    r9,r12
2d2956  48 8b ce                       mov    rcx,rsi
2d2959  e8 76 de ff ff                 call   0x2d07d4
2d295e  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2d2961  f3 0f 7f 45 d0                 movdqu XMMWORD PTR [rbp-0x30],xmm0
2d2966  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d296a  e8 c9 4c 00 00                 call   0x2d7638
2d296f  4c 8b 45 d0                    mov    r8,QWORD PTR [rbp-0x30]
2d2973  4c 8b c8                       mov    r9,rax
2d2976  49 8b d4                       mov    rdx,r12
2d2979  48 8b ce                       mov    rcx,rsi
2d297c  e8 a7 49 00 00                 call   0x2d7328
2d2981  4c 8b c0                       mov    r8,rax
2d2984  48 8d 55 c8                    lea    rdx,[rbp-0x38]
2d2988  49 8b cf                       mov    rcx,r15
2d298b  e8 74 4b 00 00                 call   0x2d7504
2d2990  4c 8d 45 48                    lea    r8,[rbp+0x48]
2d2994  c6 45 48 01                    mov    BYTE PTR [rbp+0x48],0x1
2d2998  48 8b d0                       mov    rdx,rax
2d299b  49 8b ce                       mov    rcx,r14
2d299e  e8 65 c4 ff ff                 call   0x2cee08
2d29a3  48 8d 4d e0                    lea    rcx,[rbp-0x20]
2d29a7  e8 20 20 00 00                 call   0x2d49cc
2d29ac  49 8b c6                       mov    rax,r14
2d29af  48 83 c4 58                    add    rsp,0x58
2d29b3  41 5f                          pop    r15
2d29b5  41 5e                          pop    r14
2d29b7  41 5d                          pop    r13
2d29b9  41 5c                          pop    r12
2d29bb  5f                             pop    rdi
2d29bc  5e                             pop    rsi
2d29bd  5b                             pop    rbx
2d29be  5d                             pop    rbp
2d29bf  c3                             ret

