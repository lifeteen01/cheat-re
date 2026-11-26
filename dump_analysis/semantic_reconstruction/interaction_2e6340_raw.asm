
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e6340 <.data+0x2e6340>:
  2e6340:	40 55                                           	rex push rbp
  2e6342:	53                                              	push   rbx
  2e6343:	56                                              	push   rsi
  2e6344:	57                                              	push   rdi
  2e6345:	41 56                                           	push   r14
  2e6347:	41 57                                           	push   r15
  2e6349:	48 8d 6c 24 d1                                  	lea    rbp,[rsp-0x2f]
  2e634e:	48 81 ec d8 00 00 00                            	sub    rsp,0xd8
  2e6355:	80 3d dc de 0f 00 00                            	cmp    BYTE PTR [rip+0xfdedc],0x0        # 0x3e4238
  2e635c:	49 8b f0                                        	mov    rsi,r8
  2e635f:	48 8b fa                                        	mov    rdi,rdx
  2e6362:	4c 8b f1                                        	mov    r14,rcx
  2e6365:	0f 85 36 02 00 00                               	jne    0x2e65a1
  2e636b:	e8 98 4b fe ff                                  	call   0x2caf08
  2e6370:	84 c0                                           	test   al,al
  2e6372:	0f 84 29 02 00 00                               	je     0x2e65a1
  2e6378:	48 8b ca                                        	mov    rcx,rdx
  2e637b:	e8 88 4b fe ff                                  	call   0x2caf08
  2e6380:	84 c0                                           	test   al,al
  2e6382:	0f 84 19 02 00 00                               	je     0x2e65a1
  2e6388:	49 8b c8                                        	mov    rcx,r8
  2e638b:	e8 78 4b fe ff                                  	call   0x2caf08
  2e6390:	84 c0                                           	test   al,al
  2e6392:	0f 84 09 02 00 00                               	je     0x2e65a1
  2e6398:	48 8d 55 a7                                     	lea    rdx,[rbp-0x59]
  2e639c:	49 8b c8                                        	mov    rcx,r8
  2e639f:	e8 ec 33 08 00                                  	call   0x369790
  2e63a4:	48 8d 4d f7                                     	lea    rcx,[rbp-0x9]
  2e63a8:	e8 0f 18 0e 00                                  	call   0x3c7bbc
  2e63ad:	48 8b d0                                        	mov    rdx,rax
  2e63b0:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  2e63b4:	e8 f7 91 ff ff                                  	call   0x2df5b0
  2e63b9:	84 c0                                           	test   al,al
  2e63bb:	0f 85 e0 01 00 00                               	jne    0x2e65a1
  2e63c1:	41 b8 36 00 00 00                               	mov    r8d,0x36
  2e63c7:	48 8d 55 17                                     	lea    rdx,[rbp+0x17]
  2e63cb:	48 8b ce                                        	mov    rcx,rsi
  2e63ce:	e8 15 28 08 00                                  	call   0x368be8
  2e63d3:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  2e63d7:	49 8b ce                                        	mov    rcx,r14
  2e63da:	e8 85 2d 08 00                                  	call   0x369164
  2e63df:	48 8d 55 a7                                     	lea    rdx,[rbp-0x59]
  2e63e3:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2e63e7:	e8 44 9b ff ff                                  	call   0x2dff30
  2e63ec:	66 0f 6e 0d 54 1d 0f 00                         	movd   xmm1,DWORD PTR [rip+0xf1d54]        # 0x3d8148
  2e63f4:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  2e63f7:	0f 2f c1                                        	comiss xmm0,xmm1
  2e63fa:	0f 87 a1 01 00 00                               	ja     0x2e65a1
  2e6400:	48 8b cf                                        	mov    rcx,rdi
  2e6403:	e8 5c b0 08 00                                  	call   0x371464
  2e6408:	48 8b cf                                        	mov    rcx,rdi
  2e640b:	48 8b d8                                        	mov    rbx,rax
  2e640e:	e8 a1 bd 08 00                                  	call   0x3721b4
  2e6413:	48 8b cf                                        	mov    rcx,rdi
  2e6416:	4c 8b f8                                        	mov    r15,rax
  2e6419:	e8 9a ba 08 00                                  	call   0x371eb8
  2e641e:	48 8b c8                                        	mov    rcx,rax
  2e6421:	48 8b d0                                        	mov    rdx,rax
  2e6424:	e8 df 4a fe ff                                  	call   0x2caf08
  2e6429:	84 c0                                           	test   al,al
  2e642b:	0f 84 82 01 00 00                               	je     0x2e65b3
  2e6431:	48 8b ca                                        	mov    rcx,rdx
  2e6434:	e8 ff 54 08 00                                  	call   0x36b938
  2e6439:	48 8b c8                                        	mov    rcx,rax
  2e643c:	48 8b d0                                        	mov    rdx,rax
  2e643f:	e8 c4 4a fe ff                                  	call   0x2caf08
  2e6444:	84 c0                                           	test   al,al
  2e6446:	0f 84 55 01 00 00                               	je     0x2e65a1
  2e644c:	48 8b ca                                        	mov    rcx,rdx
  2e644f:	e8 dc c6 08 00                                  	call   0x372b30
  2e6454:	48 8b c8                                        	mov    rcx,rax
  2e6457:	e8 ac 4a fe ff                                  	call   0x2caf08
  2e645c:	84 c0                                           	test   al,al
  2e645e:	0f 84 3d 01 00 00                               	je     0x2e65a1
  2e6464:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e6468:	49 8b ce                                        	mov    rcx,r14
  2e646b:	e8 90 1c 08 00                                  	call   0x368100
  2e6470:	48 8b c8                                        	mov    rcx,rax
  2e6473:	48 8d 55 f7                                     	lea    rdx,[rbp-0x9]
  2e6477:	e8 fc ad ff ff                                  	call   0x2e1278
  2e647c:	f3 0f 10 15 d0 6d fa ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffffa6dd0]        # 0x28d254
  2e6484:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e6488:	48 8d 4d f7                                     	lea    rcx,[rbp-0x9]
  2e648c:	e8 db 91 ff ff                                  	call   0x2df66c
  2e6491:	4c 8b c0                                        	mov    r8,rax
  2e6494:	48 8d 55 e7                                     	lea    rdx,[rbp-0x19]
  2e6498:	48 8d 4d d7                                     	lea    rcx,[rbp-0x29]
  2e649c:	e8 67 92 ff ff                                  	call   0x2df708
  2e64a1:	48 8b ce                                        	mov    rcx,rsi
  2e64a4:	e8 67 fc ff ff                                  	call   0x2e6110
  2e64a9:	48 8b c8                                        	mov    rcx,rax
  2e64ac:	4c 8b c0                                        	mov    r8,rax
  2e64af:	e8 54 4a fe ff                                  	call   0x2caf08
  2e64b4:	84 c0                                           	test   al,al
  2e64b6:	74 1d                                           	je     0x2e64d5
  2e64b8:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e64bc:	49 8b c8                                        	mov    rcx,r8
  2e64bf:	e8 10 e3 08 00                                  	call   0x3747d4
  2e64c4:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  2e64c8:	f2 0f 11 4d a7                                  	movsd  QWORD PTR [rbp-0x59],xmm1
  2e64cd:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  2e64d0:	89 4d af                                        	mov    DWORD PTR [rbp-0x51],ecx
  2e64d3:	eb 08                                           	jmp    0x2e64dd
  2e64d5:	8b 4d af                                        	mov    ecx,DWORD PTR [rbp-0x51]
  2e64d8:	f2 0f 10 4d a7                                  	movsd  xmm1,QWORD PTR [rbp-0x59]
  2e64dd:	48 8b 15 34 f2 0f 00                            	mov    rdx,QWORD PTR [rip+0xff234]        # 0x3e5718
  2e64e4:	48 85 d2                                        	test   rdx,rdx
  2e64e7:	0f 84 b4 00 00 00                               	je     0x2e65a1
  2e64ed:	f2 0f 10 05 53 0d 0f 00                         	movsd  xmm0,QWORD PTR [rip+0xf0d53]        # 0x3d7248
  2e64f5:	4c 8d 4d c7                                     	lea    r9,[rbp-0x39]
  2e64f9:	8b 05 51 0d 0f 00                               	mov    eax,DWORD PTR [rip+0xf0d51]        # 0x3d7250
  2e64ff:	4c 8d 45 97                                     	lea    r8,[rbp-0x69]
  2e6503:	f2 0f 11 45 c7                                  	movsd  QWORD PTR [rbp-0x39],xmm0
  2e6508:	f2 0f 10 45 e7                                  	movsd  xmm0,QWORD PTR [rbp-0x19]
  2e650d:	89 45 cf                                        	mov    DWORD PTR [rbp-0x31],eax
  2e6510:	8b 45 ef                                        	mov    eax,DWORD PTR [rbp-0x11]
  2e6513:	89 4d 9f                                        	mov    DWORD PTR [rbp-0x61],ecx
  2e6516:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e651a:	48 89 54 24 20                                  	mov    QWORD PTR [rsp+0x20],rdx
  2e651f:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e6523:	f2 0f 11 45 87                                  	movsd  QWORD PTR [rbp-0x79],xmm0
  2e6528:	f2 0f 11 4d 97                                  	movsd  QWORD PTR [rbp-0x69],xmm1
  2e652d:	89 45 8f                                        	mov    DWORD PTR [rbp-0x71],eax
  2e6530:	e8 3f be ff ff                                  	call   0x2e2374
  2e6535:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e6539:	e8 1a d6 ff ff                                  	call   0x2e3b58
  2e653e:	84 c0                                           	test   al,al
  2e6540:	75 5f                                           	jne    0x2e65a1
  2e6542:	48 8b 1d cf f1 0f 00                            	mov    rbx,QWORD PTR [rip+0xff1cf]        # 0x3e5718
  2e6549:	48 8d 55 07                                     	lea    rdx,[rbp+0x7]
  2e654d:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e6551:	e8 22 ad ff ff                                  	call   0x2e1278
  2e6556:	4c 8d 45 87                                     	lea    r8,[rbp-0x79]
  2e655a:	48 8d 55 97                                     	lea    rdx,[rbp-0x69]
  2e655e:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  2e6562:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2e6566:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2e6569:	f2 0f 11 45 87                                  	movsd  QWORD PTR [rbp-0x79],xmm0
  2e656e:	f2 0f 10 45 a7                                  	movsd  xmm0,QWORD PTR [rbp-0x59]
  2e6573:	89 45 8f                                        	mov    DWORD PTR [rbp-0x71],eax
  2e6576:	8b 45 af                                        	mov    eax,DWORD PTR [rbp-0x51]
  2e6579:	f2 0f 11 45 97                                  	movsd  QWORD PTR [rbp-0x69],xmm0
  2e657e:	f2 0f 10 45 e7                                  	movsd  xmm0,QWORD PTR [rbp-0x19]
  2e6583:	89 45 9f                                        	mov    DWORD PTR [rbp-0x61],eax
  2e6586:	8b 45 ef                                        	mov    eax,DWORD PTR [rbp-0x11]
  2e6589:	f2 0f 11 45 c7                                  	movsd  QWORD PTR [rbp-0x39],xmm0
  2e658e:	89 45 cf                                        	mov    DWORD PTR [rbp-0x31],eax
  2e6591:	4c 8b cb                                        	mov    r9,rbx
  2e6594:	e8 97 24 00 00                                  	call   0x2e8a30
  2e6599:	84 c0                                           	test   al,al
  2e659b:	0f 85 9c 01 00 00                               	jne    0x2e673d
  2e65a1:	32 c0                                           	xor    al,al
  2e65a3:	48 81 c4 d8 00 00 00                            	add    rsp,0xd8
  2e65aa:	41 5f                                           	pop    r15
  2e65ac:	41 5e                                           	pop    r14
  2e65ae:	5f                                              	pop    rdi
  2e65af:	5e                                              	pop    rsi
  2e65b0:	5b                                              	pop    rbx
  2e65b1:	5d                                              	pop    rbp
  2e65b2:	c3                                              	ret
  2e65b3:	48 8b cb                                        	mov    rcx,rbx
  2e65b6:	e8 4d 49 fe ff                                  	call   0x2caf08
  2e65bb:	84 c0                                           	test   al,al
  2e65bd:	74 76                                           	je     0x2e6635
  2e65bf:	48 8b cf                                        	mov    rcx,rdi
  2e65c2:	e8 85 af 08 00                                  	call   0x37154c
  2e65c7:	48 8b c8                                        	mov    rcx,rax
  2e65ca:	48 8b f8                                        	mov    rdi,rax
  2e65cd:	e8 36 49 fe ff                                  	call   0x2caf08
  2e65d2:	84 c0                                           	test   al,al
  2e65d4:	74 cb                                           	je     0x2e65a1
  2e65d6:	48 8b cb                                        	mov    rcx,rbx
  2e65d9:	e8 5a 53 08 00                                  	call   0x36b938
  2e65de:	48 8b c8                                        	mov    rcx,rax
  2e65e1:	48 8b d0                                        	mov    rdx,rax
  2e65e4:	e8 1f 49 fe ff                                  	call   0x2caf08
  2e65e9:	84 c0                                           	test   al,al
  2e65eb:	74 b4                                           	je     0x2e65a1
  2e65ed:	48 8b ca                                        	mov    rcx,rdx
  2e65f0:	e8 c7 c4 08 00                                  	call   0x372abc
  2e65f5:	48 8b c8                                        	mov    rcx,rax
  2e65f8:	e8 0b 49 fe ff                                  	call   0x2caf08
  2e65fd:	84 c0                                           	test   al,al
  2e65ff:	74 a0                                           	je     0x2e65a1
  2e6601:	48 8b cf                                        	mov    rcx,rdi
  2e6604:	e8 13 c0 08 00                                  	call   0x37261c
  2e6609:	3d 71 3d b7 34                                  	cmp    eax,0x34b73d71
  2e660e:	75 08                                           	jne    0x2e6618
  2e6610:	48 8b cb                                        	mov    rcx,rbx
  2e6613:	e8 ec 4e 08 00                                  	call   0x36b504
  2e6618:	48 8b cb                                        	mov    rcx,rbx
  2e661b:	e8 38 51 08 00                                  	call   0x36b758
  2e6620:	0f 2e 05 25 6c fa ff                            	ucomiss xmm0,DWORD PTR [rip+0xfffffffffffa6c25]        # 0x28d24c
  2e6627:	7a 02                                           	jp     0x2e662b
  2e6629:	74 4d                                           	je     0x2e6678
  2e662b:	48 8b cb                                        	mov    rcx,rbx
  2e662e:	e8 25 51 08 00                                  	call   0x36b758
  2e6633:	eb 43                                           	jmp    0x2e6678
  2e6635:	49 8b cf                                        	mov    rcx,r15
  2e6638:	e8 cb 48 fe ff                                  	call   0x2caf08
  2e663d:	84 c0                                           	test   al,al
  2e663f:	0f 84 5c ff ff ff                               	je     0x2e65a1
  2e6645:	48 8b cf                                        	mov    rcx,rdi
  2e6648:	e8 e3 af 08 00                                  	call   0x371630
  2e664d:	48 8b c8                                        	mov    rcx,rax
  2e6650:	48 8b d0                                        	mov    rdx,rax
  2e6653:	e8 b0 48 fe ff                                  	call   0x2caf08
  2e6658:	84 c0                                           	test   al,al
  2e665a:	0f 84 41 ff ff ff                               	je     0x2e65a1
  2e6660:	48 8b ca                                        	mov    rcx,rdx
  2e6663:	e8 54 c4 08 00                                  	call   0x372abc
  2e6668:	48 8b c8                                        	mov    rcx,rax
  2e666b:	e8 98 48 fe ff                                  	call   0x2caf08
  2e6670:	84 c0                                           	test   al,al
  2e6672:	0f 84 29 ff ff ff                               	je     0x2e65a1
  2e6678:	48 8b 0d 99 f0 0f 00                            	mov    rcx,QWORD PTR [rip+0xff099]        # 0x3e5718
  2e667f:	48 85 c9                                        	test   rcx,rcx
  2e6682:	0f 84 19 ff ff ff                               	je     0x2e65a1
  2e6688:	f2 0f 10 05 b8 0b 0f 00                         	movsd  xmm0,QWORD PTR [rip+0xf0bb8]        # 0x3d7248
  2e6690:	4c 8d 4d b7                                     	lea    r9,[rbp-0x49]
  2e6694:	8b 05 b6 0b 0f 00                               	mov    eax,DWORD PTR [rip+0xf0bb6]        # 0x3d7250
  2e669a:	4c 8d 45 87                                     	lea    r8,[rbp-0x79]
  2e669e:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  2e66a3:	48 8d 55 97                                     	lea    rdx,[rbp-0x69]
  2e66a7:	f2 0f 10 45 a7                                  	movsd  xmm0,QWORD PTR [rbp-0x59]
  2e66ac:	89 45 bf                                        	mov    DWORD PTR [rbp-0x41],eax
  2e66af:	8b 45 af                                        	mov    eax,DWORD PTR [rbp-0x51]
  2e66b2:	f2 0f 11 45 87                                  	movsd  QWORD PTR [rbp-0x79],xmm0
  2e66b7:	f2 0f 10 45 d7                                  	movsd  xmm0,QWORD PTR [rbp-0x29]
  2e66bc:	89 45 8f                                        	mov    DWORD PTR [rbp-0x71],eax
  2e66bf:	8b 45 df                                        	mov    eax,DWORD PTR [rbp-0x21]
  2e66c2:	48 89 4c 24 20                                  	mov    QWORD PTR [rsp+0x20],rcx
  2e66c7:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  2e66cb:	f2 0f 11 45 97                                  	movsd  QWORD PTR [rbp-0x69],xmm0
  2e66d0:	89 45 9f                                        	mov    DWORD PTR [rbp-0x61],eax
  2e66d3:	e8 9c bc ff ff                                  	call   0x2e2374
  2e66d8:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  2e66dc:	e8 77 d4 ff ff                                  	call   0x2e3b58
  2e66e1:	84 c0                                           	test   al,al
  2e66e3:	0f 85 b8 fe ff ff                               	jne    0x2e65a1
  2e66e9:	48 8b 1d 28 f0 0f 00                            	mov    rbx,QWORD PTR [rip+0xff028]        # 0x3e5718
  2e66f0:	48 8d 55 07                                     	lea    rdx,[rbp+0x7]
  2e66f4:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  2e66f8:	e8 7b ab ff ff                                  	call   0x2e1278
  2e66fd:	4c 8d 45 b7                                     	lea    r8,[rbp-0x49]
  2e6701:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e6705:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  2e6709:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2e670d:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2e6710:	f2 0f 11 45 b7                                  	movsd  QWORD PTR [rbp-0x49],xmm0
  2e6715:	f2 0f 10 45 a7                                  	movsd  xmm0,QWORD PTR [rbp-0x59]
  2e671a:	89 45 bf                                        	mov    DWORD PTR [rbp-0x41],eax
  2e671d:	8b 45 af                                        	mov    eax,DWORD PTR [rbp-0x51]
  2e6720:	f2 0f 11 45 87                                  	movsd  QWORD PTR [rbp-0x79],xmm0
  2e6725:	f2 0f 10 45 d7                                  	movsd  xmm0,QWORD PTR [rbp-0x29]
  2e672a:	89 45 8f                                        	mov    DWORD PTR [rbp-0x71],eax
  2e672d:	8b 45 df                                        	mov    eax,DWORD PTR [rbp-0x21]
  2e6730:	f2 0f 11 45 97                                  	movsd  QWORD PTR [rbp-0x69],xmm0
  2e6735:	89 45 9f                                        	mov    DWORD PTR [rbp-0x61],eax
  2e6738:	e9 54 fe ff ff                                  	jmp    0x2e6591
  2e673d:	b0 01                                           	mov    al,0x1
  2e673f:	e9                                      	jmp    0x2e65a3
