; heuristic leaf/code range 0x2e3c50..0x2e3c82 unwind=0x0
2e3c50  8b ca                          mov    ecx,edx
2e3c52  8b c2                          mov    eax,edx
2e3c54  f7 d8                          neg    eax
2e3c56  c1 e9 1f                       shr    ecx,0x1f
2e3c59  84 c9                          test   cl,cl
2e3c5b  0f 28 d0                       movaps xmm2,xmm0
2e3c5e  f3 0f 10 05 ee 95 fa ff        movss  xmm0,DWORD PTR [rip+0xfffffffffffa95ee]        # 0x28d254 ; f32=1
2e3c66  0f 44 c2                       cmove  eax,edx
2e3c69  0f 28 c8                       movaps xmm1,xmm0
2e3c6c  85 c0                          test   eax,eax
2e3c6e  7e 09                          jle    0x2e3c79
2e3c70  f3 0f 59 ca                    mulss  xmm1,xmm2
2e3c74  83 e8 01                       sub    eax,0x1
2e3c77  75 f7                          jne    0x2e3c70
2e3c79  84 c9                          test   cl,cl
2e3c7b  74 05                          je     0x2e3c82
2e3c7d  f3 0f 5e c1                    divss  xmm0,xmm1
2e3c81  c3                             ret

; heuristic leaf/code range 0x31a8e4..0x31a8ec unwind=0x0
31a8e4  e9 ff dc 0a 00                 jmp    0x3c85e8
31a8e9  cc                             int3
31a8ea  cc                             int3
31a8eb  cc                             int3

; pdata function 0x31703c..0x317093 unwind=0x3d2040
31703c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
317041  57                             push   rdi
317042  48 83 ec 20                    sub    rsp,0x20
317046  f3 0f 10 02                    movss  xmm0,DWORD PTR [rdx]
31704a  48 8b da                       mov    rbx,rdx
31704d  48 8b f9                       mov    rdi,rcx
317050  e8 7b 9c 00 00                 call   0x320cd0
317055  f3 0f 11 03                    movss  DWORD PTR [rbx],xmm0
317059  f3 0f 10 43 04                 movss  xmm0,DWORD PTR [rbx+0x4]
31705e  e8 6d 9c 00 00                 call   0x320cd0
317063  f3 0f 11 43 04                 movss  DWORD PTR [rbx+0x4],xmm0
317068  f3 0f 10 43 08                 movss  xmm0,DWORD PTR [rbx+0x8]
31706d  e8 5e 9c 00 00                 call   0x320cd0
317072  f3 0f 11 43 08                 movss  DWORD PTR [rbx+0x8],xmm0
317077  8b 43 08                       mov    eax,DWORD PTR [rbx+0x8]
31707a  f2 0f 10 03                    movsd  xmm0,QWORD PTR [rbx]
31707e  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
317083  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
317087  89 47 08                       mov    DWORD PTR [rdi+0x8],eax
31708a  48 8b c7                       mov    rax,rdi
31708d  48 83 c4 20                    add    rsp,0x20
317091  5f                             pop    rdi
317092  c3                             ret

