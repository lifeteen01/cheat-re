38cef0	mov    QWORD PTR [rsp+0x18],rbx
38cef5	push   rdi
38cef6	sub    rsp,0x20
38cefa	movsx  eax,WORD PTR [rdx+0x6]
38cefe	mov    rdi,rcx
38cf01	lea    rcx,[rsp+0x30]
38cf06	mov    rbx,rdx
38cf09	movd   xmm2,eax
38cf0d	movsx  eax,WORD PTR [rdx+0x4]
38cf11	cvtdq2ps xmm2,xmm2
38cf14	movd   xmm1,eax
38cf18	cvtdq2ps xmm1,xmm1
38cf1b	call   0x2cc340
38cf20	mov    rdx,rax
38cf23	lea    rcx,[rsp+0x38]
38cf28	call   0x39307c
38cf2d	movsd  xmm0,QWORD PTR [rax]
38cf31	movsd  QWORD PTR [rdi+0x20],xmm0
38cf36	cmp    WORD PTR [rbx+0x8],0x0
38cf3b	jle    0x38cf8e
38cf3d	cmp    WORD PTR [rbx+0xa],0x0
38cf42	jle    0x38cf8e
38cf44	movsx  eax,WORD PTR [rbx+0xa]
38cf48	lea    rcx,[rsp+0x30]
38cf4d	movd   xmm2,eax
38cf51	movsx  eax,WORD PTR [rbx+0x8]
38cf55	cvtdq2ps xmm2,xmm2
38cf58	movd   xmm1,eax
38cf5c	cvtdq2ps xmm1,xmm1
38cf5f	call   0x2cc340
38cf64	mov    rdx,rax
38cf67	lea    rcx,[rsp+0x38]
38cf6c	call   0x39307c
38cf71	movss  xmm0,DWORD PTR [rax]
38cf75	movss  xmm1,DWORD PTR [rax+0x4]
38cf7a	movss  DWORD PTR [rdi+0x30],xmm0
38cf7f	movss  DWORD PTR [rdi+0x34],xmm1
38cf84	movss  DWORD PTR [rdi+0x28],xmm0
38cf89	movss  DWORD PTR [rdi+0x2c],xmm1
38cf8e	mov    al,BYTE PTR [rbx+0xc]
38cf91	mov    rbx,QWORD PTR [rsp+0x40]
38cf96	mov    BYTE PTR [rdi+0xb9],al
38cf9c	add    rsp,0x20
38cfa0	pop    rdi
38cfa1	ret
