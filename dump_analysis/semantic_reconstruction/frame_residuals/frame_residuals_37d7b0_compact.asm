37d7b0 mov    rax,rsp
37d7b3 push   rbp
37d7b4 push   rbx
37d7b5 push   rsi
37d7b6 push   rdi
37d7b7 push   r14
37d7b9 lea    rbp,[rax-0x5f]
37d7bd sub    rsp,0xc0
37d7c4 cmp    BYTE PTR [rip+0x6c54d],0x0        # 0x3e9d18 ; CONFIG Bools.CornerBox value(+0x48)
37d7cb movaps XMMWORD PTR [rax-0x38],xmm6
37d7cf movaps XMMWORD PTR [rax-0x48],xmm7
37d7d3 movaps XMMWORD PTR [rax-0x58],xmm8
37d7d8 movaps XMMWORD PTR [rax-0x68],xmm9
37d7dd movaps XMMWORD PTR [rax-0x78],xmm10
37d7e2 movaps XMMWORD PTR [rsp+0x60],xmm11
37d7e8 movaps XMMWORD PTR [rsp+0x50],xmm12
37d7ee je     0x37db54
37d7f4 call   0x392ecc
37d7f9 lea    rcx,[rbp+0x67]
37d7fd mov    rsi,rax
37d800 call   0x392ef8
37d805 mov    rdx,rax
37d808 lea    r8,[rip+0xffffffffffecb709]        # 0x248f18
37d80f lea    rcx,[rbp+0x6f]
37d813 call   0x2ef9d8
37d818 lea    rcx,[rbp+0x77]
37d81c mov    rbx,rax
37d81f call   0x392ef8
37d824 mov    rdx,rax
37d827 lea    r8,[rip+0xffffffffffecb6ea]        # 0x248f18
37d82e lea    rcx,[rbp+0x7f]
37d832 call   0x2ef9d8
37d837 mov    rdx,rax
37d83a lea    r8,[rip+0xffffffffffecb6df]        # 0x248f20
37d841 lea    rcx,[rbp-0x59]
37d845 call   0x2ef9d8
37d84a mov    r8,rax
37d84d lea    rcx,[rbp-0x51]
37d851 mov    rdx,rbx
37d854 call   0x2db388
37d859 lea    rcx,[rbp-0x51]
37d85d call   0x378970
37d862 lea    rcx,[rbp-0x51]
37d866 movaps xmm8,xmm0
37d86a call   0x378934
37d86f movss  xmm1,DWORD PTR [rip+0x854f1]        # 0x402d68 ; CONFIG F.BoxSpacing value(+0x48)
37d877 movaps xmm7,xmm0
37d87a movss  xmm11,DWORD PTR [rip+0xfffffffffff0f9d1]        # 0x28d254 ; f32=1
37d883 movaps xmm10,xmm8
37d887 mulss  xmm10,xmm1
37d88c mov    r14d,0x1
37d892 mov    ecx,r14d
37d895 mulss  xmm7,xmm1
37d899 movaps xmm9,xmm0
37d89d movaps xmm1,xmm11
37d8a1 call   0x392298
37d8a6 movaps xmm2,xmm7
37d8a9 lea    rcx,[rbp+0x67]
37d8ad xorps  xmm1,xmm1
37d8b0 mov    ebx,eax
37d8b2 call   0x2cc340
37d8b7 mov    r8,rax
37d8ba lea    rdx,[rbp-0x51]
37d8be lea    rcx,[rbp+0x6f]
37d8c2 call   0x2ef9d8
37d8c7 movss  xmm12,DWORD PTR [rip+0xfffffffffff15820]        # 0x2930f0 ; f32=1.2
37d8d0 lea    rdx,[rbp-0x51]
37d8d4 mov    r8,rax
37d8d7 movss  DWORD PTR [rsp+0x20],xmm12
37d8de mov    r9d,ebx
37d8e1 mov    rcx,rsi
37d8e4 call   0x3a01f4
37d8e9 movaps xmm1,xmm11
37d8ed mov    ecx,r14d
37d8f0 call   0x392298
37d8f5 xorps  xmm2,xmm2
37d8f8 lea    rcx,[rbp+0x67]
37d8fc movaps xmm1,xmm10
37d900 mov    ebx,eax
37d902 call   0x2cc340
37d907 mov    r8,rax
37d90a lea    rdx,[rbp-0x51]
37d90e lea    rcx,[rbp+0x6f]
37d912 call   0x2ef9d8
37d917 mov    r8,rax
37d91a movss  DWORD PTR [rsp+0x20],xmm12
37d921 mov    r9d,ebx
37d924 lea    rdx,[rbp-0x51]
37d928 mov    rcx,rsi
37d92b call   0x3a01f4
37d930 movaps xmm1,xmm11
37d934 mov    ecx,r14d
37d937 call   0x392298
37d93c xorps  xmm2,xmm2
37d93f lea    rcx,[rbp+0x67]
37d943 movaps xmm1,xmm8
37d947 mov    edi,eax
37d949 call   0x2cc340
37d94e mov    r8,rax
37d951 lea    rdx,[rbp-0x51]
37d955 lea    rcx,[rbp+0x6f]
37d959 call   0x2ef9d8
37d95e movaps xmm1,xmm8
37d962 lea    rcx,[rbp+0x77]
37d966 subss  xmm1,xmm10
37d96b xorps  xmm2,xmm2
37d96e mov    rbx,rax
37d971 call   0x2cc340
37d976 mov    r8,rax
37d979 lea    rdx,[rbp-0x51]
37d97d lea    rcx,[rbp+0x7f]
37d981 call   0x2ef9d8
37d986 mov    rdx,rax
37d989 movss  DWORD PTR [rsp+0x20],xmm12
37d990 mov    r9d,edi
37d993 mov    r8,rbx
37d996 mov    rcx,rsi
37d999 call   0x3a01f4
37d99e movaps xmm1,xmm11
37d9a2 mov    ecx,r14d
37d9a5 call   0x392298
37d9aa movaps xmm2,xmm7
37d9ad lea    rcx,[rbp+0x67]
37d9b1 movaps xmm1,xmm8
37d9b5 mov    edi,eax
37d9b7 call   0x2cc340
37d9bc mov    r8,rax
37d9bf lea    rdx,[rbp-0x51]
37d9c3 lea    rcx,[rbp+0x6f]
37d9c7 call   0x2ef9d8
37d9cc xorps  xmm2,xmm2
37d9cf lea    rcx,[rbp+0x77]
37d9d3 movaps xmm1,xmm8
37d9d7 mov    rbx,rax
37d9da call   0x2cc340
37d9df mov    r8,rax
37d9e2 lea    rdx,[rbp-0x51]
37d9e6 lea    rcx,[rbp+0x7f]
37d9ea call   0x2ef9d8
37d9ef mov    rdx,rax
37d9f2 movss  DWORD PTR [rsp+0x20],xmm12
37d9f9 mov    r9d,edi
37d9fc mov    r8,rbx
37d9ff mov    rcx,rsi
37da02 call   0x3a01f4
37da07 movaps xmm1,xmm11
37da0b mov    ecx,r14d
37da0e call   0x392298
37da13 movaps xmm6,xmm9
37da17 lea    rcx,[rbp+0x67]
37da1b subss  xmm6,xmm7
37da1f movaps xmm1,xmm8
37da23 mov    ebx,eax
37da25 movaps xmm2,xmm6
37da28 call   0x2cc340
37da2d mov    r8,rax
37da30 lea    rdx,[rbp-0x51]
37da34 lea    rcx,[rbp+0x6f]
37da38 call   0x2ef9d8
37da3d mov    rdx,rax
37da40 movss  DWORD PTR [rsp+0x20],xmm12
37da47 mov    r9d,ebx
37da4a lea    r8,[rbp-0x49]
37da4e mov    rcx,rsi
37da51 call   0x3a01f4
37da56 movaps xmm1,xmm11
37da5a mov    ecx,r14d
37da5d call   0x392298
37da62 xorps  xmm2,xmm2
37da65 lea    rcx,[rbp+0x67]
37da69 movaps xmm1,xmm10
37da6d mov    ebx,eax
37da6f call   0x2cc340
37da74 mov    r8,rax
37da77 lea    rdx,[rbp-0x49]
37da7b lea    rcx,[rbp+0x6f]
37da7f call   0x3367e4
37da84 mov    r8,rax
37da87 movss  DWORD PTR [rsp+0x20],xmm12
37da8e mov    r9d,ebx
37da91 lea    rdx,[rbp-0x49]
37da95 mov    rcx,rsi
37da98 call   0x3a01f4
37da9d movaps xmm1,xmm11
37daa1 mov    ecx,r14d
37daa4 call   0x392298
37daa9 movss  xmm2,DWORD PTR [rbp-0x45]
37daae lea    rcx,[rbp+0x67]
37dab2 movss  xmm1,DWORD PTR [rbp-0x51]
37dab7 mov    ebx,eax
37dab9 call   0x2cc340
37dabe movaps xmm2,xmm9
37dac2 lea    rcx,[rbp+0x6f]
37dac6 movaps xmm1,xmm10
37daca call   0x2cc340
37dacf mov    r8,rax
37dad2 lea    rdx,[rbp-0x51]
37dad6 lea    rcx,[rbp+0x77]
37dada call   0x2ef9d8
37dadf mov    rdx,rax
37dae2 movss  DWORD PTR [rsp+0x20],xmm12
37dae9 mov    r9d,ebx
37daec lea    r8,[rbp+0x67]
37daf0 mov    rcx,rsi
37daf3 call   0x3a01f4
37daf8 movaps xmm1,xmm11
37dafc mov    ecx,r14d
37daff call   0x392298
37db04 movaps xmm2,xmm6
37db07 lea    rcx,[rbp+0x6f]
37db0b xorps  xmm1,xmm1
37db0e mov    edi,eax
37db10 call   0x2cc340
37db15 mov    r8,rax
37db18 lea    rdx,[rbp-0x51]
37db1c lea    rcx,[rbp+0x77]
37db20 call   0x2ef9d8
37db25 movss  xmm2,DWORD PTR [rbp-0x45]
37db2a lea    rcx,[rbp+0x67]
37db2e movss  xmm1,DWORD PTR [rbp-0x51]
37db33 mov    rbx,rax
37db36 call   0x2cc340
37db3b mov    r9d,edi
37db3e movss  DWORD PTR [rsp+0x20],xmm12
37db45 mov    r8,rbx
37db48 lea    rdx,[rbp+0x67]
37db4c mov    rcx,rsi
37db4f call   0x3a01f4
37db54 lea    r11,[rsp+0xc0]
37db5c movaps xmm6,XMMWORD PTR [r11-0x10]
37db61 movaps xmm7,XMMWORD PTR [r11-0x20]
37db66 movaps xmm8,XMMWORD PTR [r11-0x30]
37db6b movaps xmm9,XMMWORD PTR [r11-0x40]
37db70 movaps xmm10,XMMWORD PTR [r11-0x50]
37db75 movaps xmm11,XMMWORD PTR [r11-0x60]
37db7a movaps xmm12,XMMWORD PTR [r11-0x70]
37db7f mov    rsp,r11
37db82 pop    r14
37db84 pop    rdi
37db85 pop    rsi
37db86 pop    rbx
37db87 pop    rbp
37db88 ret
