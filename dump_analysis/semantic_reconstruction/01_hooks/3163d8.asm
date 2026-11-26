; pdata function 0x3163d8..0x316455 unwind=0x3d2054
3163d8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3163dd  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3163e2  57                             push   rdi
3163e3  48 83 ec 20                    sub    rsp,0x20
3163e7  48 8b c2                       mov    rax,rdx
3163ea  48 8b d9                       mov    rbx,rcx
3163ed  48 8b 54 24 50                 mov    rdx,QWORD PTR [rsp+0x50]
3163f2  48 8b c8                       mov    rcx,rax
3163f5  49 8b f9                       mov    rdi,r9
3163f8  49 8b f0                       mov    rsi,r8
3163fb  e8 24 de 01 00                 call   0x334224
316400  48 85 c0                       test   rax,rax
316403  74 13                          je     0x316418
316405  48 8d 90 38 01 00 00           lea    rdx,[rax+0x138]
31640c  48 8b ca                       mov    rcx,rdx
31640f  e8 f4 4a fb ff                 call   0x2caf08
316414  84 c0                          test   al,al
316416  75 1e                          jne    0x316436
316418  32 c0                          xor    al,al
31641a  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
31641f  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
316424  48 83 c4 20                    add    rsp,0x20
316428  5f                             pop    rdi
316429  c3                             ret
31642a  48 8b 02                       mov    rax,QWORD PTR [rdx]
31642d  48 3b c6                       cmp    rax,rsi
316430  74 12                          je     0x316444
316432  48 83 c2 10                    add    rdx,0x10
316436  48 8b 0a                       mov    rcx,QWORD PTR [rdx]
316439  e8 ca 4a fb ff                 call   0x2caf08
31643e  84 c0                          test   al,al
316440  74 e8                          je     0x31642a
316442  eb d4                          jmp    0x316418
316444  48 89 03                       mov    QWORD PTR [rbx],rax
316447  b0 01                          mov    al,0x1
316449  48 89 3a                       mov    QWORD PTR [rdx],rdi
31644c  c7 43 30 03 00 00 00           mov    DWORD PTR [rbx+0x30],0x3
316453  eb c5                          jmp    0x31641a
