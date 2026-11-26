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

; pdata function 0x37c280..0x37c2bf unwind=0x3d2040
37c280  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37c285  57                             push   rdi
37c286  48 83 ec 20                    sub    rsp,0x20
37c28a  48 8b f9                       mov    rdi,rcx
37c28d  49 8b d8                       mov    rbx,r8
37c290  48 8b ca                       mov    rcx,rdx
37c293  e8 0c f1 f4 ff                 call   0x2cb3a4
37c298  48 8b cb                       mov    rcx,rbx
37c29b  8b 10                          mov    edx,DWORD PTR [rax]
37c29d  89 17                          mov    DWORD PTR [rdi],edx
37c29f  e8 00 f1 f4 ff                 call   0x2cb3a4
37c2a4  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
37c2a9  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
37c2ac  0f 11 47 04                    movups XMMWORD PTR [rdi+0x4],xmm0
37c2b0  8b 40 10                       mov    eax,DWORD PTR [rax+0x10]
37c2b3  89 47 14                       mov    DWORD PTR [rdi+0x14],eax
37c2b6  48 8b c7                       mov    rax,rdi
37c2b9  48 83 c4 20                    add    rsp,0x20
37c2bd  5f                             pop    rdi
37c2be  c3                             ret

