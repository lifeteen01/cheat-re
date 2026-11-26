38bc08	rex push rbx
38bc0a	sub    rsp,0x20
38bc0e	movaps xmm1,xmm2
38bc11	mov    rbx,rcx
38bc14	mulss  xmm1,DWORD PTR [rdx]
38bc18	mulss  xmm2,DWORD PTR [rdx+0x4]
38bc1d	call   0x2cc340
38bc22	mov    rax,rbx
38bc25	add    rsp,0x20
38bc29	pop    rbx
38bc2a	ret
