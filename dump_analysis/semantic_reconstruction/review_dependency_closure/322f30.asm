322f30	rex push rbx
322f32	push   rbp
322f33	push   rsi
322f34	push   rdi
322f35	push   r12
322f37	push   r14
322f39	push   r15
322f3b	sub    rsp,0x20
322f3f	mov    r12,r8
322f42	mov    r14,rdx
322f45	test   rcx,rcx
322f48	je     0x322fef
322f4e	test   rdx,rdx
322f51	je     0x322fef
322f57	cmp    BYTE PTR [rdx],0x0
322f5a	je     0x322fef
322f60	mov    rax,QWORD PTR [rcx+0x10]
322f64	test   rax,rax
322f67	je     0x322fef
322f6d	mov    rax,QWORD PTR [rax+0x20]
322f71	test   rax,rax
322f74	je     0x322fef
322f76	mov    r15,QWORD PTR [rax+0x20]
322f7a	test   r15,r15
322f7d	je     0x322fef
322f7f	mov    ebp,DWORD PTR [rax+0x30]
322f82	lea    eax,[rbp-0x1]
322f85	cmp    eax,0xff
322f8a	ja     0x322fef
322f8c	xor    esi,esi
322f8e	test   ebp,ebp
322f90	jle    0x322fef
322f92	mov    eax,esi
322f94	shl    eax,0x4
322f97	cdqe
322f99	mov    rbx,QWORD PTR [r15+rax*1+0x8]
322f9e	test   rbx,rbx
322fa1	je     0x322fe9
322fa3	mov    rbx,QWORD PTR [rbx+0x18]
322fa7	test   rbx,rbx
322faa	je     0x322fe9
322fac	test   bl,0x1
322faf	jne    0x322fe9
322fb1	mov    rbx,QWORD PTR [rbx]
322fb4	test   rbx,rbx
322fb7	je     0x322fe9
322fb9	mov    rdi,QWORD PTR [rbx]
322fbc	test   rdi,rdi
322fbf	je     0x322fe9
322fc1	cmp    QWORD PTR [r12],0x0
322fc6	je     0x322fd3
322fc8	cmp    QWORD PTR [r12],rdi
322fcc	jne    0x322fe9
322fce	mov    rax,rbx
322fd1	jmp    0x322ff1
322fd3	mov    rcx,QWORD PTR [rdi+0x10]
322fd7	test   rcx,rcx
322fda	je     0x322fe9
322fdc	mov    rdx,r14
322fdf	call   0x3ca960
322fe4	test   rax,rax
322fe7	jne    0x323000
322fe9	inc    esi
322feb	cmp    esi,ebp
322fed	jl     0x322f92
322fef	xor    eax,eax
322ff1	add    rsp,0x20
322ff5	pop    r15
322ff7	pop    r14
322ff9	pop    r12
322ffb	pop    rdi
322ffc	pop    rsi
322ffd	pop    rbp
322ffe	pop    rbx
322fff	ret
323000	mov    QWORD PTR [r12],rdi
323004	jmp    0x322fce
