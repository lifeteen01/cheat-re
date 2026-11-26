3b4f94	mov    rax,rsp
3b4f97	push   rbp
3b4f98	push   rbx
3b4f99	push   rsi
3b4f9a	push   rdi
3b4f9b	push   r12
3b4f9d	push   r13
3b4f9f	push   r14
3b4fa1	push   r15
3b4fa3	lea    rbp,[rax-0x5f]
3b4fa7	sub    rsp,0xd8
3b4fae	mov    rdi,QWORD PTR [rip+0x50b73]        # 0x405b28
3b4fb5	movaps XMMWORD PTR [rax-0x58],xmm6
3b4fb9	movaps XMMWORD PTR [rax-0x68],xmm7
3b4fbd	movaps XMMWORD PTR [rax-0x78],xmm8
3b4fc2	movaps XMMWORD PTR [rax-0x88],xmm9
3b4fca	movaps XMMWORD PTR [rax-0x98],xmm10
3b4fd2	movaps XMMWORD PTR [rsp+0x70],xmm11
3b4fd8	mov    QWORD PTR [rsp+0x38],rdi
3b4fdd	call   0x35d200
3b4fe2	mov    rsi,rax
3b4fe5	mov    r14,QWORD PTR [rax+0x1a8]
3b4fec	call   0x3988d0
3b4ff1	cmp    DWORD PTR [r14+0x10],0x1
3b4ff6	jle    0x3b500d
3b4ff8	call   0x39878c
3b4ffd	mov    rdx,QWORD PTR [rsi+0x298]
3b5004	lea    rcx,[r14+0x70]
3b5008	call   0x3a65c4
3b500d	movss  xmm1,DWORD PTR [rsi+0x104]
3b5015	movss  xmm0,DWORD PTR [r14+0x20]
3b501b	mov    r12d,DWORD PTR [r14+0x4]
3b501f	call   0x38a3f4
3b5024	movaps xmm2,xmm0
3b5027	movss  DWORD PTR [r14+0x20],xmm2
3b502d	movss  DWORD PTR [rsi+0x104],xmm2
3b5035	test   r12b,0x10
3b5039	jne    0x3b5045
3b503b	mov    eax,DWORD PTR [r14+0x28]
3b503f	mov    DWORD PTR [rsi+0x118],eax
3b5045	xor    al,al
3b5047	mov    BYTE PTR [rbp+0x67],al
3b504a	test   r12b,0x1
3b504e	jne    0x3b5273
3b5054	cmp    BYTE PTR [rsi+0xbb],al
3b505a	jne    0x3b5273
3b5060	movss  xmm1,DWORD PTR [rsi+0x23c]
3b5068	movss  xmm0,DWORD PTR [r14+0x24]
3b506e	call   0x38a3f4
3b5073	movss  xmm1,DWORD PTR [rsi+0x244]
3b507b	movaps xmm9,xmm0
3b507f	movaps xmm0,xmm2
3b5082	call   0x3762cc
3b5087	cmp    DWORD PTR [r14+0x10],0x1
3b508c	movaps xmm10,xmm0
3b5090	jle    0x3b5273
3b5096	movss  xmm8,DWORD PTR [rip+0xffffffffffed81b5]        # 0x28d254
3b509f	lea    rcx,[r14+0x60]
3b50a3	movss  xmm11,DWORD PTR [rip+0xffffffffffede0cc]        # 0x293178
3b50ac	or     r15d,0xffffffff
3b50b0	movaps xmm7,xmm9
3b50b4	and    r12d,0x2
3b50b8	addss  xmm7,xmm8
3b50bd	lea    r13d,[r15+0x2]
3b50c1	mov    edx,r13d
3b50c4	call   0x38bba8
3b50c9	mov    ecx,r13d
3b50cc	mov    QWORD PTR [rsp+0x30],rax
3b50d1	call   0x3b5320
3b50d6	mov    eax,DWORD PTR [r14]
3b50d9	lea    rcx,[rbp-0x79]
3b50dd	movaps xmm6,xmm0
3b50e0	add    eax,r13d
3b50e3	addss  xmm6,DWORD PTR [rsi+0x20]
3b50e8	movaps xmm2,xmm10
3b50ec	mov    DWORD PTR [rbp+0x7f],eax
3b50ef	movaps xmm1,xmm6
3b50f2	addss  xmm1,xmm11
3b50f7	call   0x2cc340
3b50fc	movaps xmm1,xmm6
3b50ff	lea    rcx,[rbp-0x71]
3b5103	subss  xmm1,xmm11
3b5108	movaps xmm2,xmm9
3b510c	mov    rbx,rax
3b510f	call   0x2cc340
3b5114	mov    rdx,rax
3b5117	lea    rcx,[rbp-0x59]
3b511b	mov    r8,rbx
3b511e	call   0x2db388
3b5123	mov    ebx,DWORD PTR [rbp+0x7f]
3b5126	lea    rcx,[rbp-0x59]
3b512a	mov    r9d,0x8
3b5130	xor    r8d,r8d
3b5133	mov    edx,ebx
3b5135	call   0x3948dc
3b513a	test   al,al
3b513c	je     0x3b51fe
3b5142	xor    cl,cl
3b5144	xor    al,al
3b5146	mov    BYTE PTR [rbp+0x77],cl
3b5149	mov    BYTE PTR [rbp+0x6f],al
3b514c	test   r12d,r12d
3b514f	jne    0x3b5192
3b5151	lea    r9,[rbp+0x6f]
3b5155	mov    DWORD PTR [rsp+0x20],r12d
3b515a	lea    r8,[rbp+0x77]
3b515e	mov    edx,ebx
3b5160	lea    rcx,[rbp-0x59]
3b5164	call   0x3bc7e0
3b5169	mov    cl,BYTE PTR [rbp+0x77]
3b516c	mov    al,BYTE PTR [rbp+0x6f]
3b516f	test   cl,cl
3b5171	jne    0x3b5177
3b5173	test   al,al
3b5175	je     0x3b5192
3b5177	mov    DWORD PTR [rdi+0x4a88],0x4
3b5181	test   al,al
3b5183	je     0x3b5192
3b5185	mov    rdx,QWORD PTR [rsp+0x30]
3b518a	test   BYTE PTR [rdx+0x8],0x2
3b518e	cmove  r15d,r13d
3b5192	neg    cl
3b5194	mov    edx,0x1e
3b5199	movaps xmm1,xmm8
3b519d	sbb    ecx,ecx
3b519f	neg    ecx
3b51a1	add    ecx,0x1c
3b51a4	test   al,al
3b51a6	cmovne ecx,edx
3b51a9	call   0x392298
3b51ae	cvttss2si ecx,xmm6
3b51b2	mov    edi,eax
3b51b4	movaps xmm2,xmm10
3b51b8	movd   xmm6,ecx
3b51bc	lea    rcx,[rbp-0x69]
3b51c0	cvtdq2ps xmm6,xmm6
3b51c3	movaps xmm1,xmm6
3b51c6	call   0x2cc340
3b51cb	movaps xmm2,xmm7
3b51ce	lea    rcx,[rbp-0x61]
3b51d2	movaps xmm1,xmm6
3b51d5	mov    rbx,rax
3b51d8	call   0x2cc340
3b51dd	mov    rcx,QWORD PTR [rsi+0x298]
3b51e4	mov    rdx,rax
3b51e7	mov    r9d,edi
3b51ea	movss  DWORD PTR [rsp+0x20],xmm8
3b51f1	mov    r8,rbx
3b51f4	call   0x3a01f4
3b51f9	mov    rdi,QWORD PTR [rsp+0x38]
3b51fe	mov    eax,DWORD PTR [r14+0x10]
3b5202	lea    rcx,[r14+0x60]
3b5206	inc    r13d
3b5209	cmp    r13d,eax
3b520c	jl     0x3b50c1
3b5212	cmp    r15d,0xffffffff
3b5216	je     0x3b5270
3b5218	cmp    BYTE PTR [r14+0x9],0x0
3b521d	jne    0x3b5251
3b521f	xor    edi,edi
3b5221	inc    eax
3b5223	test   eax,eax
3b5225	jle    0x3b5251
3b5227	mov    edx,edi
3b5229	lea    rcx,[r14+0x60]
3b522d	call   0x38bba8
3b5232	mov    edx,edi
3b5234	lea    rcx,[r14+0x60]
3b5238	mov    rbx,rax
3b523b	call   0x38bba8
3b5240	mov    ecx,DWORD PTR [rbx]
3b5242	inc    edi
3b5244	mov    DWORD PTR [rax+0x4],ecx
3b5247	mov    eax,DWORD PTR [r14+0x10]
3b524b	inc    eax
3b524d	cmp    edi,eax
3b524f	jl     0x3b5227
3b5251	mov    edx,r15d
3b5254	mov    BYTE PTR [rbp+0x67],0x1
3b5258	mov    rcx,r14
3b525b	mov    BYTE PTR [r14+0x9],0x1
3b5260	call   0x3b53f0
3b5265	movaps xmm1,xmm0
3b5268	mov    ecx,r15d
3b526b	call   0x3b5554
3b5270	mov    al,BYTE PTR [rbp+0x67]
3b5273	mov    BYTE PTR [r14+0x9],al
3b5277	movups xmm0,XMMWORD PTR [rsi+0x228]
3b527e	movdqu XMMWORD PTR [rsi+0x218],xmm0
3b5286	movups xmm1,XMMWORD PTR [r14+0x4c]
3b528b	mov    QWORD PTR [rsi+0x1a8],0x0
3b5296	movss  xmm0,DWORD PTR [rsi+0x144]
3b529e	addss  xmm0,DWORD PTR [rsi+0x20]
3b52a3	movdqu XMMWORD PTR [rsi+0x228],xmm1
3b52ab	mov    DWORD PTR [rsi+0x148],0x0
3b52b5	addss  xmm0,DWORD PTR [rip+0xffffffffffed7f8f]        # 0x28d24c
3b52bd	cvttss2si eax,xmm0
3b52c1	movd   xmm0,eax
3b52c5	cvtdq2ps xmm0,xmm0
3b52c8	movss  DWORD PTR [rsi+0x100],xmm0
3b52d0	lea    r11,[rsp+0xd8]
3b52d8	movaps xmm6,XMMWORD PTR [r11-0x18]
3b52dd	movaps xmm7,XMMWORD PTR [r11-0x28]
3b52e2	movaps xmm8,XMMWORD PTR [r11-0x38]
3b52e7	movaps xmm9,XMMWORD PTR [r11-0x48]
3b52ec	movaps xmm10,XMMWORD PTR [r11-0x58]
3b52f1	movaps xmm11,XMMWORD PTR [r11-0x68]
3b52f6	mov    rsp,r11
3b52f9	pop    r15
3b52fb	pop    r14
3b52fd	pop    r13
3b52ff	pop    r12
3b5301	pop    rdi
3b5302	pop    rsi
3b5303	pop    rbx
3b5304	pop    rbp
3b5305	jmp    0x3970f0
