3c3234	rex push rbx
3c3236	push   rbp
3c3237	push   rsi
3c3238	push   rdi
3c3239	push   r12
3c323b	push   r13
3c323d	push   r14
3c323f	push   r15
3c3241	sub    rsp,0x68
3c3245	mov    rax,QWORD PTR [rip+0x428dc]        # 0x405b28
3c324c	movsxd r12,ecx
3c324f	mov    edx,r12d
3c3252	movaps XMMWORD PTR [rsp+0x50],xmm6
3c3257	mov    r15,QWORD PTR [rax+0x3f08]
3c325e	mov    rcx,r15
3c3261	call   0x3bff14
3c3266	mov    r8d,r12d
3c3269	lea    rcx,[rsp+0x40]
3c326e	mov    rdx,r15
3c3271	mov    r13d,eax
3c3274	call   0x3bff58
3c3279	test   r12d,r12d
3c327c	jne    0x3c3295
3c327e	mov    r14d,0x140
3c3284	cmp    BYTE PTR [r15+0xb5],r12b
3c328b	jne    0x3c32c8
3c328d	mov    r14d,0x1c0
3c3293	jmp    0x3c32c8
3c3295	mov    eax,DWORD PTR [r15+0x14]
3c3299	mov    ecx,0x100
3c329e	and    eax,0x401
3c32a3	cmp    eax,0x1
3c32a6	lea    r14d,[rcx+0x20]
3c32aa	cmovne r14d,ecx
3c32ae	cmp    BYTE PTR [r15+0xb4],0x0
3c32b6	jne    0x3c32c8
3c32b8	mov    ecx,0x180
3c32bd	cmp    eax,0x1
3c32c0	lea    r14d,[rcx+0x20]
3c32c4	cmovne r14d,ecx
3c32c8	lea    rcx,[r15+0x84]
3c32cf	mov    rdx,r12
3c32d2	call   0x38bbcc
3c32d7	mov    rdx,r12
3c32da	mov    rbp,rax
3c32dd	cvttss2si rcx,DWORD PTR [rax]
3c32e2	mov    QWORD PTR [rsp+0xb8],rcx
3c32ea	lea    rcx,[r15+0x50]
3c32ee	call   0x38bbcc
3c32f3	lea    rcx,[r15+0x38]
3c32f7	mov    rdx,r12
3c32fa	movss  xmm6,DWORD PTR [rax]
3c32fe	call   0x38bbcc
3c3303	addss  xmm6,xmm6
3c3307	mov    rdx,r12
3c330a	lea    rcx,[r15+0x200]
3c3311	addss  xmm6,DWORD PTR [rax]
3c3315	cvttss2si rdi,xmm6
3c331a	call   0x38bbcc
3c331f	lea    rcx,[r15+0x1f8]
3c3326	mov    rdx,r12
3c3329	mov    rbx,rax
3c332c	call   0x38bbcc
3c3331	lea    r9,[rsp+0xb8]
3c3339	mov    DWORD PTR [rsp+0x30],r14d
3c333e	lea    rcx,[rsp+0x40]
3c3343	mov    QWORD PTR [rsp+0x28],rdi
3c3348	mov    r8d,r12d
3c334b	mov    edx,r13d
3c334e	movss  xmm0,DWORD PTR [rbx]
3c3352	subss  xmm0,DWORD PTR [rax]
3c3356	cvttss2si rax,xmm0
3c335b	mov    QWORD PTR [rsp+0x20],rax
3c3360	call   0x3c3390
3c3365	movaps xmm6,XMMWORD PTR [rsp+0x50]
3c336a	xorps  xmm0,xmm0
3c336d	cvtsi2ss xmm0,QWORD PTR [rsp+0xb8]
3c3377	movss  DWORD PTR [rbp+0x0],xmm0
3c337c	add    rsp,0x68
3c3380	pop    r15
3c3382	pop    r14
3c3384	pop    r13
3c3386	pop    r12
3c3388	pop    rdi
3c3389	pop    rsi
3c338a	pop    rbp
3c338b	pop    rbx
3c338c	ret
