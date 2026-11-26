3bc7e0	mov    rax,rsp
3bc7e3	mov    QWORD PTR [rax+0x20],r9
3bc7e7	mov    QWORD PTR [rax+0x18],r8
3bc7eb	mov    DWORD PTR [rax+0x10],edx
3bc7ee	mov    QWORD PTR [rax+0x8],rcx
3bc7f2	push   rbx
3bc7f3	push   rbp
3bc7f4	push   rsi
3bc7f5	push   rdi
3bc7f6	push   r12
3bc7f8	push   r13
3bc7fa	push   r14
3bc7fc	push   r15
3bc7fe	sub    rsp,0x38
3bc802	mov    rsi,QWORD PTR [rip+0x4931f]        # 0x405b28
3bc809	mov    r14d,edx
3bc80c	mov    r12,rcx
3bc80f	call   0x35d200
3bc814	mov    r10d,DWORD PTR [rsp+0xa0]
3bc81c	mov    ecx,0x1
3bc821	mov    rbx,QWORD PTR [rsi+0x3f10]
3bc828	mov    r11d,r10d
3bc82b	or     r11d,ecx
3bc82e	mov    QWORD PTR [rsp+0x28],rax
3bc833	test   r10b,0x7
3bc837	mov    r13,rax
3bc83a	cmovne r11d,r10d
3bc83e	mov    ebp,r11d
3bc841	or     ebp,0x20
3bc844	test   r11d,0x3f0
3bc84b	cmovne ebp,r11d
3bc84f	bt     ebp,0xb
3bc853	jae    0x3bc86f
3bc855	test   rbx,rbx
3bc858	je     0x3bc86f
3bc85a	cmp    QWORD PTR [rbx+0x378],rax
3bc861	jne    0x3bc86f
3bc863	mov    dil,cl
3bc866	mov    QWORD PTR [rsi+0x3f10],rax
3bc86d	jmp    0x3bc872
3bc86f	xor    dil,dil
3bc872	mov    edx,r14d
3bc875	mov    rcx,r12
3bc878	xor    r15b,r15b
3bc87b	call   0x394a14
3bc880	mov    r12b,al
3bc883	test   al,al
3bc885	je     0x3bc8a7
3bc887	cmp    BYTE PTR [rsi+0x4a8c],r15b
3bc88e	je     0x3bc90e
3bc890	cmp    DWORD PTR [rsi+0x4aac],r14d
3bc897	jne    0x3bc8a7
3bc899	test   BYTE PTR [rsi+0x4a90],0x2
3bc8a0	jne    0x3bc8a7
3bc8a2	xor    r12b,r12b
3bc8a5	jmp    0x3bc8b0
3bc8a7	cmp    BYTE PTR [rsi+0x4a8c],r15b
3bc8ae	je     0x3bc90e
3bc8b0	bt     ebp,0x9
3bc8b4	jae    0x3bc90e
3bc8b6	test   BYTE PTR [rsi+0x4a90],0x4
3bc8bd	jne    0x3bc90e
3bc8bf	mov    ecx,0x80
3bc8c4	call   0x3940ac
3bc8c9	test   al,al
3bc8cb	je     0x3bc90e
3bc8cd	mov    ecx,r14d
3bc8d0	mov    r12b,0x1
3bc8d3	call   0x39b52c
3bc8d8	movss  xmm1,DWORD PTR [rsi+0x3f60]
3bc8e0	movss  xmm2,DWORD PTR [rip+0xffffffffffed67e4]        # 0x2930cc
3bc8e8	movaps xmm0,xmm1
3bc8eb	subss  xmm0,DWORD PTR [rsi+0x18]
3bc8f0	comiss xmm2,xmm0
3bc8f3	jb     0x3bc90e
3bc8f5	comiss xmm1,xmm2
3bc8f8	jb     0x3bc90e
3bc8fa	xor    edx,edx
3bc8fc	mov    DWORD PTR [rsi+0x4b08],r14d
3bc903	mov    rcx,r13
3bc906	mov    r15b,r12b
3bc909	call   0x391efc
3bc90e	test   dil,dil
3bc911	je     0x3bc91a
3bc913	mov    QWORD PTR [rsi+0x3f10],rbx
3bc91a	test   r12b,r12b
3bc91d	je     0x3bc93c
3bc91f	bt     ebp,0xc
3bc923	jae    0x3bc93c
3bc925	mov    ecx,DWORD PTR [rsi+0x3f58]
3bc92b	cmp    ecx,r14d
3bc92e	je     0x3bc93c
3bc930	xor    eax,eax
3bc932	movzx  r12d,r12b
3bc936	test   ecx,ecx
3bc938	cmovne r12d,eax
3bc93c	bt     ebp,0x15
3bc940	mov    ecx,r14d
3bc943	mov    eax,0x0
3bc948	cmovb  ecx,eax
3bc94b	mov    DWORD PTR [rsp+0xa0],ecx
3bc952	test   r12b,r12b
3bc955	je     0x3bcb2b
3bc95b	or     ebx,0xffffffff
3bc95e	mov    r14d,ecx
3bc961	mov    DWORD PTR [rsp+0x20],ebx
3bc965	xor    edi,edi
3bc967	mov    r13d,ebx
3bc96a	bt     ebp,edi
3bc96d	jae    0x3bc9a1
3bc96f	xor    r8d,r8d
3bc972	mov    edx,r14d
3bc975	mov    ecx,edi
3bc977	call   0x394360
3bc97c	test   al,al
3bc97e	je     0x3bc98a
3bc980	cmp    ebx,0xffffffff
3bc983	mov    eax,edi
3bc985	cmovne eax,ebx
3bc988	mov    ebx,eax
3bc98a	mov    edx,r14d
3bc98d	mov    ecx,edi
3bc98f	call   0x3945c0
3bc994	test   al,al
3bc996	je     0x3bc9a1
3bc998	cmp    r13d,0xffffffff
3bc99c	jne    0x3bc9a1
3bc99e	mov    r13d,edi
3bc9a1	inc    edi
3bc9a3	cmp    edi,0x3
3bc9a6	jl     0x3bc96a
3bc9a8	mov    r14d,DWORD PTR [rsp+0x88]
3bc9b0	mov    DWORD PTR [rsp+0x20],r13d
3bc9b5	mov    r13,QWORD PTR [rsp+0x28]
3bc9ba	bt     ebp,0x10
3bc9be	jae    0x3bc9e7
3bc9c0	cmp    BYTE PTR [rsi+0xe24],0x0
3bc9c7	jne    0x3bcb1f
3bc9cd	cmp    BYTE PTR [rsi+0xe25],0x0
3bc9d4	jne    0x3bcb1f
3bc9da	cmp    BYTE PTR [rsi+0xe26],0x0
3bc9e1	jne    0x3bcb1f
3bc9e7	cmp    ebx,0xffffffff
3bc9ea	je     0x3bca9f
3bc9f0	cmp    DWORD PTR [rsi+0x3f68],r14d
3bc9f7	je     0x3bca9f
3bc9fd	bt     ebp,0x14
3bca01	jb     0x3bca17
3bca03	mov    ecx,ebx
3bca05	call   0x395250
3bca0a	mov    ecx,eax
3bca0c	xor    r8d,r8d
3bca0f	mov    edx,r14d
3bca12	call   0x39b584
3bca17	test   bpl,0x60
3bca1b	je     0x3bca49
3bca1d	mov    rdx,r13
3bca20	mov    ecx,r14d
3bca23	call   0x39b0cc
3bca28	mov    DWORD PTR [rsi+0x3f94],ebx
3bca2e	bt     ebp,0x12
3bca32	jb     0x3bca3f
3bca34	mov    rdx,r13
3bca37	mov    ecx,r14d
3bca3a	call   0x39b488
3bca3f	xor    edx,edx
3bca41	mov    rcx,r13
3bca44	call   0x391efc
3bca49	test   bpl,0x10
3bca4d	jne    0x3bca63
3bca4f	bt     ebp,0x8
3bca53	jae    0x3bca9f
3bca55	movsxd rax,ebx
3bca58	cmp    WORD PTR [rsi+rax*2+0x3752],0x2
3bca61	jne    0x3bca9f
3bca63	mov    r15b,0x1
3bca66	bt     ebp,0x11
3bca6a	jae    0x3bca73
3bca6c	call   0x390078
3bca71	jmp    0x3bca7e
3bca73	mov    rdx,r13
3bca76	mov    ecx,r14d
3bca79	call   0x39b0cc
3bca7e	bt     ebp,0x12
3bca82	jb     0x3bca8f
3bca84	mov    rdx,r13
3bca87	mov    ecx,r14d
3bca8a	call   0x39b488
3bca8f	xor    edx,edx
3bca91	mov    DWORD PTR [rsi+0x3f94],ebx
3bca97	mov    rcx,r13
3bca9a	call   0x391efc
3bca9f	test   bpl,bpl
3bcaa2	jns    0x3bcadc
3bcaa4	movsxd rax,DWORD PTR [rsp+0x20]
3bcaa9	cmp    eax,0xffffffff
3bcaac	je     0x3bcadc
3bcaae	bt     ebp,0xa
3bcab2	jae    0x3bcac3
3bcab4	movss  xmm0,DWORD PTR [rsi+rax*4+0x378c]
3bcabd	comiss xmm0,DWORD PTR [rsi+0x3c]
3bcac1	jae    0x3bcac6
3bcac3	mov    r15b,0x1
3bcac6	bt     ebp,0x12
3bcaca	jb     0x3bcad7
3bcacc	mov    rdx,r13
3bcacf	mov    ecx,r14d
3bcad2	call   0x39b488
3bcad7	call   0x390078
3bcadc	cmp    DWORD PTR [rsi+0x3f68],r14d
3bcae3	jne    0x3bcb1f
3bcae5	bt     ebp,0xa
3bcae9	jae    0x3bcb1f
3bcaeb	movsxd rcx,DWORD PTR [rsi+0x3f94]
3bcaf2	movss  xmm0,DWORD PTR [rsi+rcx*4+0x3778]
3bcafb	comiss xmm0,DWORD PTR [rip+0xffffffffffed074a]        # 0x28d24c
3bcb02	jbe    0x3bcb1f
3bcb04	mov    edx,DWORD PTR [rsp+0xa0]
3bcb0b	mov    r8d,0x1
3bcb11	call   0x394360
3bcb16	test   al,al
3bcb18	je     0x3bcb1f
3bcb1a	mov    r15b,0x1
3bcb1d	jmp    0x3bcb24
3bcb1f	test   r15b,r15b
3bcb22	je     0x3bcb2b
3bcb24	mov    BYTE PTR [rsi+0x4926],0x1
3bcb2b	cmp    DWORD PTR [rsi+0x48f0],r14d
3bcb32	jne    0x3bcb6c
3bcb34	cmp    BYTE PTR [rsi+0x4926],0x0
3bcb3b	jne    0x3bcb6c
3bcb3d	cmp    BYTE PTR [rsi+0x4927],0x0
3bcb44	je     0x3bcb6c
3bcb46	mov    eax,DWORD PTR [rsi+0x3f68]
3bcb4c	test   eax,eax
3bcb4e	je     0x3bcb5b
3bcb50	cmp    eax,r14d
3bcb53	je     0x3bcb5b
3bcb55	cmp    eax,DWORD PTR [r13+0x7c]
3bcb59	jne    0x3bcb6c
3bcb5b	bt     ebp,0x13
3bcb5f	movzx  r12d,r12b
3bcb63	mov    ecx,0x1
3bcb68	cmovae r12d,ecx
3bcb6c	cmp    DWORD PTR [rsi+0x48fc],r14d
3bcb73	jne    0x3bcc39
3bcb79	cmp    DWORD PTR [rsi+0x4900],r14d
3bcb80	mov    edx,DWORD PTR [rsi+0x48f8]
3bcb86	sete   cl
3bcb89	mov    DWORD PTR [rsp+0x88],edx
3bcb90	je     0x3bcbfe
3bcb92	bt     ebp,0xa
3bcb96	jae    0x3bcbfe
3bcb98	mov    ecx,0x20c
3bcb9d	call   0x392714
3bcba2	mov    ecx,0x20d
3bcba7	mov    rdi,rax
3bcbaa	call   0x392714
3bcbaf	mov    ecx,0x26e
3bcbb4	mov    rbx,rax
3bcbb7	call   0x392714
3bcbbc	movss  xmm1,DWORD PTR [rbx+0x4]
3bcbc1	movss  xmm0,DWORD PTR [rdi+0x4]
3bcbc6	call   0x38a3f4
3bcbcb	movss  xmm1,DWORD PTR [rax+0x4]
3bcbd0	call   0x38a3f4
3bcbd5	movss  xmm3,DWORD PTR [rsi+0x40]
3bcbda	movaps xmm4,xmm0
3bcbdd	subss  xmm4,DWORD PTR [rsi+0x18]
3bcbe2	movss  xmm2,DWORD PTR [rsi+0x3c]
3bcbe7	movaps xmm1,xmm0
3bcbea	movaps xmm0,xmm4
3bcbed	call   0x38f85c
3bcbf2	mov    edx,DWORD PTR [rsp+0x88]
3bcbf9	test   eax,eax
3bcbfb	setg   cl
3bcbfe	cmp    edx,r14d
3bcc01	je     0x3bcc07
3bcc03	test   cl,cl
3bcc05	je     0x3bcc39
3bcc07	mov    edi,0x1
3bcc0c	mov    rdx,r13
3bcc0f	mov    ecx,r14d
3bcc12	mov    r15b,dil
3bcc15	call   0x39b0cc
3bcc1a	mov    eax,DWORD PTR [rsi+0x491c]
3bcc20	mov    DWORD PTR [rsi+0x3f90],eax
3bcc26	bt     ebp,0x12
3bcc2a	jb     0x3bcc3e
3bcc2c	mov    rdx,r13
3bcc2f	mov    ecx,r14d
3bcc32	call   0x39b488
3bcc37	jmp    0x3bcc3e
3bcc39	mov    edi,0x1
3bcc3e	xor    r13b,r13b
3bcc41	cmp    DWORD PTR [rsi+0x3f68],r14d
3bcc48	jne    0x3bcd67
3bcc4e	mov    eax,DWORD PTR [rsi+0x3f90]
3bcc54	cmp    eax,edi
3bcc56	jne    0x3bcd46
3bcc5c	cmp    BYTE PTR [rsi+0x3f74],r13b
3bcc63	je     0x3bcc8a
3bcc65	mov    r8,QWORD PTR [rsp+0x80]
3bcc6d	lea    rdx,[rsi+0xe08]
3bcc74	lea    rcx,[rsp+0x28]
3bcc79	call   0x3367e4
3bcc7e	movsd  xmm0,QWORD PTR [rax]
3bcc82	movsd  QWORD PTR [rsi+0x3f7c],xmm0
3bcc8a	movsxd rbx,DWORD PTR [rsi+0x3f94]
3bcc91	cmp    ebx,0xffffffff
3bcc94	je     0x3bcd32
3bcc9a	mov    edx,DWORD PTR [rsp+0xa0]
3bcca1	mov    ecx,ebx
3bcca3	call   0x394428
3bcca8	test   al,al
3bccaa	je     0x3bccb4
3bccac	mov    r13b,dil
3bccaf	jmp    0x3bcd37
3bccb4	test   r12b,r12b
3bccb7	je     0x3bccbf
3bccb9	test   bpl,0x20
3bccbd	jne    0x3bccc5
3bccbf	test   bpl,0x40
3bccc3	je     0x3bcd32
3bccc5	cmp    BYTE PTR [rsi+0x4a8c],r13b
3bcccc	jne    0x3bcd32
3bccce	bt     ebp,0x8
3bccd2	jae    0x3bcce9
3bccd4	cmp    BYTE PTR [rbx+rsi*1+0x3766],r13b
3bccdc	je     0x3bcce9
3bccde	cmp    WORD PTR [rsi+rbx*2+0x375c],0x2
3bcce7	je     0x3bccec
3bcce9	xor    dil,dil
3bccec	bt     ebp,0xa
3bccf0	jae    0x3bcd06
3bccf2	movss  xmm0,DWORD PTR [rsi+rbx*4+0x378c]
3bccfb	comiss xmm0,DWORD PTR [rsi+0x3c]
3bccff	jb     0x3bcd06
3bcd01	mov    r14b,0x1
3bcd04	jmp    0x3bcd09
3bcd06	xor    r14b,r14b
3bcd09	mov    ecx,ebx
3bcd0b	call   0x395250
3bcd10	mov    edx,DWORD PTR [rsp+0xa0]
3bcd17	mov    ecx,eax
3bcd19	call   0x39bf0c
3bcd1e	or     dil,r14b
3bcd21	mov    edi,0x1
3bcd26	jne    0x3bcd32
3bcd28	test   al,al
3bcd2a	movzx  r15d,r15b
3bcd2e	cmovne r15d,edi
3bcd32	call   0x390078
3bcd37	bt     ebp,0x12
3bcd3b	jb     0x3bcd5b
3bcd3d	mov    BYTE PTR [rsi+0x4926],dil
3bcd44	jmp    0x3bcd5b
3bcd46	add    eax,0xfffffffe
3bcd49	cmp    eax,edi
3bcd4b	ja     0x3bcd5b
3bcd4d	cmp    DWORD PTR [rsi+0x48fc],r14d
3bcd54	je     0x3bcd5b
3bcd56	call   0x390078
3bcd5b	test   r15b,r15b
3bcd5e	je     0x3bcd67
3bcd60	mov    BYTE PTR [rsi+0x3f77],dil
3bcd67	mov    rax,QWORD PTR [rsp+0x90]
3bcd6f	test   rax,rax
3bcd72	je     0x3bcd77
3bcd74	mov    BYTE PTR [rax],r12b
3bcd77	mov    rax,QWORD PTR [rsp+0x98]
3bcd7f	test   rax,rax
3bcd82	je     0x3bcd87
3bcd84	mov    BYTE PTR [rax],r13b
3bcd87	mov    al,r15b
3bcd8a	add    rsp,0x38
3bcd8e	pop    r15
3bcd90	pop    r14
3bcd92	pop    r13
3bcd94	pop    r12
3bcd96	pop    rdi
3bcd97	pop    rsi
3bcd98	pop    rbp
3bcd99	pop    rbx
3bcd9a	ret
