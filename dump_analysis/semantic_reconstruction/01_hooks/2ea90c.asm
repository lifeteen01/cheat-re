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
