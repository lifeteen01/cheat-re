; pdata function 0x2dd5e8..0x2dd633 unwind=0x3d253c
2dd5e8  48 83 ec 48                    sub    rsp,0x48
2dd5ec  48 8d 0d 1d b1 f3 ff           lea    rcx,[rip+0xfffffffffff3b11d]        # 0x218710
2dd5f3  e8 f4 01 ff ff                 call   0x2cd7ec
2dd5f8  48 8b c8                       mov    rcx,rax
2dd5fb  e8 d4 81 ff ff                 call   0x2d57d4
2dd600  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dd605  e8 f6 87 ff ff                 call   0x2d5e00
2dd60a  48 8b d0                       mov    rdx,rax
2dd60d  48 8d 0d bc 97 0f 00           lea    rcx,[rip+0xf97bc]        # 0x3d6dd0
2dd614  e8 6f 03 00 00                 call   0x2dd988
2dd619  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2dd61e  e8 d1 ee fe ff                 call   0x2cc4f4
2dd623  48 8d 0d a6 97 0f 00           lea    rcx,[rip+0xf97a6]        # 0x3d6dd0
2dd62a  48 83 c4 48                    add    rsp,0x48
2dd62e  e9 35 ba ff ff                 jmp    0x2d9068

; pdata function 0x2d5324..0x2d5381 unwind=0x3d20e4
2d5324  40 53                          rex push rbx
2d5326  48 83 ec 40                    sub    rsp,0x40
2d532a  48 8b da                       mov    rbx,rdx
2d532d  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2d5332  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d5337  e8 bc fc ff ff                 call   0x2d4ff8 ; STRING getter=0x2d4ff8 StashList.bin
2d533c  48 8b c8                       mov    rcx,rax
2d533f  e8 d8 32 00 00                 call   0x2d861c
2d5344  48 8b d0                       mov    rdx,rax
2d5347  48 8b cb                       mov    rcx,rbx
2d534a  e8 e9 9b ff ff                 call   0x2cef38
2d534f  84 c0                          test   al,al
2d5351  75 26                          jne    0x2d5379
2d5353  48 8d 54 24 2e                 lea    rdx,[rsp+0x2e]
2d5358  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2d535d  e8 9a fe ff ff                 call   0x2d51fc ; STRING getter=0x2d51fc SamSitelist.bin
2d5362  48 8b c8                       mov    rcx,rax
2d5365  e8 c2 31 00 00                 call   0x2d852c
2d536a  48 8b d0                       mov    rdx,rax
2d536d  48 8b cb                       mov    rcx,rbx
2d5370  e8 c3 9b ff ff                 call   0x2cef38
2d5375  84 c0                          test   al,al
2d5377  74 02                          je     0x2d537b
2d5379  b0 01                          mov    al,0x1
2d537b  48 83 c4 40                    add    rsp,0x40
2d537f  5b                             pop    rbx
2d5380  c3                             ret

