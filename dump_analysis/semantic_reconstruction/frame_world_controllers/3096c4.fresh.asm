
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/frame_world_controllers/3096c4.bin:     file format binary


Disassembly of section .data:

00000000003096c4 <.data>:
  3096c4:	48 8b c4             	mov    rax,rsp
  3096c7:	48 89 58 10          	mov    QWORD PTR [rax+0x10],rbx
  3096cb:	48 89 68 18          	mov    QWORD PTR [rax+0x18],rbp
  3096cf:	56                   	push   rsi
  3096d0:	57                   	push   rdi
  3096d1:	41 54                	push   r12
  3096d3:	41 56                	push   r14
  3096d5:	41 57                	push   r15
  3096d7:	48 81 ec b0 00 00 00 	sub    rsp,0xb0
  3096de:	0f 29 70 c8          	movaps XMMWORD PTR [rax-0x38],xmm6
  3096e2:	48 8b e9             	mov    rbp,rcx
  3096e5:	0f 29 78 b8          	movaps XMMWORD PTR [rax-0x48],xmm7
  3096e9:	44 0f 29 40 a8       	movaps XMMWORD PTR [rax-0x58],xmm8
  3096ee:	44 0f 29 48 98       	movaps XMMWORD PTR [rax-0x68],xmm9
  3096f3:	44 0f 29 50 88       	movaps XMMWORD PTR [rax-0x78],xmm10
  3096f8:	44 0f 29 5c 24 50    	movaps XMMWORD PTR [rsp+0x50],xmm11
  3096fe:	44 0f 28 d9          	movaps xmm11,xmm1
  309702:	e8 91 8a 08 00       	call   0x392198
  309707:	80 3d 02 80 0e 00 00 	cmp    BYTE PTR [rip+0xe8002],0x0        # 0x3f1710
  30970e:	4c 8d 25 fb 7b 0e 00 	lea    r12,[rip+0xe7bfb]        # 0x3f1310
  309715:	f3 0f 10 75 0c       	movss  xmm6,DWORD PTR [rbp+0xc]
  30971a:	4c 8b f8             	mov    r15,rax
  30971d:	45 0f 57 c9          	xorps  xmm9,xmm9
  309721:	75 26                	jne    0x309749
  309723:	33 db                	xor    ebx,ebx
  309725:	0f 28 ce             	movaps xmm1,xmm6
  309728:	0f 57 c0             	xorps  xmm0,xmm0
  30972b:	e8 2c a6 fd ff       	call   0x2e3d5c
  309730:	f3 41 0f 11 04 9c    	movss  DWORD PTR [r12+rbx*4],xmm0
  309736:	48 ff c3             	inc    rbx
  309739:	48 81 fb 00 01 00 00 	cmp    rbx,0x100
  309740:	75 e3                	jne    0x309725
  309742:	c6 05 c7 7f 0e 00 01 	mov    BYTE PTR [rip+0xe7fc7],0x1        # 0x3f1710
  309749:	f3 0f 58 35 df 9a f8 	addss  xmm6,DWORD PTR [rip+0xfffffffffff89adf]        # 0x293230
  309750:	ff 
  309751:	33 ff                	xor    edi,edi
  309753:	f3 45 0f 10 14 bc    	movss  xmm10,DWORD PTR [r12+rdi*4]
  309759:	45 33 f6             	xor    r14d,r14d
  30975c:	66 44 0f 6e c7       	movd   xmm8,edi
  309761:	45 0f 5b c0          	cvtdq2ps xmm8,xmm8
  309765:	f3 44 0f 59 05 ae 43 	mulss  xmm8,DWORD PTR [rip+0xfffffffffff843ae]        # 0x28db1c
  30976c:	f8 ff 
  30976e:	66 41 0f 6e c6       	movd   xmm0,r14d
  309773:	41 0f 28 fa          	movaps xmm7,xmm10
  309777:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  30977a:	f3 0f 59 05 9e 43 f8 	mulss  xmm0,DWORD PTR [rip+0xfffffffffff8439e]        # 0x28db20
  309781:	ff 
  309782:	f3 0f 5c f8          	subss  xmm7,xmm0
  309786:	44 0f 2f cf          	comiss xmm9,xmm7
  30978a:	0f 87 a4 00 00 00    	ja     0x309834
  309790:	f3 0f 10 0d 84 9a f8 	movss  xmm1,DWORD PTR [rip+0xfffffffffff89a84]        # 0x29321c
  309797:	ff 
  309798:	f3 0f 10 05 44 9a f8 	movss  xmm0,DWORD PTR [rip+0xfffffffffff89a44]        # 0x2931e4
  30979f:	ff 
  3097a0:	e8 b7 a5 fd ff       	call   0x2e3d5c
  3097a5:	f3 44 0f 2c c0       	cvttss2si r8d,xmm0
  3097aa:	ba 01 00 00 00       	mov    edx,0x1
  3097af:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  3097b4:	e8 cb ad fc ff       	call   0x2d4584
  3097b9:	48 8b c8             	mov    rcx,rax
  3097bc:	e8 2b 40 fc ff       	call   0x2cd7ec
  3097c1:	0f 28 d7             	movaps xmm2,xmm7
  3097c4:	48 8d 8c 24 e0 00 00 	lea    rcx,[rsp+0xe0]
  3097cb:	00 
  3097cc:	41 0f 28 c8          	movaps xmm1,xmm8
  3097d0:	48 8b d8             	mov    rbx,rax
  3097d3:	e8 68 2b fc ff       	call   0x2cc340
  3097d8:	43 8d 14 b6          	lea    edx,[r14+r14*4]
  3097dc:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
  3097e3:	00 00 
  3097e5:	03 d2                	add    edx,edx
  3097e7:	b9 ff 00 00 00       	mov    ecx,0xff
  3097ec:	2b ca                	sub    ecx,edx
  3097ee:	4c 8b cb             	mov    r9,rbx
  3097f1:	48 8d 94 24 e0 00 00 	lea    rdx,[rsp+0xe0]
  3097f8:	00 
  3097f9:	66 0f 6e c1          	movd   xmm0,ecx
  3097fd:	49 8b cf             	mov    rcx,r15
  309800:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  309803:	f3 41 0f 59 c3       	mulss  xmm0,xmm11
  309808:	f3 44 0f 2c c0       	cvttss2si r8d,xmm0
  30980d:	41 c1 e0 18          	shl    r8d,0x18
  309811:	41 81 c8 00 ff 46 00 	or     r8d,0x46ff00
  309818:	e8 9f 99 09 00       	call   0x3a31bc
  30981d:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
  309822:	e8 cd 2c fc ff       	call   0x2cc4f4
  309827:	41 ff c6             	inc    r14d
  30982a:	41 83 fe 14          	cmp    r14d,0x14
  30982e:	0f 8c 3a ff ff ff    	jl     0x30976e
  309834:	f3 0f 10 05 54 f6 f3 	movss  xmm0,DWORD PTR [rip+0xfffffffffff3f654]        # 0x248e90
  30983b:	ff 
  30983c:	f3 0f 59 45 10       	mulss  xmm0,DWORD PTR [rbp+0x10]
  309841:	f3 41 0f 58 04 bc    	addss  xmm0,DWORD PTR [r12+rdi*4]
  309847:	0f 2f c6             	comiss xmm0,xmm6
  30984a:	f3 41 0f 11 04 bc    	movss  DWORD PTR [r12+rdi*4],xmm0
  309850:	76 08                	jbe    0x30985a
  309852:	41 c7 04 bc 00 00 48 	mov    DWORD PTR [r12+rdi*4],0xc3480000
  309859:	c3 
  30985a:	ff c7                	inc    edi
  30985c:	81 ff 00 01 00 00    	cmp    edi,0x100
  309862:	0f 8c eb fe ff ff    	jl     0x309753
  309868:	4c 8d 9c 24 b0 00 00 	lea    r11,[rsp+0xb0]
  30986f:	00 
  309870:	49 8b 5b 38          	mov    rbx,QWORD PTR [r11+0x38]
  309874:	49 8b 6b 40          	mov    rbp,QWORD PTR [r11+0x40]
  309878:	41 0f 28 73 f0       	movaps xmm6,XMMWORD PTR [r11-0x10]
  30987d:	41 0f 28 7b e0       	movaps xmm7,XMMWORD PTR [r11-0x20]
  309882:	45 0f 28 43 d0       	movaps xmm8,XMMWORD PTR [r11-0x30]
  309887:	45 0f 28 4b c0       	movaps xmm9,XMMWORD PTR [r11-0x40]
  30988c:	45 0f 28 53 b0       	movaps xmm10,XMMWORD PTR [r11-0x50]
  309891:	45 0f 28 5b a0       	movaps xmm11,XMMWORD PTR [r11-0x60]
  309896:	49 8b e3             	mov    rsp,r11
  309899:	41 5f                	pop    r15
  30989b:	41 5e                	pop    r14
  30989d:	41 5c                	pop    r12
  30989f:	5f                   	pop    rdi
  3098a0:	5e                   	pop    rsi
  3098a1:	c3                   	ret
