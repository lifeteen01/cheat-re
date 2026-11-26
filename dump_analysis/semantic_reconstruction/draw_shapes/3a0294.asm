
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a0294 <.data+0x3a0294>:
  3a0294:	48 8b c4                                        	mov    rax,rsp
  3a0297:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3a029b:	44 89 48 20                                     	mov    DWORD PTR [rax+0x20],r9d
  3a029f:	44 89 40 18                                     	mov    DWORD PTR [rax+0x18],r8d
  3a02a3:	55                                              	push   rbp
  3a02a4:	56                                              	push   rsi
  3a02a5:	57                                              	push   rdi
  3a02a6:	41 54                                           	push   r12
  3a02a8:	41 55                                           	push   r13
  3a02aa:	41 56                                           	push   r14
  3a02ac:	41 57                                           	push   r15
  3a02ae:	48 8d 68 b1                                     	lea    rbp,[rax-0x4f]
  3a02b2:	48 81 ec f0 00 00 00                            	sub    rsp,0xf0
  3a02b9:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3a02bd:	4c 8b e2                                        	mov    r12,rdx
  3a02c0:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3a02c4:	ba 02 00 00 00                                  	mov    edx,0x2
  3a02c9:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3a02ce:	41 8b d9                                        	mov    ebx,r9d
  3a02d1:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3a02d6:	4c 8b f1                                        	mov    r14,rcx
  3a02d9:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  3a02e1:	49 63 f0                                        	movsxd rsi,r8d
  3a02e4:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  3a02ec:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  3a02f4:	3b f2                                           	cmp    esi,edx
  3a02f6:	0f 8c 48 0d 00 00                               	jl     0x3a1044
  3a02fc:	f7 c3 00 00 00 ff                               	test   ebx,0xff000000
  3a0302:	0f 84 3c 0d 00 00                               	je     0x3a1044
  3a0308:	49 8b 46 38                                     	mov    rax,QWORD PTR [r14+0x38]
  3a030c:	8d 4a ff                                        	lea    ecx,[rdx-0x1]
  3a030f:	20 4d 77                                        	and    BYTE PTR [rbp+0x77],cl
  3a0312:	f3 41 0f 10 be c0 00 00 00                      	movss  xmm7,DWORD PTR [r14+0xc0]
  3a031b:	f3 0f 10 75 7f                                  	movss  xmm6,DWORD PTR [rbp+0x7f]
  3a0320:	f3 44 0f 10 08                                  	movss  xmm9,DWORD PTR [rax]
  3a0325:	f3 44 0f 10 50 04                               	movss  xmm10,DWORD PTR [rax+0x4]
  3a032b:	8d 46 ff                                        	lea    eax,[rsi-0x1]
  3a032e:	8b f8                                           	mov    edi,eax
  3a0330:	89 44 24 44                                     	mov    DWORD PTR [rsp+0x44],eax
  3a0334:	0f 45 fe                                        	cmovne edi,esi
  3a0337:	0f 2f f7                                        	comiss xmm6,xmm7
  3a033a:	89 7c 24 38                                     	mov    DWORD PTR [rsp+0x38],edi
  3a033e:	41 0f 97 c5                                     	seta   r13b
  3a0342:	44 88 6c 24 22                                  	mov    BYTE PTR [rsp+0x22],r13b
  3a0347:	41 84 4e 30                                     	test   BYTE PTR [r14+0x30],cl
  3a034b:	0f 84 e9 0a 00 00                               	je     0x3a0e3a
  3a0351:	f3 44 0f 10 25 fa ce ee ff                      	movss  xmm12,DWORD PTR [rip+0xffffffffffeecefa]        # 0x28d254
  3a035a:	8b c3                                           	mov    eax,ebx
  3a035c:	25 ff ff ff 00                                  	and    eax,0xffffff
  3a0361:	41 0f 28 cc                                     	movaps xmm1,xmm12
  3a0365:	0f 28 c6                                        	movaps xmm0,xmm6
  3a0368:	89 45 8b                                        	mov    DWORD PTR [rbp-0x75],eax
  3a036b:	e8 84 a0 fe ff                                  	call   0x38a3f4
  3a0370:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3a0374:	44 8d 42 01                                     	lea    r8d,[rdx+0x1]
  3a0378:	f3 41 0f 2c c0                                  	cvttss2si eax,xmm8
  3a037d:	45 33 ff                                        	xor    r15d,r15d
  3a0380:	89 45 83                                        	mov    DWORD PTR [rbp-0x7d],eax
  3a0383:	41 84 56 30                                     	test   BYTE PTR [r14+0x30],dl
  3a0387:	74 31                                           	je     0x3a03ba
  3a0389:	83 f8 3f                                        	cmp    eax,0x3f
  3a038c:	7d 2c                                           	jge    0x3a03ba
  3a038e:	f3 0f 10 0d 3a d7 ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeed73a]        # 0x28dad0
  3a0396:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a039a:	66 0f 6e c0                                     	movd   xmm0,eax
  3a039e:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a03a1:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3a03a5:	0f 2f ca                                        	comiss xmm1,xmm2
  3a03a8:	72 10                                           	jb     0x3a03ba
  3a03aa:	41 0f 2e fc                                     	ucomiss xmm7,xmm12
  3a03ae:	7a 0a                                           	jp     0x3a03ba
  3a03b0:	75 08                                           	jne    0x3a03ba
  3a03b2:	8a d9                                           	mov    bl,cl
  3a03b4:	89 54 24 3c                                     	mov    DWORD PTR [rsp+0x3c],edx
  3a03b8:	eb 08                                           	jmp    0x3a03c2
  3a03ba:	41 8a df                                        	mov    bl,r15b
  3a03bd:	44 89 44 24 3c                                  	mov    DWORD PTR [rsp+0x3c],r8d
  3a03c2:	0f 2f f7                                        	comiss xmm6,xmm7
  3a03c5:	41 8b cf                                        	mov    ecx,r15d
  3a03c8:	88 5c 24 20                                     	mov    BYTE PTR [rsp+0x20],bl
  3a03cc:	41 8a c5                                        	mov    al,r13b
  3a03cf:	0f 97 c1                                        	seta   cl
  3a03d2:	41 03 c8                                        	add    ecx,r8d
  3a03d5:	84 db                                           	test   bl,bl
  3a03d7:	0f 45 ca                                        	cmovne ecx,edx
  3a03da:	0f af ce                                        	imul   ecx,esi
  3a03dd:	f6 d8                                           	neg    al
  3a03df:	b8 06 00 00 00                                  	mov    eax,0x6
  3a03e4:	1b d2                                           	sbb    edx,edx
  3a03e6:	23 d0                                           	and    edx,eax
  3a03e8:	83 c2 0c                                        	add    edx,0xc
  3a03eb:	89 4d 8f                                        	mov    DWORD PTR [rbp-0x71],ecx
  3a03ee:	44 8b c1                                        	mov    r8d,ecx
  3a03f1:	84 db                                           	test   bl,bl
  3a03f3:	49 8b ce                                        	mov    rcx,r14
  3a03f6:	0f 45 d0                                        	cmovne edx,eax
  3a03f9:	0f af d7                                        	imul   edx,edi
  3a03fc:	e8 9b 6d 00 00                                  	call   0x3a719c
  3a0401:	49 8b 4e 38                                     	mov    rcx,QWORD PTR [r14+0x38]
  3a0405:	48 83 c1 30                                     	add    rcx,0x30
  3a0409:	84 db                                           	test   bl,bl
  3a040b:	75 0a                                           	jne    0x3a0417
  3a040d:	ba 05 00 00 00                                  	mov    edx,0x5
  3a0412:	45 84 ed                                        	test   r13b,r13b
  3a0415:	75 05                                           	jne    0x3a041c
  3a0417:	ba 03 00 00 00                                  	mov    edx,0x3
  3a041c:	0f af d6                                        	imul   edx,esi
  3a041f:	e8 64 92 00 00                                  	call   0x3a9688
  3a0424:	49 8b 46 38                                     	mov    rax,QWORD PTR [r14+0x38]
  3a0428:	41 8b d7                                        	mov    edx,r15d
  3a042b:	48 89 74 24 50                                  	mov    QWORD PTR [rsp+0x50],rsi
  3a0430:	48 8b 58 38                                     	mov    rbx,QWORD PTR [rax+0x38]
  3a0434:	48 89 5c 24 28                                  	mov    QWORD PTR [rsp+0x28],rbx
  3a0439:	4c 8d 2c f3                                     	lea    r13,[rbx+rsi*8]
  3a043d:	85 ff                                           	test   edi,edi
  3a043f:	7e 7a                                           	jle    0x3a04bb
  3a0441:	44 8d 4a 01                                     	lea    r9d,[rdx+0x1]
  3a0445:	44 3b ce                                        	cmp    r9d,esi
  3a0448:	41 8b c1                                        	mov    eax,r9d
  3a044b:	41 0f 44 c7                                     	cmove  eax,r15d
  3a044f:	48 63 c8                                        	movsxd rcx,eax
  3a0452:	8b c2                                           	mov    eax,edx
  3a0454:	f3 41 0f 10 14 cc                               	movss  xmm2,DWORD PTR [r12+rcx*8]
  3a045a:	f3 41 0f 10 5c cc 04                            	movss  xmm3,DWORD PTR [r12+rcx*8+0x4]
  3a0461:	f3 41 0f 5c 14 c4                               	subss  xmm2,DWORD PTR [r12+rax*8]
  3a0467:	f3 41 0f 5c 5c c4 04                            	subss  xmm3,DWORD PTR [r12+rax*8+0x4]
  3a046e:	0f 28 ca                                        	movaps xmm1,xmm2
  3a0471:	0f 28 c3                                        	movaps xmm0,xmm3
  3a0474:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  3a0478:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  3a047c:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a0480:	0f 2f 05 c5 cd ee ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffeecdc5]        # 0x28d24c
  3a0487:	76 12                                           	jbe    0x3a049b
  3a0489:	e8 06 61 00 00                                  	call   0x3a6594
  3a048e:	0f 28 c8                                        	movaps xmm1,xmm0
  3a0491:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  3a0495:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  3a0499:	eb 06                                           	jmp    0x3a04a1
  3a049b:	0f 28 c3                                        	movaps xmm0,xmm3
  3a049e:	0f 28 ca                                        	movaps xmm1,xmm2
  3a04a1:	0f 57 0d f8 2d ef ff                            	xorps  xmm1,XMMWORD PTR [rip+0xffffffffffef2df8]        # 0x2932a0
  3a04a8:	41 8b d1                                        	mov    edx,r9d
  3a04ab:	f3 0f 11 4c c3 04                               	movss  DWORD PTR [rbx+rax*8+0x4],xmm1
  3a04b1:	f3 0f 11 04 c3                                  	movss  DWORD PTR [rbx+rax*8],xmm0
  3a04b6:	44 3b cf                                        	cmp    r9d,edi
  3a04b9:	7c 86                                           	jl     0x3a0441
  3a04bb:	8a 45 77                                        	mov    al,BYTE PTR [rbp+0x77]
  3a04be:	48 8d 0c f5 f8 ff ff ff                         	lea    rcx,[rsi*8-0x8]
  3a04c6:	48 89 4c 24 30                                  	mov    QWORD PTR [rsp+0x30],rcx
  3a04cb:	84 c0                                           	test   al,al
  3a04cd:	75 0d                                           	jne    0x3a04dc
  3a04cf:	f2 0f 10 44 f3 f0                               	movsd  xmm0,QWORD PTR [rbx+rsi*8-0x10]
  3a04d5:	f2 0f 11 04 19                                  	movsd  QWORD PTR [rcx+rbx*1],xmm0
  3a04da:	eb 05                                           	jmp    0x3a04e1
  3a04dc:	48 89 4c 24 30                                  	mov    QWORD PTR [rsp+0x30],rcx
  3a04e1:	44 8a 4c 24 20                                  	mov    r9b,BYTE PTR [rsp+0x20]
  3a04e6:	f3 44 0f 10 1d 61 cd ee ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffeecd61]        # 0x28d250
  3a04ef:	45 84 c9                                        	test   r9b,r9b
  3a04f2:	0f 85 0a 05 00 00                               	jne    0x3a0a02
  3a04f8:	44 38 7c 24 22                                  	cmp    BYTE PTR [rsp+0x22],r15b
  3a04fd:	0f 84 0d 05 00 00                               	je     0x3a0a10
  3a0503:	f3 44 0f 5c c7                                  	subss  xmm8,xmm7
  3a0508:	f3 45 0f 59 c3                                  	mulss  xmm8,xmm11
  3a050d:	84 c0                                           	test   al,al
  3a050f:	0f 85 91 01 00 00                               	jne    0x3a06a6
  3a0515:	41 0f 28 f0                                     	movaps xmm6,xmm8
  3a0519:	48 8d 4c 24 3c                                  	lea    rcx,[rsp+0x3c]
  3a051e:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3a0522:	48 8b d3                                        	mov    rdx,rbx
  3a0525:	0f 28 d6                                        	movaps xmm2,xmm6
  3a0528:	e8 db b6 fe ff                                  	call   0x38bc08
  3a052d:	4c 8b c0                                        	mov    r8,rax
  3a0530:	48 8d 4d 83                                     	lea    rcx,[rbp-0x7d]
  3a0534:	49 8b d4                                        	mov    rdx,r12
  3a0537:	e8 9c f4 f4 ff                                  	call   0x2ef9d8
  3a053c:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a0540:	48 8d 4c 24 3c                                  	lea    rcx,[rsp+0x3c]
  3a0545:	48 8b d3                                        	mov    rdx,rbx
  3a0548:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a054c:	f2 41 0f 11 45 00                               	movsd  QWORD PTR [r13+0x0],xmm0
  3a0552:	e8 b1 b6 fe ff                                  	call   0x38bc08
  3a0557:	4c 8b c0                                        	mov    r8,rax
  3a055a:	48 8d 4d 83                                     	lea    rcx,[rbp-0x7d]
  3a055e:	49 8b d4                                        	mov    rdx,r12
  3a0561:	e8 72 f4 f4 ff                                  	call   0x2ef9d8
  3a0566:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a056a:	48 8d 4c 24 3c                                  	lea    rcx,[rsp+0x3c]
  3a056f:	48 8b d3                                        	mov    rdx,rbx
  3a0572:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0576:	f2 41 0f 11 45 08                               	movsd  QWORD PTR [r13+0x8],xmm0
  3a057c:	e8 87 b6 fe ff                                  	call   0x38bc08
  3a0581:	4c 8b c0                                        	mov    r8,rax
  3a0584:	48 8d 4d 83                                     	lea    rcx,[rbp-0x7d]
  3a0588:	49 8b d4                                        	mov    rdx,r12
  3a058b:	e8 54 62 f9 ff                                  	call   0x3367e4
  3a0590:	0f 28 d6                                        	movaps xmm2,xmm6
  3a0593:	48 8d 4c 24 3c                                  	lea    rcx,[rsp+0x3c]
  3a0598:	48 8b d3                                        	mov    rdx,rbx
  3a059b:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a059f:	f2 41 0f 11 45 10                               	movsd  QWORD PTR [r13+0x10],xmm0
  3a05a5:	e8 5e b6 fe ff                                  	call   0x38bc08
  3a05aa:	4c 8b c0                                        	mov    r8,rax
  3a05ad:	48 8d 4d 83                                     	lea    rcx,[rbp-0x7d]
  3a05b1:	49 8b d4                                        	mov    rdx,r12
  3a05b4:	e8 2b 62 f9 ff                                  	call   0x3367e4
  3a05b9:	0f 28 d6                                        	movaps xmm2,xmm6
  3a05bc:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a05c1:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a05c5:	48 8b 44 24 30                                  	mov    rax,QWORD PTR [rsp+0x30]
  3a05ca:	f2 41 0f 11 45 18                               	movsd  QWORD PTR [r13+0x18],xmm0
  3a05d0:	48 8d 3c 18                                     	lea    rdi,[rax+rbx*1]
  3a05d4:	48 8b d7                                        	mov    rdx,rdi
  3a05d7:	4a 8d 34 20                                     	lea    rsi,[rax+r12*1]
  3a05db:	e8 28 b6 fe ff                                  	call   0x38bc08
  3a05e0:	4c 8b c0                                        	mov    r8,rax
  3a05e3:	48 8d 4c 24 3c                                  	lea    rcx,[rsp+0x3c]
  3a05e8:	48 8b d6                                        	mov    rdx,rsi
  3a05eb:	e8 e8 f3 f4 ff                                  	call   0x2ef9d8
  3a05f0:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [rsp+0x44]
  3a05f4:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a05f8:	c1 e1 02                                        	shl    ecx,0x2
  3a05fb:	48 8b d7                                        	mov    rdx,rdi
  3a05fe:	48 63 d9                                        	movsxd rbx,ecx
  3a0601:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a0606:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a060a:	48 03 5c 24 50                                  	add    rbx,QWORD PTR [rsp+0x50]
  3a060f:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
  3a0614:	f2 0f 11 04 d8                                  	movsd  QWORD PTR [rax+rbx*8],xmm0
  3a0619:	e8 ea b5 fe ff                                  	call   0x38bc08
  3a061e:	4c 8b c0                                        	mov    r8,rax
  3a0621:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a0626:	48 8b d6                                        	mov    rdx,rsi
  3a0629:	e8 aa f3 f4 ff                                  	call   0x2ef9d8
  3a062e:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a0632:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a0637:	48 8b d7                                        	mov    rdx,rdi
  3a063a:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a063e:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
  3a0643:	f2 0f 11 44 d8 08                               	movsd  QWORD PTR [rax+rbx*8+0x8],xmm0
  3a0649:	e8 ba b5 fe ff                                  	call   0x38bc08
  3a064e:	4c 8b c0                                        	mov    r8,rax
  3a0651:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a0656:	48 8b d6                                        	mov    rdx,rsi
  3a0659:	e8 86 61 f9 ff                                  	call   0x3367e4
  3a065e:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0662:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
  3a0667:	0f 28 d6                                        	movaps xmm2,xmm6
  3a066a:	f2 0f 11 44 d8 10                               	movsd  QWORD PTR [rax+rbx*8+0x10],xmm0
  3a0670:	48 8b d7                                        	mov    rdx,rdi
  3a0673:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a0678:	e8 8b b5 fe ff                                  	call   0x38bc08
  3a067d:	4c 8b c0                                        	mov    r8,rax
  3a0680:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a0685:	48 8b d6                                        	mov    rdx,rsi
  3a0688:	e8 57 61 f9 ff                                  	call   0x3367e4
  3a068d:	8b 75 67                                        	mov    esi,DWORD PTR [rbp+0x67]
  3a0690:	8b 7c 24 38                                     	mov    edi,DWORD PTR [rsp+0x38]
  3a0694:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0698:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
  3a069d:	f2 0f 11 44 d8 18                               	movsd  QWORD PTR [rax+rbx*8+0x18],xmm0
  3a06a3:	48 8b d8                                        	mov    rbx,rax
  3a06a6:	44 89 7c 24 44                                  	mov    DWORD PTR [rsp+0x44],r15d
  3a06ab:	4d 8d 46 34                                     	lea    r8,[r14+0x34]
  3a06af:	45 8b 08                                        	mov    r9d,DWORD PTR [r8]
  3a06b2:	41 0f 28 f0                                     	movaps xmm6,xmm8
  3a06b6:	4c 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],r8
  3a06bb:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3a06bf:	45 8b d7                                        	mov    r10d,r15d
  3a06c2:	85 ff                                           	test   edi,edi
  3a06c4:	0f 8e 73 02 00 00                               	jle    0x3a093d
  3a06ca:	b8 01 00 00 00                                  	mov    eax,0x1
  3a06cf:	89 44 24 3c                                     	mov    DWORD PTR [rsp+0x3c],eax
  3a06d3:	3b c6                                           	cmp    eax,esi
  3a06d5:	8b c8                                           	mov    ecx,eax
  3a06d7:	45 8b d9                                        	mov    r11d,r9d
  3a06da:	41 0f 44 cf                                     	cmove  ecx,r15d
  3a06de:	75 05                                           	jne    0x3a06e5
  3a06e0:	45 8b 08                                        	mov    r9d,DWORD PTR [r8]
  3a06e3:	eb 04                                           	jmp    0x3a06e9
  3a06e5:	41 83 c1 04                                     	add    r9d,0x4
  3a06e9:	48 63 d1                                        	movsxd rdx,ecx
  3a06ec:	41 8b c2                                        	mov    eax,r10d
  3a06ef:	f3 0f 10 0c d3                                  	movss  xmm1,DWORD PTR [rbx+rdx*8]
  3a06f4:	f3 0f 10 54 d3 04                               	movss  xmm2,DWORD PTR [rbx+rdx*8+0x4]
  3a06fa:	f3 0f 58 0c c3                                  	addss  xmm1,DWORD PTR [rbx+rax*8]
  3a06ff:	f3 0f 58 54 c3 04                               	addss  xmm2,DWORD PTR [rbx+rax*8+0x4]
  3a0705:	f3 41 0f 59 cb                                  	mulss  xmm1,xmm11
  3a070a:	f3 41 0f 59 d3                                  	mulss  xmm2,xmm11
  3a070f:	0f 28 c1                                        	movaps xmm0,xmm1
  3a0712:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3a0716:	0f 28 da                                        	movaps xmm3,xmm2
  3a0719:	f3 0f 59 da                                     	mulss  xmm3,xmm2
  3a071d:	f3 0f 58 d8                                     	addss  xmm3,xmm0
  3a0721:	0f 2f 1d a4 d3 ee ff                            	comiss xmm3,DWORD PTR [rip+0xffffffffffeed3a4]        # 0x28dacc
  3a0728:	76 21                                           	jbe    0x3a074b
  3a072a:	f3 0f 10 25 12 d4 ee ff                         	movss  xmm4,DWORD PTR [rip+0xffffffffffeed412]        # 0x28db44
  3a0732:	41 0f 28 c4                                     	movaps xmm0,xmm12
  3a0736:	f3 0f 5e c3                                     	divss  xmm0,xmm3
  3a073a:	f3 0f 5d e0                                     	minss  xmm4,xmm0
  3a073e:	0f 28 ec                                        	movaps xmm5,xmm4
  3a0741:	f3 0f 59 e2                                     	mulss  xmm4,xmm2
  3a0745:	f3 0f 59 e9                                     	mulss  xmm5,xmm1
  3a0749:	eb 06                                           	jmp    0x3a0751
  3a074b:	0f 28 e2                                        	movaps xmm4,xmm2
  3a074e:	0f 28 e9                                        	movaps xmm5,xmm1
  3a0751:	8d 04 8d 00 00 00 00                            	lea    eax,[rcx*4+0x0]
  3a0758:	0f 28 d6                                        	movaps xmm2,xmm6
  3a075b:	48 63 c8                                        	movsxd rcx,eax
  3a075e:	0f 28 de                                        	movaps xmm3,xmm6
  3a0761:	f3 0f 59 d5                                     	mulss  xmm2,xmm5
  3a0765:	45 8b d7                                        	mov    r10d,r15d
  3a0768:	f3 0f 59 dc                                     	mulss  xmm3,xmm4
  3a076c:	0f 28 c2                                        	movaps xmm0,xmm2
  3a076f:	f3 41 0f 59 e8                                  	mulss  xmm5,xmm8
  3a0774:	f3 41 0f 58 04 d4                               	addss  xmm0,DWORD PTR [r12+rdx*8]
  3a077a:	0f 28 cb                                        	movaps xmm1,xmm3
  3a077d:	f3 41 0f 59 e0                                  	mulss  xmm4,xmm8
  3a0782:	f3 41 0f 11 44 cd 00                            	movss  DWORD PTR [r13+rcx*8+0x0],xmm0
  3a0789:	0f 28 c5                                        	movaps xmm0,xmm5
  3a078c:	f3 41 0f 58 4c d4 04                            	addss  xmm1,DWORD PTR [r12+rdx*8+0x4]
  3a0793:	f3 41 0f 11 4c cd 04                            	movss  DWORD PTR [r13+rcx*8+0x4],xmm1
  3a079a:	0f 28 cc                                        	movaps xmm1,xmm4
  3a079d:	f3 41 0f 58 04 d4                               	addss  xmm0,DWORD PTR [r12+rdx*8]
  3a07a3:	f3 41 0f 11 44 cd 08                            	movss  DWORD PTR [r13+rcx*8+0x8],xmm0
  3a07aa:	f3 41 0f 58 4c d4 04                            	addss  xmm1,DWORD PTR [r12+rdx*8+0x4]
  3a07b1:	f3 41 0f 11 4c cd 0c                            	movss  DWORD PTR [r13+rcx*8+0xc],xmm1
  3a07b8:	f3 41 0f 10 04 d4                               	movss  xmm0,DWORD PTR [r12+rdx*8]
  3a07be:	f3 0f 5c c5                                     	subss  xmm0,xmm5
  3a07c2:	f3 41 0f 11 44 cd 10                            	movss  DWORD PTR [r13+rcx*8+0x10],xmm0
  3a07c9:	f3 41 0f 10 4c d4 04                            	movss  xmm1,DWORD PTR [r12+rdx*8+0x4]
  3a07d0:	f3 0f 5c cc                                     	subss  xmm1,xmm4
  3a07d4:	f3 41 0f 11 4c cd 14                            	movss  DWORD PTR [r13+rcx*8+0x14],xmm1
  3a07db:	f3 41 0f 10 04 d4                               	movss  xmm0,DWORD PTR [r12+rdx*8]
  3a07e1:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  3a07e5:	f3 41 0f 11 44 cd 18                            	movss  DWORD PTR [r13+rcx*8+0x18],xmm0
  3a07ec:	f3 41 0f 10 4c d4 04                            	movss  xmm1,DWORD PTR [r12+rdx*8+0x4]
  3a07f3:	ba 01 00 00 00                                  	mov    edx,0x1
  3a07f8:	f3 0f 5c cb                                     	subss  xmm1,xmm3
  3a07fc:	42 8d 3c 1a                                     	lea    edi,[rdx+r11*1]
  3a0800:	44 8d 42 01                                     	lea    r8d,[rdx+0x1]
  3a0804:	f3 41 0f 11 4c cd 1c                            	movss  DWORD PTR [r13+rcx*8+0x1c],xmm1
  3a080b:	42 8d 0c 0a                                     	lea    ecx,[rdx+r9*1]
  3a080f:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0813:	66 89 4c 24 22                                  	mov    WORD PTR [rsp+0x22],cx
  3a0818:	66 89 08                                        	mov    WORD PTR [rax],cx
  3a081b:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a081f:	42 8d 14 17                                     	lea    edx,[rdi+r10*1]
  3a0823:	41 8b ca                                        	mov    ecx,r10d
  3a0826:	41 ff c2                                        	inc    r10d
  3a0829:	66 89 54 48 02                                  	mov    WORD PTR [rax+rcx*2+0x2],dx
  3a082e:	45 3b d0                                        	cmp    r10d,r8d
  3a0831:	7c e8                                           	jl     0x3a081b
  3a0833:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0837:	43 8d 0c 18                                     	lea    ecx,[r8+r11*1]
  3a083b:	0f b7 54 24 22                                  	movzx  edx,WORD PTR [rsp+0x22]
  3a0840:	41 ba 01 00 00 00                               	mov    r10d,0x1
  3a0846:	66 89 4c 24 58                                  	mov    WORD PTR [rsp+0x58],cx
  3a084b:	66 89 48 06                                     	mov    WORD PTR [rax+0x6],cx
  3a084f:	43 8d 0c 08                                     	lea    ecx,[r8+r9*1]
  3a0853:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0857:	66 89 4d 83                                     	mov    WORD PTR [rbp-0x7d],cx
  3a085b:	66 89 48 08                                     	mov    WORD PTR [rax+0x8],cx
  3a085f:	49 8b cf                                        	mov    rcx,r15
  3a0862:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0866:	66 89 54 48 0a                                  	mov    WORD PTR [rax+rcx*2+0xa],dx
  3a086b:	49 03 ca                                        	add    rcx,r10
  3a086e:	48 83 f9 02                                     	cmp    rcx,0x2
  3a0872:	75 ee                                           	jne    0x3a0862
  3a0874:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0878:	49 8b cf                                        	mov    rcx,r15
  3a087b:	66 89 78 0e                                     	mov    WORD PTR [rax+0xe],di
  3a087f:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0883:	66 44 89 5c 48 10                               	mov    WORD PTR [rax+rcx*2+0x10],r11w
  3a0889:	49 03 ca                                        	add    rcx,r10
  3a088c:	48 83 f9 02                                     	cmp    rcx,0x2
  3a0890:	75 ed                                           	jne    0x3a087f
  3a0892:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0896:	45 8b d7                                        	mov    r10d,r15d
  3a0899:	0f b7 da                                        	movzx  ebx,dx
  3a089c:	66 44 89 48 14                                  	mov    WORD PTR [rax+0x14],r9w
  3a08a1:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a08a5:	42 8d 14 13                                     	lea    edx,[rbx+r10*1]
  3a08a9:	41 8b ca                                        	mov    ecx,r10d
  3a08ac:	41 ff c2                                        	inc    r10d
  3a08af:	66 89 54 48 16                                  	mov    WORD PTR [rax+rcx*2+0x16],dx
  3a08b4:	41 83 fa 02                                     	cmp    r10d,0x2
  3a08b8:	7c e7                                           	jl     0x3a08a1
  3a08ba:	48 8b 5c 24 28                                  	mov    rbx,QWORD PTR [rsp+0x28]
  3a08bf:	4d 8d 46 34                                     	lea    r8,[r14+0x34]
  3a08c3:	0f b7 74 24 58                                  	movzx  esi,WORD PTR [rsp+0x58]
  3a08c8:	45 8b d7                                        	mov    r10d,r15d
  3a08cb:	bf 01 00 00 00                                  	mov    edi,0x1
  3a08d0:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a08d4:	42 8d 14 16                                     	lea    edx,[rsi+r10*1]
  3a08d8:	41 8b ca                                        	mov    ecx,r10d
  3a08db:	44 03 d7                                        	add    r10d,edi
  3a08de:	66 89 54 48 1a                                  	mov    WORD PTR [rax+rcx*2+0x1a],dx
  3a08e3:	41 83 fa 02                                     	cmp    r10d,0x2
  3a08e7:	7c e7                                           	jl     0x3a08d0
  3a08e9:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a08ed:	ba 03 00 00 00                                  	mov    edx,0x3
  3a08f2:	44 8b 54 24 44                                  	mov    r10d,DWORD PTR [rsp+0x44]
  3a08f7:	66 44 03 da                                     	add    r11w,dx
  3a08fb:	8b 75 67                                        	mov    esi,DWORD PTR [rbp+0x67]
  3a08fe:	44 03 d7                                        	add    r10d,edi
  3a0901:	44 89 54 24 44                                  	mov    DWORD PTR [rsp+0x44],r10d
  3a0906:	66 44 89 58 1e                                  	mov    WORD PTR [rax+0x1e],r11w
  3a090b:	42 8d 0c 0a                                     	lea    ecx,[rdx+r9*1]
  3a090f:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0913:	66 89 48 20                                     	mov    WORD PTR [rax+0x20],cx
  3a0917:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a091b:	0f b7 4d 83                                     	movzx  ecx,WORD PTR [rbp-0x7d]
  3a091f:	66 89 48 22                                     	mov    WORD PTR [rax+0x22],cx
  3a0923:	49 83 46 50 24                                  	add    QWORD PTR [r14+0x50],0x24
  3a0928:	8b 44 24 3c                                     	mov    eax,DWORD PTR [rsp+0x3c]
  3a092c:	ff c0                                           	inc    eax
  3a092e:	89 44 24 3c                                     	mov    DWORD PTR [rsp+0x3c],eax
  3a0932:	44 3b 54 24 38                                  	cmp    r10d,DWORD PTR [rsp+0x38]
  3a0937:	0f 8c 96 fd ff ff                               	jl     0x3a06d3
  3a093d:	8b 55 6f                                        	mov    edx,DWORD PTR [rbp+0x6f]
  3a0940:	44 8b 4d 8b                                     	mov    r9d,DWORD PTR [rbp-0x75]
  3a0944:	42 8d 04 bd 00 00 00 00                         	lea    eax,[r15*4+0x0]
  3a094c:	41 ff c7                                        	inc    r15d
  3a094f:	48 63 c8                                        	movsxd rcx,eax
  3a0952:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0956:	f2 41 0f 10 44 cd 00                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x0]
  3a095d:	f2 0f 11 00                                     	movsd  QWORD PTR [rax],xmm0
  3a0961:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0965:	f3 44 0f 11 48 08                               	movss  DWORD PTR [rax+0x8],xmm9
  3a096b:	f3 44 0f 11 50 0c                               	movss  DWORD PTR [rax+0xc],xmm10
  3a0971:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0975:	44 89 48 10                                     	mov    DWORD PTR [rax+0x10],r9d
  3a0979:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a097d:	f2 41 0f 10 44 cd 08                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x8]
  3a0984:	f2 0f 11 40 14                                  	movsd  QWORD PTR [rax+0x14],xmm0
  3a0989:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a098d:	f3 44 0f 11 48 1c                               	movss  DWORD PTR [rax+0x1c],xmm9
  3a0993:	f3 44 0f 11 50 20                               	movss  DWORD PTR [rax+0x20],xmm10
  3a0999:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a099d:	89 50 24                                        	mov    DWORD PTR [rax+0x24],edx
  3a09a0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a09a4:	f2 41 0f 10 44 cd 10                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x10]
  3a09ab:	f2 0f 11 40 28                                  	movsd  QWORD PTR [rax+0x28],xmm0
  3a09b0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a09b4:	f3 44 0f 11 48 30                               	movss  DWORD PTR [rax+0x30],xmm9
  3a09ba:	f3 44 0f 11 50 34                               	movss  DWORD PTR [rax+0x34],xmm10
  3a09c0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a09c4:	89 50 38                                        	mov    DWORD PTR [rax+0x38],edx
  3a09c7:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a09cb:	f2 41 0f 10 44 cd 18                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x18]
  3a09d2:	f2 0f 11 40 3c                                  	movsd  QWORD PTR [rax+0x3c],xmm0
  3a09d7:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a09db:	f3 44 0f 11 48 44                               	movss  DWORD PTR [rax+0x44],xmm9
  3a09e1:	f3 44 0f 11 50 48                               	movss  DWORD PTR [rax+0x48],xmm10
  3a09e7:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a09eb:	44 89 48 4c                                     	mov    DWORD PTR [rax+0x4c],r9d
  3a09ef:	49 83 46 48 50                                  	add    QWORD PTR [r14+0x48],0x50
  3a09f4:	44 3b fe                                        	cmp    r15d,esi
  3a09f7:	0f 8c 47 ff ff ff                               	jl     0x3a0944
  3a09fd:	e9 8b 03 00 00                                  	jmp    0x3a0d8d
  3a0a02:	41 0f 28 f8                                     	movaps xmm7,xmm8
  3a0a06:	f3 41 0f 59 fb                                  	mulss  xmm7,xmm11
  3a0a0b:	f3 41 0f 58 fc                                  	addss  xmm7,xmm12
  3a0a10:	84 c0                                           	test   al,al
  3a0a12:	0f 85 d7 00 00 00                               	jne    0x3a0aef
  3a0a18:	0f 28 d7                                        	movaps xmm2,xmm7
  3a0a1b:	48 8d 4c 24 44                                  	lea    rcx,[rsp+0x44]
  3a0a20:	48 8b d3                                        	mov    rdx,rbx
  3a0a23:	e8 e0 b1 fe ff                                  	call   0x38bc08
  3a0a28:	4c 8b c0                                        	mov    r8,rax
  3a0a2b:	48 8d 4d 93                                     	lea    rcx,[rbp-0x6d]
  3a0a2f:	49 8b d4                                        	mov    rdx,r12
  3a0a32:	e8 a1 ef f4 ff                                  	call   0x2ef9d8
  3a0a37:	0f 28 d7                                        	movaps xmm2,xmm7
  3a0a3a:	48 8d 4d 93                                     	lea    rcx,[rbp-0x6d]
  3a0a3e:	48 8b d3                                        	mov    rdx,rbx
  3a0a41:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0a45:	f2 41 0f 11 45 00                               	movsd  QWORD PTR [r13+0x0],xmm0
  3a0a4b:	e8 b8 b1 fe ff                                  	call   0x38bc08
  3a0a50:	4c 8b c0                                        	mov    r8,rax
  3a0a53:	48 8d 4c 24 44                                  	lea    rcx,[rsp+0x44]
  3a0a58:	49 8b d4                                        	mov    rdx,r12
  3a0a5b:	e8 84 5d f9 ff                                  	call   0x3367e4
  3a0a60:	0f 28 d7                                        	movaps xmm2,xmm7
  3a0a63:	48 8d 4d 93                                     	lea    rcx,[rbp-0x6d]
  3a0a67:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0a6b:	48 8b 44 24 30                                  	mov    rax,QWORD PTR [rsp+0x30]
  3a0a70:	f2 41 0f 11 45 08                               	movsd  QWORD PTR [r13+0x8],xmm0
  3a0a76:	48 8d 3c 18                                     	lea    rdi,[rax+rbx*1]
  3a0a7a:	48 8b d7                                        	mov    rdx,rdi
  3a0a7d:	4a 8d 34 20                                     	lea    rsi,[rax+r12*1]
  3a0a81:	e8 82 b1 fe ff                                  	call   0x38bc08
  3a0a86:	4c 8b c0                                        	mov    r8,rax
  3a0a89:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a0a8e:	48 8b d6                                        	mov    rdx,rsi
  3a0a91:	e8 42 ef f4 ff                                  	call   0x2ef9d8
  3a0a96:	8b 4d 67                                        	mov    ecx,DWORD PTR [rbp+0x67]
  3a0a99:	0f 28 d7                                        	movaps xmm2,xmm7
  3a0a9c:	03 c9                                           	add    ecx,ecx
  3a0a9e:	48 8b d7                                        	mov    rdx,rdi
  3a0aa1:	48 63 d9                                        	movsxd rbx,ecx
  3a0aa4:	48 8d 4d 93                                     	lea    rcx,[rbp-0x6d]
  3a0aa8:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0aac:	48 03 5c 24 50                                  	add    rbx,QWORD PTR [rsp+0x50]
  3a0ab1:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
  3a0ab6:	f2 0f 11 44 d8 f0                               	movsd  QWORD PTR [rax+rbx*8-0x10],xmm0
  3a0abc:	e8 47 b1 fe ff                                  	call   0x38bc08
  3a0ac1:	4c 8b c0                                        	mov    r8,rax
  3a0ac4:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a0ac9:	48 8b d6                                        	mov    rdx,rsi
  3a0acc:	e8 13 5d f9 ff                                  	call   0x3367e4
  3a0ad1:	8b 75 67                                        	mov    esi,DWORD PTR [rbp+0x67]
  3a0ad4:	8b 7c 24 38                                     	mov    edi,DWORD PTR [rsp+0x38]
  3a0ad8:	44 8a 4c 24 20                                  	mov    r9b,BYTE PTR [rsp+0x20]
  3a0add:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a0ae1:	48 8b 44 24 28                                  	mov    rax,QWORD PTR [rsp+0x28]
  3a0ae6:	f2 0f 11 44 d8 f8                               	movsd  QWORD PTR [rax+rbx*8-0x8],xmm0
  3a0aec:	48 8b d8                                        	mov    rbx,rax
  3a0aef:	41 8b c7                                        	mov    eax,r15d
  3a0af2:	4d 8d 46 34                                     	lea    r8,[r14+0x34]
  3a0af6:	41 8b 10                                        	mov    edx,DWORD PTR [r8]
  3a0af9:	4c 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],r8
  3a0afe:	89 44 24 44                                     	mov    DWORD PTR [rsp+0x44],eax
  3a0b02:	85 ff                                           	test   edi,edi
  3a0b04:	0f 8e d5 01 00 00                               	jle    0x3a0cdf
  3a0b0a:	41 bb 01 00 00 00                               	mov    r11d,0x1
  3a0b10:	44 3b de                                        	cmp    r11d,esi
  3a0b13:	41 8b cb                                        	mov    ecx,r11d
  3a0b16:	41 0f 44 cf                                     	cmove  ecx,r15d
  3a0b1a:	75 05                                           	jne    0x3a0b21
  3a0b1c:	45 8b 00                                        	mov    r8d,DWORD PTR [r8]
  3a0b1f:	eb 08                                           	jmp    0x3a0b29
  3a0b21:	44 8b 44 24 3c                                  	mov    r8d,DWORD PTR [rsp+0x3c]
  3a0b26:	44 03 c2                                        	add    r8d,edx
  3a0b29:	4c 63 d1                                        	movsxd r10,ecx
  3a0b2c:	f3 42 0f 10 0c d3                               	movss  xmm1,DWORD PTR [rbx+r10*8]
  3a0b32:	f3 42 0f 10 5c d3 04                            	movss  xmm3,DWORD PTR [rbx+r10*8+0x4]
  3a0b39:	f3 0f 58 0c c3                                  	addss  xmm1,DWORD PTR [rbx+rax*8]
  3a0b3e:	f3 0f 58 5c c3 04                               	addss  xmm3,DWORD PTR [rbx+rax*8+0x4]
  3a0b44:	f3 41 0f 59 cb                                  	mulss  xmm1,xmm11
  3a0b49:	f3 41 0f 59 db                                  	mulss  xmm3,xmm11
  3a0b4e:	0f 28 c1                                        	movaps xmm0,xmm1
  3a0b51:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3a0b55:	0f 28 d3                                        	movaps xmm2,xmm3
  3a0b58:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  3a0b5c:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a0b60:	0f 2f 15 65 cf ee ff                            	comiss xmm2,DWORD PTR [rip+0xffffffffffeecf65]        # 0x28dacc
  3a0b67:	76 21                                           	jbe    0x3a0b8a
  3a0b69:	41 0f 28 c4                                     	movaps xmm0,xmm12
  3a0b6d:	f3 0f 5e c2                                     	divss  xmm0,xmm2
  3a0b71:	f3 0f 10 15 cb cf ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeecfcb]        # 0x28db44
  3a0b79:	f3 0f 5d d0                                     	minss  xmm2,xmm0
  3a0b7d:	0f 28 e2                                        	movaps xmm4,xmm2
  3a0b80:	f3 0f 59 d3                                     	mulss  xmm2,xmm3
  3a0b84:	f3 0f 59 e1                                     	mulss  xmm4,xmm1
  3a0b88:	eb 06                                           	jmp    0x3a0b90
  3a0b8a:	0f 28 d3                                        	movaps xmm2,xmm3
  3a0b8d:	0f 28 e1                                        	movaps xmm4,xmm1
  3a0b90:	f3 0f 59 e7                                     	mulss  xmm4,xmm7
  3a0b94:	8d 04 09                                        	lea    eax,[rcx+rcx*1]
  3a0b97:	48 63 c8                                        	movsxd rcx,eax
  3a0b9a:	f3 0f 59 d7                                     	mulss  xmm2,xmm7
  3a0b9e:	0f 28 c4                                        	movaps xmm0,xmm4
  3a0ba1:	f3 43 0f 58 04 d4                               	addss  xmm0,DWORD PTR [r12+r10*8]
  3a0ba7:	0f 28 ca                                        	movaps xmm1,xmm2
  3a0baa:	f3 41 0f 11 44 cd 00                            	movss  DWORD PTR [r13+rcx*8+0x0],xmm0
  3a0bb1:	f3 43 0f 58 4c d4 04                            	addss  xmm1,DWORD PTR [r12+r10*8+0x4]
  3a0bb8:	f3 41 0f 11 4c cd 04                            	movss  DWORD PTR [r13+rcx*8+0x4],xmm1
  3a0bbf:	f3 43 0f 10 04 d4                               	movss  xmm0,DWORD PTR [r12+r10*8]
  3a0bc5:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  3a0bc9:	f3 41 0f 11 44 cd 08                            	movss  DWORD PTR [r13+rcx*8+0x8],xmm0
  3a0bd0:	f3 43 0f 10 4c d4 04                            	movss  xmm1,DWORD PTR [r12+r10*8+0x4]
  3a0bd7:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  3a0bdb:	f3 41 0f 11 4c cd 0c                            	movss  DWORD PTR [r13+rcx*8+0xc],xmm1
  3a0be2:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0be6:	66 44 89 00                                     	mov    WORD PTR [rax],r8w
  3a0bea:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0bee:	66 89 50 02                                     	mov    WORD PTR [rax+0x2],dx
  3a0bf2:	45 84 c9                                        	test   r9b,r9b
  3a0bf5:	74 39                                           	je     0x3a0c30
  3a0bf7:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0bfb:	41 ba 01 00 00 00                               	mov    r10d,0x1
  3a0c01:	66 41 03 d2                                     	add    dx,r10w
  3a0c05:	66 89 50 04                                     	mov    WORD PTR [rax+0x4],dx
  3a0c09:	43 8d 0c 02                                     	lea    ecx,[r10+r8*1]
  3a0c0d:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c11:	66 89 48 06                                     	mov    WORD PTR [rax+0x6],cx
  3a0c15:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c19:	66 89 50 08                                     	mov    WORD PTR [rax+0x8],dx
  3a0c1d:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c21:	66 44 89 40 0a                                  	mov    WORD PTR [rax+0xa],r8w
  3a0c26:	49 83 46 50 0c                                  	add    QWORD PTR [r14+0x50],0xc
  3a0c2b:	e9 8c 00 00 00                                  	jmp    0x3a0cbc
  3a0c30:	bf 02 00 00 00                                  	mov    edi,0x2
  3a0c35:	49 8b cf                                        	mov    rcx,r15
  3a0c38:	44 8d 14 17                                     	lea    r10d,[rdi+rdx*1]
  3a0c3c:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c40:	66 44 89 54 48 04                               	mov    WORD PTR [rax+rcx*2+0x4],r10w
  3a0c46:	48 ff c1                                        	inc    rcx
  3a0c49:	48 3b cf                                        	cmp    rcx,rdi
  3a0c4c:	75 ee                                           	jne    0x3a0c3c
  3a0c4e:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c52:	42 8d 0c 07                                     	lea    ecx,[rdi+r8*1]
  3a0c56:	8b 7c 24 38                                     	mov    edi,DWORD PTR [rsp+0x38]
  3a0c5a:	be 01 00 00 00                                  	mov    esi,0x1
  3a0c5f:	66 89 48 08                                     	mov    WORD PTR [rax+0x8],cx
  3a0c63:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c67:	8d 0c 16                                        	lea    ecx,[rsi+rdx*1]
  3a0c6a:	46 8d 14 06                                     	lea    r10d,[rsi+r8*1]
  3a0c6e:	66 44 89 40 0a                                  	mov    WORD PTR [rax+0xa],r8w
  3a0c73:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c77:	66 44 89 50 0c                                  	mov    WORD PTR [rax+0xc],r10w
  3a0c7c:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c80:	66 89 48 0e                                     	mov    WORD PTR [rax+0xe],cx
  3a0c84:	49 8b cf                                        	mov    rcx,r15
  3a0c87:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c8b:	66 89 54 48 10                                  	mov    WORD PTR [rax+rcx*2+0x10],dx
  3a0c90:	48 03 ce                                        	add    rcx,rsi
  3a0c93:	48 83 f9 02                                     	cmp    rcx,0x2
  3a0c97:	75 ee                                           	jne    0x3a0c87
  3a0c99:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0c9d:	48 8b 5c 24 28                                  	mov    rbx,QWORD PTR [rsp+0x28]
  3a0ca2:	8b 75 67                                        	mov    esi,DWORD PTR [rbp+0x67]
  3a0ca5:	66 44 89 40 14                                  	mov    WORD PTR [rax+0x14],r8w
  3a0caa:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0cae:	66 44 89 50 16                                  	mov    WORD PTR [rax+0x16],r10w
  3a0cb3:	44 8d 51 ff                                     	lea    r10d,[rcx-0x1]
  3a0cb7:	49 83 46 50 18                                  	add    QWORD PTR [r14+0x50],0x18
  3a0cbc:	8b 44 24 44                                     	mov    eax,DWORD PTR [rsp+0x44]
  3a0cc0:	41 8b d0                                        	mov    edx,r8d
  3a0cc3:	41 03 c2                                        	add    eax,r10d
  3a0cc6:	4d 8d 46 34                                     	lea    r8,[r14+0x34]
  3a0cca:	41 ff c3                                        	inc    r11d
  3a0ccd:	89 44 24 44                                     	mov    DWORD PTR [rsp+0x44],eax
  3a0cd1:	3b c7                                           	cmp    eax,edi
  3a0cd3:	0f 8c 37 fe ff ff                               	jl     0x3a0b10
  3a0cd9:	4d 8d 46 34                                     	lea    r8,[r14+0x34]
  3a0cdd:	eb 06                                           	jmp    0x3a0ce5
  3a0cdf:	41 ba 01 00 00 00                               	mov    r10d,0x1
  3a0ce5:	45 84 c9                                        	test   r9b,r9b
  3a0ce8:	0f 84 a9 00 00 00                               	je     0x3a0d97
  3a0cee:	49 8b 46 38                                     	mov    rax,QWORD PTR [r14+0x38]
  3a0cf2:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3a0cf7:	48 63 7d 83                                     	movsxd rdi,DWORD PTR [rbp-0x7d]
  3a0cfb:	48 03 ff                                        	add    rdi,rdi
  3a0cfe:	48 8b 98 08 02 00 00                            	mov    rbx,QWORD PTR [rax+0x208]
  3a0d05:	f3 0f 10 54 fb 04                               	movss  xmm2,DWORD PTR [rbx+rdi*8+0x4]
  3a0d0b:	f3 0f 10 0c fb                                  	movss  xmm1,DWORD PTR [rbx+rdi*8]
  3a0d10:	e8 2b b6 f2 ff                                  	call   0x2cc340
  3a0d15:	f3 0f 10 54 fb 0c                               	movss  xmm2,DWORD PTR [rbx+rdi*8+0xc]
  3a0d1b:	48 8d 4c 24 28                                  	lea    rcx,[rsp+0x28]
  3a0d20:	f3 0f 10 4c fb 08                               	movss  xmm1,DWORD PTR [rbx+rdi*8+0x8]
  3a0d26:	e8 15 b6 f2 ff                                  	call   0x2cc340
  3a0d2b:	f2 0f 10 4c 24 50                               	movsd  xmm1,QWORD PTR [rsp+0x50]
  3a0d31:	f2 0f 10 54 24 28                               	movsd  xmm2,QWORD PTR [rsp+0x28]
  3a0d37:	8b 55 6f                                        	mov    edx,DWORD PTR [rbp+0x6f]
  3a0d3a:	43 8d 04 3f                                     	lea    eax,[r15+r15*1]
  3a0d3e:	41 ff c7                                        	inc    r15d
  3a0d41:	48 63 c8                                        	movsxd rcx,eax
  3a0d44:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0d48:	f2 41 0f 10 44 cd 00                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x0]
  3a0d4f:	f2 0f 11 00                                     	movsd  QWORD PTR [rax],xmm0
  3a0d53:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0d57:	f2 0f 11 48 08                                  	movsd  QWORD PTR [rax+0x8],xmm1
  3a0d5c:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0d60:	89 50 10                                        	mov    DWORD PTR [rax+0x10],edx
  3a0d63:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0d67:	f2 41 0f 10 44 cd 08                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x8]
  3a0d6e:	f2 0f 11 40 14                                  	movsd  QWORD PTR [rax+0x14],xmm0
  3a0d73:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0d77:	f2 0f 11 50 1c                                  	movsd  QWORD PTR [rax+0x1c],xmm2
  3a0d7c:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0d80:	89 50 24                                        	mov    DWORD PTR [rax+0x24],edx
  3a0d83:	49 83 46 48 28                                  	add    QWORD PTR [r14+0x48],0x28
  3a0d88:	44 3b fe                                        	cmp    r15d,esi
  3a0d8b:	7c ad                                           	jl     0x3a0d3a
  3a0d8d:	4c 8b 44 24 30                                  	mov    r8,QWORD PTR [rsp+0x30]
  3a0d92:	e9 97 00 00 00                                  	jmp    0x3a0e2e
  3a0d97:	8b 55 6f                                        	mov    edx,DWORD PTR [rbp+0x6f]
  3a0d9a:	44 8b 4d 8b                                     	mov    r9d,DWORD PTR [rbp-0x75]
  3a0d9e:	49 8b 4e 48                                     	mov    rcx,QWORD PTR [r14+0x48]
  3a0da2:	41 8b c7                                        	mov    eax,r15d
  3a0da5:	f2 41 0f 10 04 c4                               	movsd  xmm0,QWORD PTR [r12+rax*8]
  3a0dab:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  3a0daf:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0db3:	f3 44 0f 11 48 08                               	movss  DWORD PTR [rax+0x8],xmm9
  3a0db9:	f3 44 0f 11 50 0c                               	movss  DWORD PTR [rax+0xc],xmm10
  3a0dbf:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0dc3:	89 50 10                                        	mov    DWORD PTR [rax+0x10],edx
  3a0dc6:	43 8d 04 3f                                     	lea    eax,[r15+r15*1]
  3a0dca:	48 63 c8                                        	movsxd rcx,eax
  3a0dcd:	45 03 fa                                        	add    r15d,r10d
  3a0dd0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0dd4:	f2 41 0f 10 44 cd 00                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x0]
  3a0ddb:	f2 0f 11 40 14                                  	movsd  QWORD PTR [rax+0x14],xmm0
  3a0de0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0de4:	f3 44 0f 11 48 1c                               	movss  DWORD PTR [rax+0x1c],xmm9
  3a0dea:	f3 44 0f 11 50 20                               	movss  DWORD PTR [rax+0x20],xmm10
  3a0df0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0df4:	44 89 48 24                                     	mov    DWORD PTR [rax+0x24],r9d
  3a0df8:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0dfc:	f2 41 0f 10 44 cd 08                            	movsd  xmm0,QWORD PTR [r13+rcx*8+0x8]
  3a0e03:	f2 0f 11 40 28                                  	movsd  QWORD PTR [rax+0x28],xmm0
  3a0e08:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0e0c:	f3 44 0f 11 48 30                               	movss  DWORD PTR [rax+0x30],xmm9
  3a0e12:	f3 44 0f 11 50 34                               	movss  DWORD PTR [rax+0x34],xmm10
  3a0e18:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0e1c:	44 89 48 38                                     	mov    DWORD PTR [rax+0x38],r9d
  3a0e20:	49 83 46 48 3c                                  	add    QWORD PTR [r14+0x48],0x3c
  3a0e25:	44 3b fe                                        	cmp    r15d,esi
  3a0e28:	0f 8c 70 ff ff ff                               	jl     0x3a0d9e
  3a0e2e:	0f b7 45 8f                                     	movzx  eax,WORD PTR [rbp-0x71]
  3a0e32:	41 01 00                                        	add    DWORD PTR [r8],eax
  3a0e35:	e9 0a 02 00 00                                  	jmp    0x3a1044
  3a0e3a:	8d 14 7f                                        	lea    edx,[rdi+rdi*2]
  3a0e3d:	49 8b ce                                        	mov    rcx,r14
  3a0e40:	03 d2                                           	add    edx,edx
  3a0e42:	44 8d 04 bd 00 00 00 00                         	lea    r8d,[rdi*4+0x0]
  3a0e4a:	e8 4d 63 00 00                                  	call   0x3a719c
  3a0e4f:	45 33 ff                                        	xor    r15d,r15d
  3a0e52:	41 8b c7                                        	mov    eax,r15d
  3a0e55:	85 ff                                           	test   edi,edi
  3a0e57:	0f 8e e7 01 00 00                               	jle    0x3a1044
  3a0e5d:	f3 0f 59 35 eb c3 ee ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffeec3eb]        # 0x28d250
  3a0e65:	45 8d 57 01                                     	lea    r10d,[r15+0x1]
  3a0e69:	45 8d 5f 02                                     	lea    r11d,[r15+0x2]
  3a0e6d:	8b d0                                           	mov    edx,eax
  3a0e6f:	44 8d 48 01                                     	lea    r9d,[rax+0x1]
  3a0e73:	44 3b ce                                        	cmp    r9d,esi
  3a0e76:	41 8b c1                                        	mov    eax,r9d
  3a0e79:	41 0f 44 c7                                     	cmove  eax,r15d
  3a0e7d:	48 63 c8                                        	movsxd rcx,eax
  3a0e80:	f3 41 0f 10 24 cc                               	movss  xmm4,DWORD PTR [r12+rcx*8]
  3a0e86:	f3 41 0f 10 6c cc 04                            	movss  xmm5,DWORD PTR [r12+rcx*8+0x4]
  3a0e8d:	f3 41 0f 5c 24 d4                               	subss  xmm4,DWORD PTR [r12+rdx*8]
  3a0e93:	f3 41 0f 5c 6c d4 04                            	subss  xmm5,DWORD PTR [r12+rdx*8+0x4]
  3a0e9a:	0f 28 cc                                        	movaps xmm1,xmm4
  3a0e9d:	0f 28 c5                                        	movaps xmm0,xmm5
  3a0ea0:	f3 0f 59 cc                                     	mulss  xmm1,xmm4
  3a0ea4:	f3 0f 59 c5                                     	mulss  xmm0,xmm5
  3a0ea8:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a0eac:	0f 2f 05 99 c3 ee ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffeec399]        # 0x28d24c
  3a0eb3:	76 15                                           	jbe    0x3a0eca
  3a0eb5:	e8 da 56 00 00                                  	call   0x3a6594
  3a0eba:	0f 28 d8                                        	movaps xmm3,xmm0
  3a0ebd:	0f 28 d0                                        	movaps xmm2,xmm0
  3a0ec0:	f3 0f 59 d4                                     	mulss  xmm2,xmm4
  3a0ec4:	f3 0f 59 dd                                     	mulss  xmm3,xmm5
  3a0ec8:	eb 06                                           	jmp    0x3a0ed0
  3a0eca:	0f 28 dd                                        	movaps xmm3,xmm5
  3a0ecd:	0f 28 d4                                        	movaps xmm2,xmm4
  3a0ed0:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0ed4:	45 8b c7                                        	mov    r8d,r15d
  3a0ed7:	f3 0f 59 de                                     	mulss  xmm3,xmm6
  3a0edb:	f3 0f 59 d6                                     	mulss  xmm2,xmm6
  3a0edf:	0f 28 c3                                        	movaps xmm0,xmm3
  3a0ee2:	f3 41 0f 58 04 d4                               	addss  xmm0,DWORD PTR [r12+rdx*8]
  3a0ee8:	f3 0f 11 00                                     	movss  DWORD PTR [rax],xmm0
  3a0eec:	0f 28 c3                                        	movaps xmm0,xmm3
  3a0eef:	f3 41 0f 10 4c d4 04                            	movss  xmm1,DWORD PTR [r12+rdx*8+0x4]
  3a0ef6:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0efa:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  3a0efe:	f3 0f 11 48 04                                  	movss  DWORD PTR [rax+0x4],xmm1
  3a0f03:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f07:	f3 44 0f 11 48 08                               	movss  DWORD PTR [rax+0x8],xmm9
  3a0f0d:	f3 44 0f 11 50 0c                               	movss  DWORD PTR [rax+0xc],xmm10
  3a0f13:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f17:	89 58 10                                        	mov    DWORD PTR [rax+0x10],ebx
  3a0f1a:	f3 41 0f 58 04 cc                               	addss  xmm0,DWORD PTR [r12+rcx*8]
  3a0f20:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f24:	f3 0f 11 40 14                                  	movss  DWORD PTR [rax+0x14],xmm0
  3a0f29:	f3 41 0f 10 4c cc 04                            	movss  xmm1,DWORD PTR [r12+rcx*8+0x4]
  3a0f30:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f34:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  3a0f38:	f3 0f 11 48 18                                  	movss  DWORD PTR [rax+0x18],xmm1
  3a0f3d:	0f 28 ca                                        	movaps xmm1,xmm2
  3a0f40:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f44:	f3 44 0f 11 48 1c                               	movss  DWORD PTR [rax+0x1c],xmm9
  3a0f4a:	f3 44 0f 11 50 20                               	movss  DWORD PTR [rax+0x20],xmm10
  3a0f50:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f54:	89 58 24                                        	mov    DWORD PTR [rax+0x24],ebx
  3a0f57:	f3 41 0f 10 04 cc                               	movss  xmm0,DWORD PTR [r12+rcx*8]
  3a0f5d:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f61:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  3a0f65:	f3 0f 11 40 28                                  	movss  DWORD PTR [rax+0x28],xmm0
  3a0f6a:	f3 41 0f 58 4c cc 04                            	addss  xmm1,DWORD PTR [r12+rcx*8+0x4]
  3a0f71:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f75:	f3 0f 11 48 2c                                  	movss  DWORD PTR [rax+0x2c],xmm1
  3a0f7a:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f7e:	f3 44 0f 11 48 30                               	movss  DWORD PTR [rax+0x30],xmm9
  3a0f84:	f3 44 0f 11 50 34                               	movss  DWORD PTR [rax+0x34],xmm10
  3a0f8a:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f8e:	89 58 38                                        	mov    DWORD PTR [rax+0x38],ebx
  3a0f91:	f3 41 0f 10 04 d4                               	movss  xmm0,DWORD PTR [r12+rdx*8]
  3a0f97:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0f9b:	f3 0f 5c c3                                     	subss  xmm0,xmm3
  3a0f9f:	f3 0f 11 40 3c                                  	movss  DWORD PTR [rax+0x3c],xmm0
  3a0fa4:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0fa8:	f3 41 0f 58 54 d4 04                            	addss  xmm2,DWORD PTR [r12+rdx*8+0x4]
  3a0faf:	f3 0f 11 50 40                                  	movss  DWORD PTR [rax+0x40],xmm2
  3a0fb4:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0fb8:	f3 44 0f 11 48 44                               	movss  DWORD PTR [rax+0x44],xmm9
  3a0fbe:	f3 44 0f 11 50 48                               	movss  DWORD PTR [rax+0x48],xmm10
  3a0fc4:	49 8b 46 48                                     	mov    rax,QWORD PTR [r14+0x48]
  3a0fc8:	89 58 4c                                        	mov    DWORD PTR [rax+0x4c],ebx
  3a0fcb:	49 8b 4e 50                                     	mov    rcx,QWORD PTR [r14+0x50]
  3a0fcf:	41 0f b7 46 34                                  	movzx  eax,WORD PTR [r14+0x34]
  3a0fd4:	49 83 46 48 50                                  	add    QWORD PTR [r14+0x48],0x50
  3a0fd9:	66 89 01                                        	mov    WORD PTR [rcx],ax
  3a0fdc:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a0fe0:	41 0f b7 d0                                     	movzx  edx,r8w
  3a0fe4:	66 41 03 56 34                                  	add    dx,WORD PTR [r14+0x34]
  3a0fe9:	41 8b c8                                        	mov    ecx,r8d
  3a0fec:	66 41 03 d2                                     	add    dx,r10w
  3a0ff0:	45 03 c2                                        	add    r8d,r10d
  3a0ff3:	66 89 54 48 02                                  	mov    WORD PTR [rax+rcx*2+0x2],dx
  3a0ff8:	45 3b c3                                        	cmp    r8d,r11d
  3a0ffb:	7c df                                           	jl     0x3a0fdc
  3a0ffd:	49 8b 4e 50                                     	mov    rcx,QWORD PTR [r14+0x50]
  3a1001:	45 8b c7                                        	mov    r8d,r15d
  3a1004:	41 0f b7 46 34                                  	movzx  eax,WORD PTR [r14+0x34]
  3a1009:	66 89 41 06                                     	mov    WORD PTR [rcx+0x6],ax
  3a100d:	49 8b 46 50                                     	mov    rax,QWORD PTR [r14+0x50]
  3a1011:	41 0f b7 d0                                     	movzx  edx,r8w
  3a1015:	66 41 03 56 34                                  	add    dx,WORD PTR [r14+0x34]
  3a101a:	41 8b c8                                        	mov    ecx,r8d
  3a101d:	66 41 03 d3                                     	add    dx,r11w
  3a1021:	45 03 c2                                        	add    r8d,r10d
  3a1024:	66 89 54 48 08                                  	mov    WORD PTR [rax+rcx*2+0x8],dx
  3a1029:	45 3b c3                                        	cmp    r8d,r11d
  3a102c:	7c df                                           	jl     0x3a100d
  3a102e:	49 83 46 50 0c                                  	add    QWORD PTR [r14+0x50],0xc
  3a1033:	41 8b c1                                        	mov    eax,r9d
  3a1036:	41 83 46 34 04                                  	add    DWORD PTR [r14+0x34],0x4
  3a103b:	44 3b cf                                        	cmp    r9d,edi
  3a103e:	0f 8c 29 fe ff ff                               	jl     0x3a0e6d
  3a1044:	4c 8d 9c 24 f0 00 00 00                         	lea    r11,[rsp+0xf0]
  3a104c:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  3a1050:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3a1055:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3a105a:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3a105f:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3a1064:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3a1069:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3a106e:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3a1073:	49 8b e3                                        	mov    rsp,r11
  3a1076:	41 5f                                           	pop    r15
  3a1078:	41 5e                                           	pop    r14
  3a107a:	41 5d                                           	pop    r13
  3a107c:	41 5c                                           	pop    r12
  3a107e:	5f                                              	pop    rdi
  3a107f:	5e                                              	pop    rsi
  3a1080:	5d                                              	pop    rbp
  3a1081:	c3                                              	ret
