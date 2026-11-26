3b5384	rex push rbx
3b5386	push   rbp
3b5387	push   rsi
3b5388	push   rdi
3b5389	sub    rsp,0x28
3b538d	mov    edi,edx
3b538f	mov    rsi,rcx
3b5392	test   edx,edx
3b5394	jns    0x3b5399
3b5396	mov    edi,DWORD PTR [rcx+0xc]
3b5399	lea    rbp,[rcx+0x60]
3b539d	lea    edx,[rdi+0x1]
3b53a0	mov    rcx,rbp
3b53a3	test   r8b,r8b
3b53a6	je     0x3b53c6
3b53a8	call   0x38bba8
3b53ad	mov    edx,edi
3b53af	mov    rcx,rbp
3b53b2	mov    rbx,rax
3b53b5	call   0x38bba8
3b53ba	movss  xmm1,DWORD PTR [rbx+0x4]
3b53bf	subss  xmm1,DWORD PTR [rax+0x4]
3b53c4	jmp    0x3b53e0
3b53c6	call   0x38bba8
3b53cb	mov    edx,edi
3b53cd	mov    rcx,rbp
3b53d0	mov    rbx,rax
3b53d3	call   0x38bba8
3b53d8	movss  xmm1,DWORD PTR [rbx]
3b53dc	subss  xmm1,DWORD PTR [rax]
3b53e0	mov    rcx,rsi
3b53e3	add    rsp,0x28
3b53e7	pop    rdi
3b53e8	pop    rsi
3b53e9	pop    rbp
3b53ea	pop    rbx
3b53eb	jmp    0x3b5374
