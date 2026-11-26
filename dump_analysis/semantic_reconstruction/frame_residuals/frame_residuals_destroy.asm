; pdata function 0x2ebf78..0x2ebfb1 unwind=0x3d2040
2ebf78  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2ebf7d  57                             push   rdi
2ebf7e  48 83 ec 20                    sub    rsp,0x20
2ebf82  48 8b f9                       mov    rdi,rcx
2ebf85  48 8b da                       mov    rbx,rdx
2ebf88  48 8d 4a 10                    lea    rcx,[rdx+0x10]
2ebf8c  e8 13 f4 fd ff                 call   0x2cb3a4
2ebf91  48 8b d0                       mov    rdx,rax
2ebf94  48 8b cf                       mov    rcx,rdi
2ebf97  e8 e4 19 00 00                 call   0x2ed980
2ebf9c  48 8b d3                       mov    rdx,rbx
2ebf9f  48 8b cf                       mov    rcx,rdi
2ebfa2  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2ebfa7  48 83 c4 20                    add    rsp,0x20
2ebfab  5f                             pop    rdi
2ebfac  e9 af ff ff ff                 jmp    0x2ebf60

; heuristic leaf/code range 0x2ebfbc..0x2ebfc4 unwind=0x0
2ebfbc  e9 ab ff ff ff                 jmp    0x2ebf6c
2ebfc1  cc                             int3
2ebfc2  cc                             int3
2ebfc3  cc                             int3

; heuristic leaf/code range 0x2dec6c..0x2dec8f unwind=0x0
2dec6c  48 8b ca                       mov    rcx,rdx
2dec6f  e9 08 00 00 00                 jmp    0x2dec7c
2dec74  33 d2                          xor    edx,edx
2dec76  e9 51 11 00 00                 jmp    0x2dfdcc
2dec7b  cc                             int3
2dec7c  33 d2                          xor    edx,edx
2dec7e  e9 7d 11 00 00                 jmp    0x2dfe00
2dec83  cc                             int3
2dec84  48 2b d1                       sub    rdx,rcx
2dec87  48 c1 fa 02                    sar    rdx,0x2
2dec8b  48 8b c2                       mov    rax,rdx
2dec8e  c3                             ret

; heuristic leaf/code range 0x2cf0e4..0x2cf0ec unwind=0x0
2cf0e4  48 8b ca                       mov    rcx,rdx
2cf0e7  e9 50 64 00 00                 jmp    0x2d553c

; heuristic leaf/code range 0x2ea7a4..0x2ea7ac unwind=0x0
2ea7a4  48 8b ca                       mov    rcx,rdx
2ea7a7  e9 a8 d5 00 00                 jmp    0x2f7d54

; pdata function 0x2cb55c..0x2cb5c2 unwind=0x3d224c
2cb55c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2cb561  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2cb566  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
2cb56b  57                             push   rdi
2cb56c  48 83 ec 20                    sub    rsp,0x20
2cb570  41 80 78 19 00                 cmp    BYTE PTR [r8+0x19],0x0
2cb575  49 8b d8                       mov    rbx,r8
2cb578  48 8b fa                       mov    rdi,rdx
2cb57b  48 8b f1                       mov    rsi,rcx
2cb57e  75 32                          jne    0x2cb5b2
2cb580  4c 8b 43 10                    mov    r8,QWORD PTR [rbx+0x10]
2cb584  48 8b d7                       mov    rdx,rdi
2cb587  48 8b ce                       mov    rcx,rsi
2cb58a  e8 cd ff ff ff                 call   0x2cb55c
2cb58f  48 8b d3                       mov    rdx,rbx
2cb592  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2cb597  e8 40 07 00 00                 call   0x2cbcdc
2cb59c  48 8b d0                       mov    rdx,rax
2cb59f  48 8b cf                       mov    rcx,rdi
2cb5a2  e8 79 01 00 00                 call   0x2cb720
2cb5a7  48 8b 5c 24 40                 mov    rbx,QWORD PTR [rsp+0x40]
2cb5ac  80 7b 19 00                    cmp    BYTE PTR [rbx+0x19],0x0
2cb5b0  74 ce                          je     0x2cb580
2cb5b2  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2cb5b7  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2cb5bc  48 83 c4 20                    add    rsp,0x20
2cb5c0  5f                             pop    rdi
2cb5c1  c3                             ret

