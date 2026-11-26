374124	rex push rbx
374126	sub    rsp,0x20
37412a	mov    rbx,rdx
37412d	mov    r8,rcx
374130	call   0x2caf08
374135	test   al,al
374137	jne    0x374143
374139	mov    rcx,rdx
37413c	call   0x3c7bbc
374141	jmp    0x37415e
374143	mov    edx,0x16c
374148	mov    rcx,r8
37414b	call   0x2dee3c
374150	movsd  xmm0,QWORD PTR [rax]
374154	movsd  QWORD PTR [rbx],xmm0
374158	mov    eax,DWORD PTR [rax+0x8]
37415b	mov    DWORD PTR [rbx+0x8],eax
37415e	mov    rax,rbx
374161	add    rsp,0x20
374165	pop    rbx
374166	ret
