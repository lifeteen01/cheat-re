39d760	mov    rax,rsp
39d763	mov    DWORD PTR [rax+0x20],r9d
39d767	mov    QWORD PTR [rax+0x18],r8
39d76b	mov    QWORD PTR [rax+0x10],rdx
39d76f	push   rbp
39d770	push   rbx
39d771	push   rsi
39d772	push   rdi
39d773	push   r12
39d775	push   r13
39d777	push   r14
39d779	push   r15
39d77b	lea    rbp,[rax-0xd8]
39d782	sub    rsp,0x198
39d789	test   BYTE PTR [rcx+0x14],0x42
39d78d	mov    ebx,r9d
39d790	movaps XMMWORD PTR [rax-0x58],xmm6
39d794	mov    rdi,rcx
39d797	movaps XMMWORD PTR [rax-0x68],xmm7
39d79b	movaps XMMWORD PTR [rax-0x78],xmm8
39d7a0	movaps XMMWORD PTR [rax-0x88],xmm9
39d7a8	movaps XMMWORD PTR [rax-0x98],xmm10
39d7b0	movaps XMMWORD PTR [rax-0xa8],xmm11
39d7b8	movaps XMMWORD PTR [rax-0xb8],xmm12
39d7c0	movaps XMMWORD PTR [rax-0xc8],xmm13
39d7c8	movaps XMMWORD PTR [rax-0xd8],xmm14
39d7d0	movaps XMMWORD PTR [rax-0xe8],xmm15
39d7d8	jne    0x39e0a0
39d7de	cmp    BYTE PTR [rcx+0xd0],0x0
39d7e5	jg     0x39e0a0
39d7eb	cmp    BYTE PTR [rcx+0xd1],0x0
39d7f2	jg     0x39e0a0
39d7f8	cmp    BYTE PTR [rcx+0xb7],0x0
39d7ff	je     0x39e0a0
39d805	mov    rsi,QWORD PTR [rip+0x6831c]        # 0x405b28
39d80c	movss  xmm2,DWORD PTR [rcx+0x58]
39d811	movss  xmm13,DWORD PTR [rip+0xffffffffffeefa3a]        # 0x28d254
39d81a	addss  xmm2,xmm13
39d81f	mov    BYTE PTR [rsp+0x31],0x0
39d824	movss  xmm0,DWORD PTR [rsi+0x3c30]
39d82c	mov    al,BYTE PTR [rsi+0x7e]
39d82f	movaps xmm1,xmm0
39d832	mulss  xmm1,DWORD PTR [rip+0xffffffffffef586e]        # 0x2930a8
39d83a	neg    al
39d83c	mulss  xmm0,DWORD PTR [rip+0xffffffffffef58b8]        # 0x2930fc
39d844	sbb    r13d,r13d
39d847	and    r13d,0x4
39d84b	addss  xmm2,xmm1
39d84f	mov    DWORD PTR [rsp+0x58],r13d
39d854	movaps xmm1,xmm2
39d857	call   0x38a3f4
39d85c	cmp    BYTE PTR [rsi+0x7e],0x0
39d860	xorps  xmm8,xmm8
39d864	movss  xmm14,DWORD PTR [rip+0xffffffffffef590b]        # 0x293178
39d86d	cvttss2si eax,xmm0
39d871	movd   xmm1,eax
39d875	cvtdq2ps xmm1,xmm1
39d878	mulss  xmm1,DWORD PTR [rip+0xffffffffffef6934]        # 0x2941b4
39d880	cvttss2si eax,xmm1
39d884	movd   xmm15,eax
39d889	cvtdq2ps xmm15,xmm15
39d88d	je     0x39d895
39d88f	movaps xmm10,xmm14
39d893	jmp    0x39d899
39d895	xorps  xmm10,xmm10
39d899	movss  xmm7,DWORD PTR [rip+0xffffffffffef02b3]        # 0x28db54
39d8a1	lea    rcx,[rsp+0x60]
39d8a6	mov    r15,QWORD PTR [rbp+0x108]
39d8ad	movaps xmm2,xmm7
39d8b0	movaps xmm1,xmm7
39d8b3	call   0x2cc340
39d8b8	movaps xmm2,xmm7
39d8bb	lea    rcx,[rsp+0x38]
39d8c0	movaps xmm1,xmm7
39d8c3	call   0x2cc340
39d8c8	lea    rdx,[rbp+0xe0]
39d8cf	mov    DWORD PTR [rdi+0x158],0x1
39d8d9	lea    rcx,[rbp+0xe0]
39d8e0	call   0x38c760
39d8e5	mov    rcx,rax
39d8e8	call   0x39e8fc
39d8ed	mov    rcx,rax
39d8f0	call   0x398b04
39d8f5	movss  xmm12,DWORD PTR [rip+0xfffffffffff0bb46]        # 0x2a9444
39d8fe	lea    r8,[rip+0xffffffffffc626fb]        # 0x0
39d905	mov    eax,0x2
39d90a	test   ebx,ebx
39d90c	jle    0x39dc52
39d912	mov    r13d,DWORD PTR [rbp+0xf8]
39d919	lea    rcx,[rdi+0x20]
39d91d	movaps xmm11,xmm15
39d921	lea    rdx,[rdi+0x28]
39d925	xorps  xmm11,XMMWORD PTR [rip+0xffffffffffef5973]        # 0x2932a0
39d92d	xor    r14d,r14d
39d930	jmp    0x39d939
39d932	lea    r8,[rip+0xffffffffffc626c7]        # 0x0
39d939	lea    rbx,[r8+0x2a9460]
39d940	mov    r8,rdx
39d943	mov    rdx,rcx
39d946	lea    r12,[r14+r14*2]
39d94a	lea    rbx,[rbx+r12*8]
39d94e	lea    rcx,[rbp-0x60]
39d952	mov    QWORD PTR [rbp-0x68],rbx
39d956	call   0x2ef9d8
39d95b	mov    r8,rax
39d95e	lea    rdx,[rdi+0x20]
39d962	mov    r9,rbx
39d965	lea    rcx,[rbp-0x70]
39d969	call   0x39340c
39d96e	lea    rax,[rip+0xffffffffffc6268b]        # 0x0
39d975	movaps xmm2,xmm15
39d979	lea    rax,[rax+r12*8]
39d97d	lea    rax,[rax+0x2a9468]
39d984	mov    rdx,rax
39d987	mov    QWORD PTR [rsp+0x40],rax
39d98c	lea    rcx,[rbp-0x58]
39d990	call   0x38bc08
39d995	mov    r8,rax
39d998	lea    rdx,[rbp-0x70]
39d99c	lea    rcx,[rbp-0x50]
39d9a0	call   0x2ef9d8
39d9a5	mov    rdx,QWORD PTR [rsp+0x40]
39d9aa	lea    rcx,[rbp-0x48]
39d9ae	movaps xmm2,xmm10
39d9b2	mov    rbx,rax
39d9b5	call   0x38bc08
39d9ba	mov    r8,rax
39d9bd	lea    rdx,[rbp-0x70]
39d9c1	lea    rcx,[rbp-0x40]
39d9c5	call   0x3367e4
39d9ca	mov    rdx,rax
39d9cd	lea    rcx,[rsp+0x48]
39d9d2	mov    r8,rbx
39d9d5	call   0x2db388
39d9da	movss  xmm0,DWORD PTR [rsp+0x48]
39d9e0	comiss xmm0,DWORD PTR [rsp+0x50]
39d9e5	jbe    0x39d9f6
39d9e7	lea    rdx,[rsp+0x50]
39d9ec	lea    rcx,[rsp+0x48]
39d9f1	call   0x38a3fc
39d9f6	movss  xmm1,DWORD PTR [rsp+0x4c]
39d9fc	comiss xmm1,DWORD PTR [rsp+0x54]
39da01	jbe    0x39da12
39da03	lea    rdx,[rsp+0x54]
39da08	lea    rcx,[rsp+0x4c]
39da0d	call   0x38a3fc
39da12	mov    edx,r14d
39da15	mov    rcx,rdi
39da18	call   0x3925e8
39da1d	mov    r9d,0x8
39da23	lea    rcx,[rsp+0x48]
39da28	xor    r8d,r8d
39da2b	mov    edx,eax
39da2d	mov    ebx,eax
39da2f	call   0x3948dc
39da34	lea    r9,[rbp+0xe0]
39da3b	mov    DWORD PTR [rsp+0x20],0x40800
39da43	lea    r8,[rsp+0x30]
39da48	mov    edx,ebx
39da4a	lea    rcx,[rsp+0x48]
39da4f	call   0x3bc7e0
39da54	mov    cl,BYTE PTR [rsp+0x30]
39da58	mov    dl,BYTE PTR [rbp+0xe0]
39da5e	test   cl,cl
39da60	jne    0x39da6a
39da62	test   dl,dl
39da64	je     0x39dc00
39da6a	mov    eax,r14d
39da6d	not    eax
39da6f	and    eax,0x1
39da72	add    eax,0x5
39da75	mov    DWORD PTR [rsi+0x4a88],eax
39da7b	test   dl,dl
39da7d	je     0x39dc00
39da83	mov    eax,0x2
39da88	cmp    WORD PTR [rsi+0x3752],ax
39da8f	jne    0x39dad7
39da91	test   r14d,r14d
39da94	jne    0x39dad7
39da96	mov    r8,QWORD PTR [rbp+0xe8]
39da9d	lea    rcx,[rbp-0x38]
39daa1	mov    rdx,rdi
39daa4	call   0x38fbe8
39daa9	mov    BYTE PTR [rsp+0x31],0x1
39daae	movss  xmm0,DWORD PTR [rax]
39dab2	movss  xmm1,DWORD PTR [rax+0x4]
39dab7	movss  DWORD PTR [rsp+0x38],xmm0
39dabd	movss  DWORD PTR [rsp+0x3c],xmm1
39dac3	call   0x390078
39dac8	mov    dl,BYTE PTR [rbp+0xe0]
39dace	mov    cl,BYTE PTR [rsp+0x30]
39dad2	jmp    0x39dc0d
39dad7	lea    rax,[rip+0xffffffffffc62522]        # 0x0
39dade	movss  xmm9,DWORD PTR [rax+r12*8+0x2a9464]
39dae8	ucomiss xmm9,xmm13
39daec	jp     0x39daf8
39daee	jne    0x39daf8
39daf0	movss  xmm2,DWORD PTR [r15+0x4]
39daf6	jmp    0x39dafc
39daf8	movaps xmm2,xmm12
39dafc	mov    r12,QWORD PTR [rbp-0x68]
39db00	movss  xmm6,DWORD PTR [r12]
39db06	ucomiss xmm6,xmm13
39db0a	jp     0x39db15
39db0c	jne    0x39db15
39db0e	movss  xmm1,DWORD PTR [r15]
39db13	jmp    0x39db19
39db15	movaps xmm1,xmm12
39db19	lea    rcx,[rbp-0x80]
39db1d	call   0x2cc340
39db22	ucomiss xmm9,xmm8
39db26	jp     0x39db32
39db28	jne    0x39db32
39db2a	movss  xmm2,DWORD PTR [r15+0xc]
39db30	jmp    0x39db35
39db32	movaps xmm2,xmm7
39db35	ucomiss xmm6,xmm8
39db39	jp     0x39db45
39db3b	jne    0x39db45
39db3d	movss  xmm1,DWORD PTR [r15+0x8]
39db43	jmp    0x39db48
39db45	movaps xmm1,xmm7
39db48	lea    rcx,[rsp+0x78]
39db4d	call   0x2cc340
39db52	mov    rdx,QWORD PTR [rsp+0x40]
39db57	lea    rcx,[rbp-0x30]
39db5b	movaps xmm2,xmm11
39db5f	call   0x38bc08
39db64	mov    rdx,QWORD PTR [rsp+0x40]
39db69	lea    rcx,[rbp-0x28]
39db6d	movaps xmm2,xmm10
39db71	mov    rbx,rax
39db74	call   0x38bc08
39db79	mov    rdx,rax
39db7c	lea    rcx,[rbp-0x20]
39db80	mov    r9,r12
39db83	mov    r8,rbx
39db86	call   0x39340c
39db8b	lea    r8,[rsi+0x3f7c]
39db92	mov    rbx,rax
39db95	lea    rdx,[rsi+0xe08]
39db9c	lea    rcx,[rbp-0x78]
39dba0	call   0x3367e4
39dba5	mov    rdx,rax
39dba8	lea    rcx,[rsp+0x70]
39dbad	mov    r8,rbx
39dbb0	call   0x2ef9d8
39dbb5	mov    r9,QWORD PTR [rsp+0x78]
39dbba	lea    r8,[rbp-0x80]
39dbbe	lea    rdx,[rsp+0x70]
39dbc3	lea    rcx,[rsp+0x68]
39dbc8	call   0x393018
39dbcd	lea    r9,[rsp+0x60]
39dbd2	mov    r8,r12
39dbd5	lea    rdx,[rsp+0x70]
39dbda	mov    rcx,rdi
39dbdd	movsd  xmm0,QWORD PTR [rax]
39dbe1	lea    rax,[rsp+0x38]
39dbe6	mov    QWORD PTR [rsp+0x20],rax
39dbeb	movsd  QWORD PTR [rsp+0x70],xmm0
39dbf1	call   0x38f5d0
39dbf6	mov    dl,BYTE PTR [rbp+0xe0]
39dbfc	mov    cl,BYTE PTR [rsp+0x30]
39dc00	test   r14d,r14d
39dc03	je     0x39dc0d
39dc05	test   dl,dl
39dc07	jne    0x39dc0d
39dc09	test   cl,cl
39dc0b	je     0x39dc34
39dc0d	neg    cl
39dc0f	mov    eax,0x21
39dc14	movaps xmm1,xmm13
39dc18	sbb    ecx,ecx
39dc1a	neg    ecx
39dc1c	add    ecx,0x1f
39dc1f	test   dl,dl
39dc21	cmovne ecx,eax
39dc24	call   0x392298
39dc29	mov    rdx,QWORD PTR [rbp+0x100]
39dc30	mov    DWORD PTR [rdx+r14*4],eax
39dc34	inc    r14d
39dc37	lea    rcx,[rdi+0x20]
39dc3b	lea    rdx,[rdi+0x28]
39dc3f	cmp    r14d,r13d
39dc42	jl     0x39d932
39dc48	mov    r13d,DWORD PTR [rsp+0x58]
39dc4d	mov    eax,0x2
39dc52	xor    r14d,r14d
39dc55	test   r13d,r13d
39dc58	je     0x39de18
39dc5e	jmp    0x39dc65
39dc60	mov    eax,0x2
39dc65	cmp    r14d,eax
39dc68	jb     0x39dc76
39dc6a	mov    r13d,0x1
39dc70	lea    r12d,[r13+0x2]
39dc74	jmp    0x39dc7d
39dc76	xor    r13d,r13d
39dc79	lea    r12d,[r13+0x4]
39dc7d	movaps xmm3,xmm15
39dc81	movss  DWORD PTR [rsp+0x20],xmm14
39dc88	mov    r8d,r14d
39dc8b	lea    rcx,[rsp+0x48]
39dc90	mov    rdx,rdi
39dc93	call   0x392a9c
39dc98	lea    edx,[r14+0x4]
39dc9c	mov    rcx,rdi
39dc9f	call   0x3925e8
39dca4	mov    r9d,0x8
39dcaa	lea    rcx,[rsp+0x48]
39dcaf	xor    r8d,r8d
39dcb2	mov    edx,eax
39dcb4	mov    ebx,eax
39dcb6	call   0x3948dc
39dcbb	lea    r9,[rbp+0xe0]
39dcc2	mov    DWORD PTR [rsp+0x20],0x40800
39dcca	lea    r8,[rsp+0x30]
39dccf	mov    edx,ebx
39dcd1	lea    rcx,[rsp+0x48]
39dcd6	call   0x3bc7e0
39dcdb	cmp    BYTE PTR [rsp+0x30],0x0
39dce0	mov    al,BYTE PTR [rbp+0xe0]
39dce6	je     0x39dcf9
39dce8	movss  xmm0,DWORD PTR [rsi+0x3f60]
39dcf0	comiss xmm0,DWORD PTR [rip+0xfffffffffff0c445]        # 0x2aa13c
39dcf7	ja     0x39dd01
39dcf9	test   al,al
39dcfb	je     0x39de0a
39dd01	mov    DWORD PTR [rsi+0x4a88],r12d
39dd08	test   al,al
39dd0a	je     0x39de0a
39dd10	mov    rax,QWORD PTR [rbp+0xf0]
39dd17	mov    DWORD PTR [rax],r14d
39dd1a	mov    eax,r14d
39dd1d	imul   r12,rax,0x1c
39dd21	cmp    r14d,0x3
39dd25	jne    0x39e071
39dd2b	movss  xmm2,DWORD PTR [r15+0x4]
39dd31	movaps xmm1,xmm12
39dd35	lea    rcx,[rsp+0x78]
39dd3a	call   0x2cc340
39dd3f	cmp    r14d,0x2
39dd43	jne    0x39e089
39dd49	movss  xmm2,DWORD PTR [r15+0xc]
39dd4f	movaps xmm1,xmm7
39dd52	lea    rcx,[rbp-0x80]
39dd56	call   0x2cc340
39dd5b	movsd  xmm0,QWORD PTR [rdi+0x20]
39dd60	lea    rcx,[rsi+0xe08]
39dd67	mov    rdx,r13
39dd6a	movsd  QWORD PTR [rsp+0x40],xmm0
39dd70	call   0x38bbcc
39dd75	lea    rcx,[rsi+0x3f7c]
39dd7c	mov    rdx,r13
39dd7f	mov    rbx,rax
39dd82	call   0x38bbcc
39dd87	movss  xmm6,DWORD PTR [rbx]
39dd8b	lea    rcx,[rsp+0x40]
39dd90	mov    rdx,r13
39dd93	subss  xmm6,DWORD PTR [rax]
39dd97	addss  xmm6,xmm14
39dd9c	call   0x38bbcc
39dda1	mov    r9,QWORD PTR [rbp-0x80]
39dda5	lea    r8,[rsp+0x78]
39ddaa	lea    rdx,[rsp+0x40]
39ddaf	lea    rcx,[rsp+0x68]
39ddb4	movss  DWORD PTR [rax],xmm6
39ddb8	call   0x393018
39ddbd	lea    rcx,[rbp-0x78]
39ddc1	movsd  xmm0,QWORD PTR [rax]
39ddc5	lea    rax,[rip+0xffffffffffc62234]        # 0x0
39ddcc	lea    r8,[rax+0x2a94d0]
39ddd3	movsd  QWORD PTR [rsp+0x40],xmm0
39ddd9	lea    rdx,[rax+0x2a94c8]
39dde0	add    r8,r12
39dde3	add    rdx,r12
39dde6	call   0x383070
39ddeb	mov    r8,rax
39ddee	lea    r9,[rsp+0x60]
39ddf3	lea    rax,[rsp+0x38]
39ddf8	mov    rcx,rdi
39ddfb	lea    rdx,[rsp+0x40]
39de00	mov    QWORD PTR [rsp+0x20],rax
39de05	call   0x38f5d0
39de0a	inc    r14d
39de0d	cmp    r14d,DWORD PTR [rsp+0x58]
39de12	jl     0x39dc60
39de18	call   0x398878
39de1d	mov    DWORD PTR [rdi+0x158],0x0
39de27	mov    rax,QWORD PTR [rsi+0x4a50]
39de2e	test   rax,rax
39de31	je     0x39e007
39de37	cmp    QWORD PTR [rax+0x378],rdi
39de3e	jne    0x39e007
39de44	lea    rcx,[rbp+0xe0]
39de4b	call   0x2d4870
39de50	cmp    DWORD PTR [rsi+0x491c],0x2
39de57	jne    0x39de8f
39de59	cmp    BYTE PTR [rsi+0xe25],0x0
39de60	je     0x39de8f
39de62	mov    edx,0x201
39de67	mov    DWORD PTR [rsp+0x20],0x204
39de6f	lea    rcx,[rbp+0xe0]
39de76	lea    r9d,[rdx+0x2]
39de7a	lea    r8d,[rdx+0x1]
39de7e	call   0x392724
39de83	movsd  xmm0,QWORD PTR [rax]
39de87	movsd  QWORD PTR [rbp+0xe0],xmm0
39de8f	cmp    DWORD PTR [rsi+0x491c],0x3
39de96	jne    0x39dec5
39de98	mov    edx,0x26f
39de9d	mov    DWORD PTR [rsp+0x20],0x272
39dea5	lea    rcx,[rbp+0xe0]
39deac	lea    r9d,[rdx+0x2]
39deb0	lea    r8d,[rdx+0x1]
39deb4	call   0x392724
39deb9	movsd  xmm0,QWORD PTR [rax]
39debd	movsd  QWORD PTR [rbp+0xe0],xmm0
39dec5	movss  xmm0,DWORD PTR [rbp+0xe0]
39decd	ucomiss xmm0,xmm8
39ded1	jp     0x39dee9
39ded3	jne    0x39dee9
39ded5	movss  xmm0,DWORD PTR [rbp+0xe4]
39dedd	ucomiss xmm0,xmm8
39dee1	jp     0x39dee9
39dee3	je     0x39e007
39dee9	movss  xmm2,DWORD PTR [rsi+0x18]
39deee	lea    r14,[rsi+0x4a7c]
39def5	movss  xmm1,DWORD PTR [rsi+0x74]
39defa	movss  xmm0,DWORD PTR [rsi+0x70]
39deff	mulss  xmm2,DWORD PTR [rip+0xfffffffffff0c249]        # 0x2aa150
39df07	call   0x3762cc
39df0c	mulss  xmm0,xmm2
39df10	lea    rdx,[rbp+0xe0]
39df17	lea    rcx,[rsp+0x68]
39df1c	movaps xmm2,xmm0
39df1f	call   0x38bc08
39df24	mov    rdx,rax
39df27	mov    rcx,r14
39df2a	call   0x38cc48
39df2f	lea    r8,[rdi+0x20]
39df33	mov    rdx,r15
39df36	lea    rcx,[rbp+0xe0]
39df3d	call   0x3367e4
39df42	mov    rdx,rax
39df45	lea    r8,[rdi+0x28]
39df49	lea    rcx,[rsp+0x68]
39df4e	call   0x3367e4
39df53	mov    r8,rax
39df56	lea    rcx,[rbp-0x78]
39df5a	mov    rdx,r14
39df5d	call   0x383044
39df62	movaps xmm1,xmm13
39df66	mov    ecx,0x21
39df6b	movsd  xmm0,QWORD PTR [rax]
39df6f	movsd  QWORD PTR [r14],xmm0
39df74	mov    BYTE PTR [rsi+0x4a70],0x0
39df7b	mov    BYTE PTR [rsi+0x4927],0x1
39df82	call   0x392298
39df87	mov    rcx,QWORD PTR [rbp+0x100]
39df8e	mov    rdx,r14
39df91	mov    DWORD PTR [rcx],eax
39df93	lea    rcx,[rbp+0xe0]
39df9a	call   0x39307c
39df9f	movss  xmm0,DWORD PTR [rbp+0xe0]
39dfa7	ucomiss xmm0,xmm8
39dfab	jp     0x39dfbf
39dfad	jne    0x39dfbf
39dfaf	movss  xmm0,DWORD PTR [rbp+0xe4]
39dfb7	ucomiss xmm0,xmm8
39dfbb	jp     0x39dfbf
39dfbd	je     0x39e007
39dfbf	lea    rdx,[rdi+0x30]
39dfc3	lea    r8,[rbp+0xe0]
39dfca	lea    rcx,[rsp+0x68]
39dfcf	call   0x2ef9d8
39dfd4	mov    r8,rax
39dfd7	lea    rcx,[rbp-0x78]
39dfdb	mov    rdx,rdi
39dfde	call   0x38fbe8
39dfe3	lea    rdx,[rbp+0xe0]
39dfea	mov    rcx,r14
39dfed	movss  xmm0,DWORD PTR [rax]
39dff1	movss  xmm1,DWORD PTR [rax+0x4]
39dff6	movss  DWORD PTR [rsp+0x38],xmm0
39dffc	movss  DWORD PTR [rsp+0x3c],xmm1
39e002	call   0x38cc68
39e007	movss  xmm2,DWORD PTR [rsp+0x38]
39e00d	ucomiss xmm2,xmm7
39e010	jp     0x39e014
39e012	je     0x39e032
39e014	movss  xmm0,DWORD PTR [rsp+0x38]
39e01a	mov    rcx,rdi
39e01d	movss  xmm1,DWORD PTR [rsp+0x3c]
39e023	movss  DWORD PTR [rdi+0x30],xmm0
39e028	movss  DWORD PTR [rdi+0x34],xmm1
39e02d	call   0x395108
39e032	movss  xmm0,DWORD PTR [rsp+0x60]
39e038	ucomiss xmm0,xmm7
39e03b	jp     0x39e03f
39e03d	je     0x39e061
39e03f	lea    rdx,[rsp+0x60]
39e044	lea    rcx,[rbp+0xe0]
39e04b	call   0x39307c
39e050	mov    rcx,rdi
39e053	movsd  xmm0,QWORD PTR [rax]
39e057	movsd  QWORD PTR [rdi+0x20],xmm0
39e05c	call   0x395108
39e061	movsd  xmm0,QWORD PTR [rdi+0x30]
39e066	mov    al,BYTE PTR [rsp+0x31]
39e06a	movsd  QWORD PTR [rdi+0x28],xmm0
39e06f	jmp    0x39e0a2
39e071	movaps xmm2,xmm12
39e075	cmp    r14d,0x1
39e079	jne    0x39dd31
39e07f	movss  xmm1,DWORD PTR [r15]
39e084	jmp    0x39dd35
39e089	movaps xmm2,xmm7
39e08c	test   r14d,r14d
39e08f	jne    0x39dd4f
39e095	movss  xmm1,DWORD PTR [r15+0x8]
39e09b	jmp    0x39dd52
39e0a0	xor    al,al
39e0a2	lea    r11,[rsp+0x198]
39e0aa	movaps xmm6,XMMWORD PTR [r11-0x18]
39e0af	movaps xmm7,XMMWORD PTR [r11-0x28]
39e0b4	movaps xmm8,XMMWORD PTR [r11-0x38]
39e0b9	movaps xmm9,XMMWORD PTR [r11-0x48]
39e0be	movaps xmm10,XMMWORD PTR [r11-0x58]
39e0c3	movaps xmm11,XMMWORD PTR [r11-0x68]
39e0c8	movaps xmm12,XMMWORD PTR [r11-0x78]
39e0cd	movaps xmm13,XMMWORD PTR [r11-0x88]
39e0d5	movaps xmm14,XMMWORD PTR [r11-0x98]
39e0dd	movaps xmm15,XMMWORD PTR [r11-0xa8]
39e0e5	mov    rsp,r11
39e0e8	pop    r15
39e0ea	pop    r14
39e0ec	pop    r13
39e0ee	pop    r12
39e0f0	pop    rdi
39e0f1	pop    rsi
39e0f2	pop    rbx
39e0f3	pop    rbp
39e0f4	ret
