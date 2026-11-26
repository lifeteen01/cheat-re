38ff14	mov    rax,rsp
38ff17	mov    QWORD PTR [rax+0x20],rbx
38ff1b	push   rdi
38ff1c	sub    rsp,0x40
38ff20	movsd  xmm0,QWORD PTR [rcx+0x28]
38ff25	mov    rdi,rdx
38ff28	movaps XMMWORD PTR [rax-0x18],xmm6
38ff2c	mov    rbx,rcx
38ff2f	movsd  QWORD PTR [rax+0x8],xmm0
38ff34	movaps XMMWORD PTR [rax-0x28],xmm7
38ff38	mov    rax,QWORD PTR [rip+0x75be9]        # 0x405b28
38ff3f	cmp    BYTE PTR [rax+0x7f],0x0
38ff43	je     0x38ff56
38ff45	test   BYTE PTR [rcx+0x14],0x1
38ff49	jne    0x38ff56
38ff4b	call   0x39bf80
38ff50	movss  DWORD PTR [rsp+0x54],xmm0
38ff56	movss  xmm7,DWORD PTR [rdi+0x8]
38ff5b	lea    r8,[rsp+0x50]
38ff60	movss  xmm6,DWORD PTR [rdi+0xc]
38ff65	lea    rcx,[rsp+0x58]
38ff6a	mov    rdx,rdi
38ff6d	call   0x3367e4
38ff72	unpcklps xmm7,xmm6
38ff75	lea    rdx,[rbx+0x20]
38ff79	movq   r9,xmm7
38ff7e	lea    rcx,[rsp+0x60]
38ff83	mov    r8,rax
38ff86	call   0x393018
38ff8b	movaps xmm6,XMMWORD PTR [rsp+0x30]
38ff90	movaps xmm7,XMMWORD PTR [rsp+0x20]
38ff95	movsd  xmm0,QWORD PTR [rax]
38ff99	movsd  QWORD PTR [rbx+0x20],xmm0
38ff9e	mov    rbx,QWORD PTR [rsp+0x68]
38ffa3	add    rsp,0x40
38ffa7	pop    rdi
38ffa8	ret
