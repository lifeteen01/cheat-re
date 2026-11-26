38fbe8	rex push rbp
38fbea	push   rbx
38fbeb	push   rsi
38fbec	push   rdi
38fbed	mov    rbp,rsp
38fbf0	sub    rsp,0x68
38fbf4	mov    rdi,QWORD PTR [rip+0x75f2d]        # 0x405b28
38fbfb	mov    rsi,rdx
38fbfe	movsd  xmm0,QWORD PTR [r8]
38fc03	mov    rbx,rcx
38fc06	movaps XMMWORD PTR [rsp+0x50],xmm6
38fc0b	movsd  QWORD PTR [rcx],xmm0
38fc0f	test   BYTE PTR [rdi+0x47e0],0x10
38fc16	movaps XMMWORD PTR [rsp+0x40],xmm7
38fc1b	xorps  xmm7,xmm7
38fc1e	je     0x38fd0d
38fc24	movss  xmm1,DWORD PTR [rdi+0x481c]
38fc2c	comiss xmm1,xmm7
38fc2f	movss  xmm4,DWORD PTR [rdi+0x4820]
38fc37	movss  xmm3,DWORD PTR [rdi+0x4828]
38fc3f	jb     0x38fc59
38fc41	movss  xmm2,DWORD PTR [rdi+0x4824]
38fc49	comiss xmm2,xmm7
38fc4c	jb     0x38fc59
38fc4e	movss  xmm0,DWORD PTR [rcx]
38fc52	call   0x3762bc
38fc57	jmp    0x38fc5e
38fc59	movss  xmm0,DWORD PTR [rdx+0x30]
38fc5e	comiss xmm4,xmm7
38fc61	movss  DWORD PTR [rcx],xmm0
38fc65	jb     0x38fc7e
38fc67	comiss xmm3,xmm7
38fc6a	jb     0x38fc7e
38fc6c	movss  xmm0,DWORD PTR [rcx+0x4]
38fc71	movaps xmm2,xmm3
38fc74	movaps xmm1,xmm4
38fc77	call   0x3762bc
38fc7c	jmp    0x38fc83
38fc7e	movss  xmm0,DWORD PTR [rdx+0x34]
38fc83	movss  DWORD PTR [rcx+0x4],xmm0
38fc88	cmp    QWORD PTR [rdi+0x4830],0x0
38fc90	je     0x38fcfe
38fc92	lea    rcx,[rbp-0x48]
38fc96	call   0x38b1c4
38fc9b	movss  xmm0,DWORD PTR [rsi+0x20]
38fca0	lea    rcx,[rbp-0x48]
38fca4	movss  xmm1,DWORD PTR [rsi+0x24]
38fca9	mov    rax,QWORD PTR [rdi+0x4838]
38fcb0	movss  DWORD PTR [rbp-0x40],xmm0
38fcb5	movss  xmm0,DWORD PTR [rsi+0x30]
38fcba	movss  DWORD PTR [rbp-0x3c],xmm1
38fcbf	movss  xmm1,DWORD PTR [rsi+0x34]
38fcc4	movss  DWORD PTR [rbp-0x38],xmm0
38fcc9	movss  xmm0,DWORD PTR [rbx]
38fccd	movss  DWORD PTR [rbp-0x34],xmm1
38fcd2	movss  xmm1,DWORD PTR [rbx+0x4]
38fcd7	movss  DWORD PTR [rbp-0x30],xmm0
38fcdc	movss  DWORD PTR [rbp-0x2c],xmm1
38fce1	mov    QWORD PTR [rbp-0x48],rax
38fce5	call   QWORD PTR [rdi+0x4830]
38fceb	movss  xmm0,DWORD PTR [rbp-0x30]
38fcf0	movss  xmm1,DWORD PTR [rbp-0x2c]
38fcf5	movss  DWORD PTR [rbx],xmm0
38fcf9	movss  DWORD PTR [rbx+0x4],xmm1
38fcfe	movsd  xmm0,QWORD PTR [rbx]
38fd02	cvttps2dq xmm0,xmm0
38fd06	cvtdq2ps xmm1,xmm0
38fd09	movsd  QWORD PTR [rbx],xmm1
38fd0d	test   DWORD PTR [rsi+0x14],0x1000040
38fd14	jne    0x38fd76
38fd16	lea    r8,[rdi+0x37e8]
38fd1d	mov    rdx,rbx
38fd20	lea    rcx,[rbp+0x28]
38fd24	call   0x383044
38fd29	mov    rcx,rsi
38fd2c	movsd  xmm1,QWORD PTR [rax]
38fd30	movsd  QWORD PTR [rbx],xmm1
38fd34	call   0x3951a4
38fd39	mov    rcx,rsi
38fd3c	movaps xmm6,xmm0
38fd3f	call   0x39bf80
38fd44	movss  xmm1,DWORD PTR [rdi+0x37e0]
38fd4c	addss  xmm6,xmm0
38fd50	subss  xmm1,DWORD PTR [rip+0xffffffffffefd4fc]        # 0x28d254
38fd58	xorps  xmm0,xmm0
38fd5b	call   0x38a3f4
38fd60	addss  xmm6,xmm0
38fd64	movss  xmm0,DWORD PTR [rbx+0x4]
38fd69	movaps xmm1,xmm6
38fd6c	call   0x38a3f4
38fd71	movss  DWORD PTR [rbx+0x4],xmm0
38fd76	movaps xmm6,XMMWORD PTR [rsp+0x50]
38fd7b	mov    rax,rbx
38fd7e	movaps xmm7,XMMWORD PTR [rsp+0x40]
38fd83	add    rsp,0x68
38fd87	pop    rdi
38fd88	pop    rsi
38fd89	pop    rbx
38fd8a	pop    rbp
38fd8b	ret
