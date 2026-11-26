39e234	rex push rbx
39e236	sub    rsp,0x30
39e23a	movss  xmm2,DWORD PTR [rdx+0x114]
39e242	mov    rbx,rcx
39e245	movss  xmm1,DWORD PTR [rdx+0x110]
39e24d	movaps xmm0,xmm2
39e250	addss  xmm0,DWORD PTR [r8+0xc]
39e256	addss  xmm2,DWORD PTR [r8+0x4]
39e25c	movaps xmm3,xmm1
39e25f	addss  xmm3,DWORD PTR [r8+0x8]
39e265	addss  xmm1,DWORD PTR [r8]
39e26a	movss  DWORD PTR [rsp+0x20],xmm0
39e270	call   0x38baf4
39e275	mov    rax,rbx
39e278	add    rsp,0x30
39e27c	pop    rbx
39e27d	ret
