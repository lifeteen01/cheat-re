; pdata function 0x3ca960..0x3ca9be unwind=0x3d2054
3ca960  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3ca965  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3ca96a  57                             push   rdi
3ca96b  48 83 ec 20                    sub    rsp,0x20
3ca96f  48 8b d9                       mov    rbx,rcx
3ca972  48 8b fa                       mov    rdi,rdx
3ca975  48 8b ca                       mov    rcx,rdx
3ca978  e8 87 ff ff ff                 call   0x3ca904
3ca97d  48 8b f0                       mov    rsi,rax
3ca980  48 85 db                       test   rbx,rbx
3ca983  74 26                          je     0x3ca9ab
3ca985  4c 8b c6                       mov    r8,rsi
3ca988  48 8b d7                       mov    rdx,rdi
3ca98b  48 8b cb                       mov    rcx,rbx
3ca98e  e8 85 ff ff ff                 call   0x3ca918
3ca993  85 c0                          test   eax,eax
3ca995  74 14                          je     0x3ca9ab
3ca997  0f be 17                       movsx  edx,BYTE PTR [rdi]
3ca99a  48 8d 4b 01                    lea    rcx,[rbx+0x1]
3ca99e  e8 55 fb ff ff                 call   0x3ca4f8
3ca9a3  48 8b d8                       mov    rbx,rax
3ca9a6  48 85 c0                       test   rax,rax
3ca9a9  75 da                          jne    0x3ca985
3ca9ab  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
3ca9b0  48 8b c3                       mov    rax,rbx
3ca9b3  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3ca9b8  48 83 c4 20                    add    rsp,0x20
3ca9bc  5f                             pop    rdi
3ca9bd  c3                             ret

; heuristic leaf/code range 0x2cef30..0x2cef40 unwind=0x0
2cef30  e9 9f 80 00 00                 jmp    0x2d6fd4
2cef35  cc                             int3
2cef36  cc                             int3
2cef37  cc                             int3
2cef38  e9 e3 80 00 00                 jmp    0x2d7020
2cef3d  cc                             int3
2cef3e  cc                             int3
2cef3f  cc                             int3

; heuristic leaf/code range 0x2cef38..0x2cef40 unwind=0x0
2cef38  e9 e3 80 00 00                 jmp    0x2d7020
2cef3d  cc                             int3
2cef3e  cc                             int3
2cef3f  cc                             int3