; pdata function 0x2d18a0..0x2d1978 unwind=0x3d2120
2d18a0  40 53                          rex push rbx
2d18a2  55                             push   rbp
2d18a3  56                             push   rsi
2d18a4  57                             push   rdi
2d18a5  48 83 ec 38                    sub    rsp,0x38
2d18a9  48 8b c2                       mov    rax,rdx
2d18ac  41 8a d9                       mov    bl,r9b
2d18af  48 2b c1                       sub    rax,rcx
2d18b2  49 8b e8                       mov    rbp,r8
2d18b5  48 8b fa                       mov    rdi,rdx
2d18b8  48 8b f1                       mov    rsi,rcx
2d18bb  eb 78                          jmp    0x2d1935
2d18bd  48 85 ed                       test   rbp,rbp
2d18c0  0f 8e 94 00 00 00              jle    0x2d195a
2d18c6  44 8a cb                       mov    r9b,bl
2d18c9  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d18ce  4c 8b c7                       mov    r8,rdi
2d18d1  48 8b d6                       mov    rdx,rsi
2d18d4  e8 33 f6 ff ff                 call   0x2d0f0c
2d18d9  48 8b 44 24 20                 mov    rax,QWORD PTR [rsp+0x20]
2d18de  48 8b cd                       mov    rcx,rbp
2d18e1  48 c1 f9 02                    sar    rcx,0x2
2d18e5  48 2b c6                       sub    rax,rsi
2d18e8  48 d1 fd                       sar    rbp,1
2d18eb  44 8a cb                       mov    r9b,bl
2d18ee  48 03 e9                       add    rbp,rcx
2d18f1  48 c1 f8 05                    sar    rax,0x5
2d18f5  48 8b cf                       mov    rcx,rdi
2d18f8  4c 8b c5                       mov    r8,rbp
2d18fb  48 2b 4c 24 28                 sub    rcx,QWORD PTR [rsp+0x28]
2d1900  48 c1 f9 05                    sar    rcx,0x5
2d1904  48 3b c1                       cmp    rax,rcx
2d1907  7d 14                          jge    0x2d191d
2d1909  48 8b 54 24 20                 mov    rdx,QWORD PTR [rsp+0x20]
2d190e  48 8b ce                       mov    rcx,rsi
2d1911  e8 8a ff ff ff                 call   0x2d18a0
2d1916  48 8b 74 24 28                 mov    rsi,QWORD PTR [rsp+0x28]
2d191b  eb 12                          jmp    0x2d192f
2d191d  48 8b 4c 24 28                 mov    rcx,QWORD PTR [rsp+0x28]
2d1922  48 8b d7                       mov    rdx,rdi
2d1925  e8 76 ff ff ff                 call   0x2d18a0
2d192a  48 8b 7c 24 20                 mov    rdi,QWORD PTR [rsp+0x20]
2d192f  48 8b c7                       mov    rax,rdi
2d1932  48 2b c6                       sub    rax,rsi
2d1935  48 c1 f8 05                    sar    rax,0x5
2d1939  48 83 f8 20                    cmp    rax,0x20
2d193d  0f 8f 7a ff ff ff              jg     0x2d18bd
2d1943  44 8a c3                       mov    r8b,bl
2d1946  48 8b d7                       mov    rdx,rdi
2d1949  48 8b ce                       mov    rcx,rsi
2d194c  e8 5b f2 ff ff                 call   0x2d0bac
2d1951  48 83 c4 38                    add    rsp,0x38
2d1955  5f                             pop    rdi
2d1956  5e                             pop    rsi
2d1957  5d                             pop    rbp
2d1958  5b                             pop    rbx
2d1959  c3                             ret
2d195a  44 8a c3                       mov    r8b,bl
2d195d  48 8b d7                       mov    rdx,rdi
2d1960  48 8b ce                       mov    rcx,rsi
2d1963  e8 00 f4 ff ff                 call   0x2d0d68
2d1968  44 8a c3                       mov    r8b,bl
2d196b  48 8b d7                       mov    rdx,rdi
2d196e  48 8b ce                       mov    rcx,rsi
2d1971  e8 da fe ff ff                 call   0x2d1850
2d1976  eb d9                          jmp    0x2d1951

