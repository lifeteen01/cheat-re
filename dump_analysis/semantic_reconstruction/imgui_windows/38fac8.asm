38fac8	sub    rsp,0x28
38facc	xor    eax,eax
38face	cmp    BYTE PTR [rcx+0xb9],al
38fad4	je     0x38fae6
38fad6	cmp    BYTE PTR [rcx+0xd0],al
38fadc	jg     0x38fae6
38fade	cmp    BYTE PTR [rcx+0xd1],al
38fae4	jle    0x38fafe
38fae6	cmp    BYTE PTR [rcx+0xbd],al
38faec	je     0x38fb16
38faee	cmp    BYTE PTR [rcx+0xd9],al
38faf4	jne    0x38fb16
38faf6	cmp    BYTE PTR [rcx+0xd8],al
38fafc	jle    0x38fb16
38fafe	movsd  xmm0,QWORD PTR [rcx+0x38]
38fb03	movsd  QWORD PTR [rdx],xmm0
38fb07	movsd  xmm1,QWORD PTR [rcx+0x40]
38fb0c	movsd  QWORD PTR [r8],xmm1
38fb11	jmp    0x38fbe3
38fb16	movss  xmm0,DWORD PTR [rcx+0x48]
38fb1b	xorps  xmm2,xmm2
38fb1e	ucomiss xmm0,xmm2
38fb21	jp     0x38fb40
38fb23	jne    0x38fb40
38fb25	movss  xmm0,DWORD PTR [rcx+0x118]
38fb2d	subss  xmm0,DWORD PTR [rcx+0x110]
38fb35	cvttss2si eax,xmm0
38fb39	movd   xmm0,eax
38fb3d	cvtdq2ps xmm0,xmm0
38fb40	movss  DWORD PTR [rdx],xmm0
38fb44	movss  xmm1,DWORD PTR [rcx+0x4c]
38fb49	ucomiss xmm1,xmm2
38fb4c	jp     0x38fb6b
38fb4e	jne    0x38fb6b
38fb50	movss  xmm0,DWORD PTR [rcx+0x11c]
38fb58	subss  xmm0,DWORD PTR [rcx+0x114]
38fb60	cvttss2si eax,xmm0
38fb64	movd   xmm1,eax
38fb68	cvtdq2ps xmm1,xmm1
38fb6b	movss  DWORD PTR [rdx+0x4],xmm1
38fb70	movss  xmm0,DWORD PTR [rcx+0x48]
38fb75	ucomiss xmm0,xmm2
38fb78	jp     0x38fba4
38fb7a	jne    0x38fba4
38fb7c	movss  xmm1,DWORD PTR [rcx+0x120]
38fb84	movss  xmm0,DWORD PTR [rcx+0x118]
38fb8c	call   0x38a3f4
38fb91	subss  xmm0,DWORD PTR [rcx+0x110]
38fb99	cvttss2si eax,xmm0
38fb9d	movd   xmm0,eax
38fba1	cvtdq2ps xmm0,xmm0
38fba4	movss  DWORD PTR [r8],xmm0
38fba9	movss  xmm0,DWORD PTR [rcx+0x4c]
38fbae	ucomiss xmm0,xmm2
38fbb1	jp     0x38fbdd
38fbb3	jne    0x38fbdd
38fbb5	movss  xmm1,DWORD PTR [rcx+0x124]
38fbbd	movss  xmm0,DWORD PTR [rcx+0x11c]
38fbc5	call   0x38a3f4
38fbca	subss  xmm0,DWORD PTR [rcx+0x114]
38fbd2	cvttss2si eax,xmm0
38fbd6	movd   xmm0,eax
38fbda	cvtdq2ps xmm0,xmm0
38fbdd	movss  DWORD PTR [r8+0x4],xmm0
38fbe3	add    rsp,0x28
38fbe7	ret
