3c9ab0	mov    QWORD PTR [rsp+0x18],r8
3c9ab5	mov    QWORD PTR [rsp+0x10],rdx
3c9aba	push   rbx
3c9abb	push   rbp
3c9abc	push   rsi
3c9abd	push   rdi
3c9abe	push   r12
3c9ac0	push   r13
3c9ac2	push   r14
3c9ac4	push   r15
3c9ac6	sub    rsp,0x88
3c9acd	mov    al,BYTE PTR [r9]
3c9ad0	lea    r11,[rip+0xfffffffffff03579]        # 0x2cd050
3c9ad7	xor    ebp,ebp
3c9ad9	mov    rbx,r9
3c9adc	test   rdx,rdx
3c9adf	mov    r12,r8
3c9ae2	mov    rsi,rdx
3c9ae5	cmovne r11,rcx
3c9ae9	mov    QWORD PTR [rsp+0x60],r11
3c9aee	jmp    0x3ca232
3c9af3	cmp    al,0x25
3c9af5	je     0x3c9b0d
3c9af7	mov    cl,al
3c9af9	mov    r8,rbp
3c9afc	mov    r9,r12
3c9aff	inc    rbp
3c9b02	mov    rdx,rsi
3c9b05	call   r11
3c9b08	jmp    0x3ca228
3c9b0d	inc    rbx
3c9b10	mov    QWORD PTR [rsp+0x58],rbx
3c9b15	xor    edi,edi
3c9b17	cmp    BYTE PTR [rbx],0x20
3c9b1a	mov    rax,rbx
3c9b1d	mov    QWORD PTR [rsp+0xe8],rbx
3c9b25	je     0x3c9b52
3c9b27	cmp    BYTE PTR [rbx],0x23
3c9b2a	je     0x3c9b4d
3c9b2c	cmp    BYTE PTR [rbx],0x2b
3c9b2f	je     0x3c9b48
3c9b31	cmp    BYTE PTR [rbx],0x2d
3c9b34	je     0x3c9b43
3c9b36	cmp    BYTE PTR [rbx],0x30
3c9b39	jne    0x3c9b5b
3c9b3b	or     edi,0x1
3c9b3e	inc    rbx
3c9b41	jmp    0x3c9b17
3c9b43	or     edi,0x2
3c9b46	jmp    0x3c9b55
3c9b48	or     edi,0x4
3c9b4b	jmp    0x3c9b55
3c9b4d	or     edi,0x10
3c9b50	jmp    0x3c9b55
3c9b52	or     edi,0x8
3c9b55	lea    rbx,[rax+0x1]
3c9b59	jmp    0x3c9b17
3c9b5b	mov    cl,BYTE PTR [rbx]
3c9b5d	mov    QWORD PTR [rsp+0x58],rbx
3c9b62	call   0x3c9674
3c9b67	test   al,al
3c9b69	je     0x3c9be8
3c9b6b	lea    rcx,[rsp+0xe8]
3c9b73	call   0x3c8f3c
3c9b78	mov    rbx,QWORD PTR [rsp+0xe8]
3c9b80	mov    r13d,eax
3c9b83	mov    QWORD PTR [rsp+0x58],rbx
3c9b88	mov    DWORD PTR [rsp+0x50],eax
3c9b8c	mov    r15,QWORD PTR [rsp+0xf0]
3c9b94	xor    r10d,r10d
3c9b97	cmp    BYTE PTR [rbx],0x2e
3c9b9a	mov    DWORD PTR [rsp+0xd0],r10d
3c9ba2	jne    0x3c9c54
3c9ba8	inc    rbx
3c9bab	bts    edi,0xa
3c9baf	mov    QWORD PTR [rsp+0x58],rbx
3c9bb4	mov    QWORD PTR [rsp+0xe8],rbx
3c9bbc	mov    cl,BYTE PTR [rbx]
3c9bbe	call   0x3c9674
3c9bc3	test   al,al
3c9bc5	je     0x3c9c29
3c9bc7	lea    rcx,[rsp+0xe8]
3c9bcf	call   0x3c8f3c
3c9bd4	mov    rbx,QWORD PTR [rsp+0xe8]
3c9bdc	mov    r10d,eax
3c9bdf	mov    DWORD PTR [rsp+0xd0],eax
3c9be6	jmp    0x3c9c4f
3c9be8	xor    r13d,r13d
3c9beb	cmp    BYTE PTR [rbx],0x2a
3c9bee	mov    DWORD PTR [rsp+0x50],r13d
3c9bf3	jne    0x3c9b8c
3c9bf5	mov    r15,QWORD PTR [rsp+0xf0]
3c9bfd	mov    r13d,DWORD PTR [r15]
3c9c00	add    r15,0x8
3c9c04	mov    QWORD PTR [rsp+0xf0],r15
3c9c0c	test   r13d,r13d
3c9c0f	jns    0x3c9c17
3c9c11	or     edi,0x2
3c9c14	neg    r13d
3c9c17	inc    rbx
3c9c1a	mov    DWORD PTR [rsp+0x50],r13d
3c9c1f	mov    QWORD PTR [rsp+0x58],rbx
3c9c24	jmp    0x3c9b94
3c9c29	cmp    BYTE PTR [rbx],0x2a
3c9c2c	jne    0x3c9c54
3c9c2e	mov    rax,r15
3c9c31	add    r15,0x8
3c9c35	mov    QWORD PTR [rsp+0xf0],r15
3c9c3d	cmp    DWORD PTR [rax],r10d
3c9c40	cmovg  r10d,DWORD PTR [rax]
3c9c44	inc    rbx
3c9c47	mov    DWORD PTR [rsp+0xd0],r10d
3c9c4f	mov    QWORD PTR [rsp+0x58],rbx
3c9c54	mov    al,BYTE PTR [rbx]
3c9c56	mov    r14,r15
3c9c59	mov    QWORD PTR [rsp+0xe8],r15
3c9c61	cmp    al,0x68
3c9c63	je     0x3c9ca6
3c9c65	cmp    al,0x6a
3c9c67	je     0x3c9c75
3c9c69	cmp    al,0x6c
3c9c6b	je     0x3c9c83
3c9c6d	cmp    al,0x74
3c9c6f	je     0x3c9c75
3c9c71	cmp    al,0x7a
3c9c73	jne    0x3c9cc2
3c9c75	bts    edi,0x9
3c9c79	inc    rbx
3c9c7c	mov    QWORD PTR [rsp+0x58],rbx
3c9c81	jmp    0x3c9cc2
3c9c83	inc    rbx
3c9c86	mov    QWORD PTR [rsp+0x58],rbx
3c9c8b	cmp    BYTE PTR [rbx],0x6c
3c9c8e	jne    0x3c9ca0
3c9c90	inc    rbx
3c9c93	mov    QWORD PTR [rsp+0x58],rbx
3c9c98	or     edi,0x300
3c9c9e	jmp    0x3c9cc2
3c9ca0	bts    edi,0x8
3c9ca4	jmp    0x3c9cc2
3c9ca6	inc    rbx
3c9ca9	mov    QWORD PTR [rsp+0x58],rbx
3c9cae	cmp    BYTE PTR [rbx],0x68
3c9cb1	jne    0x3c9cbe
3c9cb3	or     edi,0xc0
3c9cb9	inc    rbx
3c9cbc	jmp    0x3c9c7c
3c9cbe	bts    edi,0x7
3c9cc2	cmp    BYTE PTR [rbx],0x65
3c9cc5	movsx  ecx,BYTE PTR [rbx]
3c9cc8	jg     0x3c9dd0
3c9cce	je     0x3ca1a4
3c9cd4	sub    ecx,0x25
3c9cd7	je     0x3c9dc9
3c9cdd	sub    ecx,0x20
3c9ce0	je     0x3ca196
3c9ce6	sub    ecx,0x1
3c9ce9	je     0x3ca1e4
3c9cef	sub    ecx,0x1
3c9cf2	je     0x3ca196
3c9cf8	sub    ecx,0xc
3c9cfb	je     0x3c9e1b
3c9d01	sub    ecx,0x5
3c9d04	je     0x3c9fe0
3c9d0a	sub    ecx,0xa
3c9d0d	je     0x3c9fe0
3c9d13	sub    ecx,0x1
3c9d16	je     0x3c9d26
3c9d18	cmp    ecx,0x1
3c9d1b	je     0x3c9fe0
3c9d21	jmp    0x3c9e14
3c9d26	mov    esi,0x1
3c9d2b	and    edi,0x2
3c9d2e	jne    0x3c9d71
3c9d30	cmp    r13d,esi
3c9d33	jbe    0x3c9d6f
3c9d35	mov    r15,QWORD PTR [rsp+0x60]
3c9d3a	mov    r14,QWORD PTR [rsp+0xd8]
3c9d42	mov    r8,rbp
3c9d45	mov    r9,r12
3c9d48	mov    rdx,r14
3c9d4b	mov    cl,0x20
3c9d4d	inc    rbp
3c9d50	inc    esi
3c9d52	call   r15
3c9d55	cmp    esi,r13d
3c9d58	jb     0x3c9d42
3c9d5a	mov    r14,QWORD PTR [rsp+0xe8]
3c9d62	mov    r15,QWORD PTR [rsp+0xf0]
3c9d6a	mov    r11,QWORD PTR [rsp+0x60]
3c9d6f	inc    esi
3c9d71	mov    cl,BYTE PTR [r14]
3c9d74	add    r15,0x8
3c9d78	mov    r8,rbp
3c9d7b	mov    QWORD PTR [rsp+0xf0],r15
3c9d83	mov    r15,QWORD PTR [rsp+0xd8]
3c9d8b	mov    r9,r12
3c9d8e	mov    rdx,r15
3c9d91	inc    rbp
3c9d94	call   r11
3c9d97	test   edi,edi
3c9d99	je     0x3c9dbc
3c9d9b	cmp    esi,r13d
3c9d9e	jae    0x3c9dbc
3c9da0	mov    rdi,QWORD PTR [rsp+0x60]
3c9da5	mov    r8,rbp
3c9da8	mov    r9,r12
3c9dab	mov    rdx,r15
3c9dae	mov    cl,0x20
3c9db0	inc    rbp
3c9db3	inc    esi
3c9db5	call   rdi
3c9db7	cmp    esi,r13d
3c9dba	jb     0x3c9da5
3c9dbc	mov    rsi,QWORD PTR [rsp+0xd8]
3c9dc4	jmp    0x3ca228
3c9dc9	mov    cl,0x25
3c9dcb	jmp    0x3c9af9
3c9dd0	sub    ecx,0x66
3c9dd3	je     0x3ca1e4
3c9dd9	sub    ecx,0x1
3c9ddc	je     0x3ca191
3c9de2	sub    ecx,0x2
3c9de5	je     0x3c9fdb
3c9deb	sub    ecx,0x6
3c9dee	je     0x3c9fdb
3c9df4	sub    ecx,0x1
3c9df7	je     0x3c9f92
3c9dfd	sub    ecx,0x3
3c9e00	je     0x3c9e1b
3c9e02	sub    ecx,0x2
3c9e05	je     0x3c9fdb
3c9e0b	cmp    ecx,0x3
3c9e0e	je     0x3c9fdb
3c9e14	mov    cl,BYTE PTR [rbx]
3c9e16	jmp    0x3c9af9
3c9e1b	mov    r14,QWORD PTR [r14]
3c9e1e	add    r15,0x8
3c9e22	cmp    BYTE PTR [rbx],0x53
3c9e25	mov    rcx,r14
3c9e28	mov    QWORD PTR [rsp+0xf0],r15
3c9e30	mov    QWORD PTR [rsp+0x78],r14
3c9e35	jne    0x3c9e54
3c9e37	call   0x3cab84
3c9e3c	mov    r10d,DWORD PTR [rsp+0xd0]
3c9e44	mov    rsi,rax
3c9e47	mov    QWORD PTR [rsp+0x68],rax
3c9e4c	mov    r12d,0x2
3c9e52	jmp    0x3c9e74
3c9e54	or     rdx,0xffffffffffffffff
3c9e58	mov    eax,r10d
3c9e5b	test   r10d,r10d
3c9e5e	cmovne rdx,rax
3c9e62	call   0x3c9a94
3c9e67	mov    esi,eax
3c9e69	mov    r12d,0x1
3c9e6f	mov    QWORD PTR [rsp+0x68],rsi
3c9e74	mov    r15d,edi
3c9e77	mov    QWORD PTR [rsp+0x70],r12
3c9e7c	and    r15d,0x400
3c9e83	mov    DWORD PTR [rsp+0xe8],r15d
3c9e8b	je     0x3c9e9d
3c9e8d	cmp    esi,r10d
3c9e90	mov    eax,r10d
3c9e93	cmovb  eax,esi
3c9e96	mov    esi,eax
3c9e98	mov    QWORD PTR [rsp+0x68],rsi
3c9e9d	and    edi,0x2
3c9ea0	mov    DWORD PTR [rsp+0x54],edi
3c9ea4	jne    0x3c9ef1
3c9ea6	cmp    esi,r13d
3c9ea9	jae    0x3c9eea
3c9eab	mov    r15,QWORD PTR [rsp+0xe0]
3c9eb3	mov    r12,QWORD PTR [rsp+0x60]
3c9eb8	mov    r14,QWORD PTR [rsp+0xd8]
3c9ec0	mov    r8,rbp
3c9ec3	mov    r9,r15
3c9ec6	mov    rdx,r14
3c9ec9	mov    cl,0x20
3c9ecb	inc    rbp
3c9ece	inc    esi
3c9ed0	call   r12
3c9ed3	cmp    esi,r13d
3c9ed6	jb     0x3c9ec0
3c9ed8	mov    r14,QWORD PTR [rsp+0x78]
3c9edd	mov    r15d,DWORD PTR [rsp+0xe8]
3c9ee5	mov    r12,QWORD PTR [rsp+0x70]
3c9eea	inc    esi
3c9eec	mov    QWORD PTR [rsp+0x68],rsi
3c9ef1	cmp    BYTE PTR [r14],0x0
3c9ef5	je     0x3c9f4e
3c9ef7	mov    r13d,DWORD PTR [rsp+0xd0]
3c9eff	mov    rsi,QWORD PTR [rsp+0xe0]
3c9f07	mov    rbx,QWORD PTR [rsp+0x60]
3c9f0c	mov    rdi,QWORD PTR [rsp+0xd8]
3c9f14	test   r15d,r15d
3c9f17	je     0x3c9f21
3c9f19	test   r13d,r13d
3c9f1c	je     0x3c9f3b
3c9f1e	dec    r13d
3c9f21	mov    cl,BYTE PTR [r14]
3c9f24	mov    r8,rbp
3c9f27	mov    r9,rsi
3c9f2a	mov    rdx,rdi
3c9f2d	inc    rbp
3c9f30	call   rbx
3c9f32	add    r14,r12
3c9f35	cmp    BYTE PTR [r14],0x0
3c9f39	jne    0x3c9f14
3c9f3b	mov    rbx,QWORD PTR [rsp+0x58]
3c9f40	mov    edi,DWORD PTR [rsp+0x54]
3c9f44	mov    rsi,QWORD PTR [rsp+0x68]
3c9f49	mov    r13d,DWORD PTR [rsp+0x50]
3c9f4e	mov    r12,QWORD PTR [rsp+0xe0]
3c9f56	test   edi,edi
3c9f58	je     0x3c9dbc
3c9f5e	cmp    esi,r13d
3c9f61	jae    0x3c9dbc
3c9f67	mov    rbx,QWORD PTR [rsp+0x60]
3c9f6c	mov    rdx,QWORD PTR [rsp+0xd8]
3c9f74	mov    r8,rbp
3c9f77	mov    r9,r12
3c9f7a	mov    cl,0x20
3c9f7c	inc    rbp
3c9f7f	inc    esi
3c9f81	call   rbx
3c9f83	cmp    esi,r13d
3c9f86	jb     0x3c9f6c
3c9f88	mov    rbx,QWORD PTR [rsp+0x58]
3c9f8d	jmp    0x3c9dbc
3c9f92	mov    eax,0x10
3c9f97	or     edi,0x21
3c9f9a	mov    DWORD PTR [rsp+0x48],edi
3c9f9e	add    r15,0x8
3c9fa2	mov    DWORD PTR [rsp+0x40],eax
3c9fa6	mov    r9,r12
3c9fa9	mov    DWORD PTR [rsp+0x38],r10d
3c9fae	mov    r8,rbp
3c9fb1	mov    QWORD PTR [rsp+0x30],rax
3c9fb6	mov    rdx,rsi
3c9fb9	mov    rax,QWORD PTR [r14]
3c9fbc	mov    rcx,r11
3c9fbf	mov    BYTE PTR [rsp+0x28],0x0
3c9fc4	mov    QWORD PTR [rsp+0x20],rax
3c9fc9	mov    QWORD PTR [rsp+0xf0],r15
3c9fd1	call   0x3c98c4
3c9fd6	jmp    0x3ca225
3c9fdb	cmp    BYTE PTR [rbx],0x78
3c9fde	je     0x3ca00a
3c9fe0	cmp    BYTE PTR [rbx],0x58
3c9fe3	je     0x3ca00a
3c9fe5	cmp    BYTE PTR [rbx],0x6f
3c9fe8	jne    0x3c9ff2
3c9fea	mov    r9d,0x8
3c9ff0	jmp    0x3ca010
3c9ff2	cmp    BYTE PTR [rbx],0x62
3c9ff5	jne    0x3c9fff
3c9ff7	mov    r9d,0x2
3c9ffd	jmp    0x3ca010
3c9fff	mov    r9d,0xa
3ca005	and    edi,0xffffffef
3ca008	jmp    0x3ca010
3ca00a	mov    r9d,0x10
3ca010	mov    eax,edi
3ca012	mov    r8,r9
3ca015	or     eax,0x20
3ca018	cmp    BYTE PTR [rbx],0x58
3ca01b	cmovne eax,edi
3ca01e	cmp    BYTE PTR [rbx],0x69
3ca021	mov    ecx,eax
3ca023	je     0x3ca02e
3ca025	and    ecx,0xfffffff3
3ca028	cmp    BYTE PTR [rbx],0x64
3ca02b	cmove  ecx,eax
3ca02e	mov    edx,ecx
3ca030	and    edx,0xfffffffe
3ca033	bt     ecx,0xa
3ca037	cmovae edx,ecx
3ca03a	cmp    BYTE PTR [rbx],0x69
3ca03d	je     0x3ca0e3
3ca043	cmp    BYTE PTR [rbx],0x64
3ca046	je     0x3ca0e3
3ca04c	bt     edx,0x9
3ca050	jae    0x3ca088
3ca052	mov    rax,QWORD PTR [r15]
3ca055	mov    DWORD PTR [rsp+0x48],edx
3ca059	mov    DWORD PTR [rsp+0x40],r13d
3ca05e	mov    DWORD PTR [rsp+0x38],r10d
3ca063	mov    QWORD PTR [rsp+0x30],r8
3ca068	mov    BYTE PTR [rsp+0x28],0x0
3ca06d	mov    r9,r12
3ca070	mov    QWORD PTR [rsp+0x20],rax
3ca075	mov    r8,rbp
3ca078	mov    rdx,rsi
3ca07b	mov    rcx,r11
3ca07e	call   0x3c98c4
3ca083	jmp    0x3ca180
3ca088	bt     edx,0x8
3ca08c	jae    0x3ca0ae
3ca08e	mov    eax,DWORD PTR [r15]
3ca091	mov    DWORD PTR [rsp+0x48],edx
3ca095	mov    DWORD PTR [rsp+0x40],r13d
3ca09a	mov    DWORD PTR [rsp+0x38],r10d
3ca09f	mov    DWORD PTR [rsp+0x30],r9d
3ca0a4	mov    BYTE PTR [rsp+0x28],0x0
3ca0a9	jmp    0x3ca16b
3ca0ae	test   dl,0x40
3ca0b1	je     0x3ca0b9
3ca0b3	movzx  eax,BYTE PTR [r15]
3ca0b7	jmp    0x3ca0c6
3ca0b9	test   dl,dl
3ca0bb	jns    0x3ca0c3
3ca0bd	movzx  eax,WORD PTR [r15]
3ca0c1	jmp    0x3ca0c6
3ca0c3	mov    eax,DWORD PTR [r15]
3ca0c6	mov    DWORD PTR [rsp+0x48],edx
3ca0ca	mov    DWORD PTR [rsp+0x40],r13d
3ca0cf	mov    DWORD PTR [rsp+0x38],r10d
3ca0d4	mov    DWORD PTR [rsp+0x30],r9d
3ca0d9	mov    BYTE PTR [rsp+0x28],0x0
3ca0de	jmp    0x3ca16b
3ca0e3	bt     edx,0x9
3ca0e7	jae    0x3ca116
3ca0e9	mov    rcx,QWORD PTR [r15]
3ca0ec	mov    rax,QWORD PTR [r15]
3ca0ef	mov    DWORD PTR [rsp+0x48],edx
3ca0f3	mov    DWORD PTR [rsp+0x40],r13d
3ca0f8	shr    rcx,0x3f
3ca0fc	mov    DWORD PTR [rsp+0x38],r10d
3ca101	neg    rax
3ca104	mov    QWORD PTR [rsp+0x30],r8
3ca109	cmovs  rax,QWORD PTR [r15]
3ca10d	mov    BYTE PTR [rsp+0x28],cl
3ca111	jmp    0x3ca06d
3ca116	bt     edx,0x8
3ca11a	jae    0x3ca12d
3ca11c	mov    ecx,DWORD PTR [r15]
3ca11f	mov    eax,DWORD PTR [r15]
3ca122	shr    ecx,0x1f
3ca125	neg    eax
3ca127	cmovs  eax,DWORD PTR [r15]
3ca12b	jmp    0x3ca154
3ca12d	test   dl,0x40
3ca130	je     0x3ca138
3ca132	movsx  r8d,BYTE PTR [r15]
3ca136	jmp    0x3ca145
3ca138	test   dl,dl
3ca13a	jns    0x3ca142
3ca13c	movsx  r8d,WORD PTR [r15]
3ca140	jmp    0x3ca145
3ca142	mov    r8d,DWORD PTR [r15]
3ca145	mov    ecx,r8d
3ca148	mov    eax,r8d
3ca14b	shr    ecx,0x1f
3ca14e	neg    eax
3ca150	cmovs  eax,r8d
3ca154	mov    DWORD PTR [rsp+0x48],edx
3ca158	mov    DWORD PTR [rsp+0x40],r13d
3ca15d	mov    DWORD PTR [rsp+0x38],r10d
3ca162	mov    DWORD PTR [rsp+0x30],r9d
3ca167	mov    BYTE PTR [rsp+0x28],cl
3ca16b	mov    r9,r12
3ca16e	mov    DWORD PTR [rsp+0x20],eax
3ca172	mov    r8,rbp
3ca175	mov    rdx,rsi
3ca178	mov    rcx,r11
3ca17b	call   0x3c97e8
3ca180	add    r15,0x8
3ca184	mov    QWORD PTR [rsp+0xf0],r15
3ca18c	jmp    0x3ca225
3ca191	cmp    BYTE PTR [rbx],0x67
3ca194	je     0x3ca19b
3ca196	cmp    BYTE PTR [rbx],0x47
3ca199	jne    0x3ca19f
3ca19b	bts    edi,0xb
3ca19f	cmp    BYTE PTR [rbx],0x45
3ca1a2	je     0x3ca1a9
3ca1a4	cmp    BYTE PTR [rbx],0x47
3ca1a7	jne    0x3ca1ac
3ca1a9	or     edi,0x20
3ca1ac	movsd  xmm0,QWORD PTR [r14]
3ca1b1	add    r15,0x8
3ca1b5	mov    DWORD PTR [rsp+0x38],edi
3ca1b9	mov    r9,r12
3ca1bc	mov    DWORD PTR [rsp+0x30],r13d
3ca1c1	mov    r8,rbp
3ca1c4	mov    DWORD PTR [rsp+0x28],r10d
3ca1c9	mov    rdx,rsi
3ca1cc	mov    rcx,r11
3ca1cf	movsd  QWORD PTR [rsp+0x20],xmm0
3ca1d5	mov    QWORD PTR [rsp+0xf0],r15
3ca1dd	call   0x3c8f74
3ca1e2	jmp    0x3ca225
3ca1e4	movsd  xmm0,QWORD PTR [r14]
3ca1e9	add    r15,0x8
3ca1ed	mov    eax,edi
3ca1ef	mov    QWORD PTR [rsp+0xf0],r15
3ca1f7	or     eax,0x20
3ca1fa	mov    r9,r12
3ca1fd	cmp    BYTE PTR [rbx],0x46
3ca200	mov    r8,rbp
3ca203	mov    rdx,rsi
3ca206	mov    rcx,r11
3ca209	cmovne eax,edi
3ca20c	mov    DWORD PTR [rsp+0x38],eax
3ca210	mov    DWORD PTR [rsp+0x30],r13d
3ca215	mov    DWORD PTR [rsp+0x28],r10d
3ca21a	movsd  QWORD PTR [rsp+0x20],xmm0
3ca220	call   0x3c92d8
3ca225	mov    rbp,rax
3ca228	mov    r11,QWORD PTR [rsp+0x60]
3ca22d	inc    rbx
3ca230	mov    al,BYTE PTR [rbx]
3ca232	test   al,al
3ca234	jne    0x3c9af3
3ca23a	cmp    rbp,r12
3ca23d	lea    r8,[r12-0x1]
3ca242	mov    r9,r12
3ca245	mov    rdx,rsi
3ca248	cmovb  r8,rbp
3ca24c	xor    ecx,ecx
3ca24e	call   r11
3ca251	mov    eax,ebp
3ca253	add    rsp,0x88
3ca25a	pop    r15
3ca25c	pop    r14
3ca25e	pop    r13
3ca260	pop    r12
3ca262	pop    rdi
3ca263	pop    rsi
3ca264	pop    rbp
3ca265	pop    rbx
3ca266	ret
