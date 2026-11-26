; pdata function 0x3193cc..0x319409 unwind=0x3d2040
3193cc  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3193d1  57                             push   rdi
3193d2  48 83 ec 20                    sub    rsp,0x20
3193d6  48 8b 59 10                    mov    rbx,QWORD PTR [rcx+0x10]
3193da  48 8b f9                       mov    rdi,rcx
3193dd  48 8b 03                       mov    rax,QWORD PTR [rbx]
3193e0  48 89 41 10                    mov    QWORD PTR [rcx+0x10],rax
3193e4  48 8b 09                       mov    rcx,QWORD PTR [rcx]
3193e7  e8 38 3f fb ff                 call   0x2cd324
3193ec  48 8b c8                       mov    rcx,rax
3193ef  48 8b d3                       mov    rdx,rbx
3193f2  e8 81 2b fd ff                 call   0x2ebf78
3193f7  48 8b 07                       mov    rax,QWORD PTR [rdi]
3193fa  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3193ff  48 ff 48 08                    dec    QWORD PTR [rax+0x8]
319403  48 83 c4 20                    add    rsp,0x20
319407  5f                             pop    rdi
319408  c3                             ret

; pdata function 0x31944c..0x319489 unwind=0x3d2040
31944c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
319451  57                             push   rdi
319452  48 83 ec 20                    sub    rsp,0x20
319456  48 8b 59 10                    mov    rbx,QWORD PTR [rcx+0x10]
31945a  48 8b f9                       mov    rdi,rcx
31945d  48 8b 03                       mov    rax,QWORD PTR [rbx]
319460  48 89 41 10                    mov    QWORD PTR [rcx+0x10],rax
319464  48 8b 09                       mov    rcx,QWORD PTR [rcx]
319467  e8 b8 3e fb ff                 call   0x2cd324
31946c  48 8b c8                       mov    rcx,rax
31946f  48 8b d3                       mov    rdx,rbx
319472  e8 45 2b fd ff                 call   0x2ebfbc
319477  48 8b 07                       mov    rax,QWORD PTR [rdi]
31947a  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
31947f  48 ff 48 08                    dec    QWORD PTR [rax+0x8]
319483  48 83 c4 20                    add    rsp,0x20
319487  5f                             pop    rdi
319488  c3                             ret

; pdata function 0x2ebe94..0x2ebed5 unwind=0x3d2040
2ebe94  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2ebe99  57                             push   rdi
2ebe9a  48 83 ec 20                    sub    rsp,0x20
2ebe9e  48 8b 42 08                    mov    rax,QWORD PTR [rdx+0x8]
2ebea2  48 8b f9                       mov    rdi,rcx
2ebea5  48 c7 00 00 00 00 00           mov    QWORD PTR [rax],0x0
2ebeac  48 8b 02                       mov    rax,QWORD PTR [rdx]
2ebeaf  48 85 c0                       test   rax,rax
2ebeb2  74 16                          je     0x2ebeca
2ebeb4  48 8b 18                       mov    rbx,QWORD PTR [rax]
2ebeb7  48 8b d0                       mov    rdx,rax
2ebeba  48 8b cf                       mov    rcx,rdi
2ebebd  e8 b6 00 00 00                 call   0x2ebf78
2ebec2  48 8b c3                       mov    rax,rbx
2ebec5  48 85 db                       test   rbx,rbx
2ebec8  75 ea                          jne    0x2ebeb4
2ebeca  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2ebecf  48 83 c4 20                    add    rsp,0x20
2ebed3  5f                             pop    rdi
2ebed4  c3                             ret

; pdata function 0x2ebf1c..0x2ebf5d unwind=0x3d2040
2ebf1c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2ebf21  57                             push   rdi
2ebf22  48 83 ec 20                    sub    rsp,0x20
2ebf26  48 8b 42 08                    mov    rax,QWORD PTR [rdx+0x8]
2ebf2a  48 8b f9                       mov    rdi,rcx
2ebf2d  48 c7 00 00 00 00 00           mov    QWORD PTR [rax],0x0
2ebf34  48 8b 02                       mov    rax,QWORD PTR [rdx]
2ebf37  48 85 c0                       test   rax,rax
2ebf3a  74 16                          je     0x2ebf52
2ebf3c  48 8b 18                       mov    rbx,QWORD PTR [rax]
2ebf3f  48 8b d0                       mov    rdx,rax
2ebf42  48 8b cf                       mov    rcx,rdi
2ebf45  e8 72 00 00 00                 call   0x2ebfbc
2ebf4a  48 8b c3                       mov    rax,rbx
2ebf4d  48 85 db                       test   rbx,rbx
2ebf50  75 ea                          jne    0x2ebf3c
2ebf52  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2ebf57  48 83 c4 20                    add    rsp,0x20
2ebf5b  5f                             pop    rdi
2ebf5c  c3                             ret

; pdata function 0x2de058..0x2de0a1 unwind=0x3d224c
2de058  48 3b ca                       cmp    rcx,rdx
2de05b  74 43                          je     0x2de0a0
2de05d  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2de062  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2de067  57                             push   rdi
2de068  48 83 ec 20                    sub    rsp,0x20
2de06c  49 8b f0                       mov    rsi,r8
2de06f  48 8b fa                       mov    rdi,rdx
2de072  48 8b d9                       mov    rbx,rcx
2de075  48 8b cb                       mov    rcx,rbx
2de078  e8 27 d3 fe ff                 call   0x2cb3a4
2de07d  48 8b d0                       mov    rdx,rax
2de080  48 8b ce                       mov    rcx,rsi
2de083  e8 e4 0b 00 00                 call   0x2dec6c
2de088  48 83 c3 40                    add    rbx,0x40
2de08c  48 3b df                       cmp    rbx,rdi
2de08f  75 e4                          jne    0x2de075
2de091  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2de096  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2de09b  48 83 c4 20                    add    rsp,0x20
2de09f  5f                             pop    rdi
2de0a0  c3                             ret

; pdata function 0x31a9dc..0x31a9f4 unwind=0x3d2038
31a9dc  40 53                          rex push rbx
31a9de  48 83 ec 20                    sub    rsp,0x20
31a9e2  48 8b d9                       mov    rbx,rcx
31a9e5  e8 ba fd fc ff                 call   0x2ea7a4
31a9ea  48 23 43 30                    and    rax,QWORD PTR [rbx+0x30]
31a9ee  48 83 c4 20                    add    rsp,0x20
31a9f2  5b                             pop    rbx
31a9f3  c3                             ret

; pdata function 0x2d7df8..0x2d7e10 unwind=0x3d2038
2d7df8  40 53                          rex push rbx
2d7dfa  48 83 ec 20                    sub    rsp,0x20
2d7dfe  48 8b d9                       mov    rbx,rcx
2d7e01  e8 de 72 ff ff                 call   0x2cf0e4
2d7e06  48 23 43 30                    and    rax,QWORD PTR [rbx+0x30]
2d7e0a  48 83 c4 20                    add    rsp,0x20
2d7e0e  5b                             pop    rbx
2d7e0f  c3                             ret

