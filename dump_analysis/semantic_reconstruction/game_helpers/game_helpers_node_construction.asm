; pdata function 0x2ed4a0..0x2ed4eb unwind=0x3d2130
2ed4a0  40 53                          rex push rbx
2ed4a2  55                             push   rbp
2ed4a3  56                             push   rsi
2ed4a4  57                             push   rdi
2ed4a5  48 83 ec 28                    sub    rsp,0x28
2ed4a9  48 8b 4c 24 70                 mov    rcx,QWORD PTR [rsp+0x70]
2ed4ae  49 8b d9                       mov    rbx,r9
2ed4b1  49 8b f0                       mov    rsi,r8
2ed4b4  48 8b ea                       mov    rbp,rdx
2ed4b7  e8 e8 de fd ff                 call   0x2cb3a4
2ed4bc  48 8b cb                       mov    rcx,rbx
2ed4bf  48 8b f8                       mov    rdi,rax
2ed4c2  e8 dd de fd ff                 call   0x2cb3a4
2ed4c7  48 8b ce                       mov    rcx,rsi
2ed4ca  48 8b d8                       mov    rbx,rax
2ed4cd  e8 d2 de fd ff                 call   0x2cb3a4
2ed4d2  48 8b d0                       mov    rdx,rax
2ed4d5  4c 8b cf                       mov    r9,rdi
2ed4d8  4c 8b c3                       mov    r8,rbx
2ed4db  48 8b cd                       mov    rcx,rbp
2ed4de  48 83 c4 28                    add    rsp,0x28
2ed4e2  5f                             pop    rdi
2ed4e3  5e                             pop    rsi
2ed4e4  5d                             pop    rbp
2ed4e5  5b                             pop    rbx
2ed4e6  e9 29 03 00 00                 jmp    0x2ed814

; pdata function 0x3193a4..0x3193cc unwind=0x3d2038
3193a4  40 53                          rex push rbx
3193a6  48 83 ec 20                    sub    rsp,0x20
3193aa  48 8b d9                       mov    rbx,rcx
3193ad  48 c7 41 08 00 00 00 00        mov    QWORD PTR [rcx+0x8],0x0
3193b5  48 8b 09                       mov    rcx,QWORD PTR [rcx]
3193b8  ba 01 00 00 00                 mov    edx,0x1
3193bd  e8 12 e8 fb ff                 call   0x2d7bd4
3193c2  48 89 43 08                    mov    QWORD PTR [rbx+0x8],rax
3193c6  48 83 c4 20                    add    rsp,0x20
3193ca  5b                             pop    rbx
3193cb  c3                             ret

; heuristic leaf/code range 0x2ebe88..0x2ebe94 unwind=0x0
2ebe88  41 b8 08 00 00 00              mov    r8d,0x8
2ebe8e  e9 e5 b1 fe ff                 jmp    0x2d7078
2ebe93  cc                             int3

