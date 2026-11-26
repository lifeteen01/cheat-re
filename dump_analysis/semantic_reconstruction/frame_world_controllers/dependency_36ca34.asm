36ca34	rex push rbx
36ca36	sub    rsp,0x20
36ca3a	mov    rbx,rdx
36ca3d	mov    r8,rcx
36ca40	call   0x2caf08
36ca45	test   al,al
36ca47	jne    0x36ca53
36ca49	mov    rcx,rdx
36ca4c	call   0x3c7bbc
36ca51	jmp    0x36ca9d
36ca53	mov    edx,0x10
36ca58	mov    rcx,r8
36ca5b	call   0x36c480
36ca60	mov    r8,QWORD PTR [rax]
36ca63	mov    rcx,r8
36ca66	call   0x2caf08
36ca6b	test   al,al
36ca6d	jne    0x36ca82
36ca6f	xorps  xmm3,xmm3
36ca72	xorps  xmm2,xmm2
36ca75	xorps  xmm1,xmm1
36ca78	mov    rcx,rbx
36ca7b	call   0x3c7ba8
36ca80	jmp    0x36ca9d
36ca82	mov    edx,0x444
36ca87	mov    rcx,r8
36ca8a	call   0x36c480
36ca8f	movsd  xmm0,QWORD PTR [rax]
36ca93	movsd  QWORD PTR [rbx],xmm0
36ca97	mov    eax,DWORD PTR [rax+0x8]
36ca9a	mov    DWORD PTR [rbx+0x8],eax
36ca9d	mov    rax,rbx
36caa0	add    rsp,0x20
36caa4	pop    rbx
36caa5	ret
