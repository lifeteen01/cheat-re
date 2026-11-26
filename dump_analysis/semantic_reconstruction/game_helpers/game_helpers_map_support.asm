; pdata function 0x2ddddc..0x2dde01 unwind=0x3d2038
2ddddc  40 53                          rex push rbx
2dddde  48 83 ec 20                    sub    rsp,0x20
2ddde2  48 8b d9                       mov    rbx,rcx
2ddde5  49 8b c8                       mov    rcx,r8
2ddde8  e8 b7 d5 fe ff                 call   0x2cb3a4
2ddded  48 8b d0                       mov    rdx,rax
2dddf0  48 8b cb                       mov    rcx,rbx
2dddf3  e8 38 00 00 00                 call   0x2dde30
2dddf8  48 8b c3                       mov    rax,rbx
2dddfb  48 83 c4 20                    add    rsp,0x20
2dddff  5b                             pop    rbx
2dde00  c3                             ret

; pdata function 0x2ea7ac..0x2ea7dc unwind=0x3d2040
2ea7ac  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2ea7b1  57                             push   rdi
2ea7b2  48 83 ec 20                    sub    rsp,0x20
2ea7b6  49 8b d8                       mov    rbx,r8
2ea7b9  48 8b fa                       mov    rdi,rdx
2ea7bc  e8 e3 0b fe ff                 call   0x2cb3a4
2ea7c1  48 8b c8                       mov    rcx,rax
2ea7c4  4c 8b c3                       mov    r8,rbx
2ea7c7  48 8b d7                       mov    rdx,rdi
2ea7ca  e8 8d d5 00 00                 call   0x2f7d5c
2ea7cf  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2ea7d4  34 01                          xor    al,0x1
2ea7d6  48 83 c4 20                    add    rsp,0x20
2ea7da  5f                             pop    rdi
2ea7db  c3                             ret

; heuristic leaf/code range 0x319b5c..0x319b64 unwind=0x0
319b5c  e9 03 25 fd ff                 jmp    0x2ec064
319b61  cc                             int3
319b62  cc                             int3
319b63  cc                             int3

