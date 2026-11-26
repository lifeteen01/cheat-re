; pdata function 0x2d5e90..0x2d5f83 unwind=0x3d2558
2d5e90  4c 8b dc                       mov    r11,rsp
2d5e93  53                             push   rbx
2d5e94  55                             push   rbp
2d5e95  56                             push   rsi
2d5e96  57                             push   rdi
2d5e97  48 83 ec 48                    sub    rsp,0x48
2d5e9b  8b 05 9f 07 10 00              mov    eax,DWORD PTR [rip+0x10079f]        # 0x3d6640
2d5ea1  48 8b f2                       mov    rsi,rdx
2d5ea4  48 8b e9                       mov    rbp,rcx
2d5ea7  a8 01                          test   al,0x1
2d5ea9  0f 85 89 00 00 00              jne    0x2d5f38
2d5eaf  83 c8 01                       or     eax,0x1
2d5eb2  49 8d 53 b8                    lea    rdx,[r11-0x48]
2d5eb6  49 8d 4b 18                    lea    rcx,[r11+0x18]
2d5eba  89 05 80 07 10 00              mov    DWORD PTR [rip+0x100780],eax        # 0x3d6640
2d5ec0  e8 27 f5 ff ff                 call   0x2d53ec ; STRING getter=0x2d53ec GetFiles
2d5ec5  48 8b c8                       mov    rcx,rax
2d5ec8  e8 37 26 00 00                 call   0x2d8504
2d5ecd  48 8d 54 24 29                 lea    rdx,[rsp+0x29]
2d5ed2  48 8b f8                       mov    rdi,rax
2d5ed5  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
2d5edd  e8 ba f3 ff ff                 call   0x2d529c ; STRING getter=0x2d529c System.IO
2d5ee2  48 8b c8                       mov    rcx,rax
2d5ee5  e8 32 7e ff ff                 call   0x2cdd1c
2d5eea  48 8d 54 24 33                 lea    rdx,[rsp+0x33]
2d5eef  48 8b d8                       mov    rbx,rax
2d5ef2  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
2d5efa  e8 ad f1 ff ff                 call   0x2d50ac ; STRING getter=0x2d50ac Directory
2d5eff  48 8b c8                       mov    rcx,rax
2d5f02  e8 15 7e ff ff                 call   0x2cdd1c
2d5f07  48 8b c8                       mov    rcx,rax
2d5f0a  48 8b d3                       mov    rdx,rbx
2d5f0d  e8 12 e3 05 00                 call   0x334224
2d5f12  48 8b c8                       mov    rcx,rax
2d5f15  41 b1 01                       mov    r9b,0x1
2d5f18  41 b8 02 00 00 00              mov    r8d,0x2
2d5f1e  48 8b d7                       mov    rdx,rdi
2d5f21  e8 6a eb 05 00                 call   0x334a90
2d5f26  4c 8b 00                       mov    r8,QWORD PTR [rax]
2d5f29  8b 05 11 07 10 00              mov    eax,DWORD PTR [rip+0x100711]        # 0x3d6640
2d5f2f  4c 89 05 02 07 10 00           mov    QWORD PTR [rip+0x100702],r8        # 0x3d6638
2d5f36  eb 07                          jmp    0x2d5f3f
2d5f38  4c 8b 05 f9 06 10 00           mov    r8,QWORD PTR [rip+0x1006f9]        # 0x3d6638
2d5f3f  a8 02                          test   al,0x2
2d5f41  75 1f                          jne    0x2d5f62
2d5f43  48 8b 0d 16 ff 0f 00           mov    rcx,QWORD PTR [rip+0xfff16]        # 0x3d5e60
2d5f4a  48 8d 15 ff 06 10 00           lea    rdx,[rip+0x1006ff]        # 0x3d6650
2d5f51  83 c8 02                       or     eax,0x2
2d5f54  45 33 c9                       xor    r9d,r9d
2d5f57  89 05 e3 06 10 00              mov    DWORD PTR [rip+0x1006e3],eax        # 0x3d6640
2d5f5d  e8 c2 5d ff ff                 call   0x2cbd24
2d5f62  48 8b 0d f7 fe 0f 00           mov    rcx,QWORD PTR [rip+0xffef7]        # 0x3d5e60
2d5f69  48 8d 15 e0 06 10 00           lea    rdx,[rip+0x1006e0]        # 0x3d6650
2d5f70  4c 8b ce                       mov    r9,rsi
2d5f73  4c 8b c5                       mov    r8,rbp
2d5f76  48 83 c4 48                    add    rsp,0x48
2d5f7a  5f                             pop    rdi
2d5f7b  5e                             pop    rsi
2d5f7c  5d                             pop    rbp
2d5f7d  5b                             pop    rbx
2d5f7e  e9 11 c1 ff ff                 jmp    0x2d2094

