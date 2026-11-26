3bff58	mov    QWORD PTR [rsp+0x8],rbx
3bff5d	mov    QWORD PTR [rsp+0x10],rsi
3bff62	push   rdi
3bff63	sub    rsp,0x40
3bff67	mov    rdi,rdx
3bff6a	movsxd rbx,r8d
3bff6d	mov    rsi,rcx
3bff70	lea    rdx,[rsp+0x30]
3bff75	mov    rcx,rdi
3bff78	call   0x398d44
3bff7d	mov    rdx,rbx
3bff80	lea    rcx,[rdi+0xac]
3bff87	xor    rdx,0x1
3bff8b	call   0x38bbcc
3bff90	test   ebx,ebx
3bff92	jne    0x3bffcc
3bff94	movss  xmm3,DWORD PTR [rsp+0x3c]
3bff9a	movss  xmm0,DWORD PTR [rsp+0x34]
3bffa0	movaps xmm1,xmm3
3bffa3	subss  xmm1,DWORD PTR [rdi+0x5c]
3bffa8	subss  xmm1,DWORD PTR [rax]
3bffac	call   0x38a3f4
3bffb1	movss  xmm1,DWORD PTR [rdi+0x1f8]
3bffb9	movaps xmm2,xmm0
3bffbc	movss  DWORD PTR [rsp+0x20],xmm3
3bffc2	movss  xmm3,DWORD PTR [rdi+0x200]
3bffca	jmp    0x3c0005
3bffcc	movss  xmm1,DWORD PTR [rsp+0x38]
3bffd2	subss  xmm1,DWORD PTR [rdi+0x5c]
3bffd7	movss  xmm0,DWORD PTR [rsp+0x30]
3bffdd	subss  xmm1,DWORD PTR [rax]
3bffe1	call   0x38a3f4
3bffe6	movss  xmm2,DWORD PTR [rdi+0x204]
3bffee	movaps xmm1,xmm0
3bfff1	movss  xmm3,DWORD PTR [rsp+0x38]
3bfff7	movss  DWORD PTR [rsp+0x20],xmm2
3bfffd	movss  xmm2,DWORD PTR [rdi+0x1fc]
3c0005	mov    rcx,rsi
3c0008	call   0x38baf4
3c000d	mov    rbx,QWORD PTR [rsp+0x50]
3c0012	mov    rax,rsi
3c0015	mov    rsi,QWORD PTR [rsp+0x58]
3c001a	add    rsp,0x40
3c001e	pop    rdi
3c001f	ret
