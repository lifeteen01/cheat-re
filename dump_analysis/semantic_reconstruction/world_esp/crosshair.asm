3643b4	mov    rax,rsp
3643b7	push   rbp
3643b8	push   rbx
3643b9	push   rsi
3643ba	push   rdi
3643bb	push   r12
3643bd	push   r14
3643bf	push   r15
3643c1	lea    rbp,[rax-0x58]
3643c5	sub    rsp,0x120
3643cc	cmp    BYTE PTR [rip+0x98235],0x0        # 0x3fc608
3643d3	mov    r15d,r8d
3643d6	movaps XMMWORD PTR [rax-0x48],xmm6
3643da	mov    r14d,edx
3643dd	movaps XMMWORD PTR [rax-0x58],xmm7
3643e1	mov    rsi,rcx
3643e4	movaps XMMWORD PTR [rax-0x68],xmm8
3643e9	movaps XMMWORD PTR [rax-0x78],xmm9
3643ee	movaps XMMWORD PTR [rax-0x88],xmm10
3643f6	movaps XMMWORD PTR [rax-0x98],xmm11
3643fe	movaps XMMWORD PTR [rax-0xa8],xmm12
364406	movaps XMMWORD PTR [rax-0xb8],xmm13
36440e	movaps XMMWORD PTR [rax-0xc8],xmm14
364416	movaps XMMWORD PTR [rax-0xd8],xmm15
36441e	mov    edi,r9d
364421	je     0x3649f8
364427	movss  xmm13,DWORD PTR [rip+0xfffffffffff292b4]        # 0x28d6e4
364430	lea    r12d,[r8-0x5]
364434	mov    eax,edi
364436	xorps  xmm12,xmm12
36443a	shr    eax,0x18
36443d	xorps  xmm0,xmm0
364440	xorps  xmm1,xmm1
364443	xorps  xmm2,xmm2
364446	cvtsi2ss xmm12,rax
36444b	mov    eax,edi
36444d	shr    eax,0x10
364450	movzx  eax,al
364453	cvtsi2ss xmm0,rax
364458	mov    eax,edi
36445a	shr    eax,0x8
36445d	movzx  eax,al
364460	movss  DWORD PTR [rsp+0x5c],xmm12
364467	cvtsi2ss xmm1,rax
36446c	movzx  eax,dil
364470	cvtsi2ss xmm2,rax
364475	mov    eax,DWORD PTR [rip+0x98b2d]        # 0x3fcfa8
36447b	movss  DWORD PTR [rsp+0x30],xmm0
364481	movss  DWORD PTR [rsp+0x34],xmm1
364487	movss  DWORD PTR [rsp+0x38],xmm2
36448d	test   eax,eax
36448f	jne    0x364578
364495	movaps xmm9,xmm1
364499	lea    rcx,[rsp+0x60]
36449e	movaps xmm8,xmm2
3644a2	movaps xmm10,xmm0
3644a6	movaps xmm11,xmm12
3644aa	divss  xmm10,xmm13
3644af	divss  xmm9,xmm13
3644b4	divss  xmm8,xmm13
3644b9	divss  xmm11,xmm13
3644be	movaps xmm3,xmm10
3644c2	movaps xmm2,xmm9
3644c6	movaps xmm1,xmm8
3644ca	movss  DWORD PTR [rsp+0x20],xmm11
3644d1	call   0x2cc350
3644d6	mov    rcx,rax
3644d9	call   0x392260
3644de	movss  xmm6,DWORD PTR [rip+0xfffffffffff28d6e]        # 0x28d254
3644e6	mov    rcx,rsi
3644e9	movss  xmm7,DWORD PTR [rip+0xfffffffffff2ecb3]        # 0x2931a4
3644f1	movaps xmm3,xmm6
3644f4	movd   xmm2,r12d
3644f9	movd   xmm1,r14d
3644fe	mov    DWORD PTR [rsp+0x28],eax
364502	cvtdq2ps xmm2,xmm2
364505	cvtdq2ps xmm1,xmm1
364508	movss  DWORD PTR [rsp+0x20],xmm7
36450e	call   0x35c738
364513	movaps xmm3,xmm10
364517	movss  DWORD PTR [rsp+0x20],xmm11
36451e	movaps xmm2,xmm9
364522	lea    rcx,[rsp+0x60]
364527	movaps xmm1,xmm8
36452b	lea    ebx,[r14-0x5]
36452f	call   0x2cc350
364534	mov    rcx,rax
364537	call   0x392260
36453c	movd   xmm2,r15d
364541	movaps xmm3,xmm7
364544	movd   xmm1,ebx
364548	mov    rcx,rsi
36454b	mov    DWORD PTR [rsp+0x28],eax
36454f	cvtdq2ps xmm2,xmm2
364552	cvtdq2ps xmm1,xmm1
364555	movss  DWORD PTR [rsp+0x20],xmm6
36455b	call   0x35c738
364560	mov    eax,DWORD PTR [rip+0x98a42]        # 0x3fcfa8
364566	movss  xmm0,DWORD PTR [rsp+0x30]
36456c	movss  xmm1,DWORD PTR [rsp+0x34]
364572	movss  xmm2,DWORD PTR [rsp+0x38]
364578	movd   xmm15,r14d
36457d	movd   xmm14,r15d
364582	cvtdq2ps xmm15,xmm15
364586	cvtdq2ps xmm14,xmm14
36458a	movss  DWORD PTR [rsp+0x58],xmm15
364591	movss  DWORD PTR [rsp+0x54],xmm14
364598	cmp    eax,0x1
36459b	jne    0x364678
3645a1	movaps xmm9,xmm1
3645a5	lea    rcx,[rsp+0x60]
3645aa	movaps xmm8,xmm2
3645ae	movaps xmm10,xmm0
3645b2	movaps xmm11,xmm12
3645b6	divss  xmm10,xmm13
3645bb	divss  xmm9,xmm13
3645c0	divss  xmm8,xmm13
3645c5	divss  xmm11,xmm13
3645ca	movaps xmm3,xmm10
3645ce	movaps xmm2,xmm9
3645d2	movaps xmm1,xmm8
3645d6	movss  DWORD PTR [rsp+0x20],xmm11
3645dd	call   0x2cc350
3645e2	mov    rcx,rax
3645e5	call   0x392260
3645ea	movss  xmm6,DWORD PTR [rip+0xfffffffffff2952a]        # 0x28db1c
3645f2	lea    ecx,[r15-0x1]
3645f6	movss  xmm7,DWORD PTR [rip+0xfffffffffff2eb36]        # 0x293134
3645fe	movaps xmm3,xmm6
364601	movd   xmm2,ecx
364605	lea    ecx,[r14-0x5]
364609	movd   xmm1,ecx
36460d	mov    rcx,rsi
364610	mov    DWORD PTR [rsp+0x28],eax
364614	cvtdq2ps xmm1,xmm1
364617	cvtdq2ps xmm2,xmm2
36461a	movss  DWORD PTR [rsp+0x20],xmm7
364620	call   0x35c738
364625	movaps xmm3,xmm10
364629	movss  DWORD PTR [rsp+0x20],xmm11
364630	movaps xmm2,xmm9
364634	lea    rcx,[rsp+0x60]
364639	movaps xmm1,xmm8
36463d	call   0x2cc350
364642	mov    rcx,rax
364645	call   0x392260
36464a	lea    ecx,[r14-0x1]
36464e	movd   xmm2,r12d
364653	movd   xmm1,ecx
364657	movaps xmm3,xmm7
36465a	mov    DWORD PTR [rsp+0x28],eax
36465e	mov    rcx,rsi
364661	cvtdq2ps xmm1,xmm1
364664	cvtdq2ps xmm2,xmm2
364667	movss  DWORD PTR [rsp+0x20],xmm6
36466d	call   0x35c738
364672	mov    eax,DWORD PTR [rip+0x98930]        # 0x3fcfa8
364678	cmp    eax,0x2
36467b	jne    0x3646ab
36467d	movaps xmm2,xmm14
364681	lea    rcx,[rsp+0x40]
364686	movaps xmm1,xmm15
36468a	call   0x2cc340
36468f	movss  xmm2,DWORD PTR [rip+0xfffffffffff2eac1]        # 0x293158
364697	mov    rdx,rax
36469a	mov    r9d,edi
36469d	mov    rcx,rsi
3646a0	call   0x35b03c
3646a5	mov    eax,DWORD PTR [rip+0x988fd]        # 0x3fcfa8
3646ab	cmp    eax,0x3
3646ae	jne    0x3648fb
3646b4	movss  xmm0,DWORD PTR [rip+0x984dc]        # 0x3fcb98
3646bc	lea    rcx,[rsp+0x40]
3646c1	movaps xmm2,xmm14
3646c5	movss  DWORD PTR [rsp+0x48],xmm0
3646cb	movaps xmm1,xmm15
3646cf	call   0x2cc340
3646d4	movss  xmm0,DWORD PTR [rip+0x993e4]        # 0x3fdac0
3646dc	comiss xmm0,DWORD PTR [rip+0xfffffffffff2945d]        # 0x28db40
3646e3	jbe    0x3646ef
3646e5	mov    DWORD PTR [rip+0x993d1],0x0        # 0x3fdac0
3646ef	call   0x3926ac
3646f4	movss  xmm13,DWORD PTR [rsp+0x48]
3646fb	mov    r12d,0x5a
364701	movss  xmm0,DWORD PTR [rip+0x9852f]        # 0x3fcc38
364709	movaps xmm15,xmm13
36470d	movss  xmm14,DWORD PTR [rip+0xfffffffffff293e6]        # 0x28dafc
364716	mulss  xmm0,DWORD PTR [rax+0x10]
36471b	divss  xmm15,xmm13
364720	movss  DWORD PTR [rsp+0x50],xmm0
364726	movaps xmm0,xmm15
36472a	call   0x35cb40
36472f	movaps xmm9,xmm0
364733	movd   xmm7,r12d
364738	cvtdq2ps xmm7,xmm7
36473b	movaps xmm0,xmm7
36473e	addss  xmm0,DWORD PTR [rip+0x9937a]        # 0x3fdac0
364746	call   0x35ac1c
36474b	call   0x2e0198
364750	movaps xmm12,xmm0
364754	movaps xmm0,xmm7
364757	addss  xmm0,DWORD PTR [rip+0x99361]        # 0x3fdac0
36475f	mulss  xmm12,xmm13
364764	call   0x35ac1c
364769	call   0x2dff68
36476e	movaps xmm11,xmm0
364772	movaps xmm0,xmm9
364776	mulss  xmm11,xmm13
36477b	call   0x362310
364780	movaps xmm6,xmm0
364783	movaps xmm0,xmm7
364786	addss  xmm0,DWORD PTR [rip+0x99332]        # 0x3fdac0
36478e	addss  xmm0,xmm6
364792	call   0x35ac1c
364797	call   0x2e0198
36479c	movaps xmm10,xmm0
3647a0	movaps xmm0,xmm9
3647a4	call   0x2dff68
3647a9	addss  xmm7,DWORD PTR [rip+0x9930f]        # 0x3fdac0
3647b1	movaps xmm1,xmm13
3647b5	divss  xmm1,xmm0
3647b9	addss  xmm7,xmm6
3647bd	mulss  xmm10,xmm1
3647c2	movaps xmm0,xmm7
3647c5	call   0x35ac1c
3647ca	call   0x2dff68
3647cf	movaps xmm8,xmm0
3647d3	movaps xmm0,xmm9
3647d7	call   0x2dff68
3647dc	movaps xmm1,xmm13
3647e0	lea    rcx,[rip+0x88151]        # 0x3ec938
3647e7	divss  xmm1,xmm0
3647eb	mulss  xmm8,xmm1
3647f0	call   0x2ef80c
3647f5	movss  xmm7,DWORD PTR [rsp+0x44]
3647fb	lea    rcx,[rsp+0x48]
364800	movss  xmm6,DWORD PTR [rsp+0x40]
364806	movaps xmm2,xmm7
364809	movaps xmm1,xmm6
36480c	mov    ebx,eax
36480e	call   0x2cc340
364813	subss  xmm7,xmm11
364818	addss  xmm6,xmm12
36481d	lea    rcx,[rsp+0x70]
364822	movaps xmm2,xmm7
364825	movaps xmm1,xmm6
364828	call   0x2cc340
36482d	mov    r8,rax
364830	movss  DWORD PTR [rsp+0x20],xmm14
364837	mov    r9d,ebx
36483a	lea    rdx,[rsp+0x48]
36483f	mov    rcx,rsi
364842	call   0x35c25c
364847	lea    rcx,[rip+0x880ea]        # 0x3ec938
36484e	call   0x2ef80c
364853	movss  xmm7,DWORD PTR [rsp+0x44]
364859	lea    rcx,[rsp+0x78]
36485e	movss  xmm6,DWORD PTR [rsp+0x40]
364864	movaps xmm2,xmm7
364867	movaps xmm1,xmm6
36486a	subss  xmm2,xmm8
36486f	addss  xmm1,xmm10
364874	mov    edi,eax
364876	call   0x2cc340
36487b	subss  xmm7,xmm11
364880	mov    rbx,rax
364883	addss  xmm6,xmm12
364888	lea    rcx,[rsp+0x60]
36488d	movaps xmm2,xmm7
364890	movaps xmm1,xmm6
364893	call   0x2cc340
364898	mov    rdx,rax
36489b	movss  DWORD PTR [rsp+0x20],xmm14
3648a2	mov    r9d,edi
3648a5	mov    r8,rbx
3648a8	mov    rcx,rsi
3648ab	call   0x35c25c
3648b0	add    r12d,0x5a
3648b4	cmp    r12d,0x1c2
3648bb	jne    0x364726
3648c1	movss  xmm0,DWORD PTR [rip+0x991f7]        # 0x3fdac0
3648c9	addss  xmm0,DWORD PTR [rsp+0x50]
3648cf	mov    eax,DWORD PTR [rip+0x986d3]        # 0x3fcfa8
3648d5	movss  xmm13,DWORD PTR [rip+0xfffffffffff28e06]        # 0x28d6e4
3648de	movss  xmm14,DWORD PTR [rsp+0x54]
3648e5	movss  xmm15,DWORD PTR [rsp+0x58]
3648ec	movss  xmm12,DWORD PTR [rsp+0x5c]
3648f3	movss  DWORD PTR [rip+0x991c5],xmm0        # 0x3fdac0
3648fb	cmp    eax,0x4
3648fe	jne    0x3649f8
364904	movss  xmm3,DWORD PTR [rsp+0x30]
36490a	lea    rcx,[rsp+0x60]
36490f	movss  xmm2,DWORD PTR [rsp+0x34]
364915	movss  xmm1,DWORD PTR [rsp+0x38]
36491b	movss  xmm8,DWORD PTR [rip+0x982c4]        # 0x3fcbe8
364924	divss  xmm12,xmm13
364929	divss  xmm3,xmm13
36492e	divss  xmm2,xmm13
364933	divss  xmm1,xmm13
364938	movss  DWORD PTR [rsp+0x20],xmm12
36493f	call   0x2cc350
364944	mov    rcx,rax
364947	call   0x392260
36494c	movss  xmm7,DWORD PTR [rip+0xfffffffffff2e824]        # 0x293178
364954	lea    ecx,[r14-0x2]
364958	movd   xmm6,ecx
36495c	movaps xmm2,xmm14
364960	subss  xmm2,xmm8
364965	mov    DWORD PTR [rsp+0x28],eax
364969	cvtdq2ps xmm6,xmm6
36496c	mov    rcx,rsi
36496f	mov    ebx,eax
364971	movaps xmm3,xmm7
364974	movss  DWORD PTR [rsp+0x20],xmm7
36497a	subss  xmm2,xmm7
36497e	movaps xmm1,xmm6
364981	call   0x35c738
364986	addss  xmm14,xmm8
36498b	mov    DWORD PTR [rsp+0x28],ebx
36498f	movaps xmm3,xmm7
364992	movss  DWORD PTR [rsp+0x20],xmm7
364998	movaps xmm1,xmm6
36499b	mov    rcx,rsi
36499e	movaps xmm2,xmm14
3649a2	call   0x35c738
3649a7	movaps xmm1,xmm15
3649ab	mov    DWORD PTR [rsp+0x28],ebx
3649af	lea    eax,[r15-0x2]
3649b3	movss  DWORD PTR [rsp+0x20],xmm7
3649b9	subss  xmm1,xmm8
3649be	movd   xmm6,eax
3649c2	cvtdq2ps xmm6,xmm6
3649c5	mov    rcx,rsi
3649c8	subss  xmm1,xmm7
3649cc	movaps xmm3,xmm7
3649cf	movaps xmm2,xmm6
3649d2	call   0x35c738
3649d7	addss  xmm15,xmm8
3649dc	mov    DWORD PTR [rsp+0x28],ebx
3649e0	movaps xmm3,xmm7
3649e3	movss  DWORD PTR [rsp+0x20],xmm7
3649e9	movaps xmm2,xmm6
3649ec	mov    rcx,rsi
3649ef	movaps xmm1,xmm15
3649f3	call   0x35c738
3649f8	lea    r11,[rsp+0x120]
364a00	movaps xmm6,XMMWORD PTR [r11-0x10]
364a05	movaps xmm7,XMMWORD PTR [r11-0x20]
364a0a	movaps xmm8,XMMWORD PTR [r11-0x30]
364a0f	movaps xmm9,XMMWORD PTR [r11-0x40]
364a14	movaps xmm10,XMMWORD PTR [r11-0x50]
364a19	movaps xmm11,XMMWORD PTR [r11-0x60]
364a1e	movaps xmm12,XMMWORD PTR [r11-0x70]
364a23	movaps xmm13,XMMWORD PTR [r11-0x80]
364a28	movaps xmm14,XMMWORD PTR [r11-0x90]
364a30	movaps xmm15,XMMWORD PTR [r11-0xa0]
364a38	mov    rsp,r11
364a3b	pop    r15
364a3d	pop    r14
364a3f	pop    r12
364a41	pop    rdi
364a42	pop    rsi
364a43	pop    rbx
364a44	pop    rbp
364a45	ret
