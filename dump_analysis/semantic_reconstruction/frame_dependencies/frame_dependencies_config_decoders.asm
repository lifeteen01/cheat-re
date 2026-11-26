; pdata function 0x2d2c44..0x2d2cae unwind=0x3d2228
2d2c44  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d2c49  57                             push   rdi
2d2c4a  48 83 ec 40                    sub    rsp,0x40
2d2c4e  48 8b d9                       mov    rbx,rcx
2d2c51  41 8b f8                       mov    edi,r8d
2d2c54  48 8b ca                       mov    rcx,rdx
2d2c57  e8 90 ab ff ff                 call   0x2cd7ec
2d2c5c  48 8b c8                       mov    rcx,rax
2d2c5f  e8 f0 36 00 00                 call   0x2d6354
2d2c64  4c 8b c0                       mov    r8,rax
2d2c67  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d2c6c  48 8b cb                       mov    rcx,rbx
2d2c6f  e8 5c 5d 00 00                 call   0x2d89d0
2d2c74  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2c79  e8 5a 5e 00 00                 call   0x2d8ad8
2d2c7e  48 85 c0                       test   rax,rax
2d2c81  74 14                          je     0x2d2c97
2d2c83  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2c88  e8 5f ab ff ff                 call   0x2cd7ec
2d2c8d  48 8b c8                       mov    rcx,rax
2d2c90  e8 57 5c 0f 00                 call   0x3c88ec
2d2c95  8b f8                          mov    edi,eax
2d2c97  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2c9c  e8 53 98 ff ff                 call   0x2cc4f4
2d2ca1  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
2d2ca6  8b c7                          mov    eax,edi
2d2ca8  48 83 c4 40                    add    rsp,0x40
2d2cac  5f                             pop    rdi
2d2cad  c3                             ret

; pdata function 0x2d2cb0..0x2d2d21 unwind=0x3d243c
2d2cb0  40 53                          rex push rbx
2d2cb2  48 83 ec 50                    sub    rsp,0x50
2d2cb6  48 8b d9                       mov    rbx,rcx
2d2cb9  0f 29 74 24 40                 movaps XMMWORD PTR [rsp+0x40],xmm6
2d2cbe  48 8b ca                       mov    rcx,rdx
2d2cc1  0f 28 f2                       movaps xmm6,xmm2
2d2cc4  e8 23 ab ff ff                 call   0x2cd7ec
2d2cc9  48 8b c8                       mov    rcx,rax
2d2ccc  e8 83 36 00 00                 call   0x2d6354
2d2cd1  4c 8b c0                       mov    r8,rax
2d2cd4  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d2cd9  48 8b cb                       mov    rcx,rbx
2d2cdc  e8 ef 5c 00 00                 call   0x2d89d0
2d2ce1  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2ce6  e8 ed 5d 00 00                 call   0x2d8ad8
2d2ceb  48 85 c0                       test   rax,rax
2d2cee  74 19                          je     0x2d2d09
2d2cf0  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2cf5  e8 f2 aa ff ff                 call   0x2cd7ec
2d2cfa  48 8b c8                       mov    rcx,rax
2d2cfd  e8 ee 5a 0f 00                 call   0x3c87f0
2d2d02  0f 57 f6                       xorps  xmm6,xmm6
2d2d05  f2 0f 5a f0                    cvtsd2ss xmm6,xmm0
2d2d09  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2d0e  e8 e1 97 ff ff                 call   0x2cc4f4
2d2d13  0f 28 c6                       movaps xmm0,xmm6
2d2d16  0f 28 74 24 40                 movaps xmm6,XMMWORD PTR [rsp+0x40]
2d2d1b  48 83 c4 50                    add    rsp,0x50
2d2d1f  5b                             pop    rbx
2d2d20  c3                             ret

