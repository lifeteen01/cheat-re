; pdata function 0x2ea90c..0x2ea975 unwind=0x3d2120
2ea90c  40 53                          rex push rbx
2ea90e  55                             push   rbp
2ea90f  56                             push   rsi
2ea910  57                             push   rdi
2ea911  48 83 ec 38                    sub    rsp,0x38
2ea915  49 8b f9                       mov    rdi,r9
2ea918  49 8b f0                       mov    rsi,r8
2ea91b  48 8b ea                       mov    rbp,rdx
2ea91e  48 8b d9                       mov    rbx,rcx
2ea921  e8 d6 bb 02 00                 call   0x3164fc
2ea926  84 c0                          test   al,al
2ea928  74 04                          je     0x2ea92e
2ea92a  b0 01                          mov    al,0x1
2ea92c  eb 3e                          jmp    0x2ea96c
2ea92e  4c 8b 84 24 80 00 00 00        mov    r8,QWORD PTR [rsp+0x80]
2ea936  41 83 c9 ff                    or     r9d,0xffffffff
2ea93a  48 8b d6                       mov    rdx,rsi
2ea93d  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
2ea945  48 8b cd                       mov    rcx,rbp
2ea948  e8 1f 98 04 00                 call   0x33416c
2ea94d  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
2ea951  48 85 c0                       test   rax,rax
2ea954  74 16                          je     0x2ea96c
2ea956  48 8b 08                       mov    rcx,QWORD PTR [rax]
2ea959  48 89 0b                       mov    QWORD PTR [rbx],rcx
2ea95c  48 89 7b 28                    mov    QWORD PTR [rbx+0x28],rdi
2ea960  48 89 38                       mov    QWORD PTR [rax],rdi
2ea963  c7 43 30 01 00 00 00           mov    DWORD PTR [rbx+0x30],0x1
2ea96a  eb be                          jmp    0x2ea92a
2ea96c  48 83 c4 38                    add    rsp,0x38
2ea970  5f                             pop    rdi
2ea971  5e                             pop    rsi
2ea972  5d                             pop    rbp
2ea973  5b                             pop    rbx
2ea974  c3                             ret

; pdata function 0x2ea978..0x2eaa27 unwind=0x3d2120
2ea978  40 53                          rex push rbx
2ea97a  55                             push   rbp
2ea97b  56                             push   rsi
2ea97c  57                             push   rdi
2ea97d  48 83 ec 38                    sub    rsp,0x38
2ea981  49 8b f1                       mov    rsi,r9
2ea984  49 8b f8                       mov    rdi,r8
2ea987  48 8b ea                       mov    rbp,rdx
2ea98a  48 8b d9                       mov    rbx,rcx
2ea98d  e8 6a bb 02 00                 call   0x3164fc
2ea992  84 c0                          test   al,al
2ea994  74 04                          je     0x2ea99a
2ea996  b0 01                          mov    al,0x1
2ea998  eb 6e                          jmp    0x2eaa08
2ea99a  44 8b 8c 24 88 00 00 00        mov    r9d,DWORD PTR [rsp+0x88]
2ea9a2  48 8b d7                       mov    rdx,rdi
2ea9a5  4c 8b 84 24 80 00 00 00        mov    r8,QWORD PTR [rsp+0x80]
2ea9ad  48 8b cd                       mov    rcx,rbp
2ea9b0  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
2ea9b8  e8 af 97 04 00                 call   0x33416c
2ea9bd  48 85 c0                       test   rax,rax
2ea9c0  74 44                          je     0x2eaa06
2ea9c2  48 8b 38                       mov    rdi,QWORD PTR [rax]
2ea9c5  48 85 ff                       test   rdi,rdi
2ea9c8  74 3c                          je     0x2eaa06
2ea9ca  48 8b 94 24 80 00 00 00        mov    rdx,QWORD PTR [rsp+0x80]
2ea9d2  48 8b cd                       mov    rcx,rbp
2ea9d5  e8 4a 98 04 00                 call   0x334224
2ea9da  48 85 c0                       test   rax,rax
2ea9dd  74 27                          je     0x2eaa06
2ea9df  48 3b fe                       cmp    rdi,rsi
2ea9e2  74 22                          je     0x2eaa06
2ea9e4  48 8d 90 00 15 00 00           lea    rdx,[rax+0x1500]
2ea9eb  eb 10                          jmp    0x2ea9fd
2ea9ed  48 8b 08                       mov    rcx,QWORD PTR [rax]
2ea9f0  48 85 c9                       test   rcx,rcx
2ea9f3  74 05                          je     0x2ea9fa
2ea9f5  48 3b cf                       cmp    rcx,rdi
2ea9f8  74 17                          je     0x2eaa11
2ea9fa  48 ff c0                       inc    rax
2ea9fd  48 89 43 10                    mov    QWORD PTR [rbx+0x10],rax
2eaa01  48 3b c2                       cmp    rax,rdx
2eaa04  76 e7                          jbe    0x2ea9ed
2eaa06  32 c0                          xor    al,al
2eaa08  48 83 c4 38                    add    rsp,0x38
2eaa0c  5f                             pop    rdi
2eaa0d  5e                             pop    rsi
2eaa0e  5d                             pop    rbp
2eaa0f  5b                             pop    rbx
2eaa10  c3                             ret
2eaa11  48 89 30                       mov    QWORD PTR [rax],rsi
2eaa14  48 89 0b                       mov    QWORD PTR [rbx],rcx
2eaa17  48 89 73 28                    mov    QWORD PTR [rbx+0x28],rsi
2eaa1b  c7 43 30 02 00 00 00           mov    DWORD PTR [rbx+0x30],0x2
2eaa22  e9 6f ff ff ff                 jmp    0x2ea996

