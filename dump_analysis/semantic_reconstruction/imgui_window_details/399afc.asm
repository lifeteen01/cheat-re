399afc	rex push rbp
399afe	push   rbx
399aff	push   rsi
399b00	push   rdi
399b01	push   r14
399b03	push   r15
399b05	lea    rbp,[rsp-0xf]
399b0a	sub    rsp,0x88
399b11	mov    rax,QWORD PTR [rbp+0x6f]
399b15	mov    rdi,r9
399b18	movsd  xmm0,QWORD PTR [rdx]
399b1c	mov    r14,r8
399b1f	mov    rsi,QWORD PTR [rbp+0x67]
399b23	mov    rbx,rdx
399b26	movaps XMMWORD PTR [rsp+0x70],xmm6
399b2b	mov    r15,rcx
399b2e	movsd  QWORD PTR [rbp+0x4f],xmm0
399b33	xorps  xmm6,xmm6
399b36	test   rax,rax
399b39	je     0x399b4a
399b3b	movsd  xmm0,QWORD PTR [rax]
399b3f	lea    rdx,[rbp-0x29]
399b43	movsd  QWORD PTR [rbp-0x29],xmm0
399b48	jmp    0x399b65
399b4a	xor    r9d,r9d
399b4d	movss  DWORD PTR [rsp+0x20],xmm6
399b53	mov    r8,rsi
399b56	lea    rcx,[rbp+0x6f]
399b5a	mov    rdx,rdi
399b5d	call   0x38f79c
399b62	mov    rdx,rax
399b65	mov    rcx,QWORD PTR [rbp+0x7f]
399b69	mov    r8,r14
399b6c	movss  xmm0,DWORD PTR [rdx]
399b70	test   rcx,rcx
399b73	movss  xmm4,DWORD PTR [rbp+0x4f]
399b78	movss  xmm5,DWORD PTR [rdx+0x4]
399b7d	addss  xmm0,xmm4
399b81	movss  xmm3,DWORD PTR [rbp+0x53]
399b86	lea    rax,[rcx+0x8]
399b8a	cmovne r8,rax
399b8e	cmovne rbx,rcx
399b92	comiss xmm0,DWORD PTR [r8]
399b96	jae    0x399baa
399b98	movaps xmm0,xmm5
399b9b	addss  xmm0,xmm3
399b9f	comiss xmm0,DWORD PTR [r8+0x4]
399ba4	jae    0x399baa
399ba6	xor    al,al
399ba8	jmp    0x399bac
399baa	mov    al,0x1
399bac	test   rcx,rcx
399baf	je     0x399bcc
399bb1	movss  xmm0,DWORD PTR [rbx]
399bb5	comiss xmm0,xmm4
399bb8	ja     0x399bc8
399bba	movss  xmm0,DWORD PTR [rbx+0x4]
399bbf	comiss xmm0,xmm3
399bc2	ja     0x399bc8
399bc4	xor    cl,cl
399bc6	jmp    0x399bca
399bc8	mov    cl,0x1
399bca	or     al,cl
399bcc	mov    rcx,QWORD PTR [rbp+0x77]
399bd0	movss  xmm2,DWORD PTR [rcx]
399bd4	comiss xmm2,xmm6
399bd7	jbe    0x399bfb
399bd9	movss  xmm1,DWORD PTR [r14]
399bde	movaps xmm0,xmm4
399be1	subss  xmm1,xmm4
399be5	subss  xmm1,DWORD PTR [rdx]
399be9	mulss  xmm1,xmm2
399bed	addss  xmm1,xmm4
399bf1	call   0x38a3f4
399bf6	movss  DWORD PTR [rbp+0x4f],xmm0
399bfb	movss  xmm2,DWORD PTR [rcx+0x4]
399c00	comiss xmm2,xmm6
399c03	jbe    0x399c28
399c05	movss  xmm1,DWORD PTR [r14+0x4]
399c0b	movaps xmm0,xmm3
399c0e	subss  xmm1,xmm3
399c12	subss  xmm1,xmm5
399c16	mulss  xmm1,xmm2
399c1a	addss  xmm1,xmm3
399c1e	call   0x38a3f4
399c23	movss  DWORD PTR [rbp+0x53],xmm0
399c28	test   al,al
399c2a	je     0x399c6c
399c2c	movss  xmm0,DWORD PTR [r8+0x4]
399c32	lea    rcx,[rbp-0x21]
399c36	movss  xmm3,DWORD PTR [r8]
399c3b	movss  xmm2,DWORD PTR [rbx+0x4]
399c40	movss  xmm1,DWORD PTR [rbx]
399c44	movss  DWORD PTR [rsp+0x20],xmm0
399c4a	call   0x2cc350
399c4f	movss  xmm1,DWORD PTR [rip+0xffffffffffef35fd]        # 0x28d254
399c57	mov    ecx,0x1
399c5c	call   0x392298
399c61	lea    rcx,[rbp-0x21]
399c65	mov    QWORD PTR [rsp+0x40],rcx
399c6a	jmp    0x399c87
399c6c	movss  xmm1,DWORD PTR [rip+0xffffffffffef35e0]        # 0x28d254
399c74	mov    ecx,0x1
399c79	call   0x392298
399c7e	mov    QWORD PTR [rsp+0x40],0x0
399c87	movss  DWORD PTR [rsp+0x38],xmm6
399c8d	lea    r9,[rbp+0x4f]
399c91	mov    QWORD PTR [rsp+0x30],rsi
399c96	xorps  xmm2,xmm2
399c99	mov    QWORD PTR [rsp+0x28],rdi
399c9e	xor    edx,edx
399ca0	mov    rcx,r15
399ca3	mov    DWORD PTR [rsp+0x20],eax
399ca7	call   0x3a31f8
399cac	movaps xmm6,XMMWORD PTR [rsp+0x70]
399cb1	add    rsp,0x88
399cb8	pop    r15
399cba	pop    r14
399cbc	pop    rdi
399cbd	pop    rsi
399cbe	pop    rbx
399cbf	pop    rbp
399cc0	ret
