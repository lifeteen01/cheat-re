3207b8	rex push rbx
3207ba	push   rbp
3207bb	push   rsi
3207bc	push   rdi
3207bd	sub    rsp,0x28
3207c1	mov    rbx,r8
3207c4	mov    rbp,rdx
3207c7	mov    rsi,rcx
3207ca	cmp    r8,r9
3207cd	je     0x3207f9
3207cf	mov    rdx,QWORD PTR [rcx+0x8]
3207d3	mov    rcx,r9
3207d6	call   0x2ec384
3207db	mov    rcx,rsi
3207de	mov    rdi,rax
3207e1	call   0x2cd324
3207e6	mov    rdx,QWORD PTR [rsi+0x8]
3207ea	mov    r8,rax
3207ed	mov    rcx,rdi
3207f0	call   0x2de058
3207f5	mov    QWORD PTR [rsi+0x8],rdi
3207f9	mov    rcx,rsi
3207fc	call   0x2cb3a4
320801	mov    r8,rax
320804	mov    rdx,rbx
320807	mov    rcx,rbp
32080a	call   0x2d3fe0
32080f	mov    rax,rbp
320812	add    rsp,0x28
320816	pop    rdi
320817	pop    rsi
320818	pop    rbp
320819	pop    rbx
32081a	ret
