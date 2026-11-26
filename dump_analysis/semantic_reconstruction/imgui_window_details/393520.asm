393520	rex push rbx
393522	sub    rsp,0x20
393526	mov    r8,rdx
393529	mov    rbx,rdx
39352c	sub    r8,rcx
39352f	mov    edx,0xa
393534	call   0x3c8cf0
393539	test   rax,rax
39353c	cmovne rbx,rax
393540	mov    rax,rbx
393543	add    rsp,0x20
393547	pop    rbx
393548	ret
