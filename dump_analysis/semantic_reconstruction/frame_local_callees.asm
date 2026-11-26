; pdata function 0x2e0e4c..0x2e0e99 unwind=0x3d2064
2e0e4c  48 83 ec 28                    sub    rsp,0x28
2e0e50  48 8b 05 a9 60 0f 00           mov    rax,QWORD PTR [rip+0xf60a9]        # 0x3d6f00
2e0e57  48 8b 90 20 93 06 0f           mov    rdx,QWORD PTR [rax+0xf069320]
2e0e5e  48 8b ca                       mov    rcx,rdx
2e0e61  e8 a2 a0 fe ff                 call   0x2caf08
2e0e66  84 c0                          test   al,al
2e0e68  74 28                          je     0x2e0e92
2e0e6a  48 8b 92 b8 00 00 00           mov    rdx,QWORD PTR [rdx+0xb8]
2e0e71  48 8b ca                       mov    rcx,rdx
2e0e74  e8 8f a0 fe ff                 call   0x2caf08
2e0e79  84 c0                          test   al,al
2e0e7b  74 15                          je     0x2e0e92
2e0e7d  48 8b 52 20                    mov    rdx,QWORD PTR [rdx+0x20]
2e0e81  48 8b ca                       mov    rcx,rdx
2e0e84  e8 7f a0 fe ff                 call   0x2caf08
2e0e89  84 c0                          test   al,al
2e0e8b  74 05                          je     0x2e0e92
2e0e8d  8a 42 20                       mov    al,BYTE PTR [rdx+0x20]
2e0e90  eb 02                          jmp    0x2e0e94
2e0e92  32 c0                          xor    al,al
2e0e94  48 83 c4 28                    add    rsp,0x28
2e0e98  c3                             ret

; pdata function 0x315924..0x315a23 unwind=0x3d2998
315924  40 53                          rex push rbx
315926  56                             push   rsi
315927  57                             push   rdi
315928  48 83 ec 50                    sub    rsp,0x50
31592c  8b 05 de 0a 0d 00              mov    eax,DWORD PTR [rip+0xd0ade]        # 0x3e6410
315932  a8 01                          test   al,0x1
315934  0f 85 a5 00 00 00              jne    0x3159df
31593a  83 c8 01                       or     eax,0x1
31593d  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
315942  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
315947  89 05 c3 0a 0d 00              mov    DWORD PTR [rip+0xd0ac3],eax        # 0x3e6410
31594d  e8 de 6d fb ff                 call   0x2cc730
315952  48 8b c8                       mov    rcx,rax
315955  e8 4a 83 fb ff                 call   0x2cdca4
31595a  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31595f  48 8b f0                       mov    rsi,rax
315962  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
315967  e8 e4 e8 fd ff                 call   0x2f4250 ; STRING getter=0x2f4250 get_main
31596c  48 8b c8                       mov    rcx,rax
31596f  e8 90 2b fc ff                 call   0x2d8504
315974  48 8d 54 24 39                 lea    rdx,[rsp+0x39]
315979  48 8b f8                       mov    rdi,rax
31597c  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
315981  e8 46 dd fd ff                 call   0x2f36cc ; STRING getter=0x2f36cc UnityEngine
315986  48 8b c8                       mov    rcx,rax
315989  e8 7e 84 fb ff                 call   0x2cde0c
31598e  48 8d 94 24 80 00 00 00        lea    rdx,[rsp+0x80]
315996  48 8b d8                       mov    rbx,rax
315999  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
31599e  e8 71 c8 fd ff                 call   0x2f2214 ; STRING getter=0x2f2214 Camera
3159a3  48 8b c8                       mov    rcx,rax
3159a6  e8 65 77 fc ff                 call   0x2dd110
3159ab  48 8b c8                       mov    rcx,rax
3159ae  48 8b d3                       mov    rdx,rbx
3159b1  e8 6e e8 01 00                 call   0x334224
3159b6  41 83 c8 ff                    or     r8d,0xffffffff
3159ba  48 8b c8                       mov    rcx,rax
3159bd  4c 8b ce                       mov    r9,rsi
3159c0  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
3159c5  48 8b d7                       mov    rdx,rdi
3159c8  e8 df ef 01 00                 call   0x3349ac
3159cd  4c 8b 00                       mov    r8,QWORD PTR [rax]
3159d0  8b 05 3a 0a 0d 00              mov    eax,DWORD PTR [rip+0xd0a3a]        # 0x3e6410
3159d6  4c 89 05 2b 0a 0d 00           mov    QWORD PTR [rip+0xd0a2b],r8        # 0x3e6408
3159dd  eb 07                          jmp    0x3159e6
3159df  4c 8b 05 22 0a 0d 00           mov    r8,QWORD PTR [rip+0xd0a22]        # 0x3e6408
3159e6  a8 02                          test   al,0x2
3159e8  75 1f                          jne    0x315a09
3159ea  48 8b 0d 6f 04 0c 00           mov    rcx,QWORD PTR [rip+0xc046f]        # 0x3d5e60
3159f1  48 8d 15 28 0a 0d 00           lea    rdx,[rip+0xd0a28]        # 0x3e6420
3159f8  83 c8 02                       or     eax,0x2
3159fb  45 33 c9                       xor    r9d,r9d
3159fe  89 05 0c 0a 0d 00              mov    DWORD PTR [rip+0xd0a0c],eax        # 0x3e6410
315a04  e8 1b 63 fb ff                 call   0x2cbd24
315a09  48 8b 0d 50 04 0c 00           mov    rcx,QWORD PTR [rip+0xc0450]        # 0x3d5e60
315a10  48 8d 15 09 0a 0d 00           lea    rdx,[rip+0xd0a09]        # 0x3e6420
315a17  48 83 c4 50                    add    rsp,0x50
315a1b  5f                             pop    rdi
315a1c  5e                             pop    rsi
315a1d  5b                             pop    rbx
315a1e  e9 f5 7f fc ff                 jmp    0x2dda18

