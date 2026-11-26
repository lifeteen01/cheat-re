; pdata function 0x2ed814..0x2ed887 unwind=0x3d2120
2ed814  40 53                          rex push rbx
2ed816  55                             push   rbp
2ed817  56                             push   rsi
2ed818  57                             push   rdi
2ed819  48 83 ec 38                    sub    rsp,0x38
2ed81d  48 8b e9                       mov    rbp,rcx
2ed820  49 8b f9                       mov    rdi,r9
2ed823  49 8b c8                       mov    rcx,r8
2ed826  48 8b da                       mov    rbx,rdx
2ed829  e8 76 db fd ff                 call   0x2cb3a4
2ed82e  48 8b d0                       mov    rdx,rax
2ed831  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
2ed836  e8 f9 19 ff ff                 call   0x2df234
2ed83b  48 8b cb                       mov    rcx,rbx
2ed83e  48 8b f0                       mov    rsi,rax
2ed841  e8 5e db fd ff                 call   0x2cb3a4
2ed846  48 8b cf                       mov    rcx,rdi
2ed849  48 8b d8                       mov    rbx,rax
2ed84c  e8 53 db fd ff                 call   0x2cb3a4
2ed851  48 8b d0                       mov    rdx,rax
2ed854  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2ed859  e8 46 db fd ff                 call   0x2cb3a4
2ed85e  48 8b d5                       mov    rdx,rbp
2ed861  b9 10 00 00 00                 mov    ecx,0x10
2ed866  48 8b f8                       mov    rdi,rax
2ed869  e8 c2 ec fd ff                 call   0x2cc530
2ed86e  8a 13                          mov    dl,BYTE PTR [rbx]
2ed870  48 8b c8                       mov    rcx,rax
2ed873  4c 8b cf                       mov    r9,rdi
2ed876  4c 8b c6                       mov    r8,rsi
2ed879  e8 06 c9 ff ff                 call   0x2ea184
2ed87e  48 83 c4 38                    add    rsp,0x38
2ed882  5f                             pop    rdi
2ed883  5e                             pop    rsi
2ed884  5d                             pop    rbp
2ed885  5b                             pop    rbx
2ed886  c3                             ret

