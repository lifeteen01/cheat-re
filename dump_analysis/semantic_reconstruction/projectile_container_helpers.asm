; pdata function 0x32ba6c..0x32ba9b unwind=0x3d2038
32ba6c  40 53                          rex push rbx
32ba6e  48 83 ec 20                    sub    rsp,0x20
32ba72  48 8b d9                       mov    rbx,rcx
32ba75  48 8b ca                       mov    rcx,rdx
32ba78  e8 8b f4 f9 ff                 call   0x2caf08
32ba7d  84 c0                          test   al,al
32ba7f  74 12                          je     0x32ba93
32ba81  8b 1b                          mov    ebx,DWORD PTR [rbx]
32ba83  48 8b ca                       mov    rcx,rdx
32ba86  e8 21 88 04 00                 call   0x3742ac
32ba8b  3b c3                          cmp    eax,ebx
32ba8d  75 04                          jne    0x32ba93
32ba8f  b0 01                          mov    al,0x1
32ba91  eb 02                          jmp    0x32ba95
32ba93  32 c0                          xor    al,al
32ba95  48 83 c4 20                    add    rsp,0x20
32ba99  5b                             pop    rbx
32ba9a  c3                             ret

; heuristic leaf/code range 0x2d4060..0x2d4068 unwind=0x0
2d4060  8b 02                          mov    eax,DWORD PTR [rdx]
2d4062  89 01                          mov    DWORD PTR [rcx],eax
2d4064  48 8b c1                       mov    rax,rcx
2d4067  c3                             ret

; heuristic leaf/code range 0x2d0a44..0x2d0a4c unwind=0x0
2d0a44  e9 2f 0f 00 00                 jmp    0x2d1978
2d0a49  cc                             int3
2d0a4a  cc                             int3
2d0a4b  cc                             int3

; pdata function 0x2d182c..0x2d184d unwind=0x3d2038
2d182c  40 53                          rex push rbx
2d182e  48 83 ec 20                    sub    rsp,0x20
2d1832  48 8b d9                       mov    rbx,rcx
2d1835  48 8b ca                       mov    rcx,rdx
2d1838  e8 67 9b ff ff                 call   0x2cb3a4
2d183d  48 8b cb                       mov    rcx,rbx
2d1840  48 8b 10                       mov    rdx,QWORD PTR [rax]
2d1843  48 83 c4 20                    add    rsp,0x20
2d1847  5b                             pop    rbx
2d1848  e9 13 5e 00 00                 jmp    0x2d7660

; heuristic leaf/code range 0x2d4de8..0x2d4dfd unwind=0x0
2d4de8  e9 eb 97 ff ff                 jmp    0x2ce5d8
2d4ded  cc                             int3
2d4dee  cc                             int3
2d4def  cc                             int3
2d4df0  48 8b 01                       mov    rax,QWORD PTR [rcx]
2d4df3  48 8b 10                       mov    rdx,QWORD PTR [rax]
2d4df6  48 8b c1                       mov    rax,rcx
2d4df9  48 89 11                       mov    QWORD PTR [rcx],rdx
2d4dfc  c3                             ret

; pdata function 0x32b6c8..0x32b727 unwind=0x3d2054
32b6c8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32b6cd  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32b6d2  57                             push   rdi
32b6d3  48 83 ec 20                    sub    rsp,0x20
32b6d7  49 8b f8                       mov    rdi,r8
32b6da  48 8b f2                       mov    rsi,rdx
32b6dd  48 8b d9                       mov    rbx,rcx
32b6e0  e8 bf 2e fa ff                 call   0x2ce5a4
32b6e5  84 c0                          test   al,al
32b6e7  75 26                          jne    0x32b70f
32b6e9  4c 8b c7                       mov    r8,rdi
32b6ec  48 8b d6                       mov    rdx,rsi
32b6ef  48 8b cb                       mov    rcx,rbx
32b6f2  e8 25 e4 fa ff                 call   0x2d9b1c
32b6f7  eb 1e                          jmp    0x32b717
32b6f9  48 8b cb                       mov    rcx,rbx
32b6fc  e8 a3 fc f9 ff                 call   0x2cb3a4
32b701  48 8b 08                       mov    rcx,QWORD PTR [rax]
32b704  48 89 0f                       mov    QWORD PTR [rdi],rcx
32b707  48 83 c7 08                    add    rdi,0x8
32b70b  48 83 c3 08                    add    rbx,0x8
32b70f  48 3b de                       cmp    rbx,rsi
32b712  75 e5                          jne    0x32b6f9
32b714  48 8b c7                       mov    rax,rdi
32b717  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32b71c  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
32b721  48 83 c4 20                    add    rsp,0x20
32b725  5f                             pop    rdi
32b726  c3                             ret

; pdata function 0x2d3fe0..0x2d3ff7 unwind=0x3d2038
2d3fe0  40 53                          rex push rbx
2d3fe2  48 83 ec 20                    sub    rsp,0x20
2d3fe6  48 8b d9                       mov    rbx,rcx
2d3fe9  e8 7a 82 ff ff                 call   0x2cc268
2d3fee  48 8b c3                       mov    rax,rbx
2d3ff1  48 83 c4 20                    add    rsp,0x20
2d3ff5  5b                             pop    rbx
2d3ff6  c3                             ret

