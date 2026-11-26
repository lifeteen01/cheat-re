
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b7358 <.data+0x3b7358>:
  3b7358:	48 8b c4                                        	mov    rax,rsp
  3b735b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3b735f:	57                                              	push   rdi
  3b7360:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
  3b7367:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3b736b:	41 8b d9                                        	mov    ebx,r9d
  3b736e:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3b7372:	41 8b f8                                        	mov    edi,r8d
  3b7375:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3b737a:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3b737f:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3b7384:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  3b7389:	45 0f 57 db                                     	xorps  xmm11,xmm11
  3b738d:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3b7392:	44 0f 28 e1                                     	movaps xmm12,xmm1
  3b7396:	45 0f 2f dc                                     	comiss xmm11,xmm12
  3b739a:	44 0f 29 6c 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm13
  3b73a0:	44 0f 29 74 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm14
  3b73a6:	44 0f 29 7c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm15
  3b73ac:	0f 83 54 02 00 00                               	jae    0x3b7606
  3b73b2:	44 3b c3                                        	cmp    r8d,ebx
  3b73b5:	0f 84 4b 02 00 00                               	je     0x3b7606
  3b73bb:	f3 44 0f 10 0d 90 5e ed ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffed5e90]        # 0x28d254
  3b73c4:	45 0f 2f e1                                     	comiss xmm12,xmm9
  3b73c8:	72 07                                           	jb     0x3b73d1
  3b73ca:	8b c3                                           	mov    eax,ebx
  3b73cc:	e9 37 02 00 00                                  	jmp    0x3b7608
  3b73d1:	80 bc 24 00 01 00 00 00                         	cmp    BYTE PTR [rsp+0x100],0x0
  3b73d9:	0f 84 d4 01 00 00                               	je     0x3b75b3
  3b73df:	66 44 0f 6e ff                                  	movd   xmm15,edi
  3b73e4:	45 0f 5b ff                                     	cvtdq2ps xmm15,xmm15
  3b73e8:	41 0f 28 c7                                     	movaps xmm0,xmm15
  3b73ec:	e8 3b c3 f2 ff                                  	call   0x2e372c
  3b73f1:	f3 44 0f 10 94 24 08 01 00 00                   	movss  xmm10,DWORD PTR [rsp+0x108]
  3b73fb:	44 0f 2f d0                                     	comiss xmm10,xmm0
  3b73ff:	f3 44 0f 10 2d 98 be ed ff                      	movss  xmm13,DWORD PTR [rip+0xffffffffffedbe98]        # 0x2932a0
  3b7408:	76 10                                           	jbe    0x3b741a
  3b740a:	45 0f 2f df                                     	comiss xmm11,xmm15
  3b740e:	41 0f 28 fa                                     	movaps xmm7,xmm10
  3b7412:	76 0a                                           	jbe    0x3b741e
  3b7414:	41 0f 57 fd                                     	xorps  xmm7,xmm13
  3b7418:	eb 04                                           	jmp    0x3b741e
  3b741a:	41 0f 28 ff                                     	movaps xmm7,xmm15
  3b741e:	66 44 0f 6e f3                                  	movd   xmm14,ebx
  3b7423:	45 0f 5b f6                                     	cvtdq2ps xmm14,xmm14
  3b7427:	f3 0f 11 bc 24 e8 00 00 00                      	movss  DWORD PTR [rsp+0xe8],xmm7
  3b7430:	41 0f 28 c6                                     	movaps xmm0,xmm14
  3b7434:	e8 f3 c2 f2 ff                                  	call   0x2e372c
  3b7439:	44 0f 2f d0                                     	comiss xmm10,xmm0
  3b743d:	76 10                                           	jbe    0x3b744f
  3b743f:	45 0f 2f de                                     	comiss xmm11,xmm14
  3b7443:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3b7447:	76 0a                                           	jbe    0x3b7453
  3b7449:	41 0f 57 f5                                     	xorps  xmm6,xmm13
  3b744d:	eb 04                                           	jmp    0x3b7453
  3b744f:	41 0f 28 f6                                     	movaps xmm6,xmm14
  3b7453:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3b7459:	3b df                                           	cmp    ebx,edi
  3b745b:	7d 21                                           	jge    0x3b747e
  3b745d:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3b7462:	48 8d 8c 24 e8 00 00 00                         	lea    rcx,[rsp+0xe8]
  3b746a:	e8 8d 2f fd ff                                  	call   0x38a3fc
  3b746f:	f3 0f 10 bc 24 e8 00 00 00                      	movss  xmm7,DWORD PTR [rsp+0xe8]
  3b7478:	f3 0f 10 74 24 20                               	movss  xmm6,DWORD PTR [rsp+0x20]
  3b747e:	45 0f 2e f3                                     	ucomiss xmm14,xmm11
  3b7482:	7a 10                                           	jp     0x3b7494
  3b7484:	75 0e                                           	jne    0x3b7494
  3b7486:	45 0f 2f df                                     	comiss xmm11,xmm15
  3b748a:	76 08                                           	jbe    0x3b7494
  3b748c:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3b7490:	41 0f 57 f5                                     	xorps  xmm6,xmm13
  3b7494:	3b df                                           	cmp    ebx,edi
  3b7496:	7d 0b                                           	jge    0x3b74a3
  3b7498:	45 0f 28 c1                                     	movaps xmm8,xmm9
  3b749c:	f3 45 0f 5c c4                                  	subss  xmm8,xmm12
  3b74a1:	eb 04                                           	jmp    0x3b74a7
  3b74a3:	45 0f 28 c4                                     	movaps xmm8,xmm12
  3b74a7:	8b c7                                           	mov    eax,edi
  3b74a9:	0f af c3                                        	imul   eax,ebx
  3b74ac:	66 0f 6e c8                                     	movd   xmm1,eax
  3b74b0:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b74b3:	44 0f 2f d9                                     	comiss xmm11,xmm1
  3b74b7:	0f 86 a9 00 00 00                               	jbe    0x3b7566
  3b74bd:	8b d3                                           	mov    edx,ebx
  3b74bf:	8b cf                                           	mov    ecx,edi
  3b74c1:	e8 d6 8c fc ff                                  	call   0x38019c
  3b74c6:	f3 45 0f 5c f7                                  	subss  xmm14,xmm15
  3b74cb:	66 44 0f 6e d8                                  	movd   xmm11,eax
  3b74d0:	45 0f 5b db                                     	cvtdq2ps xmm11,xmm11
  3b74d4:	41 0f 28 c6                                     	movaps xmm0,xmm14
  3b74d8:	45 0f 57 dd                                     	xorps  xmm11,xmm13
  3b74dc:	e8 4b c2 f2 ff                                  	call   0x2e372c
  3b74e1:	f3 44 0f 5e d8                                  	divss  xmm11,xmm0
  3b74e6:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3b74ea:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b74ee:	f3 0f 5c 8c 24 10 01 00 00                      	subss  xmm1,DWORD PTR [rsp+0x110]
  3b74f7:	f3 0f 58 84 24 10 01 00 00                      	addss  xmm0,DWORD PTR [rsp+0x110]
  3b7500:	44 0f 2f c1                                     	comiss xmm8,xmm1
  3b7504:	72 0d                                           	jb     0x3b7513
  3b7506:	41 0f 2f c0                                     	comiss xmm0,xmm8
  3b750a:	72 07                                           	jb     0x3b7513
  3b750c:	33 c0                                           	xor    eax,eax
  3b750e:	e9 f5 00 00 00                                  	jmp    0x3b7608
  3b7513:	45 0f 2f d8                                     	comiss xmm11,xmm8
  3b7517:	76 26                                           	jbe    0x3b753f
  3b7519:	f3 44 0f 5e c1                                  	divss  xmm8,xmm1
  3b751e:	41 0f 57 fd                                     	xorps  xmm7,xmm13
  3b7522:	f3 41 0f 5e fa                                  	divss  xmm7,xmm10
  3b7527:	f3 45 0f 5c c8                                  	subss  xmm9,xmm8
  3b752c:	0f 28 c7                                        	movaps xmm0,xmm7
  3b752f:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3b7533:	e8 54 f0 fe ff                                  	call   0x3a658c
  3b7538:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3b753d:	eb 6a                                           	jmp    0x3b75a9
  3b753f:	f3 44 0f 5c c0                                  	subss  xmm8,xmm0
  3b7544:	f3 44 0f 5c c8                                  	subss  xmm9,xmm0
  3b7549:	f3 41 0f 5e f2                                  	divss  xmm6,xmm10
  3b754e:	f3 45 0f 5e c1                                  	divss  xmm8,xmm9
  3b7553:	0f 28 c6                                        	movaps xmm0,xmm6
  3b7556:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3b755a:	e8 2d f0 fe ff                                  	call   0x3a658c
  3b755f:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3b7564:	eb 47                                           	jmp    0x3b75ad
  3b7566:	45 0f 2f df                                     	comiss xmm11,xmm15
  3b756a:	77 1c                                           	ja     0x3b7588
  3b756c:	45 0f 2f de                                     	comiss xmm11,xmm14
  3b7570:	77 16                                           	ja     0x3b7588
  3b7572:	f3 0f 5e f7                                     	divss  xmm6,xmm7
  3b7576:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3b757a:	0f 28 c6                                        	movaps xmm0,xmm6
  3b757d:	e8 0a f0 fe ff                                  	call   0x3a658c
  3b7582:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3b7586:	eb 25                                           	jmp    0x3b75ad
  3b7588:	41 0f 57 fd                                     	xorps  xmm7,xmm13
  3b758c:	f3 45 0f 5c c8                                  	subss  xmm9,xmm8
  3b7591:	41 0f 57 f5                                     	xorps  xmm6,xmm13
  3b7595:	f3 0f 5e fe                                     	divss  xmm7,xmm6
  3b7599:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3b759d:	0f 28 c7                                        	movaps xmm0,xmm7
  3b75a0:	e8 e7 ef fe ff                                  	call   0x3a658c
  3b75a5:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3b75a9:	41 0f 57 c5                                     	xorps  xmm0,xmm13
  3b75ad:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3b75b1:	eb 55                                           	jmp    0x3b7608
  3b75b3:	8d 41 f8                                        	lea    eax,[rcx-0x8]
  3b75b6:	83 f8 01                                        	cmp    eax,0x1
  3b75b9:	77 0f                                           	ja     0x3b75ca
  3b75bb:	41 0f 28 d4                                     	movaps xmm2,xmm12
  3b75bf:	8b d3                                           	mov    edx,ebx
  3b75c1:	8b cf                                           	mov    ecx,edi
  3b75c3:	e8 0c 2e fd ff                                  	call   0x38a3d4
  3b75c8:	eb 3e                                           	jmp    0x3b7608
  3b75ca:	33 c0                                           	xor    eax,eax
  3b75cc:	45 0f 2f cc                                     	comiss xmm9,xmm12
  3b75d0:	76 36                                           	jbe    0x3b7608
  3b75d2:	3b fb                                           	cmp    edi,ebx
  3b75d4:	7e 0a                                           	jle    0x3b75e0
  3b75d6:	f2 0f 10 05 d2 63 ef ff                         	movsd  xmm0,QWORD PTR [rip+0xffffffffffef63d2]        # 0x2ad9b0
  3b75de:	eb 08                                           	jmp    0x3b75e8
  3b75e0:	f2 0f 10 05 30 bb ed ff                         	movsd  xmm0,QWORD PTR [rip+0xffffffffffedbb30]        # 0x293118
  3b75e8:	2b df                                           	sub    ebx,edi
  3b75ea:	66 0f 5a c0                                     	cvtpd2ps xmm0,xmm0
  3b75ee:	66 0f 6e cb                                     	movd   xmm1,ebx
  3b75f2:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b75f5:	f3 41 0f 59 cc                                  	mulss  xmm1,xmm12
  3b75fa:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  3b75fe:	f3 0f 2c c1                                     	cvttss2si eax,xmm1
  3b7602:	03 c7                                           	add    eax,edi
  3b7604:	eb 02                                           	jmp    0x3b7608
  3b7606:	8b c7                                           	mov    eax,edi
  3b7608:	44 0f 28 74 24 40                               	movaps xmm14,XMMWORD PTR [rsp+0x40]
  3b760e:	4c 8d 9c 24 d0 00 00 00                         	lea    r11,[rsp+0xd0]
  3b7616:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  3b761a:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3b761f:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3b7624:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3b7629:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3b762e:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3b7633:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3b7638:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3b763d:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3b7642:	44 0f 28 7c 24 30                               	movaps xmm15,XMMWORD PTR [rsp+0x30]
  3b7648:	49 8b e3                                        	mov    rsp,r11
  3b764b:	5f                                              	pop    rdi
  3b764c:	c3                                              	ret
