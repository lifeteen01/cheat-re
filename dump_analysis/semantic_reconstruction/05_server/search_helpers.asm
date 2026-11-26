; pdata function 0x2e3074..0x2e3293 unwind=0x3d2a60
2e3074  48 8b c4                       mov    rax,rsp
2e3077  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
2e307b  55                             push   rbp
2e307c  56                             push   rsi
2e307d  57                             push   rdi
2e307e  41 56                          push   r14
2e3080  41 57                          push   r15
2e3082  48 83 ec 60                    sub    rsp,0x60
2e3086  0f 29 70 c8                    movaps XMMWORD PTR [rax-0x38],xmm6
2e308a  48 8b e9                       mov    rbp,rcx
2e308d  0f 29 78 b8                    movaps XMMWORD PTR [rax-0x48],xmm7
2e3091  49 8b c9                       mov    rcx,r9
2e3094  44 0f 29 40 a8                 movaps XMMWORD PTR [rax-0x58],xmm8
2e3099  4c 8b f2                       mov    r14,rdx
2e309c  44 0f 29 50 98                 movaps XMMWORD PTR [rax-0x68],xmm10
2e30a1  4d 63 f8                       movsxd r15,r8d
2e30a4  e8 c7 09 00 00                 call   0x2e3a70
2e30a9  48 8b c8                       mov    rcx,rax
2e30ac  49 8b d7                       mov    rdx,r15
2e30af  e8 84 c5 ff ff                 call   0x2df638
2e30b4  48 8b f0                       mov    rsi,rax
2e30b7  f3 0f 10 80 00 0a 00 00        movss  xmm0,DWORD PTR [rax+0xa00]
2e30bf  0f 2f 05 56 aa fa ff           comiss xmm0,DWORD PTR [rip+0xfffffffffffaaa56]        # 0x28db1c ; f32=10
2e30c6  72 78                          jb     0x2e3140
2e30c8  f3 0f 10 85 00 0a 00 00        movss  xmm0,DWORD PTR [rbp+0xa00]
2e30d0  48 8d 98 00 05 00 00           lea    rbx,[rax+0x500]
2e30d7  f3 0f 10 8d 04 0a 00 00        movss  xmm1,DWORD PTR [rbp+0xa04]
2e30df  4c 8d 84 24 a0 00 00 00        lea    r8,[rsp+0xa0]
2e30e7  48 8b d3                       mov    rdx,rbx
2e30ea  f3 0f 11 84 24 a0 00 00 00     movss  DWORD PTR [rsp+0xa0],xmm0
2e30f3  48 8b c8                       mov    rcx,rax
2e30f6  f3 0f 11 8c 24 98 00 00 00     movss  DWORD PTR [rsp+0x98],xmm1
2e30ff  e8 60 bc ff ff                 call   0x2ded64
2e3104  48 2b c6                       sub    rax,rsi
2e3107  4c 8d 84 24 98 00 00 00        lea    r8,[rsp+0x98]
2e310f  48 c1 f8 02                    sar    rax,0x2
2e3113  48 8b d3                       mov    rdx,rbx
2e3116  85 c0                          test   eax,eax
2e3118  8d 78 ff                       lea    edi,[rax-0x1]
2e311b  0f 4e f8                       cmovle edi,eax
2e311e  48 63 c7                       movsxd rax,edi
2e3121  48 8d 0c 86                    lea    rcx,[rsi+rax*4]
2e3125  e8 2a bd ff ff                 call   0x2dee54
2e312a  48 8b d0                       mov    rdx,rax
2e312d  48 2b d6                       sub    rdx,rsi
2e3130  48 c1 fa 02                    sar    rdx,0x2
2e3134  81 fa 40 01 00 00              cmp    edx,0x140
2e313a  7d 0b                          jge    0x2e3147
2e313c  ff c2                          inc    edx
2e313e  eb 07                          jmp    0x2e3147
2e3140  33 ff                          xor    edi,edi
2e3142  ba 40 01 00 00                 mov    edx,0x140
2e3147  f3 0f 10 25 05 aa fa ff        movss  xmm4,DWORD PTR [rip+0xfffffffffffaaa05]        # 0x28db54
2e314f  45 33 c0                       xor    r8d,r8d
2e3152  44 8b 8e 04 0a 00 00           mov    r9d,DWORD PTR [rsi+0xa04]
2e3159  3b fa                          cmp    edi,edx
2e315b  0f 8d fa 00 00 00              jge    0x2e325b
2e3161  0f 57 db                       xorps  xmm3,xmm3
2e3164  33 c0                          xor    eax,eax
2e3166  8b cf                          mov    ecx,edi
2e3168  41 2b c9                       sub    ecx,r9d
2e316b  44 0f 28 d4                    movaps xmm10,xmm4
2e316f  41 3b f9                       cmp    edi,r9d
2e3172  0f 4f c1                       cmovg  eax,ecx
2e3175  48 63 c8                       movsxd rcx,eax
2e3178  48 63 c7                       movsxd rax,edi
2e317b  85 ff                          test   edi,edi
2e317d  7e 12                          jle    0x2e3191
2e317f  f3 0f 10 bc 86 fc 04 00 00     movss  xmm7,DWORD PTR [rsi+rax*4+0x4fc]
2e3188  f3 44 0f 10 44 86 fc           movss  xmm8,DWORD PTR [rsi+rax*4-0x4]
2e318f  eb 07                          jmp    0x2e3198
2e3191  45 0f 57 c0                    xorps  xmm8,xmm8
2e3195  0f 57 ff                       xorps  xmm7,xmm7
2e3198  f3 0f 10 2c 86                 movss  xmm5,DWORD PTR [rsi+rax*4]
2e319d  f3 0f 10 b4 86 00 05 00 00     movss  xmm6,DWORD PTR [rsi+rax*4+0x500]
2e31a6  f3 41 0f 5c e8                 subss  xmm5,xmm8
2e31ab  f3 0f 5c f7                    subss  xmm6,xmm7
2e31af  0f 28 c5                       movaps xmm0,xmm5
2e31b2  0f 28 ce                       movaps xmm1,xmm6
2e31b5  f3 0f 59 c5                    mulss  xmm0,xmm5
2e31b9  f3 0f 59 ce                    mulss  xmm1,xmm6
2e31bd  f3 0f 58 c8                    addss  xmm1,xmm0
2e31c1  0f 2f 0d 04 a9 fa ff           comiss xmm1,DWORD PTR [rip+0xfffffffffffaa904]        # 0x28dacc ; f32=1e-06
2e31c8  76 2a                          jbe    0x2e31f4
2e31ca  f3 0f 10 94 8d 00 05 00 00     movss  xmm2,DWORD PTR [rbp+rcx*4+0x500]
2e31d3  f3 0f 10 44 8d 00              movss  xmm0,DWORD PTR [rbp+rcx*4+0x0]
2e31d9  f3 0f 5c d7                    subss  xmm2,xmm7
2e31dd  f3 41 0f 5c c0                 subss  xmm0,xmm8
2e31e2  f3 0f 59 d6                    mulss  xmm2,xmm6
2e31e6  f3 0f 59 c5                    mulss  xmm0,xmm5
2e31ea  f3 0f 58 d0                    addss  xmm2,xmm0
2e31ee  f3 0f 5e d1                    divss  xmm2,xmm1
2e31f2  eb 03                          jmp    0x2e31f7
2e31f4  0f 57 d2                       xorps  xmm2,xmm2
2e31f7  0f 2f da                       comiss xmm3,xmm2
2e31fa  76 05                          jbe    0x2e3201
2e31fc  0f 57 c9                       xorps  xmm1,xmm1
2e31ff  eb 0c                          jmp    0x2e320d
2e3201  f3 0f 10 0d 4b a0 fa ff        movss  xmm1,DWORD PTR [rip+0xfffffffffffaa04b]        # 0x28d254 ; f32=1
2e3209  f3 0f 5d ca                    minss  xmm1,xmm2
2e320d  0f 28 c1                       movaps xmm0,xmm1
2e3210  f3 0f 59 ce                    mulss  xmm1,xmm6
2e3214  f3 0f 59 c5                    mulss  xmm0,xmm5
2e3218  f3 0f 58 cf                    addss  xmm1,xmm7
2e321c  f3 41 0f 58 c0                 addss  xmm0,xmm8
2e3221  f3 0f 5c 8c 8d 00 05 00 00     subss  xmm1,DWORD PTR [rbp+rcx*4+0x500]
2e322a  f3 0f 5c 44 8d 00              subss  xmm0,DWORD PTR [rbp+rcx*4+0x0]
2e3230  f3 0f 59 c9                    mulss  xmm1,xmm1
2e3234  f3 0f 59 c0                    mulss  xmm0,xmm0
2e3238  f3 0f 58 c8                    addss  xmm1,xmm0
2e323c  0f 2f e1                       comiss xmm4,xmm1
2e323f  76 03                          jbe    0x2e3244
2e3241  0f 28 e1                       movaps xmm4,xmm1
2e3244  44 0f 2f d1                    comiss xmm10,xmm1
2e3248  8b c7                          mov    eax,edi
2e324a  41 0f 46 c0                    cmovbe eax,r8d
2e324e  ff c7                          inc    edi
2e3250  44 8b c0                       mov    r8d,eax
2e3253  3b fa                          cmp    edi,edx
2e3255  0f 8c 09 ff ff ff              jl     0x2e3164
2e325b  0f 28 74 24 50                 movaps xmm6,XMMWORD PTR [rsp+0x50]
2e3260  4c 8d 5c 24 60                 lea    r11,[rsp+0x60]
2e3265  49 8b 5b 30                    mov    rbx,QWORD PTR [r11+0x30]
2e3269  49 8b c6                       mov    rax,r14
2e326c  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
2e3271  45 0f 28 53 c0                 movaps xmm10,XMMWORD PTR [r11-0x40]
2e3276  0f 28 7c 24 40                 movaps xmm7,XMMWORD PTR [rsp+0x40]
2e327b  f3 41 0f 11 66 04              movss  DWORD PTR [r14+0x4],xmm4
2e3281  45 89 3e                       mov    DWORD PTR [r14],r15d
2e3284  45 89 46 08                    mov    DWORD PTR [r14+0x8],r8d
2e3288  49 8b e3                       mov    rsp,r11
2e328b  41 5f                          pop    r15
2e328d  41 5e                          pop    r14
2e328f  5f                             pop    rdi
2e3290  5e                             pop    rsi
2e3291  5d                             pop    rbp
2e3292  c3                             ret

