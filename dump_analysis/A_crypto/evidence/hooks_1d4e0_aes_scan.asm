1d4e0	mov    QWORD PTR [rsp+0x18],rbx
1d4e5	push   rbp
1d4e6	push   rsi
1d4e7	push   rdi
1d4e8	push   r12
1d4ea	push   r13
1d4ec	push   r14
1d4ee	push   r15
1d4f0	lea    rbp,[rsp-0x350]
1d4f8	sub    rsp,0x450
1d4ff	mov    rax,QWORD PTR [rip+0x47b3a]        # 0x65040
1d506	xor    rax,rsp
1d509	mov    QWORD PTR [rbp+0x340],rax
1d510	mov    QWORD PTR [rbp-0x20],rdx
1d514	mov    QWORD PTR [rbp-0x28],rcx
1d518	movzx  eax,BYTE PTR [rip+0x8931d]        # 0xa683c
1d51f	test   al,al
1d521	je     0x1e055
1d527	xorps  xmm0,xmm0
1d52a	xor    eax,eax
1d52c	movups XMMWORD PTR [rbp+0x120],xmm0
1d533	mov    QWORD PTR [rbp+0x130],rax
1d53a	mov    r8,QWORD PTR [rip+0x8941f]        # 0xa6960
1d541	mov    rdx,QWORD PTR [rip+0x892d8]        # 0xa6820
1d548	lea    rcx,[rbp+0x120]
1d54f	call   0x1bef0
1d554	xorps  xmm0,xmm0
1d557	xor    eax,eax
1d559	movups XMMWORD PTR [rbp-0x78],xmm0
1d55d	mov    QWORD PTR [rbp-0x68],rax
1d561	lea    rcx,[rbp-0x78]
1d565	call   0x1c7e0
1d56a	xorps  xmm0,xmm0
1d56d	movdqu XMMWORD PTR [rbp+0x108],xmm0
1d575	mov    QWORD PTR [rbp+0x118],0x0
1d580	xor    edi,edi
1d582	mov    QWORD PTR [rsp+0x58],rdi
1d587	xor    r15d,r15d
1d58a	mov    QWORD PTR [rsp+0x50],r15
1d58f	xor    r14d,r14d
1d592	mov    QWORD PTR [rsp+0x48],r14
1d597	movdqu XMMWORD PTR [rbp+0xf0],xmm0
1d59f	mov    QWORD PTR [rbp+0x100],rdi
1d5a6	call   0x30516f
1d5ab	mov    esi,0xd0458948
1d5b0	mov    r13,QWORD PTR [rbp-0x78]
1d5b4	mov    r12,r13
1d5b7	mov    QWORD PTR [rbp-0x80],r13
1d5bb	mov    esi,0x1
1d5c0	cmp    r13,QWORD PTR [rbp-0x70]
1d5c4	je     0x1dc94
1d5ca	mov    rbx,QWORD PTR [rip+0x89347]        # 0xa6918
1d5d1	test   rbx,rbx
1d5d4	je     0x1d5f0
1d5d6	xor    edx,edx
1d5d8	mov    rcx,rbx
1d5db	push   rax
1d5dc	call   0x259fed
1d5e1	test   eax,eax
1d5e3	je     0x1dee1
1d5e9	mov    rbx,QWORD PTR [rip+0x89328]        # 0xa6918
1d5f0	mov    rdi,QWORD PTR [rbp+0x120]
1d5f7	mov    r9,QWORD PTR [rbp+0x128]
1d5fe	cmp    rdi,r9
1d601	je     0x1d632
1d603	mov    r8,QWORD PTR [r12]
1d607	mov    rax,QWORD PTR [rdi]
1d60a	cmp    r8,rax
1d60d	jb     0x1d626
1d60f	mov    edx,DWORD PTR [rdi+0x8]
1d612	add    rdx,rax
1d615	mov    rcx,QWORD PTR [r12+0x8]
1d61a	add    rcx,r8
1d61d	cmp    rcx,rdx
1d620	jbe    0x1dc74
1d626	add    rdi,0x110
1d62d	cmp    rdi,r9
1d630	jne    0x1d607
1d632	mov    rsi,QWORD PTR [r12+0x8]
1d637	lea    rax,[rsi-0x100]
1d63e	cmp    rax,0x3ffff00
1d644	ja     0x1dc74
1d64a	mov    rdi,QWORD PTR [rbp+0xf0]
1d651	mov    rax,QWORD PTR [rbp+0x100]
1d658	sub    rax,rdi
1d65b	cmp    rsi,rax
1d65e	jbe    0x1d690
1d660	mov    rdx,rsi
1d663	lea    rcx,[rbp+0xf0]
1d66a	call   0xe0d0
1d66f	mov    rdi,QWORD PTR [rbp+0xf0]
1d676	mov    r8,rsi
1d679	xor    edx,edx
1d67b	mov    rcx,rdi
1d67e	call   0x478c0
1d683	lea    rax,[rdi+rsi*1]
1d687	mov    rbx,QWORD PTR [rip+0x8928a]        # 0xa6918
1d68e	jmp    0x1d6d5
1d690	mov    r14,QWORD PTR [rbp+0xf8]
1d697	sub    r14,rdi
1d69a	xor    edx,edx
1d69c	mov    rcx,rdi
1d69f	cmp    rsi,r14
1d6a2	jbe    0x1d6c9
1d6a4	mov    r8,r14
1d6a7	call   0x478c0
1d6ac	sub    rsi,r14
1d6af	mov    rdi,QWORD PTR [rbp+0xf8]
1d6b6	mov    r8,rsi
1d6b9	xor    edx,edx
1d6bb	mov    rcx,rdi
1d6be	call   0x478c0
1d6c3	lea    rax,[rdi+rsi*1]
1d6c7	jmp    0x1d6d5
1d6c9	mov    r8,rsi
1d6cc	call   0x478c0
1d6d1	lea    rax,[rsi+rdi*1]
1d6d5	mov    QWORD PTR [rbp+0xf8],rax
1d6dc	xor    r14d,r14d
1d6df	xor    r15d,r15d
1d6e2	mov    rsi,QWORD PTR [r12+0x18]
1d6e7	mov    r13,QWORD PTR [r12+0x20]
1d6ec	cmp    rsi,r13
1d6ef	je     0x1d772
1d6f5	xor    edi,edi
1d6f7	mov    rax,QWORD PTR [rsi+0x8]
1d6fb	test   rax,rax
1d6fe	je     0x1d766
1d700	test   rbx,rbx
1d703	je     0x1d718
1d705	xor    edx,edx
1d707	mov    rcx,rbx
1d70a	push   rbx
1d70b	call   0x3eee7b
1d710	test   eax,eax
1d712	je     0x1dee1
1d718	mov    rax,QWORD PTR [rsi+0x8]
1d71c	sub    rax,rdi
1d71f	mov    ebx,0x1000
1d724	cmp    rax,rbx
1d727	cmovb  rbx,rax
1d72b	mov    rdx,QWORD PTR [rbp+0xf0]
1d732	add    rdx,rdi
1d735	add    rdx,r15
1d738	mov    rcx,QWORD PTR [rsi]
1d73b	add    rcx,rdi
1d73e	mov    r8,rbx
1d741	call   0x1b810
1d746	lea    rcx,[rbx+r14*1]
1d74a	test   al,al
1d74c	cmove  rcx,r14
1d750	mov    r14,rcx
1d753	add    rdi,rbx
1d756	mov    rax,QWORD PTR [rsi+0x8]
1d75a	mov    rbx,QWORD PTR [rip+0x891b7]        # 0xa6918
1d761	cmp    rdi,rax
1d764	jb     0x1d700
1d766	add    r15,rax
1d769	add    rsi,0x10
1d76d	cmp    rsi,r13
1d770	jne    0x1d6f5
1d772	mov    rax,QWORD PTR [r12+0x8]
1d777	cmp    r15,rax
1d77a	jne    0x1dc6a
1d780	mov    rdi,QWORD PTR [rsp+0x58]
1d785	cmp    r14,0x30
1d789	jb     0x1dc5e
1d78f	shr    rax,0xc
1d793	add    rdi,rax
1d796	mov    QWORD PTR [rsp+0x58],rdi
1d79b	xor    esi,esi
1d79d	mov    QWORD PTR [rbp-0x40],rsi
1d7a1	mov    rax,QWORD PTR [rbp+0xf8]
1d7a8	sub    rax,QWORD PTR [rbp+0xf0]
1d7af	cmp    rax,0x30
1d7b3	jb     0x1dc5e
1d7b9	nop    DWORD PTR [rax+0x0]
1d7c0	mov    QWORD PTR [rbp-0x38],rsi
1d7c4	mov    rdi,QWORD PTR [rbp+0xf0]
1d7cb	cmp    QWORD PTR [rdi+rsi*1],0xe
1d7d0	jne    0x1dbec
1d7d6	mov    rcx,QWORD PTR [r12]
1d7da	add    rcx,0x10
1d7de	add    rcx,rsi
1d7e1	cmp    QWORD PTR [rdi+rsi*1+0x8],rcx
1d7e6	jne    0x1dbec
1d7ec	lea    rdx,[rdi+0x10]
1d7f0	add    rdx,rsi
1d7f3	mov    rax,QWORD PTR [rdx]
1d7f6	mov    r15,QWORD PTR [rsp+0x50]
1d7fb	cmp    rax,QWORD PTR [rdi+rsi*1+0x20]
1d800	jne    0x1dc57
1d806	mov    rax,QWORD PTR [rdx+0x8]
1d80a	cmp    rax,QWORD PTR [rdi+rsi*1+0x28]
1d80f	jne    0x1dc57
1d815	inc    r15
1d818	mov    QWORD PTR [rsp+0x50],r15
1d81d	mov    rcx,QWORD PTR [rbp+0xf8]
1d824	sub    rcx,rdi
1d827	lea    rax,[rsi+0x100]
1d82e	cmp    rax,rcx
1d831	ja     0x1dc57
1d837	xorps  xmm0,xmm0
1d83a	movups XMMWORD PTR [rbp+0xe0],xmm0
1d841	mov    r8d,0x10
1d847	lea    rcx,[rbp+0xe0]
1d84e	call   0x47120
1d853	movzx  eax,BYTE PTR [rbp+0xe0]
1d85a	mov    BYTE PTR [rsp+0x60],al
1d85e	movzx  eax,BYTE PTR [rbp+0xe1]
1d865	mov    BYTE PTR [rsp+0x61],al
1d869	movzx  r13d,BYTE PTR [rbp+0xe2]
1d871	mov    BYTE PTR [rsp+0x62],r13b
1d876	movzx  r12d,BYTE PTR [rbp+0xe3]
1d87e	mov    BYTE PTR [rsp+0x63],r12b
1d883	movzx  r15d,BYTE PTR [rbp+0xe4]
1d88b	mov    BYTE PTR [rsp+0x64],r15b
1d890	movzx  r14d,BYTE PTR [rbp+0xe5]
1d898	mov    BYTE PTR [rsp+0x65],r14b
1d89d	movzx  esi,BYTE PTR [rbp+0xe6]
1d8a4	mov    BYTE PTR [rsp+0x66],sil
1d8a9	movzx  ebx,BYTE PTR [rbp+0xe7]
1d8b0	mov    BYTE PTR [rsp+0x67],bl
1d8b4	movzx  r11d,BYTE PTR [rbp+0xe8]
1d8bc	mov    BYTE PTR [rsp+0x68],r11b
1d8c1	movzx  r10d,BYTE PTR [rbp+0xe9]
1d8c9	mov    BYTE PTR [rsp+0x69],r10b
1d8ce	movzx  r9d,BYTE PTR [rbp+0xea]
1d8d6	mov    BYTE PTR [rsp+0x6a],r9b
1d8db	movzx  r8d,BYTE PTR [rbp+0xeb]
1d8e3	mov    BYTE PTR [rsp+0x6b],r8b
1d8e8	movzx  edi,BYTE PTR [rbp+0xec]
1d8ef	mov    BYTE PTR [rsp+0x6c],dil
1d8f4	movzx  edx,BYTE PTR [rbp+0xed]
1d8fb	mov    BYTE PTR [rsp+0x6d],dl
1d8ff	movzx  ecx,BYTE PTR [rbp+0xee]
1d906	mov    BYTE PTR [rsp+0x6e],cl
1d90a	movzx  eax,BYTE PTR [rbp+0xef]
1d911	mov    BYTE PTR [rsp+0x6f],al
1d915	movzx  r13d,BYTE PTR [rbp+0xe0]
1d91d	mov    BYTE PTR [rsp+0x70],r13b
1d922	movzx  r13d,BYTE PTR [rbp+0xe1]
1d92a	mov    BYTE PTR [rsp+0x71],r13b
1d92f	movzx  r13d,BYTE PTR [rbp+0xe2]
1d937	mov    BYTE PTR [rsp+0x72],r13b
1d93c	mov    BYTE PTR [rsp+0x73],r12b
1d941	mov    BYTE PTR [rsp+0x74],r15b
1d946	mov    BYTE PTR [rsp+0x75],r14b
1d94b	mov    BYTE PTR [rsp+0x76],sil
1d950	mov    BYTE PTR [rsp+0x77],bl
1d954	mov    BYTE PTR [rsp+0x78],r11b
1d959	mov    BYTE PTR [rsp+0x79],r10b
1d95e	mov    BYTE PTR [rsp+0x7a],r9b
1d963	mov    BYTE PTR [rsp+0x7b],r8b
1d968	mov    BYTE PTR [rsp+0x7c],dil
1d96d	mov    BYTE PTR [rsp+0x7d],dl
1d971	mov    BYTE PTR [rsp+0x7e],cl
1d975	mov    BYTE PTR [rsp+0x7f],al
1d979	lea    rdx,[rsp+0x60]
1d97e	lea    rcx,[rbp-0x10]
1d982	call   0x1d3c0
1d987	movups xmm0,XMMWORD PTR [rax]
1d98a	movups XMMWORD PTR [rbp+0x190],xmm0
1d991	movups xmm1,XMMWORD PTR [rax+0x10]
1d995	movups XMMWORD PTR [rbp+0x1a0],xmm1
1d99c	movups xmm0,XMMWORD PTR [rax+0x20]
1d9a0	movups XMMWORD PTR [rbp+0x1b0],xmm0
1d9a7	movups xmm1,XMMWORD PTR [rax+0x30]
1d9ab	movups XMMWORD PTR [rbp+0x1c0],xmm1
1d9b2	movups xmm0,XMMWORD PTR [rax+0x40]
1d9b6	movups XMMWORD PTR [rbp+0x1d0],xmm0
1d9bd	movups xmm1,XMMWORD PTR [rax+0x50]
1d9c1	movups XMMWORD PTR [rbp+0x1e0],xmm1
1d9c8	movups xmm0,XMMWORD PTR [rax+0x60]
1d9cc	movups XMMWORD PTR [rbp+0x1f0],xmm0
1d9d3	movups xmm1,XMMWORD PTR [rax+0x70]
1d9d7	movups XMMWORD PTR [rbp+0x200],xmm1
1d9de	movups xmm0,XMMWORD PTR [rax+0x80]
1d9e5	movups XMMWORD PTR [rbp+0x210],xmm0
1d9ec	movups xmm1,XMMWORD PTR [rax+0x90]
1d9f3	movups XMMWORD PTR [rbp+0x220],xmm1
1d9fa	movups xmm0,XMMWORD PTR [rax+0xa0]
1da01	movups XMMWORD PTR [rbp+0x230],xmm0
1da08	movups xmm1,XMMWORD PTR [rax+0xb0]
1da0f	movups XMMWORD PTR [rbp+0x240],xmm1
1da16	movups xmm0,XMMWORD PTR [rax+0xc0]
1da1d	movups XMMWORD PTR [rbp+0x250],xmm0
1da24	movups xmm1,XMMWORD PTR [rax+0xd0]
1da2b	movups XMMWORD PTR [rbp+0x260],xmm1
1da32	movups xmm0,XMMWORD PTR [rax+0xe0]
1da39	movups XMMWORD PTR [rbp+0x270],xmm0
1da40	mov    rcx,QWORD PTR [rbp+0xf0]
1da47	mov    rsi,QWORD PTR [rbp-0x40]
1da4b	add    rcx,0x10
1da4f	add    rcx,rsi
1da52	mov    r8d,0xf0
1da58	lea    rdx,[rbp+0x190]
1da5f	call   0x477c0
1da64	test   eax,eax
1da66	jne    0x1dc3c
1da6c	mov    r14,QWORD PTR [rip+0x4e665]        # 0x6c0d8
1da73	xor    edi,edi
1da75	mov    rbx,QWORD PTR [rip+0x88e94]        # 0xa6910
1da7c	test   rbx,rbx
1da7f	je     0x1dad2
1da81	lea    rcx,[rip+0xfffffffffffe2578]        # 0x0
1da88	nop    DWORD PTR [rax+rax*1+0x0]
1da90	lea    rax,[rdi+rdi*2]
1da94	cmp    QWORD PTR [rcx+rax*8+0xa6850],r14
1da9c	jae    0x1daca
1da9e	lea    rcx,[rcx+rax*8]
1daa2	lea    rcx,[rcx+0xa6840]
1daa9	mov    r8d,0x10
1daaf	lea    rdx,[rbp+0xe0]
1dab6	call   0x477c0
1dabb	test   eax,eax
1dabd	je     0x1dc26
1dac3	lea    rcx,[rip+0xfffffffffffe2536]        # 0x0
1daca	inc    rdi
1dacd	cmp    rdi,rbx
1dad0	jb     0x1da90
1dad2	mov    rdi,QWORD PTR [rbp+0x108]
1dad9	mov    rbx,QWORD PTR [rbp+0x110]
1dae0	cmp    rdi,rbx
1dae3	je     0x1db16
1dae5	data16 data16 nop WORD PTR [rax+rax*1+0x0]
1daf0	mov    r8d,0x10
1daf6	lea    rdx,[rbp+0xe0]
1dafd	mov    rcx,rdi
1db00	call   0x477c0
1db05	test   eax,eax
1db07	je     0x1dc39
1db0d	add    rdi,0x20
1db11	cmp    rdi,rbx
1db14	jne    0x1daf0
1db16	movzx  eax,BYTE PTR [rbp+0xe0]
1db1d	mov    BYTE PTR [rbp-0x60],al
1db20	movzx  eax,BYTE PTR [rbp+0xe1]
1db27	mov    BYTE PTR [rbp-0x5f],al
1db2a	movzx  eax,BYTE PTR [rbp+0xe2]
1db31	mov    BYTE PTR [rbp-0x5e],al
1db34	movzx  eax,BYTE PTR [rbp+0xe3]
1db3b	mov    BYTE PTR [rbp-0x5d],al
1db3e	movzx  eax,BYTE PTR [rbp+0xe4]
1db45	mov    BYTE PTR [rbp-0x5c],al
1db48	movzx  eax,BYTE PTR [rbp+0xe5]
1db4f	mov    BYTE PTR [rbp-0x5b],al
1db52	movzx  eax,BYTE PTR [rbp+0xe6]
1db59	mov    BYTE PTR [rbp-0x5a],al
1db5c	movzx  eax,BYTE PTR [rbp+0xe7]
1db63	mov    BYTE PTR [rbp-0x59],al
1db66	movzx  eax,BYTE PTR [rbp+0xe8]
1db6d	mov    BYTE PTR [rbp-0x58],al
1db70	movzx  eax,BYTE PTR [rbp+0xe9]
1db77	mov    BYTE PTR [rbp-0x57],al
1db7a	movzx  eax,BYTE PTR [rbp+0xea]
1db81	mov    BYTE PTR [rbp-0x56],al
1db84	movzx  eax,BYTE PTR [rbp+0xeb]
1db8b	mov    BYTE PTR [rbp-0x55],al
1db8e	movzx  eax,BYTE PTR [rbp+0xec]
1db95	mov    BYTE PTR [rbp-0x54],al
1db98	movzx  eax,BYTE PTR [rbp+0xed]
1db9f	mov    BYTE PTR [rbp-0x53],al
1dba2	movzx  eax,BYTE PTR [rbp+0xee]
1dba9	mov    BYTE PTR [rbp-0x52],al
1dbac	movzx  eax,BYTE PTR [rbp+0xef]
1dbb3	mov    BYTE PTR [rbp-0x51],al
1dbb6	mov    DWORD PTR [rbp-0x50],0x1
1dbbd	mov    r12,QWORD PTR [rbp-0x80]
1dbc1	mov    rcx,QWORD PTR [r12]
1dbc5	add    rcx,rsi
1dbc8	mov    QWORD PTR [rbp-0x48],rcx
1dbcc	cmp    rbx,QWORD PTR [rbp+0x118]
1dbd3	je     0x1dc42
1dbd5	movups xmm0,XMMWORD PTR [rbp-0x60]
1dbd9	movups XMMWORD PTR [rbx],xmm0
1dbdc	movups xmm1,XMMWORD PTR [rbp-0x50]
1dbe0	movups XMMWORD PTR [rbx+0x10],xmm1
1dbe4	add    QWORD PTR [rbp+0x110],0x20
1dbec	mov    r14,QWORD PTR [rsp+0x48]
1dbf1	mov    r15,QWORD PTR [rsp+0x50]
1dbf6	add    rsi,0x10
1dbfa	mov    QWORD PTR [rbp-0x40],rsi
1dbfe	mov    rcx,QWORD PTR [rbp+0xf8]
1dc05	sub    rcx,QWORD PTR [rbp+0xf0]
1dc0c	mov    rax,QWORD PTR [rbp-0x38]
1dc10	add    rax,0x40
1dc14	cmp    rax,rcx
1dc17	jbe    0x1d7c0
1dc1d	mov    rbx,QWORD PTR [rip+0x88cf4]        # 0xa6918
1dc24	jmp    0x1dc74
1dc26	mov    r14,QWORD PTR [rsp+0x48]
1dc2b	inc    r14
1dc2e	mov    QWORD PTR [rsp+0x48],r14
1dc33	mov    r12,QWORD PTR [rbp-0x80]
1dc37	jmp    0x1dbf1
1dc39	inc    DWORD PTR [rdi+0x10]
1dc3c	mov    r12,QWORD PTR [rbp-0x80]
1dc40	jmp    0x1dbec
1dc42	lea    r8,[rbp-0x60]
1dc46	mov    rdx,rbx
1dc49	lea    rcx,[rbp+0x108]
1dc50	call   0x222c0
1dc55	jmp    0x1dbec
1dc57	mov    r14,QWORD PTR [rsp+0x48]
1dc5c	jmp    0x1dbf6
1dc5e	mov    r14,QWORD PTR [rsp+0x48]
1dc63	mov    r15,QWORD PTR [rsp+0x50]
1dc68	jmp    0x1dc79
1dc6a	mov    r14,QWORD PTR [rsp+0x48]
1dc6f	mov    r15,QWORD PTR [rsp+0x50]
1dc74	mov    rdi,QWORD PTR [rsp+0x58]
1dc79	add    r12,0x30
1dc7d	mov    QWORD PTR [rbp-0x80],r12
1dc81	cmp    r12,QWORD PTR [rbp-0x70]
1dc85	jne    0x1d5d1
1dc8b	mov    r13,QWORD PTR [rbp-0x78]
1dc8f	mov    esi,0x1
1dc94	push   rdi
1dc95	call   0x3df5ca
1dc9a	mov    r12,rax
1dc9d	sub    r12,QWORD PTR [rbp-0x30]
1dca1	mov    r8,QWORD PTR [rbp+0x108]
1dca8	mov    r9,QWORD PTR [rbp+0x110]
1dcaf	cmp    r8,r9
1dcb2	jne    0x1e104
1dcb8	movaps xmm0,XMMWORD PTR [rip+0x3f2a1]        # 0x5cf60
1dcbf	movaps XMMWORD PTR [rbp+0x190],xmm0
1dcc6	movaps xmm1,XMMWORD PTR [rip+0x3f2a3]        # 0x5cf70
1dccd	movaps XMMWORD PTR [rbp+0x1a0],xmm1
1dcd4	movaps xmm0,XMMWORD PTR [rip+0x3f2a5]        # 0x5cf80
1dcdb	movaps XMMWORD PTR [rbp+0x1b0],xmm0
1dce2	movaps xmm1,XMMWORD PTR [rip+0x3f2a7]        # 0x5cf90
1dce9	movaps XMMWORD PTR [rbp+0x1c0],xmm1
1dcf0	movaps xmm0,XMMWORD PTR [rip+0x3f2a9]        # 0x5cfa0
1dcf7	movaps XMMWORD PTR [rbp+0x1d0],xmm0
1dcfe	movaps xmm1,XMMWORD PTR [rip+0x3f2ab]        # 0x5cfb0
1dd05	movaps XMMWORD PTR [rbp+0x1e0],xmm1
1dd0c	movaps xmm0,XMMWORD PTR [rip+0x3f2ad]        # 0x5cfc0
1dd13	movaps XMMWORD PTR [rbp+0x1f0],xmm0
1dd1a	movaps xmm1,XMMWORD PTR [rip+0x3f2af]        # 0x5cfd0
1dd21	movaps XMMWORD PTR [rbp+0x200],xmm1
1dd28	movaps xmm0,XMMWORD PTR [rip+0x3f2b1]        # 0x5cfe0
1dd2f	movaps XMMWORD PTR [rbp+0x210],xmm0
1dd36	xorps  xmm1,xmm1
1dd39	movups XMMWORD PTR [rbp-0x10],xmm1
1dd3d	movups XMMWORD PTR [rbp+0x0],xmm1
1dd41	movups XMMWORD PTR [rbp+0x10],xmm1
1dd45	movups XMMWORD PTR [rbp+0x20],xmm1
1dd49	movups XMMWORD PTR [rbp+0x30],xmm1
1dd4d	movups XMMWORD PTR [rbp+0x40],xmm1
1dd51	movups XMMWORD PTR [rbp+0x50],xmm1
1dd55	movups XMMWORD PTR [rbp+0x60],xmm1
1dd59	movups XMMWORD PTR [rbp+0x6e],xmm1
1dd5d	xor    edx,edx
1dd5f	nop
1dd60	movzx  eax,dx
1dd63	imul   ecx,eax,0xd   ; DEC "ksecdd_reader scan status=miss pages=%zu matches=%zu stale=%zu ms=%llu"
1dd66	mov    rax,rdx
1dd69	shr    rax,0x3
1dd6d	add    ax,0x63
1dd71	add    ax,cx
1dd74	xor    ax,WORD PTR [rbp+rdx*2+0x190]
1dd7c	mov    WORD PTR [rsp+0x40],ax
1dd81	movzx  eax,WORD PTR [rsp+0x40]
1dd86	mov    WORD PTR [rbp+rdx*2-0x10],ax
1dd8b	inc    rdx
1dd8e	cmp    rdx,0x47
1dd92	jb     0x1dd60
1dd94	mov    QWORD PTR [rsp+0x20],r12
1dd99	mov    r9,r14
1dd9c	mov    r8,r15
1dd9f	mov    rdx,rdi
1dda2	lea    rcx,[rbp-0x10]
1dda6	call   0x8a20
1ddab	lea    rdi,[rbp-0x10]
1ddaf	xor    eax,eax
1ddb1	mov    ecx,0x8e
1ddb6	rep stos BYTE PTR [rdi],al
1ddb8	xor    edx,edx
1ddba	mov    r8d,0xc0
1ddc0	lea    rcx,[rbp+0x190]
1ddc7	call   0x478c0
1ddcc	mov    QWORD PTR [rsp+0x28],r12
1ddd1	mov    QWORD PTR [rsp+0x20],r14
1ddd6	mov    r9,r15
1ddd9	mov    r8,QWORD PTR [rsp+0x58]
1ddde	lea    rdx,[rip+0x3ebab]        # 0x5c990   ; "A:pages=%zu matches=%zu stale=%zu ms=%llu"
1dde5	lea    rcx,[rbp+0x190]
1ddec	call   0x21c00
1ddf1	mov    rbx,QWORD PTR [rip+0x88958]        # 0xa6750
1ddf8	test   rbx,rbx
1ddfb	je     0x1de9c
1de01	lea    r14,[rbp+0x190]
1de08	lock xadd QWORD PTR [rbx+0x90],rsi
1de11	inc    rsi
1de14	lea    rax,[rsi-0x1]
1de18	and    eax,0xf
1de1b	lea    rdi,[rax+rax*4]
1de1f	shl    rdi,0x5
1de23	xor    eax,eax
1de25	xchg   QWORD PTR [rdi+rbx*1+0xa0],rax
1de2d	lea    rcx,[rbx+0xac]
1de34	add    rcx,rdi
1de37	mov    r9,0xffffffffffffffff
1de3e	lea    r8,[rip+0x3eb73]        # 0x5c9b8   ; "A:aes_scan"
1de45	mov    edx,0x20
1de4a	call   0x39130
1de4f	lea    rcx,[rbx+0xcc]
1de56	add    rcx,rdi
1de59	mov    r9,0xffffffffffffffff
1de60	lea    r8,[rip+0x3eb0d]        # 0x5c974
1de67	mov    edx,0x10
1de6c	call   0x39130
1de71	lea    rcx,[rbx+0xdc]
1de78	add    rcx,rdi
1de7b	mov    r9,0xffffffffffffffff
1de82	mov    r8,r14
1de85	mov    edx,0x60
1de8a	call   0x39130
1de8f	lock or DWORD PTR [rsp],0x0
1de94	xchg   QWORD PTR [rdi+rbx*1+0xa0],rsi
1de9c	mov    rax,QWORD PTR [rbp+0xf0]
1dea3	test   rax,rax
1dea6	je     0x1e09f
1deac	mov    rdx,QWORD PTR [rbp+0x100]
1deb3	sub    rdx,rax
1deb6	cmp    rdx,0x1000
1debd	jb     0x1e081
1dec3	mov    rcx,QWORD PTR [rax-0x8]
1dec7	sub    rax,rcx
1deca	sub    rax,0x8
1dece	cmp    rax,0x1f
1ded2	ja     0x1e82b
1ded8	add    rdx,0x27
1dedc	jmp    0x1e084
1dee1	mov    rax,QWORD PTR [rbp+0xf0]
1dee8	test   rax,rax
1deeb	je     0x1df39
1deed	mov    rdx,QWORD PTR [rbp+0x100]
1def4	sub    rdx,rax
1def7	cmp    rdx,0x1000
1defe	jb     0x1df1b
1df00	mov    rcx,QWORD PTR [rax-0x8]
1df04	sub    rax,rcx
1df07	sub    rax,0x8
1df0b	cmp    rax,0x1f
1df0f	ja     0x1e82b
1df15	add    rdx,0x27
1df19	jmp    0x1df1e
1df1b	mov    rcx,rax
1df1e	call   0x2e9c0
1df23	xorps  xmm0,xmm0
1df26	movdqu XMMWORD PTR [rbp+0xf0],xmm0
1df2e	mov    QWORD PTR [rbp+0x100],0x0
1df39	mov    rax,QWORD PTR [rbp+0x108]
1df40	test   rax,rax
1df43	je     0x1df95
1df45	mov    rdx,QWORD PTR [rbp+0x118]
1df4c	sub    rdx,rax
1df4f	and    rdx,0xffffffffffffffe0
1df53	cmp    rdx,0x1000
1df5a	jb     0x1df77
1df5c	mov    rcx,QWORD PTR [rax-0x8]
1df60	sub    rax,rcx
1df63	sub    rax,0x8
1df67	cmp    rax,0x1f
1df6b	ja     0x1e82b
1df71	add    rdx,0x27
1df75	jmp    0x1df7a
1df77	mov    rcx,rax
1df7a	call   0x2e9c0
1df7f	xorps  xmm0,xmm0
1df82	movdqu XMMWORD PTR [rbp+0x108],xmm0
1df8a	mov    QWORD PTR [rbp+0x118],0x0
1df95	mov    r13,QWORD PTR [rbp-0x78]
1df99	test   r13,r13
1df9c	je     0x1dff7
1df9e	mov    rdx,QWORD PTR [rbp-0x70]
1dfa2	mov    rcx,r13
1dfa5	call   0x22460
1dfaa	mov    rax,QWORD PTR [rbp-0x68]
1dfae	sub    rax,r13
1dfb1	sar    rax,0x4
1dfb5	movabs rcx,0xaaaaaaaaaaaaaaab
1dfbf	imul   rax,rcx
1dfc3	lea    rdx,[rax+rax*2]
1dfc7	shl    rdx,0x4
1dfcb	cmp    rdx,0x1000
1dfd2	jb     0x1dfef
1dfd4	mov    rcx,QWORD PTR [r13-0x8]
1dfd8	sub    r13,rcx
1dfdb	sub    r13,0x8
1dfdf	cmp    r13,0x1f
1dfe3	ja     0x1e82b
1dfe9	add    rdx,0x27
1dfed	jmp    0x1dff2
1dfef	mov    rcx,r13
1dff2	call   0x2e9c0
1dff7	mov    rcx,QWORD PTR [rbp+0x120]
1dffe	test   rcx,rcx
1e001	je     0x1e055
1e003	mov    rax,QWORD PTR [rbp+0x130]
1e00a	sub    rax,rcx
1e00d	sar    rax,0x4
1e011	movabs rdx,0xf0f0f0f0f0f0f0f1
1e01b	imul   rax,rdx
1e01f	imul   rdx,rax,0x110
1e026	cmp    rdx,0x1000
1e02d	jb     0x1e04a
1e02f	mov    rax,QWORD PTR [rcx-0x8]
1e033	sub    rcx,rax
1e036	sub    rcx,0x8
1e03a	cmp    rcx,0x1f
1e03e	ja     0x1e82b
1e044	add    rdx,0x27
1e048	jmp    0x1e04d
1e04a	mov    rax,rcx
1e04d	mov    rcx,rax
1e050	call   0x2e9c0
1e055	xor    al,al
1e057	mov    rcx,QWORD PTR [rbp+0x340]
1e05e	xor    rcx,rsp
1e061	call   0x2e460
1e066	mov    rbx,QWORD PTR [rsp+0x4a0]
1e06e	add    rsp,0x450
1e075	pop    r15
1e077	pop    r14
1e079	pop    r13
1e07b	pop    r12
1e07d	pop    rdi
1e07e	pop    rsi
1e07f	pop    rbp
1e080	ret
1e081	mov    rcx,rax
1e084	call   0x2e9c0
1e089	xorps  xmm0,xmm0
1e08c	movdqu XMMWORD PTR [rbp+0xf0],xmm0
1e094	mov    QWORD PTR [rbp+0x100],0x0
1e09f	mov    rax,QWORD PTR [rbp+0x108]
1e0a6	test   rax,rax
1e0a9	je     0x1df99
1e0af	mov    rdx,QWORD PTR [rbp+0x118]
1e0b6	sub    rdx,rax
1e0b9	and    rdx,0xffffffffffffffe0
1e0bd	cmp    rdx,0x1000
1e0c4	jb     0x1e0e1
1e0c6	mov    rcx,QWORD PTR [rax-0x8]
1e0ca	sub    rax,rcx
1e0cd	sub    rax,0x8
1e0d1	cmp    rax,0x1f
1e0d5	ja     0x1e82b
1e0db	add    rdx,0x27
1e0df	jmp    0x1e0e4
1e0e1	mov    rcx,rax
1e0e4	call   0x2e9c0
1e0e9	xorps  xmm0,xmm0
1e0ec	movdqu XMMWORD PTR [rbp+0x108],xmm0
1e0f4	mov    QWORD PTR [rbp+0x118],0x0
1e0ff	jmp    0x1df99
1e104	xor    ebx,ebx
1e106	mov    rdi,rsi
1e109	mov    rsi,r9
1e10c	sub    rsi,r8
1e10f	sar    rsi,0x5
1e113	cmp    rsi,0x1
1e117	jbe    0x1e154
1e119	nop    DWORD PTR [rax+0x0]
1e120	mov    rdx,rdi
1e123	shl    rdx,0x5
1e127	mov    rax,rbx
1e12a	shl    rax,0x5
1e12e	mov    rcx,rdi
1e131	mov    eax,DWORD PTR [rax+r8*1+0x10]
1e136	cmp    DWORD PTR [rdx+r8*1+0x10],eax
1e13b	cmovle rcx,rbx
1e13f	mov    rbx,rcx
1e142	inc    rdi
1e145	mov    rax,r9
1e148	sub    rax,r8
1e14b	sar    rax,0x5
1e14f	cmp    rdi,rax
1e152	jb     0x1e120
1e154	shl    rbx,0x5
1e158	movups xmm0,XMMWORD PTR [rbx+r8*1]
1e15d	mov    rax,QWORD PTR [rbp-0x28]
1e161	movups XMMWORD PTR [rax],xmm0
1e164	mov    rcx,QWORD PTR [rbp-0x20]
1e168	test   rcx,rcx
1e16b	je     0x1e175
1e16d	mov    rax,QWORD PTR [rbx+r8*1+0x18]
1e172	mov    QWORD PTR [rcx],rax
1e175	xorps  xmm0,xmm0
1e178	xor    eax,eax
1e17a	movups XMMWORD PTR [rbp+0x140],xmm0
1e181	movups XMMWORD PTR [rbp+0x150],xmm0
1e188	movups XMMWORD PTR [rbp+0x160],xmm0
1e18f	movups XMMWORD PTR [rbp+0x170],xmm0
1e196	mov    WORD PTR [rbp+0x180],ax
1e19d	movzx  eax,BYTE PTR [rbx+r8*1]
1e1a2	shr    rax,0x4
1e1a6	lea    rcx,[rip+0xfffffffffffe1e53]        # 0x0
1e1ad	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e1b5	mov    WORD PTR [rbp+0x140],ax
1e1bc	movzx  eax,BYTE PTR [rbx+r8*1]
1e1c1	and    eax,0xf
1e1c4	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e1cc	mov    WORD PTR [rbp+0x142],ax
1e1d3	movzx  eax,BYTE PTR [rbx+r8*1+0x1]
1e1d9	shr    rax,0x4
1e1dd	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e1e5	mov    WORD PTR [rbp+0x144],ax
1e1ec	movzx  eax,BYTE PTR [rbx+r8*1+0x1]
1e1f2	and    eax,0xf
1e1f5	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e1fd	mov    WORD PTR [rbp+0x146],ax
1e204	movzx  eax,BYTE PTR [rbx+r8*1+0x2]
1e20a	shr    rax,0x4
1e20e	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e216	mov    WORD PTR [rbp+0x148],ax
1e21d	movzx  eax,BYTE PTR [rbx+r8*1+0x2]
1e223	and    eax,0xf
1e226	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e22e	mov    WORD PTR [rbp+0x14a],ax
1e235	movzx  eax,BYTE PTR [rbx+r8*1+0x3]
1e23b	shr    rax,0x4
1e23f	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e247	mov    WORD PTR [rbp+0x14c],ax
1e24e	movzx  eax,BYTE PTR [rbx+r8*1+0x3]
1e254	and    eax,0xf
1e257	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e25f	mov    WORD PTR [rbp+0x14e],ax
1e266	movzx  eax,BYTE PTR [rbx+r8*1+0x4]
1e26c	shr    rax,0x4
1e270	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e278	mov    WORD PTR [rbp+0x150],ax
1e27f	movzx  eax,BYTE PTR [rbx+r8*1+0x4]
1e285	and    eax,0xf
1e288	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e290	mov    WORD PTR [rbp+0x152],ax
1e297	movzx  eax,BYTE PTR [rbx+r8*1+0x5]
1e29d	shr    rax,0x4
1e2a1	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e2a9	mov    WORD PTR [rbp+0x154],ax
1e2b0	movzx  eax,BYTE PTR [rbx+r8*1+0x5]
1e2b6	and    eax,0xf
1e2b9	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e2c1	mov    WORD PTR [rbp+0x156],ax
1e2c8	movzx  eax,BYTE PTR [rbx+r8*1+0x6]
1e2ce	shr    rax,0x4
1e2d2	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e2da	mov    WORD PTR [rbp+0x158],ax
1e2e1	movzx  eax,BYTE PTR [rbx+r8*1+0x6]
1e2e7	and    eax,0xf
1e2ea	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e2f2	mov    WORD PTR [rbp+0x15a],ax
1e2f9	movzx  eax,BYTE PTR [rbx+r8*1+0x7]
1e2ff	shr    rax,0x4
1e303	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e30b	mov    WORD PTR [rbp+0x15c],ax
1e312	movzx  eax,BYTE PTR [rbx+r8*1+0x7]
1e318	and    eax,0xf
1e31b	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e323	mov    WORD PTR [rbp+0x15e],ax
1e32a	movzx  eax,BYTE PTR [rbx+r8*1+0x8]
1e330	shr    rax,0x4
1e334	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e33c	mov    WORD PTR [rbp+0x160],ax
1e343	movzx  eax,BYTE PTR [rbx+r8*1+0x8]
1e349	and    eax,0xf
1e34c	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e354	mov    WORD PTR [rbp+0x162],ax
1e35b	movzx  eax,BYTE PTR [rbx+r8*1+0x9]
1e361	shr    rax,0x4
1e365	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e36d	mov    WORD PTR [rbp+0x164],ax
1e374	movzx  eax,BYTE PTR [rbx+r8*1+0x9]
1e37a	and    eax,0xf
1e37d	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e385	mov    WORD PTR [rbp+0x166],ax
1e38c	movzx  eax,BYTE PTR [rbx+r8*1+0xa]
1e392	shr    rax,0x4
1e396	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e39e	mov    WORD PTR [rbp+0x168],ax
1e3a5	movzx  eax,BYTE PTR [rbx+r8*1+0xa]
1e3ab	and    eax,0xf
1e3ae	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e3b6	mov    WORD PTR [rbp+0x16a],ax
1e3bd	movzx  eax,BYTE PTR [rbx+r8*1+0xb]
1e3c3	shr    rax,0x4
1e3c7	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e3cf	mov    WORD PTR [rbp+0x16c],ax
1e3d6	movzx  eax,BYTE PTR [rbx+r8*1+0xb]
1e3dc	and    eax,0xf
1e3df	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e3e7	mov    WORD PTR [rbp+0x16e],ax
1e3ee	movzx  eax,BYTE PTR [rbx+r8*1+0xc]
1e3f4	shr    rax,0x4
1e3f8	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e400	mov    WORD PTR [rbp+0x170],ax
1e407	movzx  eax,BYTE PTR [rbx+r8*1+0xc]
1e40d	and    eax,0xf
1e410	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e418	mov    WORD PTR [rbp+0x172],ax
1e41f	movzx  eax,BYTE PTR [rbx+r8*1+0xd]
1e425	shr    rax,0x4
1e429	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e431	mov    WORD PTR [rbp+0x174],ax
1e438	movzx  eax,BYTE PTR [rbx+r8*1+0xd]
1e43e	and    eax,0xf
1e441	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e449	mov    WORD PTR [rbp+0x176],ax
1e450	movzx  eax,BYTE PTR [rbx+r8*1+0xe]
1e456	shr    rax,0x4
1e45a	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e462	mov    WORD PTR [rbp+0x178],ax
1e469	movzx  eax,BYTE PTR [rbx+r8*1+0xe]
1e46f	and    eax,0xf
1e472	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e47a	mov    WORD PTR [rbp+0x17a],ax
1e481	movzx  eax,BYTE PTR [rbx+r8*1+0xf]
1e487	shr    rax,0x4
1e48b	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e493	mov    WORD PTR [rbp+0x17c],ax
1e49a	movzx  eax,BYTE PTR [rbx+r8*1+0xf]
1e4a0	and    eax,0xf
1e4a3	movzx  eax,WORD PTR [rcx+rax*2+0x5d320]
1e4ab	mov    WORD PTR [rbp+0x17e],ax
1e4b2	mov    edi,DWORD PTR [rbx+r8*1+0x10]
1e4b7	movaps xmm0,XMMWORD PTR [rip+0x3e7f2]        # 0x5ccb0
1e4be	movups XMMWORD PTR [rbp-0x10],xmm0
1e4c2	movaps xmm1,XMMWORD PTR [rip+0x3e7f7]        # 0x5ccc0
1e4c9	movups XMMWORD PTR [rbp+0x0],xmm1
1e4cd	movaps xmm0,XMMWORD PTR [rip+0x3e7fc]        # 0x5ccd0
1e4d4	movups XMMWORD PTR [rbp+0x10],xmm0
1e4d8	movaps xmm1,XMMWORD PTR [rip+0x3e801]        # 0x5cce0
1e4df	movups XMMWORD PTR [rbp+0x20],xmm1
1e4e3	movaps xmm0,XMMWORD PTR [rip+0x3e806]        # 0x5ccf0
1e4ea	movups XMMWORD PTR [rbp+0x30],xmm0
1e4ee	movaps xmm1,XMMWORD PTR [rip+0x3e80b]        # 0x5cd00
1e4f5	movups XMMWORD PTR [rbp+0x40],xmm1
1e4f9	movaps xmm0,XMMWORD PTR [rip+0x3e810]        # 0x5cd10
1e500	movups XMMWORD PTR [rbp+0x50],xmm0
1e504	movaps xmm1,XMMWORD PTR [rip+0x3e815]        # 0x5cd20
1e50b	movups XMMWORD PTR [rbp+0x60],xmm1
1e50f	movaps xmm0,XMMWORD PTR [rip+0x3e81a]        # 0x5cd30
1e516	movups XMMWORD PTR [rbp+0x70],xmm0
1e51a	movaps xmm1,XMMWORD PTR [rip+0x3e81f]        # 0x5cd40
1e521	movups XMMWORD PTR [rbp+0x80],xmm1
1e528	movups xmm0,XMMWORD PTR [rip+0x3e81b]        # 0x5cd4a
1e52f	movups XMMWORD PTR [rbp+0x8a],xmm0
1e536	xor    edx,edx
1e538	mov    r8d,0xa8
1e53e	lea    rcx,[rbp+0x190]
1e545	call   0x478c0
1e54a	xor    edx,edx
1e54c	nop    DWORD PTR [rax+0x0]
1e550	movzx  eax,dx
1e553	imul   ecx,eax,0xd   ; DEC "ksecdd_reader scan status=ok h=%ls ctxs=%d distinct=%zu pages=%zu stale=%zu ms=%llu"
1e556	mov    rax,rdx
1e559	shr    rax,0x3
1e55d	add    ax,0x5b
1e561	add    ax,cx
1e564	xor    ax,WORD PTR [rbp+rdx*2-0x10]
1e569	mov    WORD PTR [rsp+0x40],ax
1e56e	movzx  eax,WORD PTR [rsp+0x40]
1e573	mov    WORD PTR [rbp+rdx*2+0x190],ax
1e57b	inc    rdx
1e57e	cmp    rdx,0x54
1e582	jb     0x1e550
1e584	mov    QWORD PTR [rsp+0x30],r12
1e589	mov    QWORD PTR [rsp+0x28],r14
1e58e	mov    r15,QWORD PTR [rsp+0x58]
1e593	mov    QWORD PTR [rsp+0x20],r15
1e598	mov    r9,rsi
1e59b	mov    r8d,edi
1e59e	lea    rdx,[rbp+0x140]
1e5a5	lea    rcx,[rbp+0x190]
1e5ac	call   0x8a20
1e5b1	lea    rdi,[rbp+0x190]
1e5b8	xor    eax,eax
1e5ba	mov    ecx,0xa8
1e5bf	rep stos BYTE PTR [rdi],al
1e5c1	xor    edx,edx
1e5c3	mov    r8d,0xc0
1e5c9	lea    rcx,[rbp+0x280]
1e5d0	call   0x478c0
1e5d5	mov    r8,QWORD PTR [rbp+0x108]
1e5dc	mov    r9,QWORD PTR [rbp+0x110]
1e5e3	sub    r9,r8
1e5e6	sar    r9,0x5
1e5ea	mov    QWORD PTR [rsp+0x30],r12
1e5ef	mov    QWORD PTR [rsp+0x28],r14
1e5f4	mov    QWORD PTR [rsp+0x20],r15
1e5f9	mov    r8d,DWORD PTR [rbx+r8*1+0x10]
1e5fe	lea    rdx,[rip+0x3e3c3]        # 0x5c9c8   ; "A:ctxs=%d distinct=%zu pages=%zu stale=%zu ms=%llu"
1e605	lea    rcx,[rbp+0x280]
1e60c	call   0x21c00
1e611	mov    rbx,QWORD PTR [rip+0x88138]        # 0xa6750
1e618	test   rbx,rbx
1e61b	je     0x1e6c1
1e621	lea    r14,[rbp+0x280]
1e628	mov    esi,0x1
1e62d	lock xadd QWORD PTR [rbx+0x90],rsi
1e636	inc    rsi
1e639	lea    rax,[rsi-0x1]
1e63d	and    eax,0xf
1e640	lea    rdi,[rax+rax*4]
1e644	shl    rdi,0x5
1e648	xor    eax,eax
1e64a	xchg   QWORD PTR [rdi+rbx*1+0xa0],rax
1e652	lea    rcx,[rbx+0xac]
1e659	add    rcx,rdi
1e65c	mov    r9,0xffffffffffffffff
1e663	lea    r8,[rip+0x3e34e]        # 0x5c9b8   ; "A:aes_scan"
1e66a	mov    edx,0x20
1e66f	call   0x39130
1e674	lea    rcx,[rbx+0xcc]
1e67b	add    rcx,rdi
1e67e	mov    r9,0xffffffffffffffff
1e685	lea    r8,[rip+0x38c78]        # 0x57304
1e68c	mov    edx,0x10
1e691	call   0x39130
1e696	lea    rcx,[rbx+0xdc]
1e69d	add    rcx,rdi
1e6a0	mov    r9,0xffffffffffffffff
1e6a7	mov    r8,r14
1e6aa	mov    edx,0x60
1e6af	call   0x39130
1e6b4	lock or DWORD PTR [rsp],0x0
1e6b9	xchg   QWORD PTR [rdi+rbx*1+0xa0],rsi
1e6c1	mov    rax,QWORD PTR [rbp+0xf0]
1e6c8	test   rax,rax
1e6cb	je     0x1e719
1e6cd	mov    rdx,QWORD PTR [rbp+0x100]
1e6d4	sub    rdx,rax
1e6d7	cmp    rdx,0x1000
1e6de	jb     0x1e6fb
1e6e0	mov    rcx,QWORD PTR [rax-0x8]
1e6e4	sub    rax,rcx
1e6e7	sub    rax,0x8
1e6eb	cmp    rax,0x1f
1e6ef	ja     0x1e82b
1e6f5	add    rdx,0x27
1e6f9	jmp    0x1e6fe
1e6fb	mov    rcx,rax
1e6fe	call   0x2e9c0
1e703	xorps  xmm0,xmm0
1e706	movdqu XMMWORD PTR [rbp+0xf0],xmm0
1e70e	mov    QWORD PTR [rbp+0x100],0x0
1e719	mov    rax,QWORD PTR [rbp+0x108]
1e720	test   rax,rax
1e723	je     0x1e775
1e725	mov    rdx,QWORD PTR [rbp+0x118]
1e72c	sub    rdx,rax
1e72f	and    rdx,0xffffffffffffffe0
1e733	cmp    rdx,0x1000
1e73a	jb     0x1e757
1e73c	mov    rcx,QWORD PTR [rax-0x8]
1e740	sub    rax,rcx
1e743	sub    rax,0x8
1e747	cmp    rax,0x1f
1e74b	ja     0x1e82b
1e751	add    rdx,0x27
1e755	jmp    0x1e75a
1e757	mov    rcx,rax
1e75a	call   0x2e9c0
1e75f	xorps  xmm0,xmm0
1e762	movdqu XMMWORD PTR [rbp+0x108],xmm0
1e76a	mov    QWORD PTR [rbp+0x118],0x0
1e775	test   r13,r13
1e778	je     0x1e7cf
1e77a	mov    rdx,QWORD PTR [rbp-0x70]
1e77e	mov    rcx,r13
1e781	call   0x22460
1e786	mov    rax,QWORD PTR [rbp-0x68]
1e78a	sub    rax,r13
1e78d	sar    rax,0x4
1e791	movabs rcx,0xaaaaaaaaaaaaaaab
1e79b	imul   rax,rcx
1e79f	lea    rdx,[rax+rax*2]
1e7a3	shl    rdx,0x4
1e7a7	cmp    rdx,0x1000
1e7ae	jb     0x1e7c7
1e7b0	mov    rcx,QWORD PTR [r13-0x8]
1e7b4	sub    r13,rcx
1e7b7	sub    r13,0x8
1e7bb	cmp    r13,0x1f
1e7bf	ja     0x1e82b
1e7c1	add    rdx,0x27
1e7c5	jmp    0x1e7ca
1e7c7	mov    rcx,r13
1e7ca	call   0x2e9c0
1e7cf	mov    rcx,QWORD PTR [rbp+0x120]
1e7d6	test   rcx,rcx
1e7d9	je     0x1e83a
1e7db	mov    rax,QWORD PTR [rbp+0x130]
1e7e2	sub    rax,rcx
1e7e5	sar    rax,0x4
1e7e9	movabs rdx,0xf0f0f0f0f0f0f0f1
1e7f3	imul   rax,rdx
1e7f7	imul   rdx,rax,0x110
1e7fe	cmp    rdx,0x1000
1e805	jb     0x1e832
1e807	mov    rax,QWORD PTR [rcx-0x8]
1e80b	sub    rcx,rax
1e80e	sub    rcx,0x8
1e812	cmp    rcx,0x1f
1e816	ja     0x1e82b
1e818	add    rdx,0x27
1e81c	mov    rcx,rax
1e81f	call   0x2e9c0
1e824	mov    al,0x1
1e826	jmp    0x1e057
1e82b	mov    ecx,0x5
1e830	int    0x29
1e832	mov    rax,rcx
1e835	call   0x2e9c0
1e83a	mov    al,0x1
1e83c	jmp    0x1e057
1e841	int3
1e842	int3
1e843	int3
1e844	int3
1e845	int3
1e846	int3
1e847	int3
1e848	int3
1e849	int3
1e84a	int3
1e84b	int3
1e84c	int3
1e84d	int3
1e84e	int3
1e84f	int3
1e850	rex push rsi
1e852	push   r14
1e854	sub    rsp,0x38
1e858	mov    r14,rcx
1e85b	mov    rsi,rdx
1e85e	lea    rcx,[rip+0x88103]        # 0xa6968
1e865	push   rbx
1e866	call   0x28761f
1e86b	mov    rax,QWORD PTR [rip+0x4d866]        # 0x6c0d8
1e872	cmp    rsi,rax
1e875	je     0x1e88c
1e877	lea    rcx,[rip+0x880ea]        # 0xa6968
1e87e	add    rsp,0x38
1e882	pop    r14
1e884	pop    rsi
1e885	rex.W call 0x312205
1e88b	hlt
1e88c	mov    QWORD PTR [rsp+0x60],rbx
1e891	xor    ebx,ebx
1e893	mov    QWORD PTR [rsp+0x30],rbp
1e898	mov    QWORD PTR [rsp+0x28],rdi
1e89d	mov    rdi,QWORD PTR [rip+0x8806c]        # 0xa6910
1e8a4	mov    QWORD PTR [rsp+0x20],r15
1e8a9	lea    r15,[rip+0x87f90]        # 0xa6840
1e8b0	test   rdi,rdi
1e8b3	je     0x1e8e2
1e8b5	data16 data16 nop WORD PTR [rax+rax*1+0x0]
1e8c0	lea    rbp,[rbx+rbx*2]
1e8c4	mov    r8d,0x10
1e8ca	lea    rcx,[r15+rbp*8]
1e8ce	mov    rdx,r14
1e8d1	call   0x477c0
1e8d6	test   eax,eax
1e8d8	je     0x1e90b
1e8da	inc    rbx
1e8dd	cmp    rbx,rdi
1e8e0	jb     0x1e8c0
1e8e2	mov    r8d,0x10
1e8e8	mov    rdx,r14
1e8eb	cmp    rdi,0x8
1e8ef	jae    0x1e912
1e8f1	lea    rax,[rdi+0x1]
1e8f5	lea    rbx,[rdi+rdi*2]
1e8f9	mov    QWORD PTR [rip+0x88010],rax        # 0xa6910
1e900	lea    rcx,[r15+rbx*8]
1e904	call   0x47120
1e909	jmp    0x1e934
1e90b	mov    QWORD PTR [r15+rbp*8+0x10],rsi
1e910	jmp    0x1e939
1e912	mov    rdi,QWORD PTR [rip+0x88037]        # 0xa6950
1e919	lea    rbx,[rdi+rdi*2]
1e91d	lea    rcx,[r15+rbx*8]
1e921	call   0x47120
1e926	lea    rax,[rdi+0x1]
1e92a	and    eax,0x7
1e92d	mov    QWORD PTR [rip+0x8801c],rax        # 0xa6950
1e934	mov    QWORD PTR [r15+rbx*8+0x10],rsi
1e939	movups xmm0,XMMWORD PTR [r14]
1e93d	movups XMMWORD PTR [rip+0x88034],xmm0        # 0xa6978
1e944	lea    rcx,[rip+0x8801d]        # 0xa6968
1e94b	mov    QWORD PTR [rip+0x87fae],rsi        # 0xa6900
1e952	mov    r15,QWORD PTR [rsp+0x20]
1e957	mov    rdi,QWORD PTR [rsp+0x28]
1e95c	mov    rbp,QWORD PTR [rsp+0x30]
1e961	mov    rbx,QWORD PTR [rsp+0x60]
1e966	add    rsp,0x38
1e96a	pop    r14
1e96c	pop    rsi
1e96d	rex.W call 0x3f2a94
1e973	ret    0xcccc
1e976	int3
1e977	int3
1e978	int3
1e979	int3
1e97a	int3
1e97b	int3
1e97c	int3
1e97d	int3
1e97e	int3
1e97f	int3
1e980	mov    rax,rsp
1e983	push   rbp
1e984	push   rbx
1e985	push   rsi
1e986	push   rdi
1e987	push   r12
1e989	push   r13
1e98b	push   r14
1e98d	push   r15
1e98f	lea    rbp,[rax-0x648]
1e996	sub    rsp,0x708
1e99d	movaps XMMWORD PTR [rax-0x58],xmm6
1e9a1	movaps XMMWORD PTR [rax-0x68],xmm7
1e9a5	movaps XMMWORD PTR [rax-0x78],xmm8
1e9aa	movaps XMMWORD PTR [rax-0x88],xmm9
1e9b2	movaps XMMWORD PTR [rax-0x98],xmm10
1e9ba	movaps XMMWORD PTR [rax-0xa8],xmm11
1e9c2	movaps XMMWORD PTR [rax-0xb8],xmm12
1e9ca	movaps XMMWORD PTR [rax-0xc8],xmm13
1e9d2	movaps XMMWORD PTR [rax-0xd8],xmm14
1e9da	movaps XMMWORD PTR [rax-0xe8],xmm15
1e9e2	mov    rax,QWORD PTR [rip+0x46657]        # 0x65040
1e9e9	xor    rax,rsp
1e9ec	mov    QWORD PTR [rbp+0x550],rax
1e9f3	xor    r15d,r15d
1e9f6	mov    r12d,r15d
1e9f9	mov    DWORD PTR [rsp+0x30],r15d
1e9fe	lea    rcx,[rip+0x86ac3]        # 0xa54c8
1ea05	call   0x1adb0
1ea0a	movzx  ebx,al
1ea0d	movzx  edi,al
1ea10	movabs rsi,0xfffffffff000
1ea1a	movabs r13,0xffff800000000000
1ea24	test   al,al
1ea26	je     0x1ec42
1ea2c	cmp    QWORD PTR [rip+0x87f85],r12        # 0xa69b8
1ea33	jne    0x1ec42
1ea39	cmp    QWORD PTR [rip+0x88598],r12        # 0xa6fd8
1ea40	jne    0x1ec22
1ea46	mov    edx,0x1000
1ea4b	xor    ecx,ecx
1ea4d	mov    r9d,0x4
1ea53	mov    r8d,0x3000
1ea59	call   0x2f52a2
1ea5e	mov    dh,0x48
1ea60	mov    DWORD PTR [rip+0x88572],eax        # 0xa6fd8
1ea66	test   rax,rax
1ea69	jne    0x1ea93
1ea6b	call   0x241547
1ea70	mov    cl,0x44
1ea72	cmp    DWORD PTR [rip+0x87ec8],edi        # 0xa6940
1ea78	jne    0x1ec3f
1ea7e	mov    DWORD PTR [rip+0x87eb8],0x3        # 0xa6940
1ea88	mov    DWORD PTR [rip+0x87eb6],eax        # 0xa6944
1ea8e	jmp    0x1ec3f
1ea93	mov    QWORD PTR [rip+0x88542],0x1000        # 0xa6fe0
1ea9e	mov    edx,0x1000
1eaa3	mov    rcx,rax
1eaa6	push   rbx
1eaa7	call   0xc1d4c
1eaac	test   eax,eax
1eaae	jne    0x1eb16
1eab0	push   rax
1eab1	call   0x265b4c
1eab6	mov    edi,eax
1eab8	mov    rcx,QWORD PTR [rip+0x88519]        # 0xa6fd8
1eabf	test   rcx,rcx
1eac2	je     0x1eaf4
1eac4	mov    rdx,QWORD PTR [rip+0x88515]        # 0xa6fe0
1eacb	push   rax
1eacc	call   0x3b51d5
1ead1	xor    edx,edx
1ead3	mov    r8d,0x8000
1ead9	mov    rcx,QWORD PTR [rip+0x884f8]        # 0xa6fd8
1eae0	push   rsi
1eae1	call   0x328232
1eae6	mov    QWORD PTR [rip+0x884eb],r15        # 0xa6fd8
1eaed	mov    QWORD PTR [rip+0x884ec],r15        # 0xa6fe0
1eaf4	cmp    DWORD PTR [rip+0x87e45],r12d        # 0xa6940
1eafb	jne    0x1ec3f
1eb01	mov    DWORD PTR [rip+0x87e35],0x4        # 0xa6940
1eb0b	mov    DWORD PTR [rip+0x87e33],edi        # 0xa6944
1eb11	jmp    0x1ec3f
1eb16	mov    r8,QWORD PTR [rip+0x884c3]        # 0xa6fe0
1eb1d	xor    edx,edx
1eb1f	mov    rcx,QWORD PTR [rip+0x884b2]        # 0xa6fd8
1eb26	call   0x478c0
1eb2b	mov    rax,QWORD PTR [rip+0x884a6]        # 0xa6fd8
1eb32	mov    QWORD PTR [rip+0x87e6f],rax        # 0xa69a8
1eb39	mov    rcx,QWORD PTR [rip+0x87c70]        # 0xa67b0
1eb40	call   0x21a60
1eb45	mov    rcx,rax
1eb48	cmp    DWORD PTR [rip+0x87df1],r12d        # 0xa6940
1eb4f	jne    0x1ec17
1eb55	cmp    rax,r13
1eb58	jb     0x1ec03
1eb5e	not    rax
1eb61	cmp    rax,0x7
1eb65	jb     0x1ec03
1eb6b	mov    rax,QWORD PTR [rip+0x87e36]        # 0xa69a8
1eb72	shr    rax,0x9
1eb76	movabs rdx,0x7ffffffff8
1eb80	and    rdx,rax
1eb83	add    rdx,rcx
1eb86	mov    QWORD PTR [rip+0x87e23],rdx        # 0xa69b0
1eb8d	cmp    rdx,r13
1eb90	jb     0x1ebf6
1eb92	mov    rax,rdx
1eb95	not    rax
1eb98	cmp    rax,0x7
1eb9c	jb     0x1ebf6
1eb9e	mov    QWORD PTR [rbp+0x120],r15
1eba5	mov    DWORD PTR [rsp+0x20],r15d
1ebaa	mov    r9d,0x8
1ebb0	lea    r8,[rbp+0x120]
1ebb7	lea    rcx,[rip+0x8690a]        # 0xa54c8
1ebbe	call   0x1b240
1ebc3	mov    rax,QWORD PTR [rbp+0x120]
1ebca	mov    QWORD PTR [rip+0x87de7],rax        # 0xa69b8
1ebd1	cmp    DWORD PTR [rip+0x87d68],r12d        # 0xa6940
1ebd8	jne    0x1ec17
1ebda	test   al,0x1
1ebdc	setne  cl
1ebdf	test   rsi,rax
1ebe2	setne  al
1ebe5	test   cl,al
1ebe7	jne    0x1ec42
1ebe9	mov    QWORD PTR [rip+0x87d4c],0x4007        # 0xa6940
1ebf4	jmp    0x1ec17
1ebf6	mov    QWORD PTR [rip+0x87d3f],0x4006        # 0xa6940
1ec01	jmp    0x1ec17
1ec03	mov    DWORD PTR [rip+0x87d33],0x4006        # 0xa6940
1ec0d	mov    DWORD PTR [rip+0x87d2d],0x1e7        # 0xa6944
1ec17	call   0x1be80
1ec1c	test   al,al
1ec1e	jne    0x1ec42
1ec20	jmp    0x1ec3f
1ec22	cmp    DWORD PTR [rip+0x87d17],r12d        # 0xa6940
1ec29	jne    0x1ec3f
1ec2b	mov    DWORD PTR [rip+0x87d0b],0x1        # 0xa6940
1ec35	mov    DWORD PTR [rip+0x87d05],0x57        # 0xa6944
1ec3f	xor    dil,dil
1ec42	mov    BYTE PTR [rip+0x87d0f],dil        # 0xa6958
1ec49	mov    rcx,QWORD PTR [rip+0x87d50]        # 0xa69a0
1ec50	test   rcx,rcx
1ec53	je     0x1ec5b
1ec55	call   0x35dfd5
1ec5a	ins    DWORD PTR [rdi],dx
1ec5b	test   dil,dil
1ec5e	jne    0x1ec8d
1ec60	test   bl,bl
1ec62	je     0x1ec83
1ec64	mov    rdx,QWORD PTR [rip+0x87b5d]        # 0xa67c8
1ec6b	test   rdx,rdx
1ec6e	je     0x1ec77
1ec70	mov    QWORD PTR [rip+0x86869],rdx        # 0xa54e0
1ec77	lea    rcx,[rip+0x8684a]        # 0xa54c8
1ec7e	call   0x1b010
1ec83	mov    eax,0x1
1ec88	jmp    0x20c31
1ec8d	mov    r14,r15
1ec90	mov    QWORD PTR [rsp+0x38],r15
1ec95	mov    ecx,0x64
1ec9a	movabs rdi,0xffff000000000000
1eca4	movups xmm12,XMMWORD PTR [rip+0x3e782]        # 0x5d42e
1ecac	movaps xmm13,XMMWORD PTR [rip+0x3e76c]        # 0x5d420
1ecb4	movaps xmm14,XMMWORD PTR [rip+0x3e754]        # 0x5d410
1ecbc	movaps xmm15,XMMWORD PTR [rip+0x3e73c]        # 0x5d400
1ecc4	movaps xmm6,XMMWORD PTR [rip+0x3dde5]        # 0x5cab0
1eccb	movaps xmm7,XMMWORD PTR [rip+0x3ddce]        # 0x5caa0
1ecd2	movaps xmm8,XMMWORD PTR [rip+0x3ddb6]        # 0x5ca90
1ecda	movaps xmm9,XMMWORD PTR [rip+0x3dd9e]        # 0x5ca80
1ece2	movaps xmm10,XMMWORD PTR [rip+0x3dd86]        # 0x5ca70
1ecea	movaps xmm11,XMMWORD PTR [rip+0x3dd6e]        # 0x5ca60
1ecf2	movzx  ebx,BYTE PTR [rbp+0xe0]
1ecf9	jmp    0x1ecfe
1ecfb	xor    r15d,r15d
1ecfe	mov    rsi,QWORD PTR [rip+0x4d3d3]        # 0x6c0d8
1ed05	mov    QWORD PTR [rbp+0x120],rsi
1ed0c	mov    eax,r15d
1ed0f	xchg   BYTE PTR [rip+0x87b13],al        # 0xa6828
1ed15	test   al,al
1ed17	je     0x1ed59
1ed19	mov    DWORD PTR [rip+0x87c00],r15d        # 0xa6920
1ed20	mov    QWORD PTR [rip+0x87c39],r15        # 0xa6960
1ed27	mov    QWORD PTR [rip+0x87af2],r15        # 0xa6820
1ed2e	mov    QWORD PTR [rip+0x87c03],r15        # 0xa6938
1ed35	mov    QWORD PTR [rip+0x87bcc],r15        # 0xa6908
1ed3c	mov    QWORD PTR [rip+0x87c45],r15        # 0xa6988
1ed43	mov    DWORD PTR [rip+0x87aee],r15d        # 0xa6838
1ed4a	mov    BYTE PTR [rip+0x87aeb],0x0        # 0xa683c
1ed51	mov    r14,r15
1ed54	mov    QWORD PTR [rsp+0x38],r15
1ed59	mov    rax,QWORD PTR [rip+0x87bb8]        # 0xa6918
1ed60	mov    QWORD PTR [rbp+0x430],rax
1ed67	mov    rax,QWORD PTR [rip+0x87bda]        # 0xa6948
1ed6e	mov    QWORD PTR [rbp+0x438],rax
1ed75	mov    r9d,0xfa
1ed7b	cmp    QWORD PTR [rip+0x87c05],0x0        # 0xa6988
1ed83	cmovne r9d,ecx
1ed87	xor    r8d,r8d
1ed8a	lea    rdx,[rbp+0x430]
1ed91	mov    ecx,0x2
1ed96	push   rdi
1ed97	call   0x22d834
1ed9c	test   eax,eax
1ed9e	je     0x20b61
1eda4	cmp    eax,0x1
1eda7	jne    0x1edb6
1eda9	mov    rcx,QWORD PTR [rip+0x87b98]        # 0xa6948
1edb0	push   rdx
1edb1	call   0x2d2a58
1edb6	mov    rax,QWORD PTR [rip+0x4d31b]        # 0x6c0d8
1edbd	cmp    rsi,rax
1edc0	mov    ecx,0x64
1edc5	jne    0x1ecfe
1edcb	movzx  eax,BYTE PTR [rip+0x8798a]        # 0xa675c
1edd2	test   al,al
1edd4	je     0x1ecfe
1edda	call   0xb9676
1eddf	movabs eax,ds:0xc88b486824448948
1ede8	sub    rcx,QWORD PTR [rip+0x87b49]        # 0xa6938
1edef	cmp    rcx,0x3e8
1edf6	jae    0x1ee11
1edf8	movzx  eax,BYTE PTR [rip+0x87a3d]        # 0xa683c
1edff	test   al,al
1ee01	mov    ecx,0x64
1ee06	je     0x1ecfe
1ee0c	jmp    0x205b0
1ee11	mov    QWORD PTR [rip+0x87b20],rax        # 0xa6938
1ee18	cmp    QWORD PTR [rip+0x87a10],0x0        # 0xa6830
1ee20	jne    0x1f0bf
1ee26	mov    rcx,QWORD PTR [rip+0x879a3]        # 0xa67d0
1ee2d	call   0x21a60
1ee32	mov    r14,rax
1ee35	cmp    rax,r13
1ee38	mov    ecx,0x64
1ee3d	jb     0x1ee82
1ee3f	not    rax
1ee42	cmp    rax,0xfff
1ee48	jb     0x1ee82
1ee4a	mov    esi,0x80
1ee4f	nop
1ee50	lea    rcx,[rsi+r14*1]
1ee54	call   0x21a60
1ee59	cmp    rax,0x4
1ee5d	jne    0x1ee70
1ee5f	lea    rcx,[r14+0x8]
1ee63	add    rcx,rsi
1ee66	call   0x21a60
1ee6b	cmp    rax,rdi
1ee6e	jae    0x1ee8c
1ee70	add    rsi,0x8
1ee74	cmp    rsi,0xa00
1ee7b	mov    ecx,0x64
1ee80	jbe    0x1ee50
1ee82	mov    r14,QWORD PTR [rsp+0x38]
1ee87	jmp    0x1ecfe
1ee8c	mov    QWORD PTR [rip+0x87add],r14        # 0xa6970
1ee93	mov    QWORD PTR [rip+0x87996],rsi        # 0xa6830
1ee9a	lea    r9,[rsi+0x8]
1ee9e	mov    QWORD PTR [rip+0x87aeb],r9        # 0xa6990
1eea5	movaps xmm0,XMMWORD PTR [rip+0x3e4a4]        # 0x5d350
1eeac	movaps XMMWORD PTR [rbp-0x50],xmm0
1eeb0	movaps xmm0,XMMWORD PTR [rip+0x3e4a9]        # 0x5d360
1eeb7	movaps XMMWORD PTR [rbp-0x40],xmm0
1eebb	movaps xmm0,XMMWORD PTR [rip+0x3e4ae]        # 0x5d370
1eec2	movaps XMMWORD PTR [rbp-0x30],xmm0
1eec6	movaps xmm0,XMMWORD PTR [rip+0x3e4b3]        # 0x5d380
1eecd	movaps XMMWORD PTR [rbp-0x20],xmm0
1eed1	movaps xmm0,XMMWORD PTR [rip+0x3e4b8]        # 0x5d390
1eed8	movaps XMMWORD PTR [rbp-0x10],xmm0
1eedc	movaps xmm0,XMMWORD PTR [rip+0x3e4bd]        # 0x5d3a0
1eee3	movaps XMMWORD PTR [rbp+0x0],xmm0
1eee7	movaps xmm0,XMMWORD PTR [rip+0x3e4c2]        # 0x5d3b0
1eeee	movaps XMMWORD PTR [rbp+0x10],xmm0
1eef2	movaps xmm0,XMMWORD PTR [rip+0x3e4c7]        # 0x5d3c0
1eef9	movaps XMMWORD PTR [rbp+0x20],xmm0
1eefd	xorps  xmm0,xmm0
1ef00	movups XMMWORD PTR [rbp+0x130],xmm0
1ef07	movups XMMWORD PTR [rbp+0x140],xmm0
1ef0e	movups XMMWORD PTR [rbp+0x150],xmm0
1ef15	movups XMMWORD PTR [rbp+0x160],xmm0
1ef1c	movups XMMWORD PTR [rbp+0x170],xmm0
1ef23	movups XMMWORD PTR [rbp+0x180],xmm0
1ef2a	movups XMMWORD PTR [rbp+0x190],xmm0
1ef31	movups XMMWORD PTR [rbp+0x19e],xmm0
1ef38	mov    rdi,r15
1ef3b	mov    r13d,0xf9
1ef41	nop    DWORD PTR [rax+0x0]
1ef45	data16 data16 nop WORD PTR [rax+rax*1+0x0]
1ef50	movzx  eax,di
1ef53	imul   ecx,eax,0xd
1ef56	mov    rax,rdi
1ef59	shr    rax,0x3
1ef5d	add    ax,cx
1ef60	add    ax,r13w
1ef64	xor    ax,WORD PTR [rbp+rdi*2-0x50]
1ef69	mov    WORD PTR [rbp+0xe0],ax
1ef70	movzx  eax,WORD PTR [rbp+0xe0]
1ef77	mov    WORD PTR [rbp+rdi*2+0x130],ax
1ef7f	inc    rdi
1ef82	cmp    rdi,0x3f
1ef86	jb     0x1ef50
1ef88	movabs r13,0xffff800000000000
1ef92	mov    r8,rsi
1ef95	mov    rdx,r14
1ef98	lea    rcx,[rbp+0x130]
1ef9f	call   0x8a20
1efa4	lea    rdi,[rbp+0x130]
1efab	xor    eax,eax
1efad	mov    ecx,0x7e
1efb2	rep stos BYTE PTR [rdi],al
1efb4	xorps  xmm0,xmm0
1efb7	movups XMMWORD PTR [rbp+0x450],xmm0
1efbe	movups XMMWORD PTR [rbp+0x460],xmm0
1efc5	movups XMMWORD PTR [rbp+0x470],xmm0
1efcc	movups XMMWORD PTR [rbp+0x480],xmm0
1efd3	movups XMMWORD PTR [rbp+0x490],xmm0
1efda	movups XMMWORD PTR [rbp+0x4a0],xmm0
1efe1	mov    r9,QWORD PTR [rip+0x879a8]        # 0xa6990
1efe8	mov    r8,QWORD PTR [rip+0x87841]        # 0xa6830
1efef	lea    rdx,[rip+0x3d86a]        # 0x5c860   ; "A:pid_off=0x%llX links_off=0x%llX"
1eff6	lea    rcx,[rbp+0x450]
1effd	call   0x8560
