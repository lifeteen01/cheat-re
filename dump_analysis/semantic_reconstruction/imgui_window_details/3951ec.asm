3951ec	mov    QWORD PTR [rsp+0x8],rbx
3951f1	push   rdi
3951f2	sub    rsp,0x40
3951f6	movaps XMMWORD PTR [rsp+0x30],xmm6
3951fb	mov    rdi,rdx
3951fe	mov    rbx,rcx
395201	call   0x39bf80
395206	movaps xmm6,xmm0
395209	mov    rcx,rbx
39520c	addss  xmm6,DWORD PTR [rbx+0x24]
395211	call   0x3951a4
395216	movss  xmm3,DWORD PTR [rbx+0x20]
39521b	addss  xmm0,xmm6
39521f	addss  xmm3,DWORD PTR [rbx+0x30]
395224	movss  xmm1,DWORD PTR [rbx+0x20]
395229	movaps xmm2,xmm6
39522c	mov    rcx,rdi
39522f	movss  DWORD PTR [rsp+0x20],xmm0
395235	call   0x38baf4
39523a	mov    rbx,QWORD PTR [rsp+0x50]
39523f	mov    rax,rdi
395242	movaps xmm6,XMMWORD PTR [rsp+0x30]
395247	add    rsp,0x40
39524b	pop    rdi
39524c	ret
