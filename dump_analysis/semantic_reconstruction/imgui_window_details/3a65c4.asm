3a65c4	mov    QWORD PTR [rsp+0x18],rbx
3a65c9	mov    QWORD PTR [rsp+0x10],rdx
3a65ce	push   rbp
3a65cf	push   rsi
3a65d0	push   rdi
3a65d1	push   r12
3a65d3	push   r13
3a65d5	push   r14
3a65d7	push   r15
3a65d9	sub    rsp,0x20
3a65dd	cmp    DWORD PTR [rcx+0x4],0x1
3a65e1	mov    rdi,rdx
3a65e4	mov    rbp,rcx
3a65e7	jle    0x3a6837
3a65ed	xor    r8d,r8d
3a65f0	call   0x3a8094
3a65f5	mov    rcx,rdi
3a65f8	call   0x3a9220
3a65fd	xor    r13d,r13d
3a6600	xor    r12d,r12d
3a6603	mov    DWORD PTR [rsp+0x60],r13d
3a6608	cmp    DWORD PTR [rbp+0x4],r12d
3a660c	jle    0x3a662d
3a660e	cmp    DWORD PTR [rdi],r12d
3a6611	jle    0x3a662d
3a6613	mov    rcx,rdi
3a6616	call   0x39e324
3a661b	mov    rbx,rax
3a661e	test   rax,rax
3a6621	je     0x3a662f
3a6623	mov    r14d,DWORD PTR [rax+0x20]
3a6627	add    r14d,DWORD PTR [rax+0x1c]
3a662b	jmp    0x3a6632
3a662d	xor    ebx,ebx
3a662f	xor    r14d,r14d
3a6632	mov    r15d,0x1
3a6638	cmp    DWORD PTR [rbp+0x4],r15d
3a663c	jle    0x3a6724
3a6642	mov    edx,r15d
3a6645	lea    rcx,[rbp+0x8]
3a6649	call   0x38bb9c
3a664e	mov    rsi,rax
3a6651	cmp    DWORD PTR [rax],0x0
3a6654	jle    0x3a66d1
3a6656	mov    rcx,rax
3a6659	call   0x39e324
3a665e	cmp    DWORD PTR [rax+0x20],0x0
3a6662	jne    0x3a667b
3a6664	mov    rcx,rsi
3a6667	call   0x39e324
3a666c	cmp    QWORD PTR [rax+0x28],0x0
3a6671	jne    0x3a667b
3a6673	mov    rcx,rsi
3a6676	call   0x39eea0
3a667b	cmp    DWORD PTR [rsi],0x0
3a667e	jle    0x3a66e1
3a6680	test   rbx,rbx
3a6683	je     0x3a66d1
3a6685	xor    edx,edx
3a6687	mov    rcx,rsi
3a668a	call   0x38bb90
3a668f	mov    r8d,0x1c
3a6695	mov    rdx,rax
3a6698	mov    rcx,rbx
3a669b	mov    r13,rax
3a669e	call   0x3c8d14
3a66a3	test   eax,eax
3a66a5	jne    0x3a66cc
3a66a7	cmp    QWORD PTR [rbx+0x28],0x0
3a66ac	jne    0x3a66cc
3a66ae	cmp    QWORD PTR [r13+0x28],0x0
3a66b3	jne    0x3a66cc
3a66b5	mov    eax,DWORD PTR [r13+0x20]
3a66b9	mov    rcx,rsi
3a66bc	add    DWORD PTR [rbx+0x20],eax
3a66bf	add    r14d,DWORD PTR [r13+0x20]
3a66c3	mov    rdx,QWORD PTR [rsi+0x8]
3a66c7	call   0x3a93cc
3a66cc	mov    r13d,DWORD PTR [rsp+0x60]
3a66d1	cmp    DWORD PTR [rsi],0x0
3a66d4	jle    0x3a66e1
3a66d6	mov    rcx,rsi
3a66d9	call   0x39e324
3a66de	mov    rbx,rax
3a66e1	add    r13d,DWORD PTR [rsi+0x10]
3a66e5	xor    edx,edx
3a66e7	add    r12d,DWORD PTR [rsi]
3a66ea	mov    DWORD PTR [rsp+0x60],r13d
3a66ef	cmp    DWORD PTR [rsi],edx
3a66f1	jle    0x3a6712
3a66f3	movsxd rax,edx
3a66f6	inc    edx
3a66f8	imul   rcx,rax,0x38
3a66fc	mov    rax,QWORD PTR [rsi+0x8]
3a6700	mov    DWORD PTR [rax+rcx*1+0x1c],r14d
3a6705	mov    rax,QWORD PTR [rsi+0x8]
3a6709	add    r14d,DWORD PTR [rcx+rax*1+0x20]
3a670e	cmp    edx,DWORD PTR [rsi]
3a6710	jl     0x3a66f3
3a6712	inc    r15d
3a6715	cmp    r15d,DWORD PTR [rbp+0x4]
3a6719	jl     0x3a6642
3a671f	mov    rdi,QWORD PTR [rsp+0x68]
3a6724	mov    edx,DWORD PTR [rdi]
3a6726	mov    rcx,rdi
3a6729	add    edx,r12d
3a672c	call   0x37ae84
3a6731	lea    rbx,[rdi+0x10]
3a6735	mov    edx,DWORD PTR [rbx]
3a6737	mov    rcx,rbx
3a673a	add    edx,r13d
3a673d	call   0x37ad04
3a6742	movsxd rcx,DWORD PTR [rdi]
3a6745	mov    r14d,0x1
3a674b	movsxd rax,r12d
3a674e	sub    rcx,rax
3a6751	movsxd rax,r13d
3a6754	imul   r12,rcx,0x38
3a6758	movsxd rcx,DWORD PTR [rbx]
3a675b	add    r12,QWORD PTR [rdi+0x8]
3a675f	sub    rcx,rax
3a6762	mov    rax,QWORD PTR [rdi+0x18]
3a6766	lea    r15,[rax+rcx*2]
3a676a	cmp    DWORD PTR [rbp+0x4],r14d
3a676e	jle    0x3a67c6
3a6770	mov    edx,r14d
3a6773	lea    rcx,[rbp+0x8]
3a6777	call   0x38bb9c
3a677c	mov    rsi,rax
3a677f	cmp    DWORD PTR [rax],0x0
3a6782	je     0x3a679d
3a6784	movsxd rcx,DWORD PTR [rax]
3a6787	mov    rdx,QWORD PTR [rax+0x8]
3a678b	imul   rbx,rcx,0x38
3a678f	mov    rcx,r12
3a6792	mov    r8,rbx
3a6795	call   0x3c8d4c
3a679a	add    r12,rbx
3a679d	cmp    DWORD PTR [rsi+0x10],0x0
3a67a1	je     0x3a67bd
3a67a3	movsxd rax,DWORD PTR [rsi+0x10]
3a67a7	mov    rcx,r15
3a67aa	mov    rdx,QWORD PTR [rsi+0x18]
3a67ae	lea    rbx,[rax+rax*1]
3a67b2	mov    r8,rbx
3a67b5	call   0x3c8d4c
3a67ba	add    r15,rbx
3a67bd	inc    r14d
3a67c0	cmp    r14d,DWORD PTR [rbp+0x4]
3a67c4	jl     0x3a6770
3a67c6	xor    ebx,ebx
3a67c8	mov    QWORD PTR [rdi+0x50],r15
3a67cc	cmp    DWORD PTR [rdi],ebx
3a67ce	je     0x3a67de
3a67d0	mov    rcx,rdi
3a67d3	call   0x39e324
3a67d8	cmp    QWORD PTR [rax+0x28],rbx
3a67dc	je     0x3a67e6
3a67de	mov    rcx,rdi
3a67e1	call   0x39fd18
3a67e6	movsxd rax,DWORD PTR [rdi]
3a67e9	lea    rdx,[rdi+0x88]
3a67f0	imul   rcx,rax,0x38
3a67f4	mov    rax,QWORD PTR [rdi+0x8]
3a67f8	lea    r9,[rcx+rax*1]
3a67fc	cmp    DWORD PTR [rcx+rax*1-0x18],ebx
3a6800	jne    0x3a6815
3a6802	movups xmm0,XMMWORD PTR [rdx]
3a6805	movups XMMWORD PTR [r9-0x38],xmm0
3a680a	movups xmm1,XMMWORD PTR [rdx+0xc]
3a680e	movups XMMWORD PTR [r9-0x2c],xmm1
3a6813	jmp    0x3a6830
3a6815	mov    r8d,0x1c
3a681b	lea    rcx,[r9-0x38]
3a681f	call   0x3c8d14
3a6824	test   eax,eax
3a6826	je     0x3a6830
3a6828	mov    rcx,rdi
3a682b	call   0x39fd18
3a6830	mov    DWORD PTR [rbp+0x4],0x1
3a6837	mov    rbx,QWORD PTR [rsp+0x70]
3a683c	add    rsp,0x20
3a6840	pop    r15
3a6842	pop    r14
3a6844	pop    r13
3a6846	pop    r12
3a6848	pop    rdi
3a6849	pop    rsi
3a684a	pop    rbp
3a684b	ret
