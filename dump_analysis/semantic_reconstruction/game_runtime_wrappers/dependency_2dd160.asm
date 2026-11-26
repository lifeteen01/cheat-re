2dd160	rex push rbx
2dd162	sub    rsp,0x20
2dd166	mov    rbx,rcx
2dd169	call   0x2d8a98
2dd16e	test   al,al
2dd170	je     0x2dd17d
2dd172	mov    rdx,rbx
2dd175	mov    rcx,rbx
2dd178	call   0x2dd064
2dd17d	mov    rax,rbx
2dd180	add    rsp,0x20
2dd184	pop    rbx
2dd185	ret
