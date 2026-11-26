366ccc	mov    QWORD PTR [rsp+0x8],rbx
366cd1	mov    QWORD PTR [rsp+0x10],rsi
366cd6	push   rdi
366cd7	sub    rsp,0x30
366cdb	mov    sil,r8b
366cde	mov    rbx,rcx
366ce1	call   0x2caf08
366ce6	test   al,al
366ce8	je     0x366d69
366cea	mov    rcx,rdx
366ced	call   0x2ce5dc
366cf2	mov    edx,DWORD PTR [rip+0x97008]        # 0x3fdd00
366cf8	mov    rdi,rax
366cfb	test   dl,0x1
366cfe	jne    0x366d20
366d00	mov    r8,QWORD PTR [rip+0x701f9]        # 0x3d6f00
366d07	or     edx,0x1
366d0a	add    r8,0x38ea530
366d11	mov    DWORD PTR [rip+0x96fe9],edx        # 0x3fdd00
366d17	mov    QWORD PTR [rip+0x96fda],r8        # 0x3fdcf8
366d1e	jmp    0x366d27
366d20	mov    r8,QWORD PTR [rip+0x96fd1]        # 0x3fdcf8
366d27	test   dl,0x2
366d2a	jne    0x366d4b
366d2c	mov    rcx,QWORD PTR [rip+0x6f12d]        # 0x3d5e60
366d33	or     edx,0x2
366d36	mov    DWORD PTR [rip+0x96fc4],edx        # 0x3fdd00
366d3c	xor    r9d,r9d
366d3f	lea    rdx,[rip+0x96fca]        # 0x3fdd10
366d46	call   0x2cbd24
366d4b	mov    rcx,QWORD PTR [rip+0x6f10e]        # 0x3d5e60
366d52	lea    rdx,[rip+0x96fb7]        # 0x3fdd10
366d59	mov    r9,rdi
366d5c	mov    BYTE PTR [rsp+0x20],sil
366d61	mov    r8,rbx
366d64	call   0x2d2000
366d69	mov    rbx,QWORD PTR [rsp+0x40]
366d6e	mov    rsi,QWORD PTR [rsp+0x48]
366d73	add    rsp,0x30
366d77	pop    rdi
366d78	ret
