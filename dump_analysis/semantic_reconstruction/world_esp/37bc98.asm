37bc98	mov    rax,rsp
37bc9b	mov    QWORD PTR [rax+0x18],r8
37bc9f	push   rbp
37bca0	push   rbx
37bca1	push   rsi
37bca2	push   rdi
37bca3	push   r12
37bca5	push   r13
37bca7	push   r14
37bca9	push   r15
37bcab	lea    rbp,[rsp-0x78]
37bcb0	sub    rsp,0x178
37bcb7	movaps XMMWORD PTR [rax-0x58],xmm6
37bcbb	mov    rdi,rdx
37bcbe	movaps XMMWORD PTR [rax-0x68],xmm7
37bcc2	mov    rbx,rcx
37bcc5	movaps XMMWORD PTR [rax-0x78],xmm8
37bcca	movaps XMMWORD PTR [rax-0x88],xmm9
37bcd2	movaps XMMWORD PTR [rax-0x98],xmm11
37bcda	movaps XMMWORD PTR [rax-0xa8],xmm12
37bce2	movaps XMMWORD PTR [rax-0xb8],xmm13
37bcea	movaps XMMWORD PTR [rax-0xc8],xmm14
37bcf2	movaps XMMWORD PTR [rax-0xd8],xmm15
37bcfa	call   0x392198
37bcff	mov    rax,QWORD PTR [rip+0x89e22]        # 0x405b28
37bd06	lea    rdx,[rsp+0x48]
37bd0b	lea    rcx,[rbp+0xc0]
37bd12	mov    rsi,QWORD PTR [rax+0x3c28]
37bd19	movss  xmm11,DWORD PTR [rsi+0x14]
37bd1f	call   0x37b62c   ; STR "Indicator0"
37bd24	mov    rcx,rax
37bd27	call   0x37b6fc
37bd2c	mov    rdx,rax
37bd2f	mov    rcx,rdi
37bd32	call   0x2cef38
37bd37	test   al,al
37bd39	jne    0x37bd8a
37bd3b	lea    rdx,[rbp-0x30]
37bd3f	lea    rcx,[rbp+0xc0]
37bd46	call   0x37b648   ; STR "Indicator2"
37bd4b	mov    rcx,rax
37bd4e	call   0x37b6fc
37bd53	mov    rdx,rax
37bd56	mov    rcx,rdi
37bd59	call   0x2cef38
37bd5e	test   al,al
37bd60	jne    0x37bd8a
37bd62	lea    rdx,[rsp+0x70]
37bd67	lea    rcx,[rbp+0xc0]
37bd6e	call   0x37b664   ; STR "Indicator3"
37bd73	mov    rcx,rax
37bd76	call   0x37b6fc
37bd7b	mov    rdx,rax
37bd7e	mov    rcx,rdi
37bd81	call   0x2cef38
37bd86	test   al,al
37bd88	je     0x37bda7
37bd8a	cmp    DWORD PTR [rip+0x72fa7],0x2        # 0x3eed38
37bd91	jne    0x37bda7
37bd93	movss  xmm9,DWORD PTR [rip+0xfffffffffff11d80]        # 0x28db1c
37bd9c	mov    r14b,0x1
37bd9f	mov    r15d,0x4
37bda5	jmp    0x37bdb6
37bda7	movss  xmm9,DWORD PTR [rip+0xffffffffffecd120]        # 0x248ed0
37bdb0	xor    r14b,r14b
37bdb3	xor    r15d,r15d
37bdb6	mov    rax,QWORD PTR [rip+0x89d6b]        # 0x405b28
37bdbd	lea    r12,[rdi+0x30]
37bdc1	movaps xmm0,xmm9
37bdc5	mov    rcx,r12
37bdc8	divss  xmm0,xmm11
37bdcd	mov    QWORD PTR [rax+0x3c28],rsi
37bdd4	movss  DWORD PTR [rsi+0x64],xmm0
37bdd9	call   0x2cd7ec
37bdde	mov    rcx,QWORD PTR [rip+0x89d43]        # 0x405b28
37bde5	lea    rdx,[rbp+0xc8]
37bdec	movss  xmm3,DWORD PTR [rip+0xfffffffffff11d60]        # 0x28db54
37bdf4	xorps  xmm8,xmm8
37bdf8	mov    QWORD PTR [rsp+0x38],0x0
37be01	movaps xmm2,xmm9
37be05	mov    QWORD PTR [rsp+0x30],0x0
37be0e	mov    rcx,QWORD PTR [rcx+0x3c28]
37be15	mov    QWORD PTR [rsp+0x28],rax
37be1a	movss  DWORD PTR [rsp+0x20],xmm8
37be21	call   0x3a3874
37be26	movss  xmm12,DWORD PTR [rbx]
37be2b	lea    r8,[rbx+0x18]
37be2f	movss  xmm13,DWORD PTR [r8]
37be34	lea    rdx,[rbp+0xc0]
37be3b	movss  xmm14,DWORD PTR [rbx+0x4]
37be41	mov    rcx,rbx
37be44	movss  xmm15,DWORD PTR [rbx+0x1c]
37be4a	call   0x2efa04
37be4f	movss  xmm6,DWORD PTR [rip+0xfffffffffff172dd]        # 0x293134
37be57	lea    rdx,[rbp+0xd8]
37be5e	movaps xmm2,xmm6
37be61	mov    rcx,rax
37be64	call   0x2efa34
37be69	lea    r8,[rbx+0x10]
37be6d	lea    rcx,[rbx+0x8]
37be71	lea    rdx,[rbp+0xc0]
37be78	call   0x2efa04
37be7d	mov    rcx,rax
37be80	lea    rdx,[rsp+0x40]
37be85	movaps xmm2,xmm6
37be88	call   0x2efa34
37be8d	lea    rcx,[rbp-0x80]
37be91	call   0x2d4870
37be96	movsxd rbx,DWORD PTR [rdi+0x20]
37be9a	lea    rax,[rip+0xffffffffffc8415f]        # 0x0
37bea1	xorps  xmm1,xmm1
37bea4	lea    rcx,[rbp-0x78]
37bea8	mov    r13d,DWORD PTR [rax+rbx*4+0x3e5cc8]
37beb0	movd   xmm6,r13d
37beb5	cvtdq2ps xmm6,xmm6
37beb8	movaps xmm7,xmm6
37bebb	mulss  xmm7,xmm9
37bec0	movaps xmm2,xmm7
37bec3	call   0x2cc340
37bec8	movaps xmm2,xmm7
37becb	lea    rcx,[rbp-0x70]
37becf	xorps  xmm1,xmm1
37bed2	call   0x2cc340
37bed7	xorps  xmm9,XMMWORD PTR [rip+0xfffffffffff173c1]        # 0x2932a0
37bedf	lea    rcx,[rbp-0x68]
37bee3	mulss  xmm9,xmm6
37bee8	xorps  xmm1,xmm1
37beeb	movaps xmm2,xmm9
37beef	call   0x2cc340
37bef4	movaps xmm2,xmm7
37bef7	lea    rcx,[rbp-0x60]
37befb	xorps  xmm1,xmm1
37befe	call   0x2cc340
37bf03	mov    rcx,r12
37bf06	call   0x2d8694
37bf0b	test   al,al
37bf0d	jne    0x37bf21
37bf0f	lea    eax,[r13+0x1]
37bf13	lea    rcx,[rip+0xffffffffffc840e6]        # 0x0
37bf1a	mov    DWORD PTR [rcx+rbx*4+0x3e5cc8],eax
37bf21	lea    rcx,[rbp-0x58]
37bf25	call   0x2d4870
37bf2a	subss  xmm12,DWORD PTR [rip+0x71875]        # 0x3ed7a8
37bf33	movaps xmm2,xmm14
37bf37	lea    rcx,[rbp+0xc0]
37bf3e	subss  xmm12,DWORD PTR [rbp+0xc8]
37bf47	movaps xmm1,xmm12
37bf4b	call   0x2cc340
37bf50	mov    rdx,rax
37bf53	lea    r8,[rbp-0x78]
37bf57	lea    rcx,[rbp-0x50]
37bf5b	call   0x2ef9d8
37bf60	addss  xmm13,DWORD PTR [rip+0x7183f]        # 0x3ed7a8
37bf69	movaps xmm2,xmm15
37bf6d	lea    rcx,[rbp+0xc0]
37bf74	movaps xmm1,xmm13
37bf78	call   0x2cc340
37bf7d	mov    rdx,rax
37bf80	lea    r8,[rbp-0x70]
37bf84	lea    rcx,[rbp-0x48]
37bf88	call   0x2ef9d8
37bf8d	movss  xmm2,DWORD PTR [rbp+0xdc]
37bf95	lea    rcx,[rbp+0xc0]
37bf9c	movss  xmm0,DWORD PTR [rbp+0xc8]
37bfa4	subss  xmm2,DWORD PTR [rip+0x717fc]        # 0x3ed7a8
37bfac	movss  xmm1,DWORD PTR [rbp+0xd8]
37bfb4	movss  xmm7,DWORD PTR [rip+0xfffffffffff11294]        # 0x28d250
37bfbc	mulss  xmm0,xmm7
37bfc0	subss  xmm2,DWORD PTR [rbp+0xcc]
37bfc8	subss  xmm1,xmm0
37bfcc	call   0x2cc340
37bfd1	mov    rdx,rax
37bfd4	lea    r8,[rbp-0x68]
37bfd8	lea    rcx,[rbp-0x40]
37bfdc	call   0x2ef9d8
37bfe1	movss  xmm0,DWORD PTR [rbp+0xc8]
37bfe9	lea    rcx,[rbp+0xc0]
37bff0	movss  xmm2,DWORD PTR [rsp+0x44]
37bff6	movss  xmm1,DWORD PTR [rsp+0x40]
37bffc	addss  xmm2,DWORD PTR [rip+0x717a4]        # 0x3ed7a8
37c004	mulss  xmm0,xmm7
37c008	subss  xmm1,xmm0
37c00c	call   0x2cc340
37c011	mov    rdx,rax
37c014	lea    r8,[rbp-0x60]
37c018	lea    rcx,[rbp-0x38]
37c01c	call   0x2ef9d8
37c021	movsxd rax,DWORD PTR [rdi+0x20]
37c025	lea    rbx,[rbp-0x58]
37c029	lea    r8,[rbp+0xc8]
37c030	lea    rcx,[rbp+0xc0]
37c037	lea    rbx,[rbx+rax*8]
37c03b	mov    rdx,rbx
37c03e	call   0x2ef9d8
37c043	mov    r8,rax
37c046	lea    rcx,[rsp+0x58]
37c04b	mov    rdx,rbx
37c04e	call   0x2db388
37c053	call   0x35d31c
37c058	lea    rdx,[rsp+0x70]
37c05d	mov    r13,rax
37c060	lea    rcx,[rbp+0xc0]
37c067	call   0x37b680   ; STR "HeldEntity"
37c06c	mov    rcx,rax
37c06f	call   0x37b6fc
37c074	mov    rdx,rax
37c077	mov    rcx,rdi
37c07a	call   0x2cef38
37c07f	test   al,al
37c081	je     0x37c1dc
37c087	mov    ebx,DWORD PTR [rdi+0x64]
37c08a	test   ebx,ebx
37c08c	je     0x37c1dc
37c092	mov    rcx,r12
37c095	call   0x2d8694
37c09a	xor    edx,edx
37c09c	test   al,al
37c09e	jne    0x37c1dc
37c0a4	cmp    BYTE PTR [rip+0x6b5fe],dl        # 0x3e76a8
37c0aa	je     0x37c1dc
37c0b0	cmp    BYTE PTR [rip+0x6b642],dl        # 0x3e76f8
37c0b6	je     0x37c1dc
37c0bc	lea    ecx,[rdx+0x7]
37c0bf	lea    r8,[rip+0xffffffffffc83f3a]        # 0x0
37c0c6	mov    eax,ebx
37c0c8	shr    ebx,0x4
37c0cb	and    eax,0xf
37c0ce	mov    al,BYTE PTR [r8+rax*1+0x2a92c0]
37c0d6	mov    BYTE PTR [rsp+rcx*1+0x48],al
37c0da	dec    rcx
37c0dd	cmp    rcx,0xffffffffffffffff
37c0e1	jne    0x37c0c6
37c0e3	mov    ecx,DWORD PTR [rip+0x80c8f]        # 0x3fcd78
37c0e9	movss  xmm0,DWORD PTR [rip+0xfffffffffff170cb]        # 0x2931bc
37c0f1	mov    BYTE PTR [rsp+0x50],dl
37c0f5	test   ecx,ecx
37c0f7	je     0x37c13f
37c0f9	sub    ecx,0x1
37c0fc	je     0x37c13a
37c0fe	sub    ecx,0x1
37c101	je     0x37c130
37c103	sub    ecx,0x1
37c106	je     0x37c126
37c108	sub    ecx,0x1
37c10b	je     0x37c11c
37c10d	cmp    ecx,0x1
37c110	jne    0x37c13a
37c112	movss  xmm6,DWORD PTR [rip+0xfffffffffff170b6]        # 0x2931d0
37c11a	jmp    0x37c147
37c11c	movss  xmm6,DWORD PTR [rip+0xfffffffffff170a4]        # 0x2931c8
37c124	jmp    0x37c147
37c126	movss  xmm6,DWORD PTR [rip+0xfffffffffff119f2]        # 0x28db20
37c12e	jmp    0x37c147
37c130	movss  xmm6,DWORD PTR [rip+0xfffffffffff17088]        # 0x2931c0
37c138	jmp    0x37c147
37c13a	movaps xmm6,xmm0
37c13d	jmp    0x37c147
37c13f	movss  xmm6,DWORD PTR [rip+0xfffffffffff17069]        # 0x2931b0
37c147	mov    eax,DWORD PTR [rip+0x72beb]        # 0x3eed38
37c14d	test   eax,eax
37c14f	je     0x37c16f
37c151	test   r14b,r14b
37c154	jne    0x37c16f
37c156	cmp    eax,0x2
37c159	jne    0x37c165
37c15b	movss  xmm6,DWORD PTR [rip+0xfffffffffff17041]        # 0x2931a4
37c163	jmp    0x37c177
37c165	cmp    eax,0x3
37c168	jne    0x37c177
37c16a	movaps xmm6,xmm0
37c16d	jmp    0x37c177
37c16f	movss  xmm6,DWORD PTR [rip+0xfffffffffff119a5]        # 0x28db1c
37c177	mulss  xmm6,DWORD PTR [rip+0x80889]        # 0x3fca08
37c17f	lea    rdx,[rbp+0xc0]
37c186	lea    rcx,[rsp+0x58]
37c18b	call   0x3788f4
37c190	cmp    DWORD PTR [rdi+0x20],0x1
37c194	jne    0x37c1a9
37c196	movss  xmm0,DWORD PTR [rsp+0x60]
37c19c	movaps xmm1,xmm6
37c19f	mulss  xmm1,xmm7
37c1a3	subss  xmm0,xmm1
37c1a7	jmp    0x37c1bc
37c1a9	cmp    DWORD PTR [rdi+0x20],0x2
37c1ad	jne    0x37c1c4
37c1af	movaps xmm0,xmm6
37c1b2	mulss  xmm0,xmm7
37c1b6	addss  xmm0,DWORD PTR [rsp+0x58]
37c1bc	movss  DWORD PTR [rbp+0xc0],xmm0
37c1c4	movaps xmm2,xmm6
37c1c7	lea    rdx,[rbp+0xc0]
37c1ce	lea    rcx,[rsp+0x48]
37c1d3	call   0x2cc8d0
37c1d8	test   al,al
37c1da	jne    0x37c20f
37c1dc	mov    rax,QWORD PTR [rbp+0xd0]
37c1e3	lea    r9,[rsp+0x58]
37c1e8	mov    rdx,QWORD PTR [r13+0x10]
37c1ec	mov    r8,r12
37c1ef	mov    DWORD PTR [rsp+0x28],r15d
37c1f4	mov    rcx,r13
37c1f7	movups xmm0,XMMWORD PTR [rax]
37c1fa	lea    rax,[rsp+0x70]
37c1ff	mov    QWORD PTR [rsp+0x20],rax
37c204	movdqu XMMWORD PTR [rsp+0x70],xmm0
37c20a	call   0x361bcc
37c20f	movss  xmm0,DWORD PTR [rsi+0x14]
37c214	mov    rcx,rdi
37c217	mov    rax,QWORD PTR [rip+0x8990a]        # 0x405b28
37c21e	divss  xmm0,xmm11
37c223	mov    QWORD PTR [rax+0x3c28],rsi
37c22a	movss  DWORD PTR [rsi+0x64],xmm0
37c22f	call   0x2db624
37c234	lea    r11,[rsp+0x178]
37c23c	movaps xmm6,XMMWORD PTR [r11-0x18]
37c241	movaps xmm7,XMMWORD PTR [r11-0x28]
37c246	movaps xmm8,XMMWORD PTR [r11-0x38]
37c24b	movaps xmm9,XMMWORD PTR [r11-0x48]
37c250	movaps xmm11,XMMWORD PTR [r11-0x58]
37c255	movaps xmm12,XMMWORD PTR [r11-0x68]
37c25a	movaps xmm13,XMMWORD PTR [r11-0x78]
37c25f	movaps xmm14,XMMWORD PTR [r11-0x88]
37c267	movaps xmm15,XMMWORD PTR [r11-0x98]
37c26f	mov    rsp,r11
37c272	pop    r15
37c274	pop    r14
37c276	pop    r13
37c278	pop    r12
37c27a	pop    rdi
37c27b	pop    rsi
37c27c	pop    rbx
37c27d	pop    rbp
37c27e	ret
