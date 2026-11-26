; pdata function 0x3af0bc..0x3af139 unwind=0x3d2038
3af0bc  40 53                          rex push rbx
3af0be  48 83 ec 20                    sub    rsp,0x20
3af0c2  8b 05 08 fd 05 00              mov    eax,DWORD PTR [rip+0x5fd08]        # 0x40edd0
3af0c8  48 8b d9                       mov    rbx,rcx
3af0cb  a8 01                          test   al,0x1
3af0cd  75 25                          jne    0x3af0f4
3af0cf  83 c8 01                       or     eax,0x1
3af0d2  b9 94 1a 56 13                 mov    ecx,0x13561a94
3af0d7  89 05 f3 fc 05 00              mov    DWORD PTR [rip+0x5fcf3],eax        # 0x40edd0
3af0dd  e8 2e 4c f8 ff                 call   0x333d10
3af0e2  4c 8b 00                       mov    r8,QWORD PTR [rax]
3af0e5  8b 05 e5 fc 05 00              mov    eax,DWORD PTR [rip+0x5fce5]        # 0x40edd0
3af0eb  4c 89 05 d6 fc 05 00           mov    QWORD PTR [rip+0x5fcd6],r8        # 0x40edc8
3af0f2  eb 07                          jmp    0x3af0fb
3af0f4  4c 8b 05 cd fc 05 00           mov    r8,QWORD PTR [rip+0x5fccd]        # 0x40edc8
3af0fb  a8 02                          test   al,0x2
3af0fd  75 1f                          jne    0x3af11e
3af0ff  48 8b 0d 5a 6d 02 00           mov    rcx,QWORD PTR [rip+0x26d5a]        # 0x3d5e60
3af106  48 8d 15 d3 fc 05 00           lea    rdx,[rip+0x5fcd3]        # 0x40ede0
3af10d  83 c8 02                       or     eax,0x2
3af110  45 33 c9                       xor    r9d,r9d
3af113  89 05 b7 fc 05 00              mov    DWORD PTR [rip+0x5fcb7],eax        # 0x40edd0
3af119  e8 06 cc f1 ff                 call   0x2cbd24
3af11e  48 8b 0d 3b 6d 02 00           mov    rcx,QWORD PTR [rip+0x26d3b]        # 0x3d5e60
3af125  48 8d 15 b4 fc 05 00           lea    rdx,[rip+0x5fcb4]        # 0x40ede0
3af12c  4c 8b c3                       mov    r8,rbx
3af12f  48 83 c4 20                    add    rsp,0x20
3af133  5b                             pop    rbx
3af134  e9 c3 c8 f1 ff                 jmp    0x2cb9fc
