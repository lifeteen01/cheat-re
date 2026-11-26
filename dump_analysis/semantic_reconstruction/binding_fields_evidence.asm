; pdata function 0x37236c..0x372395 unwind=0x3d2064
37236c  48 83 ec 28                    sub    rsp,0x28
372370  4c 8b c1                       mov    r8,rcx
372373  e8 90 8b f5 ff                 call   0x2caf08
372378  84 c0                          test   al,al
37237a  75 05                          jne    0x372381
37237c  83 c8 ff                       or     eax,0xffffffff
37237f  eb 0f                          jmp    0x372390
372381  ba 58 00 00 00                 mov    edx,0x58
372386  49 8b c8                       mov    rcx,r8
372389  e8 ae ca f6 ff                 call   0x2dee3c
37238e  8b 00                          mov    eax,DWORD PTR [rax]
372390  48 83 c4 28                    add    rsp,0x28
372394  c3                             ret

; pdata function 0x37261c..0x372644 unwind=0x3d2064
37261c  48 83 ec 28                    sub    rsp,0x28
372620  4c 8b c1                       mov    r8,rcx
372623  e8 e0 88 f5 ff                 call   0x2caf08
372628  84 c0                          test   al,al
37262a  75 04                          jne    0x372630
37262c  33 c0                          xor    eax,eax
37262e  eb 0f                          jmp    0x37263f
372630  ba 20 00 00 00                 mov    edx,0x20
372635  49 8b c8                       mov    rcx,r8
372638  e8 ff c7 f6 ff                 call   0x2dee3c
37263d  8b 00                          mov    eax,DWORD PTR [rax]
37263f  48 83 c4 28                    add    rsp,0x28
372643  c3                             ret

; pdata function 0x368be8..0x368c60 unwind=0x3d2038
368be8  40 53                          rex push rbx
368bea  48 83 ec 20                    sub    rsp,0x20
368bee  48 8b da                       mov    rbx,rdx
368bf1  48 8b d1                       mov    rdx,rcx
368bf4  e8 0f 23 f6 ff                 call   0x2caf08
368bf9  84 c0                          test   al,al
368bfb  74 52                          je     0x368c4f
368bfd  41 83 f8 ff                    cmp    r8d,0xffffffff
368c01  74 4c                          je     0x368c4f
368c03  48 8b 92 d0 01 00 00           mov    rdx,QWORD PTR [rdx+0x1d0]
368c0a  48 8b ca                       mov    rcx,rdx
368c0d  e8 f6 22 f6 ff                 call   0x2caf08
368c12  84 c0                          test   al,al
368c14  74 39                          je     0x368c4f
368c16  4c 8b 4a 50                    mov    r9,QWORD PTR [rdx+0x50]
368c1a  49 8b c9                       mov    rcx,r9
368c1d  e8 e6 22 f6 ff                 call   0x2caf08
368c22  84 c0                          test   al,al
368c24  74 29                          je     0x368c4f
368c26  42 8d 04 c5 00 00 00 00        lea    eax,[r8*8+0x0]
368c2e  48 63 c8                       movsxd rcx,eax
368c31  4e 8b 44 09 20                 mov    r8,QWORD PTR [rcx+r9*1+0x20]
368c36  49 8b c8                       mov    rcx,r8
368c39  e8 ca 22 f6 ff                 call   0x2caf08
368c3e  84 c0                          test   al,al
368c40  74 0d                          je     0x368c4f
368c42  48 8b d3                       mov    rdx,rbx
368c45  49 8b c8                       mov    rcx,r8
368c48  e8 87 bb 00 00                 call   0x3747d4
368c4d  eb 08                          jmp    0x368c57
368c4f  48 8b cb                       mov    rcx,rbx
368c52  e8 65 ef 05 00                 call   0x3c7bbc
368c57  48 8b c3                       mov    rax,rbx
368c5a  48 83 c4 20                    add    rsp,0x20
368c5e  5b                             pop    rbx
368c5f  c3                             ret

