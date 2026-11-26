; pdata function 0x319be8..0x319df2 unwind=0x3d2408
319be8  40 55                          rex push rbp
319bea  53                             push   rbx
319beb  56                             push   rsi
319bec  57                             push   rdi
319bed  41 54                          push   r12
319bef  41 55                          push   r13
319bf1  41 56                          push   r14
319bf3  41 57                          push   r15
319bf5  48 8b ec                       mov    rbp,rsp
319bf8  48 83 ec 28                    sub    rsp,0x28
319bfc  4c 8d 69 18                    lea    r13,[rcx+0x18]
319c00  4c 8b f9                       mov    r15,rcx
319c03  49 8b cd                       mov    rcx,r13
319c06  48 8b da                       mov    rbx,rdx
319c09  e8 2e ef fb ff                 call   0x2d8b3c
319c0e  48 d1 e8                       shr    rax,1
319c11  48 8b c8                       mov    rcx,rax
319c14  e8 53 d4 fb ff                 call   0x2d706c
319c19  8b c8                          mov    ecx,eax
319c1b  bf 01 00 00 00                 mov    edi,0x1
319c20  8b c7                          mov    eax,edi
319c22  48 d3 e0                       shl    rax,cl
319c25  48 3b d8                       cmp    rbx,rax
319c28  0f 87 b7 01 00 00              ja     0x319de5
319c2e  48 8b cb                       mov    rcx,rbx
319c31  e8 f2 ce fb ff                 call   0x2d6b28
319c36  8b c8                          mov    ecx,eax
319c38  48 8d 55 58                    lea    rdx,[rbp+0x58]
319c3c  48 d3 e7                       shl    rdi,cl
319c3f  8b d8                          mov    ebx,eax
319c41  49 8b cf                       mov    rcx,r15
319c44  e8 23 dd fb ff                 call   0x2d796c
319c49  4c 8b 45 58                    mov    r8,QWORD PTR [rbp+0x58]
319c4d  8b cb                          mov    ecx,ebx
319c4f  ba 02 00 00 00                 mov    edx,0x2
319c54  48 d3 e2                       shl    rdx,cl
319c57  49 8b cd                       mov    rcx,r13
319c5a  e8 41 cc fb ff                 call   0x2d68a0
319c5f  48 8d 47 ff                    lea    rax,[rdi-0x1]
319c63  49 89 7f 38                    mov    QWORD PTR [r15+0x38],rdi
319c67  48 8d 55 50                    lea    rdx,[rbp+0x50]
319c6b  49 89 47 30                    mov    QWORD PTR [r15+0x30],rax
319c6f  49 8b cf                       mov    rcx,r15
319c72  e8 b5 dc fb ff                 call   0x2d792c
319c77  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
319c7b  48 89 5d 60                    mov    QWORD PTR [rbp+0x60],rbx
319c7f  e9 10 01 00 00                 jmp    0x319d94
319c84  48 8d 4d 60                    lea    rcx,[rbp+0x60]
319c88  e8 73 b1 fb ff                 call   0x2d4e00
319c8d  48 8d 4d 50                    lea    rcx,[rbp+0x50]
319c91  e8 2a b1 fb ff                 call   0x2d4dc0
319c96  48 8b c8                       mov    rcx,rax
319c99  e8 06 17 fb ff                 call   0x2cb3a4
319c9e  48 8b d0                       mov    rdx,rax
319ca1  49 8b cf                       mov    rcx,r15
319ca4  4c 8b e0                       mov    r12,rax
319ca7  e8 4c e1 fb ff                 call   0x2d7df8
319cac  4d 8b 75 00                    mov    r14,QWORD PTR [r13+0x0]
319cb0  48 8d 55 58                    lea    rdx,[rbp+0x58]
319cb4  48 c1 e0 04                    shl    rax,0x4
319cb8  4c 03 f0                       add    r14,rax
319cbb  49 8b ce                       mov    rcx,r14
319cbe  e8 71 28 fb ff                 call   0x2cc534
319cc3  48 8b 7d 60                    mov    rdi,QWORD PTR [rbp+0x60]
319cc7  84 c0                          test   al,al
319cc9  74 0c                          je     0x319cd7
319ccb  49 89 1e                       mov    QWORD PTR [r14],rbx
319cce  49 89 5e 08                    mov    QWORD PTR [r14+0x8],rbx
319cd2  e9 b6 00 00 00                 jmp    0x319d8d
319cd7  49 8b 76 08                    mov    rsi,QWORD PTR [r14+0x8]
319cdb  48 8d 4d 48                    lea    rcx,[rbp+0x48]
319cdf  48 89 75 48                    mov    QWORD PTR [rbp+0x48],rsi
319ce3  e8 d0 b0 fb ff                 call   0x2d4db8
319ce8  48 8b c8                       mov    rcx,rax
319ceb  e8 b4 16 fb ff                 call   0x2cb3a4
319cf0  4c 8b c0                       mov    r8,rax
319cf3  49 8b d4                       mov    rdx,r12
319cf6  49 8b cf                       mov    rcx,r15
319cf9  e8 ee 53 fb ff                 call   0x2cf0ec
319cfe  84 c0                          test   al,al
319d00  75 2b                          jne    0x319d2d
319d02  48 8d 4d 48                    lea    rcx,[rbp+0x48]
319d06  e8 e5 b0 fb ff                 call   0x2d4df0
319d0b  48 8d 55 50                    lea    rdx,[rbp+0x50]
319d0f  48 8d 4d 48                    lea    rcx,[rbp+0x48]
319d13  e8 1c 28 fb ff                 call   0x2cc534
319d18  84 c0                          test   al,al
319d1a  75 b2                          jne    0x319cce
319d1c  48 8b 4d 48                    mov    rcx,QWORD PTR [rbp+0x48]
319d20  4c 8b c7                       mov    r8,rdi
319d23  48 8b d3                       mov    rdx,rbx
319d26  e8 cd dd fb ff                 call   0x2d7af8
319d2b  eb a1                          jmp    0x319cce
319d2d  48 8d 55 48                    lea    rdx,[rbp+0x48]
319d31  49 8b ce                       mov    rcx,r14
319d34  e8 fb 27 fb ff                 call   0x2cc534
319d39  84 c0                          test   al,al
319d3b  75 3f                          jne    0x319d7c
319d3d  48 8d 4d 48                    lea    rcx,[rbp+0x48]
319d41  e8 f2 b0 fb ff                 call   0x2d4e38
319d46  48 8b c8                       mov    rcx,rax
319d49  e8 6a b0 fb ff                 call   0x2d4db8
319d4e  48 8b c8                       mov    rcx,rax
319d51  e8 4e 16 fb ff                 call   0x2cb3a4
319d56  4c 8b c0                       mov    r8,rax
319d59  49 8b d4                       mov    rdx,r12
319d5c  49 8b cf                       mov    rcx,r15
319d5f  e8 88 53 fb ff                 call   0x2cf0ec
319d64  84 c0                          test   al,al
319d66  74 63                          je     0x319dcb
319d68  48 8d 55 48                    lea    rdx,[rbp+0x48]
319d6c  49 8b ce                       mov    rcx,r14
319d6f  e8 c0 27 fb ff                 call   0x2cc534
319d74  84 c0                          test   al,al
319d76  74 c5                          je     0x319d3d
319d78  48 8b 75 48                    mov    rsi,QWORD PTR [rbp+0x48]
319d7c  4c 8b c7                       mov    r8,rdi
319d7f  48 8b d3                       mov    rdx,rbx
319d82  48 8b ce                       mov    rcx,rsi
319d85  e8 6e dd fb ff                 call   0x2d7af8
319d8a  49 89 1e                       mov    QWORD PTR [r14],rbx
319d8d  48 8b df                       mov    rbx,rdi
319d90  48 89 5d 50                    mov    QWORD PTR [rbp+0x50],rbx
319d94  48 8d 55 58                    lea    rdx,[rbp+0x58]
319d98  48 8d 4d 50                    lea    rcx,[rbp+0x50]
319d9c  e8 93 27 fb ff                 call   0x2cc534
319da1  84 c0                          test   al,al
319da3  0f 84 db fe ff ff              je     0x319c84
319da9  48 8d 4d 48                    lea    rcx,[rbp+0x48]
319dad  48 c7 45 48 00 00 00 00        mov    QWORD PTR [rbp+0x48],0x0
319db5  e8 52 55 fd ff                 call   0x2ef30c
319dba  48 83 c4 28                    add    rsp,0x28
319dbe  41 5f                          pop    r15
319dc0  41 5e                          pop    r14
319dc2  41 5d                          pop    r13
319dc4  41 5c                          pop    r12
319dc6  5f                             pop    rdi
319dc7  5e                             pop    rsi
319dc8  5b                             pop    rbx
319dc9  5d                             pop    rbp
319dca  c3                             ret
319dcb  48 8d 4d 48                    lea    rcx,[rbp+0x48]
319dcf  e8 1c b0 fb ff                 call   0x2d4df0
319dd4  48 8b 4d 48                    mov    rcx,QWORD PTR [rbp+0x48]
319dd8  4c 8b c7                       mov    r8,rdi
319ddb  48 8b d3                       mov    rdx,rbx
319dde  e8 15 dd fb ff                 call   0x2d7af8
319de3  eb a8                          jmp    0x319d8d
319de5  48 8d 0d f4 36 f7 ff           lea    rcx,[rip+0xfffffffffff736f4]        # 0x28d4e0
319dec  e8 5f 32 fb ff                 call   0x2cd050
319df1  cc                             int3

