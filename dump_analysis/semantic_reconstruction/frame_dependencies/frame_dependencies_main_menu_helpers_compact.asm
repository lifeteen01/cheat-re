; pdata function 0x37f990..0x37fb14 unwind=0x3d4358
37f990 mov    rax,rsp
37f993 mov    QWORD PTR [rax+0x8],rcx
37f997 push   rbp
37f998 push   rbx
37f999 push   rsi
37f99a push   rdi
37f99b lea    rbp,[rax-0x38]
37f99f sub    rsp,0x118
37f9a6 movaps XMMWORD PTR [rax-0x38],xmm6
37f9aa lea    rsi,[rip+0x83407]        # 0x402db8
37f9b1 movaps XMMWORD PTR [rax-0x48],xmm7
37f9b5 mov    rcx,rsi
37f9b8 movaps XMMWORD PTR [rax-0x58],xmm8
37f9bd call   0x2d86a0
37f9c2 test   al,al
37f9c4 jne    0x37faf5
37f9ca call   0x3926ac
37f9cf movss  xmm7,DWORD PTR [rip+0xfffffffffff0e149]        # 0x28db20 ; f32=20
37f9d7 lea    rcx,[rsp+0x30]
37f9dc movaps xmm2,xmm7
37f9df movaps xmm1,xmm7
37f9e2 movss  xmm6,DWORD PTR [rax+0x8]
37f9e7 movss  xmm8,DWORD PTR [rax+0xc]
37f9ed call   0x2cc340
37f9f2 subss  xmm6,xmm7
37f9f6 movaps xmm2,xmm7
37f9f9 lea    rcx,[rbp+0x58]
37f9fd movaps xmm1,xmm6
37fa00 call   0x2cc340
37fa05 subss  xmm8,xmm7
37fa0a movaps xmm1,xmm6
37fa0d lea    rcx,[rbp+0x50]
37fa11 movaps xmm2,xmm8
37fa15 call   0x2cc340
37fa1a movaps xmm2,xmm8
37fa1e lea    rcx,[rbp+0x48]
37fa22 movaps xmm1,xmm7
37fa25 call   0x2cc340
37fa2a lea    rax,[rbp+0x48]
37fa2e mov    QWORD PTR [rsp+0x28],rax
37fa33 lea    r9,[rbp+0x58]
37fa37 lea    rax,[rbp+0x50]
37fa3b lea    r8,[rsp+0x30]
37fa40 mov    QWORD PTR [rsp+0x20],rax
37fa45 lea    rdx,[rbp+0x40]
37fa49 lea    rcx,[rbp-0x80]
37fa4d call   0x37ee9c
37fa52 mov    rcx,rsi
37fa55 xor    ebx,ebx
37fa57 call   0x37fd54
37fa5c test   rax,rax
37fa5f je     0x37faf5
37fa65 movsxd rdi,ebx
37fa68 mov    rcx,rsi
37fa6b mov    rdx,rdi
37fa6e call   0x37fc58
37fa73 mov    rdx,rax
37fa76 lea    rcx,[rsp+0x50]
37fa7b call   0x37eef8
37fa80 call   0x31581c
37fa85 comiss xmm0,DWORD PTR [rsp+0x74]
37fa8a jbe    0x37fabb
37fa8c lea    rdx,[rsp+0x38]
37fa91 mov    rcx,rsi
37fa94 call   0x2d7d90
37fa99 mov    rcx,rax
37fa9c lea    rdx,[rsp+0x40]
37faa1 mov    r8,rdi
37faa4 call   0x37efb8
37faa9 lea    rdx,[rsp+0x48]
37faae mov    rcx,rsi
37fab1 mov    r8,QWORD PTR [rax]
37fab4 call   0x37fcc4
37fab9 jmp    0x37fad5
37fabb lea    rdx,[rsp+0x50]
37fac0 lea    rcx,[rbp-0x58]
37fac4 call   0x37eef8
37fac9 mov    rdx,rax
37facc lea    rcx,[rbp-0x80]
37fad0 call   0x37eff0
37fad5 lea    rcx,[rsp+0x50]
37fada call   0x2cc504
37fadf mov    rcx,rsi
37fae2 inc    ebx
37fae4 call   0x37fd54
37fae9 movsxd rcx,ebx
37faec cmp    rcx,rax
37faef jb     0x37fa65
37faf5 lea    r11,[rsp+0x118]
37fafd movaps xmm6,XMMWORD PTR [r11-0x18]
37fb02 movaps xmm7,XMMWORD PTR [r11-0x28]
37fb07 movaps xmm8,XMMWORD PTR [r11-0x38]
37fb0c mov    rsp,r11
37fb0f pop    rdi
37fb10 pop    rsi
37fb11 pop    rbx
37fb12 pop    rbp
37fb13 ret

