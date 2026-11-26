; pdata function 0x3c8c70..0x3c8ced unwind=0x3d2038
3c8c70  40 53                          rex push rbx
3c8c72  48 83 ec 20                    sub    rsp,0x20
3c8c76  8b 05 3c 64 04 00              mov    eax,DWORD PTR [rip+0x4643c]        # 0x40f0b8
3c8c7c  48 8b d9                       mov    rbx,rcx
3c8c7f  a8 01                          test   al,0x1
3c8c81  75 25                          jne    0x3c8ca8
3c8c83  83 c8 01                       or     eax,0x1
3c8c86  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
3c8c8b  89 05 27 64 04 00              mov    DWORD PTR [rip+0x46427],eax        # 0x40f0b8
3c8c91  e8 12 f2 ff ff                 call   0x3c7ea8
3c8c96  4c 8b c0                       mov    r8,rax
3c8c99  48 89 05 10 64 04 00           mov    QWORD PTR [rip+0x46410],rax        # 0x40f0b0
3c8ca0  8b 05 12 64 04 00              mov    eax,DWORD PTR [rip+0x46412]        # 0x40f0b8
3c8ca6  eb 07                          jmp    0x3c8caf
3c8ca8  4c 8b 05 01 64 04 00           mov    r8,QWORD PTR [rip+0x46401]        # 0x40f0b0
3c8caf  a8 02                          test   al,0x2
3c8cb1  75 1f                          jne    0x3c8cd2
3c8cb3  83 c8 02                       or     eax,0x2
3c8cb6  48 8d 15 03 64 04 00           lea    rdx,[rip+0x46403]        # 0x40f0c0
3c8cbd  45 33 c9                       xor    r9d,r9d
3c8cc0  89 05 f2 63 04 00              mov    DWORD PTR [rip+0x463f2],eax        # 0x40f0b8
3c8cc6  48 8d 0d cb 63 04 00           lea    rcx,[rip+0x463cb]        # 0x40f098
3c8ccd  e8 52 30 f0 ff                 call   0x2cbd24
3c8cd2  4c 8b c3                       mov    r8,rbx
3c8cd5  48 8d 15 e4 63 04 00           lea    rdx,[rip+0x463e4]        # 0x40f0c0
3c8cdc  48 8d 0d b5 63 04 00           lea    rcx,[rip+0x463b5]        # 0x40f098
3c8ce3  48 83 c4 20                    add    rsp,0x20
3c8ce7  5b                             pop    rbx
3c8ce8  e9 ab ef ff ff                 jmp    0x3c7c98