; pdata function 0x2d2d24..0x2d2eb9 unwind=0x3d2468
2d2d24  48 8b c4                       mov    rax,rsp
2d2d27  55                             push   rbp
2d2d28  53                             push   rbx
2d2d29  56                             push   rsi
2d2d2a  57                             push   rdi
2d2d2b  48 8d 68 a1                    lea    rbp,[rax-0x5f]
2d2d2f  48 81 ec c8 00 00 00           sub    rsp,0xc8
2d2d36  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
2d2d3a  48 8b d9                       mov    rbx,rcx
2d2d3d  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
2d2d41  49 8b c8                       mov    rcx,r8
2d2d44  44 0f 29 40 a8                 movaps XMMWORD PTR [rax-0x58],xmm8
2d2d49  49 8b f1                       mov    rsi,r9
2d2d4c  48 8b fa                       mov    rdi,rdx
2d2d4f  e8 98 aa ff ff                 call   0x2cd7ec
2d2d54  48 8b c8                       mov    rcx,rax
2d2d57  e8 f8 35 00 00                 call   0x2d6354
2d2d5c  4c 8b c0                       mov    r8,rax
2d2d5f  48 8d 55 c7                    lea    rdx,[rbp-0x39]
2d2d63  48 8b cb                       mov    rcx,rbx
2d2d66  e8 65 5c 00 00                 call   0x2d89d0
2d2d6b  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2d2d6f  e8 20 59 00 00                 call   0x2d8694
2d2d74  84 c0                          test   al,al
2d2d76  74 0c                          je     0x2d2d84
2d2d78  0f 10 06                       movups xmm0,XMMWORD PTR [rsi]
2d2d7b  f3 0f 7f 07                    movdqu XMMWORD PTR [rdi],xmm0
2d2d7f  e9 0a 01 00 00                 jmp    0x2d2e8e
2d2d84  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2d2d88  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2d2d8c  e8 2b 22 00 00                 call   0x2d4fbc ; STRING getter=0x2d4fbc ;
2d2d91  48 8b c8                       mov    rcx,rax
2d2d94  e8 cb 56 00 00                 call   0x2d8464
2d2d99  48 8b d0                       mov    rdx,rax
2d2d9c  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d2da0  e8 27 95 ff ff                 call   0x2cc2cc
2d2da5  4c 8d 45 e7                    lea    r8,[rbp-0x19]
2d2da9  48 8d 55 c7                    lea    rdx,[rbp-0x39]
2d2dad  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2db1  e8 46 66 00 00                 call   0x2d93fc
2d2db6  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d2dba  e8 35 97 ff ff                 call   0x2cc4f4
2d2dbf  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2dc3  e8 20 66 00 00                 call   0x2d93e8
2d2dc8  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2dcc  48 83 f8 04                    cmp    rax,0x4
2d2dd0  74 0c                          je     0x2d2dde
2d2dd2  0f 10 06                       movups xmm0,XMMWORD PTR [rsi]
2d2dd5  f3 0f 7f 07                    movdqu XMMWORD PTR [rdi],xmm0
2d2dd9  e9 ab 00 00 00                 jmp    0x2d2e89
2d2dde  33 d2                          xor    edx,edx
2d2de0  e8 3b 1f 00 00                 call   0x2d4d20
2d2de5  48 8b c8                       mov    rcx,rax
2d2de8  e8 ff a9 ff ff                 call   0x2cd7ec
2d2ded  48 8b c8                       mov    rcx,rax
2d2df0  e8 fb 59 0f 00                 call   0x3c87f0
2d2df5  45 0f 57 c0                    xorps  xmm8,xmm8
2d2df9  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2dfd  ba 01 00 00 00                 mov    edx,0x1
2d2e02  f2 44 0f 5a c0                 cvtsd2ss xmm8,xmm0
2d2e07  e8 14 1f 00 00                 call   0x2d4d20
2d2e0c  48 8b c8                       mov    rcx,rax
2d2e0f  e8 d8 a9 ff ff                 call   0x2cd7ec
2d2e14  48 8b c8                       mov    rcx,rax
2d2e17  e8 d4 59 0f 00                 call   0x3c87f0
2d2e1c  0f 57 ff                       xorps  xmm7,xmm7
2d2e1f  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2e23  ba 02 00 00 00                 mov    edx,0x2
2d2e28  f2 0f 5a f8                    cvtsd2ss xmm7,xmm0
2d2e2c  e8 ef 1e 00 00                 call   0x2d4d20
2d2e31  48 8b c8                       mov    rcx,rax
2d2e34  e8 b3 a9 ff ff                 call   0x2cd7ec
2d2e39  48 8b c8                       mov    rcx,rax
2d2e3c  e8 af 59 0f 00                 call   0x3c87f0
2d2e41  0f 57 f6                       xorps  xmm6,xmm6
2d2e44  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2e48  ba 03 00 00 00                 mov    edx,0x3
2d2e4d  f2 0f 5a f0                    cvtsd2ss xmm6,xmm0
2d2e51  e8 ca 1e 00 00                 call   0x2d4d20
2d2e56  48 8b c8                       mov    rcx,rax
2d2e59  e8 8e a9 ff ff                 call   0x2cd7ec
2d2e5e  48 8b c8                       mov    rcx,rax
2d2e61  e8 8a 59 0f 00                 call   0x3c87f0
2d2e66  0f 57 e4                       xorps  xmm4,xmm4
2d2e69  0f 28 de                       movaps xmm3,xmm6
2d2e6c  f2 0f 5a e0                    cvtsd2ss xmm4,xmm0
2d2e70  48 8b cf                       mov    rcx,rdi
2d2e73  0f 28 d7                       movaps xmm2,xmm7
2d2e76  41 0f 28 c8                    movaps xmm1,xmm8
2d2e7a  f3 0f 11 64 24 20              movss  DWORD PTR [rsp+0x20],xmm4
2d2e80  e8 c7 19 00 00                 call   0x2d484c
2d2e85  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d2e89  e8 f2 1b 00 00                 call   0x2d4a80
2d2e8e  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2d2e92  e8 5d 96 ff ff                 call   0x2cc4f4
2d2e97  4c 8d 9c 24 c8 00 00 00        lea    r11,[rsp+0xc8]
2d2e9f  48 8b c7                       mov    rax,rdi
2d2ea2  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
2d2ea7  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
2d2eac  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
2d2eb1  49 8b e3                       mov    rsp,r11
2d2eb4  5f                             pop    rdi
2d2eb5  5e                             pop    rsi
2d2eb6  5b                             pop    rbx
2d2eb7  5d                             pop    rbp
2d2eb8  c3                             ret

