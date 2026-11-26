2cf064	mov    QWORD PTR [rsp+0x8],rbx
2cf069	mov    BYTE PTR [rsp+0x10],dl
2cf06d	push   rbp
2cf06e	push   rsi
2cf06f	push   rdi
2cf070	sub    rsp,0x40
2cf074	mov    rbp,rcx
2cf077	mov    rdi,r8
2cf07a	mov    rcx,r8
2cf07d	call   0x2d8ad8
2cf082	mov    rcx,rdi
2cf085	mov    rsi,rax
2cf088	call   0x2ce628
2cf08d	cmp    rsi,rax
2cf090	je     0x2cf0dc
2cf092	mov    rcx,rdi
2cf095	call   0x2cd7ec
2cf09a	lea    rcx,[rsp+0x68]
2cf09f	mov    rbx,rax
2cf0a2	call   0x2cb3a4
2cf0a7	mov    dl,BYTE PTR [rsp+0x78]
2cf0ab	mov    r9,rax
2cf0ae	mov    QWORD PTR [rsp+0x30],rsi
2cf0b3	mov    r8,rdi
2cf0b6	mov    QWORD PTR [rsp+0x28],rbx
2cf0bb	mov    rcx,rbp
2cf0be	mov    QWORD PTR [rsp+0x20],0x1
2cf0c7	call   0x2d4454
2cf0cc	mov    rbx,QWORD PTR [rsp+0x60]
2cf0d1	mov    rax,rbp
2cf0d4	add    rsp,0x40
2cf0d8	pop    rdi
2cf0d9	pop    rsi
2cf0da	pop    rbp
2cf0db	ret
2cf0dc	call   0x2cd72c
2cf0e1	int3
