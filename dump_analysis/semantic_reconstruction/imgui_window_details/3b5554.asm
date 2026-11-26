3b5554	rex push rbx
3b5556	push   rbp
3b5557	push   rsi
3b5558	push   rdi
3b5559	push   r14
3b555b	sub    rsp,0x40
3b555f	movaps XMMWORD PTR [rsp+0x30],xmm6
3b5564	mov    edi,ecx
3b5566	movaps XMMWORD PTR [rsp+0x20],xmm7
3b556b	movaps xmm6,xmm1
3b556e	mov    rbp,QWORD PTR [rip+0x505b3]        # 0x405b28
3b5575	mov    rax,QWORD PTR [rbp+0x3f08]
3b557c	mov    rsi,QWORD PTR [rax+0x1a8]
3b5583	test   edi,edi
3b5585	jns    0x3b558a
3b5587	mov    edi,DWORD PTR [rsi+0xc]
3b558a	test   BYTE PTR [rsi+0x4],0x4
3b558e	jne    0x3b55af
3b5590	mov    eax,DWORD PTR [rsi+0x10]
3b5593	dec    eax
3b5595	cmp    edi,eax
3b5597	jge    0x3b55af
3b5599	mov    r8b,BYTE PTR [rsi+0x9]
3b559d	mov    edx,edi
3b559f	mov    rcx,rsi
3b55a2	mov    r14b,0x1
3b55a5	call   0x3b5384
3b55aa	movaps xmm7,xmm0
3b55ad	jmp    0x3b55b5
3b55af	xor    r14b,r14b
3b55b2	xorps  xmm7,xmm7
3b55b5	test   BYTE PTR [rsi+0x4],0x8
3b55b9	jne    0x3b55e3
3b55bb	mov    eax,DWORD PTR [rsi+0x10]
3b55be	movss  xmm1,DWORD PTR [rsi+0x18]
3b55c3	sub    eax,edi
3b55c5	movd   xmm0,eax
3b55c9	cvtdq2ps xmm0,xmm0
3b55cc	mulss  xmm0,DWORD PTR [rbp+0x3840]
3b55d4	subss  xmm1,xmm0
3b55d8	movaps xmm0,xmm6
3b55db	call   0x3762cc
3b55e0	movaps xmm6,xmm0
3b55e3	lea    rcx,[rsi+0x60]
3b55e7	mov    edx,edi
3b55e9	call   0x38bba8
3b55ee	movaps xmm1,xmm6
3b55f1	mov    rcx,rsi
3b55f4	subss  xmm1,DWORD PTR [rsi+0x14]
3b55f9	mov    rbx,rax
3b55fc	call   0x3b530c
3b5601	movss  DWORD PTR [rbx],xmm0
3b5605	test   r14b,r14b
3b5608	je     0x3b5625
3b560a	movss  xmm0,DWORD PTR [rbp+0x3840]
3b5612	movaps xmm1,xmm7
3b5615	call   0x38a3f4
3b561a	addss  xmm6,xmm0
3b561e	inc    edi
3b5620	jmp    0x3b556e
3b5625	movaps xmm6,XMMWORD PTR [rsp+0x30]
3b562a	movaps xmm7,XMMWORD PTR [rsp+0x20]
3b562f	add    rsp,0x40
3b5633	pop    r14
3b5635	pop    rdi
3b5636	pop    rsi
3b5637	pop    rbp
3b5638	pop    rbx
3b5639	ret