; pdata function 0x2d2ebc..0x2d2f37 unwind=0x3d2448
2d2ebc  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d2ec1  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d2ec6  57                             push   rdi
2d2ec7  48 83 ec 40                    sub    rsp,0x40
2d2ecb  48 8b d9                       mov    rbx,rcx
2d2ece  49 8b f9                       mov    rdi,r9
2d2ed1  49 8b c8                       mov    rcx,r8
2d2ed4  48 8b f2                       mov    rsi,rdx
2d2ed7  e8 10 a9 ff ff                 call   0x2cd7ec
2d2edc  48 8b c8                       mov    rcx,rax
2d2edf  e8 70 34 00 00                 call   0x2d6354
2d2ee4  4c 8b c0                       mov    r8,rax
2d2ee7  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d2eec  48 8b cb                       mov    rcx,rbx
2d2eef  e8 dc 5a 00 00                 call   0x2d89d0
2d2ef4  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2ef9  e8 da 5b 00 00                 call   0x2d8ad8
2d2efe  48 85 c0                       test   rax,rax
2d2f01  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d2f06  48 8b ce                       mov    rcx,rsi
2d2f09  48 0f 44 d7                    cmove  rdx,rdi
2d2f0d  e8 72 93 ff ff                 call   0x2cc284
2d2f12  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
2d2f17  e8 d8 95 ff ff                 call   0x2cc4f4
2d2f1c  48 8b cf                       mov    rcx,rdi
2d2f1f  e8 d0 95 ff ff                 call   0x2cc4f4
2d2f24  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
2d2f29  48 8b c6                       mov    rax,rsi
2d2f2c  48 8b 74 24 58                 mov    rsi,QWORD PTR [rsp+0x58]
2d2f31  48 83 c4 40                    add    rsp,0x40
2d2f35  5f                             pop    rdi
2d2f36  c3                             ret

