2d5be4	rex push rbx
2d5be6	push   rsi
2d5be7	push   rdi
2d5be8	sub    rsp,0x30
2d5bec	mov    eax,DWORD PTR [rip+0x1010de]        # 0x3d6cd0
2d5bf2	mov    rsi,rcx
2d5bf5	test   al,0x1
2d5bf7	jne    0x2d5c80
2d5bfd	or     eax,0x1
2d5c00	lea    rdx,[rsp+0x68]
2d5c05	lea    rcx,[rsp+0x58]
2d5c0a	mov    DWORD PTR [rip+0x1010c0],eax        # 0x3d6cd0
2d5c10	call   0x2d53b0   ; STR "Exists"
2d5c15	mov    rcx,rax
2d5c18	call   0x2cdcf4
2d5c1d	lea    rdx,[rsp+0x20]
2d5c22	mov    rdi,rax
2d5c25	lea    rcx,[rsp+0x58]
2d5c2a	call   0x2d5264   ; STR "System.IO"
2d5c2f	mov    rcx,rax
2d5c32	call   0x2cdd44
2d5c37	lea    rdx,[rsp+0x60]
2d5c3c	mov    rbx,rax
2d5c3f	lea    rcx,[rsp+0x58]
2d5c44	call   0x2d5078   ; STR "File"
2d5c49	mov    rcx,rax
2d5c4c	call   0x2cdccc
2d5c51	mov    rcx,rax
2d5c54	mov    rdx,rbx
2d5c57	call   0x334224
2d5c5c	xor    r9d,r9d
2d5c5f	mov    rcx,rax
2d5c62	mov    rdx,rdi
2d5c65	lea    r8d,[r9+0x1]
2d5c69	call   0x334a90
2d5c6e	mov    r8,QWORD PTR [rax]
2d5c71	mov    eax,DWORD PTR [rip+0x101059]        # 0x3d6cd0
2d5c77	mov    QWORD PTR [rip+0x10104a],r8        # 0x3d6cc8
2d5c7e	jmp    0x2d5c87
2d5c80	mov    r8,QWORD PTR [rip+0x101041]        # 0x3d6cc8
2d5c87	test   al,0x2
2d5c89	jne    0x2d5caa
2d5c8b	mov    rcx,QWORD PTR [rip+0x1001ce]        # 0x3d5e60
2d5c92	lea    rdx,[rip+0x101047]        # 0x3d6ce0
2d5c99	or     eax,0x2
2d5c9c	xor    r9d,r9d
2d5c9f	mov    DWORD PTR [rip+0x10102b],eax        # 0x3d6cd0
2d5ca5	call   0x2cbd24
2d5caa	mov    rcx,rsi
2d5cad	call   0x2ce5dc
2d5cb2	mov    rcx,QWORD PTR [rip+0x1001a7]        # 0x3d5e60
2d5cb9	lea    rdx,[rip+0x101020]        # 0x3d6ce0
2d5cc0	mov    r8,rax
2d5cc3	call   0x2cb9fc
2d5cc8	test   al,al
2d5cca	setne  al
2d5ccd	add    rsp,0x30
2d5cd1	pop    rdi
2d5cd2	pop    rsi
2d5cd3	pop    rbx
2d5cd4	ret
