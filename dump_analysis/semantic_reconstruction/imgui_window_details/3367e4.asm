3367e4	rex push rbx
3367e6	sub    rsp,0x20
3367ea	movss  xmm2,DWORD PTR [rdx+0x4]
3367ef	mov    rbx,rcx
3367f2	movss  xmm1,DWORD PTR [rdx]
3367f6	subss  xmm2,DWORD PTR [r8+0x4]
3367fc	subss  xmm1,DWORD PTR [r8]
336801	call   0x2cc340
336806	mov    rax,rbx
336809	add    rsp,0x20
33680d	pop    rbx
33680e	ret
