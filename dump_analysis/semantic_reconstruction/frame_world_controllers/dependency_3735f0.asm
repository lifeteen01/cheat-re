3735f0	sub    rsp,0x28
3735f4	mov    r8,rcx
3735f7	call   0x2caf08
3735fc	test   al,al
3735fe	jne    0x373604
373600	xor    eax,eax
373602	jmp    0x373614
373604	mov    edx,0x44
373609	mov    rcx,r8
37360c	call   0x36c480
373611	movzx  eax,WORD PTR [rax]
373614	add    rsp,0x28
373618	ret
