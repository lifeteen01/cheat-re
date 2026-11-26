; pdata function 0x37f990..0x37fb14 unwind=0x3d4358
37f990  48 8b c4                       mov    rax,rsp
37f993  48 89 48 08                    mov    QWORD PTR [rax+0x8],rcx
37f997  55                             push   rbp
37f998  53                             push   rbx
37f999  56                             push   rsi
37f99a  57                             push   rdi
37f99b  48 8d 68 c8                    lea    rbp,[rax-0x38]
37f99f  48 81 ec 18 01 00 00           sub    rsp,0x118
37f9a6  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
37f9aa  48 8d 35 07 34 08 00           lea    rsi,[rip+0x83407]        # 0x402db8
37f9b1  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
37f9b5  48 8b ce                       mov    rcx,rsi
37f9b8  44 0f 29 40 a8                 movaps XMMWORD PTR [rax-0x58],xmm8
37f9bd  e8 de 8c f5 ff                 call   0x2d86a0
37f9c2  84 c0                          test   al,al
37f9c4  0f 85 2b 01 00 00              jne    0x37faf5
37f9ca  e8 dd 2c 01 00                 call   0x3926ac
37f9cf  f3 0f 10 3d 49 e1 f0 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff0e149]        # 0x28db20 ; f32=20
37f9d7  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
37f9dc  0f 28 d7                       movaps xmm2,xmm7
37f9df  0f 28 cf                       movaps xmm1,xmm7
37f9e2  f3 0f 10 70 08                 movss  xmm6,DWORD PTR [rax+0x8]
37f9e7  f3 44 0f 10 40 0c              movss  xmm8,DWORD PTR [rax+0xc]
37f9ed  e8 4e c9 f4 ff                 call   0x2cc340
37f9f2  f3 0f 5c f7                    subss  xmm6,xmm7
37f9f6  0f 28 d7                       movaps xmm2,xmm7
37f9f9  48 8d 4d 58                    lea    rcx,[rbp+0x58]
37f9fd  0f 28 ce                       movaps xmm1,xmm6
37fa00  e8 3b c9 f4 ff                 call   0x2cc340
37fa05  f3 44 0f 5c c7                 subss  xmm8,xmm7
37fa0a  0f 28 ce                       movaps xmm1,xmm6
37fa0d  48 8d 4d 50                    lea    rcx,[rbp+0x50]
37fa11  41 0f 28 d0                    movaps xmm2,xmm8
37fa15  e8 26 c9 f4 ff                 call   0x2cc340
37fa1a  41 0f 28 d0                    movaps xmm2,xmm8
37fa1e  48 8d 4d 48                    lea    rcx,[rbp+0x48]
37fa22  0f 28 cf                       movaps xmm1,xmm7
37fa25  e8 16 c9 f4 ff                 call   0x2cc340
37fa2a  48 8d 45 48                    lea    rax,[rbp+0x48]
37fa2e  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
37fa33  4c 8d 4d 58                    lea    r9,[rbp+0x58]
37fa37  48 8d 45 50                    lea    rax,[rbp+0x50]
37fa3b  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
37fa40  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
37fa45  48 8d 55 40                    lea    rdx,[rbp+0x40]
37fa49  48 8d 4d 80                    lea    rcx,[rbp-0x80]
37fa4d  e8 4a f4 ff ff                 call   0x37ee9c
37fa52  48 8b ce                       mov    rcx,rsi
37fa55  33 db                          xor    ebx,ebx
37fa57  e8 f8 02 00 00                 call   0x37fd54
37fa5c  48 85 c0                       test   rax,rax
37fa5f  0f 84 90 00 00 00              je     0x37faf5
37fa65  48 63 fb                       movsxd rdi,ebx
37fa68  48 8b ce                       mov    rcx,rsi
37fa6b  48 8b d7                       mov    rdx,rdi
37fa6e  e8 e5 01 00 00                 call   0x37fc58
37fa73  48 8b d0                       mov    rdx,rax
37fa76  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
37fa7b  e8 78 f4 ff ff                 call   0x37eef8
37fa80  e8 97 5d f9 ff                 call   0x31581c
37fa85  0f 2f 44 24 74                 comiss xmm0,DWORD PTR [rsp+0x74]
37fa8a  76 2f                          jbe    0x37fabb
37fa8c  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
37fa91  48 8b ce                       mov    rcx,rsi
37fa94  e8 f7 82 f5 ff                 call   0x2d7d90
37fa99  48 8b c8                       mov    rcx,rax
37fa9c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
37faa1  4c 8b c7                       mov    r8,rdi
37faa4  e8 0f f5 ff ff                 call   0x37efb8
37faa9  48 8d 54 24 48                 lea    rdx,[rsp+0x48]
37faae  48 8b ce                       mov    rcx,rsi
37fab1  4c 8b 00                       mov    r8,QWORD PTR [rax]
37fab4  e8 0b 02 00 00                 call   0x37fcc4
37fab9  eb 1a                          jmp    0x37fad5
37fabb  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
37fac0  48 8d 4d a8                    lea    rcx,[rbp-0x58]
37fac4  e8 2f f4 ff ff                 call   0x37eef8
37fac9  48 8b d0                       mov    rdx,rax
37facc  48 8d 4d 80                    lea    rcx,[rbp-0x80]
37fad0  e8 1b f5 ff ff                 call   0x37eff0
37fad5  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
37fada  e8 25 ca f4 ff                 call   0x2cc504
37fadf  48 8b ce                       mov    rcx,rsi
37fae2  ff c3                          inc    ebx
37fae4  e8 6b 02 00 00                 call   0x37fd54
37fae9  48 63 cb                       movsxd rcx,ebx
37faec  48 3b c8                       cmp    rcx,rax
37faef  0f 82 70 ff ff ff              jb     0x37fa65
37faf5  4c 8d 9c 24 18 01 00 00        lea    r11,[rsp+0x118]
37fafd  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
37fb02  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
37fb07  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
37fb0c  49 8b e3                       mov    rsp,r11
37fb0f  5f                             pop    rdi
37fb10  5e                             pop    rsi
37fb11  5b                             pop    rbx
37fb12  5d                             pop    rbp
37fb13  c3                             ret

