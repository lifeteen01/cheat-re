; pdata function 0x369298..0x369323 unwind=0x3d2038
369298  40 53                          rex push rbx
36929a  48 83 ec 20                    sub    rsp,0x20
36929e  48 8b d9                       mov    rbx,rcx
3692a1  e8 62 1c f6 ff                 call   0x2caf08
3692a6  84 c0                          test   al,al
3692a8  75 08                          jne    0x3692b2
3692aa  33 c0                          xor    eax,eax
3692ac  48 83 c4 20                    add    rsp,0x20
3692b0  5b                             pop    rbx
3692b1  c3                             ret
3692b2  8b 0d b8 57 09 00              mov    ecx,DWORD PTR [rip+0x957b8]        # 0x3fea70
3692b8  f6 c1 01                       test   cl,0x1
3692bb  75 20                          jne    0x3692dd
3692bd  4c 8b 05 3c dc 06 00           mov    r8,QWORD PTR [rip+0x6dc3c]        # 0x3d6f00
3692c4  83 c9 01                       or     ecx,0x1
3692c7  49 81 c0 60 c7 f1 03           add    r8,0x3f1c760
3692ce  89 0d 9c 57 09 00              mov    DWORD PTR [rip+0x9579c],ecx        # 0x3fea70
3692d4  4c 89 05 8d 57 09 00           mov    QWORD PTR [rip+0x9578d],r8        # 0x3fea68
3692db  eb 07                          jmp    0x3692e4
3692dd  4c 8b 05 84 57 09 00           mov    r8,QWORD PTR [rip+0x95784]        # 0x3fea68
3692e4  f6 c1 02                       test   cl,0x2
3692e7  75 1f                          jne    0x369308
3692e9  83 c9 02                       or     ecx,0x2
3692ec  48 8d 15 8d 57 09 00           lea    rdx,[rip+0x9578d]        # 0x3fea80
3692f3  89 0d 77 57 09 00              mov    DWORD PTR [rip+0x95777],ecx        # 0x3fea70
3692f9  45 33 c9                       xor    r9d,r9d
3692fc  48 8b 0d 5d cb 06 00           mov    rcx,QWORD PTR [rip+0x6cb5d]        # 0x3d5e60
369303  e8 1c 2a f6 ff                 call   0x2cbd24
369308  48 8b 0d 51 cb 06 00           mov    rcx,QWORD PTR [rip+0x6cb51]        # 0x3d5e60
36930f  48 8d 15 6a 57 09 00           lea    rdx,[rip+0x9576a]        # 0x3fea80
369316  4c 8b c3                       mov    r8,rbx
369319  48 83 c4 20                    add    rsp,0x20
36931d  5b                             pop    rbx
36931e  e9 d9 26 f6 ff                 jmp    0x2cb9fc