; pdata function 0x2d3004..0x2d3151 unwind=0x3d2494
2d3004  40 55                          rex push rbp
2d3006  53                             push   rbx
2d3007  56                             push   rsi
2d3008  57                             push   rdi
2d3009  41 56                          push   r14
2d300b  48 8d 6c 24 c9                 lea    rbp,[rsp-0x37]
2d3010  48 81 ec b0 00 00 00           sub    rsp,0xb0
2d3017  48 8b d9                       mov    rbx,rcx
2d301a  49 8b f1                       mov    rsi,r9
2d301d  49 8b c8                       mov    rcx,r8
2d3020  48 8b fa                       mov    rdi,rdx
2d3023  e8 c4 a7 ff ff                 call   0x2cd7ec
2d3028  48 8b c8                       mov    rcx,rax
2d302b  e8 24 33 00 00                 call   0x2d6354
2d3030  4c 8b c0                       mov    r8,rax
2d3033  48 8d 55 af                    lea    rdx,[rbp-0x51]
2d3037  48 8b cb                       mov    rcx,rbx
2d303a  e8 91 59 00 00                 call   0x2d89d0
2d303f  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d3043  e8 4c 56 00 00                 call   0x2d8694
2d3048  84 c0                          test   al,al
2d304a  0f 85 d4 00 00 00              jne    0x2d3124
2d3050  48 8d 55 cf                    lea    rdx,[rbp-0x31]
2d3054  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2d3058  e8 93 1e 00 00                 call   0x2d4ef0 ; STRING getter=0x2d4ef0 EMPTY
2d305d  48 8b c8                       mov    rcx,rax
2d3060  e8 77 54 00 00                 call   0x2d84dc
2d3065  48 8b d0                       mov    rdx,rax
2d3068  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d306c  e8 c7 be ff ff                 call   0x2cef38
2d3071  84 c0                          test   al,al
2d3073  0f 85 ab 00 00 00              jne    0x2d3124
2d3079  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2d307d  48 8d 4d a7                    lea    rcx,[rbp-0x59]
2d3081  e8 52 21 00 00                 call   0x2d51d8 ; STRING getter=0x2d51d8 ,
2d3086  48 8b c8                       mov    rcx,rax
2d3089  e8 d6 53 00 00                 call   0x2d8464
2d308e  48 8b d0                       mov    rdx,rax
2d3091  48 8d 4d 0f                    lea    rcx,[rbp+0xf]
2d3095  e8 32 92 ff ff                 call   0x2cc2cc
2d309a  4c 8d 45 0f                    lea    r8,[rbp+0xf]
2d309e  48 8d 55 af                    lea    rdx,[rbp-0x51]
2d30a2  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d30a6  e8 51 63 00 00                 call   0x2d93fc
2d30ab  48 8d 4d 0f                    lea    rcx,[rbp+0xf]
2d30af  e8 40 94 ff ff                 call   0x2cc4f4
2d30b4  48 8d 4d ef                    lea    rcx,[rbp-0x11]
2d30b8  e8 df 16 00 00                 call   0x2d479c
2d30bd  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d30c1  e8 fa 48 00 00                 call   0x2d79c0
2d30c6  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d30ca  4c 8b f0                       mov    r14,rax
2d30cd  e8 a6 e8 ff ff                 call   0x2d1978
2d30d2  48 8b d8                       mov    rbx,rax
2d30d5  49 3b c6                       cmp    rax,r14
2d30d8  74 2a                          je     0x2d3104
2d30da  33 d2                          xor    edx,edx
2d30dc  48 8b cb                       mov    rcx,rbx
2d30df  44 8d 42 0a                    lea    r8d,[rdx+0xa]
2d30e3  e8 d8 5b 00 00                 call   0x2d8cc0
2d30e8  85 c0                          test   eax,eax
2d30ea  48 8d 55 a7                    lea    rdx,[rbp-0x59]
2d30ee  48 8d 4d ef                    lea    rcx,[rbp-0x11]
2d30f2  0f 95 45 a7                    setne  BYTE PTR [rbp-0x59]
2d30f6  e8 29 5f 00 00                 call   0x2d9024
2d30fb  48 83 c3 20                    add    rbx,0x20
2d30ff  49 3b de                       cmp    rbx,r14
2d3102  75 d6                          jne    0x2d30da
2d3104  48 8d 55 ef                    lea    rdx,[rbp-0x11]
2d3108  48 8b cf                       mov    rcx,rdi
2d310b  e8 64 16 00 00                 call   0x2d4774
2d3110  48 8d 4d ef                    lea    rcx,[rbp-0x11]
2d3114  e8 6f 19 00 00                 call   0x2d4a88
2d3119  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d311d  e8 5e 19 00 00                 call   0x2d4a80
2d3122  eb 0b                          jmp    0x2d312f
2d3124  48 8b d6                       mov    rdx,rsi
2d3127  48 8b cf                       mov    rcx,rdi
2d312a  e8 45 16 00 00                 call   0x2d4774
2d312f  48 8d 4d af                    lea    rcx,[rbp-0x51]
2d3133  e8 bc 93 ff ff                 call   0x2cc4f4
2d3138  48 8b ce                       mov    rcx,rsi
2d313b  e8 48 19 00 00                 call   0x2d4a88
2d3140  48 8b c7                       mov    rax,rdi
2d3143  48 81 c4 b0 00 00 00           add    rsp,0xb0
2d314a  41 5e                          pop    r14
2d314c  5f                             pop    rdi
2d314d  5e                             pop    rsi
2d314e  5b                             pop    rbx
2d314f  5d                             pop    rbp
2d3150  c3                             ret

