; pdata function 0x2e0e9c..0x2e0ec9 unwind=0x3d2064
2e0e9c  48 83 ec 28                    sub    rsp,0x28
2e0ea0  4c 8b c1                       mov    r8,rcx
2e0ea3  e8 60 a0 fe ff                 call   0x2caf08
2e0ea8  84 c0                          test   al,al
2e0eaa  74 16                          je     0x2e0ec2
2e0eac  ba 48 00 00 00                 mov    edx,0x48
2e0eb1  49 8b c8                       mov    rcx,r8
2e0eb4  e8 83 df ff ff                 call   0x2dee3c
2e0eb9  48 83 38 00                    cmp    QWORD PTR [rax],0x0
2e0ebd  0f 95 c0                       setne  al
2e0ec0  eb 02                          jmp    0x2e0ec4
2e0ec2  32 c0                          xor    al,al
2e0ec4  48 83 c4 28                    add    rsp,0x28
2e0ec8  c3                             ret

; pdata function 0x3693b0..0x3693d4 unwind=0x3d2064
3693b0  48 83 ec 28                    sub    rsp,0x28
3693b4  4c 8b c1                       mov    r8,rcx
3693b7  e8 4c 1b f6 ff                 call   0x2caf08
3693bc  84 c0                          test   al,al
3693be  74 0f                          je     0x3693cf
3693c0  ba c0 02 00 00                 mov    edx,0x2c0
3693c5  49 8b c8                       mov    rcx,r8
3693c8  e8 6f 5a f7 ff                 call   0x2dee3c
3693cd  8a 00                          mov    al,BYTE PTR [rax]
3693cf  48 83 c4 28                    add    rsp,0x28
3693d3  c3                             ret

; pdata function 0x36a178..0x36a19d unwind=0x3d2064
36a178  48 83 ec 28                    sub    rsp,0x28
36a17c  48 8b d1                       mov    rdx,rcx
36a17f  e8 84 0d f6 ff                 call   0x2caf08
36a184  84 c0                          test   al,al
36a186  74 10                          je     0x36a198
36a188  48 8b ca                       mov    rcx,rdx
36a18b  e8 d8 d4 ff ff                 call   0x367668
36a190  3d 14 d5 e1 f4                 cmp    eax,0xf4e1d514
36a195  0f 95 c0                       setne  al
36a198  48 83 c4 28                    add    rsp,0x28
36a19c  c3                             ret

; pdata function 0x36acb8..0x36acde unwind=0x3d2064
36acb8  48 83 ec 28                    sub    rsp,0x28
36acbc  4c 8b c1                       mov    r8,rcx
36acbf  e8 44 02 f6 ff                 call   0x2caf08
36acc4  84 c0                          test   al,al
36acc6  75 05                          jne    0x36accd
36acc8  48 83 c4 28                    add    rsp,0x28
36accc  c3                             ret
36accd  ba 00 00 02 00                 mov    edx,0x20000
36acd2  49 8b c8                       mov    rcx,r8
36acd5  48 83 c4 28                    add    rsp,0x28
36acd9  e9 16 f1 ff ff                 jmp    0x369df4

; pdata function 0x36b288..0x36b2ae unwind=0x3d2064
36b288  48 83 ec 28                    sub    rsp,0x28
36b28c  4c 8b c1                       mov    r8,rcx
36b28f  e8 74 fc f5 ff                 call   0x2caf08
36b294  84 c0                          test   al,al
36b296  75 05                          jne    0x36b29d
36b298  48 83 c4 28                    add    rsp,0x28
36b29c  c3                             ret
36b29d  ba 40 00 00 00                 mov    edx,0x40
36b2a2  49 8b c8                       mov    rcx,r8
36b2a5  48 83 c4 28                    add    rsp,0x28
36b2a9  e9 46 eb ff ff                 jmp    0x369df4

; pdata function 0x36a20c..0x36a238 unwind=0x3d2064
36a20c  48 83 ec 28                    sub    rsp,0x28
36a210  4c 8b c1                       mov    r8,rcx
36a213  e8 f0 0c f6 ff                 call   0x2caf08
36a218  84 c0                          test   al,al
36a21a  74 15                          je     0x36a231
36a21c  84 d2                          test   dl,dl
36a21e  75 11                          jne    0x36a231
36a220  ba 10 00 00 00                 mov    edx,0x10
36a225  49 8b c8                       mov    rcx,r8
36a228  48 83 c4 28                    add    rsp,0x28
36a22c  e9 c3 fb ff ff                 jmp    0x369df4
36a231  32 c0                          xor    al,al
36a233  48 83 c4 28                    add    rsp,0x28
36a237  c3                             ret

; pdata function 0x36b244..0x36b288 unwind=0x3d2038
36b244  40 53                          rex push rbx
36b246  48 83 ec 20                    sub    rsp,0x20
36b24a  48 8b d9                       mov    rbx,rcx
36b24d  e8 b6 fc f5 ff                 call   0x2caf08
36b252  84 c0                          test   al,al
36b254  74 2a                          je     0x36b280
36b256  48 8d 0d 53 ae 07 00           lea    rcx,[rip+0x7ae53]        # 0x3e60b0
36b25d  e8 b2 54 fb ff                 call   0x320714
36b262  84 c0                          test   al,al
36b264  75 1a                          jne    0x36b280
36b266  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
36b26b  48 89 5c 24 38                 mov    QWORD PTR [rsp+0x38],rbx
36b270  48 8d 0d 39 ae 07 00           lea    rcx,[rip+0x7ae39]        # 0x3e60b0
36b277  e8 1c c6 ff ff                 call   0x367898
36b27c  8a 00                          mov    al,BYTE PTR [rax]
36b27e  eb 02                          jmp    0x36b282
36b280  32 c0                          xor    al,al
36b282  48 83 c4 20                    add    rsp,0x20
36b286  5b                             pop    rbx
36b287  c3                             ret

; pdata function 0x2e5a54..0x2e5a80 unwind=0x3d2064
2e5a54  48 83 ec 28                    sub    rsp,0x28
2e5a58  48 8b d1                       mov    rdx,rcx
2e5a5b  e8 a8 54 fe ff                 call   0x2caf08
2e5a60  84 c0                          test   al,al
2e5a62  74 15                          je     0x2e5a79
2e5a64  48 8b 12                       mov    rdx,QWORD PTR [rdx]
2e5a67  48 8b ca                       mov    rcx,rdx
2e5a6a  e8 99 54 fe ff                 call   0x2caf08
2e5a6f  84 c0                          test   al,al
2e5a71  74 06                          je     0x2e5a79
2e5a73  48 8b 42 10                    mov    rax,QWORD PTR [rdx+0x10]
2e5a77  eb 02                          jmp    0x2e5a7b
2e5a79  33 c0                          xor    eax,eax
2e5a7b  48 83 c4 28                    add    rsp,0x28
2e5a7f  c3                             ret

