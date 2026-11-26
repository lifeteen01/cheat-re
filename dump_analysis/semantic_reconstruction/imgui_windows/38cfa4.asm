38cfa4	mov    rax,rsp
38cfa7	mov    QWORD PTR [rax+0x10],rdx
38cfab	mov    QWORD PTR [rax+0x8],rcx
38cfaf	push   rbp
38cfb0	push   rbx
38cfb1	push   rsi
38cfb2	push   rdi
38cfb3	push   r12
38cfb5	push   r13
38cfb7	push   r14
38cfb9	push   r15
38cfbb	lea    rbp,[rax-0xe8]
38cfc2	sub    rsp,0x1a8
38cfc9	mov    r14,QWORD PTR [rip+0x78b58]        # 0x405b28
38cfd0	mov    ebx,r8d
38cfd3	movaps XMMWORD PTR [rax-0x58],xmm6
38cfd7	mov    r15,rcx
38cfda	movaps XMMWORD PTR [rax-0x68],xmm7
38cfde	movaps XMMWORD PTR [rax-0x78],xmm8
38cfe3	call   0x391c78
38cfe8	test   rax,rax
38cfeb	mov    QWORD PTR [rbp-0x78],rax
38cfef	mov    rsi,rax
38cff2	mov    QWORD PTR [rbp-0x60],rax
38cff6	sete   dil
38cffa	mov    BYTE PTR [rbp+0x100],dil
38d001	test   rax,rax
38d004	jne    0x38d017
38d006	mov    edx,ebx
38d008	mov    rcx,r15
38d00b	call   0x3908d4
38d010	mov    rsi,rax
38d013	mov    QWORD PTR [rbp-0x60],rax
38d017	mov    r13d,DWORD PTR [r14+0x3e60]
38d01e	mov    r15,rax
38d021	mov    ecx,0xc0200
38d026	mov    DWORD PTR [rsp+0x70],r13d
38d02b	mov    eax,ebx
38d02d	mov    r12d,ebx
38d030	and    eax,ecx
38d032	or     r12d,0x6
38d036	cmp    eax,ecx
38d038	mov    edx,0x1
38d03d	mov    ecx,DWORD PTR [r15+0x260]
38d044	cmovne r12d,ebx
38d048	mov    DWORD PTR [rsp+0x58],ecx
38d04c	cmp    DWORD PTR [r14+0x3ed8],0x0
38d054	jne    0x38d064
38d056	cmp    BYTE PTR [r14+0x3e6d],0x0
38d05e	je     0x38d064
38d060	mov    al,dl
38d062	jmp    0x38d066
38d064	xor    al,al
38d066	lea    ebx,[r13-0x1]
38d06a	mov    BYTE PTR [r15+0xbe],al
38d071	cmp    ecx,ebx
38d073	setl   al
38d076	bt     r12d,0x1a
38d07b	jae    0x38d0b4
38d07d	mov    edx,DWORD PTR [r14+0x48c0]
38d084	lea    rcx,[r14+0x48b0]
38d08b	call   0x38bb90
38d090	mov    edx,0x1
38d095	cmp    r15,QWORD PTR [rax+0x8]
38d099	mov    eax,DWORD PTR [rax]
38d09b	setne  cl
38d09e	cmp    DWORD PTR [r15+0xcc],eax
38d0a5	setne  al
38d0a8	or     cl,al
38d0aa	cmp    DWORD PTR [rsp+0x58],ebx
38d0ae	movzx  eax,cl
38d0b1	cmovl  eax,edx
38d0b4	mov    DWORD PTR [rsp+0x6c],eax
38d0b8	mov    BYTE PTR [r15+0xbc],al
38d0bf	test   al,al
38d0c1	je     0x38d0d3
38d0c3	mov    r8b,dl
38d0c6	mov    rcx,rsi
38d0c9	mov    edx,0x8
38d0ce	call   0x39baa8
38d0d3	mov    ebx,DWORD PTR [rsp+0x58]
38d0d7	cmp    ebx,r13d
38d0da	je     0x38d12e
38d0dc	mov    r8d,r12d
38d0df	mov    dl,dil
38d0e2	mov    rcx,rsi
38d0e5	call   0x39d67c
38d0ea	mov    DWORD PTR [r15+0x14],r12d
38d0ee	xor    eax,eax
38d0f0	mov    DWORD PTR [r15+0x260],r13d
38d0f7	movsd  xmm0,QWORD PTR [r14+0x3e58]
38d100	cvtpd2ps xmm0,xmm0
38d104	movss  DWORD PTR [r15+0x264],xmm0
38d10d	mov    WORD PTR [r15+0xc6],ax
38d115	movzx  eax,WORD PTR [r14+0x3ef8]
38d11d	inc    DWORD PTR [r14+0x3ef8]
38d124	mov    WORD PTR [r15+0xc8],ax
38d12c	jmp    0x38d132
38d12e	mov    r12d,DWORD PTR [r15+0x14]
38d132	lea    rdi,[r14+0x3ed8]
38d139	mov    rcx,rdi
38d13c	call   0x2d0d60
38d141	test   al,al
38d143	je     0x38d14a
38d145	xor    r13d,r13d
38d148	jmp    0x38d155
38d14a	mov    rcx,rdi
38d14d	call   0x39e370
38d152	mov    r13,QWORD PTR [rax]
38d155	cmp    ebx,DWORD PTR [rsp+0x70]
38d159	je     0x38d16d
38d15b	mov    eax,r12d
38d15e	and    eax,0x5000000
38d163	neg    eax
38d165	sbb    rdi,rdi
38d168	and    rdi,r13
38d16b	jmp    0x38d174
38d16d	mov    rdi,QWORD PTR [r15+0x368]
38d174	cmp    DWORD PTR [r15+0xf0],0x0
38d17c	lea    rbx,[rsi+0xf0]
38d183	mov    QWORD PTR [rbp-0x80],rdi
38d187	jne    0x38d195
38d189	lea    rdx,[r15+0x10]
38d18d	mov    rcx,rbx
38d190	call   0x39eee8
38d195	lea    rcx,[rbp+0x10]
38d199	mov    QWORD PTR [r14+0x3f08],rsi
38d1a0	call   0x38b9e8
38d1a5	movups xmm0,XMMWORD PTR [r14+0x47a4]
38d1ad	mov    rdx,r14
38d1b0	lea    rcx,[rbp+0x54]
38d1b4	movups xmm1,XMMWORD PTR [r14+0x47b4]
38d1bc	mov    QWORD PTR [rbp+0x10],rsi
38d1c0	movups XMMWORD PTR [rbp+0x18],xmm0
38d1c4	movups xmm0,XMMWORD PTR [r14+0x47c4]
38d1cc	movups XMMWORD PTR [rbp+0x28],xmm1
38d1d0	movups xmm1,XMMWORD PTR [r14+0x47d0]
38d1d8	movups XMMWORD PTR [rbp+0x38],xmm0
38d1dc	movups XMMWORD PTR [rbp+0x44],xmm1
38d1e0	call   0x39b940
38d1e5	lea    rdx,[rbp+0x10]
38d1e9	lea    rcx,[r14+0x3ed8]
38d1f0	call   0x39f0c8
38d1f5	mov    eax,r12d
38d1f8	and    eax,0x10000000
38d1fd	mov    DWORD PTR [rsp+0x78],eax
38d201	je     0x38d20a
38d203	inc    DWORD PTR [r14+0x48d0]
38d20a	mov    ecx,DWORD PTR [rsp+0x58]
38d20e	cmp    ecx,DWORD PTR [rsp+0x70]
38d212	je     0x38d229
38d214	mov    r8,rdi
38d217	mov    edx,r12d
38d21a	mov    rcx,rsi
38d21d	call   0x39e0f8
38d222	mov    QWORD PTR [r15+0x370],r13
38d229	mov    ecx,DWORD PTR [r15+0x10]
38d22d	call   0x398a5c
38d232	mov    eax,DWORD PTR [r14+0x4784]
38d239	mov    DWORD PTR [r15+0x3c8],eax
38d240	mov    eax,r12d
38d243	and    eax,0x4000000
38d248	mov    QWORD PTR [r14+0x3f08],0x0
38d253	mov    DWORD PTR [rsp+0x44],eax
38d257	je     0x38d29a
38d259	lea    rdi,[r14+0x48c0]
38d260	mov    edx,DWORD PTR [rdi]
38d262	lea    rcx,[r14+0x48b0]
38d269	call   0x38bb90
38d26e	mov    rcx,rdi
38d271	mov    rbx,rax
38d274	mov    QWORD PTR [rax+0x8],rsi
38d278	mov    edx,DWORD PTR [r13+0x158]
38d27f	mov    DWORD PTR [rax+0x18],edx
38d282	mov    rdx,rax
38d285	call   0x39ef2c
38d28a	mov    eax,DWORD PTR [rbx]
38d28c	lea    rbx,[rsi+0xf0]
38d293	mov    DWORD PTR [r15+0xcc],eax
38d29a	xor    cl,cl
38d29c	lea    r9,[r14+0x47e0]
38d2a3	xor    dil,dil
38d2a6	mov    BYTE PTR [rsp+0x40],cl
38d2aa	xor    r13b,r13b
38d2ad	test   BYTE PTR [r9],0x1
38d2b1	je     0x38d341
38d2b7	mov    r8d,DWORD PTR [r14+0x47e4]
38d2be	movzx  edx,BYTE PTR [r15+0xdc]
38d2c6	movsx  eax,dl
38d2c9	test   r8d,eax
38d2cc	setne  cl
38d2cf	mov    BYTE PTR [rsp+0x40],cl
38d2d3	test   r8d,eax
38d2d6	je     0x38d32b
38d2d8	lea    rcx,[r14+0x47f8]
38d2df	call   0x3933f4
38d2e4	comiss xmm0,DWORD PTR [rip+0xfffffffffff007e5]        # 0x28dad0
38d2eb	jbe    0x38d32b
38d2ed	movsd  xmm0,QWORD PTR [r14+0x47f0]
38d2f6	movsd  QWORD PTR [r15+0xe0],xmm0
38d2ff	movsd  xmm1,QWORD PTR [rcx]
38d303	mov    ecx,edx
38d305	movsd  QWORD PTR [r15+0xe8],xmm1
38d30e	and    ecx,0xf1
38d314	mov    eax,DWORD PTR [r15+0xdc]
38d31b	and    eax,0xffffff00
38d320	or     ecx,eax
38d322	mov    DWORD PTR [r15+0xdc],ecx
38d329	jmp    0x38d341
38d32b	lea    rdx,[r14+0x47f0]
38d332	mov    rcx,rsi
38d335	call   0x39bb4c
38d33a	lea    r9,[r14+0x47e0]
38d341	test   BYTE PTR [r9],0x2
38d345	xorps  xmm8,xmm8
38d349	je     0x38d39f
38d34b	movsx  eax,BYTE PTR [r15+0xdd]
38d353	mov    r8d,DWORD PTR [r14+0x47e8]
38d35a	and    eax,r8d
38d35d	je     0x38d373
38d35f	movss  xmm0,DWORD PTR [r14+0x4800]
38d368	comiss xmm0,xmm8
38d36c	jbe    0x38d373
38d36e	mov    dil,0x1
38d371	jmp    0x38d377
38d373	test   eax,eax
38d375	je     0x38d389
38d377	movss  xmm0,DWORD PTR [r14+0x4804]
38d380	comiss xmm0,xmm8
38d384	jbe    0x38d389
38d386	mov    r13b,0x1
38d389	lea    rdx,[r14+0x4800]
38d390	mov    rcx,rsi
38d393	call   0x39bc88
38d398	lea    r9,[r14+0x47e0]
38d39f	test   BYTE PTR [r14+0x47e0],0x80
38d3a7	je     0x38d3eb
38d3a9	movss  xmm0,DWORD PTR [r14+0x4810]
38d3b2	comiss xmm0,xmm8
38d3b6	jb     0x38d3ca
38d3b8	movss  DWORD PTR [rsi+0x94],xmm0
38d3c0	mov    DWORD PTR [rsi+0x9c],0x0
38d3ca	movss  xmm0,DWORD PTR [r14+0x4814]
38d3d3	comiss xmm0,xmm8
38d3d7	jb     0x38d3eb
38d3d9	movss  DWORD PTR [rsi+0x98],xmm0
38d3e1	mov    DWORD PTR [rsi+0xa0],0x0
38d3eb	test   BYTE PTR [r9],0x4
38d3ef	mov    r15d,DWORD PTR [rsp+0x70]
38d3f4	je     0x38d406
38d3f6	movsd  xmm0,QWORD PTR [r14+0x4808]
38d3ff	movsd  QWORD PTR [rsi+0x48],xmm0
38d404	jmp    0x38d435
38d406	cmp    DWORD PTR [rsp+0x58],r15d
38d40b	je     0x38d435
38d40d	xorps  xmm2,xmm2
38d410	lea    rcx,[rbp+0x108]
38d417	xorps  xmm1,xmm1
38d41a	call   0x2cc340
38d41f	lea    r9,[r14+0x47e0]
38d426	movss  xmm0,DWORD PTR [rax+0x4]
38d42b	mov    eax,DWORD PTR [rax]
38d42d	mov    DWORD PTR [rsi+0x48],eax
38d430	movss  DWORD PTR [rsi+0x4c],xmm0
38d435	test   BYTE PTR [r9],0x8
38d439	je     0x38d458
38d43b	mov    r8d,DWORD PTR [r14+0x47ec]
38d442	mov    rcx,rsi
38d445	mov    dl,BYTE PTR [r14+0x4818]
38d44c	call   0x39ba68
38d451	lea    r9,[r14+0x47e0]
38d458	test   BYTE PTR [r9],0x20
38d45c	je     0x38d468
38d45e	xor    edx,edx
38d460	mov    rcx,rsi
38d463	call   0x391efc
38d468	cmp    BYTE PTR [rsi+0xbc],0x0
38d46f	je     0x38d480
38d471	xor    r8d,r8d
38d474	mov    rcx,rsi
38d477	lea    edx,[r8+0x8]
38d47b	call   0x39baa8
38d480	cmp    DWORD PTR [rsp+0x58],r15d
38d485	je     0x38e73c
38d48b	mov    r15d,r12d
38d48e	and    r15d,0x1000000
38d495	mov    DWORD PTR [rsp+0x68],r15d
38d49a	je     0x38d4aa
38d49c	mov    BYTE PTR [rbp+0x108],0x1
38d4a3	bt     r12d,0x19
38d4a8	jb     0x38d4b1
38d4aa	mov    BYTE PTR [rbp+0x108],0x0
38d4b1	mov    al,BYTE PTR [rsi+0xd9]
38d4b7	lea    rcx,[rbp-0x20]
38d4bb	movss  xmm7,DWORD PTR [rip+0xfffffffffff00691]        # 0x28db54
38d4c3	movss  xmm1,DWORD PTR [rip+0xfffffffffff1bf79]        # 0x2a9444
38d4cb	movaps xmm3,xmm7
38d4ce	cmp    QWORD PTR [rbp+0xf8],0x0
38d4d6	movaps xmm2,xmm1
38d4d9	mov    BYTE PTR [rsp+0x48],al
38d4dd	setne  al
38d4e0	mov    BYTE PTR [rsi+0xb6],0x1
38d4e7	mov    BYTE PTR [rsi+0xc0],al
38d4ed	movss  DWORD PTR [rsp+0x20],xmm7
38d4f3	call   0x2cc350
38d4f8	mov    rdx,rax
38d4fb	lea    rcx,[rbp-0x10]
38d4ff	call   0x38bab4
38d504	movups xmm0,XMMWORD PTR [rbp-0x10]
38d508	mov    edx,0x1
38d50d	mov    rcx,rbx
38d510	movdqu XMMWORD PTR [rsi+0x238],xmm0
38d518	call   0x364ef0
38d51d	mov    rcx,QWORD PTR [rsi+0x298]
38d524	call   0x3a9258
38d529	mov    DWORD PTR [rsi+0x1b0],0xffffffff
38d533	cmp    BYTE PTR [rsi+0x3d4],0x0
38d53a	je     0x38d544
38d53c	mov    rcx,rsi
38d53f	call   0x392044
38d544	cmp    QWORD PTR [r14+0x4a60],0x0
38d54c	mov    r9,QWORD PTR [rbp-0x78]
38d550	je     0x38d5a0
38d552	test   DWORD PTR [rsi+0x14],0x80000
38d559	jne    0x38d5a0
38d55b	test   r9,r9
38d55e	je     0x38d5a0
38d560	mov    rbx,QWORD PTR [rbp+0xf0]
38d567	mov    rdx,QWORD PTR [rsi+0x8]
38d56b	mov    rcx,rbx
38d56e	call   0x3ca884
38d573	test   eax,eax
38d575	je     0x38d59c
38d577	movsxd rax,DWORD PTR [rsi+0x78]
38d57b	lea    rdx,[rsp+0x50]
38d580	mov    rcx,QWORD PTR [rsi+0x8]
38d584	mov    r8,rbx
38d587	mov    QWORD PTR [rsp+0x50],rax
38d58c	call   0x3934b4
38d591	mov    QWORD PTR [rsi+0x8],rax
38d595	mov    eax,DWORD PTR [rsp+0x50]
38d599	mov    DWORD PTR [rsi+0x78],eax
38d59c	mov    r9,QWORD PTR [rbp-0x78]
38d5a0	lea    rbx,[rsi+0x40]
38d5a4	mov    rcx,rsi
38d5a7	mov    r8,rbx
38d5aa	lea    rdx,[rsi+0x38]
38d5ae	call   0x38fac8
38d5b3	mov    al,BYTE PTR [rsi+0xd8]
38d5b9	xor    ecx,ecx
38d5bb	test   al,al
38d5bd	jle    0x38d5c7
38d5bf	dec    al
38d5c1	mov    BYTE PTR [rsi+0xd8],al
38d5c7	mov    al,BYTE PTR [rsi+0xd9]
38d5cd	test   al,al
38d5cf	jle    0x38d5d9
38d5d1	dec    al
38d5d3	mov    BYTE PTR [rsi+0xd9],al
38d5d9	mov    al,BYTE PTR [rsi+0xda]
38d5df	test   al,al
38d5e1	jle    0x38d5eb
38d5e3	dec    al
38d5e5	mov    BYTE PTR [rsi+0xda],al
38d5eb	test   r9,r9
38d5ee	jne    0x38d601
38d5f0	test   dil,dil
38d5f3	je     0x38d5fa
38d5f5	test   r13b,r13b
38d5f8	jne    0x38d601
38d5fa	mov    BYTE PTR [rsi+0xd9],0x1
38d601	cmp    BYTE PTR [rsp+0x6c],cl
38d605	je     0x38d659
38d607	test   r12d,0x6000000
38d60e	je     0x38d659
38d610	mov    BYTE PTR [rsi+0xd9],0x1
38d617	test   r12b,0x40
38d61b	je     0x38d659
38d61d	test   dil,dil
38d620	jne    0x38d628
38d622	mov    DWORD PTR [rsi+0x30],ecx
38d625	mov    DWORD PTR [rsi+0x28],ecx
38d628	test   r13b,r13b
38d62b	jne    0x38d633
38d62d	mov    DWORD PTR [rsi+0x34],ecx
38d630	mov    DWORD PTR [rsi+0x2c],ecx
38d633	xorps  xmm2,xmm2
38d636	lea    rcx,[rbp-0x70]
38d63a	xorps  xmm1,xmm1
38d63d	call   0x2cc340
38d642	movss  xmm0,DWORD PTR [rax+0x4]
38d647	mov    eax,DWORD PTR [rax]
38d649	mov    DWORD PTR [rbx],eax
38d64b	movss  DWORD PTR [rbx+0x4],xmm0
38d650	movsd  xmm0,QWORD PTR [rbx]
38d654	movsd  QWORD PTR [rsi+0x38],xmm0
38d659	call   0x392868
38d65e	mov    rdx,rax
38d661	mov    QWORD PTR [rbp-0x50],rax
38d665	mov    rcx,rsi
38d668	call   0x39bd54
38d66d	mov    rcx,rsi
38d670	call   0x39b348
38d675	test   r15d,r15d
38d678	je     0x38d686
38d67a	mov    ecx,DWORD PTR [r14+0x3800]
38d681	mov    DWORD PTR [rsi+0x5c],ecx
38d684	jmp    0x38d6af
38d686	test   r12d,0x6000000
38d68d	je     0x38d6a1
38d68f	bt     r12d,0x1b
38d694	jb     0x38d6a1
38d696	movss  xmm0,DWORD PTR [r14+0x3808]
38d69f	jmp    0x38d6aa
38d6a1	movss  xmm0,DWORD PTR [r14+0x37e4]
38d6aa	movss  DWORD PTR [rsi+0x5c],xmm0
38d6af	movsd  xmm0,QWORD PTR [r14+0x37d8]
38d6b8	lea    rcx,[rsi+0x50]
38d6bc	movsd  QWORD PTR [rcx],xmm0
38d6c0	test   r15d,r15d
38d6c3	je     0x38d70e
38d6c5	test   r12d,0x4010000
38d6cc	jne    0x38d70e
38d6ce	movss  xmm0,DWORD PTR [rsi+0x5c]
38d6d3	ucomiss xmm0,xmm8
38d6d7	jp     0x38d70e
38d6d9	jne    0x38d70e
38d6db	bt     r12d,0xa
38d6e0	jae    0x38d6ed
38d6e2	movss  xmm2,DWORD PTR [r14+0x37dc]
38d6eb	jmp    0x38d6f0
38d6ed	xorps  xmm2,xmm2
38d6f0	xorps  xmm1,xmm1
38d6f3	lea    rcx,[rbp-0x70]
38d6f7	call   0x2cc340
38d6fc	lea    rcx,[rsi+0x50]
38d700	movss  xmm0,DWORD PTR [rax+0x4]
38d705	mov    eax,DWORD PTR [rax]
38d707	mov    DWORD PTR [rcx],eax
38d709	movss  DWORD PTR [rcx+0x4],xmm0
38d70e	movss  xmm1,DWORD PTR [r14+0x381c]
38d717	movss  xmm0,DWORD PTR [rcx]
38d71b	call   0x38a3f4
38d720	movss  xmm1,DWORD PTR [r14+0x4844]
38d729	call   0x38a3f4
38d72e	movzx  r15d,BYTE PTR [rbp+0x100]
38d736	mov    ecx,r12d
38d739	movss  DWORD PTR [rsi+0x164],xmm0
38d741	and    ecx,0x20
38d744	mov    eax,DWORD PTR [r14+0x4848]
38d74b	mov    DWORD PTR [rsi+0x168],eax
38d751	mov    eax,r12d
38d754	and    eax,0x1
38d757	mov    DWORD PTR [rbp-0x68],eax
38d75a	or     eax,ecx
38d75c	jne    0x38d7e8
38d762	lea    rdx,[rbp-0x30]
38d766	mov    rcx,rsi
38d769	call   0x39bfb8
38d76e	cmp    QWORD PTR [r14+0x3f10],rsi
38d775	jne    0x38d7b9
38d777	cmp    DWORD PTR [r14+0x3f54],0x0
38d77f	jne    0x38d7b9
38d781	cmp    DWORD PTR [r14+0x3f58],0x0
38d789	jne    0x38d7b9
38d78b	mov    r8b,0x1
38d78e	lea    rdx,[rbp-0x28]
38d792	lea    rcx,[rbp-0x30]
38d796	call   0x3944ac
38d79b	mov    edx,0x1
38d7a0	test   al,al
38d7a2	je     0x38d7be
38d7a4	lea    eax,[rdx+0x1]
38d7a7	cmp    WORD PTR [r14+0x3752],ax
38d7af	jne    0x38d7be
38d7b1	mov    BYTE PTR [rsi+0xba],dl
38d7b7	jmp    0x38d7be
38d7b9	mov    edx,0x1
38d7be	cmp    BYTE PTR [rsi+0xba],0x0
38d7c5	je     0x38d7ef
38d7c7	mov    cl,BYTE PTR [rsi+0xb9]
38d7cd	test   cl,cl
38d7cf	sete   al
38d7d2	test   cl,cl
38d7d4	mov    rcx,rsi
38d7d7	mov    BYTE PTR [rsi+0xb9],al
38d7dd	cmovne r15d,edx
38d7e1	call   0x395108
38d7e6	jmp    0x38d7ef
38d7e8	mov    BYTE PTR [rsi+0xb9],0x0
38d7ef	mov    BYTE PTR [rsi+0xba],0x0
38d7f6	mov    rcx,rsi
38d7f9	movsd  xmm0,QWORD PTR [rsi+0xac]
38d801	mov    DWORD PTR [rsi+0x60],0x0
38d808	movsd  QWORD PTR [rbp-0x70],xmm0
38d80d	mov    DWORD PTR [rsi+0x68],0x0
38d814	call   0x39bf80
38d819	mov    rcx,rsi
38d81c	movaps xmm6,xmm0
38d81f	call   0x3951a4
38d824	addss  xmm0,xmm6
38d828	xorps  xmm2,xmm2
38d82b	xorps  xmm1,xmm1
38d82e	lea    rcx,[rsp+0x60]
38d833	movss  DWORD PTR [rsi+0x64],xmm0
38d838	mov    DWORD PTR [rsi+0x6c],0x0
38d83f	call   0x2cc340
38d844	mov    r8,rbx
38d847	lea    rcx,[rsp+0x50]
38d84c	mov    rdx,rsi
38d84f	movss  xmm0,DWORD PTR [rax+0x4]
38d854	mov    eax,DWORD PTR [rax]
38d856	mov    DWORD PTR [rsi+0xac],eax
38d85c	movss  DWORD PTR [rsi+0xb0],xmm0
38d864	call   0x38f8b4
38d869	mov    eax,r12d
38d86c	and    eax,0x40
38d86f	mov    DWORD PTR [rbp-0x38],eax
38d872	je     0x38d8b1
38d874	xor    ebx,ebx
38d876	cmp    BYTE PTR [rsi+0xb9],bl
38d87c	jne    0x38d8b3
38d87e	test   dil,dil
38d881	jne    0x38d895
38d883	movss  xmm0,DWORD PTR [rsp+0x50]
38d889	movss  DWORD PTR [rsi+0x30],xmm0
38d88e	mov    BYTE PTR [rbp+0x100],0x1
38d895	test   r13b,r13b
38d898	jne    0x38d93f
38d89e	movss  xmm0,DWORD PTR [rsp+0x54]
38d8a4	mov    r15b,0x1
38d8a7	movss  DWORD PTR [rsi+0x34],xmm0
38d8ac	jmp    0x38d93f
38d8b1	xor    ebx,ebx
38d8b3	mov    al,BYTE PTR [rsi+0xd0]
38d8b9	test   al,al
38d8bb	jg     0x38d8c5
38d8bd	cmp    BYTE PTR [rsi+0xd1],bl
38d8c3	jle    0x38d93f
38d8c5	test   dil,dil
38d8c8	jne    0x38d8fa
38d8ca	test   al,al
38d8cc	jle    0x38d8fa
38d8ce	cmp    BYTE PTR [rsi+0xd3],bl
38d8d4	je     0x38d8e8
38d8d6	movss  xmm1,DWORD PTR [rsp+0x50]
38d8dc	movss  xmm0,DWORD PTR [rsi+0x30]
38d8e1	call   0x38a3f4
38d8e6	jmp    0x38d8ee
38d8e8	movss  xmm0,DWORD PTR [rsp+0x50]
38d8ee	movss  DWORD PTR [rsi+0x30],xmm0
38d8f3	mov    BYTE PTR [rbp+0x100],0x1
38d8fa	test   r13b,r13b
38d8fd	jne    0x38d92f
38d8ff	cmp    BYTE PTR [rsi+0xd1],bl
38d905	jle    0x38d92f
38d907	cmp    BYTE PTR [rsi+0xd3],bl
38d90d	je     0x38d921
38d90f	movss  xmm1,DWORD PTR [rsp+0x54]
38d915	movss  xmm0,DWORD PTR [rsi+0x34]
38d91a	call   0x38a3f4
38d91f	jmp    0x38d927
38d921	movss  xmm0,DWORD PTR [rsp+0x54]
38d927	movss  DWORD PTR [rsi+0x34],xmm0
38d92c	mov    r15b,0x1
38d92f	cmp    BYTE PTR [rsi+0xb9],bl
38d935	jne    0x38d93f
38d937	mov    rcx,rsi
38d93a	call   0x395108
38d93f	lea    rdi,[rsi+0x30]
38d943	mov    rdx,rsi
38d946	mov    r8,rdi
38d949	lea    rcx,[rsp+0x60]
38d94e	call   0x38fbe8
38d953	movss  xmm0,DWORD PTR [rax+0x4]
38d958	mov    eax,DWORD PTR [rax]
38d95a	mov    DWORD PTR [rdi],eax
38d95c	movss  DWORD PTR [rdi+0x4],xmm0
38d961	cmp    BYTE PTR [rsi+0xb9],bl
38d967	mov    ebx,DWORD PTR [rsp+0x68]
38d96b	je     0x38d98c
38d96d	test   ebx,ebx
38d96f	jne    0x38d98c
38d971	lea    rdx,[rbp-0x10]
38d975	mov    rcx,rsi
38d978	call   0x39bfb8
38d97d	mov    rcx,rax
38d980	lea    rdx,[rsp+0x60]
38d985	call   0x378940
38d98a	jmp    0x38d99b
38d98c	movsd  xmm0,QWORD PTR [rdi]
38d990	lea    rax,[rsp+0x60]
38d995	movsd  QWORD PTR [rsp+0x60],xmm0
38d99b	cmp    BYTE PTR [rsp+0x6c],0x0
38d9a0	movsd  xmm0,QWORD PTR [rax]
38d9a4	mov    edx,DWORD PTR [rsp+0x44]
38d9a8	movsd  QWORD PTR [rsi+0x28],xmm0
38d9ad	je     0x38d9f3
38d9af	mov    DWORD PTR [rsi+0xd4],0xffffffff
38d9b9	test   edx,edx
38d9bb	je     0x38d9f3
38d9bd	movzx  r13d,BYTE PTR [rsp+0x40]
38d9c3	mov    ecx,r12d
38d9c6	and    ecx,0x8000000
38d9cc	or     ecx,r13d
38d9cf	jne    0x38d9f8
38d9d1	lea    rcx,[r14+0x48c0]
38d9d8	call   0x39e324
38d9dd	mov    edx,DWORD PTR [rsp+0x44]
38d9e1	movss  xmm0,DWORD PTR [rax+0x28]
38d9e6	mov    eax,DWORD PTR [rax+0x24]
38d9e9	mov    DWORD PTR [rsi+0x20],eax
38d9ec	movss  DWORD PTR [rsi+0x24],xmm0
38d9f1	jmp    0x38d9f8
38d9f3	mov    r13b,BYTE PTR [rsp+0x40]
38d9f8	test   ebx,ebx
38d9fa	je     0x38da43
38d9fc	mov    rbx,QWORD PTR [rbp-0x80]
38da00	lea    rdx,[rbp-0x60]
38da04	lea    rcx,[rbx+0x190]
38da0b	movzx  eax,WORD PTR [rcx]
38da0e	mov    WORD PTR [rsi+0xc6],ax
38da15	call   0x37a658
38da1a	mov    r8b,BYTE PTR [rbp+0x108]
38da21	mov    al,r13b
38da24	mov    edx,DWORD PTR [rsp+0x44]
38da28	or     al,r8b
38da2b	movzx  ecx,al
38da2e	mov    eax,edx
38da30	or     eax,ecx
38da32	jne    0x38da4a
38da34	movsd  xmm0,QWORD PTR [rbx+0x100]
38da3c	movsd  QWORD PTR [rsi+0x20],xmm0
38da41	jmp    0x38da4a
38da43	mov    r8b,BYTE PTR [rbp+0x108]
38da4a	lea    rbx,[rsi+0xe0]
38da51	movss  xmm0,DWORD PTR [rbx]
38da55	ucomiss xmm0,xmm7
38da58	jp     0x38da5c
38da5a	je     0x38da9a
38da5c	cmp    BYTE PTR [rsi+0xd9],0x0
38da63	jne    0x38da9a
38da65	lea    r8,[rsi+0xe8]
38da6c	lea    rdx,[rsi+0x28]
38da70	lea    rcx,[rsp+0x60]
38da75	call   0x38bbdc
38da7a	mov    r8,rax
38da7d	lea    rcx,[rsp+0x78]
38da82	mov    rdx,rbx
38da85	call   0x3367e4
38da8a	mov    rdx,rax
38da8d	xor    r8d,r8d
38da90	mov    rcx,rsi
38da93	call   0x39bb4c
38da98	jmp    0x38dadc
38da9a	cmp    DWORD PTR [rsp+0x78],0x0
38da9f	jne    0x38dac0
38daa1	test   edx,edx
38daa3	je     0x38dab1
38daa5	test   r13b,r13b
38daa8	jne    0x38dab1
38daaa	cmp    BYTE PTR [rsp+0x48],r13b
38daaf	jg     0x38dac0
38dab1	bt     r12d,0x19
38dab6	jae    0x38dadc
38dab8	mov    al,r13b
38dabb	or     al,r8b
38dabe	jne    0x38dadc
38dac0	mov    rdx,rsi
38dac3	lea    rcx,[rsp+0x60]
38dac8	call   0x39138c
38dacd	movss  xmm0,DWORD PTR [rax+0x4]
38dad2	mov    eax,DWORD PTR [rax]
38dad4	mov    DWORD PTR [rsi+0x20],eax
38dad7	movss  DWORD PTR [rsi+0x24],xmm0
38dadc	mov    rbx,QWORD PTR [rbp-0x50]
38dae0	lea    rdx,[rbp-0x30]
38dae4	mov    rcx,rbx
38dae7	call   0x392828
38daec	lea    rdx,[rbp-0x60]
38daf0	mov    rcx,rbx
38daf3	call   0x392f48
38daf8	lea    r8,[r14+0x3894]
38daff	lea    rdx,[r14+0x388c]
38db06	lea    rcx,[rsp+0x78]
38db0b	call   0x383044
38db10	lea    r8,[rsp+0x78]
38db15	lea    rdx,[rbp-0x58]
38db19	lea    rcx,[rbp-0x50]
38db1d	call   0x3367e4
38db22	lea    r8,[rsp+0x78]
38db27	mov    rbx,rax
38db2a	lea    rdx,[rbp-0x60]
38db2e	lea    rcx,[rsp+0x60]
38db33	call   0x2ef9d8
38db38	mov    rdx,rax
38db3b	lea    rcx,[rbp-0x20]
38db3f	mov    r8,rbx
38db42	call   0x2db388
38db47	movzx  eax,r13b
38db4b	or     eax,DWORD PTR [rsp+0x68]
38db4f	jne    0x38db7b
38db51	lea    rcx,[rbp-0x30]
38db55	call   0x378970
38db5a	comiss xmm0,xmm8
38db5e	jbe    0x38db7b
38db60	lea    rcx,[rbp-0x30]
38db64	call   0x378934
38db69	comiss xmm0,xmm8
38db6d	jbe    0x38db7b
38db6f	lea    rdx,[rbp-0x20]
38db73	mov    rcx,rsi
38db76	call   0x38ff14
38db7b	lea    rdx,[rsi+0x20]
38db7f	lea    rcx,[rbp-0x50]
38db83	call   0x39307c
38db88	mov    ebx,DWORD PTR [rsp+0x68]
38db8c	movss  xmm0,DWORD PTR [rax+0x4]
38db91	mov    eax,DWORD PTR [rax]
38db93	mov    DWORD PTR [rsi+0x20],eax
38db96	mov    eax,DWORD PTR [rsp+0x44]
38db9a	movss  DWORD PTR [rsi+0x24],xmm0
38db9f	test   ebx,ebx
38dba1	je     0x38dbae
38dba3	movss  xmm1,DWORD PTR [r14+0x37fc]
38dbac	jmp    0x38dbcd
38dbae	test   eax,eax
38dbb0	je     0x38dbc4
38dbb2	bt     r12d,0x1b
38dbb7	jb     0x38dbc4
38dbb9	movss  xmm1,DWORD PTR [r14+0x3804]
38dbc2	jmp    0x38dbcd
38dbc4	movss  xmm1,DWORD PTR [r14+0x37e0]
38dbcd	xor    cl,cl
38dbcf	movss  DWORD PTR [rsi+0x58],xmm1
38dbd4	mov    DWORD PTR [rbp-0x60],ecx
38dbd7	cmp    BYTE PTR [rsp+0x6c],cl
38dbdb	je     0x38dc03
38dbdd	bt     r12d,0xc
38dbe2	jb     0x38dc03
38dbe4	test   eax,eax
38dbe6	je     0x38dbee
38dbe8	mov    BYTE PTR [rbp-0x60],0x1
38dbec	jmp    0x38dc03
38dbee	test   r12d,0x3000000
38dbf5	movzx  ecx,cl
38dbf8	mov    eax,0x1
38dbfd	cmove  ecx,eax
38dc00	mov    DWORD PTR [rbp-0x60],ecx
38dc03	addss  xmm1,DWORD PTR [rip+0xffffffffffeff649]        # 0x28d254
38dc0b	mov    al,BYTE PTR [r14+0x7e]
38dc0f	xorps  xmm0,xmm0
38dc12	movups XMMWORD PTR [rbp-0x10],xmm0
38dc16	neg    al
38dc18	mov    DWORD PTR [rsp+0x78],0xffffffff
38dc20	movss  xmm0,DWORD PTR [r14+0x3c30]
38dc29	movaps xmm2,xmm0
38dc2c	sbb    r13d,r13d
38dc2f	mulss  xmm2,DWORD PTR [rip+0xfffffffffff05471]        # 0x2930a8
38dc37	neg    r13d
38dc3a	inc    r13d
38dc3d	mulss  xmm0,DWORD PTR [rip+0xfffffffffff1a5bf]        # 0x2a8204
38dc45	addss  xmm1,xmm2
38dc49	call   0x38a3f4
38dc4e	cmp    BYTE PTR [rsi+0xb9],0x0
38dc55	cvttss2si eax,xmm0
38dc59	movd   xmm7,eax
38dc5d	cvtdq2ps xmm7,xmm7
38dc60	jne    0x38dc9b
38dc62	lea    rax,[rbp-0x20]
38dc66	mov    r9d,r13d
38dc69	mov    QWORD PTR [rsp+0x28],rax
38dc6e	lea    r8,[rsp+0x78]
38dc73	lea    rax,[rbp-0x10]
38dc77	mov    rcx,rsi
38dc7a	lea    rdx,[rsp+0x50]
38dc7f	mov    QWORD PTR [rsp+0x20],rax
38dc84	call   0x39d760
38dc89	test   al,al
38dc8b	je     0x38dc9b
38dc8d	mov    eax,0x1
38dc92	mov    r15b,al
38dc95	mov    BYTE PTR [rbp+0x100],al
38dc9b	mov    al,BYTE PTR [rsp+0x78]
38dc9f	mov    BYTE PTR [rsi+0xc1],al
38dca5	cmp    BYTE PTR [rsi+0xb9],0x0
38dcac	jne    0x38de6d
38dcb2	movss  xmm0,DWORD PTR [rsi+0x6c]
38dcb7	lea    rcx,[rsp+0x78]
38dcbc	addss  xmm0,DWORD PTR [rsi+0x64]
38dcc1	movss  xmm2,DWORD PTR [rsi+0x34]
38dcc6	movss  xmm1,DWORD PTR [rdi]
38dcca	subss  xmm2,xmm0
38dcce	call   0x2cc340
38dcd3	lea    rcx,[rsi+0x1f8]
38dcda	lea    rdx,[rbp-0x50]
38dcde	call   0x378940
38dce3	mov    rdx,rax
38dce6	lea    r8,[rbp-0x70]
38dcea	lea    rcx,[rsp+0x60]
38dcef	call   0x2ef9d8
38dcf4	cmp    QWORD PTR [rbp-0x78],0x0
38dcf9	jne    0x38dd11
38dcfb	xorps  xmm2,xmm2
38dcfe	lea    rcx,[rsp+0x50]
38dd03	xorps  xmm1,xmm1
38dd06	call   0x2cc340
38dd0b	lea    rdi,[rsi+0x50]
38dd0f	jmp    0x38dd3a
38dd11	movss  xmm2,DWORD PTR [rip+0xfffffffffff0541b]        # 0x293134
38dd19	lea    rdi,[rsi+0x50]
38dd1d	mov    rdx,rdi
38dd20	lea    rcx,[rbp-0x70]
38dd24	call   0x38bc08
38dd29	mov    r8,rax
38dd2c	lea    rdx,[rsi+0x38]
38dd30	lea    rcx,[rsp+0x50]
38dd35	call   0x2ef9d8
38dd3a	xor    ecx,ecx
38dd3c	cmp    BYTE PTR [rbp+0x100],cl
38dd42	je     0x38dd4c
38dd44	movss  xmm1,DWORD PTR [rsp+0x78]
38dd4a	jmp    0x38dd52
38dd4c	movss  xmm1,DWORD PTR [rsp+0x60]
38dd52	test   r15b,r15b
38dd55	je     0x38dd5f
38dd57	movss  xmm2,DWORD PTR [rsp+0x7c]
38dd5d	jmp    0x38dd65
38dd5f	movss  xmm2,DWORD PTR [rsp+0x64]
38dd65	bt     r12d,0xe
38dd6a	jb     0x38dd86
38dd6c	movss  xmm0,DWORD PTR [rsp+0x54]
38dd72	comiss xmm0,xmm2
38dd75	jbe    0x38dd7d
38dd77	test   r12b,0x8
38dd7b	je     0x38dd86
38dd7d	mov    al,cl
38dd7f	mov    edx,0x1
38dd84	jmp    0x38dd8d
38dd86	mov    edx,0x1
38dd8b	mov    al,dl
38dd8d	mov    BYTE PTR [rsi+0xb5],al
38dd93	bt     r12d,0xf
38dd98	jb     0x38ddce
38dd9a	test   al,al
38dd9c	je     0x38dda9
38dd9e	movss  xmm0,DWORD PTR [r14+0x3844]
38dda7	jmp    0x38ddac
38dda9	xorps  xmm0,xmm0
38ddac	subss  xmm1,xmm0
38ddb0	movss  xmm0,DWORD PTR [rsp+0x50]
38ddb6	comiss xmm0,xmm1
38ddb9	jbe    0x38ddca
38ddbb	mov    eax,r12d
38ddbe	and    eax,0x808
38ddc3	cmp    eax,0x800
38ddc8	je     0x38ddce
38ddca	mov    al,cl
38ddcc	jmp    0x38ddd0
38ddce	mov    al,dl
38ddd0	mov    BYTE PTR [rsi+0xb4],al
38ddd6	test   al,al
38ddd8	je     0x38ddfd
38ddda	cmp    BYTE PTR [rsi+0xb5],cl
38dde0	jne    0x38ddfd
38dde2	movss  xmm0,DWORD PTR [rsp+0x54]
38dde8	comiss xmm0,xmm2
38ddeb	jbe    0x38ddf5
38dded	mov    al,dl
38ddef	test   r12b,0x8
38ddf3	je     0x38ddf7
38ddf5	mov    al,cl
38ddf7	mov    BYTE PTR [rsi+0xb5],al
38ddfd	cmp    BYTE PTR [rsi+0xb4],cl
38de03	je     0x38de10
38de05	movss  xmm2,DWORD PTR [r14+0x3844]
38de0e	jmp    0x38de13
38de10	xorps  xmm2,xmm2
38de13	cmp    BYTE PTR [rsi+0xb5],cl
38de19	je     0x38de26
38de1b	movss  xmm1,DWORD PTR [r14+0x3844]
38de24	jmp    0x38de29
38de26	xorps  xmm1,xmm1
38de29	lea    rcx,[rbp-0x70]
38de2d	call   0x2cc340
38de32	movss  xmm0,DWORD PTR [rax+0x4]
38de37	mov    eax,DWORD PTR [rax]
38de39	mov    DWORD PTR [rsi+0xac],eax
38de3f	movss  DWORD PTR [rsi+0xb0],xmm0
38de47	movss  xmm0,DWORD PTR [rsi+0xac]
38de4f	addss  xmm0,DWORD PTR [rsi+0x68]
38de54	movss  DWORD PTR [rsi+0x68],xmm0
38de59	movss  xmm1,DWORD PTR [rsi+0xb0]
38de61	addss  xmm1,DWORD PTR [rsi+0x6c]
38de66	movss  DWORD PTR [rsi+0x6c],xmm1
38de6b	jmp    0x38de71
38de6d	lea    rdi,[rsi+0x50]
38de71	test   ebx,ebx
38de73	je     0x38de91
38de75	movzx  ecx,BYTE PTR [rbp+0x108]
38de7c	mov    eax,DWORD PTR [rsp+0x44]
38de80	or     eax,ecx
38de82	jne    0x38de91
38de84	mov    rbx,QWORD PTR [rbp-0x80]
38de88	lea    rax,[rbx+0x238]
38de8f	jmp    0x38de99
38de91	mov    rbx,QWORD PTR [rbp-0x80]
38de95	lea    rax,[rbp-0x30]
38de99	movups xmm0,XMMWORD PTR [rax]
38de9c	lea    rdx,[rbp-0x20]
38dea0	mov    rcx,rsi
38dea3	movdqu XMMWORD PTR [rbp+0x0],xmm0
38dea8	call   0x398d44
38dead	lea    rdx,[rbp-0x48]
38deb1	mov    rcx,rsi
38deb4	call   0x39bfb8
38deb9	movups xmm0,XMMWORD PTR [rbp-0x20]
38debd	lea    rcx,[rsi+0x1e8]
38dec4	lea    rdx,[rbp+0x0]
38dec8	movdqu XMMWORD PTR [rcx],xmm0
38decc	call   0x3901b8
38ded1	movss  xmm0,DWORD PTR [rsi+0x60]
38ded6	lea    r15,[rsi+0x1f8]
38dedd	addss  xmm0,DWORD PTR [rsi+0x20]
38dee2	movss  DWORD PTR [r15],xmm0
38dee7	movss  xmm0,DWORD PTR [rsi+0x64]
38deec	addss  xmm0,DWORD PTR [rsi+0x24]
38def1	movss  DWORD PTR [rsi+0x1fc],xmm0
38def9	movss  xmm1,DWORD PTR [rsi+0x28]
38defe	addss  xmm1,DWORD PTR [rsi+0x20]
38df03	subss  xmm1,DWORD PTR [rsi+0x68]
38df08	movss  DWORD PTR [rsi+0x200],xmm1
38df10	movss  xmm0,DWORD PTR [rsi+0x2c]
38df15	addss  xmm0,DWORD PTR [rsi+0x24]
38df1a	subss  xmm0,DWORD PTR [rsi+0x6c]
38df1f	movss  DWORD PTR [rsi+0x204],xmm0
38df27	bt     r12d,0xa
38df2c	jb     0x38df3b
38df2e	cmp    DWORD PTR [rbp-0x68],0x0
38df32	je     0x38df3b
38df34	movss  xmm4,DWORD PTR [rsi+0x5c]
38df39	jmp    0x38df44
38df3b	movss  xmm4,DWORD PTR [r14+0x3818]
38df44	movss  xmm0,DWORD PTR [rdi]
38df48	lea    rcx,[rsi+0x208]
38df4f	movss  xmm3,DWORD PTR [rip+0xffffffffffeff2f9]        # 0x28d250
38df57	mulss  xmm0,xmm3
38df5b	call   0x3930ac
38df60	movss  xmm1,DWORD PTR [rsi+0x5c]
38df65	call   0x38a3f4
38df6a	movss  xmm2,DWORD PTR [r15]
38df6f	addss  xmm2,xmm3
38df73	addss  xmm0,xmm2
38df77	call   0x3930ac
38df7c	movss  DWORD PTR [rcx],xmm0
38df80	movss  xmm0,DWORD PTR [rsi+0x1fc]
38df88	addss  xmm0,xmm3
38df8c	addss  xmm0,xmm4
38df90	call   0x3930ac
38df95	movss  DWORD PTR [rsi+0x20c],xmm0
38df9d	movss  xmm0,DWORD PTR [rsi+0x200]
38dfa5	addss  xmm0,xmm3
38dfa9	call   0x3930ac
38dfae	movss  DWORD PTR [rsi+0x210],xmm0
38dfb6	movss  xmm0,DWORD PTR [rsi+0x204]
38dfbe	addss  xmm0,xmm3
38dfc2	subss  xmm0,DWORD PTR [rsi+0x5c]
38dfc7	call   0x3930ac
38dfcc	lea    rdx,[rbp+0x0]
38dfd0	movss  DWORD PTR [rsi+0x214],xmm0
38dfd8	call   0x390208
38dfdd	movss  xmm0,DWORD PTR [rsi+0x28]
38dfe2	comiss xmm0,xmm8
38dfe6	jbe    0x38e003
38dfe8	mov    eax,r12d
38dfeb	and    eax,0x2000000
38dff0	or     eax,DWORD PTR [rbp-0x38]
38dff3	jne    0x38e003
38dff5	movss  xmm1,DWORD PTR [rdi]
38dff9	addss  xmm1,xmm1
38dffd	subss  xmm0,xmm1
38e001	jmp    0x38e014
38e003	movss  xmm0,DWORD PTR [r14+0x3c30]
38e00c	mulss  xmm0,DWORD PTR [rip+0xfffffffffff051a8]        # 0x2931bc
38e014	call   0x3930ac
38e019	movss  DWORD PTR [rsi+0x268],xmm0
38e021	mov    rcx,r15
38e024	movss  xmm6,DWORD PTR [rdi]
38e028	addss  xmm6,xmm6
38e02c	addss  xmm6,DWORD PTR [rsi+0x38]
38e031	call   0x378970
38e036	subss  xmm6,xmm0
38e03a	xorps  xmm0,xmm0
38e03d	movaps xmm1,xmm6
38e040	call   0x38a3f4
38e045	movss  DWORD PTR [rsi+0x8c],xmm0
38e04d	mov    rcx,r15
38e050	movss  xmm6,DWORD PTR [rsi+0x54]
38e055	call   0x378934
38e05a	addss  xmm6,xmm6
38e05e	addss  xmm6,DWORD PTR [rsi+0x3c]
38e063	subss  xmm6,xmm0
38e067	xorps  xmm0,xmm0
38e06a	movaps xmm1,xmm6
38e06d	call   0x38a3f4
38e072	movss  DWORD PTR [rsi+0x90],xmm0
38e07a	call   0x3926ac
38e07f	mov    rdx,rsi
38e082	lea    rcx,[rbp-0x70]
38e086	movss  xmm6,DWORD PTR [rax+0x10]
38e08b	mulss  xmm6,DWORD PTR [rip+0xfffffffffff05155]        # 0x2931e8
38e093	call   0x38f3ec
38e098	movss  xmm0,DWORD PTR [rsi+0x88]
38e0a0	movaps xmm2,xmm6
38e0a3	movss  xmm1,DWORD PTR [rax+0x4]
38e0a8	call   0x33565c
38e0ad	cvttss2si eax,xmm0
38e0b1	lea    rcx,[rbp-0x70]
38e0b5	movd   xmm2,eax
38e0b9	cvtdq2ps xmm2,xmm2
38e0bc	movss  DWORD PTR [rsi+0x88],xmm2
38e0c4	movss  xmm2,DWORD PTR [r14+0x4814]
38e0cd	addss  xmm2,DWORD PTR [rsi+0x98]
38e0d5	movss  xmm1,DWORD PTR [rsi+0x94]
38e0dd	call   0x2cc340
38e0e2	movss  xmm0,DWORD PTR [rax+0x4]
38e0e7	mov    eax,DWORD PTR [rax]
38e0e9	mov    DWORD PTR [rsi+0x94],eax
38e0ef	movss  DWORD PTR [rsi+0x98],xmm0
38e0f7	mov    rcx,QWORD PTR [rsi+0x298]
38e0fe	mov    QWORD PTR [rsi+0x70],0x0
38e106	mov    rax,QWORD PTR [r14+0x3c28]
38e10d	mov    rdx,QWORD PTR [rax+0x40]
38e111	mov    rdx,QWORD PTR [rdx+0x8]
38e115	call   0x3a73c4
38e11a	xor    r8d,r8d
38e11d	lea    rdx,[rbp+0x8]
38e121	lea    rcx,[rbp+0x0]
38e125	call   0x3989f8
38e12a	xor    dil,dil
38e12d	cmp    DWORD PTR [rsp+0x68],0x0
38e132	je     0x38e1bd
38e138	movzx  eax,BYTE PTR [rbp+0x108]
38e13f	or     DWORD PTR [rsp+0x44],eax
38e143	jne    0x38e1bd
38e145	lea    rcx,[rbx+0x190]
38e14c	mov    edx,DWORD PTR [rcx]
38e14e	cmp    edx,0x2
38e151	jl     0x38e18a
38e153	add    edx,0xfffffffe
38e156	call   0x38bb84
38e15b	mov    rcx,QWORD PTR [rax]
38e15e	test   rcx,rcx
38e161	je     0x38e18a
38e163	lea    rdx,[rbp-0x20]
38e167	call   0x398d44
38e16c	lea    rdx,[rbp-0x30]
38e170	mov    rcx,rsi
38e173	mov    rbx,rax
38e176	call   0x398d44
38e17b	mov    rdx,rax
38e17e	mov    rcx,rbx
38e181	call   0x398728
38e186	mov    bl,al
38e188	jmp    0x38e18c
38e18a	xor    bl,bl
38e18c	mov    rcx,QWORD PTR [rsi+0x298]
38e193	call   0x39e324
38e198	cmp    DWORD PTR [rax+0x20],0x0
38e19c	jne    0x38e1bd
38e19e	mov    rax,QWORD PTR [rbp-0x80]
38e1a2	mov    rax,QWORD PTR [rax+0x298]
38e1a9	cmp    DWORD PTR [rax+0x20],0x0
38e1ad	je     0x38e1bd
38e1af	test   bl,bl
38e1b1	jne    0x38e1bd
38e1b3	mov    dil,0x1
38e1b6	mov    QWORD PTR [rsi+0x298],rax
38e1bd	mov    rax,QWORD PTR [r14+0x4a50]
38e1c4	test   rax,rax
38e1c7	jne    0x38e1d0
38e1c9	mov    rax,QWORD PTR [r14+0x48e8]
38e1d0	mov    ebx,DWORD PTR [rbp-0x60]
38e1d3	test   bl,bl
38e1d5	jne    0x38e1f1
38e1d7	test   rax,rax
38e1da	je     0x38e1ec
38e1dc	mov    rax,QWORD PTR [rax+0x388]
38e1e3	cmp    QWORD PTR [rsi+0x388],rax
38e1ea	je     0x38e1f1
38e1ec	xor    r8b,r8b
38e1ef	jmp    0x38e1f4
38e1f1	mov    r8b,0x1
38e1f4	movss  DWORD PTR [rsp+0x30],xmm7
38e1fa	lea    rax,[rbp-0x10]
38e1fe	mov    QWORD PTR [rsp+0x28],rax
38e203	lea    rdx,[rbp-0x48]
38e207	mov    r9b,0x1
38e20a	mov    DWORD PTR [rsp+0x20],r13d
38e20f	mov    rcx,rsi
38e212	call   0x399d88
38e217	xor    r13d,r13d
38e21a	test   dil,dil
38e21d	je     0x38e22d
38e21f	lea    rax,[rsi+0x2a0]
38e226	mov    QWORD PTR [rsi+0x298],rax
38e22d	mov    eax,r12d
38e230	and    eax,0x8
38e233	jne    0x38e244
38e235	bt     r12d,0xb
38e23a	jae    0x38e244
38e23c	lea    edi,[rax+0x1]
38e23f	mov    cl,dil
38e242	jmp    0x38e24c
38e244	mov    cl,r13b
38e247	mov    edi,0x1
38e24c	movss  xmm4,DWORD PTR [rsi+0x48]
38e251	ucomiss xmm4,xmm8
38e255	jp     0x38e294
38e257	jne    0x38e294
38e259	movss  xmm1,DWORD PTR [rsi+0x28]
38e25e	lea    rdx,[rsi+0x50]
38e262	movss  xmm0,DWORD PTR [rdx]
38e266	addss  xmm0,xmm0
38e26a	subss  xmm1,xmm0
38e26e	movss  xmm0,DWORD PTR [rsi+0x68]
38e273	addss  xmm0,DWORD PTR [rsi+0x60]
38e278	subss  xmm1,xmm0
38e27c	test   cl,cl
38e27e	je     0x38e287
38e280	movss  xmm0,DWORD PTR [rsi+0x38]
38e285	jmp    0x38e28a
38e287	xorps  xmm0,xmm0
38e28a	call   0x38a3f4
38e28f	movaps xmm4,xmm0
38e292	jmp    0x38e298
38e294	lea    rdx,[rsi+0x50]
38e298	movss  xmm3,DWORD PTR [rsi+0x4c]
38e29d	ucomiss xmm3,xmm8
38e2a1	jp     0x38e2db
38e2a3	jne    0x38e2db
38e2a5	movss  xmm0,DWORD PTR [rsi+0x54]
38e2aa	movss  xmm1,DWORD PTR [rsi+0x2c]
38e2af	addss  xmm0,xmm0
38e2b3	subss  xmm1,xmm0
38e2b7	movss  xmm0,DWORD PTR [rsi+0x6c]
38e2bc	addss  xmm0,DWORD PTR [rsi+0x64]
38e2c1	subss  xmm1,xmm0
38e2c5	test   eax,eax
38e2c7	jne    0x38e2d0
38e2c9	movss  xmm0,DWORD PTR [rsi+0x3c]
38e2ce	jmp    0x38e2d3
38e2d0	xorps  xmm0,xmm0
38e2d3	call   0x38a3f4
38e2d8	movaps xmm3,xmm0
38e2db	movss  xmm2,DWORD PTR [r15]
38e2e0	movss  xmm1,DWORD PTR [rsi+0x5c]
38e2e5	movss  xmm0,DWORD PTR [rdx]
38e2e9	subss  xmm2,DWORD PTR [rsi+0x84]
38e2f1	call   0x38a3f4
38e2f6	addss  xmm0,xmm2
38e2fa	call   0x3930ac
38e2ff	movss  DWORD PTR [rsi+0x218],xmm0
38e307	movss  xmm2,DWORD PTR [rsi+0x1fc]
38e30f	movss  xmm1,DWORD PTR [rsi+0x5c]
38e314	movss  xmm0,DWORD PTR [rsi+0x54]
38e319	subss  xmm2,DWORD PTR [rsi+0x88]
38e321	call   0x38a3f4
38e326	addss  xmm0,xmm2
38e32a	call   0x3930ac
38e32f	movss  DWORD PTR [rsi+0x21c],xmm0
38e337	addss  xmm4,DWORD PTR [rsi+0x218]
38e33f	movss  DWORD PTR [rsi+0x220],xmm4
38e347	addss  xmm3,DWORD PTR [rsi+0x21c]
38e34f	movss  DWORD PTR [rsi+0x224],xmm3
38e357	movups xmm0,XMMWORD PTR [rsi+0x218]
38e35e	movdqu XMMWORD PTR [rsi+0x228],xmm0
38e366	movss  xmm1,DWORD PTR [rsi+0x20]
38e36b	subss  xmm1,DWORD PTR [rsi+0x84]
38e373	addss  xmm1,DWORD PTR [rdx]
38e377	addss  xmm1,DWORD PTR [rsi+0x60]
38e37c	movss  DWORD PTR [rsi+0x248],xmm1
38e384	movss  xmm0,DWORD PTR [rsi+0x24]
38e389	subss  xmm0,DWORD PTR [rsi+0x88]
38e391	addss  xmm0,DWORD PTR [rsi+0x54]
38e396	addss  xmm0,DWORD PTR [rsi+0x64]
38e39b	movss  DWORD PTR [rsi+0x24c],xmm0
38e3a3	movss  xmm1,DWORD PTR [rsi+0x48]
38e3a8	ucomiss xmm1,xmm8
38e3ac	jp     0x38e3cf
38e3ae	jne    0x38e3cf
38e3b0	movss  xmm0,DWORD PTR [rdx]
38e3b4	movss  xmm1,DWORD PTR [rsi+0x28]
38e3b9	addss  xmm0,xmm0
38e3bd	subss  xmm1,xmm0
38e3c1	movss  xmm0,DWORD PTR [rsi+0x68]
38e3c6	addss  xmm0,DWORD PTR [rsi+0x60]
38e3cb	subss  xmm1,xmm0
38e3cf	addss  xmm1,DWORD PTR [rsi+0x248]
38e3d7	movss  DWORD PTR [rsi+0x250],xmm1
38e3df	movss  xmm2,DWORD PTR [rsi+0x4c]
38e3e4	ucomiss xmm2,xmm8
38e3e8	jp     0x38e40c
38e3ea	jne    0x38e40c
38e3ec	movss  xmm0,DWORD PTR [rsi+0x54]
38e3f1	movss  xmm2,DWORD PTR [rsi+0x2c]
38e3f6	addss  xmm0,xmm0
38e3fa	subss  xmm2,xmm0
38e3fe	movss  xmm0,DWORD PTR [rsi+0x6c]
38e403	addss  xmm0,DWORD PTR [rsi+0x64]
38e408	subss  xmm2,xmm0
38e40c	addss  xmm2,DWORD PTR [rsi+0x24c]
38e414	lea    rcx,[rbp+0x108]
38e41b	movss  DWORD PTR [rsi+0x254],xmm2
38e423	movss  xmm0,DWORD PTR [rsi+0x60]
38e428	addss  xmm0,DWORD PTR [rdx]
38e42c	subss  xmm0,DWORD PTR [rsi+0x84]
38e434	movss  DWORD PTR [rsi+0x144],xmm0
38e43c	mov    QWORD PTR [rsi+0x148],r13
38e443	movss  xmm7,DWORD PTR [rdx]
38e447	movss  xmm0,DWORD PTR [rsi+0x20]
38e44c	movss  xmm1,DWORD PTR [rsi+0x84]
38e454	movss  xmm6,DWORD PTR [rsi+0x54]
38e459	cvtps2pd xmm0,xmm0
38e45c	cvtps2pd xmm7,xmm7
38e45f	cvtps2pd xmm1,xmm1
38e462	addsd  xmm7,xmm0
38e466	movss  xmm0,DWORD PTR [rsi+0x60]
38e46b	cvtps2pd xmm0,xmm0
38e46e	subsd  xmm7,xmm1
38e472	movss  xmm1,DWORD PTR [rsi+0x88]
38e47a	cvtps2pd xmm6,xmm6
38e47d	addsd  xmm7,xmm0
38e481	movss  xmm0,DWORD PTR [rsi+0x24]
38e486	cvtps2pd xmm0,xmm0
38e489	addsd  xmm7,QWORD PTR [rip+0xfffffffffff1bc9f]        # 0x2aa130
38e491	addsd  xmm6,xmm0
38e495	movss  xmm0,DWORD PTR [rsi+0x64]
38e49a	cvtps2pd xmm1,xmm1
38e49d	cvtps2pd xmm0,xmm0
38e4a0	subsd  xmm6,xmm1
38e4a4	cvtpd2ps xmm1,xmm7
38e4a8	addsd  xmm6,xmm0
38e4ac	cvtpd2ps xmm2,xmm6
38e4b0	call   0x2cc340
38e4b5	lea    rcx,[rbp+0x108]
38e4bc	movss  xmm0,DWORD PTR [rax+0x4]
38e4c1	mov    eax,DWORD PTR [rax]
38e4c3	mov    DWORD PTR [rsi+0x110],eax
38e4c9	movss  DWORD PTR [rsi+0x114],xmm0
38e4d1	movss  xmm0,DWORD PTR [rsi+0x114]
38e4d9	movss  xmm1,DWORD PTR [rsi+0x110]
38e4e1	cvtps2pd xmm1,xmm1
38e4e4	cvtps2pd xmm0,xmm0
38e4e7	subsd  xmm7,xmm1
38e4eb	subsd  xmm6,xmm0
38e4ef	cvtpd2ps xmm1,xmm7
38e4f3	cvtpd2ps xmm2,xmm6
38e4f7	call   0x2cc340
38e4fc	lea    rcx,[rbp+0x108]
38e503	movss  xmm0,DWORD PTR [rax+0x4]
38e508	mov    eax,DWORD PTR [rax]
38e50a	mov    DWORD PTR [rsi+0x150],eax
38e510	movss  DWORD PTR [rsi+0x154],xmm0
38e518	movss  xmm1,DWORD PTR [rsi+0x110]
38e520	movss  xmm2,DWORD PTR [rsi+0x114]
38e528	movss  DWORD PTR [rsi+0x100],xmm1
38e530	movss  DWORD PTR [rsi+0x104],xmm2
38e538	movss  DWORD PTR [rsi+0x108],xmm1
38e540	movss  DWORD PTR [rsi+0x10c],xmm2
38e548	xorps  xmm2,xmm2
38e54b	movsd  xmm0,QWORD PTR [rsi+0x110]
38e553	movsd  QWORD PTR [rsi+0x118],xmm0
38e55b	movsd  xmm1,QWORD PTR [rsi+0x110]
38e563	movsd  QWORD PTR [rsi+0x120],xmm1
38e56b	xorps  xmm1,xmm1
38e56e	call   0x2cc340
38e573	movss  xmm0,DWORD PTR [rax+0x4]
38e578	mov    eax,DWORD PTR [rax]
38e57a	mov    DWORD PTR [rsi+0x130],eax
38e580	movss  DWORD PTR [rsi+0x134],xmm0
38e588	movsd  xmm0,QWORD PTR [rsi+0x130]
38e590	movsd  QWORD PTR [rsi+0x128],xmm0
38e598	mov    QWORD PTR [rsi+0x138],r13
38e59f	mov    WORD PTR [rsi+0x140],r13w
38e5a7	mov    DWORD PTR [rsi+0x158],r13d
38e5ae	movzx  eax,WORD PTR [rsi+0x15e]
38e5b5	mov    WORD PTR [rsi+0x15c],ax
38e5bc	mov    DWORD PTR [rsi+0x15e],0x10000
38e5c6	movss  xmm0,DWORD PTR [rsi+0x90]
38e5ce	comiss xmm0,xmm8
38e5d2	seta   al
38e5d5	mov    r8b,BYTE PTR [rsp+0x6c]
38e5da	lea    rcx,[rsi+0x16c]
38e5e1	mov    BYTE PTR [rsi+0x162],al
38e5e7	mov    BYTE PTR [rsi+0x163],r13b
38e5ee	movss  xmm1,DWORD PTR [r14+0x381c]
38e5f7	call   0x3c5384
38e5fc	lea    rcx,[rsi+0x190]
38e603	mov    QWORD PTR [rsi+0x188],r13
38e60a	xor    edx,edx
38e60c	call   0x37ad34
38e611	mov    r15,QWORD PTR [rbp-0x80]
38e615	lea    rax,[rsi+0x270]
38e61c	mov    QWORD PTR [rsi+0x1a0],rax
38e623	mov    QWORD PTR [rsi+0x1a8],r13
38e62a	mov    DWORD PTR [rsi+0x1b4],edi
38e630	test   r15,r15
38e633	je     0x38e63e
38e635	mov    eax,DWORD PTR [r15+0x1b4]
38e63c	jmp    0x38e640
38e63e	mov    eax,edi
38e640	mov    DWORD PTR [rsi+0x1b8],eax
38e646	lea    rcx,[rsi+0x1c8]
38e64d	mov    eax,DWORD PTR [rsi+0x268]
38e653	xor    edx,edx
38e655	mov    DWORD PTR [rsi+0x1bc],eax
38e65b	mov    DWORD PTR [rsi+0x1c0],0xbf800000
38e665	call   0x364ef0
38e66a	lea    rcx,[rsi+0x1d8]
38e671	xor    edx,edx
38e673	call   0x364ef0
38e678	mov    al,BYTE PTR [rsi+0xd0]
38e67e	test   al,al
38e680	jle    0x38e68a
38e682	dec    al
38e684	mov    BYTE PTR [rsi+0xd0],al
38e68a	mov    al,BYTE PTR [rsi+0xd1]
38e690	test   al,al
38e692	jle    0x38e69c
38e694	dec    al
38e696	mov    BYTE PTR [rsi+0xd1],al
38e69c	test   bl,bl
38e69e	je     0x38e6c0
38e6a0	mov    edx,0x2
38e6a5	mov    rcx,rsi
38e6a8	call   0x391efc
38e6ad	cmp    rsi,QWORD PTR [r14+0x48e8]
38e6b4	jne    0x38e6c0
38e6b6	xor    edx,edx
38e6b8	mov    rcx,rsi
38e6bb	call   0x395500
38e6c0	cmp    DWORD PTR [rbp-0x68],r13d
38e6c4	jne    0x38e70c
38e6c6	movss  xmm3,DWORD PTR [rbp-0x40]
38e6cb	lea    rcx,[rbp-0x10]
38e6cf	movss  xmm1,DWORD PTR [rbp-0x48]
38e6d4	movss  xmm0,DWORD PTR [rbp-0x3c]
38e6d9	subss  xmm3,DWORD PTR [rsi+0x5c]
38e6de	addss  xmm1,DWORD PTR [rsi+0x5c]
38e6e3	movss  xmm2,DWORD PTR [rbp-0x44]
38e6e8	movss  DWORD PTR [rsp+0x20],xmm0
38e6ee	call   0x38baf4
38e6f3	mov    r9,QWORD PTR [rbp+0xf8]
38e6fa	mov    rdx,rax
38e6fd	mov    r8,QWORD PTR [rbp+0xf0]
38e704	mov    rcx,rsi
38e707	call   0x39a7a8
38e70c	xor    r8d,r8d
38e70f	mov    DWORD PTR [rsi+0x258],r13d
38e716	lea    rdx,[rbp-0x40]
38e71a	lea    rcx,[rbp-0x48]
38e71e	call   0x3944ac
38e723	mov    edx,DWORD PTR [r14+0x4788]
38e72a	lea    r9,[rbp-0x48]
38e72e	mov    ecx,DWORD PTR [rsi+0x7c]
38e731	movzx  r8d,al
38e735	call   0x39b660
38e73a	jmp    0x38e74b
38e73c	mov    rcx,rsi
38e73f	call   0x39b348
38e744	mov    r15,QWORD PTR [rbp-0x80]
38e748	xor    r13d,r13d
38e74b	lea    rcx,[rsi+0x208]
38e752	mov    r8b,0x1
38e755	lea    rdx,[rcx+0x8]
38e759	mov    edi,r12d
38e75c	mov    ebx,r12d
38e75f	call   0x3989f8
38e764	mov    eax,0x1
38e769	mov    BYTE PTR [rsi+0xb8],r13b
38e770	add    WORD PTR [rsi+0xc2],ax
38e777	lea    rcx,[r14+0x47e0]
38e77e	call   0x3900f8
38e783	mov    eax,DWORD PTR [rsp+0x58]
38e787	cmp    eax,DWORD PTR [rsp+0x70]
38e78b	je     0x38e8f1
38e791	bt     ebx,0x18
38e795	jae    0x38e855
38e79b	test   dil,0x40
38e79f	jne    0x38e816
38e7a1	cmp    BYTE PTR [rsi+0xd0],r13b
38e7a8	jg     0x38e816
38e7aa	cmp    BYTE PTR [rsi+0xd1],r13b
38e7b1	jg     0x38e816
38e7b3	bt     r12d,0x17
38e7b8	jae    0x38e7e1
38e7ba	cmp    BYTE PTR [r14+0x4928],r13b
38e7c1	je     0x38e7e1
38e7c3	mov    rcx,QWORD PTR [r14+0x48e8]
38e7ca	test   rcx,rcx
38e7cd	je     0x38e7e1
38e7cf	mov    rax,QWORD PTR [rsi+0x390]
38e7d6	cmp    QWORD PTR [rcx+0x390],rax
38e7dd	mov    al,0x1
38e7df	je     0x38e7e4
38e7e1	mov    al,r13b
38e7e4	or     al,BYTE PTR [r14+0x5c90]
38e7eb	jne    0x38e816
38e7ed	movss  xmm0,DWORD PTR [rsi+0x1e8]
38e7f5	comiss xmm0,DWORD PTR [rsi+0x1f0]
38e7fc	jae    0x38e80f
38e7fe	movss  xmm0,DWORD PTR [rsi+0x1ec]
38e806	comiss xmm0,DWORD PTR [rsi+0x1f4]
38e80d	jb     0x38e816
38e80f	mov    BYTE PTR [rsi+0xd8],0x1
38e816	test   r15,r15
38e819	je     0x38e855
38e81b	cmp    BYTE PTR [r15+0xb9],r13b
38e822	jne    0x38e82d
38e824	cmp    BYTE PTR [r15+0xd8],r13b
38e82b	jle    0x38e834
38e82d	mov    BYTE PTR [rsi+0xd8],0x1
38e834	cmp    BYTE PTR [r15+0xb9],r13b
38e83b	jne    0x38e846
38e83d	cmp    BYTE PTR [r15+0xd9],r13b
38e844	jle    0x38e855
38e846	mov    r15d,0x1
38e84c	mov    BYTE PTR [rsi+0xd9],r15b
38e853	jmp    0x38e85b
38e855	mov    r15d,0x1
38e85b	comiss xmm8,DWORD PTR [r14+0x37d0]
38e863	jb     0x38e86c
38e865	mov    BYTE PTR [rsi+0xd8],r15b
38e86c	cmp    BYTE PTR [rsi+0xd8],r13b
38e873	jg     0x38e88f
38e875	cmp    BYTE PTR [rsi+0xd9],r13b
38e87c	jg     0x38e88f
38e87e	mov    cl,r13b
38e881	cmp    BYTE PTR [rsi+0xda],r13b
38e888	jg     0x38e892
38e88a	mov    al,r13b
38e88d	jmp    0x38e895
38e88f	mov    cl,r15b
38e892	mov    al,r15b
38e895	mov    BYTE PTR [rsi+0xbd],al
38e89b	mov    al,BYTE PTR [rsi+0xdb]
38e8a1	test   al,al
38e8a3	jle    0x38e8b4
38e8a5	dec    al
38e8a7	mov    BYTE PTR [rsi+0xdb],al
38e8ad	or     DWORD PTR [rsi+0x14],0xc0200
38e8b4	movzx  eax,r13b
38e8b8	cmp    BYTE PTR [rsi+0xb9],r13b
38e8bf	jne    0x38e8ce
38e8c1	cmp    BYTE PTR [rsi+0xb6],r13b
38e8c8	je     0x38e8ce
38e8ca	test   cl,cl
38e8cc	je     0x38e8eb
38e8ce	cmp    BYTE PTR [rsi+0xd0],r13b
38e8d5	jg     0x38e8eb
38e8d7	cmp    BYTE PTR [rsi+0xd1],r13b
38e8de	jg     0x38e8eb
38e8e0	cmp    BYTE PTR [rsi+0xd9],r13b
38e8e7	cmovle eax,r15d
38e8eb	mov    BYTE PTR [rsi+0xbb],al
38e8f1	cmp    BYTE PTR [rsi+0xbe],r13b
38e8f8	jne    0x38e94b
38e8fa	cmp    BYTE PTR [r14+0x84],r13b
38e901	je     0x38e909
38e903	cmp    QWORD PTR [rbp-0x78],r13
38e907	je     0x38e923
38e909	cmp    BYTE PTR [r14+0x85],r13b
38e910	je     0x38e94b
38e912	movsx  eax,BYTE PTR [r14+0x5d02]
38e91a	cmp    eax,DWORD PTR [r14+0x3ed8]
38e921	jne    0x38e94b
38e923	mov    al,BYTE PTR [rsi+0xd0]
38e929	test   al,al
38e92b	jle    0x38e935
38e92d	inc    al
38e92f	mov    BYTE PTR [rsi+0xd0],al
38e935	mov    al,BYTE PTR [rsi+0xd1]
38e93b	test   al,al
38e93d	jle    0x38e947
38e93f	inc    al
38e941	mov    BYTE PTR [rsi+0xd1],al
38e947	xor    al,al
38e949	jmp    0x38e955
38e94b	cmp    BYTE PTR [rsi+0xbb],r13b
38e952	sete   al
38e955	lea    r11,[rsp+0x1a8]
38e95d	movaps xmm6,XMMWORD PTR [r11-0x18]
38e962	movaps xmm7,XMMWORD PTR [r11-0x28]
38e967	movaps xmm8,XMMWORD PTR [r11-0x38]
38e96c	mov    rsp,r11
38e96f	pop    r15
38e971	pop    r14
38e973	pop    r13
38e975	pop    r12
38e977	pop    rdi
38e978	pop    rsi
38e979	pop    rbx
38e97a	pop    rbp
38e97b	ret