; pdata function 0x389830..0x389db4 unwind=0x3d4398
389830 mov    rax,rsp
389833 push   rbp
389834 push   rbx
389835 push   rsi
389836 push   rdi
389837 push   r12
389839 push   r13
38983b push   r14
38983d push   r15
38983f lea    rbp,[rax-0xf8]
389846 sub    rsp,0x1b8
38984d movaps XMMWORD PTR [rax-0x58],xmm6
389851 movaps XMMWORD PTR [rax-0x68],xmm7
389855 movsxd rdi,ecx
389858 lea    rcx,[rip+0x728a9]        # 0x3fc108
38985f movaps XMMWORD PTR [rax-0x78],xmm8
389864 mov    rdx,rdi
389867 movaps XMMWORD PTR [rax-0x88],xmm10
38986f movaps XMMWORD PTR [rax-0x98],xmm12
389877 call   0x3367b0
38987c mov    rdx,rax
38987f lea    rcx,[rbp+0x40]
389883 call   0x2d4194
389888 mov    rdx,rdi
38988b lea    rcx,[rip+0x72876]        # 0x3fc108
389892 call   0x3367b0
389897 lea    r12,[rax+0x20]
38989b call   0x35d200
3898a0 mov    r13,rax
3898a3 call   0x392ca4
3898a8 mov    rcx,r12
3898ab mov    r14,rax
3898ae call   0x2cd7ec
3898b3 mov    rdx,rax
3898b6 xor    r8d,r8d
3898b9 mov    rcx,r13
3898bc call   0x392614
3898c1 movss  xmm0,DWORD PTR [rip+0xffffffffffebf61f]        # 0x248ee8 ; f32=1
3898c9 lea    rcx,[rbp+0x118]
3898d0 movss  xmm1,DWORD PTR [r13+0x28]
3898d6 movaps xmm2,xmm0
3898d9 mulss  xmm0,DWORD PTR [rip+0xfffffffffff098fb]        # 0x2931dc ; f32=28
3898e1 mov    ebx,eax
3898e3 mulss  xmm2,DWORD PTR [rip+0xfffffffffff1fb45]        # 0x2a9430 ; f32=42
3898eb subss  xmm1,xmm0
3898ef call   0x2cc340
3898f4 movsd  xmm0,QWORD PTR [r13+0x100]
3898fd lea    r8,[rbp+0x118]
389904 lea    rdx,[rbp+0x108]
38990b movsd  QWORD PTR [rbp+0x108],xmm0
389913 lea    rcx,[rsp+0x60]
389918 call   0x2ef9d8
38991d mov    r8,rax
389920 lea    rdx,[rbp+0x108]
389927 lea    rcx,[rsp+0x50]
38992c call   0x2db388
389931 movss  xmm1,DWORD PTR [rip+0xfffffffffff09927]        # 0x293260 ; f32=-1
389939 lea    rcx,[rsp+0x50]
38993e call   0x37ca80
389943 xor    r9d,r9d
389946 lea    rcx,[rsp+0x50]
38994b xor    r8d,r8d
38994e mov    edx,ebx
389950 call   0x3948dc
389955 lea    r9,[rbp+0x110]
38995c mov    DWORD PTR [rsp+0x20],0x0
389964 lea    r8,[rbp+0x100]
38996b mov    edx,ebx
38996d lea    rcx,[rsp+0x50]
389972 call   0x3bc7e0
389977 cmp    edi,DWORD PTR [rip+0x79457]        # 0x402dd4
38997d xorps  xmm12,xmm12
389981 mov    BYTE PTR [rbp+0x108],al
389987 sete   bl
38998a test   al,al
38998c je     0x3899a2
38998e test   bl,bl
389990 jne    0x3899a2
389992 mov    DWORD PTR [rip+0xffffffffffef6074],0x0        # 0x27fa10
38999c mov    DWORD PTR [rip+0x79432],edi        # 0x402dd4
3899a2 xorps  xmm0,xmm0
3899a5 lea    rcx,[rbp-0x60]
3899a9 xor    edx,edx
3899ab movups XMMWORD PTR [rbp-0x70],xmm0
3899af call   0x3364d4
3899b4 xor    edx,edx
3899b6 lea    rcx,[rbp-0x50]
3899ba call   0x3364d4
3899bf movups xmm0,XMMWORD PTR [rbp-0x70]
3899c3 mov    rcx,r12
3899c6 movups xmm1,XMMWORD PTR [rbp-0x50]
3899ca movaps XMMWORD PTR [rbp-0x40],xmm0
3899ce movups xmm0,XMMWORD PTR [rbp-0x60]
3899d2 movaps XMMWORD PTR [rbp-0x20],xmm1
3899d6 movaps XMMWORD PTR [rbp-0x30],xmm0
3899da call   0x2cd7ec
3899df mov    rcx,rax
3899e2 lea    r8,[rbp-0x40]
3899e6 mov    edx,0x4
3899eb call   0x3810f0
3899f0 movss  xmm10,DWORD PTR [rip+0xfffffffffff0385b]        # 0x28d254 ; f32=1
3899f9 mov    cl,bl
3899fb or     cl,BYTE PTR [rbp+0x100]
389a01 movaps xmm2,xmm10
389a05 movss  xmm6,DWORD PTR [rip+0xfffffffffff097a7]        # 0x2931b4 ; f32=14
389a0d xorps  xmm1,xmm1
389a10 movss  xmm0,DWORD PTR [rax]
389a14 setne  r9b
389a18 movss  DWORD PTR [rsp+0x20],xmm6
389a1e mov    rsi,rax
389a21 call   0x335e48
389a26 movss  DWORD PTR [rsi],xmm0
389a2a mov    r9b,bl
389a2d movss  xmm0,DWORD PTR [rsi+0x8]
389a32 movaps xmm2,xmm10
389a36 xorps  xmm1,xmm1
389a39 movss  DWORD PTR [rsp+0x20],xmm6
389a3f call   0x335e48
389a44 movss  DWORD PTR [rsi+0x8],xmm0
389a49 movaps xmm2,xmm10
389a4d mov    r9b,BYTE PTR [rbp+0x100]
389a54 xorps  xmm1,xmm1
389a57 movss  xmm0,DWORD PTR [rsi+0x4]
389a5c movss  DWORD PTR [rsp+0x20],xmm6
389a62 call   0x335e48
389a67 movss  DWORD PTR [rsi+0x4],xmm0
389a6c movaps xmm2,xmm10
389a70 mov    r9b,BYTE PTR [rip+0x7268e]        # 0x3fc105
389a77 xorps  xmm1,xmm1
389a7a movss  xmm0,DWORD PTR [rsi+0xc]
389a7f movss  DWORD PTR [rsp+0x20],xmm6
389a85 call   0x335e48
389a8a movss  xmm8,DWORD PTR [rsi+0x8]
389a90 mov    ebx,0x1
389a95 mov    ecx,ebx
389a97 movss  DWORD PTR [rsi+0xc],xmm0
389a9c movaps xmm1,xmm0
389a9f call   0x392298
389aa4 mov    edx,eax
389aa6 lea    rcx,[rbp-0x10]
389aaa call   0x3364d4
389aaf movss  xmm1,DWORD PTR [rsi+0xc]
389ab4 mov    ecx,ebx
389ab6 mulss  xmm1,DWORD PTR [rip+0xfffffffffff0960e]        # 0x2930cc ; f32=0.7
389abe movdqu xmm6,XMMWORD PTR [rax]
389ac2 movss  xmm7,DWORD PTR [rsi+0x4]
389ac7 call   0x392298
389acc mov    edx,eax
389ace lea    rcx,[rbp+0x0]
389ad2 call   0x3364d4
389ad7 movss  xmm1,DWORD PTR [rsi+0xc]
389adc lea    ecx,[rbx+0x1]
389adf movups xmm0,XMMWORD PTR [rax]
389ae2 movdqu XMMWORD PTR [rsp+0x60],xmm0
389ae8 call   0x392298
389aed mov    edx,eax
389aef lea    rcx,[rbp+0x10]
389af3 call   0x3364d4
389af8 movdqa XMMWORD PTR [rbp-0x80],xmm6
389afd movups xmm0,XMMWORD PTR [rax]
389b00 movdqu XMMWORD PTR [rsp+0x70],xmm0
389b06 movaps xmm3,xmm7
389b09 lea    r8,[rsp+0x60]
389b0e lea    rdx,[rsp+0x70]
389b13 lea    rcx,[rbp+0x20]
389b17 call   0x3795a4
389b1c movaps xmm3,xmm8
389b20 lea    r8,[rbp-0x80]
389b24 lea    rdx,[rsp+0x70]
389b29 lea    rcx,[rbp+0x30]
389b2d movups xmm0,XMMWORD PTR [rax]
389b30 lea    r15,[rsi+0x10]
389b34 movdqu XMMWORD PTR [rsp+0x70],xmm0
389b3a call   0x3795a4
389b3f movss  xmm8,DWORD PTR [rsi+0x8]
389b45 movaps xmm1,xmm10
389b49 xor    ecx,ecx
389b4b movups xmm0,XMMWORD PTR [rax]
389b4e movdqu XMMWORD PTR [r15],xmm0
389b53 call   0x392298
389b58 mov    edx,eax
389b5a lea    rcx,[rbp+0x30]
389b5e call   0x3364d4
389b63 movss  xmm1,DWORD PTR [rip+0xfffffffffff09561]        # 0x2930cc ; f32=0.7
389b6b mov    ecx,ebx
389b6d movss  xmm7,DWORD PTR [rsi+0x4]
389b72 movdqu xmm6,XMMWORD PTR [rax]
389b76 call   0x392298
389b7b mov    edx,eax
389b7d lea    rcx,[rbp+0x20]
389b81 call   0x3364d4
389b86 movaps xmm1,xmm10
389b8a lea    ecx,[rbx+0x1]
389b8d movups xmm0,XMMWORD PTR [rax]
389b90 movdqu XMMWORD PTR [rbp-0x80],xmm0
389b95 call   0x392298
389b9a mov    edx,eax
389b9c lea    rcx,[rbp+0x10]
389ba0 call   0x3364d4
389ba5 movaps xmm3,xmm7
389ba8 movdqa XMMWORD PTR [rsp+0x60],xmm6
389bae lea    r8,[rbp-0x80]
389bb2 lea    rdx,[rsp+0x70]
389bb7 movups xmm0,XMMWORD PTR [rax]
389bba lea    rcx,[rbp+0x0]
389bbe movdqu XMMWORD PTR [rsp+0x70],xmm0
389bc4 call   0x3795a4
389bc9 movaps xmm3,xmm8
389bcd lea    r8,[rsp+0x60]
389bd2 lea    rdx,[rbp-0x80]
389bd6 lea    rcx,[rbp-0x10]
389bda movups xmm0,XMMWORD PTR [rax]
389bdd lea    rdi,[rsi+0x20]
389be1 movdqu XMMWORD PTR [rbp-0x80],xmm0
389be6 call   0x3795a4
389beb movss  xmm1,DWORD PTR [rsi+0x8]
389bf0 mov    ecx,0x8
389bf5 movups xmm0,XMMWORD PTR [rax]
389bf8 movdqu XMMWORD PTR [rdi],xmm0
389bfc mov    rbx,QWORD PTR [r13+0x298]
389c03 movss  xmm6,DWORD PTR [r14+0x44]
389c09 call   0x392298
389c0e mov    r9d,eax
389c11 mov    DWORD PTR [rsp+0x28],0x0
389c19 lea    r8,[rsp+0x58]
389c1e movss  DWORD PTR [rsp+0x20],xmm6
389c24 lea    rdx,[rsp+0x50]
389c29 mov    rcx,rbx
389c2c call   0x3a1244
389c31 mov    r14,QWORD PTR [r13+0x298]
389c38 lea    rcx,[rbp+0x40]
389c3c call   0x2cd7ec
389c41 mov    rcx,rdi
389c44 mov    rsi,rax
389c47 call   0x2ef80c
389c4c movss  xmm2,DWORD PTR [rip+0xffffffffffebf294]        # 0x248ee8 ; f32=1
389c54 lea    rdx,[rsp+0x50]
389c59 mulss  xmm2,DWORD PTR [rip+0xfffffffffff0954f]        # 0x2931b0 ; f32=13
389c61 lea    rcx,[rbp+0x118]
389c68 mov    edi,eax
389c6a call   0x382dc4
389c6f mov    rbx,rax
389c72 movss  xmm7,DWORD PTR [rip+0xffffffffffebf26e]        # 0x248ee8 ; f32=1
389c7a lea    rcx,[rip+0x7245f]        # 0x3fc0e0
389c81 movss  xmm6,DWORD PTR [rip+0xfffffffffff09533]        # 0x2931bc ; f32=16
389c89 mov    edx,0x2
389c8e mulss  xmm7,xmm6
389c92 call   0x3367b8
389c97 mov    rcx,rax
389c9a movaps xmm1,xmm6
389c9d call   0x364aec
389ca2 mov    QWORD PTR [rsp+0x40],0x0
389cab mov    rdx,rax
389cae movss  DWORD PTR [rsp+0x38],xmm12
389cb5 mov    r9,rbx
389cb8 mov    QWORD PTR [rsp+0x30],0x0
389cc1 movaps xmm2,xmm7
389cc4 mov    QWORD PTR [rsp+0x28],rsi
389cc9 mov    rcx,r14
389ccc mov    DWORD PTR [rsp+0x20],edi
389cd0 call   0x3a31f8
389cd5 mov    r14,QWORD PTR [r13+0x298]
389cdc mov    rcx,r12
389cdf call   0x2cd7ec
389ce4 mov    rcx,rax
389ce7 xor    edx,edx
389ce9 call   0x391c50
389cee mov    rcx,r12
389cf1 mov    rsi,rax
389cf4 call   0x2cd7ec
389cf9 mov    rcx,r15
389cfc mov    rdi,rax
389cff call   0x2ef80c
389d04 movss  xmm6,DWORD PTR [rip+0xffffffffffebf1dc]        # 0x248ee8 ; f32=1
389d0c lea    rdx,[rsp+0x60]
389d11 mulss  xmm6,DWORD PTR [rip+0xfffffffffff1f717]        # 0x2a9430 ; f32=42
389d19 lea    rcx,[rsp+0x50]
389d1e mov    ebx,eax
389d20 addss  xmm6,DWORD PTR [rsp+0x50]
389d26 call   0x3788f4
389d2b mov    rdx,QWORD PTR [rip+0x7bdf6]        # 0x405b28
389d32 lea    rcx,[rbp+0x118]
389d39 movaps xmm1,xmm6
389d3c movss  xmm2,DWORD PTR [rax+0x4]
389d41 movss  xmm0,DWORD PTR [rdx+0x3c30]
389d49 mulss  xmm0,DWORD PTR [rip+0xfffffffffff034ff]        # 0x28d250 ; f32=0.5
389d51 subss  xmm2,xmm0
389d55 call   0x2cc340
389d5a mov    r9,rdi
389d5d mov    QWORD PTR [rsp+0x20],rsi
389d62 mov    r8d,ebx
389d65 lea    rdx,[rbp+0x118]
389d6c mov    rcx,r14
389d6f call   0x3a31bc
389d74 lea    rcx,[rbp+0x40]
389d78 call   0x2cc4f4
389d7d mov    al,BYTE PTR [rbp+0x108]
389d83 lea    r11,[rsp+0x1b8]
389d8b movaps xmm6,XMMWORD PTR [r11-0x18]
389d90 movaps xmm7,XMMWORD PTR [r11-0x28]
389d95 movaps xmm8,XMMWORD PTR [r11-0x38]
389d9a movaps xmm10,XMMWORD PTR [r11-0x48]
389d9f movaps xmm12,XMMWORD PTR [r11-0x58]
389da4 mov    rsp,r11
389da7 pop    r15
389da9 pop    r14
389dab pop    r13
389dad pop    r12
389daf pop    rdi
389db0 pop    rsi
389db1 pop    rbx
389db2 pop    rbp
389db3 ret

