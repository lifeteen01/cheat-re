; pdata function 0x2e9fdc..0x2ea017 unwind=0x3d20e4
2e9fdc  40 53                          rex push rbx
2e9fde  48 83 ec 40                    sub    rsp,0x40
2e9fe2  0f 10 41 48                    movups xmm0,XMMWORD PTR [rcx+0x48]
2e9fe6  48 8b d9                       mov    rbx,rcx
2e9fe9  4c 8d 41 08                    lea    r8,[rcx+0x8]
2e9fed  4c 8d 4c 24 20                 lea    r9,[rsp+0x20]
2e9ff2  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e9ff7  48 8d 0d d2 cd 0e 00           lea    rcx,[rip+0xecdd2]        # 0x3d6dd0
2e9ffe  f3 0f 7f 44 24 20              movdqu XMMWORD PTR [rsp+0x20],xmm0
2ea004  e8 1b 8d fe ff                 call   0x2d2d24
2ea009  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
2ea00c  f3 0f 7f 43 48                 movdqu XMMWORD PTR [rbx+0x48],xmm0
2ea011  48 83 c4 40                    add    rsp,0x40
2ea015  5b                             pop    rbx
2ea016  c3                             ret

; pdata function 0x2ddc7c..0x2ddca5 unwind=0x3d2038
2ddc7c  40 53                          rex push rbx
2ddc7e  48 83 ec 20                    sub    rsp,0x20
2ddc82  f3 0f 10 51 48                 movss  xmm2,DWORD PTR [rcx+0x48]
2ddc87  48 8d 51 08                    lea    rdx,[rcx+0x8]
2ddc8b  48 8b d9                       mov    rbx,rcx
2ddc8e  48 8d 0d 3b 91 0f 00           lea    rcx,[rip+0xf913b]        # 0x3d6dd0
2ddc95  e8 16 50 ff ff                 call   0x2d2cb0
2ddc9a  f3 0f 11 43 48                 movss  DWORD PTR [rbx+0x48],xmm0
2ddc9f  48 83 c4 20                    add    rsp,0x20
2ddca3  5b                             pop    rbx
2ddca4  c3                             ret

; pdata function 0x2ddcc0..0x2ddce6 unwind=0x3d2038
2ddcc0  40 53                          rex push rbx
2ddcc2  48 83 ec 20                    sub    rsp,0x20
2ddcc6  44 8b 41 48                    mov    r8d,DWORD PTR [rcx+0x48]
2ddcca  48 8d 51 08                    lea    rdx,[rcx+0x8]
2ddcce  48 8b d9                       mov    rbx,rcx
2ddcd1  48 8d 0d f8 90 0f 00           lea    rcx,[rip+0xf90f8]        # 0x3d6dd0
2ddcd8  e8 67 4f ff ff                 call   0x2d2c44
2ddcdd  89 43 48                       mov    DWORD PTR [rbx+0x48],eax
2ddce0  48 83 c4 20                    add    rsp,0x20
2ddce4  5b                             pop    rbx
2ddce5  c3                             ret

; pdata function 0x2ddc00..0x2ddc4a unwind=0x3d20e4
2ddc00  40 53                          rex push rbx
2ddc02  48 83 ec 40                    sub    rsp,0x40
2ddc06  f2 0f 10 41 48                 movsd  xmm0,QWORD PTR [rcx+0x48]
2ddc0b  4c 8d 41 08                    lea    r8,[rcx+0x8]
2ddc0f  8b 41 50                       mov    eax,DWORD PTR [rcx+0x50]
2ddc12  4c 8d 4c 24 20                 lea    r9,[rsp+0x20]
2ddc17  48 8b d9                       mov    rbx,rcx
2ddc1a  f2 0f 11 44 24 20              movsd  QWORD PTR [rsp+0x20],xmm0
2ddc20  48 8d 0d a9 91 0f 00           lea    rcx,[rip+0xf91a9]        # 0x3d6dd0
2ddc27  89 44 24 28                    mov    DWORD PTR [rsp+0x28],eax
2ddc2b  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2ddc30  e8 bb 57 ff ff                 call   0x2d33f0
2ddc35  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2ddc39  f2 0f 11 43 48                 movsd  QWORD PTR [rbx+0x48],xmm0
2ddc3e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2ddc41  89 43 50                       mov    DWORD PTR [rbx+0x50],eax
2ddc44  48 83 c4 40                    add    rsp,0x40
2ddc48  5b                             pop    rbx
2ddc49  c3                             ret

; pdata function 0x2e3f60..0x2e3fb4 unwind=0x3d2c70
2e3f60  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e3f65  57                             push   rdi
2e3f66  48 83 ec 60                    sub    rsp,0x60
2e3f6a  48 8b d9                       mov    rbx,rcx
2e3f6d  48 8d 51 48                    lea    rdx,[rcx+0x48]
2e3f71  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2e3f76  e8 f1 0e 00 00                 call   0x2e4e6c
2e3f7b  4c 8b c8                       mov    r9,rax
2e3f7e  4c 8d 43 08                    lea    r8,[rbx+0x8]
2e3f82  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2e3f87  48 8d 0d 42 2e 0f 00           lea    rcx,[rip+0xf2e42]        # 0x3d6dd0
2e3f8e  e8 71 f0 fe ff                 call   0x2d3004
2e3f93  48 8b d0                       mov    rdx,rax
2e3f96  48 8d 4b 48                    lea    rcx,[rbx+0x48]
2e3f9a  e8 bd 10 00 00                 call   0x2e505c
2e3f9f  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2e3fa4  e8 df 0a ff ff                 call   0x2d4a88
2e3fa9  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
2e3fae  48 83 c4 60                    add    rsp,0x60
2e3fb2  5f                             pop    rdi
2e3fb3  c3                             ret

