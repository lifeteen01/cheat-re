3a684c	mov    rax,rsp
3a684f	push   rbx
3a6850	push   rbp
3a6851	push   rsi
3a6852	push   rdi
3a6853	push   r12
3a6855	push   r14
3a6857	push   r15
3a6859	sub    rsp,0x90
3a6860	movss  xmm0,DWORD PTR [rip+0xffffffffffee69e8]        # 0x28d250
3a6868	mov    rdi,rdx
3a686b	movaps XMMWORD PTR [rax-0x48],xmm6
3a686f	mov    rsi,rcx
3a6872	movaps XMMWORD PTR [rax-0x58],xmm7
3a6876	movaps XMMWORD PTR [rax-0x68],xmm8
3a687b	movaps XMMWORD PTR [rax-0x78],xmm9
3a6880	movaps xmm9,xmm2
3a6884	comiss xmm0,xmm9
3a6888	movaps XMMWORD PTR [rsp+0x40],xmm10
3a688e	movaps xmm10,xmm3
3a6892	jbe    0x3a689d
3a6894	add    rcx,0x78
3a6898	jmp    0x3a6a94
3a689d	mov    eax,DWORD PTR [rsp+0xf8]
3a68a4	test   eax,eax
3a68a6	jle    0x3a68c0
3a68a8	movss  xmm0,DWORD PTR [rsp+0xf0]
3a68b1	mov    DWORD PTR [rsp+0x28],eax
3a68b5	movss  DWORD PTR [rsp+0x20],xmm0
3a68bb	jmp    0x3a6b03
3a68c0	mov    rax,QWORD PTR [rcx+0x38]
3a68c4	movss  xmm8,DWORD PTR [rsp+0xf0]
3a68ce	movss  xmm0,DWORD PTR [rax+0x1c0]
3a68d6	comiss xmm0,xmm9
3a68da	jb     0x3a6a9b
3a68e0	movss  xmm0,DWORD PTR [rip+0xfffffffffff06600]        # 0x2acee8
3a68e8	movaps xmm1,xmm10
3a68ec	mulss  xmm1,DWORD PTR [rip+0xfffffffffff065f8]        # 0x2aceec
3a68f4	movaps xmm6,xmm8
3a68f8	mulss  xmm6,DWORD PTR [rip+0xfffffffffff065ec]        # 0x2aceec
3a6900	comiss xmm10,xmm8
3a6904	divss  xmm1,xmm0
3a6908	seta   bpl
3a690c	divss  xmm6,xmm0
3a6910	movaps xmm0,xmm1
3a6913	test   bpl,bpl
3a6916	je     0x3a692b
3a6918	call   0x3930e8
3a691d	cvttss2si ebx,xmm0
3a6921	movaps xmm0,xmm6
3a6924	call   0x3c8918
3a6929	jmp    0x3a693c
3a692b	call   0x3c8918
3a6930	cvttss2si ebx,xmm0
3a6934	movaps xmm0,xmm6
3a6937	call   0x3930e8
3a693c	cvttss2si r14d,xmm0
3a6941	mov    ecx,ebx
3a6943	mov    eax,r14d
3a6946	sub    ecx,r14d
3a6949	sub    eax,ebx
3a694b	test   bpl,bpl
3a694e	cmove  ecx,eax
3a6951	xor    edx,edx
3a6953	call   0x39f28c
3a6958	movss  xmm6,DWORD PTR [rip+0xffffffffffeec7fc]        # 0x29315c
3a6960	mov    r15d,eax
3a6963	movd   xmm0,ebx
3a6967	cvtdq2ps xmm0,xmm0
3a696a	mulss  xmm0,xmm6
3a696e	addss  xmm0,xmm0
3a6972	divss  xmm0,DWORD PTR [rip+0xfffffffffff06572]        # 0x2aceec
3a697a	subss  xmm0,xmm10
3a697f	call   0x2e372c
3a6984	movd   xmm1,r14d
3a6989	movaps xmm7,xmm0
3a698c	cvtdq2ps xmm1,xmm1
3a698f	movaps xmm0,xmm8
3a6993	mulss  xmm1,xmm6
3a6997	addss  xmm1,xmm1
3a699b	divss  xmm1,DWORD PTR [rip+0xfffffffffff06549]        # 0x2aceec
3a69a3	subss  xmm0,xmm1
3a69a7	call   0x2e372c
3a69ac	movss  xmm6,DWORD PTR [rip+0xffffffffffee711c]        # 0x28dad0
3a69b4	lea    rbp,[rsi+0x78]
3a69b8	comiss xmm0,xmm6
3a69bb	mov    rcx,rbp
3a69be	setae  r12b
3a69c2	xor    eax,eax
3a69c4	comiss xmm7,xmm6
3a69c7	setae  al
3a69ca	xor    edx,edx
3a69cc	inc    eax
3a69ce	comiss xmm0,xmm6
3a69d1	setae  dl
3a69d4	add    edx,eax
3a69d6	add    edx,DWORD PTR [rbp+0x0]
3a69d9	add    edx,r15d
3a69dc	call   0x37a758
3a69e1	comiss xmm7,xmm6
3a69e4	jb     0x3a6a29
3a69e6	movaps xmm0,xmm10
3a69ea	call   0x3c8e6c
3a69ef	movaps xmm6,xmm0
3a69f2	movaps xmm0,xmm10
3a69f6	mulss  xmm6,xmm9
3a69fb	addss  xmm6,DWORD PTR [rdi+0x4]
3a6a00	call   0x3c899c
3a6a05	mulss  xmm0,xmm9
3a6a0a	lea    rcx,[rsp+0x30]
3a6a0f	movaps xmm2,xmm6
3a6a12	addss  xmm0,DWORD PTR [rdi]
3a6a16	movaps xmm1,xmm0
3a6a19	call   0x2cc340
3a6a1e	mov    rdx,rax
3a6a21	mov    rcx,rbp
3a6a24	call   0x37a658
3a6a29	test   r15d,r15d
3a6a2c	jle    0x3a6a4d
3a6a2e	mov    DWORD PTR [rsp+0x28],0x0
3a6a36	mov    r9d,ebx
3a6a39	movaps xmm2,xmm9
3a6a3d	mov    DWORD PTR [rsp+0x20],r14d
3a6a42	mov    rdx,rdi
3a6a45	mov    rcx,rsi
3a6a48	call   0x3a8eec
3a6a4d	test   r12b,r12b
3a6a50	je     0x3a6b08
3a6a56	movaps xmm0,xmm8
3a6a5a	call   0x3c8e6c
3a6a5f	movaps xmm6,xmm0
3a6a62	movaps xmm0,xmm8
3a6a66	mulss  xmm6,xmm9
3a6a6b	addss  xmm6,DWORD PTR [rdi+0x4]
3a6a70	call   0x3c899c
3a6a75	mulss  xmm0,xmm9
3a6a7a	lea    rcx,[rsp+0x30]
3a6a7f	movaps xmm2,xmm6
3a6a82	addss  xmm0,DWORD PTR [rdi]
3a6a86	movaps xmm1,xmm0
3a6a89	call   0x2cc340
3a6a8e	mov    rdx,rax
3a6a91	mov    rcx,rbp
3a6a94	call   0x37a658
3a6a99	jmp    0x3a6b08
3a6a9b	movaps xmm0,xmm8
3a6a9f	subss  xmm0,xmm10
3a6aa4	call   0x2e372c
3a6aa9	movss  xmm7,DWORD PTR [rip+0xfffffffffff06437]        # 0x2acee8
3a6ab1	movaps xmm6,xmm0
3a6ab4	movaps xmm1,xmm7
3a6ab7	mov    rcx,rsi
3a6aba	divss  xmm1,xmm6
3a6abe	cvttss2si ebx,xmm1
3a6ac2	movaps xmm1,xmm9
3a6ac6	call   0x3a8cb4
3a6acb	movd   xmm0,eax
3a6acf	cvtdq2ps xmm0,xmm0
3a6ad2	mulss  xmm0,xmm6
3a6ad6	divss  xmm0,xmm7
3a6ada	call   0x3c8918
3a6adf	cvttss2si ecx,xmm0
3a6ae3	mov    edx,ebx
3a6ae5	call   0x39f28c
3a6aea	mov    DWORD PTR [rsp+0x28],eax
3a6aee	movaps xmm3,xmm10
3a6af2	movss  DWORD PTR [rsp+0x20],xmm8
3a6af9	movaps xmm2,xmm9
3a6afd	mov    rdx,rdi
3a6b00	mov    rcx,rsi
3a6b03	call   0x3a9110
3a6b08	movaps xmm7,XMMWORD PTR [rsp+0x70]
3a6b0d	lea    r11,[rsp+0x90]
3a6b15	movaps xmm6,XMMWORD PTR [r11-0x10]
3a6b1a	movaps xmm8,XMMWORD PTR [r11-0x30]
3a6b1f	movaps xmm9,XMMWORD PTR [r11-0x40]
3a6b24	movaps xmm10,XMMWORD PTR [r11-0x50]
3a6b29	mov    rsp,r11
3a6b2c	pop    r15
3a6b2e	pop    r14
3a6b30	pop    r12
3a6b32	pop    rdi
3a6b33	pop    rsi
3a6b34	pop    rbp
3a6b35	pop    rbx
3a6b36	ret
