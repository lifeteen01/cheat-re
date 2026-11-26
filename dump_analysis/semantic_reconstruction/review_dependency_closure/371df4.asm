371df4	mov    QWORD PTR [rsp+0x8],rbx
371df9	push   rdi
371dfa	sub    rsp,0x20
371dfe	mov    rbx,rcx
371e01	call   0x2caf08
371e06	test   al,al
371e08	je     0x371e4d
371e0a	mov    rcx,rbx
371e0d	call   0x37154c
371e12	mov    rcx,rax
371e15	mov    rdi,rax
371e18	call   0x2caf08
371e1d	test   al,al
371e1f	je     0x371e4d
371e21	mov    rcx,rdi
371e24	call   0x37261c
371e29	cmp    eax,0x40547fde
371e2e	je     0x371e37
371e30	cmp    eax,0x847b9bf0
371e35	jne    0x371e4d
371e37	mov    rcx,rdi
371e3a	call   0x37236c
371e3f	xor    ecx,ecx
371e41	cmp    eax,0x6
371e44	cmovne rbx,rcx
371e48	mov    rax,rbx
371e4b	jmp    0x371e4f
371e4d	xor    eax,eax
371e4f	mov    rbx,QWORD PTR [rsp+0x30]
371e54	add    rsp,0x20
371e58	pop    rdi
371e59	ret
