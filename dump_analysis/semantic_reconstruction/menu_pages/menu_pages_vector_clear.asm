; pdata function 0x2cf898..0x2cf8e1 unwind=0x3d224c
2cf898  48 3b ca                       cmp    rcx,rdx
2cf89b  74 43                          je     0x2cf8e0
2cf89d  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2cf8a2  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2cf8a7  57                             push   rdi
2cf8a8  48 83 ec 20                    sub    rsp,0x20
2cf8ac  49 8b f0                       mov    rsi,r8
2cf8af  48 8b fa                       mov    rdi,rdx
2cf8b2  48 8b d9                       mov    rbx,rcx
2cf8b5  48 8b cb                       mov    rcx,rbx
2cf8b8  e8 e7 ba ff ff                 call   0x2cb3a4
2cf8bd  48 8b d0                       mov    rdx,rax
2cf8c0  48 8b ce                       mov    rcx,rsi
2cf8c3  e8 34 2e 00 00                 call   0x2d26fc
2cf8c8  48 83 c3 20                    add    rbx,0x20
2cf8cc  48 3b df                       cmp    rbx,rdi
2cf8cf  75 e4                          jne    0x2cf8b5
2cf8d1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2cf8d6  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2cf8db  48 83 c4 20                    add    rsp,0x20
2cf8df  5f                             pop    rdi
2cf8e0  c3                             ret

; pdata function 0x2d4758..0x2d4773 unwind=0x3d2038
2d4758  40 53                          rex push rbx
2d475a  48 83 ec 20                    sub    rsp,0x20
2d475e  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
2d4762  48 8b d9                       mov    rbx,rcx
2d4765  e8 a6 a3 ff ff                 call   0x2ceb10
2d476a  48 8b c3                       mov    rax,rbx
2d476d  48 83 c4 20                    add    rsp,0x20
2d4771  5b                             pop    rbx
2d4772  c3                             ret

