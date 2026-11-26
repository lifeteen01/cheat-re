37224c	sub    rsp,0x28
372250	mov    rdx,rcx
372253	call   0x2caf08
372258	test   al,al
37225a	je     0x372271
37225c	mov    rdx,QWORD PTR [rdx+0x20]
372260	mov    rcx,rdx
372263	call   0x2caf08
372268	test   al,al
37226a	je     0x372271
37226c	mov    eax,DWORD PTR [rdx+0x18]
37226f	jmp    0x372273
372271	xor    eax,eax
372273	add    rsp,0x28
372277	ret
