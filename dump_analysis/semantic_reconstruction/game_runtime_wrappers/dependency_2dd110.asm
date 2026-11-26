2dd110	rex push rbx
2dd112	sub    rsp,0x20
2dd116	mov    rbx,rcx
2dd119	call   0x2ce56c
2dd11e	test   al,al
2dd120	je     0x2dd12d
2dd122	mov    rdx,rbx
2dd125	mov    rcx,rbx
2dd128	call   0x2dd004
2dd12d	mov    rax,rbx
2dd130	add    rsp,0x20
2dd134	pop    rbx
2dd135	ret
