2d3dd4	mov    QWORD PTR [rsp+0x8],rbx
2d3dd9	mov    QWORD PTR [rsp+0x10],rsi
2d3dde	push   rdi
2d3ddf	sub    rsp,0x50
2d3de3	mov    rdi,rcx
2d3de6	mov    bl,r8b
2d3de9	mov    rcx,rdx
2d3dec	call   0x2cd7ec
2d3df1	mov    rcx,rax
2d3df4	call   0x2d6354
2d3df9	lea    rcx,[rsp+0x70]
2d3dfe	mov    rsi,rax
2d3e01	test   bl,bl
2d3e03	je     0x2d3e19
2d3e05	lea    rdx,[rsp+0x78]
2d3e0a	call   0x2d4fe0   ; STR "true"
2d3e0f	mov    rcx,rax
2d3e12	call   0x2cdccc
2d3e17	jmp    0x2d3e2b
2d3e19	lea    rdx,[rsp+0x20]
2d3e1e	call   0x2d51e4   ; STR "false"
2d3e23	mov    rcx,rax
2d3e26	call   0x2d84dc
2d3e2b	mov    rdx,rax
2d3e2e	lea    rcx,[rsp+0x28]
2d3e33	call   0x2cc2cc
2d3e38	lea    r8,[rsp+0x28]
2d3e3d	mov    edx,esi
2d3e3f	mov    rcx,rdi
2d3e42	call   0x2d9328
2d3e47	lea    rcx,[rsp+0x28]
2d3e4c	call   0x2cc4f4
2d3e51	mov    rbx,QWORD PTR [rsp+0x60]
2d3e56	mov    rsi,QWORD PTR [rsp+0x68]
2d3e5b	add    rsp,0x50
2d3e5f	pop    rdi
2d3e60	ret