; pdata function 0x389830..0x389db4 unwind=0x3d4398
389830  48 8b c4                       mov    rax,rsp
389833  55                             push   rbp
389834  53                             push   rbx
389835  56                             push   rsi
389836  57                             push   rdi
389837  41 54                          push   r12
389839  41 55                          push   r13
38983b  41 56                          push   r14
38983d  41 57                          push   r15
38983f  48 8d a8 08 ff ff ff           lea    rbp,[rax-0xf8]
389846  48 81 ec b8 01 00 00           sub    rsp,0x1b8
38984d  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
389851  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
389855  48 63 f9                       movsxd rdi,ecx
389858  48 8d 0d a9 28 07 00           lea    rcx,[rip+0x728a9]        # 0x3fc108
38985f  44 0f 29 40 88                 movaps XMMWORD PTR [rax-0x78],xmm8
389864  48 8b d7                       mov    rdx,rdi
389867  44 0f 29 90 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm10
38986f  44 0f 29 a0 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm12
389877  e8 34 cf fa ff                 call   0x3367b0
38987c  48 8b d0                       mov    rdx,rax
38987f  48 8d 4d 40                    lea    rcx,[rbp+0x40]
389883  e8 0c a9 f4 ff                 call   0x2d4194
389888  48 8b d7                       mov    rdx,rdi
38988b  48 8d 0d 76 28 07 00           lea    rcx,[rip+0x72876]        # 0x3fc108
389892  e8 19 cf fa ff                 call   0x3367b0
389897  4c 8d 60 20                    lea    r12,[rax+0x20]
38989b  e8 60 39 fd ff                 call   0x35d200
3898a0  4c 8b e8                       mov    r13,rax
3898a3  e8 fc 93 00 00                 call   0x392ca4
3898a8  49 8b cc                       mov    rcx,r12
3898ab  4c 8b f0                       mov    r14,rax
3898ae  e8 39 3f f4 ff                 call   0x2cd7ec
3898b3  48 8b d0                       mov    rdx,rax
3898b6  45 33 c0                       xor    r8d,r8d
3898b9  49 8b cd                       mov    rcx,r13
3898bc  e8 53 8d 00 00                 call   0x392614
3898c1  f3 0f 10 05 1f f6 eb ff        movss  xmm0,DWORD PTR [rip+0xffffffffffebf61f]        # 0x248ee8 ; f32=1
3898c9  48 8d 8d 18 01 00 00           lea    rcx,[rbp+0x118]
3898d0  f3 41 0f 10 4d 28              movss  xmm1,DWORD PTR [r13+0x28]
3898d6  0f 28 d0                       movaps xmm2,xmm0
3898d9  f3 0f 59 05 fb 98 f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff098fb]        # 0x2931dc ; f32=28
3898e1  8b d8                          mov    ebx,eax
3898e3  f3 0f 59 15 45 fb f1 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff1fb45]        # 0x2a9430 ; f32=42
3898eb  f3 0f 5c c8                    subss  xmm1,xmm0
3898ef  e8 4c 2a f4 ff                 call   0x2cc340
3898f4  f2 41 0f 10 85 00 01 00 00     movsd  xmm0,QWORD PTR [r13+0x100]
3898fd  4c 8d 85 18 01 00 00           lea    r8,[rbp+0x118]
389904  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
38990b  f2 0f 11 85 08 01 00 00        movsd  QWORD PTR [rbp+0x108],xmm0
389913  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
389918  e8 bb 60 f6 ff                 call   0x2ef9d8
38991d  4c 8b c0                       mov    r8,rax
389920  48 8d 95 08 01 00 00           lea    rdx,[rbp+0x108]
389927  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
38992c  e8 57 1a f5 ff                 call   0x2db388
389931  f3 0f 10 0d 27 99 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff09927]        # 0x293260 ; f32=-1
389939  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
38993e  e8 3d 31 ff ff                 call   0x37ca80
389943  45 33 c9                       xor    r9d,r9d
389946  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
38994b  45 33 c0                       xor    r8d,r8d
38994e  8b d3                          mov    edx,ebx
389950  e8 87 af 00 00                 call   0x3948dc
389955  4c 8d 8d 10 01 00 00           lea    r9,[rbp+0x110]
38995c  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
389964  4c 8d 85 00 01 00 00           lea    r8,[rbp+0x100]
38996b  8b d3                          mov    edx,ebx
38996d  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
389972  e8 69 2e 03 00                 call   0x3bc7e0
389977  3b 3d 57 94 07 00              cmp    edi,DWORD PTR [rip+0x79457]        # 0x402dd4
38997d  45 0f 57 e4                    xorps  xmm12,xmm12
389981  88 85 08 01 00 00              mov    BYTE PTR [rbp+0x108],al
389987  0f 94 c3                       sete   bl
38998a  84 c0                          test   al,al
38998c  74 14                          je     0x3899a2
38998e  84 db                          test   bl,bl
389990  75 10                          jne    0x3899a2
389992  c7 05 74 60 ef ff 00 00 00 00  mov    DWORD PTR [rip+0xffffffffffef6074],0x0        # 0x27fa10
38999c  89 3d 32 94 07 00              mov    DWORD PTR [rip+0x79432],edi        # 0x402dd4
3899a2  0f 57 c0                       xorps  xmm0,xmm0
3899a5  48 8d 4d a0                    lea    rcx,[rbp-0x60]
3899a9  33 d2                          xor    edx,edx
3899ab  0f 11 45 90                    movups XMMWORD PTR [rbp-0x70],xmm0
3899af  e8 20 cb fa ff                 call   0x3364d4
3899b4  33 d2                          xor    edx,edx
3899b6  48 8d 4d b0                    lea    rcx,[rbp-0x50]
3899ba  e8 15 cb fa ff                 call   0x3364d4
3899bf  0f 10 45 90                    movups xmm0,XMMWORD PTR [rbp-0x70]
3899c3  49 8b cc                       mov    rcx,r12
3899c6  0f 10 4d b0                    movups xmm1,XMMWORD PTR [rbp-0x50]
3899ca  0f 29 45 c0                    movaps XMMWORD PTR [rbp-0x40],xmm0
3899ce  0f 10 45 a0                    movups xmm0,XMMWORD PTR [rbp-0x60]
3899d2  0f 29 4d e0                    movaps XMMWORD PTR [rbp-0x20],xmm1
3899d6  0f 29 45 d0                    movaps XMMWORD PTR [rbp-0x30],xmm0
3899da  e8 0d 3e f4 ff                 call   0x2cd7ec
3899df  48 8b c8                       mov    rcx,rax
3899e2  4c 8d 45 c0                    lea    r8,[rbp-0x40]
3899e6  ba 04 00 00 00                 mov    edx,0x4
3899eb  e8 00 77 ff ff                 call   0x3810f0
3899f0  f3 44 0f 10 15 5b 38 f0 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff0385b]        # 0x28d254 ; f32=1
3899f9  8a cb                          mov    cl,bl
3899fb  0a 8d 00 01 00 00              or     cl,BYTE PTR [rbp+0x100]
389a01  41 0f 28 d2                    movaps xmm2,xmm10
389a05  f3 0f 10 35 a7 97 f0 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff097a7]        # 0x2931b4 ; f32=14
389a0d  0f 57 c9                       xorps  xmm1,xmm1
389a10  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
389a14  41 0f 95 c1                    setne  r9b
389a18  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
389a1e  48 8b f0                       mov    rsi,rax
389a21  e8 22 c4 fa ff                 call   0x335e48
389a26  f3 0f 11 06                    movss  DWORD PTR [rsi],xmm0
389a2a  44 8a cb                       mov    r9b,bl
389a2d  f3 0f 10 46 08                 movss  xmm0,DWORD PTR [rsi+0x8]
389a32  41 0f 28 d2                    movaps xmm2,xmm10
389a36  0f 57 c9                       xorps  xmm1,xmm1
389a39  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
389a3f  e8 04 c4 fa ff                 call   0x335e48
389a44  f3 0f 11 46 08                 movss  DWORD PTR [rsi+0x8],xmm0
389a49  41 0f 28 d2                    movaps xmm2,xmm10
389a4d  44 8a 8d 00 01 00 00           mov    r9b,BYTE PTR [rbp+0x100]
389a54  0f 57 c9                       xorps  xmm1,xmm1
389a57  f3 0f 10 46 04                 movss  xmm0,DWORD PTR [rsi+0x4]
389a5c  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
389a62  e8 e1 c3 fa ff                 call   0x335e48
389a67  f3 0f 11 46 04                 movss  DWORD PTR [rsi+0x4],xmm0
389a6c  41 0f 28 d2                    movaps xmm2,xmm10
389a70  44 8a 0d 8e 26 07 00           mov    r9b,BYTE PTR [rip+0x7268e]        # 0x3fc105
389a77  0f 57 c9                       xorps  xmm1,xmm1
389a7a  f3 0f 10 46 0c                 movss  xmm0,DWORD PTR [rsi+0xc]
389a7f  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
389a85  e8 be c3 fa ff                 call   0x335e48
389a8a  f3 44 0f 10 46 08              movss  xmm8,DWORD PTR [rsi+0x8]
389a90  bb 01 00 00 00                 mov    ebx,0x1
389a95  8b cb                          mov    ecx,ebx
389a97  f3 0f 11 46 0c                 movss  DWORD PTR [rsi+0xc],xmm0
389a9c  0f 28 c8                       movaps xmm1,xmm0
389a9f  e8 f4 87 00 00                 call   0x392298
389aa4  8b d0                          mov    edx,eax
389aa6  48 8d 4d f0                    lea    rcx,[rbp-0x10]
389aaa  e8 25 ca fa ff                 call   0x3364d4
389aaf  f3 0f 10 4e 0c                 movss  xmm1,DWORD PTR [rsi+0xc]
389ab4  8b cb                          mov    ecx,ebx
389ab6  f3 0f 59 0d 0e 96 f0 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff0960e]        # 0x2930cc ; f32=0.7
389abe  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
389ac2  f3 0f 10 7e 04                 movss  xmm7,DWORD PTR [rsi+0x4]
389ac7  e8 cc 87 00 00                 call   0x392298
389acc  8b d0                          mov    edx,eax
389ace  48 8d 4d 00                    lea    rcx,[rbp+0x0]
389ad2  e8 fd c9 fa ff                 call   0x3364d4
389ad7  f3 0f 10 4e 0c                 movss  xmm1,DWORD PTR [rsi+0xc]
389adc  8d 4b 01                       lea    ecx,[rbx+0x1]
389adf  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389ae2  f3 0f 7f 44 24 60              movdqu XMMWORD PTR [rsp+0x60],xmm0
389ae8  e8 ab 87 00 00                 call   0x392298
389aed  8b d0                          mov    edx,eax
389aef  48 8d 4d 10                    lea    rcx,[rbp+0x10]
389af3  e8 dc c9 fa ff                 call   0x3364d4
389af8  66 0f 7f 75 80                 movdqa XMMWORD PTR [rbp-0x80],xmm6
389afd  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389b00  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
389b06  0f 28 df                       movaps xmm3,xmm7
389b09  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
389b0e  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
389b13  48 8d 4d 20                    lea    rcx,[rbp+0x20]
389b17  e8 88 fa fe ff                 call   0x3795a4
389b1c  41 0f 28 d8                    movaps xmm3,xmm8
389b20  4c 8d 45 80                    lea    r8,[rbp-0x80]
389b24  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
389b29  48 8d 4d 30                    lea    rcx,[rbp+0x30]
389b2d  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389b30  4c 8d 7e 10                    lea    r15,[rsi+0x10]
389b34  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
389b3a  e8 65 fa fe ff                 call   0x3795a4
389b3f  f3 44 0f 10 46 08              movss  xmm8,DWORD PTR [rsi+0x8]
389b45  41 0f 28 ca                    movaps xmm1,xmm10
389b49  33 c9                          xor    ecx,ecx
389b4b  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389b4e  f3 41 0f 7f 07                 movdqu XMMWORD PTR [r15],xmm0
389b53  e8 40 87 00 00                 call   0x392298
389b58  8b d0                          mov    edx,eax
389b5a  48 8d 4d 30                    lea    rcx,[rbp+0x30]
389b5e  e8 71 c9 fa ff                 call   0x3364d4
389b63  f3 0f 10 0d 61 95 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff09561]        # 0x2930cc ; f32=0.7
389b6b  8b cb                          mov    ecx,ebx
389b6d  f3 0f 10 7e 04                 movss  xmm7,DWORD PTR [rsi+0x4]
389b72  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
389b76  e8 1d 87 00 00                 call   0x392298
389b7b  8b d0                          mov    edx,eax
389b7d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
389b81  e8 4e c9 fa ff                 call   0x3364d4
389b86  41 0f 28 ca                    movaps xmm1,xmm10
389b8a  8d 4b 01                       lea    ecx,[rbx+0x1]
389b8d  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389b90  f3 0f 7f 45 80                 movdqu XMMWORD PTR [rbp-0x80],xmm0
389b95  e8 fe 86 00 00                 call   0x392298
389b9a  8b d0                          mov    edx,eax
389b9c  48 8d 4d 10                    lea    rcx,[rbp+0x10]
389ba0  e8 2f c9 fa ff                 call   0x3364d4
389ba5  0f 28 df                       movaps xmm3,xmm7
389ba8  66 0f 7f 74 24 60              movdqa XMMWORD PTR [rsp+0x60],xmm6
389bae  4c 8d 45 80                    lea    r8,[rbp-0x80]
389bb2  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
389bb7  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389bba  48 8d 4d 00                    lea    rcx,[rbp+0x0]
389bbe  f3 0f 7f 44 24 70              movdqu XMMWORD PTR [rsp+0x70],xmm0
389bc4  e8 db f9 fe ff                 call   0x3795a4
389bc9  41 0f 28 d8                    movaps xmm3,xmm8
389bcd  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
389bd2  48 8d 55 80                    lea    rdx,[rbp-0x80]
389bd6  48 8d 4d f0                    lea    rcx,[rbp-0x10]
389bda  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389bdd  48 8d 7e 20                    lea    rdi,[rsi+0x20]
389be1  f3 0f 7f 45 80                 movdqu XMMWORD PTR [rbp-0x80],xmm0
389be6  e8 b9 f9 fe ff                 call   0x3795a4
389beb  f3 0f 10 4e 08                 movss  xmm1,DWORD PTR [rsi+0x8]
389bf0  b9 08 00 00 00                 mov    ecx,0x8
389bf5  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389bf8  f3 0f 7f 07                    movdqu XMMWORD PTR [rdi],xmm0
389bfc  49 8b 9d 98 02 00 00           mov    rbx,QWORD PTR [r13+0x298]
389c03  f3 41 0f 10 76 44              movss  xmm6,DWORD PTR [r14+0x44]
389c09  e8 8a 86 00 00                 call   0x392298
389c0e  44 8b c8                       mov    r9d,eax
389c11  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
389c19  4c 8d 44 24 58                 lea    r8,[rsp+0x58]
389c1e  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
389c24  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
389c29  48 8b cb                       mov    rcx,rbx
389c2c  e8 13 76 01 00                 call   0x3a1244
389c31  4d 8b b5 98 02 00 00           mov    r14,QWORD PTR [r13+0x298]
389c38  48 8d 4d 40                    lea    rcx,[rbp+0x40]
389c3c  e8 ab 3b f4 ff                 call   0x2cd7ec
389c41  48 8b cf                       mov    rcx,rdi
389c44  48 8b f0                       mov    rsi,rax
389c47  e8 c0 5b f6 ff                 call   0x2ef80c
389c4c  f3 0f 10 15 94 f2 eb ff        movss  xmm2,DWORD PTR [rip+0xffffffffffebf294]        # 0x248ee8 ; f32=1
389c54  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
389c59  f3 0f 59 15 4f 95 f0 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff0954f]        # 0x2931b0 ; f32=13
389c61  48 8d 8d 18 01 00 00           lea    rcx,[rbp+0x118]
389c68  8b f8                          mov    edi,eax
389c6a  e8 55 91 ff ff                 call   0x382dc4
389c6f  48 8b d8                       mov    rbx,rax
389c72  f3 0f 10 3d 6e f2 eb ff        movss  xmm7,DWORD PTR [rip+0xffffffffffebf26e]        # 0x248ee8 ; f32=1
389c7a  48 8d 0d 5f 24 07 00           lea    rcx,[rip+0x7245f]        # 0x3fc0e0
389c81  f3 0f 10 35 33 95 f0 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff09533]        # 0x2931bc ; f32=16
389c89  ba 02 00 00 00                 mov    edx,0x2
389c8e  f3 0f 59 fe                    mulss  xmm7,xmm6
389c92  e8 21 cb fa ff                 call   0x3367b8
389c97  48 8b c8                       mov    rcx,rax
389c9a  0f 28 ce                       movaps xmm1,xmm6
389c9d  e8 4a ae fd ff                 call   0x364aec
389ca2  48 c7 44 24 40 00 00 00 00     mov    QWORD PTR [rsp+0x40],0x0
389cab  48 8b d0                       mov    rdx,rax
389cae  f3 44 0f 11 64 24 38           movss  DWORD PTR [rsp+0x38],xmm12
389cb5  4c 8b cb                       mov    r9,rbx
389cb8  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
389cc1  0f 28 d7                       movaps xmm2,xmm7
389cc4  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
389cc9  49 8b ce                       mov    rcx,r14
389ccc  89 7c 24 20                    mov    DWORD PTR [rsp+0x20],edi
389cd0  e8 23 95 01 00                 call   0x3a31f8
389cd5  4d 8b b5 98 02 00 00           mov    r14,QWORD PTR [r13+0x298]
389cdc  49 8b cc                       mov    rcx,r12
389cdf  e8 08 3b f4 ff                 call   0x2cd7ec
389ce4  48 8b c8                       mov    rcx,rax
389ce7  33 d2                          xor    edx,edx
389ce9  e8 62 7f 00 00                 call   0x391c50
389cee  49 8b cc                       mov    rcx,r12
389cf1  48 8b f0                       mov    rsi,rax
389cf4  e8 f3 3a f4 ff                 call   0x2cd7ec
389cf9  49 8b cf                       mov    rcx,r15
389cfc  48 8b f8                       mov    rdi,rax
389cff  e8 08 5b f6 ff                 call   0x2ef80c
389d04  f3 0f 10 35 dc f1 eb ff        movss  xmm6,DWORD PTR [rip+0xffffffffffebf1dc]        # 0x248ee8 ; f32=1
389d0c  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
389d11  f3 0f 59 35 17 f7 f1 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff1f717]        # 0x2a9430 ; f32=42
389d19  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
389d1e  8b d8                          mov    ebx,eax
389d20  f3 0f 58 74 24 50              addss  xmm6,DWORD PTR [rsp+0x50]
389d26  e8 c9 eb fe ff                 call   0x3788f4
389d2b  48 8b 15 f6 bd 07 00           mov    rdx,QWORD PTR [rip+0x7bdf6]        # 0x405b28
389d32  48 8d 8d 18 01 00 00           lea    rcx,[rbp+0x118]
389d39  0f 28 ce                       movaps xmm1,xmm6
389d3c  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
389d41  f3 0f 10 82 30 3c 00 00        movss  xmm0,DWORD PTR [rdx+0x3c30]
389d49  f3 0f 59 05 ff 34 f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff034ff]        # 0x28d250 ; f32=0.5
389d51  f3 0f 5c d0                    subss  xmm2,xmm0
389d55  e8 e6 25 f4 ff                 call   0x2cc340
389d5a  4c 8b cf                       mov    r9,rdi
389d5d  48 89 74 24 20                 mov    QWORD PTR [rsp+0x20],rsi
389d62  44 8b c3                       mov    r8d,ebx
389d65  48 8d 95 18 01 00 00           lea    rdx,[rbp+0x118]
389d6c  49 8b ce                       mov    rcx,r14
389d6f  e8 48 94 01 00                 call   0x3a31bc
389d74  48 8d 4d 40                    lea    rcx,[rbp+0x40]
389d78  e8 77 27 f4 ff                 call   0x2cc4f4
389d7d  8a 85 08 01 00 00              mov    al,BYTE PTR [rbp+0x108]
389d83  4c 8d 9c 24 b8 01 00 00        lea    r11,[rsp+0x1b8]
389d8b  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
389d90  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
389d95  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
389d9a  45 0f 28 53 b8                 movaps xmm10,XMMWORD PTR [r11-0x48]
389d9f  45 0f 28 63 a8                 movaps xmm12,XMMWORD PTR [r11-0x58]
389da4  49 8b e3                       mov    rsp,r11
389da7  41 5f                          pop    r15
389da9  41 5e                          pop    r14
389dab  41 5d                          pop    r13
389dad  41 5c                          pop    r12
389daf  5f                             pop    rdi
389db0  5e                             pop    rsi
389db1  5b                             pop    rbx
389db2  5d                             pop    rbp
389db3  c3                             ret

