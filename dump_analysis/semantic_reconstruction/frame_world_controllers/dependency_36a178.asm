36a178	sub    rsp,0x28
36a17c	mov    rdx,rcx
36a17f	call   0x2caf08
36a184	test   al,al
36a186	je     0x36a198
36a188	mov    rcx,rdx
36a18b	call   0x367668
36a190	cmp    eax,0xf4e1d514
36a195	setne  al
36a198	add    rsp,0x28
36a19c	ret
