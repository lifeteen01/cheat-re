391c78	rex push rbx
391c7a	push   rbp
391c7b	push   rsi
391c7c	push   rdi
391c7d	sub    rsp,0x28
391c81	mov    rdi,QWORD PTR [rip+0x73ea0]        # 0x405b28
391c88	mov    rbp,rcx
391c8b	add    rdi,0x3ea8
391c92	xor    ebx,ebx
391c94	mov    rcx,rdi
391c97	call   0x39f238
391c9c	mov    esi,eax
391c9e	test   eax,eax
391ca0	jle    0x391cc5
391ca2	mov    edx,ebx
391ca4	mov    rcx,rdi
391ca7	call   0x38bb84
391cac	mov    rcx,rbp
391caf	mov    rdx,QWORD PTR [rax]
391cb2	mov    rdx,QWORD PTR [rdx+0x8]
391cb6	call   0x3ca884
391cbb	test   eax,eax
391cbd	je     0x391cd0
391cbf	inc    ebx
391cc1	cmp    ebx,esi
391cc3	jl     0x391ca2
391cc5	xor    eax,eax
391cc7	add    rsp,0x28
391ccb	pop    rdi
391ccc	pop    rsi
391ccd	pop    rbp
391cce	pop    rbx
391ccf	ret
391cd0	mov    edx,ebx
391cd2	mov    rcx,rdi
391cd5	call   0x38bb84
391cda	mov    rax,QWORD PTR [rax]
391cdd	jmp    0x391cc7