; pdata function 0x2d3154..0x2d3292 unwind=0x3d24f0
2d3154  48 8b c4                       mov    rax,rsp
2d3157  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2d315b  48 89 78 10                    mov    QWORD PTR [rax+0x10],rdi
2d315f  55                             push   rbp
2d3160  48 8d 68 a1                    lea    rbp,[rax-0x5f]
2d3164  48 81 ec a0 00 00 00           sub    rsp,0xa0
2d316b  48 8b d9                       mov    rbx,rcx
2d316e  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
2d3172  49 8b c8                       mov    rcx,r8
2d3175  48 8b fa                       mov    rdi,rdx
2d3178  66 49 0f 6e f1                 movq   xmm6,r9
2d317d  e8 6a a6 ff ff                 call   0x2cd7ec
2d3182  48 8b c8                       mov    rcx,rax
2d3185  e8 ca 31 00 00                 call   0x2d6354
2d318a  4c 8b c0                       mov    r8,rax
2d318d  48 8d 55 ff                    lea    rdx,[rbp-0x1]
2d3191  48 8b cb                       mov    rcx,rbx
2d3194  e8 37 58 00 00                 call   0x2d89d0
2d3199  48 8d 4d ff                    lea    rcx,[rbp-0x1]
2d319d  e8 36 59 00 00                 call   0x2d8ad8
2d31a2  48 85 c0                       test   rax,rax
2d31a5  75 09                          jne    0x2d31b0
2d31a7  f2 0f 11 37                    movsd  QWORD PTR [rdi],xmm6
2d31ab  e9 bc 00 00 00                 jmp    0x2d326c
2d31b0  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2d31b4  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d31b8  e8 ff 1d 00 00                 call   0x2d4fbc ; STRING getter=0x2d4fbc ;
2d31bd  48 8b c8                       mov    rcx,rax
2d31c0  e8 9f 52 00 00                 call   0x2d8464
2d31c5  48 8b d0                       mov    rdx,rax
2d31c8  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
2d31cc  e8 fb 90 ff ff                 call   0x2cc2cc
2d31d1  4c 8d 45 1f                    lea    r8,[rbp+0x1f]
2d31d5  48 8d 55 ff                    lea    rdx,[rbp-0x1]
2d31d9  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d31dd  e8 1a 62 00 00                 call   0x2d93fc
2d31e2  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
2d31e6  e8 09 93 ff ff                 call   0x2cc4f4
2d31eb  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d31ef  e8 f4 61 00 00                 call   0x2d93e8
2d31f4  48 83 f8 02                    cmp    rax,0x2
2d31f8  74 06                          je     0x2d3200
2d31fa  f2 0f 11 37                    movsd  QWORD PTR [rdi],xmm6
2d31fe  eb 63                          jmp    0x2d3263
2d3200  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d3204  e8 9b 81 ff ff                 call   0x2cb3a4
2d3209  33 d2                          xor    edx,edx
2d320b  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d320f  e8 0c 1b 00 00                 call   0x2d4d20
2d3214  48 8b c8                       mov    rcx,rax
2d3217  e8 d0 a5 ff ff                 call   0x2cd7ec
2d321c  48 8b c8                       mov    rcx,rax
2d321f  e8 cc 55 0f 00                 call   0x3c87f0
2d3224  0f 57 c9                       xorps  xmm1,xmm1
2d3227  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d322b  f2 0f 5a c8                    cvtsd2ss xmm1,xmm0
2d322f  ba 01 00 00 00                 mov    edx,0x1
2d3234  f3 0f 11 4d df                 movss  DWORD PTR [rbp-0x21],xmm1
2d3239  e8 e2 1a 00 00                 call   0x2d4d20
2d323e  48 8b c8                       mov    rcx,rax
2d3241  e8 a6 a5 ff ff                 call   0x2cd7ec
2d3246  48 8b c8                       mov    rcx,rax
2d3249  e8 a2 55 0f 00                 call   0x3c87f0
2d324e  0f 57 c9                       xorps  xmm1,xmm1
2d3251  f2 0f 5a c8                    cvtsd2ss xmm1,xmm0
2d3255  f3 0f 11 4d e3                 movss  DWORD PTR [rbp-0x1d],xmm1
2d325a  f2 0f 10 55 df                 movsd  xmm2,QWORD PTR [rbp-0x21]
2d325f  f2 0f 11 17                    movsd  QWORD PTR [rdi],xmm2
2d3263  48 8d 4d e7                    lea    rcx,[rbp-0x19]
2d3267  e8 14 18 00 00                 call   0x2d4a80
2d326c  48 8d 4d ff                    lea    rcx,[rbp-0x1]
2d3270  e8 7f 92 ff ff                 call   0x2cc4f4
2d3275  4c 8d 9c 24 a0 00 00 00        lea    r11,[rsp+0xa0]
2d327d  48 8b c7                       mov    rax,rdi
2d3280  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
2d3284  49 8b 7b 18                    mov    rdi,QWORD PTR [r11+0x18]
2d3288  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
2d328d  49 8b e3                       mov    rsp,r11
2d3290  5d                             pop    rbp
2d3291  c3                             ret

