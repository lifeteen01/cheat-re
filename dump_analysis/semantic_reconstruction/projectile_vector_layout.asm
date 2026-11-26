; pdata function 0x2d7d90..0x2d7dc1 unwind=0x3d2040
2d7d90  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d7d95  57                             push   rdi
2d7d96  48 83 ec 20                    sub    rsp,0x20
2d7d9a  48 8b fa                       mov    rdi,rdx
2d7d9d  48 8b d9                       mov    rbx,rcx
2d7da0  e8 ff 35 ff ff                 call   0x2cb3a4
2d7da5  48 8b 13                       mov    rdx,QWORD PTR [rbx]
2d7da8  4c 8b c0                       mov    r8,rax
2d7dab  48 8b cf                       mov    rcx,rdi
2d7dae  e8 2d c2 ff ff                 call   0x2d3fe0
2d7db3  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d7db8  48 8b c7                       mov    rax,rdi
2d7dbb  48 83 c4 20                    add    rsp,0x20
2d7dbf  5f                             pop    rdi
2d7dc0  c3                             ret

; pdata function 0x2d87b0..0x2d87e2 unwind=0x3d2040
2d87b0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d87b5  57                             push   rdi
2d87b6  48 83 ec 20                    sub    rsp,0x20
2d87ba  48 8b fa                       mov    rdi,rdx
2d87bd  48 8b d9                       mov    rbx,rcx
2d87c0  e8 df 2b ff ff                 call   0x2cb3a4
2d87c5  48 8b 53 08                    mov    rdx,QWORD PTR [rbx+0x8]
2d87c9  4c 8b c0                       mov    r8,rax
2d87cc  48 8b cf                       mov    rcx,rdi
2d87cf  e8 0c b8 ff ff                 call   0x2d3fe0
2d87d4  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d87d9  48 8b c7                       mov    rax,rdi
2d87dc  48 83 c4 20                    add    rsp,0x20
2d87e0  5f                             pop    rdi
2d87e1  c3                             ret

; pdata function 0x2da100..0x2da15c unwind=0x3d26bc
2da100  48 8b c4                       mov    rax,rsp
2da103  4c 89 40 18                    mov    QWORD PTR [rax+0x18],r8
2da107  48 89 50 10                    mov    QWORD PTR [rax+0x10],rdx
2da10b  48 89 48 08                    mov    QWORD PTR [rax+0x8],rcx
2da10f  53                             push   rbx
2da110  56                             push   rsi
2da111  57                             push   rdi
2da112  48 83 ec 20                    sub    rsp,0x20
2da116  48 8d 48 08                    lea    rcx,[rax+0x8]
2da11a  e8 59 78 ff ff                 call   0x2d1978
2da11f  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2da124  48 8b f0                       mov    rsi,rax
2da127  e8 4c 78 ff ff                 call   0x2d1978
2da12c  48 8b f8                       mov    rdi,rax
2da12f  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
2da134  48 2b fe                       sub    rdi,rsi
2da137  48 8b df                       mov    rbx,rdi
2da13a  48 c1 fb 03                    sar    rbx,0x3
2da13e  e8 61 12 ff ff                 call   0x2cb3a4
2da143  4c 8b cb                       mov    r9,rbx
2da146  4c 8b c7                       mov    r8,rdi
2da149  48 8b ce                       mov    rcx,rsi
2da14c  48 8b 10                       mov    rdx,QWORD PTR [rax]
2da14f  e8 10 6a ff ff                 call   0x2d0b64
2da154  48 83 c4 20                    add    rsp,0x20
2da158  5f                             pop    rdi
2da159  5e                             pop    rsi
2da15a  5b                             pop    rbx
2da15b  c3                             ret

