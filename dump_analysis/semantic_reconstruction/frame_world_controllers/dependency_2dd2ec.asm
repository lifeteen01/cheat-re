2dd2ec	rex push rbp
2dd2ee	push   rbx
2dd2ef	push   rsi
2dd2f0	push   rdi
2dd2f1	push   r14
2dd2f3	push   r15
2dd2f5	lea    rbp,[rsp-0x2f]
2dd2fa	sub    rsp,0x88
2dd301	movaps XMMWORD PTR [rsp+0x70],xmm6
2dd306	call   0x2dd5e8
2dd30b	lea    rcx,[rip+0xfffffffffff3b486]        # 0x218798
2dd312	call   0x2d79c0
2dd317	lea    rcx,[rip+0xfffffffffff3b47a]        # 0x218798
2dd31e	mov    rdi,rax
2dd321	call   0x2d1978
2dd326	mov    rbx,rax
2dd329	cmp    rax,rdi
2dd32c	je     0x2dd33f
2dd32e	mov    rcx,QWORD PTR [rbx]
2dd331	mov    rdx,QWORD PTR [rcx]
2dd334	call   QWORD PTR [rdx]
2dd336	add    rbx,0x8
2dd33a	cmp    rbx,rdi
2dd33d	jne    0x2dd32e
2dd33f	lea    r15,[rip+0xf9a72]        # 0x3d6db8
2dd346	mov    rcx,r15
2dd349	call   0x2dd990
2dd34e	lea    rdi,[rip+0xf9b53]        # 0x3d6ea8
2dd355	mov    rbx,rax
2dd358	mov    rcx,rdi
2dd35b	call   0x2d93e8
2dd360	cmp    rax,rbx
2dd363	jne    0x2dd528
2dd369	lea    rcx,[rbp-0x21]
2dd36d	call   0x2d4758
2dd372	mov    rcx,rdi
2dd375	call   0x2d79c0
2dd37a	mov    rcx,rdi
2dd37d	mov    rsi,rax
2dd380	call   0x2d1978
2dd385	mov    rdi,rax
2dd388	cmp    rax,rsi
2dd38b	je     0x2dd4fa
2dd391	lea    rdx,[rip+0xfffffffffffb0248]        # 0x28d5e0
2dd398	lea    rcx,[rbp-0x9]
2dd39c	call   0x2cc2cc
2dd3a1	lea    r8,[rbp-0x9]
2dd3a5	mov    rdx,rdi
2dd3a8	lea    rcx,[rbp-0x39]
2dd3ac	call   0x2d93fc
2dd3b1	lea    rcx,[rbp-0x9]
2dd3b5	call   0x2cc4f4
2dd3ba	lea    rcx,[rbp-0x39]
2dd3be	call   0x2d93e8
2dd3c3	cmp    rax,0x5
2dd3c7	jb     0x2dd4e4
2dd3cd	xor    edx,edx
2dd3cf	lea    rcx,[rbp-0x39]
2dd3d3	call   0x2d4d20
2dd3d8	mov    rdx,rax
2dd3db	lea    rcx,[rbp-0x9]
2dd3df	call   0x2d4194
2dd3e4	mov    rcx,r15
2dd3e7	call   0x2d1978
2dd3ec	mov    rcx,r15
2dd3ef	mov    rbx,rax
2dd3f2	call   0x2d79c0
2dd3f7	mov    r14,rax
2dd3fa	cmp    rbx,rax
2dd3fd	je     0x2dd4db
2dd403	lea    rdx,[rbp-0x9]
2dd407	mov    rcx,rbx
2dd40a	call   0x2cef30
2dd40f	test   al,al
2dd411	jne    0x2dd421
2dd413	add    rbx,0x68
2dd417	cmp    rbx,r14
2dd41a	jne    0x2dd403
2dd41c	jmp    0x2dd4db
2dd421	mov    edx,0x1
2dd426	lea    rcx,[rbp-0x39]
2dd42a	call   0x2d4d20
2dd42f	xor    edx,edx
2dd431	mov    rcx,rax
2dd434	lea    r8d,[rdx+0xa]
2dd438	call   0x2d8cc0
2dd43d	mov    edx,0x2
2dd442	mov    DWORD PTR [rbx+0x20],eax
2dd445	lea    rcx,[rbp-0x39]
2dd449	call   0x2d4d20
2dd44e	xor    edx,edx
2dd450	mov    rcx,rax
2dd453	lea    r8d,[rdx+0xa]
2dd457	call   0x2d8cc0
2dd45c	test   eax,eax
2dd45e	lea    rcx,[rbp-0x39]
2dd462	mov    edx,0x4
2dd467	setne  al
2dd46a	mov    BYTE PTR [rbx+0x2c],al
2dd46d	call   0x2d4d20
2dd472	xor    edx,edx
2dd474	mov    rcx,rax
2dd477	lea    r8d,[rdx+0xa]
2dd47b	call   0x2d8cc0
2dd480	mov    edx,0x3
2dd485	lea    rcx,[rbp-0x39]
2dd489	movd   xmm6,eax
2dd48d	cvtdq2ps xmm6,xmm6
2dd490	divss  xmm6,DWORD PTR [rip+0xfffffffffffb0168]        # 0x28d600
2dd498	call   0x2d4d20
2dd49d	xor    edx,edx
2dd49f	mov    rcx,rax
2dd4a2	lea    r8d,[rdx+0xa]
2dd4a6	call   0x2d8cc0
2dd4ab	lea    rcx,[rbp+0x67]
2dd4af	movd   xmm1,eax
2dd4b3	movaps xmm2,xmm6
2dd4b6	cvtdq2ps xmm1,xmm1
2dd4b9	divss  xmm1,DWORD PTR [rip+0xfffffffffffb013f]        # 0x28d600
2dd4c1	call   0x2cc340
2dd4c6	mov    rdx,rbx
2dd4c9	lea    rcx,[rbp-0x21]
2dd4cd	movsd  xmm0,QWORD PTR [rax]
2dd4d1	movsd  QWORD PTR [rbx+0x24],xmm0
2dd4d6	call   0x2dd5e0
2dd4db	lea    rcx,[rbp-0x9]
2dd4df	call   0x2cc4f4
2dd4e4	lea    rcx,[rbp-0x39]
2dd4e8	call   0x2d4a80
2dd4ed	add    rdi,0x20
2dd4f1	cmp    rdi,rsi
2dd4f4	jne    0x2dd391
2dd4fa	mov    rcx,r15
2dd4fd	call   0x2dd990
2dd502	lea    rcx,[rbp-0x21]
2dd506	mov    rbx,rax
2dd509	call   0x2dd990
2dd50e	cmp    rax,rbx
2dd511	jne    0x2dd51f
2dd513	lea    rdx,[rbp-0x21]
2dd517	mov    rcx,r15
2dd51a	call   0x2db73c
2dd51f	lea    rcx,[rbp-0x21]
2dd523	call   0x2db5c4
2dd528	movaps xmm6,XMMWORD PTR [rsp+0x70]
2dd52d	add    rsp,0x88
2dd534	pop    r15
2dd536	pop    r14
2dd538	pop    rdi
2dd539	pop    rsi
2dd53a	pop    rbx
2dd53b	pop    rbp
2dd53c	ret
