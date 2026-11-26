3cb058	mov    QWORD PTR [rsp+0x8],rbx
3cb05d	mov    QWORD PTR [rsp+0x10],rsi
3cb062	push   rdi
3cb063	sub    rsp,0x20
3cb067	mov    rax,QWORD PTR gs:0x30
3cb070	mov    rsi,rcx
3cb073	mov    rdx,QWORD PTR [rax+0x60]
3cb077	mov    rdi,QWORD PTR [rdx+0x18]
3cb07b	add    rdi,0x20
3cb07f	mov    rbx,QWORD PTR [rdi]
3cb082	cmp    rbx,rdi
3cb085	je     0x3cb0a7
3cb087	test   rcx,rcx
3cb08a	je     0x3cb0b9
3cb08c	mov    rdx,QWORD PTR [rbx+0x50]
3cb090	xor    r8d,r8d
3cb093	mov    rcx,rsi
3cb096	call   0x3cae50
3cb09b	test   al,al
3cb09d	jne    0x3cb0b9
3cb09f	mov    rbx,QWORD PTR [rbx]
3cb0a2	cmp    rbx,rdi
3cb0a5	jne    0x3cb08c
3cb0a7	xor    eax,eax
3cb0a9	mov    rbx,QWORD PTR [rsp+0x30]
3cb0ae	mov    rsi,QWORD PTR [rsp+0x38]
3cb0b3	add    rsp,0x20
3cb0b7	pop    rdi
3cb0b8	ret
3cb0b9	mov    rax,QWORD PTR [rbx+0x20]
3cb0bd	jmp    0x3cb0a9
