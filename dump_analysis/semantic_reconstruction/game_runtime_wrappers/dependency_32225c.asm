32225c	rex push rbx
32225e	sub    rsp,0x40
322262	mov    rbx,rdx
322265	movaps XMMWORD PTR [rsp+0x30],xmm6
32226a	mov    rdx,r8
32226d	lea    rcx,[rsp+0x20]
322272	movaps xmm6,xmm3
322275	call   0x2cc268
32227a	movaps xmm1,xmm6
32227d	lea    rcx,[rsp+0x28]
322282	call   0x2ddbf8
322287	movzx  eax,WORD PTR [rsp+0x5a]
32228c	mov    rcx,rbx
32228f	movups xmm0,XMMWORD PTR [rsp+0x20]
322294	mov    WORD PTR [rbx+0xd2],ax
32229b	lea    rax,[rsp+0x48]
3222a0	mov    QWORD PTR [rbx+0x78],rax
3222a4	movdqu XMMWORD PTR [rbx+0x88],xmm0
3222ac	mov    WORD PTR [rbx+0xd0],0x100
3222b5	mov    QWORD PTR [rbx+0x80],0x2
3222c0	movaps xmm6,XMMWORD PTR [rsp+0x30]
3222c5	add    rsp,0x40
3222c9	pop    rbx
3222ca	jmp    0x3cdbd4
