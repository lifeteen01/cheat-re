39bf80	sub    rsp,0x38
39bf84	test   BYTE PTR [rcx+0x14],0x1
39bf88	movaps XMMWORD PTR [rsp+0x20],xmm6
39bf8d	je     0x39bf94
39bf8f	xorps  xmm0,xmm0
39bf92	jmp    0x39bfac
39bf94	mov    rax,QWORD PTR [rcx]
39bf97	movss  xmm6,DWORD PTR [rax+0x3810]
39bf9f	call   0x38f1fc
39bfa4	addss  xmm6,xmm6
39bfa8	addss  xmm0,xmm6
39bfac	movaps xmm6,XMMWORD PTR [rsp+0x20]
39bfb1	add    rsp,0x38
39bfb5	ret
