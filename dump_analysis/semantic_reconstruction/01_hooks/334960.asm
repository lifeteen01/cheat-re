; pdata function 0x334960..0x3349aa unwind=0x3d206c
334960  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
334965  57                             push   rdi
334966  48 83 ec 20                    sub    rsp,0x20
33496a  48 8b fa                       mov    rdi,rdx
33496d  48 8b d9                       mov    rbx,rcx
334970  48 85 c9                       test   rcx,rcx
334973  74 28                          je     0x33499d
334975  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
33497e  eb 0e                          jmp    0x33498e
334980  48 83 38 00                    cmp    QWORD PTR [rax],0x0
334984  74 05                          je     0x33498b
334986  48 39 38                       cmp    QWORD PTR [rax],rdi
334989  74 14                          je     0x33499f
33498b  48 8b cb                       mov    rcx,rbx
33498e  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
334993  e8 c8 fc ff ff                 call   0x334660
334998  48 85 c0                       test   rax,rax
33499b  75 e3                          jne    0x334980
33499d  33 c0                          xor    eax,eax
33499f  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
3349a4  48 83 c4 20                    add    rsp,0x20
3349a8  5f                             pop    rdi
3349a9  c3                             ret