; pdata function 0x3893b0..0x38982e unwind=0x3d43c4
3893b0 mov    rax,rsp
3893b3 push   rbp
3893b4 push   rbx
3893b5 push   rsi
3893b6 push   rdi
3893b7 push   r12
3893b9 push   r13
3893bb push   r14
3893bd push   r15
3893bf lea    rbp,[rsp-0x68]
3893c4 sub    rsp,0x168
3893cb movsxd rdx,DWORD PTR [rip+0x72d2e]        # 0x3fc100
3893d2 lea    r15,[rip+0x72d2f]        # 0x3fc108
3893d9 movaps XMMWORD PTR [rax-0x58],xmm6
3893dd movaps XMMWORD PTR [rax-0x68],xmm7
3893e1 movaps XMMWORD PTR [rax-0x78],xmm8
3893e6 movaps XMMWORD PTR [rax-0x88],xmm9
3893ee movsxd rdi,ecx
3893f1 mov    rcx,r15
3893f4 movaps XMMWORD PTR [rax-0x98],xmm10
3893fc movaps XMMWORD PTR [rax-0xa8],xmm11
389404 call   0x3367b0
389409 mov    rdx,rdi
38940c lea    rcx,[rax+0x40]
389410 call   0x2d4d20
389415 mov    rdx,rax
389418 lea    rcx,[rbp-0x80]
38941c call   0x2d4194
389421 call   0x35d200
389426 mov    r12,rax
389429 call   0x392ca4
38942e lea    rcx,[rbp-0x80]
389432 call   0x2cd7ec
389437 mov    rdx,rax
38943a xor    r8d,r8d
38943d mov    rcx,r12
389440 call   0x392614
389445 movss  xmm6,DWORD PTR [r12+0x2c]
38944c lea    rcx,[rbp-0x80]
389450 mov    ebx,eax
389452 call   0x2cd7ec
389457 movss  xmm10,DWORD PTR [rip+0xfffffffffff09e00]        # 0x293260 ; f32=-1
389460 lea    rcx,[rbp+0xc0]
389467 mov    rdx,rax
38946a movss  DWORD PTR [rsp+0x20],xmm10
389471 mov    r9b,0x1
389474 xor    r8d,r8d
389477 call   0x38f79c
38947c movaps xmm2,xmm6
38947f lea    rcx,[rbp+0xc8]
389486 movss  xmm1,DWORD PTR [rax]
38948a call   0x2cc340
38948f movsd  xmm0,QWORD PTR [r12+0x100]
389499 lea    r8,[rbp+0xc8]
3894a0 lea    rdx,[rbp+0xc0]
3894a7 movsd  QWORD PTR [rbp+0xc0],xmm0
3894af lea    rcx,[rsp+0x40]
3894b4 call   0x2ef9d8
3894b9 mov    r8,rax
3894bc lea    rdx,[rbp+0xc0]
3894c3 lea    rcx,[rsp+0x30]
3894c8 call   0x2db388
3894cd movaps xmm1,xmm10
3894d1 lea    rcx,[rsp+0x30]
3894d6 call   0x37ca80
3894db xor    r9d,r9d
3894de lea    rcx,[rsp+0x30]
3894e3 xor    r8d,r8d
3894e6 mov    edx,ebx
3894e8 call   0x3948dc
3894ed lea    r9,[rbp+0xb8]
3894f4 mov    DWORD PTR [rsp+0x20],0x0
3894fc lea    r8,[rbp+0xb0]
389503 mov    edx,ebx
389505 lea    rcx,[rsp+0x30]
38950a call   0x3bc7e0
38950f movsxd rsi,DWORD PTR [rip+0x72bea]        # 0x3fc100
389516 mov    rcx,r15
389519 mov    rdx,rsi
38951c mov    r13b,al
38951f call   0x3367b0
389524 xorps  xmm11,xmm11
389528 mov    ebx,DWORD PTR [rax+0x74]
38952b cmp    edi,ebx
38952d sete   r14b
389531 test   r13b,r13b
389534 je     0x389552
389536 cmp    edi,ebx
389538 je     0x389552
38953a mov    rdx,rsi
38953d mov    DWORD PTR [rip+0xffffffffffef64cd],0x0        # 0x27fa14
389547 mov    rcx,r15
38954a call   0x3367b0
38954f mov    DWORD PTR [rax+0x74],edi
389552 xor    edx,edx
389554 mov    QWORD PTR [rsp+0x60],0x0
38955d lea    rcx,[rsp+0x6c]
389562 mov    DWORD PTR [rsp+0x68],0x0
38956a call   0x3364d4
38956f movups xmm0,XMMWORD PTR [rsp+0x60]
389574 lea    rcx,[rbp-0x80]
389578 movups xmm1,XMMWORD PTR [rsp+0x6c]
38957d movaps XMMWORD PTR [rbp-0x60],xmm0
389581 movups XMMWORD PTR [rbp-0x54],xmm1
389585 call   0x2cd7ec
38958a mov    rcx,rax
38958d lea    r8,[rbp-0x60]
389591 mov    edx,0x5
389596 call   0x381020
38959b cmp    BYTE PTR [rbp+0xb0],0x0
3895a2 mov    rsi,rax
3895a5 jne    0x3895b0
3895a7 cmp    edi,ebx
3895a9 je     0x3895b0
3895ab xor    r9d,r9d
3895ae jmp    0x3895b3
3895b0 mov    r9b,0x1
3895b3 movss  xmm9,DWORD PTR [rip+0xfffffffffff03c98]        # 0x28d254 ; f32=1
3895bc xorps  xmm1,xmm1
3895bf movss  xmm6,DWORD PTR [rip+0xfffffffffff09bed]        # 0x2931b4 ; f32=14
3895c7 movaps xmm2,xmm9
3895cb movss  xmm0,DWORD PTR [rax]
3895cf movss  DWORD PTR [rsp+0x20],xmm6
3895d5 call   0x335e48
3895da movss  DWORD PTR [rsi],xmm0
3895de mov    r9b,r14b
3895e1 movss  xmm0,DWORD PTR [rsi+0x8]
3895e6 movaps xmm2,xmm9
3895ea xorps  xmm1,xmm1
3895ed movss  DWORD PTR [rsp+0x20],xmm6
3895f3 call   0x335e48
3895f8 movss  DWORD PTR [rsi+0x8],xmm0
3895fd movaps xmm2,xmm9
389601 mov    r9b,BYTE PTR [rbp+0xb0]
389608 xorps  xmm1,xmm1
38960b movss  xmm0,DWORD PTR [rsi+0x4]
389610 movss  DWORD PTR [rsp+0x20],xmm6
389616 call   0x335e48
38961b movss  xmm8,DWORD PTR [rsi+0x8]
389621 movaps xmm1,xmm9
389625 mov    ecx,0x1
38962a movss  DWORD PTR [rsi+0x4],xmm0
38962f call   0x392298
389634 mov    edx,eax
389636 lea    rcx,[rbp-0x30]
38963a call   0x3364d4
38963f movss  xmm1,DWORD PTR [rip+0xfffffffffff09a85]        # 0x2930cc ; f32=0.7
389647 mov    ecx,0x1
38964c movss  xmm7,DWORD PTR [rsi+0x4]
389651 movdqu xmm6,XMMWORD PTR [rax]
389655 call   0x392298
38965a mov    edx,eax
38965c lea    rcx,[rbp-0x20]
389660 call   0x3364d4
389665 movaps xmm1,xmm9
389669 mov    ecx,0x2
38966e movups xmm0,XMMWORD PTR [rax]
389671 movdqu XMMWORD PTR [rsp+0x40],xmm0
389677 call   0x392298
38967c mov    edx,eax
38967e lea    rcx,[rbp-0x10]
389682 call   0x3364d4
389687 movaps xmm3,xmm7
38968a movdqa XMMWORD PTR [rbp-0x40],xmm6
38968f lea    r8,[rsp+0x40]
389694 lea    rdx,[rsp+0x50]
389699 movups xmm0,XMMWORD PTR [rax]
38969c lea    rcx,[rbp-0x60]
3896a0 movdqu XMMWORD PTR [rsp+0x50],xmm0
3896a6 call   0x3795a4
3896ab movaps xmm3,xmm8
3896af lea    r8,[rbp-0x40]
3896b3 lea    rdx,[rsp+0x50]
3896b8 lea    rcx,[rsp+0x60]
3896bd movups xmm0,XMMWORD PTR [rax]
3896c0 lea    r15,[rsi+0xc]
3896c4 movdqu XMMWORD PTR [rsp+0x50],xmm0
3896ca call   0x3795a4
3896cf movss  xmm1,DWORD PTR [rsi+0x8]
3896d4 xor    ecx,ecx
3896d6 movups xmm0,XMMWORD PTR [rax]
3896d9 movdqu XMMWORD PTR [r15],xmm0
3896de mov    rdi,QWORD PTR [r12+0x298]
3896e6 call   0x392298
3896eb movss  xmm0,DWORD PTR [rip+0xffffffffffebf7f5]        # 0x248ee8 ; f32=1
3896f3 lea    rcx,[rbp+0xc0]
3896fa mulss  xmm0,DWORD PTR [rip+0xfffffffffff09a32]        # 0x293134 ; f32=2
389702 mov    ebx,eax
389704 movss  xmm2,DWORD PTR [rsp+0x3c]
38970a movss  xmm1,DWORD PTR [rsp+0x30]
389710 subss  xmm2,xmm0
389714 call   0x2cc340
389719 mov    DWORD PTR [rsp+0x28],0x0
389721 lea    r8,[rsp+0x38]
389726 movss  DWORD PTR [rsp+0x20],xmm11
38972d lea    rdx,[rbp+0xc0]
389734 mov    r9d,ebx
389737 mov    rcx,rdi
38973a call   0x3a1244
38973f mov    r12,QWORD PTR [r12+0x298]
389747 lea    rcx,[rbp-0x80]
38974b call   0x2cd7ec
389750 mov    rcx,rax
389753 xor    edx,edx
389755 call   0x391c50
38975a lea    rcx,[rbp-0x80]
38975e mov    r14,rax
389761 call   0x2cd7ec
389766 mov    rcx,r15
389769 mov    rsi,rax
38976c call   0x2ef80c
389771 lea    rdx,[rbp+0xc8]
389778 mov    edi,eax
38977a lea    rcx,[rsp+0x30]
38977f call   0x3788f4
389784 lea    rcx,[rbp-0x80]
389788 mov    rbx,rax
38978b call   0x2cd7ec
389790 mov    rdx,rax
389793 movss  DWORD PTR [rsp+0x20],xmm10
38979a mov    r9b,0x1
38979d lea    rcx,[rsp+0x40]
3897a2 xor    r8d,r8d
3897a5 call   0x38f79c
3897aa movss  xmm2,DWORD PTR [rbx+0x4]
3897af lea    rcx,[rbp+0xc0]
3897b6 movss  xmm1,DWORD PTR [rsp+0x30]
3897bc movss  xmm0,DWORD PTR [rax+0x4]
3897c1 mulss  xmm0,DWORD PTR [rip+0xfffffffffff03a87]        # 0x28d250 ; f32=0.5
3897c9 subss  xmm2,xmm0
3897cd call   0x2cc340
3897d2 mov    r9,rsi
3897d5 mov    QWORD PTR [rsp+0x20],r14
3897da mov    r8d,edi
3897dd lea    rdx,[rbp+0xc0]
3897e4 mov    rcx,r12
3897e7 call   0x3a31bc
3897ec lea    rcx,[rbp-0x80]
3897f0 call   0x2cc4f4
3897f5 lea    r11,[rsp+0x168]
3897fd mov    al,r13b
389800 movaps xmm6,XMMWORD PTR [r11-0x18]
389805 movaps xmm7,XMMWORD PTR [r11-0x28]
38980a movaps xmm8,XMMWORD PTR [r11-0x38]
38980f movaps xmm9,XMMWORD PTR [r11-0x48]
389814 movaps xmm10,XMMWORD PTR [r11-0x58]
389819 movaps xmm11,XMMWORD PTR [r11-0x68]
38981e mov    rsp,r11
389821 pop    r15
389823 pop    r14
389825 pop    r13
389827 pop    r12
389829 pop    rdi
38982a pop    rsi
38982b pop    rbx
38982c pop    rbp
38982d ret

