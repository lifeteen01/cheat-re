383070	rex push rbx
383072	sub    rsp,0x20
383076	movss  xmm2,DWORD PTR [rdx+0x4]
38307b	mov    rbx,rcx
38307e	movss  xmm1,DWORD PTR [rdx]
383082	minss  xmm2,DWORD PTR [r8+0x4]
383088	minss  xmm1,DWORD PTR [r8]
38308d	call   0x2cc340
383092	mov    rax,rbx
383095	add    rsp,0x20
383099	pop    rbx
38309a	ret
