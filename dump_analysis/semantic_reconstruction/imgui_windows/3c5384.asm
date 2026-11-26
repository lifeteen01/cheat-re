3c5384	rex push rbx
3c5386	sub    rsp,0x20
3c538a	mov    rbx,rcx
3c538d	test   r8b,r8b
3c5390	je     0x3c5398
3c5392	xor    eax,eax
3c5394	mov    QWORD PTR [rcx+0x12],rax
3c5398	cvttss2si eax,xmm1
3c539c	mov    dl,0x1
3c539e	mov    WORD PTR [rcx+0x8],ax
3c53a2	call   0x3bd06c
3c53a7	xor    eax,eax
3c53a9	mov    QWORD PTR [rbx+0x12],rax
3c53ad	mov    eax,DWORD PTR [rbx+0x4]
3c53b0	mov    DWORD PTR [rbx],eax
3c53b2	mov    DWORD PTR [rbx+0x4],0x0
3c53b9	add    rsp,0x20
3c53bd	pop    rbx
3c53be	ret
