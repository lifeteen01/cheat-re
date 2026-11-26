; pdata function 0x32b62c..0x32b6c5 unwind=0x3d2054
32b62c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32b631  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
32b636  57                             push   rdi
32b637  48 83 ec 20                    sub    rsp,0x20
32b63b  48 8b f2                       mov    rsi,rdx
32b63e  48 8b f9                       mov    rdi,rcx
32b641  e8 62 fd ff ff                 call   0x32b3a8
32b646  8b 1d ac c3 0c 00              mov    ebx,DWORD PTR [rip+0xcc3ac]        # 0x3f79f8
32b64c  f6 c3 01                       test   bl,0x1
32b64f  75 1e                          jne    0x32b66f
32b651  83 cb 01                       or     ebx,0x1
32b654  48 8d 0d 85 b2 0b 00           lea    rcx,[rip+0xbb285]        # 0x3e68e0
32b65b  89 1d 97 c3 0c 00              mov    DWORD PTR [rip+0xcc397],ebx        # 0x3f79f8
32b661  e8 72 2f fa ff                 call   0x2ce5d8
32b666  48 89 05 83 c3 0c 00           mov    QWORD PTR [rip+0xcc383],rax        # 0x3f79f0
32b66d  eb 07                          jmp    0x32b676
32b66f  48 8b 05 7a c3 0c 00           mov    rax,QWORD PTR [rip+0xcc37a]        # 0x3f79f0
32b676  f6 c3 02                       test   bl,0x2
32b679  75 22                          jne    0x32b69d
32b67b  48 8b 0d de a7 0a 00           mov    rcx,QWORD PTR [rip+0xaa7de]        # 0x3d5e60
32b682  48 8d 15 77 c3 0c 00           lea    rdx,[rip+0xcc377]        # 0x3f7a00
32b689  83 cb 02                       or     ebx,0x2
32b68c  45 33 c9                       xor    r9d,r9d
32b68f  4c 8b c0                       mov    r8,rax
32b692  89 1d 60 c3 0c 00              mov    DWORD PTR [rip+0xcc360],ebx        # 0x3f79f8
32b698  e8 87 06 fa ff                 call   0x2cbd24
32b69d  48 8b 0d bc a7 0a 00           mov    rcx,QWORD PTR [rip+0xaa7bc]        # 0x3d5e60
32b6a4  48 8d 15 55 c3 0c 00           lea    rdx,[rip+0xcc355]        # 0x3f7a00
32b6ab  4c 8b ce                       mov    r9,rsi
32b6ae  4c 8b c7                       mov    r8,rdi
32b6b1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32b6b6  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
32b6bb  48 83 c4 20                    add    rsp,0x20
32b6bf  5f                             pop    rdi
32b6c0  e9 cf 69 fa ff                 jmp    0x2d2094