; pdata function 0x3893b0..0x38982e unwind=0x3d43c4
3893b0  48 8b c4                       mov    rax,rsp
3893b3  55                             push   rbp
3893b4  53                             push   rbx
3893b5  56                             push   rsi
3893b6  57                             push   rdi
3893b7  41 54                          push   r12
3893b9  41 55                          push   r13
3893bb  41 56                          push   r14
3893bd  41 57                          push   r15
3893bf  48 8d 6c 24 98                 lea    rbp,[rsp-0x68]
3893c4  48 81 ec 68 01 00 00           sub    rsp,0x168
3893cb  48 63 15 2e 2d 07 00           movsxd rdx,DWORD PTR [rip+0x72d2e]        # 0x3fc100
3893d2  4c 8d 3d 2f 2d 07 00           lea    r15,[rip+0x72d2f]        # 0x3fc108
3893d9  0f 29 70 a8                    movaps XMMWORD PTR [rax-0x58],xmm6
3893dd  0f 29 78 98                    movaps XMMWORD PTR [rax-0x68],xmm7
3893e1  44 0f 29 40 88                 movaps XMMWORD PTR [rax-0x78],xmm8
3893e6  44 0f 29 88 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm9
3893ee  48 63 f9                       movsxd rdi,ecx
3893f1  49 8b cf                       mov    rcx,r15
3893f4  44 0f 29 90 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm10
3893fc  44 0f 29 98 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm11
389404  e8 a7 d3 fa ff                 call   0x3367b0
389409  48 8b d7                       mov    rdx,rdi
38940c  48 8d 48 40                    lea    rcx,[rax+0x40]
389410  e8 0b b9 f4 ff                 call   0x2d4d20
389415  48 8b d0                       mov    rdx,rax
389418  48 8d 4d 80                    lea    rcx,[rbp-0x80]
38941c  e8 73 ad f4 ff                 call   0x2d4194
389421  e8 da 3d fd ff                 call   0x35d200
389426  4c 8b e0                       mov    r12,rax
389429  e8 76 98 00 00                 call   0x392ca4
38942e  48 8d 4d 80                    lea    rcx,[rbp-0x80]
389432  e8 b5 43 f4 ff                 call   0x2cd7ec
389437  48 8b d0                       mov    rdx,rax
38943a  45 33 c0                       xor    r8d,r8d
38943d  49 8b cc                       mov    rcx,r12
389440  e8 cf 91 00 00                 call   0x392614
389445  f3 41 0f 10 74 24 2c           movss  xmm6,DWORD PTR [r12+0x2c]
38944c  48 8d 4d 80                    lea    rcx,[rbp-0x80]
389450  8b d8                          mov    ebx,eax
389452  e8 95 43 f4 ff                 call   0x2cd7ec
389457  f3 44 0f 10 15 00 9e f0 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff09e00]        # 0x293260 ; f32=-1
389460  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
389467  48 8b d0                       mov    rdx,rax
38946a  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
389471  41 b1 01                       mov    r9b,0x1
389474  45 33 c0                       xor    r8d,r8d
389477  e8 20 63 00 00                 call   0x38f79c
38947c  0f 28 d6                       movaps xmm2,xmm6
38947f  48 8d 8d c8 00 00 00           lea    rcx,[rbp+0xc8]
389486  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
38948a  e8 b1 2e f4 ff                 call   0x2cc340
38948f  f2 41 0f 10 84 24 00 01 00 00  movsd  xmm0,QWORD PTR [r12+0x100]
389499  4c 8d 85 c8 00 00 00           lea    r8,[rbp+0xc8]
3894a0  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
3894a7  f2 0f 11 85 c0 00 00 00        movsd  QWORD PTR [rbp+0xc0],xmm0
3894af  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3894b4  e8 1f 65 f6 ff                 call   0x2ef9d8
3894b9  4c 8b c0                       mov    r8,rax
3894bc  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
3894c3  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3894c8  e8 bb 1e f5 ff                 call   0x2db388
3894cd  41 0f 28 ca                    movaps xmm1,xmm10
3894d1  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3894d6  e8 a5 35 ff ff                 call   0x37ca80
3894db  45 33 c9                       xor    r9d,r9d
3894de  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
3894e3  45 33 c0                       xor    r8d,r8d
3894e6  8b d3                          mov    edx,ebx
3894e8  e8 ef b3 00 00                 call   0x3948dc
3894ed  4c 8d 8d b8 00 00 00           lea    r9,[rbp+0xb8]
3894f4  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
3894fc  4c 8d 85 b0 00 00 00           lea    r8,[rbp+0xb0]
389503  8b d3                          mov    edx,ebx
389505  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
38950a  e8 d1 32 03 00                 call   0x3bc7e0
38950f  48 63 35 ea 2b 07 00           movsxd rsi,DWORD PTR [rip+0x72bea]        # 0x3fc100
389516  49 8b cf                       mov    rcx,r15
389519  48 8b d6                       mov    rdx,rsi
38951c  44 8a e8                       mov    r13b,al
38951f  e8 8c d2 fa ff                 call   0x3367b0
389524  45 0f 57 db                    xorps  xmm11,xmm11
389528  8b 58 74                       mov    ebx,DWORD PTR [rax+0x74]
38952b  3b fb                          cmp    edi,ebx
38952d  41 0f 94 c6                    sete   r14b
389531  45 84 ed                       test   r13b,r13b
389534  74 1c                          je     0x389552
389536  3b fb                          cmp    edi,ebx
389538  74 18                          je     0x389552
38953a  48 8b d6                       mov    rdx,rsi
38953d  c7 05 cd 64 ef ff 00 00 00 00  mov    DWORD PTR [rip+0xffffffffffef64cd],0x0        # 0x27fa14
389547  49 8b cf                       mov    rcx,r15
38954a  e8 61 d2 fa ff                 call   0x3367b0
38954f  89 78 74                       mov    DWORD PTR [rax+0x74],edi
389552  33 d2                          xor    edx,edx
389554  48 c7 44 24 60 00 00 00 00     mov    QWORD PTR [rsp+0x60],0x0
38955d  48 8d 4c 24 6c                 lea    rcx,[rsp+0x6c]
389562  c7 44 24 68 00 00 00 00        mov    DWORD PTR [rsp+0x68],0x0
38956a  e8 65 cf fa ff                 call   0x3364d4
38956f  0f 10 44 24 60                 movups xmm0,XMMWORD PTR [rsp+0x60]
389574  48 8d 4d 80                    lea    rcx,[rbp-0x80]
389578  0f 10 4c 24 6c                 movups xmm1,XMMWORD PTR [rsp+0x6c]
38957d  0f 29 45 a0                    movaps XMMWORD PTR [rbp-0x60],xmm0
389581  0f 11 4d ac                    movups XMMWORD PTR [rbp-0x54],xmm1
389585  e8 62 42 f4 ff                 call   0x2cd7ec
38958a  48 8b c8                       mov    rcx,rax
38958d  4c 8d 45 a0                    lea    r8,[rbp-0x60]
389591  ba 05 00 00 00                 mov    edx,0x5
389596  e8 85 7a ff ff                 call   0x381020
38959b  80 bd b0 00 00 00 00           cmp    BYTE PTR [rbp+0xb0],0x0
3895a2  48 8b f0                       mov    rsi,rax
3895a5  75 09                          jne    0x3895b0
3895a7  3b fb                          cmp    edi,ebx
3895a9  74 05                          je     0x3895b0
3895ab  45 33 c9                       xor    r9d,r9d
3895ae  eb 03                          jmp    0x3895b3
3895b0  41 b1 01                       mov    r9b,0x1
3895b3  f3 44 0f 10 0d 98 3c f0 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff03c98]        # 0x28d254 ; f32=1
3895bc  0f 57 c9                       xorps  xmm1,xmm1
3895bf  f3 0f 10 35 ed 9b f0 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff09bed]        # 0x2931b4 ; f32=14
3895c7  41 0f 28 d1                    movaps xmm2,xmm9
3895cb  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
3895cf  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3895d5  e8 6e c8 fa ff                 call   0x335e48
3895da  f3 0f 11 06                    movss  DWORD PTR [rsi],xmm0
3895de  45 8a ce                       mov    r9b,r14b
3895e1  f3 0f 10 46 08                 movss  xmm0,DWORD PTR [rsi+0x8]
3895e6  41 0f 28 d1                    movaps xmm2,xmm9
3895ea  0f 57 c9                       xorps  xmm1,xmm1
3895ed  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3895f3  e8 50 c8 fa ff                 call   0x335e48
3895f8  f3 0f 11 46 08                 movss  DWORD PTR [rsi+0x8],xmm0
3895fd  41 0f 28 d1                    movaps xmm2,xmm9
389601  44 8a 8d b0 00 00 00           mov    r9b,BYTE PTR [rbp+0xb0]
389608  0f 57 c9                       xorps  xmm1,xmm1
38960b  f3 0f 10 46 04                 movss  xmm0,DWORD PTR [rsi+0x4]
389610  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
389616  e8 2d c8 fa ff                 call   0x335e48
38961b  f3 44 0f 10 46 08              movss  xmm8,DWORD PTR [rsi+0x8]
389621  41 0f 28 c9                    movaps xmm1,xmm9
389625  b9 01 00 00 00                 mov    ecx,0x1
38962a  f3 0f 11 46 04                 movss  DWORD PTR [rsi+0x4],xmm0
38962f  e8 64 8c 00 00                 call   0x392298
389634  8b d0                          mov    edx,eax
389636  48 8d 4d d0                    lea    rcx,[rbp-0x30]
38963a  e8 95 ce fa ff                 call   0x3364d4
38963f  f3 0f 10 0d 85 9a f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff09a85]        # 0x2930cc ; f32=0.7
389647  b9 01 00 00 00                 mov    ecx,0x1
38964c  f3 0f 10 7e 04                 movss  xmm7,DWORD PTR [rsi+0x4]
389651  f3 0f 6f 30                    movdqu xmm6,XMMWORD PTR [rax]
389655  e8 3e 8c 00 00                 call   0x392298
38965a  8b d0                          mov    edx,eax
38965c  48 8d 4d e0                    lea    rcx,[rbp-0x20]
389660  e8 6f ce fa ff                 call   0x3364d4
389665  41 0f 28 c9                    movaps xmm1,xmm9
389669  b9 02 00 00 00                 mov    ecx,0x2
38966e  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
389671  f3 0f 7f 44 24 40              movdqu XMMWORD PTR [rsp+0x40],xmm0
389677  e8 1c 8c 00 00                 call   0x392298
38967c  8b d0                          mov    edx,eax
38967e  48 8d 4d f0                    lea    rcx,[rbp-0x10]
389682  e8 4d ce fa ff                 call   0x3364d4
389687  0f 28 df                       movaps xmm3,xmm7
38968a  66 0f 7f 75 c0                 movdqa XMMWORD PTR [rbp-0x40],xmm6
38968f  4c 8d 44 24 40                 lea    r8,[rsp+0x40]
389694  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
389699  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
38969c  48 8d 4d a0                    lea    rcx,[rbp-0x60]
3896a0  f3 0f 7f 44 24 50              movdqu XMMWORD PTR [rsp+0x50],xmm0
3896a6  e8 f9 fe fe ff                 call   0x3795a4
3896ab  41 0f 28 d8                    movaps xmm3,xmm8
3896af  4c 8d 45 c0                    lea    r8,[rbp-0x40]
3896b3  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
3896b8  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
3896bd  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3896c0  4c 8d 7e 0c                    lea    r15,[rsi+0xc]
3896c4  f3 0f 7f 44 24 50              movdqu XMMWORD PTR [rsp+0x50],xmm0
3896ca  e8 d5 fe fe ff                 call   0x3795a4
3896cf  f3 0f 10 4e 08                 movss  xmm1,DWORD PTR [rsi+0x8]
3896d4  33 c9                          xor    ecx,ecx
3896d6  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3896d9  f3 41 0f 7f 07                 movdqu XMMWORD PTR [r15],xmm0
3896de  49 8b bc 24 98 02 00 00        mov    rdi,QWORD PTR [r12+0x298]
3896e6  e8 ad 8b 00 00                 call   0x392298
3896eb  f3 0f 10 05 f5 f7 eb ff        movss  xmm0,DWORD PTR [rip+0xffffffffffebf7f5]        # 0x248ee8 ; f32=1
3896f3  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
3896fa  f3 0f 59 05 32 9a f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff09a32]        # 0x293134 ; f32=2
389702  8b d8                          mov    ebx,eax
389704  f3 0f 10 54 24 3c              movss  xmm2,DWORD PTR [rsp+0x3c]
38970a  f3 0f 10 4c 24 30              movss  xmm1,DWORD PTR [rsp+0x30]
389710  f3 0f 5c d0                    subss  xmm2,xmm0
389714  e8 27 2c f4 ff                 call   0x2cc340
389719  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
389721  4c 8d 44 24 38                 lea    r8,[rsp+0x38]
389726  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
38972d  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
389734  44 8b cb                       mov    r9d,ebx
389737  48 8b cf                       mov    rcx,rdi
38973a  e8 05 7b 01 00                 call   0x3a1244
38973f  4d 8b a4 24 98 02 00 00        mov    r12,QWORD PTR [r12+0x298]
389747  48 8d 4d 80                    lea    rcx,[rbp-0x80]
38974b  e8 9c 40 f4 ff                 call   0x2cd7ec
389750  48 8b c8                       mov    rcx,rax
389753  33 d2                          xor    edx,edx
389755  e8 f6 84 00 00                 call   0x391c50
38975a  48 8d 4d 80                    lea    rcx,[rbp-0x80]
38975e  4c 8b f0                       mov    r14,rax
389761  e8 86 40 f4 ff                 call   0x2cd7ec
389766  49 8b cf                       mov    rcx,r15
389769  48 8b f0                       mov    rsi,rax
38976c  e8 9b 60 f6 ff                 call   0x2ef80c
389771  48 8d 95 c8 00 00 00           lea    rdx,[rbp+0xc8]
389778  8b f8                          mov    edi,eax
38977a  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
38977f  e8 70 f1 fe ff                 call   0x3788f4
389784  48 8d 4d 80                    lea    rcx,[rbp-0x80]
389788  48 8b d8                       mov    rbx,rax
38978b  e8 5c 40 f4 ff                 call   0x2cd7ec
389790  48 8b d0                       mov    rdx,rax
389793  f3 44 0f 11 54 24 20           movss  DWORD PTR [rsp+0x20],xmm10
38979a  41 b1 01                       mov    r9b,0x1
38979d  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
3897a2  45 33 c0                       xor    r8d,r8d
3897a5  e8 f2 5f 00 00                 call   0x38f79c
3897aa  f3 0f 10 53 04                 movss  xmm2,DWORD PTR [rbx+0x4]
3897af  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
3897b6  f3 0f 10 4c 24 30              movss  xmm1,DWORD PTR [rsp+0x30]
3897bc  f3 0f 10 40 04                 movss  xmm0,DWORD PTR [rax+0x4]
3897c1  f3 0f 59 05 87 3a f0 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff03a87]        # 0x28d250 ; f32=0.5
3897c9  f3 0f 5c d0                    subss  xmm2,xmm0
3897cd  e8 6e 2b f4 ff                 call   0x2cc340
3897d2  4c 8b ce                       mov    r9,rsi
3897d5  4c 89 74 24 20                 mov    QWORD PTR [rsp+0x20],r14
3897da  44 8b c7                       mov    r8d,edi
3897dd  48 8d 95 c0 00 00 00           lea    rdx,[rbp+0xc0]
3897e4  49 8b cc                       mov    rcx,r12
3897e7  e8 d0 99 01 00                 call   0x3a31bc
3897ec  48 8d 4d 80                    lea    rcx,[rbp-0x80]
3897f0  e8 ff 2c f4 ff                 call   0x2cc4f4
3897f5  4c 8d 9c 24 68 01 00 00        lea    r11,[rsp+0x168]
3897fd  41 8a c5                       mov    al,r13b
389800  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
389805  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
38980a  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
38980f  45 0f 28 4b b8                 movaps xmm9,XMMWORD PTR [r11-0x48]
389814  45 0f 28 53 a8                 movaps xmm10,XMMWORD PTR [r11-0x58]
389819  45 0f 28 5b 98                 movaps xmm11,XMMWORD PTR [r11-0x68]
38981e  49 8b e3                       mov    rsp,r11
389821  41 5f                          pop    r15
389823  41 5e                          pop    r14
389825  41 5d                          pop    r13
389827  41 5c                          pop    r12
389829  5f                             pop    rdi
38982a  5e                             pop    rsi
38982b  5b                             pop    rbx
38982c  5d                             pop    rbp
38982d  c3                             ret

