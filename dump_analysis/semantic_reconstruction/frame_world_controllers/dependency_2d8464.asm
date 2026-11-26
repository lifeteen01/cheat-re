2d8464	rex push rbx
2d8466	sub    rsp,0x20
2d846a	mov    rbx,rcx
2d846d	call   0x2d8a78
2d8472	test   al,al
2d8474	je     0x2d8481
2d8476	mov    rdx,rbx
2d8479	mov    rcx,rbx
2d847c	call   0x2d80a8
2d8481	mov    rax,rbx
2d8484	add    rsp,0x20
2d8488	pop    rbx
2d8489	ret