; pdata function 0x2d2bcc..0x2d2c3b unwind=0x3d26a0
2d2bcc  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2d2bd1  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2d2bd6  55                             push   rbp
2d2bd7  53                             push   rbx
2d2bd8  57                             push   rdi
2d2bd9  48 8b ec                       mov    rbp,rsp
2d2bdc  48 83 ec 20                    sub    rsp,0x20
2d2be0  48 8d 4d 20                    lea    rcx,[rbp+0x20]
2d2be4  e8 ef b9 ff ff                 call   0x2ce5d8
2d2be9  48 8d 4d 28                    lea    rcx,[rbp+0x28]
2d2bed  48 89 45 38                    mov    QWORD PTR [rbp+0x38],rax
2d2bf1  48 8b d8                       mov    rbx,rax
2d2bf4  e8 df b9 ff ff                 call   0x2ce5d8
2d2bf9  48 8b f8                       mov    rdi,rax
2d2bfc  48 3b d8                       cmp    rbx,rax
2d2bff  74 21                          je     0x2d2c22
2d2c01  48 8b d3                       mov    rdx,rbx
2d2c04  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2d2c08  e8 17 27 00 00                 call   0x2d5324
2d2c0d  84 c0                          test   al,al
2d2c0f  75 11                          jne    0x2d2c22
2d2c11  48 8b 5d 38                    mov    rbx,QWORD PTR [rbp+0x38]
2d2c15  48 83 c3 20                    add    rbx,0x20
2d2c19  48 89 5d 38                    mov    QWORD PTR [rbp+0x38],rbx
2d2c1d  48 3b df                       cmp    rbx,rdi
2d2c20  75 df                          jne    0x2d2c01
2d2c22  48 8d 55 38                    lea    rdx,[rbp+0x38]
2d2c26  48 8d 4d 20                    lea    rcx,[rbp+0x20]
2d2c2a  e8 bd eb ff ff                 call   0x2d17ec
2d2c2f  48 8b 45 20                    mov    rax,QWORD PTR [rbp+0x20]
2d2c33  48 83 c4 20                    add    rsp,0x20
2d2c37  5f                             pop    rdi
2d2c38  5b                             pop    rbx
2d2c39  5d                             pop    rbp
2d2c3a  c3                             ret

; pdata function 0x2d29c0..0x2d2a05 unwind=0x3d2054
2d29c0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d29c5  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d29ca  57                             push   rdi
2d29cb  48 83 ec 20                    sub    rsp,0x20
2d29cf  48 8b f1                       mov    rsi,rcx
2d29d2  48 8b fa                       mov    rdi,rdx
2d29d5  49 8b c8                       mov    rcx,r8
2d29d8  e8 c7 89 ff ff                 call   0x2cb3a4
2d29dd  48 8b cf                       mov    rcx,rdi
2d29e0  48 8b d8                       mov    rbx,rax
2d29e3  e8 bc 89 ff ff                 call   0x2cb3a4
2d29e8  48 8b d0                       mov    rdx,rax
2d29eb  4c 8b c3                       mov    r8,rbx
2d29ee  48 8b ce                       mov    rcx,rsi
2d29f1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d29f6  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d29fb  48 83 c4 20                    add    rsp,0x20
2d29ff  5f                             pop    rdi
2d2a00  e9 3b d2 ff ff                 jmp    0x2cfc40