; pdata function 0x2eaa28..0x2eaac0 unwind=0x3d2130
2eaa28  40 53                          rex push rbx
2eaa2a  55                             push   rbp
2eaa2b  56                             push   rsi
2eaa2c  57                             push   rdi
2eaa2d  48 83 ec 28                    sub    rsp,0x28
2eaa31  49 8b d9                       mov    rbx,r9
2eaa34  49 8b f0                       mov    rsi,r8
2eaa37  48 8b ea                       mov    rbp,rdx
2eaa3a  48 8b f9                       mov    rdi,rcx
2eaa3d  e8 ba ba 02 00                 call   0x3164fc
2eaa42  84 c0                          test   al,al
2eaa44  74 04                          je     0x2eaa4a
2eaa46  b0 01                          mov    al,0x1
2eaa48  eb 5a                          jmp    0x2eaaa4
2eaa4a  48 8b d3                       mov    rdx,rbx
2eaa4d  48 8b cd                       mov    rcx,rbp
2eaa50  e8 cf 97 04 00                 call   0x334224
2eaa55  48 8b d8                       mov    rbx,rax
2eaa58  48 85 c0                       test   rax,rax
2eaa5b  74 45                          je     0x2eaaa2
2eaa5d  48 8b 90 d8 01 00 00           mov    rdx,QWORD PTR [rax+0x1d8]
2eaa64  48 85 d2                       test   rdx,rdx
2eaa67  74 39                          je     0x2eaaa2
2eaa69  48 8b c8                       mov    rcx,rax
2eaa6c  e8 ef 9e 04 00                 call   0x334960
2eaa71  48 8b c8                       mov    rcx,rax
2eaa74  48 85 c0                       test   rax,rax
2eaa77  74 29                          je     0x2eaaa2
2eaa79  48 83 38 00                    cmp    QWORD PTR [rax],0x0
2eaa7d  74 23                          je     0x2eaaa2
2eaa7f  48 39 30                       cmp    QWORD PTR [rax],rsi
2eaa82  74 1e                          je     0x2eaaa2
2eaa84  48 8d 93 00 15 00 00           lea    rdx,[rbx+0x1500]
2eaa8b  eb 10                          jmp    0x2eaa9d
2eaa8d  48 8b 03                       mov    rax,QWORD PTR [rbx]
2eaa90  48 85 c0                       test   rax,rax
2eaa93  74 05                          je     0x2eaa9a
2eaa95  48 3b 01                       cmp    rax,QWORD PTR [rcx]
2eaa98  74 13                          je     0x2eaaad
2eaa9a  48 ff c3                       inc    rbx
2eaa9d  48 3b da                       cmp    rbx,rdx
2eaaa0  76 eb                          jbe    0x2eaa8d
2eaaa2  32 c0                          xor    al,al
2eaaa4  48 83 c4 28                    add    rsp,0x28
2eaaa8  5f                             pop    rdi
2eaaa9  5e                             pop    rsi
2eaaaa  5d                             pop    rbp
2eaaab  5b                             pop    rbx
2eaaac  c3                             ret
2eaaad  48 89 33                       mov    QWORD PTR [rbx],rsi
2eaab0  48 89 07                       mov    QWORD PTR [rdi],rax
2eaab3  48 89 77 28                    mov    QWORD PTR [rdi+0x28],rsi
2eaab7  c7 47 30 02 00 00 00           mov    DWORD PTR [rdi+0x30],0x2
2eaabe  eb 86                          jmp    0x2eaa46

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

