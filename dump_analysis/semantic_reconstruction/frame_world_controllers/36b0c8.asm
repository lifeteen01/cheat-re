36b0c8	mov    QWORD PTR [rsp+0x8],rbx
36b0cd	push   rdi
36b0ce	sub    rsp,0x70
36b0d2	mov    edx,DWORD PTR [rip+0x934f0]        # 0x3fe5c8
36b0d8	mov    rbx,r8
36b0db	movaps XMMWORD PTR [rsp+0x60],xmm6
36b0e0	movaps xmm6,xmm3
36b0e3	movaps XMMWORD PTR [rsp+0x50],xmm7
36b0e8	movaps xmm7,xmm1
36b0eb	mov    rdi,rcx
36b0ee	test   dl,0x1
36b0f1	jne    0x36b113
36b0f3	mov    r8,QWORD PTR [rip+0x6be06]        # 0x3d6f00
36b0fa	or     edx,0x1
36b0fd	add    r8,0x311d680
36b104	mov    DWORD PTR [rip+0x934be],edx        # 0x3fe5c8
36b10a	mov    QWORD PTR [rip+0x934af],r8        # 0x3fe5c0
36b111	jmp    0x36b11a
36b113	mov    r8,QWORD PTR [rip+0x934a6]        # 0x3fe5c0
36b11a	test   dl,0x2
36b11d	jne    0x36b13e
36b11f	mov    rcx,QWORD PTR [rip+0x6ad3a]        # 0x3d5e60
36b126	or     edx,0x2
36b129	mov    DWORD PTR [rip+0x93499],edx        # 0x3fe5c8
36b12f	xor    r9d,r9d
36b132	lea    rdx,[rip+0x93497]        # 0x3fe5d0
36b139	call   0x2cbd24
36b13e	mov    eax,DWORD PTR [rsp+0xa8]
36b145	lea    rdx,[rip+0x93484]        # 0x3fe5d0
36b14c	mov    rcx,QWORD PTR [rip+0x6ad0d]        # 0x3d5e60
36b153	movaps xmm3,xmm7
36b156	mov    DWORD PTR [rsp+0x40],0x0
36b15e	mov    r8,rdi
36b161	mov    DWORD PTR [rsp+0x38],eax
36b165	mov    eax,DWORD PTR [rsp+0xa0]
36b16c	mov    DWORD PTR [rsp+0x30],eax
36b170	movss  DWORD PTR [rsp+0x28],xmm6
36b176	mov    QWORD PTR [rsp+0x20],rbx
36b17b	call   0x3677bc
36b180	mov    rbx,QWORD PTR [rsp+0x80]
36b188	test   al,al
36b18a	movaps xmm6,XMMWORD PTR [rsp+0x60]
36b18f	movaps xmm7,XMMWORD PTR [rsp+0x50]
36b194	setne  al
36b197	add    rsp,0x70
36b19b	pop    rdi
36b19c	ret
