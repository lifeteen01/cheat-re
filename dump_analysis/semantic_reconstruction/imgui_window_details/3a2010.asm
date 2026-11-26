3a2010	mov    DWORD PTR [rsp+0x20],r9d
3a2015	mov    QWORD PTR [rsp+0x10],rdx
3a201a	push   rbp
3a201b	push   rsi
3a201c	push   rdi
3a201d	push   r12
3a201f	push   r13
3a2021	push   r14
3a2023	push   r15
3a2025	sub    rsp,0xd0
3a202c	lea    rbp,[rsp+0x40]
3a2031	mov    QWORD PTR [rbp+0xd0],rbx
3a2038	mov    r13,r8
3a203b	movaps XMMWORD PTR [rbp+0x80],xmm6
3a2042	mov    r14,rcx
3a2045	movaps XMMWORD PTR [rbp+0x70],xmm7
3a2049	test   r9d,0xff000000
3a2050	je     0x3a234e
3a2056	mov    r10d,DWORD PTR [rbp+0x100]
3a205d	mov    r15d,r10d
3a2060	movss  xmm3,DWORD PTR [rbp+0x108]
3a2068	and    r15d,0x200
3a206f	comiss xmm3,DWORD PTR [rip+0xffffffffffeeb1d6]        # 0x28d24c
3a2076	jbe    0x3a20ea
3a2078	mov    eax,r10d
3a207b	and    eax,0x1f0
3a2080	cmp    eax,0x100
3a2085	je     0x3a20ea
3a2087	mov    BYTE PTR [rbp+0x0],0x1
3a208b	test   r15d,r15d
3a208e	je     0x3a20f3
3a2090	mov    DWORD PTR [rsp+0x20],r10d
3a2095	call   0x3a6b78
3a209a	movsxd rdi,DWORD PTR [r14+0x78]
3a209e	mov    DWORD PTR [rbp+0x18],edi
3a20a1	lea    r8,[rdi*8+0x0]
3a20a9	lea    rax,[r8+0xf]
3a20ad	cmp    rax,r8
3a20b0	ja     0x3a20bc
3a20b2	movabs rax,0xffffffffffffff0
3a20bc	and    rax,0xfffffffffffffff0
3a20c0	call   0x2cd050
3a20c5	mov    rdx,QWORD PTR [r14+0x80]
3a20cc	sub    rsp,rax
3a20cf	lea    rbx,[rsp+0x40]
3a20d4	mov    rcx,rbx
3a20d7	mov    QWORD PTR [rbp+0x20],rbx
3a20db	call   0x3c8d4c
3a20e0	mov    DWORD PTR [r14+0x78],0x0
3a20e8	jmp    0x3a2110
3a20ea	mov    BYTE PTR [rbp+0x0],0x0
3a20ee	test   r15d,r15d
3a20f1	jne    0x3a2101
3a20f3	mov    edx,0x36
3a20f8	lea    r8d,[rdx-0x12]
3a20fc	call   0x3a719c
3a2101	mov    DWORD PTR [rbp+0x18],0x0
3a2108	mov    QWORD PTR [rbp+0x20],0x0
3a2110	xor    r12d,r12d
3a2113	xor    esi,esi
3a2115	mov    rax,QWORD PTR [r14+0x38]
3a2119	lea    ecx,[r12+rsi*2]
3a211d	add    ecx,esi
3a211f	movsxd rdi,ecx
3a2122	lea    rcx,[rbp+0x10]
3a2126	add    rdi,rdi
3a2129	mov    rbx,QWORD PTR [rax+0x218]
3a2130	call   0x2d4870
3a2135	lea    rcx,[rbp+0x8]
3a2139	call   0x2d4870
3a213e	mov    rdx,QWORD PTR [rbp+0xd8]
3a2145	mov    ecx,r12d
3a2148	test   r12d,r12d
3a214b	je     0x3a217d
3a214d	sub    ecx,0x1
3a2150	je     0x3a2171
3a2152	cmp    ecx,0x1
3a2155	jne    0x3a2196
3a2157	movss  xmm0,DWORD PTR [r13+0x0]
3a215d	movss  DWORD PTR [rbp+0x10],xmm0
3a2162	addss  xmm0,DWORD PTR [rbp+0xf0]
3a216a	movss  DWORD PTR [rbp+0x8],xmm0
3a216f	jmp    0x3a2196
3a2171	movss  xmm0,DWORD PTR [rdx]
3a2175	movss  xmm1,DWORD PTR [r13+0x0]
3a217b	jmp    0x3a218c
3a217d	movss  xmm1,DWORD PTR [rdx]
3a2181	movaps xmm0,xmm1
3a2184	subss  xmm0,DWORD PTR [rbp+0xf0]
3a218c	movss  DWORD PTR [rbp+0x8],xmm1
3a2191	movss  DWORD PTR [rbp+0x10],xmm0
3a2196	mov    ecx,esi
3a2198	test   esi,esi
3a219a	je     0x3a21d2
3a219c	sub    ecx,0x1
3a219f	je     0x3a21c0
3a21a1	cmp    ecx,0x1
3a21a4	jne    0x3a21ec
3a21a6	movss  xmm0,DWORD PTR [r13+0x4]
3a21ac	movss  DWORD PTR [rbp+0x14],xmm0
3a21b1	addss  xmm0,DWORD PTR [rbp+0xf0]
3a21b9	movss  DWORD PTR [rbp+0xc],xmm0
3a21be	jmp    0x3a21ec
3a21c0	movss  xmm1,DWORD PTR [r13+0x4]
3a21c6	movss  xmm0,DWORD PTR [rdx+0x4]
3a21cb	movss  DWORD PTR [rbp+0xc],xmm1
3a21d0	jmp    0x3a21e7
3a21d2	movss  xmm3,DWORD PTR [rdx+0x4]
3a21d7	movaps xmm0,xmm3
3a21da	movss  DWORD PTR [rbp+0xc],xmm3
3a21df	subss  xmm0,DWORD PTR [rbp+0xf0]
3a21e7	movss  DWORD PTR [rbp+0x14],xmm0
3a21ec	movss  xmm2,DWORD PTR [rbx+rdi*8+0x4]
3a21f2	lea    rcx,[rbp+0x30]
3a21f6	movss  xmm1,DWORD PTR [rbx+rdi*8]
3a21fb	call   0x2cc340
3a2200	movss  xmm2,DWORD PTR [rbx+rdi*8+0xc]
3a2206	lea    rcx,[rbp+0x28]
3a220a	movss  xmm1,DWORD PTR [rbx+rdi*8+0x8]
3a2210	call   0x2cc340
3a2215	mov    r8,QWORD PTR [rbp+0xf8]
3a221c	test   r15d,r15d
3a221f	jne    0x3a226f
3a2221	lea    rdx,[rbp+0x8]
3a2225	lea    rcx,[rbp+0x38]
3a2229	call   0x2ef9d8
3a222e	mov    r8,QWORD PTR [rbp+0xf8]
3a2235	lea    rdx,[rbp+0x10]
3a2239	lea    rcx,[rbp+0x40]
3a223d	mov    rbx,rax
3a2240	call   0x2ef9d8
3a2245	mov    rdx,rax
3a2248	lea    r9,[rbp+0x30]
3a224c	mov    eax,DWORD PTR [rbp+0xe8]
3a2252	mov    r8,rbx
3a2255	mov    DWORD PTR [rsp+0x28],eax
3a2259	mov    rcx,r14
3a225c	lea    rax,[rbp+0x28]
3a2260	mov    QWORD PTR [rsp+0x20],rax
3a2265	call   0x3a7020
3a226a	jmp    0x3a2336
3a226f	cmp    BYTE PTR [rbp+0x0],0x0
3a2273	je     0x3a22d0
3a2275	lea    rdx,[rbp+0x8]
3a2279	lea    rcx,[rbp+0x48]
3a227d	call   0x2ef9d8
3a2282	mov    r8,QWORD PTR [rbp+0xf8]
3a2289	lea    rdx,[rbp+0x10]
3a228d	lea    rcx,[rbp+0x50]
3a2291	mov    rbx,rax
3a2294	call   0x2ef9d8
3a2299	mov    rdx,rax
3a229c	lea    r9,[rbp+0x30]
3a22a0	mov    eax,DWORD PTR [rbp+0xe8]
3a22a6	mov    r8,rbx
3a22a9	mov    DWORD PTR [rsp+0x38],eax
3a22ad	mov    rcx,r14
3a22b0	mov    eax,DWORD PTR [rbp+0x18]
3a22b3	mov    DWORD PTR [rsp+0x30],eax
3a22b7	mov    rax,QWORD PTR [rbp+0x20]
3a22bb	mov    QWORD PTR [rsp+0x28],rax
3a22c0	lea    rax,[rbp+0x28]
3a22c4	mov    QWORD PTR [rsp+0x20],rax
3a22c9	call   0x3a2374
3a22ce	jmp    0x3a2336
3a22d0	mov    rdx,QWORD PTR [rbp+0xd8]
3a22d7	lea    rcx,[rbp+0x58]
3a22db	movsd  xmm6,QWORD PTR [r13+0x0]
3a22e1	movsd  xmm7,QWORD PTR [rdx]
3a22e5	lea    rdx,[rbp+0x8]
3a22e9	call   0x2ef9d8
3a22ee	mov    r8,QWORD PTR [rbp+0xf8]
3a22f5	lea    rdx,[rbp+0x10]
3a22f9	lea    rcx,[rbp+0x60]
3a22fd	mov    rbx,rax
3a2300	call   0x2ef9d8
3a2305	mov    rdx,rax
3a2308	lea    r9,[rbp+0x30]
3a230c	mov    eax,DWORD PTR [rbp+0xe8]
3a2312	mov    r8,rbx
3a2315	mov    DWORD PTR [rsp+0x38],eax
3a2319	mov    rcx,r14
3a231c	movsd  QWORD PTR [rsp+0x30],xmm6
3a2322	lea    rax,[rbp+0x28]
3a2326	movsd  QWORD PTR [rsp+0x28],xmm7
3a232c	mov    QWORD PTR [rsp+0x20],rax
3a2331	call   0x3a2b34
3a2336	inc    esi
3a2338	cmp    esi,0x3
3a233b	jl     0x3a2115
3a2341	inc    r12d
3a2344	cmp    r12d,0x3
3a2348	jl     0x3a2113
3a234e	mov    rbx,QWORD PTR [rbp+0xd0]
3a2355	movaps xmm6,XMMWORD PTR [rbp+0x80]
3a235c	movaps xmm7,XMMWORD PTR [rbp+0x70]
3a2360	lea    rsp,[rbp+0x90]
3a2367	pop    r15
3a2369	pop    r14
3a236b	pop    r13
3a236d	pop    r12
3a236f	pop    rdi
3a2370	pop    rsi
3a2371	pop    rbp
3a2372	ret
