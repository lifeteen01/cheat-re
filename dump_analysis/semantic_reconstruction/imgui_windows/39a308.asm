39a308	mov    rax,rsp
39a30b	push   rbp
39a30c	push   rbx
39a30d	push   rsi
39a30e	push   rdi
39a30f	push   r12
39a311	push   r13
39a313	push   r14
39a315	push   r15
39a317	lea    rbp,[rax-0x5f]
39a31b	sub    rsp,0xc8
39a322	mov    r12,QWORD PTR [rip+0x6b7ff]        # 0x405b28
39a329	mov    r13,rcx
39a32c	movaps XMMWORD PTR [rax-0x58],xmm6
39a330	movaps XMMWORD PTR [rax-0x68],xmm7
39a334	movaps XMMWORD PTR [rax-0x78],xmm8
39a339	movaps XMMWORD PTR [rax-0x88],xmm9
39a341	movss  xmm9,DWORD PTR [rcx+0x5c]
39a347	movaps XMMWORD PTR [rsp+0x70],xmm11
39a34d	xorps  xmm11,xmm11
39a351	comiss xmm9,xmm11
39a355	movaps XMMWORD PTR [rsp+0x60],xmm12
39a35b	movss  xmm12,DWORD PTR [rcx+0x58]
39a361	jbe    0x39a3bd
39a363	test   BYTE PTR [rcx+0x14],0x80
39a367	jne    0x39a3bd
39a369	mov    rsi,QWORD PTR [rcx+0x298]
39a370	mov    ecx,0x6
39a375	movss  xmm1,DWORD PTR [rip+0xffffffffffef2ed7]        # 0x28d254
39a37d	call   0x392298
39a382	lea    r8,[r13+0x28]
39a386	mov    ebx,eax
39a388	lea    rdx,[r13+0x20]
39a38c	lea    rcx,[rbp+0x67]
39a390	call   0x2ef9d8
39a395	movss  DWORD PTR [rsp+0x30],xmm9
39a39c	lea    rdx,[r13+0x20]
39a3a0	mov    r8,rax
39a3a3	mov    DWORD PTR [rsp+0x28],0x0
39a3ab	mov    r9d,ebx
39a3ae	movss  DWORD PTR [rsp+0x20],xmm12
39a3b5	mov    rcx,rsi
39a3b8	call   0x3a1148
39a3bd	movsx  rcx,BYTE PTR [r13+0xc1]
39a3c5	cmp    cl,0xff
39a3c8	je     0x39a575
39a3ce	imul   r15,rcx,0x1c
39a3d2	movss  DWORD PTR [rsp+0x20],xmm11
39a3d9	movaps xmm3,xmm12
39a3dd	mov    r8d,ecx
39a3e0	lea    rbx,[rip+0xfffffffffff0f0d9]        # 0x2a94c0
39a3e7	mov    rdx,r13
39a3ea	lea    rcx,[rbp-0x61]
39a3ee	lea    r14,[r15+rbx*1]
39a3f2	call   0x392a9c
39a3f7	mov    rsi,QWORD PTR [r13+0x298]
39a3fe	lea    rcx,[rbp+0x67]
39a402	movss  xmm6,DWORD PTR [r15+rbx*1+0x18]
39a409	movaps xmm2,xmm12
39a40d	mov    rdx,r14
39a410	call   0x38bc08
39a415	movss  xmm8,DWORD PTR [rip+0xffffffffffef2e32]        # 0x28d250
39a41e	lea    rcx,[rbp+0x6f]
39a422	movaps xmm2,xmm8
39a426	movaps xmm1,xmm8
39a42a	mov    rdi,rax
39a42d	call   0x2cc340
39a432	lea    r9,[rip+0xfffffffffff0f087]        # 0x2a94c0
39a439	mov    rbx,rax
39a43c	add    r9,0x8
39a440	lea    r8,[rbp-0x59]
39a444	add    r9,r15
39a447	lea    rdx,[rbp-0x61]
39a44b	lea    rcx,[rbp+0x77]
39a44f	call   0x39340c
39a454	mov    rdx,rax
39a457	lea    rcx,[rbp+0x7f]
39a45b	mov    r8,rbx
39a45e	call   0x2ef9d8
39a463	mov    rdx,rax
39a466	lea    rcx,[rbp-0x69]
39a46a	mov    r8,rdi
39a46d	call   0x2ef9d8
39a472	movss  xmm7,DWORD PTR [rip+0xfffffffffff0fcce]        # 0x2aa148
39a47a	movaps xmm3,xmm6
39a47d	subss  xmm3,xmm7
39a481	mov    DWORD PTR [rsp+0x28],0x0
39a489	mov    rdx,rax
39a48c	movss  DWORD PTR [rsp+0x20],xmm6
39a492	movaps xmm2,xmm12
39a496	mov    rcx,rsi
39a499	call   0x3a684c
39a49e	mov    rsi,QWORD PTR [r13+0x298]
39a4a5	lea    rax,[rip+0xfffffffffff0f014]        # 0x2a94c0
39a4ac	movss  xmm6,DWORD PTR [r15+rax*1+0x18]
39a4b3	lea    rcx,[rbp+0x67]
39a4b7	movaps xmm2,xmm12
39a4bb	mov    rdx,r14
39a4be	call   0x38bc08
39a4c3	movaps xmm2,xmm8
39a4c7	lea    rcx,[rbp+0x6f]
39a4cb	movaps xmm1,xmm8
39a4cf	mov    rdi,rax
39a4d2	call   0x2cc340
39a4d7	lea    r9,[rip+0xfffffffffff0efe2]        # 0x2a94c0
39a4de	mov    rbx,rax
39a4e1	add    r9,0x10
39a4e5	lea    r8,[rbp-0x59]
39a4e9	add    r9,r15
39a4ec	lea    rdx,[rbp-0x61]
39a4f0	lea    rcx,[rbp+0x77]
39a4f4	call   0x39340c
39a4f9	mov    rdx,rax
39a4fc	lea    rcx,[rbp+0x7f]
39a500	mov    r8,rbx
39a503	call   0x2ef9d8
39a508	mov    rdx,rax
39a50b	lea    rcx,[rbp-0x69]
39a50f	mov    r8,rdi
39a512	call   0x2ef9d8
39a517	movaps xmm0,xmm6
39a51a	mov    DWORD PTR [rsp+0x28],0x0
39a522	addss  xmm0,xmm7
39a526	mov    rdx,rax
39a529	movaps xmm3,xmm6
39a52c	movaps xmm2,xmm12
39a530	movss  DWORD PTR [rsp+0x20],xmm0
39a536	mov    rcx,rsi
39a539	call   0x3a684c
39a53e	movss  xmm1,DWORD PTR [rip+0xffffffffffef2d0e]        # 0x28d254
39a546	mov    ecx,0x1e
39a54b	call   0x392298
39a550	movss  xmm0,DWORD PTR [rip+0xffffffffffef8bdc]        # 0x293134
39a558	movaps xmm1,xmm9
39a55c	mov    edx,eax
39a55e	call   0x38a3f4
39a563	mov    rcx,QWORD PTR [r13+0x298]
39a56a	movaps xmm3,xmm0
39a56d	xor    r8d,r8d
39a570	call   0x398758
39a575	movss  xmm8,DWORD PTR [r12+0x3818]
39a57f	comiss xmm8,xmm11
39a583	jbe    0x39a614
39a589	test   BYTE PTR [r13+0x14],0x1
39a58e	jne    0x39a614
39a594	mov    rcx,r13
39a597	call   0x39bf80
39a59c	movss  xmm1,DWORD PTR [rip+0xffffffffffef2cb0]        # 0x28d254
39a5a4	movaps xmm7,xmm0
39a5a7	addss  xmm7,DWORD PTR [r13+0x24]
39a5ad	mov    ecx,0x6
39a5b2	subss  xmm7,DWORD PTR [rip+0xffffffffffef2c9a]        # 0x28d254
39a5ba	call   0x392298
39a5bf	movss  xmm6,DWORD PTR [r13+0x20]
39a5c5	lea    rcx,[rbp+0x67]
39a5c9	movaps xmm1,xmm6
39a5cc	movaps xmm2,xmm7
39a5cf	addss  xmm1,DWORD PTR [r13+0x28]
39a5d5	mov    edi,eax
39a5d7	subss  xmm1,xmm9
39a5dc	call   0x2cc340
39a5e1	addss  xmm6,xmm9
39a5e6	movaps xmm2,xmm7
39a5e9	lea    rcx,[rbp+0x6f]
39a5ed	mov    rbx,rax
39a5f0	movaps xmm1,xmm6
39a5f3	call   0x2cc340
39a5f8	mov    rcx,QWORD PTR [r13+0x298]
39a5ff	mov    rdx,rax
39a602	mov    r9d,edi
39a605	movss  DWORD PTR [rsp+0x20],xmm8
39a60c	mov    r8,rbx
39a60f	call   0x3a01f4
39a614	lea    r11,[rsp+0xc8]
39a61c	movaps xmm6,XMMWORD PTR [r11-0x18]
39a621	movaps xmm7,XMMWORD PTR [r11-0x28]
39a626	movaps xmm8,XMMWORD PTR [r11-0x38]
39a62b	movaps xmm9,XMMWORD PTR [r11-0x48]
39a630	movaps xmm11,XMMWORD PTR [r11-0x58]
39a635	movaps xmm12,XMMWORD PTR [r11-0x68]
39a63a	mov    rsp,r11
39a63d	pop    r15
39a63f	pop    r14
39a641	pop    r13
39a643	pop    r12
39a645	pop    rdi
39a646	pop    rsi
39a647	pop    rbx
39a648	pop    rbp
39a649	ret
