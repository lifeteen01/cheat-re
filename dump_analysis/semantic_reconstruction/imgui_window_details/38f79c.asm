38f79c	mov    QWORD PTR [rsp+0x8],rbx
38f7a1	mov    QWORD PTR [rsp+0x18],rsi
38f7a6	push   rdi
38f7a7	sub    rsp,0x40
38f7ab	mov    rsi,QWORD PTR [rip+0x76376]        # 0x405b28
38f7b2	mov    rax,r8
38f7b5	mov    rdi,rdx
38f7b8	mov    rbx,rcx
38f7bb	test   r9b,r9b
38f7be	je     0x38f7cb
38f7c0	mov    rdx,rax
38f7c3	mov    rcx,rdi
38f7c6	call   0x391c50
38f7cb	movss  xmm2,DWORD PTR [rsi+0x3c30]
38f7d3	cmp    rdi,rax
38f7d6	jne    0x38f7e5
38f7d8	xorps  xmm1,xmm1
38f7db	mov    rcx,rbx
38f7de	call   0x2cc340
38f7e3	jmp    0x38f846
38f7e5	movss  xmm0,DWORD PTR [rsp+0x70]
38f7eb	lea    rdx,[rsp+0x58]
38f7f0	movss  xmm3,DWORD PTR [rip+0xffffffffffefe35c]        # 0x28db54
38f7f8	mov    rcx,QWORD PTR [rsi+0x3c28]
38f7ff	mov    QWORD PTR [rsp+0x38],0x0
38f808	mov    QWORD PTR [rsp+0x30],rax
38f80d	mov    QWORD PTR [rsp+0x28],rdi
38f812	movss  DWORD PTR [rsp+0x20],xmm0
38f818	call   0x3a3874
38f81d	movss  xmm0,DWORD PTR [rsp+0x58]
38f823	addss  xmm0,DWORD PTR [rip+0xfffffffffff1a921]        # 0x2aa14c
38f82b	cvttss2si eax,xmm0
38f82f	movd   xmm0,eax
38f833	cvtdq2ps xmm0,xmm0
38f836	movss  DWORD PTR [rsp+0x58],xmm0
38f83c	movsd  xmm1,QWORD PTR [rsp+0x58]
38f842	movsd  QWORD PTR [rbx],xmm1
38f846	mov    rsi,QWORD PTR [rsp+0x60]
38f84b	mov    rax,rbx
38f84e	mov    rbx,QWORD PTR [rsp+0x50]
38f853	add    rsp,0x40
38f857	pop    rdi
38f858	ret