; pdata function 0x388b4c..0x388c0b unwind=0x3d2130
388b4c  40 53                          rex push rbx
388b4e  55                             push   rbp
388b4f  56                             push   rsi
388b50  57                             push   rdi
388b51  48 83 ec 28                    sub    rsp,0x28
388b55  48 63 3d a4 35 07 00           movsxd rdi,DWORD PTR [rip+0x735a4]        # 0x3fc100
388b5c  48 8d 2d a5 35 07 00           lea    rbp,[rip+0x735a5]        # 0x3fc108
388b63  48 8b d7                       mov    rdx,rdi
388b66  48 8b cd                       mov    rcx,rbp
388b69  e8 42 dc fa ff                 call   0x3367b0
388b6e  48 8d 48 58                    lea    rcx,[rax+0x58]
388b72  e8 51 08 f5 ff                 call   0x2d93c8
388b77  48 85 c0                       test   rax,rax
388b7a  0f 84 82 00 00 00              je     0x388c02
388b80  48 8b d7                       mov    rdx,rdi
388b83  48 8b cd                       mov    rcx,rbp
388b86  e8 25 dc fa ff                 call   0x3367b0
388b8b  48 8d 48 58                    lea    rcx,[rax+0x58]
388b8f  e8 34 08 f5 ff                 call   0x2d93c8
388b94  48 8b d7                       mov    rdx,rdi
388b97  48 8b cd                       mov    rcx,rbp
388b9a  48 8b d8                       mov    rbx,rax
388b9d  e8 0e dc fa ff                 call   0x3367b0
388ba2  48 63 48 70                    movsxd rcx,DWORD PTR [rax+0x70]
388ba6  48 3b d9                       cmp    rbx,rcx
388ba9  76 57                          jbe    0x388c02
388bab  39 3d 23 a2 07 00              cmp    DWORD PTR [rip+0x7a223],edi        # 0x402dd4
388bb1  74 24                          je     0x388bd7
388bb3  e8 48 46 fd ff                 call   0x35d200
388bb8  c7 80 88 00 00 00 00 00 00 00  mov    DWORD PTR [rax+0x88],0x0
388bc2  e8 39 46 fd ff                 call   0x35d200
388bc7  c7 80 98 00 00 00 00 00 00 00  mov    DWORD PTR [rax+0x98],0x0
388bd1  8b 3d 29 35 07 00              mov    edi,DWORD PTR [rip+0x73529]        # 0x3fc100
388bd7  48 63 df                       movsxd rbx,edi
388bda  48 8b cd                       mov    rcx,rbp
388bdd  48 8b d3                       mov    rdx,rbx
388be0  e8 cb db fa ff                 call   0x3367b0
388be5  48 8b d3                       mov    rdx,rbx
388be8  48 8b cd                       mov    rcx,rbp
388beb  48 8b f8                       mov    rdi,rax
388bee  e8 bd db fa ff                 call   0x3367b0
388bf3  48 8d 4f 58                    lea    rcx,[rdi+0x58]
388bf7  48 63 50 70                    movsxd rdx,DWORD PTR [rax+0x70]
388bfb  e8 b4 6b f6 ff                 call   0x2ef7b4
388c00  ff 10                          call   QWORD PTR [rax]
388c02  48 83 c4 28                    add    rsp,0x28
388c06  5f                             pop    rdi
388c07  5e                             pop    rsi
388c08  5d                             pop    rbp
388c09  5b                             pop    rbx
388c0a  c3                             ret

