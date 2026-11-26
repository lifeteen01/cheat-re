39307c	rex push rbx
39307e	sub    rsp,0x20
393082	cvttss2si eax,DWORD PTR [rdx+0x4]
393087	mov    rbx,rcx
39308a	movd   xmm2,eax
39308e	cvttss2si eax,DWORD PTR [rdx]
393092	cvtdq2ps xmm2,xmm2
393095	movd   xmm1,eax
393099	cvtdq2ps xmm1,xmm1
39309c	call   0x2cc340
3930a1	mov    rax,rbx
3930a4	add    rsp,0x20
3930a8	pop    rbx
3930a9	ret
