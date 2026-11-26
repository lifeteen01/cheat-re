393cbc	mov    QWORD PTR [rsp+0x18],rbx
393cc1	mov    QWORD PTR [rsp+0x20],rsi
393cc6	push   rdi
393cc7	sub    rsp,0x20
393ccb	mov    rsi,rdx
393cce	mov    rdi,rcx
393cd1	call   0x392868
393cd6	movss  xmm1,DWORD PTR [rip+0xffffffffffef9e52]        # 0x28db30
393cde	lea    rcx,[rsp+0x30]
393ce3	movaps xmm2,xmm1
393ce6	mov    rbx,rax
393ce9	call   0x2cc340
393cee	mov    r8,rax
393cf1	lea    rdx,[rbx+0x4]
393cf5	lea    rcx,[rsp+0x38]
393cfa	call   0x2ef9d8
393cff	movsd  xmm0,QWORD PTR [rax]
393d03	movsd  QWORD PTR [rdi+0x20],xmm0
393d08	mov    WORD PTR [rdi+0xdd],0xf0f
393d11	mov    BYTE PTR [rdi+0xdc],0xf
393d18	test   rsi,rsi
393d1b	je     0x393d37
393d1d	xor    r8d,r8d
393d20	mov    rcx,rdi
393d23	lea    edx,[r8+0x4]
393d27	call   0x39baa8
393d2c	mov    rdx,rsi
393d2f	mov    rcx,rdi
393d32	call   0x38cef0
393d37	test   BYTE PTR [rdi+0x14],0x40
393d3b	movss  xmm0,DWORD PTR [rdi+0x20]
393d40	movss  xmm1,DWORD PTR [rdi+0x24]
393d45	movss  DWORD PTR [rdi+0x120],xmm0
393d4d	movss  DWORD PTR [rdi+0x124],xmm1
393d55	movss  DWORD PTR [rdi+0x118],xmm0
393d5d	movss  DWORD PTR [rdi+0x11c],xmm1
393d65	movss  DWORD PTR [rdi+0x110],xmm0
393d6d	movss  DWORD PTR [rdi+0x114],xmm1
393d75	je     0x393d84
393d77	mov    WORD PTR [rdi+0xd0],0x202
393d80	xor    al,al
393d82	jmp    0x393db5
393d84	xorps  xmm0,xmm0
393d87	comiss xmm0,DWORD PTR [rdi+0x28]
393d8b	jb     0x393d94
393d8d	mov    BYTE PTR [rdi+0xd0],0x2
393d94	comiss xmm0,DWORD PTR [rdi+0x2c]
393d98	jb     0x393da1
393d9a	mov    BYTE PTR [rdi+0xd1],0x2
393da1	cmp    BYTE PTR [rdi+0xd0],0x0
393da8	jg     0x393db3
393daa	cmp    BYTE PTR [rdi+0xd1],0x0
393db1	jle    0x393d80
393db3	mov    al,0x1
393db5	mov    BYTE PTR [rdi+0xd3],al
393dbb	mov    rbx,QWORD PTR [rsp+0x40]
393dc0	mov    rsi,QWORD PTR [rsp+0x48]
393dc5	add    rsp,0x20
393dc9	pop    rdi
393dca	ret