; pdata function 0x2e2bac..0x2e2db6 unwind=0x3d2408
2e2bac  40 55                          rex push rbp
2e2bae  53                             push   rbx
2e2baf  56                             push   rsi
2e2bb0  57                             push   rdi
2e2bb1  41 54                          push   r12
2e2bb3  41 55                          push   r13
2e2bb5  41 56                          push   r14
2e2bb7  41 57                          push   r15
2e2bb9  48 8b ec                       mov    rbp,rsp
2e2bbc  48 83 ec 28                    sub    rsp,0x28
2e2bc0  4c 8d 69 18                    lea    r13,[rcx+0x18]
2e2bc4  4c 8b f9                       mov    r15,rcx
2e2bc7  49 8b cd                       mov    rcx,r13
2e2bca  48 8b da                       mov    rbx,rdx
2e2bcd  e8 6a 5f ff ff                 call   0x2d8b3c
2e2bd2  48 d1 e8                       shr    rax,1
2e2bd5  48 8b c8                       mov    rcx,rax
2e2bd8  e8 8f 44 ff ff                 call   0x2d706c
2e2bdd  8b c8                          mov    ecx,eax
2e2bdf  bf 01 00 00 00                 mov    edi,0x1
2e2be4  8b c7                          mov    eax,edi
2e2be6  48 d3 e0                       shl    rax,cl
2e2be9  48 3b d8                       cmp    rbx,rax
2e2bec  0f 87 b7 01 00 00              ja     0x2e2da9
2e2bf2  48 8b cb                       mov    rcx,rbx
2e2bf5  e8 2e 3f ff ff                 call   0x2d6b28
2e2bfa  8b c8                          mov    ecx,eax
2e2bfc  48 8d 55 58                    lea    rdx,[rbp+0x58]
2e2c00  48 d3 e7                       shl    rdi,cl
2e2c03  8b d8                          mov    ebx,eax
2e2c05  49 8b cf                       mov    rcx,r15
2e2c08  e8 5f 4d ff ff                 call   0x2d796c
2e2c0d  4c 8b 45 58                    mov    r8,QWORD PTR [rbp+0x58]
2e2c11  8b cb                          mov    ecx,ebx
2e2c13  ba 02 00 00 00                 mov    edx,0x2
2e2c18  48 d3 e2                       shl    rdx,cl
2e2c1b  49 8b cd                       mov    rcx,r13
2e2c1e  e8 7d 3c ff ff                 call   0x2d68a0
2e2c23  48 8d 47 ff                    lea    rax,[rdi-0x1]
2e2c27  49 89 7f 38                    mov    QWORD PTR [r15+0x38],rdi
2e2c2b  48 8d 55 50                    lea    rdx,[rbp+0x50]
2e2c2f  49 89 47 30                    mov    QWORD PTR [r15+0x30],rax
2e2c33  49 8b cf                       mov    rcx,r15
2e2c36  e8 f1 4c ff ff                 call   0x2d792c
2e2c3b  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2e2c3f  48 89 5d 60                    mov    QWORD PTR [rbp+0x60],rbx
2e2c43  e9 10 01 00 00                 jmp    0x2e2d58
2e2c48  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2e2c4c  e8 af 21 ff ff                 call   0x2d4e00
2e2c51  48 8d 4d 50                    lea    rcx,[rbp+0x50]
2e2c55  e8 66 21 ff ff                 call   0x2d4dc0
2e2c5a  48 8b c8                       mov    rcx,rax
2e2c5d  e8 42 87 fe ff                 call   0x2cb3a4
2e2c62  48 8b d0                       mov    rdx,rax
2e2c65  49 8b cf                       mov    rcx,r15
2e2c68  4c 8b e0                       mov    r12,rax
2e2c6b  e8 6c 06 00 00                 call   0x2e32dc
2e2c70  4d 8b 75 00                    mov    r14,QWORD PTR [r13+0x0]
2e2c74  48 8d 55 58                    lea    rdx,[rbp+0x58]
2e2c78  48 c1 e0 04                    shl    rax,0x4
2e2c7c  4c 03 f0                       add    r14,rax
2e2c7f  49 8b ce                       mov    rcx,r14
2e2c82  e8 ad 98 fe ff                 call   0x2cc534
2e2c87  48 8b 7d 60                    mov    rdi,QWORD PTR [rbp+0x60]
2e2c8b  84 c0                          test   al,al
2e2c8d  74 0c                          je     0x2e2c9b
2e2c8f  49 89 1e                       mov    QWORD PTR [r14],rbx
2e2c92  49 89 5e 08                    mov    QWORD PTR [r14+0x8],rbx
2e2c96  e9 b6 00 00 00                 jmp    0x2e2d51
2e2c9b  49 8b 76 08                    mov    rsi,QWORD PTR [r14+0x8]
2e2c9f  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2e2ca3  48 89 75 48                    mov    QWORD PTR [rbp+0x48],rsi
2e2ca7  e8 0c 21 ff ff                 call   0x2d4db8
2e2cac  48 8b c8                       mov    rcx,rax
2e2caf  e8 f0 86 fe ff                 call   0x2cb3a4
2e2cb4  4c 8b c0                       mov    r8,rax
2e2cb7  49 8b d4                       mov    rdx,r12
2e2cba  49 8b cf                       mov    rcx,r15
2e2cbd  e8 da b1 ff ff                 call   0x2dde9c
2e2cc2  84 c0                          test   al,al
2e2cc4  75 2b                          jne    0x2e2cf1
2e2cc6  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2e2cca  e8 21 21 ff ff                 call   0x2d4df0
2e2ccf  48 8d 55 50                    lea    rdx,[rbp+0x50]
2e2cd3  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2e2cd7  e8 58 98 fe ff                 call   0x2cc534
2e2cdc  84 c0                          test   al,al
2e2cde  75 b2                          jne    0x2e2c92
2e2ce0  48 8b 4d 48                    mov    rcx,QWORD PTR [rbp+0x48]
2e2ce4  4c 8b c7                       mov    r8,rdi
2e2ce7  48 8b d3                       mov    rdx,rbx
2e2cea  e8 09 4e ff ff                 call   0x2d7af8
2e2cef  eb a1                          jmp    0x2e2c92
2e2cf1  48 8d 55 48                    lea    rdx,[rbp+0x48]
2e2cf5  49 8b ce                       mov    rcx,r14
2e2cf8  e8 37 98 fe ff                 call   0x2cc534
2e2cfd  84 c0                          test   al,al
2e2cff  75 3f                          jne    0x2e2d40
2e2d01  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2e2d05  e8 2e 21 ff ff                 call   0x2d4e38
2e2d0a  48 8b c8                       mov    rcx,rax
2e2d0d  e8 a6 20 ff ff                 call   0x2d4db8
2e2d12  48 8b c8                       mov    rcx,rax
2e2d15  e8 8a 86 fe ff                 call   0x2cb3a4
2e2d1a  4c 8b c0                       mov    r8,rax
2e2d1d  49 8b d4                       mov    rdx,r12
2e2d20  49 8b cf                       mov    rcx,r15
2e2d23  e8 74 b1 ff ff                 call   0x2dde9c
2e2d28  84 c0                          test   al,al
2e2d2a  74 63                          je     0x2e2d8f
2e2d2c  48 8d 55 48                    lea    rdx,[rbp+0x48]
2e2d30  49 8b ce                       mov    rcx,r14
2e2d33  e8 fc 97 fe ff                 call   0x2cc534
2e2d38  84 c0                          test   al,al
2e2d3a  74 c5                          je     0x2e2d01
2e2d3c  48 8b 75 48                    mov    rsi,QWORD PTR [rbp+0x48]
2e2d40  4c 8b c7                       mov    r8,rdi
2e2d43  48 8b d3                       mov    rdx,rbx
2e2d46  48 8b ce                       mov    rcx,rsi
2e2d49  e8 aa 4d ff ff                 call   0x2d7af8
2e2d4e  49 89 1e                       mov    QWORD PTR [r14],rbx
2e2d51  48 8b df                       mov    rbx,rdi
2e2d54  48 89 5d 50                    mov    QWORD PTR [rbp+0x50],rbx
2e2d58  48 8d 55 58                    lea    rdx,[rbp+0x58]
2e2d5c  48 8d 4d 50                    lea    rcx,[rbp+0x50]
2e2d60  e8 cf 97 fe ff                 call   0x2cc534
2e2d65  84 c0                          test   al,al
2e2d67  0f 84 db fe ff ff              je     0x2e2c48
2e2d6d  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2e2d71  48 c7 45 48 00 00 00 00        mov    QWORD PTR [rbp+0x48],0x0
2e2d79  e8 4e c6 ff ff                 call   0x2df3cc
2e2d7e  48 83 c4 28                    add    rsp,0x28
2e2d82  41 5f                          pop    r15
2e2d84  41 5e                          pop    r14
2e2d86  41 5d                          pop    r13
2e2d88  41 5c                          pop    r12
2e2d8a  5f                             pop    rdi
2e2d8b  5e                             pop    rsi
2e2d8c  5b                             pop    rbx
2e2d8d  5d                             pop    rbp
2e2d8e  c3                             ret
2e2d8f  48 8d 4d 48                    lea    rcx,[rbp+0x48]
2e2d93  e8 58 20 ff ff                 call   0x2d4df0
2e2d98  48 8b 4d 48                    mov    rcx,QWORD PTR [rbp+0x48]
2e2d9c  4c 8b c7                       mov    r8,rdi
2e2d9f  48 8b d3                       mov    rdx,rbx
2e2da2  e8 51 4d ff ff                 call   0x2d7af8
2e2da7  eb a8                          jmp    0x2e2d51
2e2da9  48 8d 0d 30 a7 fa ff           lea    rcx,[rip+0xfffffffffffaa730]        # 0x28d4e0
2e2db0  e8 9b a2 fe ff                 call   0x2cd050
2e2db5  cc                             int3

