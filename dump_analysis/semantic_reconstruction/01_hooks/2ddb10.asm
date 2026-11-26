; pdata function 0x2ddb10..0x2ddbba unwind=0x3d2130
2ddb10  40 53                          rex push rbx
2ddb12  55                             push   rbp
2ddb13  56                             push   rsi
2ddb14  57                             push   rdi
2ddb15  48 83 ec 28                    sub    rsp,0x28
2ddb19  48 8b e9                       mov    rbp,rcx
2ddb1c  e8 7b ff ff ff                 call   0x2dda9c
2ddb21  48 8b c8                       mov    rcx,rax
2ddb24  48 8b f8                       mov    rdi,rax
2ddb27  e8 6c b7 08 00                 call   0x369298
2ddb2c  48 8b d0                       mov    rdx,rax
2ddb2f  48 8b cf                       mov    rcx,rdi
2ddb32  48 8b f0                       mov    rsi,rax
2ddb35  e8 16 ff ff ff                 call   0x2dda50
2ddb3a  8b 1d 08 95 0f 00              mov    ebx,DWORD PTR [rip+0xf9508]        # 0x3d7048
2ddb40  f6 c3 01                       test   bl,0x1
2ddb43  75 1e                          jne    0x2ddb63
2ddb45  83 cb 01                       or     ebx,0x1
2ddb48  48 8d 0d a9 94 0f 00           lea    rcx,[rip+0xf94a9]        # 0x3d6ff8
2ddb4f  89 1d f3 94 0f 00              mov    DWORD PTR [rip+0xf94f3],ebx        # 0x3d7048
2ddb55  e8 7e 0a ff ff                 call   0x2ce5d8
2ddb5a  48 89 05 df 94 0f 00           mov    QWORD PTR [rip+0xf94df],rax        # 0x3d7040
2ddb61  eb 07                          jmp    0x2ddb6a
2ddb63  48 8b 05 d6 94 0f 00           mov    rax,QWORD PTR [rip+0xf94d6]        # 0x3d7040
2ddb6a  f6 c3 02                       test   bl,0x2
2ddb6d  75 22                          jne    0x2ddb91
2ddb6f  48 8b 0d ea 82 0f 00           mov    rcx,QWORD PTR [rip+0xf82ea]        # 0x3d5e60
2ddb76  48 8d 15 d3 94 0f 00           lea    rdx,[rip+0xf94d3]        # 0x3d7050
2ddb7d  83 cb 02                       or     ebx,0x2
2ddb80  45 33 c9                       xor    r9d,r9d
2ddb83  4c 8b c0                       mov    r8,rax
2ddb86  89 1d bc 94 0f 00              mov    DWORD PTR [rip+0xf94bc],ebx        # 0x3d7048
2ddb8c  e8 93 e1 fe ff                 call   0x2cbd24
2ddb91  48 8b 0d c8 82 0f 00           mov    rcx,QWORD PTR [rip+0xf82c8]        # 0x3d5e60
2ddb98  48 8d 15 b1 94 0f 00           lea    rdx,[rip+0xf94b1]        # 0x3d7050
2ddb9f  4c 8b c5                       mov    r8,rbp
2ddba2  e8 55 de fe ff                 call   0x2cb9fc
2ddba7  48 8b d6                       mov    rdx,rsi
2ddbaa  48 8b cf                       mov    rcx,rdi
2ddbad  48 83 c4 28                    add    rsp,0x28
2ddbb1  5f                             pop    rdi
2ddbb2  5e                             pop    rsi
2ddbb3  5d                             pop    rbp
2ddbb4  5b                             pop    rbx
2ddbb5  e9 02 00 00 00                 jmp    0x2ddbbc