; pdata function 0x2e38e4..0x2e3a70 unwind=0x3d2a84
2e38e4  40 55                          rex push rbp
2e38e6  53                             push   rbx
2e38e7  56                             push   rsi
2e38e8  57                             push   rdi
2e38e9  41 54                          push   r12
2e38eb  41 56                          push   r14
2e38ed  41 57                          push   r15
2e38ef  48 8b ec                       mov    rbp,rsp
2e38f2  48 83 ec 70                    sub    rsp,0x70
2e38f6  8b 7d 60                       mov    edi,DWORD PTR [rbp+0x60]
2e38f9  41 8b f0                       mov    esi,r8d
2e38fc  0f 29 74 24 60                 movaps XMMWORD PTR [rsp+0x60],xmm6
2e3901  8b c7                          mov    eax,edi
2e3903  0f 29 7c 24 50                 movaps XMMWORD PTR [rsp+0x50],xmm7
2e3908  41 2b c0                       sub    eax,r8d
2e390b  f3 0f 10 7d 68                 movss  xmm7,DWORD PTR [rbp+0x68]
2e3910  0f 28 f3                       movaps xmm6,xmm3
2e3913  44 0f 29 44 24 40              movaps XMMWORD PTR [rsp+0x40],xmm8
2e3919  48 8b da                       mov    rbx,rdx
2e391c  4c 8b e1                       mov    r12,rcx
2e391f  83 f8 05                       cmp    eax,0x5
2e3922  0f 8e 92 00 00 00              jle    0x2e39ba
2e3928  4c 8b 4d 70                    mov    r9,QWORD PTR [rbp+0x70]
2e392c  8b cf                          mov    ecx,edi
2e392e  2b ce                          sub    ecx,esi
2e3930  b8 56 55 55 55                 mov    eax,0x55555556
2e3935  f7 e9                          imul   ecx
2e3937  49 8b cc                       mov    rcx,r12
2e393a  44 8b f2                       mov    r14d,edx
2e393d  41 c1 ee 1f                    shr    r14d,0x1f
2e3941  44 03 f2                       add    r14d,edx
2e3944  48 8d 55 c0                    lea    rdx,[rbp-0x40]
2e3948  45 8d 3c 36                    lea    r15d,[r14+rsi*1]
2e394c  45 8b c7                       mov    r8d,r15d
2e394f  e8 20 f7 ff ff                 call   0x2e3074
2e3954  f3 44 0f 10 45 c4              movss  xmm8,DWORD PTR [rbp-0x3c]
2e395a  44 0f 2f c6                    comiss xmm8,xmm6
2e395e  76 09                          jbe    0x2e3969
2e3960  41 8b ff                       mov    edi,r15d
2e3963  41 0f 28 f8                    movaps xmm7,xmm8
2e3967  eb 48                          jmp    0x2e39b1
2e3969  4c 8b 4d 70                    mov    r9,QWORD PTR [rbp+0x70]
2e396d  46 8d 34 76                    lea    r14d,[rsi+r14*2]
2e3971  45 8b c6                       mov    r8d,r14d
2e3974  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e3978  49 8b cc                       mov    rcx,r12
2e397b  e8 f4 f6 ff ff                 call   0x2e3074
2e3980  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e3984  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2e3988  e8 ef bd ff ff                 call   0x2df77c
2e398d  84 c0                          test   al,al
2e398f  74 0a                          je     0x2e399b
2e3991  f3 0f 10 7d b4                 movss  xmm7,DWORD PTR [rbp-0x4c]
2e3996  41 8b fe                       mov    edi,r14d
2e3999  eb 16                          jmp    0x2e39b1
2e399b  f3 0f 10 75 b4                 movss  xmm6,DWORD PTR [rbp-0x4c]
2e39a0  0f 2f f7                       comiss xmm6,xmm7
2e39a3  76 05                          jbe    0x2e39aa
2e39a5  41 8b f6                       mov    esi,r14d
2e39a8  eb 07                          jmp    0x2e39b1
2e39aa  41 8b f7                       mov    esi,r15d
2e39ad  41 0f 28 f0                    movaps xmm6,xmm8
2e39b1  8b c7                          mov    eax,edi
2e39b3  2b c6                          sub    eax,esi
2e39b5  e9 65 ff ff ff                 jmp    0x2e391f
2e39ba  45 33 f6                       xor    r14d,r14d
2e39bd  89 75 b0                       mov    DWORD PTR [rbp-0x50],esi
2e39c0  ff c6                          inc    esi
2e39c2  f3 0f 11 75 b4                 movss  DWORD PTR [rbp-0x4c],xmm6
2e39c7  44 89 75 b8                    mov    DWORD PTR [rbp-0x48],r14d
2e39cb  3b f7                          cmp    esi,edi
2e39cd  7d 41                          jge    0x2e3a10
2e39cf  4c 8b 4d 70                    mov    r9,QWORD PTR [rbp+0x70]
2e39d3  48 8d 55 c0                    lea    rdx,[rbp-0x40]
2e39d7  44 8b c6                       mov    r8d,esi
2e39da  49 8b cc                       mov    rcx,r12
2e39dd  e8 92 f6 ff ff                 call   0x2e3074
2e39e2  48 8d 55 b0                    lea    rdx,[rbp-0x50]
2e39e6  48 8d 4d c0                    lea    rcx,[rbp-0x40]
2e39ea  e8 8d bd ff ff                 call   0x2df77c
2e39ef  84 c0                          test   al,al
2e39f1  74 12                          je     0x2e3a05
2e39f3  f2 0f 10 45 c0                 movsd  xmm0,QWORD PTR [rbp-0x40]
2e39f8  44 8b 75 c8                    mov    r14d,DWORD PTR [rbp-0x38]
2e39fc  f2 0f 11 45 b0                 movsd  QWORD PTR [rbp-0x50],xmm0
2e3a01  44 89 75 b8                    mov    DWORD PTR [rbp-0x48],r14d
2e3a05  ff c6                          inc    esi
2e3a07  3b f7                          cmp    esi,edi
2e3a09  7c c4                          jl     0x2e39cf
2e3a0b  f3 0f 10 75 b4                 movss  xmm6,DWORD PTR [rbp-0x4c]
2e3a10  0f 2f f7                       comiss xmm6,xmm7
2e3a13  76 0e                          jbe    0x2e3a23
2e3a15  f3 0f 11 7d b4                 movss  DWORD PTR [rbp-0x4c],xmm7
2e3a1a  0f 28 f7                       movaps xmm6,xmm7
2e3a1d  89 7d b0                       mov    DWORD PTR [rbp-0x50],edi
2e3a20  45 33 f6                       xor    r14d,r14d
2e3a23  f3 0f 10 05 ad a0 fa ff        movss  xmm0,DWORD PTR [rip+0xfffffffffffaa0ad]        # 0x28dad8 ; f32=0.02
2e3a2b  0f 2f c6                       comiss xmm0,xmm6
2e3a2e  76 0f                          jbe    0x2e3a3f
2e3a30  f2 0f 10 45 b0                 movsd  xmm0,QWORD PTR [rbp-0x50]
2e3a35  f2 0f 11 03                    movsd  QWORD PTR [rbx],xmm0
2e3a39  44 89 73 08                    mov    DWORD PTR [rbx+0x8],r14d
2e3a3d  eb 0f                          jmp    0x2e3a4e
2e3a3f  83 c8 ff                       or     eax,0xffffffff
2e3a42  c7 43 04 20 bc be 4c           mov    DWORD PTR [rbx+0x4],0x4cbebc20
2e3a49  89 03                          mov    DWORD PTR [rbx],eax
2e3a4b  89 43 08                       mov    DWORD PTR [rbx+0x8],eax
2e3a4e  0f 28 74 24 60                 movaps xmm6,XMMWORD PTR [rsp+0x60]
2e3a53  48 8b c3                       mov    rax,rbx
2e3a56  0f 28 7c 24 50                 movaps xmm7,XMMWORD PTR [rsp+0x50]
2e3a5b  44 0f 28 44 24 40              movaps xmm8,XMMWORD PTR [rsp+0x40]
2e3a61  48 83 c4 70                    add    rsp,0x70
2e3a65  41 5f                          pop    r15
2e3a67  41 5e                          pop    r14
2e3a69  41 5c                          pop    r12
2e3a6b  5f                             pop    rdi
2e3a6c  5e                             pop    rsi
2e3a6d  5b                             pop    rbx
2e3a6e  5d                             pop    rbp
2e3a6f  c3                             ret

