; pdata function 0x369e70..0x369f6b unwind=0x3d2484
369e70  40 55                          rex push rbp
369e72  53                             push   rbx
369e73  56                             push   rsi
369e74  57                             push   rdi
369e75  48 8b ec                       mov    rbp,rsp
369e78  48 83 ec 78                    sub    rsp,0x78
369e7c  48 8b f2                       mov    rsi,rdx
369e7f  48 8b d1                       mov    rdx,rcx
369e82  e8 81 10 f6 ff                 call   0x2caf08
369e87  84 c0                          test   al,al
369e89  0f 84 c1 00 00 00              je     0x369f50
369e8f  45 84 c0                       test   r8b,r8b
369e92  0f 85 b8 00 00 00              jne    0x369f50
369e98  48 8b 92 40 06 00 00           mov    rdx,QWORD PTR [rdx+0x640]
369e9f  48 8b ca                       mov    rcx,rdx
369ea2  e8 61 10 f6 ff                 call   0x2caf08
369ea7  84 c0                          test   al,al
369ea9  0f 84 a1 00 00 00              je     0x369f50
369eaf  48 83 c2 14                    add    rdx,0x14
369eb3  48 8d 4d b8                    lea    rcx,[rbp-0x48]
369eb7  e8 0c a7 f6 ff                 call   0x2d45c8
369ebc  48 8d 4d b8                    lea    rcx,[rbp-0x48]
369ec0  e8 cf e7 f6 ff                 call   0x2d8694
369ec5  84 c0                          test   al,al
369ec7  74 1a                          je     0x369ee3
369ec9  48 8d 15 58 34 f2 ff           lea    rdx,[rip+0xfffffffffff23458]        # 0x28d328
369ed0  48 8b ce                       mov    rcx,rsi
369ed3  e8 f4 23 f6 ff                 call   0x2cc2cc
369ed8  48 8d 4d b8                    lea    rcx,[rbp-0x48]
369edc  e8 6f ab f6 ff                 call   0x2d4a50
369ee1  eb 7c                          jmp    0x369f5f
369ee3  48 8d 55 a8                    lea    rdx,[rbp-0x58]
369ee7  48 8d 4d b8                    lea    rcx,[rbp-0x48]
369eeb  e8 38 e8 f6 ff                 call   0x2d8728
369ef0  48 8d 55 b0                    lea    rdx,[rbp-0x50]
369ef4  48 8d 4d b8                    lea    rcx,[rbp-0x48]
369ef8  48 8b 18                       mov    rbx,QWORD PTR [rax]
369efb  e8 40 de f6 ff                 call   0x2d7d40
369f00  48 8d 4d 40                    lea    rcx,[rbp+0x40]
369f04  48 8b f8                       mov    rdi,rax
369f07  e8 98 14 f6 ff                 call   0x2cb3a4
369f0c  48 8b 17                       mov    rdx,QWORD PTR [rdi]
369f0f  48 8d 4d d8                    lea    rcx,[rbp-0x28]
369f13  4c 8b c8                       mov    r9,rax
369f16  4c 8b c3                       mov    r8,rbx
369f19  e8 26 4f f6 ff                 call   0x2cee44
369f1e  48 8d 4d d8                    lea    rcx,[rbp-0x28]
369f22  e8 6d e7 f6 ff                 call   0x2d8694
369f27  48 8b ce                       mov    rcx,rsi
369f2a  84 c0                          test   al,al
369f2c  74 17                          je     0x369f45
369f2e  48 8d 15 f3 33 f2 ff           lea    rdx,[rip+0xfffffffffff233f3]        # 0x28d328
369f35  e8 92 23 f6 ff                 call   0x2cc2cc
369f3a  48 8d 4d d8                    lea    rcx,[rbp-0x28]
369f3e  e8 b1 25 f6 ff                 call   0x2cc4f4
369f43  eb 93                          jmp    0x369ed8
369f45  48 8d 55 d8                    lea    rdx,[rbp-0x28]
369f49  e8 36 23 f6 ff                 call   0x2cc284
369f4e  eb ea                          jmp    0x369f3a
369f50  48 8d 15 d1 33 f2 ff           lea    rdx,[rip+0xfffffffffff233d1]        # 0x28d328
369f57  48 8b ce                       mov    rcx,rsi
369f5a  e8 6d 23 f6 ff                 call   0x2cc2cc
369f5f  48 8b c6                       mov    rax,rsi
369f62  48 83 c4 78                    add    rsp,0x78
369f66  5f                             pop    rdi
369f67  5e                             pop    rsi
369f68  5b                             pop    rbx
369f69  5d                             pop    rbp
369f6a  c3                             ret
