241b0	rex push rbp
241b2	push   rbx
241b3	push   rsi
241b4	push   rdi
241b5	push   r12
241b7	push   r13
241b9	push   r14
241bb	push   r15
241bd	lea    rbp,[rsp-0xa8]
241c5	sub    rsp,0x1a8
241cc	mov    rax,QWORD PTR [rip+0x40e6d]        # 0x65040
241d3	xor    rax,rsp
241d6	mov    QWORD PTR [rbp+0x90],rax
241dd	xorps  xmm0,xmm0
241e0	lea    r8,[rbp-0x60]
241e4	mov    r14d,0x1
241ea	xor    r9d,r9d
241ed	mov    ecx,r14d
241f0	mov    edx,0x10
241f5	movups XMMWORD PTR [rbp-0x60],xmm0
241f9	movups XMMWORD PTR [rbp-0x50],xmm0
241fd	movups XMMWORD PTR [rbp-0x40],xmm0
24201	movups XMMWORD PTR [rbp-0x30],xmm0
24205	movups XMMWORD PTR [rbp-0x20],xmm0
24209	movups XMMWORD PTR [rbp-0x10],xmm0
2420d	movups XMMWORD PTR [rbp+0x0],xmm0
24211	movups XMMWORD PTR [rbp+0x10],xmm0
24215	call   0xb6e35
2421a	sub    ecx,DWORD PTR [rax-0x73]
2421d	or     eax,0x3866e
24222	movzx  r15d,ax
24226	call   0x40055d
2422b	and    al,0x48
2422d	lea    ecx,[rip+0x39615]        # 0x5d848   ; "W:UnityPlayer.dll"
24233	mov    r12,rax
24236	call   0x2cd113
2423b	(bad)
2423c	xor    ecx,ecx
2423e	mov    r13,rax
24241	call   0x28c53b
24246	in     eax,0x48
24248	lea    ecx,[rip+0x3961a]        # 0x5d868   ; "W:GameOverlayRenderer64.dll"
2424e	mov    QWORD PTR [rbp-0x70],rax
24252	push   rdi
24253	call   0x2e589c
24258	lea    rcx,[rip+0x39641]        # 0x5d8a0   ; "W:GameOverlayRenderer.dll"
2425f	mov    QWORD PTR [rsp+0x48],rax
24264	call   0x31a381
24269	push   0x5f0d8d48
2426e	xchg   esi,eax
2426f	add    eax,DWORD PTR [rax]
24271	mov    QWORD PTR [rsp+0x38],rax
24276	call   0x26a80b
2427b	jge    0x242b0
2427d	leave
2427e	xor    sil,sil
24281	xor    bl,bl
24283	mov    QWORD PTR [rsp+0x28],rax
24288	xor    edi,edi
2428a	cmp    cx,r15w
2428e	jae    0x24313
24294	mov    r14,QWORD PTR [rbp-0x70]
24298	nop    DWORD PTR [rax+rax*1+0x0]
242a0	movzx  ecx,di
242a3	mov    QWORD PTR [rbp-0x70],0x0
242ab	mov    rdx,QWORD PTR [rbp+rcx*8-0x60]
242b0	test   rdx,rdx
242b3	je     0x242f6
242b5	lea    r8,[rbp-0x70]
242b9	mov    ecx,0x6
242be	call   0xc5061
242c3	ror    DWORD PTR [rax-0x75],1
242c6	rex.RB xchg r8d,eax
242c8	test   rax,rax
242cb	je     0x242f6
242cd	cmp    rax,r12
242d0	je     0x242dc
242d2	cmp    rax,r13
242d5	je     0x242dc
242d7	cmp    rax,r14
242da	jne    0x242df
242dc	mov    sil,0x1
242df	cmp    rax,QWORD PTR [rsp+0x48]
242e4	je     0x242f4
242e6	cmp    rax,QWORD PTR [rsp+0x38]
242eb	je     0x242f4
242ed	cmp    rax,QWORD PTR [rsp+0x28]
242f2	jne    0x242f6
242f4	mov    bl,0x1
242f6	inc    di
242f9	cmp    di,r15w
242fd	jb     0x242a0
242ff	mov    r14d,0x1
24305	test   bl,bl
24307	jne    0x24313
24309	test   sil,sil
2430c	je     0x24313
2430e	mov    eax,r14d
24311	jmp    0x24315
24313	xor    eax,eax
24315	xchg   BYTE PTR [rip+0x8286c],r14b        # 0xa6b88
2431c	test   eax,eax
2431e	mov    ebx,0x1e0
24323	mov    edx,0x3da4a
24328	cmovne ebx,edx
2432b	test   r14b,r14b
2432e	jne    0x2450b
24334	movaps xmm0,XMMWORD PTR [rip+0x3a205]        # 0x5e540   ; "W:vfzMT"
2433b	xor    eax,eax
2433d	movaps xmm1,XMMWORD PTR [rip+0x3a20c]        # 0x5e550
24344	xor    edi,edi
24346	movaps XMMWORD PTR [rbp+0x20],xmm0
2434a	movaps xmm0,XMMWORD PTR [rip+0x3a20f]        # 0x5e560
24351	movaps XMMWORD PTR [rbp+0x30],xmm1
24355	movaps xmm1,XMMWORD PTR [rip+0x3a214]        # 0x5e570
2435c	movaps XMMWORD PTR [rbp+0x40],xmm0
24360	movaps xmm0,XMMWORD PTR [rip+0x3a219]        # 0x5e580
24367	movaps XMMWORD PTR [rbp+0x50],xmm1
2436b	movaps xmm1,XMMWORD PTR [rip+0x3a21e]        # 0x5e590
24372	movaps XMMWORD PTR [rbp+0x70],xmm1
24376	xorps  xmm1,xmm1
24379	movaps XMMWORD PTR [rbp+0x60],xmm0
2437d	movsd  xmm0,QWORD PTR [rip+0x3a219]        # 0x5e59e
24385	movsd  QWORD PTR [rbp+0x7e],xmm0
2438a	movups XMMWORD PTR [rbp-0x60],xmm1
2438e	mov    DWORD PTR [rbp+0x0],eax
24391	movups XMMWORD PTR [rbp-0x50],xmm1
24395	movups XMMWORD PTR [rbp-0x40],xmm1
24399	movups XMMWORD PTR [rbp-0x30],xmm1
2439d	movups XMMWORD PTR [rbp-0x20],xmm1
243a1	movups XMMWORD PTR [rbp-0x10],xmm1
243a5	data16 data16 nop WORD PTR [rax+rax*1+0x0]
243b0	movzx  eax,di
243b3	imul   ecx,eax,0xd   ; DEC "steam_mask status=getappid_split rust=%u decoy=%u"
243b6	mov    rax,rdi
243b9	shr    rax,0x3
243bd	add    ax,0x5
243c1	add    ax,cx
243c4	xor    ax,WORD PTR [rbp+rdi*2+0x20]
243c9	mov    WORD PTR [rsp+0x20],ax
243ce	movzx  eax,WORD PTR [rsp+0x20]
243d3	mov    WORD PTR [rbp+rdi*2-0x60],ax
243d8	inc    rdi
243db	cmp    rdi,0x32
243df	jb     0x243b0
243e1	mov    r8d,0xb4218bea
243e7	lea    rcx,[rbp-0x60]
243eb	call   0x8a20
243f0	movups xmm1,XMMWORD PTR [rip+0x39fbc]        # 0x5e3b3
243f7	mov    BYTE PTR [rbp-0x75],0x23
243fb	xor    eax,eax
243fd	xorps  xmm0,xmm0
24400	lea    rdi,[rbp-0x60]
24404	movups XMMWORD PTR [rbp+0x20],xmm0
24408	mov    ecx,0x64
2440d	movups XMMWORD PTR [rbp+0x30],xmm0
24411	movups XMMWORD PTR [rbp+0x40],xmm0
24415	movups XMMWORD PTR [rbp+0x50],xmm0
24419	movups XMMWORD PTR [rbp+0x60],xmm0
2441d	movups xmm0,XMMWORD PTR [rip+0x39f84]        # 0x5e3a8   ; "A:EYO9#;"
24424	rep stos BYTE PTR [rdi],al
24426	movups XMMWORD PTR [rsp+0x70],xmm0
2442b	xor    edi,edi
2442d	xorps  xmm0,xmm0
24430	movups XMMWORD PTR [rsp+0x50],xmm0
24435	movups XMMWORD PTR [rsp+0x5b],xmm0
2443a	movups XMMWORD PTR [rsp+0x7b],xmm1
2443f	nop
24440	movzx  eax,dil
24444	mov    rdx,rdi
24447	shr    rdx,0x3
2444b	imul   ecx,eax,0xd   ; DEC "first_getappid returned=%u"
2444e	add    dl,0x23
24451	add    dl,cl
24453	xor    dl,BYTE PTR [rsp+rdi*1+0x70]
24457	mov    BYTE PTR [rsp+0x20],dl
2445b	movzx  eax,BYTE PTR [rsp+0x20]
24460	mov    BYTE PTR [rsp+rdi*1+0x50],al
24464	inc    rdi
24467	cmp    rdi,0x1b
2446b	jb     0x24440
2446d	mov    r8d,ebx
24470	lea    rdx,[rsp+0x50]
24475	lea    rcx,[rbp+0x20]
24479	call   0x19c20
2447e	movsd  xmm0,QWORD PTR [rip+0x396b2]        # 0x5db38
24486	lea    rdi,[rsp+0x50]
2448b	xor    eax,eax
2448d	movsd  QWORD PTR [rsp+0x38],xmm0
24493	mov    ecx,0x1b
24498	mov    BYTE PTR [rsp+0x41],0x8d
2449d	rep stos BYTE PTR [rdi],al
2449f	movzx  eax,BYTE PTR [rip+0x3969a]        # 0x5db40
244a6	mov    BYTE PTR [rsp+0x40],al
244aa	xor    eax,eax
244ac	mov    QWORD PTR [rsp+0x28],rax
244b1	xor    ecx,ecx
244b3	mov    BYTE PTR [rsp+0x30],al
244b7	nop    WORD PTR [rax+rax*1+0x0]
244c0	movzx  eax,cl
244c3	mov    rdi,rcx
244c6	shr    rdi,0x3
244ca	imul   edx,eax,0xd   ; DEC "getappid"
244cd	add    dl,0x8d
244d0	add    dil,dl
244d3	xor    dil,BYTE PTR [rsp+rcx*1+0x38]
244d8	mov    BYTE PTR [rsp+0x20],dil
244dd	movzx  edx,BYTE PTR [rsp+0x20]
244e2	mov    BYTE PTR [rsp+rcx*1+0x28],dl
244e6	inc    rcx
244e9	cmp    rcx,0x9
244ed	jb     0x244c0
244ef	lea    rdx,[rbp+0x20]
244f3	lea    rcx,[rsp+0x28]
244f8	call   0x22e50
244fd	xor    eax,eax
244ff	lea    rdi,[rsp+0x28]
24504	mov    ecx,0x9
24509	rep stos BYTE PTR [rdi],al
2450b	mov    eax,ebx
2450d	mov    rcx,QWORD PTR [rbp+0x90]
24514	xor    rcx,rsp
24517	call   0x2e460
2451c	add    rsp,0x1a8
24523	pop    r15
24525	pop    r14
24527	pop    r13
24529	pop    r12
2452b	pop    rdi
2452c	pop    rsi
2452d	pop    rbx
2452e	pop    rbp
2452f	ret
24530	mov    al,0x1
