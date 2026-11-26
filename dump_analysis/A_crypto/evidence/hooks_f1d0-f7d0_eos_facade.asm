f1d0	rex push rdi
f1d2	sub    rsp,0x90
f1d9	movups xmm0,XMMWORD PTR [rip+0x49160]        # 0x58340
f1e0	mov    eax,DWORD PTR [rip+0x4918a]        # 0x58370
f1e6	mov    edi,0xd9
f1eb	movups xmm1,XMMWORD PTR [rip+0x4915e]        # 0x58350
f1f2	mov    DWORD PTR [rsp+0x88],eax
f1f9	xor    eax,eax
f1fb	movups XMMWORD PTR [rsp+0x58],xmm0
f200	mov    WORD PTR [rsp+0x8c],0xd9
f20a	movups xmm0,XMMWORD PTR [rip+0x4914f]        # 0x58360
f211	mov    DWORD PTR [rsp+0x50],eax
f215	movups XMMWORD PTR [rsp+0x68],xmm1
f21a	movups XMMWORD PTR [rsp+0x78],xmm0
f21f	xorps  xmm0,xmm0
f222	movups XMMWORD PTR [rsp+0x20],xmm0
f227	movups XMMWORD PTR [rsp+0x30],xmm0
f22c	movups XMMWORD PTR [rsp+0x40],xmm0
f231	nop    DWORD PTR [rax+0x0]
f235	data16 data16 nop WORD PTR [rax+rax*1+0x0]
f240	movzx  ecx,ax
f243	imul   edx,ecx,0xd
f246	mov    rcx,rax
f249	shr    rcx,0x3
f24d	add    cx,dx
f250	add    cx,di
f253	xor    cx,WORD PTR [rsp+rax*2+0x58]
f258	mov    WORD PTR [rsp+0xa0],cx
f260	movzx  ecx,WORD PTR [rsp+0xa0]
f268	mov    WORD PTR [rsp+rax*2+0x20],cx
f26d	inc    rax
f270	cmp    rax,0x1a
f274	jb     0xf240
f276	lea    rcx,[rsp+0x20]
f27b	call   0x8a20
f280	xor    eax,eax
f282	lea    rdi,[rsp+0x20]
f287	mov    ecx,0x34
f28c	rep stos BYTE PTR [rdi],al
f28e	lea    rax,[rip+0x489e3]        # 0x57c78   ; "A:1.19.0.3-49960398"
f295	add    rsp,0x90
f29c	pop    rdi
f29d	ret
f29e	int3
f29f	int3
f2a0	rex push rbp
f2a2	push   rbx
f2a3	push   rsi
f2a4	push   rdi
f2a5	push   r14
f2a7	lea    rbp,[rsp-0x10]
f2ac	sub    rsp,0x110
f2b3	mov    rax,QWORD PTR [rip+0x9716e]        # 0xa6428
f2ba	mov    rbx,rdx
f2bd	mov    QWORD PTR [rsp+0x150],r15
f2c5	mov    r14,rcx
f2c8	call   rax
f2ca	cmp    r14,QWORD PTR [rip+0x97257]        # 0xa6528
f2d1	mov    rsi,rax
f2d4	jne    0xf31d
f2d6	cmp    rbx,0x10000
f2dd	jb     0xf31d
f2df	lea    rdi,[rip+0x9729a]        # 0xa6580
f2e6	lea    r15,[rip+0x973ab]        # 0xa6698
f2ed	nop    DWORD PTR [rax]
f2f0	mov    rdx,QWORD PTR [rdi]
f2f3	mov    rcx,rbx
f2f6	call   0x47cf0
f2fb	test   eax,eax
f2fd	je     0xf30a
f2ff	add    rdi,0x28
f303	cmp    rdi,r15
f306	jne    0xf2f0
f308	jmp    0xf31d
f30a	cmp    rsi,QWORD PTR [rdi+0x8]
f30e	je     0xf319
f310	mov    BYTE PTR [rip+0x5cda9],0x0        # 0x6c0c0
f317	jmp    0xf31d
f319	mov    rsi,QWORD PTR [rdi+0x10]
f31d	cmp    r14,QWORD PTR [rip+0x970c4]        # 0xa63e8
f324	mov    r15,QWORD PTR [rsp+0x150]
f32c	jne    0xf6dc
f332	cmp    rbx,0xffff
f339	jbe    0xf6dc
f33f	lea    rdx,[rip+0x4894a]        # 0x57c90   ; "A:EOS_Initialize"
f346	mov    rcx,rbx
f349	call   0x47cf0
f34e	test   eax,eax
f350	je     0xf6ed
f356	lea    rdx,[rip+0x48943]        # 0x57ca0   ; "A:EOS_Logging_SetLogLevel"
f35d	mov    rcx,rbx
f360	call   0x47cf0
f365	test   eax,eax
f367	je     0xf6ed
f36d	lea    rdx,[rip+0x48944]        # 0x57cb8   ; "A:EOS_Logging_SetCallback"
f374	mov    rcx,rbx
f377	call   0x47cf0
f37c	test   eax,eax
f37e	je     0xf6ed
f384	lea    rdx,[rip+0x48945]        # 0x57cd0   ; "A:EOS_Platform_Create"
f38b	mov    rcx,rbx
f38e	call   0x47cf0
f393	test   eax,eax
f395	jne    0xf463
f39b	movaps xmm0,XMMWORD PTR [rip+0x48bfe]        # 0x57fa0
f3a2	xor    eax,eax
f3a4	movaps xmm1,XMMWORD PTR [rip+0x48c05]        # 0x57fb0
f3ab	mov    edi,0xb2
f3b0	movaps XMMWORD PTR [rbp-0x60],xmm0
f3b4	movaps xmm0,XMMWORD PTR [rip+0x48c05]        # 0x57fc0
f3bb	movaps XMMWORD PTR [rbp-0x50],xmm1
f3bf	movaps xmm1,XMMWORD PTR [rip+0x48c0a]        # 0x57fd0
f3c6	movaps XMMWORD PTR [rbp-0x30],xmm1
f3ca	xorps  xmm1,xmm1
f3cd	movaps XMMWORD PTR [rbp-0x40],xmm0
f3d1	movups xmm0,XMMWORD PTR [rip+0x48c06]        # 0x57fde
f3d8	movups XMMWORD PTR [rsp+0x60],xmm1
f3dd	movups XMMWORD PTR [rbp-0x22],xmm0
f3e1	movups XMMWORD PTR [rsp+0x30],xmm1
f3e6	movups XMMWORD PTR [rsp+0x40],xmm1
f3eb	movups XMMWORD PTR [rsp+0x50],xmm1
f3f0	movups XMMWORD PTR [rsp+0x6c],xmm1
f3f5	data16 data16 nop WORD PTR [rax+rax*1+0x0]
f400	movzx  ecx,ax
f403	imul   edx,ecx,0xd
f406	mov    rcx,rax
f409	shr    rcx,0x3
f40d	add    cx,dx
f410	add    cx,di
f413	xor    cx,WORD PTR [rbp+rax*2-0x60]
f418	mov    WORD PTR [rsp+0x20],cx
f41d	movzx  ecx,WORD PTR [rsp+0x20]
f422	mov    WORD PTR [rsp+rax*2+0x30],cx
f427	inc    rax
f42a	cmp    rax,0x26
f42e	jb     0xf400
f430	mov    r8,rbx
f433	lea    rcx,[rsp+0x30]
f438	mov    rdx,r14
f43b	call   0x8a20
f440	xor    eax,eax
f442	lea    rdi,[rsp+0x30]
f447	mov    ecx,0x4c
f44c	rep stos BYTE PTR [rdi],al
f44e	lea    rax,[rip+0xfffffffffffffbbb]        # 0xf010
f455	add    rsp,0x110
f45c	pop    r14
f45e	pop    rdi
f45f	pop    rsi
f460	pop    rbx
f461	pop    rbp
f462	ret
f463	lea    rdx,[rip+0x4887e]        # 0x57ce8   ; "A:EOS_Platform_GetAntiCheatClientInterface"
f46a	mov    rcx,rbx
f46d	call   0x47cf0
f472	test   eax,eax
f474	jne    0xf543
f47a	movaps xmm0,XMMWORD PTR [rip+0x48e6f]        # 0x582f0
f481	xor    eax,eax
f483	movaps xmm1,XMMWORD PTR [rip+0x48e76]        # 0x58300
f48a	mov    edi,0xab
f48f	movaps XMMWORD PTR [rbp-0x60],xmm0
f493	movaps xmm0,XMMWORD PTR [rip+0x48e76]        # 0x58310
f49a	movaps XMMWORD PTR [rbp-0x50],xmm1
f49e	movaps xmm1,XMMWORD PTR [rip+0x48e7b]        # 0x58320
f4a5	movaps XMMWORD PTR [rbp-0x30],xmm1
f4a9	xorps  xmm1,xmm1
f4ac	movaps XMMWORD PTR [rbp-0x40],xmm0
f4b0	movups xmm0,XMMWORD PTR [rip+0x48e77]        # 0x5832e
f4b7	movups XMMWORD PTR [rsp+0x60],xmm1
f4bc	movups XMMWORD PTR [rbp-0x22],xmm0
f4c0	movups XMMWORD PTR [rsp+0x30],xmm1
f4c5	movups XMMWORD PTR [rsp+0x40],xmm1
f4ca	movups XMMWORD PTR [rsp+0x50],xmm1
f4cf	movups XMMWORD PTR [rsp+0x6c],xmm1
f4d4	nop    DWORD PTR [rax+0x0]
f4d8	nop    DWORD PTR [rax+rax*1+0x0]
f4e0	movzx  ecx,ax
f4e3	imul   edx,ecx,0xd
f4e6	mov    rcx,rax
f4e9	shr    rcx,0x3
f4ed	add    cx,dx
f4f0	add    cx,di
f4f3	xor    cx,WORD PTR [rbp+rax*2-0x60]
f4f8	mov    WORD PTR [rsp+0x20],cx
f4fd	movzx  ecx,WORD PTR [rsp+0x20]
f502	mov    WORD PTR [rsp+rax*2+0x30],cx
f507	inc    rax
f50a	cmp    rax,0x26
f50e	jb     0xf4e0
f510	mov    r8,rbx
f513	lea    rcx,[rsp+0x30]
f518	mov    rdx,r14
f51b	call   0x8a20
f520	xor    eax,eax
f522	lea    rdi,[rsp+0x30]
f527	mov    ecx,0x4c
f52c	rep stos BYTE PTR [rdi],al
f52e	lea    rax,[rip+0xfffffffffffffbbb]        # 0xf0f0
f535	add    rsp,0x110
f53c	pop    r14
f53e	pop    rdi
f53f	pop    rsi
f540	pop    rbx
f541	pop    rbp
f542	ret
f543	lea    rdx,[rip+0x487ce]        # 0x57d18   ; "A:EOS_GetVersion"
f54a	mov    rcx,rbx
f54d	call   0x47cf0
f552	test   eax,eax
f554	jne    0xf614
f55a	movaps xmm0,XMMWORD PTR [rip+0x48e1f]        # 0x58380
f561	xor    eax,eax
f563	movaps xmm1,XMMWORD PTR [rip+0x48e26]        # 0x58390
f56a	movaps XMMWORD PTR [rbp-0x60],xmm0
f56e	movaps xmm0,XMMWORD PTR [rip+0x48e2b]        # 0x583a0
f575	movaps XMMWORD PTR [rbp-0x50],xmm1
f579	movaps xmm1,XMMWORD PTR [rip+0x48e30]        # 0x583b0
f580	movaps XMMWORD PTR [rbp-0x30],xmm1
f584	xorps  xmm1,xmm1
f587	movaps XMMWORD PTR [rbp-0x40],xmm0
f58b	movups xmm0,XMMWORD PTR [rip+0x48e2c]        # 0x583be
f592	movups XMMWORD PTR [rsp+0x60],xmm1
f597	movups XMMWORD PTR [rbp-0x22],xmm0
f59b	movups XMMWORD PTR [rsp+0x30],xmm1
f5a0	movups XMMWORD PTR [rsp+0x40],xmm1
f5a5	movups XMMWORD PTR [rsp+0x50],xmm1
f5aa	movups XMMWORD PTR [rsp+0x6c],xmm1
f5af	nop
f5b0	movzx  ecx,ax
f5b3	imul   edx,ecx,0xd   ; DEC "eos_facade resolve module=%p name=%hs"
f5b6	mov    rcx,rax
f5b9	shr    rcx,0x3
f5bd	add    cx,0x23
f5c1	add    cx,dx
f5c4	xor    cx,WORD PTR [rbp+rax*2-0x60]
f5c9	mov    WORD PTR [rsp+0x20],cx
f5ce	movzx  ecx,WORD PTR [rsp+0x20]
f5d3	mov    WORD PTR [rsp+rax*2+0x30],cx
f5d8	inc    rax
f5db	cmp    rax,0x26
f5df	jb     0xf5b0
f5e1	mov    r8,rbx
f5e4	lea    rcx,[rsp+0x30]
f5e9	mov    rdx,r14
f5ec	call   0x8a20
f5f1	xor    eax,eax
f5f3	lea    rdi,[rsp+0x30]
f5f8	mov    ecx,0x4c
f5fd	rep stos BYTE PTR [rdi],al
f5ff	lea    rax,[rip+0xfffffffffffffbca]        # 0xf1d0
f606	add    rsp,0x110
f60d	pop    r14
f60f	pop    rdi
f610	pop    rsi
f611	pop    rbx
f612	pop    rbp
f613	ret
f614	movaps xmm0,XMMWORD PTR [rip+0x48a25]        # 0x58040
f61b	xor    eax,eax
f61d	movaps xmm1,XMMWORD PTR [rip+0x48a2c]        # 0x58050
f624	mov    edi,0xba
f629	movaps XMMWORD PTR [rsp+0x30],xmm0
f62e	movaps xmm0,XMMWORD PTR [rip+0x48a2b]        # 0x58060
f635	movaps XMMWORD PTR [rsp+0x40],xmm1
f63a	movaps xmm1,XMMWORD PTR [rip+0x48a2f]        # 0x58070
f641	movaps XMMWORD PTR [rsp+0x50],xmm0
f646	movaps xmm0,XMMWORD PTR [rip+0x48a33]        # 0x58080
f64d	movaps XMMWORD PTR [rsp+0x60],xmm1
f652	movaps xmm1,XMMWORD PTR [rip+0x48a37]        # 0x58090
f659	movaps XMMWORD PTR [rbp-0x80],xmm1
f65d	xorps  xmm1,xmm1
f660	movaps XMMWORD PTR [rsp+0x70],xmm0
f665	movups xmm0,XMMWORD PTR [rip+0x48a30]        # 0x5809c
f66c	movups XMMWORD PTR [rbp-0x10],xmm1
f670	movups XMMWORD PTR [rbp-0x74],xmm0
f674	movups XMMWORD PTR [rbp-0x60],xmm1
f678	movups XMMWORD PTR [rbp-0x50],xmm1
f67c	movups XMMWORD PTR [rbp-0x40],xmm1
f680	movups XMMWORD PTR [rbp-0x30],xmm1
f684	movups XMMWORD PTR [rbp-0x20],xmm1
f688	movups XMMWORD PTR [rbp-0x6],xmm1
f68c	nop    DWORD PTR [rax+0x0]
f690	movzx  ecx,ax
f693	imul   edx,ecx,0xd
f696	mov    rcx,rax
f699	shr    rcx,0x3
f69d	add    cx,dx
f6a0	add    cx,di
f6a3	xor    cx,WORD PTR [rsp+rax*2+0x30]
f6a8	mov    WORD PTR [rsp+0x20],cx
f6ad	movzx  ecx,WORD PTR [rsp+0x20]
f6b2	mov    WORD PTR [rbp+rax*2-0x60],cx
f6b7	inc    rax
f6ba	cmp    rax,0x35
f6be	jb     0xf690
f6c0	mov    r8,rbx
f6c3	lea    rcx,[rbp-0x60]
f6c7	mov    rdx,r14
f6ca	call   0x8a20
f6cf	xor    eax,eax
f6d1	lea    rdi,[rbp-0x60]
f6d5	mov    ecx,0x6a
f6da	rep stos BYTE PTR [rdi],al
f6dc	mov    rax,rsi
f6df	add    rsp,0x110
f6e6	pop    r14
f6e8	pop    rdi
f6e9	pop    rsi
f6ea	pop    rbx
f6eb	pop    rbp
f6ec	ret
f6ed	movaps xmm0,XMMWORD PTR [rip+0x4885c]        # 0x57f50   ; "W:_('>"
f6f4	xor    eax,eax
f6f6	movaps xmm1,XMMWORD PTR [rip+0x48863]        # 0x57f60
f6fd	movaps XMMWORD PTR [rbp-0x60],xmm0
f701	movaps xmm0,XMMWORD PTR [rip+0x48868]        # 0x57f70
f708	movaps XMMWORD PTR [rbp-0x50],xmm1
f70c	movaps xmm1,XMMWORD PTR [rip+0x4886d]        # 0x57f80
f713	movaps XMMWORD PTR [rbp-0x30],xmm1
f717	xorps  xmm1,xmm1
f71a	movaps XMMWORD PTR [rbp-0x40],xmm0
f71e	movups xmm0,XMMWORD PTR [rip+0x48869]        # 0x57f8e
f725	movups XMMWORD PTR [rsp+0x60],xmm1
f72a	movups XMMWORD PTR [rbp-0x22],xmm0
f72e	movups XMMWORD PTR [rsp+0x30],xmm1
f733	movups XMMWORD PTR [rsp+0x40],xmm1
f738	movups XMMWORD PTR [rsp+0x50],xmm1
f73d	movups XMMWORD PTR [rsp+0x6c],xmm1
f742	movzx  ecx,ax
f745	imul   edx,ecx,0xd   ; DEC "eos_facade resolve module=%p name=%hs"
f748	mov    rcx,rax
f74b	shr    rcx,0x3
f74f	add    cx,0x3a
f753	add    cx,dx
f756	xor    cx,WORD PTR [rbp+rax*2-0x60]
f75b	mov    WORD PTR [rsp+0x20],cx
f760	movzx  ecx,WORD PTR [rsp+0x20]
f765	mov    WORD PTR [rsp+rax*2+0x30],cx
f76a	inc    rax
f76d	cmp    rax,0x26
f771	jb     0xf742
f773	mov    r8,rbx
f776	lea    rcx,[rsp+0x30]
f77b	mov    rdx,r14
f77e	call   0x8a20
f783	xor    eax,eax
f785	lea    rdi,[rsp+0x30]
f78a	mov    ecx,0x4c
f78f	rep stos BYTE PTR [rdi],al
f791	lea    rax,[rip+0xfffffffffffff7a8]        # 0xef40
f798	add    rsp,0x110
f79f	pop    r14
f7a1	pop    rdi
f7a2	pop    rsi
f7a3	pop    rbx
f7a4	pop    rbp
f7a5	ret
f7a6	int3
f7a7	int3
f7a8	int3
f7a9	int3
f7aa	int3
f7ab	int3
f7ac	int3
f7ad	int3
f7ae	int3
f7af	int3
f7b0	mov    QWORD PTR [rsp+0x8],rdi
f7b5	mov    rdi,rcx
f7b8	xor    eax,eax
f7ba	mov    ecx,0xd8
f7bf	rep stos BYTE PTR [rdi],al
f7c1	mov    rdi,QWORD PTR [rsp+0x8]
f7c6	ret
f7c7	int3
f7c8	int3
f7c9	int3
f7ca	int3
f7cb	int3
f7cc	int3
f7cd	int3
f7ce	int3
f7cf	int3
f7d0	rex push rdi
