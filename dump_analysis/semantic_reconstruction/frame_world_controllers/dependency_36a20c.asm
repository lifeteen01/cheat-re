36a20c	sub    rsp,0x28
36a210	mov    r8,rcx
36a213	call   0x2caf08
36a218	test   al,al
36a21a	je     0x36a231
36a21c	test   dl,dl
36a21e	jne    0x36a231
36a220	mov    edx,0x10
36a225	mov    rcx,r8
36a228	add    rsp,0x28
36a22c	jmp    0x369df4
36a231	xor    al,al
36a233	add    rsp,0x28
36a237	ret
