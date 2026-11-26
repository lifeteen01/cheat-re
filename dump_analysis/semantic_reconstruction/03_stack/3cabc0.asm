; pdata function 0x3cabc0..0x3cac3d unwind=0x3d2064
3cabc0  48 83 ec 28                    sub    rsp,0x28
3cabc4  48 8d 0d cd 44 04 00           lea    rcx,[rip+0x444cd]        # 0x40f098
3cabcb  e8 fc 00 00 00                 call   0x3caccc
3cabd0  b9 18 00 00 00                 mov    ecx,0x18
3cabd5  e8 ea f7 fb ff                 call   0x38a3c4
3cabda  48 85 c0                       test   rax,rax
3cabdd  74 0c                          je     0x3cabeb
3cabdf  0f 57 c0                       xorps  xmm0,xmm0
3cabe2  33 c9                          xor    ecx,ecx
3cabe4  0f 11 00                       movups XMMWORD PTR [rax],xmm0
3cabe7  48 89 48 10                    mov    QWORD PTR [rax+0x10],rcx
3cabeb  48 8b c8                       mov    rcx,rax
3cabee  48 89 05 6b b2 00 00           mov    QWORD PTR [rip+0xb26b],rax        # 0x3d5e60
3cabf5  e8 8e 00 00 00                 call   0x3cac88
3cabfa  b9 18 00 00 00                 mov    ecx,0x18
3cabff  e8 c0 f7 fb ff                 call   0x38a3c4
3cac04  48 85 c0                       test   rax,rax
3cac07  74 0c                          je     0x3cac15
3cac09  0f 57 c0                       xorps  xmm0,xmm0
3cac0c  33 c9                          xor    ecx,ecx
3cac0e  0f 11 00                       movups XMMWORD PTR [rax],xmm0
3cac11  48 89 48 10                    mov    QWORD PTR [rax+0x10],rcx
3cac15  48 8b c8                       mov    rcx,rax
3cac18  48 89 05 81 46 04 00           mov    QWORD PTR [rip+0x44681],rax        # 0x40f2a0
3cac1f  e8 a8 00 00 00                 call   0x3caccc
3cac24  e8 4b 00 00 00                 call   0x3cac74
3cac29  e8 ee 26 f9 ff                 call   0x35d31c
3cac2e  48 8b c8                       mov    rcx,rax
3cac31  e8 e2 74 f9 ff                 call   0x362118
3cac36  33 c0                          xor    eax,eax
3cac38  48 83 c4 28                    add    rsp,0x28
3cac3c  c3                             ret
