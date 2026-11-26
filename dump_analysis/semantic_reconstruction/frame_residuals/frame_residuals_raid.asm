; pdata function 0x36e55c..0x36f5cb unwind=0x3d3fd8
36e55c  48 8b c4                       mov    rax,rsp
36e55f  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
36e563  55                             push   rbp
36e564  56                             push   rsi
36e565  57                             push   rdi
36e566  41 54                          push   r12
36e568  41 55                          push   r13
36e56a  41 56                          push   r14
36e56c  41 57                          push   r15
36e56e  48 8d a8 78 fd ff ff           lea    rbp,[rax-0x288]
36e575  48 81 ec 50 03 00 00           sub    rsp,0x350
36e57c  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
36e580  4c 8b f1                       mov    r14,rcx
36e583  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
36e587  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
36e58c  e8 0b 21 f7 ff                 call   0x2e069c
36e591  48 8b c8                       mov    rcx,rax
36e594  48 89 44 24 38                 mov    QWORD PTR [rsp+0x38],rax
36e599  4c 8b e0                       mov    r12,rax
36e59c  e8 67 c9 f5 ff                 call   0x2caf08
36e5a1  84 c0                          test   al,al
36e5a3  0f 84 f8 0f 00 00              je     0x36f5a1
36e5a9  e8 6e ed fe ff                 call   0x35d31c
36e5ae  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
36e5b3  4c 8b f8                       mov    r15,rax
36e5b6  e8 e9 cd f5 ff                 call   0x2cb3a4
36e5bb  48 8d 4d d8                    lea    rcx,[rbp-0x28]
36e5bf  e8 f8 95 05 00                 call   0x3c7bbc
36e5c4  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36e5c8  e8 ef 95 05 00                 call   0x3c7bbc
36e5cd  e8 ca f4 f6 ff                 call   0x2dda9c
36e5d2  48 8b c8                       mov    rcx,rax
36e5d5  4c 8b c8                       mov    r9,rax
36e5d8  e8 2b c9 f5 ff                 call   0x2caf08
36e5dd  84 c0                          test   al,al
36e5df  0f 84 bc 0f 00 00              je     0x36f5a1
36e5e5  41 b8 34 00 00 00              mov    r8d,0x34
36e5eb  48 8d 55 10                    lea    rdx,[rbp+0x10]
36e5ef  49 8b c9                       mov    rcx,r9
36e5f2  45 32 ed                       xor    r13b,r13b
36e5f5  e8 ee a5 ff ff                 call   0x368be8
36e5fa  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36e601  e8 3a f8 ff ff                 call   0x36de40
36e606  49 8b ce                       mov    rcx,r14
36e609  33 f6                          xor    esi,esi
36e60b  e8 9c 1b 00 00                 call   0x3701ac
36e610  48 85 c0                       test   rax,rax
36e613  0f 84 8d 03 00 00              je     0x36e9a6
36e619  f3 44 0f 10 05 d2 a3 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff3a3d2]        # 0x2a89f4 ; f32=7500
36e622  48 63 d6                       movsxd rdx,esi
36e625  49 8b ce                       mov    rcx,r14
36e628  e8 cf fb ff ff                 call   0x36e1fc
36e62d  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36e631  0f 10 30                       movups xmm6,XMMWORD PTR [rax]
36e634  f2 0f 10 40 10                 movsd  xmm0,QWORD PTR [rax+0x10]
36e639  0f 11 75 e8                    movups XMMWORD PTR [rbp-0x18],xmm6
36e63d  f2 0f 11 45 f8                 movsd  QWORD PTR [rbp-0x8],xmm0
36e642  e8 f5 f8 ff ff                 call   0x36df3c
36e647  66 0f 7e f7                    movd   edi,xmm6
36e64b  85 ff                          test   edi,edi
36e64d  75 20                          jne    0x36e66f
36e64f  48 8d 95 93 01 00 00           lea    rdx,[rbp+0x193]
36e656  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e65d  e8 ba fc ff ff                 call   0x36e31c ; STRING getter=0x36e31c Grenades
36e662  48 8b c8                       mov    rcx,rax
36e665  e8 22 b5 f7 ff                 call   0x2e9b8c
36e66a  e9 d9 01 00 00                 jmp    0x36e848
36e66f  83 ff 01                       cmp    edi,0x1
36e672  75 15                          jne    0x36e689
36e674  48 8d 95 8a 01 00 00           lea    rdx,[rbp+0x18a]
36e67b  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e682  e8 59 fd ff ff                 call   0x36e3e0 ; STRING getter=0x36e3e0 Molotovs
36e687  eb d9                          jmp    0x36e662
36e689  83 ff 02                       cmp    edi,0x2
36e68c  75 15                          jne    0x36e6a3
36e68e  48 8d 95 81 01 00 00           lea    rdx,[rbp+0x181]
36e695  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e69c  e8 8b fd ff ff                 call   0x36e42c ; STRING getter=0x36e42c Beancans
36e6a1  eb bf                          jmp    0x36e662
36e6a3  83 ff 03                       cmp    edi,0x3
36e6a6  75 1e                          jne    0x36e6c6
36e6a8  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36e6ad  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e6b4  e8 8f fd ff ff                 call   0x36e448 ; STRING getter=0x36e448 MLRS
36e6b9  48 8b c8                       mov    rcx,rax
36e6bc  e8 0b f6 f5 ff                 call   0x2cdccc
36e6c1  e9 82 01 00 00                 jmp    0x36e848
36e6c6  83 ff 04                       cmp    edi,0x4
36e6c9  75 1e                          jne    0x36e6e9
36e6cb  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36e6d0  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e6d7  e8 84 fd ff ff                 call   0x36e460
36e6dc  48 8b c8                       mov    rcx,rax
36e6df  e8 30 4f f7 ff                 call   0x2e3614
36e6e4  e9 5f 01 00 00                 jmp    0x36e848
36e6e9  83 ff 05                       cmp    edi,0x5
36e6ec  75 20                          jne    0x36e70e
36e6ee  48 8d 95 02 02 00 00           lea    rdx,[rbp+0x202]
36e6f5  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e6fc  e8 73 fd ff ff                 call   0x36e474 ; STRING getter=0x36e474 Battering Ram
36e701  48 8b c8                       mov    rcx,rax
36e704  e8 7f ea f6 ff                 call   0x2dd188
36e709  e9 3a 01 00 00                 jmp    0x36e848
36e70e  83 ff 06                       cmp    edi,0x6
36e711  75 15                          jne    0x36e728
36e713  48 8d 95 10 02 00 00           lea    rdx,[rbp+0x210]
36e71a  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e721  e8 72 fd ff ff                 call   0x36e498 ; STRING getter=0x36e498 Incen Rockets
36e726  eb d9                          jmp    0x36e701
36e728  83 ff 07                       cmp    edi,0x7
36e72b  75 18                          jne    0x36e745
36e72d  48 8d 95 e0 01 00 00           lea    rdx,[rbp+0x1e0]
36e734  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e73b  e8 7c fd ff ff                 call   0x36e4bc ; STRING getter=0x36e4bc HV Rockets
36e740  e9 fb 00 00 00                 jmp    0x36e840
36e745  83 ff 08                       cmp    edi,0x8
36e748  75 18                          jne    0x36e762
36e74a  48 8d 95 78 01 00 00           lea    rdx,[rbp+0x178]
36e751  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e758  e8 7b fd ff ff                 call   0x36e4d8 ; STRING getter=0x36e4d8 Satchels
36e75d  e9 00 ff ff ff                 jmp    0x36e662
36e762  83 ff 09                       cmp    edi,0x9
36e765  75 20                          jne    0x36e787
36e767  48 8d 95 a8 02 00 00           lea    rdx,[rbp+0x2a8]
36e76e  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e775  e8 8e fa ff ff                 call   0x36e208 ; STRING getter=0x36e208 C4s
36e77a  48 8b c8                       mov    rcx,rax
36e77d  e8 9a 1c fb ff                 call   0x32041c
36e782  e9 c1 00 00 00                 jmp    0x36e848
36e787  83 ff 0a                       cmp    edi,0xa
36e78a  75 20                          jne    0x36e7ac
36e78c  48 8d 95 f6 01 00 00           lea    rdx,[rbp+0x1f6]
36e793  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e79a  e8 75 fa ff ff                 call   0x36e214 ; STRING getter=0x36e214 HE Grenades
36e79f  48 8b c8                       mov    rcx,rax
36e7a2  e8 8d f6 f5 ff                 call   0x2cde34
36e7a7  e9 9c 00 00 00                 jmp    0x36e848
36e7ac  83 ff 0b                       cmp    edi,0xb
36e7af  75 1a                          jne    0x36e7cb
36e7b1  48 8d 55 40                    lea    rdx,[rbp+0x40]
36e7b5  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e7bc  e8 6f fa ff ff                 call   0x36e230 ; STRING getter=0x36e230 Underwater Explosions
36e7c1  48 8b c8                       mov    rcx,rax
36e7c4  e8 db 9d f6 ff                 call   0x2d85a4
36e7c9  eb 7d                          jmp    0x36e848
36e7cb  83 ff 0c                       cmp    edi,0xc
36e7ce  75 1a                          jne    0x36e7ea
36e7d0  48 8d 55 40                    lea    rdx,[rbp+0x40]
36e7d4  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e7db  e8 6c fa ff ff                 call   0x36e24c ; STRING getter=0x36e24c Catapult Scattershot
36e7e0  48 8b c8                       mov    rcx,rax
36e7e3  e8 d4 1c fb ff                 call   0x3204bc
36e7e8  eb 5e                          jmp    0x36e848
36e7ea  83 ff 0d                       cmp    edi,0xd
36e7ed  75 1a                          jne    0x36e809
36e7ef  48 8d 55 40                    lea    rdx,[rbp+0x40]
36e7f3  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e7fa  e8 69 fa ff ff                 call   0x36e268 ; STRING getter=0x36e268 Catapult FireBomb
36e7ff  48 8b c8                       mov    rcx,rax
36e802  e8 d5 b3 f7 ff                 call   0x2e9bdc
36e807  eb 3f                          jmp    0x36e848
36e809  83 ff 0e                       cmp    edi,0xe
36e80c  75 16                          jne    0x36e824
36e80e  48 8d 54 24 70                 lea    rdx,[rsp+0x70]
36e813  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e81a  e8 65 fa ff ff                 call   0x36e284 ; STRING getter=0x36e284 Catapult Bomb
36e81f  e9 dd fe ff ff                 jmp    0x36e701
36e824  83 ff 10                       cmp    edi,0x10
36e827  0f 85 5a 01 00 00              jne    0x36e987
36e82d  48 8d 95 eb 01 00 00           lea    rdx,[rbp+0x1eb]
36e834  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36e83b  e8 68 fa ff ff                 call   0x36e2a8 ; STRING getter=0x36e2a8 Explo Ammo
36e840  48 8b c8                       mov    rcx,rax
36e843  e8 0c b4 f7 ff                 call   0x2e9c54
36e848  48 8b d0                       mov    rdx,rax
36e84b  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36e84f  e8 14 64 f6 ff                 call   0x2d4c68
36e854  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36e858  e8 7b a2 f6 ff                 call   0x2d8ad8
36e85d  48 85 c0                       test   rax,rax
36e860  0f 84 21 01 00 00              je     0x36e987
36e866  4c 63 e7                       movsxd r12,edi
36e869  4c 8d 85 a0 02 00 00           lea    r8,[rbp+0x2a0]
36e870  48 8d 95 70 01 00 00           lea    rdx,[rbp+0x170]
36e877  4c 89 a5 a0 02 00 00           mov    QWORD PTR [rbp+0x2a0],r12
36e87e  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36e885  e8 8e 18 00 00                 call   0x370118
36e88a  48 8d 55 08                    lea    rdx,[rbp+0x8]
36e88e  48 8b d8                       mov    rbx,rax
36e891  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36e898  e8 1b 9e f6 ff                 call   0x2d86b8
36e89d  48 8b d0                       mov    rdx,rax
36e8a0  48 8b cb                       mov    rcx,rbx
36e8a3  e8 8c dc f5 ff                 call   0x2cc534
36e8a8  84 c0                          test   al,al
36e8aa  75 1f                          jne    0x36e8cb
36e8ac  48 8d 95 a0 02 00 00           lea    rdx,[rbp+0x2a0]
36e8b3  4c 89 a5 a0 02 00 00           mov    QWORD PTR [rbp+0x2a0],r12
36e8ba  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36e8c1  e8 06 f9 ff ff                 call   0x36e1cc
36e8c6  ff 40 20                       inc    DWORD PTR [rax+0x20]
36e8c9  eb 40                          jmp    0x36e90b
36e8cb  4c 8d 45 90                    lea    r8,[rbp-0x70]
36e8cf  89 bd a0 02 00 00              mov    DWORD PTR [rbp+0x2a0],edi
36e8d5  48 8d 95 a0 02 00 00           lea    rdx,[rbp+0x2a0]
36e8dc  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36e8e3  e8 10 e7 ff ff                 call   0x36cff8
36e8e8  4c 8d 85 e0 00 00 00           lea    r8,[rbp+0xe0]
36e8ef  48 8d 55 40                    lea    rdx,[rbp+0x40]
36e8f3  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36e8fa  e8 69 18 00 00                 call   0x370168
36e8ff  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36e906  e8 7d f7 ff ff                 call   0x36e088
36e90b  f2 0f 10 7d ec                 movsd  xmm7,QWORD PTR [rbp-0x14]
36e910  66 0f 73 de 0c                 psrldq xmm6,0xc
36e915  f2 0f 11 7d c8                 movsd  QWORD PTR [rbp-0x38],xmm7
36e91a  66 0f 7e 75 d0                 movd   DWORD PTR [rbp-0x30],xmm6
36e91f  45 84 ed                       test   r13b,r13b
36e922  75 5e                          jne    0x36e982
36e924  48 8d 55 10                    lea    rdx,[rbp+0x10]
36e928  48 8d 4d ec                    lea    rcx,[rbp-0x14]
36e92c  e8 ff 15 f7 ff                 call   0x2dff30
36e931  44 0f 2f c0                    comiss xmm8,xmm0
36e935  4c 8b 64 24 38                 mov    r12,QWORD PTR [rsp+0x38]
36e93a  76 4b                          jbe    0x36e987
36e93c  4c 8d 0d 65 89 06 00           lea    r9,[rip+0x68965]        # 0x3d72a8
36e943  f2 0f 11 7c 24 50              movsd  QWORD PTR [rsp+0x50],xmm7
36e949  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
36e94e  66 0f 7e 74 24 58              movd   DWORD PTR [rsp+0x58],xmm6
36e954  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
36e959  49 8b cc                       mov    rcx,r12
36e95c  e8 bf e3 ff ff                 call   0x36cd20
36e961  84 c0                          test   al,al
36e963  74 22                          je     0x36e987
36e965  48 8b 4c 24 30                 mov    rcx,QWORD PTR [rsp+0x30]
36e96a  e8 c1 87 fa ff                 call   0x317130
36e96f  84 c0                          test   al,al
36e971  74 14                          je     0x36e987
36e973  41 b5 01                       mov    r13b,0x1
36e976  f2 0f 11 7d d8                 movsd  QWORD PTR [rbp-0x28],xmm7
36e97b  66 0f 7e 75 e0                 movd   DWORD PTR [rbp-0x20],xmm6
36e980  eb 05                          jmp    0x36e987
36e982  4c 8b 64 24 38                 mov    r12,QWORD PTR [rsp+0x38]
36e987  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36e98b  e8 74 db f5 ff                 call   0x2cc504
36e990  49 8b ce                       mov    rcx,r14
36e993  ff c6                          inc    esi
36e995  e8 12 18 00 00                 call   0x3701ac
36e99a  48 63 ce                       movsxd rcx,esi
36e99d  48 3b c8                       cmp    rcx,rax
36e9a0  0f 82 7c fc ff ff              jb     0x36e622
36e9a6  e8 45 21 f7 ff                 call   0x2e0af0
36e9ab  66 0f 6e f8                    movd   xmm7,eax
36e9af  0f 5b ff                       cvtdq2ps xmm7,xmm7
36e9b2  f3 0f 59 3d 96 e8 f1 ff        mulss  xmm7,DWORD PTR [rip+0xfffffffffff1e896]        # 0x28d250 ; f32=0.5
36e9ba  e8 31 20 f7 ff                 call   0x2e09f0
36e9bf  80 3d 22 b1 07 00 00           cmp    BYTE PTR [rip+0x7b122],0x0        # 0x3e9ae8 ; CONFIG Bools.savehouse value(+0x48)
36e9c6  bb ff 00 00 00                 mov    ebx,0xff
36e9cb  f3 44 0f 10 05 70 f1 f1 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff1f170]        # 0x28db44 ; f32=100
36e9d4  66 0f 6e f0                    movd   xmm6,eax
36e9d8  0f 5b f6                       cvtdq2ps xmm6,xmm6
36e9db  f3 0f 59 35 b5 46 f2 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff246b5]        # 0x293098 ; f32=0.05
36e9e3  f3 0f 58 35 e9 a4 ed ff        addss  xmm6,DWORD PTR [rip+0xffffffffffeda4e9]        # 0x248ed4 ; f32=16
36e9eb  0f 84 a5 00 00 00              je     0x36ea96
36e9f1  48 8d 15 40 16 08 00           lea    rdx,[rip+0x81640]        # 0x3f0038 ; CONFIG V3.HousePosition value(+0x48)
36e9f8  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36e9fc  e8 2f 15 f7 ff                 call   0x2dff30
36ea01  44 0f 2f c0                    comiss xmm8,xmm0
36ea05  0f 86 8b 00 00 00              jbe    0x36ea96
36ea0b  48 8d 55 90                    lea    rdx,[rbp-0x70]
36ea0f  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ea16  e8 a9 f8 ff ff                 call   0x36e2c4 ; STRING getter=0x36e2c4 YOUR HOUSE IS GETTING RAIDED!!!
36ea1b  48 8b c8                       mov    rcx,rax
36ea1e  e8 79 2e fb ff                 call   0x32189c
36ea23  48 8b d0                       mov    rdx,rax
36ea26  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ea2a  e8 9d d8 f5 ff                 call   0x2cc2cc
36ea2f  45 33 c9                       xor    r9d,r9d
36ea32  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
36ea36  45 33 c0                       xor    r8d,r8d
36ea39  48 8d 4d 40                    lea    rcx,[rbp+0x40]
36ea3d  8b d3                          mov    edx,ebx
36ea3f  e8 d4 c8 f6 ff                 call   0x2db318
36ea44  0f 28 d6                       movaps xmm2,xmm6
36ea47  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ea4e  0f 28 cf                       movaps xmm1,xmm7
36ea51  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
36ea55  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36ea5b  e8 e0 d8 f5 ff                 call   0x2cc340
36ea60  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36ea64  4c 8d 45 e8                    lea    r8,[rbp-0x18]
36ea68  4c 8b c8                       mov    r9,rax
36ea6b  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
36ea73  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36ea78  49 8b cf                       mov    rcx,r15
36ea7b  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36ea80  e8 d7 28 ff ff                 call   0x36135c
36ea85  f3 0f 58 35 47 a4 ed ff        addss  xmm6,DWORD PTR [rip+0xffffffffffeda447]        # 0x248ed4 ; f32=16
36ea8d  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ea91  e8 5e da f5 ff                 call   0x2cc4f4
36ea96  80 3d 2b b7 07 00 00           cmp    BYTE PTR [rip+0x7b72b],0x0        # 0x3ea1c8 ; CONFIG Bools.saveposition value(+0x48)
36ea9d  0f 84 9d 00 00 00              je     0x36eb40
36eaa3  48 8d 15 2e 15 08 00           lea    rdx,[rip+0x8152e]        # 0x3effd8 ; CONFIG V3.SavedPos value(+0x48)
36eaaa  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36eaae  e8 7d 14 f7 ff                 call   0x2dff30
36eab3  44 0f 2f c0                    comiss xmm8,xmm0
36eab7  0f 86 83 00 00 00              jbe    0x36eb40
36eabd  48 8d 55 90                    lea    rdx,[rbp-0x70]
36eac1  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36eac8  e8 13 f8 ff ff                 call   0x36e2e0 ; STRING getter=0x36e2e0 YOUR SAVED POSITION HAS A RAID NEARBY!!!
36eacd  48 8b c8                       mov    rcx,rax
36ead0  e8 9f 52 ff ff                 call   0x363d74
36ead5  48 8b d0                       mov    rdx,rax
36ead8  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36eadc  e8 eb d7 f5 ff                 call   0x2cc2cc
36eae1  45 33 c9                       xor    r9d,r9d
36eae4  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
36eae8  45 33 c0                       xor    r8d,r8d
36eaeb  48 8d 4d 40                    lea    rcx,[rbp+0x40]
36eaef  8b d3                          mov    edx,ebx
36eaf1  e8 22 c8 f6 ff                 call   0x2db318
36eaf6  0f 28 d6                       movaps xmm2,xmm6
36eaf9  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36eb00  0f 28 cf                       movaps xmm1,xmm7
36eb03  f3 0f 6f 00                    movdqu xmm0,XMMWORD PTR [rax]
36eb07  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36eb0d  e8 2e d8 f5 ff                 call   0x2cc340
36eb12  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36eb16  4c 8d 45 e8                    lea    r8,[rbp-0x18]
36eb1a  4c 8b c8                       mov    r9,rax
36eb1d  c7 44 24 28 02 00 00 00        mov    DWORD PTR [rsp+0x28],0x2
36eb25  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36eb2a  49 8b cf                       mov    rcx,r15
36eb2d  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36eb32  e8 25 28 ff ff                 call   0x36135c
36eb37  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36eb3b  e8 b4 d9 f5 ff                 call   0x2cc4f4
36eb40  80 3d 41 52 08 00 00           cmp    BYTE PTR [rip+0x85241],0x0        # 0x3f3d88 ; CONFIG Bools.DrawIngameRadarRaids value(+0x48)
36eb47  0f 84 9c 04 00 00              je     0x36efe9
36eb4d  f2 0f 10 45 c8                 movsd  xmm0,QWORD PTR [rbp-0x38]
36eb52  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
36eb57  8b 45 d0                       mov    eax,DWORD PTR [rbp-0x30]
36eb5a  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
36eb5f  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
36eb65  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
36eb69  e8 9a 63 fa ff                 call   0x314f08
36eb6e  0f 57 d2                       xorps  xmm2,xmm2
36eb71  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36eb78  0f 57 c9                       xorps  xmm1,xmm1
36eb7b  0f 57 ff                       xorps  xmm7,xmm7
36eb7e  e8 bd d7 f5 ff                 call   0x2cc340
36eb83  48 8b d0                       mov    rdx,rax
36eb86  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
36eb8b  e8 34 0b f8 ff                 call   0x2ef6c4
36eb90  84 c0                          test   al,al
36eb92  0f 84 51 04 00 00              je     0x36efe9
36eb98  e8 db 6b fa ff                 call   0x315778
36eb9d  48 8d 95 a8 02 00 00           lea    rdx,[rbp+0x2a8]
36eba4  0f 28 f0                       movaps xmm6,xmm0
36eba7  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ebae  e8 85 f7 ff ff                 call   0x36e338 ; STRING getter=0x36e338 m)
36ebb3  48 8b c8                       mov    rcx,rax
36ebb6  e8 39 18 fb ff                 call   0x3203f4
36ebbb  48 8b d0                       mov    rdx,rax
36ebbe  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36ebc2  e8 05 d7 f5 ff                 call   0x2cc2cc
36ebc7  48 8d 55 10                    lea    rdx,[rbp+0x10]
36ebcb  48 8b f8                       mov    rdi,rax
36ebce  48 8d 4d c8                    lea    rcx,[rbp-0x38]
36ebd2  e8 59 13 f7 ff                 call   0x2dff30
36ebd7  f3 0f 2c d0                    cvttss2si edx,xmm0
36ebdb  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36ebe2  e8 29 a9 f6 ff                 call   0x2d9510
36ebe7  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36ebec  48 8b d8                       mov    rbx,rax
36ebef  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ebf6  e8 09 f7 ff ff                 call   0x36e304 ; STRING getter=0x36e304 Raid(
36ebfb  48 8b c8                       mov    rcx,rax
36ebfe  e8 d9 98 f6 ff                 call   0x2d84dc
36ec03  48 8b d0                       mov    rdx,rax
36ec06  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
36ec0b  e8 bc d6 f5 ff                 call   0x2cc2cc
36ec10  48 8b d0                       mov    rdx,rax
36ec13  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ec17  4c 8b c3                       mov    r8,rbx
36ec1a  e8 21 03 f6 ff                 call   0x2cef40
36ec1f  48 8b d0                       mov    rdx,rax
36ec22  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
36ec29  4c 8b c7                       mov    r8,rdi
36ec2c  e8 0f 03 f6 ff                 call   0x2cef40
36ec31  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ec35  e8 ba d8 f5 ff                 call   0x2cc4f4
36ec3a  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
36ec3f  e8 b0 d8 f5 ff                 call   0x2cc4f4
36ec44  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36ec4b  e8 a4 d8 f5 ff                 call   0x2cc4f4
36ec50  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36ec54  e8 9b d8 f5 ff                 call   0x2cc4f4
36ec59  f3 0f 58 35 67 ee 07 00        addss  xmm6,DWORD PTR [rip+0x7ee67]        # 0x3edac8 ; CONFIG F.IngameCircleSizeEntity value(+0x48)
36ec61  48 8d 0d 20 dc 08 00           lea    rcx,[rip+0x8dc20]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36ec68  e8 9f 0b f8 ff                 call   0x2ef80c
36ec6d  f3 0f 10 54 24 3c              movss  xmm2,DWORD PTR [rsp+0x3c]
36ec73  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ec7a  f3 0f 10 4c 24 38              movss  xmm1,DWORD PTR [rsp+0x38]
36ec80  8b d8                          mov    ebx,eax
36ec82  e8 b9 d6 f5 ff                 call   0x2cc340
36ec87  f3 0f 11 7c 24 28              movss  DWORD PTR [rsp+0x28],xmm7
36ec8d  48 8b d0                       mov    rdx,rax
36ec90  44 8b cb                       mov    r9d,ebx
36ec93  c6 44 24 20 00                 mov    BYTE PTR [rsp+0x20],0x0
36ec98  0f 28 d6                       movaps xmm2,xmm6
36ec9b  49 8b cf                       mov    rcx,r15
36ec9e  e8 d5 d8 fe ff                 call   0x35c578
36eca3  f3 0f 10 7c 24 3c              movss  xmm7,DWORD PTR [rsp+0x3c]
36eca9  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ecb0  0f 10 05 d1 db 08 00           movups xmm0,XMMWORD PTR [rip+0x8dbd1]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36ecb7  f3 0f 10 4c 24 38              movss  xmm1,DWORD PTR [rsp+0x38]
36ecbd  f3 0f 58 fe                    addss  xmm7,xmm6
36ecc1  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36ecc7  f3 0f 58 3d bd 44 f2 ff        addss  xmm7,DWORD PTR [rip+0xfffffffffff244bd]        # 0x29318c ; f32=6.325
36eccf  0f 28 d7                       movaps xmm2,xmm7
36ecd2  e8 69 d6 f5 ff                 call   0x2cc340
36ecd7  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36ecdb  4c 8d 85 a0 00 00 00           lea    r8,[rbp+0xa0]
36ece2  4c 8b c8                       mov    r9,rax
36ece5  be 03 00 00 00                 mov    esi,0x3
36ecea  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36ecef  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
36ecf3  49 8b cf                       mov    rcx,r15
36ecf6  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36ecfb  e8 5c 26 ff ff                 call   0x36135c
36ed00  f3 0f 10 35 b4 44 f2 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff244b4]        # 0x2931bc ; f32=16
36ed08  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36ed0d  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36ed14  f3 0f 58 fe                    addss  xmm7,xmm6
36ed18  e8 0f 8c f6 ff                 call   0x2d792c
36ed1d  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36ed22  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36ed29  e8 3e 8c f6 ff                 call   0x2d796c
36ed2e  e9 dc 00 00 00                 jmp    0x36ee0f
36ed33  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
36ed38  e8 83 60 f6 ff                 call   0x2d4dc0
36ed3d  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
36ed42  48 8b f8                       mov    rdi,rax
36ed45  8b 50 28                       mov    edx,DWORD PTR [rax+0x28]
36ed48  e8 c3 a7 f6 ff                 call   0x2d9510
36ed4d  48 8d 95 a8 02 00 00           lea    rdx,[rbp+0x2a8]
36ed54  48 8b d8                       mov    rbx,rax
36ed57  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ed5e  e8 ed f5 ff ff                 call   0x36e350 ; STRING getter=0x36e350  x
36ed63  48 8b c8                       mov    rcx,rax
36ed66  e8 89 16 fb ff                 call   0x3203f4
36ed6b  48 8b d0                       mov    rdx,rax
36ed6e  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36ed75  e8 52 d5 f5 ff                 call   0x2cc2cc
36ed7a  4c 8b c0                       mov    r8,rax
36ed7d  48 8d 57 08                    lea    rdx,[rdi+0x8]
36ed81  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36ed85  e8 8e b8 f7 ff                 call   0x2ea618
36ed8a  48 8b d0                       mov    rdx,rax
36ed8d  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ed91  4c 8b c3                       mov    r8,rbx
36ed94  e8 a7 01 f6 ff                 call   0x2cef40
36ed99  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36ed9d  e8 52 d7 f5 ff                 call   0x2cc4f4
36eda2  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36eda9  e8 46 d7 f5 ff                 call   0x2cc4f4
36edae  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
36edb3  e8 3c d7 f5 ff                 call   0x2cc4f4
36edb8  0f 10 05 c9 da 08 00           movups xmm0,XMMWORD PTR [rip+0x8dac9]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36edbf  48 8d 4d 08                    lea    rcx,[rbp+0x8]
36edc3  f3 0f 10 4c 24 38              movss  xmm1,DWORD PTR [rsp+0x38]
36edc9  0f 28 d7                       movaps xmm2,xmm7
36edcc  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36edd2  e8 69 d5 f5 ff                 call   0x2cc340
36edd7  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36eddb  4c 8d 45 e8                    lea    r8,[rbp-0x18]
36eddf  4c 8b c8                       mov    r9,rax
36ede2  89 74 24 28                    mov    DWORD PTR [rsp+0x28],esi
36ede6  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36edeb  49 8b cf                       mov    rcx,r15
36edee  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36edf3  e8 64 25 ff ff                 call   0x36135c
36edf8  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36edfc  f3 0f 58 fe                    addss  xmm7,xmm6
36ee00  e8 ef d6 f5 ff                 call   0x2cc4f4
36ee05  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
36ee0a  e8 f1 5f f6 ff                 call   0x2d4e00
36ee0f  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36ee14  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
36ee19  e8 16 d7 f5 ff                 call   0x2cc534
36ee1e  84 c0                          test   al,al
36ee20  0f 84 0d ff ff ff              je     0x36ed33
36ee26  48 8d 55 c0                    lea    rdx,[rbp-0x40]
36ee2a  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ee31  e8 4a f5 ff ff                 call   0x36e380 ; STRING getter=0x36e380 s]
36ee36  48 8b c8                       mov    rcx,rax
36ee39  e8 b6 15 fb ff                 call   0x3203f4
36ee3e  48 8b d0                       mov    rdx,rax
36ee41  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36ee45  e8 82 d4 f5 ff                 call   0x2cc2cc
36ee4a  f3 44 0f 2c 05 ad 11 09 00     cvttss2si r8d,DWORD PTR [rip+0x911ad]        # 0x400000
36ee53  4c 8b f0                       mov    r14,rax
36ee56  bb 89 88 88 88                 mov    ebx,0x88888889
36ee5b  8b c3                          mov    eax,ebx
36ee5d  41 f7 e8                       imul   r8d
36ee60  41 03 d0                       add    edx,r8d
36ee63  c1 fa 05                       sar    edx,0x5
36ee66  8b ca                          mov    ecx,edx
36ee68  c1 e9 1f                       shr    ecx,0x1f
36ee6b  03 d1                          add    edx,ecx
36ee6d  6b ca 3c                       imul   ecx,edx,0x3c
36ee70  44 2b c1                       sub    r8d,ecx
36ee73  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36ee7a  41 8b d0                       mov    edx,r8d
36ee7d  e8 8e a6 f6 ff                 call   0x2d9510
36ee82  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36ee87  48 8b f0                       mov    rsi,rax
36ee8a  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ee91  e8 d2 f4 ff ff                 call   0x36e368 ; STRING getter=0x36e368 m:
36ee96  48 8b c8                       mov    rcx,rax
36ee99  e8 56 15 fb ff                 call   0x3203f4
36ee9e  48 8b d0                       mov    rdx,rax
36eea1  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36eea8  e8 1f d4 f5 ff                 call   0x2cc2cc
36eead  f3 0f 2c 0d 4b 11 09 00        cvttss2si ecx,DWORD PTR [rip+0x9114b]        # 0x400000
36eeb5  48 8b f8                       mov    rdi,rax
36eeb8  8b c3                          mov    eax,ebx
36eeba  f7 e9                          imul   ecx
36eebc  03 d1                          add    edx,ecx
36eebe  c1 fa 05                       sar    edx,0x5
36eec1  8b ca                          mov    ecx,edx
36eec3  c1 e9 1f                       shr    ecx,0x1f
36eec6  03 d1                          add    edx,ecx
36eec8  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36eecc  e8 3f a6 f6 ff                 call   0x2d9510
36eed1  48 8d 95 a8 02 00 00           lea    rdx,[rbp+0x2a8]
36eed8  48 8b d8                       mov    rbx,rax
36eedb  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36eee2  e8 11 12 f8 ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
36eee7  48 8b c8                       mov    rcx,rax
36eeea  e8 75 95 f6 ff                 call   0x2d8464
36eeef  48 8b d0                       mov    rdx,rax
36eef2  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
36eef7  e8 d0 d3 f5 ff                 call   0x2cc2cc
36eefc  48 8b d0                       mov    rdx,rax
36eeff  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ef03  4c 8b c3                       mov    r8,rbx
36ef06  e8 35 00 f6 ff                 call   0x2cef40
36ef0b  48 8b d0                       mov    rdx,rax
36ef0e  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36ef15  4c 8b c7                       mov    r8,rdi
36ef18  e8 23 00 f6 ff                 call   0x2cef40
36ef1d  48 8b d0                       mov    rdx,rax
36ef20  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36ef24  4c 8b c6                       mov    r8,rsi
36ef27  e8 14 00 f6 ff                 call   0x2cef40
36ef2c  48 8b d0                       mov    rdx,rax
36ef2f  48 8d 4d 40                    lea    rcx,[rbp+0x40]
36ef33  4d 8b c6                       mov    r8,r14
36ef36  e8 05 00 f6 ff                 call   0x2cef40
36ef3b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36ef3f  e8 b0 d5 f5 ff                 call   0x2cc4f4
36ef44  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36ef4b  e8 a4 d5 f5 ff                 call   0x2cc4f4
36ef50  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36ef54  e8 9b d5 f5 ff                 call   0x2cc4f4
36ef59  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
36ef5e  e8 91 d5 f5 ff                 call   0x2cc4f4
36ef63  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36ef67  e8 88 d5 f5 ff                 call   0x2cc4f4
36ef6c  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36ef73  e8 7c d5 f5 ff                 call   0x2cc4f4
36ef78  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36ef7f  e8 70 d5 f5 ff                 call   0x2cc4f4
36ef84  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36ef88  e8 67 d5 f5 ff                 call   0x2cc4f4
36ef8d  0f 10 05 f4 d8 08 00           movups xmm0,XMMWORD PTR [rip+0x8d8f4]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36ef94  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36ef9b  f3 0f 10 4c 24 38              movss  xmm1,DWORD PTR [rsp+0x38]
36efa1  0f 28 d7                       movaps xmm2,xmm7
36efa4  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36efaa  e8 91 d3 f5 ff                 call   0x2cc340
36efaf  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36efb3  4c 8d 45 40                    lea    r8,[rbp+0x40]
36efb7  4c 8b c8                       mov    r9,rax
36efba  c7 44 24 28 03 00 00 00        mov    DWORD PTR [rsp+0x28],0x3
36efc2  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36efc7  49 8b cf                       mov    rcx,r15
36efca  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36efcf  e8 88 23 ff ff                 call   0x36135c
36efd4  48 8d 4d 40                    lea    rcx,[rbp+0x40]
36efd8  e8 17 d5 f5 ff                 call   0x2cc4f4
36efdd  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
36efe4  e8 0b d5 f5 ff                 call   0x2cc4f4
36efe9  45 84 ed                       test   r13b,r13b
36efec  0f 84 a3 05 00 00              je     0x36f595
36eff2  80 3d 3f 7e 07 00 00           cmp    BYTE PTR [rip+0x77e3f],0x0        # 0x3e6e38 ; CONFIG Bools.DisableESPMap value(+0x48)
36eff9  74 0d                          je     0x36f008
36effb  e8 84 6b fa ff                 call   0x315b84
36f000  84 c0                          test   al,al
36f002  0f 85 8d 05 00 00              jne    0x36f595
36f008  80 3d 39 4c 08 00 00           cmp    BYTE PTR [rip+0x84c39],0x0        # 0x3f3c48 ; CONFIG Bools.raidesp value(+0x48)
36f00f  0f 84 80 05 00 00              je     0x36f595
36f015  45 33 c0                       xor    r8d,r8d
36f018  48 8d 55 40                    lea    rdx,[rbp+0x40]
36f01c  48 8d 0d 15 15 08 00           lea    rcx,[rip+0x81515]        # 0x3f0538 ; CONFIG VectorBools.BattlemodeOptions value(+0x48)
36f023  e8 c8 a8 f7 ff                 call   0x2e98f0
36f028  48 8b c8                       mov    rcx,rax
36f02b  e8 40 5d f6 ff                 call   0x2d4d70
36f030  84 c0                          test   al,al
36f032  74 0d                          je     0x36f041
36f034  80 3d 7d 6c 07 00 00           cmp    BYTE PTR [rip+0x76c7d],0x0        # 0x3e5cb8
36f03b  0f 85 54 05 00 00              jne    0x36f595
36f041  48 8d 55 10                    lea    rdx,[rbp+0x10]
36f045  48 8d 4d d8                    lea    rcx,[rbp-0x28]
36f049  e8 e2 0e f7 ff                 call   0x2dff30
36f04e  f2 0f 10 4d d8                 movsd  xmm1,QWORD PTR [rbp-0x28]
36f053  4c 8d 0d 4e 82 06 00           lea    r9,[rip+0x6824e]        # 0x3d72a8
36f05a  8b 45 e0                       mov    eax,DWORD PTR [rbp-0x20]
36f05d  4c 8d 44 24 30                 lea    r8,[rsp+0x30]
36f062  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
36f067  f2 0f 11 4c 24 50              movsd  QWORD PTR [rsp+0x50],xmm1
36f06d  49 8b cc                       mov    rcx,r12
36f070  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
36f074  0f 28 f0                       movaps xmm6,xmm0
36f077  e8 a4 dc ff ff                 call   0x36cd20
36f07c  84 c0                          test   al,al
36f07e  0f 84 11 05 00 00              je     0x36f595
36f084  48 8d 95 a8 02 00 00           lea    rdx,[rbp+0x2a8]
36f08b  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f092  e8 19 f3 ff ff                 call   0x36e3b0 ; STRING getter=0x36e3b0 m)
36f097  48 8b c8                       mov    rcx,rax
36f09a  e8 55 13 fb ff                 call   0x3203f4
36f09f  48 8b d0                       mov    rdx,rax
36f0a2  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36f0a6  e8 21 d2 f5 ff                 call   0x2cc2cc
36f0ab  f3 0f 2c d6                    cvttss2si edx,xmm6
36f0af  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36f0b6  48 8b f8                       mov    rdi,rax
36f0b9  e8 52 a4 f6 ff                 call   0x2d9510
36f0be  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36f0c3  48 8b d8                       mov    rbx,rax
36f0c6  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f0cd  e8 c6 f2 ff ff                 call   0x36e398 ; STRING getter=0x36e398 Raid(
36f0d2  48 8b c8                       mov    rcx,rax
36f0d5  e8 02 94 f6 ff                 call   0x2d84dc
36f0da  48 8b d0                       mov    rdx,rax
36f0dd  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36f0e4  e8 e3 d1 f5 ff                 call   0x2cc2cc
36f0e9  48 8b d0                       mov    rdx,rax
36f0ec  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36f0f0  4c 8b c3                       mov    r8,rbx
36f0f3  e8 48 fe f5 ff                 call   0x2cef40
36f0f8  48 8b d0                       mov    rdx,rax
36f0fb  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
36f102  4c 8b c7                       mov    r8,rdi
36f105  e8 36 fe f5 ff                 call   0x2cef40
36f10a  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36f10e  e8 e1 d3 f5 ff                 call   0x2cc4f4
36f113  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36f11a  e8 d5 d3 f5 ff                 call   0x2cc4f4
36f11f  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36f126  e8 c9 d3 f5 ff                 call   0x2cc4f4
36f12b  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36f12f  e8 c0 d3 f5 ff                 call   0x2cc4f4
36f134  0f 10 05 4d d7 08 00           movups xmm0,XMMWORD PTR [rip+0x8d74d]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f13b  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f142  f3 0f 10 54 24 34              movss  xmm2,DWORD PTR [rsp+0x34]
36f148  f3 0f 10 4c 24 30              movss  xmm1,DWORD PTR [rsp+0x30]
36f14e  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36f154  e8 e7 d1 f5 ff                 call   0x2cc340
36f159  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36f15d  4c 8d 85 c0 01 00 00           lea    r8,[rbp+0x1c0]
36f164  4c 8b c8                       mov    r9,rax
36f167  41 bc 01 00 00 00              mov    r12d,0x1
36f16d  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36f172  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
36f177  49 8b cf                       mov    rcx,r15
36f17a  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36f17f  e8 d8 21 ff ff                 call   0x36135c
36f184  f3 0f 10 44 24 34              movss  xmm0,DWORD PTR [rsp+0x34]
36f18a  48 8d 54 24 38                 lea    rdx,[rsp+0x38]
36f18f  f3 0f 58 05 41 9d ed ff        addss  xmm0,DWORD PTR [rip+0xffffffffffed9d41]        # 0x248ed8 ; f32=16
36f197  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36f19e  f3 0f 11 44 24 34              movss  DWORD PTR [rsp+0x34],xmm0
36f1a4  e8 83 87 f6 ff                 call   0x2d792c
36f1a9  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36f1ae  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36f1b5  e8 b2 87 f6 ff                 call   0x2d796c
36f1ba  e9 46 01 00 00                 jmp    0x36f305
36f1bf  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
36f1c4  e8 f7 5b f6 ff                 call   0x2d4dc0
36f1c9  48 8d 95 a0 02 00 00           lea    rdx,[rbp+0x2a0]
36f1d0  48 8b f0                       mov    rsi,rax
36f1d3  48 8d 8d a8 02 00 00           lea    rcx,[rbp+0x2a8]
36f1da  e8 51 d5 f5 ff                 call   0x2cc730
36f1df  48 8b c8                       mov    rcx,rax
36f1e2  e8 bd ea f5 ff                 call   0x2cdca4
36f1e7  48 8b d0                       mov    rdx,rax
36f1ea  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36f1ee  e8 d9 d0 f5 ff                 call   0x2cc2cc
36f1f3  8b 56 28                       mov    edx,DWORD PTR [rsi+0x28]
36f1f6  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36f1fa  48 8b f8                       mov    rdi,rax
36f1fd  e8 0e a3 f6 ff                 call   0x2d9510
36f202  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36f207  48 8b d8                       mov    rbx,rax
36f20a  48 8d 8d a8 02 00 00           lea    rcx,[rbp+0x2a8]
36f211  e8 b2 f1 ff ff                 call   0x36e3c8 ; STRING getter=0x36e3c8  x
36f216  48 8b c8                       mov    rcx,rax
36f219  e8 d6 11 fb ff                 call   0x3203f4
36f21e  48 8b d0                       mov    rdx,rax
36f221  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36f228  e8 9f d0 f5 ff                 call   0x2cc2cc
36f22d  4c 8b c0                       mov    r8,rax
36f230  48 8d 56 08                    lea    rdx,[rsi+0x8]
36f234  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36f23b  e8 d8 b3 f7 ff                 call   0x2ea618
36f240  48 8b d0                       mov    rdx,rax
36f243  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36f247  4c 8b c3                       mov    r8,rbx
36f24a  e8 f1 fc f5 ff                 call   0x2cef40
36f24f  48 8b d0                       mov    rdx,rax
36f252  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
36f259  4c 8b c7                       mov    r8,rdi
36f25c  e8 df fc f5 ff                 call   0x2cef40
36f261  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36f265  e8 8a d2 f5 ff                 call   0x2cc4f4
36f26a  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36f271  e8 7e d2 f5 ff                 call   0x2cc4f4
36f276  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36f27d  e8 72 d2 f5 ff                 call   0x2cc4f4
36f282  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36f286  e8 69 d2 f5 ff                 call   0x2cc4f4
36f28b  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36f28f  e8 60 d2 f5 ff                 call   0x2cc4f4
36f294  0f 10 05 ed d5 08 00           movups xmm0,XMMWORD PTR [rip+0x8d5ed]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f29b  48 8d 4d 08                    lea    rcx,[rbp+0x8]
36f29f  f3 0f 10 54 24 34              movss  xmm2,DWORD PTR [rsp+0x34]
36f2a5  f3 0f 10 4c 24 30              movss  xmm1,DWORD PTR [rsp+0x30]
36f2ab  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36f2b1  e8 8a d0 f5 ff                 call   0x2cc340
36f2b6  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36f2ba  4c 8d 85 a0 00 00 00           lea    r8,[rbp+0xa0]
36f2c1  4c 8b c8                       mov    r9,rax
36f2c4  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
36f2c9  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36f2ce  49 8b cf                       mov    rcx,r15
36f2d1  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36f2d6  e8 81 20 ff ff                 call   0x36135c
36f2db  f3 0f 10 44 24 34              movss  xmm0,DWORD PTR [rsp+0x34]
36f2e1  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
36f2e8  f3 0f 58 05 e8 9b ed ff        addss  xmm0,DWORD PTR [rip+0xffffffffffed9be8]        # 0x248ed8 ; f32=16
36f2f0  f3 0f 11 44 24 34              movss  DWORD PTR [rsp+0x34],xmm0
36f2f6  e8 f9 d1 f5 ff                 call   0x2cc4f4
36f2fb  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
36f300  e8 fb 5a f6 ff                 call   0x2d4e00
36f305  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
36f30a  48 8d 4c 24 38                 lea    rcx,[rsp+0x38]
36f30f  e8 20 d2 f5 ff                 call   0x2cc534
36f314  84 c0                          test   al,al
36f316  0f 84 a3 fe ff ff              je     0x36f1bf
36f31c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
36f321  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f328  e8 e7 f0 ff ff                 call   0x36e414 ; STRING getter=0x36e414 s]
36f32d  48 8b c8                       mov    rcx,rax
36f330  e8 bf 10 fb ff                 call   0x3203f4
36f335  48 8b d0                       mov    rdx,rax
36f338  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36f33c  e8 8b cf f5 ff                 call   0x2cc2cc
36f341  f3 44 0f 2c 05 b6 0c 09 00     cvttss2si r8d,DWORD PTR [rip+0x90cb6]        # 0x400000
36f34a  4c 8b f0                       mov    r14,rax
36f34d  bb 89 88 88 88                 mov    ebx,0x88888889
36f352  8b c3                          mov    eax,ebx
36f354  41 f7 e8                       imul   r8d
36f357  41 03 d0                       add    edx,r8d
36f35a  c1 fa 05                       sar    edx,0x5
36f35d  8b ca                          mov    ecx,edx
36f35f  c1 e9 1f                       shr    ecx,0x1f
36f362  03 d1                          add    edx,ecx
36f364  6b ca 3c                       imul   ecx,edx,0x3c
36f367  44 2b c1                       sub    r8d,ecx
36f36a  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
36f371  41 8b d0                       mov    edx,r8d
36f374  e8 97 a1 f6 ff                 call   0x2d9510
36f379  48 8d 55 c0                    lea    rdx,[rbp-0x40]
36f37d  48 8b f0                       mov    rsi,rax
36f380  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f387  e8 70 f0 ff ff                 call   0x36e3fc ; STRING getter=0x36e3fc m:
36f38c  48 8b c8                       mov    rcx,rax
36f38f  e8 60 10 fb ff                 call   0x3203f4
36f394  48 8b d0                       mov    rdx,rax
36f397  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36f39e  e8 29 cf f5 ff                 call   0x2cc2cc
36f3a3  f3 0f 2c 0d 55 0c 09 00        cvttss2si ecx,DWORD PTR [rip+0x90c55]        # 0x400000
36f3ab  48 8b f8                       mov    rdi,rax
36f3ae  8b c3                          mov    eax,ebx
36f3b0  f7 e9                          imul   ecx
36f3b2  03 d1                          add    edx,ecx
36f3b4  c1 fa 05                       sar    edx,0x5
36f3b7  8b ca                          mov    ecx,edx
36f3b9  c1 e9 1f                       shr    ecx,0x1f
36f3bc  03 d1                          add    edx,ecx
36f3be  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36f3c2  e8 49 a1 f6 ff                 call   0x2d9510
36f3c7  48 8d 95 a8 02 00 00           lea    rdx,[rbp+0x2a8]
36f3ce  48 8b d8                       mov    rbx,rax
36f3d1  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f3d8  e8 1b 0d f8 ff                 call   0x2f00f8 ; STRING getter=0x2f00f8 [
36f3dd  48 8b c8                       mov    rcx,rax
36f3e0  e8 7f 90 f6 ff                 call   0x2d8464
36f3e5  48 8b d0                       mov    rdx,rax
36f3e8  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36f3ec  e8 db ce f5 ff                 call   0x2cc2cc
36f3f1  48 8b d0                       mov    rdx,rax
36f3f4  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36f3fb  4c 8b c3                       mov    r8,rbx
36f3fe  e8 3d fb f5 ff                 call   0x2cef40
36f403  48 8b d0                       mov    rdx,rax
36f406  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36f40d  4c 8b c7                       mov    r8,rdi
36f410  e8 2b fb f5 ff                 call   0x2cef40
36f415  48 8b d0                       mov    rdx,rax
36f418  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36f41c  4c 8b c6                       mov    r8,rsi
36f41f  e8 1c fb f5 ff                 call   0x2cef40
36f424  48 8b d0                       mov    rdx,rax
36f427  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
36f42e  4d 8b c6                       mov    r8,r14
36f431  e8 0a fb f5 ff                 call   0x2cef40
36f436  48 8d 4d 90                    lea    rcx,[rbp-0x70]
36f43a  e8 b5 d0 f5 ff                 call   0x2cc4f4
36f43f  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
36f446  e8 a9 d0 f5 ff                 call   0x2cc4f4
36f44b  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
36f452  e8 9d d0 f5 ff                 call   0x2cc4f4
36f457  48 8d 4d 60                    lea    rcx,[rbp+0x60]
36f45b  e8 94 d0 f5 ff                 call   0x2cc4f4
36f460  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36f464  e8 8b d0 f5 ff                 call   0x2cc4f4
36f469  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
36f470  e8 7f d0 f5 ff                 call   0x2cc4f4
36f475  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
36f47c  e8 73 d0 f5 ff                 call   0x2cc4f4
36f481  48 8d 4d e8                    lea    rcx,[rbp-0x18]
36f485  e8 6a d0 f5 ff                 call   0x2cc4f4
36f48a  0f 10 05 f7 d3 08 00           movups xmm0,XMMWORD PTR [rip+0x8d3f7]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f491  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f498  f3 0f 10 54 24 34              movss  xmm2,DWORD PTR [rsp+0x34]
36f49e  f3 0f 10 4c 24 30              movss  xmm1,DWORD PTR [rsp+0x30]
36f4a4  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36f4aa  e8 91 ce f5 ff                 call   0x2cc340
36f4af  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36f4b3  4c 8d 85 a0 01 00 00           lea    r8,[rbp+0x1a0]
36f4ba  4c 8b c8                       mov    r9,rax
36f4bd  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
36f4c2  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36f4c7  49 8b cf                       mov    rcx,r15
36f4ca  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36f4cf  e8 88 1e ff ff                 call   0x36135c
36f4d4  f3 0f 10 44 24 34              movss  xmm0,DWORD PTR [rsp+0x34]
36f4da  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
36f4df  f3 0f 58 05 f1 99 ed ff        addss  xmm0,DWORD PTR [rip+0xffffffffffed99f1]        # 0x248ed8 ; f32=16
36f4e7  8b 45 e0                       mov    eax,DWORD PTR [rbp-0x20]
36f4ea  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
36f4f1  89 44 24 58                    mov    DWORD PTR [rsp+0x58],eax
36f4f5  f3 0f 11 44 24 34              movss  DWORD PTR [rsp+0x34],xmm0
36f4fb  f2 0f 10 45 d8                 movsd  xmm0,QWORD PTR [rbp-0x28]
36f500  f2 0f 11 44 24 50              movsd  QWORD PTR [rsp+0x50],xmm0
36f506  e8 0d 60 fa ff                 call   0x315518
36f50b  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
36f512  e8 7d 91 f6 ff                 call   0x2d8694
36f517  84 c0                          test   al,al
36f519  75 4a                          jne    0x36f565
36f51b  0f 10 05 66 d3 08 00           movups xmm0,XMMWORD PTR [rip+0x8d366]        # 0x3fc888 ; CONFIG C.RaidColor value(+0x48)
36f522  48 8d 8d a0 02 00 00           lea    rcx,[rbp+0x2a0]
36f529  f3 0f 10 54 24 34              movss  xmm2,DWORD PTR [rsp+0x34]
36f52f  f3 0f 10 4c 24 30              movss  xmm1,DWORD PTR [rsp+0x30]
36f535  66 0f 7f 44 24 70              movdqa XMMWORD PTR [rsp+0x70],xmm0
36f53b  e8 00 ce f5 ff                 call   0x2cc340
36f540  49 8b 57 10                    mov    rdx,QWORD PTR [r15+0x10]
36f544  4c 8d 85 50 01 00 00           lea    r8,[rbp+0x150]
36f54b  4c 8b c8                       mov    r9,rax
36f54e  44 89 64 24 28                 mov    DWORD PTR [rsp+0x28],r12d
36f553  48 8d 44 24 70                 lea    rax,[rsp+0x70]
36f558  49 8b cf                       mov    rcx,r15
36f55b  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
36f560  e8 f7 1d ff ff                 call   0x36135c
36f565  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36f56c  e8 13 0a 00 00                 call   0x36ff84
36f571  48 8d 8d 50 01 00 00           lea    rcx,[rbp+0x150]
36f578  e8 77 cf f5 ff                 call   0x2cc4f4
36f57d  48 8d 8d a0 01 00 00           lea    rcx,[rbp+0x1a0]
36f584  e8 6b cf f5 ff                 call   0x2cc4f4
36f589  48 8d 8d c0 01 00 00           lea    rcx,[rbp+0x1c0]
36f590  e8 5f cf f5 ff                 call   0x2cc4f4
36f595  48 8d 8d 10 01 00 00           lea    rcx,[rbp+0x110]
36f59c  e8 f3 ea ff ff                 call   0x36e094
36f5a1  4c 8d 9c 24 50 03 00 00        lea    r11,[rsp+0x350]
36f5a9  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
36f5ad  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
36f5b2  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
36f5b7  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
36f5bc  49 8b e3                       mov    rsp,r11
36f5bf  41 5f                          pop    r15
36f5c1  41 5e                          pop    r14
36f5c3  41 5d                          pop    r13
36f5c5  41 5c                          pop    r12
36f5c7  5f                             pop    rdi
36f5c8  5e                             pop    rsi
36f5c9  5d                             pop    rbp
36f5ca  c3                             ret

