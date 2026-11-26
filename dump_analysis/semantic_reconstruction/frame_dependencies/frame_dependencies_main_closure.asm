; pdata function 0x37ca80..0x37caab unwind=0x3d23fc
37ca80  48 83 ec 38                    sub    rsp,0x38
37ca84  0f 29 74 24 20                 movaps XMMWORD PTR [rsp+0x20],xmm6
37ca89  48 8d 54 24 50                 lea    rdx,[rsp+0x50]
37ca8e  0f 28 f1                       movaps xmm6,xmm1
37ca91  e8 aa be ff ff                 call   0x378940
37ca96  48 8b c8                       mov    rcx,rax
37ca99  0f 28 ce                       movaps xmm1,xmm6
37ca9c  e8 9f 80 01 00                 call   0x394b40
37caa1  0f 28 74 24 20                 movaps xmm6,XMMWORD PTR [rsp+0x20]
37caa6  48 83 c4 38                    add    rsp,0x38
37caaa  c3                             ret

; pdata function 0x3788f4..0x378931 unwind=0x3d2038
3788f4  40 53                          rex push rbx
3788f6  48 83 ec 20                    sub    rsp,0x20
3788fa  f3 0f 10 51 0c                 movss  xmm2,DWORD PTR [rcx+0xc]
3788ff  48 8b da                       mov    rbx,rdx
378902  f3 0f 10 49 08                 movss  xmm1,DWORD PTR [rcx+0x8]
378907  f3 0f 58 51 04                 addss  xmm2,DWORD PTR [rcx+0x4]
37890c  f3 0f 58 09                    addss  xmm1,DWORD PTR [rcx]
378910  f3 0f 10 05 38 49 f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff14938]        # 0x28d250 ; f32=0.5
378918  48 8b ca                       mov    rcx,rdx
37891b  f3 0f 59 d0                    mulss  xmm2,xmm0
37891f  f3 0f 59 c8                    mulss  xmm1,xmm0
378923  e8 18 3a f5 ff                 call   0x2cc340
378928  48 8b c3                       mov    rax,rbx
37892b  48 83 c4 20                    add    rsp,0x20
37892f  5b                             pop    rbx
378930  c3                             ret

; heuristic leaf/code range 0x33565c..0x33566c unwind=0x0
33565c  f3 0f 5c c8                    subss  xmm1,xmm0
335660  f3 0f 59 ca                    mulss  xmm1,xmm2
335664  f3 0f 58 c8                    addss  xmm1,xmm0
335668  0f 28 c1                       movaps xmm0,xmm1
33566b  c3                             ret

; pdata function 0x3364d4..0x336559 unwind=0x3d2040
3364d4  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
3364d9  57                             push   rdi
3364da  48 83 ec 20                    sub    rsp,0x20
3364de  8b da                          mov    ebx,edx
3364e0  48 8b f9                       mov    rdi,rcx
3364e3  e8 b8 4e fa ff                 call   0x2db3a0
3364e8  f3 0f 10 0d f0 71 f5 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff571f0]        # 0x28d6e0 ; f32=0.00392157
3364f0  0f 57 c0                       xorps  xmm0,xmm0
3364f3  0f b6 c3                       movzx  eax,bl
3364f6  f3 48 0f 2a c0                 cvtsi2ss xmm0,rax
3364fb  8b c3                          mov    eax,ebx
3364fd  c1 e8 08                       shr    eax,0x8
336500  0f b6 c0                       movzx  eax,al
336503  f3 0f 59 c1                    mulss  xmm0,xmm1
336507  f3 0f 11 07                    movss  DWORD PTR [rdi],xmm0
33650b  0f 57 c0                       xorps  xmm0,xmm0
33650e  f3 48 0f 2a c0                 cvtsi2ss xmm0,rax
336513  8b c3                          mov    eax,ebx
336515  c1 e8 10                       shr    eax,0x10
336518  0f b6 c0                       movzx  eax,al
33651b  c1 eb 18                       shr    ebx,0x18
33651e  f3 0f 59 c1                    mulss  xmm0,xmm1
336522  f3 0f 11 47 04                 movss  DWORD PTR [rdi+0x4],xmm0
336527  0f 57 c0                       xorps  xmm0,xmm0
33652a  f3 48 0f 2a c0                 cvtsi2ss xmm0,rax
33652f  8b c3                          mov    eax,ebx
336531  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
336536  f3 0f 59 c1                    mulss  xmm0,xmm1
33653a  f3 0f 11 47 08                 movss  DWORD PTR [rdi+0x8],xmm0
33653f  0f 57 c0                       xorps  xmm0,xmm0
336542  f3 48 0f 2a c0                 cvtsi2ss xmm0,rax
336547  48 8b c7                       mov    rax,rdi
33654a  f3 0f 59 c1                    mulss  xmm0,xmm1
33654e  f3 0f 11 47 0c                 movss  DWORD PTR [rdi+0xc],xmm0
336553  48 83 c4 20                    add    rsp,0x20
336557  5f                             pop    rdi
336558  c3                             ret

; heuristic leaf/code range 0x2ef80c..0x2ef814 unwind=0x0
2ef80c  e9 4b 0c 0a 00                 jmp    0x39045c
2ef811  cc                             int3
2ef812  cc                             int3
2ef813  cc                             int3

; heuristic leaf/code range 0x37ee9c..0x37eebd unwind=0x0
37ee9c  48 8b 44 24 28                 mov    rax,QWORD PTR [rsp+0x28]
37eea1  48 89 41 18                    mov    QWORD PTR [rcx+0x18],rax
37eea5  48 8b 44 24 30                 mov    rax,QWORD PTR [rsp+0x30]
37eeaa  48 89 41 20                    mov    QWORD PTR [rcx+0x20],rax
37eeae  48 8b c1                       mov    rax,rcx
37eeb1  48 89 11                       mov    QWORD PTR [rcx],rdx
37eeb4  4c 89 41 08                    mov    QWORD PTR [rcx+0x8],r8
37eeb8  4c 89 49 10                    mov    QWORD PTR [rcx+0x10],r9
37eebc  c3                             ret

