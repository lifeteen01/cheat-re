; pdata function 0x384df0..0x3853b0 unwind=0x3d4528
384df0  48 8b c4                       mov    rax,rsp
384df3  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
384df7  55                             push   rbp
384df8  56                             push   rsi
384df9  57                             push   rdi
384dfa  41 54                          push   r12
384dfc  41 55                          push   r13
384dfe  41 56                          push   r14
384e00  41 57                          push   r15
384e02  48 8d 6c 24 80                 lea    rbp,[rsp-0x80]
384e07  48 81 ec 80 01 00 00           sub    rsp,0x180
384e0e  48 8b 1d 13 0d 08 00           mov    rbx,QWORD PTR [rip+0x80d13]        # 0x405b28
384e15  45 8a e9                       mov    r13b,r9b
384e18  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
384e1c  4c 8b fa                       mov    r15,rdx
384e1f  0f 29 78 a8                    movaps XMMWORD PTR [rax-0x58],xmm7
384e23  66 49 0f 6e f0                 movq   xmm6,r8
384e28  44 0f 29 40 98                 movaps XMMWORD PTR [rax-0x68],xmm8
384e2d  4c 8b f1                       mov    r14,rcx
384e30  44 0f 29 48 88                 movaps XMMWORD PTR [rax-0x78],xmm9
384e35  44 0f 29 90 78 ff ff ff        movaps XMMWORD PTR [rax-0x88],xmm10
384e3d  f3 44 0f 10 15 ee ff f0 ff     movss  xmm10,DWORD PTR [rip+0xfffffffffff0ffee]        # 0x294e34 ; f32=0.99
384e46  44 0f 2f 15 aa 72 07 00        comiss xmm10,DWORD PTR [rip+0x772aa]        # 0x3fc0f8
384e4e  44 0f 29 98 68 ff ff ff        movaps XMMWORD PTR [rax-0x98],xmm11
384e56  44 0f 29 b0 58 ff ff ff        movaps XMMWORD PTR [rax-0xa8],xmm14
384e5e  f2 0f 11 74 24 60              movsd  QWORD PTR [rsp+0x60],xmm6
384e64  77 0c                          ja     0x384e72
384e66  33 f6                          xor    esi,esi
384e68  44 0f 2f 15 8c 72 07 00        comiss xmm10,DWORD PTR [rip+0x7728c]        # 0x3fc0fc
384e70  76 05                          jbe    0x384e77
384e72  be 08 00 00 00                 mov    esi,0x8
384e77  45 32 c0                       xor    r8b,r8b
384e7a  ba 65 14 00 00                 mov    edx,0x1465
384e7f  49 8b cf                       mov    rcx,r15
384e82  e8 05 c4 ff ff                 call   0x38128c
384e87  0f 57 d2                       xorps  xmm2,xmm2
384e8a  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
384e8f  0f 57 c9                       xorps  xmm1,xmm1
384e92  4c 8b e0                       mov    r12,rax
384e95  45 0f 57 c9                    xorps  xmm9,xmm9
384e99  e8 a2 74 f4 ff                 call   0x2cc340
384e9e  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
384ea3  b9 02 00 00 00                 mov    ecx,0x2
384ea8  e8 b3 3d 01 00                 call   0x398c60
384ead  e8 82 e0 00 00                 call   0x392f34
384eb2  f3 44 0f 10 05 95 83 f0 ff     movss  xmm8,DWORD PTR [rip+0xfffffffffff08395]        # 0x28d250 ; f32=0.5
384ebb  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
384ec0  f3 0f 10 0d 20 40 ec ff        movss  xmm1,DWORD PTR [rip+0xffffffffffec4020]        # 0x248ee8 ; f32=1
384ec8  0f 28 d0                       movaps xmm2,xmm0
384ecb  f3 0f 10 83 1c 38 00 00        movss  xmm0,DWORD PTR [rbx+0x381c]
384ed3  0f 57 db                       xorps  xmm3,xmm3
384ed6  f3 0f 59 0d 42 8c f0 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff08c42]        # 0x28db20 ; f32=20
384ede  66 48 0f 7e f2                 movq   rdx,xmm6
384ee3  f3 41 0f 59 d0                 mulss  xmm2,xmm8
384ee8  f3 41 0f 59 c0                 mulss  xmm0,xmm8
384eed  f3 0f 5c d0                    subss  xmm2,xmm0
384ef1  f3 0f 5c d1                    subss  xmm2,xmm1
384ef5  e8 2a a3 00 00                 call   0x38f224
384efa  49 8b d7                       mov    rdx,r15
384efd  48 8d 4d f0                    lea    rcx,[rbp-0x10]
384f01  48 8b f8                       mov    rdi,rax
384f04  e8 c3 73 f4 ff                 call   0x2cc2cc
384f09  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
384f0e  48 8b d8                       mov    rbx,rax
384f11  48 8d 8d d8 00 00 00           lea    rcx,[rbp+0xd8]
384f18  e8 73 df ff ff                 call   0x382e90 ; STRING getter=0x382e90 main
384f1d  48 8b c8                       mov    rcx,rax
384f20  e8 e7 10 ff ff                 call   0x37600c
384f25  48 8b d0                       mov    rdx,rax
384f28  48 8b cb                       mov    rcx,rbx
384f2b  e8 7c 88 f4 ff                 call   0x2cd7ac
384f30  48 8b c8                       mov    rcx,rax
384f33  e8 b4 88 f4 ff                 call   0x2cd7ec
384f38  83 ce 40                       or     esi,0x40
384f3b  48 8b c8                       mov    rcx,rax
384f3e  44 8b ce                       mov    r9d,esi
384f41  41 b0 01                       mov    r8b,0x1
384f44  48 8b d7                       mov    rdx,rdi
384f47  e8 30 9a 00 00                 call   0x38e97c
384f4c  48 8d 4d f0                    lea    rcx,[rbp-0x10]
384f50  e8 9f 75 f4 ff                 call   0x2cc4f4
384f55  45 84 ed                       test   r13b,r13b
384f58  74 69                          je     0x384fc3
384f5a  45 33 ed                       xor    r13d,r13d
384f5d  45 38 2c 24                    cmp    BYTE PTR [r12],r13b
384f61  75 63                          jne    0x384fc6
384f63  48 63 05 96 71 07 00           movsxd rax,DWORD PTR [rip+0x77196]        # 0x3fc100
384f6a  48 8d 0d 97 71 07 00           lea    rcx,[rip+0x77197]        # 0x3fc108
384f71  48 8b d0                       mov    rdx,rax
384f74  89 45 90                       mov    DWORD PTR [rbp-0x70],eax
384f77  e8 34 18 fb ff                 call   0x3367b0
384f7c  49 8b d6                       mov    rdx,r14
384f7f  8b 48 70                       mov    ecx,DWORD PTR [rax+0x70]
384f82  89 4d 94                       mov    DWORD PTR [rbp-0x6c],ecx
384f85  48 8d 4d 98                    lea    rcx,[rbp-0x68]
384f89  e8 06 f2 f4 ff                 call   0x2d4194
384f8e  49 8b d7                       mov    rdx,r15
384f91  48 8d 4d b8                    lea    rcx,[rbp-0x48]
384f95  e8 32 73 f4 ff                 call   0x2cc2cc
384f9a  48 8d 4d d8                    lea    rcx,[rbp-0x28]
384f9e  e8 b5 f7 f4 ff                 call   0x2d4758
384fa3  48 8d 55 90                    lea    rdx,[rbp-0x70]
384fa7  48 8d 0d 42 3f ec ff           lea    rcx,[rip+0xffffffffffec3f42]        # 0x248ef0
384fae  e8 3d 3a 00 00                 call   0x3889f0
384fb3  48 8d 4d 90                    lea    rcx,[rbp-0x70]
384fb7  e8 28 17 fb ff                 call   0x3366e4
384fbc  41 c6 04 24 01                 mov    BYTE PTR [r12],0x1
384fc1  eb 03                          jmp    0x384fc6
384fc3  45 33 ed                       xor    r13d,r13d
384fc6  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
384fcb  e8 28 df 00 00                 call   0x392ef8
384fd0  e8 5f df 00 00                 call   0x392f34
384fd5  f3 44 0f 10 35 0a 3f ec ff     movss  xmm14,DWORD PTR [rip+0xffffffffffec3f0a]        # 0x248ee8 ; f32=1
384fde  0f 28 f8                       movaps xmm7,xmm0
384fe1  f3 44 0f 59 35 4a 44 f2 ff     mulss  xmm14,DWORD PTR [rip+0xfffffffffff2444a]        # 0x2a9434 ; f32=44
384fea  e8 dd de 00 00                 call   0x392ecc
384fef  48 8b 15 32 0b 08 00           mov    rdx,QWORD PTR [rip+0x80b32]        # 0x405b28
384ff6  b9 08 00 00 00                 mov    ecx,0x8
384ffb  f3 44 0f 10 1d 50 82 f0 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff08250]        # 0x28d254 ; f32=1
385004  48 8b f8                       mov    rdi,rax
385007  41 0f 28 cb                    movaps xmm1,xmm11
38500b  f3 0f 10 b2 fc 37 00 00        movss  xmm6,DWORD PTR [rdx+0x37fc]
385013  e8 80 d2 00 00                 call   0x392298
385018  41 0f 28 d6                    movaps xmm2,xmm14
38501c  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
385021  0f 28 cf                       movaps xmm1,xmm7
385024  8b d8                          mov    ebx,eax
385026  e8 15 73 f4 ff                 call   0x2cc340
38502b  4c 8b c0                       mov    r8,rax
38502e  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
385033  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
385038  e8 9b a9 f6 ff                 call   0x2ef9d8
38503d  4c 8b c0                       mov    r8,rax
385040  c7 44 24 28 30 00 00 00        mov    DWORD PTR [rsp+0x28],0x30
385048  44 8b cb                       mov    r9d,ebx
38504b  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
385051  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
385056  48 8b cf                       mov    rcx,rdi
385059  e8 e6 c1 01 00                 call   0x3a1244
38505e  e8 69 de 00 00                 call   0x392ecc
385063  41 0f 28 cb                    movaps xmm1,xmm11
385067  b9 06 00 00 00                 mov    ecx,0x6
38506c  48 8b f0                       mov    rsi,rax
38506f  e8 24 d2 00 00                 call   0x392298
385074  41 0f 28 d6                    movaps xmm2,xmm14
385078  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
38507d  0f 28 cf                       movaps xmm1,xmm7
385080  8b f8                          mov    edi,eax
385082  e8 b9 72 f4 ff                 call   0x2cc340
385087  4c 8b c0                       mov    r8,rax
38508a  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
38508f  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
385094  e8 3f a9 f6 ff                 call   0x2ef9d8
385099  41 0f 28 d6                    movaps xmm2,xmm14
38509d  48 8d 4d 88                    lea    rcx,[rbp-0x78]
3850a1  f3 0f 5c 15 3f 3e ec ff        subss  xmm2,DWORD PTR [rip+0xffffffffffec3e3f]        # 0x248ee8 ; f32=1
3850a9  0f 57 c9                       xorps  xmm1,xmm1
3850ac  48 8b d8                       mov    rbx,rax
3850af  e8 8c 72 f4 ff                 call   0x2cc340
3850b4  4c 8b c0                       mov    r8,rax
3850b7  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
3850bc  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
3850c1  e8 12 a9 f6 ff                 call   0x2ef9d8
3850c6  48 8b d0                       mov    rdx,rax
3850c9  44 89 6c 24 28                 mov    DWORD PTR [rsp+0x28],r13d
3850ce  44 8b cf                       mov    r9d,edi
3850d1  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
3850d8  4c 8b c3                       mov    r8,rbx
3850db  48 8b ce                       mov    rcx,rsi
3850de  e8 61 c1 01 00                 call   0x3a1244
3850e3  ba 02 00 00 00                 mov    edx,0x2
3850e8  48 8d 0d f1 6f 07 00           lea    rcx,[rip+0x76ff1]        # 0x3fc0e0
3850ef  e8 c4 16 fb ff                 call   0x3367b8
3850f4  f3 0f 10 0d c0 e0 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0e0c0]        # 0x2931bc ; f32=16
3850fc  48 8b c8                       mov    rcx,rax
3850ff  e8 e8 f9 fd ff                 call   0x364aec
385104  f3 44 0f 10 1d 53 e1 f0 ff     movss  xmm11,DWORD PTR [rip+0xfffffffffff0e153]        # 0x293260 ; f32=-1
38510d  4c 8b e0                       mov    r12,rax
385110  49 8b ce                       mov    rcx,r14
385113  48 85 c0                       test   rax,rax
385116  74 42                          je     0x38515a
385118  e8 cf 86 f4 ff                 call   0x2cd7ec
38511d  f3 0f 10 15 c3 3d ec ff        movss  xmm2,DWORD PTR [rip+0xffffffffffec3dc3]        # 0x248ee8 ; f32=1
385125  48 8d 54 24 68                 lea    rdx,[rsp+0x68]
38512a  f3 0f 59 15 8a e0 f0 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff0e08a]        # 0x2931bc ; f32=16
385132  49 8b cc                       mov    rcx,r12
385135  4c 89 6c 24 38                 mov    QWORD PTR [rsp+0x38],r13
38513a  f3 0f 10 1d 12 8a f0 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff08a12]        # 0x28db54
385142  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
385147  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
38514c  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
385153  e8 1c e7 01 00                 call   0x3a3874
385158  eb 1f                          jmp    0x385179
38515a  e8 8d 86 f4 ff                 call   0x2cd7ec
38515f  48 8b d0                       mov    rdx,rax
385162  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
385169  45 33 c9                       xor    r9d,r9d
38516c  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
385171  45 33 c0                       xor    r8d,r8d
385174  e8 23 a6 00 00                 call   0x38f79c
385179  45 33 c9                       xor    r9d,r9d
38517c  f3 44 0f 11 5c 24 20           movss  DWORD PTR [rsp+0x20],xmm11
385183  45 33 c0                       xor    r8d,r8d
385186  48 8d 4d 80                    lea    rcx,[rbp-0x80]
38518a  49 8b d7                       mov    rdx,r15
38518d  e8 0a a6 00 00                 call   0x38f79c
385192  41 0f 28 fe                    movaps xmm7,xmm14
385196  f3 0f 5c 7c 24 6c              subss  xmm7,DWORD PTR [rsp+0x6c]
38519c  f3 44 0f 5c 75 84              subss  xmm14,DWORD PTR [rbp-0x7c]
3851a2  f3 41 0f 59 f8                 mulss  xmm7,xmm8
3851a7  f3 45 0f 59 f0                 mulss  xmm14,xmm8
3851ac  f3 44 0f 10 05 33 3d ec ff     movss  xmm8,DWORD PTR [rip+0xffffffffffec3d33]        # 0x248ee8 ; f32=1
3851b5  f3 0f 58 7c 24 54              addss  xmm7,DWORD PTR [rsp+0x54]
3851bb  f3 44 0f 58 74 24 54           addss  xmm14,DWORD PTR [rsp+0x54]
3851c2  41 0f 28 f0                    movaps xmm6,xmm8
3851c6  f3 44 0f 59 05 5d 42 f2 ff     mulss  xmm8,DWORD PTR [rip+0xfffffffffff2425d]        # 0x2a942c ; f32=38
3851cf  f3 0f 59 35 dd df f0 ff        mulss  xmm6,DWORD PTR [rip+0xfffffffffff0dfdd]        # 0x2931b4 ; f32=14
3851d7  f3 44 0f 58 44 24 50           addss  xmm8,DWORD PTR [rsp+0x50]
3851de  f3 0f 58 74 24 50              addss  xmm6,DWORD PTR [rsp+0x50]
3851e4  e8 e3 dc 00 00                 call   0x392ecc
3851e9  49 8b ce                       mov    rcx,r14
3851ec  48 8b f0                       mov    rsi,rax
3851ef  e8 f8 85 f4 ff                 call   0x2cd7ec
3851f4  f3 0f 10 0d 58 80 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff08058]        # 0x28d254 ; f32=1
3851fc  33 c9                          xor    ecx,ecx
3851fe  48 8b f8                       mov    rdi,rax
385201  e8 92 d0 00 00                 call   0x392298
385206  0f 28 d7                       movaps xmm2,xmm7
385209  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
38520e  0f 28 ce                       movaps xmm1,xmm6
385211  8b d8                          mov    ebx,eax
385213  e8 28 71 f4 ff                 call   0x2cc340
385218  f3 0f 10 15 c8 3c ec ff        movss  xmm2,DWORD PTR [rip+0xffffffffffec3cc8]        # 0x248ee8 ; f32=1
385220  4c 8b c8                       mov    r9,rax
385223  f3 0f 59 15 91 df f0 ff        mulss  xmm2,DWORD PTR [rip+0xfffffffffff0df91]        # 0x2931bc ; f32=16
38522b  49 8b d4                       mov    rdx,r12
38522e  4c 89 6c 24 40                 mov    QWORD PTR [rsp+0x40],r13
385233  48 8b ce                       mov    rcx,rsi
385236  f3 44 0f 11 4c 24 38           movss  DWORD PTR [rsp+0x38],xmm9
38523d  4c 89 6c 24 30                 mov    QWORD PTR [rsp+0x30],r13
385242  48 89 7c 24 28                 mov    QWORD PTR [rsp+0x28],rdi
385247  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
38524b  e8 a8 df 01 00                 call   0x3a31f8
385250  e8 77 dc 00 00                 call   0x392ecc
385255  33 d2                          xor    edx,edx
385257  49 8b cf                       mov    rcx,r15
38525a  48 8b f0                       mov    rsi,rax
38525d  e8 ee c9 00 00                 call   0x391c50
385262  f3 0f 10 0d ea 7f f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff07fea]        # 0x28d254 ; f32=1
38526a  41 bc 01 00 00 00              mov    r12d,0x1
385270  41 8b cc                       mov    ecx,r12d
385273  48 8b f8                       mov    rdi,rax
385276  e8 1d d0 00 00                 call   0x392298
38527b  41 0f 28 d6                    movaps xmm2,xmm14
38527f  48 8d 4c 24 78                 lea    rcx,[rsp+0x78]
385284  41 0f 28 c8                    movaps xmm1,xmm8
385288  8b d8                          mov    ebx,eax
38528a  e8 b1 70 f4 ff                 call   0x2cc340
38528f  48 8b d0                       mov    rdx,rax
385292  48 89 7c 24 20                 mov    QWORD PTR [rsp+0x20],rdi
385297  4d 8b cf                       mov    r9,r15
38529a  44 8b c3                       mov    r8d,ebx
38529d  48 8b ce                       mov    rcx,rsi
3852a0  e8 17 df 01 00                 call   0x3a31bc
3852a5  44 0f 2f 15 4b 6e 07 00        comiss xmm10,DWORD PTR [rip+0x76e4b]        # 0x3fc0f8
3852ad  77 0f                          ja     0x3852be
3852af  44 0f 2f 15 45 6e 07 00        comiss xmm10,DWORD PTR [rip+0x76e45]        # 0x3fc0fc
3852b7  bb 80 00 01 00                 mov    ebx,0x10080
3852bc  76 05                          jbe    0x3852c3
3852be  bb 88 00 01 00                 mov    ebx,0x10088
3852c3  f3 0f 10 05 1d 3c ec ff        movss  xmm0,DWORD PTR [rip+0xffffffffffec3c1d]        # 0x248ee8 ; f32=1
3852cb  f3 0f 59 05 61 41 f2 ff        mulss  xmm0,DWORD PTR [rip+0xfffffffffff24161]        # 0x2a9434 ; f32=44
3852d3  e8 74 61 01 00                 call   0x39b44c
3852d8  f3 0f 10 0d 08 3c ec ff        movss  xmm1,DWORD PTR [rip+0xffffffffffec3c08]        # 0x248ee8 ; f32=1
3852e0  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
3852e5  f3 0f 59 0d c7 de f0 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff0dec7]        # 0x2931b4 ; f32=14
3852ed  0f 28 d1                       movaps xmm2,xmm1
3852f0  e8 4b 70 f4 ff                 call   0x2cc340
3852f5  48 8d 54 24 58                 lea    rdx,[rsp+0x58]
3852fa  b9 02 00 00 00                 mov    ecx,0x2
3852ff  e8 5c 39 01 00                 call   0x398c60
385304  f3 0f 10 54 24 64              movss  xmm2,DWORD PTR [rsp+0x64]
38530a  41 0f 2e d1                    ucomiss xmm2,xmm9
38530e  7a 02                          jp     0x385312
385310  74 04                          je     0x385316
385312  41 0f 28 d3                    movaps xmm2,xmm11
385316  0f 57 c9                       xorps  xmm1,xmm1
385319  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
38531e  e8 1d 70 f4 ff                 call   0x2cc340
385323  44 8b cb                       mov    r9d,ebx
385326  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
38532b  45 33 c0                       xor    r8d,r8d
38532e  49 8b cf                       mov    rcx,r15
385331  e8 46 96 00 00                 call   0x38e97c
385336  41 8b cc                       mov    ecx,r12d
385339  e8 2e 36 01 00                 call   0x39896c
38533e  f3 0f 10 0d a2 3b ec ff        movss  xmm1,DWORD PTR [rip+0xffffffffffec3ba2]        # 0x248ee8 ; f32=1
385346  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
38534b  f3 0f 59 0d 61 de f0 ff        mulss  xmm1,DWORD PTR [rip+0xfffffffffff0de61]        # 0x2931b4 ; f32=14
385353  0f 28 d1                       movaps xmm2,xmm1
385356  e8 e5 6f f4 ff                 call   0x2cc340
38535b  48 8d 54 24 60                 lea    rdx,[rsp+0x60]
385360  b9 0e 00 00 00                 mov    ecx,0xe
385365  e8 f6 38 01 00                 call   0x398c60
38536a  49 8b ce                       mov    rcx,r14
38536d  e8 82 71 f4 ff                 call   0x2cc4f4
385372  4c 8d 9c 24 80 01 00 00        lea    r11,[rsp+0x180]
38537a  49 8b 5b 40                    mov    rbx,QWORD PTR [r11+0x40]
38537e  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
385383  41 0f 28 7b e0                 movaps xmm7,XMMWORD PTR [r11-0x20]
385388  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
38538d  45 0f 28 4b c0                 movaps xmm9,XMMWORD PTR [r11-0x40]
385392  45 0f 28 53 b0                 movaps xmm10,XMMWORD PTR [r11-0x50]
385397  45 0f 28 5b a0                 movaps xmm11,XMMWORD PTR [r11-0x60]
38539c  45 0f 28 73 90                 movaps xmm14,XMMWORD PTR [r11-0x70]
3853a1  49 8b e3                       mov    rsp,r11
3853a4  41 5f                          pop    r15
3853a6  41 5e                          pop    r14
3853a8  41 5d                          pop    r13
3853aa  41 5c                          pop    r12
3853ac  5f                             pop    rdi
3853ad  5e                             pop    rsi
3853ae  5d                             pop    rbp
3853af  c3                             ret

