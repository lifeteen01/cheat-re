; pdata function 0x372184..0x3721b4 unwind=0x3d2064
372184  48 83 ec 28                    sub    rsp,0x28
372188  4c 8b c1                       mov    r8,rcx
37218b  e8 78 8d f5 ff                 call   0x2caf08
372190  84 c0                          test   al,al
372192  74 1b                          je     0x3721af
372194  ba d8 00 00 00                 mov    edx,0xd8
372199  49 8b c8                       mov    rcx,r8
37219c  e8 9b cc f6 ff                 call   0x2dee3c
3721a1  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
3721a5  0f 2f 05 a0 b0 f1 ff           comiss xmm0,DWORD PTR [rip+0xfffffffffff1b0a0]        # 0x28d24c
3721ac  0f 97 c0                       seta   al
3721af  48 83 c4 28                    add    rsp,0x28
3721b3  c3                             ret

; pdata function 0x3696e4..0x36970c unwind=0x3d2064
3696e4  48 83 ec 28                    sub    rsp,0x28
3696e8  4c 8b c1                       mov    r8,rcx
3696eb  e8 18 18 f6 ff                 call   0x2caf08
3696f0  84 c0                          test   al,al
3696f2  75 04                          jne    0x3696f8
3696f4  33 c0                          xor    eax,eax
3696f6  eb 0f                          jmp    0x369707
3696f8  ba 08 07 00 00                 mov    edx,0x708
3696fd  49 8b c8                       mov    rcx,r8
369700  e8 37 57 f7 ff                 call   0x2dee3c
369705  8b 00                          mov    eax,DWORD PTR [rax]
369707  48 83 c4 28                    add    rsp,0x28
36970b  c3                             ret

; pdata function 0x371604..0x37162d unwind=0x3d2064
371604  48 83 ec 28                    sub    rsp,0x28
371608  4c 8b c1                       mov    r8,rcx
37160b  e8 f8 98 f5 ff                 call   0x2caf08
371610  84 c0                          test   al,al
371612  75 05                          jne    0x371619
371614  83 c8 ff                       or     eax,0xffffffff
371617  eb 0f                          jmp    0x371628
371619  ba 88 00 00 00                 mov    edx,0x88
37161e  49 8b c8                       mov    rcx,r8
371621  e8 16 d8 f6 ff                 call   0x2dee3c
371626  8b 00                          mov    eax,DWORD PTR [rax]
371628  48 83 c4 28                    add    rsp,0x28
37162c  c3                             ret

