39e280	rex push rbx
39e282	push   rbp
39e283	push   rsi
39e284	push   rdi
39e285	push   r14
39e287	push   r15
39e289	sub    rsp,0x28
39e28d	mov    r14,r8
39e290	mov    r9,r8
39e293	mov    r8,rdx
39e296	mov    r15,rdx
39e299	mov    rdi,rcx
39e29c	xor    edx,edx
39e29e	xor    ecx,ecx
39e2a0	call   0x393270
39e2a5	movsxd rbp,eax
39e2a8	test   eax,eax
39e2aa	jle    0x39e2f7
39e2ac	cmp    DWORD PTR [rdi],0x0
39e2af	mov    esi,0x1
39e2b4	mov    edx,DWORD PTR [rdi+0x4]
39e2b7	cmovne esi,DWORD PTR [rdi]
39e2ba	lea    ebx,[rsi+rbp*1]
39e2bd	cmp    ebx,edx
39e2bf	jl     0x39e2d0
39e2c1	add    edx,edx
39e2c3	mov    rcx,rdi
39e2c6	cmp    ebx,edx
39e2c8	cmovg  edx,ebx
39e2cb	call   0x37a69c
39e2d0	mov    edx,ebx
39e2d2	mov    rcx,rdi
39e2d5	call   0x37acd4
39e2da	lea    edx,[rsi-0x1]
39e2dd	mov    rcx,rdi
39e2e0	call   0x38bb70
39e2e5	mov    rcx,rax
39e2e8	lea    rdx,[rbp+0x1]
39e2ec	mov    r9,r14
39e2ef	mov    r8,r15
39e2f2	call   0x393270
39e2f7	add    rsp,0x28
39e2fb	pop    r15
39e2fd	pop    r14
39e2ff	pop    rdi
39e300	pop    rsi
39e301	pop    rbp
39e302	pop    rbx
39e303	ret
