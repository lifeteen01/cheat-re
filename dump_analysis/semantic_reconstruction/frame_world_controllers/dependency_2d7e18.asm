2d7e18	rex push rbx
2d7e1a	push   rsi
2d7e1b	push   rdi
2d7e1c	sub    rsp,0x40
2d7e20	mov    rsi,rdx
2d7e23	lea    rdx,[rcx+0x14]
2d7e27	mov    rcx,rdx
2d7e2a	call   0x2caf08
2d7e2f	test   al,al
2d7e31	jne    0x2d7e57
2d7e33	lea    rdx,[rsp+0x60]
2d7e38	lea    rcx,[rsp+0x60]
2d7e3d	call   0x2cc730
2d7e42	mov    rcx,rax
2d7e45	call   0x2cdca4
2d7e4a	mov    rdx,rax
2d7e4d	mov    rcx,rsi
2d7e50	call   0x2cc2cc
2d7e55	jmp    0x2d7eaa
2d7e57	lea    rcx,[rsp+0x20]
2d7e5c	call   0x2d45c8
2d7e61	lea    rdx,[rsp+0x70]
2d7e66	lea    rcx,[rsp+0x20]
2d7e6b	call   0x2d8728
2d7e70	lea    rdx,[rsp+0x78]
2d7e75	lea    rcx,[rsp+0x20]
2d7e7a	mov    rbx,QWORD PTR [rax]
2d7e7d	call   0x2d7d40
2d7e82	lea    rcx,[rsp+0x60]
2d7e87	mov    rdi,rax
2d7e8a	call   0x2cb3a4
2d7e8f	mov    rdx,QWORD PTR [rdi]
2d7e92	mov    r9,rax
2d7e95	mov    r8,rbx
2d7e98	mov    rcx,rsi
2d7e9b	call   0x2cee44
2d7ea0	lea    rcx,[rsp+0x20]
2d7ea5	call   0x2d4a50
2d7eaa	mov    rax,rsi
2d7ead	add    rsp,0x40
2d7eb1	pop    rdi
2d7eb2	pop    rsi
2d7eb3	pop    rbx
2d7eb4	ret