; pdata function 0x37eff0..0x37f88a unwind=0x3d4374
37eff0  48 8b c4                       mov    rax,rsp
37eff3  55                             push   rbp
37eff4  53                             push   rbx
37eff5  56                             push   rsi
37eff6  57                             push   rdi
37eff7  41 54                          push   r12
37eff9  41 56                          push   r14
37effb  41 57                          push   r15
37effd  48 8d a8 38 ff ff ff           lea    rbp,[rax-0xc8]
37f004  48 81 ec 90 01 00 00           sub    rsp,0x190
37f00b  0f 29 70 b8                    movaps XMMWORD PTR [rax-0x48],xmm6
37f00f  4c 8b fa                       mov    r15,rdx
37f012  44 0f 29 48 a8                 movaps XMMWORD PTR [rax-0x58],xmm9
37f017  4c 8b e1                       mov    r12,rcx
37f01a  44 0f 29 50 98                 movaps XMMWORD PTR [rax-0x68],xmm10
37f01f  e8 f8 67 f9 ff                 call   0x31581c
37f024  f3 41 0f 10 4f 24              movss  xmm1,DWORD PTR [r15+0x24]
37f02a  45 0f 57 d2                    xorps  xmm10,xmm10
37f02e  0f 28 f1                       movaps xmm6,xmm1
37f031  f3 0f 5c f0                    subss  xmm6,xmm0
37f035  0f 2f 35 44 41 f1 ff           comiss xmm6,DWORD PTR [rip+0xfffffffffff14144]        # 0x293180 ; f32=5
37f03c  76 1a                          jbe    0x37f058
37f03e  f3 0f 5c 0d 42 41 f1 ff        subss  xmm1,DWORD PTR [rip+0xfffffffffff14142]        # 0x293188 ; f32=6
37f046  f3 0f 10 35 06 e2 f0 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff0e206]        # 0x28d254 ; f32=1
37f04e  f3 0f 5c c1                    subss  xmm0,xmm1
37f052  f3 0f 5d f0                    minss  xmm6,xmm0
37f056  eb 1b                          jmp    0x37f073
37f058  41 0f 2f f2                    comiss xmm6,xmm10
37f05c  76 12                          jbe    0x37f070
37f05e  f3 0f 10 05 22 41 f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff14122]        # 0x293188 ; f32=6
37f066  f3 0f 59 f0                    mulss  xmm6,xmm0
37f06a  f3 0f 5e f0                    divss  xmm6,xmm0
37f06e  eb 03                          jmp    0x37f073
37f070  0f 57 f6                       xorps  xmm6,xmm6
37f073  48 8d 95 d0 00 00 00           lea    rdx,[rbp+0xd0]
37f07a  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f081  e8 56 ff ff ff                 call   0x37efdc
37f086  48 8b c8                       mov    rcx,rax
37f089  e8 da af ff ff                 call   0x37a068
37f08e  48 8b d0                       mov    rdx,rax
37f091  48 8d 4d a0                    lea    rcx,[rbp-0x60]
37f095  e8 32 d2 f4 ff                 call   0x2cc2cc
37f09a  48 8d 95 d0 00 00 00           lea    rdx,[rbp+0xd0]
37f0a1  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f0a8  e8 df 07 00 00                 call   0x37f88c ; STRING getter=0x37f88c ERROR
37f0ad  48 8b c8                       mov    rcx,rax
37f0b0  e8 8b af ff ff                 call   0x37a040
37f0b5  48 8b d0                       mov    rdx,rax
37f0b8  48 8d 4d c0                    lea    rcx,[rbp-0x40]
37f0bc  e8 0b d2 f4 ff                 call   0x2cc2cc
37f0c1  48 8d 95 d0 00 00 00           lea    rdx,[rbp+0xd0]
37f0c8  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f0cf  e8 d0 07 00 00                 call   0x37f8a4 ; STRING getter=0x37f8a4 INFO
37f0d4  48 8b c8                       mov    rcx,rax
37f0d7  e8 30 6f ff ff                 call   0x37600c
37f0dc  48 8b d0                       mov    rdx,rax
37f0df  48 8d 4d e0                    lea    rcx,[rbp-0x20]
37f0e3  e8 e4 d1 f4 ff                 call   0x2cc2cc
37f0e8  48 8d 95 d0 00 00 00           lea    rdx,[rbp+0xd0]
37f0ef  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f0f6  e8 4d 16 fd ff                 call   0x350748 ; STRING getter=0x350748 I
37f0fb  48 8b c8                       mov    rcx,rax
37f0fe  e8 c5 ae ff ff                 call   0x379fc8
37f103  48 8b d0                       mov    rdx,rax
37f106  48 8d 4d 00                    lea    rcx,[rbp+0x0]
37f10a  e8 bd d1 f4 ff                 call   0x2cc2cc
37f10f  48 8d 95 d0 00 00 00           lea    rdx,[rbp+0xd0]
37f116  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f11d  e8 26 16 fd ff                 call   0x350748 ; STRING getter=0x350748 I
37f122  48 8b c8                       mov    rcx,rax
37f125  e8 9e ae ff ff                 call   0x379fc8
37f12a  48 8b d0                       mov    rdx,rax
37f12d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
37f131  e8 96 d1 f4 ff                 call   0x2cc2cc
37f136  48 8d 95 d0 00 00 00           lea    rdx,[rbp+0xd0]
37f13d  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f144  e8 ff 15 fd ff                 call   0x350748 ; STRING getter=0x350748 I
37f149  48 8b c8                       mov    rcx,rax
37f14c  e8 77 ae ff ff                 call   0x379fc8
37f151  48 8b d0                       mov    rdx,rax
37f154  48 8d 4d 40                    lea    rcx,[rbp+0x40]
37f158  e8 6f d1 f4 ff                 call   0x2cc2cc
37f15d  e8 42 3b 01 00                 call   0x392ca4
37f162  f3 0f 10 15 ea e0 f0 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff0e0ea]        # 0x28d254 ; f32=1
37f16a  0f 57 c9                       xorps  xmm1,xmm1
37f16d  0f 28 c6                       movaps xmm0,xmm6
37f170  e8 47 71 ff ff                 call   0x3762bc
37f175  f3 0f 10 25 67 e5 f0 ff        movss  xmm4,DWORD PTR [rip+0xfffffffffff0e567]        # 0x28d6e4 ; f32=255
37f17d  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
37f182  f3 0f 10 88 f0 00 00 00        movss  xmm1,DWORD PTR [rax+0xf0]
37f18a  0f 28 d8                       movaps xmm3,xmm0
37f18d  f3 0f 10 90 ec 00 00 00        movss  xmm2,DWORD PTR [rax+0xec]
37f195  0f 28 f0                       movaps xmm6,xmm0
37f198  f3 0f 59 cc                    mulss  xmm1,xmm4
37f19c  f3 0f 59 dc                    mulss  xmm3,xmm4
37f1a0  f3 44 0f 2c c9                 cvttss2si r9d,xmm1
37f1a5  f3 0f 10 88 e8 00 00 00        movss  xmm1,DWORD PTR [rax+0xe8]
37f1ad  f3 0f 59 cc                    mulss  xmm1,xmm4
37f1b1  f3 0f 59 d4                    mulss  xmm2,xmm4
37f1b5  f3 0f 2c db                    cvttss2si ebx,xmm3
37f1b9  f3 0f 2c d1                    cvttss2si edx,xmm1
37f1bd  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
37f1c1  f3 44 0f 2c c2                 cvttss2si r8d,xmm2
37f1c6  e8 4d c1 f5 ff                 call   0x2db318
37f1cb  be 37 00 00 00                 mov    esi,0x37
37f1d0  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
37f1d4  bf c2 00 00 00                 mov    edi,0xc2
37f1d9  48 8d 4d 80                    lea    rcx,[rbp-0x80]
37f1dd  44 8b ce                       mov    r9d,esi
37f1e0  44 8b c6                       mov    r8d,esi
37f1e3  8b d7                          mov    edx,edi
37f1e5  e8 2e c1 f5 ff                 call   0x2db318
37f1ea  44 8b cf                       mov    r9d,edi
37f1ed  89 5c 24 20                    mov    DWORD PTR [rsp+0x20],ebx
37f1f1  44 8d 46 1f                    lea    r8d,[rsi+0x1f]
37f1f5  8b d6                          mov    edx,esi
37f1f7  48 8d 4d 90                    lea    rcx,[rbp-0x70]
37f1fb  e8 18 c1 f5 ff                 call   0x2db318
37f200  49 8b cf                       mov    rcx,r15
37f203  e8 e4 e5 f4 ff                 call   0x2cd7ec
37f208  f3 44 0f 10 0d 4f 40 f1 ff     movss  xmm9,DWORD PTR [rip+0xfffffffffff1404f]        # 0x293260 ; f32=-1
37f211  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f218  48 8b d0                       mov    rdx,rax
37f21b  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f222  45 33 c9                       xor    r9d,r9d
37f225  45 33 c0                       xor    r8d,r8d
37f228  e8 6f 05 01 00                 call   0x38f79c
37f22d  49 63 4f 20                    movsxd rcx,DWORD PTR [r15+0x20]
37f231  48 8b d8                       mov    rbx,rax
37f234  48 c1 e1 05                    shl    rcx,0x5
37f238  48 8d 45 a0                    lea    rax,[rbp-0x60]
37f23c  48 03 c8                       add    rcx,rax
37f23f  e8 a8 e5 f4 ff                 call   0x2cd7ec
37f244  48 8b d0                       mov    rdx,rax
37f247  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f24e  45 33 c9                       xor    r9d,r9d
37f251  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f258  45 33 c0                       xor    r8d,r8d
37f25b  e8 3c 05 01 00                 call   0x38f79c
37f260  f3 0f 10 0d 80 ef f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0ef80]        # 0x28e1e8 ; f32=300
37f268  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f26f  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
37f274  f3 0f 58 15 b0 a0 f2 ff        addss  xmm2,DWORD PTR [rip+0xfffffffffff2a0b0]        # 0x2a932c ; f32=37
37f27c  f3 0f 58 53 04                 addss  xmm2,DWORD PTR [rbx+0x4]
37f281  e8 ba d0 f4 ff                 call   0x2cc340
37f286  49 8b 44 24 08                 mov    rax,QWORD PTR [r12+0x8]
37f28b  48 8d 4c 24 58                 lea    rcx,[rsp+0x58]
37f290  f3 0f 10 48 04                 movss  xmm1,DWORD PTR [rax+0x4]
37f295  f3 0f 10 00                    movss  xmm0,DWORD PTR [rax]
37f299  49 8b 44 24 10                 mov    rax,QWORD PTR [r12+0x10]
37f29e  f3 0f 11 4c 24 54              movss  DWORD PTR [rsp+0x54],xmm1
37f2a4  f3 0f 11 44 24 50              movss  DWORD PTR [rsp+0x50],xmm0
37f2aa  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
37f2ae  f3 0f 5c 8d d0 00 00 00        subss  xmm1,DWORD PTR [rbp+0xd0]
37f2b6  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
37f2bb  e8 80 d0 f4 ff                 call   0x2cc340
37f2c0  49 8b 54 24 18                 mov    rdx,QWORD PTR [r12+0x18]
37f2c5  4c 8d 85 d0 00 00 00           lea    r8,[rbp+0xd0]
37f2cc  48 8d 4c 24 60                 lea    rcx,[rsp+0x60]
37f2d1  e8 0e 75 fb ff                 call   0x3367e4
37f2d6  49 8b 44 24 20                 mov    rax,QWORD PTR [r12+0x20]
37f2db  48 8d 4c 24 68                 lea    rcx,[rsp+0x68]
37f2e0  f3 0f 10 50 04                 movss  xmm2,DWORD PTR [rax+0x4]
37f2e5  f3 0f 5c 95 d4 00 00 00        subss  xmm2,DWORD PTR [rbp+0xd4]
37f2ed  f3 0f 10 08                    movss  xmm1,DWORD PTR [rax]
37f2f1  e8 4a d0 f4 ff                 call   0x2cc340
37f2f6  49 63 47 28                    movsxd rax,DWORD PTR [r15+0x28]
37f2fa  4c 8d 85 d0 00 00 00           lea    r8,[rbp+0xd0]
37f301  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f308  48 8d 8d e0 00 00 00           lea    rcx,[rbp+0xe0]
37f30f  f2 0f 10 44 c4 50              movsd  xmm0,QWORD PTR [rsp+rax*8+0x50]
37f315  f2 0f 11 85 d8 00 00 00        movsd  QWORD PTR [rbp+0xd8],xmm0
37f31d  e8 b6 06 f7 ff                 call   0x2ef9d8
37f322  49 8b 04 24                    mov    rax,QWORD PTR [r12]
37f326  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
37f32b  f3 0f 10 1d f1 9f f2 ff        movss  xmm3,DWORD PTR [rip+0xfffffffffff29ff1]        # 0x2a9324 ; f32=0.164706
37f333  f3 0f 10 15 ed 9f f2 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff29fed]        # 0x2a9328 ; f32=0.172549
37f33b  f3 0f 10 0d dd 9f f2 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff29fdd]        # 0x2a9320 ; f32=0.160784
37f343  48 8b 18                       mov    rbx,QWORD PTR [rax]
37f346  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
37f34c  e8 fb 54 f5 ff                 call   0x2d484c
37f351  48 8b c8                       mov    rcx,rax
37f354  e8 b3 04 f7 ff                 call   0x2ef80c
37f359  f3 0f 10 05 17 3e f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff13e17]        # 0x293178 ; f32=4
37f361  4c 8d 85 e0 00 00 00           lea    r8,[rbp+0xe0]
37f368  44 8b c8                       mov    r9d,eax
37f36b  c7 44 24 28 00 00 00 00        mov    DWORD PTR [rsp+0x28],0x0
37f373  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f37a  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
37f380  48 8b cb                       mov    rcx,rbx
37f383  e8 bc 1e 02 00                 call   0x3a1244
37f388  49 8b 0c 24                    mov    rcx,QWORD PTR [r12]
37f38c  4c 8d 85 e0 00 00 00           lea    r8,[rbp+0xe0]
37f393  41 b1 01                       mov    r9b,0x1
37f396  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f39d  48 8b 09                       mov    rcx,QWORD PTR [rcx]
37f3a0  e8 c3 7e 02 00                 call   0x3a7268
37f3a5  49 8b 04 24                    mov    rax,QWORD PTR [r12]
37f3a9  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f3b0  0f 57 d2                       xorps  xmm2,xmm2
37f3b3  0f 57 c9                       xorps  xmm1,xmm1
37f3b6  48 8b 38                       mov    rdi,QWORD PTR [rax]
37f3b9  e8 82 cf f4 ff                 call   0x2cc340
37f3be  49 63 47 20                    movsxd rax,DWORD PTR [r15+0x20]
37f3c2  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
37f3c7  48 c1 e0 04                    shl    rax,0x4
37f3cb  48 03 c8                       add    rcx,rax
37f3ce  e8 39 04 f7 ff                 call   0x2ef80c
37f3d3  f3 0f 10 0d 45 e7 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0e745]        # 0x28db20 ; f32=20
37f3db  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f3e2  0f 28 d1                       movaps xmm2,xmm1
37f3e5  8b d8                          mov    ebx,eax
37f3e7  e8 54 cf f4 ff                 call   0x2cc340
37f3ec  4c 8b c0                       mov    r8,rax
37f3ef  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f3f6  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
37f3fb  e8 d8 05 f7 ff                 call   0x2ef9d8
37f400  f3 0f 10 05 28 3e f1 ff        movss  xmm0,DWORD PTR [rip+0xfffffffffff13e28]        # 0x293230 ; f32=200
37f408  48 8b d0                       mov    rdx,rax
37f40b  f3 0f 10 15 a5 3d f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff13da5]        # 0x2931b8 ; f32=15
37f413  48 8d 85 d0 00 00 00           lea    rax,[rbp+0xd0]
37f41a  c7 44 24 38 0c 00 00 00        mov    DWORD PTR [rsp+0x38],0xc
37f422  44 8b cb                       mov    r9d,ebx
37f425  c7 44 24 30 00 00 00 00        mov    DWORD PTR [rsp+0x30],0x0
37f42d  48 8b cf                       mov    rcx,rdi
37f430  48 89 44 24 28                 mov    QWORD PTR [rsp+0x28],rax
37f435  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
37f43b  e8 d0 1f 02 00                 call   0x3a1410
37f440  49 8b 0c 24                    mov    rcx,QWORD PTR [r12]
37f444  48 8b 09                       mov    rcx,QWORD PTR [rcx]
37f447  e8 e8 79 02 00                 call   0x3a6e34
37f44c  49 8b 04 24                    mov    rax,QWORD PTR [r12]
37f450  48 8d 4d 00                    lea    rcx,[rbp+0x0]
37f454  49 63 5f 20                    movsxd rbx,DWORD PTR [r15+0x20]
37f458  4c 8b 30                       mov    r14,QWORD PTR [rax]
37f45b  48 8b c3                       mov    rax,rbx
37f45e  48 c1 e0 05                    shl    rax,0x5
37f462  48 03 c8                       add    rcx,rax
37f465  e8 82 e3 f4 ff                 call   0x2cd7ec
37f46a  48 8d 4c 24 70                 lea    rcx,[rsp+0x70]
37f46f  48 c1 e3 04                    shl    rbx,0x4
37f473  48 03 cb                       add    rcx,rbx
37f476  48 8b f0                       mov    rsi,rax
37f479  e8 8e 03 f7 ff                 call   0x2ef80c
37f47e  f3 0f 10 15 2e 3d f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff13d2e]        # 0x2931b4 ; f32=14
37f486  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f48d  f3 0f 10 0d 27 3d f1 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff13d27]        # 0x2931bc ; f32=16
37f495  8b f8                          mov    edi,eax
37f497  e8 a4 ce f4 ff                 call   0x2cc340
37f49c  4c 8b c0                       mov    r8,rax
37f49f  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f4a6  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f4ad  e8 26 05 f7 ff                 call   0x2ef9d8
37f4b2  ba 02 00 00 00                 mov    edx,0x2
37f4b7  48 8d 0d 22 cc 07 00           lea    rcx,[rip+0x7cc22]        # 0x3fc0e0
37f4be  48 8b d8                       mov    rbx,rax
37f4c1  e8 f2 72 fb ff                 call   0x3367b8
37f4c6  f3 0f 10 0d ee 3c f1 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff13cee]        # 0x2931bc ; f32=16
37f4ce  48 8b c8                       mov    rcx,rax
37f4d1  e8 16 56 fe ff                 call   0x364aec
37f4d6  f3 0f 10 15 de 3c f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff13cde]        # 0x2931bc ; f32=16
37f4de  48 8b d0                       mov    rdx,rax
37f4e1  48 c7 44 24 40 00 00 00 00     mov    QWORD PTR [rsp+0x40],0x0
37f4ea  4c 8b cb                       mov    r9,rbx
37f4ed  f3 44 0f 11 54 24 38           movss  DWORD PTR [rsp+0x38],xmm10
37f4f4  49 8b ce                       mov    rcx,r14
37f4f7  48 c7 44 24 30 00 00 00 00     mov    QWORD PTR [rsp+0x30],0x0
37f500  48 89 74 24 28                 mov    QWORD PTR [rsp+0x28],rsi
37f505  89 7c 24 20                    mov    DWORD PTR [rsp+0x20],edi
37f509  e8 ea 3c 02 00                 call   0x3a31f8
37f50e  49 8b 04 24                    mov    rax,QWORD PTR [r12]
37f512  48 8d 4d a0                    lea    rcx,[rbp-0x60]
37f516  48 8b 30                       mov    rsi,QWORD PTR [rax]
37f519  49 63 47 20                    movsxd rax,DWORD PTR [r15+0x20]
37f51d  48 c1 e0 05                    shl    rax,0x5
37f521  48 03 c8                       add    rcx,rax
37f524  e8 c3 e2 f4 ff                 call   0x2cd7ec
37f529  0f 28 ce                       movaps xmm1,xmm6
37f52c  b9 01 00 00 00                 mov    ecx,0x1
37f531  48 8b f8                       mov    rdi,rax
37f534  e8 5f 2d 01 00                 call   0x392298
37f539  f3 0f 10 15 73 3c f1 ff        movss  xmm2,DWORD PTR [rip+0xfffffffffff13c73]        # 0x2931b4 ; f32=14
37f541  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f548  f3 0f 10 0d d8 e5 f0 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff0e5d8]        # 0x28db28 ; f32=40
37f550  8b d8                          mov    ebx,eax
37f552  e8 e9 cd f4 ff                 call   0x2cc340
37f557  4c 8b c0                       mov    r8,rax
37f55a  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f561  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f568  e8 6b 04 f7 ff                 call   0x2ef9d8
37f56d  48 8b d0                       mov    rdx,rax
37f570  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
37f579  4c 8b cf                       mov    r9,rdi
37f57c  44 8b c3                       mov    r8d,ebx
37f57f  48 8b ce                       mov    rcx,rsi
37f582  e8 35 3c 02 00                 call   0x3a31bc
37f587  49 8b 04 24                    mov    rax,QWORD PTR [r12]
37f58b  49 8b cf                       mov    rcx,r15
37f58e  48 8b 30                       mov    rsi,QWORD PTR [rax]
37f591  e8 56 e2 f4 ff                 call   0x2cd7ec
37f596  0f 28 ce                       movaps xmm1,xmm6
37f599  b9 02 00 00 00                 mov    ecx,0x2
37f59e  48 8b f8                       mov    rdi,rax
37f5a1  e8 f2 2c 01 00                 call   0x392298
37f5a6  f3 0f 10 b5 e4 00 00 00        movss  xmm6,DWORD PTR [rbp+0xe4]
37f5ae  49 8b cf                       mov    rcx,r15
37f5b1  f3 0f 5c b5 dc 00 00 00        subss  xmm6,DWORD PTR [rbp+0xdc]
37f5b9  8b d8                          mov    ebx,eax
37f5bb  f3 0f 5c 35 f1 3b f1 ff        subss  xmm6,DWORD PTR [rip+0xfffffffffff13bf1]        # 0x2931b4 ; f32=14
37f5c3  e8 24 e2 f4 ff                 call   0x2cd7ec
37f5c8  48 8b d0                       mov    rdx,rax
37f5cb  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f5d2  45 33 c9                       xor    r9d,r9d
37f5d5  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f5dc  45 33 c0                       xor    r8d,r8d
37f5df  e8 b8 01 01 00                 call   0x38f79c
37f5e4  f3 0f 10 0d d0 3b f1 ff        movss  xmm1,DWORD PTR [rip+0xfffffffffff13bd0]        # 0x2931bc ; f32=16
37f5ec  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f5f3  f3 0f 5c 70 04                 subss  xmm6,DWORD PTR [rax+0x4]
37f5f8  0f 28 d6                       movaps xmm2,xmm6
37f5fb  e8 40 cd f4 ff                 call   0x2cc340
37f600  4c 8b c0                       mov    r8,rax
37f603  48 8d 95 d8 00 00 00           lea    rdx,[rbp+0xd8]
37f60a  48 8d 4c 24 50                 lea    rcx,[rsp+0x50]
37f60f  e8 c4 03 f7 ff                 call   0x2ef9d8
37f614  48 8b d0                       mov    rdx,rax
37f617  48 c7 44 24 20 00 00 00 00     mov    QWORD PTR [rsp+0x20],0x0
37f620  4c 8b cf                       mov    r9,rdi
37f623  44 8b c3                       mov    r8d,ebx
37f626  48 8b ce                       mov    rcx,rsi
37f629  e8 8e 3b 02 00                 call   0x3a31bc
37f62e  41 83 7f 28 00                 cmp    DWORD PTR [r15+0x28],0x0
37f633  f3 0f 10 35 f5 9c f2 ff        movss  xmm6,DWORD PTR [rip+0xfffffffffff29cf5]        # 0x2a9330 ; f32=47
37f63b  75 74                          jne    0x37f6b1
37f63d  49 8b cf                       mov    rcx,r15
37f640  e8 a7 e1 f4 ff                 call   0x2cd7ec
37f645  48 8b d0                       mov    rdx,rax
37f648  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f64f  45 33 c9                       xor    r9d,r9d
37f652  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f659  45 33 c0                       xor    r8d,r8d
37f65c  e8 3b 01 01 00                 call   0x38f79c
37f661  49 63 4f 20                    movsxd rcx,DWORD PTR [r15+0x20]
37f665  48 8b d8                       mov    rbx,rax
37f668  48 c1 e1 05                    shl    rcx,0x5
37f66c  48 8d 45 a0                    lea    rax,[rbp-0x60]
37f670  48 03 c8                       add    rcx,rax
37f673  e8 74 e1 f4 ff                 call   0x2cd7ec
37f678  48 8b d0                       mov    rdx,rax
37f67b  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f682  45 33 c9                       xor    r9d,r9d
37f685  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f68c  45 33 c0                       xor    r8d,r8d
37f68f  e8 08 01 01 00                 call   0x38f79c
37f694  f3 0f 10 40 04                 movss  xmm0,DWORD PTR [rax+0x4]
37f699  49 8b 44 24 08                 mov    rax,QWORD PTR [r12+0x8]
37f69e  f3 0f 58 c6                    addss  xmm0,xmm6
37f6a2  f3 0f 58 43 04                 addss  xmm0,DWORD PTR [rbx+0x4]
37f6a7  f3 0f 58 40 04                 addss  xmm0,DWORD PTR [rax+0x4]
37f6ac  f3 0f 11 40 04                 movss  DWORD PTR [rax+0x4],xmm0
37f6b1  41 83 7f 28 01                 cmp    DWORD PTR [r15+0x28],0x1
37f6b6  75 74                          jne    0x37f72c
37f6b8  49 8b cf                       mov    rcx,r15
37f6bb  e8 2c e1 f4 ff                 call   0x2cd7ec
37f6c0  48 8b d0                       mov    rdx,rax
37f6c3  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f6ca  45 33 c9                       xor    r9d,r9d
37f6cd  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f6d4  45 33 c0                       xor    r8d,r8d
37f6d7  e8 c0 00 01 00                 call   0x38f79c
37f6dc  49 63 4f 20                    movsxd rcx,DWORD PTR [r15+0x20]
37f6e0  48 8b d8                       mov    rbx,rax
37f6e3  48 c1 e1 05                    shl    rcx,0x5
37f6e7  48 8d 45 a0                    lea    rax,[rbp-0x60]
37f6eb  48 03 c8                       add    rcx,rax
37f6ee  e8 f9 e0 f4 ff                 call   0x2cd7ec
37f6f3  48 8b d0                       mov    rdx,rax
37f6f6  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f6fd  45 33 c9                       xor    r9d,r9d
37f700  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f707  45 33 c0                       xor    r8d,r8d
37f70a  e8 8d 00 01 00                 call   0x38f79c
37f70f  f3 0f 10 40 04                 movss  xmm0,DWORD PTR [rax+0x4]
37f714  49 8b 44 24 10                 mov    rax,QWORD PTR [r12+0x10]
37f719  f3 0f 58 c6                    addss  xmm0,xmm6
37f71d  f3 0f 58 43 04                 addss  xmm0,DWORD PTR [rbx+0x4]
37f722  f3 0f 58 40 04                 addss  xmm0,DWORD PTR [rax+0x4]
37f727  f3 0f 11 40 04                 movss  DWORD PTR [rax+0x4],xmm0
37f72c  41 83 7f 28 02                 cmp    DWORD PTR [r15+0x28],0x2
37f731  75 78                          jne    0x37f7ab
37f733  49 8b cf                       mov    rcx,r15
37f736  e8 b1 e0 f4 ff                 call   0x2cd7ec
37f73b  48 8b d0                       mov    rdx,rax
37f73e  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f745  45 33 c9                       xor    r9d,r9d
37f748  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f74f  45 33 c0                       xor    r8d,r8d
37f752  e8 45 00 01 00                 call   0x38f79c
37f757  49 63 4f 20                    movsxd rcx,DWORD PTR [r15+0x20]
37f75b  48 8b d8                       mov    rbx,rax
37f75e  48 c1 e1 05                    shl    rcx,0x5
37f762  48 8d 45 a0                    lea    rax,[rbp-0x60]
37f766  48 03 c8                       add    rcx,rax
37f769  e8 7e e0 f4 ff                 call   0x2cd7ec
37f76e  48 8b d0                       mov    rdx,rax
37f771  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f778  45 33 c9                       xor    r9d,r9d
37f77b  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f782  45 33 c0                       xor    r8d,r8d
37f785  e8 12 00 01 00                 call   0x38f79c
37f78a  f3 0f 10 48 04                 movss  xmm1,DWORD PTR [rax+0x4]
37f78f  49 8b 44 24 18                 mov    rax,QWORD PTR [r12+0x18]
37f794  f3 0f 58 ce                    addss  xmm1,xmm6
37f798  f3 0f 10 40 04                 movss  xmm0,DWORD PTR [rax+0x4]
37f79d  f3 0f 58 4b 04                 addss  xmm1,DWORD PTR [rbx+0x4]
37f7a2  f3 0f 5c c1                    subss  xmm0,xmm1
37f7a6  f3 0f 11 40 04                 movss  DWORD PTR [rax+0x4],xmm0
37f7ab  bf 03 00 00 00                 mov    edi,0x3
37f7b0  41 39 7f 28                    cmp    DWORD PTR [r15+0x28],edi
37f7b4  75 78                          jne    0x37f82e
37f7b6  49 8b cf                       mov    rcx,r15
37f7b9  e8 2e e0 f4 ff                 call   0x2cd7ec
37f7be  48 8b d0                       mov    rdx,rax
37f7c1  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f7c8  45 33 c9                       xor    r9d,r9d
37f7cb  48 8d 8d d0 00 00 00           lea    rcx,[rbp+0xd0]
37f7d2  45 33 c0                       xor    r8d,r8d
37f7d5  e8 c2 ff 00 00                 call   0x38f79c
37f7da  49 63 4f 20                    movsxd rcx,DWORD PTR [r15+0x20]
37f7de  48 8b d8                       mov    rbx,rax
37f7e1  48 c1 e1 05                    shl    rcx,0x5
37f7e5  48 8d 45 a0                    lea    rax,[rbp-0x60]
37f7e9  48 03 c8                       add    rcx,rax
37f7ec  e8 fb df f4 ff                 call   0x2cd7ec
37f7f1  48 8b d0                       mov    rdx,rax
37f7f4  f3 44 0f 11 4c 24 20           movss  DWORD PTR [rsp+0x20],xmm9
37f7fb  45 33 c9                       xor    r9d,r9d
37f7fe  48 8d 8d e8 00 00 00           lea    rcx,[rbp+0xe8]
37f805  45 33 c0                       xor    r8d,r8d
37f808  e8 8f ff 00 00                 call   0x38f79c
37f80d  f3 0f 10 48 04                 movss  xmm1,DWORD PTR [rax+0x4]
37f812  49 8b 44 24 20                 mov    rax,QWORD PTR [r12+0x20]
37f817  f3 0f 58 ce                    addss  xmm1,xmm6
37f81b  f3 0f 10 40 04                 movss  xmm0,DWORD PTR [rax+0x4]
37f820  f3 0f 58 4b 04                 addss  xmm1,DWORD PTR [rbx+0x4]
37f825  f3 0f 5c c1                    subss  xmm0,xmm1
37f829  f3 0f 11 40 04                 movss  DWORD PTR [rax+0x4],xmm0
37f82e  bb 20 00 00 00                 mov    ebx,0x20
37f833  4c 8d 0d ba cc f4 ff           lea    r9,[rip+0xfffffffffff4ccba]        # 0x2cc4f4
37f83a  8b d3                          mov    edx,ebx
37f83c  48 8d 4d 00                    lea    rcx,[rbp+0x0]
37f840  4c 8b c7                       mov    r8,rdi
37f843  e8 80 c2 f5 ff                 call   0x2dbac8
37f848  4c 8d 0d a5 cc f4 ff           lea    r9,[rip+0xfffffffffff4cca5]        # 0x2cc4f4
37f84f  4c 8b c7                       mov    r8,rdi
37f852  8b d3                          mov    edx,ebx
37f854  48 8d 4d a0                    lea    rcx,[rbp-0x60]
37f858  e8 6b c2 f5 ff                 call   0x2dbac8
37f85d  49 8b cf                       mov    rcx,r15
37f860  e8 9f cc f4 ff                 call   0x2cc504
37f865  4c 8d 9c 24 90 01 00 00        lea    r11,[rsp+0x190]
37f86d  41 0f 28 73 f0                 movaps xmm6,XMMWORD PTR [r11-0x10]
37f872  45 0f 28 4b e0                 movaps xmm9,XMMWORD PTR [r11-0x20]
37f877  45 0f 28 53 d0                 movaps xmm10,XMMWORD PTR [r11-0x30]
37f87c  49 8b e3                       mov    rsp,r11
37f87f  41 5f                          pop    r15
37f881  41 5e                          pop    r14
37f883  41 5c                          pop    r12
37f885  5f                             pop    rdi
37f886  5e                             pop    rsi
37f887  5b                             pop    rbx
37f888  5d                             pop    rbp
37f889  c3                             ret

