; pdata function 0x34e554..0x34f21d unwind=0x3d3d14
34e554  48 8b c4                       mov    rax,rsp
34e557  55                             push   rbp
34e558  53                             push   rbx
34e559  56                             push   rsi
34e55a  57                             push   rdi
34e55b  41 55                          push   r13
34e55d  41 56                          push   r14
34e55f  41 57                          push   r15
34e561  48 8d a8 88 fe ff ff           lea    rbp,[rax-0x178]
34e568  48 81 ec 40 02 00 00           sub    rsp,0x240
34e56f  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
34e573  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
34e577  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
34e57c  44 0f 29 58 88                 movaps XMMWORD PTR [rax-0x78],xmm11
34e581  e8 0a 07 04 00                 call   0x38ec90
34e586  f3 44 0f 10 1d c5 ec f3 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff3ecc5]        # 0x28d254 ; f32=1
34e58f  b9 04 00 00 00                 mov    ecx,0x4
34e594  41 0f 28 cb                    movaps xmm1,xmm11
34e598  e8 fb 3c 04 00                 call   0x392298
34e59d  8b d0                          mov    edx,eax
34e59f  b9 08 00 00 00                 mov    ecx,0x8
34e5a4  e8 43 a6 04 00                 call   0x398bec
34e5a9  48 8d 15 18 ed 0a 00           lea    rdx,[rip+0xaed18]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34e5b0  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34e5b4  e8 db 5b f8 ff                 call   0x2d4194
34e5b9  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34e5c0  e8 77 3d 04 00                 call   0x39233c
34e5c5  f3 44 0f 10 05 56 f5 f3 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff3f556]        # 0x28db24 ; f32=30
34e5ce  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
34e5d2  f3 0f 59 35 76 ec f3 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff3ec76]        # 0x28d250 ; f32=0.5
34e5da  f3 41 0f 5c f0                 subss  xmm6,xmm8
34e5df  e8 e8 3f 04 00                 call   0x3925cc
34e5e4  0f 28 d0                       movaps xmm2,xmm0
34e5e7  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e5ee  0f 28 ce                       movaps xmm1,xmm6
34e5f1  e8 4a dd f7 ff                 call   0x2cc340
34e5f6  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34e5fa  e8 d9 a4 f8 ff                 call   0x2d8ad8
34e5ff  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34e603  48 8b f8                       mov    rdi,rax
34e606  e8 e1 f1 f7 ff                 call   0x2cd7ec
34e60b  8b 0d d7 ea 0a 00              mov    ecx,DWORD PTR [rip+0xaead7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34e611  41 bf 01 00 00 00              mov    r15d,0x1
34e617  48 8b f0                       mov    rsi,rax
34e61a  41 3b cf                       cmp    ecx,r15d
34e61d  75 0e                          jne    0x34e62d
34e61f  48 8d 0d 5a 96 f5 ff           lea    rcx,[rip+0xfffffffffff5965a]        # 0x2a7c80
34e626  e8 d9 69 01 00                 call   0x365004
34e62b  eb 27                          jmp    0x34e654
34e62d  83 f9 02                       cmp    ecx,0x2
34e630  75 09                          jne    0x34e63b
34e632  48 8d 0d 57 96 f5 ff           lea    rcx,[rip+0xfffffffffff59657]        # 0x2a7c90
34e639  eb eb                          jmp    0x34e626
34e63b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34e640  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e647  e8 bc 52 00 00                 call   0x353908 ; STRING getter=0x353908 Search..
34e64c  48 8b c8                       mov    rcx,rax
34e64f  e8 38 b5 f9 ff                 call   0x2e9b8c
34e654  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34e658  48 8b d8                       mov    rbx,rax
34e65b  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e662  e8 d9 3b 00 00                 call   0x352240 ; STRING getter=0x352240 ##search
34e667  48 8b c8                       mov    rcx,rax
34e66a  e8 1d b5 f9 ff                 call   0x2e9b8c
34e66f  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
34e678  48 8b c8                       mov    rcx,rax
34e67b  48 8d 85 90 01 00 00           lea    rax,[rbp+0x190]
34e682  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
34e68b  c7 44 24 28 00 50 00 00        mov    DWORD PTR [rsp+0x28],0x5000
34e693  44 8b cf                       mov    r9d,edi
34e696  4c 8b c6                       mov    r8,rsi
34e699  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
34e69e  48 8b d3                       mov    rdx,rbx
34e6a1  e8 92 1e 07 00                 call   0x3c0538
34e6a6  e8 e1 59 04 00                 call   0x39408c
34e6ab  41 8b cf                       mov    ecx,r15d
34e6ae  88 05 41 ee 0a 00              mov    BYTE PTR [rip+0xaee41],al        # 0x3fd4f5
34e6b4  e8 53 a2 04 00                 call   0x39890c
34e6b9  8b 05 19 f2 0a 00              mov    eax,DWORD PTR [rip+0xaf219]        # 0x3fd8d8
34e6bf  41 84 c7                       test   r15b,al
34e6c2  75 15                          jne    0x34e6d9
34e6c4  41 0b c7                       or     eax,r15d
34e6c7  48 8d 0d e2 24 08 00           lea    rcx,[rip+0x824e2]        # 0x3d0bb0
34e6ce  89 05 04 f2 0a 00              mov    DWORD PTR [rip+0xaf204],eax        # 0x3fd8d8
34e6d4  e8 53 ec f7 ff                 call   0x2cd32c
34e6d9  f3 0f 10 0d db 4a f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff44adb]        # 0x2931bc ; f32=16
34e6e1  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e6e8  0f 28 d1                       movaps xmm2,xmm1
34e6eb  e8 50 dc f7 ff                 call   0x2cc340
34e6f0  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34e6f7  b9 02 00 00 00                 mov    ecx,0x2
34e6fc  e8 5f a5 04 00                 call   0x398c60
34e701  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34e706  e8 31 3c 04 00                 call   0x39233c
34e70b  f3 0f 10 15 4d 4b f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff44b4d]        # 0x293260 ; f32=-1
34e713  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34e71a  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34e71e  f3 0f 59 0d 2a eb f3 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff3eb2a]        # 0x28d250 ; f32=0.5
34e726  f3 41 0f 5c c8                 subss  xmm1,xmm8
34e72b  e8 10 dc f7 ff                 call   0x2cc340
34e730  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34e737  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e73e  e8 f9 65 00 00                 call   0x354d3c ; STRING getter=0x354d3c list
34e743  48 8b c8                       mov    rcx,rax
34e746  e8 81 f5 f7 ff                 call   0x2cdccc
34e74b  48 8b c8                       mov    rcx,rax
34e74e  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34e755  41 b9 00 00 01 00              mov    r9d,0x10000
34e75b  45 33 c0                       xor    r8d,r8d
34e75e  e8 19 02 04 00                 call   0x38e97c
34e763  4c 8d 2d 46 d9 0a 00           lea    r13,[rip+0xad946]        # 0x3fc0b0
34e76a  49 8b cd                       mov    rcx,r13
34e76d  e8 26 e8 f8 ff                 call   0x2dcf98
34e772  48 8d 0d d7 a0 ec ff           lea    rcx,[rip+0xffffffffffeca0d7]        # 0x218850
34e779  e8 42 92 f8 ff                 call   0x2d79c0
34e77e  48 8d 0d cb a0 ec ff           lea    rcx,[rip+0xffffffffffeca0cb]        # 0x218850
34e785  4c 8b f0                       mov    r14,rax
34e788  e8 eb 31 f8 ff                 call   0x2d1978
34e78d  48 8b f0                       mov    rsi,rax
34e790  49 3b c6                       cmp    rax,r14
34e793  0f 84 ba 01 00 00              je     0x34e953
34e799  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34e7a0  48 8d 4e 48                    lea    rcx,[rsi+0x48]
34e7a4  e8 9f 62 01 00                 call   0x364a48
34e7a9  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34e7ae  48 8d 4e 48                    lea    rcx,[rsi+0x48]
34e7b2  48 8b 18                       mov    rbx,QWORD PTR [rax]
34e7b5  e8 9e 47 01 00                 call   0x362f58
34e7ba  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e7c1  48 8b f8                       mov    rdi,rax
34e7c4  e8 db cb f7 ff                 call   0x2cb3a4
34e7c9  48 8b 17                       mov    rdx,QWORD PTR [rdi]
34e7cc  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34e7d1  4c 8b c8                       mov    r9,rax
34e7d4  4c 8b c3                       mov    r8,rbx
34e7d7  e8 44 6d fe ff                 call   0x335520
34e7dc  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34e7e1  48 8d 0d 78 8a 08 00           lea    rcx,[rip+0x88a78]        # 0x3d7260
34e7e8  e8 a7 0f fa ff                 call   0x2ef794
34e7ed  44 39 78 24                    cmp    DWORD PTR [rax+0x24],r15d
34e7f1  0f 85 42 01 00 00              jne    0x34e939
34e7f7  48 8d 3d ca ea 0a 00           lea    rdi,[rip+0xaeaca]        # 0x3fd2c8 ; CONFIG S.SearchInputTest value(+0x48)
34e7fe  48 8b cf                       mov    rcx,rdi
34e801  e8 ea 78 fe ff                 call   0x3360f0
34e806  84 c0                          test   al,al
34e808  0f 85 1f 01 00 00              jne    0x34e92d
34e80e  48 8d 56 28                    lea    rdx,[rsi+0x28]
34e812  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e816  e8 79 59 f8 ff                 call   0x2d4194
34e81b  8b 96 90 00 00 00              mov    edx,DWORD PTR [rsi+0x90]
34e821  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34e825  e8 e6 ac f8 ff                 call   0x2d9510
34e82a  48 8d 55 28                    lea    rdx,[rbp+0x28]
34e82e  48 8b cf                       mov    rcx,rdi
34e831  e8 9e 9e f8 ff                 call   0x2d86d4
34e836  48 8d 55 30                    lea    rdx,[rbp+0x30]
34e83a  48 8b cf                       mov    rcx,rdi
34e83d  48 8b 18                       mov    rbx,QWORD PTR [rax]
34e840  e8 ab 94 f8 ff                 call   0x2d7cf0
34e845  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34e84c  48 8b f8                       mov    rdi,rax
34e84f  e8 50 cb f7 ff                 call   0x2cb3a4
34e854  48 8b 17                       mov    rdx,QWORD PTR [rdi]
34e857  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34e85b  4c 8b c8                       mov    r9,rax
34e85e  4c 8b c3                       mov    r8,rbx
34e861  e8 ba 6c fe ff                 call   0x335520
34e866  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34e86a  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e86e  e8 7d 94 f8 ff                 call   0x2d7cf0
34e873  48 8d 55 10                    lea    rdx,[rbp+0x10]
34e877  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e87b  48 8b 38                       mov    rdi,QWORD PTR [rax]
34e87e  e8 51 9e f8 ff                 call   0x2d86d4
34e883  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34e887  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e88b  48 8b 18                       mov    rbx,QWORD PTR [rax]
34e88e  e8 5d 94 f8 ff                 call   0x2d7cf0
34e893  48 8d 0d 76 7c f8 ff           lea    rcx,[rip+0xfffffffffff87c76]        # 0x2d6510
34e89a  4c 8b cf                       mov    r9,rdi
34e89d  48 89 4c 24 20                 mov    QWORD PTR [rsp+0x20],rcx
34e8a2  4c 8b c3                       mov    r8,rbx
34e8a5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34e8aa  48 8b 10                       mov    rdx,QWORD PTR [rax]
34e8ad  e8 1e 7a fe ff                 call   0x3362d0
34e8b2  45 33 c0                       xor    r8d,r8d
34e8b5  48 8d 55 80                    lea    rdx,[rbp-0x80]
34e8b9  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e8bd  e8 1e a0 f8 ff                 call   0x2d88e0
34e8c2  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34e8c6  75 4a                          jne    0x34e912
34e8c8  45 33 c0                       xor    r8d,r8d
34e8cb  48 8d 55 80                    lea    rdx,[rbp-0x80]
34e8cf  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34e8d4  e8 07 a0 f8 ff                 call   0x2d88e0
34e8d9  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34e8dd  75 33                          jne    0x34e912
34e8df  45 33 c0                       xor    r8d,r8d
34e8e2  48 8d 55 80                    lea    rdx,[rbp-0x80]
34e8e6  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34e8ea  e8 f1 9f f8 ff                 call   0x2d88e0
34e8ef  48 83 f8 ff                    cmp    rax,0xffffffffffffffff
34e8f3  75 1d                          jne    0x34e912
34e8f5  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34e8f9  e8 f6 db f7 ff                 call   0x2cc4f4
34e8fe  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34e902  e8 ed db f7 ff                 call   0x2cc4f4
34e907  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e90b  e8 e4 db f7 ff                 call   0x2cc4f4
34e910  eb 27                          jmp    0x34e939
34e912  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34e916  e8 d9 db f7 ff                 call   0x2cc4f4
34e91b  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34e91f  e8 d0 db f7 ff                 call   0x2cc4f4
34e924  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34e928  e8 c7 db f7 ff                 call   0x2cc4f4
34e92d  48 8d 56 28                    lea    rdx,[rsi+0x28]
34e931  49 8b cd                       mov    rcx,r13
34e934  e8 e3 a6 f8 ff                 call   0x2d901c
34e939  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34e93e  e8 b1 db f7 ff                 call   0x2cc4f4
34e943  48 81 c6 98 00 00 00           add    rsi,0x98
34e94a  49 3b f6                       cmp    rsi,r14
34e94d  0f 85 46 fe ff ff              jne    0x34e799
34e953  49 8b cd                       mov    rcx,r13
34e956  e8 45 9d f8 ff                 call   0x2d86a0
34e95b  84 c0                          test   al,al
34e95d  74 0c                          je     0x34e96b
34e95f  c7 05 73 ef 0a 00 ff ff ff ff  mov    DWORD PTR [rip+0xaef73],0xffffffff        # 0x3fd8dc
34e969  eb 29                          jmp    0x34e994
34e96b  48 63 1d 6a ef 0a 00           movsxd rbx,DWORD PTR [rip+0xaef6a]        # 0x3fd8dc
34e972  85 db                          test   ebx,ebx
34e974  78 0d                          js     0x34e983
34e976  49 8b cd                       mov    rcx,r13
34e979  e8 6a aa f8 ff                 call   0x2d93e8
34e97e  48 3b d8                       cmp    rbx,rax
34e981  72 11                          jb     0x34e994
34e983  49 8b cd                       mov    rcx,r13
34e986  e8 5d aa f8 ff                 call   0x2d93e8
34e98b  41 2b c7                       sub    eax,r15d
34e98e  89 05 48 ef 0a 00              mov    DWORD PTR [rip+0xaef48],eax        # 0x3fd8dc
34e994  49 8b cd                       mov    rcx,r13
34e997  e8 04 9d f8 ff                 call   0x2d86a0
34e99c  0f 57 ff                       xorps  xmm7,xmm7
34e99f  84 c0                          test   al,al
34e9a1  75 7c                          jne    0x34ea1f
34e9a3  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e9aa  e8 8d 39 04 00                 call   0x39233c
34e9af  0f 57 d2                       xorps  xmm2,xmm2
34e9b2  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e9b9  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34e9bd  e8 7e d9 f7 ff                 call   0x2cc340
34e9c2  49 8b d5                       mov    rdx,r13
34e9c5  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34e9ca  e8 ed c8 f8 ff                 call   0x2db2bc
34e9cf  49 8b d5                       mov    rdx,r13
34e9d2  48 8d 4d b0                    lea    rcx,[rbp-0x50]
34e9d6  48 8b f8                       mov    rdi,rax
34e9d9  e8 de c8 f8 ff                 call   0x2db2bc
34e9de  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34e9e5  48 8b d8                       mov    rbx,rax
34e9e8  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34e9ef  e8 ac 7b 00 00                 call   0x3565a0 ; STRING getter=0x3565a0 Player
34e9f4  48 8b c8                       mov    rcx,rax
34e9f7  e8 f8 f2 f7 ff                 call   0x2cdcf4
34e9fc  48 8b 95 88 01 00 00           mov    rdx,QWORD PTR [rbp+0x188]
34ea03  4c 8d 05 d2 ee 0a 00           lea    r8,[rip+0xaeed2]        # 0x3fd8dc
34ea0a  48 8b c8                       mov    rcx,rax
34ea0d  44 88 7c 24 28                 mov    BYTE PTR [rsp+0x28],r15b
34ea12  4c 8b cb                       mov    r9,rbx
34ea15  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
34ea1a  e8 2d 90 03 00                 call   0x387a4c
34ea1f  e8 64 20 04 00                 call   0x390a88
34ea24  41 8b cf                       mov    ecx,r15d
34ea27  e8 40 9f 04 00                 call   0x39896c
34ea2c  e8 cb 24 04 00                 call   0x390efc
34ea31  f3 0f 10 0d 27 48 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff44827]        # 0x293260 ; f32=-1
34ea39  0f 57 c0                       xorps  xmm0,xmm0
34ea3c  e8 c3 c1 04 00                 call   0x39ac04
34ea41  f3 0f 10 15 17 48 f4 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff44817]        # 0x293260 ; f32=-1
34ea49  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34ea50  0f 57 c9                       xorps  xmm1,xmm1
34ea53  e8 e8 d8 f7 ff                 call   0x2cc340
34ea58  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ea5d  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ea64  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
34ea68  e8 17 95 00 00                 call   0x357f84 ; STRING getter=0x357f84 Friend Options
34ea6d  48 8b c8                       mov    rcx,rax
34ea70  e8 f7 9b f8 ff                 call   0x2d866c
34ea75  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34ea7c  48 8b d8                       mov    rbx,rax
34ea7f  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ea86  e8 b1 1c 00 00                 call   0x35073c ; STRING getter=0x35073c H
34ea8b  48 8b c8                       mov    rcx,rax
34ea8e  e8 d1 99 f8 ff                 call   0x2d8464
34ea93  48 8b d0                       mov    rdx,rax
34ea96  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34ea9a  e8 2d d8 f7 ff                 call   0x2cc2cc
34ea9f  48 8b c8                       mov    rcx,rax
34eaa2  45 8a cf                       mov    r9b,r15b
34eaa5  66 49 0f 7e f0                 movq   r8,xmm6
34eaaa  48 8b d3                       mov    rdx,rbx
34eaad  e8 3e 63 03 00                 call   0x384df0
34eab2  48 63 1d 23 ee 0a 00           movsxd rbx,DWORD PTR [rip+0xaee23]        # 0x3fd8dc
34eab9  85 db                          test   ebx,ebx
34eabb  0f 88 24 07 00 00              js     0x34f1e5
34eac1  49 8b cd                       mov    rcx,r13
34eac4  e8 1f a9 f8 ff                 call   0x2d93e8
34eac9  48 3b d8                       cmp    rbx,rax
34eacc  0f 83 13 07 00 00              jae    0x34f1e5
34ead2  48 8d 3d 77 9d ec ff           lea    rdi,[rip+0xffffffffffec9d77]        # 0x218850
34ead9  48 8b cf                       mov    rcx,rdi
34eadc  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34eae3  e8 c8 9c f8 ff                 call   0x2d87b0
34eae8  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34eaef  48 8b cf                       mov    rcx,rdi
34eaf2  48 8b 18                       mov    rbx,QWORD PTR [rax]
34eaf5  e8 96 92 f8 ff                 call   0x2d7d90
34eafa  44 8a 8d 88 01 00 00           mov    r9b,BYTE PTR [rbp+0x188]
34eb01  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34eb08  4c 8b c3                       mov    r8,rbx
34eb0b  48 8b 10                       mov    rdx,QWORD PTR [rax]
34eb0e  e8 c5 76 fe ff                 call   0x3361d8
34eb13  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34eb18  48 8b cf                       mov    rcx,rdi
34eb1b  48 8b d8                       mov    rbx,rax
34eb1e  e8 6d 92 f8 ff                 call   0x2d7d90
34eb23  48 8b d0                       mov    rdx,rax
34eb26  48 8b cb                       mov    rcx,rbx
34eb29  e8 92 7c fe ff                 call   0x3367c0
34eb2e  48 8b cf                       mov    rcx,rdi
34eb31  48 63 d8                       movsxd rbx,eax
34eb34  e8 a7 64 01 00                 call   0x364fe0
34eb39  48 3b d8                       cmp    rbx,rax
34eb3c  0f 83 a3 06 00 00              jae    0x34f1e5
34eb42  48 8b d3                       mov    rdx,rbx
34eb45  48 8b cf                       mov    rcx,rdi
34eb48  e8 57 7c fe ff                 call   0x3367a4
34eb4d  33 c9                          xor    ecx,ecx
34eb4f  4c 8b f0                       mov    r14,rax
34eb52  e8 b1 c3 f7 ff                 call   0x2caf08
34eb57  84 c0                          test   al,al
34eb59  0f 84 ed 00 00 00              je     0x34ec4c
34eb5f  f3 0f 10 0d dd ef f3 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff3efdd]        # 0x28db44 ; f32=100
34eb67  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34eb6e  0f 28 d1                       movaps xmm2,xmm1
34eb71  e8 ca d7 f7 ff                 call   0x2cc340
34eb76  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34eb7d  e8 ba 37 04 00                 call   0x39233c
34eb82  f3 0f 10 8d 90 01 00 00        movss  xmm1,DWORD PTR [rbp+0x190]
34eb8a  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34eb91  f3 0f 5c 8d 88 01 00 00        subss  xmm1,DWORD PTR [rbp+0x188]
34eb99  0f 57 d2                       xorps  xmm2,xmm2
34eb9c  f3 0f 58 0d 38 46 f4 ff        addss  xmm1,DWORD PTR [rip+0xfffffffffff44638]        # 0x2931dc ; f32=28
34eba4  e8 97 d7 f7 ff                 call   0x2cc340
34eba9  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ebae  e8 25 38 04 00                 call   0x3923d8
34ebb3  48 8d 8d 98 01 00 00           lea    rcx,[rbp+0x198]
34ebba  e8 f9 c7 04 00                 call   0x39b3b8
34ebbf  0f 57 db                       xorps  xmm3,xmm3
34ebc2  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
34ebc8  0f 57 d2                       xorps  xmm2,xmm2
34ebcb  48 8d 4d 10                    lea    rcx,[rbp+0x10]
34ebcf  0f 57 c9                       xorps  xmm1,xmm1
34ebd2  e8 79 d7 f7 ff                 call   0x2cc350
34ebd7  41 0f 28 db                    movaps xmm3,xmm11
34ebdb  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
34ebe2  41 0f 28 d3                    movaps xmm2,xmm11
34ebe6  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34ebea  41 0f 28 cb                    movaps xmm1,xmm11
34ebee  48 8b f0                       mov    rsi,rax
34ebf1  e8 5a d7 f7 ff                 call   0x2cc350
34ebf6  41 0f 28 d3                    movaps xmm2,xmm11
34ebfa  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34ebff  41 0f 28 cb                    movaps xmm1,xmm11
34ec03  48 8b f8                       mov    rdi,rax
34ec06  e8 35 d7 f7 ff                 call   0x2cc340
34ec0b  0f 57 d2                       xorps  xmm2,xmm2
34ec0e  48 8d 4d b0                    lea    rcx,[rbp-0x50]
34ec12  0f 57 c9                       xorps  xmm1,xmm1
34ec15  48 8b d8                       mov    rbx,rax
34ec18  e8 23 d7 f7 ff                 call   0x2cc340
34ec1d  4c 8b c0                       mov    r8,rax
34ec20  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
34ec25  4c 8b cb                       mov    r9,rbx
34ec28  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
34ec2d  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34ec34  33 c9                          xor    ecx,ecx
34ec36  e8 71 15 07 00                 call   0x3c01ac
34ec3b  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ec40  e8 73 c7 04 00                 call   0x39b3b8
34ec45  48 8d 3d 04 9c ec ff           lea    rdi,[rip+0xffffffffffec9c04]        # 0x218850
34ec4c  49 8d 56 48                    lea    rdx,[r14+0x48]
34ec50  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34ec55  e8 3a 55 f8 ff                 call   0x2d4194
34ec5a  49 8d 56 28                    lea    rdx,[r14+0x28]
34ec5e  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34ec62  e8 2d 55 f8 ff                 call   0x2d4194
34ec67  41 8b 96 90 00 00 00           mov    edx,DWORD PTR [r14+0x90]
34ec6e  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34ec72  e8 99 a8 f8 ff                 call   0x2d9510
34ec77  49 8d 56 68                    lea    rdx,[r14+0x68]
34ec7b  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34ec82  e8 0d 55 f8 ff                 call   0x2d4194
34ec87  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34ec8c  e8 03 9a f8 ff                 call   0x2d8694
34ec91  84 c0                          test   al,al
34ec93  0f 85 24 05 00 00              jne    0x34f1bd
34ec99  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34ec9d  e8 f2 99 f8 ff                 call   0x2d8694
34eca2  84 c0                          test   al,al
34eca4  0f 85 13 05 00 00              jne    0x34f1bd
34ecaa  e8 85 42 04 00                 call   0x392f34
34ecaf  f3 0f 59 05 99 e5 f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3e599]        # 0x28d250 ; f32=0.5
34ecb7  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34ecbe  41 0f 28 d0                    movaps xmm2,xmm8
34ecc2  f3 41 0f 5c c0                 subss  xmm0,xmm8
34ecc7  0f 28 c8                       movaps xmm1,xmm0
34ecca  e8 71 d6 f7 ff                 call   0x2cc340
34eccf  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ecd4  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ecdb  e8 a4 9f 00 00                 call   0x358c84 ; STRING getter=0x358c84 Refresh Player List
34ece0  48 8b c8                       mov    rcx,rax
34ece3  e8 ac 17 fd ff                 call   0x320494
34ece8  48 8b c8                       mov    rcx,rax
34eceb  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34ecf2  e8 e1 da 06 00                 call   0x3bc7d8
34ecf7  84 c0                          test   al,al
34ecf9  74 12                          je     0x34ed0d
34ecfb  48 8b cf                       mov    rcx,rdi
34ecfe  c7 05 d4 eb 0a 00 ff ff ff ff  mov    DWORD PTR [rip+0xaebd4],0xffffffff        # 0x3fd8dc
34ed08  e8 5f 43 01 00                 call   0x36306c
34ed0d  f3 0f 10 0d 4b 45 f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff4454b]        # 0x293260 ; f32=-1
34ed15  0f 57 c0                       xorps  xmm0,xmm0
34ed18  e8 e7 be 04 00                 call   0x39ac04
34ed1d  e8 12 42 04 00                 call   0x392f34
34ed22  f3 0f 59 05 26 e5 f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3e526]        # 0x28d250 ; f32=0.5
34ed2a  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34ed31  41 0f 28 d0                    movaps xmm2,xmm8
34ed35  f3 41 0f 5c c0                 subss  xmm0,xmm8
34ed3a  0f 28 c8                       movaps xmm1,xmm0
34ed3d  e8 fe d5 f7 ff                 call   0x2cc340
34ed42  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ed47  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ed4e  e8 61 b9 00 00                 call   0x35a6b4 ; STRING getter=0x35a6b4 Copy Steam Link
34ed53  48 8b c8                       mov    rcx,rax
34ed56  e8 05 e4 f8 ff                 call   0x2dd160
34ed5b  48 8b c8                       mov    rcx,rax
34ed5e  48 8d 95 90 01 00 00           lea    rdx,[rbp+0x190]
34ed65  e8 6e da 06 00                 call   0x3bc7d8
34ed6a  84 c0                          test   al,al
34ed6c  0f 84 3e 01 00 00              je     0x34eeb0
34ed72  48 8d 55 e8                    lea    rdx,[rbp-0x18]
34ed76  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34ed7d  e8 36 67 ff ff                 call   0x3454b8 ; STRING getter=0x3454b8 https://steamcommunity.com/profiles/
34ed82  48 8b c8                       mov    rcx,rax
34ed85  e8 72 4f 01 00                 call   0x363cfc
34ed8a  48 8b d0                       mov    rdx,rax
34ed8d  4c 8d 44 24 60                 lea    r8,[rsp+0x60]
34ed92  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34ed96  e8 79 b9 f9 ff                 call   0x2ea714
34ed9b  8b 05 37 eb 0a 00              mov    eax,DWORD PTR [rip+0xaeb37]        # 0x3fd8d8
34eda1  a8 02                          test   al,0x2
34eda3  0f 85 ad 00 00 00              jne    0x34ee56
34eda9  83 c8 02                       or     eax,0x2
34edac  48 8d 95 88 01 00 00           lea    rdx,[rbp+0x188]
34edb3  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34edba  89 05 18 eb 0a 00              mov    DWORD PTR [rip+0xaeb18],eax        # 0x3fd8d8
34edc0  e8 6b d9 f7 ff                 call   0x2cc730
34edc5  48 8b c8                       mov    rcx,rax
34edc8  e8 d7 ee f7 ff                 call   0x2cdca4
34edcd  48 8d 55 10                    lea    rdx,[rbp+0x10]
34edd1  48 8b f0                       mov    rsi,rax
34edd4  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34eddb  e8 24 25 00 00                 call   0x351304 ; STRING getter=0x351304 set_systemCopyBuffer
34ede0  48 8b c8                       mov    rcx,rax
34ede3  e8 d4 16 fd ff                 call   0x3204bc
34ede8  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34edec  48 8b f8                       mov    rdi,rax
34edef  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34edf6  e8 55 20 00 00                 call   0x350e50 ; STRING getter=0x350e50 UnityEngine
34edfb  48 8b c8                       mov    rcx,rax
34edfe  e8 31 f0 f7 ff                 call   0x2cde34
34ee03  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ee08  48 8b d8                       mov    rbx,rax
34ee0b  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34ee12  e8 a1 18 00 00                 call   0x3506b8 ; STRING getter=0x3506b8 GUIUtility
34ee17  48 8b c8                       mov    rcx,rax
34ee1a  e8 35 ae f9 ff                 call   0x2e9c54
34ee1f  48 8b c8                       mov    rcx,rax
34ee22  48 8b d3                       mov    rdx,rbx
34ee25  e8 fa 53 fe ff                 call   0x334224
34ee2a  48 8b c8                       mov    rcx,rax
34ee2d  c7 44 24 20 ff ff ff ff        mov    DWORD PTR [rsp+0x20],0xffffffff
34ee35  4c 8b ce                       mov    r9,rsi
34ee38  41 83 c8 ff                    or     r8d,0xffffffff
34ee3c  48 8b d7                       mov    rdx,rdi
34ee3f  e8 68 5b fe ff                 call   0x3349ac
34ee44  4c 8b 00                       mov    r8,QWORD PTR [rax]
34ee47  8b 05 8b ea 0a 00              mov    eax,DWORD PTR [rip+0xaea8b]        # 0x3fd8d8
34ee4d  4c 89 05 8c ea 0a 00           mov    QWORD PTR [rip+0xaea8c],r8        # 0x3fd8e0
34ee54  eb 07                          jmp    0x34ee5d
34ee56  4c 8b 05 83 ea 0a 00           mov    r8,QWORD PTR [rip+0xaea83]        # 0x3fd8e0
34ee5d  a8 04                          test   al,0x4
34ee5f  75 1f                          jne    0x34ee80
34ee61  48 8b 0d f8 6f 08 00           mov    rcx,QWORD PTR [rip+0x86ff8]        # 0x3d5e60
34ee68  48 8d 15 81 ea 0a 00           lea    rdx,[rip+0xaea81]        # 0x3fd8f0
34ee6f  83 c8 04                       or     eax,0x4
34ee72  45 33 c9                       xor    r9d,r9d
34ee75  89 05 5d ea 0a 00              mov    DWORD PTR [rip+0xaea5d],eax        # 0x3fd8d8
34ee7b  e8 a4 ce f7 ff                 call   0x2cbd24
34ee80  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34ee84  e8 63 e9 f7 ff                 call   0x2cd7ec
34ee89  48 8b c8                       mov    rcx,rax
34ee8c  e8 4b f7 f7 ff                 call   0x2ce5dc
34ee91  48 8b 0d c8 6f 08 00           mov    rcx,QWORD PTR [rip+0x86fc8]        # 0x3d5e60
34ee98  48 8d 15 51 ea 0a 00           lea    rdx,[rip+0xaea51]        # 0x3fd8f0
34ee9f  4c 8b c0                       mov    r8,rax
34eea2  e8 55 cb f7 ff                 call   0x2cb9fc
34eea7  48 8d 4d 80                    lea    rcx,[rbp-0x80]
34eeab  e8 44 d6 f7 ff                 call   0x2cc4f4
34eeb0  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34eeb7  e8 e8 c4 f7 ff                 call   0x2cb3a4
34eebc  8b 0d 26 e2 0a 00              mov    ecx,DWORD PTR [rip+0xae226]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34eec2  48 8b d8                       mov    rbx,rax
34eec5  41 3b cf                       cmp    ecx,r15d
34eec8  75 09                          jne    0x34eed3
34eeca  48 8d 0d cf 8d f5 ff           lea    rcx,[rip+0xfffffffffff58dcf]        # 0x2a7ca0
34eed1  eb 0c                          jmp    0x34eedf
34eed3  83 f9 02                       cmp    ecx,0x2
34eed6  75 0e                          jne    0x34eee6
34eed8  48 8d 0d d9 8d f5 ff           lea    rcx,[rip+0xfffffffffff58dd9]        # 0x2a7cb8
34eedf  e8 20 61 01 00                 call   0x365004
34eee4  eb 19                          jmp    0x34eeff
34eee6  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34eeeb  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34eef2  e8 d5 28 00 00                 call   0x3517cc
34eef7  48 8b c8                       mov    rcx,rax
34eefa  e8 15 47 f9 ff                 call   0x2e3614
34eeff  48 8b d0                       mov    rdx,rax
34ef02  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
34ef09  e8 be d3 f7 ff                 call   0x2cc2cc
34ef0e  8b 05 d4 e1 0a 00              mov    eax,DWORD PTR [rip+0xae1d4]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ef14  41 3b c7                       cmp    eax,r15d
34ef17  75 09                          jne    0x34ef22
34ef19  48 8d 0d a0 8d f5 ff           lea    rcx,[rip+0xfffffffffff58da0]        # 0x2a7cc0
34ef20  eb 0c                          jmp    0x34ef2e
34ef22  83 f8 02                       cmp    eax,0x2
34ef25  75 0e                          jne    0x34ef35
34ef27  48 8d 0d aa 8d f5 ff           lea    rcx,[rip+0xfffffffffff58daa]        # 0x2a7cd8
34ef2e  e8 d1 60 01 00                 call   0x365004
34ef33  eb 18                          jmp    0x34ef4d
34ef35  48 8d 55 b0                    lea    rdx,[rbp-0x50]
34ef39  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34ef40  e8 4b 2b 00 00                 call   0x351a90 ; STRING getter=0x351a90 Friendly
34ef45  48 8b c8                       mov    rcx,rax
34ef48  e8 3f ac f9 ff                 call   0x2e9b8c
34ef4d  48 8b d0                       mov    rdx,rax
34ef50  48 8d 8d c0 00 00 00           lea    rcx,[rbp+0xc0]
34ef57  e8 70 d3 f7 ff                 call   0x2cc2cc
34ef5c  8b 05 86 e1 0a 00              mov    eax,DWORD PTR [rip+0xae186]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ef62  41 3b c7                       cmp    eax,r15d
34ef65  75 09                          jne    0x34ef70
34ef67  48 8d 0d e2 98 f4 ff           lea    rcx,[rip+0xfffffffffff498e2]        # 0x298850
34ef6e  eb 0c                          jmp    0x34ef7c
34ef70  83 f8 02                       cmp    eax,0x2
34ef73  75 0e                          jne    0x34ef83
34ef75  48 8d 0d e0 98 f4 ff           lea    rcx,[rip+0xfffffffffff498e0]        # 0x29885c
34ef7c  e8 83 60 01 00                 call   0x365004
34ef81  eb 1b                          jmp    0x34ef9e
34ef83  48 8d 95 98 01 00 00           lea    rdx,[rbp+0x198]
34ef8a  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34ef91  e8 0a 2d 00 00                 call   0x351ca0 ; STRING getter=0x351ca0 Enemy
34ef96  48 8b c8                       mov    rcx,rax
34ef99  e8 3e 95 f8 ff                 call   0x2d84dc
34ef9e  48 8b d0                       mov    rdx,rax
34efa1  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
34efa8  e8 1f d3 f7 ff                 call   0x2cc2cc
34efad  4c 8d 85 00 01 00 00           lea    r8,[rbp+0x100]
34efb4  48 8d 95 a0 00 00 00           lea    rdx,[rbp+0xa0]
34efbb  48 8d 4d 30                    lea    rcx,[rbp+0x30]
34efbf  e8 a8 d4 f7 ff                 call   0x2cc46c
34efc4  4c 8b c3                       mov    r8,rbx
34efc7  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34efcb  48 8d 4d e8                    lea    rcx,[rbp-0x18]
34efcf  0f 10 00                       movups xmm0,XMMWORD PTR [rax]
34efd2  f3 0f 7f 45 a0                 movdqu XMMWORD PTR [rbp-0x60],xmm0
34efd7  e8 5c 74 fe ff                 call   0x336438
34efdc  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
34efe1  48 8b d8                       mov    rbx,rax
34efe4  48 8d 0d 75 82 08 00           lea    rcx,[rip+0x88275]        # 0x3d7260
34efeb  e8 a4 07 fa ff                 call   0x2ef794
34eff0  8b 0d f2 e0 0a 00              mov    ecx,DWORD PTR [rip+0xae0f2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34eff6  48 8d 78 24                    lea    rdi,[rax+0x24]
34effa  41 3b cf                       cmp    ecx,r15d
34effd  75 09                          jne    0x34f008
34efff  48 8d 0d da 8c f5 ff           lea    rcx,[rip+0xfffffffffff58cda]        # 0x2a7ce0
34f006  eb 0c                          jmp    0x34f014
34f008  83 f9 02                       cmp    ecx,0x2
34f00b  75 0e                          jne    0x34f01b
34f00d  48 8d 0d fc 8c f5 ff           lea    rcx,[rip+0xfffffffffff58cfc]        # 0x2a7d10
34f014  e8 eb 5f 01 00                 call   0x365004
34f019  eb 18                          jmp    0x34f033
34f01b  48 8d 55 10                    lea    rdx,[rbp+0x10]
34f01f  48 8d 8d 90 01 00 00           lea    rcx,[rbp+0x190]
34f026  e8 35 25 00 00                 call   0x351560 ; STRING getter=0x351560 Custom status
34f02b  48 8b c8                       mov    rcx,rax
34f02e  e8 55 e1 f8 ff                 call   0x2dd188
34f033  4c 8b c3                       mov    r8,rbx
34f036  48 8b d7                       mov    rdx,rdi
34f039  48 8b c8                       mov    rcx,rax
34f03c  e8 c7 ff 06 00                 call   0x3bf008
34f041  ba 20 00 00 00                 mov    edx,0x20
34f046  4c 8d 0d a7 d4 f7 ff           lea    r9,[rip+0xfffffffffff7d4a7]        # 0x2cc4f4
34f04d  48 8d 8d a0 00 00 00           lea    rcx,[rbp+0xa0]
34f054  44 8d 42 e3                    lea    r8d,[rdx-0x1d]
34f058  e8 6b ca f8 ff                 call   0x2dbac8
34f05d  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34f061  e8 86 e7 f7 ff                 call   0x2cd7ec
34f066  8b 0d 7c e0 0a 00              mov    ecx,DWORD PTR [rip+0xae07c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f06c  48 8b d8                       mov    rbx,rax
34f06f  41 3b cf                       cmp    ecx,r15d
34f072  75 09                          jne    0x34f07d
34f074  48 8d 0d a5 8c f5 ff           lea    rcx,[rip+0xfffffffffff58ca5]        # 0x2a7d20
34f07b  eb 0c                          jmp    0x34f089
34f07d  83 f9 02                       cmp    ecx,0x2
34f080  75 0e                          jne    0x34f090
34f082  48 8d 0d a7 8c f5 ff           lea    rcx,[rip+0xfffffffffff58ca7]        # 0x2a7d30
34f089  e8 76 5f 01 00                 call   0x365004
34f08e  eb 19                          jmp    0x34f0a9
34f090  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f095  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f09c  e8 2f 2e 00 00                 call   0x351ed0 ; STRING getter=0x351ed0 Name: %s
34f0a1  48 8b c8                       mov    rcx,rax
34f0a4  e8 e3 aa f9 ff                 call   0x2e9b8c
34f0a9  48 8b d3                       mov    rdx,rbx
34f0ac  48 8b c8                       mov    rcx,rax
34f0af  e8 dc 5d 07 00                 call   0x3c4e90
34f0b4  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34f0b9  e8 2e e7 f7 ff                 call   0x2cd7ec
34f0be  8b 0d 24 e0 0a 00              mov    ecx,DWORD PTR [rip+0xae024]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f0c4  48 8b d8                       mov    rbx,rax
34f0c7  41 3b cf                       cmp    ecx,r15d
34f0ca  75 09                          jne    0x34f0d5
34f0cc  48 8d 0d 6d 8c f5 ff           lea    rcx,[rip+0xfffffffffff58c6d]        # 0x2a7d40
34f0d3  eb 0c                          jmp    0x34f0e1
34f0d5  83 f9 02                       cmp    ecx,0x2
34f0d8  75 0e                          jne    0x34f0e8
34f0da  48 8d 0d 77 8c f5 ff           lea    rcx,[rip+0xfffffffffff58c77]        # 0x2a7d58
34f0e1  e8 1e 5f 01 00                 call   0x365004
34f0e6  eb 19                          jmp    0x34f101
34f0e8  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f0ed  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f0f4  e8 af 30 00 00                 call   0x3521a8 ; STRING getter=0x3521a8 Steam ID: %s
34f0f9  48 8b c8                       mov    rcx,rax
34f0fc  e8 f3 94 f8 ff                 call   0x2d85f4
34f101  48 8b d3                       mov    rdx,rbx
34f104  48 8b c8                       mov    rcx,rax
34f107  e8 84 5d 07 00                 call   0x3c4e90
34f10c  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34f110  e8 d7 e6 f7 ff                 call   0x2cd7ec
34f115  8b 0d cd df 0a 00              mov    ecx,DWORD PTR [rip+0xadfcd]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f11b  48 8b d8                       mov    rbx,rax
34f11e  41 3b cf                       cmp    ecx,r15d
34f121  75 09                          jne    0x34f12c
34f123  48 8d 0d 46 8c f5 ff           lea    rcx,[rip+0xfffffffffff58c46]        # 0x2a7d70
34f12a  eb 0c                          jmp    0x34f138
34f12c  83 f9 02                       cmp    ecx,0x2
34f12f  75 0e                          jne    0x34f13f
34f131  48 8d 0d 58 8c f5 ff           lea    rcx,[rip+0xfffffffffff58c58]        # 0x2a7d90
34f138  e8 c7 5e 01 00                 call   0x365004
34f13d  eb 19                          jmp    0x34f158
34f13f  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f144  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f14b  e8 c0 33 00 00                 call   0x352510 ; STRING getter=0x352510 Team ID: %s
34f150  48 8b c8                       mov    rcx,rax
34f153  e8 dc ec f7 ff                 call   0x2cde34
34f158  48 8b d3                       mov    rdx,rbx
34f15b  48 8b c8                       mov    rcx,rax
34f15e  e8 2d 5d 07 00                 call   0x3c4e90
34f163  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34f16a  e8 7d e6 f7 ff                 call   0x2cd7ec
34f16f  8b 0d 73 df 0a 00              mov    ecx,DWORD PTR [rip+0xadf73]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34f175  48 8b d8                       mov    rbx,rax
34f178  41 3b cf                       cmp    ecx,r15d
34f17b  75 09                          jne    0x34f186
34f17d  48 8d 0d 24 8c f5 ff           lea    rcx,[rip+0xfffffffffff58c24]        # 0x2a7da8
34f184  eb 0c                          jmp    0x34f192
34f186  83 f9 02                       cmp    ecx,0x2
34f189  75 0e                          jne    0x34f199
34f18b  48 8d 0d 56 8c f5 ff           lea    rcx,[rip+0xfffffffffff58c56]        # 0x2a7de8
34f192  e8 6d 5e 01 00                 call   0x365004
34f197  eb 19                          jmp    0x34f1b2
34f199  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34f19e  48 8d 8d 88 01 00 00           lea    rcx,[rbp+0x188]
34f1a5  e8 76 35 00 00                 call   0x352720 ; STRING getter=0x352720 Last Known Grid : %s
34f1aa  48 8b c8                       mov    rcx,rax
34f1ad  e8 0a 13 fd ff                 call   0x3204bc
34f1b2  48 8b d3                       mov    rdx,rbx
34f1b5  48 8b c8                       mov    rcx,rax
34f1b8  e8 d3 5c 07 00                 call   0x3c4e90
34f1bd  48 8d 8d 80 00 00 00           lea    rcx,[rbp+0x80]
34f1c4  e8 2b d3 f7 ff                 call   0x2cc4f4
34f1c9  48 8d 4d 60                    lea    rcx,[rbp+0x60]
34f1cd  e8 22 d3 f7 ff                 call   0x2cc4f4
34f1d2  48 8d 4d c8                    lea    rcx,[rbp-0x38]
34f1d6  e8 19 d3 f7 ff                 call   0x2cc4f4
34f1db  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
34f1e0  e8 0f d3 f7 ff                 call   0x2cc4f4
34f1e5  e8 62 80 03 00                 call   0x38724c
34f1ea  48 8d 4d 40                    lea    rcx,[rbp+0x40]
34f1ee  e8 01 d3 f7 ff                 call   0x2cc4f4
34f1f3  4c 8d 9c 24 40 02 00 00        lea    r11,[rsp+0x240]
34f1fb  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
34f200  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
34f205  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
34f20a  45 0f 28 5b c0                 movaps xmm11,XMMWORD PTR [r11-0x40]
34f20f  49 8b e3                       mov    rsp,r11
34f212  41 5f                          pop    r15
34f214  41 5e                          pop    r14
34f216  41 5d                          pop    r13
34f218  5f                             pop    rdi
34f219  5e                             pop    rsi
34f21a  5b                             pop    rbx
34f21b  5d                             pop    rbp
34f21c  c3                             ret
