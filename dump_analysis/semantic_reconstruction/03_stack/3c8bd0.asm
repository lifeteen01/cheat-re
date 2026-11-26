; pdata function 0x3c8bd0..0x3c8c4d unwind=0x3d2038
3c8bd0  40 53                          rex push rbx
3c8bd2  48 83 ec 20                    sub    rsp,0x20
3c8bd6  8b 05 c4 65 04 00              mov    eax,DWORD PTR [rip+0x465c4]        # 0x40f1a0
3c8bdc  48 8b d9                       mov    rbx,rcx
3c8bdf  a8 01                          test   al,0x1
3c8be1  75 25                          jne    0x3c8c08
3c8be3  83 c8 01                       or     eax,0x1
3c8be6  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
3c8beb  89 05 af 65 04 00              mov    DWORD PTR [rip+0x465af],eax        # 0x40f1a0
3c8bf1  e8 7a f2 ff ff                 call   0x3c7e70
3c8bf6  4c 8b c0                       mov    r8,rax
3c8bf9  48 89 05 98 65 04 00           mov    QWORD PTR [rip+0x46598],rax        # 0x40f198
3c8c00  8b 05 9a 65 04 00              mov    eax,DWORD PTR [rip+0x4659a]        # 0x40f1a0
3c8c06  eb 07                          jmp    0x3c8c0f
3c8c08  4c 8b 05 89 65 04 00           mov    r8,QWORD PTR [rip+0x46589]        # 0x40f198
3c8c0f  a8 02                          test   al,0x2
3c8c11  75 1f                          jne    0x3c8c32
3c8c13  83 c8 02                       or     eax,0x2
3c8c16  48 8d 15 93 65 04 00           lea    rdx,[rip+0x46593]        # 0x40f1b0
3c8c1d  45 33 c9                       xor    r9d,r9d
3c8c20  89 05 7a 65 04 00              mov    DWORD PTR [rip+0x4657a],eax        # 0x40f1a0
3c8c26  48 8d 0d 6b 64 04 00           lea    rcx,[rip+0x4646b]        # 0x40f098
3c8c2d  e8 f2 30 f0 ff                 call   0x2cbd24
3c8c32  4c 8b c3                       mov    r8,rbx
3c8c35  48 8d 15 74 65 04 00           lea    rdx,[rip+0x46574]        # 0x40f1b0
3c8c3c  48 8d 0d 55 64 04 00           lea    rcx,[rip+0x46455]        # 0x40f098
3c8c43  48 83 c4 20                    add    rsp,0x20
3c8c47  5b                             pop    rbx
3c8c48  e9 af 2d f0 ff                 jmp    0x2cb9fc