; pdata function 0x37361c..0x373744 unwind=0x3d2568
37361c  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
373621  55                             push   rbp
373622  56                             push   rsi
373623  57                             push   rdi
373624  48 83 ec 50                    sub    rsp,0x50
373628  48 8b e9                       mov    rbp,rcx
37362b  e8 d8 78 f5 ff                 call   0x2caf08
373630  84 c0                          test   al,al
373632  75 07                          jne    0x37363b
373634  33 c0                          xor    eax,eax
373636  e9 fc 00 00 00                 jmp    0x373737
37363b  8b 05 8f dc 08 00              mov    eax,DWORD PTR [rip+0x8dc8f]        # 0x4012d0
373641  a8 01                          test   al,0x1
373643  0f 85 ae 00 00 00              jne    0x3736f7
373649  83 c8 01                       or     eax,0x1
37364c  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
373651  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
373656  89 05 74 dc 08 00              mov    DWORD PTR [rip+0x8dc74],eax        # 0x4012d0
37365c  e8 cf 90 f5 ff                 call   0x2cc730
373661  48 8b c8                       mov    rcx,rax
373664  e8 3b a6 f5 ff                 call   0x2cdca4
373669  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
37366e  48 8b f0                       mov    rsi,rax
373671  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
373679  e8 2a f8 ff ff                 call   0x372ea8 ; STRING getter=0x372ea8 get_name
37367e  48 8b c8                       mov    rcx,rax
373681  e8 06 65 f7 ff                 call   0x2e9b8c
373686  48 8d 54 24 39                 lea    rdx,[rsp+0x39]
37368b  48 8b f8                       mov    rdi,rax
37368e  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
373696  e8 29 f7 ff ff                 call   0x372dc4 ; STRING getter=0x372dc4 UnityEngine
37369b  48 8b c8                       mov    rcx,rax
37369e  e8 91 a7 f5 ff                 call   0x2cde34
3736a3  48 8d 94 24 88 00 00 00        lea    rdx,[rsp+0x88]
3736ab  48 8b d8                       mov    rbx,rax
3736ae  48 8d 8c 24 80 00 00 00        lea    rcx,[rsp+0x80]
3736b6  e8 29 f6 ff ff                 call   0x372ce4 ; STRING getter=0x372ce4 Object
3736bb  48 8b c8                       mov    rcx,rax
3736be  e8 31 a6 f5 ff                 call   0x2cdcf4
3736c3  48 8b c8                       mov    rcx,rax
3736c6  48 8b d3                       mov    rdx,rbx
3736c9  e8 56 0b fc ff                 call   0x334224
3736ce  41 83 c8 ff                    or     r8d,0xffffffff
3736d2  48 8b c8                       mov    rcx,rax
3736d5  4c 8b ce                       mov    r9,rsi
3736d8  44 89 44 24 20                 mov    DWORD PTR [rsp+0x20],r8d
3736dd  48 8b d7                       mov    rdx,rdi
3736e0  e8 c7 12 fc ff                 call   0x3349ac
3736e5  4c 8b 00                       mov    r8,QWORD PTR [rax]
3736e8  8b 05 e2 db 08 00              mov    eax,DWORD PTR [rip+0x8dbe2]        # 0x4012d0
3736ee  4c 89 05 d3 db 08 00           mov    QWORD PTR [rip+0x8dbd3],r8        # 0x4012c8
3736f5  eb 07                          jmp    0x3736fe
3736f7  4c 8b 05 ca db 08 00           mov    r8,QWORD PTR [rip+0x8dbca]        # 0x4012c8
3736fe  a8 02                          test   al,0x2
373700  75 1f                          jne    0x373721
373702  48 8b 0d 57 27 06 00           mov    rcx,QWORD PTR [rip+0x62757]        # 0x3d5e60
373709  48 8d 15 d0 db 08 00           lea    rdx,[rip+0x8dbd0]        # 0x4012e0
373710  83 c8 02                       or     eax,0x2
373713  45 33 c9                       xor    r9d,r9d
373716  89 05 b4 db 08 00              mov    DWORD PTR [rip+0x8dbb4],eax        # 0x4012d0
37371c  e8 03 86 f5 ff                 call   0x2cbd24
373721  48 8b 0d 38 27 06 00           mov    rcx,QWORD PTR [rip+0x62738]        # 0x3d5e60
373728  48 8d 15 b1 db 08 00           lea    rdx,[rip+0x8dbb1]        # 0x4012e0
37372f  4c 8b c5                       mov    r8,rbp
373732  e8 c5 82 f5 ff                 call   0x2cb9fc
373737  48 8b 5c 24 70                 mov    rbx,QWORD PTR [rsp+0x70]
37373c  48 83 c4 50                    add    rsp,0x50
373740  5f                             pop    rdi
373741  5e                             pop    rsi
373742  5d                             pop    rbp
373743  c3                             ret

