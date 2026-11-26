; explicit leaf/assembly range 0x2ded6c..0x2dee1c unwind=0x0
2ded6c  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2ded71  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2ded76  55                             push   rbp
2ded77  53                             push   rbx
2ded78  56                             push   rsi
2ded79  57                             push   rdi
2ded7a  41 56                          push   r14
2ded7c  48 8b ec                       mov    rbp,rsp
2ded7f  48 83 ec 30                    sub    rsp,0x30
2ded83  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2ded87  4d 8b f0                       mov    r14,r8
2ded8a  e8 49 f8 fe ff                 call   0x2ce5d8
2ded8f  48 8d 4d 38                    lea    rcx,[rbp+0x38]
2ded93  48 89 45 f0                    mov    QWORD PTR [rbp-0x10],rax
2ded97  48 8b f8                       mov    rdi,rax
2ded9a  e8 39 f8 fe ff                 call   0x2ce5d8
2ded9f  48 8b d0                       mov    rdx,rax
2deda2  48 8b cf                       mov    rcx,rdi
2deda5  e8 da fe ff ff                 call   0x2dec84
2dedaa  48 8b d8                       mov    rbx,rax
2dedad  48 85 c0                       test   rax,rax
2dedb0  7e 4e                          jle    0x2dee00
2dedb2  48 8b f3                       mov    rsi,rbx
2dedb5  48 8b cf                       mov    rcx,rdi
2dedb8  48 d1 ee                       shr    rsi,1
2dedbb  48 8b d6                       mov    rdx,rsi
2dedbe  e8 59 00 00 00                 call   0x2dee1c
2dedc3  4d 8b c6                       mov    r8,r14
2dedc6  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2dedca  48 8b d0                       mov    rdx,rax
2dedcd  48 8b f8                       mov    rdi,rax
2dedd0  e8 b3 f0 ff ff                 call   0x2dde88
2dedd5  84 c0                          test   al,al
2dedd7  74 1b                          je     0x2dedf4
2dedd9  48 8b cf                       mov    rcx,rdi
2deddc  e8 ef f5 ff ff                 call   0x2de3d0
2dede1  48 8b f8                       mov    rdi,rax
2dede4  48 89 45 f0                    mov    QWORD PTR [rbp-0x10],rax
2dede8  48 83 c8 ff                    or     rax,0xffffffffffffffff
2dedec  48 2b c6                       sub    rax,rsi
2dedef  48 03 d8                       add    rbx,rax
2dedf2  eb 07                          jmp    0x2dedfb
2dedf4  48 8b 7d f0                    mov    rdi,QWORD PTR [rbp-0x10]
2dedf8  48 8b de                       mov    rbx,rsi
2dedfb  48 85 db                       test   rbx,rbx
2dedfe  7f b2                          jg     0x2dedb2
2dee00  48 8d 55 f0                    lea    rdx,[rbp-0x10]
2dee04  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2dee08  e8 df 29 ff ff                 call   0x2d17ec
2dee0d  48 8b 45 30                    mov    rax,QWORD PTR [rbp+0x30]
2dee11  48 83 c4 30                    add    rsp,0x30
2dee15  41 5e                          pop    r14
2dee17  5f                             pop    rdi
2dee18  5e                             pop    rsi
2dee19  5b                             pop    rbx
2dee1a  5d                             pop    rbp
2dee1b  c3                             ret
; explicit leaf/assembly range 0x2dee5c..0x2def0c unwind=0x0
2dee5c  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2dee61  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2dee66  55                             push   rbp
2dee67  53                             push   rbx
2dee68  56                             push   rsi
2dee69  57                             push   rdi
2dee6a  41 56                          push   r14
2dee6c  48 8b ec                       mov    rbp,rsp
2dee6f  48 83 ec 30                    sub    rsp,0x30
2dee73  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2dee77  4d 8b f0                       mov    r14,r8
2dee7a  e8 59 f7 fe ff                 call   0x2ce5d8
2dee7f  48 8d 4d 38                    lea    rcx,[rbp+0x38]
2dee83  48 89 45 f0                    mov    QWORD PTR [rbp-0x10],rax
2dee87  48 8b f8                       mov    rdi,rax
2dee8a  e8 49 f7 fe ff                 call   0x2ce5d8
2dee8f  48 8b d0                       mov    rdx,rax
2dee92  48 8b cf                       mov    rcx,rdi
2dee95  e8 ea fd ff ff                 call   0x2dec84
2dee9a  48 8b d8                       mov    rbx,rax
2dee9d  48 85 c0                       test   rax,rax
2deea0  7e 4e                          jle    0x2deef0
2deea2  48 8b f3                       mov    rsi,rbx
2deea5  48 8b cf                       mov    rcx,rdi
2deea8  48 d1 ee                       shr    rsi,1
2deeab  48 8b d6                       mov    rdx,rsi
2deeae  e8 69 ff ff ff                 call   0x2dee1c
2deeb3  4c 8b c0                       mov    r8,rax
2deeb6  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2deeba  49 8b d6                       mov    rdx,r14
2deebd  48 8b f8                       mov    rdi,rax
2deec0  e8 c3 ef ff ff                 call   0x2dde88
2deec5  84 c0                          test   al,al
2deec7  74 09                          je     0x2deed2
2deec9  48 8b 7d f0                    mov    rdi,QWORD PTR [rbp-0x10]
2deecd  48 8b de                       mov    rbx,rsi
2deed0  eb 19                          jmp    0x2deeeb
2deed2  48 8b cf                       mov    rcx,rdi
2deed5  e8 f6 f4 ff ff                 call   0x2de3d0
2deeda  48 8b f8                       mov    rdi,rax
2deedd  48 89 45 f0                    mov    QWORD PTR [rbp-0x10],rax
2deee1  48 83 c8 ff                    or     rax,0xffffffffffffffff
2deee5  48 2b c6                       sub    rax,rsi
2deee8  48 03 d8                       add    rbx,rax
2deeeb  48 85 db                       test   rbx,rbx
2deeee  7f b2                          jg     0x2deea2
2deef0  48 8d 55 f0                    lea    rdx,[rbp-0x10]
2deef4  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2deef8  e8 ef 28 ff ff                 call   0x2d17ec
2deefd  48 8b 45 30                    mov    rax,QWORD PTR [rbp+0x30]
2def01  48 83 c4 30                    add    rsp,0x30
2def05  41 5e                          pop    r14
2def07  5f                             pop    rdi
2def08  5e                             pop    rsi
2def09  5b                             pop    rbx
2def0a  5d                             pop    rbp
2def0b  c3                             ret
; explicit leaf/assembly range 0x2dde88..0x2dde94 unwind=0x0
2dde88  f3 41 0f 10 00                 movss  xmm0,DWORD PTR [r8]
2dde8d  0f 2f 02                       comiss xmm0,DWORD PTR [rdx]
2dde90  0f 97 c0                       seta   al
2dde93  c3                             ret
