2de058	cmp    rcx,rdx
2de05b	je     0x2de0a0
2de05d	mov    QWORD PTR [rsp+0x8],rbx
2de062	mov    QWORD PTR [rsp+0x10],rsi
2de067	push   rdi
2de068	sub    rsp,0x20
2de06c	mov    rsi,r8
2de06f	mov    rdi,rdx
2de072	mov    rbx,rcx
2de075	mov    rcx,rbx
2de078	call   0x2cb3a4
2de07d	mov    rdx,rax
2de080	mov    rcx,rsi
2de083	call   0x2dec6c
2de088	add    rbx,0x40
2de08c	cmp    rbx,rdi
2de08f	jne    0x2de075
2de091	mov    rbx,QWORD PTR [rsp+0x30]
2de096	mov    rsi,QWORD PTR [rsp+0x38]
2de09b	add    rsp,0x20
2de09f	pop    rdi
2de0a0	ret
