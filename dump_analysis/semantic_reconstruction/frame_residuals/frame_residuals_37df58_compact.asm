37df58 mov    rax,rsp
37df5b mov    QWORD PTR [rax+0x10],rdx
37df5f push   rbp
37df60 push   rbx
37df61 push   rsi
37df62 push   rdi
37df63 push   r12
37df65 push   r13
37df67 push   r14
37df69 push   r15
37df6b lea    rbp,[rax-0x198]
37df72 sub    rsp,0x258
37df79 movaps XMMWORD PTR [rax-0x58],xmm6
37df7d lea    r12,[rcx+0x20]
37df81 movaps XMMWORD PTR [rax-0x68],xmm7
37df85 xor    r15d,r15d
37df88 mov    r13,rcx
37df8b movaps XMMWORD PTR [rax-0x78],xmm8
37df90 movaps XMMWORD PTR [rax-0x88],xmm9
37df98 movaps XMMWORD PTR [rax-0x98],xmm10
37dfa0 movaps XMMWORD PTR [rax-0xa8],xmm11
37dfa8 movaps XMMWORD PTR [rax-0xb8],xmm12
37dfb0 movaps XMMWORD PTR [rax-0xc8],xmm13
37dfb8 cmp    DWORD PTR [r12],r15d
37dfbc jne    0x37dfef
37dfbe mov    rdx,rcx
37dfc1 lea    rcx,[rsp+0x60]
37dfc6 call   0x2d4194
37dfcb mov    rcx,rax
37dfce lea    rdx,[r13+0x2c]
37dfd2 mov    r8,r12
37dfd5 call   0x37d394
37dfda movss  xmm1,DWORD PTR [rip+0xfffffffffff0fb3a]        # 0x28db1c ; f32=10
37dfe2 xorps  xmm0,xmm0
37dfe5 call   0x39ac04
37dfea jmp    0x37e8ec
37dfef mov    rax,QWORD PTR [rip+0x87b32]        # 0x405b28
37dff6 lea    rdx,[rsp+0x60]
37dffb lea    rcx,[rbp+0x1a0]
37e002 mov    QWORD PTR [rbp+0x1b8],rax
37e009 mov    rsi,QWORD PTR [rax+0x3c28]
37e010 mov    QWORD PTR [rbp+0x1b0],rsi
37e017 movss  xmm12,DWORD PTR [rsi+0x14]
37e01d call   0x37ca2c ; STRING getter=0x37ca2c Indicator0
37e022 mov    rcx,rax
37e025 call   0x37b6fc
37e02a mov    rdx,rax
37e02d mov    rcx,r13
37e030 call   0x2cef38
37e035 movss  xmm9,DWORD PTR [rip+0xfffffffffff0fade]        # 0x28db1c ; f32=10
37e03e test   al,al
37e040 jne    0x37e090
37e042 lea    rdx,[rbp-0x54]
37e046 lea    rcx,[rbp+0x1a0]
37e04d call   0x37ca48 ; STRING getter=0x37ca48 Indicator2
37e052 mov    rcx,rax
37e055 call   0x37b6fc
37e05a mov    rdx,rax
37e05d mov    rcx,r13
37e060 call   0x2cef38
37e065 test   al,al
37e067 jne    0x37e090
37e069 lea    rdx,[rbp-0x60]
37e06d lea    rcx,[rbp+0x1a0]
37e074 call   0x37ca64 ; STRING getter=0x37ca64 Indicator3
37e079 mov    rcx,rax
37e07c call   0x37b6fc
37e081 mov    rdx,rax
37e084 mov    rcx,r13
37e087 call   0x2cef38
37e08c test   al,al
37e08e je     0x37e0a9
37e090 cmp    DWORD PTR [rip+0x70ca1],0x2        # 0x3eed38 ; CONFIG i.FontIndex value(+0x48)
37e097 jne    0x37e0a9
37e099 mov    DWORD PTR [rbp+0x1a0],0x4
37e0a3 movaps xmm8,xmm9
37e0a7 jmp    0x37e0b9
37e0a9 movss  xmm8,DWORD PTR [rip+0xffffffffffecae1e]        # 0x248ed0 ; f32=16
37e0b2 mov    DWORD PTR [rbp+0x1a0],r15d
37e0b9 mov    rax,QWORD PTR [rip+0x87a68]        # 0x405b28
37e0c0 lea    rcx,[rsp+0x60]
37e0c5 movaps xmm0,xmm8
37e0c9 divss  xmm0,xmm12
37e0ce mov    QWORD PTR [rax+0x3c28],rsi
37e0d5 movss  DWORD PTR [rsi+0x64],xmm0
37e0da call   0x2d4870
37e0df movsxd rdi,DWORD PTR [r12]
37e0e3 lea    r14,[rip+0x67bde]        # 0x3e5cc8
37e0ea xorps  xmm1,xmm1
37e0ed lea    rcx,[rsp+0x68]
37e0f2 xorps  xmm10,xmm10
37e0f6 mov    ebx,DWORD PTR [r14+rdi*4]
37e0fa movd   xmm6,ebx
37e0fe cvtdq2ps xmm6,xmm6
37e101 movaps xmm7,xmm6
37e104 mulss  xmm7,xmm8
37e109 movaps xmm2,xmm7
37e10c call   0x2cc340
37e111 movaps xmm2,xmm7
37e114 lea    rcx,[rsp+0x70]
37e119 xorps  xmm1,xmm1
37e11c call   0x2cc340
37e121 movaps xmm2,xmm8
37e125 lea    rcx,[rsp+0x78]
37e12a xorps  xmm2,XMMWORD PTR [rip+0xfffffffffff1516f]        # 0x2932a0
37e131 xorps  xmm1,xmm1
37e134 mulss  xmm2,xmm6
37e138 call   0x2cc340
37e13d movaps xmm2,xmm7
37e140 lea    rcx,[rbp-0x80]
37e144 xorps  xmm1,xmm1
37e147 call   0x2cc340
37e14c lea    eax,[rbx+0x1]
37e14f lea    rcx,[rbp-0x38]
37e153 mov    DWORD PTR [r14+rdi*4],eax
37e157 call   0x2d4870
37e15c lea    rbx,[r13+0x30]
37e160 mov    rcx,rbx
37e163 call   0x2cd7ec
37e168 mov    rcx,QWORD PTR [rip+0x879b9]        # 0x405b28
37e16f lea    rdx,[rsp+0x48]
37e174 movss  xmm11,DWORD PTR [rip+0xfffffffffff0f9d7]        # 0x28db54
37e17d movaps xmm2,xmm8
37e181 mov    QWORD PTR [rsp+0x38],r15
37e186 movaps xmm3,xmm11
37e18a mov    QWORD PTR [rsp+0x30],r15
37e18f mov    rcx,QWORD PTR [rcx+0x3c28]
37e196 mov    QWORD PTR [rsp+0x28],rax
37e19b movss  DWORD PTR [rsp+0x20],xmm10
37e1a2 call   0x3a3874
37e1a7 movss  xmm1,DWORD PTR [rip+0xffffffffffecad69]        # 0x248f18
37e1af lea    rcx,[rsp+0x40]
37e1b4 movss  xmm2,DWORD PTR [rip+0xffffffffffecad60]        # 0x248f1c
37e1bc subss  xmm1,xmm9
37e1c1 subss  xmm1,DWORD PTR [rax]
37e1c5 call   0x2cc340
37e1ca mov    rdx,rax
37e1cd lea    r8,[rsp+0x68]
37e1d2 lea    rcx,[rbp-0x30]
37e1d6 call   0x2ef9d8
37e1db movss  xmm1,DWORD PTR [rip+0xffffffffffecad3d]        # 0x248f20 ; f32=120
37e1e3 lea    rcx,[rsp+0x40]
37e1e8 addss  xmm1,DWORD PTR [rip+0xffffffffffecad28]        # 0x248f18
37e1f0 movss  xmm2,DWORD PTR [rip+0xffffffffffecad24]        # 0x248f1c
37e1f8 addss  xmm1,xmm9
37e1fd call   0x2cc340
37e202 mov    rdx,rax
37e205 lea    r8,[rsp+0x70]
37e20a lea    rcx,[rbp-0x28]
37e20e call   0x2ef9d8
37e213 mov    rcx,rbx
37e216 call   0x2cd7ec
37e21b mov    rcx,QWORD PTR [rip+0x87906]        # 0x405b28
37e222 lea    rdx,[rsp+0x40]
37e227 mov    QWORD PTR [rsp+0x38],r15
37e22c movaps xmm3,xmm11
37e230 mov    QWORD PTR [rsp+0x30],r15
37e235 movaps xmm2,xmm8
37e239 mov    QWORD PTR [rsp+0x28],rax
37e23e movss  DWORD PTR [rsp+0x20],xmm10
37e245 mov    rcx,QWORD PTR [rcx+0x3c28]
37e24c call   0x3a3874
37e251 movss  xmm13,DWORD PTR [rip+0xfffffffffff0eff6]        # 0x28d250 ; f32=0.5
37e25a mov    rcx,rbx
37e25d movss  xmm7,DWORD PTR [rip+0xffffffffffecacbb]        # 0x248f20 ; f32=120
37e265 movss  xmm6,DWORD PTR [rip+0xffffffffffecacaf]        # 0x248f1c
37e26d movss  xmm0,DWORD PTR [rax]
37e271 subss  xmm6,xmm9
37e276 mulss  xmm7,xmm13
37e27b mulss  xmm0,xmm13
37e280 addss  xmm7,DWORD PTR [rip+0xffffffffffecac90]        # 0x248f18
37e288 subss  xmm7,xmm0
37e28c call   0x2cd7ec
37e291 mov    rcx,QWORD PTR [rip+0x87890]        # 0x405b28
37e298 lea    rdx,[rsp+0x48]
37e29d mov    QWORD PTR [rsp+0x38],r15
37e2a2 movaps xmm3,xmm11
37e2a6 mov    QWORD PTR [rsp+0x30],r15
37e2ab movaps xmm2,xmm8
37e2af mov    QWORD PTR [rsp+0x28],rax
37e2b4 mov    rcx,QWORD PTR [rcx+0x3c28]
37e2bb movss  DWORD PTR [rsp+0x20],xmm10
37e2c2 call   0x3a3874
37e2c7 movaps xmm1,xmm7
37e2ca lea    rcx,[rsp+0x50]
37e2cf subss  xmm6,DWORD PTR [rax+0x4]
37e2d4 movaps xmm2,xmm6
37e2d7 call   0x2cc340
37e2dc mov    rdx,rax
37e2df lea    r8,[rsp+0x78]
37e2e4 lea    rcx,[rbp-0x20]
37e2e8 call   0x2ef9d8
37e2ed mov    rcx,rbx
37e2f0 call   0x2cd7ec
37e2f5 mov    rcx,QWORD PTR [rip+0x8782c]        # 0x405b28
37e2fc lea    rdx,[rsp+0x50]
37e301 mov    QWORD PTR [rsp+0x38],r15
37e306 movaps xmm3,xmm11
37e30a mov    QWORD PTR [rsp+0x30],r15
37e30f movaps xmm2,xmm8
37e313 mov    QWORD PTR [rsp+0x28],rax
37e318 mov    rcx,QWORD PTR [rcx+0x3c28]
37e31f movss  DWORD PTR [rsp+0x20],xmm10
37e326 call   0x3a3874
37e32b movss  xmm1,DWORD PTR [rip+0xffffffffffecabed]        # 0x248f20 ; f32=120
37e333 lea    rcx,[rsp+0x40]
37e338 movss  xmm2,DWORD PTR [rip+0xffffffffffecabe4]        # 0x248f24 ; f32=228.462
37e340 addss  xmm2,DWORD PTR [rip+0xffffffffffecabd4]        # 0x248f1c
37e348 movss  xmm0,DWORD PTR [rax]
37e34c mulss  xmm1,xmm13
37e351 mulss  xmm0,xmm13
37e356 addss  xmm1,DWORD PTR [rip+0xffffffffffecabba]        # 0x248f18
37e35e addss  xmm2,xmm9
37e363 subss  xmm1,xmm0
37e367 call   0x2cc340
37e36c mov    rdx,rax
37e36f lea    r8,[rbp-0x80]
37e373 lea    rcx,[rbp-0x18]
37e377 call   0x2ef9d8
37e37c call   0x3926ac
37e381 movss  xmm6,DWORD PTR [rip+0xfffffffffff14e2f]        # 0x2931b8 ; f32=15
37e389 lea    r14,[r13+0x24]
37e38d movss  xmm0,DWORD PTR [r14]
37e392 movss  xmm2,DWORD PTR [rax+0x10]
37e397 movsxd rax,DWORD PTR [r12]
37e39b mulss  xmm2,xmm6
37e39f cvttss2si ecx,DWORD PTR [rbp+rax*8-0x38]
37e3a5 movd   xmm1,ecx
37e3a9 cvtdq2ps xmm1,xmm1
37e3ac call   0x33565c
37e3b1 movss  DWORD PTR [r14],xmm0
37e3b6 call   0x3926ac
37e3bb movsxd rdi,DWORD PTR [r12]
37e3bf movss  xmm0,DWORD PTR [r13+0x28]
37e3c5 movss  xmm2,DWORD PTR [rax+0x10]
37e3ca cvttss2si eax,DWORD PTR [rbp+rdi*8-0x34]
37e3d0 mulss  xmm2,xmm6
37e3d4 movd   xmm1,eax
37e3d8 cvtdq2ps xmm1,xmm1
37e3db call   0x33565c
37e3e0 movaps xmm6,xmm0
37e3e3 movss  DWORD PTR [r13+0x28],xmm6
37e3e9 cmp    BYTE PTR [r13+0x60],r15b
37e3ed je     0x37e423
37e3ef movss  xmm0,DWORD PTR [r14]
37e3f4 subss  xmm0,DWORD PTR [rbp+rdi*8-0x38]
37e3fa call   0x2e372c
37e3ff movss  xmm7,DWORD PTR [rip+0xfffffffffff0ee4d]        # 0x28d254 ; f32=1
37e407 comiss xmm7,xmm0
37e40a jbe    0x37e423
37e40c subss  xmm6,DWORD PTR [rbp+rdi*8-0x34]
37e412 movaps xmm0,xmm6
37e415 call   0x2e372c
37e41a comiss xmm7,xmm0
37e41d jbe    0x37e423
37e41f mov    BYTE PTR [r13+0x60],r15b
37e423 lea    rcx,[rsp+0x50]
37e428 call   0x392ef8
37e42d mov    rdx,rax
37e430 lea    rcx,[rsp+0x40]
37e435 mov    r8,r14
37e438 call   0x2ef9d8
37e43d mov    rcx,rbx
37e440 mov    rdi,rax
37e443 call   0x2cd7ec
37e448 mov    rcx,QWORD PTR [rip+0x876d9]        # 0x405b28
37e44f lea    rdx,[rsp+0x48]
37e454 mov    QWORD PTR [rsp+0x38],r15
37e459 movaps xmm3,xmm11
37e45d mov    QWORD PTR [rsp+0x30],r15
37e462 movaps xmm2,xmm8
37e466 mov    QWORD PTR [rsp+0x28],rax
37e46b mov    rcx,QWORD PTR [rcx+0x3c28]
37e472 movss  DWORD PTR [rsp+0x20],xmm10
37e479 call   0x3a3874
37e47e lea    rcx,[rbp-0x48]
37e482 mov    rbx,rax
37e485 call   0x392ef8
37e48a mov    rdx,rax
37e48d lea    rcx,[rbp-0x40]
37e491 mov    r8,r14
37e494 call   0x2ef9d8
37e499 mov    rdx,rax
37e49c lea    rcx,[rbp-0x60]
37e4a0 mov    r8,rbx
37e4a3 call   0x2ef9d8
37e4a8 mov    r8,rax
37e4ab lea    rcx,[rbp-0x70]
37e4af mov    rdx,rdi
37e4b2 call   0x2db388
37e4b7 movups xmm0,XMMWORD PTR [rbp-0x70]
37e4bb mov    r8b,0x1
37e4be lea    rdx,[rbp-0x68]
37e4c2 lea    rcx,[rbp-0x70]
37e4c6 movdqu XMMWORD PTR [r13+0x50],xmm0
37e4cc call   0x3944ac
37e4d1 test   al,al
37e4d3 je     0x37e4e7
37e4d5 xor    edx,edx
37e4d7 xor    ecx,ecx
37e4d9 call   0x3943e4
37e4de test   al,al
37e4e0 je     0x37e4e7
37e4e2 mov    BYTE PTR [r13+0x2c],0x1
37e4e7 cmp    BYTE PTR [r13+0x2c],r15b
37e4eb je     0x37e892
37e4f1 call   0x3925a4
37e4f6 mov    rsi,QWORD PTR [rbp+0x1b8]
37e4fd movaps xmm1,xmm13
37e501 mov    ecx,0x8
37e506 mov    r15,rax
37e509 movss  xmm6,DWORD PTR [rsi+0x3814]
37e511 call   0x392298
37e516 lea    rcx,[r13+0x30]
37e51a mov    r14d,eax
37e51d call   0x2cd7ec
37e522 mov    rcx,QWORD PTR [rip+0x875ff]        # 0x405b28
37e529 lea    rdx,[rbp-0x60]
37e52d mov    QWORD PTR [rsp+0x38],0x0
37e536 movaps xmm3,xmm11
37e53a mov    QWORD PTR [rsp+0x30],0x0
37e543 movaps xmm2,xmm8
37e547 mov    QWORD PTR [rsp+0x28],rax
37e54c mov    rcx,QWORD PTR [rcx+0x3c28]
37e553 movss  DWORD PTR [rsp+0x20],xmm10
37e55a call   0x3a3874
37e55f movss  xmm7,DWORD PTR [rip+0xfffffffffff14bcd]        # 0x293134 ; f32=2
37e567 lea    rcx,[rbp-0x40]
37e56b movaps xmm2,xmm7
37e56e mov    rdx,rax
37e571 call   0x37ca00
37e576 mov    rbx,rax
37e579 call   0x3926ac
37e57e mov    r8,rbx
37e581 lea    rcx,[rbp-0x48]
37e585 lea    rdx,[rax+0xe00]
37e58c call   0x2ef9d8
37e591 mov    rdx,rax
37e594 lea    r8,[rsi+0x380c]
37e59b lea    rcx,[rsp+0x50]
37e5a0 call   0x2ef9d8
37e5a5 lea    rcx,[r13+0x30]
37e5a9 mov    rdi,rax
37e5ac call   0x2cd7ec
37e5b1 mov    rcx,QWORD PTR [rip+0x87570]        # 0x405b28
37e5b8 lea    rdx,[rsp+0x40]
37e5bd mov    QWORD PTR [rsp+0x38],0x0
37e5c6 movaps xmm3,xmm11
37e5ca mov    QWORD PTR [rsp+0x30],0x0
37e5d3 movaps xmm2,xmm8
37e5d7 mov    QWORD PTR [rsp+0x28],rax
37e5dc mov    rcx,QWORD PTR [rcx+0x3c28]
37e5e3 movss  DWORD PTR [rsp+0x20],xmm10
37e5ea call   0x3a3874
37e5ef mov    rdx,rax
37e5f2 lea    rcx,[rsp+0x48]
37e5f7 movaps xmm2,xmm7
37e5fa call   0x37ca00
37e5ff mov    rbx,rax
37e602 call   0x3926ac
37e607 mov    r8,rbx
37e60a lea    rcx,[rbp-0x54]
37e60e lea    rdx,[rax+0xe00]
37e615 call   0x3367e4
37e61a mov    rdx,rax
37e61d lea    r8,[rsi+0x380c]
37e624 lea    rcx,[rsp+0x60]
37e629 call   0x3367e4
37e62e mov    rdx,rax
37e631 mov    DWORD PTR [rsp+0x28],0x0
37e639 mov    r9d,r14d
37e63c movss  DWORD PTR [rsp+0x20],xmm6
37e642 mov    r8,rdi
37e645 mov    rcx,r15
37e648 call   0x3a1244
37e64d call   0x3925a4
37e652 lea    rcx,[r13+0x30]
37e656 mov    r14,rax
37e659 call   0x2cd7ec
37e65e xor    r15d,r15d
37e661 mov    rsi,rax
37e664 cmp    DWORD PTR [rip+0xffffffffffeca8a5],0x5        # 0x248f10
37e66b mov    ecx,r15d
37e66e setne  cl
37e671 movd   xmm1,ecx
37e675 cvtdq2ps xmm1,xmm1
37e678 mulss  xmm1,xmm13
37e67d mov    ecx,r15d
37e680 addss  xmm1,xmm13
37e685 sete   cl
37e688 call   0x392298
37e68d lea    rcx,[r13+0x30]
37e691 mov    edi,eax
37e693 call   0x2cd7ec
37e698 mov    rcx,QWORD PTR [rip+0x87489]        # 0x405b28
37e69f lea    rdx,[rbp+0x1b8]
37e6a6 mov    QWORD PTR [rsp+0x38],r15
37e6ab movaps xmm3,xmm11
37e6af mov    QWORD PTR [rsp+0x30],r15
37e6b4 movaps xmm2,xmm8
37e6b8 mov    QWORD PTR [rsp+0x28],rax
37e6bd mov    rcx,QWORD PTR [rcx+0x3c28]
37e6c4 movss  DWORD PTR [rsp+0x20],xmm10
37e6cb call   0x3a3874
37e6d0 mov    rdx,rax
37e6d3 lea    rcx,[rsp+0x60]
37e6d8 movaps xmm2,xmm7
37e6db call   0x37ca00
37e6e0 mov    rbx,rax
37e6e3 call   0x3926ac
37e6e8 mov    r8,rbx
37e6eb lea    rcx,[rbp-0x54]
37e6ef lea    rdx,[rax+0xe00]
37e6f6 call   0x3367e4
37e6fb mov    rdx,rax
37e6fe mov    QWORD PTR [rsp+0x20],r15
37e703 mov    r9,rsi
37e706 mov    r8d,edi
37e709 mov    rcx,r14
37e70c call   0x3a31bc
37e711 lea    rcx,[rip+0x586a0]        # 0x3d6db8
37e718 call   0x2d79c0
37e71d lea    rcx,[rip+0x58694]        # 0x3d6db8
37e724 mov    rsi,rax
37e727 call   0x2d1978
37e72c mov    rbx,rax
37e72f cmp    rax,rsi
37e732 je     0x37e86d
37e738 mov    rdx,r13
37e73b mov    rcx,rbx
37e73e call   0x2cef30
37e743 test   al,al
37e745 jne    0x37e860
37e74b mov    ecx,DWORD PTR [r12]
37e74f cmp    DWORD PTR [rbx+0x20],ecx
37e752 jne    0x37e860
37e758 cmp    BYTE PTR [rbx+0x60],r15b
37e75c jne    0x37e860
37e762 lea    rdx,[rbx+0x58]
37e766 mov    r8b,0x1
37e769 lea    rcx,[rbx+0x50]
37e76d call   0x3944ac
37e772 test   al,al
37e774 je     0x37e860
37e77a mov    rdx,r13
37e77d lea    rcx,[rbp+0x60]
37e781 call   0x2db470
37e786 mov    rdx,rbx
37e789 lea    rcx,[rbp-0x10]
37e78d call   0x2d4194
37e792 movss  xmm0,DWORD PTR [rbx+0x24]
37e797 lea    rcx,[rbx+0x30]
37e79b movss  xmm1,DWORD PTR [rbx+0x28]
37e7a0 mov    eax,DWORD PTR [rbx+0x20]
37e7a3 movss  DWORD PTR [rbp+0x14],xmm0
37e7a8 movss  DWORD PTR [rbp+0x18],xmm1
37e7ad mov    DWORD PTR [rbp+0x10],eax
37e7b0 mov    BYTE PTR [rbp+0x1c],r15b
37e7b4 call   0x2cd7ec
37e7b9 mov    rdx,rax
37e7bc lea    rcx,[rbp+0x20]
37e7c0 call   0x2cc2cc
37e7c5 movups xmm0,XMMWORD PTR [rbx+0x50]
37e7c9 lea    rdx,[rbp-0x10]
37e7cd mov    BYTE PTR [rbp+0x50],0x1
37e7d1 mov    rcx,r13
37e7d4 mov    DWORD PTR [rbp+0x54],r15d
37e7d8 movdqu XMMWORD PTR [rbp+0x40],xmm0
37e7dd call   0x37c984
37e7e2 lea    rcx,[rbp-0x10]
37e7e6 call   0x2db624
37e7eb lea    rdx,[rbp+0x60]
37e7ef lea    rcx,[rbp-0x10]
37e7f3 call   0x2d4194
37e7f8 movss  xmm0,DWORD PTR [rbp+0x84]
37e800 lea    rdx,[rbp+0x90]
37e807 movss  xmm1,DWORD PTR [rbp+0x88]
37e80f lea    rcx,[rbp+0x20]
37e813 mov    eax,DWORD PTR [rbp+0x80]
37e819 movss  DWORD PTR [rbp+0x14],xmm0
37e81e movss  DWORD PTR [rbp+0x18],xmm1
37e823 mov    DWORD PTR [rbp+0x10],eax
37e826 mov    BYTE PTR [rbp+0x1c],0x1
37e82a call   0x2d4194
37e82f movaps xmm0,XMMWORD PTR [rbp+0xb0]
37e836 lea    rdx,[rbp-0x10]
37e83a mov    rcx,rbx
37e83d mov    BYTE PTR [rbp+0x50],0x1
37e841 movups XMMWORD PTR [rbp+0x40],xmm0
37e845 mov    DWORD PTR [rbp+0x54],r15d
37e849 call   0x37c984
37e84e lea    rcx,[rbp-0x10]
37e852 call   0x2db624
37e857 lea    rcx,[rbp+0x60]
37e85b call   0x2db624
37e860 add    rbx,0x68
37e864 cmp    rbx,rsi
37e867 jne    0x37e738
37e86d xor    ecx,ecx
37e86f call   0x394588
37e874 test   al,al
37e876 je     0x37e88b
37e878 mov    eax,DWORD PTR [rip+0xffffffffffeca692]        # 0x248f10
37e87e cmp    eax,0x5
37e881 je     0x37e887
37e883 mov    DWORD PTR [r12],eax
37e887 mov    BYTE PTR [r13+0x2c],r15b
37e88b mov    rsi,QWORD PTR [rbp+0x1b0]
37e892 call   0x35d31c
37e897 mov    rcx,QWORD PTR [rbp+0x1a8]
37e89e lea    r9,[rbp-0x70]
37e8a2 lea    r8,[r13+0x30]
37e8a6 mov    rdx,QWORD PTR [rax+0x10]
37e8aa movups xmm0,XMMWORD PTR [rcx]
37e8ad mov    ecx,DWORD PTR [rbp+0x1a0]
37e8b3 mov    DWORD PTR [rsp+0x28],ecx
37e8b7 lea    rcx,[rsp+0x60]
37e8bc mov    QWORD PTR [rsp+0x20],rcx
37e8c1 mov    rcx,rax
37e8c4 movdqu XMMWORD PTR [rsp+0x60],xmm0
37e8ca call   0x361bcc
37e8cf movss  xmm0,DWORD PTR [rsi+0x14]
37e8d4 mov    rax,QWORD PTR [rip+0x8724d]        # 0x405b28
37e8db divss  xmm0,xmm12
37e8e0 mov    QWORD PTR [rax+0x3c28],rsi
37e8e7 movss  DWORD PTR [rsi+0x64],xmm0
37e8ec lea    r11,[rsp+0x258]
37e8f4 movaps xmm6,XMMWORD PTR [r11-0x18]
37e8f9 movaps xmm7,XMMWORD PTR [r11-0x28]
37e8fe movaps xmm8,XMMWORD PTR [r11-0x38]
37e903 movaps xmm9,XMMWORD PTR [r11-0x48]
37e908 movaps xmm10,XMMWORD PTR [r11-0x58]
37e90d movaps xmm11,XMMWORD PTR [r11-0x68]
37e912 movaps xmm12,XMMWORD PTR [r11-0x78]
37e917 movaps xmm13,XMMWORD PTR [r11-0x88]
37e91f mov    rsp,r11
37e922 pop    r15
37e924 pop    r14
37e926 pop    r13
37e928 pop    r12
37e92a pop    rdi
37e92b pop    rsi
37e92c pop    rbx
37e92d pop    rbp
37e92e ret
