; pdata function 0x36df3c..0x36df5a unwind=0x3d2038
36df3c  40 53                          rex push rbx
36df3e  48 83 ec 20                    sub    rsp,0x20
36df42  48 8b d9                       mov    rbx,rcx
36df45  e8 16 66 f6 ff                 call   0x2d4560
36df4a  48 8b c3                       mov    rax,rbx
36df4d  c7 43 20 01 00 00 00           mov    DWORD PTR [rbx+0x20],0x1
36df54  48 83 c4 20                    add    rsp,0x20
36df58  5b                             pop    rbx
36df59  c3                             ret

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

; pdata function 0x36fdb8..0x36fddd unwind=0x3d2038
36fdb8  40 53                          rex push rbx
36fdba  48 83 ec 20                    sub    rsp,0x20
36fdbe  48 8b 51 10                    mov    rdx,QWORD PTR [rcx+0x10]
36fdc2  48 8b d9                       mov    rbx,rcx
36fdc5  48 ff c2                       inc    rdx
36fdc8  e8 6b fd ff ff                 call   0x36fb38
36fdcd  48 8b d0                       mov    rdx,rax
36fdd0  48 8b cb                       mov    rcx,rbx
36fdd3  48 83 c4 20                    add    rsp,0x20
36fdd7  5b                             pop    rbx
36fdd8  e9 cf fd ff ff                 jmp    0x36fbac

