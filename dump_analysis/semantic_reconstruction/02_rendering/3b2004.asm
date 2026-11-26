; pdata function 0x3b2004..0x3b211d unwind=0x3d2be4
3b2004  4c 8b dc                       mov    r11,rsp
3b2007  49 89 5b 08                    mov    QWORD PTR [r11+0x8],rbx
3b200b  55                             push   rbp
3b200c  56                             push   rsi
3b200d  57                             push   rdi
3b200e  48 83 ec 60                    sub    rsp,0x60
3b2012  8b 05 68 b2 05 00              mov    eax,DWORD PTR [rip+0x5b268]        # 0x40d280
3b2018  48 8b e9                       mov    rbp,rcx
3b201b  a8 01                          test   al,0x1
3b201d  0f 85 ab 00 00 00              jne    0x3b20ce
3b2023  83 c8 01                       or     eax,0x1
3b2026  49 8d 53 c1                    lea    rdx,[r11-0x3f]
3b202a  49 8d 4b 10                    lea    rcx,[r11+0x10]
3b202e  89 05 4c b2 05 00              mov    DWORD PTR [rip+0x5b24c],eax        # 0x40d280
3b2034  e8 27 f7 ff ff                 call   0x3b1760 ; STRING getter=0x3b1760 UnityEngine
3b2039  48 8b c8                       mov    rcx,rax
3b203c  e8 cb bd f1 ff                 call   0x2cde0c
3b2041  48 8d 94 24 88 00 00 00        lea    rdx,[rsp+0x88]
3b2049  48 8b f0                       mov    rsi,rax
3b204c  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
3b2054  e8 d7 a6 f1 ff                 call   0x2cc730
3b2059  48 8b c8                       mov    rcx,rax
3b205c  e8 43 bc f1 ff                 call   0x2cdca4
3b2061  48 8d 54 24 45                 lea    rdx,[rsp+0x45]
3b2066  48 8b f8                       mov    rdi,rax
3b2069  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
3b2071  e8 1a f2 ff ff                 call   0x3b1290 ; STRING getter=0x3b1290 ExecuteCommandBuffer
3b2076  48 8b c8                       mov    rcx,rax
3b2079  e8 be 15 f3 ff                 call   0x2e363c
3b207e  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
3b2083  48 8b d8                       mov    rbx,rax
3b2086  48 8d 8c 24 90 00 00 00        lea    rcx,[rsp+0x90]
3b208e  e8 31 ec ff ff                 call   0x3b0cc4 ; STRING getter=0x3b0cc4 Graphics
3b2093  48 8b c8                       mov    rcx,rax
3b2096  e8 69 64 f2 ff                 call   0x2d8504
3b209b  48 8b c8                       mov    rcx,rax
3b209e  c7 44 24 28 ff ff ff ff        mov    DWORD PTR [rsp+0x28],0xffffffff
3b20a6  4c 8b cf                       mov    r9,rdi
3b20a9  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
3b20ae  41 b8 01 00 00 00              mov    r8d,0x1
3b20b4  48 8b d3                       mov    rdx,rbx
3b20b7  e8 38 1b f8 ff                 call   0x333bf4
3b20bc  4c 8b 00                       mov    r8,QWORD PTR [rax]
3b20bf  8b 05 bb b1 05 00              mov    eax,DWORD PTR [rip+0x5b1bb]        # 0x40d280
3b20c5  4c 89 05 ac b1 05 00           mov    QWORD PTR [rip+0x5b1ac],r8        # 0x40d278
3b20cc  eb 07                          jmp    0x3b20d5
3b20ce  4c 8b 05 a3 b1 05 00           mov    r8,QWORD PTR [rip+0x5b1a3]        # 0x40d278
3b20d5  a8 02                          test   al,0x2
3b20d7  75 1f                          jne    0x3b20f8
3b20d9  48 8b 0d 80 3d 02 00           mov    rcx,QWORD PTR [rip+0x23d80]        # 0x3d5e60
3b20e0  48 8d 15 a9 b1 05 00           lea    rdx,[rip+0x5b1a9]        # 0x40d290
3b20e7  83 c8 02                       or     eax,0x2
3b20ea  45 33 c9                       xor    r9d,r9d
3b20ed  89 05 8d b1 05 00              mov    DWORD PTR [rip+0x5b18d],eax        # 0x40d280
3b20f3  e8 2c 9c f1 ff                 call   0x2cbd24
3b20f8  48 8b 0d 61 3d 02 00           mov    rcx,QWORD PTR [rip+0x23d61]        # 0x3d5e60
3b20ff  48 8d 15 8a b1 05 00           lea    rdx,[rip+0x5b18a]        # 0x40d290
3b2106  4c 8b c5                       mov    r8,rbp
3b2109  48 8b 9c 24 80 00 00 00        mov    rbx,QWORD PTR [rsp+0x80]
3b2111  48 83 c4 60                    add    rsp,0x60
3b2115  5f                             pop    rdi
3b2116  5e                             pop    rsi
3b2117  5d                             pop    rbp
3b2118  e9 df 98 f1 ff                 jmp    0x2cb9fc
