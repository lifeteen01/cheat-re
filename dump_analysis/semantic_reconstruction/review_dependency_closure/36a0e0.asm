36a0e0	rex push rbx
36a0e2	sub    rsp,0x20
36a0e6	mov    rbx,rcx
36a0e9	call   0x2caf08
36a0ee	test   al,al
36a0f0	je     0x36a16d
36a0f2	mov    edx,DWORD PTR [rip+0x94d38]        # 0x3fee30
36a0f8	test   dl,0x1
36a0fb	jne    0x36a11d
36a0fd	mov    r8,QWORD PTR [rip+0x6cdfc]        # 0x3d6f00
36a104	or     edx,0x1
36a107	add    r8,0x3f12dd0
36a10e	mov    DWORD PTR [rip+0x94d1c],edx        # 0x3fee30
36a114	mov    QWORD PTR [rip+0x94d0d],r8        # 0x3fee28
36a11b	jmp    0x36a124
36a11d	mov    r8,QWORD PTR [rip+0x94d04]        # 0x3fee28
36a124	test   dl,0x2
36a127	jne    0x36a148
36a129	mov    rcx,QWORD PTR [rip+0x6bd30]        # 0x3d5e60
36a130	or     edx,0x2
36a133	mov    DWORD PTR [rip+0x94cf7],edx        # 0x3fee30
36a139	xor    r9d,r9d
36a13c	lea    rdx,[rip+0x94cfd]        # 0x3fee40
36a143	call   0x2cbd24
36a148	mov    rcx,QWORD PTR [rip+0x6bd11]        # 0x3d5e60
36a14f	lea    rdx,[rip+0x94cea]        # 0x3fee40
36a156	mov    r8,rbx
36a159	call   0x2cb9fc
36a15e	mov    rcx,rax
36a161	call   0x2caf08
36a166	test   al,al
36a168	setne  al
36a16b	jmp    0x36a16f
36a16d	xor    al,al
36a16f	add    rsp,0x20
36a173	pop    rbx
36a174	ret
