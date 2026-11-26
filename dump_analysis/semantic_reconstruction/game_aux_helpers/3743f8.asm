3743f8	rex push rbx
3743fa	sub    rsp,0x20
3743fe	mov    rbx,rdx
374401	mov    r8,rcx
374404	call   0x2caf08
374409	test   al,al
37440b	jne    0x374417
37440d	mov    rcx,rdx
374410	call   0x3c7bbc
374415	jmp    0x374432
374417	mov    edx,0x338
37441c	mov    rcx,r8
37441f	call   0x2dee3c
374424	movsd  xmm0,QWORD PTR [rax]
374428	movsd  QWORD PTR [rbx],xmm0
37442c	mov    eax,DWORD PTR [rax+0x8]
37442f	mov    DWORD PTR [rbx+0x8],eax
374432	mov    rax,rbx
374435	add    rsp,0x20
374439	pop    rbx
37443a	ret
