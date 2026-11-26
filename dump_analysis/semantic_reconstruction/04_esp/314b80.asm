; pdata function 0x314b80..0x314bb4 unwind=0x0
314b80  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
314b85  ba 02 00 00 00                 mov    edx,0x2
314b8a  48 8d 4c 24 08                 lea    rcx,[rsp+0x8]
314b8f  8b 01                          mov    eax,DWORD PTR [rcx]
314b91  05 b8 1f 23 3c                 add    eax,0x3c231fb8
314b96  35 82 86 74 62                 xor    eax,0x62748682
314b9b  c1 c8 07                       ror    eax,0x7
314b9e  05 33 23 a5 59                 add    eax,0x59a52333
314ba3  89 01                          mov    DWORD PTR [rcx],eax
314ba5  48 8d 49 04                    lea    rcx,[rcx+0x4]
314ba9  83 c2 ff                       add    edx,0xffffffff
314bac  75 e1                          jne    0x314b8f
314bae  48 8b 44 24 08                 mov    rax,QWORD PTR [rsp+0x8]
314bb3  c3                             ret