; pdata function 0x386fa4..0x38724c unwind=0x3d45d0
386fa4  40 53                          rex push rbx
386fa6  55                             push   rbp
386fa7  56                             push   rsi
386fa8  57                             push   rdi
386fa9  41 54                          push   r12
386fab  41 55                          push   r13
386fad  41 56                          push   r14
386faf  41 57                          push   r15
386fb1  48 83 ec 68                    sub    rsp,0x68
386fb5  0f 29 7c 24 50                 movaps XMMWORD PTR [rsp+0x50],xmm7
386fba  44 0f 29 44 24 40              movaps XMMWORD PTR [rsp+0x40],xmm8
386fc0  44 0f 29 4c 24 30              movaps XMMWORD PTR [rsp+0x30],xmm9
386fc6  e8 e1 b6 00 00                 call   0x3926ac
386fcb  f3 44 0f 10 0d 80 62 f0 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff06280]        # 0x28d254 ; f32=1
386fd4  4c 8d 2d 25 90 c7 ff           lea    r13,[rip+0xffffffffffc79025]        # 0x0
386fdb  45 33 f6                       xor    r14d,r14d
386fde  0f 57 ff                       xorps  xmm7,xmm7
386fe1  41 8d 6e 01                    lea    ebp,[r14+0x1]
386fe5  49 63 c6                       movsxd rax,r14d
386fe8  44 8b f5                       mov    r14d,ebp
386feb  81 fd 90 00 00 00              cmp    ebp,0x90
386ff1  0f 8d e4 00 00 00              jge    0x3870db
386ff7  48 c1 e0 03                    shl    rax,0x3
386ffb  4d 8d a5 e0 2d 40 00           lea    r12,[r13+0x402de0]
387002  4c 03 e0                       add    r12,rax
387005  4c 8d 3d d8 bd 07 00           lea    r15,[rip+0x7bdd8]        # 0x402de4
38700c  4c 03 f8                       add    r15,rax
38700f  48 63 c5                       movsxd rax,ebp
387012  49 8d 9d e0 2d 40 00           lea    rbx,[r13+0x402de0]
387019  f3 41 0f 10 84 c5 e4 2d 40 00  movss  xmm0,DWORD PTR [r13+rax*8+0x402de4]
387023  48 8d 1c c3                    lea    rbx,[rbx+rax*8]
387027  f3 41 0f 5c 07                 subss  xmm0,DWORD PTR [r15]
38702c  f3 0f 10 0b                    movss  xmm1,DWORD PTR [rbx]
387030  f3 41 0f 5c 0c 24              subss  xmm1,DWORD PTR [r12]
387036  f3 0f 59 c0                    mulss  xmm0,xmm0
38703a  f3 0f 59 c9                    mulss  xmm1,xmm1
38703e  f3 0f 58 c1                    addss  xmm0,xmm1
387042  e8 a1 ce f5 ff                 call   0x2e3ee8
387047  f3 0f 5e 05 e9 23 f2 ff        divss  xmm0,DWORD PTR [rip+0xfffffffffff223e9]        # 0x2a9438 ; f32=55
38704f  41 0f 28 c9                    movaps xmm1,xmm9
387053  f3 0f 5c c8                    subss  xmm1,xmm0
387057  0f 2f cf                       comiss xmm1,xmm7
38705a  76 6c                          jbe    0x3870c8
38705c  33 c9                          xor    ecx,ecx
38705e  e8 35 b2 00 00                 call   0x392298
387063  8b f8                          mov    edi,eax
387065  e8 62 be 00 00                 call   0x392ecc
38706a  48 8d 8c 24 b0 00 00 00        lea    rcx,[rsp+0xb0]
387072  48 8b f0                       mov    rsi,rax
387075  e8 7e be 00 00                 call   0x392ef8
38707a  48 8b d0                       mov    rdx,rax
38707d  48 8d 8c 24 b8 00 00 00        lea    rcx,[rsp+0xb8]
387085  4c 8b c3                       mov    r8,rbx
387088  e8 4b 89 f6 ff                 call   0x2ef9d8
38708d  48 8d 8c 24 c0 00 00 00        lea    rcx,[rsp+0xc0]
387095  48 8b d8                       mov    rbx,rax
387098  e8 5b be 00 00                 call   0x392ef8
38709d  48 8b d0                       mov    rdx,rax
3870a0  48 8d 8c 24 c8 00 00 00        lea    rcx,[rsp+0xc8]
3870a8  4d 8b c4                       mov    r8,r12
3870ab  e8 28 89 f6 ff                 call   0x2ef9d8
3870b0  48 8b d0                       mov    rdx,rax
3870b3  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
3870ba  44 8b cf                       mov    r9d,edi
3870bd  4c 8b c3                       mov    r8,rbx
3870c0  48 8b ce                       mov    rcx,rsi
3870c3  e8 2c 91 01 00                 call   0x3a01f4
3870c8  ff c5                          inc    ebp
3870ca  81 fd 90 00 00 00              cmp    ebp,0x90
3870d0  0f 8c 39 ff ff ff              jl     0x38700f
3870d6  e9 06 ff ff ff                 jmp    0x386fe1
3870db  e8 cc b5 00 00                 call   0x3926ac
3870e0  33 f6                          xor    esi,esi
3870e2  f3 44 0f 10 40 10              movss  xmm8,DWORD PTR [rax+0x10]
3870e8  f3 41 0f 10 94 f5 60 32 40 00  movss  xmm2,DWORD PTR [r13+rsi*8+0x403260]
3870f2  49 8d ad e0 2d 40 00           lea    rbp,[r13+0x402de0]
3870f9  48 8d 6c f5 00                 lea    rbp,[rbp+rsi*8+0x0]
3870fe  0f 28 ca                       movaps xmm1,xmm2
387101  41 0f 28 c0                    movaps xmm0,xmm8
387105  f3 41 0f 59 c8                 mulss  xmm1,xmm8
38710a  f3 41 0f 59 84 f5 64 32 40 00  mulss  xmm0,DWORD PTR [r13+rsi*8+0x403264]
387114  f3 0f 58 4d 00                 addss  xmm1,DWORD PTR [rbp+0x0]
387119  f3 41 0f 58 84 f5 e4 2d 40 00  addss  xmm0,DWORD PTR [r13+rsi*8+0x402de4]
387123  0f 2f f9                       comiss xmm7,xmm1
387126  f3 0f 11 4d 00                 movss  DWORD PTR [rbp+0x0],xmm1
38712b  f3 41 0f 11 84 f5 e4 2d 40 00  movss  DWORD PTR [r13+rsi*8+0x402de4],xmm0
387135  72 11                          jb     0x387148
387137  0f 57 15 62 c1 f0 ff           xorps  xmm2,XMMWORD PTR [rip+0xfffffffffff0c162]        # 0x2932a0
38713e  f3 41 0f 11 94 f5 60 32 40 00  movss  DWORD PTR [r13+rsi*8+0x403260],xmm2
387148  e8 e7 bd 00 00                 call   0x392f34
38714d  f3 0f 10 4d 00                 movss  xmm1,DWORD PTR [rbp+0x0]
387152  0f 2f c8                       comiss xmm1,xmm0
387155  72 1b                          jb     0x387172
387157  f3 41 0f 10 84 f5 60 32 40 00  movss  xmm0,DWORD PTR [r13+rsi*8+0x403260]
387161  0f 57 05 38 c1 f0 ff           xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff0c138]        # 0x2932a0
387168  f3 41 0f 11 84 f5 60 32 40 00  movss  DWORD PTR [r13+rsi*8+0x403260],xmm0
387172  41 0f 2f bc f5 e4 2d 40 00     comiss xmm7,DWORD PTR [r13+rsi*8+0x402de4]
38717b  72 1b                          jb     0x387198
38717d  f3 41 0f 10 84 f5 64 32 40 00  movss  xmm0,DWORD PTR [r13+rsi*8+0x403264]
387187  0f 57 05 12 c1 f0 ff           xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff0c112]        # 0x2932a0
38718e  f3 41 0f 11 84 f5 64 32 40 00  movss  DWORD PTR [r13+rsi*8+0x403264],xmm0
387198  e8 47 bd 00 00                 call   0x392ee4
38719d  f3 41 0f 10 8c f5 e4 2d 40 00  movss  xmm1,DWORD PTR [r13+rsi*8+0x402de4]
3871a7  0f 2f c8                       comiss xmm1,xmm0
3871aa  72 1b                          jb     0x3871c7
3871ac  f3 41 0f 10 84 f5 64 32 40 00  movss  xmm0,DWORD PTR [r13+rsi*8+0x403264]
3871b6  0f 57 05 e3 c0 f0 ff           xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff0c0e3]        # 0x2932a0
3871bd  f3 41 0f 11 84 f5 64 32 40 00  movss  DWORD PTR [r13+rsi*8+0x403264],xmm0
3871c7  e8 00 bd 00 00                 call   0x392ecc
3871cc  41 0f 28 c9                    movaps xmm1,xmm9
3871d0  33 c9                          xor    ecx,ecx
3871d2  48 8b f8                       mov    rdi,rax
3871d5  e8 be b0 00 00                 call   0x392298
3871da  48 8d 8c 24 b0 00 00 00        lea    rcx,[rsp+0xb0]
3871e2  8b d8                          mov    ebx,eax
3871e4  e8 0f bd 00 00                 call   0x392ef8
3871e9  48 8b d0                       mov    rdx,rax
3871ec  48 8d 8c 24 b8 00 00 00        lea    rcx,[rsp+0xb8]
3871f4  4c 8b c5                       mov    r8,rbp
3871f7  e8 dc 87 f6 ff                 call   0x2ef9d8
3871fc  f3 0f 10 15 f8 68 f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff068f8]        # 0x28dafc ; f32=1.5
387204  48 8b d0                       mov    rdx,rax
387207  44 8b cb                       mov    r9d,ebx
38720a  c7 44 24 20 00 00 00 00        mov    DWORD PTR [rsp+0x20],0x0
387212  48 8b cf                       mov    rcx,rdi
387215  e8 5a 86 01 00                 call   0x39f874
38721a  48 ff c6                       inc    rsi
38721d  48 81 fe 90 00 00 00           cmp    rsi,0x90
387224  0f 85 be fe ff ff              jne    0x3870e8
38722a  0f 28 7c 24 50                 movaps xmm7,XMMWORD PTR [rsp+0x50]
38722f  44 0f 28 44 24 40              movaps xmm8,XMMWORD PTR [rsp+0x40]
387235  44 0f 28 4c 24 30              movaps xmm9,XMMWORD PTR [rsp+0x30]
38723b  48 83 c4 68                    add    rsp,0x68
38723f  41 5f                          pop    r15
387241  41 5e                          pop    r14
387243  41 5d                          pop    r13
387245  41 5c                          pop    r12
387247  5f                             pop    rdi
387248  5e                             pop    rsi
387249  5d                             pop    rbp
38724a  5b                             pop    rbx
38724b  c3                             ret

