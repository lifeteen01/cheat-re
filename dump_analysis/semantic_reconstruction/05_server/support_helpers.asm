; heuristic leaf/code range 0x2ded64..0x2ded6c unwind=0x0
2ded64  45 33 c9                       xor    r9d,r9d
2ded67  e9 00 00 00 00                 jmp    0x2ded6c

; heuristic leaf/code range 0x2dee54..0x2dee5c unwind=0x0
2dee54  45 33 c9                       xor    r9d,r9d
2dee57  e9 00 00 00 00                 jmp    0x2dee5c

; heuristic leaf/code range 0x2df77c..0x2df789 unwind=0x0
2df77c  f3 0f 10 42 04                 movss  xmm0,DWORD PTR [rdx+0x4]
2df781  0f 2f 41 04                    comiss xmm0,DWORD PTR [rcx+0x4]
2df785  0f 97 c0                       seta   al
2df788  c3                             ret

; heuristic leaf/code range 0x2e3ef0..0x2e3ef8 unwind=0x0
2e3ef0  0f 54 05 69 9c fa ff           andps  xmm0,XMMWORD PTR [rip+0xfffffffffffa9c69]        # 0x28db60
2e3ef7  c3                             ret

; pdata function 0x32cdcc..0x32cea6 unwind=0x3d2448
32cdcc  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32cdd1  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32cdd6  57                             push   rdi
32cdd7  48 83 ec 40                    sub    rsp,0x40
32cddb  48 8b f2                       mov    rsi,rdx
32cdde  48 8b d9                       mov    rbx,rcx
32cde1  e8 8e fe ff ff                 call   0x32cc74
32cde6  48 8b c8                       mov    rcx,rax
32cde9  48 8b f8                       mov    rdi,rax
32cdec  e8 17 e1 f9 ff                 call   0x2caf08
32cdf1  84 c0                          test   al,al
32cdf3  75 0d                          jne    0x32ce02
32cdf5  48 8b cb                       mov    rcx,rbx
32cdf8  e8 bf ad 09 00                 call   0x3c7bbc
32cdfd  e9 91 00 00 00                 jmp    0x32ce93
32ce02  8b 0d b8 b4 0c 00              mov    ecx,DWORD PTR [rip+0xcb4b8]        # 0x3f82c0
32ce08  f6 c1 01                       test   cl,0x1
32ce0b  75 20                          jne    0x32ce2d
32ce0d  4c 8b 05 ec a0 0a 00           mov    r8,QWORD PTR [rip+0xaa0ec]        # 0x3d6f00
32ce14  83 c9 01                       or     ecx,0x1
32ce17  49 81 c0 00 bc 65 02           add    r8,0x265bc00
32ce1e  89 0d 9c b4 0c 00              mov    DWORD PTR [rip+0xcb49c],ecx        # 0x3f82c0
32ce24  4c 89 05 8d b4 0c 00           mov    QWORD PTR [rip+0xcb48d],r8        # 0x3f82b8
32ce2b  eb 07                          jmp    0x32ce34
32ce2d  4c 8b 05 84 b4 0c 00           mov    r8,QWORD PTR [rip+0xcb484]        # 0x3f82b8
32ce34  f6 c1 02                       test   cl,0x2
32ce37  75 1f                          jne    0x32ce58
32ce39  83 c9 02                       or     ecx,0x2
32ce3c  48 8d 15 8d b4 0c 00           lea    rdx,[rip+0xcb48d]        # 0x3f82d0
32ce43  89 0d 77 b4 0c 00              mov    DWORD PTR [rip+0xcb477],ecx        # 0x3f82c0
32ce49  45 33 c9                       xor    r9d,r9d
32ce4c  48 8b 0d 0d 90 0a 00           mov    rcx,QWORD PTR [rip+0xa900d]        # 0x3d5e60
32ce53  e8 cc ee f9 ff                 call   0x2cbd24
32ce58  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
32ce5d  e8 5a ad 09 00                 call   0x3c7bbc
32ce62  48 8b 0d f7 8f 0a 00           mov    rcx,QWORD PTR [rip+0xa8ff7]        # 0x3d5e60
32ce69  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
32ce6e  4c 8b cf                       mov    r9,rdi
32ce71  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
32ce76  48 8d 15 53 b4 0c 00           lea    rdx,[rip+0xcb453]        # 0x3f82d0
32ce7d  e8 ce eb f9 ff                 call   0x2cba50
32ce82  f2 0f 10 44 24 30              movsd  xmm0,QWORD PTR [rsp+0x30]
32ce88  8b 44 24 38                    mov    eax,DWORD PTR [rsp+0x38]
32ce8c  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
32ce90  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
32ce93  48 8b 74 24 58                 mov    rsi,QWORD PTR [rsp+0x58]
32ce98  48 8b c3                       mov    rax,rbx
32ce9b  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
32cea0  48 83 c4 40                    add    rsp,0x40
32cea4  5f                             pop    rdi
32cea5  c3                             ret