; pdata function 0x319a00..0x319a73 unwind=0x3d2054
319a00  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
319a05  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
319a0a  57                             push   rdi
319a0b  48 83 ec 20                    sub    rsp,0x20
319a0f  48 8b da                       mov    rbx,rdx
319a12  48 8b f9                       mov    rdi,rcx
319a15  e8 f6 e3 fb ff                 call   0x2d7e10
319a1a  48 8b d3                       mov    rdx,rbx
319a1d  48 8b cf                       mov    rcx,rdi
319a20  48 8b f0                       mov    rsi,rax
319a23  e8 3c db fb ff                 call   0x2d7564
319a28  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
319a2d  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
319a32  48 8d 0d df 72 f7 ff           lea    rcx,[rip+0xfffffffffff772df]        # 0x290d18
319a39  e8 06 27 fb ff                 call   0x2cc144
319a3e  48 8b 00                       mov    rax,QWORD PTR [rax]
319a41  48 3b f0                       cmp    rsi,rax
319a44  72 05                          jb     0x319a4b
319a46  48 8b c6                       mov    rax,rsi
319a49  eb 18                          jmp    0x319a63
319a4b  48 81 fe 00 02 00 00           cmp    rsi,0x200
319a52  73 0f                          jae    0x319a63
319a54  48 8d 0c f5 00 00 00 00        lea    rcx,[rsi*8+0x0]
319a5c  48 3b c8                       cmp    rcx,rax
319a5f  48 0f 43 c1                    cmovae rax,rcx
319a63  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
319a68  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
319a6d  48 83 c4 20                    add    rsp,0x20
319a71  5f                             pop    rdi
319a72  c3                             ret

