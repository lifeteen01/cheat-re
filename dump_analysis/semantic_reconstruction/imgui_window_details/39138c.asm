39138c	mov    QWORD PTR [rsp+0x8],rbx
391391	mov    QWORD PTR [rsp+0x18],rsi
391396	push   rbp
391397	push   rdi
391398	push   r14
39139a	mov    rbp,rsp
39139d	sub    rsp,0x70
3913a1	mov    rbx,QWORD PTR [rip+0x74780]        # 0x405b28
3913a8	mov    rsi,rcx
3913ab	lea    rcx,[rbp-0x20]
3913af	movaps XMMWORD PTR [rsp+0x60],xmm6
3913b4	mov    rdi,rdx
3913b7	call   0x3929e8
3913bc	test   DWORD PTR [rdi+0x14],0x10000000
3913c3	je     0x391499
3913c9	lea    rcx,[rbx+0x3ed8]
3913d0	mov    edx,DWORD PTR [rcx]
3913d2	sub    edx,0x2
3913d5	call   0x38bbc0
3913da	movss  xmm6,DWORD PTR [rbx+0x3824]
3913e2	lea    rcx,[rbp-0x30]
3913e6	mov    r14,QWORD PTR [rax]
3913e9	call   0x38bb2c
3913ee	cmp    BYTE PTR [r14+0x163],0x0
3913f6	lea    rcx,[rbp-0x30]
3913fa	je     0x391420
3913fc	movss  xmm0,DWORD PTR [r14+0x244]
391405	movss  xmm3,DWORD PTR [rip+0xffffffffffefc747]        # 0x28db54
39140d	movss  xmm2,DWORD PTR [r14+0x23c]
391416	movss  xmm1,DWORD PTR [rip+0xfffffffffff18026]        # 0x2a9444
39141e	jmp    0x391450
391420	movss  xmm1,DWORD PTR [r14+0x20]
391426	movss  xmm0,DWORD PTR [rip+0xffffffffffefc726]        # 0x28db54
39142e	movaps xmm3,xmm1
391431	addss  xmm3,DWORD PTR [r14+0x28]
391437	movss  xmm2,DWORD PTR [rip+0xfffffffffff18005]        # 0x2a9444
39143f	addss  xmm1,xmm6
391443	subss  xmm3,xmm6
391447	subss  xmm3,DWORD PTR [r14+0xac]
391450	movss  DWORD PTR [rsp+0x20],xmm0
391456	call   0x38baf4
39145b	lea    rdx,[rdi+0x20]
39145f	movups xmm0,XMMWORD PTR [rax]
391462	lea    rax,[rbp-0x30]
391466	movdqu XMMWORD PTR [rbp-0x30],xmm0
39146b	mov    DWORD PTR [rsp+0x30],0x0
391473	mov    QWORD PTR [rsp+0x28],rax
391478	lea    r9,[rdi+0xd4]
39147f	lea    rax,[rbp-0x20]
391483	mov    rcx,rsi
391486	lea    r8,[rdi+0x28]
39148a	mov    QWORD PTR [rsp+0x20],rax
39148f	call   0x3915b4
391494	jmp    0x391596
391499	test   DWORD PTR [rdi+0x14],0x4000000
3914a0	je     0x3914ba
3914a2	lea    rbx,[rdi+0x20]
3914a6	mov    r8,rbx
3914a9	lea    rcx,[rbp-0x30]
3914ad	mov    rdx,rbx
3914b0	call   0x2db388
3914b5	mov    rdx,rbx
3914b8	jmp    0x39146b
3914ba	test   DWORD PTR [rdi+0x14],0x2000000
3914c1	je     0x39158d
3914c7	movss  xmm6,DWORD PTR [rbx+0x389c]
3914cf	lea    rcx,[rbp+0x28]
3914d3	call   0x3952b0
3914d8	lea    rcx,[rbp-0x30]
3914dc	call   0x38bb2c
3914e1	cmp    BYTE PTR [rbx+0x4926],0x0
3914e8	jne    0x391531
3914ea	cmp    BYTE PTR [rbx+0x4927],0x0
3914f1	je     0x391531
3914f3	test   BYTE PTR [rbx+0x8],0x4
3914f7	jne    0x391531
3914f9	movss  xmm2,DWORD PTR [rbp+0x2c]
3914fe	movss  xmm4,DWORD PTR [rip+0xffffffffffefccda]        # 0x28e1e0
391506	movaps xmm5,xmm2
391509	movss  xmm1,DWORD PTR [rbp+0x28]
39150e	addss  xmm5,xmm4
391512	movss  xmm0,DWORD PTR [rip+0xfffffffffff01ca2]        # 0x2931bc
39151a	subss  xmm2,xmm4
39151e	movaps xmm3,xmm1
391521	subss  xmm1,xmm0
391525	addss  xmm3,xmm0
391529	movss  DWORD PTR [rsp+0x20],xmm5
39152f	jmp    0x391567
391531	mulss  xmm6,DWORD PTR [rip+0xfffffffffff01c97]        # 0x2931d0
391539	movss  xmm2,DWORD PTR [rbp+0x2c]
39153e	movss  xmm1,DWORD PTR [rbp+0x28]
391543	movaps xmm0,xmm6
391546	addss  xmm6,xmm1
39154a	subss  xmm1,DWORD PTR [rip+0xfffffffffff01c6a]        # 0x2931bc
391552	addss  xmm0,xmm2
391556	subss  xmm2,DWORD PTR [rip+0xffffffffffefcc82]        # 0x28e1e0
39155e	movaps xmm3,xmm6
391561	movss  DWORD PTR [rsp+0x20],xmm0
391567	lea    rcx,[rbp-0x30]
39156b	call   0x38baf4
391570	mov    DWORD PTR [rsp+0x30],0x2
391578	lea    rdx,[rbp+0x28]
39157c	movups xmm0,XMMWORD PTR [rax]
39157f	lea    rax,[rbp-0x30]
391583	movdqu XMMWORD PTR [rbp-0x30],xmm0
391588	jmp    0x391473
39158d	movsd  xmm0,QWORD PTR [rdi+0x20]
391592	movsd  QWORD PTR [rsi],xmm0
391596	movaps xmm6,XMMWORD PTR [rsp+0x60]
39159b	lea    r11,[rsp+0x70]
3915a0	mov    rbx,QWORD PTR [r11+0x20]
3915a4	mov    rax,rsi
3915a7	mov    rsi,QWORD PTR [r11+0x30]
3915ab	mov    rsp,r11
3915ae	pop    r14
3915b0	pop    rdi
3915b1	pop    rbp
3915b2	ret