; pdata function 0x31aa90..0x31aaf8 unwind=0x3d206c
31aa90  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
31aa95  57                             push   rdi
31aa96  48 83 ec 20                    sub    rsp,0x20
31aa9a  48 83 79 10 00                 cmp    QWORD PTR [rcx+0x10],0x0
31aa9f  48 8b d9                       mov    rbx,rcx
31aaa2  74 49                          je     0x31aaed
31aaa4  e8 67 d3 fb ff                 call   0x2d7e10
31aaa9  48 c1 e8 03                    shr    rax,0x3
31aaad  48 3b 43 10                    cmp    rax,QWORD PTR [rbx+0x10]
31aab1  76 14                          jbe    0x31aac7
31aab3  48 8b 53 08                    mov    rdx,QWORD PTR [rbx+0x8]
31aab7  48 8b cb                       mov    rcx,rbx
31aaba  4c 8b c2                       mov    r8,rdx
31aabd  48 8b 12                       mov    rdx,QWORD PTR [rdx]
31aac0  e8 ef f9 ff ff                 call   0x31a4b4
31aac5  eb 26                          jmp    0x31aaed
31aac7  48 8d 4b 08                    lea    rcx,[rbx+0x8]
31aacb  e8 f8 00 00 00                 call   0x31abc8
31aad0  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31aad5  48 8b cb                       mov    rcx,rbx
31aad8  e8 8f ce fb ff                 call   0x2d796c
31aadd  48 8b 53 20                    mov    rdx,QWORD PTR [rbx+0x20]
31aae1  4c 8b c0                       mov    r8,rax
31aae4  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
31aae8  e8 b7 7f fb ff                 call   0x2d2aa4
31aaed  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
31aaf2  48 83 c4 20                    add    rsp,0x20
31aaf6  5f                             pop    rdi
31aaf7  c3                             ret