; pdata function 0x388b4c..0x388c0b unwind=0x3d2130
388b4c rex push rbx
388b4e push   rbp
388b4f push   rsi
388b50 push   rdi
388b51 sub    rsp,0x28
388b55 movsxd rdi,DWORD PTR [rip+0x735a4]        # 0x3fc100
388b5c lea    rbp,[rip+0x735a5]        # 0x3fc108
388b63 mov    rdx,rdi
388b66 mov    rcx,rbp
388b69 call   0x3367b0
388b6e lea    rcx,[rax+0x58]
388b72 call   0x2d93c8
388b77 test   rax,rax
388b7a je     0x388c02
388b80 mov    rdx,rdi
388b83 mov    rcx,rbp
388b86 call   0x3367b0
388b8b lea    rcx,[rax+0x58]
388b8f call   0x2d93c8
388b94 mov    rdx,rdi
388b97 mov    rcx,rbp
388b9a mov    rbx,rax
388b9d call   0x3367b0
388ba2 movsxd rcx,DWORD PTR [rax+0x70]
388ba6 cmp    rbx,rcx
388ba9 jbe    0x388c02
388bab cmp    DWORD PTR [rip+0x7a223],edi        # 0x402dd4
388bb1 je     0x388bd7
388bb3 call   0x35d200
388bb8 mov    DWORD PTR [rax+0x88],0x0
388bc2 call   0x35d200
388bc7 mov    DWORD PTR [rax+0x98],0x0
388bd1 mov    edi,DWORD PTR [rip+0x73529]        # 0x3fc100
388bd7 movsxd rbx,edi
388bda mov    rcx,rbp
388bdd mov    rdx,rbx
388be0 call   0x3367b0
388be5 mov    rdx,rbx
388be8 mov    rcx,rbp
388beb mov    rdi,rax
388bee call   0x3367b0
388bf3 lea    rcx,[rdi+0x58]
388bf7 movsxd rdx,DWORD PTR [rax+0x70]
388bfb call   0x2ef7b4
388c00 call   QWORD PTR [rax]
388c02 add    rsp,0x28
388c06 pop    rdi
388c07 pop    rsi
388c08 pop    rbp
388c09 pop    rbx
388c0a ret

