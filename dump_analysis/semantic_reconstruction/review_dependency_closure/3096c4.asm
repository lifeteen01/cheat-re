3096c4	mov    rax,rsp
3096c7	mov    QWORD PTR [rax+0x10],rbx
3096cb	mov    QWORD PTR [rax+0x18],rbp
3096cf	push   rsi
3096d0	push   rdi
3096d1	push   r12
3096d3	push   r14
3096d5	push   r15
3096d7	sub    rsp,0xb0
3096de	movaps XMMWORD PTR [rax-0x38],xmm6
3096e2	mov    rbp,rcx
3096e5	movaps XMMWORD PTR [rax-0x48],xmm7
3096e9	movaps XMMWORD PTR [rax-0x58],xmm8
3096ee	movaps XMMWORD PTR [rax-0x68],xmm9
3096f3	movaps XMMWORD PTR [rax-0x78],xmm10
3096f8	movaps XMMWORD PTR [rsp+0x50],xmm11
3096fe	movaps xmm11,xmm1
309702	call   0x392198
309707	cmp    BYTE PTR [rip+0xe8002],0x0        # 0x3f1710
30970e	lea    r12,[rip+0xe7bfb]        # 0x3f1310
309715	movss  xmm6,DWORD PTR [rbp+0xc]
30971a	mov    r15,rax
30971d	xorps  xmm9,xmm9
309721	jne    0x309749
309723	xor    ebx,ebx
309725	movaps xmm1,xmm6
309728	xorps  xmm0,xmm0
30972b	call   0x2e3d5c
309730	movss  DWORD PTR [r12+rbx*4],xmm0
309736	inc    rbx
309739	cmp    rbx,0x100
309740	jne    0x309725
309742	mov    BYTE PTR [rip+0xe7fc7],0x1        # 0x3f1710
309749	addss  xmm6,DWORD PTR [rip+0xfffffffffff89adf]        # 0x293230
309751	xor    edi,edi
309753	movss  xmm10,DWORD PTR [r12+rdi*4]
309759	xor    r14d,r14d
30975c	movd   xmm8,edi
309761	cvtdq2ps xmm8,xmm8
309765	mulss  xmm8,DWORD PTR [rip+0xfffffffffff843ae]        # 0x28db1c
30976e	movd   xmm0,r14d
309773	movaps xmm7,xmm10
309777	cvtdq2ps xmm0,xmm0
30977a	mulss  xmm0,DWORD PTR [rip+0xfffffffffff8439e]        # 0x28db20
309782	subss  xmm7,xmm0
309786	comiss xmm9,xmm7
30978a	ja     0x309834
309790	movss  xmm1,DWORD PTR [rip+0xfffffffffff89a84]        # 0x29321c
309798	movss  xmm0,DWORD PTR [rip+0xfffffffffff89a44]        # 0x2931e4
3097a0	call   0x2e3d5c
3097a5	cvttss2si r8d,xmm0
3097aa	mov    edx,0x1
3097af	lea    rcx,[rsp+0x30]
3097b4	call   0x2d4584
3097b9	mov    rcx,rax
3097bc	call   0x2cd7ec
3097c1	movaps xmm2,xmm7
3097c4	lea    rcx,[rsp+0xe0]
3097cc	movaps xmm1,xmm8
3097d0	mov    rbx,rax
3097d3	call   0x2cc340
3097d8	lea    edx,[r14+r14*4]
3097dc	mov    QWORD PTR [rsp+0x20],0x0
3097e5	add    edx,edx
3097e7	mov    ecx,0xff
3097ec	sub    ecx,edx
3097ee	mov    r9,rbx
3097f1	lea    rdx,[rsp+0xe0]
3097f9	movd   xmm0,ecx
3097fd	mov    rcx,r15
309800	cvtdq2ps xmm0,xmm0
309803	mulss  xmm0,xmm11
309808	cvttss2si r8d,xmm0
30980d	shl    r8d,0x18
309811	or     r8d,0x46ff00
309818	call   0x3a31bc
30981d	lea    rcx,[rsp+0x30]
309822	call   0x2cc4f4
309827	inc    r14d
30982a	cmp    r14d,0x14
30982e	jl     0x30976e
309834	movss  xmm0,DWORD PTR [rip+0xfffffffffff3f654]        # 0x248e90
30983c	mulss  xmm0,DWORD PTR [rbp+0x10]
309841	addss  xmm0,DWORD PTR [r12+rdi*4]
309847	comiss xmm0,xmm6
30984a	movss  DWORD PTR [r12+rdi*4],xmm0
309850	jbe    0x30985a
309852	mov    DWORD PTR [r12+rdi*4],0xc3480000
30985a	inc    edi
30985c	cmp    edi,0x100
309862	jl     0x309753
309868	lea    r11,[rsp+0xb0]
309870	mov    rbx,QWORD PTR [r11+0x38]
309874	mov    rbp,QWORD PTR [r11+0x40]
309878	movaps xmm6,XMMWORD PTR [r11-0x10]
30987d	movaps xmm7,XMMWORD PTR [r11-0x20]
309882	movaps xmm8,XMMWORD PTR [r11-0x30]
309887	movaps xmm9,XMMWORD PTR [r11-0x40]
30988c	movaps xmm10,XMMWORD PTR [r11-0x50]
309891	movaps xmm11,XMMWORD PTR [r11-0x60]
309896	mov    rsp,r11
309899	pop    r15
30989b	pop    r14
30989d	pop    r12
30989f	pop    rdi
3098a0	pop    rsi
3098a1	ret