; pdata function 0x2e2b04..0x2e2b77 unwind=0x3d2054
2e2b04  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e2b09  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2e2b0e  57                             push   rdi
2e2b0f  48 83 ec 20                    sub    rsp,0x20
2e2b13  48 8b da                       mov    rbx,rdx
2e2b16  48 8b f9                       mov    rdi,rcx
2e2b19  e8 f2 52 ff ff                 call   0x2d7e10
2e2b1e  48 8b d3                       mov    rdx,rbx
2e2b21  48 8b cf                       mov    rcx,rdi
2e2b24  48 8b f0                       mov    rsi,rax
2e2b27  e8 38 4a ff ff                 call   0x2d7564
2e2b2c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
2e2b31  48 89 44 24 40                 mov    QWORD PTR [rsp+0x40],rax
2e2b36  48 8d 0d c3 ad fa ff           lea    rcx,[rip+0xfffffffffffaadc3]        # 0x28d900
2e2b3d  e8 02 96 fe ff                 call   0x2cc144
2e2b42  48 8b 00                       mov    rax,QWORD PTR [rax]
2e2b45  48 3b f0                       cmp    rsi,rax
2e2b48  72 05                          jb     0x2e2b4f
2e2b4a  48 8b c6                       mov    rax,rsi
2e2b4d  eb 18                          jmp    0x2e2b67
2e2b4f  48 81 fe 00 02 00 00           cmp    rsi,0x200
2e2b56  73 0f                          jae    0x2e2b67
2e2b58  48 8d 0c f5 00 00 00 00        lea    rcx,[rsi*8+0x0]
2e2b60  48 3b c8                       cmp    rcx,rax
2e2b63  48 0f 43 c1                    cmovae rax,rcx
2e2b67  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2e2b6c  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2e2b71  48 83 c4 20                    add    rsp,0x20
2e2b75  5f                             pop    rdi
2e2b76  c3                             ret

; pdata function 0x31a884..0x31a89c unwind=0x3d2064
31a884  48 83 ec 28                    sub    rsp,0x28
31a888  48 8b ca                       mov    rcx,rdx
31a88b  e8 5c 17 fd ff                 call   0x2ebfec
31a890  48 8b c8                       mov    rcx,rax
31a893  48 83 c4 28                    add    rsp,0x28
31a897  e9 b4 07 fb ff                 jmp    0x2cb050

; pdata function 0x2e3294..0x2e32ac unwind=0x3d2064
2e3294  48 83 ec 28                    sub    rsp,0x28
2e3298  48 8b ca                       mov    rcx,rdx
2e329b  e8 f8 af ff ff                 call   0x2de298
2e32a0  48 8b c8                       mov    rcx,rax
2e32a3  48 83 c4 28                    add    rsp,0x28
2e32a7  e9 a4 7d fe ff                 jmp    0x2cb050

