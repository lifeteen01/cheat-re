; pdata function 0x382de8..0x382e27 unwind=0x3d2318
382de8  40 53                          rex push rbx
382dea  48 83 ec 30                    sub    rsp,0x30
382dee  f3 0f 10 5a 08                 movss  xmm3,DWORD PTR [rdx+0x8]
382df3  0f 28 c2                       movaps xmm0,xmm2
382df6  f3 0f 10 52 04                 movss  xmm2,DWORD PTR [rdx+0x4]
382dfb  48 8b d9                       mov    rbx,rcx
382dfe  f3 0f 10 0a                    movss  xmm1,DWORD PTR [rdx]
382e02  f3 0f 5e d0                    divss  xmm2,xmm0
382e06  f3 0f 5e d8                    divss  xmm3,xmm0
382e0a  f3 0f 5e c8                    divss  xmm1,xmm0
382e0e  f3 0f 10 42 0c                 movss  xmm0,DWORD PTR [rdx+0xc]
382e13  f3 0f 11 44 24 20              movss  DWORD PTR [rsp+0x20],xmm0
382e19  e8 2e 1a f5 ff                 call   0x2d484c
382e1e  48 8b c3                       mov    rax,rbx
382e21  48 83 c4 30                    add    rsp,0x30
382e25  5b                             pop    rbx
382e26  c3                             ret

; heuristic leaf/code range 0x2ef800..0x2ef80b unwind=0x0
2ef800  0f 10 01                       movups xmm0,XMMWORD PTR [rcx]
2ef803  48 8b c2                       mov    rax,rdx
2ef806  f3 0f 7f 02                    movdqu XMMWORD PTR [rdx],xmm0
2ef80a  c3                             ret

; pdata function 0x2db318..0x2db387 unwind=0x3d2130
2db318  40 53                          rex push rbx
2db31a  55                             push   rbp
2db31b  56                             push   rsi
2db31c  57                             push   rdi
2db31d  48 83 ec 28                    sub    rsp,0x28
2db321  41 8b f1                       mov    esi,r9d
2db324  41 8b f8                       mov    edi,r8d
2db327  8b da                          mov    ebx,edx
2db329  48 8b e9                       mov    rbp,rcx
2db32c  e8 6f 00 00 00                 call   0x2db3a0
2db331  f3 0f 10 15 a7 23 fb ff        movss  xmm2,DWORD PTR [rip+0xfffffffffffb23a7]        # 0x28d6e0 ; f32=0.00392157
2db339  48 8b c5                       mov    rax,rbp
2db33c  66 0f 6e c3                    movd   xmm0,ebx
2db340  0f 5b c0                       cvtdq2ps xmm0,xmm0
2db343  66 0f 6e ce                    movd   xmm1,esi
2db347  f3 0f 59 c2                    mulss  xmm0,xmm2
2db34b  0f 5b c9                       cvtdq2ps xmm1,xmm1
2db34e  f3 0f 11 45 00                 movss  DWORD PTR [rbp+0x0],xmm0
2db353  66 0f 6e c7                    movd   xmm0,edi
2db357  0f 5b c0                       cvtdq2ps xmm0,xmm0
2db35a  f3 0f 59 ca                    mulss  xmm1,xmm2
2db35e  f3 0f 59 c2                    mulss  xmm0,xmm2
2db362  f3 0f 11 4d 08                 movss  DWORD PTR [rbp+0x8],xmm1
2db367  f3 0f 11 45 04                 movss  DWORD PTR [rbp+0x4],xmm0
2db36c  66 0f 6e 44 24 70              movd   xmm0,DWORD PTR [rsp+0x70]
2db372  0f 5b c0                       cvtdq2ps xmm0,xmm0
2db375  f3 0f 59 c2                    mulss  xmm0,xmm2
2db379  f3 0f 11 45 0c                 movss  DWORD PTR [rbp+0xc],xmm0
2db37e  48 83 c4 28                    add    rsp,0x28
2db382  5f                             pop    rdi
2db383  5e                             pop    rsi
2db384  5d                             pop    rbp
2db385  5b                             pop    rbx
2db386  c3                             ret

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

