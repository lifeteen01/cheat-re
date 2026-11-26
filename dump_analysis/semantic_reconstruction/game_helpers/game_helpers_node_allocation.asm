; pdata function 0x2ea318..0x2ea390 unwind=0x3d2690
2ea318  40 53                          rex push rbx
2ea31a  55                             push   rbp
2ea31b  56                             push   rsi
2ea31c  57                             push   rdi
2ea31d  41 56                          push   r14
2ea31f  48 83 ec 30                    sub    rsp,0x30
2ea323  49 8b d9                       mov    rbx,r9
2ea326  49 8b e8                       mov    rbp,r8
2ea329  4c 8b f1                       mov    r14,rcx
2ea32c  e8 8f 1e fe ff                 call   0x2cc1c0
2ea331  49 8b ce                       mov    rcx,r14
2ea334  e8 6b f0 02 00                 call   0x3193a4
2ea339  48 8b 8c 24 80 00 00 00        mov    rcx,QWORD PTR [rsp+0x80]
2ea341  e8 5e 10 fe ff                 call   0x2cb3a4
2ea346  48 8b cb                       mov    rcx,rbx
2ea349  48 8b f0                       mov    rsi,rax
2ea34c  e8 53 10 fe ff                 call   0x2cb3a4
2ea351  48 8b cd                       mov    rcx,rbp
2ea354  48 8b f8                       mov    rdi,rax
2ea357  e8 48 10 fe ff                 call   0x2cb3a4
2ea35c  49 8b 4e 08                    mov    rcx,QWORD PTR [r14+0x8]
2ea360  48 8b d8                       mov    rbx,rax
2ea363  48 83 c1 10                    add    rcx,0x10
2ea367  e8 38 10 fe ff                 call   0x2cb3a4
2ea36c  49 8b 0e                       mov    rcx,QWORD PTR [r14]
2ea36f  48 8b d0                       mov    rdx,rax
2ea372  4c 8b cf                       mov    r9,rdi
2ea375  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
2ea37a  4c 8b c3                       mov    r8,rbx
2ea37d  e8 1e 31 00 00                 call   0x2ed4a0
2ea382  49 8b c6                       mov    rax,r14
2ea385  48 83 c4 30                    add    rsp,0x30
2ea389  41 5e                          pop    r14
2ea38b  5f                             pop    rdi
2ea38c  5e                             pop    rsi
2ea38d  5d                             pop    rbp
2ea38e  5b                             pop    rbx
2ea38f  c3                             ret

