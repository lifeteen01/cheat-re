3c3390	mov    rax,rsp
3c3393	mov    QWORD PTR [rax+0x8],rbx
3c3397	mov    QWORD PTR [rax+0x20],r9
3c339b	mov    DWORD PTR [rax+0x10],edx
3c339e	push   rbp
3c339f	push   rsi
3c33a0	push   rdi
3c33a1	push   r12
3c33a3	push   r13
3c33a5	push   r14
3c33a7	push   r15
3c33a9	lea    rbp,[rax-0x47]
3c33ad	sub    rsp,0x100
3c33b4	mov    rsi,QWORD PTR [rip+0x4276d]        # 0x405b28
3c33bb	mov    r13d,edx
3c33be	movaps XMMWORD PTR [rax-0x48],xmm6
3c33c2	mov    r14,rcx
3c33c5	movaps XMMWORD PTR [rax-0x58],xmm7
3c33c9	movaps XMMWORD PTR [rax-0x68],xmm8
3c33ce	mov    r15,QWORD PTR [rsi+0x3f08]
3c33d5	movaps XMMWORD PTR [rax-0x78],xmm9
3c33da	movaps XMMWORD PTR [rax-0x88],xmm10
3c33e2	movaps XMMWORD PTR [rax-0x98],xmm11
3c33ea	cmp    BYTE PTR [r15+0xbb],0x0
3c33f2	movaps XMMWORD PTR [rax-0xa8],xmm12
3c33fa	movaps XMMWORD PTR [rax-0xb8],xmm14
3c3402	movaps XMMWORD PTR [rsp+0x70],xmm15
3c3408	movsxd r12,r8d
3c340b	jne    0x3c3845
3c3411	call   0x378970
3c3416	mov    rcx,r14
3c3419	movaps xmm8,xmm0
3c341d	call   0x378934
3c3422	xorps  xmm7,xmm7
3c3425	movaps xmm2,xmm0
3c3428	comiss xmm7,xmm8
3c342c	jae    0x3c3845
3c3432	comiss xmm7,xmm2
3c3435	jae    0x3c3845
3c343b	movss  xmm9,DWORD PTR [rip+0xffffffffffec9e10]        # 0x28d254
3c3444	cmp    r12d,0x1
3c3448	jne    0x3c3480
3c344a	movss  xmm1,DWORD PTR [rsi+0x3810]
3c3452	movss  xmm3,DWORD PTR [rsi+0x3c30]
3c345a	addss  xmm1,xmm1
3c345e	movaps xmm0,xmm1
3c3461	addss  xmm0,xmm3
3c3465	comiss xmm0,xmm2
3c3468	jbe    0x3c3480
3c346a	movaps xmm0,xmm2
3c346d	subss  xmm0,xmm3
3c3471	divss  xmm0,xmm1
3c3475	call   0x3789fc
3c347a	movaps xmm10,xmm0
3c347e	jmp    0x3c3484
3c3480	movaps xmm10,xmm9
3c3484	comiss xmm7,xmm10
3c3488	jae    0x3c3845
3c348e	movups xmm0,XMMWORD PTR [r14]
3c3492	movss  xmm6,DWORD PTR [rip+0xffffffffffecfc9a]        # 0x293134
3c349a	xorps  xmm1,xmm1
3c349d	movss  xmm4,DWORD PTR [rip+0xffffffffffecfcb3]        # 0x293158
3c34a5	subss  xmm2,xmm6
3c34a9	movdqu XMMWORD PTR [rsp+0x48],xmm0
3c34af	comiss xmm10,xmm9
3c34b3	mulss  xmm2,DWORD PTR [rip+0xffffffffffec9d95]        # 0x28d250
3c34bb	setae  BYTE PTR [rsp+0x32]
3c34c0	cvttss2si eax,xmm2
3c34c4	movaps xmm2,xmm4
3c34c7	movd   xmm0,eax
3c34cb	cvtdq2ps xmm0,xmm0
3c34ce	call   0x3762bc
3c34d3	movss  xmm3,DWORD PTR [rip+0xffffffffffecfdc5]        # 0x2932a0
3c34db	subss  xmm8,xmm6
3c34e0	movaps xmm5,xmm0
3c34e3	movaps xmm2,xmm4
3c34e6	xorps  xmm1,xmm1
3c34e9	xorps  xmm5,xmm3
3c34ec	mulss  xmm8,DWORD PTR [rip+0xffffffffffec9d5b]        # 0x28d250
3c34f5	cvttss2si eax,xmm8
3c34fa	movd   xmm0,eax
3c34fe	cvtdq2ps xmm0,xmm0
3c3501	call   0x3762bc
3c3506	xorps  xmm0,xmm3
3c3509	lea    rcx,[rsp+0x34]
3c350e	movaps xmm1,xmm0
3c3511	movaps xmm2,xmm5
3c3514	call   0x2cc340
3c3519	mov    rdx,rax
3c351c	lea    rcx,[rsp+0x48]
3c3521	call   0x3911cc
3c3526	lea    rcx,[rsp+0x48]
3c352b	test   r12d,r12d
3c352e	jne    0x3c3537
3c3530	call   0x378970
3c3535	jmp    0x3c353c
3c3537	call   0x378934
3c353c	mov    rdi,QWORD PTR [rbp+0x6f]
3c3540	movaps xmm11,xmm0
3c3544	mov    rbx,QWORD PTR [rbp+0x77]
3c3548	xorps  xmm0,xmm0
3c354b	mov    rdx,rdi
3c354e	mov    rcx,rbx
3c3551	cvtsi2ss xmm0,rdi
3c3556	call   0x3b5b74
3c355b	mov    rcx,rax
3c355e	mov    edx,0x1
3c3563	call   0x3b5b74
3c3568	xorps  xmm1,xmm1
3c356b	movaps xmm2,xmm11
3c356f	cvtsi2ss xmm1,rax
3c3574	divss  xmm0,xmm1
3c3578	movss  xmm1,DWORD PTR [rsi+0x384c]
3c3580	mulss  xmm0,xmm11
3c3585	call   0x3762bc
3c358a	mov    r9d,0x8
3c3590	mov    BYTE PTR [rsp+0x30],0x0
3c3595	xor    r8d,r8d
3c3598	mov    BYTE PTR [rsp+0x31],0x0
3c359d	mov    edx,r13d
3c35a0	mov    rcx,r14
3c35a3	movaps xmm12,xmm0
3c35a7	call   0x3948dc
3c35ac	lea    r9,[rsp+0x30]
3c35b1	mov    DWORD PTR [rsp+0x20],0x40000
3c35b9	lea    r8,[rsp+0x31]
3c35be	mov    edx,r13d
3c35c1	lea    rcx,[rsp+0x48]
3c35c6	call   0x3bc7e0
3c35cb	sub    rbx,rdi
3c35ce	movaps xmm15,xmm11
3c35d2	mov    rdx,rbx
3c35d5	subss  xmm15,xmm12
3c35da	mov    ecx,0x1
3c35df	call   0x3b5b74
3c35e4	xorps  xmm0,xmm0
3c35e7	xorps  xmm14,xmm14
3c35eb	cvtsi2ss xmm14,rax
3c35f0	mov    rax,QWORD PTR [rbp+0x67]
3c35f4	cvtsi2ss xmm0,QWORD PTR [rax]
3c35f9	divss  xmm0,xmm14
3c35fe	call   0x3789fc
3c3603	mov    r13b,BYTE PTR [rsp+0x30]
3c3608	movaps xmm7,xmm0
3c360b	mulss  xmm7,xmm15
3c3610	divss  xmm7,xmm11
3c3615	test   r13b,r13b
3c3618	je     0x3c3732
3c361e	cmp    BYTE PTR [rsp+0x32],0x0
3c3623	je     0x3c3732
3c3629	movaps xmm8,xmm12
3c362d	divss  xmm8,xmm11
3c3632	comiss xmm9,xmm8
3c3636	jbe    0x3c3732
3c363c	lea    rcx,[rsi+0xe08]
3c3643	mov    rdx,r12
3c3646	call   0x38bbcc
3c364b	mov    rdx,r12
3c364e	lea    rcx,[rsp+0x48]
3c3653	mov    rdi,rax
3c3656	call   0x38bbcc
3c365b	movss  xmm0,DWORD PTR [rdi]
3c365f	subss  xmm0,DWORD PTR [rax]
3c3663	divss  xmm0,xmm11
3c3668	call   0x3789fc
3c366d	mov    ecx,DWORD PTR [rbp+0x57]
3c3670	movaps xmm6,xmm0
3c3673	call   0x39b52c
3c3678	xor    cl,cl
3c367a	cmp    BYTE PTR [rsi+0x3f74],cl
3c3680	je     0x3c36c1
3c3682	comiss xmm7,xmm6
3c3685	ja     0x3c36b5
3c3687	movaps xmm1,xmm7
3c368a	addss  xmm1,xmm8
3c368f	comiss xmm6,xmm1
3c3692	ja     0x3c36b5
3c3694	movaps xmm1,xmm6
3c3697	movaps xmm0,xmm8
3c369b	mulss  xmm0,DWORD PTR [rip+0xffffffffffec9bad]        # 0x28d250
3c36a3	subss  xmm1,xmm7
3c36a7	subss  xmm1,xmm0
3c36ab	movss  DWORD PTR [rsi+0x5ba8],xmm1
3c36b3	jmp    0x3c36c1
3c36b5	mov    DWORD PTR [rsi+0x5ba8],0x0
3c36bf	mov    cl,0x1
3c36c1	movaps xmm0,xmm6
3c36c4	movaps xmm1,xmm9
3c36c8	subss  xmm0,DWORD PTR [rsi+0x5ba8]
3c36d0	subss  xmm1,xmm8
3c36d5	movaps xmm2,xmm8
3c36d9	mulss  xmm2,DWORD PTR [rip+0xffffffffffec9b6f]        # 0x28d250
3c36e1	subss  xmm0,xmm2
3c36e5	divss  xmm0,xmm1
3c36e9	call   0x3789fc
3c36ee	mov    rdx,QWORD PTR [rbp+0x67]
3c36f2	mulss  xmm0,xmm14
3c36f7	cvttss2si rax,xmm0
3c36fc	xorps  xmm0,xmm0
3c36ff	mov    QWORD PTR [rdx],rax
3c3702	cvtsi2ss xmm0,rax
3c3707	divss  xmm0,xmm14
3c370c	call   0x3789fc
3c3711	movaps xmm7,xmm0
3c3714	mulss  xmm7,xmm15
3c3719	divss  xmm7,xmm11
3c371e	test   cl,cl
3c3720	je     0x3c3732
3c3722	subss  xmm6,xmm7
3c3726	subss  xmm6,xmm2
3c372a	movss  DWORD PTR [rsi+0x5ba8],xmm6
3c3732	movaps xmm1,xmm9
3c3736	mov    ecx,0xf
3c373b	call   0x392298
3c3740	mov    cl,BYTE PTR [rsp+0x31]
3c3744	mov    ebx,eax
3c3746	neg    cl
3c3748	mov    eax,0x12
3c374d	movaps xmm1,xmm10
3c3751	sbb    ecx,ecx
3c3753	neg    ecx
3c3755	add    ecx,0x10
3c3758	test   r13b,r13b
3c375b	cmovne ecx,eax
3c375e	call   0x392298
3c3763	mov    ecx,DWORD PTR [rbp+0x7f]
3c3766	lea    r8,[r14+0x8]
3c376a	movss  xmm0,DWORD PTR [r15+0x58]
3c3770	mov    r9d,ebx
3c3773	mov    DWORD PTR [rsp+0x28],ecx
3c3777	mov    rdx,r14
3c377a	mov    rcx,QWORD PTR [r15+0x298]
3c3781	mov    edi,eax
3c3783	movss  DWORD PTR [rsp+0x20],xmm0
3c3789	call   0x3a1244
3c378e	lea    rcx,[rsp+0x58]
3c3793	call   0x38bb2c
3c3798	movaps xmm2,xmm7
3c379b	test   r12d,r12d
3c379e	jne    0x3c37d0
3c37a0	movss  xmm1,DWORD PTR [rsp+0x50]
3c37a6	movss  xmm0,DWORD PTR [rsp+0x48]
3c37ac	call   0x33565c
3c37b1	movss  xmm1,DWORD PTR [rsp+0x54]
3c37b7	movaps xmm3,xmm0
3c37ba	movss  xmm2,DWORD PTR [rsp+0x4c]
3c37c0	addss  xmm3,xmm12
3c37c5	movss  DWORD PTR [rsp+0x20],xmm1
3c37cb	movaps xmm1,xmm0
3c37ce	jmp    0x3c37fe
3c37d0	movss  xmm1,DWORD PTR [rsp+0x54]
3c37d6	movss  xmm0,DWORD PTR [rsp+0x4c]
3c37dc	call   0x33565c
3c37e1	movss  xmm1,DWORD PTR [rsp+0x48]
3c37e7	movaps xmm3,xmm0
3c37ea	addss  xmm3,xmm12
3c37ef	movaps xmm2,xmm0
3c37f2	movss  DWORD PTR [rsp+0x20],xmm3
3c37f8	movss  xmm3,DWORD PTR [rsp+0x50]
3c37fe	lea    rcx,[rsp+0x34]
3c3803	call   0x38baf4
3c3808	mov    DWORD PTR [rsp+0x28],0x0
3c3810	lea    r8,[rsp+0x60]
3c3815	mov    r9d,edi
3c3818	lea    rdx,[rsp+0x58]
3c381d	movups xmm0,XMMWORD PTR [rax]
3c3820	movdqu XMMWORD PTR [rsp+0x58],xmm0
3c3826	mov    rcx,QWORD PTR [r15+0x298]
3c382d	movss  xmm0,DWORD PTR [rsi+0x3848]
3c3835	movss  DWORD PTR [rsp+0x20],xmm0
3c383b	call   0x3a1244
3c3840	mov    al,r13b
3c3843	jmp    0x3c3847
3c3845	xor    al,al
3c3847	movaps xmm15,XMMWORD PTR [rsp+0x70]
3c384d	lea    r11,[rsp+0x100]
3c3855	mov    rbx,QWORD PTR [r11+0x40]
3c3859	movaps xmm6,XMMWORD PTR [r11-0x10]
3c385e	movaps xmm7,XMMWORD PTR [r11-0x20]
3c3863	movaps xmm8,XMMWORD PTR [r11-0x30]
3c3868	movaps xmm9,XMMWORD PTR [r11-0x40]
3c386d	movaps xmm10,XMMWORD PTR [r11-0x50]
3c3872	movaps xmm11,XMMWORD PTR [r11-0x60]
3c3877	movaps xmm12,XMMWORD PTR [r11-0x70]
3c387c	movaps xmm14,XMMWORD PTR [r11-0x80]
3c3881	mov    rsp,r11
3c3884	pop    r15
3c3886	pop    r14
3c3888	pop    r13
3c388a	pop    r12
3c388c	pop    rdi
3c388d	pop    rsi
3c388e	pop    rbp
3c388f	ret
