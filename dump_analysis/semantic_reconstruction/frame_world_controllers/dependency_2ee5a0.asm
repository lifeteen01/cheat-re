2ee5a0	mov    QWORD PTR [rsp+0x18],r8
2ee5a5	mov    QWORD PTR [rsp+0x10],rdx
2ee5aa	push   rbp
2ee5ab	push   rbx
2ee5ac	push   rsi
2ee5ad	push   rdi
2ee5ae	push   r14
2ee5b0	mov    rbp,rsp
2ee5b3	sub    rsp,0x30
2ee5b7	mov    r14,rcx
2ee5ba	lea    rcx,[rbp+0x40]
2ee5be	call   0x2d0a44
2ee5c3	lea    rdx,[rbp+0x48]
2ee5c7	mov    rsi,rax
2ee5ca	lea    rcx,[rbp+0x30]
2ee5ce	call   0x2cb3a4
2ee5d3	lea    rcx,[rbp+0x38]
2ee5d7	mov    rbx,rax
2ee5da	call   0x2d0a44
2ee5df	mov    r8b,BYTE PTR [rbx]
2ee5e2	mov    rcx,rax
2ee5e5	mov    rdx,rsi
2ee5e8	call   0x2edc7c
2ee5ed	mov    QWORD PTR [rbp-0x10],rax
2ee5f1	mov    rbx,rax
2ee5f4	mov    rdi,rax
2ee5f7	cmp    rax,rsi
2ee5fa	je     0x2ee636
2ee5fc	jmp    0x2ee62d
2ee5fe	mov    rdx,rbx
2ee601	lea    rcx,[rbp+0x48]
2ee605	call   0x2ea7e8
2ee60a	test   al,al
2ee60c	jne    0x2ee62d
2ee60e	mov    rcx,rbx
2ee611	call   0x2cb3a4
2ee616	mov    rdx,rax
2ee619	mov    rcx,rdi
2ee61c	call   0x2ef634
2ee621	mov    rdi,QWORD PTR [rbp-0x10]
2ee625	add    rdi,0x40
2ee629	mov    QWORD PTR [rbp-0x10],rdi
2ee62d	add    rbx,0x40
2ee631	cmp    rbx,rsi
2ee634	jne    0x2ee5fe
2ee636	lea    rdx,[rbp-0x10]
2ee63a	lea    rcx,[rbp+0x38]
2ee63e	call   0x2d182c
2ee643	mov    rax,QWORD PTR [rbp+0x38]
2ee647	mov    QWORD PTR [r14],rax
2ee64a	mov    rax,r14
2ee64d	add    rsp,0x30
2ee651	pop    r14
2ee653	pop    rdi
2ee654	pop    rsi
2ee655	pop    rbx
2ee656	pop    rbp
2ee657	ret