; pdata function 0x31ab60..0x31abc8 unwind=0x3d206c
31ab60  48 89 5c 24 10                 mov    QWORD PTR [rsp+0x10],rbx
31ab65  57                             push   rdi
31ab66  48 83 ec 20                    sub    rsp,0x20
31ab6a  48 83 79 10 00                 cmp    QWORD PTR [rcx+0x10],0x0
31ab6f  48 8b d9                       mov    rbx,rcx
31ab72  74 49                          je     0x31abbd
31ab74  e8 97 d2 fb ff                 call   0x2d7e10
31ab79  48 c1 e8 03                    shr    rax,0x3
31ab7d  48 3b 43 10                    cmp    rax,QWORD PTR [rbx+0x10]
31ab81  76 14                          jbe    0x31ab97
31ab83  48 8b 53 08                    mov    rdx,QWORD PTR [rbx+0x8]
31ab87  48 8b cb                       mov    rcx,rbx
31ab8a  4c 8b c2                       mov    r8,rdx
31ab8d  48 8b 12                       mov    rdx,QWORD PTR [rdx]
31ab90  e8 77 fb ff ff                 call   0x31a70c
31ab95  eb 26                          jmp    0x31abbd
31ab97  48 8d 4b 08                    lea    rcx,[rbx+0x8]
31ab9b  e8 90 00 00 00                 call   0x31ac30
31aba0  48 8d 54 24 30                 lea    rdx,[rsp+0x30]
31aba5  48 8b cb                       mov    rcx,rbx
31aba8  e8 bf cd fb ff                 call   0x2d796c
31abad  48 8b 53 20                    mov    rdx,QWORD PTR [rbx+0x20]
31abb1  4c 8b c0                       mov    r8,rax
31abb4  48 8b 4b 18                    mov    rcx,QWORD PTR [rbx+0x18]
31abb8  e8 e7 7e fb ff                 call   0x2d2aa4
31abbd  48 8b 5c 24 38                 mov    rbx,QWORD PTR [rsp+0x38]
31abc2  48 83 c4 20                    add    rsp,0x20
31abc6  5f                             pop    rdi
31abc7  c3                             ret

