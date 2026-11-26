; pdata function 0x2d8e44..0x2d8f74 unwind=0x3d23b0
2d8e44  40 53                          rex push rbx
2d8e46  55                             push   rbp
2d8e47  56                             push   rsi
2d8e48  57                             push   rdi
2d8e49  41 54                          push   r12
2d8e4b  41 56                          push   r14
2d8e4d  41 57                          push   r15
2d8e4f  48 83 ec 60                    sub    rsp,0x60
2d8e53  48 8b f9                       mov    rdi,rcx
2d8e56  48 83 c1 40                    add    rcx,0x40
2d8e5a  e8 ad f0 ff ff                 call   0x2d7f0c
2d8e5f  48 8d 6f 20                    lea    rbp,[rdi+0x20]
2d8e63  33 db                          xor    ebx,ebx
2d8e65  48 8b cd                       mov    rcx,rbp
2d8e68  e8 6b fc ff ff                 call   0x2d8ad8
2d8e6d  4c 8b f0                       mov    r14,rax
2d8e70  48 85 c0                       test   rax,rax
2d8e73  0f 84 e5 00 00 00              je     0x2d8f5e
2d8e79  4c 8b c3                       mov    r8,rbx
2d8e7c  b2 0a                          mov    dl,0xa
2d8e7e  48 8b cd                       mov    rcx,rbp
2d8e81  e8 a6 fa ff ff                 call   0x2d892c
2d8e86  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
2d8e8a  48 8b f0                       mov    rsi,rax
2d8e8d  4c 8b c3                       mov    r8,rbx
2d8e90  b2 3d                          mov    dl,0x3d
2d8e92  48 8b cd                       mov    rcx,rbp
2d8e95  49 0f 44 f6                    cmove  rsi,r14
2d8e99  e8 8e fa ff ff                 call   0x2d892c
2d8e9e  4c 8b f8                       mov    r15,rax
2d8ea1  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
2d8ea5  0f 84 a6 00 00 00              je     0x2d8f51
2d8eab  48 3b c6                       cmp    rax,rsi
2d8eae  0f 83 9d 00 00 00              jae    0x2d8f51
2d8eb4  48 8b cd                       mov    rcx,rbp
2d8eb7  48 c7 84 24 b0 00 00 00 00 00 00 00 mov    QWORD PTR [rsp+0xb0],0x0
2d8ec3  e8 24 49 ff ff                 call   0x2cd7ec
2d8ec8  41 b8 0a 00 00 00              mov    r8d,0xa
2d8ece  48 8d 94 24 b0 00 00 00        lea    rdx,[rsp+0xb0]
2d8ed6  48 8d 0c 03                    lea    rcx,[rbx+rax*1]
2d8eda  e8 e1 1a 0f 00                 call   0x3ca9c0
2d8edf  89 84 24 a8 00 00 00           mov    DWORD PTR [rsp+0xa8],eax
2d8ee6  48 8b 84 24 b0 00 00 00        mov    rax,QWORD PTR [rsp+0xb0]
2d8eee  48 85 c0                       test   rax,rax
2d8ef1  74 5e                          je     0x2d8f51
2d8ef3  80 38 3d                       cmp    BYTE PTR [rax],0x3d
2d8ef6  75 59                          jne    0x2d8f51
2d8ef8  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
2d8f00  e8 9f 24 ff ff                 call   0x2cb3a4
2d8f05  4c 8b ce                       mov    r9,rsi
2d8f08  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2d8f0d  4d 2b cf                       sub    r9,r15
2d8f10  4d 8d 47 01                    lea    r8,[r15+0x1]
2d8f14  49 ff c9                       dec    r9
2d8f17  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d8f1c  48 8b d5                       mov    rdx,rbp
2d8f1f  e8 cc b2 ff ff                 call   0x2d41f0
2d8f24  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d8f29  e8 76 24 ff ff                 call   0x2cb3a4
2d8f2e  4c 8b c8                       mov    r9,rax
2d8f31  4c 8d 84 24 a8 00 00 00        lea    r8,[rsp+0xa8]
2d8f39  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
2d8f3e  48 8d 4f 40                    lea    rcx,[rdi+0x40]
2d8f42  e8 2d 99 ff ff                 call   0x2d2874
2d8f47  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d8f4c  e8 a3 35 ff ff                 call   0x2cc4f4
2d8f51  48 8d 5e 01                    lea    rbx,[rsi+0x1]
2d8f55  49 3b de                       cmp    rbx,r14
2d8f58  0f 82 1b ff ff ff              jb     0x2d8e79
2d8f5e  c6 87 84 00 00 00 00           mov    BYTE PTR [rdi+0x84],0x0
2d8f65  48 83 c4 60                    add    rsp,0x60
2d8f69  41 5f                          pop    r15
2d8f6b  41 5e                          pop    r14
2d8f6d  41 5c                          pop    r12
2d8f6f  5f                             pop    rdi
2d8f70  5e                             pop    rsi
2d8f71  5d                             pop    rbp
2d8f72  5b                             pop    rbx
2d8f73  c3                             ret

; pdata function 0x2d89b4..0x2d89cd unwind=0x3d2064
2d89b4  48 83 ec 28                    sub    rsp,0x28
2d89b8  48 83 c1 20                    add    rcx,0x20
2d89bc  e8 2b 4e ff ff                 call   0x2cd7ec
2d89c1  48 8b c8                       mov    rcx,rax
2d89c4  48 83 c4 28                    add    rsp,0x28
2d89c8  e9 87 d9 ff ff                 jmp    0x2d6354

; heuristic leaf/code range 0x2dd5e0..0x2dd5e8 unwind=0x0
2dd5e0  e9 af c7 ff ff                 jmp    0x2d9d94
2dd5e5  cc                             int3
2dd5e6  cc                             int3
2dd5e7  cc                             int3

; pdata function 0x2d1fb0..0x2d2000 unwind=0x3d2870
2d1fb0  48 8b c4                       mov    rax,rsp
2d1fb3  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2d1fb7  4c 89 40 18                    mov    QWORD PTR [rax+0x18],r8
2d1fbb  48 89 50 10                    mov    QWORD PTR [rax+0x10],rdx
2d1fbf  57                             push   rdi
2d1fc0  48 83 ec 20                    sub    rsp,0x20
2d1fc4  48 8b f9                       mov    rdi,rcx
2d1fc7  48 8d 48 10                    lea    rcx,[rax+0x10]
2d1fcb  e8 08 c6 ff ff                 call   0x2ce5d8
2d1fd0  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d1fd5  48 8b d8                       mov    rbx,rax
2d1fd8  e8 fb c5 ff ff                 call   0x2ce5d8
2d1fdd  48 2b c3                       sub    rax,rbx
2d1fe0  48 8b c8                       mov    rcx,rax
2d1fe3  e8 bc 93 ff ff                 call   0x2cb3a4
2d1fe8  4c 8b c0                       mov    r8,rax
2d1feb  48 8b d3                       mov    rdx,rbx
2d1fee  48 8b cf                       mov    rcx,rdi
2d1ff1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d1ff6  48 83 c4 20                    add    rsp,0x20
2d1ffa  5f                             pop    rdi
2d1ffb  e9 9c d1 ff ff                 jmp    0x2cf19c

