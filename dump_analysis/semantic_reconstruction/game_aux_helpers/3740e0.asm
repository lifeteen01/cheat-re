3740e0	rex push rbx
3740e2	sub    rsp,0x20
3740e6	mov    rbx,rdx
3740e9	mov    r8,rcx
3740ec	call   0x2caf08
3740f1	test   al,al
3740f3	jne    0x3740ff
3740f5	mov    rcx,rdx
3740f8	call   0x3c7bbc
3740fd	jmp    0x37411a
3740ff	mov    edx,0x178
374104	mov    rcx,r8
374107	call   0x2dee3c
37410c	movsd  xmm0,QWORD PTR [rax]
374110	movsd  QWORD PTR [rbx],xmm0
374114	mov    eax,DWORD PTR [rax+0x8]
374117	mov    DWORD PTR [rbx+0x8],eax
37411a	mov    rax,rbx
37411d	add    rsp,0x20
374121	pop    rbx
374122	ret
