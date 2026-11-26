39bb4c	mov    QWORD PTR [rsp+0x8],rbx
39bb51	mov    QWORD PTR [rsp+0x10],rsi
39bb56	push   rdi
39bb57	sub    rsp,0x30
39bb5b	mov    rsi,rdx
39bb5e	mov    rdi,rcx
39bb61	test   r8d,r8d
39bb64	je     0x39bb76
39bb66	movsx  eax,BYTE PTR [rcx+0xdc]
39bb6d	test   r8d,eax
39bb70	je     0x39bc59
39bb76	movzx  r8d,BYTE PTR [rcx+0xdc]
39bb7e	mov    eax,DWORD PTR [rcx+0xdc]
39bb84	and    r8d,0xf1
39bb8b	movss  xmm1,DWORD PTR [rip+0xffffffffffef1fc1]        # 0x28db54
39bb93	and    eax,0xffffff00
39bb98	or     r8d,eax
39bb9b	movaps xmm2,xmm1
39bb9e	mov    DWORD PTR [rcx+0xdc],r8d
39bba5	lea    rcx,[rsp+0x58]
39bbaa	call   0x2cc340
39bbaf	lea    rbx,[rdi+0x20]
39bbb3	mov    rdx,rsi
39bbb6	movsd  xmm1,QWORD PTR [rbx]
39bbba	lea    rcx,[rsp+0x58]
39bbbf	movsd  QWORD PTR [rsp+0x20],xmm1
39bbc5	movsd  xmm0,QWORD PTR [rax]
39bbc9	movsd  QWORD PTR [rdi+0xe0],xmm0
39bbd1	call   0x39307c
39bbd6	lea    r8,[rsp+0x20]
39bbdb	mov    rdx,rbx
39bbde	lea    rcx,[rsp+0x58]
39bbe3	movsd  xmm0,QWORD PTR [rax]
39bbe7	movsd  QWORD PTR [rbx],xmm0
39bbeb	call   0x3367e4
39bbf0	movss  xmm0,DWORD PTR [rsp+0x58]
39bbf6	xorps  xmm1,xmm1
39bbf9	ucomiss xmm0,xmm1
39bbfc	jp     0x39bc0d
39bbfe	jne    0x39bc0d
39bc00	movss  xmm0,DWORD PTR [rsp+0x5c]
39bc06	ucomiss xmm0,xmm1
39bc09	jp     0x39bc0d
39bc0b	je     0x39bc59
39bc0d	mov    rcx,rdi
39bc10	call   0x395108
39bc15	lea    rcx,[rdi+0x100]
39bc1c	lea    rdx,[rsp+0x58]
39bc21	call   0x38cc48
39bc26	lea    rcx,[rdi+0x118]
39bc2d	lea    rdx,[rsp+0x58]
39bc32	call   0x38cc48
39bc37	lea    rcx,[rdi+0x120]
39bc3e	lea    rdx,[rsp+0x58]
39bc43	call   0x38cc48
39bc48	lea    rcx,[rdi+0x110]
39bc4f	lea    rdx,[rsp+0x58]
39bc54	call   0x38cc48
39bc59	mov    rbx,QWORD PTR [rsp+0x40]
39bc5e	mov    rsi,QWORD PTR [rsp+0x48]
39bc63	add    rsp,0x30
39bc67	pop    rdi
39bc68	ret
