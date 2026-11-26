2d8504	rex push rbx
2d8506	sub    rsp,0x20
2d850a	mov    rbx,rcx
2d850d	call   0x2d8a90
2d8512	test   al,al
2d8514	je     0x2d8521
2d8516	mov    rdx,rbx
2d8519	mov    rcx,rbx
2d851c	call   0x2d8180
2d8521	mov    rax,rbx
2d8524	add    rsp,0x20
2d8528	pop    rbx
2d8529	ret
