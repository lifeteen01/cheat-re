; pdata function 0x3c85e8..0x3c86a9 unwind=0x3d5c7c
3c85e8  48 83 ec 48                    sub    rsp,0x48
3c85ec  33 c0                          xor    eax,eax
3c85ee  0f 29 74 24 30                 movaps XMMWORD PTR [rsp+0x30],xmm6
3c85f3  0f 29 7c 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm7
3c85f8  0f 57 c9                       xorps  xmm1,xmm1
3c85fb  0f 2f c8                       comiss xmm1,xmm0
3c85fe  0f 57 ff                       xorps  xmm7,xmm7
3c8601  0f 97 c0                       seta   al
3c8604  f3 0f 2a f8                    cvtsi2ss xmm7,eax
3c8608  e8 1f b1 f1 ff                 call   0x2e372c
3c860d  f2 0f 10 15 7b 53 ee ff        movsd  xmm2,QWORD PTR [rip+0xffffffffffee537b]        # 0x2ad990
3c8615  0f 28 f0                       movaps xmm6,xmm0
3c8618  0f 57 c9                       xorps  xmm1,xmm1
3c861b  f3 0f 5a ce                    cvtss2sd xmm1,xmm6
3c861f  f2 0f 5c d1                    subsd  xmm2,xmm1
3c8623  66 0f 5a c2                    cvtpd2ps xmm0,xmm2
3c8627  e8 08 09 00 00                 call   0x3c8f34
3c862c  0f 57 d2                       xorps  xmm2,xmm2
3c862f  f3 0f 58 ff                    addss  xmm7,xmm7
3c8633  0f 28 ce                       movaps xmm1,xmm6
3c8636  0f 28 e0                       movaps xmm4,xmm0
3c8639  f3 0f 59 0d 8f 55 ee ff        mulss  xmm1,DWORD PTR [rip+0xffffffffffee558f]        # 0x2adbd0 ; f32=-0.0187293
3c8641  f3 0f 5a d1                    cvtss2sd xmm2,xmm1
3c8645  f2 0f 58 15 23 55 ee ff        addsd  xmm2,QWORD PTR [rip+0xffffffffffee5523]        # 0x2adb70
3c864d  66 0f 5a ca                    cvtpd2ps xmm1,xmm2
3c8651  f3 0f 59 ce                    mulss  xmm1,xmm6
3c8655  0f 5a d9                       cvtps2pd xmm3,xmm1
3c8658  f2 0f 5c 1d 28 55 ee ff        subsd  xmm3,QWORD PTR [rip+0xffffffffffee5528]        # 0x2adb88
3c8660  66 0f 5a cb                    cvtpd2ps xmm1,xmm3
3c8664  f3 0f 59 ce                    mulss  xmm1,xmm6
3c8668  0f 28 74 24 30                 movaps xmm6,XMMWORD PTR [rsp+0x30]
3c866d  0f 5a d1                       cvtps2pd xmm2,xmm1
3c8670  0f 57 c9                       xorps  xmm1,xmm1
3c8673  f2 0f 58 15 2d 55 ee ff        addsd  xmm2,QWORD PTR [rip+0xffffffffffee552d]        # 0x2adba8
3c867b  66 0f 5a c2                    cvtpd2ps xmm0,xmm2
3c867f  f2 0f 10 15 29 55 ee ff        movsd  xmm2,QWORD PTR [rip+0xffffffffffee5529]        # 0x2adbb0
3c8687  f3 0f 59 e0                    mulss  xmm4,xmm0
3c868b  f3 0f 5a cc                    cvtss2sd xmm1,xmm4
3c868f  f2 0f 5c d1                    subsd  xmm2,xmm1
3c8693  66 0f 5a c2                    cvtpd2ps xmm0,xmm2
3c8697  f3 0f 59 f8                    mulss  xmm7,xmm0
3c869b  f3 0f 5c c7                    subss  xmm0,xmm7
3c869f  0f 28 7c 24 20                 movaps xmm7,XMMWORD PTR [rsp+0x20]
3c86a4  48 83 c4 48                    add    rsp,0x48
3c86a8  c3                             ret

