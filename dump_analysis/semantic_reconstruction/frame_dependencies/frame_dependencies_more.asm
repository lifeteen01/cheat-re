; pdata function 0x2dd2ec..0x2dd53d unwind=0x3d28e4
2dd2ec  40 55                          rex push rbp
2dd2ee  53                             push   rbx
2dd2ef  56                             push   rsi
2dd2f0  57                             push   rdi
2dd2f1  41 56                          push   r14
2dd2f3  41 57                          push   r15
2dd2f5  48 8d 6c 24 d1                 lea    rbp,[rsp-0x2f]
2dd2fa  48 81 ec 88 00 00 00           sub    rsp,0x88
2dd301  0f 29 74 24 70                 movaps XMMWORD PTR [rsp+0x70],xmm6
2dd306  e8 dd 02 00 00                 call   0x2dd5e8
2dd30b  48 8d 0d 86 b4 f3 ff           lea    rcx,[rip+0xfffffffffff3b486]        # 0x218798
2dd312  e8 a9 a6 ff ff                 call   0x2d79c0
2dd317  48 8d 0d 7a b4 f3 ff           lea    rcx,[rip+0xfffffffffff3b47a]        # 0x218798
2dd31e  48 8b f8                       mov    rdi,rax
2dd321  e8 52 46 ff ff                 call   0x2d1978
2dd326  48 8b d8                       mov    rbx,rax
2dd329  48 3b c7                       cmp    rax,rdi
2dd32c  74 11                          je     0x2dd33f
2dd32e  48 8b 0b                       mov    rcx,QWORD PTR [rbx]
2dd331  48 8b 11                       mov    rdx,QWORD PTR [rcx]
2dd334  ff 12                          call   QWORD PTR [rdx]
2dd336  48 83 c3 08                    add    rbx,0x8
2dd33a  48 3b df                       cmp    rbx,rdi
2dd33d  75 ef                          jne    0x2dd32e
2dd33f  4c 8d 3d 72 9a 0f 00           lea    r15,[rip+0xf9a72]        # 0x3d6db8
2dd346  49 8b cf                       mov    rcx,r15
2dd349  e8 42 06 00 00                 call   0x2dd990
2dd34e  48 8d 3d 53 9b 0f 00           lea    rdi,[rip+0xf9b53]        # 0x3d6ea8
2dd355  48 8b d8                       mov    rbx,rax
2dd358  48 8b cf                       mov    rcx,rdi
2dd35b  e8 88 c0 ff ff                 call   0x2d93e8
2dd360  48 3b c3                       cmp    rax,rbx
2dd363  0f 85 bf 01 00 00              jne    0x2dd528
2dd369  48 8d 4d df                    lea    rcx,[rbp-0x21]
2dd36d  e8 e6 73 ff ff                 call   0x2d4758
2dd372  48 8b cf                       mov    rcx,rdi
2dd375  e8 46 a6 ff ff                 call   0x2d79c0
2dd37a  48 8b cf                       mov    rcx,rdi
2dd37d  48 8b f0                       mov    rsi,rax
2dd380  e8 f3 45 ff ff                 call   0x2d1978
2dd385  48 8b f8                       mov    rdi,rax
2dd388  48 3b c6                       cmp    rax,rsi
2dd38b  0f 84 69 01 00 00              je     0x2dd4fa
2dd391  48 8d 15 48 02 fb ff           lea    rdx,[rip+0xfffffffffffb0248]        # 0x28d5e0
2dd398  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2dd39c  e8 2b ef fe ff                 call   0x2cc2cc
2dd3a1  4c 8d 45 f7                    lea    r8,[rbp-0x9]
2dd3a5  48 8b d7                       mov    rdx,rdi
2dd3a8  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd3ac  e8 4b c0 ff ff                 call   0x2d93fc
2dd3b1  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2dd3b5  e8 3a f1 fe ff                 call   0x2cc4f4
2dd3ba  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd3be  e8 25 c0 ff ff                 call   0x2d93e8
2dd3c3  48 83 f8 05                    cmp    rax,0x5
2dd3c7  0f 82 17 01 00 00              jb     0x2dd4e4
2dd3cd  33 d2                          xor    edx,edx
2dd3cf  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd3d3  e8 48 79 ff ff                 call   0x2d4d20
2dd3d8  48 8b d0                       mov    rdx,rax
2dd3db  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2dd3df  e8 b0 6d ff ff                 call   0x2d4194
2dd3e4  49 8b cf                       mov    rcx,r15
2dd3e7  e8 8c 45 ff ff                 call   0x2d1978
2dd3ec  49 8b cf                       mov    rcx,r15
2dd3ef  48 8b d8                       mov    rbx,rax
2dd3f2  e8 c9 a5 ff ff                 call   0x2d79c0
2dd3f7  4c 8b f0                       mov    r14,rax
2dd3fa  48 3b d8                       cmp    rbx,rax
2dd3fd  0f 84 d8 00 00 00              je     0x2dd4db
2dd403  48 8d 55 f7                    lea    rdx,[rbp-0x9]
2dd407  48 8b cb                       mov    rcx,rbx
2dd40a  e8 21 1b ff ff                 call   0x2cef30
2dd40f  84 c0                          test   al,al
2dd411  75 0e                          jne    0x2dd421
2dd413  48 83 c3 68                    add    rbx,0x68
2dd417  49 3b de                       cmp    rbx,r14
2dd41a  75 e7                          jne    0x2dd403
2dd41c  e9 ba 00 00 00                 jmp    0x2dd4db
2dd421  ba 01 00 00 00                 mov    edx,0x1
2dd426  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd42a  e8 f1 78 ff ff                 call   0x2d4d20
2dd42f  33 d2                          xor    edx,edx
2dd431  48 8b c8                       mov    rcx,rax
2dd434  44 8d 42 0a                    lea    r8d,[rdx+0xa]
2dd438  e8 83 b8 ff ff                 call   0x2d8cc0
2dd43d  ba 02 00 00 00                 mov    edx,0x2
2dd442  89 43 20                       mov    DWORD PTR [rbx+0x20],eax
2dd445  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd449  e8 d2 78 ff ff                 call   0x2d4d20
2dd44e  33 d2                          xor    edx,edx
2dd450  48 8b c8                       mov    rcx,rax
2dd453  44 8d 42 0a                    lea    r8d,[rdx+0xa]
2dd457  e8 64 b8 ff ff                 call   0x2d8cc0
2dd45c  85 c0                          test   eax,eax
2dd45e  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd462  ba 04 00 00 00                 mov    edx,0x4
2dd467  0f 95 c0                       setne  al
2dd46a  88 43 2c                       mov    BYTE PTR [rbx+0x2c],al
2dd46d  e8 ae 78 ff ff                 call   0x2d4d20
2dd472  33 d2                          xor    edx,edx
2dd474  48 8b c8                       mov    rcx,rax
2dd477  44 8d 42 0a                    lea    r8d,[rdx+0xa]
2dd47b  e8 40 b8 ff ff                 call   0x2d8cc0
2dd480  ba 03 00 00 00                 mov    edx,0x3
2dd485  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd489  66 0f 6e f0                    movd   xmm6,eax
2dd48d  0f 5b f6                       cvtdq2ps xmm6,xmm6
2dd490  f3 0f 5e 35 68 01 fb ff        divss  xmm6,DWORD PTR [rip+0xfffffffffffb0168]        # 0x28d600 ; f32=1000
2dd498  e8 83 78 ff ff                 call   0x2d4d20
2dd49d  33 d2                          xor    edx,edx
2dd49f  48 8b c8                       mov    rcx,rax
2dd4a2  44 8d 42 0a                    lea    r8d,[rdx+0xa]
2dd4a6  e8 15 b8 ff ff                 call   0x2d8cc0
2dd4ab  48 8d 4d 67                    lea    rcx,[rbp+0x67]
2dd4af  66 0f 6e c8                    movd   xmm1,eax
2dd4b3  0f 28 d6                       movaps xmm2,xmm6
2dd4b6  0f 5b c9                       cvtdq2ps xmm1,xmm1
2dd4b9  f3 0f 5e 0d 3f 01 fb ff        divss  xmm1,DWORD PTR [rip+0xfffffffffffb013f]        # 0x28d600 ; f32=1000
2dd4c1  e8 7a ee fe ff                 call   0x2cc340
2dd4c6  48 8b d3                       mov    rdx,rbx
2dd4c9  48 8d 4d df                    lea    rcx,[rbp-0x21]
2dd4cd  f2 0f 10 00                    movsd  xmm0,QWORD PTR [rax]
2dd4d1  f2 0f 11 43 24                 movsd  QWORD PTR [rbx+0x24],xmm0
2dd4d6  e8 05 01 00 00                 call   0x2dd5e0
2dd4db  48 8d 4d f7                    lea    rcx,[rbp-0x9]
2dd4df  e8 10 f0 fe ff                 call   0x2cc4f4
2dd4e4  48 8d 4d c7                    lea    rcx,[rbp-0x39]
2dd4e8  e8 93 75 ff ff                 call   0x2d4a80
2dd4ed  48 83 c7 20                    add    rdi,0x20
2dd4f1  48 3b fe                       cmp    rdi,rsi
2dd4f4  0f 85 97 fe ff ff              jne    0x2dd391
2dd4fa  49 8b cf                       mov    rcx,r15
2dd4fd  e8 8e 04 00 00                 call   0x2dd990
2dd502  48 8d 4d df                    lea    rcx,[rbp-0x21]
2dd506  48 8b d8                       mov    rbx,rax
2dd509  e8 82 04 00 00                 call   0x2dd990
2dd50e  48 3b c3                       cmp    rax,rbx
2dd511  75 0c                          jne    0x2dd51f
2dd513  48 8d 55 df                    lea    rdx,[rbp-0x21]
2dd517  49 8b cf                       mov    rcx,r15
2dd51a  e8 1d e2 ff ff                 call   0x2db73c
2dd51f  48 8d 4d df                    lea    rcx,[rbp-0x21]
2dd523  e8 9c e0 ff ff                 call   0x2db5c4
2dd528  0f 28 74 24 70                 movaps xmm6,XMMWORD PTR [rsp+0x70]
2dd52d  48 81 c4 88 00 00 00           add    rsp,0x88
2dd534  41 5f                          pop    r15
2dd536  41 5e                          pop    r14
2dd538  5f                             pop    rdi
2dd539  5e                             pop    rsi
2dd53a  5b                             pop    rbx
2dd53b  5d                             pop    rbp
2dd53c  c3                             ret

