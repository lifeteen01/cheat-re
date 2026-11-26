3951a4	rex push rbx
3951a6	sub    rsp,0x30
3951aa	test   DWORD PTR [rcx+0x14],0x400
3951b1	mov    rbx,rcx
3951b4	movaps XMMWORD PTR [rsp+0x20],xmm6
3951b9	je     0x3951dd
3951bb	mov    rax,QWORD PTR [rcx]
3951be	movss  xmm6,DWORD PTR [rax+0x3810]
3951c6	call   0x38f1fc
3951cb	addss  xmm0,DWORD PTR [rbx+0x168]
3951d3	addss  xmm6,xmm6
3951d7	addss  xmm0,xmm6
3951db	jmp    0x3951e0
3951dd	xorps  xmm0,xmm0
3951e0	movaps xmm6,XMMWORD PTR [rsp+0x20]
3951e5	add    rsp,0x30
3951e9	pop    rbx
3951ea	ret
