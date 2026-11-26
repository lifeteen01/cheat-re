3915b4	mov    rax,rsp
3915b7	mov    QWORD PTR [rax+0x10],rdx
3915bb	push   rbp
3915bc	push   rbx
3915bd	push   rsi
3915be	push   rdi
3915bf	push   r12
3915c1	push   r13
3915c3	push   r14
3915c5	push   r15
3915c7	lea    rbp,[rax-0x47]
3915cb	sub    rsp,0x98
3915d2	mov    r13,QWORD PTR [rbp+0x6f]
3915d6	mov    rbx,rdx
3915d9	mov    rdi,QWORD PTR [rbp+0x77]
3915dd	mov    r14,rcx
3915e0	movaps XMMWORD PTR [rax-0x58],xmm6
3915e4	lea    rcx,[rbp-0x71]
3915e8	movaps XMMWORD PTR [rax-0x68],xmm7
3915ec	mov    rsi,r9
3915ef	lea    rdx,[r13+0x8]
3915f3	mov    r12,r8
3915f6	call   0x3367e4
3915fb	mov    r8,r13
3915fe	lea    rcx,[rbp+0x6f]
391602	mov    rdx,rbx
391605	mov    r9,QWORD PTR [rax]
391608	call   0x393018
39160d	mov    edx,DWORD PTR [rbp+0x7f]
391610	cmp    edx,0x1
391613	jne    0x3917be
391619	mov    eax,DWORD PTR [rsi]
39161b	movdqa xmm0,XMMWORD PTR [rip+0xfffffffffff18b4d]        # 0x2aa170
391623	inc    eax
391625	neg    eax
391627	movdqu XMMWORD PTR [rbp-0x49],xmm0
39162c	sbb    r15d,r15d
39162f	cmp    r15d,0xffffffff
391633	jne    0x391639
391635	mov    ebx,DWORD PTR [rsi]
391637	jmp    0x391648
391639	movsxd rax,r15d
39163c	mov    ebx,DWORD PTR [rbp+rax*4-0x49]
391640	cmp    ebx,DWORD PTR [rsi]
391642	je     0x391702
391648	lea    rcx,[rbp+0x6f]
39164c	call   0x2d4870
391651	cmp    ebx,0x3
391654	jne    0x391676
391656	movss  xmm2,DWORD PTR [rdi+0xc]
39165b	lea    rcx,[rbp-0x71]
39165f	movss  xmm1,DWORD PTR [rdi]
391663	call   0x2cc340
391668	movsd  xmm6,QWORD PTR [rax]
39166c	movsd  QWORD PTR [rbp+0x6f],xmm6
391671	jmp    0x39179f
391676	cmp    ebx,0x1
391679	jne    0x39179a
39167f	movss  xmm2,DWORD PTR [rdi+0x4]
391684	lea    rcx,[rbp-0x69]
391688	subss  xmm2,DWORD PTR [r12+0x4]
39168f	movss  xmm1,DWORD PTR [rdi]
391693	call   0x2cc340
391698	movsd  xmm6,QWORD PTR [rax]
39169c	movsd  QWORD PTR [rbp+0x6f],xmm6
3916a1	cmp    ebx,0x2
3916a4	jne    0x3916cf
3916a6	movss  xmm2,DWORD PTR [rdi+0x4]
3916ab	lea    rcx,[rbp-0x59]
3916af	subss  xmm2,DWORD PTR [r12+0x4]
3916b6	movss  xmm1,DWORD PTR [rdi+0x8]
3916bb	subss  xmm1,DWORD PTR [r12]
3916c1	call   0x2cc340
3916c6	movsd  xmm6,QWORD PTR [rax]
3916ca	movsd  QWORD PTR [rbp+0x6f],xmm6
3916cf	mov    r8,r12
3916d2	lea    rdx,[rbp+0x6f]
3916d6	lea    rcx,[rbp-0x51]
3916da	call   0x2ef9d8
3916df	mov    r8,rax
3916e2	lea    rdx,[rbp+0x6f]
3916e6	lea    rcx,[rbp-0x39]
3916ea	call   0x2db388
3916ef	mov    rdx,rax
3916f2	mov    rcx,r13
3916f5	call   0x390790
3916fa	test   al,al
3916fc	jne    0x3917b5
391702	inc    r15d
391705	cmp    r15d,0x4
391709	jl     0x39162f
39170f	mov    DWORD PTR [rsi],0xffffffff
391715	movss  xmm0,DWORD PTR [r12+0x4]
39171c	mov    rax,QWORD PTR [rbp+0x57]
391720	movss  xmm1,DWORD PTR [r13+0xc]
391726	addss  xmm0,DWORD PTR [rax+0x4]
39172b	call   0x3762cc
391730	subss  xmm0,DWORD PTR [r12+0x4]
391737	movss  xmm1,DWORD PTR [r13+0x4]
39173d	call   0x38a3f4
391742	movss  xmm1,DWORD PTR [r13+0x8]
391748	movaps xmm2,xmm0
39174b	movss  xmm0,DWORD PTR [r12]
391751	addss  xmm0,DWORD PTR [rax]
391755	call   0x3762cc
39175a	subss  xmm0,DWORD PTR [r12]
391760	movss  xmm1,DWORD PTR [r13+0x0]
391766	call   0x38a3f4
39176b	movss  DWORD PTR [r14],xmm0
391770	movss  DWORD PTR [r14+0x4],xmm2
391776	movaps xmm6,XMMWORD PTR [rsp+0x80]
39177e	mov    rax,r14
391781	movaps xmm7,XMMWORD PTR [rsp+0x70]
391786	add    rsp,0x98
39178d	pop    r15
39178f	pop    r14
391791	pop    r13
391793	pop    r12
391795	pop    rdi
391796	pop    rsi
391797	pop    rbx
391798	pop    rbp
391799	ret
39179a	movsd  xmm6,QWORD PTR [rbp+0x6f]
39179f	test   ebx,ebx
3917a1	jne    0x3916a1
3917a7	movss  xmm2,DWORD PTR [rdi+0xc]
3917ac	lea    rcx,[rbp-0x61]
3917b0	jmp    0x3916b6
3917b5	mov    DWORD PTR [rsi],ebx
3917b7	movsd  QWORD PTR [r14],xmm6
3917bc	jmp    0x391776
3917be	test   edx,0xfffffffd
3917c4	jne    0x391850
3917ca	mov    eax,DWORD PTR [rsi]
3917cc	movdqa xmm0,XMMWORD PTR [rip+0xfffffffffff1898c]        # 0x2aa160
3917d4	inc    eax
3917d6	neg    eax
3917d8	movdqu XMMWORD PTR [rbp-0x49],xmm0
3917dd	sbb    ecx,ecx
3917df	cmp    ecx,0xffffffff
3917e2	jne    0x3917e8
3917e4	mov    ebx,DWORD PTR [rsi]
3917e6	jmp    0x3917f3
3917e8	movsxd rax,ecx
3917eb	mov    ebx,DWORD PTR [rbp+rax*4-0x49]
3917ef	cmp    ebx,DWORD PTR [rsi]
3917f1	je     0x391845
3917f3	test   ebx,ebx
3917f5	jne    0x391886
3917fb	movss  xmm1,DWORD PTR [rdi]
3917ff	movss  xmm3,DWORD PTR [r13+0x0]
391805	cmp    ebx,0x2
391808	jne    0x39189a
39180e	movss  xmm0,DWORD PTR [rdi+0x4]
391813	movss  xmm2,DWORD PTR [r13+0x4]
391819	movss  xmm7,DWORD PTR [r12]
39181f	subss  xmm1,xmm3
391823	comiss xmm7,xmm1
391826	jbe    0x39182d
391828	cmp    ebx,0x1
39182b	jbe    0x391845
39182d	movss  xmm6,DWORD PTR [r12+0x4]
391834	subss  xmm0,xmm2
391838	comiss xmm6,xmm0
39183b	jbe    0x3918b3
39183d	lea    eax,[rbx-0x2]
391840	cmp    eax,0x1
391843	ja     0x3918b3
391845	inc    ecx
391847	cmp    ecx,0x4
39184a	jl     0x3917df
39184c	mov    rbx,QWORD PTR [rbp+0x57]
391850	mov    DWORD PTR [rsi],0xffffffff
391856	cmp    edx,0x2
391859	jne    0x391715
39185f	movss  xmm1,DWORD PTR [rip+0xfffffffffff018cd]        # 0x293134
391867	lea    rcx,[rbp+0x6f]
39186b	movaps xmm2,xmm1
39186e	call   0x2cc340
391873	mov    r8,rax
391876	mov    rdx,rbx
391879	mov    rcx,r14
39187c	call   0x2ef9d8
391881	jmp    0x391776
391886	movss  xmm1,DWORD PTR [r13+0x8]
39188c	cmp    ebx,0x1
39188f	jne    0x3917ff
391895	movss  xmm3,DWORD PTR [rdi+0x8]
39189a	movss  xmm0,DWORD PTR [r13+0xc]
3918a0	cmp    ebx,0x3
3918a3	jne    0x391813
3918a9	movss  xmm2,DWORD PTR [rdi+0xc]
3918ae	jmp    0x391819
3918b3	lea    rcx,[rbp-0x51]
3918b7	call   0x2d4870
3918bc	test   ebx,ebx
3918be	jne    0x3918f8
3918c0	movss  xmm0,DWORD PTR [rdi]
3918c4	subss  xmm0,xmm7
3918c8	movss  xmm3,DWORD PTR [rbp+0x73]
3918cd	movss  xmm1,DWORD PTR [r13+0x0]
3918d3	call   0x38a3f4
3918d8	movss  xmm1,DWORD PTR [r13+0x4]
3918de	movaps xmm2,xmm0
3918e1	movaps xmm0,xmm3
3918e4	call   0x38a3f4
3918e9	unpcklps xmm2,xmm0
3918ec	mov    DWORD PTR [rsi],ebx
3918ee	movsd  QWORD PTR [r14],xmm2
3918f3	jmp    0x391776
3918f8	cmp    ebx,0x1
3918fb	jne    0x391904
3918fd	movss  xmm0,DWORD PTR [rdi+0x8]
391902	jmp    0x3918c8
391904	movss  xmm0,DWORD PTR [rbp+0x6f]
391909	cmp    ebx,0x2
39190c	jne    0x391919
39190e	movss  xmm3,DWORD PTR [rdi+0x4]
391913	subss  xmm3,xmm6
391917	jmp    0x3918cd
391919	cmp    ebx,0x3
39191c	jne    0x3918c8
39191e	movss  xmm3,DWORD PTR [rdi+0xc]
391923	jmp    0x3918cd