; pdata function 0x386fa4..0x38724c unwind=0x3d45d0
386fa4 rex push rbx
386fa6 push   rbp
386fa7 push   rsi
386fa8 push   rdi
386fa9 push   r12
386fab push   r13
386fad push   r14
386faf push   r15
386fb1 sub    rsp,0x68
386fb5 movaps XMMWORD PTR [rsp+0x50],xmm7
386fba movaps XMMWORD PTR [rsp+0x40],xmm8
386fc0 movaps XMMWORD PTR [rsp+0x30],xmm9
386fc6 call   0x3926ac
386fcb movss  xmm9,DWORD PTR [rip+0xfffffffffff06280]        # 0x28d254 ; f32=1
386fd4 lea    r13,[rip+0xffffffffffc79025]        # 0x0
386fdb xor    r14d,r14d
386fde xorps  xmm7,xmm7
386fe1 lea    ebp,[r14+0x1]
386fe5 movsxd rax,r14d
386fe8 mov    r14d,ebp
386feb cmp    ebp,0x90
386ff1 jge    0x3870db
386ff7 shl    rax,0x3
386ffb lea    r12,[r13+0x402de0]
387002 add    r12,rax
387005 lea    r15,[rip+0x7bdd8]        # 0x402de4
38700c add    r15,rax
38700f movsxd rax,ebp
387012 lea    rbx,[r13+0x402de0]
387019 movss  xmm0,DWORD PTR [r13+rax*8+0x402de4]
387023 lea    rbx,[rbx+rax*8]
387027 subss  xmm0,DWORD PTR [r15]
38702c movss  xmm1,DWORD PTR [rbx]
387030 subss  xmm1,DWORD PTR [r12]
387036 mulss  xmm0,xmm0
38703a mulss  xmm1,xmm1
38703e addss  xmm0,xmm1
387042 call   0x2e3ee8
387047 divss  xmm0,DWORD PTR [rip+0xfffffffffff223e9]        # 0x2a9438 ; f32=55
38704f movaps xmm1,xmm9
387053 subss  xmm1,xmm0
387057 comiss xmm1,xmm7
38705a jbe    0x3870c8
38705c xor    ecx,ecx
38705e call   0x392298
387063 mov    edi,eax
387065 call   0x392ecc
38706a lea    rcx,[rsp+0xb0]
387072 mov    rsi,rax
387075 call   0x392ef8
38707a mov    rdx,rax
38707d lea    rcx,[rsp+0xb8]
387085 mov    r8,rbx
387088 call   0x2ef9d8
38708d lea    rcx,[rsp+0xc0]
387095 mov    rbx,rax
387098 call   0x392ef8
38709d mov    rdx,rax
3870a0 lea    rcx,[rsp+0xc8]
3870a8 mov    r8,r12
3870ab call   0x2ef9d8
3870b0 mov    rdx,rax
3870b3 movss  DWORD PTR [rsp+0x20],xmm9
3870ba mov    r9d,edi
3870bd mov    r8,rbx
3870c0 mov    rcx,rsi
3870c3 call   0x3a01f4
3870c8 inc    ebp
3870ca cmp    ebp,0x90
3870d0 jl     0x38700f
3870d6 jmp    0x386fe1
3870db call   0x3926ac
3870e0 xor    esi,esi
3870e2 movss  xmm8,DWORD PTR [rax+0x10]
3870e8 movss  xmm2,DWORD PTR [r13+rsi*8+0x403260]
3870f2 lea    rbp,[r13+0x402de0]
3870f9 lea    rbp,[rbp+rsi*8+0x0]
3870fe movaps xmm1,xmm2
387101 movaps xmm0,xmm8
387105 mulss  xmm1,xmm8
38710a mulss  xmm0,DWORD PTR [r13+rsi*8+0x403264]
387114 addss  xmm1,DWORD PTR [rbp+0x0]
387119 addss  xmm0,DWORD PTR [r13+rsi*8+0x402de4]
387123 comiss xmm7,xmm1
387126 movss  DWORD PTR [rbp+0x0],xmm1
38712b movss  DWORD PTR [r13+rsi*8+0x402de4],xmm0
387135 jb     0x387148
387137 xorps  xmm2,XMMWORD PTR [rip+0xfffffffffff0c162]        # 0x2932a0
38713e movss  DWORD PTR [r13+rsi*8+0x403260],xmm2
387148 call   0x392f34
38714d movss  xmm1,DWORD PTR [rbp+0x0]
387152 comiss xmm1,xmm0
387155 jb     0x387172
387157 movss  xmm0,DWORD PTR [r13+rsi*8+0x403260]
387161 xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff0c138]        # 0x2932a0
387168 movss  DWORD PTR [r13+rsi*8+0x403260],xmm0
387172 comiss xmm7,DWORD PTR [r13+rsi*8+0x402de4]
38717b jb     0x387198
38717d movss  xmm0,DWORD PTR [r13+rsi*8+0x403264]
387187 xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff0c112]        # 0x2932a0
38718e movss  DWORD PTR [r13+rsi*8+0x403264],xmm0
387198 call   0x392ee4
38719d movss  xmm1,DWORD PTR [r13+rsi*8+0x402de4]
3871a7 comiss xmm1,xmm0
3871aa jb     0x3871c7
3871ac movss  xmm0,DWORD PTR [r13+rsi*8+0x403264]
3871b6 xorps  xmm0,XMMWORD PTR [rip+0xfffffffffff0c0e3]        # 0x2932a0
3871bd movss  DWORD PTR [r13+rsi*8+0x403264],xmm0
3871c7 call   0x392ecc
3871cc movaps xmm1,xmm9
3871d0 xor    ecx,ecx
3871d2 mov    rdi,rax
3871d5 call   0x392298
3871da lea    rcx,[rsp+0xb0]
3871e2 mov    ebx,eax
3871e4 call   0x392ef8
3871e9 mov    rdx,rax
3871ec lea    rcx,[rsp+0xb8]
3871f4 mov    r8,rbp
3871f7 call   0x2ef9d8
3871fc movss  xmm2,DWORD PTR [rip+0xfffffffffff068f8]        # 0x28dafc ; f32=1.5
387204 mov    rdx,rax
387207 mov    r9d,ebx
38720a mov    DWORD PTR [rsp+0x20],0x0
387212 mov    rcx,rdi
387215 call   0x39f874
38721a inc    rsi
38721d cmp    rsi,0x90
387224 jne    0x3870e8
38722a movaps xmm7,XMMWORD PTR [rsp+0x50]
38722f movaps xmm8,XMMWORD PTR [rsp+0x40]
387235 movaps xmm9,XMMWORD PTR [rsp+0x30]
38723b add    rsp,0x68
38723f pop    r15
387241 pop    r14
387243 pop    r13
387245 pop    r12
387247 pop    rdi
387248 pop    rsi
387249 pop    rbp
38724a pop    rbx
38724b ret

