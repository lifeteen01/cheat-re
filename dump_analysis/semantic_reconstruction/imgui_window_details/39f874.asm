39f874	test   r9d,0xff000000
39f87b	je     0x39f925
39f881	mov    QWORD PTR [rsp+0x8],rbx
39f886	push   rdi
39f887	sub    rsp,0x30
39f88b	movss  xmm0,DWORD PTR [rip+0xffffffffffeed9bd]        # 0x28d250
39f893	mov    edi,r9d
39f896	comiss xmm0,xmm2
39f899	mov    r10,rdx
39f89c	mov    rbx,rcx
39f89f	ja     0x39f91b
39f8a1	mov    ecx,DWORD PTR [rsp+0x60]
39f8a5	test   ecx,ecx
39f8a7	jg     0x39f8c9
39f8a9	mov    DWORD PTR [rsp+0x28],0x0
39f8b1	xor    r9d,r9d
39f8b4	mov    rcx,rbx
39f8b7	mov    DWORD PTR [rsp+0x20],0x30
39f8bf	call   0x3a8eec
39f8c4	dec    DWORD PTR [rbx+0x78]
39f8c7	jmp    0x39f911
39f8c9	mov    edx,0x3
39f8ce	mov    r8d,0x200
39f8d4	call   0x3762ac
39f8d9	xorps  xmm3,xmm3
39f8dc	mov    rdx,r10
39f8df	mov    rcx,rbx
39f8e2	movd   xmm0,eax
39f8e6	dec    eax
39f8e8	cvtdq2ps xmm0,xmm0
39f8eb	mov    DWORD PTR [rsp+0x28],eax
39f8ef	movaps xmm1,xmm0
39f8f2	subss  xmm1,DWORD PTR [rip+0xffffffffffeed95a]        # 0x28d254
39f8fa	mulss  xmm1,DWORD PTR [rip+0xfffffffffff0d5e6]        # 0x2acee8
39f902	divss  xmm1,xmm0
39f906	movss  DWORD PTR [rsp+0x20],xmm1
39f90c	call   0x3a684c
39f911	mov    edx,edi
39f913	mov    rcx,rbx
39f916	call   0x378a14
39f91b	mov    rbx,QWORD PTR [rsp+0x40]
39f920	add    rsp,0x30
39f924	pop    rdi
39f925	ret
