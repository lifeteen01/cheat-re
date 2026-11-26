3948dc	rex push rbx
3948de	push   rbp
3948df	push   rsi
3948e0	push   rdi
3948e1	sub    rsp,0x28
3948e5	mov    rbx,QWORD PTR [rip+0x7123c]        # 0x405b28
3948ec	test   r8,r8
3948ef	mov    rax,rcx
3948f2	mov    edi,edx
3948f4	cmovne rax,r8
3948f8	mov    rbp,rcx
3948fb	or     r9d,DWORD PTR [rbx+0x4788]
394902	mov    rsi,QWORD PTR [rbx+0x3f08]
394909	mov    DWORD PTR [rbx+0x47a4],edx
39490f	movups xmm0,XMMWORD PTR [rcx]
394912	movdqu XMMWORD PTR [rbx+0x47b0],xmm0
39491a	movups xmm0,XMMWORD PTR [rax]
39491d	mov    DWORD PTR [rbx+0x47a8],r9d
394924	mov    DWORD PTR [rbx+0x47ac],0x0
39492e	movdqu XMMWORD PTR [rbx+0x47c0],xmm0
394936	test   edx,edx
394938	je     0x39499f
39493a	mov    ecx,edx
39493c	call   0x394cb4
394941	test   BYTE PTR [rbx+0x47a8],0x8
394948	jne    0x39499f
39494a	movsx  ecx,WORD PTR [rsi+0x15e]
394951	mov    eax,DWORD PTR [rsi+0x158]
394957	bts    ecx,eax
39495a	mov    WORD PTR [rsi+0x15e],cx
394961	cmp    DWORD PTR [rbx+0x48f0],edi
394967	je     0x394972
394969	cmp    BYTE PTR [rbx+0x4928],0x0
394970	je     0x39499f
394972	mov    rcx,QWORD PTR [rbx+0x48e8]
394979	mov    rax,QWORD PTR [rsi+0x390]
394980	cmp    QWORD PTR [rcx+0x390],rax
394987	jne    0x39499f
394989	cmp    rsi,rcx
39498c	je     0x39499a
39498e	mov    eax,DWORD PTR [rcx+0x14]
394991	or     eax,DWORD PTR [rsi+0x14]
394994	bt     eax,0x17
394998	jae    0x39499f
39499a	call   0x395964
39499f	lea    rdx,[rsi+0x238]
3949a6	mov    DWORD PTR [rbx+0x4790],0x0
3949b0	mov    rcx,rbp
3949b3	call   0x398728
3949b8	test   al,al
3949ba	jne    0x3949e5
3949bc	test   edi,edi
3949be	je     0x3949d8
3949c0	cmp    edi,DWORD PTR [rbx+0x3f68]
3949c6	je     0x3949ed
3949c8	cmp    edi,DWORD PTR [rbx+0x3f98]
3949ce	je     0x3949ed
3949d0	cmp    edi,DWORD PTR [rbx+0x48f0]
3949d6	je     0x3949ed
3949d8	cmp    BYTE PTR [rbx+0x5c90],0x0
3949df	jne    0x3949ed
3949e1	xor    al,al
3949e3	jmp    0x394a09
3949e5	bts    DWORD PTR [rbx+0x47ac],0x9
3949ed	lea    rdx,[rbp+0x8]
3949f1	mov    r8b,0x1
3949f4	mov    rcx,rbp
3949f7	call   0x3944ac
3949fc	test   al,al
3949fe	je     0x394a07
394a00	or     DWORD PTR [rbx+0x47ac],0x1
394a07	mov    al,0x1
394a09	add    rsp,0x28
394a0d	pop    rdi
394a0e	pop    rsi
394a0f	pop    rbp
394a10	pop    rbx
394a11	ret
