
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002fa300 <.data+0x2fa300>:
  2fa300:	48 8b c4                                        	mov    rax,rsp
  2fa303:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  2fa307:	55                                              	push   rbp
  2fa308:	56                                              	push   rsi
  2fa309:	57                                              	push   rdi
  2fa30a:	41 54                                           	push   r12
  2fa30c:	41 55                                           	push   r13
  2fa30e:	41 56                                           	push   r14
  2fa310:	41 57                                           	push   r15
  2fa312:	48 8d 68 b8                                     	lea    rbp,[rax-0x48]
  2fa316:	48 81 ec 10 01 00 00                            	sub    rsp,0x110
  2fa31d:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  2fa321:	48 8b ca                                        	mov    rcx,rdx
  2fa324:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  2fa328:	4c 8b f2                                        	mov    r14,rdx
  2fa32b:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  2fa330:	e8 d3 0b fd ff                                  	call   0x2caf08
  2fa335:	84 c0                                           	test   al,al
  2fa337:	0f 84 8f 08 00 00                               	je     0x2fabcc
  2fa33d:	48 8b ca                                        	mov    rcx,rdx
  2fa340:	e8 57 6b fe ff                                  	call   0x2e0e9c
  2fa345:	84 c0                                           	test   al,al
  2fa347:	0f 84 7f 08 00 00                               	je     0x2fabcc
  2fa34d:	80 3d 14 fa 0e 00 00                            	cmp    BYTE PTR [rip+0xefa14],0x0        # 0x3e9d68
  2fa354:	0f 84 72 08 00 00                               	je     0x2fabcc
  2fa35a:	48 8b 3d 57 cf 0d 00                            	mov    rdi,QWORD PTR [rip+0xdcf57]        # 0x3d72b8
  2fa361:	48 8b cf                                        	mov    rcx,rdi
  2fa364:	e8 9f 0b fd ff                                  	call   0x2caf08
  2fa369:	84 c0                                           	test   al,al
  2fa36b:	0f 84 5b 08 00 00                               	je     0x2fabcc
  2fa371:	48 8b cf                                        	mov    rcx,rdi
  2fa374:	e8 23 6b fe ff                                  	call   0x2e0e9c
  2fa379:	84 c0                                           	test   al,al
  2fa37b:	0f 84 4b 08 00 00                               	je     0x2fabcc
  2fa381:	41 b8 3e 00 00 00                               	mov    r8d,0x3e
  2fa387:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  2fa38c:	48 8b cf                                        	mov    rcx,rdi
  2fa38f:	e8 54 e8 06 00                                  	call   0x368be8
  2fa394:	48 8b cf                                        	mov    rcx,rdi
  2fa397:	e8 70 f3 06 00                                  	call   0x36970c
  2fa39c:	f3 0f 10 0d ac 8e f9 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff98eac]        # 0x293250
  2fa3a4:	0f 2f c8                                        	comiss xmm1,xmm0
  2fa3a7:	72 23                                           	jb     0x2fa3cc
  2fa3a9:	41 b8 3f 00 00 00                               	mov    r8d,0x3f
  2fa3af:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2fa3b3:	48 8b cf                                        	mov    rcx,rdi
  2fa3b6:	e8 2d e8 06 00                                  	call   0x368be8
  2fa3bb:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa3bf:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  2fa3c5:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa3c8:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2fa3cc:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  2fa3d0:	e8 e7 d7 0c 00                                  	call   0x3c7bbc
  2fa3d5:	48 8b d0                                        	mov    rdx,rax
  2fa3d8:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  2fa3dd:	e8 ce 51 fe ff                                  	call   0x2df5b0
  2fa3e2:	84 c0                                           	test   al,al
  2fa3e4:	0f 85 e2 07 00 00                               	jne    0x2fabcc
  2fa3ea:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  2fa3ee:	49 8b ce                                        	mov    rcx,r14
  2fa3f1:	e8 6e ed 06 00                                  	call   0x369164
  2fa3f6:	49 8b ce                                        	mov    rcx,r14
  2fa3f9:	e8 86 e6 06 00                                  	call   0x368a84
  2fa3fe:	48 8b c8                                        	mov    rcx,rax
  2fa401:	48 8b d8                                        	mov    rbx,rax
  2fa404:	e8 ff 0a fd ff                                  	call   0x2caf08
  2fa409:	84 c0                                           	test   al,al
  2fa40b:	0f 84 bb 07 00 00                               	je     0x2fabcc
  2fa411:	48 8b cb                                        	mov    rcx,rbx
  2fa414:	e8 9b 7d 07 00                                  	call   0x3721b4
  2fa419:	48 8b cb                                        	mov    rcx,rbx
  2fa41c:	4c 8b e0                                        	mov    r12,rax
  2fa41f:	e8 40 70 07 00                                  	call   0x371464
  2fa424:	48 8b cb                                        	mov    rcx,rbx
  2fa427:	48 8b f0                                        	mov    rsi,rax
  2fa42a:	e8 89 7a 07 00                                  	call   0x371eb8
  2fa42f:	48 8b cb                                        	mov    rcx,rbx
  2fa432:	4c 8b f8                                        	mov    r15,rax
  2fa435:	e8 a6 72 07 00                                  	call   0x3716e0
  2fa43a:	48 8b c8                                        	mov    rcx,rax
  2fa43d:	4c 8b e8                                        	mov    r13,rax
  2fa440:	e8 c3 0a fd ff                                  	call   0x2caf08
  2fa445:	84 c0                                           	test   al,al
  2fa447:	0f 84 9d 01 00 00                               	je     0x2fa5ea
  2fa44d:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2fa451:	49 8b ce                                        	mov    rcx,r14
  2fa454:	e8 0b ed 06 00                                  	call   0x369164
  2fa459:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2fa45e:	49 8b ce                                        	mov    rcx,r14
  2fa461:	48 8b d8                                        	mov    rbx,rax
  2fa464:	e8 97 dc 06 00                                  	call   0x368100
  2fa469:	f3 0f 10 15 3b 8c f9 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff98c3b]        # 0x2930ac
  2fa471:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2fa476:	48 8b c8                                        	mov    rcx,rax
  2fa479:	e8 ee 51 fe ff                                  	call   0x2df66c
  2fa47e:	4c 8b c0                                        	mov    r8,rax
  2fa481:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2fa486:	48 8b cb                                        	mov    rcx,rbx
  2fa489:	e8 7a 52 fe ff                                  	call   0x2df708
  2fa48e:	f3 41 0f 10 85 f8 03 00 00                      	movss  xmm0,DWORD PTR [r13+0x3f8]
  2fa497:	48 8b cf                                        	mov    rcx,rdi
  2fa49a:	0f 5a c0                                        	cvtps2pd xmm0,xmm0
  2fa49d:	f2 0f 5c 05 6b 8c f9 ff                         	subsd  xmm0,QWORD PTR [rip+0xfffffffffff98c6b]        # 0x293110
  2fa4a5:	66 0f 5a f0                                     	cvtpd2ps xmm6,xmm0
  2fa4a9:	e8 a6 b5 01 00                                  	call   0x315a54
  2fa4ae:	48 8b c8                                        	mov    rcx,rax
  2fa4b1:	4c 8b c0                                        	mov    r8,rax
  2fa4b4:	e8 4f 0a fd ff                                  	call   0x2caf08
  2fa4b9:	45 33 ed                                        	xor    r13d,r13d
  2fa4bc:	84 c0                                           	test   al,al
  2fa4be:	74 1d                                           	je     0x2fa4dd
  2fa4c0:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2fa4c4:	49 8b c8                                        	mov    rcx,r8
  2fa4c7:	e8 08 a3 07 00                                  	call   0x3747d4
  2fa4cc:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa4d0:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  2fa4d6:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa4d9:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2fa4dd:	0f 28 ce                                        	movaps xmm1,xmm6
  2fa4e0:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  2fa4e4:	e8 57 f0 fd ff                                  	call   0x2d9540
  2fa4e9:	48 8b 1d 28 b2 0e 00                            	mov    rbx,QWORD PTR [rip+0xeb228]        # 0x3e5718
  2fa4f0:	48 85 db                                        	test   rbx,rbx
  2fa4f3:	75 0e                                           	jne    0x2fa503
  2fa4f5:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  2fa4f9:	e8 f6 1f fd ff                                  	call   0x2cc4f4
  2fa4fe:	e9 c9 06 00 00                                  	jmp    0x2fabcc
  2fa503:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2fa507:	48 8b cf                                        	mov    rcx,rdi
  2fa50a:	e8 0d f7 06 00                                  	call   0x369c1c
  2fa50f:	4c 8d 4c 24 50                                  	lea    r9,[rsp+0x50]
  2fa514:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  2fa519:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  2fa51e:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2fa522:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa526:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2fa52b:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa52e:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2fa534:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2fa53a:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2fa53e:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2fa542:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  2fa548:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  2fa54e:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  2fa552:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  2fa556:	f2 0f 11 45 90                                  	movsd  QWORD PTR [rbp-0x70],xmm0
  2fa55b:	89 45 98                                        	mov    DWORD PTR [rbp-0x68],eax
  2fa55e:	e8 11 7e fe ff                                  	call   0x2e2374
  2fa563:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2fa568:	e8 eb 95 fe ff                                  	call   0x2e3b58
  2fa56d:	84 c0                                           	test   al,al
  2fa56f:	75 6b                                           	jne    0x2fa5dc
  2fa571:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2fa575:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  2fa57a:	e8 f9 6c fe ff                                  	call   0x2e1278
  2fa57f:	48 8b c8                                        	mov    rcx,rax
  2fa582:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2fa587:	0f 28 d6                                        	movaps xmm2,xmm6
  2fa58a:	e8 dd 50 fe ff                                  	call   0x2df66c
  2fa58f:	48 8b c8                                        	mov    rcx,rax
  2fa592:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  2fa597:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2fa59c:	e8 67 51 fe ff                                  	call   0x2df708
  2fa5a1:	f3 0f 10 15 a7 2c f9 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff92ca7]        # 0x28d250
  2fa5a9:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2fa5ad:	48 8d 0d ac ba 0e 00                            	lea    rcx,[rip+0xebaac]        # 0x3e6060
  2fa5b4:	48 8b d8                                        	mov    rbx,rax
  2fa5b7:	e8 b0 50 fe ff                                  	call   0x2df66c
  2fa5bc:	4c 8b c0                                        	mov    r8,rax
  2fa5bf:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa5c3:	48 8b cb                                        	mov    rcx,rbx
  2fa5c6:	e8 01 51 fe ff                                  	call   0x2df6cc
  2fa5cb:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa5cf:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  2fa5d5:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa5d8:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2fa5dc:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  2fa5e0:	e8 0f 1f fd ff                                  	call   0x2cc4f4
  2fa5e5:	e9 68 04 00 00                                  	jmp    0x2faa52
  2fa5ea:	49 8b cf                                        	mov    rcx,r15
  2fa5ed:	e8 16 09 fd ff                                  	call   0x2caf08
  2fa5f2:	45 33 ed                                        	xor    r13d,r13d
  2fa5f5:	84 c0                                           	test   al,al
  2fa5f7:	0f 84 78 01 00 00                               	je     0x2fa775
  2fa5fd:	49 8b cf                                        	mov    rcx,r15
  2fa600:	e8 33 13 07 00                                  	call   0x36b938
  2fa605:	48 8b c8                                        	mov    rcx,rax
  2fa608:	48 8b d0                                        	mov    rdx,rax
  2fa60b:	e8 f8 08 fd ff                                  	call   0x2caf08
  2fa610:	84 c0                                           	test   al,al
  2fa612:	0f 84 3a 04 00 00                               	je     0x2faa52
  2fa618:	48 8b ca                                        	mov    rcx,rdx
  2fa61b:	e8 10 85 07 00                                  	call   0x372b30
  2fa620:	48 8b c8                                        	mov    rcx,rax
  2fa623:	48 8b d0                                        	mov    rdx,rax
  2fa626:	e8 dd 08 fd ff                                  	call   0x2caf08
  2fa62b:	84 c0                                           	test   al,al
  2fa62d:	0f 84 1f 04 00 00                               	je     0x2faa52
  2fa633:	f3 0f 10 72 3c                                  	movss  xmm6,DWORD PTR [rdx+0x3c]
  2fa638:	49 8b ce                                        	mov    rcx,r14
  2fa63b:	f3 41 0f 10 bf ac 03 00 00                      	movss  xmm7,DWORD PTR [r15+0x3ac]
  2fa644:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa648:	e8 b3 da 06 00                                  	call   0x368100
  2fa64d:	48 8b c8                                        	mov    rcx,rax
  2fa650:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2fa654:	e8 1f 6c fe ff                                  	call   0x2e1278
  2fa659:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa65d:	49 8b ce                                        	mov    rcx,r14
  2fa660:	e8 ff ea 06 00                                  	call   0x369164
  2fa665:	f3 0f 10 15 e7 2b f9 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff92be7]        # 0x28d254
  2fa66d:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2fa672:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  2fa676:	48 8b d8                                        	mov    rbx,rax
  2fa679:	e8 ee 4f fe ff                                  	call   0x2df66c
  2fa67e:	4c 8b c0                                        	mov    r8,rax
  2fa681:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2fa686:	48 8b cb                                        	mov    rcx,rbx
  2fa689:	e8 7a 50 fe ff                                  	call   0x2df708
  2fa68e:	48 8b cf                                        	mov    rcx,rdi
  2fa691:	e8 be b3 01 00                                  	call   0x315a54
  2fa696:	48 8b c8                                        	mov    rcx,rax
  2fa699:	4c 8b c0                                        	mov    r8,rax
  2fa69c:	e8 67 08 fd ff                                  	call   0x2caf08
  2fa6a1:	84 c0                                           	test   al,al
  2fa6a3:	74 1d                                           	je     0x2fa6c2
  2fa6a5:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa6a9:	49 8b c8                                        	mov    rcx,r8
  2fa6ac:	e8 23 a1 07 00                                  	call   0x3747d4
  2fa6b1:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa6b5:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  2fa6bb:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa6be:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2fa6c2:	48 8b 1d 4f b0 0e 00                            	mov    rbx,QWORD PTR [rip+0xeb04f]        # 0x3e5718
  2fa6c9:	48 85 db                                        	test   rbx,rbx
  2fa6cc:	0f 84 fa 04 00 00                               	je     0x2fabcc
  2fa6d2:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa6d6:	48 8b cf                                        	mov    rcx,rdi
  2fa6d9:	e8 3e f5 06 00                                  	call   0x369c1c
  2fa6de:	4c 8d 4c 24 70                                  	lea    r9,[rsp+0x70]
  2fa6e3:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  2fa6e8:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  2fa6ed:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2fa6f2:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa6f6:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  2fa6fa:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa6fd:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  2fa703:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2fa709:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  2fa70d:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2fa711:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2fa717:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  2fa71d:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2fa721:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  2fa725:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  2fa72b:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  2fa72f:	e8 40 7c fe ff                                  	call   0x2e2374
  2fa734:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  2fa738:	e8 1b 94 fe ff                                  	call   0x2e3b58
  2fa73d:	84 c0                                           	test   al,al
  2fa73f:	0f 85 0d 03 00 00                               	jne    0x2faa52
  2fa745:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa749:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  2fa74d:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  2fa751:	e8 22 6b fe ff                                  	call   0x2e1278
  2fa756:	48 8b c8                                        	mov    rcx,rax
  2fa759:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2fa75e:	0f 28 d6                                        	movaps xmm2,xmm6
  2fa761:	e8 06 4f fe ff                                  	call   0x2df66c
  2fa766:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  2fa76b:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2fa770:	e9 c4 02 00 00                                  	jmp    0x2faa39
  2fa775:	49 8b cc                                        	mov    rcx,r12
  2fa778:	e8 8b 07 fd ff                                  	call   0x2caf08
  2fa77d:	84 c0                                           	test   al,al
  2fa77f:	0f 84 f8 00 00 00                               	je     0x2fa87d
  2fa785:	48 8b cb                                        	mov    rcx,rbx
  2fa788:	e8 a3 6e 07 00                                  	call   0x371630
  2fa78d:	48 8b c8                                        	mov    rcx,rax
  2fa790:	48 8b d8                                        	mov    rbx,rax
  2fa793:	e8 70 07 fd ff                                  	call   0x2caf08
  2fa798:	84 c0                                           	test   al,al
  2fa79a:	0f 84 b2 02 00 00                               	je     0x2faa52
  2fa7a0:	48 8b cb                                        	mov    rcx,rbx
  2fa7a3:	e8 14 83 07 00                                  	call   0x372abc
  2fa7a8:	48 8b c8                                        	mov    rcx,rax
  2fa7ab:	e8 58 07 fd ff                                  	call   0x2caf08
  2fa7b0:	84 c0                                           	test   al,al
  2fa7b2:	0f 84 9a 02 00 00                               	je     0x2faa52
  2fa7b8:	44 38 2d 29 d5 0d 00                            	cmp    BYTE PTR [rip+0xdd529],r13b        # 0x3d7ce8
  2fa7bf:	74 12                                           	je     0x2fa7d3
  2fa7c1:	f3 0f 10 35 df d8 0d 00                         	movss  xmm6,DWORD PTR [rip+0xdd8df]        # 0x3d80a8
  2fa7c9:	f3 0f 5d 35 27 33 f9 ff                         	minss  xmm6,DWORD PTR [rip+0xfffffffffff93327]        # 0x28daf8
  2fa7d1:	eb 08                                           	jmp    0x2fa7db
  2fa7d3:	f3 0f 10 35 79 2a f9 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff92a79]        # 0x28d254
  2fa7db:	48 8b 35 36 af 0e 00                            	mov    rsi,QWORD PTR [rip+0xeaf36]        # 0x3e5718
  2fa7e2:	48 85 f6                                        	test   rsi,rsi
  2fa7e5:	0f 84 e1 03 00 00                               	je     0x2fabcc
  2fa7eb:	f3 0f 10 7b 40                                  	movss  xmm7,DWORD PTR [rbx+0x40]
  2fa7f0:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa7f4:	48 8b cf                                        	mov    rcx,rdi
  2fa7f7:	e8 20 f4 06 00                                  	call   0x369c1c
  2fa7fc:	4c 8d 4c 24 70                                  	lea    r9,[rsp+0x70]
  2fa801:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  2fa806:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  2fa80b:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2fa810:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa814:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2fa819:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa81c:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  2fa822:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2fa828:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  2fa82c:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2fa830:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  2fa836:	f2 0f 10 45 b0                                  	movsd  xmm0,QWORD PTR [rbp-0x50]
  2fa83b:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2fa83f:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
  2fa842:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2fa848:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2fa84c:	e8 23 7b fe ff                                  	call   0x2e2374
  2fa851:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2fa856:	e8 fd 92 fe ff                                  	call   0x2e3b58
  2fa85b:	84 c0                                           	test   al,al
  2fa85d:	0f 85 ef 01 00 00                               	jne    0x2faa52
  2fa863:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa867:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2fa86c:	e8 07 6a fe ff                                  	call   0x2e1278
  2fa871:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  2fa875:	0f 28 d6                                        	movaps xmm2,xmm6
  2fa878:	e9 a7 01 00 00                                  	jmp    0x2faa24
  2fa87d:	48 8b ce                                        	mov    rcx,rsi
  2fa880:	e8 83 06 fd ff                                  	call   0x2caf08
  2fa885:	84 c0                                           	test   al,al
  2fa887:	0f 84 3f 03 00 00                               	je     0x2fabcc
  2fa88d:	48 8b cb                                        	mov    rcx,rbx
  2fa890:	e8 b7 6c 07 00                                  	call   0x37154c
  2fa895:	48 8b c8                                        	mov    rcx,rax
  2fa898:	4c 8b f8                                        	mov    r15,rax
  2fa89b:	e8 68 06 fd ff                                  	call   0x2caf08
  2fa8a0:	84 c0                                           	test   al,al
  2fa8a2:	0f 84 aa 01 00 00                               	je     0x2faa52
  2fa8a8:	48 8b ce                                        	mov    rcx,rsi
  2fa8ab:	e8 88 10 07 00                                  	call   0x36b938
  2fa8b0:	48 8b c8                                        	mov    rcx,rax
  2fa8b3:	48 8b d8                                        	mov    rbx,rax
  2fa8b6:	e8 4d 06 fd ff                                  	call   0x2caf08
  2fa8bb:	84 c0                                           	test   al,al
  2fa8bd:	0f 84 8f 01 00 00                               	je     0x2faa52
  2fa8c3:	48 8b cb                                        	mov    rcx,rbx
  2fa8c6:	e8 f1 81 07 00                                  	call   0x372abc
  2fa8cb:	48 8b c8                                        	mov    rcx,rax
  2fa8ce:	e8 35 06 fd ff                                  	call   0x2caf08
  2fa8d3:	84 c0                                           	test   al,al
  2fa8d5:	0f 84 77 01 00 00                               	je     0x2faa52
  2fa8db:	f3 44 0f 10 86 ac 03 00 00                      	movss  xmm8,DWORD PTR [rsi+0x3ac]
  2fa8e4:	49 8b cf                                        	mov    rcx,r15
  2fa8e7:	e8 30 7d 07 00                                  	call   0x37261c
  2fa8ec:	3d 71 3d b7 34                                  	cmp    eax,0x34b73d71
  2fa8f1:	75 0c                                           	jne    0x2fa8ff
  2fa8f3:	48 8b ce                                        	mov    rcx,rsi
  2fa8f6:	e8 09 0c 07 00                                  	call   0x36b504
  2fa8fb:	44 0f 28 c0                                     	movaps xmm8,xmm0
  2fa8ff:	48 8b ce                                        	mov    rcx,rsi
  2fa902:	e8 51 0e 07 00                                  	call   0x36b758
  2fa907:	0f 2f 05 c2 38 f9 ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffff938c2]        # 0x28e1d0
  2fa90e:	73 4a                                           	jae    0x2fa95a
  2fa910:	44 38 2d ea d9 0d 00                            	cmp    BYTE PTR [rip+0xdd9ea],r13b        # 0x3d8301
  2fa917:	74 13                                           	je     0x2fa92c
  2fa919:	44 38 2d 18 99 0e 00                            	cmp    BYTE PTR [rip+0xe9918],r13b        # 0x3e4238
  2fa920:	74 0a                                           	je     0x2fa92c
  2fa922:	f3 0f 10 35 5a b7 0e 00                         	movss  xmm6,DWORD PTR [rip+0xeb75a]        # 0x3e6084
  2fa92a:	eb 24                                           	jmp    0x2fa950
  2fa92c:	44 38 2d 85 d6 0d 00                            	cmp    BYTE PTR [rip+0xdd685],r13b        # 0x3d7fb8
  2fa933:	74 0a                                           	je     0x2fa93f
  2fa935:	f3 0f 10 35 bb 31 f9 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff931bb]        # 0x28daf8
  2fa93d:	eb 23                                           	jmp    0x2fa962
  2fa93f:	44 38 2d a2 d3 0d 00                            	cmp    BYTE PTR [rip+0xdd3a2],r13b        # 0x3d7ce8
  2fa946:	74 12                                           	je     0x2fa95a
  2fa948:	f3 0f 10 35 58 d7 0d 00                         	movss  xmm6,DWORD PTR [rip+0xdd758]        # 0x3d80a8
  2fa950:	f3 0f 5d 35 a0 31 f9 ff                         	minss  xmm6,DWORD PTR [rip+0xfffffffffff931a0]        # 0x28daf8
  2fa958:	eb 08                                           	jmp    0x2fa962
  2fa95a:	f3 0f 10 35 f2 28 f9 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff928f2]        # 0x28d254
  2fa962:	0f 2e 05 e3 28 f9 ff                            	ucomiss xmm0,DWORD PTR [rip+0xfffffffffff928e3]        # 0x28d24c
  2fa969:	7a 02                                           	jp     0x2fa96d
  2fa96b:	74 0c                                           	je     0x2fa979
  2fa96d:	48 8b ce                                        	mov    rcx,rsi
  2fa970:	e8 e3 0d 07 00                                  	call   0x36b758
  2fa975:	f3 0f 59 f0                                     	mulss  xmm6,xmm0
  2fa979:	f3 0f 10 7b 44                                  	movss  xmm7,DWORD PTR [rbx+0x44]
  2fa97e:	f3 0f 58 7b 40                                  	addss  xmm7,DWORD PTR [rbx+0x40]
  2fa983:	48 8b 1d 8e ad 0e 00                            	mov    rbx,QWORD PTR [rip+0xead8e]        # 0x3e5718
  2fa98a:	f3 41 0f 59 f8                                  	mulss  xmm7,xmm8
  2fa98f:	f3 0f 59 fe                                     	mulss  xmm7,xmm6
  2fa993:	f3 0f 11 3d d9 b4 0e 00                         	movss  DWORD PTR [rip+0xeb4d9],xmm7        # 0x3e5e74
  2fa99b:	48 85 db                                        	test   rbx,rbx
  2fa99e:	0f 84 28 02 00 00                               	je     0x2fabcc
  2fa9a4:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fa9a8:	48 8b cf                                        	mov    rcx,rdi
  2fa9ab:	e8 6c f2 06 00                                  	call   0x369c1c
  2fa9b0:	4c 8d 4c 24 70                                  	lea    r9,[rsp+0x70]
  2fa9b5:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  2fa9ba:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  2fa9bf:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  2fa9c4:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2fa9c8:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2fa9cd:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2fa9d0:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  2fa9d6:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  2fa9dc:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  2fa9e0:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  2fa9e4:	f2 0f 11 44 24 60                               	movsd  QWORD PTR [rsp+0x60],xmm0
  2fa9ea:	f2 0f 10 45 b0                                  	movsd  xmm0,QWORD PTR [rbp-0x50]
  2fa9ef:	89 44 24 68                                     	mov    DWORD PTR [rsp+0x68],eax
  2fa9f3:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
  2fa9f6:	f2 0f 11 44 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm0
  2fa9fc:	89 44 24 58                                     	mov    DWORD PTR [rsp+0x58],eax
  2faa00:	e8 6f 79 fe ff                                  	call   0x2e2374
  2faa05:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2faa0a:	e8 49 91 fe ff                                  	call   0x2e3b58
  2faa0f:	84 c0                                           	test   al,al
  2faa11:	75 3f                                           	jne    0x2faa52
  2faa13:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2faa17:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2faa1c:	e8 57 68 fe ff                                  	call   0x2e1278
  2faa21:	0f 28 d7                                        	movaps xmm2,xmm7
  2faa24:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  2faa28:	48 8b c8                                        	mov    rcx,rax
  2faa2b:	e8 3c 4c fe ff                                  	call   0x2df66c
  2faa30:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2faa35:	4c 8d 45 b0                                     	lea    r8,[rbp-0x50]
  2faa39:	48 8b c8                                        	mov    rcx,rax
  2faa3c:	e8 c7 4c fe ff                                  	call   0x2df708
  2faa41:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2faa45:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  2faa4b:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2faa4e:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  2faa52:	44 38 2d 0f f3 0e 00                            	cmp    BYTE PTR [rip+0xef30f],r13b        # 0x3e9d68
  2faa59:	0f 84 6d 01 00 00                               	je     0x2fabcc
  2faa5f:	44 38 2d 12 d4 0d 00                            	cmp    BYTE PTR [rip+0xdd412],r13b        # 0x3d7e78
  2faa66:	0f 85 60 01 00 00                               	jne    0x2fabcc
  2faa6c:	44 38 2d 2d c8 0d 00                            	cmp    BYTE PTR [rip+0xdc82d],r13b        # 0x3d72a0
  2faa73:	0f 84 53 01 00 00                               	je     0x2fabcc
  2faa79:	49 8b ce                                        	mov    rcx,r14
  2faa7c:	e8 b7 ec 06 00                                  	call   0x369738
  2faa81:	48 8b c8                                        	mov    rcx,rax
  2faa84:	48 8b d8                                        	mov    rbx,rax
  2faa87:	e8 7c 04 fd ff                                  	call   0x2caf08
  2faa8c:	84 c0                                           	test   al,al
  2faa8e:	0f 84 38 01 00 00                               	je     0x2fabcc
  2faa94:	f2 0f 10 43 44                                  	movsd  xmm0,QWORD PTR [rbx+0x44]
  2faa99:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  2faa9e:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  2faaa2:	f2 0f 11 45 68                                  	movsd  QWORD PTR [rbp+0x68],xmm0
  2faaa7:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2faaac:	e8 0b d6 ff ff                                  	call   0x2f80bc
  2faab1:	48 8b c8                                        	mov    rcx,rax
  2faab4:	4c 8d 45 68                                     	lea    r8,[rbp+0x68]
  2faab8:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  2faabc:	e8 db 4b fe ff                                  	call   0x2df69c
  2faac1:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  2faac5:	e8 06 c5 01 00                                  	call   0x316fd0
  2faaca:	4c 8d 45 90                                     	lea    r8,[rbp-0x70]
  2faace:	48 8d 55 60                                     	lea    rdx,[rbp+0x60]
  2faad2:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  2faad6:	e8 29 4f ff ff                                  	call   0x2efa04
  2faadb:	49 8b 4e 38                                     	mov    rcx,QWORD PTR [r14+0x38]
  2faadf:	e8 24 04 fd ff                                  	call   0x2caf08
  2faae4:	84 c0                                           	test   al,al
  2faae6:	74 52                                           	je     0x2fab3a
  2faae8:	49 8b 4e 38                                     	mov    rcx,QWORD PTR [r14+0x38]
  2faaec:	e8 63 af 01 00                                  	call   0x315a54
  2faaf1:	48 8b c8                                        	mov    rcx,rax
  2faaf4:	4c 8b c0                                        	mov    r8,rax
  2faaf7:	e8 0c 04 fd ff                                  	call   0x2caf08
  2faafc:	84 c0                                           	test   al,al
  2faafe:	74 3a                                           	je     0x2fab3a
  2fab00:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  2fab05:	49 8b c8                                        	mov    rcx,r8
  2fab08:	e8 97 9f 07 00                                  	call   0x374aa4
  2fab0d:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  2fab11:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  2fab15:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  2fab18:	f3 0f 7f 45 a0                                  	movdqu XMMWORD PTR [rbp-0x60],xmm0
  2fab1d:	e8 ea a7 01 00                                  	call   0x31530c
  2fab22:	f3 0f 10 45 64                                  	movss  xmm0,DWORD PTR [rbp+0x64]
  2fab27:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  2fab2b:	f3 0f 5c 45 84                                  	subss  xmm0,DWORD PTR [rbp-0x7c]
  2fab30:	f3 0f 11 45 64                                  	movss  DWORD PTR [rbp+0x64],xmm0
  2fab35:	e8 96 c4 01 00                                  	call   0x316fd0
  2fab3a:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  2fab3e:	e8 8d c4 01 00                                  	call   0x316fd0
  2fab43:	44 38 2d ee ef 0e 00                            	cmp    BYTE PTR [rip+0xeefee],r13b        # 0x3e9b38
  2fab4a:	74 6c                                           	je     0x2fabb8
  2fab4c:	f3 0f 10 35 f4 31 0f 00                         	movss  xmm6,DWORD PTR [rip+0xf31f4]        # 0x3edd48
  2fab54:	4c 8d 45 68                                     	lea    r8,[rbp+0x68]
  2fab58:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  2fab5d:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  2fab61:	e8 36 4b fe ff                                  	call   0x2df69c
  2fab66:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  2fab6b:	e8 60 c4 01 00                                  	call   0x316fd0
  2fab70:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  2fab75:	0f 28 ce                                        	movaps xmm1,xmm6
  2fab78:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  2fab7d:	e8 92 4c ff ff                                  	call   0x2ef814
  2fab82:	4c 8b c0                                        	mov    r8,rax
  2fab85:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  2fab8a:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  2fab8e:	e8 71 4e ff ff                                  	call   0x2efa04
  2fab93:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  2fab97:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  2fab9b:	f3 0f 11 45 60                                  	movss  DWORD PTR [rbp+0x60],xmm0
  2faba0:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [rax+0x4]
  2faba5:	f3 0f 11 4d 64                                  	movss  DWORD PTR [rbp+0x64],xmm1
  2fabaa:	e8 21 c4 01 00                                  	call   0x316fd0
  2fabaf:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  2fabb3:	e8 30 d9 ff ff                                  	call   0x2f84e8
  2fabb8:	f3 0f 10 45 60                                  	movss  xmm0,DWORD PTR [rbp+0x60]
  2fabbd:	f3 0f 10 4d 64                                  	movss  xmm1,DWORD PTR [rbp+0x64]
  2fabc2:	f3 0f 11 43 44                                  	movss  DWORD PTR [rbx+0x44],xmm0
  2fabc7:	f3 0f 11 4b 48                                  	movss  DWORD PTR [rbx+0x48],xmm1
  2fabcc:	4c 8d 9c 24 10 01 00 00                         	lea    r11,[rsp+0x110]
  2fabd4:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  2fabd8:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  2fabdd:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  2fabe2:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  2fabe7:	49 8b e3                                        	mov    rsp,r11
  2fabea:	41 5f                                           	pop    r15
  2fabec:	41 5e                                           	pop    r14
  2fabee:	41 5d                                           	pop    r13
  2fabf0:	41 5c                                           	pop    r12
  2fabf2:	5f                                              	pop    rdi
  2fabf3:	5e                                              	pop    rsi
  2fabf4:	5d                                              	pop    rbp
  2fabf5:	c3                                              	ret
