316504	sub    rsp,0x28
316508	mov    rdx,rcx
31650b	call   0x2caf08
316510	test   al,al
316512	jne    0x316518
316514	xor    eax,eax
316516	jmp    0x31651c
316518	mov    rax,QWORD PTR [rdx+0x10]
31651c	add    rsp,0x28
316520	ret
