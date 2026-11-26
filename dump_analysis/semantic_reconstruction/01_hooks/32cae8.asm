; pdata function 0x32cae8..0x32cb89 unwind=0x3d2054
32cae8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32caed  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32caf2  57                             push   rdi
32caf3  48 83 ec 20                    sub    rsp,0x20
32caf7  48 8b f2                       mov    rsi,rdx
32cafa  48 8b f9                       mov    rdi,rcx
32cafd  e8 36 f4 ff ff                 call   0x32bf38
32cb02  48 8b cf                       mov    rcx,rdi
32cb05  e8 ca f5 ff ff                 call   0x32c0d4
32cb0a  8b 1d 70 b5 0c 00              mov    ebx,DWORD PTR [rip+0xcb570]        # 0x3f8080
32cb10  f6 c3 01                       test   bl,0x1
32cb13  75 1e                          jne    0x32cb33
32cb15  83 cb 01                       or     ebx,0x1
32cb18  48 8d 0d f9 9d 0b 00           lea    rcx,[rip+0xb9df9]        # 0x3e6918
32cb1f  89 1d 5b b5 0c 00              mov    DWORD PTR [rip+0xcb55b],ebx        # 0x3f8080
32cb25  e8 ae 1a fa ff                 call   0x2ce5d8
32cb2a  48 89 05 47 b5 0c 00           mov    QWORD PTR [rip+0xcb547],rax        # 0x3f8078
32cb31  eb 07                          jmp    0x32cb3a
32cb33  48 8b 05 3e b5 0c 00           mov    rax,QWORD PTR [rip+0xcb53e]        # 0x3f8078
32cb3a  f6 c3 02                       test   bl,0x2
32cb3d  75 22                          jne    0x32cb61
32cb3f  48 8b 0d 1a 93 0a 00           mov    rcx,QWORD PTR [rip+0xa931a]        # 0x3d5e60
32cb46  48 8d 15 43 b5 0c 00           lea    rdx,[rip+0xcb543]        # 0x3f8090
32cb4d  83 cb 02                       or     ebx,0x2
32cb50  45 33 c9                       xor    r9d,r9d
32cb53  4c 8b c0                       mov    r8,rax
32cb56  89 1d 24 b5 0c 00              mov    DWORD PTR [rip+0xcb524],ebx        # 0x3f8080
32cb5c  e8 c3 f1 f9 ff                 call   0x2cbd24
32cb61  48 8b 0d f8 92 0a 00           mov    rcx,QWORD PTR [rip+0xa92f8]        # 0x3d5e60
32cb68  48 8d 15 21 b5 0c 00           lea    rdx,[rip+0xcb521]        # 0x3f8090
32cb6f  4c 8b ce                       mov    r9,rsi
32cb72  4c 8b c7                       mov    r8,rdi
32cb75  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32cb7a  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
32cb7f  48 83 c4 20                    add    rsp,0x20
32cb83  5f                             pop    rdi
32cb84  e9 0b 55 fa ff                 jmp    0x2d2094
