368f50	mov    QWORD PTR [rsp+0x8],rbx
368f55	mov    QWORD PTR [rsp+0x10],rsi
368f5a	push   rdi
368f5b	sub    rsp,0x30
368f5f	movaps XMMWORD PTR [rsp+0x20],xmm6
368f64	call   0x2dda9c
368f69	mov    rcx,rax
368f6c	mov    rdx,rax
368f6f	call   0x2caf08
368f74	test   al,al
368f76	je     0x369025
368f7c	mov    rcx,rdx
368f7f	call   0x369324
368f84	mov    rcx,rax
368f87	mov    rdx,rax
368f8a	call   0x2caf08
368f8f	test   al,al
368f91	je     0x369025
368f97	mov    rcx,rdx
368f9a	call   0x373e20
368f9f	mov    rcx,rax
368fa2	mov    rsi,rax
368fa5	call   0x2caf08
368faa	test   al,al
368fac	je     0x369025
368fae	mov    rcx,rsi
368fb1	call   0x37224c
368fb6	mov    edi,eax
368fb8	test   eax,eax
368fba	jle    0x369025
368fbc	xorps  xmm6,xmm6
368fbf	xor    ebx,ebx
368fc1	mov    edx,ebx
368fc3	mov    rcx,rsi
368fc6	call   0x3722f0
368fcb	mov    rcx,rax
368fce	mov    rdx,rax
368fd1	call   0x2caf08
368fd6	test   al,al
368fd8	je     0x369025
368fda	mov    rdx,QWORD PTR [rdx+0x10]
368fde	mov    rcx,rdx
368fe1	call   0x2caf08
368fe6	test   al,al
368fe8	je     0x369025
368fea	mov    rdx,QWORD PTR [rdx+0x1b8]
368ff1	mov    rcx,rdx
368ff4	call   0x2caf08
368ff9	test   al,al
368ffb	je     0x369025
368ffd	mov    rdx,QWORD PTR [rdx+0x50]
369001	mov    rcx,rdx
369004	call   0x2caf08
369009	test   al,al
36900b	je     0x369025
36900d	addss  xmm6,DWORD PTR [rdx+0x18]
369012	inc    ebx
369014	cmp    ebx,edi
369016	jl     0x368fc1
369018	xorps  xmm1,xmm1
36901b	movaps xmm0,xmm6
36901e	call   0x2e1270
369023	jmp    0x369028
369025	xorps  xmm0,xmm0
369028	mov    rbx,QWORD PTR [rsp+0x40]
36902d	mov    rsi,QWORD PTR [rsp+0x48]
369032	movaps xmm6,XMMWORD PTR [rsp+0x20]
369037	add    rsp,0x30
36903b	pop    rdi
36903c	ret
