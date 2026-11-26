; pdata function 0x374168..0x37420d unwind=0x3d2120
374168  40 53                          rex push rbx
37416a  55                             push   rbp
37416b  56                             push   rsi
37416c  57                             push   rdi
37416d  48 83 ec 38                    sub    rsp,0x38
374171  49 8b f9                       mov    rdi,r9
374174  49 8b f0                       mov    rsi,r8
374177  48 8b ea                       mov    rbp,rdx
37417a  48 8b d9                       mov    rbx,rcx
37417d  e8 86 6d f5 ff                 call   0x2caf08
374182  84 c0                          test   al,al
374184  74 7e                          je     0x374204
374186  8b 0d ac da 08 00              mov    ecx,DWORD PTR [rip+0x8daac]        # 0x401c38
37418c  f6 c1 01                       test   cl,0x1
37418f  75 20                          jne    0x3741b1
374191  4c 8b 05 68 2d 06 00           mov    r8,QWORD PTR [rip+0x62d68]        # 0x3d6f00
374198  83 c9 01                       or     ecx,0x1
37419b  49 81 c0 20 16 cd 01           add    r8,0x1cd1620
3741a2  89 0d 90 da 08 00              mov    DWORD PTR [rip+0x8da90],ecx        # 0x401c38
3741a8  4c 89 05 81 da 08 00           mov    QWORD PTR [rip+0x8da81],r8        # 0x401c30
3741af  eb 07                          jmp    0x3741b8
3741b1  4c 8b 05 78 da 08 00           mov    r8,QWORD PTR [rip+0x8da78]        # 0x401c30
3741b8  f6 c1 02                       test   cl,0x2
3741bb  75 1f                          jne    0x3741dc
3741bd  83 c9 02                       or     ecx,0x2
3741c0  48 8d 15 79 da 08 00           lea    rdx,[rip+0x8da79]        # 0x401c40
3741c7  89 0d 6b da 08 00              mov    DWORD PTR [rip+0x8da6b],ecx        # 0x401c38
3741cd  45 33 c9                       xor    r9d,r9d
3741d0  48 8b 0d 89 1c 06 00           mov    rcx,QWORD PTR [rip+0x61c89]        # 0x3d5e60
3741d7  e8 48 7b f5 ff                 call   0x2cbd24
3741dc  48 8b 0d 7d 1c 06 00           mov    rcx,QWORD PTR [rip+0x61c7d]        # 0x3d5e60
3741e3  48 8d 15 56 da 08 00           lea    rdx,[rip+0x8da56]        # 0x401c40
3741ea  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
3741ef  4c 8b cd                       mov    r9,rbp
3741f2  4c 8b c3                       mov    r8,rbx
3741f5  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
3741fa  e8 51 fe ff ff                 call   0x374050
3741ff  84 c0                          test   al,al
374201  0f 95 c0                       setne  al
374204  48 83 c4 38                    add    rsp,0x38
374208  5f                             pop    rdi
374209  5e                             pop    rsi
37420a  5d                             pop    rbp
37420b  5b                             pop    rbx
37420c  c3                             ret