; heuristic leaf/code range 0x2e5bc4..0x2e5be9 unwind=0x0
2e5bc4  f3 0f 10 41 04                 movss  xmm0,DWORD PTR [rcx+0x4]
2e5bc9  f3 0f 59 42 04                 mulss  xmm0,DWORD PTR [rdx+0x4]
2e5bce  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2e5bd2  f3 0f 59 0a                    mulss  xmm1,DWORD PTR [rdx]
2e5bd6  f3 0f 10 51 08                 movss  xmm2,DWORD PTR [rcx+0x8]
2e5bdb  f3 0f 59 52 08                 mulss  xmm2,DWORD PTR [rdx+0x8]
2e5be0  f3 0f 58 c1                    addss  xmm0,xmm1
2e5be4  f3 0f 58 c2                    addss  xmm0,xmm2
2e5be8  c3                             ret

; heuristic leaf/code range 0x32db94..0x32dbb0 unwind=0x0
32db94  f3 0f 10 01                    movss  xmm0,DWORD PTR [rcx]
32db98  f3 0f 10 49 08                 movss  xmm1,DWORD PTR [rcx+0x8]
32db9d  f3 0f 59 c0                    mulss  xmm0,xmm0
32dba1  f3 0f 59 c9                    mulss  xmm1,xmm1
32dba5  f3 0f 58 c1                    addss  xmm0,xmm1
32dba9  e9 da 60 fb ff                 jmp    0x2e3c88
32dbae  cc                             int3
32dbaf  cc                             int3

