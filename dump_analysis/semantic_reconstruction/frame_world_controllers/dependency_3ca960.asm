3ca960	mov    QWORD PTR [rsp+0x8],rbx
3ca965	mov    QWORD PTR [rsp+0x10],rsi
3ca96a	push   rdi
3ca96b	sub    rsp,0x20
3ca96f	mov    rbx,rcx
3ca972	mov    rdi,rdx
3ca975	mov    rcx,rdx
3ca978	call   0x3ca904
3ca97d	mov    rsi,rax
3ca980	test   rbx,rbx
3ca983	je     0x3ca9ab
3ca985	mov    r8,rsi
3ca988	mov    rdx,rdi
3ca98b	mov    rcx,rbx
3ca98e	call   0x3ca918
3ca993	test   eax,eax
3ca995	je     0x3ca9ab
3ca997	movsx  edx,BYTE PTR [rdi]
3ca99a	lea    rcx,[rbx+0x1]
3ca99e	call   0x3ca4f8
3ca9a3	mov    rbx,rax
3ca9a6	test   rax,rax
3ca9a9	jne    0x3ca985
3ca9ab	mov    rsi,QWORD PTR [rsp+0x38]
3ca9b0	mov    rax,rbx
3ca9b3	mov    rbx,QWORD PTR [rsp+0x30]
3ca9b8	add    rsp,0x20
3ca9bc	pop    rdi
3ca9bd	ret
