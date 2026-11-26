374300	sub    rsp,0x28
374304	mov    r8,rcx
374307	call   0x2caf08
37430c	test   al,al
37430e	jne    0x374315
374310	xorps  xmm0,xmm0
374313	jmp    0x374326
374315	mov    edx,0x188
37431a	mov    rcx,r8
37431d	call   0x2dee3c
374322	movss  xmm0,DWORD PTR [rax]
374326	add    rsp,0x28
37432a	ret
