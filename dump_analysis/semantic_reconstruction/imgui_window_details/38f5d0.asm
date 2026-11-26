38f5d0	mov    QWORD PTR [rsp+0x10],rbx
38f5d5	push   rbp
38f5d6	push   rsi
38f5d7	push   rdi
38f5d8	push   r14
38f5da	push   r15
38f5dc	mov    rbp,rsp
38f5df	sub    rsp,0x20
38f5e3	mov    r14,r9
38f5e6	mov    r15,r8
38f5e9	mov    r9,r8
38f5ec	mov    rsi,rcx
38f5ef	lea    r8,[rcx+0x20]
38f5f3	mov    rdi,rdx
38f5f6	lea    rcx,[rbp+0x48]
38f5fa	call   0x39340c
38f5ff	lea    r8,[rsi+0x28]
38f603	lea    rdx,[rsi+0x20]
38f607	lea    rcx,[rbp+0x30]
38f60b	call   0x2ef9d8
38f610	mov    rdx,rax
38f613	lea    rcx,[rbp+0x40]
38f617	mov    r9,r15
38f61a	mov    r8,rdi
38f61d	call   0x39340c
38f622	lea    r8,[rbp+0x48]
38f626	lea    rdx,[rbp+0x40]
38f62a	lea    rcx,[rbp+0x30]
38f62e	call   0x3367e4
38f633	lea    r8,[rbp+0x30]
38f637	mov    rdx,rsi
38f63a	lea    rcx,[rbp+0x40]
38f63e	call   0x38fbe8
38f643	movsd  xmm0,QWORD PTR [rbp+0x48]
38f648	xorps  xmm2,xmm2
38f64b	movsd  QWORD PTR [r14],xmm0
38f650	movss  xmm1,DWORD PTR [r15]
38f655	ucomiss xmm1,xmm2
38f658	jp     0x38f674
38f65a	jne    0x38f674
38f65c	movss  xmm0,DWORD PTR [r14]
38f661	movss  xmm1,DWORD PTR [rbp+0x40]
38f666	subss  xmm1,DWORD PTR [rbp+0x30]
38f66b	subss  xmm0,xmm1
38f66f	movss  DWORD PTR [r14],xmm0
38f674	movss  xmm0,DWORD PTR [r15+0x4]
38f67a	ucomiss xmm0,xmm2
38f67d	jp     0x38f69b
38f67f	jne    0x38f69b
38f681	movss  xmm0,DWORD PTR [r14+0x4]
38f687	movss  xmm1,DWORD PTR [rbp+0x44]
38f68c	subss  xmm1,DWORD PTR [rbp+0x34]
38f691	subss  xmm0,xmm1
38f695	movss  DWORD PTR [r14+0x4],xmm0
38f69b	mov    rax,QWORD PTR [rbp+0x50]
38f69f	movsd  xmm0,QWORD PTR [rbp+0x40]
38f6a4	mov    rbx,QWORD PTR [rsp+0x58]
38f6a9	movsd  QWORD PTR [rax],xmm0
38f6ad	add    rsp,0x20
38f6b1	pop    r15
38f6b3	pop    r14
38f6b5	pop    rdi
38f6b6	pop    rsi
38f6b7	pop    rbp
38f6b8	ret
