395074	mov    QWORD PTR [rsp+0x8],rbx
395079	mov    QWORD PTR [rsp+0x10],rsi
39507e	push   rdi
39507f	sub    rsp,0x20
395083	cmp    QWORD PTR [rcx+0x5c98],0x0
39508b	lea    rbx,[rcx+0x5ca0]
395092	mov    rdi,r8
395095	mov    rsi,rdx
395098	je     0x3950a4
39509a	xor    edx,edx
39509c	mov    rcx,rbx
39509f	call   0x37acd4
3950a4	mov    r8,rdi
3950a7	mov    rdx,rsi
3950aa	mov    rcx,rbx
3950ad	mov    rbx,QWORD PTR [rsp+0x30]
3950b2	mov    rsi,QWORD PTR [rsp+0x38]
3950b7	add    rsp,0x20
3950bb	pop    rdi
3950bc	jmp    0x39e280
