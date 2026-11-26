394e5c	mov    QWORD PTR [rsp+0x20],rbx
394e61	push   rbp
394e62	push   rsi
394e63	push   rdi
394e64	push   r12
394e66	push   r13
394e68	push   r14
394e6a	push   r15
394e6c	sub    rsp,0x30
394e70	mov    r14,r8
394e73	mov    r15,rdx
394e76	mov    r13,rcx
394e79	mov    rsi,QWORD PTR [rip+0x70ca8]        # 0x405b28
394e80	mov    rax,QWORD PTR [rsi+0x5cb8]
394e87	mov    rbx,QWORD PTR [rsi+0x5cb0]
394e8e	mov    r12,QWORD PTR [rsi+0x3f08]
394e95	mov    QWORD PTR [rsp+0x78],rax
394e9a	mov    QWORD PTR [rsi+0x5cb8],0x0
394ea5	mov    QWORD PTR [rsi+0x5cb0],0x0
394eb0	test   r14,r14
394eb3	jne    0x394ec2
394eb5	xor    edx,edx
394eb7	mov    rcx,r15
394eba	call   0x391c50
394ebf	mov    r14,rax
394ec2	lea    rcx,[rsi+0x5cc0]
394ec9	test   r13,r13
394ecc	je     0x394f15
394ece	movss  xmm1,DWORD PTR [rcx]
394ed2	addss  xmm1,DWORD PTR [rsi+0x3810]
394eda	movss  xmm0,DWORD PTR [r13+0x4]
394ee0	addss  xmm1,DWORD PTR [rip+0xffffffffffef836c]        # 0x28d254
394ee8	comiss xmm0,xmm1
394eeb	jbe    0x394ef1
394eed	mov    dl,0x1
394eef	jmp    0x394ef8
394ef1	test   r13,r13
394ef4	je     0x394f15
394ef6	xor    dl,dl
394ef8	mov    eax,DWORD PTR [r13+0x4]
394efc	mov    DWORD PTR [rcx],eax
394efe	test   dl,dl
394f00	je     0x394f15
394f02	lea    rcx,[rip+0xfffffffffff15223]        # 0x2aa12c
394f09	call   0x395038
394f0e	mov    BYTE PTR [rsi+0x5cc4],0x1
394f15	test   rbx,rbx
394f18	je     0x394f31
394f1a	mov    rcx,rbx
394f1d	call   0x3ca904
394f22	mov    rdx,rbx
394f25	mov    rcx,r13
394f28	lea    r8,[rax+rbx*1]
394f2c	call   0x394e5c
394f31	mov    eax,DWORD PTR [r12+0x188]
394f39	mov    ecx,DWORD PTR [rsi+0x5cc8]
394f3f	cmp    ecx,eax
394f41	jle    0x394f4b
394f43	mov    DWORD PTR [rsi+0x5cc8],eax
394f49	jmp    0x394f4d
394f4b	mov    eax,ecx
394f4d	mov    r12d,DWORD PTR [r12+0x188]
394f55	sub    r12d,eax
394f58	shl    r12d,0x2
394f5c	mov    rdx,r14
394f5f	mov    rcx,r15
394f62	call   0x393520
394f67	mov    rbp,rax
394f6a	cmp    r15,rax
394f6d	jne    0x394f74
394f6f	cmp    rax,r14
394f72	je     0x394fea
394f74	cmp    BYTE PTR [rsi+0x5cc4],0x0
394f7b	lea    rdx,[rsp+0x80]
394f83	mov    edi,0x1
394f88	lea    rcx,[rsp+0x70]
394f8d	cmovne edi,r12d
394f91	mov    ebx,ebp
394f93	sub    ebx,r15d
394f96	call   0x38c774
394f9b	mov    rcx,rax
394f9e	call   0x39e8fc
394fa3	mov    rcx,rax
394fa6	mov    QWORD PTR [rsp+0x20],r15
394fab	mov    r9d,ebx
394fae	lea    r8,[rip+0xffffffffffef8373]        # 0x28d328
394fb5	mov    edx,edi
394fb7	call   0x395038
394fbc	mov    BYTE PTR [rsi+0x5cc4],0x0
394fc3	cmp    BYTE PTR [rbp+0x0],0xa
394fc7	jne    0x394fdc
394fc9	lea    rcx,[rip+0xfffffffffff1515c]        # 0x2aa12c
394fd0	call   0x395038
394fd5	mov    BYTE PTR [rsi+0x5cc4],0x1
394fdc	cmp    rbp,r14
394fdf	je     0x394fea
394fe1	lea    r15,[rbp+0x1]
394fe5	jmp    0x394f5c
394fea	mov    rdi,QWORD PTR [rsp+0x78]
394fef	test   rdi,rdi
394ff2	je     0x395008
394ff4	mov    rcx,rdi
394ff7	call   0x3ca904
394ffc	mov    r15,rdi
394fff	lea    r14,[rax+rdi*1]
395003	jmp    0x394e79
395008	mov    rbx,QWORD PTR [rsp+0x88]
395010	add    rsp,0x30
395014	pop    r15
395016	pop    r14
395018	pop    r13
39501a	pop    r12
39501c	pop    rdi
39501d	pop    rsi
39501e	pop    rbp
39501f	ret