; pdata function 0x2d3294..0x2d33ee unwind=0x3d2458
2d3294  40 55                          rex push rbp
2d3296  53                             push   rbx
2d3297  56                             push   rsi
2d3298  57                             push   rdi
2d3299  48 8d 6c 24 c1                 lea    rbp,[rsp-0x3f]
2d329e  48 81 ec 88 00 00 00           sub    rsp,0x88
2d32a5  48 8b d9                       mov    rbx,rcx
2d32a8  49 8b f1                       mov    rsi,r9
2d32ab  49 8b c8                       mov    rcx,r8
2d32ae  48 8b fa                       mov    rdi,rdx
2d32b1  e8 36 a5 ff ff                 call   0x2cd7ec
2d32b6  48 8b c8                       mov    rcx,rax
2d32b9  e8 96 30 00 00                 call   0x2d6354
2d32be  4c 8b c0                       mov    r8,rax
2d32c1  48 8d 55 f7                    lea    rdx,[rbp-0x9]
2d32c5  48 8b cb                       mov    rcx,rbx
2d32c8  e8 03 57 00 00                 call   0x2d89d0
2d32cd  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2d32d1  e8 02 58 00 00                 call   0x2d8ad8
2d32d6  48 85 c0                       test   rax,rax
2d32d9  75 13                          jne    0x2d32ee
2d32db  f2 0f 10 06                    movsd  xmm0,QWORD PTR [rsi]
2d32df  8b 46 08                       mov    eax,DWORD PTR [rsi+0x8]
2d32e2  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
2d32e6  89 47 08                       mov    DWORD PTR [rdi+0x8],eax
2d32e9  e9 e8 00 00 00                 jmp    0x2d33d6
2d32ee  48 8d 55 d7                    lea    rdx,[rbp-0x29]
2d32f2  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d32f6  e8 c1 1c 00 00                 call   0x2d4fbc ; STRING getter=0x2d4fbc ;
2d32fb  48 8b c8                       mov    rcx,rax
2d32fe  e8 61 51 00 00                 call   0x2d8464
2d3303  48 8b d0                       mov    rdx,rax
2d3306  48 8d 4d 17                    lea    rcx,[rbp+0x17]
2d330a  e8 bd 8f ff ff                 call   0x2cc2cc
2d330f  4c 8d 45 17                    lea    r8,[rbp+0x17]
2d3313  48 8d 55 f7                    lea    rdx,[rbp-0x9]
2d3317  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d331b  e8 dc 60 00 00                 call   0x2d93fc
2d3320  48 8d 4d 17                    lea    rcx,[rbp+0x17]
2d3324  e8 cb 91 ff ff                 call   0x2cc4f4
2d3329  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d332d  e8 b6 60 00 00                 call   0x2d93e8
2d3332  48 83 f8 03                    cmp    rax,0x3
2d3336  74 13                          je     0x2d334b
2d3338  f2 0f 10 06                    movsd  xmm0,QWORD PTR [rsi]
2d333c  8b 46 08                       mov    eax,DWORD PTR [rsi+0x8]
2d333f  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
2d3343  89 47 08                       mov    DWORD PTR [rdi+0x8],eax
2d3346  e9 82 00 00 00                 jmp    0x2d33cd
2d334b  48 8b cf                       mov    rcx,rdi
2d334e  e8 69 48 0f 00                 call   0x3c7bbc
2d3353  33 d2                          xor    edx,edx
2d3355  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d3359  e8 c2 19 00 00                 call   0x2d4d20
2d335e  48 8b c8                       mov    rcx,rax
2d3361  e8 86 a4 ff ff                 call   0x2cd7ec
2d3366  48 8b c8                       mov    rcx,rax
2d3369  e8 82 54 0f 00                 call   0x3c87f0
2d336e  0f 57 c9                       xorps  xmm1,xmm1
2d3371  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d3375  f2 0f 5a c8                    cvtsd2ss xmm1,xmm0
2d3379  ba 01 00 00 00                 mov    edx,0x1
2d337e  f3 0f 11 0f                    movss  DWORD PTR [rdi],xmm1
2d3382  e8 99 19 00 00                 call   0x2d4d20
2d3387  48 8b c8                       mov    rcx,rax
2d338a  e8 5d a4 ff ff                 call   0x2cd7ec
2d338f  48 8b c8                       mov    rcx,rax
2d3392  e8 59 54 0f 00                 call   0x3c87f0
2d3397  0f 57 c9                       xorps  xmm1,xmm1
2d339a  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d339e  f2 0f 5a c8                    cvtsd2ss xmm1,xmm0
2d33a2  ba 02 00 00 00                 mov    edx,0x2
2d33a7  f3 0f 11 4f 04                 movss  DWORD PTR [rdi+0x4],xmm1
2d33ac  e8 6f 19 00 00                 call   0x2d4d20
2d33b1  48 8b c8                       mov    rcx,rax
2d33b4  e8 33 a4 ff ff                 call   0x2cd7ec
2d33b9  48 8b c8                       mov    rcx,rax
2d33bc  e8 2f 54 0f 00                 call   0x3c87f0
2d33c1  0f 57 c9                       xorps  xmm1,xmm1
2d33c4  f2 0f 5a c8                    cvtsd2ss xmm1,xmm0
2d33c8  f3 0f 11 4f 08                 movss  DWORD PTR [rdi+0x8],xmm1
2d33cd  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d33d1  e8 aa 16 00 00                 call   0x2d4a80
2d33d6  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2d33da  e8 15 91 ff ff                 call   0x2cc4f4
2d33df  48 8b c7                       mov    rax,rdi
2d33e2  48 81 c4 88 00 00 00           add    rsp,0x88
2d33e9  5f                             pop    rdi
2d33ea  5e                             pop    rsi
2d33eb  5b                             pop    rbx
2d33ec  5d                             pop    rbp
2d33ed  c3                             ret