; pdata function 0x2d0f70..0x2d11a2 unwind=0x3d27ec
2d0f70  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2d0f75  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
2d0f7a  55                             push   rbp
2d0f7b  56                             push   rsi
2d0f7c  57                             push   rdi
2d0f7d  41 54                          push   r12
2d0f7f  41 55                          push   r13
2d0f81  41 56                          push   r14
2d0f83  41 57                          push   r15
2d0f85  48 8b ec                       mov    rbp,rsp
2d0f88  48 83 ec 20                    sub    rsp,0x20
2d0f8c  4c 8b e9                       mov    r13,rcx
2d0f8f  4d 8b f9                       mov    r15,r9
2d0f92  49 8b c8                       mov    rcx,r8
2d0f95  49 8b d8                       mov    rbx,r8
2d0f98  4c 8b e2                       mov    r12,rdx
2d0f9b  e8 64 ff ff ff                 call   0x2d0f04
2d0fa0  48 8b f8                       mov    rdi,rax
2d0fa3  48 89 45 40                    mov    QWORD PTR [rbp+0x40],rax
2d0fa7  eb 39                          jmp    0x2d0fe2
2d0fa9  48 8b cb                       mov    rcx,rbx
2d0fac  e8 9f 03 00 00                 call   0x2d1350
2d0fb1  4c 8b c3                       mov    r8,rbx
2d0fb4  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d0fb8  48 8b d0                       mov    rdx,rax
2d0fbb  48 8b f0                       mov    rsi,rax
2d0fbe  e8 a9 44 00 00                 call   0x2d546c
2d0fc3  84 c0                          test   al,al
2d0fc5  75 50                          jne    0x2d1017
2d0fc7  4c 8b c6                       mov    r8,rsi
2d0fca  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d0fce  48 8b d3                       mov    rdx,rbx
2d0fd1  e8 96 44 00 00                 call   0x2d546c
2d0fd6  84 c0                          test   al,al
2d0fd8  75 3d                          jne    0x2d1017
2d0fda  48 83 eb 20                    sub    rbx,0x20
2d0fde  48 89 5d 50                    mov    QWORD PTR [rbp+0x50],rbx
2d0fe2  4c 3b e3                       cmp    r12,rbx
2d0fe5  72 c2                          jb     0x2d0fa9
2d0fe7  eb 2e                          jmp    0x2d1017
2d0fe9  4c 8b c3                       mov    r8,rbx
2d0fec  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d0ff0  48 8b d7                       mov    rdx,rdi
2d0ff3  e8 74 44 00 00                 call   0x2d546c
2d0ff8  84 c0                          test   al,al
2d0ffa  75 20                          jne    0x2d101c
2d0ffc  4c 8b c7                       mov    r8,rdi
2d0fff  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d1003  48 8b d3                       mov    rdx,rbx
2d1006  e8 61 44 00 00                 call   0x2d546c
2d100b  84 c0                          test   al,al
2d100d  75 0d                          jne    0x2d101c
2d100f  48 83 c7 20                    add    rdi,0x20
2d1013  48 89 7d 40                    mov    QWORD PTR [rbp+0x40],rdi
2d1017  49 3b ff                       cmp    rdi,r15
2d101a  72 cd                          jb     0x2d0fe9
2d101c  48 8b f7                       mov    rsi,rdi
2d101f  4c 8b f3                       mov    r14,rbx
2d1022  eb 4a                          jmp    0x2d106e
2d1024  4c 8b c6                       mov    r8,rsi
2d1027  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d102b  48 8b d3                       mov    rdx,rbx
2d102e  e8 39 44 00 00                 call   0x2d546c
2d1033  84 c0                          test   al,al
2d1035  75 33                          jne    0x2d106a
2d1037  4c 8b c3                       mov    r8,rbx
2d103a  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d103e  48 8b d6                       mov    rdx,rsi
2d1041  e8 26 44 00 00                 call   0x2d546c
2d1046  84 c0                          test   al,al
2d1048  75 29                          jne    0x2d1073
2d104a  48 3b fe                       cmp    rdi,rsi
2d104d  74 13                          je     0x2d1062
2d104f  48 8b d6                       mov    rdx,rsi
2d1052  48 8b cf                       mov    rcx,rdi
2d1055  e8 62 2e 00 00                 call   0x2d3ebc
2d105a  48 8b 7d 40                    mov    rdi,QWORD PTR [rbp+0x40]
2d105e  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2d1062  48 83 c7 20                    add    rdi,0x20
2d1066  48 89 7d 40                    mov    QWORD PTR [rbp+0x40],rdi
2d106a  48 83 c6 20                    add    rsi,0x20
2d106e  49 3b f7                       cmp    rsi,r15
2d1071  72 b1                          jb     0x2d1024
2d1073  4d 3b f4                       cmp    r14,r12
2d1076  76 5d                          jbe    0x2d10d5
2d1078  49 8b ce                       mov    rcx,r14
2d107b  e8 d0 02 00 00                 call   0x2d1350
2d1080  4c 8b c3                       mov    r8,rbx
2d1083  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d1087  48 8b d0                       mov    rdx,rax
2d108a  48 8b f8                       mov    rdi,rax
2d108d  e8 da 43 00 00                 call   0x2d546c
2d1092  84 c0                          test   al,al
2d1094  75 2f                          jne    0x2d10c5
2d1096  4c 8b c7                       mov    r8,rdi
2d1099  48 8d 4d 60                    lea    rcx,[rbp+0x60]
2d109d  48 8b d3                       mov    rdx,rbx
2d10a0  e8 c7 43 00 00                 call   0x2d546c
2d10a5  84 c0                          test   al,al
2d10a7  75 25                          jne    0x2d10ce
2d10a9  48 83 eb 20                    sub    rbx,0x20
2d10ad  48 89 5d 50                    mov    QWORD PTR [rbp+0x50],rbx
2d10b1  48 3b df                       cmp    rbx,rdi
2d10b4  74 0f                          je     0x2d10c5
2d10b6  48 8b d7                       mov    rdx,rdi
2d10b9  48 8b cb                       mov    rcx,rbx
2d10bc  e8 fb 2d 00 00                 call   0x2d3ebc
2d10c1  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2d10c5  49 83 ee 20                    sub    r14,0x20
2d10c9  4d 3b e6                       cmp    r12,r14
2d10cc  72 aa                          jb     0x2d1078
2d10ce  48 8b 7d 40                    mov    rdi,QWORD PTR [rbp+0x40]
2d10d2  4d 3b f4                       cmp    r14,r12
2d10d5  75 46                          jne    0x2d111d
2d10d7  49 3b f7                       cmp    rsi,r15
2d10da  0f 84 9a 00 00 00              je     0x2d117a
2d10e0  48 3b fe                       cmp    rdi,rsi
2d10e3  74 13                          je     0x2d10f8
2d10e5  48 8b d7                       mov    rdx,rdi
2d10e8  48 8b cb                       mov    rcx,rbx
2d10eb  e8 cc 2d 00 00                 call   0x2d3ebc
2d10f0  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2d10f4  48 8b 7d 40                    mov    rdi,QWORD PTR [rbp+0x40]
2d10f8  48 83 c7 20                    add    rdi,0x20
2d10fc  48 8b d6                       mov    rdx,rsi
2d10ff  48 8b cb                       mov    rcx,rbx
2d1102  48 89 7d 40                    mov    QWORD PTR [rbp+0x40],rdi
2d1106  e8 b1 2d 00 00                 call   0x2d3ebc
2d110b  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2d110f  48 83 c3 20                    add    rbx,0x20
2d1113  48 89 5d 50                    mov    QWORD PTR [rbp+0x50],rbx
2d1117  48 83 c6 20                    add    rsi,0x20
2d111b  eb 54                          jmp    0x2d1171
2d111d  49 8d 46 e0                    lea    rax,[r14-0x20]
2d1121  4c 8b f0                       mov    r14,rax
2d1124  49 3b f7                       cmp    rsi,r15
2d1127  75 35                          jne    0x2d115e
2d1129  48 83 eb 20                    sub    rbx,0x20
2d112d  48 89 5d 50                    mov    QWORD PTR [rbp+0x50],rbx
2d1131  48 3b c3                       cmp    rax,rbx
2d1134  74 13                          je     0x2d1149
2d1136  48 8b d3                       mov    rdx,rbx
2d1139  48 8b c8                       mov    rcx,rax
2d113c  e8 7b 2d 00 00                 call   0x2d3ebc
2d1141  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2d1145  48 8b 7d 40                    mov    rdi,QWORD PTR [rbp+0x40]
2d1149  48 83 ef 20                    sub    rdi,0x20
2d114d  48 8b cb                       mov    rcx,rbx
2d1150  48 8b d7                       mov    rdx,rdi
2d1153  48 89 7d 40                    mov    QWORD PTR [rbp+0x40],rdi
2d1157  e8 60 2d 00 00                 call   0x2d3ebc
2d115c  eb 0f                          jmp    0x2d116d
2d115e  48 8b d0                       mov    rdx,rax
2d1161  48 8b ce                       mov    rcx,rsi
2d1164  e8 53 2d 00 00                 call   0x2d3ebc
2d1169  48 83 c6 20                    add    rsi,0x20
2d116d  48 8b 5d 50                    mov    rbx,QWORD PTR [rbp+0x50]
2d1171  48 8b 7d 40                    mov    rdi,QWORD PTR [rbp+0x40]
2d1175  e9 f4 fe ff ff                 jmp    0x2d106e
2d117a  4c 8d 45 40                    lea    r8,[rbp+0x40]
2d117e  49 8b cd                       mov    rcx,r13
2d1181  48 8d 55 50                    lea    rdx,[rbp+0x50]
2d1185  e8 26 db ff ff                 call   0x2cecb0
2d118a  48 8b 5c 24 68                 mov    rbx,QWORD PTR [rsp+0x68]
2d118f  49 8b c5                       mov    rax,r13
2d1192  48 83 c4 20                    add    rsp,0x20
2d1196  41 5f                          pop    r15
2d1198  41 5e                          pop    r14
2d119a  41 5d                          pop    r13
2d119c  41 5c                          pop    r12
2d119e  5f                             pop    rdi
2d119f  5e                             pop    rsi
2d11a0  5d                             pop    rbp
2d11a1  c3                             ret

