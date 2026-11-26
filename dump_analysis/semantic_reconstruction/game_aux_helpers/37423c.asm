37423c	sub    rsp,0x28
374240	mov    r8,rcx
374243	call   0x2caf08
374248	test   al,al
37424a	jne    0x374251
37424c	xorps  xmm0,xmm0
37424f	jmp    0x374262
374251	mov    edx,0x144
374256	mov    rcx,r8
374259	call   0x2dee3c
37425e	movss  xmm0,DWORD PTR [rax]
374262	add    rsp,0x28
374266	ret