; pdata function 0x3872e8..0x3873ee unwind=0x3d2040
3872e8  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3872ed  57                             push   rdi
3872ee  48 83 ec 20                    sub    rsp,0x20
3872f2  e8 b5 b3 00 00                 call   0x3926ac
3872f7  f3 0f 10 15 f9 57 07 00        movss  xmm2,DWORD PTR [rip+0x757f9]        # 0x3fcaf8 ; CONFIG F.GUIAnimationSpeed value(+0x48)
3872ff  f3 0f 10 0d 09 87 ef ff        movss  xmm1,DWORD PTR [rip+0xffffffffffef8709]        # 0x27fa10 ; f32=1
387307  f3 0f 10 05 e9 4d 07 00        movss  xmm0,DWORD PTR [rip+0x74de9]        # 0x3fc0f8
38730f  f3 0f 59 50 10                 mulss  xmm2,DWORD PTR [rax+0x10]
387314  e8 43 e3 fa ff                 call   0x33565c
387319  f3 0f 11 05 d7 4d 07 00        movss  DWORD PTR [rip+0x74dd7],xmm0        # 0x3fc0f8
387321  e8 86 b3 00 00                 call   0x3926ac
387326  f3 0f 10 15 ca 57 07 00        movss  xmm2,DWORD PTR [rip+0x757ca]        # 0x3fcaf8 ; CONFIG F.GUIAnimationSpeed value(+0x48)
38732e  f3 0f 10 0d de 86 ef ff        movss  xmm1,DWORD PTR [rip+0xffffffffffef86de]        # 0x27fa14 ; f32=1
387336  f3 0f 10 05 be 4d 07 00        movss  xmm0,DWORD PTR [rip+0x74dbe]        # 0x3fc0fc
38733e  f3 0f 59 50 10                 mulss  xmm2,DWORD PTR [rax+0x10]
387343  e8 14 e3 fa ff                 call   0x33565c
387348  f3 0f 10 15 70 6e f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff06e70]        # 0x28e1c0 ; f32=0.001
387350  0f 2f 15 a1 4d 07 00           comiss xmm2,DWORD PTR [rip+0x74da1]        # 0x3fc0f8
387357  f3 0f 11 05 9d 4d 07 00        movss  DWORD PTR [rip+0x74d9d],xmm0        # 0x3fc0fc
38735f  0f 97 c0                       seta   al
387362  0f 2f d0                       comiss xmm2,xmm0
387365  0f 97 c1                       seta   cl
387368  80 3d a9 51 07 00 00           cmp    BYTE PTR [rip+0x751a9],0x0        # 0x3fc518 ; CONFIG Bools.DisableAnimations value(+0x48)
38736f  74 18                          je     0x387389
387371  b1 01                          mov    cl,0x1
387373  c7 05 7b 4d 07 00 00 00 80 3f  mov    DWORD PTR [rip+0x74d7b],0x3f800000        # 0x3fc0f8
38737d  c7 05 75 4d 07 00 00 00 80 3f  mov    DWORD PTR [rip+0x74d75],0x3f800000        # 0x3fc0fc
387387  eb 04                          jmp    0x38738d
387389  84 c0                          test   al,al
38738b  74 18                          je     0x3873a5
38738d  8b 05 41 ba 07 00              mov    eax,DWORD PTR [rip+0x7ba41]        # 0x402dd4
387393  89 05 67 4d 07 00              mov    DWORD PTR [rip+0x74d67],eax        # 0x3fc100
387399  c7 05 6d 86 ef ff 00 00 80 3f  mov    DWORD PTR [rip+0xffffffffffef866d],0x3f800000        # 0x27fa10
3873a3  eb 06                          jmp    0x3873ab
3873a5  8b 05 55 4d 07 00              mov    eax,DWORD PTR [rip+0x74d55]        # 0x3fc100
3873ab  84 c9                          test   cl,cl
3873ad  74 34                          je     0x3873e3
3873af  48 63 f8                       movsxd rdi,eax
3873b2  48 8d 0d 4f 4d 07 00           lea    rcx,[rip+0x74d4f]        # 0x3fc108
3873b9  48 8b d7                       mov    rdx,rdi
3873bc  c7 05 4e 86 ef ff 00 00 80 3f  mov    DWORD PTR [rip+0xffffffffffef864e],0x3f800000        # 0x27fa14
3873c6  e8 e5 f3 fa ff                 call   0x3367b0
3873cb  48 8b d7                       mov    rdx,rdi
3873ce  48 8d 0d 33 4d 07 00           lea    rcx,[rip+0x74d33]        # 0x3fc108
3873d5  48 8b d8                       mov    rbx,rax
3873d8  e8 d3 f3 fa ff                 call   0x3367b0
3873dd  8b 4b 74                       mov    ecx,DWORD PTR [rbx+0x74]
3873e0  89 48 70                       mov    DWORD PTR [rax+0x70],ecx
3873e3  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
3873e8  48 83 c4 20                    add    rsp,0x20
3873ec  5f                             pop    rdi
3873ed  c3                             ret

; pdata function 0x38724c..0x387272 unwind=0x3d2064
38724c  48 83 ec 28                    sub    rsp,0x28
387250  b9 01 00 00 00                 mov    ecx,0x1
387255  e8 12 17 01 00                 call   0x39896c
38725a  e8 29 98 00 00                 call   0x390a88
38725f  e8 24 98 00 00                 call   0x390a88
387264  b9 01 00 00 00                 mov    ecx,0x1
387269  48 83 c4 28                    add    rsp,0x28
38726d  e9 fa 16 01 00                 jmp    0x39896c

