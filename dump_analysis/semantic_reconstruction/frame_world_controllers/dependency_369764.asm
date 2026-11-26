369764	sub    rsp,0x28
369768	mov    r8,rcx
36976b	call   0x2caf08
369770	test   al,al
369772	jne    0x369778
369774	xor    eax,eax
369776	jmp    0x369788
369778	mov    edx,0x300
36977d	mov    rcx,r8
369780	call   0x2dee3c
369785	mov    rax,QWORD PTR [rax]
369788	add    rsp,0x28
36978c	ret
