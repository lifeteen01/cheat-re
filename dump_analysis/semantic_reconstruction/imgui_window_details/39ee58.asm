39ee58	mov    QWORD PTR [rsp+0x8],rbx
39ee5d	push   rdi
39ee5e	sub    rsp,0x20
39ee62	mov    rbx,rdx
39ee65	mov    rdi,rcx
39ee68	call   0x39e3b8
39ee6d	movsxd r8,eax
39ee70	mov    rcx,rdi
39ee73	add    rbx,r8
39ee76	call   0x39ebac
39ee7b	add    rax,0x4
39ee7f	xor    ecx,ecx
39ee81	cmp    rbx,rax
39ee84	cmovne rcx,rbx
39ee88	mov    rbx,QWORD PTR [rsp+0x30]
39ee8d	mov    rax,rcx
39ee90	add    rsp,0x20
39ee94	pop    rdi
39ee95	ret
