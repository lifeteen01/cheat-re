; pdata function 0x2dbac8..0x2dbaff unwind=0x3d2420
2dbac8  4d 85 c0                       test   r8,r8
2dbacb  74 31                          je     0x2dbafe
2dbacd  53                             push   rbx
2dbace  55                             push   rbp
2dbacf  56                             push   rsi
2dbad0  57                             push   rdi
2dbad1  48 83 ec 28                    sub    rsp,0x28
2dbad5  48 8b fa                       mov    rdi,rdx
2dbad8  49 8b e9                       mov    rbp,r9
2dbadb  49 0f af f8                    imul   rdi,r8
2dbadf  49 8b d8                       mov    rbx,r8
2dbae2  48 8b f2                       mov    rsi,rdx
2dbae5  48 03 f9                       add    rdi,rcx
2dbae8  48 2b fe                       sub    rdi,rsi
2dbaeb  48 8b cf                       mov    rcx,rdi
2dbaee  ff d5                          call   rbp
2dbaf0  48 83 eb 01                    sub    rbx,0x1
2dbaf4  75 f2                          jne    0x2dbae8
2dbaf6  48 83 c4 28                    add    rsp,0x28
2dbafa  5f                             pop    rdi
2dbafb  5e                             pop    rsi
2dbafc  5d                             pop    rbp
2dbafd  5b                             pop    rbx
2dbafe  c3                             ret

