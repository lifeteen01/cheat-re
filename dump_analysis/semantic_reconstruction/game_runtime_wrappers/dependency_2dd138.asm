2dd138	rex push rbx
2dd13a	sub    rsp,0x20
2dd13e	mov    rbx,rcx
2dd141	call   0x2dd2e4
2dd146	test   al,al
2dd148	je     0x2dd155
2dd14a	mov    rdx,rbx
2dd14d	mov    rcx,rbx
2dd150	call   0x2dd034
2dd155	mov    rax,rbx
2dd158	add    rsp,0x20
2dd15c	pop    rbx
2dd15d	ret