; pdata function 0x31acb0..0x31acd0 unwind=0x3d2038
31acb0  40 53                          rex push rbx
31acb2  48 83 ec 20                    sub    rsp,0x20
31acb6  48 8b d9                       mov    rbx,rcx
31acb9  48 83 c1 18                    add    rcx,0x18
31acbd  e8 a2 ff ff ff                 call   0x31ac64
31acc2  48 8d 4b 30                    lea    rcx,[rbx+0x30]
31acc6  48 83 c4 20                    add    rsp,0x20
31acca  5b                             pop    rbx
31accb  e9 a4 ff ff ff                 jmp    0x31ac74

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

; pdata function 0x369040..0x369163 unwind=0x3d3eb4
369040  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
369045  48 89 7c 24 10                 mov    QWORD PTR [rsp+0x10],rdi
36904a  55                             push   rbp
36904b  48 8b ec                       mov    rbp,rsp
36904e  48 83 ec 50                    sub    rsp,0x50
369052  48 8b da                       mov    rbx,rdx
369055  48 8b f9                       mov    rdi,rcx
369058  e8 ab 1e f6 ff                 call   0x2caf08
36905d  84 c0                          test   al,al
36905f  75 25                          jne    0x369086
369061  48 8d 55 20                    lea    rdx,[rbp+0x20]
369065  48 8d 4d 20                    lea    rcx,[rbp+0x20]
369069  e8 c2 36 f6 ff                 call   0x2cc730
36906e  48 8b c8                       mov    rcx,rax
369071  e8 2e 4c f6 ff                 call   0x2cdca4
369076  48 8b d0                       mov    rdx,rax
369079  48 8b cb                       mov    rcx,rbx
36907c  e8 4b 32 f6 ff                 call   0x2cc2cc
369081  e9 ca 00 00 00                 jmp    0x369150
369086  48 8b cf                       mov    rcx,rdi
369089  e8 ea 10 00 00                 call   0x36a178
36908e  84 c0                          test   al,al
369090  74 17                          je     0x3690a9
369092  48 8d 55 d0                    lea    rdx,[rbp-0x30]
369096  48 8d 4d 20                    lea    rcx,[rbp+0x20]
36909a  e8 65 eb ff ff                 call   0x367c04 ; STRING getter=0x367c04 Scientist
36909f  48 8b c8                       mov    rcx,rax
3690a2  e8 9d 4c f6 ff                 call   0x2cdd44
3690a7  eb cd                          jmp    0x369076
3690a9  48 8b 97 38 03 00 00           mov    rdx,QWORD PTR [rdi+0x338]
3690b0  48 8b ca                       mov    rcx,rdx
3690b3  e8 50 1e f6 ff                 call   0x2caf08
3690b8  84 c0                          test   al,al
3690ba  75 0f                          jne    0x3690cb
3690bc  48 8d 55 20                    lea    rdx,[rbp+0x20]
3690c0  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3690c4  e8 67 36 f6 ff                 call   0x2cc730
3690c9  eb a3                          jmp    0x36906e
3690cb  48 8d 4a 14                    lea    rcx,[rdx+0x14]
3690cf  e8 34 1e f6 ff                 call   0x2caf08
3690d4  84 c0                          test   al,al
3690d6  75 0f                          jne    0x3690e7
3690d8  48 8d 55 20                    lea    rdx,[rbp+0x20]
3690dc  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3690e0  e8 4b 36 f6 ff                 call   0x2cc730
3690e5  eb 87                          jmp    0x36906e
3690e7  48 8d 4a 14                    lea    rcx,[rdx+0x14]
3690eb  e8 14 bf ff ff                 call   0x365004
3690f0  48 8b d0                       mov    rdx,rax
3690f3  48 8d 4d e0                    lea    rcx,[rbp-0x20]
3690f7  e8 d0 31 f6 ff                 call   0x2cc2cc
3690fc  48 8d 4d e0                    lea    rcx,[rbp-0x20]
369100  e8 8f f5 f6 ff                 call   0x2d8694
369105  84 c0                          test   al,al
369107  74 22                          je     0x36912b
369109  48 8d 55 20                    lea    rdx,[rbp+0x20]
36910d  48 8d 4d 20                    lea    rcx,[rbp+0x20]
369111  e8 1a 36 f6 ff                 call   0x2cc730
369116  48 8b c8                       mov    rcx,rax
369119  e8 86 4b f6 ff                 call   0x2cdca4
36911e  48 8b d0                       mov    rdx,rax
369121  48 8b cb                       mov    rcx,rbx
369124  e8 a3 31 f6 ff                 call   0x2cc2cc
369129  eb 1c                          jmp    0x369147
36912b  80 3d 96 33 09 00 00           cmp    BYTE PTR [rip+0x93396],0x0        # 0x3fc4c8 ; CONFIG Bools.StreamerMode value(+0x48)
369132  48 8d 55 e0                    lea    rdx,[rbp-0x20]
369136  48 8b cb                       mov    rcx,rbx
369139  74 07                          je     0x369142
36913b  e8 6c d0 ff ff                 call   0x3661ac
369140  eb 05                          jmp    0x369147
369142  e8 3d 31 f6 ff                 call   0x2cc284
369147  48 8d 4d e0                    lea    rcx,[rbp-0x20]
36914b  e8 a4 33 f6 ff                 call   0x2cc4f4
369150  48 8b 7c 24 68                 mov    rdi,QWORD PTR [rsp+0x68]
369155  48 8b c3                       mov    rax,rbx
369158  48 8b 5c 24 60                 mov    rbx,QWORD PTR [rsp+0x60]
36915d  48 83 c4 50                    add    rsp,0x50
369161  5d                             pop    rbp
369162  c3                             ret

