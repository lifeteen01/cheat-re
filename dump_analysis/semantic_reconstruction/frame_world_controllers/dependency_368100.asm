368100	mov    QWORD PTR [rsp+0x8],rbx
368105	push   rdi
368106	sub    rsp,0x50
36810a	mov    rdi,rdx
36810d	mov    r8,rcx
368110	call   0x2caf08
368115	test   al,al
368117	jne    0x368123
368119	mov    rcx,rdx
36811c	call   0x3c7bbc
368121	jmp    0x36816c
368123	lea    rdx,[rsp+0x3c]
368128	mov    rcx,r8
36812b	call   0x36920c
368130	movss  xmm3,DWORD PTR [rip+0xfffffffffff2511c]        # 0x28d254
368138	lea    rcx,[rsp+0x30]
36813d	xorps  xmm2,xmm2
368140	xorps  xmm1,xmm1
368143	mov    rbx,rax
368146	call   0x3c7ba8
36814b	lea    r8,[rsp+0x20]
368150	mov    rdx,rdi
368153	mov    ecx,DWORD PTR [rax+0x8]
368156	movsd  xmm0,QWORD PTR [rax]
36815a	mov    DWORD PTR [rsp+0x28],ecx
36815e	mov    rcx,rbx
368161	movsd  QWORD PTR [rsp+0x20],xmm0
368167	call   0x2ef834
36816c	mov    rbx,QWORD PTR [rsp+0x60]
368171	mov    rax,rdi
368174	add    rsp,0x50
368178	pop    rdi
368179	ret