; heuristic leaf/code range 0x2e3e94..0x2e3eb5 unwind=0x0
2e3e94  66 0f 6e c2                    movd   xmm0,edx
2e3e98  f3 0f e6 c0                    cvtdq2pd xmm0,xmm0
2e3e9c  f2 0f 59 05 64 9c fa ff        mulsd  xmm0,QWORD PTR [rip+0xfffffffffffa9c64]        # 0x28db08
2e3ea4  f2 0f 5e 05 64 9c fa ff        divsd  xmm0,QWORD PTR [rip+0xfffffffffffa9c64]        # 0x28db10
2e3eac  f2 0f 5c 05 4c 9c fa ff        subsd  xmm0,QWORD PTR [rip+0xfffffffffffa9c4c]        # 0x28db00
2e3eb4  c3                             ret

; pdata function 0x2e3a70..0x2e3aa1 unwind=0x3d2040
2e3a70  48 89 5c 24 08                 mov    QWORD PTR [rsp+0x8],rbx
2e3a75  57                             push   rdi
2e3a76  48 83 ec 20                    sub    rsp,0x20
2e3a7a  48 8b f9                       mov    rdi,rcx
2e3a7d  48 83 c1 10                    add    rcx,0x10
2e3a81  e8 1a 4c ff ff                 call   0x2d86a0
2e3a86  84 c0                          test   al,al
2e3a88  74 08                          je     0x2e3a92
2e3a8a  48 8b cf                       mov    rcx,rdi
2e3a8d  e8 12 00 00 00                 call   0x2e3aa4
2e3a92  48 8b 5c 24 30                 mov    rbx,QWORD PTR [rsp+0x30]
2e3a97  48 8d 47 10                    lea    rax,[rdi+0x10]
2e3a9b  48 83 c4 20                    add    rsp,0x20
2e3a9f  5f                             pop    rdi
2e3aa0  c3                             ret