; pdata function 0x2e9f18..0x2e9f49 unwind=0x3d2038
2e9f18  40 53                          rex push rbx
2e9f1a  48 83 ec 20                    sub    rsp,0x20
2e9f1e  4c 8b 49 48                    mov    r9,QWORD PTR [rcx+0x48]
2e9f22  4c 8d 41 08                    lea    r8,[rcx+0x8]
2e9f26  48 8b d9                       mov    rbx,rcx
2e9f29  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e9f2e  48 8d 0d 9b ce 0e 00           lea    rcx,[rip+0xece9b]        # 0x3d6dd0
2e9f35  e8 1a 92 fe ff                 call   0x2d3154
2e9f3a  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e9f3e  f2 0f 11 43 48                 movsd  QWORD PTR [rbx+0x48],xmm0
2e9f43  48 83 c4 20                    add    rsp,0x20
2e9f47  5b                             pop    rbx
2e9f48  c3                             ret

; pdata function 0x2e9f60..0x2e9faa unwind=0x3d20e4
2e9f60  40 53                          rex push rbx
2e9f62  48 83 ec 40                    sub    rsp,0x40
2e9f66  f2 0f 10 41 48                 movsd  xmm0,QWORD PTR [rcx+0x48]
2e9f6b  4c 8d 41 08                    lea    r8,[rcx+0x8]
2e9f6f  8b 41 50                       mov    eax,DWORD PTR [rcx+0x50]
2e9f72  4c 8d 4c 24 20                 lea    r9,[rsp+0x20]
2e9f77  48 8b d9                       mov    rbx,rcx
2e9f7a  f2 0f 11 44 24 20              movsd  QWORD PTR [rsp+0x20],xmm0
2e9f80  48 8d 0d 49 ce 0e 00           lea    rcx,[rip+0xece49]        # 0x3d6dd0
2e9f87  89 44 24 28                    mov    DWORD PTR [rsp+0x28],eax
2e9f8b  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2e9f90  e8 ff 92 fe ff                 call   0x2d3294
2e9f95  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2e9f99  f2 0f 11 43 48                 movsd  QWORD PTR [rbx+0x48],xmm0
2e9f9e  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
2e9fa1  89 43 50                       mov    DWORD PTR [rbx+0x50],eax
2e9fa4  48 83 c4 40                    add    rsp,0x40
2e9fa8  5b                             pop    rbx
2e9fa9  c3                             ret

; pdata function 0x323008..0x32305c unwind=0x3d2c70
323008  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32300d  57                             push   rdi
32300e  48 83 ec 60                    sub    rsp,0x60
323012  48 8b d9                       mov    rbx,rcx
323015  48 8d 51 48                    lea    rdx,[rcx+0x48]
323019  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
32301e  e8 71 11 fb ff                 call   0x2d4194
323023  4c 8b c8                       mov    r9,rax
323026  4c 8d 43 08                    lea    r8,[rbx+0x8]
32302a  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
32302f  48 8d 0d 9a 3d 0b 00           lea    rcx,[rip+0xb3d9a]        # 0x3d6dd0
323036  e8 81 fe fa ff                 call   0x2d2ebc
32303b  48 8b d0                       mov    rdx,rax
32303e  48 8d 4b 48                    lea    rcx,[rbx+0x48]
323042  e8 9d 1b fb ff                 call   0x2d4be4
323047  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
32304c  e8 a3 94 fa ff                 call   0x2cc4f4
323051  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
323056  48 83 c4 60                    add    rsp,0x60
32305a  5f                             pop    rdi
32305b  c3                             ret

; pdata function 0x2d3560..0x2d35de unwind=0x3d2228
2d3560  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d3565  57                             push   rdi
2d3566  48 83 ec 40                    sub    rsp,0x40
2d356a  48 8b d9                       mov    rbx,rcx
2d356d  41 8a f8                       mov    dil,r8b
2d3570  48 8b ca                       mov    rcx,rdx
2d3573  e8 74 a2 ff ff                 call   0x2cd7ec
2d3578  48 8b c8                       mov    rcx,rax
2d357b  e8 d4 2d 00 00                 call   0x2d6354
2d3580  4c 8b c0                       mov    r8,rax
2d3583  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d3588  48 8b cb                       mov    rcx,rbx
2d358b  e8 40 54 00 00                 call   0x2d89d0
2d3590  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d3595  e8 3e 55 00 00                 call   0x2d8ad8
2d359a  48 85 c0                       test   rax,rax
2d359d  74 27                          je     0x2d35c6
2d359f  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
2d35a4  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
2d35a9  e8 1a 1a 00 00                 call   0x2d4fc8 ; STRING getter=0x2d4fc8 true
2d35ae  48 8b c8                       mov    rcx,rax
2d35b1  e8 16 a7 ff ff                 call   0x2cdccc
2d35b6  48 8b d0                       mov    rdx,rax
2d35b9  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d35be  e8 75 b9 ff ff                 call   0x2cef38
2d35c3  40 8a f8                       mov    dil,al
2d35c6  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d35cb  e8 24 8f ff ff                 call   0x2cc4f4
2d35d0  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
2d35d5  40 8a c7                       mov    al,dil
2d35d8  48 83 c4 40                    add    rsp,0x40
2d35dc  5f                             pop    rdi
2d35dd  c3                             ret

