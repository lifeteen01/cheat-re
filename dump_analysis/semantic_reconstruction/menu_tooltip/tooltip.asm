; tooltip independent pdata/next-pdata extent 389f18..38a3c2 unwind3d44fc
389f18 mov    rax,rsp
389f1b push   rbp
389f1c push   rbx
389f1d push   rsi
389f1e push   rdi
389f1f push   r12
389f21 push   r13
389f23 push   r14
389f25 push   r15
389f27 lea    rbp,[rax-0x68]
389f2b sub    rsp,0x128
389f32 movaps XMMWORD PTR [rax-0x58],xmm6
389f36 mov    r14,r8
389f39 movaps XMMWORD PTR [rax-0x68],xmm7
389f3d mov    r13,rdx
389f40 movaps XMMWORD PTR [rax-0x78],xmm10
389f45 xor    edx,edx
389f47 movaps XMMWORD PTR [rax-0x88],xmm11
389f4e 
389f4f mov    rbx,rcx
389f52 movaps XMMWORD PTR [rax-0x98],xmm12
389f59 
389f5a xor    eax,eax
389f5c mov    r8d,eax
389f5f call   0x3811c4
389f64 mov    r12,rax
389f67 call   0x35d200
389f6c xor    r8d,r8d
389f6f mov    rdx,rbx
389f72 mov    rcx,rax
389f75 mov    rsi,rax
389f78 call   0x392614
389f7d movss  xmm10,DWORD PTR [rip+0xfffffffffff09236]        # 0x2931bc
389f84 
389f86 lea    rcx,[rsp+0x68]
389f8b movaps xmm2,xmm10
389f8f lea    rbx,[rsi+0x100]
389f96 movaps xmm1,xmm10
389f9a mov    edi,eax
389f9c call   0x2cc340
389fa1 mov    rcx,rax
389fa4 lea    rdx,[rsp+0x70]
389fa9 call   0x364f20
389fae mov    r8,rax
389fb1 lea    rcx,[rsp+0x78]
389fb6 mov    rdx,rbx
389fb9 call   0x2ef9d8
389fbe mov    r8,rax
389fc1 lea    rcx,[rsp+0x58]
389fc6 mov    rdx,rbx
389fc9 call   0x2db388
389fce movss  xmm12,DWORD PTR [rip+0xfffffffffff09289]        # 0x293260
389fd5 
389fd7 lea    rcx,[rsp+0x58]
389fdc movaps xmm1,xmm12
389fe0 call   0x37ca80
389fe5 xor    r9d,r9d
389fe8 lea    rcx,[rsp+0x58]
389fed xor    r8d,r8d
389ff0 mov    edx,edi
389ff2 call   0x3948dc
389ff7 lea    r9,[rsp+0x50]
389ffc mov    DWORD PTR [rsp+0x20],0x0
38a003 
38a004 lea    r8,[rbp+0x88]
38a00b mov    edx,edi
38a00d lea    rcx,[rsp+0x58]
38a012 call   0x3bc7e0
38a017 movss  xmm0,DWORD PTR [rip+0xfffffffffff09195]        # 0x2931b4
38a01e 
38a01f xorps  xmm1,xmm1
38a022 movss  xmm11,DWORD PTR [rip+0xfffffffffff03229]        # 0x28d254
38a029 
38a02b mov    r15b,al
38a02e mov    r9b,BYTE PTR [rbp+0x88]
38a035 movaps xmm2,xmm11
38a039 movss  DWORD PTR [rsp+0x20],xmm0
38a03f xorps  xmm7,xmm7
38a042 movss  xmm0,DWORD PTR [r12+0x4]
38a049 call   0x335e48
38a04e movaps xmm6,xmm0
38a051 movaps xmm1,xmm11
38a055 mov    ecx,0x1
38a05a movss  DWORD PTR [r12+0x4],xmm6
38a061 call   0x392298
38a066 mov    edx,eax
38a068 lea    rcx,[rbp-0x50]
38a06c call   0x3364d4
38a071 mov    ecx,0x2
38a076 movups xmm1,XMMWORD PTR [rax]
38a079 movdqu XMMWORD PTR [rbp-0x70],xmm1
38a07e movaps xmm1,xmm11
38a082 call   0x392298
38a087 mov    edx,eax
38a089 lea    rcx,[rbp-0x60]
38a08d call   0x3364d4
38a092 movaps xmm3,xmm6
38a095 movups xmm0,XMMWORD PTR [rax]
38a098 movdqu XMMWORD PTR [rbp-0x80],xmm0
38a09d lea    r8,[rbp-0x70]
38a0a1 lea    rdx,[rbp-0x80]
38a0a5 lea    rcx,[rbp-0x40]
38a0a9 call   0x3795a4
38a0ae mov    rdi,QWORD PTR [rsi+0x298]
38a0b5 lea    rcx,[rbp-0x40]
38a0b9 call   0x2ef80c
38a0be movss  xmm6,DWORD PTR [rip+0xffffffffffebee22]        # 0x248ee8
38a0c5 
38a0c6 lea    rcx,[rip+0x72013]        # 0x3fc0e0
38a0cd mov    edx,0x2
38a0d2 mulss  xmm6,xmm10
38a0d7 mov    ebx,eax
38a0d9 call   0x3367b8
38a0de mov    rcx,rax
38a0e1 movaps xmm1,xmm10
38a0e5 call   0x364aec
38a0ea mov    QWORD PTR [rsp+0x40],0x0
38a0f1 
38a0f3 lea    r9,[rsp+0x58]
38a0f8 movss  DWORD PTR [rsp+0x38],xmm7
38a0fe mov    rdx,rax
38a101 mov    QWORD PTR [rsp+0x30],0x0
38a108 
38a10a movaps xmm2,xmm6
38a10d mov    QWORD PTR [rsp+0x28],r14
38a112 mov    rcx,rdi
38a115 mov    DWORD PTR [rsp+0x20],ebx
38a119 call   0x3a31f8
38a11e movss  xmm0,DWORD PTR [r12+0x4]
38a125 comiss xmm0,DWORD PTR [rip+0xfffffffffff08f6c]        # 0x293098
38a12c jbe    0x38a38e
38a132 call   0x3925a4
38a137 movss  xmm6,DWORD PTR [rip+0xffffffffffebeda9]        # 0x248ee8
38a13e 
38a13f mov    ecx,0x8
38a144 movss  xmm1,DWORD PTR [r12+0x4]
38a14b mov    r14,rax
38a14e mulss  xmm6,DWORD PTR [rip+0xfffffffffff09002]        # 0x293158
38a155 
38a156 call   0x392298
38a15b xor    r9d,r9d
38a15e movss  DWORD PTR [rsp+0x20],xmm12
38a165 xor    r8d,r8d
38a168 lea    rcx,[rsp+0x78]
38a16d mov    rdx,r13
38a170 mov    esi,eax
38a172 call   0x38f79c
38a177 movss  xmm2,DWORD PTR [rip+0xfffffffffff039a1]        # 0x28db20
38a17e 
38a17f lea    rcx,[rsp+0x70]
38a184 movaps xmm1,xmm10
38a188 mov    rdi,rax
38a18b call   0x2cc340
38a190 mov    rcx,rax
38a193 lea    rdx,[rbp-0x60]
38a197 call   0x364f20
38a19c movss  xmm2,DWORD PTR [rsp+0x64]
38a1a2 lea    rcx,[rbp-0x50]
38a1a6 movss  xmm1,DWORD PTR [rsp+0x58]
38a1ac mov    rbx,rax
38a1af call   0x2cc340
38a1b4 mov    rdx,rax
38a1b7 lea    rcx,[rbp-0x80]
38a1bb mov    r8,rbx
38a1be call   0x2ef9d8
38a1c3 mov    rdx,rax
38a1c6 lea    rcx,[rbp-0x70]
38a1ca mov    r8,rdi
38a1cd call   0x2ef9d8
38a1d2 movss  xmm2,DWORD PTR [rip+0xffffffffffebed0e]        # 0x248ee8
38a1d9 
38a1da lea    rcx,[rsp+0x68]
38a1df movss  xmm7,DWORD PTR [rip+0xfffffffffff08f91]        # 0x293178
38a1e6 
38a1e7 mov    rbx,rax
38a1ea movss  xmm1,DWORD PTR [rsp+0x58]
38a1f0 mulss  xmm2,xmm7
38a1f4 addss  xmm2,DWORD PTR [rsp+0x64]
38a1fa call   0x2cc340
38a1ff mov    r9d,esi
38a202 mov    DWORD PTR [rsp+0x28],0x0
38a209 
38a20a mov    r8,rbx
38a20d movss  DWORD PTR [rsp+0x20],xmm6
38a213 lea    rdx,[rsp+0x68]
38a218 mov    rcx,r14
38a21b call   0x3a1244
38a220 call   0x3925a4
38a225 movss  xmm6,DWORD PTR [rip+0xffffffffffebecbb]        # 0x248ee8
38a22c 
38a22d mov    ecx,0x6
38a232 movss  xmm1,DWORD PTR [r12+0x4]
38a239 mov    r14,rax
38a23c mulss  xmm6,DWORD PTR [rip+0xfffffffffff08f14]        # 0x293158
38a243 
38a244 call   0x392298
38a249 xor    r9d,r9d
38a24c movss  DWORD PTR [rsp+0x20],xmm12
38a253 xor    r8d,r8d
38a256 lea    rcx,[rbp-0x70]
38a25a mov    rdx,r13
38a25d mov    esi,eax
38a25f call   0x38f79c
38a264 movss  xmm2,DWORD PTR [rip+0xfffffffffff038b4]        # 0x28db20
38a26b 
38a26c lea    rcx,[rbp-0x80]
38a270 movaps xmm1,xmm10
38a274 mov    rdi,rax
38a277 call   0x2cc340
38a27c mov    rcx,rax
38a27f lea    rdx,[rbp-0x50]
38a283 call   0x364f20
38a288 movss  xmm2,DWORD PTR [rsp+0x64]
38a28e lea    rcx,[rbp-0x60]
38a292 movss  xmm1,DWORD PTR [rsp+0x58]
38a298 mov    rbx,rax
38a29b call   0x2cc340
38a2a0 mov    rdx,rax
38a2a3 lea    rcx,[rsp+0x78]
38a2a8 mov    r8,rbx
38a2ab call   0x2ef9d8
38a2b0 mov    rdx,rax
38a2b3 lea    rcx,[rsp+0x70]
38a2b8 mov    r8,rdi
38a2bb call   0x2ef9d8
38a2c0 movss  xmm2,DWORD PTR [rip+0xffffffffffebec20]        # 0x248ee8
38a2c7 
38a2c8 lea    rcx,[rsp+0x68]
38a2cd movss  xmm1,DWORD PTR [rsp+0x58]
38a2d3 mov    rbx,rax
38a2d6 mulss  xmm2,xmm7
38a2da addss  xmm2,DWORD PTR [rsp+0x64]
38a2e0 call   0x2cc340
38a2e5 movss  DWORD PTR [rsp+0x30],xmm11
38a2ec lea    rdx,[rsp+0x68]
38a2f1 mov    DWORD PTR [rsp+0x28],0x0
38a2f8 
38a2f9 mov    r9d,esi
38a2fc mov    r8,rbx
38a2ff movss  DWORD PTR [rsp+0x20],xmm6
38a305 mov    rcx,r14
38a308 call   0x3a1148
38a30d call   0x3925a4
38a312 movss  xmm1,DWORD PTR [r12+0x4]
38a319 mov    ecx,0x1
38a31e mov    rsi,rax
38a321 call   0x392298
38a326 movss  xmm2,DWORD PTR [rip+0xfffffffffff08e7a]        # 0x2931a8
38a32d 
38a32e lea    rcx,[rbp-0x70]
38a332 movss  xmm1,DWORD PTR [rip+0xfffffffffff03ea6]        # 0x28e1e0
38a339 
38a33a mov    edi,eax
38a33c call   0x2cc340
38a341 mov    rcx,rax
38a344 lea    rdx,[rbp-0x80]
38a348 call   0x364f20
38a34d movss  xmm2,DWORD PTR [rsp+0x64]
38a353 lea    rcx,[rbp-0x50]
38a357 movss  xmm1,DWORD PTR [rsp+0x58]
38a35d mov    rbx,rax
38a360 call   0x2cc340
38a365 mov    rdx,rax
38a368 lea    rcx,[rbp-0x60]
38a36c mov    r8,rbx
38a36f call   0x2ef9d8
38a374 mov    rdx,rax
38a377 mov    QWORD PTR [rsp+0x20],0x0
38a37e 
38a380 mov    r9,r13
38a383 mov    r8d,edi
38a386 mov    rcx,rsi
38a389 call   0x3a31bc
38a38e lea    r11,[rsp+0x128]
38a395 
38a396 mov    al,r15b
38a399 movaps xmm6,XMMWORD PTR [r11-0x18]
38a39e movaps xmm7,XMMWORD PTR [r11-0x28]
38a3a3 movaps xmm10,XMMWORD PTR [r11-0x38]
38a3a8 movaps xmm11,XMMWORD PTR [r11-0x48]
38a3ad movaps xmm12,XMMWORD PTR [r11-0x58]
38a3b2 mov    rsp,r11
38a3b5 pop    r15
38a3b7 pop    r14
38a3b9 pop    r13
38a3bb pop    r12
38a3bd pop    rdi
38a3be pop    rsi
38a3bf pop    rbx
38a3c0 pop    rbp
38a3c1 ret
