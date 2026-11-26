373e20	sub    rsp,0x28
373e24	mov    r8,rcx
373e27	call   0x2caf08
373e2c	test   al,al
373e2e	jne    0x373e34
373e30	xor    eax,eax
373e32	jmp    0x373e44
373e34	mov    edx,0x30
373e39	mov    rcx,r8
373e3c	call   0x2dee3c
373e41	mov    rax,QWORD PTR [rax]
373e44	add    rsp,0x28
373e48	ret
