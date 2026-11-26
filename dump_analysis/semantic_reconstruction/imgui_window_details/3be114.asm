3be114	mov    QWORD PTR [rsp+0x8],rbx
3be119	push   rbp
3be11a	push   rsi
3be11b	push   rdi
3be11c	push   r12
3be11e	push   r13
3be120	push   r14
3be122	push   r15
3be124	mov    rbp,rsp
3be127	sub    rsp,0x70
3be12b	mov    r13,QWORD PTR [rip+0x479f6]        # 0x405b28
3be132	mov    rdi,rdx
3be135	movss  xmm2,DWORD PTR [rip+0xffffffffffed4ff7]        # 0x293134
3be13d	mov    esi,ecx
3be13f	movaps XMMWORD PTR [rsp+0x60],xmm6
3be144	lea    rcx,[rbp+0x50]
3be148	movaps XMMWORD PTR [rsp+0x50],xmm7
3be14d	mov    r14,QWORD PTR [r13+0x3f08]
3be154	lea    rdx,[r13+0x380c]
3be15b	call   0x38bc08
3be160	movss  xmm1,DWORD PTR [r13+0x3c30]
3be169	lea    rcx,[rbp+0x58]
3be16d	movaps xmm2,xmm1
3be170	mov    rbx,rax
3be173	call   0x2cc340
3be178	mov    r8,rax
3be17b	lea    rcx,[rbp-0x40]
3be17f	mov    rdx,rdi
3be182	call   0x2ef9d8
3be187	mov    rdx,rax
3be18a	lea    rcx,[rbp-0x38]
3be18e	mov    r8,rbx
3be191	call   0x2ef9d8
3be196	mov    r8,rax
3be199	lea    rcx,[rbp-0x30]
3be19d	mov    rdx,rdi
3be1a0	call   0x2db388
3be1a5	xor    r9d,r9d
3be1a8	lea    rcx,[rbp-0x30]
3be1ac	xor    r8d,r8d
3be1af	mov    edx,esi
3be1b1	call   0x3948dc
3be1b6	lea    r9,[rbp+0x58]
3be1ba	mov    DWORD PTR [rsp+0x20],0x0
3be1c2	lea    r8,[rbp+0x50]
3be1c6	mov    edx,esi
3be1c8	lea    rcx,[rbp-0x30]
3be1cc	call   0x3bc7e0
3be1d1	mov    r15b,BYTE PTR [rbp+0x58]
3be1d5	mov    r12b,al
3be1d8	mov    bl,BYTE PTR [rbp+0x50]
3be1db	test   r15b,r15b
3be1de	je     0x3be1eb
3be1e0	test   bl,bl
3be1e2	je     0x3be1eb
3be1e4	mov    ecx,0x18
3be1e9	jmp    0x3be1f6
3be1eb	mov    al,bl
3be1ed	neg    al
3be1ef	sbb    ecx,ecx
3be1f1	neg    ecx
3be1f3	add    ecx,0x16
3be1f6	movss  xmm7,DWORD PTR [rip+0xffffffffffecf056]        # 0x28d254
3be1fe	movaps xmm1,xmm7
3be201	call   0x392298
3be206	movaps xmm1,xmm7
3be209	mov    ecx,0x1
3be20e	mov    edi,eax
3be210	call   0x392298
3be215	mov    esi,eax
3be217	test   bl,bl
3be219	jne    0x3be220
3be21b	test   r15b,r15b
3be21e	je     0x3be262
3be220	movss  xmm6,DWORD PTR [r13+0x3c30]
3be229	lea    rdx,[rbp+0x50]
3be22d	mulss  xmm6,DWORD PTR [rip+0xffffffffffecf01b]        # 0x28d250
3be235	lea    rcx,[rbp-0x30]
3be239	mov    rbx,QWORD PTR [r14+0x298]
3be240	addss  xmm6,xmm7
3be244	call   0x3788f4
3be249	mov    rdx,rax
3be24c	mov    DWORD PTR [rsp+0x20],0x0
3be254	mov    r9d,edi
3be257	movaps xmm2,xmm6
3be25a	mov    rcx,rbx
3be25d	call   0x39f874
3be262	mov    bl,BYTE PTR [r14+0xb9]
3be269	lea    r8,[r13+0x380c]
3be270	lea    rdx,[rbp-0x30]
3be274	lea    rcx,[rbp+0x50]
3be278	call   0x2ef9d8
3be27d	mov    rcx,QWORD PTR [r14+0x298]
3be284	neg    bl
3be286	mov    r8d,esi
3be289	movss  DWORD PTR [rsp+0x20],xmm7
3be28f	sbb    r9d,r9d
3be292	mov    rdx,QWORD PTR [rax]
3be295	and    r9d,0xfffffffe
3be299	add    r9d,0x3
3be29d	call   0x3a7400
3be2a2	call   0x393ff4
3be2a7	test   al,al
3be2a9	je     0x3be2c6
3be2ab	movss  xmm1,DWORD PTR [rip+0xffffffffffed4fad]        # 0x293260
3be2b3	xor    ecx,ecx
3be2b5	call   0x394490
3be2ba	test   al,al
3be2bc	je     0x3be2c6
3be2be	mov    rcx,r14
3be2c1	call   0x39be68
3be2c6	mov    rbx,QWORD PTR [rsp+0xb0]
3be2ce	mov    al,r12b
3be2d1	movaps xmm6,XMMWORD PTR [rsp+0x60]
3be2d6	movaps xmm7,XMMWORD PTR [rsp+0x50]
3be2db	add    rsp,0x70
3be2df	pop    r15
3be2e1	pop    r14
3be2e3	pop    r13
3be2e5	pop    r12
3be2e7	pop    rdi
3be2e8	pop    rsi
3be2e9	pop    rbp
3be2ea	ret