; pdata function 0x2d2a50..0x2d2a99 unwind=0x3d2130
2d2a50  40 53                          rex push rbx
2d2a52  55                             push   rbp
2d2a53  56                             push   rsi
2d2a54  57                             push   rdi
2d2a55  48 83 ec 28                    sub    rsp,0x28
2d2a59  48 8b e9                       mov    rbp,rcx
2d2a5c  49 8b d8                       mov    rbx,r8
2d2a5f  49 8b c9                       mov    rcx,r9
2d2a62  48 8b f2                       mov    rsi,rdx
2d2a65  e8 3a 89 ff ff                 call   0x2cb3a4
2d2a6a  48 8b cb                       mov    rcx,rbx
2d2a6d  48 8b f8                       mov    rdi,rax
2d2a70  e8 2f 89 ff ff                 call   0x2cb3a4
2d2a75  48 8b ce                       mov    rcx,rsi
2d2a78  48 8b d8                       mov    rbx,rax
2d2a7b  e8 24 89 ff ff                 call   0x2cb3a4
2d2a80  48 8b d0                       mov    rdx,rax
2d2a83  4c 8b cf                       mov    r9,rdi
2d2a86  4c 8b c3                       mov    r8,rbx
2d2a89  48 8b cd                       mov    rcx,rbp
2d2a8c  48 83 c4 28                    add    rsp,0x28
2d2a90  5f                             pop    rdi
2d2a91  5e                             pop    rsi
2d2a92  5d                             pop    rbp
2d2a93  5b                             pop    rbx
2d2a94  e9 93 d2 ff ff                 jmp    0x2cfd2c

