2fabf8	mov    QWORD PTR [rsp+0x8],rcx
2fabfd	push   rbp
2fabfe	push   rbx
2fabff	push   rsi
2fac00	push   rdi
2fac01	push   r12
2fac03	push   r13
2fac05	push   r14
2fac07	push   r15
2fac09	lea    rbp,[rsp-0x58]
2fac0e	sub    rsp,0x158
2fac15	xor    esi,esi
2fac17	mov    r14,rcx
2fac1a	mov    DWORD PTR [rbp+0xa8],esi
2fac20	cmp    BYTE PTR [rip+0xeec41],sil        # 0x3e9868
2fac27	je     0x2fb2e0
2fac2d	call   0x2caf08
2fac32	test   al,al
2fac34	je     0x2fb2e0
2fac3a	call   0x2f8034
2fac3f	mov    rcx,rax
2fac42	mov    rbx,rax
2fac45	call   0x2caf08
2fac4a	test   al,al
2fac4c	je     0x2fb2e0
2fac52	mov    rcx,rbx
2fac55	call   0x316524
2fac5a	mov    rcx,rbx
2fac5d	mov    DWORD PTR [rsp+0x34],eax
2fac61	mov    r12d,eax
2fac64	call   0x316504
2fac69	mov    rcx,rax
2fac6c	mov    QWORD PTR [rsp+0x48],rax
2fac71	mov    rbx,rax
2fac74	call   0x2caf08
2fac79	test   al,al
2fac7b	je     0x2fb2e0
2fac81	movss  xmm1,DWORD PTR [rip+0xfffffffffff984bb]        # 0x293144
2fac89	lea    rcx,[rip+0xf5ce4]        # 0x3f0974
2fac90	call   0x2e5b7c
2fac95	test   al,al
2fac97	je     0x2fb2e0
2fac9d	xor    eax,eax
2fac9f	mov    DWORD PTR [rsp+0x24],eax
2faca3	test   r12d,r12d
2faca6	jle    0x2fb2e0
2facac	lea    edi,[rsi+0x6]
2facaf	shl    eax,0x3
2facb2	movsxd rcx,eax
2facb5	mov    rbx,QWORD PTR [rbx+rcx*1+0x20]
2facba	mov    rcx,rbx
2facbd	call   0x2caf08
2facc2	test   al,al
2facc4	je     0x2fb2c8
2facca	mov    rcx,rbx
2faccd	call   0x2e0e9c
2facd2	test   al,al
2facd4	je     0x2fb2c8
2facda	cmp    rbx,r14
2facdd	je     0x2fb2c8
2face3	mov    rdx,QWORD PTR [rbx+0x10]
2face7	mov    rcx,rdx
2facea	call   0x2caf08
2facef	test   al,al
2facf1	je     0x2fb2c8
2facf7	mov    rcx,QWORD PTR [rdx+0x20]
2facfb	call   0x2caf08
2fad00	test   al,al
2fad02	je     0x2fb2c8
2fad08	mov    rcx,QWORD PTR [rdx+0x20]
2fad0c	call   0x2caf08
2fad11	test   al,al
2fad13	je     0x2fb2c8
2fad19	mov    rcx,QWORD PTR [rdx+0x20]
2fad1d	call   0x3735f0
2fad22	cmp    ax,di
2fad25	jne    0x2fb2c8
2fad2b	mov    rcx,rbx
2fad2e	call   0x36b1a0
2fad33	test   al,al
2fad35	je     0x2fb2c8
2fad3b	xor    edx,edx
2fad3d	mov    rcx,rbx
2fad40	call   0x2cd32c
2fad45	xor    edx,edx
2fad47	mov    rcx,r14
2fad4a	mov    rdi,rax
2fad4d	call   0x2cd32c
2fad52	test   rdi,rdi
2fad55	je     0x2fad61
2fad57	cmp    rdi,rax
2fad5a	jne    0x2fad61
2fad5c	mov    dil,0x1
2fad5f	jmp    0x2fad64
2fad61	xor    dil,dil
2fad64	xor    r8d,r8d
2fad67	lea    rdx,[rsp+0x50]
2fad6c	mov    rcx,rbx
2fad6f	or     esi,0x1
2fad72	call   0x369e70
2fad77	mov    rdx,rax
2fad7a	lea    rcx,[rip+0xdc4df]        # 0x3d7260
2fad81	call   0x2df608
2fad86	cmp    DWORD PTR [rax+0x24],0x1
2fad8a	je     0x2fad91
2fad8c	test   dil,dil
2fad8f	je     0x2fad94
2fad91	mov    dil,0x1
2fad94	lea    rcx,[rsp+0x50]
2fad99	and    esi,0xfffffffe
2fad9c	call   0x2cc4f4
2fada1	test   dil,dil
2fada4	je     0x2fadc9
2fada6	xor    r8d,r8d
2fada9	lea    rdx,[rbp+0x0]
2fadad	lea    rcx,[rip+0xf5394]        # 0x3f0148
2fadb4	call   0x2e98f0
2fadb9	mov    rcx,rax
2fadbc	call   0x2d4d70
2fadc1	test   al,al
2fadc3	je     0x2fb2c3
2fadc9	mov    rcx,rbx
2fadcc	call   0x369764
2fadd1	mov    rcx,rax
2fadd4	mov    rdx,rax
2fadd7	call   0x2caf08
2faddc	test   al,al
2fadde	je     0x2fb2c3
2fade4	mov    rdx,QWORD PTR [rdx+0x600]
2fadeb	mov    rcx,rdx
2fadee	call   0x2caf08
2fadf3	test   al,al
2fadf5	je     0x2fb2c3
2fadfb	mov    rdx,QWORD PTR [rdx+0x58]
2fadff	mov    rcx,rdx
2fae02	call   0x2caf08
2fae07	test   al,al
2fae09	je     0x2fb2c3
2fae0f	mov    eax,DWORD PTR [rdx+0x18]
2fae12	mov    DWORD PTR [rsp+0x20],eax
2fae16	test   eax,eax
2fae18	je     0x2fb2c3
2fae1e	mov    rdx,QWORD PTR [rdx+0x10]
2fae22	mov    rcx,rdx
2fae25	mov    QWORD PTR [rsp+0x40],rdx
2fae2a	call   0x2caf08
2fae2f	test   al,al
2fae31	je     0x2fb2c3
2fae37	xor    r15d,r15d
2fae3a	cmp    DWORD PTR [rsp+0x20],r15d
2fae3f	jle    0x2fb2c3
2fae45	lea    eax,[r15*8+0x0]
2fae4d	movsxd rcx,eax
2fae50	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
2fae55	mov    rcx,rdx
2fae58	call   0x2caf08
2fae5d	test   al,al
2fae5f	je     0x2fb2a4
2fae65	mov    rcx,rdx
2fae68	call   0x370fac
2fae6d	mov    rcx,rax
2fae70	mov    r13,rax
2fae73	call   0x2caf08
2fae78	test   al,al
2fae7a	je     0x2fb2a4
2fae80	mov    rcx,r13
2fae83	call   0x370e84
2fae88	mov    rcx,rax
2fae8b	call   0x2caf08
2fae90	test   al,al
2fae92	je     0x2fb2a4
2fae98	mov    rcx,r13
2fae9b	call   0x37361c
2faea0	mov    rcx,rax
2faea3	mov    rdi,rax
2faea6	call   0x2caf08
2faeab	test   al,al
2faead	je     0x2fb2a4
2faeb3	lea    rdx,[rsp+0x50]
2faeb8	lea    rcx,[rbp+0xa8]
2faebf	call   0x2f1f1c   ; STR "night.vision.goggles"
2faec4	mov    rcx,rax
2faec7	call   0x3204bc
2faecc	lea    rdx,[rbp+0x30]
2faed0	mov    rcx,rdi
2faed3	mov    rbx,rax
2faed6	call   0x2d7e18
2faedb	mov    rcx,rax
2faede	call   0x2cd7ec
2faee3	mov    rcx,rax
2faee6	mov    rdx,rbx
2faee9	call   0x3ca960
2faeee	test   rax,rax
2faef1	jne    0x2faf3b
2faef3	lea    rdx,[rbp-0x5f]
2faef7	lea    rcx,[rbp+0xa8]
2faefe	call   0x2f3624   ; STR "hat.miner"
2faf03	mov    rcx,rax
2faf06	call   0x2cdd44
2faf0b	lea    rdx,[rbp+0x10]
2faf0f	mov    rcx,rdi
2faf12	mov    rbx,rax
2faf15	call   0x2d7e18
2faf1a	mov    rcx,rax
2faf1d	call   0x2cd7ec
2faf22	mov    rcx,rax
2faf25	mov    rdx,rbx
2faf28	call   0x3ca960
2faf2d	test   rax,rax
2faf30	mov    eax,0x6
2faf35	jne    0x2faf40
2faf37	xor    bl,bl
2faf39	jmp    0x2faf42
2faf3b	mov    eax,0x2
2faf40	mov    bl,0x1
2faf42	or     eax,esi
2faf44	mov    esi,eax
2faf46	test   al,0x4
2faf48	je     0x2faf56
2faf4a	and    esi,0xfffffffb
2faf4d	lea    rcx,[rbp+0x10]
2faf51	call   0x2cc4f4
2faf56	lea    rcx,[rbp+0x30]
2faf5a	and    esi,0xfffffffd
2faf5d	call   0x2cc4f4
2faf62	test   bl,bl
2faf64	jne    0x2fb2a4
2faf6a	movsxd rcx,DWORD PTR [rip+0xf3e17]        # 0x3eed88
2faf71	lea    r8,[rip+0xffffffffffd05088]        # 0x0
2faf78	mov    r12,QWORD PTR [r8+rcx*8+0x3e5e88]
2faf80	test   r12,r12
2faf83	je     0x2fb2a4
2faf89	lea    r14,[rcx*8+0x3e5ec0]
2faf91	add    r14,r8
2faf94	mov    rax,QWORD PTR [r14]
2faf97	test   rax,rax
2faf9a	jne    0x2fb21d
2fafa0	test   ecx,ecx
2fafa2	je     0x2fb1a6
2fafa8	sub    ecx,0x1
2fafab	je     0x2fb15d
2fafb1	sub    ecx,0x1
2fafb4	je     0x2fb111
2fafba	sub    ecx,0x1
2fafbd	je     0x2fb0c5
2fafc3	sub    ecx,0x1
2fafc6	je     0x2fb078
2fafcc	sub    ecx,0x1
2fafcf	je     0x2fb029
2fafd1	cmp    ecx,0x1
2fafd4	jne    0x2fb2a4
2fafda	lea    rdx,[rbp-0x55]
2fafde	lea    rcx,[rbp+0xa8]
2fafe5	call   0x2f2a24   ; STR "UnityEngine"
2fafea	mov    rcx,rax
2fafed	call   0x2cde34
2faff2	lea    rdx,[rsp+0x70]
2faff7	mov    rdi,rax
2faffa	lea    rcx,[rbp+0xa8]
2fb001	call   0x2f2860   ; STR "Shader"
2fb006	mov    rcx,rax
2fb009	call   0x2cdcf4
2fb00e	lea    rdx,[rbp+0xb0]
2fb015	mov    rbx,rax
2fb018	lea    rcx,[rbp+0xa8]
2fb01f	call   0x2f1644   ; STR "6"
2fb024	jmp    0x2fb1ed
2fb029	lea    rdx,[rbp-0x49]
2fb02d	lea    rcx,[rbp+0xa8]
2fb034	call   0x2f24f4   ; STR "UnityEngine"
2fb039	mov    rcx,rax
2fb03c	call   0x2cde34
2fb041	lea    rdx,[rsp+0x77]
2fb046	mov    rdi,rax
2fb049	lea    rcx,[rbp+0xa8]
2fb050	call   0x2f1ee0   ; STR "Shader"
2fb055	mov    rcx,rax
2fb058	call   0x2cdcf4
2fb05d	lea    rdx,[rbp+0xb8]
2fb064	mov    rbx,rax
2fb067	lea    rcx,[rbp+0xa8]
2fb06e	call   0x2f14d8   ; STR "5"
2fb073	jmp    0x2fb1ed
2fb078	lea    rdx,[rbp-0x3d]
2fb07c	lea    rcx,[rbp+0xa8]
2fb083	call   0x2f1b20   ; STR "UnityEngine"
2fb088	mov    rcx,rax
2fb08b	call   0x2cde34
2fb090	lea    rdx,[rsp+0x7e]
2fb095	mov    rdi,rax
2fb098	lea    rcx,[rbp+0xa8]
2fb09f	call   0x2f1898   ; STR "Shader"
2fb0a4	mov    rcx,rax
2fb0a7	call   0x2cdcf4
2fb0ac	lea    rdx,[rsp+0x28]
2fb0b1	mov    rbx,rax
2fb0b4	lea    rcx,[rbp+0xa8]
2fb0bb	call   0x2f13e8   ; STR "4"
2fb0c0	jmp    0x2fb1ed
2fb0c5	lea    rdx,[rbp-0x31]
2fb0c9	lea    rcx,[rbp+0xa8]
2fb0d0	call   0x2f11d8   ; STR "UnityEngine"
2fb0d5	mov    rcx,rax
2fb0d8	call   0x2cde34
2fb0dd	lea    rdx,[rbp-0x7b]
2fb0e1	mov    rdi,rax
2fb0e4	lea    rcx,[rbp+0xa8]
2fb0eb	call   0x2f0ea4   ; STR "Shader"
2fb0f0	mov    rcx,rax
2fb0f3	call   0x2cdcf4
2fb0f8	lea    rdx,[rsp+0x2a]
2fb0fd	mov    rbx,rax
2fb100	lea    rcx,[rbp+0xa8]
2fb107	call   0x2f0bd4   ; STR "3"
2fb10c	jmp    0x2fb1ed
2fb111	lea    rdx,[rbp-0x25]
2fb115	lea    rcx,[rbp+0xa8]
2fb11c	call   0x2f08c4   ; STR "UnityEngine"
2fb121	mov    rcx,rax
2fb124	call   0x2cde34
2fb129	lea    rdx,[rbp-0x74]
2fb12d	mov    rdi,rax
2fb130	lea    rcx,[rbp+0xa8]
2fb137	call   0x2f0378   ; STR "Shader"
2fb13c	mov    rcx,rax
2fb13f	call   0x2cdcf4
2fb144	lea    rdx,[rsp+0x2c]
2fb149	mov    rbx,rax
2fb14c	lea    rcx,[rbp+0xa8]
2fb153	call   0x2f1250   ; STR "2"
2fb158	jmp    0x2fb1ed
2fb15d	lea    rdx,[rbp-0x19]
2fb161	lea    rcx,[rbp+0xa8]
2fb168	call   0x2f7334   ; STR "UnityEngine"
2fb16d	mov    rcx,rax
2fb170	call   0x2cde34
2fb175	lea    rdx,[rbp-0x6d]
2fb179	mov    rdi,rax
2fb17c	lea    rcx,[rbp+0xa8]
2fb183	call   0x2f6bd4   ; STR "Shader"
2fb188	mov    rcx,rax
2fb18b	call   0x2cdcf4
2fb190	lea    rdx,[rsp+0x2e]
2fb195	mov    rbx,rax
2fb198	lea    rcx,[rbp+0xa8]
2fb19f	call   0x2f10cc   ; STR "1"
2fb1a4	jmp    0x2fb1ed
2fb1a6	lea    rdx,[rbp-0xd]
2fb1aa	lea    rcx,[rbp+0xa8]
2fb1b1	call   0x2f5290   ; STR "UnityEngine"
2fb1b6	mov    rcx,rax
2fb1b9	call   0x2cde34
2fb1be	lea    rdx,[rbp-0x66]
2fb1c2	mov    rdi,rax
2fb1c5	lea    rcx,[rbp+0xa8]
2fb1cc	call   0x2f4a88   ; STR "Shader"
2fb1d1	mov    rcx,rax
2fb1d4	call   0x2cdcf4
2fb1d9	lea    rdx,[rsp+0x30]
2fb1de	mov    rbx,rax
2fb1e1	lea    rcx,[rbp+0xa8]
2fb1e8	call   0x2f1004   ; STR "0"
2fb1ed	mov    rcx,rax
2fb1f0	call   0x2d8464
2fb1f5	mov    rcx,rax
2fb1f8	call   0x2ce5dc
2fb1fd	mov    r9,rdi
2fb200	mov    r8,rbx
2fb203	mov    rdx,rax
2fb206	mov    rcx,r12
2fb209	call   0x375abc
2fb20e	mov    QWORD PTR [r14],rax
2fb211	mov    rcx,rax
2fb214	test   rax,rax
2fb217	je     0x2fb2a4
2fb21d	mov    rdx,rax
2fb220	mov    rcx,r13
2fb223	call   0x3710dc
2fb228	movups xmm0,XMMWORD PTR [rip+0xf1a09]        # 0x3ecc38
2fb22f	lea    rdx,[rsp+0x38]
2fb234	lea    rcx,[rbp+0xa8]
2fb23b	movdqa XMMWORD PTR [rsp+0x50],xmm0
2fb241	call   0x2f2c68   ; STR "_b"
2fb246	mov    rcx,rax
2fb249	call   0x3203f4
2fb24e	mov    rcx,rax
2fb251	call   0x2ce5dc
2fb256	mov    rdx,rax
2fb259	lea    r8,[rsp+0x50]
2fb25e	mov    rcx,r13
2fb261	call   0x370d64
2fb266	movups xmm0,XMMWORD PTR [rip+0xf196b]        # 0x3ecbd8
2fb26d	lea    rdx,[rsp+0x3b]
2fb272	lea    rcx,[rbp+0xa8]
2fb279	movdqa XMMWORD PTR [rsp+0x50],xmm0
2fb27f	call   0x2f2f1c   ; STR "_a"
2fb284	mov    rcx,rax
2fb287	call   0x3203f4
2fb28c	mov    rcx,rax
2fb28f	call   0x2ce5dc
2fb294	mov    rdx,rax
2fb297	lea    r8,[rsp+0x50]
2fb29c	mov    rcx,r13
2fb29f	call   0x370d64
2fb2a4	mov    rdx,QWORD PTR [rsp+0x40]
2fb2a9	inc    r15d
2fb2ac	cmp    r15d,DWORD PTR [rsp+0x20]
2fb2b1	jl     0x2fae45
2fb2b7	mov    r14,QWORD PTR [rbp+0xa0]
2fb2be	mov    r12d,DWORD PTR [rsp+0x34]
2fb2c3	mov    edi,0x6
2fb2c8	mov    eax,DWORD PTR [rsp+0x24]
2fb2cc	mov    rbx,QWORD PTR [rsp+0x48]
2fb2d1	inc    eax
2fb2d3	mov    DWORD PTR [rsp+0x24],eax
2fb2d7	cmp    eax,r12d
2fb2da	jl     0x2facaf
2fb2e0	add    rsp,0x158
2fb2e7	pop    r15
2fb2e9	pop    r14
2fb2eb	pop    r13
2fb2ed	pop    r12
2fb2ef	pop    rdi
2fb2f0	pop    rsi
2fb2f1	pop    rbx
2fb2f2	pop    rbp
2fb2f3	ret