; pdata function 0x3872e8..0x3873ee unwind=0x3d2040
3872e8 mov    QWORD PTR [rsp+0x8],rbx
3872ed push   rdi
3872ee sub    rsp,0x20
3872f2 call   0x3926ac
3872f7 movss  xmm2,DWORD PTR [rip+0x757f9]        # 0x3fcaf8 ; CONFIG F.GUIAnimationSpeed value(+0x48)
3872ff movss  xmm1,DWORD PTR [rip+0xffffffffffef8709]        # 0x27fa10 ; f32=1
387307 movss  xmm0,DWORD PTR [rip+0x74de9]        # 0x3fc0f8
38730f mulss  xmm2,DWORD PTR [rax+0x10]
387314 call   0x33565c
387319 movss  DWORD PTR [rip+0x74dd7],xmm0        # 0x3fc0f8
387321 call   0x3926ac
387326 movss  xmm2,DWORD PTR [rip+0x757ca]        # 0x3fcaf8 ; CONFIG F.GUIAnimationSpeed value(+0x48)
38732e movss  xmm1,DWORD PTR [rip+0xffffffffffef86de]        # 0x27fa14 ; f32=1
387336 movss  xmm0,DWORD PTR [rip+0x74dbe]        # 0x3fc0fc
38733e mulss  xmm2,DWORD PTR [rax+0x10]
387343 call   0x33565c
387348 movss  xmm2,DWORD PTR [rip+0xfffffffffff06e70]        # 0x28e1c0 ; f32=0.001
387350 comiss xmm2,DWORD PTR [rip+0x74da1]        # 0x3fc0f8
387357 movss  DWORD PTR [rip+0x74d9d],xmm0        # 0x3fc0fc
38735f seta   al
387362 comiss xmm2,xmm0
387365 seta   cl
387368 cmp    BYTE PTR [rip+0x751a9],0x0        # 0x3fc518 ; CONFIG Bools.DisableAnimations value(+0x48)
38736f je     0x387389
387371 mov    cl,0x1
387373 mov    DWORD PTR [rip+0x74d7b],0x3f800000        # 0x3fc0f8
38737d mov    DWORD PTR [rip+0x74d75],0x3f800000        # 0x3fc0fc
387387 jmp    0x38738d
387389 test   al,al
38738b je     0x3873a5
38738d mov    eax,DWORD PTR [rip+0x7ba41]        # 0x402dd4
387393 mov    DWORD PTR [rip+0x74d67],eax        # 0x3fc100
387399 mov    DWORD PTR [rip+0xffffffffffef866d],0x3f800000        # 0x27fa10
3873a3 jmp    0x3873ab
3873a5 mov    eax,DWORD PTR [rip+0x74d55]        # 0x3fc100
3873ab test   cl,cl
3873ad je     0x3873e3
3873af movsxd rdi,eax
3873b2 lea    rcx,[rip+0x74d4f]        # 0x3fc108
3873b9 mov    rdx,rdi
3873bc mov    DWORD PTR [rip+0xffffffffffef864e],0x3f800000        # 0x27fa14
3873c6 call   0x3367b0
3873cb mov    rdx,rdi
3873ce lea    rcx,[rip+0x74d33]        # 0x3fc108
3873d5 mov    rbx,rax
3873d8 call   0x3367b0
3873dd mov    ecx,DWORD PTR [rbx+0x74]
3873e0 mov    DWORD PTR [rax+0x70],ecx
3873e3 mov    rbx,QWORD PTR [rsp+0x30]
3873e8 add    rsp,0x20
3873ec pop    rdi
3873ed ret

; pdata function 0x38724c..0x387272 unwind=0x3d2064
38724c sub    rsp,0x28
387250 mov    ecx,0x1
387255 call   0x39896c
38725a call   0x390a88
38725f call   0x390a88
387264 mov    ecx,0x1
387269 add    rsp,0x28
38726d jmp    0x39896c

