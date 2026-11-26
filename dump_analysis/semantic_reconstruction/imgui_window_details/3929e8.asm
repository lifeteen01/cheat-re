3929e8	mov    QWORD PTR [rsp+0x10],rbx
3929ed	push   rdi
3929ee	sub    rsp,0x40
3929f2	mov    rbx,QWORD PTR [rip+0x7312f]        # 0x405b28
3929f9	mov    rdi,rcx
3929fc	movaps XMMWORD PTR [rsp+0x30],xmm6
392a01	movaps XMMWORD PTR [rsp+0x20],xmm7
392a06	call   0x392868
392a0b	mov    rcx,rax
392a0e	mov    rdx,rdi
392a11	call   0x392828
392a16	movss  xmm6,DWORD PTR [rbx+0x3894]
392a1e	mov    rcx,rdi
392a21	movss  xmm7,DWORD PTR [rbx+0x3898]
392a29	call   0x378934
392a2e	movaps xmm1,xmm7
392a31	addss  xmm1,xmm7
392a35	comiss xmm0,xmm1
392a38	jbe    0x392a43
392a3a	xorps  xmm7,XMMWORD PTR [rip+0xfffffffffff0085f]        # 0x2932a0
392a41	jmp    0x392a46
392a43	xorps  xmm7,xmm7
392a46	mov    rcx,rdi
392a49	call   0x378970
392a4e	movaps xmm1,xmm6
392a51	addss  xmm1,xmm6
392a55	comiss xmm0,xmm1
392a58	jbe    0x392a63
392a5a	xorps  xmm6,XMMWORD PTR [rip+0xfffffffffff0083f]        # 0x2932a0
392a61	jmp    0x392a66
392a63	xorps  xmm6,xmm6
392a66	movaps xmm2,xmm7
392a69	lea    rcx,[rsp+0x50]
392a6e	movaps xmm1,xmm6
392a71	call   0x2cc340
392a76	mov    rdx,rax
392a79	mov    rcx,rdi
392a7c	call   0x3911cc
392a81	mov    rbx,QWORD PTR [rsp+0x58]
392a86	mov    rax,rdi
392a89	movaps xmm6,XMMWORD PTR [rsp+0x30]
392a8e	movaps xmm7,XMMWORD PTR [rsp+0x20]
392a93	add    rsp,0x40
392a97	pop    rdi
392a98	ret
