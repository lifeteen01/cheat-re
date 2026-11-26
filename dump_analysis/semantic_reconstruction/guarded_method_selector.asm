; pdata function 0x333bf4..0x333d0f unwind=0x3d3748
333bf4  40 53                          rex push rbx
333bf6  55                             push   rbp
333bf7  56                             push   rsi
333bf8  57                             push   rdi
333bf9  41 54                          push   r12
333bfb  41 56                          push   r14
333bfd  41 57                          push   r15
333bff  48 83 ec 30                    sub    rsp,0x30
333c03  4c 8b e2                       mov    r12,rdx
333c06  48 c7 44 24 28 00 00 00 00     mov    QWORD PTR [rsp+0x28],0x0
333c0f  48 8b 94 24 90 00 00 00        mov    rdx,QWORD PTR [rsp+0x90]
333c17  4d 8b f1                       mov    r14,r9
333c1a  41 8b e8                       mov    ebp,r8d
333c1d  e8 02 06 00 00                 call   0x334224
333c22  48 8b c8                       mov    rcx,rax
333c25  48 8b f0                       mov    rsi,rax
333c28  e8 db 72 f9 ff                 call   0x2caf08
333c2d  84 c0                          test   al,al
333c2f  0f 84 c4 00 00 00              je     0x333cf9
333c35  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
333c3a  48 8b ce                       mov    rcx,rsi
333c3d  e8 1e 0a 00 00                 call   0x334660
333c42  48 8b d8                       mov    rbx,rax
333c45  48 85 c0                       test   rax,rax
333c48  0f 84 ab 00 00 00              je     0x333cf9
333c4e  8b bc 24 98 00 00 00           mov    edi,DWORD PTR [rsp+0x98]
333c55  48 8b cb                       mov    rcx,rbx
333c58  e8 ab 72 f9 ff                 call   0x2caf08
333c5d  84 c0                          test   al,al
333c5f  74 7f                          je     0x333ce0
333c61  48 8b cb                       mov    rcx,rbx
333c64  e8 d7 13 00 00                 call   0x335040
333c69  48 8b c8                       mov    rcx,rax
333c6c  4c 8b c0                       mov    r8,rax
333c6f  e8 94 72 f9 ff                 call   0x2caf08
333c74  84 c0                          test   al,al
333c76  74 68                          je     0x333ce0
333c78  49 8b d4                       mov    rdx,r12
333c7b  49 8b c8                       mov    rcx,r8
333c7e  e8 71 13 00 00                 call   0x334ff4
333c83  84 c0                          test   al,al
333c85  74 59                          je     0x333ce0
333c87  85 ff                          test   edi,edi
333c89  78 7f                          js     0x333d0a
333c8b  4d 85 f6                       test   r14,r14
333c8e  74 7a                          je     0x333d0a
333c90  48 8b cb                       mov    rcx,rbx
333c93  e8 a8 14 00 00                 call   0x335140
333c98  3b f8                          cmp    edi,eax
333c9a  7f 44                          jg     0x333ce0
333c9c  85 ed                          test   ebp,ebp
333c9e  78 04                          js     0x333ca4
333ca0  3b c5                          cmp    eax,ebp
333ca2  75 3c                          jne    0x333ce0
333ca4  85 c0                          test   eax,eax
333ca6  7e 0d                          jle    0x333cb5
333ca8  8d 57 ff                       lea    edx,[rdi-0x1]
333cab  48 8b cb                       mov    rcx,rbx
333cae  e8 05 15 00 00                 call   0x3351b8
333cb3  eb 17                          jmp    0x333ccc
333cb5  48 8d 54 24 21                 lea    rdx,[rsp+0x21]
333cba  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
333cbf  e8 7c fe ff ff                 call   0x333b40 ; STRING getter=0x333b40 -
333cc4  48 8b c8                       mov    rcx,rax
333cc7  e8 98 47 fa ff                 call   0x2d8464
333ccc  48 85 c0                       test   rax,rax
333ccf  74 0f                          je     0x333ce0
333cd1  49 8b d6                       mov    rdx,r14
333cd4  48 8b c8                       mov    rcx,rax
333cd7  e8 18 13 00 00                 call   0x334ff4
333cdc  84 c0                          test   al,al
333cde  75 2a                          jne    0x333d0a
333ce0  48 8d 54 24 28                 lea    rdx,[rsp+0x28]
333ce5  48 8b ce                       mov    rcx,rsi
333ce8  e8 73 09 00 00                 call   0x334660
333ced  48 8b d8                       mov    rbx,rax
333cf0  48 85 c0                       test   rax,rax
333cf3  0f 85 5c ff ff ff              jne    0x333c55
333cf9  33 c0                          xor    eax,eax
333cfb  48 83 c4 30                    add    rsp,0x30
333cff  41 5f                          pop    r15
333d01  41 5e                          pop    r14
333d03  41 5c                          pop    r12
333d05  5f                             pop    rdi
333d06  5e                             pop    rsi
333d07  5d                             pop    rbp
333d08  5b                             pop    rbx
333d09  c3                             ret
333d0a  48 8b c3                       mov    rax,rbx
333d0d  eb ec                          jmp    0x333cfb

