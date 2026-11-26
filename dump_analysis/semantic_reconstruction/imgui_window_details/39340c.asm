39340c	rex push rbx
39340e	sub    rsp,0x20
393412	movss  xmm2,DWORD PTR [r8+0x4]
393418	mov    rbx,rcx
39341b	subss  xmm2,DWORD PTR [rdx+0x4]
393420	movss  xmm1,DWORD PTR [r8]
393425	subss  xmm1,DWORD PTR [rdx]
393429	mulss  xmm2,DWORD PTR [r9+0x4]
39342f	mulss  xmm1,DWORD PTR [r9]
393434	addss  xmm2,DWORD PTR [rdx+0x4]
393439	addss  xmm1,DWORD PTR [rdx]
39343d	call   0x2cc340
393442	mov    rax,rbx
393445	add    rsp,0x20
393449	pop    rbx
39344a	ret
