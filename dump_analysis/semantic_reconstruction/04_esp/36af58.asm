; pdata function 0x36af58..0x36b001 unwind=0x3d2228
36af58  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36af5d  57                             push   rdi
36af5e  48 83 ec 40                    sub    rsp,0x40
36af62  48 8b d1                       mov    rdx,rcx
36af65  e8 9e ff f5 ff                 call   0x2caf08
36af6a  84 c0                          test   al,al
36af6c  0f 84 82 00 00 00              je     0x36aff4
36af72  48 8b 92 40 06 00 00           mov    rdx,QWORD PTR [rdx+0x640]
36af79  48 8b ca                       mov    rcx,rdx
36af7c  e8 87 ff f5 ff                 call   0x2caf08
36af81  84 c0                          test   al,al
36af83  74 6f                          je     0x36aff4
36af85  48 83 c2 14                    add    rdx,0x14
36af89  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36af8e  e8 35 96 f6 ff                 call   0x2d45c8
36af93  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36af98  e8 f7 d6 f6 ff                 call   0x2d8694
36af9d  84 c0                          test   al,al
36af9f  75 42                          jne    0x36afe3
36afa1  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36afa6  33 db                          xor    ebx,ebx
36afa8  e8 03 03 00 00                 call   0x36b2b0
36afad  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36afb2  48 8b f8                       mov    rdi,rax
36afb5  e8 fe 02 00 00                 call   0x36b2b8
36afba  eb 20                          jmp    0x36afdc
36afbc  0f b7 0f                       movzx  ecx,WORD PTR [rdi]
36afbf  66 83 e9 30                    sub    cx,0x30
36afc3  66 83 f9 09                    cmp    cx,0x9
36afc7  77 1a                          ja     0x36afe3
36afc9  0f b7 0f                       movzx  ecx,WORD PTR [rdi]
36afcc  48 8d 1c 9b                    lea    rbx,[rbx+rbx*4]
36afd0  48 8d 5b e8                    lea    rbx,[rbx-0x18]
36afd4  48 83 c7 02                    add    rdi,0x2
36afd8  48 8d 1c 59                    lea    rbx,[rcx+rbx*2]
36afdc  48 3b f8                       cmp    rdi,rax
36afdf  75 db                          jne    0x36afbc
36afe1  eb 02                          jmp    0x36afe5
36afe3  33 db                          xor    ebx,ebx
36afe5  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
36afea  e8 61 9a f6 ff                 call   0x2d4a50
36afef  48 8b c3                       mov    rax,rbx
36aff2  eb 02                          jmp    0x36aff6
36aff4  33 c0                          xor    eax,eax
36aff6  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
36affb  48 83 c4 40                    add    rsp,0x40
36afff  5f                             pop    rdi
36b000  c3                             ret
