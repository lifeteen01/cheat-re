2ec324	mov    QWORD PTR [rsp+0x8],rbx
2ec329	mov    QWORD PTR [rsp+0x10],rsi
2ec32e	push   rdi
2ec32f	sub    rsp,0x20
2ec333	mov    rdi,r8
2ec336	mov    rsi,rdx
2ec339	mov    rbx,rcx
2ec33c	call   0x2ce5a4
2ec341	test   al,al
2ec343	jne    0x2ec36c
2ec345	mov    r8,rdi
2ec348	mov    rdx,rsi
2ec34b	mov    rcx,rbx
2ec34e	call   0x2eae8c
2ec353	jmp    0x2ec374
2ec355	mov    rcx,rbx
2ec358	call   0x2cb3a4
2ec35d	movups xmm0,XMMWORD PTR [rax]
2ec360	movdqu XMMWORD PTR [rdi],xmm0
2ec364	add    rdi,0x10
2ec368	add    rbx,0x10
2ec36c	cmp    rbx,rsi
2ec36f	jne    0x2ec355
2ec371	mov    rax,rdi
2ec374	mov    rbx,QWORD PTR [rsp+0x30]
2ec379	mov    rsi,QWORD PTR [rsp+0x38]
2ec37e	add    rsp,0x20
2ec382	pop    rdi
2ec383	ret
