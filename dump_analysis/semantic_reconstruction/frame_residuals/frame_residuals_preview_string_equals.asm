; pdata function 0x2d6fd4..0x2d701e unwind=0x3d2054
2d6fd4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d6fd9  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d6fde  57                             push   rdi
2d6fdf  48 83 ec 20                    sub    rsp,0x20
2d6fe3  48 8b f1                       mov    rsi,rcx
2d6fe6  48 8b fa                       mov    rdi,rdx
2d6fe9  48 8b ca                       mov    rcx,rdx
2d6fec  e8 f3 64 ff ff                 call   0x2cd4e4
2d6ff1  48 8b ce                       mov    rcx,rsi
2d6ff4  48 8b d8                       mov    rbx,rax
2d6ff7  e8 e8 64 ff ff                 call   0x2cd4e4
2d6ffc  4c 8b 4f 10                    mov    r9,QWORD PTR [rdi+0x10]
2d7000  48 8b c8                       mov    rcx,rax
2d7003  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
2d7007  4c 8b c3                       mov    r8,rbx
2d700a  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d700f  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d7014  48 83 c4 20                    add    rsp,0x20
2d7018  5f                             pop    rdi
2d7019  e9 6a a9 ff ff                 jmp    0x2d1988

; pdata function 0x2d7020..0x2d7069 unwind=0x3d2054
2d7020  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d7025  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d702a  57                             push   rdi
2d702b  48 83 ec 20                    sub    rsp,0x20
2d702f  48 8b f1                       mov    rsi,rcx
2d7032  48 8b fa                       mov    rdi,rdx
2d7035  48 8b ca                       mov    rcx,rdx
2d7038  e8 93 75 ff ff                 call   0x2ce5d0
2d703d  48 8b ce                       mov    rcx,rsi
2d7040  48 8b d8                       mov    rbx,rax
2d7043  e8 9c 64 ff ff                 call   0x2cd4e4
2d7048  48 8b 56 10                    mov    rdx,QWORD PTR [rsi+0x10]
2d704c  48 8b c8                       mov    rcx,rax
2d704f  4c 8b cb                       mov    r9,rbx
2d7052  4c 8b c7                       mov    r8,rdi
2d7055  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d705a  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d705f  48 83 c4 20                    add    rsp,0x20
2d7063  5f                             pop    rdi
2d7064  e9 1f a9 ff ff                 jmp    0x2d1988

