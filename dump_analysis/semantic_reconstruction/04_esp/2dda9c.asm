; pdata function 0x2dda9c..0x2ddb0d unwind=0x3d2064
2dda9c  48 83 ec 28                    sub    rsp,0x28
2ddaa0  8b 0d 6a 94 0f 00              mov    ecx,DWORD PTR [rip+0xf946a]        # 0x3d6f10
2ddaa6  f6 c1 01                       test   cl,0x1
2ddaa9  75 20                          jne    0x2ddacb
2ddaab  4c 8b 05 4e 94 0f 00           mov    r8,QWORD PTR [rip+0xf944e]        # 0x3d6f00
2ddab2  83 c9 01                       or     ecx,0x1
2ddab5  49 81 c0 90 8c 45 05           add    r8,0x5458c90
2ddabc  89 0d 4e 94 0f 00              mov    DWORD PTR [rip+0xf944e],ecx        # 0x3d6f10
2ddac2  4c 89 05 3f 94 0f 00           mov    QWORD PTR [rip+0xf943f],r8        # 0x3d6f08
2ddac9  eb 07                          jmp    0x2ddad2
2ddacb  4c 8b 05 36 94 0f 00           mov    r8,QWORD PTR [rip+0xf9436]        # 0x3d6f08
2ddad2  f6 c1 02                       test   cl,0x2
2ddad5  75 1f                          jne    0x2ddaf6
2ddad7  83 c9 02                       or     ecx,0x2
2ddada  48 8d 15 3f 94 0f 00           lea    rdx,[rip+0xf943f]        # 0x3d6f20
2ddae1  89 0d 29 94 0f 00              mov    DWORD PTR [rip+0xf9429],ecx        # 0x3d6f10
2ddae7  45 33 c9                       xor    r9d,r9d
2ddaea  48 8b 0d 6f 83 0f 00           mov    rcx,QWORD PTR [rip+0xf836f]        # 0x3d5e60
2ddaf1  e8 2e e2 fe ff                 call   0x2cbd24
2ddaf6  48 8b 0d 63 83 0f 00           mov    rcx,QWORD PTR [rip+0xf8363]        # 0x3d5e60
2ddafd  48 8d 15 1c 94 0f 00           lea    rdx,[rip+0xf941c]        # 0x3d6f20
2ddb04  48 83 c4 28                    add    rsp,0x28
2ddb08  e9 0b ff ff ff                 jmp    0x2dda18
