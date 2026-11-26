38cd28	rex push rbx
38cd2a	sub    rsp,0x60
38cd2e	cmp    BYTE PTR [rcx+0x37b1],0x0
38cd35	movaps XMMWORD PTR [rsp+0x50],xmm6
38cd3a	movaps xmm6,xmm2
38cd3d	movaps XMMWORD PTR [rsp+0x40],xmm7
38cd42	movaps xmm7,xmm1
38cd45	je     0x38cdb2
38cd47	xorps  xmm0,xmm0
38cd4a	ucomiss xmm7,xmm0
38cd4d	jp     0x38cd58
38cd4f	jne    0x38cd58
38cd51	ucomiss xmm6,xmm0
38cd54	jp     0x38cd58
38cd56	je     0x38cdb2
38cd58	mov    rbx,QWORD PTR [rcx+0xdf8]
38cd5f	lea    rcx,[rsp+0x20]
38cd64	call   0x38afa8
38cd69	mov    eax,DWORD PTR [rbx+0x3ea4]
38cd6f	lea    rcx,[rbx+0x3e80]
38cd76	mov    DWORD PTR [rsp+0x28],eax
38cd7a	lea    rdx,[rsp+0x20]
38cd7f	inc    eax
38cd81	movss  DWORD PTR [rsp+0x2c],xmm7
38cd87	mov    DWORD PTR [rbx+0x3ea4],eax
38cd8d	mov    eax,DWORD PTR [rbx+0x3ea0]
38cd93	mov    DWORD PTR [rsp+0x34],eax
38cd97	movss  DWORD PTR [rsp+0x30],xmm6
38cd9d	mov    DWORD PTR [rsp+0x20],0x2
38cda5	mov    DWORD PTR [rsp+0x24],0x1
38cdad	call   0x39efe0
38cdb2	movaps xmm6,XMMWORD PTR [rsp+0x50]
38cdb7	movaps xmm7,XMMWORD PTR [rsp+0x40]
38cdbc	add    rsp,0x60
38cdc0	pop    rbx
38cdc1	ret
