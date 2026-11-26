3a6e34	mov    QWORD PTR [rsp+0x8],rbx
3a6e39	push   rdi
3a6e3a	sub    rsp,0x20
3a6e3e	mov    rdi,rcx
3a6e41	add    rcx,0x58
3a6e45	call   0x39eea0
3a6e4a	mov    eax,DWORD PTR [rdi+0x58]
3a6e4d	test   eax,eax
3a6e4f	jne    0x3a6e5b
3a6e51	mov    rax,QWORD PTR [rdi+0x38]
3a6e55	add    rax,0x1c
3a6e59	jmp    0x3a6e67
3a6e5b	dec    eax
3a6e5d	cdqe
3a6e5f	shl    rax,0x4
3a6e63	add    rax,QWORD PTR [rdi+0x60]
3a6e67	movups xmm0,XMMWORD PTR [rax]
3a6e6a	mov    rcx,rdi
3a6e6d	movdqu XMMWORD PTR [rdi+0x88],xmm0
3a6e75	mov    rbx,QWORD PTR [rsp+0x30]
3a6e7a	add    rsp,0x20
3a6e7e	pop    rdi
3a6e7f	jmp    0x3a8d94
