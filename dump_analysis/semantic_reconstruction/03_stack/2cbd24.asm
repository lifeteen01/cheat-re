; pdata function 0x2cbd24..0x2cbef8 unwind=0x3d20ec
2cbd24  40 55                          rex push rbp
2cbd26  53                             push   rbx
2cbd27  56                             push   rsi
2cbd28  57                             push   rdi
2cbd29  41 54                          push   r12
2cbd2b  41 55                          push   r13
2cbd2d  41 56                          push   r14
2cbd2f  41 57                          push   r15
2cbd31  48 8d 6c 24 e1                 lea    rbp,[rsp-0x1f]
2cbd36  48 81 ec 98 00 00 00           sub    rsp,0x98
2cbd3d  4d 8b e8                       mov    r13,r8
2cbd40  c7 45 67 00 00 00 00           mov    DWORD PTR [rbp+0x67],0x0
2cbd47  4c 8b c2                       mov    r8,rdx
2cbd4a  4c 8b e2                       mov    r12,rdx
2cbd4d  48 8b 11                       mov    rdx,QWORD PTR [rcx]
2cbd50  4c 8b f9                       mov    r15,rcx
2cbd53  48 8d 4d df                    lea    rcx,[rbp-0x21]
2cbd57  49 8b f9                       mov    rdi,r9
2cbd5a  e8 0d 07 00 00                 call   0x2cc46c
2cbd5f  48 85 ff                       test   rdi,rdi
2cbd62  75 1a                          jne    0x2cbd7e
2cbd64  48 8d 55 ef                    lea    rdx,[rbp-0x11]
2cbd68  49 8b cf                       mov    rcx,r15
2cbd6b  e8 c0 23 00 00                 call   0x2ce130
2cbd70  48 8b f8                       mov    rdi,rax
2cbd73  4c 8b f0                       mov    r14,rax
2cbd76  48 8b d8                       mov    rbx,rax
2cbd79  48 8b f0                       mov    rsi,rax
2cbd7c  eb 09                          jmp    0x2cbd87
2cbd7e  4c 8b f7                       mov    r14,rdi
2cbd81  48 8b df                       mov    rbx,rdi
2cbd84  48 8b f7                       mov    rsi,rdi
2cbd87  48 8b 76 18                    mov    rsi,QWORD PTR [rsi+0x18]
2cbd8b  33 d2                          xor    edx,edx
2cbd8d  48 8b 5b 10                    mov    rbx,QWORD PTR [rbx+0x10]
2cbd91  41 b8 d8 00 00 00              mov    r8d,0xd8
2cbd97  4d 8b 76 08                    mov    r14,QWORD PTR [r14+0x8]
2cbd9b  49 8b cc                       mov    rcx,r12
2cbd9e  48 8b 3f                       mov    rdi,QWORD PTR [rdi]
2cbda1  e8 ca cf 0f 00                 call   0x3c8d70
2cbda6  49 89 5c 24 08                 mov    QWORD PTR [r12+0x8],rbx
2cbdab  48 8b cf                       mov    rcx,rdi
2cbdae  48 2b df                       sub    rbx,rdi
2cbdb1  4d 89 6c 24 70                 mov    QWORD PTR [r12+0x70],r13
2cbdb6  48 8b d3                       mov    rdx,rbx
2cbdb9  49 89 34 24                    mov    QWORD PTR [r12],rsi
2cbdbd  e8 2e 24 00 00                 call   0x2ce1f0
2cbdc2  4c 8d 45 67                    lea    r8,[rbp+0x67]
2cbdc6  48 8b cf                       mov    rcx,rdi
2cbdc9  8b 50 08                       mov    edx,DWORD PTR [rax+0x8]
2cbdcc  48 03 d7                       add    rdx,rdi
2cbdcf  e8 08 26 00 00                 call   0x2ce3dc
2cbdd4  44 8b 45 67                    mov    r8d,DWORD PTR [rbp+0x67]
2cbdd8  49 2b f6                       sub    rsi,r14
2cbddb  48 8b d6                       mov    rdx,rsi
2cbdde  4d 89 44 24 58                 mov    QWORD PTR [r12+0x58],r8
2cbde3  49 8b ce                       mov    rcx,r14
2cbde6  e8 05 24 00 00                 call   0x2ce1f0
2cbdeb  4c 8d 45 67                    lea    r8,[rbp+0x67]
2cbdef  49 8b ce                       mov    rcx,r14
2cbdf2  8b 50 08                       mov    edx,DWORD PTR [rax+0x8]
2cbdf5  49 03 d6                       add    rdx,r14
2cbdf8  e8 df 25 00 00                 call   0x2ce3dc
2cbdfd  44 8b 45 67                    mov    r8d,DWORD PTR [rbp+0x67]
2cbe01  4c 8d 4d 77                    lea    r9,[rbp+0x77]
2cbe05  33 f6                          xor    esi,esi
2cbe07  4d 89 44 24 50                 mov    QWORD PTR [r12+0x50],r8
2cbe0c  b8 ab aa aa aa                 mov    eax,0xaaaaaaab
2cbe11  89 75 6f                       mov    DWORD PTR [rbp+0x6f],esi
2cbe14  41 f7 67 08                    mul    DWORD PTR [r15+0x8]
2cbe18  48 8d 45 d7                    lea    rax,[rbp-0x29]
2cbe1c  89 75 7f                       mov    DWORD PTR [rbp+0x7f],esi
2cbe1f  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
2cbe24  8d 7e 01                       lea    edi,[rsi+0x1]
2cbe27  8b da                          mov    ebx,edx
2cbe29  89 75 c7                       mov    DWORD PTR [rbp-0x39],esi
2cbe2c  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
2cbe30  48 8d 45 7f                    lea    rax,[rbp+0x7f]
2cbe34  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
2cbe39  48 8d 4d df                    lea    rcx,[rbp-0x21]
2cbe3d  48 8d 45 6f                    lea    rax,[rbp+0x6f]
2cbe41  c1 eb 03                       shr    ebx,0x3
2cbe44  44 8b c3                       mov    r8d,ebx
2cbe47  89 75 cb                       mov    DWORD PTR [rbp-0x35],esi
2cbe4a  89 7d cf                       mov    DWORD PTR [rbp-0x31],edi
2cbe4d  89 75 77                       mov    DWORD PTR [rbp+0x77],esi
2cbe50  48 89 75 d7                    mov    QWORD PTR [rbp-0x29],rsi
2cbe54  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2cbe59  e8 66 21 00 00                 call   0x2cdfc4
2cbe5e  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
2cbe62  48 8d 45 d7                    lea    rax,[rbp-0x29]
2cbe66  48 89 44 24 30                 mov    QWORD PTR [rsp+0x30],rax
2cbe6b  4c 8d 4d 77                    lea    r9,[rbp+0x77]
2cbe6f  48 8d 45 c7                    lea    rax,[rbp-0x39]
2cbe73  44 8b c3                       mov    r8d,ebx
2cbe76  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
2cbe7b  48 8d 4d df                    lea    rcx,[rbp-0x21]
2cbe7f  48 8d 45 6f                    lea    rax,[rbp+0x6f]
2cbe83  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2cbe88  e8 e7 21 00 00                 call   0x2ce074
2cbe8d  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
2cbe91  48 8d 45 cb                    lea    rax,[rbp-0x35]
2cbe95  89 74 24 30                    mov    DWORD PTR [rsp+0x30],esi
2cbe99  4c 8d 4d 77                    lea    r9,[rbp+0x77]
2cbe9d  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
2cbea2  48 8d 4d df                    lea    rcx,[rbp-0x21]
2cbea6  48 8d 45 6f                    lea    rax,[rbp+0x6f]
2cbeaa  44 8b c3                       mov    r8d,ebx
2cbead  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2cbeb2  e8 f1 1f 00 00                 call   0x2cdea8
2cbeb7  48 8d 45 cf                    lea    rax,[rbp-0x31]
2cbebb  89 7c 24 30                    mov    DWORD PTR [rsp+0x30],edi
2cbebf  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
2cbec4  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
2cbec8  48 8d 45 6f                    lea    rax,[rbp+0x6f]
2cbecc  4c 8d 4d 77                    lea    r9,[rbp+0x77]
2cbed0  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
2cbed5  44 8b c3                       mov    r8d,ebx
2cbed8  48 8d 4d df                    lea    rcx,[rbp-0x21]
2cbedc  e8 c7 1f 00 00                 call   0x2cdea8
2cbee1  49 8b c4                       mov    rax,r12
2cbee4  48 81 c4 98 00 00 00           add    rsp,0x98
2cbeeb  41 5f                          pop    r15
2cbeed  41 5e                          pop    r14
2cbeef  41 5d                          pop    r13
2cbef1  41 5c                          pop    r12
2cbef3  5f                             pop    rdi
2cbef4  5e                             pop    rsi
2cbef5  5b                             pop    rbx
2cbef6  5d                             pop    rbp
2cbef7  c3                             ret
