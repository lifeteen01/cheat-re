2ee658	mov    QWORD PTR [rsp+0x18],r8
2ee65d	mov    QWORD PTR [rsp+0x10],rdx
2ee662	push   rbp
2ee663	push   rbx
2ee664	push   rsi
2ee665	push   rdi
2ee666	push   r14
2ee668	mov    rbp,rsp
2ee66b	sub    rsp,0x30
2ee66f	mov    r14,rcx
2ee672	lea    rcx,[rbp+0x40]
2ee676	call   0x2d0a44
2ee67b	lea    rdx,[rbp+0x48]
2ee67f	mov    rsi,rax
2ee682	lea    rcx,[rbp+0x30]
2ee686	call   0x2cb3a4
2ee68b	lea    rcx,[rbp+0x38]
2ee68f	mov    rbx,rax
2ee692	call   0x2d0a44
2ee697	mov    r8b,BYTE PTR [rbx]
2ee69a	mov    rcx,rax
2ee69d	mov    rdx,rsi
2ee6a0	call   0x2edcf4
2ee6a5	mov    QWORD PTR [rbp-0x10],rax
2ee6a9	mov    rbx,rax
2ee6ac	mov    rdi,rax
2ee6af	cmp    rax,rsi
2ee6b2	je     0x2ee6ea
2ee6b4	jmp    0x2ee6e1
2ee6b6	mov    rdx,rbx
2ee6b9	lea    rcx,[rbp+0x48]
2ee6bd	call   0x2ea7fc
2ee6c2	test   al,al
2ee6c4	jne    0x2ee6e1
2ee6c6	mov    rcx,rbx
2ee6c9	call   0x2cb3a4
2ee6ce	movups xmm0,XMMWORD PTR [rax]
2ee6d1	movdqu XMMWORD PTR [rdi],xmm0
2ee6d5	mov    rdi,QWORD PTR [rbp-0x10]
2ee6d9	add    rdi,0x10
2ee6dd	mov    QWORD PTR [rbp-0x10],rdi
2ee6e1	add    rbx,0x10
2ee6e5	cmp    rbx,rsi
2ee6e8	jne    0x2ee6b6
2ee6ea	lea    rdx,[rbp-0x10]
2ee6ee	lea    rcx,[rbp+0x38]
2ee6f2	call   0x2d182c
2ee6f7	mov    rax,QWORD PTR [rbp+0x38]
2ee6fb	mov    QWORD PTR [r14],rax
2ee6fe	mov    rax,r14
2ee701	add    rsp,0x30
2ee705	pop    r14
2ee707	pop    rdi
2ee708	pop    rsi
2ee709	pop    rbx
2ee70a	pop    rbp
2ee70b	ret
