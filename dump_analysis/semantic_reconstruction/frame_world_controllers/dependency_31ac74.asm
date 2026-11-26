31ac74	mov    QWORD PTR [rsp+0x8],rbx
31ac79	push   rdi
31ac7a	sub    rsp,0x20
31ac7e	mov    rdi,QWORD PTR [rcx]
31ac81	mov    rbx,rcx
31ac84	cmp    rdi,QWORD PTR [rcx+0x8]
31ac88	je     0x31aca5
31ac8a	call   0x2cd324
31ac8f	mov    rdx,QWORD PTR [rbx+0x8]
31ac93	mov    r8,rax
31ac96	mov    rcx,rdi
31ac99	call   0x2de058
31ac9e	mov    rax,QWORD PTR [rbx]
31aca1	mov    QWORD PTR [rbx+0x8],rax
31aca5	mov    rbx,QWORD PTR [rsp+0x30]
31acaa	add    rsp,0x20
31acae	pop    rdi
31acaf	ret
