; pdata function 0x2ea978..0x2eaa27 unwind=0x3d2120
2ea978  40 53                          rex push rbx
2ea97a  55                             push   rbp
2ea97b  56                             push   rsi
2ea97c  57                             push   rdi
2ea97d  48 83 ec 38                    sub    rsp,0x38
2ea981  49 8b f1                       mov    rsi,r9
2ea984  49 8b f8                       mov    rdi,r8
2ea987  48 8b ea                       mov    rbp,rdx
2ea98a  48 8b d9                       mov    rbx,rcx
2ea98d  e8 6a bb 02 00                 call   0x3164fc
2ea992  84 c0                          test   al,al
2ea994  74 04                          je     0x2ea99a
2ea996  b0 01                          mov    al,0x1
2ea998  eb 6e                          jmp    0x2eaa08
2ea99a  44 8b 8c 24 88 00 00 00        mov    r9d,DWORD PTR [rsp+0x88]
2ea9a2  48 8b d7                       mov    rdx,rdi
2ea9a5  4c 8b 84 24 80 00 00 00        mov    r8,QWORD PTR [rsp+0x80]
2ea9ad  48 8b cd                       mov    rcx,rbp
2ea9b0  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
2ea9b8  e8 af 97 04 00                 call   0x33416c
2ea9bd  48 85 c0                       test   rax,rax
2ea9c0  74 44                          je     0x2eaa06
2ea9c2  48 8b 38                       mov    rdi,QWORD PTR [rax]
2ea9c5  48 85 ff                       test   rdi,rdi
2ea9c8  74 3c                          je     0x2eaa06
2ea9ca  48 8b 94 24 80 00 00 00        mov    rdx,QWORD PTR [rsp+0x80]
2ea9d2  48 8b cd                       mov    rcx,rbp
2ea9d5  e8 4a 98 04 00                 call   0x334224
2ea9da  48 85 c0                       test   rax,rax
2ea9dd  74 27                          je     0x2eaa06
2ea9df  48 3b fe                       cmp    rdi,rsi
2ea9e2  74 22                          je     0x2eaa06
2ea9e4  48 8d 90 00 15 00 00           lea    rdx,[rax+0x1500]
2ea9eb  eb 10                          jmp    0x2ea9fd
2ea9ed  48 8b 08                       mov    rcx,QWORD PTR [rax]
2ea9f0  48 85 c9                       test   rcx,rcx
2ea9f3  74 05                          je     0x2ea9fa
2ea9f5  48 3b cf                       cmp    rcx,rdi
2ea9f8  74 17                          je     0x2eaa11
2ea9fa  48 ff c0                       inc    rax
2ea9fd  48 89 43 10                    mov    QWORD PTR [rbx+0x10],rax
2eaa01  48 3b c2                       cmp    rax,rdx
2eaa04  76 e7                          jbe    0x2ea9ed
2eaa06  32 c0                          xor    al,al
2eaa08  48 83 c4 38                    add    rsp,0x38
2eaa0c  5f                             pop    rdi
2eaa0d  5e                             pop    rsi
2eaa0e  5d                             pop    rbp
2eaa0f  5b                             pop    rbx
2eaa10  c3                             ret
2eaa11  48 89 30                       mov    QWORD PTR [rax],rsi
2eaa14  48 89 0b                       mov    QWORD PTR [rbx],rcx
2eaa17  48 89 73 28                    mov    QWORD PTR [rbx+0x28],rsi
2eaa1b  c7 43 30 02 00 00 00           mov    DWORD PTR [rbx+0x30],0x2
2eaa22  e9 6f ff ff ff                 jmp    0x2ea996
