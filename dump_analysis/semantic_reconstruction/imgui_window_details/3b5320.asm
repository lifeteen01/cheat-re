3b5320	mov    QWORD PTR [rsp+0x8],rbx
3b5325	push   rdi
3b5326	sub    rsp,0x20
3b532a	mov    edi,ecx
3b532c	call   0x3923c8
3b5331	mov    rbx,QWORD PTR [rax+0x1a8]
3b5338	test   rbx,rbx
3b533b	jne    0x3b5342
3b533d	xorps  xmm0,xmm0
3b5340	jmp    0x3b5367
3b5342	test   edi,edi
3b5344	jns    0x3b5349
3b5346	mov    edi,DWORD PTR [rbx+0xc]
3b5349	lea    rcx,[rbx+0x60]
3b534d	mov    edx,edi
3b534f	call   0x38bba8
3b5354	movss  xmm1,DWORD PTR [rbx+0x18]
3b5359	movss  xmm0,DWORD PTR [rbx+0x14]
3b535e	movss  xmm2,DWORD PTR [rax]
3b5362	call   0x33565c
3b5367	mov    rbx,QWORD PTR [rsp+0x30]
3b536c	add    rsp,0x20
3b5370	pop    rdi
3b5371	ret