; pdata function 0x3c86ac..0x3c87ef unwind=0x3d5c8c
3c86ac  48 8b c4                       mov    rax,rsp
3c86af  53                             push   rbx
3c86b0  48 81 ec 80 00 00 00           sub    rsp,0x80
3c86b7  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
3c86bb  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
3c86bf  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
3c86c4  45 0f 57 c0                    xorps  xmm8,xmm8
3c86c8  44 0f 29 48 b8                 movaps XMMWORD PTR [rax-0x48],xmm9
3c86cd  44 0f 28 c8                    movaps xmm9,xmm0
3c86d1  44 0f 29 50 a8                 movaps XMMWORD PTR [rax-0x58],xmm10
3c86d6  44 0f 28 d1                    movaps xmm10,xmm1
3c86da  45 0f 2e d0                    ucomiss xmm10,xmm8
3c86de  7a 12                          jp     0x3c86f2
3c86e0  75 10                          jne    0x3c86f2
3c86e2  45 0f 2e c8                    ucomiss xmm9,xmm8
3c86e6  7a 0a                          jp     0x3c86f2
3c86e8  75 08                          jne    0x3c86f2
3c86ea  0f 57 c0                       xorps  xmm0,xmm0
3c86ed  e9 d8 00 00 00                 jmp    0x3c87ca
3c86f2  e8 35 b0 f1 ff                 call   0x2e372c
3c86f7  0f 28 f8                       movaps xmm7,xmm0
3c86fa  41 0f 28 c2                    movaps xmm0,xmm10
3c86fe  f3 0f 11 bc 24 98 00 00 00     movss  DWORD PTR [rsp+0x98],xmm7
3c8707  e8 20 b0 f1 ff                 call   0x2e372c
3c870c  0f 28 f0                       movaps xmm6,xmm0
3c870f  f3 0f 11 bc 24 a8 00 00 00     movss  DWORD PTR [rsp+0xa8],xmm7
3c8718  48 8d 94 24 98 00 00 00        lea    rdx,[rsp+0x98]
3c8720  f3 0f 11 b4 24 a0 00 00 00     movss  DWORD PTR [rsp+0xa0],xmm6
3c8729  48 8d 8c 24 a0 00 00 00        lea    rcx,[rsp+0xa0]
3c8731  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3c8737  e8 c0 f6 ff ff                 call   0x3c7dfc
3c873c  48 8d 94 24 a8 00 00 00        lea    rdx,[rsp+0xa8]
3c8744  48 8b d8                       mov    rbx,rax
3c8747  48 8d 4c 24 20                 lea    rcx,[rsp+0x20]
3c874c  e8 9b f6 ff ff                 call   0x3c7dec
3c8751  0f 2f fe                       comiss xmm7,xmm6
3c8754  f3 0f 10 13                    movss  xmm2,DWORD PTR [rbx]
3c8758  f3 0f 5e 10                    divss  xmm2,DWORD PTR [rax]
3c875c  f3 0f 10 1d fc 53 ee ff        movss  xmm3,DWORD PTR [rip+0xffffffffffee53fc]        # 0x2adb60 ; f32=0.159314
3c8764  0f 28 ca                       movaps xmm1,xmm2
3c8767  f3 0f 59 ca                    mulss  xmm1,xmm2
3c876b  0f 28 c1                       movaps xmm0,xmm1
3c876e  f3 0f 59 05 da 53 ee ff        mulss  xmm0,DWORD PTR [rip+0xffffffffffee53da]        # 0x2adb50 ; f32=0.0464965
3c8776  f3 0f 5c d8                    subss  xmm3,xmm0
3c877a  f3 0f 59 d9                    mulss  xmm3,xmm1
3c877e  f3 0f 5c 1d e2 53 ee ff        subss  xmm3,DWORD PTR [rip+0xffffffffffee53e2]        # 0x2adb68 ; f32=0.327623
3c8786  f3 0f 59 d9                    mulss  xmm3,xmm1
3c878a  f3 0f 59 da                    mulss  xmm3,xmm2
3c878e  f3 0f 58 da                    addss  xmm3,xmm2
3c8792  76 0e                          jbe    0x3c87a2
3c8794  f3 0f 10 0d 88 0c ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee0c88]        # 0x2a9424 ; f32=1.5708
3c879c  f3 0f 5c cb                    subss  xmm1,xmm3
3c87a0  eb 03                          jmp    0x3c87a5
3c87a2  0f 28 cb                       movaps xmm1,xmm3
3c87a5  45 0f 2f c2                    comiss xmm8,xmm10
3c87a9  76 0f                          jbe    0x3c87ba
3c87ab  f3 0f 10 05 a9 a9 ec ff        movss  xmm0,DWORD PTR [rip+0xffffffffffeca9a9]        # 0x29315c ; f32=3.14159
3c87b3  f3 0f 5c c1                    subss  xmm0,xmm1
3c87b7  0f 28 c8                       movaps xmm1,xmm0
3c87ba  45 0f 2f c1                    comiss xmm8,xmm9
3c87be  76 07                          jbe    0x3c87c7
3c87c0  0f 57 0d d9 aa ec ff           xorps  xmm1,XMMWORD PTR [rip+0xffffffffffecaad9]        # 0x2932a0
3c87c7  0f 28 c1                       movaps xmm0,xmm1
3c87ca  0f 28 74 24 70                 movaps xmm6,XMMWORD PTR [rsp+0x70]
3c87cf  0f 28 7c 24 60                 movaps xmm7,XMMWORD PTR [rsp+0x60]
3c87d4  44 0f 28 44 24 50              movaps xmm8,XMMWORD PTR [rsp+0x50]
3c87da  44 0f 28 4c 24 40              movaps xmm9,XMMWORD PTR [rsp+0x40]
3c87e0  44 0f 28 54 24 30              movaps xmm10,XMMWORD PTR [rsp+0x30]
3c87e6  48 81 c4 80 00 00 00           add    rsp,0x80
3c87ed  5b                             pop    rbx
3c87ee  c3                             ret

