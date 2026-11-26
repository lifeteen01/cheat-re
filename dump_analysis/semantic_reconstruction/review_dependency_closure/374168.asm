374168	rex push rbx
37416a	push   rbp
37416b	push   rsi
37416c	push   rdi
37416d	sub    rsp,0x38
374171	mov    rdi,r9
374174	mov    rsi,r8
374177	mov    rbp,rdx
37417a	mov    rbx,rcx
37417d	call   0x2caf08
374182	test   al,al
374184	je     0x374204
374186	mov    ecx,DWORD PTR [rip+0x8daac]        # 0x401c38
37418c	test   cl,0x1
37418f	jne    0x3741b1
374191	mov    r8,QWORD PTR [rip+0x62d68]        # 0x3d6f00
374198	or     ecx,0x1
37419b	add    r8,0x1cd1620
3741a2	mov    DWORD PTR [rip+0x8da90],ecx        # 0x401c38
3741a8	mov    QWORD PTR [rip+0x8da81],r8        # 0x401c30
3741af	jmp    0x3741b8
3741b1	mov    r8,QWORD PTR [rip+0x8da78]        # 0x401c30
3741b8	test   cl,0x2
3741bb	jne    0x3741dc
3741bd	or     ecx,0x2
3741c0	lea    rdx,[rip+0x8da79]        # 0x401c40
3741c7	mov    DWORD PTR [rip+0x8da6b],ecx        # 0x401c38
3741cd	xor    r9d,r9d
3741d0	mov    rcx,QWORD PTR [rip+0x61c89]        # 0x3d5e60
3741d7	call   0x2cbd24
3741dc	mov    rcx,QWORD PTR [rip+0x61c7d]        # 0x3d5e60
3741e3	lea    rdx,[rip+0x8da56]        # 0x401c40
3741ea	mov    QWORD PTR [rsp+0x28],rdi
3741ef	mov    r9,rbp
3741f2	mov    r8,rbx
3741f5	mov    QWORD PTR [rsp+0x20],rsi
3741fa	call   0x374050
3741ff	test   al,al
374201	setne  al
374204	add    rsp,0x38
374208	pop    rdi
374209	pop    rsi
37420a	pop    rbp
37420b	pop    rbx
37420c	ret
