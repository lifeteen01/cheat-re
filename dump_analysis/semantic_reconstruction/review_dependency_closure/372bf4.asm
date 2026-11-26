372bf4	rex push rbx
372bf6	sub    rsp,0x20
372bfa	mov    ebx,edx
372bfc	mov    r8,rcx
372bff	call   0x2caf08
372c04	test   al,al
372c06	je     0x372c15
372c08	mov    rcx,r8
372c0b	call   0x372bcc
372c10	test   ebx,eax
372c12	setne  al
372c15	add    rsp,0x20
372c19	pop    rbx
372c1a	ret