; pdata function 0x2d9810..0x2d9914 unwind=0x3d26c8
2d9810  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d9815  48 89 6c 24 18                 mov    QWORD PTR [rsp+0x18],rbp
2d981a  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2d981f  56                             push   rsi
2d9820  57                             push   rdi
2d9821  41 54                          push   r12
2d9823  41 56                          push   r14
2d9825  41 57                          push   r15
2d9827  48 83 ec 20                    sub    rsp,0x20
2d982b  49 8b e8                       mov    rbp,r8
2d982e  4c 8b f2                       mov    r14,rdx
2d9831  48 8b f9                       mov    rdi,rcx
2d9834  e8 eb 3a ff ff                 call   0x2cd324
2d9839  48 8b 1f                       mov    rbx,QWORD PTR [rdi]
2d983c  4c 8b e0                       mov    r12,rax
2d983f  48 8b 47 10                    mov    rax,QWORD PTR [rdi+0x10]
2d9843  48 2b c3                       sub    rax,rbx
2d9846  48 c1 f8 06                    sar    rax,0x6
2d984a  48 3b e8                       cmp    rbp,rax
2d984d  76 1d                          jbe    0x2d986c
2d984f  48 8b d5                       mov    rdx,rbp
2d9852  48 8b cf                       mov    rcx,rdi
2d9855  e8 7e 33 00 00                 call   0x2dcbd8
2d985a  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d985f  e8 40 1b ff ff                 call   0x2cb3a4
2d9864  4c 8b 07                       mov    r8,QWORD PTR [rdi]
2d9867  e9 95 00 00 00                 jmp    0x2d9901
2d986c  4c 8b 7f 08                    mov    r15,QWORD PTR [rdi+0x8]
2d9870  49 8b f7                       mov    rsi,r15
2d9873  48 2b f3                       sub    rsi,rbx
2d9876  48 c1 fe 06                    sar    rsi,0x6
2d987a  48 3b ee                       cmp    rbp,rsi
2d987d  77 6d                          ja     0x2d98ec
2d987f  48 8b f5                       mov    rsi,rbp
2d9882  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d9887  48 c1 e6 06                    shl    rsi,0x6
2d988b  48 03 f3                       add    rsi,rbx
2d988e  e8 11 1b ff ff                 call   0x2cb3a4
2d9893  4c 8b c3                       mov    r8,rbx
2d9896  48 8b d5                       mov    rdx,rbp
2d9899  48 8b 08                       mov    rcx,QWORD PTR [rax]
2d989c  e8 83 02 00 00                 call   0x2d9b24
2d98a1  48 8b 57 08                    mov    rdx,QWORD PTR [rdi+0x8]
2d98a5  4d 8b c4                       mov    r8,r12
2d98a8  48 8b ce                       mov    rcx,rsi
2d98ab  e8 50 5f ff ff                 call   0x2cf800
2d98b0  48 89 77 08                    mov    QWORD PTR [rdi+0x8],rsi
2d98b4  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
2d98b9  48 8b 6c 24 60                 mov    rbp,QWORD PTR [rsp+0x60]
2d98be  48 83 c4 20                    add    rsp,0x20
2d98c2  41 5f                          pop    r15
2d98c4  41 5e                          pop    r14
2d98c6  41 5c                          pop    r12
2d98c8  5f                             pop    rdi
2d98c9  5e                             pop    rsi
2d98ca  c3                             ret
2d98cb  49 8b d6                       mov    rdx,r14
2d98ce  48 8b cb                       mov    rcx,rbx
2d98d1  e8 06 ff ff ff                 call   0x2d97dc
2d98d6  4c 8b 74 24 58                 mov    r14,QWORD PTR [rsp+0x58]
2d98db  48 83 c3 40                    add    rbx,0x40
2d98df  4c 8b 7f 08                    mov    r15,QWORD PTR [rdi+0x8]
2d98e3  49 83 c6 40                    add    r14,0x40
2d98e7  4c 89 74 24 58                 mov    QWORD PTR [rsp+0x58],r14
2d98ec  49 3b df                       cmp    rbx,r15
2d98ef  75 da                          jne    0x2d98cb
2d98f1  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d98f6  e8 a9 1a ff ff                 call   0x2cb3a4
2d98fb  48 2b ee                       sub    rbp,rsi
2d98fe  4d 8b c7                       mov    r8,r15
2d9901  48 8b 08                       mov    rcx,QWORD PTR [rax]
2d9904  4d 8b cc                       mov    r9,r12
2d9907  48 8b d5                       mov    rdx,rbp
2d990a  e8 3d 0a 00 00                 call   0x2da34c
2d990f  48 8b f0                       mov    rsi,rax
2d9912  eb 9c                          jmp    0x2d98b0