; pdata function 0x2d2a08..0x2d2a4d unwind=0x3d2054
2d2a08  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d2a0d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d2a12  57                             push   rdi
2d2a13  48 83 ec 20                    sub    rsp,0x20
2d2a17  48 8b f1                       mov    rsi,rcx
2d2a1a  48 8b fa                       mov    rdi,rdx
2d2a1d  49 8b c8                       mov    rcx,r8
2d2a20  e8 7f 89 ff ff                 call   0x2cb3a4
2d2a25  48 8b cf                       mov    rcx,rdi
2d2a28  48 8b d8                       mov    rbx,rax
2d2a2b  e8 74 89 ff ff                 call   0x2cb3a4
2d2a30  48 8b d0                       mov    rdx,rax
2d2a33  4c 8b c3                       mov    r8,rbx
2d2a36  48 8b ce                       mov    rcx,rsi
2d2a39  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d2a3e  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d2a43  48 83 c4 20                    add    rsp,0x20
2d2a47  5f                             pop    rdi
2d2a48  e9 8b d2 ff ff                 jmp    0x2cfcd8

; pdata function 0x2d29c0..0x2d2a05 unwind=0x3d2054
2d29c0  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d29c5  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
2d29ca  57                             push   rdi
2d29cb  48 83 ec 20                    sub    rsp,0x20
2d29cf  48 8b f1                       mov    rsi,rcx
2d29d2  48 8b fa                       mov    rdi,rdx
2d29d5  49 8b c8                       mov    rcx,r8
2d29d8  e8 c7 89 ff ff                 call   0x2cb3a4
2d29dd  48 8b cf                       mov    rcx,rdi
2d29e0  48 8b d8                       mov    rbx,rax
2d29e3  e8 bc 89 ff ff                 call   0x2cb3a4
2d29e8  48 8b d0                       mov    rdx,rax
2d29eb  4c 8b c3                       mov    r8,rbx
2d29ee  48 8b ce                       mov    rcx,rsi
2d29f1  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d29f6  48 8b 74 24 38                 mov    rsi,QWORD PTR [rsp+0x38]
2d29fb  48 83 c4 20                    add    rsp,0x20
2d29ff  5f                             pop    rdi
2d2a00  e9 3b d2 ff ff                 jmp    0x2cfc40

