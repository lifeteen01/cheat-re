; pdata function 0x32a9f8..0x32aac7 unwind=0x3d2120
32a9f8  40 53                          rex push rbx
32a9fa  55                             push   rbp
32a9fb  56                             push   rsi
32a9fc  57                             push   rdi
32a9fd  48 83 ec 38                    sub    rsp,0x38
32aa01  49 8b f0                       mov    rsi,r8
32aa04  48 8b fa                       mov    rdi,rdx
32aa07  48 8b e9                       mov    rbp,rcx
32aa0a  45 84 c9                       test   r9b,r9b
32aa0d  74 3a                          je     0x32aa49
32aa0f  e8 88 30 fb ff                 call   0x2dda9c
32aa14  48 8b c8                       mov    rcx,rax
32aa17  48 8b d0                       mov    rdx,rax
32aa1a  e8 e9 04 fa ff                 call   0x2caf08
32aa1f  84 c0                          test   al,al
32aa21  74 26                          je     0x32aa49
32aa23  48 8b ca                       mov    rcx,rdx
32aa26  e8 9d f8 03 00                 call   0x36a2c8
32aa2b  48 8b c8                       mov    rcx,rax
32aa2e  48 8b d0                       mov    rdx,rax
32aa31  e8 d2 04 fa ff                 call   0x2caf08
32aa36  84 c0                          test   al,al
32aa38  74 0f                          je     0x32aa49
32aa3a  f2 0f 10 07                    movsd  xmm0,QWORD PTR [rdi]
32aa3e  f2 0f 11 42 30                 movsd  QWORD PTR [rdx+0x30],xmm0
32aa43  8b 4f 08                       mov    ecx,DWORD PTR [rdi+0x8]
32aa46  89 4a 38                       mov    DWORD PTR [rdx+0x38],ecx
32aa49  8b 1d b1 cb 0c 00              mov    ebx,DWORD PTR [rip+0xccbb1]        # 0x3f7600
32aa4f  f6 c3 01                       test   bl,0x1
32aa52  75 1e                          jne    0x32aa72
32aa54  83 cb 01                       or     ebx,0x1
32aa57  48 8d 0d 62 5e 0c 00           lea    rcx,[rip+0xc5e62]        # 0x3f08c0
32aa5e  89 1d 9c cb 0c 00              mov    DWORD PTR [rip+0xccb9c],ebx        # 0x3f7600
32aa64  e8 6f 3b fa ff                 call   0x2ce5d8
32aa69  48 89 05 88 cb 0c 00           mov    QWORD PTR [rip+0xccb88],rax        # 0x3f75f8
32aa70  eb 07                          jmp    0x32aa79
32aa72  48 8b 05 7f cb 0c 00           mov    rax,QWORD PTR [rip+0xccb7f]        # 0x3f75f8
32aa79  f6 c3 02                       test   bl,0x2
32aa7c  75 22                          jne    0x32aaa0
32aa7e  48 8b 0d db b3 0a 00           mov    rcx,QWORD PTR [rip+0xab3db]        # 0x3d5e60
32aa85  48 8d 15 84 cb 0c 00           lea    rdx,[rip+0xccb84]        # 0x3f7610
32aa8c  83 cb 02                       or     ebx,0x2
32aa8f  45 33 c9                       xor    r9d,r9d
32aa92  4c 8b c0                       mov    r8,rax
32aa95  89 1d 65 cb 0c 00              mov    DWORD PTR [rip+0xccb65],ebx        # 0x3f7600
32aa9b  e8 84 12 fa ff                 call   0x2cbd24
32aaa0  48 8b 0d b9 b3 0a 00           mov    rcx,QWORD PTR [rip+0xab3b9]        # 0x3d5e60
32aaa7  48 8d 15 62 cb 0c 00           lea    rdx,[rip+0xccb62]        # 0x3f7610
32aaae  4c 8b cf                       mov    r9,rdi
32aab1  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
32aab6  4c 8b c5                       mov    r8,rbp
32aab9  e8 92 0f fa ff                 call   0x2cba50
32aabe  48 83 c4 38                    add    rsp,0x38
32aac2  5f                             pop    rdi
32aac3  5e                             pop    rsi
32aac4  5d                             pop    rbp
32aac5  5b                             pop    rbx
32aac6  c3                             ret