; heuristic leaf/code range 0x3c8e0c..0x3c8e5f unwind=0x0
3c8e0c  66 0f 7e c2                    movd   edx,xmm0
3c8e10  8b c2                          mov    eax,edx
3c8e12  c1 e8 17                       shr    eax,0x17
3c8e15  0f b6 c8                       movzx  ecx,al
3c8e18  81 f9 96 00 00 00              cmp    ecx,0x96
3c8e1e  73 3f                          jae    0x3c8e5f
3c8e20  83 f9 7f                       cmp    ecx,0x7f
3c8e23  73 15                          jae    0x3c8e3a
3c8e25  81 e2 00 00 00 80              and    edx,0x80000000
3c8e2b  8b c2                          mov    eax,edx
3c8e2d  0d 00 00 80 3f                 or     eax,0x3f800000
3c8e32  83 f9 7e                       cmp    ecx,0x7e
3c8e35  0f 45 c2                       cmovne eax,edx
3c8e38  eb 20                          jmp    0x3c8e5a
3c8e3a  83 c1 81                       add    ecx,0xffffff81
3c8e3d  41 b8 ff ff 7f 00              mov    r8d,0x7fffff
3c8e43  41 d3 e8                       shr    r8d,cl
3c8e46  44 85 c2                       test   edx,r8d
3c8e49  74 20                          je     0x3c8e6b
3c8e4b  b8 00 00 40 00                 mov    eax,0x400000
3c8e50  41 f7 d0                       not    r8d
3c8e53  d3 f8                          sar    eax,cl
3c8e55  03 c2                          add    eax,edx
3c8e57  41 23 c0                       and    eax,r8d
3c8e5a  66 0f 6e c0                    movd   xmm0,eax
3c8e5e  c3                             ret