; pdata function 0x2d7c04..0x2d7c35 unwind=0x3d2040
2d7c04  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2d7c09  57                             push   rdi
2d7c0a  48 83 ec 20                    sub    rsp,0x20
2d7c0e  48 8b f9                       mov    rdi,rcx
2d7c11  48 8b da                       mov    rbx,rdx
2d7c14  48 8b ca                       mov    rcx,rdx
2d7c17  e8 c8 58 ff ff                 call   0x2cd4e4
2d7c1c  4c 8b 43 10                    mov    r8,QWORD PTR [rbx+0x10]
2d7c20  48 8b d0                       mov    rdx,rax
2d7c23  48 8b cf                       mov    rcx,rdi
2d7c26  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2d7c2b  48 83 c4 20                    add    rsp,0x20
2d7c2f  5f                             pop    rdi
2d7c30  e9 f7 34 ff ff                 jmp    0x2cb12c

; pdata function 0x2d35e0..0x2d368b unwind=0x3d25d4
2d35e0  4c 89 44 24 18                 mov    QWORD PTR [rsp+0x18],r8
2d35e5  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2d35ea  55                             push   rbp
2d35eb  53                             push   rbx
2d35ec  56                             push   rsi
2d35ed  57                             push   rdi
2d35ee  48 8b ec                       mov    rbp,rsp
2d35f1  48 83 ec 38                    sub    rsp,0x38
2d35f5  48 8b f1                       mov    rsi,rcx
2d35f8  48 8d 4d 38                    lea    rcx,[rbp+0x38]
2d35fc  e8 43 d4 ff ff                 call   0x2d0a44
2d3601  48 8d 55 40                    lea    rdx,[rbp+0x40]
2d3605  48 8b f8                       mov    rdi,rax
2d3608  48 8d 4d 28                    lea    rcx,[rbp+0x28]
2d360c  e8 93 7d ff ff                 call   0x2cb3a4
2d3611  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2d3615  48 8b d8                       mov    rbx,rax
2d3618  e8 27 d4 ff ff                 call   0x2d0a44
2d361d  44 8a 03                       mov    r8b,BYTE PTR [rbx]
2d3620  48 8b c8                       mov    rcx,rax
2d3623  48 8b d7                       mov    rdx,rdi
2d3626  e8 a1 f5 ff ff                 call   0x2d2bcc
2d362b  48 89 45 e8                    mov    QWORD PTR [rbp-0x18],rax
2d362f  48 8b d8                       mov    rbx,rax
2d3632  48 3b c7                       cmp    rax,rdi
2d3635  74 34                          je     0x2d366b
2d3637  eb 29                          jmp    0x2d3662
2d3639  48 8b d3                       mov    rdx,rbx
2d363c  48 8d 4d 40                    lea    rcx,[rbp+0x40]
2d3640  e8 df 1c 00 00                 call   0x2d5324
2d3645  84 c0                          test   al,al
2d3647  75 19                          jne    0x2d3662
2d3649  48 8b cb                       mov    rcx,rbx
2d364c  e8 53 7d ff ff                 call   0x2cb3a4
2d3651  48 8b 4d e8                    mov    rcx,QWORD PTR [rbp-0x18]
2d3655  48 8b d0                       mov    rdx,rax
2d3658  e8 87 15 00 00                 call   0x2d4be4
2d365d  48 83 45 e8 20                 add    QWORD PTR [rbp-0x18],0x20
2d3662  48 83 c3 20                    add    rbx,0x20
2d3666  48 3b df                       cmp    rbx,rdi
2d3669  75 ce                          jne    0x2d3639
2d366b  48 8d 55 e8                    lea    rdx,[rbp-0x18]
2d366f  48 8d 4d 30                    lea    rcx,[rbp+0x30]
2d3673  e8 b4 e1 ff ff                 call   0x2d182c
2d3678  48 8b 45 30                    mov    rax,QWORD PTR [rbp+0x30]
2d367c  48 89 06                       mov    QWORD PTR [rsi],rax
2d367f  48 8b c6                       mov    rax,rsi
2d3682  48 83 c4 38                    add    rsp,0x38
2d3686  5f                             pop    rdi
2d3687  5e                             pop    rsi
2d3688  5b                             pop    rbx
2d3689  5d                             pop    rbp
2d368a  c3                             ret

