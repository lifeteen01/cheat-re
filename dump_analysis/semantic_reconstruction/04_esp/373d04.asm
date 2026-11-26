; pdata function 0x373d04..0x373d82 unwind=0x3d4050
373d04  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
373d09  48 89 7c 24 10                 mov    QWORD PTR [rsp+0x10],rdi
373d0e  55                             push   rbp
373d0f  48 8b ec                       mov    rbp,rsp
373d12  48 83 ec 60                    sub    rsp,0x60
373d16  48 8b fa                       mov    rdi,rdx
373d19  48 8b d9                       mov    rbx,rcx
373d1c  e8 e7 71 f5 ff                 call   0x2caf08
373d21  84 c0                          test   al,al
373d23  74 4d                          je     0x373d72
373d25  48 8d 55 c0                    lea    rdx,[rbp-0x40]
373d29  48 8b cb                       mov    rcx,rbx
373d2c  e8 2f ff ff ff                 call   0x373c60
373d31  0f 10 45 c0                    movups xmm0,XMMWORD PTR [rbp-0x40]
373d35  48 8d 55 c0                    lea    rdx,[rbp-0x40]
373d39  48 8d 4d d0                    lea    rcx,[rbp-0x30]
373d3d  66 0f 7f 45 c0                 movdqa XMMWORD PTR [rbp-0x40],xmm0
373d42  e8 85 fb ff ff                 call   0x3738cc
373d47  0f 10 07                       movups xmm0,XMMWORD PTR [rdi]
373d4a  4c 8d 45 c0                    lea    r8,[rbp-0x40]
373d4e  0f 10 4d d0                    movups xmm1,XMMWORD PTR [rbp-0x30]
373d52  48 8d 55 e0                    lea    rdx,[rbp-0x20]
373d56  48 8d 4d f0                    lea    rcx,[rbp-0x10]
373d5a  f3 0f 7f 45 c0                 movdqu XMMWORD PTR [rbp-0x40],xmm0
373d5f  66 0f 7f 4d e0                 movdqa XMMWORD PTR [rbp-0x20],xmm1
373d64  e8 bf fd ff ff                 call   0x373b28
373d69  0f 10 45 f0                    movups xmm0,XMMWORD PTR [rbp-0x10]
373d6d  f3 0f 7f 43 5c                 movdqu XMMWORD PTR [rbx+0x5c],xmm0
373d72  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
373d77  48 8b 7c 24 78                 mov    rdi,QWORD PTR [rsp+0x78]
373d7c  48 83 c4 60                    add    rsp,0x60
373d80  5d                             pop    rbp
373d81  c3                             ret
