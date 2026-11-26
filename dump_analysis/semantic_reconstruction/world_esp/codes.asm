30a1c3 cmp    BYTE PTR [rip+0xdf3ce],r15b        # 0x3e9598 ; CONFIG Bools.BruteForceCodes value(+0x48)
30a1ca mov    edi,0xff
30a1cf je     0x30a5be
30a1d5 lea    rcx,[rip+0xfffffffffff0e65c]        # 0x218838
30a1dc call   0x2d79c0
30a1e1 lea    rcx,[rip+0xfffffffffff0e650]        # 0x218838
30a1e8 mov    QWORD PTR [rbp+0x78],rax
30a1ec mov    rbx,rax
30a1ef call   0x2d1978
30a1f4 mov    r15,rax
30a1f7 cmp    rax,rbx
30a1fa je     0x30a5bb
30a200 movss  xmm8,DWORD PTR [rip+0xfffffffffff8391b]        # 0x28db24 ; f32=30
30a209 movsd  xmm6,QWORD PTR [r15+0x4]
30a20f lea    rcx,[rbp+0x40]
30a213 mov    ebx,DWORD PTR [r15+0xc]
30a217 movsd  QWORD PTR [rbp+0x50],xmm6
30a21c mov    DWORD PTR [rbp+0x58],ebx
30a21f call   0x2cb3a4
30a224 lea    r9,[rip+0xcd07d]        # 0x3d72a8
30a22b movsd  QWORD PTR [rbp-0x80],xmm6
30a230 lea    r8,[rbp+0x40]
30a234 mov    DWORD PTR [rbp-0x78],ebx
30a237 lea    rdx,[rbp-0x80]
30a23b mov    rcx,r12
30a23e call   0x36cd20
30a243 test   al,al
30a245 je     0x30a5ad
30a24b lea    rbx,[r15+0x10]
30a24f mov    rdx,rbx
30a252 lea    rcx,[rip+0xdbb97]        # 0x3e5df0
30a259 call   0x2ef704
30a25e mov    rdx,rbx
30a261 lea    rcx,[rip+0xdbbc8]        # 0x3e5e30
30a268 movss  xmm6,DWORD PTR [rax]
30a26c call   0x2ef6e4
30a271 mov    ecx,0x8
30a276 sub    ecx,DWORD PTR [rax]
30a278 mov    DWORD PTR [rbp+0x15b8],ecx
30a27e test   ecx,ecx
30a280 jle    0x30a5ad
30a286 call   0x31581c
30a28b comiss xmm6,xmm11
30a28f movaps xmm7,xmm0
30a292 jbe    0x30a5ad
30a298 mov    rdx,rbx
30a29b lea    rcx,[rip+0xdbb8e]        # 0x3e5e30
30a2a2 call   0x2ef6e4
30a2a7 cvttss2si edi,xmm7
30a2ab mov    eax,DWORD PTR [rax]
30a2ad mov    DWORD PTR [rbp+0x15c],eax
30a2b3 cvttss2si eax,xmm6
30a2b7 sub    edi,eax
30a2b9 cmp    edi,0x3c
30a2bc jl     0x30a2d3
30a2be mov    rdx,rbx
30a2c1 lea    rcx,[rip+0xdbb68]        # 0x3e5e30
30a2c8 call   0x2ef6e4
30a2cd mov    DWORD PTR [rax],0x0
30a2d3 lea    rdx,[rbp-0x50]
30a2d7 mov    rcx,r12
30a2da call   0x36ca34
30a2df mov    rcx,rax
30a2e2 lea    rdx,[rbp+0x50]
30a2e6 call   0x2dff30
30a2eb comiss xmm8,xmm0
30a2ef jbe    0x30a5a8
30a2f5 lea    rdx,[rbp+0x15b0]
30a2fc lea    rcx,[rbp+0x15a8]
30a303 call   0x2f01e0 ; STRING getter=0x2f01e0 ]
30a308 mov    rcx,rax
30a30b call   0x2d8464
30a310 mov    rdx,rax
30a313 lea    rcx,[rbp+0x388]
30a31a call   0x2cc2cc
30a31f mov    edx,edi
30a321 lea    rcx,[rbp+0x20]
30a325 mov    r14,rax
30a328 call   0x2d9510
30a32d lea    rdx,[rbp+0x1e0]
30a334 mov    rsi,rax
30a337 lea    rcx,[rbp+0x15a8]
30a33e call   0x2f42f0 ; STRING getter=0x2f42f0  Timer :
30a343 mov    rcx,rax
30a346 call   0x2e9b8c
30a34b mov    rdx,rax
30a34e lea    rcx,[rbp+0x598]
30a355 call   0x2cc2cc
30a35a mov    edx,DWORD PTR [rbp+0x15b8]
30a360 lea    rcx,[rbp+0xa0]
30a367 mov    rdi,rax
30a36a call   0x2d9510
30a36f lea    rdx,[rbp+0x378]
30a376 mov    rbx,rax
30a379 lea    rcx,[rbp+0x15a8]
30a380 call   0x2f3808 ; STRING getter=0x2f3808 [Uses Left : 
30a385 mov    rcx,rax
30a388 call   0x2dd188
30a38d mov    rdx,rax
30a390 lea    rcx,[rbp+0x80]
30a397 call   0x2cc2cc
30a39c mov    rdx,rax
30a39f lea    rcx,[rbp+0x2f0]
30a3a6 mov    r8,rbx
30a3a9 call   0x2cef40
30a3ae mov    rdx,rax
30a3b1 lea    rcx,[rbp+0x1f0]
30a3b8 mov    r8,rdi
30a3bb call   0x2cef40
30a3c0 mov    rdx,rax
30a3c3 lea    rcx,[rbp+0xd8]
30a3ca mov    r8,rsi
30a3cd call   0x2cef40
30a3d2 mov    rdx,rax
30a3d5 lea    rcx,[rbp+0x210]
30a3dc mov    r8,r14
30a3df call   0x2cef40
30a3e4 lea    rcx,[rbp+0xd8]
30a3eb call   0x2cc4f4
30a3f0 lea    rcx,[rbp+0x1f0]
30a3f7 call   0x2cc4f4
30a3fc lea    rcx,[rbp+0x2f0]
30a403 call   0x2cc4f4
30a408 lea    rcx,[rbp+0x80]
30a40f call   0x2cc4f4
30a414 lea    rcx,[rbp+0xa0]
30a41b call   0x2cc4f4
30a420 lea    rcx,[rbp+0x598]
30a427 call   0x2cc4f4
30a42c lea    rcx,[rbp+0x20]
30a430 call   0x2cc4f4
30a435 lea    rcx,[rbp+0x388]
30a43c call   0x2cc4f4
30a441 mov    esi,0x9b
30a446 lea    rcx,[rbp-0x70]
30a44a mov    DWORD PTR [rsp+0x20],esi
30a44e lea    edi,[rsi+0x64]
30a451 mov    r9d,edi
30a454 mov    r8d,edi
30a457 mov    edx,edi
30a459 call   0x2db318
30a45e movss  xmm2,DWORD PTR [rbp+0x44]
30a463 lea    rcx,[rbp+0x2c0]
30a46a movss  xmm1,DWORD PTR [rbp+0x40]
30a46f movdqu xmm0,XMMWORD PTR [rax]
30a473 movdqa XMMWORD PTR [rsp+0x70],xmm0
30a479 call   0x2cc340
30a47e mov    r9,rax
30a481 mov    rdx,QWORD PTR [r13+0x10]
30a485 lea    rax,[rsp+0x70]
30a48a mov    DWORD PTR [rsp+0x28],0x1
30a492 lea    r8,[rbp+0x210]
30a499 mov    rcx,r13
30a49c mov    QWORD PTR [rsp+0x20],rax
30a4a1 call   0x36135c
30a4a6 movss  xmm0,DWORD PTR [rbp+0x44]
30a4ab lea    rcx,[rbp+0x1f0]
30a4b2 addss  xmm0,DWORD PTR [rip+0xfffffffffff3ea1e]        # 0x248ed8 ; f32=16
30a4ba movss  DWORD PTR [rbp+0x44],xmm0
30a4bf movd   xmm0,DWORD PTR [rbp+0x15c]
30a4c7 cvtdq2ps xmm0,xmm0
30a4ca addss  xmm0,xmm12
30a4cf mulss  xmm0,DWORD PTR [rip+0xfffffffffff88ca9]        # 0x293180 ; f32=5
30a4d7 cvttss2si edx,xmm0
30a4db call   0x2d9510
30a4e0 lea    rdx,[rbp+0xbe0]
30a4e7 mov    rbx,rax
30a4ea lea    rcx,[rbp+0x15a8]
30a4f1 call   0x2f52bc ; STRING getter=0x2f52bc Damage :
30a4f6 mov    rcx,rax
30a4f9 call   0x2e9b8c
30a4fe mov    rdx,rax
30a501 lea    rcx,[rbp+0xd8]
30a508 call   0x2cc2cc
30a50d mov    rdx,rax
30a510 lea    rcx,[rbp-0x28]
30a514 mov    r8,rbx
30a517 call   0x2cef40
30a51c lea    rcx,[rbp+0xd8]
30a523 call   0x2cc4f4
30a528 lea    rcx,[rbp+0x1f0]
30a52f call   0x2cc4f4
30a534 mov    r9d,edi
30a537 mov    DWORD PTR [rsp+0x20],esi
30a53b mov    r8d,edi
30a53e lea    rcx,[rbp+0xbf0]
30a545 mov    edx,edi
30a547 call   0x2db318
30a54c movss  xmm2,DWORD PTR [rbp+0x44]
30a551 lea    rcx,[rbp+0x430]
30a558 movss  xmm1,DWORD PTR [rbp+0x40]
30a55d movdqu xmm0,XMMWORD PTR [rax]
30a561 movdqa XMMWORD PTR [rsp+0x70],xmm0
30a567 call   0x2cc340
30a56c mov    rdx,QWORD PTR [r13+0x10]
30a570 lea    r8,[rbp-0x28]
30a574 mov    r9,rax
30a577 mov    DWORD PTR [rsp+0x28],0x1
30a57f lea    rax,[rsp+0x70]
30a584 mov    rcx,r13
30a587 mov    QWORD PTR [rsp+0x20],rax
30a58c call   0x36135c
30a591 lea    rcx,[rbp-0x28]
30a595 call   0x2cc4f4
30a59a lea    rcx,[rbp+0x210]
30a5a1 call   0x2cc4f4
30a5a6 jmp    0x30a5ad
30a5a8 mov    edi,0xff
30a5ad add    r15,0x14
30a5b1 cmp    r15,QWORD PTR [rbp+0x78]
30a5b5 jne    0x30a209
30a5bb xor    r15d,r15d
30a5be cmp    BYTE PTR [rip+0xdb6f3],r15b        # 0x3e5cb8
30a5c5 mov    esi,0x1a
30a5ca jne    0x30ab62
30a5d0 cmp    BYTE PTR [rip+0xdbaa5],r15b        # 0x3e607c
30a5d7 je     0x30a7bf
