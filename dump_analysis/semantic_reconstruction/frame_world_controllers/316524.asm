316524	sub    rsp,0x28
316528	mov    rdx,rcx
31652b	call   0x2caf08
316530	test   al,al
316532	jne    0x316538
316534	xor    eax,eax
316536	jmp    0x31653b
316538	mov    eax,DWORD PTR [rdx+0x18]
31653b	add    rsp,0x28
31653f	ret