; pdata function 0x2d33f0..0x2d3560 unwind=0x3d2458
2d33f0  40 55                          rex push rbp
2d33f2  53                             push   rbx
2d33f3  56                             push   rsi
2d33f4  57                             push   rdi
2d33f5  48 8d 6c 24 c1                 lea    rbp,[rsp-0x3f]
2d33fa  48 81 ec 88 00 00 00           sub    rsp,0x88
2d3401  48 8b d9                       mov    rbx,rcx
2d3404  49 8b f1                       mov    rsi,r9
2d3407  49 8b c8                       mov    rcx,r8
2d340a  48 8b fa                       mov    rdi,rdx
2d340d  e8 da a3 ff ff                 call   0x2cd7ec
2d3412  48 8b c8                       mov    rcx,rax
2d3415  e8 3a 2f 00 00                 call   0x2d6354
2d341a  4c 8b c0                       mov    r8,rax
2d341d  48 8d 55 f7                    lea    rdx,[rbp-0x9]
2d3421  48 8b cb                       mov    rcx,rbx
2d3424  e8 a7 55 00 00                 call   0x2d89d0
2d3429  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2d342d  e8 62 52 00 00                 call   0x2d8694
2d3432  84 c0                          test   al,al
2d3434  0f 85 00 01 00 00              jne    0x2d353a
2d343a  48 8d 55 d8                    lea    rdx,[rbp-0x28]
2d343e  48 8d 4d d7                    lea    rcx,[rbp-0x29]
2d3442  e8 c1 1a 00 00                 call   0x2d4f08 ; STRING getter=0x2d4f08 EMPTY
2d3447  48 8b c8                       mov    rcx,rax
2d344a  e8 8d 50 00 00                 call   0x2d84dc
2d344f  48 8b d0                       mov    rdx,rax
2d3452  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2d3456  e8 dd ba ff ff                 call   0x2cef38
2d345b  84 c0                          test   al,al
2d345d  0f 85 d7 00 00 00              jne    0x2d353a
2d3463  48 8d 15 76 a1 fb ff           lea    rdx,[rip+0xfffffffffffba176]        # 0x28d5e0
2d346a  48 8d 4d 17                    lea    rcx,[rbp+0x17]
2d346e  e8 59 8e ff ff                 call   0x2cc2cc
2d3473  4c 8d 45 17                    lea    r8,[rbp+0x17]
2d3477  48 8d 55 f7                    lea    rdx,[rbp-0x9]
2d347b  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d347f  e8 78 5f 00 00                 call   0x2d93fc
2d3484  48 8d 4d 17                    lea    rcx,[rbp+0x17]
2d3488  e8 67 90 ff ff                 call   0x2cc4f4
2d348d  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d3491  e8 52 5f 00 00                 call   0x2d93e8
2d3496  f2 0f 10 06                    movsd  xmm0,QWORD PTR [rsi]
2d349a  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d349e  48 83 f8 04                    cmp    rax,0x4
2d34a2  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
2d34a6  8b 46 08                       mov    eax,DWORD PTR [rsi+0x8]
2d34a9  89 47 08                       mov    DWORD PTR [rdi+0x8],eax
2d34ac  73 0a                          jae    0x2d34b8
2d34ae  e8 cd 15 00 00                 call   0x2d4a80
2d34b3  e9 90 00 00 00                 jmp    0x2d3548
2d34b8  33 d2                          xor    edx,edx
2d34ba  e8 61 18 00 00                 call   0x2d4d20
2d34bf  bb 0a 00 00 00                 mov    ebx,0xa
2d34c4  48 8b c8                       mov    rcx,rax
2d34c7  44 8b c3                       mov    r8d,ebx
2d34ca  33 d2                          xor    edx,edx
2d34cc  e8 ef 57 00 00                 call   0x2d8cc0
2d34d1  8d 53 f7                       lea    edx,[rbx-0x9]
2d34d4  89 07                          mov    DWORD PTR [rdi],eax
2d34d6  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d34da  e8 41 18 00 00                 call   0x2d4d20
2d34df  48 8b c8                       mov    rcx,rax
2d34e2  44 8b c3                       mov    r8d,ebx
2d34e5  33 d2                          xor    edx,edx
2d34e7  e8 d4 57 00 00                 call   0x2d8cc0
2d34ec  85 c0                          test   eax,eax
2d34ee  8d 53 f8                       lea    edx,[rbx-0x8]
2d34f1  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d34f5  0f 95 c0                       setne  al
2d34f8  88 47 08                       mov    BYTE PTR [rdi+0x8],al
2d34fb  e8 20 18 00 00                 call   0x2d4d20
2d3500  48 8b c8                       mov    rcx,rax
2d3503  44 8b c3                       mov    r8d,ebx
2d3506  33 d2                          xor    edx,edx
2d3508  e8 b3 57 00 00                 call   0x2d8cc0
2d350d  8d 53 f9                       lea    edx,[rbx-0x7]
2d3510  89 47 04                       mov    DWORD PTR [rdi+0x4],eax
2d3513  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d3517  e8 04 18 00 00                 call   0x2d4d20
2d351c  48 8b c8                       mov    rcx,rax
2d351f  44 8b c3                       mov    r8d,ebx
2d3522  33 d2                          xor    edx,edx
2d3524  e8 97 57 00 00                 call   0x2d8cc0
2d3529  85 c0                          test   eax,eax
2d352b  48 8d 4d df                    lea    rcx,[rbp-0x21]
2d352f  0f 95 c0                       setne  al
2d3532  88 47 09                       mov    BYTE PTR [rdi+0x9],al
2d3535  e9 74 ff ff ff                 jmp    0x2d34ae
2d353a  f2 0f 10 06                    movsd  xmm0,QWORD PTR [rsi]
2d353e  8b 46 08                       mov    eax,DWORD PTR [rsi+0x8]
2d3541  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
2d3545  89 47 08                       mov    DWORD PTR [rdi+0x8],eax
2d3548  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2d354c  e8 a3 8f ff ff                 call   0x2cc4f4
2d3551  48 8b c7                       mov    rax,rdi
2d3554  48 81 c4 88 00 00 00           add    rsp,0x88
2d355b  5f                             pop    rdi
2d355c  5e                             pop    rsi
2d355d  5b                             pop    rbx
2d355e  5d                             pop    rbp
2d355f  c3                             ret