; pdata function 0x2db894..0x2db8e9 unwind=0x3d2040
2db894  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2db899  57                             push   rdi
2db89a  48 83 ec 20                    sub    rsp,0x20
2db89e  48 8b da                       mov    rbx,rdx
2db8a1  48 8b f9                       mov    rdi,rcx
2db8a4  e8 3b 93 ff ff                 call   0x2d4be4
2db8a9  48 8d 53 20                    lea    rdx,[rbx+0x20]
2db8ad  48 8d 4f 20                    lea    rcx,[rdi+0x20]
2db8b1  e8 2e 93 ff ff                 call   0x2d4be4
2db8b6  48 8d 53 40                    lea    rdx,[rbx+0x40]
2db8ba  48 8d 4f 40                    lea    rcx,[rdi+0x40]
2db8be  e8 0d fe ff ff                 call   0x2db6d0
2db8c3  8b 83 80 00 00 00              mov    eax,DWORD PTR [rbx+0x80]
2db8c9  89 87 80 00 00 00              mov    DWORD PTR [rdi+0x80],eax
2db8cf  8a 83 84 00 00 00              mov    al,BYTE PTR [rbx+0x84]
2db8d5  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2db8da  88 87 84 00 00 00              mov    BYTE PTR [rdi+0x84],al
2db8e0  48 8b c7                       mov    rax,rdi
2db8e3  48 83 c4 20                    add    rsp,0x20
2db8e7  5f                             pop    rdi
2db8e8  c3                             ret

