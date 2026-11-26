390994	mov    QWORD PTR [rsp+0x8],rbx
390999	mov    QWORD PTR [rsp+0x10],rsi
39099e	push   rdi
39099f	sub    rsp,0x20
3909a3	mov    rbx,QWORD PTR [rip+0x7517e]        # 0x405b28
3909aa	lea    rdi,[rbx+0x3ed8]
3909b1	cmp    DWORD PTR [rdi],0x1
3909b4	jg     0x3909c3
3909b6	cmp    BYTE PTR [rbx+0x3e6d],0x0
3909bd	jne    0x390a78
3909c3	mov    rsi,QWORD PTR [rbx+0x3f08]
3909ca	cmp    QWORD PTR [rsi+0x1a8],0x0
3909d2	je     0x3909d9
3909d4	call   0x3b4f94
3909d9	call   0x39878c
3909de	call   0x3987d8
3909e3	test   DWORD PTR [rsi+0x14],0x1000000
3909ea	jne    0x3909f1
3909ec	call   0x394dd4
3909f1	cmp    BYTE PTR [rsi+0x141],0x0
3909f8	je     0x3909ff
3909fa	call   0x391184
3909ff	mov    rcx,rdi
390a02	call   0x39e370
390a07	movups xmm0,XMMWORD PTR [rax+0x8]
390a0b	movups XMMWORD PTR [rbx+0x47a4],xmm0
390a12	movups xmm1,XMMWORD PTR [rax+0x18]
390a16	movups XMMWORD PTR [rbx+0x47b4],xmm1
390a1d	movups xmm0,XMMWORD PTR [rax+0x28]
390a21	movups XMMWORD PTR [rbx+0x47c4],xmm0
390a28	movups xmm1,XMMWORD PTR [rax+0x34]
390a2c	movups XMMWORD PTR [rbx+0x47d0],xmm1
390a33	test   DWORD PTR [rsi+0x14],0x10000000
390a3a	je     0x390a42
390a3c	dec    DWORD PTR [rbx+0x48d0]
390a42	test   DWORD PTR [rsi+0x14],0x4000000
390a49	je     0x390a57
390a4b	lea    rcx,[rbx+0x48c0]
390a52	call   0x39eea0
390a57	mov    rcx,rdi
390a5a	call   0x39eea0
390a5f	cmp    DWORD PTR [rdi],0x0
390a62	jne    0x390a68
390a64	xor    ecx,ecx
390a66	jmp    0x390a73
390a68	mov    rcx,rdi
390a6b	call   0x39e370
390a70	mov    rcx,QWORD PTR [rax]
390a73	call   0x39b348
390a78	mov    rbx,QWORD PTR [rsp+0x30]
390a7d	mov    rsi,QWORD PTR [rsp+0x38]
390a82	add    rsp,0x20
390a86	pop    rdi
390a87	ret
