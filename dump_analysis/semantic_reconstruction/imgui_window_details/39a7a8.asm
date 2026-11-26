39a7a8	mov    rax,rsp
39a7ab	mov    QWORD PTR [rax+0x18],r8
39a7af	push   rbp
39a7b0	push   rbx
39a7b1	push   rsi
39a7b2	push   rdi
39a7b3	push   r12
39a7b5	push   r13
39a7b7	push   r14
39a7b9	push   r15
39a7bb	lea    rbp,[rax-0x5f]
39a7bf	sub    rsp,0xc8
39a7c6	mov    rdi,QWORD PTR [rip+0x6b35b]        # 0x405b28
39a7cd	mov    r12,r9
39a7d0	mov    r13d,DWORD PTR [rcx+0x14]
39a7d4	mov    rsi,rdx
39a7d7	movaps XMMWORD PTR [rax-0x58],xmm6
39a7db	mov    r14,rcx
39a7de	movaps XMMWORD PTR [rax-0x68],xmm7
39a7e2	movaps XMMWORD PTR [rax-0x78],xmm8
39a7e7	lea    rbx,[rdi+0x37f8]
39a7ee	movaps XMMWORD PTR [rax-0x88],xmm9
39a7f6	movaps XMMWORD PTR [rsp+0x70],xmm10
39a7fc	test   r13b,0x20
39a800	jne    0x39a80c
39a802	cmp    DWORD PTR [rbx],0xffffffff
39a805	je     0x39a80c
39a807	mov    r15b,0x1
39a80a	jmp    0x39a80f
39a80c	xor    r15b,r15b
39a80f	mov    eax,DWORD PTR [rdi+0x4788]
39a815	mov    DWORD PTR [rbp+0x6f],eax
39a818	or     eax,0x10
39a81b	mov    DWORD PTR [rdi+0x4788],eax
39a821	mov    DWORD PTR [rcx+0x158],0x1
39a82b	lea    rcx,[rbp-0x69]
39a82f	movss  xmm7,DWORD PTR [rdi+0x380c]
39a837	movss  xmm9,DWORD PTR [rdi+0x3c30]
39a840	movaps xmm8,xmm7
39a844	call   0x2d4870
39a849	lea    rcx,[rbp+0x7f]
39a84d	call   0x2d4870
39a852	test   r12,r12
39a855	je     0x39a885
39a857	movss  xmm1,DWORD PTR [rsi+0x8]
39a85c	addss  xmm8,xmm9
39a861	movss  xmm2,DWORD PTR [rsi+0x4]
39a866	lea    rcx,[rbp+0x67]
39a86a	subss  xmm1,xmm8
39a86f	subss  xmm1,DWORD PTR [rdi+0x380c]
39a877	call   0x2cc340
39a87c	movsd  xmm0,QWORD PTR [rax]
39a880	movsd  QWORD PTR [rbp-0x69],xmm0
39a885	test   r15b,r15b
39a888	je     0x39a932
39a88e	cmp    DWORD PTR [rbx],0x1
39a891	jne    0x39a8c8
39a893	movss  xmm1,DWORD PTR [rsi+0x8]
39a898	lea    rcx,[rbp+0x67]
39a89c	movss  xmm2,DWORD PTR [rsi+0x4]
39a8a1	movaps xmm0,xmm9
39a8a5	addss  xmm0,xmm8
39a8aa	subss  xmm1,xmm0
39a8ae	movaps xmm8,xmm0
39a8b2	subss  xmm1,DWORD PTR [rdi+0x380c]
39a8ba	call   0x2cc340
39a8bf	movsd  xmm0,QWORD PTR [rax]
39a8c3	movsd  QWORD PTR [rbp+0x7f],xmm0
39a8c8	cmp    DWORD PTR [rbx],0x0
39a8cb	jne    0x39a8f8
39a8cd	movss  xmm2,DWORD PTR [rsi+0x4]
39a8d2	lea    rcx,[rbp+0x67]
39a8d6	movaps xmm1,xmm7
39a8d9	addss  xmm1,DWORD PTR [rsi]
39a8dd	subss  xmm1,DWORD PTR [rdi+0x380c]
39a8e5	call   0x2cc340
39a8ea	addss  xmm7,xmm9
39a8ef	movsd  xmm0,QWORD PTR [rax]
39a8f3	movsd  QWORD PTR [rbp+0x7f],xmm0
39a8f8	lea    rdx,[rbp-0x61]
39a8fc	lea    rcx,[rbp+0x67]
39a900	call   0x38c5a8   ; STR "#COLLAPSE"
39a905	mov    rcx,rax
39a908	call   0x39e94c
39a90d	mov    rdx,rax
39a910	xor    r8d,r8d
39a913	mov    rcx,r14
39a916	call   0x392614
39a91b	mov    ecx,eax
39a91d	lea    rdx,[rbp+0x7f]
39a921	call   0x3be114
39a926	test   al,al
39a928	je     0x39a932
39a92a	mov    BYTE PTR [r14+0xba],0x1
39a932	test   r12,r12
39a935	je     0x39a96e
39a937	lea    rdx,[rbp+0x67]
39a93b	lea    rcx,[rbp+0x67]
39a93f	call   0x38c8bc   ; STR "#CLOSE"
39a944	mov    rcx,rax
39a947	call   0x39e8d4
39a94c	mov    rdx,rax
39a94f	xor    r8d,r8d
39a952	mov    rcx,r14
39a955	call   0x392614
39a95a	mov    ecx,eax
39a95c	lea    rdx,[rbp-0x69]
39a960	call   0x3bde30
39a965	test   al,al
39a967	je     0x39a96e
39a969	mov    BYTE PTR [r12],0x0
39a96e	mov    eax,DWORD PTR [rbp+0x6f]
39a971	mov    DWORD PTR [r14+0x158],0x0
39a97c	mov    DWORD PTR [rdi+0x4788],eax
39a982	and    r13d,0x100000
39a989	je     0x39a996
39a98b	mulss  xmm9,DWORD PTR [rip+0xffffffffffef8740]        # 0x2930d4
39a994	jmp    0x39a99a
39a996	xorps  xmm9,xmm9
39a99a	xorps  xmm2,xmm2
39a99d	lea    rcx,[rbp+0x6f]
39a9a1	movaps xmm1,xmm9
39a9a5	call   0x2cc340
39a9aa	movss  xmm0,DWORD PTR [rip+0xffffffffffef88ae]        # 0x293260
39a9b2	lea    rcx,[rbp-0x61]
39a9b6	mov    r15,QWORD PTR [rbp+0x77]
39a9ba	mov    r9b,0x1
39a9bd	mov    rdx,r15
39a9c0	movss  DWORD PTR [rsp+0x20],xmm0
39a9c6	xor    r8d,r8d
39a9c9	mov    rbx,rax
39a9cc	call   0x38f79c
39a9d1	mov    rdx,rax
39a9d4	lea    rcx,[rbp+0x67]
39a9d8	mov    r8,rbx
39a9db	call   0x2ef9d8
39a9e0	movss  xmm0,DWORD PTR [rdi+0x380c]
39a9e8	comiss xmm7,xmm0
39a9eb	jbe    0x39a9f5
39a9ed	addss  xmm7,DWORD PTR [rdi+0x3824]
39a9f5	comiss xmm8,xmm0
39a9f9	jbe    0x39aa04
39a9fb	addss  xmm8,DWORD PTR [rdi+0x3824]
39aa04	movss  xmm10,DWORD PTR [rip+0xffffffffffef2847]        # 0x28d254
39aa0d	lea    rbx,[rdi+0x37f0]
39aa14	movss  xmm0,DWORD PTR [rbx]
39aa18	add    rdi,0x3824
39aa1f	comiss xmm0,DWORD PTR [rip+0xffffffffffef2826]        # 0x28d24c
39aa26	jbe    0x39aa9e
39aa28	comiss xmm10,xmm0
39aa2c	jbe    0x39aa9e
39aa2e	subss  xmm0,DWORD PTR [rip+0xffffffffffef281a]        # 0x28d250
39aa36	call   0x2e3ef0
39aa3b	mov    rcx,rsi
39aa3e	movaps xmm6,xmm0
39aa41	call   0x378970
39aa46	movaps xmm2,xmm0
39aa49	movaps xmm1,xmm8
39aa4d	subss  xmm2,xmm7
39aa51	movaps xmm0,xmm7
39aa54	subss  xmm2,xmm8
39aa59	subss  xmm2,DWORD PTR [rbp+0x67]
39aa5e	call   0x38a3f4
39aa63	movaps xmm1,xmm2
39aa66	call   0x3762cc
39aa6b	movaps xmm2,xmm0
39aa6e	addss  xmm6,xmm6
39aa72	movaps xmm0,xmm10
39aa76	subss  xmm0,xmm6
39aa7a	call   0x3789fc
39aa7f	mulss  xmm2,xmm0
39aa83	movaps xmm0,xmm7
39aa86	movaps xmm1,xmm2
39aa89	call   0x38a3f4
39aa8e	movaps xmm7,xmm0
39aa91	movaps xmm0,xmm8
39aa95	call   0x38a3f4
39aa9a	movaps xmm8,xmm0
39aa9e	movss  xmm3,DWORD PTR [rsi+0x8]
39aaa3	lea    rcx,[rbp-0x51]
39aaa7	addss  xmm7,DWORD PTR [rsi]
39aaab	movss  xmm0,DWORD PTR [rsi+0xc]
39aab0	subss  xmm3,xmm8
39aab5	movss  xmm2,DWORD PTR [rsi+0x4]
39aaba	movss  DWORD PTR [rsp+0x20],xmm0
39aac0	movaps xmm1,xmm7
39aac3	call   0x38baf4
39aac8	movss  xmm0,DWORD PTR [rbp-0x49]
39aacd	addss  xmm0,DWORD PTR [rdi]
39aad1	movss  xmm1,DWORD PTR [rsi+0x8]
39aad6	call   0x3762cc
39aadb	movss  xmm2,DWORD PTR [rbp-0x45]
39aae0	lea    rcx,[rbp-0x61]
39aae4	movss  xmm1,DWORD PTR [rbp-0x51]
39aae9	movaps xmm3,xmm0
39aaec	movss  DWORD PTR [rsp+0x20],xmm2
39aaf2	movss  xmm2,DWORD PTR [rbp-0x4d]
39aaf7	call   0x38baf4
39aafc	test   r13d,r13d
39aaff	je     0x39aba8
39ab05	lea    rcx,[rbp+0x6f]
39ab09	call   0x2d4870
39ab0e	lea    rcx,[rbp-0x51]
39ab12	call   0x378970
39ab17	subss  xmm0,DWORD PTR [rbp+0x67]
39ab1c	movss  xmm3,DWORD PTR [rbp-0x51]
39ab21	movss  xmm2,DWORD PTR [rbp-0x49]
39ab26	movaps xmm1,xmm3
39ab29	mulss  xmm0,DWORD PTR [rbx]
39ab2d	addss  xmm0,xmm3
39ab31	addss  xmm0,DWORD PTR [rbp+0x67]
39ab36	call   0x3762bc
39ab3b	movss  xmm7,DWORD PTR [rbp-0x4d]
39ab40	movaps xmm6,xmm0
39ab43	comiss xmm6,xmm3
39ab46	addss  xmm7,DWORD PTR [rbp-0x45]
39ab4b	mulss  xmm7,DWORD PTR [rip+0xffffffffffef26fd]        # 0x28d250
39ab53	jbe    0x39aba8
39ab55	movaps xmm1,xmm10
39ab59	mov    ecx,0x1
39ab5e	call   0x392298
39ab63	mov    rcx,QWORD PTR [r14+0x298]
39ab6a	movaps xmm1,xmm6
39ab6d	unpcklps xmm1,xmm7
39ab70	mov    r8d,eax
39ab73	movq   rdx,xmm1
39ab78	call   0x3a7620
39ab7d	mulss  xmm9,DWORD PTR [rip+0xffffffffffef26ca]        # 0x28d250
39ab86	cvttss2si eax,xmm9
39ab8b	movd   xmm0,eax
39ab8f	cvtdq2ps xmm0,xmm0
39ab92	subss  xmm6,xmm0
39ab96	movss  xmm0,DWORD PTR [rbp-0x59]
39ab9b	movaps xmm1,xmm6
39ab9e	call   0x3762cc
39aba3	movss  DWORD PTR [rbp-0x59],xmm0
39aba8	lea    rax,[rbp-0x61]
39abac	xor    r9d,r9d
39abaf	mov    QWORD PTR [rsp+0x30],rax
39abb4	lea    rdx,[rbp-0x49]
39abb8	lea    rax,[rbp+0x67]
39abbc	mov    QWORD PTR [rsp+0x28],rbx
39abc1	mov    r8,r15
39abc4	mov    QWORD PTR [rsp+0x20],rax
39abc9	lea    rcx,[rbp-0x51]
39abcd	call   0x399a64
39abd2	lea    r11,[rsp+0xc8]
39abda	movaps xmm6,XMMWORD PTR [r11-0x18]
39abdf	movaps xmm7,XMMWORD PTR [r11-0x28]
39abe4	movaps xmm8,XMMWORD PTR [r11-0x38]
39abe9	movaps xmm9,XMMWORD PTR [r11-0x48]
39abee	movaps xmm10,XMMWORD PTR [r11-0x58]
39abf3	mov    rsp,r11
39abf6	pop    r15
39abf8	pop    r14
39abfa	pop    r13
39abfc	pop    r12
39abfe	pop    rdi
39abff	pop    rsi
39ac00	pop    rbx
39ac01	pop    rbp
39ac02	ret
