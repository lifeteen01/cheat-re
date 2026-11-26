3684e0	mov    rax,rsp
3684e3	mov    QWORD PTR [rax+0x8],rcx
3684e7	push   rbp
3684e8	push   rbx
3684e9	push   rsi
3684ea	push   rdi
3684eb	push   r12
3684ed	push   r13
3684ef	push   r14
3684f1	push   r15
3684f3	lea    rbp,[rax-0x118]
3684fa	sub    rsp,0x1d8
368501	movaps XMMWORD PTR [rax-0x58],xmm6
368505	xor    r14d,r14d
368508	mov    DWORD PTR [rbp+0x128],r14d
36850f	mov    r15,rcx
368512	movaps XMMWORD PTR [rax-0x68],xmm7
368516	call   0x2caf08
36851b	test   al,al
36851d	je     0x368a61
368523	call   0x2e069c
368528	mov    rcx,rax
36852b	mov    QWORD PTR [rbp+0x130],rax
368532	mov    r12,rax
368535	call   0x2caf08
36853a	test   al,al
36853c	je     0x368a61
368542	lea    rdx,[rbp+0x98]
368549	lea    rcx,[rip+0xffffffffffeb0280]        # 0x2187d0
368550	call   0x2e3afc
368555	mov    rcx,rax
368558	mov    rbx,rax
36855b	call   0x2d1978
368560	mov    rcx,rbx
368563	mov    rsi,rax
368566	call   0x2d79c0
36856b	mov    QWORD PTR [rbp+0x138],rax
368572	cmp    rsi,rax
368575	je     0x368a55
36857b	xorps  xmm7,xmm7
36857e	mov    rbx,QWORD PTR [rsi]
368581	mov    rcx,rbx
368584	mov    QWORD PTR [rbp+0x128],rbx
36858b	call   0x2caf08
368590	test   al,al
368592	je     0x368a44
368598	mov    rcx,rbx
36859b	call   0x2e0e9c
3685a0	test   al,al
3685a2	je     0x368a44
3685a8	mov    dil,BYTE PTR [rsi+0x8]
3685ac	mov    rcx,rbx
3685af	mov    dl,dil
3685b2	call   0x36aec4
3685b7	test   al,al
3685b9	je     0x368a44
3685bf	mov    rcx,QWORD PTR [rbp+0x128]
3685c6	call   0x36a178
3685cb	or     al,dil
3685ce	lea    rdx,[rsp+0x70]
3685d3	mov    rcx,r12
3685d6	setne  r13b
3685da	call   0x36ca34
3685df	mov    rcx,QWORD PTR [rbp+0x128]
3685e6	mov    dl,dil
3685e9	call   0x2cd32c
3685ee	mov    rbx,rax
3685f1	test   rax,rax
3685f4	je     0x36860a
3685f6	mov    dl,dil
3685f9	mov    rcx,r15
3685fc	call   0x2cd32c
368601	cmp    rbx,rax
368604	jne    0x36860a
368606	mov    bl,0x1
368608	jmp    0x36860c
36860a	xor    bl,bl
36860c	mov    rcx,QWORD PTR [rbp+0x128]
368613	lea    rdx,[rbp+0x0]
368617	mov    r8b,dil
36861a	or     r14d,0x1
36861e	call   0x369e70
368623	mov    rdx,rax
368626	lea    rcx,[rip+0x6ec33]        # 0x3d7260
36862d	call   0x2df608
368632	cmp    DWORD PTR [rax+0x24],0x1
368636	je     0x368641
368638	test   bl,bl
36863a	jne    0x368641
36863c	xor    r15b,r15b
36863f	jmp    0x368644
368641	mov    r15b,0x1
368644	lea    rcx,[rbp+0x0]
368648	and    r14d,0xfffffffe
36864c	call   0x2cc4f4
368651	test   r15b,r15b
368654	je     0x368663
368656	cmp    BYTE PTR [rip+0x8152b],0x0        # 0x3e9b88
36865d	je     0x368a3d
368663	lea    rdx,[rbp+0x128]
36866a	lea    rcx,[rip+0x7dabf]        # 0x3e6130
368671	call   0x2ef774
368676	mov    BYTE PTR [rax],0x0
368679	cmp    BYTE PTR [rip+0x80ec8],0x0        # 0x3e9548
368680	je     0x368856
368686	test   r13b,r13b
368689	jne    0x368856
36868f	lea    rcx,[rbp-0x40]
368693	call   0x3c7bbc
368698	lea    rcx,[rbp-0x34]
36869c	call   0x3c7bbc
3686a1	xor    eax,eax
3686a3	lea    rcx,[rbp-0x20]
3686a7	mov    QWORD PTR [rbp-0x28],rax
3686ab	call   0x2cb3a4
3686b0	mov    rcx,QWORD PTR [rbp+0x128]
3686b7	lea    rdx,[rbp+0x38]
3686bb	xor    eax,eax
3686bd	mov    DWORD PTR [rbp-0x18],eax
3686c0	call   0x369164
3686c5	mov    rcx,QWORD PTR [rbp+0x128]
3686cc	lea    rdx,[rbp+0x44]
3686d0	movsd  xmm6,QWORD PTR [rax]
3686d4	mov    ebx,DWORD PTR [rax+0x8]
3686d7	call   0x368100
3686dc	lea    r8,[rsp+0x30]
3686e1	movsd  QWORD PTR [rsp+0x40],xmm6
3686e7	lea    rdx,[rsp+0x40]
3686ec	mov    DWORD PTR [rsp+0x48],ebx
3686f0	lea    rcx,[rbp+0x20]
3686f4	movsd  xmm0,QWORD PTR [rax]
3686f8	mov    eax,DWORD PTR [rax+0x8]
3686fb	movsd  QWORD PTR [rsp+0x30],xmm0
368701	mov    DWORD PTR [rsp+0x38],eax
368705	call   0x2df29c
36870a	movsd  xmm1,QWORD PTR [rbp+0x30]
36870f	lea    r8,[rbp-0x40]
368713	movups xmm0,XMMWORD PTR [rbp+0x20]
368717	lea    rcx,[rbp+0x0]
36871b	mov    DWORD PTR [rsp+0x28],0x1
368723	movss  xmm3,DWORD PTR [rip+0xfffffffffff3fb35]        # 0x2a8260
36872b	movsd  QWORD PTR [rbp+0x10],xmm1
368730	movss  xmm1,DWORD PTR [rip+0x84fd0]        # 0x3ed708
368738	movaps XMMWORD PTR [rbp+0x0],xmm0
36873c	mov    DWORD PTR [rsp+0x20],0x20000
368744	call   0x36b0c8
368749	mov    rbx,QWORD PTR [rbp+0x128]
368750	xor    edx,edx
368752	mov    rcx,rbx
368755	mov    r12b,al
368758	call   0x36a20c
36875d	test   al,al
36875f	jne    0x36885d
368765	mov    rcx,rbx
368768	call   0x36b288
36876d	test   al,al
36876f	jne    0x36885d
368775	mov    rcx,rbx
368778	call   0x3693b0
36877d	or     al,r15b
368780	jne    0x36885d
368786	test   r12b,r12b
368789	je     0x36885d
36878f	movss  xmm0,DWORD PTR [rbp-0x24]
368794	ucomiss xmm0,xmm7
368797	jp     0x36879f
368799	je     0x36885d
36879f	lea    rcx,[rbp-0x40]
3687a3	call   0x329920
3687a8	mov    rcx,rax
3687ab	mov    rbx,rax
3687ae	call   0x2caf08
3687b3	test   al,al
3687b5	je     0x368856
3687bb	mov    edx,DWORD PTR [rip+0x9675f]        # 0x3fef20
3687c1	test   dl,0x1
3687c4	jne    0x3687e6
3687c6	mov    r8,QWORD PTR [rip+0x6e733]        # 0x3d6f00
3687cd	or     edx,0x1
3687d0	add    r8,0x597e7b0
3687d7	mov    DWORD PTR [rip+0x96743],edx        # 0x3fef20
3687dd	mov    QWORD PTR [rip+0x96734],r8        # 0x3fef18
3687e4	jmp    0x3687ed
3687e6	mov    r8,QWORD PTR [rip+0x9672b]        # 0x3fef18
3687ed	test   dl,0x2
3687f0	jne    0x368811
3687f2	mov    rcx,QWORD PTR [rip+0x6d667]        # 0x3d5e60
3687f9	or     edx,0x2
3687fc	mov    DWORD PTR [rip+0x9671e],edx        # 0x3fef20
368802	xor    r9d,r9d
368805	lea    rdx,[rip+0x96724]        # 0x3fef30
36880c	call   0x2cbd24
368811	mov    rcx,QWORD PTR [rip+0x6d648]        # 0x3d5e60
368818	lea    rdx,[rip+0x96711]        # 0x3fef30
36881f	mov    r8,rbx
368822	call   0x2cb9fc
368827	mov    rcx,rax
36882a	mov    rbx,rax
36882d	call   0x2caf08
368832	test   al,al
368834	je     0x368856
368836	call   0x2dda9c
36883b	cmp    rbx,rax
36883e	jne    0x368856
368840	lea    rdx,[rbp+0x128]
368847	lea    rcx,[rip+0x7d8e2]        # 0x3e6130
36884e	call   0x2ef774
368853	mov    BYTE PTR [rax],0x1
368856	mov    rbx,QWORD PTR [rbp+0x128]
36885d	xor    r15d,r15d
368860	cmp    BYTE PTR [rip+0x816e1],r15b        # 0x3e9f48
368867	jne    0x36887f
368869	cmp    BYTE PTR [rip+0x6f5b8],r15b        # 0x3d7e28
368870	jne    0x36887f
368872	cmp    BYTE PTR [rip+0x6f50f],r15b        # 0x3d7d88
368879	je     0x36896b
36887f	mov    al,dil
368882	lea    rdx,[rsp+0x50]
368887	neg    al
368889	mov    rcx,rbx
36888c	sbb    r8d,r8d
36888f	and    r8d,0xffffffd4
368893	add    r8d,0x37
368897	call   0x368be8
36889c	mov    rcx,QWORD PTR [rbp+0x128]
3688a3	lea    rdx,[rbp-0x10]
3688a7	neg    dil
3688aa	sbb    r8d,r8d
3688ad	and    r8d,0xffffffd9
3688b1	add    r8d,0x36
3688b5	call   0x368be8
3688ba	movss  xmm3,DWORD PTR [rsp+0x58]
3688c0	lea    rcx,[rbp+0x50]
3688c4	movss  xmm2,DWORD PTR [rbp-0xc]
3688c9	movss  xmm1,DWORD PTR [rsp+0x50]
3688cf	call   0x3c7ba8
3688d4	movss  xmm2,DWORD PTR [rip+0xfffffffffff2a7bc]        # 0x293098
3688dc	lea    rcx,[rbp+0x5c]
3688e0	xorps  xmm3,xmm3
3688e3	xorps  xmm1,xmm1
3688e6	mov    rbx,rax
3688e9	call   0x3c7ba8
3688ee	mov    r8,rax
3688f1	lea    rdx,[rsp+0x60]
3688f6	mov    rcx,rbx
3688f9	call   0x2df708
3688fe	movsd  xmm0,QWORD PTR [rsp+0x60]
368904	mov    eax,DWORD PTR [rsp+0x68]
368908	movsd  QWORD PTR [rbp-0x80],xmm0
36890d	movsd  xmm0,QWORD PTR [rsp+0x70]
368913	mov    DWORD PTR [rbp-0x78],eax
368916	mov    eax,DWORD PTR [rsp+0x78]
36891a	movsd  QWORD PTR [rbp-0x70],xmm0
36891f	mov    DWORD PTR [rbp-0x68],eax
368922	call   0x2e6a6c
368927	mov    r8d,eax
36892a	movss  DWORD PTR [rsp+0x20],xmm7
368930	xorps  xmm3,xmm3
368933	lea    rdx,[rbp-0x80]
368937	lea    rcx,[rbp-0x70]
36893b	call   0x2e2320
368940	lea    rdx,[rbp+0x128]
368947	lea    rcx,[rip+0x7d762]        # 0x3e60b0
36894e	test   al,al
368950	je     0x36895c
368952	call   0x2ef774
368957	mov    BYTE PTR [rax],0x1
36895a	jmp    0x368964
36895c	call   0x2ef774
368961	mov    BYTE PTR [rax],r15b
368964	mov    rbx,QWORD PTR [rbp+0x128]
36896b	cmp    BYTE PTR [rip+0x7e926],r15b        # 0x3e7298
368972	je     0x368a36
368978	test   r13b,r13b
36897b	jne    0x368a36
368981	mov    r13d,0x35
368987	lea    rdx,[rbp+0x68]
36898b	mov    r8d,r13d
36898e	mov    rcx,rbx
368991	call   0x368be8
368996	mov    rcx,QWORD PTR [rbp+0x128]
36899d	lea    rdx,[rbp+0x74]
3689a1	mov    r8d,r13d
3689a4	movsd  xmm6,QWORD PTR [rax]
3689a8	mov    ebx,DWORD PTR [rax+0x8]
3689ab	call   0x368be8
3689b0	movss  xmm2,DWORD PTR [rip+0xfffffffffff2518c]        # 0x28db44
3689b8	lea    rcx,[rbp+0x80]
3689bf	xorps  xmm3,xmm3
3689c2	movsd  QWORD PTR [rbp-0x60],xmm6
3689c7	xorps  xmm1,xmm1
3689ca	mov    DWORD PTR [rbp-0x58],ebx
3689cd	mov    rdi,rax
3689d0	call   0x3c7ba8
3689d5	mov    r8,rax
3689d8	lea    rdx,[rbp+0x8c]
3689df	mov    rcx,rdi
3689e2	call   0x2df708
3689e7	xorps  xmm3,xmm3
3689ea	movss  DWORD PTR [rsp+0x20],xmm7
3689f0	mov    r8d,0x200000
3689f6	lea    rdx,[rbp-0x60]
3689fa	lea    rcx,[rbp-0x50]
3689fe	movsd  xmm0,QWORD PTR [rax]
368a02	mov    eax,DWORD PTR [rax+0x8]
368a05	movsd  QWORD PTR [rbp-0x50],xmm0
368a0a	mov    DWORD PTR [rbp-0x48],eax
368a0d	call   0x2e2320
368a12	lea    rdx,[rbp+0x128]
368a19	lea    rcx,[rip+0x7d6d0]        # 0x3e60f0
368a20	test   al,al
368a22	je     0x368a2e
368a24	call   0x2ef774
368a29	mov    BYTE PTR [rax],0x1
368a2c	jmp    0x368a36
368a2e	call   0x2ef774
368a33	mov    BYTE PTR [rax],r15b
368a36	mov    r12,QWORD PTR [rbp+0x130]
368a3d	mov    r15,QWORD PTR [rbp+0x120]
368a44	add    rsi,0x10
368a48	cmp    rsi,QWORD PTR [rbp+0x138]
368a4f	jne    0x36857e
368a55	lea    rcx,[rbp+0x98]
368a5c	call   0x2df480
368a61	lea    r11,[rsp+0x1d8]
368a69	movaps xmm6,XMMWORD PTR [r11-0x18]
368a6e	movaps xmm7,XMMWORD PTR [r11-0x28]
368a73	mov    rsp,r11
368a76	pop    r15
368a78	pop    r14
368a7a	pop    r13
368a7c	pop    r12
368a7e	pop    rdi
368a7f	pop    rsi
368a80	pop    rbx
368a81	pop    rbp
368a82	ret
