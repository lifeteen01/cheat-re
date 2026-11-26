383044	rex push rbx
383046	sub    rsp,0x20
38304a	movss  xmm2,DWORD PTR [rdx+0x4]
38304f	mov    rbx,rcx
383052	movss  xmm1,DWORD PTR [rdx]
383056	maxss  xmm2,DWORD PTR [r8+0x4]
38305c	maxss  xmm1,DWORD PTR [r8]
383061	call   0x2cc340
383066	mov    rax,rbx
383069	add    rsp,0x20
38306d	pop    rbx
38306e	ret
