; pdata function 0x3b0580..0x3b05fd unwind=0x3d2038
3b0580  40 53                          rex push rbx
3b0582  48 83 ec 20                    sub    rsp,0x20
3b0586  8b 05 24 db 05 00              mov    eax,DWORD PTR [rip+0x5db24]        # 0x40e0b0
3b058c  48 8b d9                       mov    rbx,rcx
3b058f  a8 01                          test   al,0x1
3b0591  75 25                          jne    0x3b05b8
3b0593  83 c8 01                       or     eax,0x1
3b0596  b9 96 67 cc cd                 mov    ecx,0xcdcc6796
3b059b  89 05 0f db 05 00              mov    DWORD PTR [rip+0x5db0f],eax        # 0x40e0b0
3b05a1  e8 6a 37 f8 ff                 call   0x333d10
3b05a6  4c 8b 00                       mov    r8,QWORD PTR [rax]
3b05a9  8b 05 01 db 05 00              mov    eax,DWORD PTR [rip+0x5db01]        # 0x40e0b0
3b05af  4c 89 05 f2 da 05 00           mov    QWORD PTR [rip+0x5daf2],r8        # 0x40e0a8
3b05b6  eb 07                          jmp    0x3b05bf
3b05b8  4c 8b 05 e9 da 05 00           mov    r8,QWORD PTR [rip+0x5dae9]        # 0x40e0a8
3b05bf  a8 02                          test   al,0x2
3b05c1  75 1f                          jne    0x3b05e2
3b05c3  48 8b 0d 96 58 02 00           mov    rcx,QWORD PTR [rip+0x25896]        # 0x3d5e60
3b05ca  48 8d 15 ef da 05 00           lea    rdx,[rip+0x5daef]        # 0x40e0c0
3b05d1  83 c8 02                       or     eax,0x2
3b05d4  45 33 c9                       xor    r9d,r9d
3b05d7  89 05 d3 da 05 00              mov    DWORD PTR [rip+0x5dad3],eax        # 0x40e0b0
3b05dd  e8 42 b7 f1 ff                 call   0x2cbd24
3b05e2  48 8b 0d 77 58 02 00           mov    rcx,QWORD PTR [rip+0x25877]        # 0x3d5e60
3b05e9  48 8d 15 d0 da 05 00           lea    rdx,[rip+0x5dad0]        # 0x40e0c0
3b05f0  4c 8b c3                       mov    r8,rbx
3b05f3  48 83 c4 20                    add    rsp,0x20
3b05f7  5b                             pop    rbx
3b05f8  e9 ff b3 f1 ff                 jmp    0x2cb9fc
