; pdata function 0x2d7c04..0x2d7c35 unwind=0x3d2040
2d7c04  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d7c09  57                             push   rdi
2d7c0a  48 83 ec 20                    sub    rsp,0x20
2d7c0e  48 8b f9                       mov    rdi,rcx
2d7c11  48 8b da                       mov    rbx,rdx
2d7c14  48 8b ca                       mov    rcx,rdx
2d7c17  e8 c8 58 ff ff                 call   0x2cd4e4
2d7c1c  4c 8b 43 10                    mov    r8,QWORD PTR [rbx+0x10]
2d7c20  48 8b d0                       mov    rdx,rax
2d7c23  48 8b cf                       mov    rcx,rdi
2d7c26  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d7c2b  48 83 c4 20                    add    rsp,0x20
2d7c2f  5f                             pop    rdi
2d7c30  e9 f7 34 ff ff                 jmp    0x2cb12c

; pdata function 0x2d6fa8..0x2d6fd3 unwind=0x3d2038
2d6fa8  40 53                          rex push rbx
2d6faa  48 83 ec 20                    sub    rsp,0x20
2d6fae  48 8b da                       mov    rbx,rdx
2d6fb1  48 89 51 10                    mov    QWORD PTR [rcx+0x10],rdx
2d6fb5  c6 44 24 30 00                 mov    BYTE PTR [rsp+0x30],0x0
2d6fba  e8 25 65 ff ff                 call   0x2cd4e4
2d6fbf  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2d6fc4  48 8d 0c 03                    lea    rcx,[rbx+rax*1]
2d6fc8  e8 17 68 ff ff                 call   0x2cd7e4
2d6fcd  48 83 c4 20                    add    rsp,0x20
2d6fd1  5b                             pop    rbx
2d6fd2  c3                             ret

; pdata function 0x2d41f0..0x2d4252 unwind=0x3d2130
2d41f0  40 53                          rex push rbx
2d41f2  55                             push   rbp
2d41f3  56                             push   rsi
2d41f4  57                             push   rdi
2d41f5  48 83 ec 28                    sub    rsp,0x28
2d41f9  49 8b f0                       mov    rsi,r8
2d41fc  48 8b fa                       mov    rdi,rdx
2d41ff  4c 8b 44 24 70                 mov    r8,QWORD PTR [rsp+0x70]
2d4204  49 8b d9                       mov    rbx,r9
2d4207  8a 54 24 50                    mov    dl,BYTE PTR [rsp+0x50]
2d420b  48 8b e9                       mov    rbp,rcx
2d420e  e8 ad 69 ff ff                 call   0x2cabc0
2d4213  48 8b d6                       mov    rdx,rsi
2d4216  48 8b cf                       mov    rcx,rdi
2d4219  e8 0e 2b 00 00                 call   0x2d6d2c
2d421e  4c 8b c3                       mov    r8,rbx
2d4221  48 8b d6                       mov    rdx,rsi
2d4224  48 8b cf                       mov    rcx,rdi
2d4227  e8 a4 2b 00 00                 call   0x2d6dd0
2d422c  48 8b cf                       mov    rcx,rdi
2d422f  48 8b d8                       mov    rbx,rax
2d4232  e8 ad 92 ff ff                 call   0x2cd4e4
2d4237  4c 8b c3                       mov    r8,rbx
2d423a  48 8b cd                       mov    rcx,rbp
2d423d  48 8d 14 06                    lea    rdx,[rsi+rax*1]
2d4241  e8 c2 6f ff ff                 call   0x2cb208
2d4246  48 8b c5                       mov    rax,rbp
2d4249  48 83 c4 28                    add    rsp,0x28
2d424d  5f                             pop    rdi
2d424e  5e                             pop    rsi
2d424f  5d                             pop    rbp
2d4250  5b                             pop    rbx
2d4251  c3                             ret