; pdata function 0x36ca34..0x36caa6 unwind=0x3d2038
36ca34  40 53                          rex push rbx
36ca36  48 83 ec 20                    sub    rsp,0x20
36ca3a  48 8b da                       mov    rbx,rdx
36ca3d  4c 8b c1                       mov    r8,rcx
36ca40  e8 c3 e4 f5 ff                 call   0x2caf08
36ca45  84 c0                          test   al,al
36ca47  75 0a                          jne    0x36ca53
36ca49  48 8b ca                       mov    rcx,rdx
36ca4c  e8 6b b1 05 00                 call   0x3c7bbc
36ca51  eb 4a                          jmp    0x36ca9d
36ca53  ba 10 00 00 00                 mov    edx,0x10
36ca58  49 8b c8                       mov    rcx,r8
36ca5b  e8 20 fa ff ff                 call   0x36c480
36ca60  4c 8b 00                       mov    r8,QWORD PTR [rax]
36ca63  49 8b c8                       mov    rcx,r8
36ca66  e8 9d e4 f5 ff                 call   0x2caf08
36ca6b  84 c0                          test   al,al
36ca6d  75 13                          jne    0x36ca82
36ca6f  0f 57 db                       xorps  xmm3,xmm3
36ca72  0f 57 d2                       xorps  xmm2,xmm2
36ca75  0f 57 c9                       xorps  xmm1,xmm1
36ca78  48 8b cb                       mov    rcx,rbx
36ca7b  e8 28 b1 05 00                 call   0x3c7ba8
36ca80  eb 1b                          jmp    0x36ca9d
36ca82  ba 44 04 00 00                 mov    edx,0x444
36ca87  49 8b c8                       mov    rcx,r8
36ca8a  e8 f1 f9 ff ff                 call   0x36c480
36ca8f  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
36ca93  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
36ca97  8b 40 08                       mov    eax,DWORD PTR [rax+0x8]
36ca9a  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
36ca9d  48 8b c3                       mov    rax,rbx
36caa0  48 83 c4 20                    add    rsp,0x20
36caa4  5b                             pop    rbx
36caa5  c3                             ret

; pdata function 0x36cd20..0x36cdc3 unwind=0x3d3e74
36cd20  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
36cd25  48 89 7c 24 18                 mov    QWORD PTR [rsp+0x18],rdi
36cd2a  55                             push   rbp
36cd2b  48 8b ec                       mov    rbp,rsp
36cd2e  48 83 ec 40                    sub    rsp,0x40
36cd32  f2 0f 10 02                    movsd  xmm0,QWORD PTR [rdx]
36cd36  49 8b f8                       mov    rdi,r8
36cd39  8b 42 08                       mov    eax,DWORD PTR [rdx+0x8]
36cd3c  4c 8d 45 f0                    lea    r8,[rbp-0x10]
36cd40  48 8d 55 e0                    lea    rdx,[rbp-0x20]
36cd44  f2 0f 11 45 f0                 movsd  QWORD PTR [rbp-0x10],xmm0
36cd49  49 8b d9                       mov    rbx,r9
36cd4c  89 45 f8                       mov    DWORD PTR [rbp-0x8],eax
36cd4f  e8 80 f6 ff ff                 call   0x36c3d4
36cd54  f3 0f 10 05 64 14 f2 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff21464]        # 0x28e1c0 ; f32=0.001
36cd5c  f3 0f 10 4d e8                 movss  xmm1,DWORD PTR [rbp-0x18]
36cd61  0f 2f c1                       comiss xmm0,xmm1
36cd64  77 4b                          ja     0x36cdb1
36cd66  f2 0f 10 45 e0                 movsd  xmm0,QWORD PTR [rbp-0x20]
36cd6b  48 8d 55 f0                    lea    rdx,[rbp-0x10]
36cd6f  48 8b cb                       mov    rcx,rbx
36cd72  f2 0f 11 45 f0                 movsd  QWORD PTR [rbp-0x10],xmm0
36cd77  f3 0f 11 4d f8                 movss  DWORD PTR [rbp-0x8],xmm1
36cd7c  e8 b7 f8 ff ff                 call   0x36c638
36cd81  84 c0                          test   al,al
36cd83  74 2c                          je     0x36cdb1
36cd85  e8 66 3c f7 ff                 call   0x2e09f0
36cd8a  f3 0f 10 4d e0                 movss  xmm1,DWORD PTR [rbp-0x20]
36cd8f  48 8d 4d 18                    lea    rcx,[rbp+0x18]
36cd93  66 0f 6e d0                    movd   xmm2,eax
36cd97  0f 5b d2                       cvtdq2ps xmm2,xmm2
36cd9a  f3 0f 5c 55 e4                 subss  xmm2,DWORD PTR [rbp-0x1c]
36cd9f  e8 9c f5 f5 ff                 call   0x2cc340
36cda4  f2 0f 10 45 18                 movsd  xmm0,QWORD PTR [rbp+0x18]
36cda9  b0 01                          mov    al,0x1
36cdab  f2 0f 11 07                    movsd  QWORD PTR [rdi],xmm0
36cdaf  eb 02                          jmp    0x36cdb3
36cdb1  32 c0                          xor    al,al
36cdb3  48 8b 5c 24 50                 mov    rbx,QWORD PTR [rsp+0x50]
36cdb8  48 8b 7c 24 60                 mov    rdi,QWORD PTR [rsp+0x60]
36cdbd  48 83 c4 40                    add    rsp,0x40
36cdc1  5d                             pop    rbp
36cdc2  c3                             ret

