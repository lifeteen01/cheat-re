; pdata function 0x37154c..0x3715d7 unwind=0x3d2038
37154c  40 53                          rex push rbx
37154e  48 83 ec 20                    sub    rsp,0x20
371552  48 8b d9                       mov    rbx,rcx
371555  e8 ae 99 f5 ff                 call   0x2caf08
37155a  84 c0                          test   al,al
37155c  75 08                          jne    0x371566
37155e  33 c0                          xor    eax,eax
371560  48 83 c4 20                    add    rsp,0x20
371564  5b                             pop    rbx
371565  c3                             ret
371566  8b 0d e4 f5 08 00              mov    ecx,DWORD PTR [rip+0x8f5e4]        # 0x400b50
37156c  f6 c1 01                       test   cl,0x1
37156f  75 20                          jne    0x371591
371571  4c 8b 05 88 59 06 00           mov    r8,QWORD PTR [rip+0x65988]        # 0x3d6f00
371578  83 c9 01                       or     ecx,0x1
37157b  49 81 c0 60 63 4d 04           add    r8,0x44d6360
371582  89 0d c8 f5 08 00              mov    DWORD PTR [rip+0x8f5c8],ecx        # 0x400b50
371588  4c 89 05 b9 f5 08 00           mov    QWORD PTR [rip+0x8f5b9],r8        # 0x400b48
37158f  eb 07                          jmp    0x371598
371591  4c 8b 05 b0 f5 08 00           mov    r8,QWORD PTR [rip+0x8f5b0]        # 0x400b48
371598  f6 c1 02                       test   cl,0x2
37159b  75 1f                          jne    0x3715bc
37159d  83 c9 02                       or     ecx,0x2
3715a0  48 8d 15 b9 f5 08 00           lea    rdx,[rip+0x8f5b9]        # 0x400b60
3715a7  89 0d a3 f5 08 00              mov    DWORD PTR [rip+0x8f5a3],ecx        # 0x400b50
3715ad  45 33 c9                       xor    r9d,r9d
3715b0  48 8b 0d a9 48 06 00           mov    rcx,QWORD PTR [rip+0x648a9]        # 0x3d5e60
3715b7  e8 68 a7 f5 ff                 call   0x2cbd24
3715bc  48 8b 0d 9d 48 06 00           mov    rcx,QWORD PTR [rip+0x6489d]        # 0x3d5e60
3715c3  48 8d 15 96 f5 08 00           lea    rdx,[rip+0x8f596]        # 0x400b60
3715ca  4c 8b c3                       mov    r8,rbx
3715cd  48 83 c4 20                    add    rsp,0x20
3715d1  5b                             pop    rbx
3715d2  e9 25 a4 f5 ff                 jmp    0x2cb9fc
