; pdata function 0x3b3028..0x3b3199 unwind=0x3d5610
3b3028  48 8b c4                       mov    rax,rsp
3b302b  48 89 58 08                    mov    QWORD PTR [rax+0x8],rbx
3b302f  55                             push   rbp
3b3030  48 8b ec                       mov    rbp,rsp
3b3033  48 83 ec 70                    sub    rsp,0x70
3b3037  0f 29 70 e8                    movaps XMMWORD PTR [rax-0x18],xmm6
3b303b  48 8b d9                       mov    rbx,rcx
3b303e  48 8b 0d 3b a1 05 00           mov    rcx,QWORD PTR [rip+0x5a13b]        # 0x40d180
3b3045  0f 29 78 d8                    movaps XMMWORD PTR [rax-0x28],xmm7
3b3049  44 0f 29 40 c8                 movaps XMMWORD PTR [rax-0x38],xmm8
3b304e  e8 69 c0 ff ff                 call   0x3af0bc
3b3053  48 8b 05 e6 a0 05 00           mov    rax,QWORD PTR [rip+0x5a0e6]        # 0x40d140
3b305a  48 83 78 10 00                 cmp    QWORD PTR [rax+0x10],0x0
3b305f  75 35                          jne    0x3b3096
3b3061  f3 0f 10 05 8f ab 05 00        movss  xmm0,DWORD PTR [rip+0x5ab8f]        # 0x40dbf8
3b3069  0f 2f 05 e8 00 ee ff           comiss xmm0,DWORD PTR [rip+0xffffffffffee00e8]        # 0x293158 ; f32=3
3b3070  76 0a                          jbe    0x3b307c
3b3072  e8 05 03 00 00                 call   0x3b337c
3b3077  0f 57 c0                       xorps  xmm0,xmm0
3b307a  eb 0d                          jmp    0x3b3089
3b307c  e8 9b d6 f2 ff                 call   0x2e071c
3b3081  f3 0f 58 05 6f ab 05 00        addss  xmm0,DWORD PTR [rip+0x5ab6f]        # 0x40dbf8
3b3089  f3 0f 11 05 67 ab 05 00        movss  DWORD PTR [rip+0x5ab67],xmm0        # 0x40dbf8
3b3091  e9 e6 00 00 00                 jmp    0x3b317c
3b3096  e8 55 d9 f2 ff                 call   0x2e09f0
3b309b  66 0f 6e f0                    movd   xmm6,eax
3b309f  0f 5b f6                       cvtdq2ps xmm6,xmm6
3b30a2  e8 49 da f2 ff                 call   0x2e0af0
3b30a7  48 8d 4d c0                    lea    rcx,[rbp-0x40]
3b30ab  0f 57 d2                       xorps  xmm2,xmm2
3b30ae  f3 0f 11 74 24 20              movss  DWORD PTR [rsp+0x20],xmm6
3b30b4  66 0f 6e d8                    movd   xmm3,eax
3b30b8  0f 57 c9                       xorps  xmm1,xmm1
3b30bb  0f 5b db                       cvtdq2ps xmm3,xmm3
3b30be  0f 57 ff                       xorps  xmm7,xmm7
3b30c1  e8 8a 92 f1 ff                 call   0x2cc350
3b30c6  f3 44 0f 10 45 c8              movss  xmm8,DWORD PTR [rbp-0x38]
3b30cc  44 0f 2e 05 dc 41 02 00        ucomiss xmm8,DWORD PTR [rip+0x241dc]        # 0x3d72b0
3b30d4  f3 0f 10 75 cc                 movss  xmm6,DWORD PTR [rbp-0x34]
3b30d9  7a 0d                          jp     0x3b30e8
3b30db  75 0b                          jne    0x3b30e8
3b30dd  0f 2e 35 d0 41 02 00           ucomiss xmm6,DWORD PTR [rip+0x241d0]        # 0x3d72b4
3b30e4  7a 02                          jp     0x3b30e8
3b30e6  74 37                          je     0x3b311f
3b30e8  0f 28 ce                       movaps xmm1,xmm6
3b30eb  41 0f 28 c0                    movaps xmm0,xmm8
3b30ef  e8 10 e8 ff ff                 call   0x3b1904
3b30f4  f3 0f 10 45 c0                 movss  xmm0,DWORD PTR [rbp-0x40]
3b30f9  f3 0f 10 4d c4                 movss  xmm1,DWORD PTR [rbp-0x3c]
3b30fe  f3 0f 11 05 a2 41 02 00        movss  DWORD PTR [rip+0x241a2],xmm0        # 0x3d72a8
3b3106  f3 0f 11 0d 9e 41 02 00        movss  DWORD PTR [rip+0x2419e],xmm1        # 0x3d72ac
3b310e  f3 44 0f 11 05 99 41 02 00     movss  DWORD PTR [rip+0x24199],xmm8        # 0x3d72b0
3b3117  f3 0f 11 35 95 41 02 00        movss  DWORD PTR [rip+0x24195],xmm6        # 0x3d72b4
3b311f  4c 8d 43 28                    lea    r8,[rbx+0x28]
3b3123  48 8d 53 20                    lea    rdx,[rbx+0x20]
3b3127  48 8d 4d 20                    lea    rcx,[rbp+0x20]
3b312b  e8 ac 8a fd ff                 call   0x38bbdc
3b3130  f3 0f 10 55 24                 movss  xmm2,DWORD PTR [rbp+0x24]
3b3135  48 8d 4d 18                    lea    rcx,[rbp+0x18]
3b3139  f3 0f 10 4d 20                 movss  xmm1,DWORD PTR [rbp+0x20]
3b313e  e8 fd 91 f1 ff                 call   0x2cc340
3b3143  0f 2f 7d 18                    comiss xmm7,DWORD PTR [rbp+0x18]
3b3147  73 33                          jae    0x3b317c
3b3149  0f 2f 7d 1c                    comiss xmm7,DWORD PTR [rbp+0x1c]
3b314d  73 2d                          jae    0x3b317c
3b314f  83 7b 0c 00                    cmp    DWORD PTR [rbx+0xc],0x0
3b3153  74 27                          je     0x3b317c
3b3155  48 8b cb                       mov    rcx,rbx
3b3158  e8 f3 10 00 00                 call   0x3b4250
3b315d  4c 8b 45 18                    mov    r8,QWORD PTR [rbp+0x18]
3b3161  48 8b d3                       mov    rdx,rbx
3b3164  48 8b 0d 15 a0 05 00           mov    rcx,QWORD PTR [rip+0x5a015]        # 0x40d180
3b316b  e8 24 e9 ff ff                 call   0x3b1a94
3b3170  48 8b 0d 09 a0 05 00           mov    rcx,QWORD PTR [rip+0x5a009]        # 0x40d180
3b3177  e8 88 ee ff ff                 call   0x3b2004
3b317c  0f 28 74 24 60                 movaps xmm6,XMMWORD PTR [rsp+0x60]
3b3181  4c 8d 5c 24 70                 lea    r11,[rsp+0x70]
3b3186  49 8b 5b 10                    mov    rbx,QWORD PTR [r11+0x10]
3b318a  45 0f 28 43 d0                 movaps xmm8,XMMWORD PTR [r11-0x30]
3b318f  0f 28 7c 24 50                 movaps xmm7,XMMWORD PTR [rsp+0x50]
3b3194  49 8b e3                       mov    rsp,r11
3b3197  5d                             pop    rbp
3b3198  c3                             ret
