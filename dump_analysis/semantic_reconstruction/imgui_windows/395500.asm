395500	mov    QWORD PTR [rsp+0x8],rbx
395505	push   rdi
395506	sub    rsp,0x30
39550a	test   DWORD PTR [rcx+0x14],0x40000
395511	mov    rbx,rcx
395514	mov    rdi,QWORD PTR [rip+0x7060d]        # 0x405b28
39551b	je     0x395535
39551d	mov    DWORD PTR [rdi+0x48f0],0x0
395527	mov    eax,DWORD PTR [rcx+0x3c8]
39552d	mov    DWORD PTR [rdi+0x48f4],eax
395533	jmp    0x3955b0
395535	cmp    rbx,QWORD PTR [rcx+0x378]
39553c	je     0x395562
39553e	test   DWORD PTR [rcx+0x14],0x4000000
395545	jne    0x395562
395547	cmp    DWORD PTR [rcx+0x3a0],0x0
39554e	je     0x395562
395550	test   dl,dl
395552	jne    0x395562
395554	mov    eax,DWORD PTR [rcx+0x3a0]
39555a	mov    DWORD PTR [rdi+0x48f0],eax
395560	jmp    0x395527
395562	lea    rcx,[rsp+0x20]
395567	call   0x38bb2c
39556c	mov    r8d,DWORD PTR [rbx+0x3c8]
395573	mov    r9,rax
395576	mov    edx,DWORD PTR [rdi+0x4920]
39557c	xor    ecx,ecx
39557e	call   0x39b690
395583	lea    rcx,[rsp+0x20]
395588	mov    WORD PTR [rdi+0x4929],0x1
395591	mov    DWORD PTR [rdi+0x492c],0x0
39559b	call   0x38bb2c
3955a0	movups xmm0,XMMWORD PTR [rax]
3955a3	movdqu XMMWORD PTR [rdi+0x4930],xmm0
3955ab	call   0x39676c
3955b0	mov    rbx,QWORD PTR [rsp+0x40]
3955b5	add    rsp,0x30
3955b9	pop    rdi
3955ba	ret
