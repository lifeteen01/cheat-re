38f8b4	mov    QWORD PTR [rsp+0x8],rbx
38f8b9	push   rbp
38f8ba	push   rsi
38f8bb	push   rdi
38f8bc	push   r14
38f8be	push   r15
38f8c0	mov    rbp,rsp
38f8c3	sub    rsp,0x70
38f8c7	movss  xmm2,DWORD PTR [rip+0xfffffffffff03865]        # 0x293134
38f8cf	mov    rdi,rdx
38f8d2	mov    r14,QWORD PTR [rip+0x7624f]        # 0x405b28
38f8d9	mov    rsi,rcx
38f8dc	movaps XMMWORD PTR [rsp+0x60],xmm6
38f8e1	lea    rcx,[rbp-0x50]
38f8e5	movss  xmm6,DWORD PTR [rdx+0x6c]
38f8ea	mov    r15,r8
38f8ed	addss  xmm6,DWORD PTR [rdx+0x64]
38f8f2	movaps XMMWORD PTR [rsp+0x50],xmm7
38f8f7	movss  xmm7,DWORD PTR [rdx+0x68]
38f8fc	addss  xmm7,DWORD PTR [rdx+0x60]
38f901	subss  xmm6,DWORD PTR [rdx+0xb0]
38f909	subss  xmm7,DWORD PTR [rdx+0xac]
38f911	add    rdx,0x50
38f915	call   0x38bc08
38f91a	movaps xmm2,xmm6
38f91d	lea    rcx,[rbp+0x38]
38f921	movaps xmm1,xmm7
38f924	call   0x2cc340
38f929	lea    r8,[rbp-0x50]
38f92d	mov    rdx,r15
38f930	lea    rcx,[rbp+0x48]
38f934	mov    rbx,rax
38f937	call   0x2ef9d8
38f93c	mov    rdx,rax
38f93f	lea    rcx,[rbp-0x48]
38f943	mov    r8,rbx
38f946	call   0x2ef9d8
38f94b	test   DWORD PTR [rdi+0x14],0x2000000
38f952	je     0x38f95e
38f954	movsd  xmm0,QWORD PTR [rbp-0x48]
38f959	jmp    0x38faa2
38f95e	test   DWORD PTR [rdi+0x14],0x14000000
38f965	movsd  xmm0,QWORD PTR [r14+0x37e8]
38f96e	movsd  QWORD PTR [rbp+0x48],xmm0
38f973	je     0x38f9a2
38f975	movss  xmm1,DWORD PTR [rip+0xfffffffffff037fb]        # 0x293178
38f97d	lea    rcx,[rbp+0x38]
38f981	movaps xmm2,xmm1
38f984	call   0x2cc340
38f989	mov    r8,rax
38f98c	lea    rdx,[rbp+0x48]
38f990	lea    rcx,[rbp-0x40]
38f994	call   0x383070
38f999	movsd  xmm0,QWORD PTR [rax]
38f99d	movsd  QWORD PTR [rbp+0x48],xmm0
38f9a2	call   0x392868
38f9a7	movss  xmm2,DWORD PTR [rip+0xfffffffffff03785]        # 0x293134
38f9af	lea    rdx,[r14+0x3894]
38f9b6	lea    rcx,[rbp-0x40]
38f9ba	movsd  xmm0,QWORD PTR [rax+0x1c]
38f9bf	movsd  QWORD PTR [rbp+0x38],xmm0
38f9c4	call   0x38bc08
38f9c9	mov    r8,rax
38f9cc	lea    rdx,[rbp+0x38]
38f9d0	lea    rcx,[rbp-0x38]
38f9d4	call   0x3367e4
38f9d9	mov    r8,rax
38f9dc	lea    rdx,[rbp+0x48]
38f9e0	lea    rcx,[rbp-0x30]
38f9e4	call   0x383044
38f9e9	lea    r8,[rbp+0x48]
38f9ed	lea    rdx,[rbp-0x48]
38f9f1	lea    rcx,[rbp+0x38]
38f9f5	mov    r9,QWORD PTR [rax]
38f9f8	call   0x393018
38f9fd	lea    r8,[rbp+0x38]
38fa01	mov    rdx,rdi
38fa04	lea    rcx,[rbp+0x48]
38fa08	call   0x38fbe8
38fa0d	movss  xmm1,DWORD PTR [rbp+0x48]
38fa12	mov    al,0x1
38fa14	subss  xmm1,DWORD PTR [rbp-0x50]
38fa19	movss  xmm0,DWORD PTR [r15]
38fa1e	subss  xmm1,xmm7
38fa22	comiss xmm0,xmm1
38fa25	jbe    0x38fa36
38fa27	test   BYTE PTR [rdi+0x14],0x8
38fa2b	jne    0x38fa36
38fa2d	test   DWORD PTR [rdi+0x14],0x800
38fa34	jne    0x38fa43
38fa36	test   DWORD PTR [rdi+0x14],0x8000
38fa3d	jne    0x38fa43
38fa3f	xor    cl,cl
38fa41	jmp    0x38fa45
38fa43	mov    cl,al
38fa45	movss  xmm1,DWORD PTR [rbp+0x4c]
38fa4a	subss  xmm1,DWORD PTR [rbp-0x4c]
38fa4f	movss  xmm0,DWORD PTR [r15+0x4]
38fa55	subss  xmm1,xmm6
38fa59	comiss xmm0,xmm1
38fa5c	jbe    0x38fa64
38fa5e	test   BYTE PTR [rdi+0x14],0x8
38fa62	je     0x38fa6f
38fa64	test   DWORD PTR [rdi+0x14],0x4000
38fa6b	jne    0x38fa6f
38fa6d	xor    al,al
38fa6f	test   cl,cl
38fa71	je     0x38fa86
38fa73	movss  xmm0,DWORD PTR [rbp+0x3c]
38fa78	addss  xmm0,DWORD PTR [r14+0x3844]
38fa81	movss  DWORD PTR [rbp+0x3c],xmm0
38fa86	test   al,al
38fa88	je     0x38fa9d
38fa8a	movss  xmm0,DWORD PTR [rbp+0x38]
38fa8f	addss  xmm0,DWORD PTR [r14+0x3844]
38fa98	movss  DWORD PTR [rbp+0x38],xmm0
38fa9d	movsd  xmm0,QWORD PTR [rbp+0x38]
38faa2	mov    rbx,QWORD PTR [rsp+0xa0]
38faaa	mov    rax,rsi
38faad	movaps xmm6,XMMWORD PTR [rsp+0x60]
38fab2	movaps xmm7,XMMWORD PTR [rsp+0x50]
38fab7	movsd  QWORD PTR [rsi],xmm0
38fabb	add    rsp,0x70
38fabf	pop    r15
38fac1	pop    r14
38fac3	pop    rdi
38fac4	pop    rsi
38fac5	pop    rbp
38fac6	ret