; pdata function 0x365038..0x365815 unwind=0x3d3800
365038  48 8b c4                       mov    rax,rsp
36503b  55                             push   rbp
36503c  53                             push   rbx
36503d  56                             push   rsi
36503e  57                             push   rdi
36503f  41 56                          push   r14
365041  41 57                          push   r15
365043  48 8d 68 a1                    lea    rbp,[rax-0x5f]
365047  48 81 ec d8 00 00 00           sub    rsp,0xd8
36504e  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
365052  48 8d 55 67                    lea    rdx,[rbp+0x67]
365056  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
36505a  48 8d 4d 67                    lea    rcx,[rbp+0x67]
36505e  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
365063  44 0f 29 50 88                 movaps XMMWORD PTR [rax-0x78],xmm10
365068  44 0f 29 98 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm11
365070  e8 b3 d2 fe ff                 call   0x352328
365075  48 8b c8                       mov    rcx,rax
365078  e8 bb 80 f7 ff                 call   0x2dd138
36507d  33 d2                          xor    edx,edx
36507f  48 8b c8                       mov    rcx,rax
365082  44 8d 42 2f                    lea    r8d,[rdx+0x2f]
365086  e8 19 7f 02 00                 call   0x38cfa4
36508b  f3 0f 10 15 79 3e ee ff        movss  xmm2,DWORD PTR [rip+0xffffffffffee3e79]        # 0x248f0c ; f32=580
365093  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365097  f3 0f 10 0d 49 91 f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff29149]        # 0x28e1e8 ; f32=300
36509f  e8 9c 72 f6 ff                 call   0x2cc340
3650a4  33 d2                          xor    edx,edx
3650a6  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3650aa  e8 bd 6b 03 00                 call   0x39bc6c
3650af  e8 18 de 02 00                 call   0x392ecc
3650b4  48 8b 0d 6d 0a 0a 00           mov    rcx,QWORD PTR [rip+0xa0a6d]        # 0x405b28
3650bb  ba 11 00 00 00                 mov    edx,0x11
3650c0  48 8b f8                       mov    rdi,rax
3650c3  f3 0f 10 81 d0 37 00 00        movss  xmm0,DWORD PTR [rcx+0x37d0]
3650cb  44 8d 4a ff                    lea    r9d,[rdx-0x1]
3650cf  f3 44 0f 10 81 e0 37 00 00     movss  xmm8,DWORD PTR [rcx+0x37e0]
3650d8  44 8d 42 02                    lea    r8d,[rdx+0x2]
3650dc  f3 0f 59 05 00 86 f2 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff28600]        # 0x28d6e4 ; f32=255
3650e4  f3 0f 2c c8                    cvttss2si ecx,xmm0
3650e8  89 4c 24 20                    mov    DWORD PTR [rsp+0x20],ecx
3650ec  48 8d 4d c7                    lea    rcx,[rbp-0x39]
3650f0  e8 23 62 f7 ff                 call   0x2db318
3650f5  48 8b c8                       mov    rcx,rax
3650f8  e8 0f a7 f8 ff                 call   0x2ef80c
3650fd  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
365101  8b d8                          mov    ebx,eax
365103  e8 f0 dd 02 00                 call   0x392ef8
365108  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
36510c  e8 23 de 02 00                 call   0x392f34
365111  0f 28 f8                       movaps xmm7,xmm0
365114  48 8d 4d 77                    lea    rcx,[rbp+0x77]
365118  f3 0f 58 fe                    addss  xmm7,xmm6
36511c  e8 d7 dd 02 00                 call   0x392ef8
365121  f3 0f 10 70 04                 movss  xmm6,DWORD PTR [rax+0x4]
365126  e8 b9 dd 02 00                 call   0x392ee4
36512b  f3 0f 58 f0                    addss  xmm6,xmm0
36512f  0f 28 cf                       movaps xmm1,xmm7
365132  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365136  0f 28 d6                       movaps xmm2,xmm6
365139  e8 02 72 f6 ff                 call   0x2cc340
36513e  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
365142  e8 b1 dd 02 00                 call   0x392ef8
365147  48 8d 4d a7                    lea    rcx,[rbp-0x59]
36514b  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
36514f  e8 a4 dd 02 00                 call   0x392ef8
365154  0f 28 ce                       movaps xmm1,xmm6
365157  48 8d 4d b7                    lea    rcx,[rbp-0x49]
36515b  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
365160  f3 0f 58 15 e0 30 f4 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff430e0]        # 0x2a8248 ; f32=57
365168  e8 d3 71 f6 ff                 call   0x2cc340
36516d  48 8b d0                       mov    rdx,rax
365170  c7 44 24 28 c0 00 00 00        mov    DWORD PTR [rsp+0x28],0xc0
365178  44 8b cb                       mov    r9d,ebx
36517b  f3 44 0f 11 44 24 20           movss  DWORD PTR [rsp+0x20],xmm8
365182  4c 8d 45 67                    lea    r8,[rbp+0x67]
365186  48 8b cf                       mov    rcx,rdi
365189  e8 b6 c0 03 00                 call   0x3a1244
36518e  e8 39 dd 02 00                 call   0x392ecc
365193  f3 44 0f 10 1d b8 80 f2 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff280b8]        # 0x28d254 ; f32=1
36519c  33 c9                          xor    ecx,ecx
36519e  41 0f 28 cb                    movaps xmm1,xmm11
3651a2  48 8b f8                       mov    rdi,rax
3651a5  e8 ee d0 02 00                 call   0x392298
3651aa  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3651ae  8b d8                          mov    ebx,eax
3651b0  e8 43 dd 02 00                 call   0x392ef8
3651b5  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3651b9  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3651bd  f3 0f 58 35 5b 89 f2 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff2895b]        # 0x28db20 ; f32=20
3651c5  e8 2e dd 02 00                 call   0x392ef8
3651ca  0f 28 ce                       movaps xmm1,xmm6
3651cd  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3651d1  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
3651d6  f3 0f 58 15 42 89 f2 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff28942]        # 0x28db20 ; f32=20
3651de  e8 5d 71 f6 ff                 call   0x2cc340
3651e3  f3 0f 10 3d fd 3c ee ff        movss  xmm7,DWORD PTR [rip+0xffffffffffee3cfd]        # 0x248ee8 ; f32=1
3651eb  48 8d 0d ee 6e 09 00           lea    rcx,[rip+0x96eee]        # 0x3fc0e0
3651f2  f3 0f 10 35 c2 df f2 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff2dfc2]        # 0x2931bc ; f32=16
3651fa  ba 02 00 00 00                 mov    edx,0x2
3651ff  f3 0f 59 fe                    mulss  xmm7,xmm6
365203  e8 b0 15 fd ff                 call   0x3367b8
365208  48 8b c8                       mov    rcx,rax
36520b  0f 28 ce                       movaps xmm1,xmm6
36520e  e8 d9 f8 ff ff                 call   0x364aec
365213  48 c7 44 24 40 00 00 00 00     mov    QWORD PTR [rsp+0x40],0x0
36521c  4c 8d 4d 67                    lea    r9,[rbp+0x67]
365220  45 0f 57 c0                    xorps  xmm8,xmm8
365224  48 8b d0                       mov    rdx,rax
365227  f3 44 0f 11 44 24 38           movss  DWORD PTR [rsp+0x38],xmm8
36522e  48 8d 05 57 08 f3 ff           lea    rax,[rip+0xfffffffffff30857]        # 0x295a8c
365235  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
36523e  0f 28 d7                       movaps xmm2,xmm7
365241  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
365246  48 8b cf                       mov    rcx,rdi
365249  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
36524d  e8 a6 df 03 00                 call   0x3a31f8
365252  e8 75 dc 02 00                 call   0x392ecc
365257  48 8d 55 b7                    lea    rdx,[rbp-0x49]
36525b  48 8b f0                       mov    rsi,rax
36525e  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365262  e8 35 e7 fe ff                 call   0x35399c ; STRING getter=0x35399c ESP PREVIEW
365267  48 8b c8                       mov    rcx,rax
36526a  e8 9d 8b f6 ff                 call   0x2cde0c
36526f  41 be 01 00 00 00              mov    r14d,0x1
365275  41 0f 28 cb                    movaps xmm1,xmm11
365279  41 8b ce                       mov    ecx,r14d
36527c  48 8b f8                       mov    rdi,rax
36527f  e8 14 d0 02 00                 call   0x392298
365284  48 8d 4d 77                    lea    rcx,[rbp+0x77]
365288  8b d8                          mov    ebx,eax
36528a  e8 69 dc 02 00                 call   0x392ef8
36528f  f3 44 0f 10 15 94 88 f2 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff28894]        # 0x28db2c ; f32=50
365298  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
36529c  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
3652a0  f3 41 0f 58 f2                 addss  xmm6,xmm10
3652a5  e8 4e dc 02 00                 call   0x392ef8
3652aa  0f 28 ce                       movaps xmm1,xmm6
3652ad  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3652b1  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
3652b6  f3 0f 58 15 82 2f f4 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff42f82]        # 0x2a8240 ; f32=21
3652be  e8 7d 70 f6 ff                 call   0x2cc340
3652c3  4c 8b cf                       mov    r9,rdi
3652c6  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
3652cf  44 8b c3                       mov    r8d,ebx
3652d2  48 8d 55 6f                    lea    rdx,[rbp+0x6f]
3652d6  48 8b ce                       mov    rcx,rsi
3652d9  e8 de de 03 00                 call   0x3a31bc
3652de  f3 0f 10 0d 6a 7f f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff27f6a]        # 0x28d250 ; f32=0.5
3652e6  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3652ea  f3 0f 10 15 1a 3c ee ff        movss  xmm2,DWORD PTR [rip+0xffffffffffee3c1a]        # 0x248f0c ; f32=580
3652f2  f3 0f 10 05 2a 3c ee ff        movss  xmm0,DWORD PTR [rip+0xffffffffffee3c2a]        # 0x248f24 ; f32=228.462
3652fa  f3 0f 10 1d 1e 3c ee ff        movss  xmm3,DWORD PTR [rip+0xffffffffffee3c1e]        # 0x248f20 ; f32=120
365302  f3 0f 59 d1                    mulss  xmm2,xmm1
365306  f3 0f 59 c1                    mulss  xmm0,xmm1
36530a  f3 0f 59 d9                    mulss  xmm3,xmm1
36530e  f3 0f 10 0d 12 df f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff2df12]        # 0x293228 ; f32=150
365316  f3 0f 5c d0                    subss  xmm2,xmm0
36531a  f3 0f 5c cb                    subss  xmm1,xmm3
36531e  e8 1d 70 f6 ff                 call   0x2cc340
365323  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
365327  f3 0f 11 05 e9 3b ee ff        movss  DWORD PTR [rip+0xffffffffffee3be9],xmm0        # 0x248f18
36532f  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
365334  f3 0f 11 15 e0 3b ee ff        movss  DWORD PTR [rip+0xffffffffffee3be0],xmm2        # 0x248f1c
36533c  e8 a3 db 02 00                 call   0x392ee4
365341  f3 0f 5c 05 eb 87 f2 ff        subss  xmm0,DWORD PTR [rip+0xfffffffffff287eb]        # 0x28db34 ; f32=65
365349  0f 57 c9                       xorps  xmm1,xmm1
36534c  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365350  0f 28 d0                       movaps xmm2,xmm0
365353  e8 e8 6f f6 ff                 call   0x2cc340
365358  48 8b d8                       mov    rbx,rax
36535b  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
36535f  e8 b0 db 02 00                 call   0x392f14
365364  4c 8b c0                       mov    r8,rax
365367  48 8d 4d c7                    lea    rcx,[rbp-0x39]
36536b  48 8b d3                       mov    rdx,rbx
36536e  e8 15 60 f7 ff                 call   0x2db388
365373  f3 44 0f 10 05 a0 3b ee ff     movss  xmm8,DWORD PTR [rip+0xffffffffffee3ba0]        # 0x248f1c
36537c  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365380  41 0f 28 d0                    movaps xmm2,xmm8
365384  f3 41 0f 5c d2                 subss  xmm2,xmm10
365389  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
36538d  f3 0f 11 05 9b 6d 09 00        movss  DWORD PTR [rip+0x96d9b],xmm0        # 0x3fc130
365395  f3 0f 10 48 04                 movss  xmm1,DWORD PTR [rax+0x4]
36539a  f3 0f 11 0d 92 6d 09 00        movss  DWORD PTR [rip+0x96d92],xmm1        # 0x3fc134
3653a2  48 8b 40 08                    mov    rax,QWORD PTR [rax+0x8]
3653a6  f3 0f 10 0d 6a 3b ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee3b6a]        # 0x248f18
3653ae  48 89 05 83 6d 09 00           mov    QWORD PTR [rip+0x96d83],rax        # 0x3fc138
3653b5  e8 86 6f f6 ff                 call   0x2cc340
3653ba  f3 0f 10 35 56 3b ee ff        movss  xmm6,DWORD PTR [rip+0xffffffffffee3b56]        # 0x248f18
3653c2  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3653c6  f3 0f 58 35 52 3b ee ff        addss  xmm6,DWORD PTR [rip+0xffffffffffee3b52]        # 0x248f20 ; f32=120
3653ce  41 0f 28 d0                    movaps xmm2,xmm8
3653d2  0f 28 ce                       movaps xmm1,xmm6
3653d5  e8 66 6f f6 ff                 call   0x2cc340
3653da  4c 8b c0                       mov    r8,rax
3653dd  48 8d 55 67                    lea    rdx,[rbp+0x67]
3653e1  48 8d 4d c7                    lea    rcx,[rbp-0x39]
3653e5  e8 9e 5f f7 ff                 call   0x2db388
3653ea  41 0f 28 f8                    movaps xmm7,xmm8
3653ee  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3653f2  f3 0f 58 3d 2a 3b ee ff        addss  xmm7,DWORD PTR [rip+0xffffffffffee3b2a]        # 0x248f24 ; f32=228.462
3653fa  0f 28 ce                       movaps xmm1,xmm6
3653fd  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
365400  f3 41 0f 58 ca                 addss  xmm1,xmm10
365405  0f 28 d7                       movaps xmm2,xmm7
365408  f3 0f 7f 05 50 6d 09 00        movdqu XMMWORD PTR [rip+0x96d50],xmm0        # 0x3fc160
365410  e8 2b 6f f6 ff                 call   0x2cc340
365415  41 0f 28 d0                    movaps xmm2,xmm8
365419  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
36541d  0f 28 ce                       movaps xmm1,xmm6
365420  48 8b d8                       mov    rbx,rax
365423  e8 18 6f f6 ff                 call   0x2cc340
365428  48 8b d0                       mov    rdx,rax
36542b  48 8d 4d c7                    lea    rcx,[rbp-0x39]
36542f  4c 8b c3                       mov    r8,rbx
365432  e8 51 5f f7 ff                 call   0x2db388
365437  f3 0f 10 0d d9 3a ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee3ad9]        # 0x248f18
36543f  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365443  0f 28 d7                       movaps xmm2,xmm7
365446  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
365449  f3 0f 7f 05 ff 6c 09 00        movdqu XMMWORD PTR [rip+0x96cff],xmm0        # 0x3fc150
365451  e8 ea 6e f6 ff                 call   0x2cc340
365456  0f 28 d7                       movaps xmm2,xmm7
365459  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
36545d  f3 41 0f 58 d2                 addss  xmm2,xmm10
365462  0f 28 ce                       movaps xmm1,xmm6
365465  48 8b d8                       mov    rbx,rax
365468  e8 d3 6e f6 ff                 call   0x2cc340
36546d  4c 8b c0                       mov    r8,rax
365470  48 8d 4d c7                    lea    rcx,[rbp-0x39]
365474  48 8b d3                       mov    rdx,rbx
365477  e8 0c 5f f7 ff                 call   0x2db388
36547c  f3 0f 10 0d 94 3a ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee3a94]        # 0x248f18
365484  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365488  f3 41 0f 5c ca                 subss  xmm1,xmm10
36548d  41 0f 28 d0                    movaps xmm2,xmm8
365491  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
365494  f3 0f 7f 05 d4 6c 09 00        movdqu XMMWORD PTR [rip+0x96cd4],xmm0        # 0x3fc170
36549c  e8 9f 6e f6 ff                 call   0x2cc340
3654a1  f3 0f 10 0d 6f 3a ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee3a6f]        # 0x248f18
3654a9  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3654ad  0f 28 d7                       movaps xmm2,xmm7
3654b0  48 8b d8                       mov    rbx,rax
3654b3  e8 88 6e f6 ff                 call   0x2cc340
3654b8  4c 8b c0                       mov    r8,rax
3654bb  48 8d 4d c7                    lea    rcx,[rbp-0x39]
3654bf  48 8b d3                       mov    rdx,rbx
3654c2  e8 c1 5e f7 ff                 call   0x2db388
3654c7  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3654ca  f3 0f 7f 05 6e 6c 09 00        movdqu XMMWORD PTR [rip+0x96c6e],xmm0        # 0x3fc140
3654d2  e8 d9 82 01 00                 call   0x37d7b0
3654d7  e8 b0 86 01 00                 call   0x37db8c
3654dc  33 ff                          xor    edi,edi
3654de  c7 05 28 3a ee ff 05 00 00 00  mov    DWORD PTR [rip+0xffffffffffee3a28],0x5        # 0x248f10
3654e8  33 f6                          xor    esi,esi
3654ea  4c 8d 3d 0f ab c9 ff           lea    r15,[rip+0xffffffffffc9ab0f]        # 0x0
3654f1  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3654f5  e8 fe d9 02 00                 call   0x392ef8
3654fa  48 8b de                       mov    rbx,rsi
3654fd  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
365501  48 03 db                       add    rbx,rbx
365504  f3 41 0f 10 b4 df 38 c1 3f 00  movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc138]
36550e  f3 0f 58 30                    addss  xmm6,DWORD PTR [rax]
365512  e8 e1 d9 02 00                 call   0x392ef8
365517  0f 28 ce                       movaps xmm1,xmm6
36551a  48 8d 4d 67                    lea    rcx,[rbp+0x67]
36551e  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
365523  f3 41 0f 58 94 df 3c c1 3f 00  addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc13c]
36552d  e8 0e 6e f6 ff                 call   0x2cc340
365532  48 8d 4d b7                    lea    rcx,[rbp-0x49]
365536  e8 bd d9 02 00                 call   0x392ef8
36553b  f3 41 0f 10 b4 df 30 c1 3f 00  movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc130]
365545  48 8d 4d a7                    lea    rcx,[rbp-0x59]
365549  f3 0f 58 30                    addss  xmm6,DWORD PTR [rax]
36554d  e8 a6 d9 02 00                 call   0x392ef8
365552  0f 28 ce                       movaps xmm1,xmm6
365555  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
365559  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
36555e  f3 41 0f 58 94 df 34 c1 3f 00  addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc134]
365568  e8 d3 6d f6 ff                 call   0x2cc340
36556d  45 8a c6                       mov    r8b,r14b
365570  48 8d 55 67                    lea    rdx,[rbp+0x67]
365574  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
365578  e8 2f ef 02 00                 call   0x3944ac
36557d  41 88 84 37 20 c1 3f 00        mov    BYTE PTR [r15+rsi*1+0x3fc120],al
365585  84 c0                          test   al,al
365587  74 06                          je     0x36558f
365589  89 3d 81 39 ee ff              mov    DWORD PTR [rip+0xffffffffffee3981],edi        # 0x248f10
36558f  41 03 fe                       add    edi,r14d
365592  49 03 f6                       add    rsi,r14
365595  83 ff 05                       cmp    edi,0x5
365598  0f 8c 53 ff ff ff              jl     0x3654f1
36559e  e8 29 d9 02 00                 call   0x392ecc
3655a3  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3655a7  48 8b f0                       mov    rsi,rax
3655aa  48 8d 4d 67                    lea    rcx,[rbp+0x67]
3655ae  e8 d5 f9 fe ff                 call   0x354f88 ; STRING getter=0x354f88 DRAG & DROP
3655b3  48 8b c8                       mov    rcx,rax
3655b6  e8 51 88 f6 ff                 call   0x2cde0c
3655bb  41 bf 02 00 00 00              mov    r15d,0x2
3655c1  41 0f 28 cb                    movaps xmm1,xmm11
3655c5  41 8b cf                       mov    ecx,r15d
3655c8  48 8b f8                       mov    rdi,rax
3655cb  e8 c8 cc 02 00                 call   0x392298
3655d0  48 8d 4d 6f                    lea    rcx,[rbp+0x6f]
3655d4  8b d8                          mov    ebx,eax
3655d6  e8 1d d9 02 00                 call   0x392ef8
3655db  f3 0f 10 35 4d 6b 09 00        movss  xmm6,DWORD PTR [rip+0x96b4d]        # 0x3fc130
3655e3  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3655e7  f3 0f 58 30                    addss  xmm6,DWORD PTR [rax]
3655eb  f3 0f 58 35 2d 85 f2 ff        addss  xmm6,DWORD PTR [rip+0xfffffffffff2852d]        # 0x28db20 ; f32=20
3655f3  e8 00 d9 02 00                 call   0x392ef8
3655f8  f3 0f 10 15 34 6b 09 00        movss  xmm2,DWORD PTR [rip+0x96b34]        # 0x3fc134
365600  48 8d 4d 7f                    lea    rcx,[rbp+0x7f]
365604  0f 28 ce                       movaps xmm1,xmm6
365607  f3 0f 58 50 04                 addss  xmm2,DWORD PTR [rax+0x4]
36560c  e8 2f 6d f6 ff                 call   0x2cc340
365611  48 8b d0                       mov    rdx,rax
365614  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
36561d  4c 8b cf                       mov    r9,rdi
365620  44 8b c3                       mov    r8d,ebx
365623  48 8b ce                       mov    rcx,rsi
365626  e8 91 db 03 00                 call   0x3a31bc
36562b  48 8d 0d 96 06 08 00           lea    rcx,[rip+0x80696]        # 0x3e5cc8
365632  c7 45 67 00 00 00 00           mov    DWORD PTR [rbp+0x67],0x0
365639  e8 aa 84 f8 ff                 call   0x2edae8
36563e  48 8d 0d 83 06 08 00           lea    rcx,[rip+0x80683]        # 0x3e5cc8
365645  48 8b d8                       mov    rbx,rax
365648  e8 57 5d f6 ff                 call   0x2cb3a4
36564d  48 8b c8                       mov    rcx,rax
365650  4c 8d 45 67                    lea    r8,[rbp+0x67]
365654  48 8b d3                       mov    rdx,rbx
365657  e8 cc 84 f8 ff                 call   0x2edb28
36565c  f3 0f 10 15 d0 6a 09 00        movss  xmm2,DWORD PTR [rip+0x96ad0]        # 0x3fc134
365664  48 8d 4d 67                    lea    rcx,[rbp+0x67]
365668  f3 0f 10 0d c0 6a 09 00        movss  xmm1,DWORD PTR [rip+0x96ac0]        # 0x3fc130
365670  f3 0f 58 15 5c db f2 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff2db5c]        # 0x2931d4 ; f32=25
365678  f3 0f 58 0d a0 84 f2 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff284a0]        # 0x28db20 ; f32=20
365680  e8 bb 6c f6 ff                 call   0x2cc340
365685  48 8b c8                       mov    rcx,rax
365688  e8 2b 5d 03 00                 call   0x39b3b8
36568d  e8 fe 95 02 00                 call   0x38ec90
365692  41 0f 28 cb                    movaps xmm1,xmm11
365696  41 8b ce                       mov    ecx,r14d
365699  e8 fa cb 02 00                 call   0x392298
36569e  8b d0                          mov    edx,eax
3656a0  48 8d 4d c7                    lea    rcx,[rbp-0x39]
3656a4  e8 2b 0e fd ff                 call   0x3364d4
3656a9  48 8d 1d 08 17 07 00           lea    rbx,[rip+0x71708]        # 0x3d6db8
3656b0  33 d2                          xor    edx,edx
3656b2  48 8b cb                       mov    rcx,rbx
3656b5  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3656b8  f3 0f 7f 45 b7                 movdqu XMMWORD PTR [rbp-0x49],xmm0
3656bd  e8 06 a1 f8 ff                 call   0x2ef7c8
3656c2  48 8b c8                       mov    rcx,rax
3656c5  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3656c9  e8 8a 88 01 00                 call   0x37df58
3656ce  41 0f 28 cb                    movaps xmm1,xmm11
3656d2  41 8b ce                       mov    ecx,r14d
3656d5  e8 be cb 02 00                 call   0x392298
3656da  8b d0                          mov    edx,eax
3656dc  48 8d 4d c7                    lea    rcx,[rbp-0x39]
3656e0  e8 ef 0d fd ff                 call   0x3364d4
3656e5  49 8b d6                       mov    rdx,r14
3656e8  48 8b cb                       mov    rcx,rbx
3656eb  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3656ee  f3 0f 7f 45 b7                 movdqu XMMWORD PTR [rbp-0x49],xmm0
3656f3  e8 d0 a0 f8 ff                 call   0x2ef7c8
3656f8  48 8b c8                       mov    rcx,rax
3656fb  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3656ff  e8 54 88 01 00                 call   0x37df58
365704  41 0f 28 cb                    movaps xmm1,xmm11
365708  41 8b ce                       mov    ecx,r14d
36570b  e8 88 cb 02 00                 call   0x392298
365710  8b d0                          mov    edx,eax
365712  48 8d 4d c7                    lea    rcx,[rbp-0x39]
365716  e8 b9 0d fd ff                 call   0x3364d4
36571b  41 8b d7                       mov    edx,r15d
36571e  48 8b cb                       mov    rcx,rbx
365721  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
365724  f3 0f 7f 45 b7                 movdqu XMMWORD PTR [rbp-0x49],xmm0
365729  e8 9a a0 f8 ff                 call   0x2ef7c8
36572e  48 8b c8                       mov    rcx,rax
365731  48 8d 55 b7                    lea    rdx,[rbp-0x49]
365735  e8 1e 88 01 00                 call   0x37df58
36573a  41 0f 28 cb                    movaps xmm1,xmm11
36573e  41 8b ce                       mov    ecx,r14d
365741  e8 52 cb 02 00                 call   0x392298
365746  8b d0                          mov    edx,eax
365748  48 8d 4d c7                    lea    rcx,[rbp-0x39]
36574c  e8 83 0d fd ff                 call   0x3364d4
365751  41 8d 57 01                    lea    edx,[r15+0x1]
365755  48 8b cb                       mov    rcx,rbx
365758  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
36575b  f3 0f 7f 45 b7                 movdqu XMMWORD PTR [rbp-0x49],xmm0
365760  e8 63 a0 f8 ff                 call   0x2ef7c8
365765  48 8b c8                       mov    rcx,rax
365768  48 8d 55 b7                    lea    rdx,[rbp-0x49]
36576c  e8 e7 87 01 00                 call   0x37df58
365771  41 0f 28 cb                    movaps xmm1,xmm11
365775  41 8b ce                       mov    ecx,r14d
365778  e8 1b cb 02 00                 call   0x392298
36577d  8b d0                          mov    edx,eax
36577f  48 8d 4d c7                    lea    rcx,[rbp-0x39]
365783  e8 4c 0d fd ff                 call   0x3364d4
365788  41 8d 57 02                    lea    edx,[r15+0x2]
36578c  48 8b cb                       mov    rcx,rbx
36578f  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
365792  f3 0f 7f 45 b7                 movdqu XMMWORD PTR [rbp-0x49],xmm0
365797  e8 2c a0 f8 ff                 call   0x2ef7c8
36579c  48 8b c8                       mov    rcx,rax
36579f  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3657a3  e8 b0 87 01 00                 call   0x37df58
3657a8  41 0f 28 cb                    movaps xmm1,xmm11
3657ac  41 8b ce                       mov    ecx,r14d
3657af  e8 e4 ca 02 00                 call   0x392298
3657b4  8b d0                          mov    edx,eax
3657b6  48 8d 4d c7                    lea    rcx,[rbp-0x39]
3657ba  e8 15 0d fd ff                 call   0x3364d4
3657bf  41 8d 57 03                    lea    edx,[r15+0x3]
3657c3  48 8b cb                       mov    rcx,rbx
3657c6  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
3657c9  f3 0f 7f 45 b7                 movdqu XMMWORD PTR [rbp-0x49],xmm0
3657ce  e8 f5 9f f8 ff                 call   0x2ef7c8
3657d3  48 8b c8                       mov    rcx,rax
3657d6  48 8d 55 b7                    lea    rdx,[rbp-0x49]
3657da  e8 79 87 01 00                 call   0x37df58
3657df  e8 18 b7 02 00                 call   0x390efc
3657e4  4c 8d 9c 24 d8 00 00 00        lea    r11,[rsp+0xd8]
3657ec  41 0f 28 73 e8                 movaps xmm6,XMMWORD PTR [r11-0x18]
3657f1  41 0f 28 7b d8                 movaps xmm7,XMMWORD PTR [r11-0x28]
3657f6  45 0f 28 43 c8                 movaps xmm8,XMMWORD PTR [r11-0x38]
3657fb  45 0f 28 53 b8                 movaps xmm10,XMMWORD PTR [r11-0x48]
365800  45 0f 28 5b a8                 movaps xmm11,XMMWORD PTR [r11-0x58]
365805  49 8b e3                       mov    rsp,r11
365808  41 5f                          pop    r15
36580a  41 5e                          pop    r14
36580c  5f                             pop    rdi
36580d  5e                             pop    rsi
36580e  5b                             pop    rbx
36580f  5d                             pop    rbp
365810  e9 7f b1 02 00                 jmp    0x390994

