366ef0	rex push rbx
366ef2	push   rbp
366ef3	push   rsi
366ef4	push   rdi
366ef5	sub    rsp,0x48
366ef9	mov    rdi,r9
366efc	mov    rsi,r8
366eff	mov    rbp,rdx
366f02	mov    rbx,rcx
366f05	call   0x2caf08
366f0a	test   al,al
366f0c	je     0x366fa1
366f12	mov    r10d,DWORD PTR [rip+0x96fc7]        # 0x3fdee0
366f19	test   r10b,0x1
366f1d	jne    0x366f41
366f1f	mov    r8,QWORD PTR [rip+0x6ffda]        # 0x3d6f00
366f26	or     r10d,0x1
366f2a	add    r8,0x65c7f60
366f31	mov    DWORD PTR [rip+0x96fa8],r10d        # 0x3fdee0
366f38	mov    QWORD PTR [rip+0x96f99],r8        # 0x3fded8
366f3f	jmp    0x366f48
366f41	mov    r8,QWORD PTR [rip+0x96f90]        # 0x3fded8
366f48	test   r10b,0x2
366f4c	jne    0x366f6f
366f4e	mov    rcx,QWORD PTR [rip+0x6ef0b]        # 0x3d5e60
366f55	lea    rdx,[rip+0x96f94]        # 0x3fdef0
366f5c	or     r10d,0x2
366f60	xor    r9d,r9d
366f63	mov    DWORD PTR [rip+0x96f76],r10d        # 0x3fdee0
366f6a	call   0x2cbd24
366f6f	movss  xmm0,DWORD PTR [rsp+0x90]
366f78	lea    rdx,[rip+0x96f71]        # 0x3fdef0
366f7f	mov    rcx,QWORD PTR [rip+0x6eeda]        # 0x3d5e60
366f86	mov    r9,rbp
366f89	movss  DWORD PTR [rsp+0x30],xmm0
366f8f	mov    r8,rbx
366f92	mov    QWORD PTR [rsp+0x28],rdi
366f97	mov    QWORD PTR [rsp+0x20],rsi
366f9c	call   0x365b70
366fa1	add    rsp,0x48
366fa5	pop    rdi
366fa6	pop    rsi
366fa7	pop    rbp
366fa8	pop    rbx
366fa9	ret
