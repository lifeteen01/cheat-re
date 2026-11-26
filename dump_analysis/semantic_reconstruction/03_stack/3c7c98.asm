; pdata function 0x3c7c98..0x3c7d02 unwind=0x3d2038
3c7c98  40 53                          rex push rbx
3c7c9a  48 83 ec 20                    sub    rsp,0x20
3c7c9e  48 8b da                       mov    rbx,rdx
3c7ca1  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
3c7ca6  49 8b d0                       mov    rdx,r8
3c7ca9  e8 ba 45 f0 ff                 call   0x2cc268
3c7cae  48 8d 8b 88 00 00 00           lea    rcx,[rbx+0x88]
3c7cb5  c6 44 24 38 00                 mov    BYTE PTR [rsp+0x38],0x0
3c7cba  41 b8 08 00 00 00              mov    r8d,0x8
3c7cc0  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
3c7cc5  e8 82 10 00 00                 call   0x3c8d4c
3c7cca  48 8d 8b d0 00 00 00           lea    rcx,[rbx+0xd0]
3c7cd1  41 b8 04 00 00 00              mov    r8d,0x4
3c7cd7  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
3c7cdc  e8 6b 10 00 00                 call   0x3c8d4c
3c7ce1  48 8d 44 24 28                 lea    rax,[rsp+0x28]
3c7ce6  48 c7 83 80 00 00 00 01 00 00 00 mov    QWORD PTR [rbx+0x80],0x1
3c7cf1  48 8b cb                       mov    rcx,rbx
3c7cf4  48 89 43 78                    mov    QWORD PTR [rbx+0x78],rax
3c7cf8  48 83 c4 20                    add    rsp,0x20
3c7cfc  5b                             pop    rbx
3c7cfd  e9 d2 5e 00 00                 jmp    0x3cdbd4