; pdata function 0x389e84..0x389f18 unwind=0x3d2130
389e84  40 53                          rex push rbx
389e86  55                             push   rbp
389e87  56                             push   rsi
389e88  57                             push   rdi
389e89  48 83 ec 28                    sub    rsp,0x28
389e8d  48 8b f1                       mov    rsi,rcx
389e90  48 85 c9                       test   rcx,rcx
389e93  75 19                          jne    0x389eae
389e95  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
389e9a  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
389e9f  e8 8c 28 f4 ff                 call   0x2cc730
389ea4  48 8b c8                       mov    rcx,rax
389ea7  e8 f8 3d f4 ff                 call   0x2cdca4
389eac  eb 61                          jmp    0x389f0f
389eae  48 63 0d 1b b9 07 00           movsxd rcx,DWORD PTR [rip+0x7b91b]        # 0x4057d0
389eb5  48 8d 15 14 99 07 00           lea    rdx,[rip+0x79914]        # 0x4037d0
389ebc  48 8b e9                       mov    rbp,rcx
389ebf  b8 01 00 00 00                 mov    eax,0x1
389ec4  2b c1                          sub    eax,ecx
389ec6  48 c1 e5 0c                    shl    rbp,0xc
389eca  48 8b ce                       mov    rcx,rsi
389ecd  89 05 fd b8 07 00              mov    DWORD PTR [rip+0x7b8fd],eax        # 0x4057d0
389ed3  48 03 ea                       add    rbp,rdx
389ed6  e8 29 0a 04 00                 call   0x3ca904
389edb  48 8b d8                       mov    rbx,rax
389ede  48 3d 00 10 00 00              cmp    rax,0x1000
389ee4  72 07                          jb     0x389eed
389ee6  bb ff 0f 00 00                 mov    ebx,0xfff
389eeb  eb 05                          jmp    0x389ef2
389eed  48 85 c0                       test   rax,rax
389ef0  74 16                          je     0x389f08
389ef2  33 ff                          xor    edi,edi
389ef4  0f be 0c 37                    movsx  ecx,BYTE PTR [rdi+rsi*1]
389ef8  e8 e3 ea ff ff                 call   0x3889e0
389efd  88 04 2f                       mov    BYTE PTR [rdi+rbp*1],al
389f00  48 ff c7                       inc    rdi
389f03  48 3b fb                       cmp    rdi,rbx
389f06  72 ec                          jb     0x389ef4
389f08  c6 04 2b 00                    mov    BYTE PTR [rbx+rbp*1],0x0
389f0c  48 8b c5                       mov    rax,rbp
389f0f  48 83 c4 28                    add    rsp,0x28
389f13  5f                             pop    rdi
389f14  5e                             pop    rsi
389f15  5d                             pop    rbp
389f16  5b                             pop    rbx
389f17  c3                             ret

