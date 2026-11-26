; pdata function 0x35d220..0x35d31b unwind=0x3d2064
35d220  48 83 ec 28                    sub    rsp,0x28
35d224  85 c9                          test   ecx,ecx
35d226  0f 84 e1 00 00 00              je     0x35d30d
35d22c  83 e9 01                       sub    ecx,0x1
35d22f  74 33                          je     0x35d264
35d231  83 e9 01                       sub    ecx,0x1
35d234  74 21                          je     0x35d257
35d236  83 f9 01                       cmp    ecx,0x1
35d239  74 0e                          je     0x35d249
35d23b  e8 dc 00 00 00                 call   0x35d31c
35d240  48 8b 40 10                    mov    rax,QWORD PTR [rax+0x10]
35d244  e9 cd 00 00 00                 jmp    0x35d316
35d249  e8 ce 00 00 00                 call   0x35d31c
35d24e  48 8b 40 18                    mov    rax,QWORD PTR [rax+0x18]
35d252  e9 bf 00 00 00                 jmp    0x35d316
35d257  e8 c0 00 00 00                 call   0x35d31c
35d25c  48 8b 00                       mov    rax,QWORD PTR [rax]
35d25f  e9 b2 00 00 00                 jmp    0x35d316
35d264  48 8d 0d 75 ee 09 00           lea    rcx,[rip+0x9ee75]        # 0x3fc0e0
35d26b  83 fa 0d                       cmp    edx,0xd
35d26e  74 7f                          je     0x35d2ef
35d270  83 fa 10                       cmp    edx,0x10
35d273  74 73                          je     0x35d2e8
35d275  83 fa 12                       cmp    edx,0x12
35d278  74 5a                          je     0x35d2d4
35d27a  83 fa 14                       cmp    edx,0x14
35d27d  74 41                          je     0x35d2c0
35d27f  83 fa 16                       cmp    edx,0x16
35d282  74 28                          je     0x35d2ac
35d284  83 fa 18                       cmp    edx,0x18
35d287  ba 01 00 00 00                 mov    edx,0x1
35d28c  74 0f                          je     0x35d29d
35d28e  e8 25 95 fd ff                 call   0x3367b8
35d293  f3 0f 10 0d 21 5f f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff35f21]        # 0x2931bc ; f32=16
35d29b  eb 64                          jmp    0x35d301
35d29d  e8 16 95 fd ff                 call   0x3367b8
35d2a2  f3 0f 10 0d 26 5f f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff35f26]        # 0x2931d0 ; f32=24
35d2aa  eb 55                          jmp    0x35d301
35d2ac  ba 01 00 00 00                 mov    edx,0x1
35d2b1  e8 02 95 fd ff                 call   0x3367b8
35d2b6  f3 0f 10 0d 0a 5f f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff35f0a]        # 0x2931c8 ; f32=22
35d2be  eb 41                          jmp    0x35d301
35d2c0  ba 01 00 00 00                 mov    edx,0x1
35d2c5  e8 ee 94 fd ff                 call   0x3367b8
35d2ca  f3 0f 10 0d 4e 08 f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3084e]        # 0x28db20 ; f32=20
35d2d2  eb 2d                          jmp    0x35d301
35d2d4  ba 01 00 00 00                 mov    edx,0x1
35d2d9  e8 da 94 fd ff                 call   0x3367b8
35d2de  f3 0f 10 0d da 5e f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff35eda]        # 0x2931c0 ; f32=18
35d2e6  eb 19                          jmp    0x35d301
35d2e8  ba 01 00 00 00                 mov    edx,0x1
35d2ed  eb 9f                          jmp    0x35d28e
35d2ef  ba 01 00 00 00                 mov    edx,0x1
35d2f4  e8 bf 94 fd ff                 call   0x3367b8
35d2f9  f3 0f 10 0d af 5e f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff35eaf]        # 0x2931b0 ; f32=13
35d301  48 8b c8                       mov    rcx,rax
35d304  48 83 c4 28                    add    rsp,0x28
35d308  e9 df 77 00 00                 jmp    0x364aec
35d30d  e8 0a 00 00 00                 call   0x35d31c
35d312  48 8b 40 08                    mov    rax,QWORD PTR [rax+0x8]
35d316  48 83 c4 28                    add    rsp,0x28
35d31a  c3                             ret

