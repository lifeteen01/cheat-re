; pdata function 0x3b4824..0x3b48b0 unwind=0x3d2040
3b4824  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3b4829  57                             push   rdi
3b482a  48 83 ec 20                    sub    rsp,0x20
3b482e  8b 05 3c 8b 05 00              mov    eax,DWORD PTR [rip+0x58b3c]        # 0x40d370
3b4834  48 8b da                       mov    rbx,rdx
3b4837  48 8b f9                       mov    rdi,rcx
3b483a  a8 01                          test   al,0x1
3b483c  75 25                          jne    0x3b4863
3b483e  83 c8 01                       or     eax,0x1
3b4841  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3b4846  89 05 24 8b 05 00              mov    DWORD PTR [rip+0x58b24],eax        # 0x40d370
3b484c  e8 1b c8 ff ff                 call   0x3b106c
3b4851  4c 8b c0                       mov    r8,rax
3b4854  48 89 05 0d 8b 05 00           mov    QWORD PTR [rip+0x58b0d],rax        # 0x40d368
3b485b  8b 05 0f 8b 05 00              mov    eax,DWORD PTR [rip+0x58b0f]        # 0x40d370
3b4861  eb 07                          jmp    0x3b486a
3b4863  4c 8b 05 fe 8a 05 00           mov    r8,QWORD PTR [rip+0x58afe]        # 0x40d368
3b486a  a8 02                          test   al,0x2
3b486c  75 1f                          jne    0x3b488d
3b486e  48 8b 0d eb 15 02 00           mov    rcx,QWORD PTR [rip+0x215eb]        # 0x3d5e60
3b4875  48 8d 15 04 8b 05 00           lea    rdx,[rip+0x58b04]        # 0x40d380
3b487c  83 c8 02                       or     eax,0x2
3b487f  45 33 c9                       xor    r9d,r9d
3b4882  89 05 e8 8a 05 00              mov    DWORD PTR [rip+0x58ae8],eax        # 0x40d370
3b4888  e8 97 74 f1 ff                 call   0x2cbd24
3b488d  48 8b 0d cc 15 02 00           mov    rcx,QWORD PTR [rip+0x215cc]        # 0x3d5e60
3b4894  48 8d 15 e5 8a 05 00           lea    rdx,[rip+0x58ae5]        # 0x40d380
3b489b  4c 8b cb                       mov    r9,rbx
3b489e  4c 8b c7                       mov    r8,rdi
3b48a1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3b48a6  48 83 c4 20                    add    rsp,0x20
3b48aa  5f                             pop    rdi
3b48ab  e9 e4 d7 f1 ff                 jmp    0x2d2094
