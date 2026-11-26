2d95cc	mov    QWORD PTR [rsp+0x8],rbx
2d95d1	mov    QWORD PTR [rsp+0x10],rsi
2d95d6	push   rdi
2d95d7	sub    rsp,0x20
2d95db	mov    rsi,rcx
2d95de	call   0x2d90dc
2d95e3	lea    rcx,[rsi+0x20]
2d95e7	call   0x2d8ad8
2d95ec	lea    rcx,[rsi+0x20]
2d95f0	mov    rdi,rax
2d95f3	call   0x2cd7ec
2d95f8	mov    rcx,rax
2d95fb	mov    rdx,rdi
2d95fe	call   0x2d5744
2d9603	mov    rbx,rax
2d9606	test   rax,rax
2d9609	je     0x2d962c
2d960b	mov    rcx,rsi
2d960e	call   0x2cd7ec
2d9613	mov    rcx,rax
2d9616	mov    rdx,rbx
2d9619	call   0x2d65dc
2d961e	mov    rcx,rsi
2d9621	call   0x2d89b4
2d9626	mov    DWORD PTR [rsi+0x80],eax
2d962c	mov    rbx,QWORD PTR [rsp+0x30]
2d9631	mov    rsi,QWORD PTR [rsp+0x38]
2d9636	add    rsp,0x20
2d963a	pop    rdi
2d963b	ret
