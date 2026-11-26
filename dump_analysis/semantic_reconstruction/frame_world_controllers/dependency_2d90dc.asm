2d90dc	mov    QWORD PTR [rsp+0x18],rbx
2d90e1	mov    QWORD PTR [rsp+0x20],rsi
2d90e6	push   rdi
2d90e7	sub    rsp,0x40
2d90eb	lea    rsi,[rcx+0x20]
2d90ef	mov    rdi,rcx
2d90f2	mov    rcx,rsi
2d90f5	call   0x2d7f74
2d90fa	lea    rbx,[rdi+0x40]
2d90fe	mov    rcx,rbx
2d9101	call   0x2d93bc
2d9106	mov    rcx,rsi
2d9109	lea    rdx,[rax+rax*4]
2d910d	shl    rdx,0x2
2d9111	call   0x2d92ec
2d9116	lea    rdx,[rsp+0x50]
2d911b	mov    rcx,rbx
2d911e	call   0x2d792c
2d9123	lea    rdx,[rsp+0x58]
2d9128	mov    rcx,rbx
2d912b	call   0x2d796c
2d9130	jmp    0x2d9199
2d9132	lea    rcx,[rsp+0x50]
2d9137	call   0x2d4dc0
2d913c	mov    rcx,rax
2d913f	mov    rbx,rax
2d9142	call   0x2cb3a4
2d9147	lea    rcx,[rsp+0x20]
2d914c	mov    edx,DWORD PTR [rax]
2d914e	call   0x2d9528
2d9153	mov    rdx,rax
2d9156	mov    rcx,rsi
2d9159	call   0x2d55e4
2d915e	lea    rcx,[rsp+0x20]
2d9163	call   0x2cc4f4
2d9168	mov    dl,0x3d
2d916a	mov    rcx,rsi
2d916d	call   0x2d55ec
2d9172	mov    rcx,rbx
2d9175	call   0x2d2c3c
2d917a	mov    rdx,rax
2d917d	mov    rcx,rsi
2d9180	call   0x2d55e4
2d9185	mov    dl,0xa
2d9187	mov    rcx,rsi
2d918a	call   0x2d55ec
2d918f	lea    rcx,[rsp+0x50]
2d9194	call   0x2d4e00
2d9199	lea    rdx,[rsp+0x58]
2d919e	lea    rcx,[rsp+0x50]
2d91a3	call   0x2cc534
2d91a8	test   al,al
2d91aa	je     0x2d9132
2d91ac	mov    rbx,QWORD PTR [rsp+0x60]
2d91b1	mov    rsi,QWORD PTR [rsp+0x68]
2d91b6	mov    BYTE PTR [rdi+0x84],0x0
2d91bd	add    rsp,0x40
2d91c1	pop    rdi
2d91c2	ret