; pdata function 0x2d89d0..0x2d8a43 unwind=0x3d2388
2d89d0  48 8b c4                       mov    rax,rsp
2d89d3  48 89 58 10                    mov    QWORD PTR [rax+0x10],rbx
2d89d7  44 89 40 18                    mov    DWORD PTR [rax+0x18],r8d
2d89db  57                             push   rdi
2d89dc  48 83 ec 20                    sub    rsp,0x20
2d89e0  48 8d 59 40                    lea    rbx,[rcx+0x40]
2d89e4  48 8b fa                       mov    rdi,rdx
2d89e7  48 8b cb                       mov    rcx,rbx
2d89ea  4c 8d 40 18                    lea    r8,[rax+0x18]
2d89ee  48 8d 50 08                    lea    rdx,[rax+0x8]
2d89f2  e8 89 fe ff ff                 call   0x2d8880
2d89f7  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
2d89fc  48 8b cb                       mov    rcx,rbx
2d89ff  e8 b4 fc ff ff                 call   0x2d86b8
2d8a04  48 8b d0                       mov    rdx,rax
2d8a07  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2d8a0c  e8 23 3b ff ff                 call   0x2cc534
2d8a11  84 c0                          test   al,al
2d8a13  75 18                          jne    0x2d8a2d
2d8a15  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2d8a1a  e8 81 c3 ff ff                 call   0x2d4da0
2d8a1f  48 8b cf                       mov    rcx,rdi
2d8a22  48 8d 50 08                    lea    rdx,[rax+0x8]
2d8a26  e8 69 b7 ff ff                 call   0x2d4194
2d8a2b  eb 08                          jmp    0x2d8a35
2d8a2d  48 8b cf                       mov    rcx,rdi
2d8a30  e8 2b bb ff ff                 call   0x2d4560
2d8a35  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
2d8a3a  48 8b c7                       mov    rax,rdi
2d8a3d  48 83 c4 20                    add    rsp,0x20
2d8a41  5f                             pop    rdi
2d8a42  c3                             ret