; pdata function 0x2d881c..0x2d887f unwind=0x3d2130
2d881c  40 53                          rex push rbx
2d881e  55                             push   rbp
2d881f  56                             push   rsi
2d8820  57                             push   rdi
2d8821  48 83 ec 28                    sub    rsp,0x28
2d8825  49 8b d8                       mov    rbx,r8
2d8828  48 8b ea                       mov    rbp,rdx
2d882b  48 8b f1                       mov    rsi,rcx
2d882e  4d 3b c1                       cmp    r8,r9
2d8831  74 2a                          je     0x2d885d
2d8833  48 8b 51 08                    mov    rdx,QWORD PTR [rcx+0x8]
2d8837  49 8b c9                       mov    rcx,r9
2d883a  e8 75 86 ff ff                 call   0x2d0eb4
2d883f  48 8b ce                       mov    rcx,rsi
2d8842  48 8b f8                       mov    rdi,rax
2d8845  e8 da 4a ff ff                 call   0x2cd324
2d884a  48 8b 56 08                    mov    rdx,QWORD PTR [rsi+0x8]
2d884e  4c 8b c0                       mov    r8,rax
2d8851  48 8b cf                       mov    rcx,rdi
2d8854  e8 3f 70 ff ff                 call   0x2cf898
2d8859  48 89 7e 08                    mov    QWORD PTR [rsi+0x8],rdi
2d885d  48 8b ce                       mov    rcx,rsi
2d8860  e8 3f 2b ff ff                 call   0x2cb3a4
2d8865  4c 8b c0                       mov    r8,rax
2d8868  48 8b d3                       mov    rdx,rbx
2d886b  48 8b cd                       mov    rcx,rbp
2d886e  e8 6d b7 ff ff                 call   0x2d3fe0
2d8873  48 8b c5                       mov    rax,rbp
2d8876  48 83 c4 28                    add    rsp,0x28
2d887a  5f                             pop    rdi
2d887b  5e                             pop    rsi
2d887c  5d                             pop    rbp
2d887d  5b                             pop    rbx
2d887e  c3                             ret

; pdata function 0x2d3e64..0x2d3ebc unwind=0x3d25e4
2d3e64  48 89 54 24 10                 mov    QWORD PTR [rsp+0x10],rdx
2d3e69  48 89 4c 24 08                 mov    QWORD PTR [rsp+0x8],rcx
2d3e6e  53                             push   rbx
2d3e6f  57                             push   rdi
2d3e70  48 83 ec 28                    sub    rsp,0x28
2d3e74  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
2d3e79  e8 c6 cb ff ff                 call   0x2d0a44
2d3e7e  48 8d 4c 24 48                 lea    rcx,[rsp+0x48]
2d3e83  48 8b f8                       mov    rdi,rax
2d3e86  e8 b9 cb ff ff                 call   0x2d0a44
2d3e8b  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
2d3e90  48 8b d8                       mov    rbx,rax
2d3e93  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
2d3e98  e8 07 75 ff ff                 call   0x2cb3a4
2d3e9d  4c 8b c3                       mov    r8,rbx
2d3ea0  48 8b d3                       mov    rdx,rbx
2d3ea3  4c 2b c7                       sub    r8,rdi
2d3ea6  48 8b cf                       mov    rcx,rdi
2d3ea9  49 c1 f8 05                    sar    r8,0x5
2d3ead  44 8a 08                       mov    r9b,BYTE PTR [rax]
2d3eb0  e8 eb d9 ff ff                 call   0x2d18a0
2d3eb5  48 83 c4 28                    add    rsp,0x28
2d3eb9  5f                             pop    rdi
2d3eba  5b                             pop    rbx
2d3ebb  c3                             ret

