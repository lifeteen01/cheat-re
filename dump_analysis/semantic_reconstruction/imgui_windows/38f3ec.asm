38f3ec	mov    rax,rsp
38f3ef	push   rbx
38f3f0	push   rbp
38f3f1	push   rsi
38f3f2	push   rdi
38f3f3	push   r14
38f3f5	push   r15
38f3f7	sub    rsp,0x88
38f3fe	movsd  xmm0,QWORD PTR [rdx+0x84]
38f406	mov    r14,rcx
38f409	movsd  QWORD PTR [rcx],xmm0
38f40d	mov    rdi,rdx
38f410	movss  xmm2,DWORD PTR [rdx+0x74]
38f415	lea    rcx,[rax+0x8]
38f419	movss  xmm1,DWORD PTR [rdx+0x70]
38f41e	addss  xmm2,DWORD PTR [rdx+0x64]
38f423	addss  xmm1,DWORD PTR [rdx+0x60]
38f428	movaps XMMWORD PTR [rax-0x48],xmm6
38f42c	movaps XMMWORD PTR [rax-0x58],xmm7
38f430	movaps XMMWORD PTR [rax-0x68],xmm8
38f435	addss  xmm2,DWORD PTR [rdx+0x6c]
38f43a	addss  xmm1,DWORD PTR [rdx+0x68]
38f43f	movaps XMMWORD PTR [rax-0x78],xmm9
38f444	movaps XMMWORD PTR [rsp+0x30],xmm10
38f44a	call   0x2cc340
38f44f	movss  xmm10,DWORD PTR [rip+0xffffffffffefe6fc]        # 0x28db54
38f458	xor    ebp,ebp
38f45a	mov    edx,ebp
38f45c	lea    rcx,[rdi+0x94]
38f463	mov    esi,ebp
38f465	call   0x38bbcc
38f46a	movss  xmm7,DWORD PTR [rax]
38f46e	comiss xmm10,xmm7
38f472	jbe    0x38f53a
38f478	lea    rcx,[rdi+0x9c]
38f47f	mov    edx,esi
38f481	call   0x38bbcc
38f486	lea    rcx,[rdi+0xa4]
38f48d	mov    edx,esi
38f48f	movss  xmm9,DWORD PTR [rax]
38f494	call   0x38bbcc
38f499	movss  xmm8,DWORD PTR [rax]
38f49e	comiss xmm8,DWORD PTR [rip+0xffffffffffefdda6]        # 0x28d24c
38f4a6	jbe    0x38f4fb
38f4a8	lea    rcx,[rdi+0x8c]
38f4af	mov    edx,esi
38f4b1	call   0x38bbcc
38f4b6	lea    rcx,[rdi+0x30]
38f4ba	mov    edx,esi
38f4bc	mov    rbx,rax
38f4bf	call   0x38bbcc
38f4c4	movss  xmm6,DWORD PTR [rbx]
38f4c8	lea    rcx,[rsp+0xc0]
38f4d0	mov    edx,esi
38f4d2	addss  xmm6,DWORD PTR [rax]
38f4d6	call   0x38bbcc
38f4db	movaps xmm3,xmm8
38f4df	movss  DWORD PTR [rsp+0x20],xmm9
38f4e6	xorps  xmm1,xmm1
38f4e9	movaps xmm0,xmm7
38f4ec	subss  xmm6,DWORD PTR [rax]
38f4f0	movaps xmm2,xmm6
38f4f3	call   0x38f744
38f4f8	movaps xmm7,xmm0
38f4fb	lea    rcx,[rdi+0x30]
38f4ff	mov    rdx,rsi
38f502	call   0x38bbcc
38f507	mov    rdx,rsi
38f50a	lea    rcx,[rsp+0xc0]
38f512	mov    rbx,rax
38f515	call   0x38bbcc
38f51a	movss  xmm1,DWORD PTR [rbx]
38f51e	mov    rdx,rsi
38f521	mov    rcx,r14
38f524	subss  xmm1,DWORD PTR [rax]
38f528	mulss  xmm1,xmm9
38f52d	subss  xmm7,xmm1
38f531	call   0x38bbcc
38f536	movss  DWORD PTR [rax],xmm7
38f53a	mov    rdx,rsi
38f53d	mov    rcx,r14
38f540	call   0x38bbcc
38f545	xorps  xmm1,xmm1
38f548	mov    rbx,rax
38f54b	movss  xmm0,DWORD PTR [rax]
38f54f	call   0x38a3f4
38f554	cvttss2si ecx,xmm0
38f558	movd   xmm6,ecx
38f55c	cvtdq2ps xmm6,xmm6
38f55f	movss  DWORD PTR [rax],xmm6
38f563	cmp    BYTE PTR [rdi+0xb9],0x0
38f56a	jne    0x38f594
38f56c	cmp    BYTE PTR [rdi+0xbb],0x0
38f573	jne    0x38f594
38f575	lea    rcx,[rdi+0x8c]
38f57c	mov    rdx,rsi
38f57f	call   0x38bbcc
38f584	movaps xmm0,xmm6
38f587	movss  xmm1,DWORD PTR [rax]
38f58b	call   0x3762cc
38f590	movss  DWORD PTR [rbx],xmm0
38f594	inc    ebp
38f596	cmp    ebp,0x2
38f599	jl     0x38f45a
38f59f	movaps xmm6,XMMWORD PTR [rsp+0x70]
38f5a4	mov    rax,r14
38f5a7	movaps xmm7,XMMWORD PTR [rsp+0x60]
38f5ac	movaps xmm8,XMMWORD PTR [rsp+0x50]
38f5b2	movaps xmm9,XMMWORD PTR [rsp+0x40]
38f5b8	movaps xmm10,XMMWORD PTR [rsp+0x30]
38f5be	add    rsp,0x88
38f5c5	pop    r15
38f5c7	pop    r14
38f5c9	pop    rdi
38f5ca	pop    rsi
38f5cb	pop    rbp
38f5cc	pop    rbx
38f5cd	ret
