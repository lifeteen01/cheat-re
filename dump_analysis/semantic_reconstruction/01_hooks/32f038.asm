; pdata function 0x32f038..0x32f117 unwind=0x3d2040
32f038  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
32f03d  57                             push   rdi
32f03e  48 83 ec 20                    sub    rsp,0x20
32f042  33 db                          xor    ebx,ebx
32f044  48 8b f9                       mov    rdi,rcx
32f047  38 1d ab 4b 0c 00              cmp    BYTE PTR [rip+0xc4bab],bl        # 0x3f3bf8 ; CONFIG Bools.nosmoke value(+0x48)
32f04d  74 26                          je     0x32f075
32f04f  4c 8b 81 f8 02 00 00           mov    r8,QWORD PTR [rcx+0x2f8]
32f056  49 8b c8                       mov    rcx,r8
32f059  e8 aa be f9 ff                 call   0x2caf08
32f05e  84 c0                          test   al,al
32f060  74 0a                          je     0x32f06c
32f062  33 d2                          xor    edx,edx
32f064  49 8b c8                       mov    rcx,r8
32f067  e8 d8 46 04 00                 call   0x373744
32f06c  c6 05 dd 97 0c 00 01           mov    BYTE PTR [rip+0xc97dd],0x1        # 0x3f8850
32f073  eb 2b                          jmp    0x32f0a0
32f075  38 1d d5 97 0c 00              cmp    BYTE PTR [rip+0xc97d5],bl        # 0x3f8850
32f07b  74 23                          je     0x32f0a0
32f07d  4c 8b 81 f8 02 00 00           mov    r8,QWORD PTR [rcx+0x2f8]
32f084  49 8b c8                       mov    rcx,r8
32f087  e8 7c be f9 ff                 call   0x2caf08
32f08c  84 c0                          test   al,al
32f08e  74 0a                          je     0x32f09a
32f090  b2 01                          mov    dl,0x1
32f092  49 8b c8                       mov    rcx,r8
32f095  e8 aa 46 04 00                 call   0x373744
32f09a  88 1d b0 97 0c 00              mov    BYTE PTR [rip+0xc97b0],bl        # 0x3f8850
32f0a0  8b 1d ba 97 0c 00              mov    ebx,DWORD PTR [rip+0xc97ba]        # 0x3f8860
32f0a6  f6 c3 01                       test   bl,0x1
32f0a9  75 1e                          jne    0x32f0c9
32f0ab  83 cb 01                       or     ebx,0x1
32f0ae  48 8d 0d 4b 77 0b 00           lea    rcx,[rip+0xb774b]        # 0x3e6800
32f0b5  89 1d a5 97 0c 00              mov    DWORD PTR [rip+0xc97a5],ebx        # 0x3f8860
32f0bb  e8 18 f5 f9 ff                 call   0x2ce5d8
32f0c0  48 89 05 91 97 0c 00           mov    QWORD PTR [rip+0xc9791],rax        # 0x3f8858
32f0c7  eb 07                          jmp    0x32f0d0
32f0c9  48 8b 05 88 97 0c 00           mov    rax,QWORD PTR [rip+0xc9788]        # 0x3f8858
32f0d0  f6 c3 02                       test   bl,0x2
32f0d3  75 22                          jne    0x32f0f7
32f0d5  48 8b 0d 84 6d 0a 00           mov    rcx,QWORD PTR [rip+0xa6d84]        # 0x3d5e60
32f0dc  48 8d 15 8d 97 0c 00           lea    rdx,[rip+0xc978d]        # 0x3f8870
32f0e3  83 cb 02                       or     ebx,0x2
32f0e6  45 33 c9                       xor    r9d,r9d
32f0e9  4c 8b c0                       mov    r8,rax
32f0ec  89 1d 6e 97 0c 00              mov    DWORD PTR [rip+0xc976e],ebx        # 0x3f8860
32f0f2  e8 2d cc f9 ff                 call   0x2cbd24
32f0f7  48 8b 0d 62 6d 0a 00           mov    rcx,QWORD PTR [rip+0xa6d62]        # 0x3d5e60
32f0fe  48 8d 15 6b 97 0c 00           lea    rdx,[rip+0xc976b]        # 0x3f8870
32f105  4c 8b c7                       mov    r8,rdi
32f108  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
32f10d  48 83 c4 20                    add    rsp,0x20
32f111  5f                             pop    rdi
32f112  e9 e5 c8 f9 ff                 jmp    0x2cb9fc
