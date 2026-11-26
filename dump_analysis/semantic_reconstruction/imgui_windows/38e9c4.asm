38e9c4	mov    rax,rsp
38e9c7	mov    BYTE PTR [rax+0x20],r9b
38e9cb	mov    QWORD PTR [rax+0x18],r8
38e9cf	push   rbp
38e9d0	push   rbx
38e9d1	push   rsi
38e9d2	push   rdi
38e9d3	push   r12
38e9d5	push   r13
38e9d7	push   r14
38e9d9	push   r15
38e9db	mov    rbp,rsp
38e9de	sub    rsp,0x78
38e9e2	mov    rdi,QWORD PTR [rip+0x7713f]        # 0x405b28
38e9e9	mov    rsi,rcx
38e9ec	movaps XMMWORD PTR [rax-0x58],xmm6
38e9f0	lea    rcx,[rbp-0x48]
38e9f4	movaps XMMWORD PTR [rax-0x68],xmm7
38e9f8	mov    rbx,r8
38e9fb	movaps XMMWORD PTR [rax-0x78],xmm8
38ea00	mov    r14d,edx
38ea03	mov    r13,QWORD PTR [rdi+0x3f08]
38ea0a	mov    r12d,DWORD PTR [r13+0x14]
38ea0e	and    r12d,0x4
38ea12	or     r12d,DWORD PTR [rbp+0x68]
38ea16	mov    eax,r12d
38ea19	or     eax,0x1000103
38ea1e	mov    DWORD PTR [rbp+0x50],eax
38ea21	call   0x39233c
38ea26	mov    rdx,rbx
38ea29	lea    rcx,[rbp+0x48]
38ea2d	call   0x39307c
38ea32	movss  xmm8,DWORD PTR [rbp+0x48]
38ea38	xor    ecx,ecx
38ea3a	xorps  xmm7,xmm7
38ea3d	ucomiss xmm8,xmm7
38ea41	jp     0x38ea48
38ea43	lea    eax,[rcx+0x1]
38ea46	je     0x38ea4a
38ea48	mov    eax,ecx
38ea4a	movss  xmm6,DWORD PTR [rbp+0x4c]
38ea4f	ucomiss xmm6,xmm7
38ea52	jp     0x38ea5c
38ea54	mov    r15d,0x2
38ea5a	je     0x38ea5f
38ea5c	mov    r15d,ecx
38ea5f	movss  xmm1,DWORD PTR [rip+0xfffffffffff04711]        # 0x293178
38ea67	or     r15d,eax
38ea6a	comiss xmm7,xmm8
38ea6e	jb     0x38ea83
38ea70	movss  xmm0,DWORD PTR [rbp-0x48]
38ea75	addss  xmm0,xmm8
38ea7a	call   0x38a3f4
38ea7f	movaps xmm8,xmm0
38ea83	comiss xmm7,xmm6
38ea86	jb     0x38ea99
38ea88	movss  xmm0,DWORD PTR [rbp-0x44]
38ea8d	addss  xmm0,xmm6
38ea91	call   0x38a3f4
38ea96	movaps xmm6,xmm0
38ea99	mov    rbx,QWORD PTR [r13+0x8]
38ea9d	lea    rcx,[rbp+0x68]
38eaa1	test   rsi,rsi
38eaa4	je     0x38ead4
38eaa6	lea    rdx,[rbp-0x48]
38eaaa	call   0x38c534   ; STR "%s/%s_%08X"
38eaaf	mov    rcx,rax
38eab2	call   0x39eadc
38eab7	mov    r8,rax
38eaba	mov    DWORD PTR [rsp+0x28],r14d
38eabf	mov    r9,rbx
38eac2	mov    QWORD PTR [rsp+0x20],rsi
38eac7	xor    edx,edx
38eac9	lea    rcx,[rbp+0x48]
38eacd	call   0x393158
38ead2	jmp    0x38eafb
38ead4	lea    rdx,[rbp-0x48]
38ead8	call   0x38c884
38eadd	mov    rcx,rax
38eae0	call   0x39e8fc
38eae5	mov    r8,rax
38eae8	mov    DWORD PTR [rsp+0x20],r14d
38eaed	mov    r9,rbx
38eaf0	lea    rcx,[rbp+0x48]
38eaf4	xor    edx,edx
38eaf6	call   0x393158
38eafb	mov    rbx,QWORD PTR [rbp+0x48]
38eaff	mov    rcx,rbx
38eb02	call   0x391c78
38eb07	xor    esi,esi
38eb09	test   rax,rax
38eb0c	je     0x38eb63
38eb0e	mov    rax,QWORD PTR [rbp+0x58]
38eb12	movss  xmm0,DWORD PTR [rax+0x4]
38eb17	ucomiss xmm0,xmm7
38eb1a	jp     0x38eb40
38eb1c	jne    0x38eb40
38eb1e	mov    rax,QWORD PTR [rip+0x77003]        # 0x405b28
38eb25	mov    rcx,rbx
38eb28	movss  xmm6,DWORD PTR [rax+0x37dc]
38eb30	call   0x391c78
38eb35	addss  xmm6,xmm6
38eb39	addss  xmm6,DWORD PTR [rax+0x3c]
38eb3e	jmp    0x38eb48
38eb40	addss  xmm6,DWORD PTR [rip+0xffffffffffefe70c]        # 0x28d254
38eb48	movaps xmm2,xmm6
38eb4b	lea    rcx,[rbp+0x48]
38eb4f	movaps xmm1,xmm8
38eb53	call   0x2cc340
38eb58	xor    edx,edx
38eb5a	lea    rcx,[rbp+0x48]
38eb5e	call   0x39b770
38eb63	movss  xmm6,DWORD PTR [rdi+0x3800]
38eb6b	cmp    BYTE PTR [rbp+0x60],sil
38eb6f	jne    0x38eb77
38eb71	mov    DWORD PTR [rdi+0x3800],esi
38eb77	mov    r8d,DWORD PTR [rbp+0x50]
38eb7b	xor    edx,edx
38eb7d	mov    rcx,rbx
38eb80	call   0x38cfa4
38eb85	mov    rbx,QWORD PTR [rdi+0x3f08]
38eb8c	mov    sil,al
38eb8f	movss  DWORD PTR [rdi+0x3800],xmm6
38eb97	mov    eax,0x1
38eb9c	mov    DWORD PTR [rbx+0x80],r14d
38eba3	mov    BYTE PTR [rbx+0xd2],r15b
38ebaa	cmp    WORD PTR [rbx+0xc2],ax
38ebb1	jne    0x38ebc1
38ebb3	movsd  xmm0,QWORD PTR [rbx+0x20]
38ebb8	movsd  QWORD PTR [r13+0x100],xmm0
38ebc1	cmp    DWORD PTR [rdi+0x48f8],r14d
38ebc8	jne    0x38ec10
38ebca	bt     r12d,0x17
38ebcf	jb     0x38ec10
38ebd1	xor    eax,eax
38ebd3	cmp    WORD PTR [rbx+0x15c],ax
38ebda	jne    0x38ebe4
38ebdc	cmp    BYTE PTR [rbx+0x162],al
38ebe2	je     0x38ec10
38ebe4	xor    edx,edx
38ebe6	mov    rcx,rbx
38ebe9	call   0x391efc
38ebee	xor    edx,edx
38ebf0	mov    rcx,rbx
38ebf3	call   0x395500
38ebf8	lea    ecx,[r14+0x1]
38ebfc	mov    rdx,rbx
38ebff	call   0x39b0cc
38ec04	mov    eax,DWORD PTR [rdi+0x491c]
38ec0a	mov    DWORD PTR [rdi+0x3f90],eax
38ec10	movaps xmm6,XMMWORD PTR [rsp+0x60]
38ec15	mov    al,sil
38ec18	movaps xmm7,XMMWORD PTR [rsp+0x50]
38ec1d	movaps xmm8,XMMWORD PTR [rsp+0x40]
38ec23	add    rsp,0x78
38ec27	pop    r15
38ec29	pop    r14
38ec2b	pop    r13
38ec2d	pop    r12
38ec2f	pop    rdi
38ec30	pop    rsi
38ec31	pop    rbx
38ec32	pop    rbp
38ec33	ret
