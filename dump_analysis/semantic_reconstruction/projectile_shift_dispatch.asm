; pdata function 0x2d0b64..0x2d0bac unwind=0x3d2778
2d0b64  48 8b c4                       mov    rax,rsp
2d0b67  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2d0b6b  48 89 70 18                    mov    QWORD PTR [rax+0x18],rsi
2d0b6f  48 89 50 10                    mov    QWORD PTR [rax+0x10],rdx
2d0b73  57                             push   rdi
2d0b74  48 83 ec 20                    sub    rsp,0x20
2d0b78  48 8b f9                       mov    rdi,rcx
2d0b7b  49 8b f0                       mov    rsi,r8
2d0b7e  48 8d 48 10                    lea    rcx,[rax+0x10]
2d0b82  e8 f1 0d 00 00                 call   0x2d1978
2d0b87  4c 8b c6                       mov    r8,rsi
2d0b8a  48 8b d7                       mov    rdx,rdi
2d0b8d  48 8b c8                       mov    rcx,rax
2d0b90  48 8b d8                       mov    rbx,rax
2d0b93  e8 b4 81 0f 00                 call   0x3c8d4c
2d0b98  48 8d 04 33                    lea    rax,[rbx+rsi*1]
2d0b9c  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d0ba1  48 8b 74 24 40                 mov    rsi,QWORD PTR [rsp+0x40]
2d0ba6  48 83 c4 20                    add    rsp,0x20
2d0baa  5f                             pop    rdi
2d0bab  c3                             ret