; heuristic leaf/code range 0x2e3ec4..0x2e3ee7 unwind=0x0
2e3ec4  48 8b 51 08                    mov    rdx,QWORD PTR [rcx+0x8]
2e3ec8  48 b8 cd 3f b0 63 c3 4b 61 06  movabs rax,0x6614bc363b03fcd
2e3ed2  48 2b 11                       sub    rdx,QWORD PTR [rcx]
2e3ed5  48 f7 ea                       imul   rdx
2e3ed8  48 c1 fa 06                    sar    rdx,0x6
2e3edc  48 8b c2                       mov    rax,rdx
2e3edf  48 c1 e8 3f                    shr    rax,0x3f
2e3ee3  48 03 c2                       add    rax,rdx
2e3ee6  c3                             ret

; heuristic leaf/code range 0x2df638..0x2df643 unwind=0x0
2df638  48 69 c2 08 0a 00 00           imul   rax,rdx,0xa08
2df63f  48 03 01                       add    rax,QWORD PTR [rcx]
2df642  c3                             ret

; pdata function 0x2df744..0x2df77b unwind=0x3d2038
2df744  40 53                          rex push rbx
2df746  48 83 ec 20                    sub    rsp,0x20
2df74a  f3 0f 10 59 08                 movss  xmm3,DWORD PTR [rcx+0x8]
2df74f  0f 28 c2                       movaps xmm0,xmm2
2df752  f3 0f 10 51 04                 movss  xmm2,DWORD PTR [rcx+0x4]
2df757  48 8b da                       mov    rbx,rdx
2df75a  f3 0f 10 09                    movss  xmm1,DWORD PTR [rcx]
2df75e  48 8b ca                       mov    rcx,rdx
2df761  f3 0f 5e d0                    divss  xmm2,xmm0
2df765  f3 0f 5e d8                    divss  xmm3,xmm0
2df769  f3 0f 5e c8                    divss  xmm1,xmm0
2df76d  e8 36 84 0e 00                 call   0x3c7ba8
2df772  48 8b c3                       mov    rax,rbx
2df775  48 83 c4 20                    add    rsp,0x20
2df779  5b                             pop    rbx
2df77a  c3                             ret

; heuristic leaf/code range 0x2e372c..0x2e3734 unwind=0x0
2e372c  e9 bf 07 00 00                 jmp    0x2e3ef0
2e3731  cc                             int3
2e3732  cc                             int3
2e3733  cc                             int3

