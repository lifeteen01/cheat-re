; pdata function 0x2ef724..0x2ef752 unwind=0x3d2318
2ef724  40 53                          rex push rbx
2ef726  48 83 ec 30                    sub    rsp,0x30
2ef72a  48 8b d9                       mov    rbx,rcx
2ef72d  48 8b ca                       mov    rcx,rdx
2ef730  e8 6f bc fd ff                 call   0x2cb3a4
2ef735  4c 8b c0                       mov    r8,rax
2ef738  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2ef73d  48 8b cb                       mov    rcx,rbx
2ef740  e8 db d4 ff ff                 call   0x2ecc20
2ef745  48 8b 00                       mov    rax,QWORD PTR [rax]
2ef748  48 83 c0 14                    add    rax,0x14
2ef74c  48 83 c4 30                    add    rsp,0x30
2ef750  5b                             pop    rbx
2ef751  c3                             ret

; pdata function 0x2df608..0x2df636 unwind=0x3d2318
2df608  40 53                          rex push rbx
2df60a  48 83 ec 30                    sub    rsp,0x30
2df60e  48 8b d9                       mov    rbx,rcx
2df611  48 8b ca                       mov    rcx,rdx
2df614  e8 8b bd fe ff                 call   0x2cb3a4
2df619  4c 8b c0                       mov    r8,rax
2df61c  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2df621  48 8b cb                       mov    rcx,rbx
2df624  e8 4b ef ff ff                 call   0x2de574
2df629  48 8b 00                       mov    rax,QWORD PTR [rax]
2df62c  48 83 c0 30                    add    rax,0x30
2df630  48 83 c4 30                    add    rsp,0x30
2df634  5b                             pop    rbx
2df635  c3                             ret

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

; pdata function 0x32b728..0x32b7a0 unwind=0x3d33cc
32b728  40 53                          rex push rbx
32b72a  48 83 ec 40                    sub    rsp,0x40
32b72e  48 8b da                       mov    rbx,rdx
32b731  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
32b736  49 8b d0                       mov    rdx,r8
32b739  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
32b73e  0f 28 f3                       movaps xmm6,xmm3
32b741  e8 22 0b fa ff                 call   0x2cc268
32b746  0f 28 ce                       movaps xmm1,xmm6
32b749  48 8d 4c 24 28                 lea    rcx,[rsp+0x28]
32b74e  e8 a5 24 fb ff                 call   0x2ddbf8
32b753  0f b7 44 24 5a                 movzx  eax,WORD PTR [rsp+0x5a]
32b758  48 8b cb                       mov    rcx,rbx
32b75b  0f 10 44 24 20                 movups xmm0,XMMWORD PTR [rsp+0x20]
32b760  66 89 83 d2 00 00 00           mov    WORD PTR [rbx+0xd2],ax
32b767  48 8d 44 24 48                 lea    rax,[rsp+0x48]
32b76c  48 89 43 78                    mov    QWORD PTR [rbx+0x78],rax
32b770  f3 0f 7f 83 88 00 00 00        movdqu XMMWORD PTR [rbx+0x88],xmm0
32b778  66 c7 83 d0 00 00 00 00 01     mov    WORD PTR [rbx+0xd0],0x100
32b781  48 c7 83 80 00 00 00 02 00 00 00 mov    QWORD PTR [rbx+0x80],0x2
32b78c  e8 43 24 0a 00                 call   0x3cdbd4
32b791  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
32b796  48 83 c4 40                    add    rsp,0x40
32b79a  5b                             pop    rbx
32b79b  e9 10 24 0a 00                 jmp    0x3cdbb0

