3bde30	mov    rax,rsp
3bde33	mov    QWORD PTR [rax+0x8],rbx
3bde37	push   rbp
3bde38	push   rsi
3bde39	push   rdi
3bde3a	push   r14
3bde3c	push   r15
3bde3e	lea    rbp,[rax-0x5f]
3bde42	sub    rsp,0xa0
3bde49	mov    rsi,QWORD PTR [rip+0x47cd8]        # 0x405b28
3bde50	mov    rdi,rdx
3bde53	movaps XMMWORD PTR [rax-0x38],xmm6
3bde57	mov    r14d,ecx
3bde5a	movaps XMMWORD PTR [rax-0x48],xmm7
3bde5e	lea    rcx,[rbp+0x77]
3bde62	movss  xmm7,DWORD PTR [rip+0xffffffffffed52ca]        # 0x293134
3bde6a	mov    r15,QWORD PTR [rsi+0x3f08]
3bde71	lea    rdx,[rsi+0x380c]
3bde78	movaps xmm2,xmm7
3bde7b	movaps XMMWORD PTR [rax-0x58],xmm8
3bde80	call   0x38bc08
3bde85	movss  xmm1,DWORD PTR [rsi+0x3c30]
3bde8d	lea    rcx,[rbp+0x7f]
3bde91	movaps xmm2,xmm1
3bde94	mov    rbx,rax
3bde97	call   0x2cc340
3bde9c	mov    r8,rax
3bde9f	lea    rcx,[rbp-0x31]
3bdea3	mov    rdx,rdi
3bdea6	call   0x2ef9d8
3bdeab	mov    rdx,rax
3bdeae	lea    rcx,[rbp-0x29]
3bdeb2	mov    r8,rbx
3bdeb5	call   0x2ef9d8
3bdeba	mov    r8,rax
3bdebd	lea    rcx,[rbp-0x11]
3bdec1	mov    rdx,rdi
3bdec4	call   0x2db388
3bdec9	movups xmm0,XMMWORD PTR [rbp-0x11]
3bdecd	lea    rcx,[r15+0x1e8]
3bded4	movups XMMWORD PTR [rbp-0x21],xmm0
3bded8	call   0x3bfebc
3bdedd	lea    rcx,[rbp-0x11]
3bdee1	movaps xmm6,xmm0
3bdee4	call   0x3bfebc
3bdee9	movss  xmm1,DWORD PTR [rip+0xffffffffffecfc0b]        # 0x28dafc
3bdef1	divss  xmm6,xmm0
3bdef5	comiss xmm1,xmm6
3bdef8	jbe    0x3bdf33
3bdefa	lea    rdx,[rbp+0x77]
3bdefe	lea    rcx,[rbp-0x21]
3bdf02	call   0x378940
3bdf07	movss  xmm2,DWORD PTR [rip+0xffffffffffeefa99]        # 0x2ad9a8
3bdf0f	lea    rcx,[rbp+0x7f]
3bdf13	mov    rdx,rax
3bdf16	call   0x38bc08
3bdf1b	mov    rdx,rax
3bdf1e	lea    rcx,[rbp-0x29]
3bdf22	call   0x39307c
3bdf27	mov    rdx,rax
3bdf2a	lea    rcx,[rbp-0x21]
3bdf2e	call   0x3911cc
3bdf33	xor    r9d,r9d
3bdf36	lea    rcx,[rbp-0x21]
3bdf3a	xor    r8d,r8d
3bdf3d	mov    edx,r14d
3bdf40	call   0x3948dc
3bdf45	xor    edi,edi
3bdf47	lea    r9,[rbp+0x77]
3bdf4b	lea    r8,[rbp+0x7f]
3bdf4f	mov    DWORD PTR [rsp+0x20],edi
3bdf53	mov    edx,r14d
3bdf56	lea    rcx,[rbp-0x21]
3bdf5a	mov    bl,al
3bdf5c	call   0x3bc7e0
3bdf61	mov    r14b,al
3bdf64	test   bl,bl
3bdf66	je     0x3be0eb
3bdf6c	mov    al,BYTE PTR [rbp+0x77]
3bdf6f	movss  xmm8,DWORD PTR [rip+0xffffffffffecf2dc]        # 0x28d254
3bdf78	neg    al
3bdf7a	movaps xmm1,xmm8
3bdf7e	sbb    ecx,ecx
3bdf80	neg    ecx
3bdf82	add    ecx,0x17
3bdf85	call   0x392298
3bdf8a	lea    rdx,[rbp-0x39]
3bdf8e	mov    ebx,eax
3bdf90	lea    rcx,[rbp-0x11]
3bdf94	call   0x3788f4
3bdf99	movss  xmm6,DWORD PTR [rip+0xffffffffffecf2af]        # 0x28d250
3bdfa1	cmp    BYTE PTR [rbp+0x7f],dil
3bdfa5	je     0x3bdfda
3bdfa7	movss  xmm1,DWORD PTR [rsi+0x3c30]
3bdfaf	movaps xmm0,xmm7
3bdfb2	mulss  xmm1,xmm6
3bdfb6	addss  xmm1,xmm8
3bdfbb	call   0x38a3f4
3bdfc0	mov    rcx,QWORD PTR [r15+0x298]
3bdfc7	lea    rdx,[rbp-0x39]
3bdfcb	movaps xmm2,xmm0
3bdfce	mov    DWORD PTR [rsp+0x20],edi
3bdfd2	mov    r9d,ebx
3bdfd5	call   0x39f874
3bdfda	movss  xmm7,DWORD PTR [rsi+0x3c30]
3bdfe2	movaps xmm1,xmm8
3bdfe6	mulss  xmm7,xmm6
3bdfea	mov    ecx,0x1
3bdfef	mulss  xmm7,DWORD PTR [rip+0xffffffffffeef991]        # 0x2ad988
3bdff7	subss  xmm7,xmm8
3bdffc	call   0x392298
3be001	movaps xmm2,xmm6
3be004	lea    rcx,[rbp+0x77]
3be008	movaps xmm1,xmm6
3be00b	mov    esi,eax
3be00d	call   0x2cc340
3be012	mov    rdx,rax
3be015	lea    rcx,[rbp-0x39]
3be019	call   0x38cc68
3be01e	mov    rdi,QWORD PTR [r15+0x298]
3be025	lea    rcx,[rbp+0x77]
3be029	movaps xmm6,xmm7
3be02c	xorps  xmm6,XMMWORD PTR [rip+0xffffffffffed526d]        # 0x2932a0
3be033	movaps xmm2,xmm6
3be036	movaps xmm1,xmm6
3be039	call   0x2cc340
3be03e	mov    r8,rax
3be041	lea    rdx,[rbp-0x39]
3be045	lea    rcx,[rbp+0x7f]
3be049	call   0x2ef9d8
3be04e	movaps xmm2,xmm7
3be051	lea    rcx,[rbp-0x29]
3be055	movaps xmm1,xmm7
3be058	mov    rbx,rax
3be05b	call   0x2cc340
3be060	mov    r8,rax
3be063	lea    rdx,[rbp-0x39]
3be067	lea    rcx,[rbp-0x31]
3be06b	call   0x2ef9d8
3be070	mov    rdx,rax
3be073	movss  DWORD PTR [rsp+0x20],xmm8
3be07a	mov    r9d,esi
3be07d	mov    r8,rbx
3be080	mov    rcx,rdi
3be083	call   0x3a01f4
3be088	mov    rdi,QWORD PTR [r15+0x298]
3be08f	lea    rcx,[rbp+0x77]
3be093	movaps xmm2,xmm7
3be096	movaps xmm1,xmm6
3be099	call   0x2cc340
3be09e	mov    r8,rax
3be0a1	lea    rdx,[rbp-0x39]
3be0a5	lea    rcx,[rbp+0x7f]
3be0a9	call   0x2ef9d8
3be0ae	movaps xmm2,xmm6
3be0b1	lea    rcx,[rbp-0x29]
3be0b5	movaps xmm1,xmm7
3be0b8	mov    rbx,rax
3be0bb	call   0x2cc340
3be0c0	mov    r8,rax
3be0c3	lea    rdx,[rbp-0x39]
3be0c7	lea    rcx,[rbp-0x31]
3be0cb	call   0x2ef9d8
3be0d0	mov    rdx,rax
3be0d3	movss  DWORD PTR [rsp+0x20],xmm8
3be0da	mov    r9d,esi
3be0dd	mov    r8,rbx
3be0e0	mov    rcx,rdi
3be0e3	call   0x3a01f4
3be0e8	mov    al,r14b
3be0eb	lea    r11,[rsp+0xa0]
3be0f3	mov    rbx,QWORD PTR [r11+0x30]
3be0f7	movaps xmm6,XMMWORD PTR [r11-0x10]
3be0fc	movaps xmm7,XMMWORD PTR [r11-0x20]
3be101	movaps xmm8,XMMWORD PTR [r11-0x30]
3be106	mov    rsp,r11
3be109	pop    r15
3be10b	pop    r14
3be10d	pop    rdi
3be10e	pop    rsi
3be10f	pop    rbp
3be110	ret
