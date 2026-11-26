39bc88	sub    rsp,0x28
39bc8c	test   r8d,r8d
39bc8f	je     0x39bca1
39bc91	movsx  eax,BYTE PTR [rcx+0xdd]
39bc98	test   r8d,eax
39bc9b	je     0x39bd4c
39bca1	movzx  r8d,BYTE PTR [rcx+0xdd]
39bca9	xorps  xmm0,xmm0
39bcac	mov    eax,DWORD PTR [rcx+0xdc]
39bcb2	and    r8d,0xf1
39bcb9	movss  xmm2,DWORD PTR [rcx+0x30]
39bcbe	and    eax,0xffff00ff
39bcc3	movss  xmm3,DWORD PTR [rcx+0x34]
39bcc8	shl    r8d,0x8
39bccc	or     r8d,eax
39bccf	mov    DWORD PTR [rcx+0xdc],r8d
39bcd6	comiss xmm0,DWORD PTR [rdx]
39bcd9	setb   al
39bcdc	dec    al
39bcde	and    al,0x2
39bce0	mov    BYTE PTR [rcx+0xd0],al
39bce6	comiss xmm0,DWORD PTR [rdx+0x4]
39bcea	setb   al
39bced	dec    al
39bcef	and    al,0x2
39bcf1	mov    BYTE PTR [rcx+0xd1],al
39bcf7	comiss xmm0,DWORD PTR [rdx]
39bcfa	jb     0x39bd08
39bcfc	mov    BYTE PTR [rcx+0xd3],0x0
39bd03	movaps xmm1,xmm2
39bd06	jmp    0x39bd18
39bd08	cvttss2si eax,DWORD PTR [rdx]
39bd0c	movd   xmm1,eax
39bd10	cvtdq2ps xmm1,xmm1
39bd13	movss  DWORD PTR [rcx+0x30],xmm1
39bd18	comiss xmm0,DWORD PTR [rdx+0x4]
39bd1c	jb     0x39bd27
39bd1e	mov    BYTE PTR [rcx+0xd3],0x0
39bd25	jmp    0x39bd38
39bd27	cvttss2si eax,DWORD PTR [rdx+0x4]
39bd2c	movd   xmm0,eax
39bd30	cvtdq2ps xmm0,xmm0
39bd33	movss  DWORD PTR [rcx+0x34],xmm0
39bd38	ucomiss xmm2,xmm1
39bd3b	jp     0x39bd47
39bd3d	jne    0x39bd47
39bd3f	ucomiss xmm3,DWORD PTR [rcx+0x34]
39bd43	jp     0x39bd47
39bd45	je     0x39bd4c
39bd47	call   0x395108
39bd4c	add    rsp,0x28
39bd50	ret
