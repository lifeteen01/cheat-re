368be8	rex push rbx
368bea	sub    rsp,0x20
368bee	mov    rbx,rdx
368bf1	mov    rdx,rcx
368bf4	call   0x2caf08
368bf9	test   al,al
368bfb	je     0x368c4f
368bfd	cmp    r8d,0xffffffff
368c01	je     0x368c4f
368c03	mov    rdx,QWORD PTR [rdx+0x1d0]
368c0a	mov    rcx,rdx
368c0d	call   0x2caf08
368c12	test   al,al
368c14	je     0x368c4f
368c16	mov    r9,QWORD PTR [rdx+0x50]
368c1a	mov    rcx,r9
368c1d	call   0x2caf08
368c22	test   al,al
368c24	je     0x368c4f
368c26	lea    eax,[r8*8+0x0]
368c2e	movsxd rcx,eax
368c31	mov    r8,QWORD PTR [rcx+r9*1+0x20]
368c36	mov    rcx,r8
368c39	call   0x2caf08
368c3e	test   al,al
368c40	je     0x368c4f
368c42	mov    rdx,rbx
368c45	mov    rcx,r8
368c48	call   0x3747d4
368c4d	jmp    0x368c57
368c4f	mov    rcx,rbx
368c52	call   0x3c7bbc
368c57	mov    rax,rbx
368c5a	add    rsp,0x20
368c5e	pop    rbx
368c5f	ret
