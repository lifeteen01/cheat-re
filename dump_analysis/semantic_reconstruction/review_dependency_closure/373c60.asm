373c60	mov    QWORD PTR [rsp+0x8],rbx
373c65	push   rdi
373c66	sub    rsp,0x30
373c6a	mov    rbx,rdx
373c6d	mov    rdi,rcx
373c70	call   0x2caf08
373c75	test   al,al
373c77	je     0x373cf3
373c79	mov    ecx,DWORD PTR [rip+0x8dce1]        # 0x401960
373c7f	test   cl,0x1
373c82	jne    0x373ca4
373c84	mov    r8,QWORD PTR [rip+0x63275]        # 0x3d6f00
373c8b	or     ecx,0x1
373c8e	add    r8,0x19f3db0
373c95	mov    DWORD PTR [rip+0x8dcc5],ecx        # 0x401960
373c9b	mov    QWORD PTR [rip+0x8dcb6],r8        # 0x401958
373ca2	jmp    0x373cab
373ca4	mov    r8,QWORD PTR [rip+0x8dcad]        # 0x401958
373cab	test   cl,0x2
373cae	jne    0x373ccf
373cb0	or     ecx,0x2
373cb3	lea    rdx,[rip+0x8dcb6]        # 0x401970
373cba	mov    DWORD PTR [rip+0x8dca0],ecx        # 0x401960
373cc0	xor    r9d,r9d
373cc3	mov    rcx,QWORD PTR [rip+0x62196]        # 0x3d5e60
373cca	call   0x2cbd24
373ccf	mov    rcx,QWORD PTR [rip+0x6218a]        # 0x3d5e60
373cd6	lea    r8,[rsp+0x20]
373cdb	mov    r9,rdi
373cde	lea    rdx,[rip+0x8dc8b]        # 0x401970
373ce5	call   0x2d2094
373cea	movups xmm0,XMMWORD PTR [rsp+0x20]
373cef	movdqu XMMWORD PTR [rbx],xmm0
373cf3	mov    rax,rbx
373cf6	mov    rbx,QWORD PTR [rsp+0x40]
373cfb	add    rsp,0x30
373cff	pop    rdi
373d00	ret
