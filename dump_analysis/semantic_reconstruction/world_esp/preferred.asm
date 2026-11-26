; pdata function 0x36a0e0..0x36a175 unwind=0x3d2038
36a0e0  40 53                          rex push rbx
36a0e2  48 83 ec 20                    sub    rsp,0x20
36a0e6  48 8b d9                       mov    rbx,rcx
36a0e9  e8 1a 0e f6 ff                 call   0x2caf08
36a0ee  84 c0                          test   al,al
36a0f0  74 7b                          je     0x36a16d
36a0f2  8b 15 38 4d 09 00              mov    edx,DWORD PTR [rip+0x94d38]        # 0x3fee30
36a0f8  f6 c2 01                       test   dl,0x1
36a0fb  75 20                          jne    0x36a11d
36a0fd  4c 8b 05 fc cd 06 00           mov    r8,QWORD PTR [rip+0x6cdfc]        # 0x3d6f00
36a104  83 ca 01                       or     edx,0x1
36a107  49 81 c0 d0 2d f1 03           add    r8,0x3f12dd0
36a10e  89 15 1c 4d 09 00              mov    DWORD PTR [rip+0x94d1c],edx        # 0x3fee30
36a114  4c 89 05 0d 4d 09 00           mov    QWORD PTR [rip+0x94d0d],r8        # 0x3fee28
36a11b  eb 07                          jmp    0x36a124
36a11d  4c 8b 05 04 4d 09 00           mov    r8,QWORD PTR [rip+0x94d04]        # 0x3fee28
36a124  f6 c2 02                       test   dl,0x2
36a127  75 1f                          jne    0x36a148
36a129  48 8b 0d 30 bd 06 00           mov    rcx,QWORD PTR [rip+0x6bd30]        # 0x3d5e60
36a130  83 ca 02                       or     edx,0x2
36a133  89 15 f7 4c 09 00              mov    DWORD PTR [rip+0x94cf7],edx        # 0x3fee30
36a139  45 33 c9                       xor    r9d,r9d
36a13c  48 8d 15 fd 4c 09 00           lea    rdx,[rip+0x94cfd]        # 0x3fee40
36a143  e8 dc 1b f6 ff                 call   0x2cbd24
36a148  48 8b 0d 11 bd 06 00           mov    rcx,QWORD PTR [rip+0x6bd11]        # 0x3d5e60
36a14f  48 8d 15 ea 4c 09 00           lea    rdx,[rip+0x94cea]        # 0x3fee40
36a156  4c 8b c3                       mov    r8,rbx
36a159  e8 9e 18 f6 ff                 call   0x2cb9fc
36a15e  48 8b c8                       mov    rcx,rax
36a161  e8 a2 0d f6 ff                 call   0x2caf08
36a166  84 c0                          test   al,al
36a168  0f 95 c0                       setne  al
36a16b  eb 02                          jmp    0x36a16f
36a16d  32 c0                          xor    al,al
36a16f  48 83 c4 20                    add    rsp,0x20
36a173  5b                             pop    rbx
36a174  c3                             ret

