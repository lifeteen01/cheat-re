39b348	mov    QWORD PTR [rsp+0x8],rbx
39b34d	push   rdi
39b34e	sub    rsp,0x20
39b352	mov    rdi,QWORD PTR [rip+0x6a7cf]        # 0x405b28
39b359	mov    rbx,rcx
39b35c	mov    QWORD PTR [rdi+0x3f08],rcx
39b363	test   rcx,rcx
39b366	je     0x39b381
39b368	mov    edx,DWORD PTR [rcx+0x1b0]
39b36e	cmp    edx,0xffffffff
39b371	je     0x39b381
39b373	lea    rcx,[rdi+0x4b68]
39b37a	call   0x3921c0
39b37f	jmp    0x39b383
39b381	xor    eax,eax
39b383	mov    QWORD PTR [rdi+0x4b48],rax
39b38a	test   rbx,rbx
39b38d	je     0x39b3ac
39b38f	mov    rcx,rbx
39b392	call   0x38f1fc
39b397	movss  DWORD PTR [rdi+0x3c48],xmm0
39b39f	movss  DWORD PTR [rdi+0x3c30],xmm0
39b3a7	call   0x3970f0
39b3ac	mov    rbx,QWORD PTR [rsp+0x30]
39b3b1	add    rsp,0x20
39b3b5	pop    rdi
39b3b6	ret
