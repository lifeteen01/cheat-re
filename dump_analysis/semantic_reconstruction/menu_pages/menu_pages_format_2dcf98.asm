; pdata function 0x2dcf98..0x2dcfd4 unwind=0x3d2040
2dcf98  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2dcf9d  57                             push   rdi
2dcf9e  48 83 ec 20                    sub    rsp,0x20
2dcfa2  48 8b 39                       mov    rdi,QWORD PTR [rcx]
2dcfa5  48 8b d9                       mov    rbx,rcx
2dcfa8  48 3b 79 08                    cmp    rdi,QWORD PTR [rcx+0x8]
2dcfac  74 1b                          je     0x2dcfc9
2dcfae  e8 71 03 ff ff                 call   0x2cd324
2dcfb3  48 8b 53 08                    mov    rdx,QWORD PTR [rbx+0x8]
2dcfb7  4c 8b c0                       mov    r8,rax
2dcfba  48 8b cf                       mov    rcx,rdi
2dcfbd  e8 d6 28 ff ff                 call   0x2cf898
2dcfc2  48 8b 03                       mov    rax,QWORD PTR [rbx]
2dcfc5  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
2dcfc9  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2dcfce  48 83 c4 20                    add    rsp,0x20
2dcfd2  5f                             pop    rdi
2dcfd3  c3                             ret

