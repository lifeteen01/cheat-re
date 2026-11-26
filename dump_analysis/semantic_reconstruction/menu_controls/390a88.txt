390a88	rex push rbp
390a8a	push   rbx
390a8b	push   rsi
390a8c	push   rdi
390a8d	push   r14
390a8f	push   r15
390a91	mov    rbp,rsp
390a94	sub    rsp,0x48
390a98	mov    r14,QWORD PTR [rip+0x75089]        # 0x405b28
390a9f	mov    r15d,0x1
390aa5	mov    rsi,QWORD PTR [r14+0x3f08]
390aac	mov    BYTE PTR [r14+0x3e6e],r15b
390ab3	cmp    WORD PTR [rsi+0xc2],r15w
390abb	jle    0x390ac7
390abd	call   0x390994
390ac2	jmp    0x390c5f
390ac7	mov    al,BYTE PTR [rsi+0xd2]
390acd	movsd  xmm0,QWORD PTR [rsi+0x28]
390ad2	movss  xmm2,DWORD PTR [rip+0xfffffffffff0269e]        # 0x293178
390ada	movsd  QWORD PTR [rbp+0x38],xmm0
390adf	test   r15b,al
390ae2	je     0x390af6
390ae4	movss  xmm1,DWORD PTR [rbp+0x38]
390ae9	movaps xmm0,xmm2
390aec	call   0x38a3f4
390af1	movss  DWORD PTR [rbp+0x38],xmm0
390af6	test   al,0x2
390af8	je     0x390b0c
390afa	movss  xmm1,DWORD PTR [rbp+0x3c]
390aff	movaps xmm0,xmm2
390b02	call   0x38a3f4
390b07	movss  DWORD PTR [rbp+0x3c],xmm0
390b0c	call   0x390994
390b11	mov    rdi,QWORD PTR [r14+0x3f08]
390b18	lea    r8,[rbp+0x38]
390b1c	lea    rcx,[rbp+0x40]
390b20	lea    rbx,[rdi+0x100]
390b27	mov    rdx,rbx
390b2a	call   0x2ef9d8
390b2f	mov    r8,rax
390b32	lea    rcx,[rbp-0x28]
390b36	mov    rdx,rbx
390b39	call   0x2db388
390b3e	movss  xmm1,DWORD PTR [rip+0xfffffffffff0271a]        # 0x293260
390b46	lea    rcx,[rbp+0x38]
390b4a	call   0x394b40
390b4f	cmp    WORD PTR [rsi+0x15c],0x0
390b57	mov    ebx,0x800000
390b5c	jne    0x390b6b
390b5e	cmp    BYTE PTR [rsi+0x162],0x0
390b65	je     0x390c29
390b6b	test   DWORD PTR [rsi+0x14],ebx
390b6e	jne    0x390c29
390b74	mov    edx,DWORD PTR [rsi+0x80]
390b7a	lea    rcx,[rbp-0x28]
390b7e	xor    r9d,r9d
390b81	xor    r8d,r8d
390b84	call   0x3948dc
390b89	mov    edx,DWORD PTR [rsi+0x80]
390b8f	lea    rcx,[rbp-0x28]
390b93	mov    r8d,r15d
390b96	call   0x3997ac
390b9b	cmp    WORD PTR [rsi+0x15c],0x0
390ba3	jne    0x390c4d
390ba9	cmp    rsi,QWORD PTR [r14+0x48e8]
390bb0	jne    0x390c4d
390bb6	movss  xmm2,DWORD PTR [rip+0xfffffffffff02576]        # 0x293134
390bbe	lea    rcx,[rbp+0x38]
390bc2	mov    edi,DWORD PTR [r14+0x48f0]
390bc9	movaps xmm1,xmm2
390bcc	call   0x2cc340
390bd1	mov    r8,rax
390bd4	lea    rdx,[rbp-0x20]
390bd8	lea    rcx,[rbp+0x40]
390bdc	call   0x2ef9d8
390be1	movss  xmm2,DWORD PTR [rip+0xfffffffffff0254b]        # 0x293134
390be9	lea    rcx,[rbp+0x48]
390bed	movaps xmm1,xmm2
390bf0	mov    rbx,rax
390bf3	call   0x2cc340
390bf8	mov    r8,rax
390bfb	lea    rdx,[rbp-0x28]
390bff	lea    rcx,[rbp+0x50]
390c03	call   0x3367e4
390c08	mov    rdx,rax
390c0b	lea    rcx,[rbp-0x18]
390c0f	mov    r8,rbx
390c12	call   0x2db388
390c17	mov    rcx,rax
390c1a	mov    r8d,0x2
390c20	mov    edx,edi
390c22	call   0x3997ac
390c27	jmp    0x390c4d
390c29	xor    r9d,r9d
390c2c	lea    rcx,[rbp-0x28]
390c30	xor    r8d,r8d
390c33	xor    edx,edx
390c35	call   0x3948dc
390c3a	test   DWORD PTR [rsi+0x14],ebx
390c3d	je     0x390c4d
390c3f	movzx  eax,WORD PTR [rsi+0x15e]
390c46	or     WORD PTR [rdi+0x15e],ax
390c4d	cmp    QWORD PTR [r14+0x3f10],rsi
390c54	jne    0x390c5f
390c56	bts    DWORD PTR [r14+0x47ac],0x7
390c5f	mov    BYTE PTR [r14+0x3e6e],0x0
390c67	mov    DWORD PTR [r14+0x5cc0],0xff7fffff
390c72	add    rsp,0x48
390c76	pop    r15
390c78	pop    r14
390c7a	pop    rdi
390c7b	pop    rsi
390c7c	pop    rbx
390c7d	pop    rbp
390c7e	ret