; pdata function 0x365038..0x365815 unwind=0x3d3800
365038 mov    rax,rsp
36503b push   rbp
36503c push   rbx
36503d push   rsi
36503e push   rdi
36503f push   r14
365041 push   r15
365043 lea    rbp,[rax-0x5f]
365047 sub    rsp,0xd8
36504e movaps XMMWORD PTR [rax-0x48],xmm6
365052 lea    rdx,[rbp+0x67]
365056 movaps XMMWORD PTR [rax-0x58],xmm7
36505a lea    rcx,[rbp+0x67]
36505e movaps XMMWORD PTR [rax-0x68],xmm8
365063 movaps XMMWORD PTR [rax-0x78],xmm10
365068 movaps XMMWORD PTR [rax-0x88],xmm11
365070 call   0x352328
365075 mov    rcx,rax
365078 call   0x2dd138
36507d xor    edx,edx
36507f mov    rcx,rax
365082 lea    r8d,[rdx+0x2f]
365086 call   0x38cfa4
36508b movss  xmm2,DWORD PTR [rip+0xffffffffffee3e79]        # 0x248f0c ; f32=580
365093 lea    rcx,[rbp+0x67]
365097 movss  xmm1,DWORD PTR [rip+0xfffffffffff29149]        # 0x28e1e8 ; f32=300
36509f call   0x2cc340
3650a4 xor    edx,edx
3650a6 lea    rcx,[rbp+0x67]
3650aa call   0x39bc6c
3650af call   0x392ecc
3650b4 mov    rcx,QWORD PTR [rip+0xa0a6d]        # 0x405b28
3650bb mov    edx,0x11
3650c0 mov    rdi,rax
3650c3 movss  xmm0,DWORD PTR [rcx+0x37d0]
3650cb lea    r9d,[rdx-0x1]
3650cf movss  xmm8,DWORD PTR [rcx+0x37e0]
3650d8 lea    r8d,[rdx+0x2]
3650dc mulss  xmm0,DWORD PTR [rip+0xfffffffffff28600]        # 0x28d6e4 ; f32=255
3650e4 cvttss2si ecx,xmm0
3650e8 mov    DWORD PTR [rsp+0x20],ecx
3650ec lea    rcx,[rbp-0x39]
3650f0 call   0x2db318
3650f5 mov    rcx,rax
3650f8 call   0x2ef80c
3650fd lea    rcx,[rbp+0x6f]
365101 mov    ebx,eax
365103 call   0x392ef8
365108 movss  xmm6,DWORD PTR [rax]
36510c call   0x392f34
365111 movaps xmm7,xmm0
365114 lea    rcx,[rbp+0x77]
365118 addss  xmm7,xmm6
36511c call   0x392ef8
365121 movss  xmm6,DWORD PTR [rax+0x4]
365126 call   0x392ee4
36512b addss  xmm6,xmm0
36512f movaps xmm1,xmm7
365132 lea    rcx,[rbp+0x67]
365136 movaps xmm2,xmm6
365139 call   0x2cc340
36513e lea    rcx,[rbp+0x7f]
365142 call   0x392ef8
365147 lea    rcx,[rbp-0x59]
36514b movss  xmm6,DWORD PTR [rax]
36514f call   0x392ef8
365154 movaps xmm1,xmm6
365157 lea    rcx,[rbp-0x49]
36515b movss  xmm2,DWORD PTR [rax+0x4]
365160 addss  xmm2,DWORD PTR [rip+0xfffffffffff430e0]        # 0x2a8248 ; f32=57
365168 call   0x2cc340
36516d mov    rdx,rax
365170 mov    DWORD PTR [rsp+0x28],0xc0
365178 mov    r9d,ebx
36517b movss  DWORD PTR [rsp+0x20],xmm8
365182 lea    r8,[rbp+0x67]
365186 mov    rcx,rdi
365189 call   0x3a1244
36518e call   0x392ecc
365193 movss  xmm11,DWORD PTR [rip+0xfffffffffff280b8]        # 0x28d254 ; f32=1
36519c xor    ecx,ecx
36519e movaps xmm1,xmm11
3651a2 mov    rdi,rax
3651a5 call   0x392298
3651aa lea    rcx,[rbp+0x6f]
3651ae mov    ebx,eax
3651b0 call   0x392ef8
3651b5 lea    rcx,[rbp+0x77]
3651b9 movss  xmm6,DWORD PTR [rax]
3651bd addss  xmm6,DWORD PTR [rip+0xfffffffffff2895b]        # 0x28db20 ; f32=20
3651c5 call   0x392ef8
3651ca movaps xmm1,xmm6
3651cd lea    rcx,[rbp+0x67]
3651d1 movss  xmm2,DWORD PTR [rax+0x4]
3651d6 addss  xmm2,DWORD PTR [rip+0xfffffffffff28942]        # 0x28db20 ; f32=20
3651de call   0x2cc340
3651e3 movss  xmm7,DWORD PTR [rip+0xffffffffffee3cfd]        # 0x248ee8 ; f32=1
3651eb lea    rcx,[rip+0x96eee]        # 0x3fc0e0
3651f2 movss  xmm6,DWORD PTR [rip+0xfffffffffff2dfc2]        # 0x2931bc ; f32=16
3651fa mov    edx,0x2
3651ff mulss  xmm7,xmm6
365203 call   0x3367b8
365208 mov    rcx,rax
36520b movaps xmm1,xmm6
36520e call   0x364aec
365213 mov    QWORD PTR [rsp+0x40],0x0
36521c lea    r9,[rbp+0x67]
365220 xorps  xmm8,xmm8
365224 mov    rdx,rax
365227 movss  DWORD PTR [rsp+0x38],xmm8
36522e lea    rax,[rip+0xfffffffffff30857]        # 0x295a8c
365235 mov    QWORD PTR [rsp+0x30],0x0
36523e movaps xmm2,xmm7
365241 mov    QWORD PTR [rsp+0x28],rax
365246 mov    rcx,rdi
365249 mov    DWORD PTR [rsp+0x20],ebx
36524d call   0x3a31f8
365252 call   0x392ecc
365257 lea    rdx,[rbp-0x49]
36525b mov    rsi,rax
36525e lea    rcx,[rbp+0x67]
365262 call   0x35399c ; STRING getter=0x35399c ESP PREVIEW
365267 mov    rcx,rax
36526a call   0x2cde0c
36526f mov    r14d,0x1
365275 movaps xmm1,xmm11
365279 mov    ecx,r14d
36527c mov    rdi,rax
36527f call   0x392298
365284 lea    rcx,[rbp+0x77]
365288 mov    ebx,eax
36528a call   0x392ef8
36528f movss  xmm10,DWORD PTR [rip+0xfffffffffff28894]        # 0x28db2c ; f32=50
365298 lea    rcx,[rbp+0x7f]
36529c movss  xmm6,DWORD PTR [rax]
3652a0 addss  xmm6,xmm10
3652a5 call   0x392ef8
3652aa movaps xmm1,xmm6
3652ad lea    rcx,[rbp+0x6f]
3652b1 movss  xmm2,DWORD PTR [rax+0x4]
3652b6 addss  xmm2,DWORD PTR [rip+0xfffffffffff42f82]        # 0x2a8240 ; f32=21
3652be call   0x2cc340
3652c3 mov    r9,rdi
3652c6 mov    QWORD PTR [rsp+0x20],0x0
3652cf mov    r8d,ebx
3652d2 lea    rdx,[rbp+0x6f]
3652d6 mov    rcx,rsi
3652d9 call   0x3a31bc
3652de movss  xmm1,DWORD PTR [rip+0xfffffffffff27f6a]        # 0x28d250 ; f32=0.5
3652e6 lea    rcx,[rbp+0x67]
3652ea movss  xmm2,DWORD PTR [rip+0xffffffffffee3c1a]        # 0x248f0c ; f32=580
3652f2 movss  xmm0,DWORD PTR [rip+0xffffffffffee3c2a]        # 0x248f24 ; f32=228.462
3652fa movss  xmm3,DWORD PTR [rip+0xffffffffffee3c1e]        # 0x248f20 ; f32=120
365302 mulss  xmm2,xmm1
365306 mulss  xmm0,xmm1
36530a mulss  xmm3,xmm1
36530e movss  xmm1,DWORD PTR [rip+0xfffffffffff2df12]        # 0x293228 ; f32=150
365316 subss  xmm2,xmm0
36531a subss  xmm1,xmm3
36531e call   0x2cc340
365323 movss  xmm0,DWORD PTR [rax]
365327 movss  DWORD PTR [rip+0xffffffffffee3be9],xmm0        # 0x248f18
36532f movss  xmm2,DWORD PTR [rax+0x4]
365334 movss  DWORD PTR [rip+0xffffffffffee3be0],xmm2        # 0x248f1c
36533c call   0x392ee4
365341 subss  xmm0,DWORD PTR [rip+0xfffffffffff287eb]        # 0x28db34 ; f32=65
365349 xorps  xmm1,xmm1
36534c lea    rcx,[rbp+0x67]
365350 movaps xmm2,xmm0
365353 call   0x2cc340
365358 mov    rbx,rax
36535b lea    rcx,[rbp+0x6f]
36535f call   0x392f14
365364 mov    r8,rax
365367 lea    rcx,[rbp-0x39]
36536b mov    rdx,rbx
36536e call   0x2db388
365373 movss  xmm8,DWORD PTR [rip+0xffffffffffee3ba0]        # 0x248f1c
36537c lea    rcx,[rbp+0x67]
365380 movaps xmm2,xmm8
365384 subss  xmm2,xmm10
365389 movss  xmm0,DWORD PTR [rax]
36538d movss  DWORD PTR [rip+0x96d9b],xmm0        # 0x3fc130
365395 movss  xmm1,DWORD PTR [rax+0x4]
36539a movss  DWORD PTR [rip+0x96d92],xmm1        # 0x3fc134
3653a2 mov    rax,QWORD PTR [rax+0x8]
3653a6 movss  xmm1,DWORD PTR [rip+0xffffffffffee3b6a]        # 0x248f18
3653ae mov    QWORD PTR [rip+0x96d83],rax        # 0x3fc138
3653b5 call   0x2cc340
3653ba movss  xmm6,DWORD PTR [rip+0xffffffffffee3b56]        # 0x248f18
3653c2 lea    rcx,[rbp+0x6f]
3653c6 addss  xmm6,DWORD PTR [rip+0xffffffffffee3b52]        # 0x248f20 ; f32=120
3653ce movaps xmm2,xmm8
3653d2 movaps xmm1,xmm6
3653d5 call   0x2cc340
3653da mov    r8,rax
3653dd lea    rdx,[rbp+0x67]
3653e1 lea    rcx,[rbp-0x39]
3653e5 call   0x2db388
3653ea movaps xmm7,xmm8
3653ee lea    rcx,[rbp+0x67]
3653f2 addss  xmm7,DWORD PTR [rip+0xffffffffffee3b2a]        # 0x248f24 ; f32=228.462
3653fa movaps xmm1,xmm6
3653fd movups xmm0,XMMWORD PTR [rax]
365400 addss  xmm1,xmm10
365405 movaps xmm2,xmm7
365408 movdqu XMMWORD PTR [rip+0x96d50],xmm0        # 0x3fc160
365410 call   0x2cc340
365415 movaps xmm2,xmm8
365419 lea    rcx,[rbp+0x6f]
36541d movaps xmm1,xmm6
365420 mov    rbx,rax
365423 call   0x2cc340
365428 mov    rdx,rax
36542b lea    rcx,[rbp-0x39]
36542f mov    r8,rbx
365432 call   0x2db388
365437 movss  xmm1,DWORD PTR [rip+0xffffffffffee3ad9]        # 0x248f18
36543f lea    rcx,[rbp+0x67]
365443 movaps xmm2,xmm7
365446 movups xmm0,XMMWORD PTR [rax]
365449 movdqu XMMWORD PTR [rip+0x96cff],xmm0        # 0x3fc150
365451 call   0x2cc340
365456 movaps xmm2,xmm7
365459 lea    rcx,[rbp+0x6f]
36545d addss  xmm2,xmm10
365462 movaps xmm1,xmm6
365465 mov    rbx,rax
365468 call   0x2cc340
36546d mov    r8,rax
365470 lea    rcx,[rbp-0x39]
365474 mov    rdx,rbx
365477 call   0x2db388
36547c movss  xmm1,DWORD PTR [rip+0xffffffffffee3a94]        # 0x248f18
365484 lea    rcx,[rbp+0x67]
365488 subss  xmm1,xmm10
36548d movaps xmm2,xmm8
365491 movups xmm0,XMMWORD PTR [rax]
365494 movdqu XMMWORD PTR [rip+0x96cd4],xmm0        # 0x3fc170
36549c call   0x2cc340
3654a1 movss  xmm1,DWORD PTR [rip+0xffffffffffee3a6f]        # 0x248f18
3654a9 lea    rcx,[rbp+0x6f]
3654ad movaps xmm2,xmm7
3654b0 mov    rbx,rax
3654b3 call   0x2cc340
3654b8 mov    r8,rax
3654bb lea    rcx,[rbp-0x39]
3654bf mov    rdx,rbx
3654c2 call   0x2db388
3654c7 movups xmm0,XMMWORD PTR [rax]
3654ca movdqu XMMWORD PTR [rip+0x96c6e],xmm0        # 0x3fc140
3654d2 call   0x37d7b0
3654d7 call   0x37db8c
3654dc xor    edi,edi
3654de mov    DWORD PTR [rip+0xffffffffffee3a28],0x5        # 0x248f10
3654e8 xor    esi,esi
3654ea lea    r15,[rip+0xffffffffffc9ab0f]        # 0x0
3654f1 lea    rcx,[rbp+0x77]
3654f5 call   0x392ef8
3654fa mov    rbx,rsi
3654fd lea    rcx,[rbp+0x7f]
365501 add    rbx,rbx
365504 movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc138]
36550e addss  xmm6,DWORD PTR [rax]
365512 call   0x392ef8
365517 movaps xmm1,xmm6
36551a lea    rcx,[rbp+0x67]
36551e movss  xmm2,DWORD PTR [rax+0x4]
365523 addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc13c]
36552d call   0x2cc340
365532 lea    rcx,[rbp-0x49]
365536 call   0x392ef8
36553b movss  xmm6,DWORD PTR [r15+rbx*8+0x3fc130]
365545 lea    rcx,[rbp-0x59]
365549 addss  xmm6,DWORD PTR [rax]
36554d call   0x392ef8
365552 movaps xmm1,xmm6
365555 lea    rcx,[rbp+0x6f]
365559 movss  xmm2,DWORD PTR [rax+0x4]
36555e addss  xmm2,DWORD PTR [r15+rbx*8+0x3fc134]
365568 call   0x2cc340
36556d mov    r8b,r14b
365570 lea    rdx,[rbp+0x67]
365574 lea    rcx,[rbp+0x6f]
365578 call   0x3944ac
36557d mov    BYTE PTR [r15+rsi*1+0x3fc120],al
365585 test   al,al
365587 je     0x36558f
365589 mov    DWORD PTR [rip+0xffffffffffee3981],edi        # 0x248f10
36558f add    edi,r14d
365592 add    rsi,r14
365595 cmp    edi,0x5
365598 jl     0x3654f1
36559e call   0x392ecc
3655a3 lea    rdx,[rbp-0x49]
3655a7 mov    rsi,rax
3655aa lea    rcx,[rbp+0x67]
3655ae call   0x354f88 ; STRING getter=0x354f88 DRAG & DROP
3655b3 mov    rcx,rax
3655b6 call   0x2cde0c
3655bb mov    r15d,0x2
3655c1 movaps xmm1,xmm11
3655c5 mov    ecx,r15d
3655c8 mov    rdi,rax
3655cb call   0x392298
3655d0 lea    rcx,[rbp+0x6f]
3655d4 mov    ebx,eax
3655d6 call   0x392ef8
3655db movss  xmm6,DWORD PTR [rip+0x96b4d]        # 0x3fc130
3655e3 lea    rcx,[rbp+0x77]
3655e7 addss  xmm6,DWORD PTR [rax]
3655eb addss  xmm6,DWORD PTR [rip+0xfffffffffff2852d]        # 0x28db20 ; f32=20
3655f3 call   0x392ef8
3655f8 movss  xmm2,DWORD PTR [rip+0x96b34]        # 0x3fc134
365600 lea    rcx,[rbp+0x7f]
365604 movaps xmm1,xmm6
365607 addss  xmm2,DWORD PTR [rax+0x4]
36560c call   0x2cc340
365611 mov    rdx,rax
365614 mov    QWORD PTR [rsp+0x20],0x0
36561d mov    r9,rdi
365620 mov    r8d,ebx
365623 mov    rcx,rsi
365626 call   0x3a31bc
36562b lea    rcx,[rip+0x80696]        # 0x3e5cc8
365632 mov    DWORD PTR [rbp+0x67],0x0
365639 call   0x2edae8
36563e lea    rcx,[rip+0x80683]        # 0x3e5cc8
365645 mov    rbx,rax
365648 call   0x2cb3a4
36564d mov    rcx,rax
365650 lea    r8,[rbp+0x67]
365654 mov    rdx,rbx
365657 call   0x2edb28
36565c movss  xmm2,DWORD PTR [rip+0x96ad0]        # 0x3fc134
365664 lea    rcx,[rbp+0x67]
365668 movss  xmm1,DWORD PTR [rip+0x96ac0]        # 0x3fc130
365670 addss  xmm2,DWORD PTR [rip+0xfffffffffff2db5c]        # 0x2931d4 ; f32=25
365678 addss  xmm1,DWORD PTR [rip+0xfffffffffff284a0]        # 0x28db20 ; f32=20
365680 call   0x2cc340
365685 mov    rcx,rax
365688 call   0x39b3b8
36568d call   0x38ec90
365692 movaps xmm1,xmm11
365696 mov    ecx,r14d
365699 call   0x392298
36569e mov    edx,eax
3656a0 lea    rcx,[rbp-0x39]
3656a4 call   0x3364d4
3656a9 lea    rbx,[rip+0x71708]        # 0x3d6db8
3656b0 xor    edx,edx
3656b2 mov    rcx,rbx
3656b5 movups xmm0,XMMWORD PTR [rax]
3656b8 movdqu XMMWORD PTR [rbp-0x49],xmm0
3656bd call   0x2ef7c8
3656c2 mov    rcx,rax
3656c5 lea    rdx,[rbp-0x49]
3656c9 call   0x37df58
3656ce movaps xmm1,xmm11
3656d2 mov    ecx,r14d
3656d5 call   0x392298
3656da mov    edx,eax
3656dc lea    rcx,[rbp-0x39]
3656e0 call   0x3364d4
3656e5 mov    rdx,r14
3656e8 mov    rcx,rbx
3656eb movups xmm0,XMMWORD PTR [rax]
3656ee movdqu XMMWORD PTR [rbp-0x49],xmm0
3656f3 call   0x2ef7c8
3656f8 mov    rcx,rax
3656fb lea    rdx,[rbp-0x49]
3656ff call   0x37df58
365704 movaps xmm1,xmm11
365708 mov    ecx,r14d
36570b call   0x392298
365710 mov    edx,eax
365712 lea    rcx,[rbp-0x39]
365716 call   0x3364d4
36571b mov    edx,r15d
36571e mov    rcx,rbx
365721 movups xmm0,XMMWORD PTR [rax]
365724 movdqu XMMWORD PTR [rbp-0x49],xmm0
365729 call   0x2ef7c8
36572e mov    rcx,rax
365731 lea    rdx,[rbp-0x49]
365735 call   0x37df58
36573a movaps xmm1,xmm11
36573e mov    ecx,r14d
365741 call   0x392298
365746 mov    edx,eax
365748 lea    rcx,[rbp-0x39]
36574c call   0x3364d4
365751 lea    edx,[r15+0x1]
365755 mov    rcx,rbx
365758 movups xmm0,XMMWORD PTR [rax]
36575b movdqu XMMWORD PTR [rbp-0x49],xmm0
365760 call   0x2ef7c8
365765 mov    rcx,rax
365768 lea    rdx,[rbp-0x49]
36576c call   0x37df58
365771 movaps xmm1,xmm11
365775 mov    ecx,r14d
365778 call   0x392298
36577d mov    edx,eax
36577f lea    rcx,[rbp-0x39]
365783 call   0x3364d4
365788 lea    edx,[r15+0x2]
36578c mov    rcx,rbx
36578f movups xmm0,XMMWORD PTR [rax]
365792 movdqu XMMWORD PTR [rbp-0x49],xmm0
365797 call   0x2ef7c8
36579c mov    rcx,rax
36579f lea    rdx,[rbp-0x49]
3657a3 call   0x37df58
3657a8 movaps xmm1,xmm11
3657ac mov    ecx,r14d
3657af call   0x392298
3657b4 mov    edx,eax
3657b6 lea    rcx,[rbp-0x39]
3657ba call   0x3364d4
3657bf lea    edx,[r15+0x3]
3657c3 mov    rcx,rbx
3657c6 movups xmm0,XMMWORD PTR [rax]
3657c9 movdqu XMMWORD PTR [rbp-0x49],xmm0
3657ce call   0x2ef7c8
3657d3 mov    rcx,rax
3657d6 lea    rdx,[rbp-0x49]
3657da call   0x37df58
3657df call   0x390efc
3657e4 lea    r11,[rsp+0xd8]
3657ec movaps xmm6,XMMWORD PTR [r11-0x18]
3657f1 movaps xmm7,XMMWORD PTR [r11-0x28]
3657f6 movaps xmm8,XMMWORD PTR [r11-0x38]
3657fb movaps xmm10,XMMWORD PTR [r11-0x48]
365800 movaps xmm11,XMMWORD PTR [r11-0x58]
365805 mov    rsp,r11
365808 pop    r15
36580a pop    r14
36580c pop    rdi
36580d pop    rsi
36580e pop    rbx
36580f pop    rbp
365810 jmp    0x390994

