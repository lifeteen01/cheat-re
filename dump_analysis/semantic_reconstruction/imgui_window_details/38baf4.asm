38baf4	rex push rbx
38baf6	sub    rsp,0x30
38bafa	movaps XMMWORD PTR [rsp+0x20],xmm6
38baff	mov    rbx,rcx
38bb02	movaps xmm6,xmm3
38bb05	call   0x2cc340
38bb0a	movss  xmm2,DWORD PTR [rsp+0x60]
38bb10	lea    rcx,[rbx+0x8]
38bb14	movaps xmm1,xmm6
38bb17	call   0x2cc340
38bb1c	movaps xmm6,XMMWORD PTR [rsp+0x20]
38bb21	mov    rax,rbx
38bb24	add    rsp,0x30
38bb28	pop    rbx
38bb29	ret