; pdata function 0x2d4930..0x2d4991 unwind=0x3d2040
2d4930  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d4935  57                             push   rdi
2d4936  48 83 ec 20                    sub    rsp,0x20
2d493a  48 8b da                       mov    rbx,rdx
2d493d  48 8b f9                       mov    rdi,rcx
2d4940  e8 1b fc ff ff                 call   0x2d4560
2d4945  48 8d 4f 20                    lea    rcx,[rdi+0x20]
2d4949  e8 12 fc ff ff                 call   0x2d4560
2d494e  48 8d 4f 40                    lea    rcx,[rdi+0x40]
2d4952  e8 05 fd ff ff                 call   0x2d465c
2d4957  48 8b d3                       mov    rdx,rbx
2d495a  c7 87 80 00 00 00 00 00 00 00  mov    DWORD PTR [rdi+0x80],0x0
2d4964  48 8b cf                       mov    rcx,rdi
2d4967  c6 87 84 00 00 00 00           mov    BYTE PTR [rdi+0x84],0x0
2d496e  e8 b1 02 00 00                 call   0x2d4c24
2d4973  48 8b cf                       mov    rcx,rdi
2d4976  e8 ed 46 00 00                 call   0x2d9068
2d497b  48 8b cb                       mov    rcx,rbx
2d497e  e8 71 7b ff ff                 call   0x2cc4f4
2d4983  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d4988  48 8b c7                       mov    rax,rdi
2d498b  48 83 c4 20                    add    rsp,0x20
2d498f  5f                             pop    rdi
2d4990  c3                             ret