; pdata function 0x389e84..0x389f18 unwind=0x3d2130
389e84 rex push rbx
389e86 push   rbp
389e87 push   rsi
389e88 push   rdi
389e89 sub    rsp,0x28
389e8d mov    rsi,rcx
389e90 test   rcx,rcx
389e93 jne    0x389eae
389e95 lea    rdx,[rsp+0x50]
389e9a lea    rcx,[rsp+0x50]
389e9f call   0x2cc730
389ea4 mov    rcx,rax
389ea7 call   0x2cdca4
389eac jmp    0x389f0f
389eae movsxd rcx,DWORD PTR [rip+0x7b91b]        # 0x4057d0
389eb5 lea    rdx,[rip+0x79914]        # 0x4037d0
389ebc mov    rbp,rcx
389ebf mov    eax,0x1
389ec4 sub    eax,ecx
389ec6 shl    rbp,0xc
389eca mov    rcx,rsi
389ecd mov    DWORD PTR [rip+0x7b8fd],eax        # 0x4057d0
389ed3 add    rbp,rdx
389ed6 call   0x3ca904
389edb mov    rbx,rax
389ede cmp    rax,0x1000
389ee4 jb     0x389eed
389ee6 mov    ebx,0xfff
389eeb jmp    0x389ef2
389eed test   rax,rax
389ef0 je     0x389f08
389ef2 xor    edi,edi
389ef4 movsx  ecx,BYTE PTR [rdi+rsi*1]
389ef8 call   0x3889e0
389efd mov    BYTE PTR [rdi+rbp*1],al
389f00 inc    rdi
389f03 cmp    rdi,rbx
389f06 jb     0x389ef4
389f08 mov    BYTE PTR [rbx+rbp*1],0x0
389f0c mov    rax,rbp
389f0f add    rsp,0x28
389f13 pop    rdi
389f14 pop    rsi
389f15 pop    rbp
389f16 pop    rbx
389f17 ret