; heuristic leaf/code range 0x2d4c68..0x2d4c70 unwind=0x0
2d4c68  e9 43 30 00 00                 jmp    0x2d7cb0
2d4c6d  cc                             int3
2d4c6e  cc                             int3
2d4c6f  cc                             int3

; pdata function 0x2db16c..0x2db1ae unwind=0x3d2078
2db16c  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
2db171  48 89 74 24 18                 mov    QWORD PTR [rsp+0x18],rsi
2db176  57                             push   rdi
2db177  48 83 ec 20                    sub    rsp,0x20
2db17b  48 8b fa                       mov    rdi,rdx
2db17e  49 8b d8                       mov    rbx,r8
2db181  8a 54 24 30                    mov    dl,BYTE PTR [rsp+0x30]
2db185  48 8b f1                       mov    rsi,rcx
2db188  e8 33 fa fe ff                 call   0x2cabc0
2db18d  4c 8b c3                       mov    r8,rbx
2db190  48 8b d7                       mov    rdx,rdi
2db193  48 8b ce                       mov    rcx,rsi
2db196  e8 6d 00 ff ff                 call   0x2cb208
2db19b  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
2db1a0  48 8b c6                       mov    rax,rsi
2db1a3  48 8b 74 24 40                 mov    rsi,QWORD PTR [rsp+0x40]
2db1a8  48 83 c4 20                    add    rsp,0x20
2db1ac  5f                             pop    rdi
2db1ad  c3                             ret

; pdata function 0x2d5e00..0x2d5e8f unwind=0x3d2534
2d5e00  40 53                          rex push rbx
2d5e02  48 83 ec 50                    sub    rsp,0x50
2d5e06  48 8b d9                       mov    rbx,rcx
2d5e09  48 8d 0d 20 29 f4 ff           lea    rcx,[rip+0xfffffffffff42920]        # 0x218730
2d5e10  e8 af 06 00 00                 call   0x2d64c4
2d5e15  84 c0                          test   al,al
2d5e17  75 26                          jne    0x2d5e3f
2d5e19  48 8d 54 24 20                 lea    rdx,[rsp+0x20]
2d5e1e  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2d5e23  e8 28 f1 ff ff                 call   0x2d4f50 ; STRING getter=0x2d4f50 DefaultCfg.bin
2d5e28  48 8b c8                       mov    rcx,rax
2d5e2b  e8 14 28 00 00                 call   0x2d8644
2d5e30  48 8b d0                       mov    rdx,rax
2d5e33  48 8d 0d f6 28 f4 ff           lea    rcx,[rip+0xfffffffffff428f6]        # 0x218730
2d5e3a  e8 29 ee ff ff                 call   0x2d4c68
2d5e3f  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
2d5e44  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
2d5e49  e8 ce f1 ff ff                 call   0x2d501c ; STRING getter=0x2d501c \
2d5e4e  48 8b c8                       mov    rcx,rax
2d5e51  e8 e6 25 00 00                 call   0x2d843c
2d5e56  4c 8b c0                       mov    r8,rax
2d5e59  48 8d 15 b0 28 f4 ff           lea    rdx,[rip+0xfffffffffff428b0]        # 0x218710
2d5e60  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2d5e65  e8 6a 91 ff ff                 call   0x2cefd4
2d5e6a  48 8b d0                       mov    rdx,rax
2d5e6d  4c 8d 05 bc 28 f4 ff           lea    r8,[rip+0xfffffffffff428bc]        # 0x218730
2d5e74  48 8b cb                       mov    rcx,rbx
2d5e77  e8 e8 90 ff ff                 call   0x2cef64
2d5e7c  48 8d 4c 24 30                 lea    rcx,[rsp+0x30]
2d5e81  e8 6e 66 ff ff                 call   0x2cc4f4
2d5e86  48 8b c3                       mov    rax,rbx
2d5e89  48 83 c4 50                    add    rsp,0x50
2d5e8d  5b                             pop    rbx
2d5e8e  c3                             ret

