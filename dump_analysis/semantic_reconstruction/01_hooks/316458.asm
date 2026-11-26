; pdata function 0x316458..0x3164fa unwind=0x3d2130
316458  40 53                          rex push rbx
31645a  55                             push   rbp
31645b  56                             push   rsi
31645c  57                             push   rdi
31645d  48 83 ec 28                    sub    rsp,0x28
316461  49 8b f1                       mov    rsi,r9
316464  49 8b e8                       mov    rbp,r8
316467  48 8b da                       mov    rbx,rdx
31646a  48 8b f9                       mov    rdi,rcx
31646d  e8 8a 00 00 00                 call   0x3164fc
316472  84 c0                          test   al,al
316474  74 04                          je     0x31647a
316476  b0 01                          mov    al,0x1
316478  eb 4b                          jmp    0x3164c5
31647a  48 8b 54 24 70                 mov    rdx,QWORD PTR [rsp+0x70]
31647f  48 8b cb                       mov    rcx,rbx
316482  e8 9d dd 01 00                 call   0x334224
316487  4c 8b c0                       mov    r8,rax
31648a  48 85 c0                       test   rax,rax
31648d  74 34                          je     0x3164c3
31648f  48 8d 98 28 03 00 00           lea    rbx,[rax+0x328]
316496  48 8b 13                       mov    rdx,QWORD PTR [rbx]
316499  48 85 d2                       test   rdx,rdx
31649c  74 25                          je     0x3164c3
31649e  48 8b cb                       mov    rcx,rbx
3164a1  e8 62 4a fb ff                 call   0x2caf08
3164a6  84 c0                          test   al,al
3164a8  74 19                          je     0x3164c3
3164aa  49 8b c8                       mov    rcx,r8
3164ad  e8 ae e4 01 00                 call   0x334960
3164b2  48 85 c0                       test   rax,rax
3164b5  74 0c                          je     0x3164c3
3164b7  48 8b c8                       mov    rcx,rax
3164ba  e8 45 a6 00 00                 call   0x320b04
3164bf  85 c0                          test   eax,eax
3164c1  74 17                          je     0x3164da
3164c3  32 c0                          xor    al,al
3164c5  48 83 c4 28                    add    rsp,0x28
3164c9  5f                             pop    rdi
3164ca  5e                             pop    rsi
3164cb  5d                             pop    rbp
3164cc  5b                             pop    rbx
3164cd  c3                             ret
3164ce  48 8b 03                       mov    rax,QWORD PTR [rbx]
3164d1  48 3b c5                       cmp    rax,rbp
3164d4  74 12                          je     0x3164e8
3164d6  48 83 c3 10                    add    rbx,0x10
3164da  48 8b 0b                       mov    rcx,QWORD PTR [rbx]
3164dd  e8 26 4a fb ff                 call   0x2caf08
3164e2  84 c0                          test   al,al
3164e4  74 e8                          je     0x3164ce
3164e6  eb db                          jmp    0x3164c3
3164e8  48 89 07                       mov    QWORD PTR [rdi],rax
3164eb  48 89 33                       mov    QWORD PTR [rbx],rsi
3164ee  c7 47 30 03 00 00 00           mov    DWORD PTR [rdi+0x30],0x3
3164f5  e9 7c ff ff ff                 jmp    0x316476
