399d88	mov    rax,rsp
399d8b	mov    BYTE PTR [rax+0x20],r9b
399d8f	mov    BYTE PTR [rax+0x18],r8b
399d93	mov    QWORD PTR [rax+0x10],rdx
399d97	push   rbp
399d98	push   rbx
399d99	push   rsi
399d9a	push   rdi
399d9b	push   r12
399d9d	push   r13
399d9f	push   r14
399da1	push   r15
399da3	lea    rbp,[rax-0x47]
399da7	sub    rsp,0xf8
399dae	mov    r12,QWORD PTR [rip+0x6bd73]        # 0x405b28
399db5	mov    r14b,r9b
399db8	movaps XMMWORD PTR [rax-0x58],xmm6
399dbc	mov    sil,r8b
399dbf	movss  xmm6,DWORD PTR [rcx+0x5c]
399dc4	mov    rdi,rdx
399dc7	movaps XMMWORD PTR [rax-0x68],xmm7
399dcb	mov    r15,rcx
399dce	movaps XMMWORD PTR [rax-0x78],xmm8
399dd3	movss  xmm8,DWORD PTR [rcx+0x58]
399dd9	movaps XMMWORD PTR [rax-0x88],xmm9
399de1	movaps XMMWORD PTR [rax-0x98],xmm10
399de9	xor    eax,eax
399deb	mov    BYTE PTR [rcx+0xbb],al
399df1	cmp    BYTE PTR [rcx+0xb9],al
399df7	je     0x399e59
399df9	movss  xmm7,DWORD PTR [r12+0x3818]
399e03	movss  DWORD PTR [r12+0x3818],xmm6
399e0d	test   r8b,r8b
399e10	je     0x399e1f
399e12	lea    ecx,[rax+0xc]
399e15	cmp    BYTE PTR [r12+0x4926],al
399e1d	je     0x399e24
399e1f	mov    ecx,0xd
399e24	movss  xmm1,DWORD PTR [rip+0xffffffffffef3428]        # 0x28d254
399e2c	call   0x392298
399e31	mov    rdx,QWORD PTR [rdi+0x8]
399e35	mov    r8d,eax
399e38	mov    rcx,QWORD PTR [rdi]
399e3b	mov    r9b,0x1
399e3e	movss  DWORD PTR [rsp+0x20],xmm8
399e45	call   0x3992a0
399e4a	movss  DWORD PTR [r12+0x3818],xmm7
399e54	jmp    0x39a2d5
399e59	mov    ebx,DWORD PTR [rcx+0x14]
399e5c	xorps  xmm7,xmm7
399e5f	movss  xmm9,DWORD PTR [rip+0xffffffffffef33ec]        # 0x28d254
399e68	mov    DWORD PTR [rbp+0x4f],ebx
399e6b	test   bl,bl
399e6d	js     0x399f4d
399e73	call   0x392ea0
399e78	mov    ecx,eax
399e7a	movaps xmm1,xmm9
399e7e	call   0x392298
399e83	test   BYTE PTR [r12+0x47e0],0x40
399e8c	mov    DWORD PTR [rsp+0x30],eax
399e90	je     0x399ec3
399e92	movss  xmm0,DWORD PTR [r12+0x4840]
399e9c	call   0x3789fc
399ea1	mulss  xmm0,DWORD PTR [rip+0xffffffffffef383b]        # 0x28d6e4
399ea9	and    eax,0xffffff
399eae	addss  xmm0,DWORD PTR [rip+0xffffffffffef339a]        # 0x28d250
399eb6	cvttss2si ecx,xmm0
399eba	shl    ecx,0x18
399ebd	or     ecx,eax
399ebf	mov    DWORD PTR [rsp+0x30],ecx
399ec3	mov    r14,QWORD PTR [r15+0x298]
399eca	lea    r8,[r15+0x28]
399ece	lea    rdx,[r15+0x20]
399ed2	lea    rcx,[rsp+0x58]
399ed7	call   0x2ef9d8
399edc	mov    r13d,ebx
399edf	mov    rsi,rax
399ee2	and    r13d,0x1
399ee6	mov    ecx,r13d
399ee9	neg    ecx
399eeb	mov    rcx,r15
399eee	sbb    ebx,ebx
399ef0	not    ebx
399ef2	and    ebx,0xc0
399ef8	call   0x39bf80
399efd	movaps xmm2,xmm0
399f00	lea    rcx,[rsp+0x38]
399f05	xorps  xmm1,xmm1
399f08	call   0x2cc340
399f0d	mov    r8,rax
399f10	lea    rdx,[r15+0x20]
399f14	lea    rcx,[rsp+0x40]
399f19	call   0x2ef9d8
399f1e	mov    r9d,DWORD PTR [rsp+0x30]
399f23	mov    rdx,rax
399f26	mov    r8,rsi
399f29	mov    DWORD PTR [rsp+0x28],ebx
399f2d	mov    rcx,r14
399f30	movss  DWORD PTR [rsp+0x20],xmm8
399f37	call   0x3a1244
399f3c	mov    ebx,DWORD PTR [rbp+0x4f]
399f3f	mov    rdi,QWORD PTR [rbp+0x57]
399f43	mov    sil,BYTE PTR [rbp+0x5f]
399f47	mov    r14b,BYTE PTR [rbp+0x67]
399f4b	jmp    0x399f54
399f4d	mov    r13d,ebx
399f50	and    r13d,0x1
399f54	movss  xmm0,DWORD PTR [r12+0x38ac]
399f5e	comiss xmm0,xmm7
399f61	jbe    0x399f88
399f63	mov    eax,ebx
399f65	and    eax,0x5000000
399f6a	cmp    eax,0x1000000
399f6f	je     0x399f88
399f71	movss  xmm0,DWORD PTR [r12+0x3c24]
399f7b	comiss xmm0,xmm7
399f7e	jbe    0x399f88
399f80	mov    rcx,r15
399f83	call   0x39a64c
399f88	test   r13d,r13d
399f8b	jne    0x399fc2
399f8d	movzx  ecx,sil
399f91	movaps xmm1,xmm9
399f95	add    ecx,0xb
399f98	call   0x392298
399f9d	mov    rcx,QWORD PTR [r15+0x298]
399fa4	lea    r8,[rdi+0x8]
399fa8	mov    r9d,eax
399fab	mov    DWORD PTR [rsp+0x28],0x30
399fb3	mov    rdx,rdi
399fb6	movss  DWORD PTR [rsp+0x20],xmm8
399fbd	call   0x3a1244
399fc2	bt     ebx,0xa
399fc6	jae    0x39a0f5
399fcc	lea    rdx,[rsp+0x48]
399fd1	mov    rcx,r15
399fd4	call   0x3951ec
399fd9	lea    rdx,[rbp-0x69]
399fdd	mov    rcx,r15
399fe0	call   0x398d44
399fe5	mov    rdx,rax
399fe8	lea    rcx,[rsp+0x48]
399fed	call   0x3901b8
399ff2	mov    rsi,QWORD PTR [r15+0x298]
399ff9	test   r13d,r13d
399ffc	je     0x39a004
399ffe	movaps xmm10,xmm8
39a002	jmp    0x39a008
39a004	xorps  xmm10,xmm10
39a008	movaps xmm1,xmm9
39a00c	mov    ecx,0xe
39a011	call   0x392298
39a016	xorps  xmm2,xmm2
39a019	lea    rcx,[rsp+0x40]
39a01e	movaps xmm1,xmm6
39a021	mov    edi,eax
39a023	call   0x2cc340
39a028	mov    r8,rax
39a02b	lea    rdx,[rsp+0x50]
39a030	lea    rcx,[rsp+0x38]
39a035	call   0x3367e4
39a03a	xorps  xmm2,xmm2
39a03d	lea    rcx,[rsp+0x58]
39a042	movaps xmm1,xmm6
39a045	mov    rbx,rax
39a048	call   0x2cc340
39a04d	mov    r8,rax
39a050	lea    rdx,[rsp+0x48]
39a055	lea    rcx,[rsp+0x30]
39a05a	call   0x2ef9d8
39a05f	mov    rdx,rax
39a062	mov    DWORD PTR [rsp+0x28],0x30
39a06a	mov    r9d,edi
39a06d	movss  DWORD PTR [rsp+0x20],xmm10
39a074	mov    r8,rbx
39a077	mov    rcx,rsi
39a07a	call   0x3a1244
39a07f	movss  xmm10,DWORD PTR [r12+0x3818]
39a089	comiss xmm10,xmm7
39a08d	jbe    0x39a0f2
39a08f	movss  xmm0,DWORD PTR [r15+0x2c]
39a095	addss  xmm0,DWORD PTR [r15+0x24]
39a09b	comiss xmm0,DWORD PTR [rsp+0x54]
39a0a0	jbe    0x39a0f2
39a0a2	mov    rsi,QWORD PTR [r15+0x298]
39a0a9	movaps xmm1,xmm9
39a0ad	mov    ecx,0x6
39a0b2	call   0x392298
39a0b7	lea    rdx,[rsp+0x40]
39a0bc	mov    edi,eax
39a0be	lea    rcx,[rsp+0x48]
39a0c3	call   0x392154
39a0c8	lea    rdx,[rsp+0x38]
39a0cd	mov    rbx,rax
39a0d0	lea    rcx,[rsp+0x48]
39a0d5	call   0x392130
39a0da	mov    rdx,rax
39a0dd	movss  DWORD PTR [rsp+0x20],xmm10
39a0e4	mov    r9d,edi
39a0e7	mov    r8,rbx
39a0ea	mov    rcx,rsi
39a0ed	call   0x3a01f4
39a0f2	mov    ebx,DWORD PTR [rbp+0x4f]
39a0f5	cmp    BYTE PTR [r15+0xb4],0x0
39a0fd	je     0x39a106
39a0ff	xor    ecx,ecx
39a101	call   0x3c3234
39a106	cmp    BYTE PTR [r15+0xb5],0x0
39a10e	je     0x39a11a
39a110	mov    ecx,0x1
39a115	call   0x3c3234
39a11a	test   r14b,r14b
39a11d	je     0x39a2d5
39a123	test   bl,0x2
39a126	jne    0x39a2cd
39a12c	mov    esi,DWORD PTR [rbp+0x6f]
39a12f	test   esi,esi
39a131	jle    0x39a2cd
39a137	movss  xmm7,DWORD PTR [rbp+0x7f]
39a13c	lea    rdx,[r15+0x28]
39a140	mov    rcx,QWORD PTR [rbp+0x77]
39a144	lea    rbx,[rip+0xfffffffffff0f315]        # 0x2a9460
39a14b	movaps xmm9,xmm6
39a14f	xor    edi,edi
39a151	addss  xmm9,xmm8
39a156	mov    r13d,DWORD PTR [rcx+rdi*4]
39a15a	test   r13d,0xff000000
39a161	je     0x39a2c3
39a167	mov    r8,rdx
39a16a	lea    r14,[rdi+rdi*2]
39a16e	lea    rdx,[r15+0x20]
39a172	lea    rcx,[rsp+0x40]
39a177	lea    rbx,[rbx+r14*8]
39a17b	call   0x2ef9d8
39a180	mov    r8,rax
39a183	lea    rdx,[r15+0x20]
39a187	mov    r9,rbx
39a18a	lea    rcx,[rbp+0x4f]
39a18e	call   0x39340c
39a193	mov    rax,QWORD PTR [r15+0x298]
39a19a	mov    ebx,edi
39a19c	mov    QWORD PTR [rsp+0x30],rax
39a1a1	and    ebx,0x1
39a1a4	je     0x39a1b3
39a1a6	movaps xmm2,xmm7
39a1a9	lea    rcx,[rsp+0x38]
39a1ae	movaps xmm1,xmm6
39a1b1	jmp    0x39a1be
39a1b3	movaps xmm2,xmm6
39a1b6	lea    rcx,[rsp+0x58]
39a1bb	movaps xmm1,xmm7
39a1be	call   0x2cc340
39a1c3	lea    rdx,[rip+0xfffffffffff0f296]        # 0x2a9460
39a1ca	mov    r8,rax
39a1cd	lea    rdx,[rdx+0x8]
39a1d1	lea    rdx,[rdx+r14*8]
39a1d5	lea    rcx,[rsp+0x60]
39a1da	call   0x38bbdc
39a1df	mov    r8,rax
39a1e2	lea    rdx,[rbp+0x4f]
39a1e6	lea    rcx,[rsp+0x68]
39a1eb	call   0x2ef9d8
39a1f0	mov    rcx,QWORD PTR [rsp+0x30]
39a1f5	mov    rdx,rax
39a1f8	call   0x378a40
39a1fd	mov    rax,QWORD PTR [r15+0x298]
39a204	mov    QWORD PTR [rsp+0x30],rax
39a209	test   ebx,ebx
39a20b	je     0x39a21a
39a20d	movaps xmm2,xmm6
39a210	lea    rcx,[rsp+0x70]
39a215	movaps xmm1,xmm7
39a218	jmp    0x39a224
39a21a	movaps xmm2,xmm7
39a21d	lea    rcx,[rbp-0x79]
39a221	movaps xmm1,xmm6
39a224	call   0x2cc340
39a229	lea    rbx,[rip+0xfffffffffff0f230]        # 0x2a9460
39a230	mov    r8,rax
39a233	lea    rdx,[rbx+0x8]
39a237	lea    rdx,[rdx+r14*8]
39a23b	lea    rcx,[rbp-0x71]
39a23f	call   0x38bbdc
39a244	mov    r8,rax
39a247	lea    rdx,[rbp+0x4f]
39a24b	lea    rcx,[rbp-0x69]
39a24f	call   0x2ef9d8
39a254	mov    rcx,QWORD PTR [rsp+0x30]
39a259	mov    rdx,rax
39a25c	call   0x378a40
39a261	movaps xmm2,xmm9
39a265	lea    rcx,[rsp+0x48]
39a26a	mulss  xmm2,DWORD PTR [rbx+r14*8+0xc]
39a271	movaps xmm1,xmm9
39a275	mulss  xmm1,DWORD PTR [rbx+r14*8+0x8]
39a27c	addss  xmm2,DWORD PTR [rbp+0x53]
39a281	addss  xmm1,DWORD PTR [rbp+0x4f]
39a286	call   0x2cc340
39a28b	mov    r9d,DWORD PTR [rbx+r14*8+0x10]
39a290	mov    rdx,rax
39a293	mov    eax,DWORD PTR [rbx+r14*8+0x14]
39a298	movaps xmm2,xmm8
39a29c	mov    rcx,QWORD PTR [r15+0x298]
39a2a3	mov    DWORD PTR [rsp+0x20],eax
39a2a7	call   0x3a6b38
39a2ac	mov    rcx,QWORD PTR [r15+0x298]
39a2b3	mov    edx,r13d
39a2b6	call   0x378a14
39a2bb	mov    rcx,QWORD PTR [rbp+0x77]
39a2bf	lea    rdx,[r15+0x28]
39a2c3	inc    edi
39a2c5	cmp    edi,esi
39a2c7	jl     0x39a156
39a2cd	mov    rcx,r15
39a2d0	call   0x39a308
39a2d5	lea    r11,[rsp+0xf8]
39a2dd	movaps xmm6,XMMWORD PTR [r11-0x18]
39a2e2	movaps xmm7,XMMWORD PTR [r11-0x28]
39a2e7	movaps xmm8,XMMWORD PTR [r11-0x38]
39a2ec	movaps xmm9,XMMWORD PTR [r11-0x48]
39a2f1	movaps xmm10,XMMWORD PTR [r11-0x58]
39a2f6	mov    rsp,r11
39a2f9	pop    r15
39a2fb	pop    r14
39a2fd	pop    r13
39a2ff	pop    r12
39a301	pop    rdi
39a302	pop    rsi
39a303	pop    rbx
39a304	pop    rbp
39a305	ret