; pdata function 0x32cc74..0x32cc9c unwind=0x3d2064
32cc74  48 83 ec 28                    sub    rsp,0x28
32cc78  e8 a7 8d fe ff                 call   0x315a24
32cc7d  48 8b c8                       mov    rcx,rax
32cc80  48 8b d0                       mov    rdx,rax
32cc83  e8 80 e2 f9 ff                 call   0x2caf08
32cc88  84 c0                          test   al,al
32cc8a  75 04                          jne    0x32cc90
32cc8c  33 c0                          xor    eax,eax
32cc8e  eb 07                          jmp    0x32cc97
32cc90  48 8b 82 00 07 00 00           mov    rax,QWORD PTR [rdx+0x700]
32cc97  48 83 c4 28                    add    rsp,0x28
32cc9b  c3                             ret

; pdata function 0x2df6cc..0x2df705 unwind=0x3d2038
2df6cc  40 53                          rex push rbx
2df6ce  48 83 ec 20                    sub    rsp,0x20
2df6d2  f3 0f 10 59 08                 movss  xmm3,DWORD PTR [rcx+0x8]
2df6d7  48 8b da                       mov    rbx,rdx
2df6da  f3 0f 10 51 04                 movss  xmm2,DWORD PTR [rcx+0x4]
2df6df  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2df6e3  48 8b ca                       mov    rcx,rdx
2df6e6  f3 41 0f 5c 58 08              subss  xmm3,DWORD PTR [r8+0x8]
2df6ec  f3 41 0f 5c 50 04              subss  xmm2,DWORD PTR [r8+0x4]
2df6f2  f3 41 0f 5c 08                 subss  xmm1,DWORD PTR [r8]
2df6f7  e8 ac 84 0e 00                 call   0x3c7ba8
2df6fc  48 8b c3                       mov    rax,rbx
2df6ff  48 83 c4 20                    add    rsp,0x20
2df703  5b                             pop    rbx
2df704  c3                             ret

; pdata function 0x2df708..0x2df741 unwind=0x3d2038
2df708  40 53                          rex push rbx
2df70a  48 83 ec 20                    sub    rsp,0x20
2df70e  f3 41 0f 10 58 08              movss  xmm3,DWORD PTR [r8+0x8]
2df714  48 8b da                       mov    rbx,rdx
2df717  f3 41 0f 10 50 04              movss  xmm2,DWORD PTR [r8+0x4]
2df71d  f3 41 0f 10 08                 movss  xmm1,DWORD PTR [r8]
2df722  f3 0f 58 59 08                 addss  xmm3,DWORD PTR [rcx+0x8]
2df727  f3 0f 58 51 04                 addss  xmm2,DWORD PTR [rcx+0x4]
2df72c  f3 0f 58 09                    addss  xmm1,DWORD PTR [rcx]
2df730  48 8b ca                       mov    rcx,rdx
2df733  e8 70 84 0e 00                 call   0x3c7ba8
2df738  48 8b c3                       mov    rax,rbx
2df73b  48 83 c4 20                    add    rsp,0x20
2df73f  5b                             pop    rbx
2df740  c3                             ret

; pdata function 0x2e3aa4..0x2e3af9 unwind=0x3d2130
2e3aa4  40 53                          rex push rbx
2e3aa6  55                             push   rbp
2e3aa7  56                             push   rsi
2e3aa8  57                             push   rdi
2e3aa9  48 83 ec 28                    sub    rsp,0x28
2e3aad  48 8b f1                       mov    rsi,rcx
2e3ab0  ba 11 0e 00 00                 mov    edx,0xe11
2e3ab5  48 83 c1 10                    add    rcx,0x10
2e3ab9  e8 fa 03 00 00                 call   0x2e3eb8
2e3abe  33 ff                          xor    edi,edi
2e3ac0  8b d7                          mov    edx,edi
2e3ac2  48 8d 4e 10                    lea    rcx,[rsi+0x10]
2e3ac6  e8 6d bb ff ff                 call   0x2df638
2e3acb  8b d7                          mov    edx,edi
2e3acd  48 8b ce                       mov    rcx,rsi
2e3ad0  48 8b d8                       mov    rbx,rax
2e3ad3  e8 bc 03 00 00                 call   0x2e3e94
2e3ad8  0f 28 d0                       movaps xmm2,xmm0
2e3adb  48 8b d3                       mov    rdx,rbx
2e3ade  48 8b ce                       mov    rcx,rsi
2e3ae1  e8 4e fc ff ff                 call   0x2e3734
2e3ae6  ff c7                          inc    edi
2e3ae8  81 ff 10 0e 00 00              cmp    edi,0xe10
2e3aee  7e d0                          jle    0x2e3ac0
2e3af0  48 83 c4 28                    add    rsp,0x28
2e3af4  5f                             pop    rdi
2e3af5  5e                             pop    rsi
2e3af6  5d                             pop    rbp
2e3af7  5b                             pop    rbx
2e3af8  c3                             ret