; heuristic leaf/code range 0x317c1c..0x317c3a unwind=0x0
317c1c  66 0f 7e c8                    movd   eax,xmm1
317c20  05 4e 4d b4 6b                 add    eax,0x6bb44d4e
317c25  35 2f 0f 42 c6                 xor    eax,0xc6420f2f
317c2a  c1 c8 1a                       ror    eax,0x1a
317c2d  05 fa 25 d0 17                 add    eax,0x17d025fa
317c32  48 89 81 28 04 00 00           mov    QWORD PTR [rcx+0x428],rax
317c39  c3                             ret

; pdata function 0x318f34..0x319022 unwind=0x3d2ee4
318f34  40 53                          rex push rbx
318f36  48 83 ec 30                    sub    rsp,0x30
318f3a  48 8b ca                       mov    rcx,rdx
318f3d  0f 29 74 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm6
318f42  48 8b da                       mov    rbx,rdx
318f45  e8 be 1f fb ff                 call   0x2caf08
318f4a  84 c0                          test   al,al
318f4c  0f 84 c5 00 00 00              je     0x319017
318f52  48 8b ca                       mov    rcx,rdx
318f55  e8 42 7f fc ff                 call   0x2e0e9c
318f5a  84 c0                          test   al,al
318f5c  0f 84 b5 00 00 00              je     0x319017
318f62  80 3d 2f 10 0d 00 00           cmp    BYTE PTR [rip+0xd102f],0x0        # 0x3e9f98 ; CONFIG Bools.AutoAdjustSpeed value(+0x48)
318f69  0f 84 8b 00 00 00              je     0x318ffa
318f6f  f3 0f 10 0d 21 d1 0c 00        movss  xmm1,DWORD PTR [rip+0xcd121]        # 0x3e6098
318f77  f3 0f 58 0d f9 a1 f7 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff7a1f9]        # 0x293178 ; f32=4
318f7f  f3 0f 10 05 d1 4c 0d 00        movss  xmm0,DWORD PTR [rip+0xd4cd1]        # 0x3edc58 ; CONFIG F.speedlimiter value(+0x48)
318f87  0f 2f c1                       comiss xmm0,xmm1
318f8a  76 6e                          jbe    0x318ffa
318f8c  48 8b cb                       mov    rcx,rbx
318f8f  e8 a4 12 05 00                 call   0x36a238
318f94  84 c0                          test   al,al
318f96  75 62                          jne    0x318ffa
318f98  48 8b cb                       mov    rcx,rbx
318f9b  e8 e8 22 05 00                 call   0x36b288
318fa0  84 c0                          test   al,al
318fa2  75 56                          jne    0x318ffa
318fa4  8b 0d 4e 69 0d 00              mov    ecx,DWORD PTR [rip+0xd694e]        # 0x3ef8f8 ; CONFIG K.FastVirtualKey value(+0x48)
318faa  b2 01                          mov    dl,0x1
318fac  e8 9b ce fc ff                 call   0x2e5e4c
318fb1  84 c0                          test   al,al
318fb3  74 0a                          je     0x318fbf
318fb5  f3 0f 10 35 3b 4d 0d 00        movss  xmm6,DWORD PTR [rip+0xd4d3b]        # 0x3edcf8 ; CONFIG F.FastSpeed value(+0x48)
318fbd  eb 03                          jmp    0x318fc2
318fbf  0f 57 f6                       xorps  xmm6,xmm6
318fc2  8b 0d 90 69 0d 00              mov    ecx,DWORD PTR [rip+0xd6990]        # 0x3ef958 ; CONFIG K.SlowVirtualKey value(+0x48)
318fc8  b2 01                          mov    dl,0x1
318fca  e8 7d ce fc ff                 call   0x2e5e4c
318fcf  f3 0f 10 05 c9 a2 f7 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff7a2c9]        # 0x2932a0
318fd7  84 c0                          test   al,al
318fd9  74 0b                          je     0x318fe6
318fdb  f3 0f 10 35 c5 4c 0d 00        movss  xmm6,DWORD PTR [rip+0xd4cc5]        # 0x3edca8 ; CONFIG F.SlowSpeed value(+0x48)
318fe3  0f 57 f0                       xorps  xmm6,xmm0
318fe6  0f 57 f0                       xorps  xmm6,xmm0
318fe9  c6 05 88 79 0d 00 01           mov    BYTE PTR [rip+0xd7988],0x1        # 0x3f0978
318ff0  f3 0f 11 b3 f8 07 00 00        movss  DWORD PTR [rbx+0x7f8],xmm6
318ff8  eb 1d                          jmp    0x319017
318ffa  80 3d 77 79 0d 00 00           cmp    BYTE PTR [rip+0xd7977],0x0        # 0x3f0978
319001  74 14                          je     0x319017
319003  e8 48 ff 04 00                 call   0x368f50
319008  f3 0f 11 83 f8 07 00 00        movss  DWORD PTR [rbx+0x7f8],xmm0
319010  c6 05 61 79 0d 00 00           mov    BYTE PTR [rip+0xd7961],0x0        # 0x3f0978
319017  0f 28 74 24 20                 movaps xmm6,XMMWORD PTR [rsp+0x20]
31901c  48 83 c4 30                    add    rsp,0x30
319020  5b                             pop    rbx
319021  c3                             ret

