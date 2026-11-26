; pdata function 0x36f5cc..0x36f5f3 unwind=0x3d2064
36f5cc  48 83 ec 28                    sub    rsp,0x28
36f5d0  b9 18 00 00 00                 mov    ecx,0x18
36f5d5  e8 ea ad 01 00                 call   0x38a3c4
36f5da  48 85 c0                       test   rax,rax
36f5dd  74 08                          je     0x36f5e7
36f5df  48 8b c8                       mov    rcx,rax
36f5e2  e8 71 51 f6 ff                 call   0x2d4758
36f5e7  48 89 05 0a 0a 09 00           mov    QWORD PTR [rip+0x90a0a],rax        # 0x3ffff8
36f5ee  48 83 c4 28                    add    rsp,0x28
36f5f2  c3                             ret

; heuristic leaf/code range 0x2d901c..0x2d9024 unwind=0x0
2d901c  e9 73 6c ff ff                 jmp    0x2cfc94
2d9021  cc                             int3
2d9022  cc                             int3
2d9023  cc                             int3

