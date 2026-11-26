2ed218	mov    QWORD PTR [rsp+0x8],rbx
2ed21d	push   rdi
2ed21e	sub    rsp,0x40
2ed222	mov    rdi,rdx
2ed225	lea    rcx,[rsp+0x20]
2ed22a	mov    rdx,r8
2ed22d	mov    rbx,r9
2ed230	call   0x2cc268
2ed235	mov    rdx,rbx
2ed238	lea    rcx,[rsp+0x28]
2ed23d	call   0x2cc268
2ed242	mov    rdx,QWORD PTR [rsp+0x70]
2ed247	lea    rcx,[rsp+0x30]
2ed24c	call   0x2cc268
2ed251	movss  xmm1,DWORD PTR [rsp+0x78]
2ed257	lea    rcx,[rsp+0x38]
2ed25c	call   0x2ddbf8
2ed261	movups xmm0,XMMWORD PTR [rsp+0x20]
2ed266	lea    rax,[rsp+0x48]
2ed26b	mov    rcx,rdi
2ed26e	movups xmm1,XMMWORD PTR [rsp+0x30]
2ed273	mov    DWORD PTR [rdi+0xd0],0x1000000
2ed27d	movups XMMWORD PTR [rdi+0x88],xmm0
2ed284	mov    QWORD PTR [rdi+0x80],0x4
2ed28f	movups XMMWORD PTR [rdi+0x98],xmm1
2ed296	mov    QWORD PTR [rdi+0x78],rax
2ed29a	mov    rbx,QWORD PTR [rsp+0x50]
2ed29f	add    rsp,0x40
2ed2a3	pop    rdi
2ed2a4	jmp    0x3cdbd4
