
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e02b0 <.data+0x2e02b0>:
  2e02b0:	48 8b c4                                        	mov    rax,rsp
  2e02b3:	55                                              	push   rbp
  2e02b4:	53                                              	push   rbx
  2e02b5:	56                                              	push   rsi
  2e02b6:	57                                              	push   rdi
  2e02b7:	41 54                                           	push   r12
  2e02b9:	41 55                                           	push   r13
  2e02bb:	41 56                                           	push   r14
  2e02bd:	41 57                                           	push   r15
  2e02bf:	48 8d 68 a1                                     	lea    rbp,[rax-0x5f]
  2e02c3:	48 81 ec b8 00 00 00                            	sub    rsp,0xb8
  2e02ca:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  2e02ce:	45 33 ff                                        	xor    r15d,r15d
  2e02d1:	44 89 7d 67                                     	mov    DWORD PTR [rbp+0x67],r15d
  2e02d5:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  2e02d9:	e8 6e 0b 00 00                                  	call   0x2e0e4c
  2e02de:	84 c0                                           	test   al,al
  2e02e0:	0f 85 89 03 00 00                               	jne    0x2e066f
  2e02e6:	e8 b1 03 00 00                                  	call   0x2e069c
  2e02eb:	48 8b c8                                        	mov    rcx,rax
  2e02ee:	48 89 45 67                                     	mov    QWORD PTR [rbp+0x67],rax
  2e02f2:	4c 8b e0                                        	mov    r12,rax
  2e02f5:	e8 0e ac fe ff                                  	call   0x2caf08
  2e02fa:	84 c0                                           	test   al,al
  2e02fc:	0f 84 6d 03 00 00                               	je     0x2e066f
  2e0302:	e8 95 d7 ff ff                                  	call   0x2dda9c
  2e0307:	48 8b c8                                        	mov    rcx,rax
  2e030a:	4c 8b e8                                        	mov    r13,rax
  2e030d:	e8 f6 ab fe ff                                  	call   0x2caf08
  2e0312:	84 c0                                           	test   al,al
  2e0314:	0f 84 55 03 00 00                               	je     0x2e066f
  2e031a:	44 38 3d e7 7c 0f 00                            	cmp    BYTE PTR [rip+0xf7ce7],r15b        # 0x3d8008
  2e0321:	74 47                                           	je     0x2e036a
  2e0323:	48 8b 1d 66 3b 10 00                            	mov    rbx,QWORD PTR [rip+0x103b66]        # 0x3e3e90
  2e032a:	48 8b cb                                        	mov    rcx,rbx
  2e032d:	e8 d6 ab fe ff                                  	call   0x2caf08
  2e0332:	84 c0                                           	test   al,al
  2e0334:	74 34                                           	je     0x2e036a
  2e0336:	48 8b cb                                        	mov    rcx,rbx
  2e0339:	e8 5e 0b 00 00                                  	call   0x2e0e9c
  2e033e:	84 c0                                           	test   al,al
  2e0340:	74 21                                           	je     0x2e0363
  2e0342:	48 8b cb                                        	mov    rcx,rbx
  2e0345:	e8 66 90 08 00                                  	call   0x3693b0
  2e034a:	84 c0                                           	test   al,al
  2e034c:	75 15                                           	jne    0x2e0363
  2e034e:	44 38 3d 4b 6f 0f 00                            	cmp    BYTE PTR [rip+0xf6f4b],r15b        # 0x3d72a0
  2e0355:	74 0c                                           	je     0x2e0363
  2e0357:	48 8b 05 32 3b 10 00                            	mov    rax,QWORD PTR [rip+0x103b32]        # 0x3e3e90
  2e035e:	e9 15 03 00 00                                  	jmp    0x2e0678
  2e0363:	4c 89 3d 26 3b 10 00                            	mov    QWORD PTR [rip+0x103b26],r15        # 0x3e3e90
  2e036a:	f3 0f 10 3d da d7 fa ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffffad7da]        # 0x28db4c
  2e0372:	48 8d 55 bf                                     	lea    rdx,[rbp-0x41]
  2e0376:	48 8d 0d 53 84 f3 ff                            	lea    rcx,[rip+0xfffffffffff38453]        # 0x2187d0
  2e037d:	33 f6                                           	xor    esi,esi
  2e037f:	e8 78 37 00 00                                  	call   0x2e3afc
  2e0384:	48 8b c8                                        	mov    rcx,rax
  2e0387:	48 8b d8                                        	mov    rbx,rax
  2e038a:	e8 e9 15 ff ff                                  	call   0x2d1978
  2e038f:	48 8b cb                                        	mov    rcx,rbx
  2e0392:	4c 8b f0                                        	mov    r14,rax
  2e0395:	e8 26 76 ff ff                                  	call   0x2d79c0
  2e039a:	48 89 45 7f                                     	mov    QWORD PTR [rbp+0x7f],rax
  2e039e:	4c 3b f0                                        	cmp    r14,rax
  2e03a1:	0f 84 ae 02 00 00                               	je     0x2e0655
  2e03a7:	49 8b 3e                                        	mov    rdi,QWORD PTR [r14]
  2e03aa:	48 8b cf                                        	mov    rcx,rdi
  2e03ad:	e8 56 ab fe ff                                  	call   0x2caf08
  2e03b2:	84 c0                                           	test   al,al
  2e03b4:	0f 84 8d 02 00 00                               	je     0x2e0647
  2e03ba:	48 8b cf                                        	mov    rcx,rdi
  2e03bd:	e8 da 0a 00 00                                  	call   0x2e0e9c
  2e03c2:	84 c0                                           	test   al,al
  2e03c4:	0f 84 7d 02 00 00                               	je     0x2e0647
  2e03ca:	41 8a 5e 08                                     	mov    bl,BYTE PTR [r14+0x8]
  2e03ce:	48 8b cf                                        	mov    rcx,rdi
  2e03d1:	8a d3                                           	mov    dl,bl
  2e03d3:	e8 ec aa 08 00                                  	call   0x36aec4
  2e03d8:	84 c0                                           	test   al,al
  2e03da:	0f 84 67 02 00 00                               	je     0x2e0647
  2e03e0:	49 3b fd                                        	cmp    rdi,r13
  2e03e3:	0f 84 5e 02 00 00                               	je     0x2e0647
  2e03e9:	8a c3                                           	mov    al,bl
  2e03eb:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e03ef:	f6 d8                                           	neg    al
  2e03f1:	48 8b cf                                        	mov    rcx,rdi
  2e03f4:	45 1b c0                                        	sbb    r8d,r8d
  2e03f7:	41 83 e0 fa                                     	and    r8d,0xfffffffa
  2e03fb:	41 83 c0 35                                     	add    r8d,0x35
  2e03ff:	e8 e4 87 08 00                                  	call   0x368be8
  2e0404:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  2e0408:	e8 af 77 0e 00                                  	call   0x3c7bbc
  2e040d:	48 8b d0                                        	mov    rdx,rax
  2e0410:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  2e0414:	e8 97 f1 ff ff                                  	call   0x2df5b0
  2e0419:	84 c0                                           	test   al,al
  2e041b:	0f 85 26 02 00 00                               	jne    0x2e0647
  2e0421:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  2e0425:	e8 7a af fe ff                                  	call   0x2cb3a4
  2e042a:	f2 0f 10 45 87                                  	movsd  xmm0,QWORD PTR [rbp-0x79]
  2e042f:	4c 8d 0d 72 6e 0f 00                            	lea    r9,[rip+0xf6e72]        # 0x3d72a8
  2e0436:	8b 45 8f                                        	mov    eax,DWORD PTR [rbp-0x71]
  2e0439:	4c 8d 45 6f                                     	lea    r8,[rbp+0x6f]
  2e043d:	48 8d 55 97                                     	lea    rdx,[rbp-0x69]
  2e0441:	f2 0f 11 45 97                                  	movsd  QWORD PTR [rbp-0x69],xmm0
  2e0446:	49 8b cc                                        	mov    rcx,r12
  2e0449:	89 45 9f                                        	mov    DWORD PTR [rbp-0x61],eax
  2e044c:	e8 cf c8 08 00                                  	call   0x36cd20
  2e0451:	84 c0                                           	test   al,al
  2e0453:	75 0c                                           	jne    0x2e0461
  2e0455:	38 05 cd 79 0f 00                               	cmp    BYTE PTR [rip+0xf79cd],al        # 0x3d7e28
  2e045b:	0f 84 e6 01 00 00                               	je     0x2e0647
  2e0461:	8a d3                                           	mov    dl,bl
  2e0463:	48 8b cf                                        	mov    rcx,rdi
  2e0466:	e8 c1 ce fe ff                                  	call   0x2cd32c
  2e046b:	8a d3                                           	mov    dl,bl
  2e046d:	49 8b cd                                        	mov    rcx,r13
  2e0470:	4c 8b e0                                        	mov    r12,rax
  2e0473:	e8 b4 ce fe ff                                  	call   0x2cd32c
  2e0478:	4d 85 e4                                        	test   r12,r12
  2e047b:	74 0a                                           	je     0x2e0487
  2e047d:	4c 3b e0                                        	cmp    r12,rax
  2e0480:	75 05                                           	jne    0x2e0487
  2e0482:	41 b4 01                                        	mov    r12b,0x1
  2e0485:	eb 03                                           	jmp    0x2e048a
  2e0487:	45 32 e4                                        	xor    r12b,r12b
  2e048a:	44 8a c3                                        	mov    r8b,bl
  2e048d:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2e0491:	48 8b cf                                        	mov    rcx,rdi
  2e0494:	41 83 cf 01                                     	or     r15d,0x1
  2e0498:	e8 d3 99 08 00                                  	call   0x369e70
  2e049d:	48 8b d0                                        	mov    rdx,rax
  2e04a0:	48 8d 0d b9 6d 0f 00                            	lea    rcx,[rip+0xf6db9]        # 0x3d7260
  2e04a7:	e8 5c f1 ff ff                                  	call   0x2df608
  2e04ac:	83 78 24 01                                     	cmp    DWORD PTR [rax+0x24],0x1
  2e04b0:	74 05                                           	je     0x2e04b7
  2e04b2:	45 84 e4                                        	test   r12b,r12b
  2e04b5:	74 03                                           	je     0x2e04ba
  2e04b7:	41 b4 01                                        	mov    r12b,0x1
  2e04ba:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2e04be:	41 83 e7 fe                                     	and    r15d,0xfffffffe
  2e04c2:	e8 2d c0 fe ff                                  	call   0x2cc4f4
  2e04c7:	45 84 e4                                        	test   r12b,r12b
  2e04ca:	0f 85 73 01 00 00                               	jne    0x2e0643
  2e04d0:	44 8a c3                                        	mov    r8b,bl
  2e04d3:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2e04d7:	48 8b cf                                        	mov    rcx,rdi
  2e04da:	e8 91 99 08 00                                  	call   0x369e70
  2e04df:	48 8b d0                                        	mov    rdx,rax
  2e04e2:	48 8d 0d 77 6d 0f 00                            	lea    rcx,[rip+0xf6d77]        # 0x3d7260
  2e04e9:	e8 1a f1 ff ff                                  	call   0x2df608
  2e04ee:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2e04f2:	44 8b 60 24                                     	mov    r12d,DWORD PTR [rax+0x24]
  2e04f6:	e8 f9 bf fe ff                                  	call   0x2cc4f4
  2e04fb:	41 83 fc 02                                     	cmp    r12d,0x2
  2e04ff:	75 22                                           	jne    0x2e0523
  2e0501:	80 3d 20 79 0f 00 00                            	cmp    BYTE PTR [rip+0xf7920],0x0        # 0x3d7e28
  2e0508:	74 19                                           	je     0x2e0523
  2e050a:	80 3d 8f 6d 0f 00 00                            	cmp    BYTE PTR [rip+0xf6d8f],0x0        # 0x3d72a0
  2e0511:	75 10                                           	jne    0x2e0523
  2e0513:	48 8b cf                                        	mov    rcx,rdi
  2e0516:	e8 29 ad 08 00                                  	call   0x36b244
  2e051b:	84 c0                                           	test   al,al
  2e051d:	0f 84 20 01 00 00                               	je     0x2e0643
  2e0523:	80 3d 9e 79 0f 00 00                            	cmp    BYTE PTR [rip+0xf799e],0x0        # 0x3d7ec8
  2e052a:	75 19                                           	jne    0x2e0545
  2e052c:	80 3d 55 78 0f 00 00                            	cmp    BYTE PTR [rip+0xf7855],0x0        # 0x3d7d88
  2e0533:	74 10                                           	je     0x2e0545
  2e0535:	48 8b cf                                        	mov    rcx,rdi
  2e0538:	e8 07 ad 08 00                                  	call   0x36b244
  2e053d:	84 c0                                           	test   al,al
  2e053f:	0f 84 fe 00 00 00                               	je     0x2e0643
  2e0545:	48 8b cf                                        	mov    rcx,rdi
  2e0548:	e8 2b 9c 08 00                                  	call   0x36a178
  2e054d:	48 8b 4d 67                                     	mov    rcx,QWORD PTR [rbp+0x67]
  2e0551:	48 8d 55 b3                                     	lea    rdx,[rbp-0x4d]
  2e0555:	8a d8                                           	mov    bl,al
  2e0557:	e8 d8 c4 08 00                                  	call   0x36ca34
  2e055c:	48 8b c8                                        	mov    rcx,rax
  2e055f:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e0563:	e8 c8 f9 ff ff                                  	call   0x2dff30
  2e0568:	84 db                                           	test   bl,bl
  2e056a:	74 0a                                           	je     0x2e0576
  2e056c:	66 0f 6e 0d 24 7c 0f 00                         	movd   xmm1,DWORD PTR [rip+0xf7c24]        # 0x3d8198
  2e0574:	eb 08                                           	jmp    0x2e057e
  2e0576:	66 0f 6e 0d ca 7b 0f 00                         	movd   xmm1,DWORD PTR [rip+0xf7bca]        # 0x3d8148
  2e057e:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  2e0581:	0f 2f c1                                        	comiss xmm0,xmm1
  2e0584:	0f 87 b9 00 00 00                               	ja     0x2e0643
  2e058a:	e8 61 05 00 00                                  	call   0x2e0af0
  2e058f:	66 0f 6e f0                                     	movd   xmm6,eax
  2e0593:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  2e0596:	f3 0f 59 35 b2 cc fa ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffffaccb2]        # 0x28d250
  2e059e:	e8 4d 04 00 00                                  	call   0x2e09f0
  2e05a3:	0f 28 ce                                        	movaps xmm1,xmm6
  2e05a6:	48 8d 4d 77                                     	lea    rcx,[rbp+0x77]
  2e05aa:	66 0f 6e d0                                     	movd   xmm2,eax
  2e05ae:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  2e05b1:	f3 0f 59 15 97 cc fa ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffffacc97]        # 0x28d250
  2e05b9:	e8 82 bd fe ff                                  	call   0x2cc340
  2e05be:	f3 0f 10 45 7b                                  	movss  xmm0,DWORD PTR [rbp+0x7b]
  2e05c3:	bb 02 00 00 00                                  	mov    ebx,0x2
  2e05c8:	f3 0f 5c 45 73                                  	subss  xmm0,DWORD PTR [rbp+0x73]
  2e05cd:	8b d3                                           	mov    edx,ebx
  2e05cf:	e8 7c 36 00 00                                  	call   0x2e3c50
  2e05d4:	0f 28 f0                                        	movaps xmm6,xmm0
  2e05d7:	8b d3                                           	mov    edx,ebx
  2e05d9:	f3 0f 10 45 77                                  	movss  xmm0,DWORD PTR [rbp+0x77]
  2e05de:	f3 0f 5c 45 6f                                  	subss  xmm0,DWORD PTR [rbp+0x6f]
  2e05e3:	e8 68 36 00 00                                  	call   0x2e3c50
  2e05e8:	f3 0f 58 f0                                     	addss  xmm6,xmm0
  2e05ec:	0f 28 c6                                        	movaps xmm0,xmm6
  2e05ef:	e8 94 36 00 00                                  	call   0x2e3c88
  2e05f4:	80 3d 2d 78 0f 00 00                            	cmp    BYTE PTR [rip+0xf782d],0x0        # 0x3d7e28
  2e05fb:	0f 28 f0                                        	movaps xmm6,xmm0
  2e05fe:	74 15                                           	je     0x2e0615
  2e0600:	48 8b cf                                        	mov    rcx,rdi
  2e0603:	e8 3c ac 08 00                                  	call   0x36b244
  2e0608:	84 c0                                           	test   al,al
  2e060a:	74 09                                           	je     0x2e0615
  2e060c:	44 3b e3                                        	cmp    r12d,ebx
  2e060f:	75 04                                           	jne    0x2e0615
  2e0611:	b0 01                                           	mov    al,0x1
  2e0613:	eb 02                                           	jmp    0x2e0617
  2e0615:	32 c0                                           	xor    al,al
  2e0617:	0f 2f fe                                        	comiss xmm7,xmm6
  2e061a:	76 20                                           	jbe    0x2e063c
  2e061c:	84 c0                                           	test   al,al
  2e061e:	75 20                                           	jne    0x2e0640
  2e0620:	66 0f 6e 05 c0 7b 0f 00                         	movd   xmm0,DWORD PTR [rip+0xf7bc0]        # 0x3d81e8
  2e0628:	4c 8b 65 67                                     	mov    r12,QWORD PTR [rbp+0x67]
  2e062c:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  2e062f:	0f 2f f0                                        	comiss xmm6,xmm0
  2e0632:	77 13                                           	ja     0x2e0647
  2e0634:	0f 28 fe                                        	movaps xmm7,xmm6
  2e0637:	48 8b f7                                        	mov    rsi,rdi
  2e063a:	eb 0b                                           	jmp    0x2e0647
  2e063c:	84 c0                                           	test   al,al
  2e063e:	74 03                                           	je     0x2e0643
  2e0640:	48 8b f7                                        	mov    rsi,rdi
  2e0643:	4c 8b 65 67                                     	mov    r12,QWORD PTR [rbp+0x67]
  2e0647:	49 83 c6 10                                     	add    r14,0x10
  2e064b:	4c 3b 75 7f                                     	cmp    r14,QWORD PTR [rbp+0x7f]
  2e064f:	0f 85 52 fd ff ff                               	jne    0x2e03a7
  2e0655:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  2e0659:	e8 22 ee ff ff                                  	call   0x2df480
  2e065e:	48 85 f6                                        	test   rsi,rsi
  2e0661:	74 07                                           	je     0x2e066a
  2e0663:	48 89 35 26 38 10 00                            	mov    QWORD PTR [rip+0x103826],rsi        # 0x3e3e90
  2e066a:	48 8b c6                                        	mov    rax,rsi
  2e066d:	eb 09                                           	jmp    0x2e0678
  2e066f:	4c 89 3d 1a 38 10 00                            	mov    QWORD PTR [rip+0x10381a],r15        # 0x3e3e90
  2e0676:	33 c0                                           	xor    eax,eax
  2e0678:	4c 8d 9c 24 b8 00 00 00                         	lea    r11,[rsp+0xb8]
  2e0680:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  2e0685:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  2e068a:	49 8b e3                                        	mov    rsp,r11
  2e068d:	41 5f                                           	pop    r15
  2e068f:	41 5e                                           	pop    r14
  2e0691:	41 5d                                           	pop    r13
  2e0693:	41 5c                                           	pop    r12
  2e0695:	5f                                              	pop    rdi
  2e0696:	5e                                              	pop    rsi
  2e0697:	5b                                              	pop    rbx
  2e0698:	5d                                              	pop    rbp
  2e0699:	c3                                              	ret
