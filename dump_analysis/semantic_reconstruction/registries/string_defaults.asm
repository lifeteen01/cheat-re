; pdata function 0x2d4560..0x2d4583 unwind=0x3d2038
2d4560  40 53                          rex push rbx
2d4562  48 83 ec 20                    sub    rsp,0x20
2d4566  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
2d456a  48 8b d9                       mov    rbx,rcx
2d456d  e8 4e 66 ff ff                 call   0x2cabc0
2d4572  48 8b cb                       mov    rcx,rbx
2d4575  e8 1e 29 00 00                 call   0x2d6e98
2d457a  48 8b c3                       mov    rax,rbx
2d457d  48 83 c4 20                    add    rsp,0x20
2d4581  5b                             pop    rbx
2d4582  c3                             ret

; pdata function 0x2cc2cc..0x2cc311 unwind=0x3d206c
2cc2cc  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2cc2d1  57                             push   rdi
2cc2d2  48 83 ec 20                    sub    rsp,0x20
2cc2d6  48 8b da                       mov    rbx,rdx
2cc2d9  48 8b f9                       mov    rdi,rcx
2cc2dc  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
2cc2e0  e8 db e8 ff ff                 call   0x2cabc0
2cc2e5  48 8b cb                       mov    rcx,rbx
2cc2e8  e8 e3 22 00 00                 call   0x2ce5d0
2cc2ed  48 8b c8                       mov    rcx,rax
2cc2f0  e8 af f0 ff ff                 call   0x2cb3a4
2cc2f5  4c 8b c0                       mov    r8,rax
2cc2f8  48 8b d3                       mov    rdx,rbx
2cc2fb  48 8b cf                       mov    rcx,rdi
2cc2fe  e8 05 ef ff ff                 call   0x2cb208
2cc303  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
2cc308  48 8b c7                       mov    rax,rdi
2cc30b  48 83 c4 20                    add    rsp,0x20
2cc30f  5f                             pop    rdi
2cc310  c3                             ret

; pdata function 0x2cc284..0x2cc2cc unwind=0x3d206c
2cc284  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2cc289  57                             push   rdi
2cc28a  48 83 ec 20                    sub    rsp,0x20
2cc28e  48 8b f9                       mov    rdi,rcx
2cc291  48 8b da                       mov    rbx,rdx
2cc294  48 8b ca                       mov    rcx,rdx
2cc297  e8 88 10 00 00                 call   0x2cd324
2cc29c  48 8b c8                       mov    rcx,rax
2cc29f  e8 00 f1 ff ff                 call   0x2cb3a4
2cc2a4  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
2cc2a8  4c 8b c0                       mov    r8,rax
2cc2ab  48 8b cf                       mov    rcx,rdi
2cc2ae  e8 0d e9 ff ff                 call   0x2cabc0
2cc2b3  48 8b d3                       mov    rdx,rbx
2cc2b6  48 8b cf                       mov    rcx,rdi
2cc2b9  e8 e2 12 00 00                 call   0x2cd5a0
2cc2be  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
2cc2c3  48 8b c7                       mov    rax,rdi
2cc2c6  48 83 c4 20                    add    rsp,0x20
2cc2ca  5f                             pop    rdi
2cc2cb  c3                             ret

; heuristic leaf/code range 0x2ce55c..0x2ce563 unwind=0x0
2ce55c  80 39 00                       cmp    BYTE PTR [rcx],0x0
2ce55f  0f 95 c0                       setne  al
2ce562  c3                             ret

; heuristic leaf/code range 0x2cd9dc..0x2cd9e3 unwind=0x0
2cd9dc  8a 02                          mov    al,BYTE PTR [rdx]
2cd9de  34 37                          xor    al,0x37
2cd9e0  88 01                          mov    BYTE PTR [rcx],al
2cd9e2  c3                             ret

