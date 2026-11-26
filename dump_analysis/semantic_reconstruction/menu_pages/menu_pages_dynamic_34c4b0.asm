; pdata function 0x34c4b0..0x34d62c unwind=0x3d3cf4
34c4b0  48 8b c4                       mov    rax,rsp
34c4b3  55                             push   rbp
34c4b4  53                             push   rbx
34c4b5  56                             push   rsi
34c4b6  57                             push   rdi
34c4b7  41 55                          push   r13
34c4b9  41 56                          push   r14
34c4bb  41 57                          push   r15
34c4bd  48 8d 68 a8                    lea    rbp,[rax-0x58]
34c4c1  48 81 ec 20 01 00 00           sub    rsp,0x120
34c4c8  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
34c4cc  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
34c4d0  e8 bb 27 04 00                 call   0x38ec90
34c4d5  f3 0f 10 0d 77 0d f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff40d77]        # 0x28d254 ; f32=1
34c4dd  b9 04 00 00 00                 mov    ecx,0x4
34c4e2  e8 b1 5d 04 00                 call   0x392298
34c4e7  8b d0                          mov    edx,eax
34c4e9  b9 08 00 00 00                 mov    ecx,0x8
34c4ee  e8 f9 c6 04 00                 call   0x398bec
34c4f3  48 8d 15 3e 0e 0b 00           lea    rdx,[rip+0xb0e3e]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
34c4fa  48 8d 4d e0                    lea    rcx,[rbp-0x20]
34c4fe  e8 91 7c f8 ff                 call   0x2d4194
34c503  48 8d 4d 78                    lea    rcx,[rbp+0x78]
34c507  e8 30 5e 04 00                 call   0x39233c
34c50c  f3 0f 10 3d 10 16 f4 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff41610]        # 0x28db24 ; f32=30
34c514  f3 0f 10 30                    movss  xmm6,DWORD PTR [rax]
34c518  f3 0f 59 35 30 0d f4 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff40d30]        # 0x28d250 ; f32=0.5
34c520  f3 0f 5c f7                    subss  xmm6,xmm7
34c524  e8 a3 60 04 00                 call   0x3925cc
34c529  0f 28 d0                       movaps xmm2,xmm0
34c52c  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34c530  0f 28 ce                       movaps xmm1,xmm6
34c533  e8 08 fe f7 ff                 call   0x2cc340
34c538  48 8d 4d e0                    lea    rcx,[rbp-0x20]
34c53c  e8 97 c5 f8 ff                 call   0x2d8ad8
34c541  48 8d 4d e0                    lea    rcx,[rbp-0x20]
34c545  48 8b f8                       mov    rdi,rax
34c548  e8 9f 12 f8 ff                 call   0x2cd7ec
34c54d  8b 0d 95 0b 0b 00              mov    ecx,DWORD PTR [rip+0xb0b95]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c553  41 bf 02 00 00 00              mov    r15d,0x2
34c559  48 8b f0                       mov    rsi,rax
34c55c  45 8d 77 ff                    lea    r14d,[r15-0x1]
34c560  41 3b ce                       cmp    ecx,r14d
34c563  75 0e                          jne    0x34c573
34c565  48 8d 0d 24 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b124]        # 0x2a7690
34c56c  e8 93 8a 01 00                 call   0x365004
34c571  eb 23                          jmp    0x34c596
34c573  41 3b cf                       cmp    ecx,r15d
34c576  75 09                          jne    0x34c581
34c578  48 8d 0d 39 b1 f5 ff           lea    rcx,[rip+0xfffffffffff5b139]        # 0x2a76b8
34c57f  eb eb                          jmp    0x34c56c
34c581  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34c585  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c589  e8 42 73 00 00                 call   0x3538d0 ; STRING getter=0x3538d0 New Config Name..
34c58e  48 8b c8                       mov    rcx,rax
34c591  e8 46 d6 f9 ff                 call   0x2e9bdc
34c596  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34c59b  48 8b d8                       mov    rbx,rax
34c59e  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c5a2  e8 61 5c 00 00                 call   0x352208 ; STRING getter=0x352208 ##Config
34c5a7  48 8b c8                       mov    rcx,rax
34c5aa  e8 dd d5 f9 ff                 call   0x2e9b8c
34c5af  48 c7 44 24 38 00 00 00 00     mov    QWORD PTR [rsp+0x38],0x0
34c5b8  48 8b c8                       mov    rcx,rax
34c5bb  48 8d 45 70                    lea    rax,[rbp+0x70]
34c5bf  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
34c5c8  c7 44 24 28 00 50 00 00        mov    DWORD PTR [rsp+0x28],0x5000
34c5d0  44 8b cf                       mov    r9d,edi
34c5d3  4c 8b c6                       mov    r8,rsi
34c5d6  48 89 44 24 20                 mov    QWORD PTR [rsp+0x20],rax
34c5db  48 8b d3                       mov    rdx,rbx
34c5de  e8 55 3f 07 00                 call   0x3c0538
34c5e3  e8 a4 7a 04 00                 call   0x39408c
34c5e8  41 8b ce                       mov    ecx,r14d
34c5eb  88 05 03 0f 0b 00              mov    BYTE PTR [rip+0xb0f03],al        # 0x3fd4f4
34c5f1  e8 16 c3 04 00                 call   0x39890c
34c5f6  8b 05 c8 11 0b 00              mov    eax,DWORD PTR [rip+0xb11c8]        # 0x3fd7c4
34c5fc  41 84 c6                       test   r14b,al
34c5ff  75 15                          jne    0x34c616
34c601  41 0b c6                       or     eax,r14d
34c604  48 8d 0d 8d 45 08 00           lea    rcx,[rip+0x8458d]        # 0x3d0b98
34c60b  89 05 b3 11 0b 00              mov    DWORD PTR [rip+0xb11b3],eax        # 0x3fd7c4
34c611  e8 16 0d f8 ff                 call   0x2cd32c
34c616  f3 0f 10 0d 9e 6b f4 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff46b9e]        # 0x2931bc ; f32=16
34c61e  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c622  0f 28 d1                       movaps xmm2,xmm1
34c625  e8 16 fd f7 ff                 call   0x2cc340
34c62a  48 8d 55 68                    lea    rdx,[rbp+0x68]
34c62e  41 8b cf                       mov    ecx,r15d
34c631  e8 2a c6 04 00                 call   0x398c60
34c636  48 8d 4c 24 40                 lea    rcx,[rsp+0x40]
34c63b  e8 fc 5c 04 00                 call   0x39233c
34c640  48 8d 4d 78                    lea    rcx,[rbp+0x78]
34c644  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34c648  f3 0f 59 0d 00 0c f4 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff40c00]        # 0x28d250 ; f32=0.5
34c650  f3 0f 5c cf                    subss  xmm1,xmm7
34c654  f3 0f 10 3d 04 6c f4 ff        movss  xmm7,DWORD PTR [rip+0xfffffffffff46c04]        # 0x293260 ; f32=-1
34c65c  0f 28 d7                       movaps xmm2,xmm7
34c65f  e8 dc fc f7 ff                 call   0x2cc340
34c664  48 8d 55 70                    lea    rdx,[rbp+0x70]
34c668  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c66c  e8 9b 86 00 00                 call   0x354d0c ; STRING getter=0x354d0c list
34c671  48 8b c8                       mov    rcx,rax
34c674  e8 53 16 f8 ff                 call   0x2cdccc
34c679  48 8b c8                       mov    rcx,rax
34c67c  48 8d 55 78                    lea    rdx,[rbp+0x78]
34c680  41 b9 00 00 01 00              mov    r9d,0x10000
34c686  45 33 c0                       xor    r8d,r8d
34c689  e8 ee 22 04 00                 call   0x38e97c
34c68e  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c692  e8 a5 5c 04 00                 call   0x39233c
34c697  0f 57 d2                       xorps  xmm2,xmm2
34c69a  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c69e  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
34c6a2  e8 99 fc f7 ff                 call   0x2cc340
34c6a7  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34c6ab  e8 a8 80 f8 ff                 call   0x2d4758
34c6b0  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34c6b4  e8 9f 80 f8 ff                 call   0x2d4758
34c6b9  48 8d 35 90 c0 ec ff           lea    rsi,[rip+0xffffffffffecc090]        # 0x218750
34c6c0  48 8b ce                       mov    rcx,rsi
34c6c3  e8 f8 b2 f8 ff                 call   0x2d79c0
34c6c8  48 8b ce                       mov    rcx,rsi
34c6cb  48 8b f8                       mov    rdi,rax
34c6ce  e8 a5 52 f8 ff                 call   0x2d1978
34c6d3  48 8b d8                       mov    rbx,rax
34c6d6  48 3b c7                       cmp    rax,rdi
34c6d9  74 21                          je     0x34c6fc
34c6db  48 8b d3                       mov    rdx,rbx
34c6de  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34c6e2  e8 35 c9 f8 ff                 call   0x2d901c
34c6e7  48 8b d3                       mov    rdx,rbx
34c6ea  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34c6ee  e8 29 c9 f8 ff                 call   0x2d901c
34c6f3  48 83 c3 20                    add    rbx,0x20
34c6f7  48 3b df                       cmp    rbx,rdi
34c6fa  75 df                          jne    0x34c6db
34c6fc  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34c700  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34c705  e8 b2 eb f8 ff                 call   0x2db2bc
34c70a  48 8d 55 c0                    lea    rdx,[rbp-0x40]
34c70e  48 8b d8                       mov    rbx,rax
34c711  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34c716  e8 a1 eb f8 ff                 call   0x2db2bc
34c71b  8b 0d c7 09 0b 00              mov    ecx,DWORD PTR [rip+0xb09c7]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c721  48 8b f8                       mov    rdi,rax
34c724  f2 0f 10 75 68                 movsd  xmm6,QWORD PTR [rbp+0x68]
34c729  41 3b ce                       cmp    ecx,r14d
34c72c  75 09                          jne    0x34c737
34c72e  48 8d 0d 93 af f5 ff           lea    rcx,[rip+0xfffffffffff5af93]        # 0x2a76c8
34c735  eb 0c                          jmp    0x34c743
34c737  41 3b cf                       cmp    ecx,r15d
34c73a  75 0e                          jne    0x34c74a
34c73c  48 8d 0d a5 af f5 ff           lea    rcx,[rip+0xfffffffffff5afa5]        # 0x2a76e8
34c743  e8 bc 88 01 00                 call   0x365004
34c748  eb 16                          jmp    0x34c760
34c74a  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34c74f  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c753  e8 ec 9d 00 00                 call   0x356544 ; STRING getter=0x356544 Current CFGS
34c758  48 8b c8                       mov    rcx,rax
34c75b  e8 94 be f8 ff                 call   0x2d85f4
34c760  c6 44 24 28 00                 mov    BYTE PTR [rsp+0x28],0x0
34c765  4c 8d 05 34 32 f3 ff           lea    r8,[rip+0xfffffffffff33234]        # 0x27f9a0
34c76c  4c 8b cf                       mov    r9,rdi
34c76f  48 89 5c 24 20                 mov    QWORD PTR [rsp+0x20],rbx
34c774  66 48 0f 7e f2                 movq   rdx,xmm6
34c779  48 8b c8                       mov    rcx,rax
34c77c  e8 cb b2 03 00                 call   0x387a4c
34c781  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34c785  e8 f6 82 f8 ff                 call   0x2d4a80
34c78a  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34c78e  e8 ed 82 f8 ff                 call   0x2d4a80
34c793  e8 f0 42 04 00                 call   0x390a88
34c798  41 8b ce                       mov    ecx,r14d
34c79b  e8 cc c1 04 00                 call   0x39896c
34c7a0  e8 57 47 04 00                 call   0x390efc
34c7a5  0f 28 cf                       movaps xmm1,xmm7
34c7a8  0f 57 c0                       xorps  xmm0,xmm0
34c7ab  e8 54 e4 04 00                 call   0x39ac04
34c7b0  0f 28 d7                       movaps xmm2,xmm7
34c7b3  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34c7b7  0f 57 c9                       xorps  xmm1,xmm1
34c7ba  e8 81 fb f7 ff                 call   0x2cc340
34c7bf  f2 0f 10 30                    movsd  xmm6,QWORD PTR [rax]
34c7c3  8b 05 1f 09 0b 00              mov    eax,DWORD PTR [rip+0xb091f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c7c9  41 3b c6                       cmp    eax,r14d
34c7cc  75 0e                          jne    0x34c7dc
34c7ce  48 8d 0d 23 af f5 ff           lea    rcx,[rip+0xfffffffffff5af23]        # 0x2a76f8
34c7d5  e8 2a 88 01 00                 call   0x365004
34c7da  eb 24                          jmp    0x34c800
34c7dc  41 3b c7                       cmp    eax,r15d
34c7df  75 09                          jne    0x34c7ea
34c7e1  48 8d 0d 30 af f5 ff           lea    rcx,[rip+0xfffffffffff5af30]        # 0x2a7718
34c7e8  eb eb                          jmp    0x34c7d5
34c7ea  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34c7ef  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c7f3  e8 e0 ac 00 00                 call   0x3574d8 ; STRING getter=0x3574d8 All Options
34c7f8  48 8b c8                       mov    rcx,rax
34c7fb  e8 34 16 f8 ff                 call   0x2cde34
34c800  48 8d 15 1d af f5 ff           lea    rdx,[rip+0xfffffffffff5af1d]        # 0x2a7724
34c807  48 8b d8                       mov    rbx,rax
34c80a  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34c80f  e8 b8 fa f7 ff                 call   0x2cc2cc
34c814  48 8b c8                       mov    rcx,rax
34c817  45 8a ce                       mov    r9b,r14b
34c81a  66 49 0f 7e f0                 movq   r8,xmm6
34c81f  48 8b d3                       mov    rdx,rbx
34c822  e8 c9 85 03 00                 call   0x384df0
34c827  8b 05 97 0f 0b 00              mov    eax,DWORD PTR [rip+0xb0f97]        # 0x3fd7c4
34c82d  48 8d 3d 94 0f 0b 00           lea    rdi,[rip+0xb0f94]        # 0x3fd7c8
34c834  41 84 c7                       test   r15b,al
34c837  75 35                          jne    0x34c86e
34c839  41 0b c7                       or     eax,r15d
34c83c  48 8d 55 68                    lea    rdx,[rbp+0x68]
34c840  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c844  89 05 7a 0f 0b 00              mov    DWORD PTR [rip+0xb0f7a],eax        # 0x3fd7c4
34c84a  e8 ad b9 00 00                 call   0x3581fc ; STRING getter=0x3581fc None
34c84f  48 8b c8                       mov    rcx,rax
34c852  e8 75 14 f8 ff                 call   0x2cdccc
34c857  48 8b d0                       mov    rdx,rax
34c85a  48 8b cf                       mov    rcx,rdi
34c85d  e8 6a fa f7 ff                 call   0x2cc2cc
34c862  48 8d 0d 6b 43 08 00           lea    rcx,[rip+0x8436b]        # 0x3d0bd4
34c869  e8 be 0a f8 ff                 call   0x2cd32c
34c86e  48 8b cf                       mov    rcx,rdi
34c871  e8 76 0f f8 ff                 call   0x2cd7ec
34c876  8b 0d 6c 08 0b 00              mov    ecx,DWORD PTR [rip+0xb086c]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c87c  48 8b d8                       mov    rbx,rax
34c87f  41 3b ce                       cmp    ecx,r14d
34c882  75 09                          jne    0x34c88d
34c884  48 8d 0d 9d ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae9d]        # 0x2a7728
34c88b  eb 0c                          jmp    0x34c899
34c88d  41 3b cf                       cmp    ecx,r15d
34c890  75 0e                          jne    0x34c8a0
34c892  48 8d 0d b7 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aeb7]        # 0x2a7750
34c899  e8 66 87 01 00                 call   0x365004
34c89e  eb 16                          jmp    0x34c8b6
34c8a0  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34c8a5  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c8a9  e8 5a bf 00 00                 call   0x358808 ; STRING getter=0x358808 Loaded Config %s
34c8ae  48 8b c8                       mov    rcx,rax
34c8b1  e8 fe d2 f9 ff                 call   0x2e9bb4
34c8b6  48 8b d3                       mov    rdx,rbx
34c8b9  48 8b c8                       mov    rcx,rax
34c8bc  e8 cf 85 07 00                 call   0x3c4e90
34c8c1  0f 57 d2                       xorps  xmm2,xmm2
34c8c4  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34c8c8  0f 57 c9                       xorps  xmm1,xmm1
34c8cb  e8 70 fa f7 ff                 call   0x2cc340
34c8d0  8b 0d 12 08 0b 00              mov    ecx,DWORD PTR [rip+0xb0812]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c8d6  48 8b d8                       mov    rbx,rax
34c8d9  41 3b ce                       cmp    ecx,r14d
34c8dc  75 09                          jne    0x34c8e7
34c8de  48 8d 0d 83 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae83]        # 0x2a7768
34c8e5  eb 0c                          jmp    0x34c8f3
34c8e7  41 3b cf                       cmp    ecx,r15d
34c8ea  75 0e                          jne    0x34c8fa
34c8ec  48 8d 0d ad ae f5 ff           lea    rcx,[rip+0xfffffffffff5aead]        # 0x2a77a0
34c8f3  e8 0c 87 01 00                 call   0x365004
34c8f8  eb 15                          jmp    0x34c90f
34c8fa  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34c8fe  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c902  e8 ad c3 00 00                 call   0x358cb4 ; STRING getter=0x358cb4 Refresh Config List
34c907  48 8b c8                       mov    rcx,rax
34c90a  e8 85 3b fd ff                 call   0x320494
34c90f  48 8b d3                       mov    rdx,rbx
34c912  48 8b c8                       mov    rcx,rax
34c915  e8 be fe 06 00                 call   0x3bc7d8
34c91a  84 c0                          test   al,al
34c91c  74 5c                          je     0x34c97a
34c91e  e8 a1 c8 f8 ff                 call   0x2d91c4
34c923  8b 05 bf 07 0b 00              mov    eax,DWORD PTR [rip+0xb07bf]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c929  41 3b c6                       cmp    eax,r14d
34c92c  75 09                          jne    0x34c937
34c92e  48 8d 0d 7b ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae7b]        # 0x2a77b0
34c935  eb 0c                          jmp    0x34c943
34c937  41 3b c7                       cmp    eax,r15d
34c93a  75 0e                          jne    0x34c94a
34c93c  48 8d 0d b5 ae f5 ff           lea    rcx,[rip+0xfffffffffff5aeb5]        # 0x2a77f8
34c943  e8 bc 86 01 00                 call   0x365004
34c948  eb 16                          jmp    0x34c960
34c94a  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
34c94f  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c953  e8 7c dd 00 00                 call   0x35a6d4 ; STRING getter=0x35a6d4 Successfully refreshed config list
34c958  48 8b c8                       mov    rcx,rax
34c95b  e8 ac 57 fd ff                 call   0x32210c
34c960  48 8b d0                       mov    rdx,rax
34c963  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34c968  e8 5f f9 f7 ff                 call   0x2cc2cc
34c96d  48 8b c8                       mov    rcx,rax
34c970  45 33 c0                       xor    r8d,r8d
34c973  33 d2                          xor    edx,edx
34c975  e8 9e 2f 03 00                 call   0x37f918
34c97a  0f 28 cf                       movaps xmm1,xmm7
34c97d  0f 57 c0                       xorps  xmm0,xmm0
34c980  e8 7f e2 04 00                 call   0x39ac04
34c985  0f 57 d2                       xorps  xmm2,xmm2
34c988  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34c98c  0f 57 c9                       xorps  xmm1,xmm1
34c98f  e8 ac f9 f7 ff                 call   0x2cc340
34c994  8b 0d 4e 07 0b 00              mov    ecx,DWORD PTR [rip+0xb074e]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34c99a  48 8b d8                       mov    rbx,rax
34c99d  41 3b ce                       cmp    ecx,r14d
34c9a0  75 09                          jne    0x34c9ab
34c9a2  48 8d 0d 67 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae67]        # 0x2a7810
34c9a9  eb 0c                          jmp    0x34c9b7
34c9ab  41 3b cf                       cmp    ecx,r15d
34c9ae  75 0e                          jne    0x34c9be
34c9b0  48 8d 0d 91 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae91]        # 0x2a7848
34c9b7  e8 48 86 01 00                 call   0x365004
34c9bc  eb 15                          jmp    0x34c9d3
34c9be  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34c9c2  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34c9c6  e8 3d 8b ff ff                 call   0x345508 ; STRING getter=0x345508 Load SamSites/Stashes
34c9cb  48 8b c8                       mov    rcx,rax
34c9ce  e8 d1 bb f8 ff                 call   0x2d85a4
34c9d3  48 8b d3                       mov    rdx,rbx
34c9d6  48 8b c8                       mov    rcx,rax
34c9d9  e8 fa fd 06 00                 call   0x3bc7d8
34c9de  84 c0                          test   al,al
34c9e0  0f 84 a5 01 00 00              je     0x34cb8b
34c9e6  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34c9ea  e8 81 f1 f8 ff                 call   0x2dbb70
34c9ef  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34c9f4  e8 07 f1 f8 ff                 call   0x2dbb00
34c9f9  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34c9fe  e8 e9 0d f8 ff                 call   0x2cd7ec
34ca03  48 8b c8                       mov    rcx,rax
34ca06  e8 d9 91 f8 ff                 call   0x2d5be4
34ca0b  84 c0                          test   al,al
34ca0d  74 53                          je     0x34ca62
34ca0f  e8 cc f1 f8 ff                 call   0x2dbbe0
34ca14  8b 05 ce 06 0b 00              mov    eax,DWORD PTR [rip+0xb06ce]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ca1a  41 3b c6                       cmp    eax,r14d
34ca1d  75 09                          jne    0x34ca28
34ca1f  48 8d 0d 3a ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae3a]        # 0x2a7860
34ca26  eb 0c                          jmp    0x34ca34
34ca28  41 3b c7                       cmp    eax,r15d
34ca2b  75 0e                          jne    0x34ca3b
34ca2d  48 8d 0d 54 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae54]        # 0x2a7888
34ca34  e8 cb 85 01 00                 call   0x365004
34ca39  eb 16                          jmp    0x34ca51
34ca3b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ca40  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34ca44  e8 43 3c 00 00                 call   0x35068c ; STRING getter=0x35068c Loaded Samsites
34ca49  48 8b c8                       mov    rcx,rax
34ca4c  e8 0f 07 f9 ff                 call   0x2dd160
34ca51  48 8b d0                       mov    rdx,rax
34ca54  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ca59  e8 6e f8 f7 ff                 call   0x2cc2cc
34ca5e  33 d2                          xor    edx,edx
34ca60  eb 4c                          jmp    0x34caae
34ca62  8b 05 80 06 0b 00              mov    eax,DWORD PTR [rip+0xb0680]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ca68  41 3b c6                       cmp    eax,r14d
34ca6b  75 09                          jne    0x34ca76
34ca6d  48 8d 0d 2c ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae2c]        # 0x2a78a0
34ca74  eb 0c                          jmp    0x34ca82
34ca76  41 3b c7                       cmp    eax,r15d
34ca79  75 0e                          jne    0x34ca89
34ca7b  48 8d 0d 66 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae66]        # 0x2a78e8
34ca82  e8 7d 85 01 00                 call   0x365004
34ca87  eb 16                          jmp    0x34ca9f
34ca89  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34ca8e  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34ca92  e8 81 43 00 00                 call   0x350e18 ; STRING getter=0x350e18 Failed to find samsite config
34ca97  48 8b c8                       mov    rcx,rax
34ca9a  e8 5d 3b fd ff                 call   0x3205fc
34ca9f  48 8b d0                       mov    rdx,rax
34caa2  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34caa6  e8 21 f8 f7 ff                 call   0x2cc2cc
34caab  41 8b d6                       mov    edx,r14d
34caae  45 33 c0                       xor    r8d,r8d
34cab1  48 8b c8                       mov    rcx,rax
34cab4  e8 5f 2e 03 00                 call   0x37f918
34cab9  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34cabd  e8 2a 0d f8 ff                 call   0x2cd7ec
34cac2  48 8b c8                       mov    rcx,rax
34cac5  e8 1a 91 f8 ff                 call   0x2d5be4
34caca  84 c0                          test   al,al
34cacc  74 53                          je     0x34cb21
34cace  e8 ed f3 f8 ff                 call   0x2dbec0
34cad3  8b 05 0f 06 0b 00              mov    eax,DWORD PTR [rip+0xb060f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cad9  41 3b c6                       cmp    eax,r14d
34cadc  75 09                          jne    0x34cae7
34cade  48 8d 0d 1b ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae1b]        # 0x2a7900
34cae5  eb 0c                          jmp    0x34caf3
34cae7  41 3b c7                       cmp    eax,r15d
34caea  75 0e                          jne    0x34cafa
34caec  48 8d 0d 35 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae35]        # 0x2a7928
34caf3  e8 0c 85 01 00                 call   0x365004
34caf8  eb 16                          jmp    0x34cb10
34cafa  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34caff  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cb03  e8 b0 47 00 00                 call   0x3512b8 ; STRING getter=0x3512b8 Loaded Stashes
34cb08  48 8b c8                       mov    rcx,rax
34cb0b  e8 5c bb f8 ff                 call   0x2d866c
34cb10  48 8b d0                       mov    rdx,rax
34cb13  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cb18  e8 af f7 f7 ff                 call   0x2cc2cc
34cb1d  33 d2                          xor    edx,edx
34cb1f  eb 4c                          jmp    0x34cb6d
34cb21  8b 05 c1 05 0b 00              mov    eax,DWORD PTR [rip+0xb05c1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cb27  41 3b c6                       cmp    eax,r14d
34cb2a  75 09                          jne    0x34cb35
34cb2c  48 8d 0d 0d ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae0d]        # 0x2a7940
34cb33  eb 0c                          jmp    0x34cb41
34cb35  41 3b c7                       cmp    eax,r15d
34cb38  75 0e                          jne    0x34cb48
34cb3a  48 8d 0d 47 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae47]        # 0x2a7988
34cb41  e8 be 84 01 00                 call   0x365004
34cb46  eb 16                          jmp    0x34cb5e
34cb48  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34cb4d  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cb51  e8 ca 49 00 00                 call   0x351520 ; STRING getter=0x351520 Failed to find stash config
34cb56  48 8b c8                       mov    rcx,rax
34cb59  e8 26 3a fd ff                 call   0x320584
34cb5e  48 8b d0                       mov    rdx,rax
34cb61  48 8d 4d a0                    lea    rcx,[rbp-0x60]
34cb65  e8 62 f7 f7 ff                 call   0x2cc2cc
34cb6a  41 8b d6                       mov    edx,r14d
34cb6d  45 33 c0                       xor    r8d,r8d
34cb70  48 8b c8                       mov    rcx,rax
34cb73  e8 a0 2d 03 00                 call   0x37f918
34cb78  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cb7d  e8 72 f9 f7 ff                 call   0x2cc4f4
34cb82  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34cb86  e8 69 f9 f7 ff                 call   0x2cc4f4
34cb8b  0f 57 d2                       xorps  xmm2,xmm2
34cb8e  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34cb92  0f 57 c9                       xorps  xmm1,xmm1
34cb95  e8 a6 f7 f7 ff                 call   0x2cc340
34cb9a  8b 0d 48 05 0b 00              mov    ecx,DWORD PTR [rip+0xb0548]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cba0  48 8b d8                       mov    rbx,rax
34cba3  41 3b ce                       cmp    ecx,r14d
34cba6  75 09                          jne    0x34cbb1
34cba8  48 8d 0d f1 ad f5 ff           lea    rcx,[rip+0xfffffffffff5adf1]        # 0x2a79a0
34cbaf  eb 0c                          jmp    0x34cbbd
34cbb1  41 3b cf                       cmp    ecx,r15d
34cbb4  75 0e                          jne    0x34cbc4
34cbb6  48 8d 0d 03 ae f5 ff           lea    rcx,[rip+0xfffffffffff5ae03]        # 0x2a79c0
34cbbd  e8 42 84 01 00                 call   0x365004
34cbc2  eb 16                          jmp    0x34cbda
34cbc4  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34cbc9  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cbcd  e8 3e 4c 00 00                 call   0x351810 ; STRING getter=0x351810 Create Config
34cbd2  48 8b c8                       mov    rcx,rax
34cbd5  e8 ae 05 f9 ff                 call   0x2dd188
34cbda  48 8b d3                       mov    rdx,rbx
34cbdd  48 8b c8                       mov    rcx,rax
34cbe0  e8 f3 fb 06 00                 call   0x3bc7d8
34cbe5  4c 8d 2d bc bd ec ff           lea    r13,[rip+0xffffffffffecbdbc]        # 0x2189a8
34cbec  84 c0                          test   al,al
34cbee  0f 84 f5 00 00 00              je     0x34cce9
34cbf4  48 8d 4d e0                    lea    rcx,[rbp-0x20]
34cbf8  e8 ef 0b f8 ff                 call   0x2cd7ec
34cbfd  48 8b c8                       mov    rcx,rax
34cc00  e8 ff dc 07 00                 call   0x3ca904
34cc05  48 85 c0                       test   rax,rax
34cc08  0f 84 db 00 00 00              je     0x34cce9
34cc0e  48 8d 55 e0                    lea    rdx,[rbp-0x20]
34cc12  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cc17  e8 68 97 f8 ff                 call   0x2d6384
34cc1c  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cc21  e8 6e ba f8 ff                 call   0x2d8694
34cc26  84 c0                          test   al,al
34cc28  75 1f                          jne    0x34cc49
34cc2a  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cc2f  e8 90 98 f8 ff                 call   0x2d64c4
34cc34  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cc39  e8 ae 0b f8 ff                 call   0x2cd7ec
34cc3e  48 8b d0                       mov    rdx,rax
34cc41  49 8b cd                       mov    rcx,r13
34cc44  e8 d3 96 f8 ff                 call   0x2d631c
34cc49  8b 05 99 04 0b 00              mov    eax,DWORD PTR [rip+0xb0499]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cc4f  41 3b c6                       cmp    eax,r14d
34cc52  75 09                          jne    0x34cc5d
34cc54  48 8d 0d 75 ad f5 ff           lea    rcx,[rip+0xfffffffffff5ad75]        # 0x2a79d0
34cc5b  eb 0c                          jmp    0x34cc69
34cc5d  41 3b c7                       cmp    eax,r15d
34cc60  75 0e                          jne    0x34cc70
34cc62  48 8d 0d 8f ad f5 ff           lea    rcx,[rip+0xfffffffffff5ad8f]        # 0x2a79f8
34cc69  e8 96 83 01 00                 call   0x365004
34cc6e  eb 15                          jmp    0x34cc85
34cc70  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34cc74  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cc78  e8 db 4d 00 00                 call   0x351a58 ; STRING getter=0x351a58 Created Config : 
34cc7d  48 8b c8                       mov    rcx,rax
34cc80  e8 57 cf f9 ff                 call   0x2e9bdc
34cc85  4c 8d 45 e0                    lea    r8,[rbp-0x20]
34cc89  48 8b d0                       mov    rdx,rax
34cc8c  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cc91  e8 7e da f9 ff                 call   0x2ea714
34cc96  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
34cc9b  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34cc9f  e8 f0 74 f8 ff                 call   0x2d4194
34cca4  48 8b c8                       mov    rcx,rax
34cca7  45 33 c0                       xor    r8d,r8d
34ccaa  33 d2                          xor    edx,edx
34ccac  e8 67 2c 03 00                 call   0x37f918
34ccb1  48 8d 55 68                    lea    rdx,[rbp+0x68]
34ccb5  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34ccb9  e8 72 fa f7 ff                 call   0x2cc730
34ccbe  48 8b c8                       mov    rcx,rax
34ccc1  e8 de 0f f8 ff                 call   0x2cdca4
34ccc6  48 8b d0                       mov    rdx,rax
34ccc9  48 8d 0d 68 06 0b 00           lea    rcx,[rip+0xb0668]        # 0x3fd338 ; CONFIG S.ConfigInputTest value(+0x48)
34ccd0  e8 93 7f f8 ff                 call   0x2d4c68
34ccd5  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34ccda  e8 15 f8 f7 ff                 call   0x2cc4f4
34ccdf  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cce4  e8 0b f8 f7 ff                 call   0x2cc4f4
34cce9  83 3d b0 2c f3 ff 00           cmp    DWORD PTR [rip+0xfffffffffff32cb0],0x0        # 0x27f9a0
34ccf0  0f 8c 57 04 00 00              jl     0x34d14d
34ccf6  0f 28 cf                       movaps xmm1,xmm7
34ccf9  0f 57 c0                       xorps  xmm0,xmm0
34ccfc  e8 03 df 04 00                 call   0x39ac04
34cd01  0f 57 d2                       xorps  xmm2,xmm2
34cd04  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34cd08  0f 57 c9                       xorps  xmm1,xmm1
34cd0b  e8 30 f6 f7 ff                 call   0x2cc340
34cd10  8b 0d d2 03 0b 00              mov    ecx,DWORD PTR [rip+0xb03d2]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cd16  48 8b d8                       mov    rbx,rax
34cd19  41 3b ce                       cmp    ecx,r14d
34cd1c  75 09                          jne    0x34cd27
34cd1e  48 8d 0d e3 ac f5 ff           lea    rcx,[rip+0xfffffffffff5ace3]        # 0x2a7a08
34cd25  eb 0c                          jmp    0x34cd33
34cd27  41 3b cf                       cmp    ecx,r15d
34cd2a  75 0e                          jne    0x34cd3a
34cd2c  48 8d 0d f5 ac f5 ff           lea    rcx,[rip+0xfffffffffff5acf5]        # 0x2a7a28
34cd33  e8 cc 82 01 00                 call   0x365004
34cd38  eb 16                          jmp    0x34cd50
34cd3a  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34cd3f  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cd43  e8 48 51 00 00                 call   0x351e90 ; STRING getter=0x351e90 Remove Config
34cd48  48 8b c8                       mov    rcx,rax
34cd4b  e8 38 04 f9 ff                 call   0x2dd188
34cd50  48 8b d3                       mov    rdx,rbx
34cd53  48 8b c8                       mov    rcx,rax
34cd56  e8 7d fa 06 00                 call   0x3bc7d8
34cd5b  84 c0                          test   al,al
34cd5d  0f 84 cf 00 00 00              je     0x34ce32
34cd63  48 63 15 36 2c f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32c36]        # 0x27f9a0
34cd6a  48 8b ce                       mov    rcx,rsi
34cd6d  e8 ae 7f f8 ff                 call   0x2d4d20
34cd72  48 8b c8                       mov    rcx,rax
34cd75  e8 72 0a f8 ff                 call   0x2cd7ec
34cd7a  8b 0d 68 03 0b 00              mov    ecx,DWORD PTR [rip+0xb0368]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cd80  48 8b d8                       mov    rbx,rax
34cd83  41 3b ce                       cmp    ecx,r14d
34cd86  75 09                          jne    0x34cd91
34cd88  48 8d 0d a9 ac f5 ff           lea    rcx,[rip+0xfffffffffff5aca9]        # 0x2a7a38
34cd8f  eb 0c                          jmp    0x34cd9d
34cd91  41 3b cf                       cmp    ecx,r15d
34cd94  75 0e                          jne    0x34cda4
34cd96  48 8d 0d c3 ac f5 ff           lea    rcx,[rip+0xfffffffffff5acc3]        # 0x2a7a60
34cd9d  e8 62 82 01 00                 call   0x365004
34cda2  eb 15                          jmp    0x34cdb9
34cda4  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34cda8  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cdac  e8 db 53 00 00                 call   0x35218c ; STRING getter=0x35218c Deleted Config : 
34cdb1  48 8b c8                       mov    rcx,rax
34cdb4  e8 23 ce f9 ff                 call   0x2e9bdc
34cdb9  48 8b d0                       mov    rdx,rax
34cdbc  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cdc1  e8 06 f5 f7 ff                 call   0x2cc2cc
34cdc6  48 8b d0                       mov    rdx,rax
34cdc9  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cdce  4c 8b c3                       mov    r8,rbx
34cdd1  e8 62 df f7 ff                 call   0x2cad38
34cdd6  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cddb  e8 14 f7 f7 ff                 call   0x2cc4f4
34cde0  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34cde5  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cdea  e8 a5 73 f8 ff                 call   0x2d4194
34cdef  48 8b c8                       mov    rcx,rax
34cdf2  45 33 c0                       xor    r8d,r8d
34cdf5  33 d2                          xor    edx,edx
34cdf7  e8 1c 2b 03 00                 call   0x37f918
34cdfc  48 63 15 9d 2b f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32b9d]        # 0x27f9a0
34ce03  48 8b ce                       mov    rcx,rsi
34ce06  e8 15 7f f8 ff                 call   0x2d4d20
34ce0b  48 8b c8                       mov    rcx,rax
34ce0e  e8 d9 09 f8 ff                 call   0x2cd7ec
34ce13  48 8b d0                       mov    rdx,rax
34ce16  49 8b cd                       mov    rcx,r13
34ce19  e8 92 94 f8 ff                 call   0x2d62b0
34ce1e  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ce23  c7 05 73 2b f3 ff ff ff ff ff  mov    DWORD PTR [rip+0xfffffffffff32b73],0xffffffff        # 0x27f9a0
34ce2d  e8 c2 f6 f7 ff                 call   0x2cc4f4
34ce32  0f 57 d2                       xorps  xmm2,xmm2
34ce35  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34ce39  0f 57 c9                       xorps  xmm1,xmm1
34ce3c  e8 ff f4 f7 ff                 call   0x2cc340
34ce41  8b 0d a1 02 0b 00              mov    ecx,DWORD PTR [rip+0xb02a1]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34ce47  48 8b d8                       mov    rbx,rax
34ce4a  41 3b ce                       cmp    ecx,r14d
34ce4d  75 09                          jne    0x34ce58
34ce4f  48 8d 0d 1a ac f5 ff           lea    rcx,[rip+0xfffffffffff5ac1a]        # 0x2a7a70
34ce56  eb 0c                          jmp    0x34ce64
34ce58  41 3b cf                       cmp    ecx,r15d
34ce5b  75 0e                          jne    0x34ce6b
34ce5d  48 8d 0d 34 ac f5 ff           lea    rcx,[rip+0xfffffffffff5ac34]        # 0x2a7a98
34ce64  e8 9b 81 01 00                 call   0x365004
34ce69  eb 16                          jmp    0x34ce81
34ce6b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34ce70  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34ce74  e8 5f 56 00 00                 call   0x3524d8 ; STRING getter=0x3524d8 Save Config
34ce79  48 8b c8                       mov    rcx,rax
34ce7c  e8 b3 0f f8 ff                 call   0x2cde34
34ce81  48 8b d3                       mov    rdx,rbx
34ce84  48 8b c8                       mov    rcx,rax
34ce87  e8 4c f9 06 00                 call   0x3bc7d8
34ce8c  84 c0                          test   al,al
34ce8e  0f 84 15 01 00 00              je     0x34cfa9
34ce94  48 63 15 05 2b f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32b05]        # 0x27f9a0
34ce9b  48 8b ce                       mov    rcx,rsi
34ce9e  e8 7d 7e f8 ff                 call   0x2d4d20
34cea3  48 8b c8                       mov    rcx,rax
34cea6  e8 41 09 f8 ff                 call   0x2cd7ec
34ceab  48 8b d0                       mov    rdx,rax
34ceae  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34ceb3  e8 14 f4 f7 ff                 call   0x2cc2cc
34ceb8  48 8d 54 24 78                 lea    rdx,[rsp+0x78]
34cebd  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cec2  e8 bd 94 f8 ff                 call   0x2d6384
34cec7  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cecc  e8 23 f6 f7 ff                 call   0x2cc4f4
34ced1  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ced6  e8 b9 b7 f8 ff                 call   0x2d8694
34cedb  84 c0                          test   al,al
34cedd  75 1f                          jne    0x34cefe
34cedf  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cee4  e8 db 95 f8 ff                 call   0x2d64c4
34cee9  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34ceee  e8 f9 08 f8 ff                 call   0x2cd7ec
34cef3  48 8b d0                       mov    rdx,rax
34cef6  49 8b cd                       mov    rcx,r13
34cef9  e8 1e 94 f8 ff                 call   0x2d631c
34cefe  48 63 15 9b 2a f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32a9b]        # 0x27f9a0
34cf05  48 8b ce                       mov    rcx,rsi
34cf08  e8 13 7e f8 ff                 call   0x2d4d20
34cf0d  48 8b c8                       mov    rcx,rax
34cf10  e8 d7 08 f8 ff                 call   0x2cd7ec
34cf15  8b 0d cd 01 0b 00              mov    ecx,DWORD PTR [rip+0xb01cd]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cf1b  48 8b d8                       mov    rbx,rax
34cf1e  41 3b ce                       cmp    ecx,r14d
34cf21  75 09                          jne    0x34cf2c
34cf23  48 8d 0d 7e ab f5 ff           lea    rcx,[rip+0xfffffffffff5ab7e]        # 0x2a7aa8
34cf2a  eb 0c                          jmp    0x34cf38
34cf2c  41 3b cf                       cmp    ecx,r15d
34cf2f  75 0e                          jne    0x34cf3f
34cf31  48 8d 0d 98 ab f5 ff           lea    rcx,[rip+0xfffffffffff5ab98]        # 0x2a7ad0
34cf38  e8 c7 80 01 00                 call   0x365004
34cf3d  eb 16                          jmp    0x34cf55
34cf3f  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34cf44  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cf48  e8 0b 58 00 00                 call   0x352758 ; STRING getter=0x352758 Saved Config : 
34cf4d  48 8b c8                       mov    rcx,rax
34cf50  e8 0b 02 f9 ff                 call   0x2dd160
34cf55  48 8b d0                       mov    rdx,rax
34cf58  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cf5d  e8 6a f3 f7 ff                 call   0x2cc2cc
34cf62  48 8b d0                       mov    rdx,rax
34cf65  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34cf69  4c 8b c3                       mov    r8,rbx
34cf6c  e8 c7 dd f7 ff                 call   0x2cad38
34cf71  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cf76  e8 79 f5 f7 ff                 call   0x2cc4f4
34cf7b  48 8d 55 c0                    lea    rdx,[rbp-0x40]
34cf7f  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34cf84  e8 0b 72 f8 ff                 call   0x2d4194
34cf89  48 8b c8                       mov    rcx,rax
34cf8c  45 33 c0                       xor    r8d,r8d
34cf8f  33 d2                          xor    edx,edx
34cf91  e8 82 29 03 00                 call   0x37f918
34cf96  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34cf9a  e8 55 f5 f7 ff                 call   0x2cc4f4
34cf9f  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34cfa4  e8 4b f5 f7 ff                 call   0x2cc4f4
34cfa9  0f 28 cf                       movaps xmm1,xmm7
34cfac  0f 57 c0                       xorps  xmm0,xmm0
34cfaf  e8 50 dc 04 00                 call   0x39ac04
34cfb4  0f 57 d2                       xorps  xmm2,xmm2
34cfb7  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34cfbb  0f 57 c9                       xorps  xmm1,xmm1
34cfbe  e8 7d f3 f7 ff                 call   0x2cc340
34cfc3  8b 0d 1f 01 0b 00              mov    ecx,DWORD PTR [rip+0xb011f]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34cfc9  48 8b d8                       mov    rbx,rax
34cfcc  41 3b ce                       cmp    ecx,r14d
34cfcf  75 09                          jne    0x34cfda
34cfd1  48 8d 0d 08 ab f5 ff           lea    rcx,[rip+0xfffffffffff5ab08]        # 0x2a7ae0
34cfd8  eb 0c                          jmp    0x34cfe6
34cfda  41 3b cf                       cmp    ecx,r15d
34cfdd  75 0e                          jne    0x34cfed
34cfdf  48 8d 0d 22 ab f5 ff           lea    rcx,[rip+0xfffffffffff5ab22]        # 0x2a7b08
34cfe6  e8 19 80 01 00                 call   0x365004
34cfeb  eb 16                          jmp    0x34d003
34cfed  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34cff2  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34cff6  e8 65 59 00 00                 call   0x352960 ; STRING getter=0x352960 Load Config
34cffb  48 8b c8                       mov    rcx,rax
34cffe  e8 31 0e f8 ff                 call   0x2cde34
34d003  48 8b d3                       mov    rdx,rbx
34d006  48 8b c8                       mov    rcx,rax
34d009  e8 ca f7 06 00                 call   0x3bc7d8
34d00e  84 c0                          test   al,al
34d010  0f 84 37 01 00 00              je     0x34d14d
34d016  48 63 15 83 29 f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32983]        # 0x27f9a0
34d01d  48 8b ce                       mov    rcx,rsi
34d020  44 88 35 98 8c 09 00           mov    BYTE PTR [rip+0x98c98],r14b        # 0x3e5cbf
34d027  44 88 35 8b 8c 09 00           mov    BYTE PTR [rip+0x98c8b],r14b        # 0x3e5cb9
34d02e  44 88 35 86 8c 09 00           mov    BYTE PTR [rip+0x98c86],r14b        # 0x3e5cbb
34d035  44 88 35 80 8c 09 00           mov    BYTE PTR [rip+0x98c80],r14b        # 0x3e5cbc
34d03c  44 88 35 7a 8c 09 00           mov    BYTE PTR [rip+0x98c7a],r14b        # 0x3e5cbd
34d043  44 88 35 70 8c 09 00           mov    BYTE PTR [rip+0x98c70],r14b        # 0x3e5cba
34d04a  44 88 35 73 d7 0a 00           mov    BYTE PTR [rip+0xad773],r14b        # 0x3fa7c4
34d051  44 88 35 66 8c 09 00           mov    BYTE PTR [rip+0x98c66],r14b        # 0x3e5cbe
34d058  e8 c3 7c f8 ff                 call   0x2d4d20
34d05d  48 8b c8                       mov    rcx,rax
34d060  e8 87 07 f8 ff                 call   0x2cd7ec
34d065  48 8b d0                       mov    rdx,rax
34d068  48 8b cf                       mov    rcx,rdi
34d06b  e8 f8 7b f8 ff                 call   0x2d4c68
34d070  48 63 15 29 29 f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32929]        # 0x27f9a0
34d077  48 8b ce                       mov    rcx,rsi
34d07a  e8 a1 7c f8 ff                 call   0x2d4d20
34d07f  48 8b c8                       mov    rcx,rax
34d082  e8 3d 94 f8 ff                 call   0x2d64c4
34d087  48 63 15 12 29 f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff32912]        # 0x27f9a0
34d08e  48 8b ce                       mov    rcx,rsi
34d091  e8 8a 7c f8 ff                 call   0x2d4d20
34d096  48 8b c8                       mov    rcx,rax
34d099  e8 4e 07 f8 ff                 call   0x2cd7ec
34d09e  48 8b d0                       mov    rdx,rax
34d0a1  49 8b cd                       mov    rcx,r13
34d0a4  e8 3f 92 f8 ff                 call   0x2d62e8
34d0a9  48 63 15 f0 28 f3 ff           movsxd rdx,DWORD PTR [rip+0xfffffffffff328f0]        # 0x27f9a0
34d0b0  48 8b ce                       mov    rcx,rsi
34d0b3  e8 68 7c f8 ff                 call   0x2d4d20
34d0b8  48 8b c8                       mov    rcx,rax
34d0bb  e8 2c 07 f8 ff                 call   0x2cd7ec
34d0c0  8b 0d 22 00 0b 00              mov    ecx,DWORD PTR [rip+0xb0022]        # 0x3fd0e8 ; CONFIG i.language value(+0x48)
34d0c6  48 8b d8                       mov    rbx,rax
34d0c9  41 3b ce                       cmp    ecx,r14d
34d0cc  75 09                          jne    0x34d0d7
34d0ce  48 8d 0d 43 aa f5 ff           lea    rcx,[rip+0xfffffffffff5aa43]        # 0x2a7b18
34d0d5  eb 0c                          jmp    0x34d0e3
34d0d7  41 3b cf                       cmp    ecx,r15d
34d0da  75 0e                          jne    0x34d0ea
34d0dc  48 8d 0d 5d aa f5 ff           lea    rcx,[rip+0xfffffffffff5aa5d]        # 0x2a7b40
34d0e3  e8 1c 7f 01 00                 call   0x365004
34d0e8  eb 16                          jmp    0x34d100
34d0ea  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d0ef  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d0f3  e8 78 5a 00 00                 call   0x352b70 ; STRING getter=0x352b70 Loaded Config : 
34d0f8  48 8b c8                       mov    rcx,rax
34d0fb  e8 b4 ca f9 ff                 call   0x2e9bb4
34d100  48 8b d0                       mov    rdx,rax
34d103  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d108  e8 bf f1 f7 ff                 call   0x2cc2cc
34d10d  48 8b d0                       mov    rdx,rax
34d110  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d115  4c 8b c3                       mov    r8,rbx
34d118  e8 1b dc f7 ff                 call   0x2cad38
34d11d  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d122  e8 cd f3 f7 ff                 call   0x2cc4f4
34d127  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
34d12c  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d131  e8 5e 70 f8 ff                 call   0x2d4194
34d136  48 8b c8                       mov    rcx,rax
34d139  45 33 c0                       xor    r8d,r8d
34d13c  33 d2                          xor    edx,edx
34d13e  e8 d5 27 03 00                 call   0x37f918
34d143  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d148  e8 a7 f3 f7 ff                 call   0x2cc4f4
34d14d  48 8d 35 14 b6 ec ff           lea    rsi,[rip+0xffffffffffecb614]        # 0x218768
34d154  48 8b ce                       mov    rcx,rsi
34d157  e8 44 b5 f8 ff                 call   0x2d86a0
34d15c  f3 0f 10 35 c8 09 f4 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff409c8]        # 0x28db2c ; f32=50
34d164  84 c0                          test   al,al
34d166  0f 85 2a 02 00 00              jne    0x34d396
34d16c  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d171  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d175  e8 ae 5d 00 00                 call   0x352f28 ; STRING getter=0x352f28  Stashes
34d17a  48 8b c8                       mov    rcx,rax
34d17d  e8 0a ca f9 ff                 call   0x2e9b8c
34d182  48 8b ce                       mov    rcx,rsi
34d185  48 8b f8                       mov    rdi,rax
34d188  e8 4f c2 f8 ff                 call   0x2d93dc
34d18d  48 8b d0                       mov    rdx,rax
34d190  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34d194  e8 1b 08 f9 ff                 call   0x2dd9b4
34d199  48 8d 55 70                    lea    rdx,[rbp+0x70]
34d19d  48 8b d8                       mov    rbx,rax
34d1a0  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d1a4  e8 bb 5b 00 00                 call   0x352d64
34d1a9  48 8b c8                       mov    rcx,rax
34d1ac  e8 63 64 f9 ff                 call   0x2e3614
34d1b1  48 8b d0                       mov    rdx,rax
34d1b4  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d1b9  4c 8b c3                       mov    r8,rbx
34d1bc  e8 1b d5 f9 ff                 call   0x2ea6dc
34d1c1  48 8b d0                       mov    rdx,rax
34d1c4  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d1c9  4c 8b c7                       mov    r8,rdi
34d1cc  e8 67 db f7 ff                 call   0x2cad38
34d1d1  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d1d6  e8 19 f3 f7 ff                 call   0x2cc4f4
34d1db  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34d1df  e8 10 f3 f7 ff                 call   0x2cc4f4
34d1e4  0f 57 d2                       xorps  xmm2,xmm2
34d1e7  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d1eb  0f 57 c9                       xorps  xmm1,xmm1
34d1ee  e8 4d f1 f7 ff                 call   0x2cc340
34d1f3  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d1f8  48 8b d8                       mov    rbx,rax
34d1fb  e8 ec 05 f8 ff                 call   0x2cd7ec
34d200  48 8b c8                       mov    rcx,rax
34d203  48 8b d3                       mov    rdx,rbx
34d206  e8 cd f5 06 00                 call   0x3bc7d8
34d20b  84 c0                          test   al,al
34d20d  74 1f                          je     0x34d22e
34d20f  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34d213  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d217  e8 e4 5e 00 00                 call   0x353100 ; STRING getter=0x353100 DeleteStashesPopup
34d21c  48 8b c8                       mov    rcx,rax
34d21f  e8 70 0b f8 ff                 call   0x2cdd94
34d224  48 8b c8                       mov    rcx,rax
34d227  33 d2                          xor    edx,edx
34d229  e8 9a b3 04 00                 call   0x3985c8
34d22e  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34d232  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d236  e8 69 60 00 00                 call   0x3532a4 ; STRING getter=0x3532a4 DeleteStashesPopup
34d23b  48 8b c8                       mov    rcx,rax
34d23e  e8 51 0b f8 ff                 call   0x2cdd94
34d243  48 8b c8                       mov    rcx,rax
34d246  33 d2                          xor    edx,edx
34d248  e8 6f 1b 04 00                 call   0x38edbc
34d24d  84 c0                          test   al,al
34d24f  0f 84 37 01 00 00              je     0x34d38c
34d255  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34d259  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d25d  e8 06 62 00 00                 call   0x353468 ; STRING getter=0x353468 Delete stashes???
34d262  48 8b c8                       mov    rcx,rax
34d265  e8 72 c9 f9 ff                 call   0x2e9bdc
34d26a  45 33 c9                       xor    r9d,r9d
34d26d  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
34d273  45 33 c0                       xor    r8d,r8d
34d276  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d27a  48 8b d0                       mov    rdx,rax
34d27d  48 8b f8                       mov    rdi,rax
34d280  e8 17 25 04 00                 call   0x38f79c
34d285  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34d289  48 8b d8                       mov    rbx,rax
34d28c  e8 ab 50 04 00                 call   0x39233c
34d291  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
34d295  f3 0f 5c 03                    subss  xmm0,DWORD PTR [rbx]
34d299  f3 0f 59 05 af ff f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3ffaf]        # 0x28d250 ; f32=0.5
34d2a1  e8 6a e1 04 00                 call   0x39b410
34d2a6  48 8b cf                       mov    rcx,rdi
34d2a9  e8 e2 7b 07 00                 call   0x3c4e90
34d2ae  0f 57 d2                       xorps  xmm2,xmm2
34d2b1  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34d2b5  0f 28 ce                       movaps xmm1,xmm6
34d2b8  e8 83 f0 f7 ff                 call   0x2cc340
34d2bd  48 8d 55 68                    lea    rdx,[rbp+0x68]
34d2c1  48 8b d8                       mov    rbx,rax
34d2c4  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d2c8  e8 e3 63 00 00                 call   0x3536b0 ; STRING getter=0x3536b0 Yes
34d2cd  48 8b c8                       mov    rcx,rax
34d2d0  e8 47 31 fd ff                 call   0x32041c
34d2d5  48 8b c8                       mov    rcx,rax
34d2d8  48 8b d3                       mov    rdx,rbx
34d2db  e8 f8 f4 06 00                 call   0x3bc7d8
34d2e0  84 c0                          test   al,al
34d2e2  74 5d                          je     0x34d341
34d2e4  48 8d 55 a0                    lea    rdx,[rbp-0x60]
34d2e8  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d2ec  e8 1b 68 00 00                 call   0x353b0c ; STRING getter=0x353b0c DELETED all stashes
34d2f1  48 8b c8                       mov    rcx,rax
34d2f4  e8 9b 31 fd ff                 call   0x320494
34d2f9  48 8b d0                       mov    rdx,rax
34d2fc  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d301  e8 c6 ef f7 ff                 call   0x2cc2cc
34d306  48 8b c8                       mov    rcx,rax
34d309  45 33 c0                       xor    r8d,r8d
34d30c  33 d2                          xor    edx,edx
34d30e  e8 05 26 03 00                 call   0x37f918
34d313  48 8b ce                       mov    rcx,rsi
34d316  e8 15 5d 01 00                 call   0x363030
34d31b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d320  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d324  e8 7b 69 00 00                 call   0x353ca4 ; STRING getter=0x353ca4 StashList.bin
34d329  48 8b c8                       mov    rcx,rax
34d32c  e8 57 fe f8 ff                 call   0x2dd188
34d331  48 8b d0                       mov    rdx,rax
34d334  49 8b cd                       mov    rcx,r13
34d337  e8 74 8f f8 ff                 call   0x2d62b0
34d33c  e8 1f 2f 04 00                 call   0x390260
34d341  0f 28 cf                       movaps xmm1,xmm7
34d344  0f 57 c0                       xorps  xmm0,xmm0
34d347  e8 b8 d8 04 00                 call   0x39ac04
34d34c  0f 57 d2                       xorps  xmm2,xmm2
34d34f  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34d353  0f 28 ce                       movaps xmm1,xmm6
34d356  e8 e5 ef f7 ff                 call   0x2cc340
34d35b  48 8d 55 68                    lea    rdx,[rbp+0x68]
34d35f  48 8b d8                       mov    rbx,rax
34d362  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d366  e8 31 6b 00 00                 call   0x353e9c ; STRING getter=0x353e9c No
34d36b  48 8b c8                       mov    rcx,rax
34d36e  e8 81 30 fd ff                 call   0x3203f4
34d373  48 8b c8                       mov    rcx,rax
34d376  48 8b d3                       mov    rdx,rbx
34d379  e8 5a f4 06 00                 call   0x3bc7d8
34d37e  84 c0                          test   al,al
34d380  74 05                          je     0x34d387
34d382  e8 d9 2e 04 00                 call   0x390260
34d387  e8 5c 3d 04 00                 call   0x3910e8
34d38c  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d391  e8 5e f1 f7 ff                 call   0x2cc4f4
34d396  48 8b ce                       mov    rcx,rsi
34d399  e8 02 b3 f8 ff                 call   0x2d86a0
34d39e  48 8d 35 db b3 ec ff           lea    rsi,[rip+0xffffffffffecb3db]        # 0x218780
34d3a5  84 c0                          test   al,al
34d3a7  75 17                          jne    0x34d3c0
34d3a9  48 8b ce                       mov    rcx,rsi
34d3ac  e8 ef b2 f8 ff                 call   0x2d86a0
34d3b1  84 c0                          test   al,al
34d3b3  75 0b                          jne    0x34d3c0
34d3b5  0f 28 cf                       movaps xmm1,xmm7
34d3b8  0f 57 c0                       xorps  xmm0,xmm0
34d3bb  e8 44 d8 04 00                 call   0x39ac04
34d3c0  48 8b ce                       mov    rcx,rsi
34d3c3  e8 d8 b2 f8 ff                 call   0x2d86a0
34d3c8  84 c0                          test   al,al
34d3ca  0f 85 2e 02 00 00              jne    0x34d5fe
34d3d0  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d3d5  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d3d9  e8 5e 6e 00 00                 call   0x35423c ; STRING getter=0x35423c  Samsites
34d3de  48 8b c8                       mov    rcx,rax
34d3e1  e8 5e 09 f8 ff                 call   0x2cdd44
34d3e6  48 8b ce                       mov    rcx,rsi
34d3e9  48 8b f8                       mov    rdi,rax
34d3ec  e8 eb bf f8 ff                 call   0x2d93dc
34d3f1  48 8b d0                       mov    rdx,rax
34d3f4  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34d3f8  e8 b7 05 f9 ff                 call   0x2dd9b4
34d3fd  48 8d 55 70                    lea    rdx,[rbp+0x70]
34d401  48 8b d8                       mov    rbx,rax
34d404  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d408  e8 57 59 00 00                 call   0x352d64
34d40d  48 8b c8                       mov    rcx,rax
34d410  e8 ff 61 f9 ff                 call   0x2e3614
34d415  48 8b d0                       mov    rdx,rax
34d418  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d41d  4c 8b c3                       mov    r8,rbx
34d420  e8 b7 d2 f9 ff                 call   0x2ea6dc
34d425  48 8b d0                       mov    rdx,rax
34d428  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d42d  4c 8b c7                       mov    r8,rdi
34d430  e8 03 d9 f7 ff                 call   0x2cad38
34d435  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d43a  e8 b5 f0 f7 ff                 call   0x2cc4f4
34d43f  48 8d 4d c0                    lea    rcx,[rbp-0x40]
34d443  e8 ac f0 f7 ff                 call   0x2cc4f4
34d448  0f 57 d2                       xorps  xmm2,xmm2
34d44b  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d44f  0f 57 c9                       xorps  xmm1,xmm1
34d452  e8 e9 ee f7 ff                 call   0x2cc340
34d457  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d45c  48 8b d8                       mov    rbx,rax
34d45f  e8 88 03 f8 ff                 call   0x2cd7ec
34d464  48 8b c8                       mov    rcx,rax
34d467  48 8b d3                       mov    rdx,rbx
34d46a  e8 69 f3 06 00                 call   0x3bc7d8
34d46f  84 c0                          test   al,al
34d471  74 20                          je     0x34d493
34d473  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d478  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d47c  e8 3f 70 00 00                 call   0x3544c0 ; STRING getter=0x3544c0 DeleteSamsPopup
34d481  48 8b c8                       mov    rcx,rax
34d484  e8 d7 fc f8 ff                 call   0x2dd160
34d489  48 8b c8                       mov    rcx,rax
34d48c  33 d2                          xor    edx,edx
34d48e  e8 35 b1 04 00                 call   0x3985c8
34d493  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d498  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d49c  e8 bb 71 00 00                 call   0x35465c ; STRING getter=0x35465c DeleteSamsPopup
34d4a1  48 8b c8                       mov    rcx,rax
34d4a4  e8 b7 fc f8 ff                 call   0x2dd160
34d4a9  48 8b c8                       mov    rcx,rax
34d4ac  33 d2                          xor    edx,edx
34d4ae  e8 09 19 04 00                 call   0x38edbc
34d4b3  84 c0                          test   al,al
34d4b5  0f 84 39 01 00 00              je     0x34d5f4
34d4bb  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d4c0  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d4c4  e8 9f 73 00 00                 call   0x354868 ; STRING getter=0x354868 Delete sams???
34d4c9  48 8b c8                       mov    rcx,rax
34d4cc  e8 9b b1 f8 ff                 call   0x2d866c
34d4d1  45 33 c9                       xor    r9d,r9d
34d4d4  f3 0f 11 7c 24 20              movss  DWORD PTR [rsp+0x20],xmm7
34d4da  45 33 c0                       xor    r8d,r8d
34d4dd  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d4e1  48 8b d0                       mov    rdx,rax
34d4e4  48 8b f8                       mov    rdi,rax
34d4e7  e8 b0 22 04 00                 call   0x38f79c
34d4ec  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34d4f0  48 8b d8                       mov    rbx,rax
34d4f3  e8 44 4e 04 00                 call   0x39233c
34d4f8  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
34d4fc  f3 0f 5c 03                    subss  xmm0,DWORD PTR [rbx]
34d500  f3 0f 59 05 48 fd f3 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff3fd48]        # 0x28d250 ; f32=0.5
34d508  e8 03 df 04 00                 call   0x39b410
34d50d  48 8b cf                       mov    rcx,rdi
34d510  e8 7b 79 07 00                 call   0x3c4e90
34d515  0f 57 d2                       xorps  xmm2,xmm2
34d518  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34d51c  0f 28 ce                       movaps xmm1,xmm6
34d51f  e8 1c ee f7 ff                 call   0x2cc340
34d524  48 8d 55 68                    lea    rdx,[rbp+0x68]
34d528  48 8b d8                       mov    rbx,rax
34d52b  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d52f  e8 7c 61 00 00                 call   0x3536b0 ; STRING getter=0x3536b0 Yes
34d534  48 8b c8                       mov    rcx,rax
34d537  e8 e0 2e fd ff                 call   0x32041c
34d53c  48 8b c8                       mov    rcx,rax
34d53f  48 8b d3                       mov    rdx,rbx
34d542  e8 91 f2 06 00                 call   0x3bc7d8
34d547  84 c0                          test   al,al
34d549  74 5e                          je     0x34d5a9
34d54b  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d550  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d554  e8 33 77 00 00                 call   0x354c8c ; STRING getter=0x354c8c DELETED all sams
34d559  48 8b c8                       mov    rcx,rax
34d55c  e8 53 c6 f9 ff                 call   0x2e9bb4
34d561  48 8b d0                       mov    rdx,rax
34d564  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
34d569  e8 5e ed f7 ff                 call   0x2cc2cc
34d56e  48 8b c8                       mov    rcx,rax
34d571  45 33 c0                       xor    r8d,r8d
34d574  33 d2                          xor    edx,edx
34d576  e8 9d 23 03 00                 call   0x37f918
34d57b  48 8b ce                       mov    rcx,rsi
34d57e  e8 ad 5a 01 00                 call   0x363030
34d583  48 8d 54 24 40                 lea    rdx,[rsp+0x40]
34d588  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d58c  e8 ff 7b 00 00                 call   0x355190 ; STRING getter=0x355190 SamSitelist.bin
34d591  48 8b c8                       mov    rcx,rax
34d594  e8 c7 fb f8 ff                 call   0x2dd160
34d599  48 8b d0                       mov    rdx,rax
34d59c  49 8b cd                       mov    rcx,r13
34d59f  e8 0c 8d f8 ff                 call   0x2d62b0
34d5a4  e8 b7 2c 04 00                 call   0x390260
34d5a9  0f 28 cf                       movaps xmm1,xmm7
34d5ac  0f 57 c0                       xorps  xmm0,xmm0
34d5af  e8 50 d6 04 00                 call   0x39ac04
34d5b4  0f 57 d2                       xorps  xmm2,xmm2
34d5b7  48 8d 4d 70                    lea    rcx,[rbp+0x70]
34d5bb  0f 28 ce                       movaps xmm1,xmm6
34d5be  e8 7d ed f7 ff                 call   0x2cc340
34d5c3  48 8d 55 68                    lea    rdx,[rbp+0x68]
34d5c7  48 8b d8                       mov    rbx,rax
34d5ca  48 8d 4d 68                    lea    rcx,[rbp+0x68]
34d5ce  e8 a1 7d 00 00                 call   0x355374 ; STRING getter=0x355374 No
34d5d3  48 8b c8                       mov    rcx,rax
34d5d6  e8 19 2e fd ff                 call   0x3203f4
34d5db  48 8b c8                       mov    rcx,rax
34d5de  48 8b d3                       mov    rdx,rbx
34d5e1  e8 f2 f1 06 00                 call   0x3bc7d8
34d5e6  84 c0                          test   al,al
34d5e8  74 05                          je     0x34d5ef
34d5ea  e8 71 2c 04 00                 call   0x390260
34d5ef  e8 f4 3a 04 00                 call   0x3910e8
34d5f4  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
34d5f9  e8 f6 ee f7 ff                 call   0x2cc4f4
34d5fe  e8 49 9c 03 00                 call   0x38724c
34d603  48 8d 4d e0                    lea    rcx,[rbp-0x20]
34d607  e8 e8 ee f7 ff                 call   0x2cc4f4
34d60c  4c 8d 9c 24 20 01 00 00        lea    r11,[rsp+0x120]
34d614  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
34d619  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
34d61e  49 8b e3                       mov    rsp,r11
34d621  41 5f                          pop    r15
34d623  41 5e                          pop    r14
34d625  41 5d                          pop    r13
34d627  5f                             pop    rdi
34d628  5e                             pop    rsi
34d629  5b                             pop    rbx
34d62a  5d                             pop    rbp
34d62b  c3                             ret
