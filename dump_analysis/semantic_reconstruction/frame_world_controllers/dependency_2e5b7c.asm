2e5b7c	rex push rbx
2e5b7e	sub    rsp,0x40
2e5b82	movaps XMMWORD PTR [rsp+0x30],xmm6
2e5b87	mov    rbx,rcx
2e5b8a	movss  xmm6,DWORD PTR [rcx]
2e5b8e	movaps XMMWORD PTR [rsp+0x20],xmm7
2e5b93	movaps xmm7,xmm1
2e5b96	call   0x2e6240
2e5b9b	comiss xmm0,xmm6
2e5b9e	jbe    0x2e5bb1
2e5ba0	call   0x2e6240
2e5ba5	addss  xmm0,xmm7
2e5ba9	mov    al,0x1
2e5bab	movss  DWORD PTR [rbx],xmm0
2e5baf	jmp    0x2e5bb3
2e5bb1	xor    al,al
2e5bb3	movaps xmm6,XMMWORD PTR [rsp+0x30]
2e5bb8	movaps xmm7,XMMWORD PTR [rsp+0x20]
2e5bbd	add    rsp,0x40
2e5bc1	pop    rbx
2e5bc2	ret
