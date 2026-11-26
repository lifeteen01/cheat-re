2d96c0	rex push rbx
2d96c2	push   rbp
2d96c3	push   rsi
2d96c4	push   rdi
2d96c5	sub    rsp,0x38
2d96c9	mov    rbx,r9
2d96cc	mov    rdi,r8
2d96cf	mov    rsi,rdx
2d96d2	mov    rbp,rcx
2d96d5	call   0x2d963c
2d96da	mov    r10,QWORD PTR [rsp+0x80]
2d96e2	mov    r9,rdi
2d96e5	mov    QWORD PTR [rsp+0x28],r10
2d96ea	mov    r8,rsi
2d96ed	mov    rdx,rbp
2d96f0	mov    QWORD PTR [rsp+0x20],rbx
2d96f5	mov    rcx,QWORD PTR [rax]
2d96f8	call   0x3ca828
2d96fd	or     ecx,0xffffffff
2d9700	test   eax,eax
2d9702	cmovs  eax,ecx
2d9705	add    rsp,0x38
2d9709	pop    rdi
2d970a	pop    rsi
2d970b	pop    rbp
2d970c	pop    rbx
2d970d	ret