; pdata function 0x372398..0x37261b unwind=0x3d3dc8
372398  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
37239d  48 89 74 24 10                 mov    QWORD PTR [rsp+0x10],rsi
3723a2  55                             push   rbp
3723a3  57                             push   rdi
3723a4  41 56                          push   r14
3723a6  48 8d 6c 24 b9                 lea    rbp,[rsp-0x47]
3723ab  48 81 ec b0 00 00 00           sub    rsp,0xb0
3723b2  48 8b f2                       mov    rsi,rdx
3723b5  4c 8b f1                       mov    r14,rcx
3723b8  e8 4b 8b f5 ff                 call   0x2caf08
3723bd  84 c0                          test   al,al
3723bf  75 25                          jne    0x3723e6
3723c1  48 8d 55 77                    lea    rdx,[rbp+0x77]
3723c5  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3723c9  e8 62 a3 f5 ff                 call   0x2cc730
3723ce  48 8b c8                       mov    rcx,rax
3723d1  e8 ce b8 f5 ff                 call   0x2cdca4
3723d6  48 8b d0                       mov    rdx,rax
3723d9  48 8b ce                       mov    rcx,rsi
3723dc  e8 eb 9e f5 ff                 call   0x2cc2cc
3723e1  e9 1a 02 00 00                 jmp    0x372600
3723e6  49 8b 56 28                    mov    rdx,QWORD PTR [r14+0x28]
3723ea  48 8b ca                       mov    rcx,rdx
3723ed  e8 16 8b f5 ff                 call   0x2caf08
3723f2  84 c0                          test   al,al
3723f4  75 0f                          jne    0x372405
3723f6  48 8d 55 77                    lea    rdx,[rbp+0x77]
3723fa  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3723fe  e8 2d a3 f5 ff                 call   0x2cc730
372403  eb c9                          jmp    0x3723ce
372405  48 83 c2 14                    add    rdx,0x14
372409  48 8d 4d b7                    lea    rcx,[rbp-0x49]
37240d  e8 b6 21 f6 ff                 call   0x2d45c8
372412  48 8d 4d b7                    lea    rcx,[rbp-0x49]
372416  e8 79 62 f6 ff                 call   0x2d8694
37241b  84 c0                          test   al,al
37241d  74 25                          je     0x372444
37241f  48 8d 55 77                    lea    rdx,[rbp+0x77]
372423  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372427  e8 04 a3 f5 ff                 call   0x2cc730
37242c  48 8b c8                       mov    rcx,rax
37242f  e8 70 b8 f5 ff                 call   0x2cdca4
372434  48 8b d0                       mov    rdx,rax
372437  48 8b ce                       mov    rcx,rsi
37243a  e8 8d 9e f5 ff                 call   0x2cc2cc
37243f  e9 b3 01 00 00                 jmp    0x3725f7
372444  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
372448  48 8d 4d b7                    lea    rcx,[rbp-0x49]
37244c  e8 d7 62 f6 ff                 call   0x2d8728
372451  48 8d 55 d7                    lea    rdx,[rbp-0x29]
372455  48 8d 4d b7                    lea    rcx,[rbp-0x49]
372459  48 8b 18                       mov    rbx,QWORD PTR [rax]
37245c  e8 df 58 f6 ff                 call   0x2d7d40
372461  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372465  48 8b f8                       mov    rdi,rax
372468  e8 37 8f f5 ff                 call   0x2cb3a4
37246d  48 8b 17                       mov    rdx,QWORD PTR [rdi]
372470  48 8d 4d df                    lea    rcx,[rbp-0x21]
372474  4c 8b c8                       mov    r9,rax
372477  4c 8b c3                       mov    r8,rbx
37247a  e8 c5 c9 f5 ff                 call   0x2cee44
37247f  48 8d 4d df                    lea    rcx,[rbp-0x21]
372483  e8 64 b3 f5 ff                 call   0x2cd7ec
372488  48 8b c8                       mov    rcx,rax
37248b  e8 c4 3e f6 ff                 call   0x2d6354
372490  48 8d 55 77                    lea    rdx,[rbp+0x77]
372494  48 8b d8                       mov    rbx,rax
372497  48 8d 4d 77                    lea    rcx,[rbp+0x77]
37249b  e8 9c fe ff ff                 call   0x37233c ; STRING getter=0x37233c m16a2
3724a0  48 8b c8                       mov    rcx,rax
3724a3  e8 34 60 f6 ff                 call   0x2d84dc
3724a8  48 8b c8                       mov    rcx,rax
3724ab  48 ba 25 23 22 84 e4 9c f2 cb  movabs rdx,0xcbf29ce484222325
3724b5  e8 92 36 f7 ff                 call   0x2e5b4c
3724ba  48 3b d8                       cmp    rbx,rax
3724bd  75 25                          jne    0x3724e4
3724bf  48 8d 55 77                    lea    rdx,[rbp+0x77]
3724c3  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3724c7  e8 88 fe ff ff                 call   0x372354 ; STRING getter=0x372354 M-16
3724cc  48 8b c8                       mov    rcx,rax
3724cf  e8 f8 b7 f5 ff                 call   0x2cdccc
3724d4  48 8b d0                       mov    rdx,rax
3724d7  48 8b ce                       mov    rcx,rsi
3724da  e8 ed 9d f5 ff                 call   0x2cc2cc
3724df  e9 0a 01 00 00                 jmp    0x3725ee
3724e4  49 8b 56 40                    mov    rdx,QWORD PTR [r14+0x40]
3724e8  48 8b ca                       mov    rcx,rdx
3724eb  e8 18 8a f5 ff                 call   0x2caf08
3724f0  84 c0                          test   al,al
3724f2  75 17                          jne    0x37250b
3724f4  48 8d 55 77                    lea    rdx,[rbp+0x77]
3724f8  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3724fc  e8 2f a2 f5 ff                 call   0x2cc730
372501  48 8b c8                       mov    rcx,rax
372504  e8 9b b7 f5 ff                 call   0x2cdca4
372509  eb c9                          jmp    0x3724d4
37250b  48 8b 52 20                    mov    rdx,QWORD PTR [rdx+0x20]
37250f  48 8b ca                       mov    rcx,rdx
372512  e8 f1 89 f5 ff                 call   0x2caf08
372517  84 c0                          test   al,al
372519  75 0f                          jne    0x37252a
37251b  48 8d 55 77                    lea    rdx,[rbp+0x77]
37251f  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372523  e8 08 a2 f5 ff                 call   0x2cc730
372528  eb d7                          jmp    0x372501
37252a  48 83 c2 14                    add    rdx,0x14
37252e  48 8d 4d ff                    lea    rcx,[rbp-0x1]
372532  e8 91 20 f6 ff                 call   0x2d45c8
372537  48 8d 4d ff                    lea    rcx,[rbp-0x1]
37253b  e8 54 61 f6 ff                 call   0x2d8694
372540  84 c0                          test   al,al
372542  74 22                          je     0x372566
372544  48 8d 55 77                    lea    rdx,[rbp+0x77]
372548  48 8d 4d 77                    lea    rcx,[rbp+0x77]
37254c  e8 df a1 f5 ff                 call   0x2cc730
372551  48 8b c8                       mov    rcx,rax
372554  e8 4b b7 f5 ff                 call   0x2cdca4
372559  48 8b d0                       mov    rdx,rax
37255c  48 8b ce                       mov    rcx,rsi
37255f  e8 68 9d f5 ff                 call   0x2cc2cc
372564  eb 7f                          jmp    0x3725e5
372566  48 8d 55 7f                    lea    rdx,[rbp+0x7f]
37256a  48 8d 4d ff                    lea    rcx,[rbp-0x1]
37256e  e8 b5 61 f6 ff                 call   0x2d8728
372573  48 8d 55 d7                    lea    rdx,[rbp-0x29]
372577  48 8d 4d ff                    lea    rcx,[rbp-0x1]
37257b  48 8b 18                       mov    rbx,QWORD PTR [rax]
37257e  e8 bd 57 f6 ff                 call   0x2d7d40
372583  48 8d 4d 77                    lea    rcx,[rbp+0x77]
372587  48 8b f8                       mov    rdi,rax
37258a  e8 15 8e f5 ff                 call   0x2cb3a4
37258f  48 8b 17                       mov    rdx,QWORD PTR [rdi]
372592  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
372596  4c 8b c8                       mov    r9,rax
372599  4c 8b c3                       mov    r8,rbx
37259c  e8 a3 c8 f5 ff                 call   0x2cee44
3725a1  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
3725a5  e8 ea 60 f6 ff                 call   0x2d8694
3725aa  84 c0                          test   al,al
3725ac  74 22                          je     0x3725d0
3725ae  48 8d 55 77                    lea    rdx,[rbp+0x77]
3725b2  48 8d 4d 77                    lea    rcx,[rbp+0x77]
3725b6  e8 75 a1 f5 ff                 call   0x2cc730
3725bb  48 8b c8                       mov    rcx,rax
3725be  e8 e1 b6 f5 ff                 call   0x2cdca4
3725c3  48 8b d0                       mov    rdx,rax
3725c6  48 8b ce                       mov    rcx,rsi
3725c9  e8 fe 9c f5 ff                 call   0x2cc2cc
3725ce  eb 0c                          jmp    0x3725dc
3725d0  48 8d 55 1f                    lea    rdx,[rbp+0x1f]
3725d4  48 8b ce                       mov    rcx,rsi
3725d7  e8 a8 9c f5 ff                 call   0x2cc284
3725dc  48 8d 4d 1f                    lea    rcx,[rbp+0x1f]
3725e0  e8 0f 9f f5 ff                 call   0x2cc4f4
3725e5  48 8d 4d ff                    lea    rcx,[rbp-0x1]
3725e9  e8 62 24 f6 ff                 call   0x2d4a50
3725ee  48 8d 4d df                    lea    rcx,[rbp-0x21]
3725f2  e8 fd 9e f5 ff                 call   0x2cc4f4
3725f7  48 8d 4d b7                    lea    rcx,[rbp-0x49]
3725fb  e8 50 24 f6 ff                 call   0x2d4a50
372600  4c 8d 9c 24 b0 00 00 00        lea    r11,[rsp+0xb0]
372608  48 8b c6                       mov    rax,rsi
37260b  49 8b 5b 20                    mov    rbx,QWORD PTR [r11+0x20]
37260f  49 8b 73 28                    mov    rsi,QWORD PTR [r11+0x28]
372613  49 8b e3                       mov    rsp,r11
372616  41 5e                          pop    r14
372618  5f                             pop    rdi
372619  5d                             pop    rbp
37261a  c3                             ret

; pdata function 0x364f20..0x364f4e unwind=0x3d2038
364f20  40 53                          rex push rbx
364f22  48 83 ec 20                    sub    rsp,0x20
364f26  f3 0f 10 0d ba 3f ee ff        movss  xmm1,DWORD PTR [rip+0xffffffffffee3fba]        # 0x248ee8 ; f32=1
364f2e  48 8b da                       mov    rbx,rdx
364f31  0f 28 d1                       movaps xmm2,xmm1
364f34  f3 0f 59 09                    mulss  xmm1,DWORD PTR [rcx]
364f38  f3 0f 59 51 04                 mulss  xmm2,DWORD PTR [rcx+0x4]
364f3d  48 8b ca                       mov    rcx,rdx
364f40  e8 fb 73 f6 ff                 call   0x2cc340
364f45  48 8b c3                       mov    rax,rbx
364f48  48 83 c4 20                    add    rsp,0x20
364f4c  5b                             pop    rbx
364f4d  c3                             ret

