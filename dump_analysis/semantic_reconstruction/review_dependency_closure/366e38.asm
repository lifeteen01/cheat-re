366e38	rex push rbx
366e3a	push   rbp
366e3b	push   rsi
366e3c	push   rdi
366e3d	sub    rsp,0x38
366e41	mov    sil,r9b
366e44	mov    rdi,r8
366e47	mov    rbx,rcx
366e4a	call   0x2caf08
366e4f	test   al,al
366e51	je     0x366ee6
366e57	mov    rcx,rdx
366e5a	call   0x2ce5dc
366e5f	mov    rcx,rdi
366e62	mov    rbp,rax
366e65	call   0x2ce5dc
366e6a	mov    edx,DWORD PTR [rip+0x96f80]        # 0x3fddf0
366e70	mov    rdi,rax
366e73	test   dl,0x1
366e76	jne    0x366e98
366e78	mov    r8,QWORD PTR [rip+0x70081]        # 0x3d6f00
366e7f	or     edx,0x1
366e82	add    r8,0x38f9900
366e89	mov    DWORD PTR [rip+0x96f61],edx        # 0x3fddf0
366e8f	mov    QWORD PTR [rip+0x96f52],r8        # 0x3fdde8
366e96	jmp    0x366e9f
366e98	mov    r8,QWORD PTR [rip+0x96f49]        # 0x3fdde8
366e9f	test   dl,0x2
366ea2	jne    0x366ec3
366ea4	mov    rcx,QWORD PTR [rip+0x6efb5]        # 0x3d5e60
366eab	or     edx,0x2
366eae	mov    DWORD PTR [rip+0x96f3c],edx        # 0x3fddf0
366eb4	xor    r9d,r9d
366eb7	lea    rdx,[rip+0x96f42]        # 0x3fde00
366ebe	call   0x2cbd24
366ec3	mov    rcx,QWORD PTR [rip+0x6ef96]        # 0x3d5e60
366eca	lea    rdx,[rip+0x96f2f]        # 0x3fde00
366ed1	mov    BYTE PTR [rsp+0x28],sil
366ed6	mov    r9,rbp
366ed9	mov    r8,rbx
366edc	mov    QWORD PTR [rsp+0x20],rdi
366ee1	call   0x365ae0
366ee6	add    rsp,0x38
366eea	pop    rdi
366eeb	pop    rsi
366eec	pop    rbp
366eed	pop    rbx
366eee	ret
