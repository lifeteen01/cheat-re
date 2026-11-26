; pdata function 0x3b41f8..0x3b424f unwind=0x3d2040
3b41f8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3b41fd  57                             push   rdi
3b41fe  48 83 ec 20                    sub    rsp,0x20
3b4202  48 8b da                       mov    rbx,rdx
3b4205  48 8b f9                       mov    rdi,rcx
3b4208  e8 0b c8 ff ff                 call   0x3b0a18
3b420d  8b 03                          mov    eax,DWORD PTR [rbx]
3b420f  ba 00 00 80 3f                 mov    edx,0x3f800000
3b4214  33 c9                          xor    ecx,ecx
3b4216  89 47 30                       mov    DWORD PTR [rdi+0x30],eax
3b4219  8b 43 04                       mov    eax,DWORD PTR [rbx+0x4]
3b421c  89 47 34                       mov    DWORD PTR [rdi+0x34],eax
3b421f  8b 43 08                       mov    eax,DWORD PTR [rbx+0x8]
3b4222  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3b4227  89 47 38                       mov    DWORD PTR [rdi+0x38],eax
3b422a  48 8b c7                       mov    rax,rdi
3b422d  48 89 17                       mov    QWORD PTR [rdi],rdx
3b4230  89 4f 10                       mov    DWORD PTR [rdi+0x10],ecx
3b4233  48 89 4f 20                    mov    QWORD PTR [rdi+0x20],rcx
3b4237  48 89 57 14                    mov    QWORD PTR [rdi+0x14],rdx
3b423b  48 89 4f 08                    mov    QWORD PTR [rdi+0x8],rcx
3b423f  48 89 57 28                    mov    QWORD PTR [rdi+0x28],rdx
3b4243  89 4f 1c                       mov    DWORD PTR [rdi+0x1c],ecx
3b4246  89 57 3c                       mov    DWORD PTR [rdi+0x3c],edx
3b4249  48 83 c4 20                    add    rsp,0x20
3b424d  5f                             pop    rdi
3b424e  c3                             ret
