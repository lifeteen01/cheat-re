39ba10	rex push rbx
39ba12	push   rbp
39ba13	push   rsi
39ba14	push   rdi
39ba15	sub    rsp,0x38
39ba19	mov    rsi,r8
39ba1c	mov    edi,edx
39ba1e	mov    rbp,rcx
39ba21	call   0x3950c4
39ba26	mov    rcx,rbp
39ba29	mov    rbx,rax
39ba2c	call   0x39ebb4
39ba31	cmp    rbx,rax
39ba34	je     0x39ba40
39ba36	cmp    DWORD PTR [rbx],edi
39ba38	jne    0x39ba40
39ba3a	mov    QWORD PTR [rbx+0x8],rsi
39ba3e	jmp    0x39ba5d
39ba40	mov    r8,rsi
39ba43	lea    rcx,[rsp+0x20]
39ba48	mov    edx,edi
39ba4a	call   0x38b238
39ba4f	mov    r8,rax
39ba52	mov    rdx,rbx
39ba55	mov    rcx,rbp
39ba58	call   0x39eddc
39ba5d	add    rsp,0x38
39ba61	pop    rdi
39ba62	pop    rsi
39ba63	pop    rbp
39ba64	pop    rbx
39ba65	ret