; pdata function 0x316540..0x316574 unwind=0x3d2038
316540  40 53                          rex push rbx
316542  48 83 ec 20                    sub    rsp,0x20
316546  48 8b ca                       mov    rcx,rdx
316549  48 8b da                       mov    rbx,rdx
31654c  e8 b7 49 fb ff                 call   0x2caf08
316551  84 c0                          test   al,al
316553  74 19                          je     0x31656e
316555  48 8b ca                       mov    rcx,rdx
316558  e8 3f a9 fc ff                 call   0x2e0e9c
31655d  84 c0                          test   al,al
31655f  74 0d                          je     0x31656e
316561  48 8b cb                       mov    rcx,rbx
316564  e8 8f 46 fe ff                 call   0x2fabf8
316569  e8 86 4d fe ff                 call   0x2fb2f4
31656e  48 83 c4 20                    add    rsp,0x20
316572  5b                             pop    rbx
316573  c3                             ret

; pdata function 0x2cce78..0x2ccef2 unwind=0x3d20e4
2cce78  40 53                          rex push rbx
2cce7a  48 83 ec 40                    sub    rsp,0x40
2cce7e  3a 0d dc 92 10 00              cmp    cl,BYTE PTR [rip+0x1092dc]        # 0x3d6160
2cce84  8a d9                          mov    bl,cl
2cce86  74 64                          je     0x2cceec
2cce88  84 c9                          test   cl,cl
2cce8a  75 5a                          jne    0x2ccee6
2cce8c  48 8d 0d bd 92 10 00           lea    rcx,[rip+0x1092bd]        # 0x3d6150
2cce93  e8 d4 09 00 00                 call   0x2cd86c
2cce98  8b 44 24 21                    mov    eax,DWORD PTR [rsp+0x21]
2cce9c  89 05 d7 92 10 00              mov    DWORD PTR [rip+0x1092d7],eax        # 0x3d6179
2ccea2  0f b7 44 24 25                 movzx  eax,WORD PTR [rsp+0x25]
2ccea7  66 89 05 cf 92 10 00           mov    WORD PTR [rip+0x1092cf],ax        # 0x3d617d
2cceae  8a 44 24 27                    mov    al,BYTE PTR [rsp+0x27]
2cceb2  88 05 c7 92 10 00              mov    BYTE PTR [rip+0x1092c7],al        # 0x3d617f
2cceb8  88 1d a3 92 10 00              mov    BYTE PTR [rip+0x1092a3],bl        # 0x3d6161
2ccebe  88 1d b4 92 10 00              mov    BYTE PTR [rip+0x1092b4],bl        # 0x3d6178
2ccec4  48 c7 05 b1 92 10 00 00 00 00 00 mov    QWORD PTR [rip+0x1092b1],0x0        # 0x3d6180
2ccecf  48 c7 05 ae 92 10 00 00 00 00 00 mov    QWORD PTR [rip+0x1092ae],0x0        # 0x3d6188
2cceda  88 1d 83 92 10 00              mov    BYTE PTR [rip+0x109283],bl        # 0x3d6163
2ccee0  88 1d 7c 92 10 00              mov    BYTE PTR [rip+0x10927c],bl        # 0x3d6162
2ccee6  88 1d 74 92 10 00              mov    BYTE PTR [rip+0x109274],bl        # 0x3d6160
2cceec  48 83 c4 40                    add    rsp,0x40
2ccef0  5b                             pop    rbx
2ccef1  c3                             ret

