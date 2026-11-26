
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e9510.audit.bin:     file format binary


Disassembly of section .data:

00000000002e9510 <.data>:
  2e9510:	40 55                                           	rex push rbp
  2e9512:	53                                              	push   rbx
  2e9513:	56                                              	push   rsi
  2e9514:	57                                              	push   rdi
  2e9515:	41 54                                           	push   r12
  2e9517:	41 55                                           	push   r13
  2e9519:	41 56                                           	push   r14
  2e951b:	41 57                                           	push   r15
  2e951d:	48 8b ec                                        	mov    rbp,rsp
  2e9520:	48 83 ec 28                                     	sub    rsp,0x28
  2e9524:	4c 8d 69 18                                     	lea    r13,[rcx+0x18]
  2e9528:	4c 8b f9                                        	mov    r15,rcx
  2e952b:	49 8b cd                                        	mov    rcx,r13
  2e952e:	48 8b da                                        	mov    rbx,rdx
  2e9531:	e8 06 f6 fe ff                                  	call   0x2d8b3c
  2e9536:	48 d1 e8                                        	shr    rax,1
  2e9539:	48 8b c8                                        	mov    rcx,rax
  2e953c:	e8 2b db fe ff                                  	call   0x2d706c
  2e9541:	8b c8                                           	mov    ecx,eax
  2e9543:	bf 01 00 00 00                                  	mov    edi,0x1
  2e9548:	8b c7                                           	mov    eax,edi
  2e954a:	48 d3 e0                                        	shl    rax,cl
  2e954d:	48 3b d8                                        	cmp    rbx,rax
  2e9550:	0f 87 b7 01 00 00                               	ja     0x2e970d
  2e9556:	48 8b cb                                        	mov    rcx,rbx
  2e9559:	e8 ca d5 fe ff                                  	call   0x2d6b28
  2e955e:	8b c8                                           	mov    ecx,eax
  2e9560:	48 8d 55 58                                     	lea    rdx,[rbp+0x58]
  2e9564:	48 d3 e7                                        	shl    rdi,cl
  2e9567:	8b d8                                           	mov    ebx,eax
  2e9569:	49 8b cf                                        	mov    rcx,r15
  2e956c:	e8 fb e3 fe ff                                  	call   0x2d796c
  2e9571:	4c 8b 45 58                                     	mov    r8,QWORD PTR [rbp+0x58]
  2e9575:	8b cb                                           	mov    ecx,ebx
  2e9577:	ba 02 00 00 00                                  	mov    edx,0x2
  2e957c:	48 d3 e2                                        	shl    rdx,cl
  2e957f:	49 8b cd                                        	mov    rcx,r13
  2e9582:	e8 19 d3 fe ff                                  	call   0x2d68a0
  2e9587:	48 8d 47 ff                                     	lea    rax,[rdi-0x1]
  2e958b:	49 89 7f 38                                     	mov    QWORD PTR [r15+0x38],rdi
  2e958f:	48 8d 55 50                                     	lea    rdx,[rbp+0x50]
  2e9593:	49 89 47 30                                     	mov    QWORD PTR [r15+0x30],rax
  2e9597:	49 8b cf                                        	mov    rcx,r15
  2e959a:	e8 8d e3 fe ff                                  	call   0x2d792c
  2e959f:	48 8b 5d 50                                     	mov    rbx,QWORD PTR [rbp+0x50]
  2e95a3:	48 89 5d 60                                     	mov    QWORD PTR [rbp+0x60],rbx
  2e95a7:	e9 10 01 00 00                                  	jmp    0x2e96bc
  2e95ac:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  2e95b0:	e8 4b b8 fe ff                                  	call   0x2d4e00
  2e95b5:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  2e95b9:	e8 02 b8 fe ff                                  	call   0x2d4dc0
  2e95be:	48 8b c8                                        	mov    rcx,rax
  2e95c1:	e8 de 1d fe ff                                  	call   0x2cb3a4
  2e95c6:	48 8b d0                                        	mov    rdx,rax
  2e95c9:	49 8b cf                                        	mov    rcx,r15
  2e95cc:	4c 8b e0                                        	mov    r12,rax
  2e95cf:	e8 24 e8 fe ff                                  	call   0x2d7df8
  2e95d4:	4d 8b 75 00                                     	mov    r14,QWORD PTR [r13+0x0]
  2e95d8:	48 8d 55 58                                     	lea    rdx,[rbp+0x58]
  2e95dc:	48 c1 e0 04                                     	shl    rax,0x4
  2e95e0:	4c 03 f0                                        	add    r14,rax
  2e95e3:	49 8b ce                                        	mov    rcx,r14
  2e95e6:	e8 49 2f fe ff                                  	call   0x2cc534
  2e95eb:	48 8b 7d 60                                     	mov    rdi,QWORD PTR [rbp+0x60]
  2e95ef:	84 c0                                           	test   al,al
  2e95f1:	74 0c                                           	je     0x2e95ff
  2e95f3:	49 89 1e                                        	mov    QWORD PTR [r14],rbx
  2e95f6:	49 89 5e 08                                     	mov    QWORD PTR [r14+0x8],rbx
  2e95fa:	e9 b6 00 00 00                                  	jmp    0x2e96b5
  2e95ff:	49 8b 76 08                                     	mov    rsi,QWORD PTR [r14+0x8]
  2e9603:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  2e9607:	48 89 75 48                                     	mov    QWORD PTR [rbp+0x48],rsi
  2e960b:	e8 a8 b7 fe ff                                  	call   0x2d4db8
  2e9610:	48 8b c8                                        	mov    rcx,rax
  2e9613:	e8 8c 1d fe ff                                  	call   0x2cb3a4
  2e9618:	4c 8b c0                                        	mov    r8,rax
  2e961b:	49 8b d4                                        	mov    rdx,r12
  2e961e:	49 8b cf                                        	mov    rcx,r15
  2e9621:	e8 c6 5a fe ff                                  	call   0x2cf0ec
  2e9626:	84 c0                                           	test   al,al
  2e9628:	75 2b                                           	jne    0x2e9655
  2e962a:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  2e962e:	e8 bd b7 fe ff                                  	call   0x2d4df0
  2e9633:	48 8d 55 50                                     	lea    rdx,[rbp+0x50]
  2e9637:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  2e963b:	e8 f4 2e fe ff                                  	call   0x2cc534
  2e9640:	84 c0                                           	test   al,al
  2e9642:	75 b2                                           	jne    0x2e95f6
  2e9644:	48 8b 4d 48                                     	mov    rcx,QWORD PTR [rbp+0x48]
  2e9648:	4c 8b c7                                        	mov    r8,rdi
  2e964b:	48 8b d3                                        	mov    rdx,rbx
  2e964e:	e8 a5 e4 fe ff                                  	call   0x2d7af8
  2e9653:	eb a1                                           	jmp    0x2e95f6
  2e9655:	48 8d 55 48                                     	lea    rdx,[rbp+0x48]
  2e9659:	49 8b ce                                        	mov    rcx,r14
  2e965c:	e8 d3 2e fe ff                                  	call   0x2cc534
  2e9661:	84 c0                                           	test   al,al
  2e9663:	75 3f                                           	jne    0x2e96a4
  2e9665:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  2e9669:	e8 ca b7 fe ff                                  	call   0x2d4e38
  2e966e:	48 8b c8                                        	mov    rcx,rax
  2e9671:	e8 42 b7 fe ff                                  	call   0x2d4db8
  2e9676:	48 8b c8                                        	mov    rcx,rax
  2e9679:	e8 26 1d fe ff                                  	call   0x2cb3a4
  2e967e:	4c 8b c0                                        	mov    r8,rax
  2e9681:	49 8b d4                                        	mov    rdx,r12
  2e9684:	49 8b cf                                        	mov    rcx,r15
  2e9687:	e8 60 5a fe ff                                  	call   0x2cf0ec
  2e968c:	84 c0                                           	test   al,al
  2e968e:	74 63                                           	je     0x2e96f3
  2e9690:	48 8d 55 48                                     	lea    rdx,[rbp+0x48]
  2e9694:	49 8b ce                                        	mov    rcx,r14
  2e9697:	e8 98 2e fe ff                                  	call   0x2cc534
  2e969c:	84 c0                                           	test   al,al
  2e969e:	74 c5                                           	je     0x2e9665
  2e96a0:	48 8b 75 48                                     	mov    rsi,QWORD PTR [rbp+0x48]
  2e96a4:	4c 8b c7                                        	mov    r8,rdi
  2e96a7:	48 8b d3                                        	mov    rdx,rbx
  2e96aa:	48 8b ce                                        	mov    rcx,rsi
  2e96ad:	e8 46 e4 fe ff                                  	call   0x2d7af8
  2e96b2:	49 89 1e                                        	mov    QWORD PTR [r14],rbx
  2e96b5:	48 8b df                                        	mov    rbx,rdi
  2e96b8:	48 89 5d 50                                     	mov    QWORD PTR [rbp+0x50],rbx
  2e96bc:	48 8d 55 58                                     	lea    rdx,[rbp+0x58]
  2e96c0:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  2e96c4:	e8 6b 2e fe ff                                  	call   0x2cc534
  2e96c9:	84 c0                                           	test   al,al
  2e96cb:	0f 84 db fe ff ff                               	je     0x2e95ac
  2e96d1:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  2e96d5:	48 c7 45 48 00 00 00 00                         	mov    QWORD PTR [rbp+0x48],0x0
  2e96dd:	e8 6e b8 ff ff                                  	call   0x2e4f50
  2e96e2:	48 83 c4 28                                     	add    rsp,0x28
  2e96e6:	41 5f                                           	pop    r15
  2e96e8:	41 5e                                           	pop    r14
  2e96ea:	41 5d                                           	pop    r13
  2e96ec:	41 5c                                           	pop    r12
  2e96ee:	5f                                              	pop    rdi
  2e96ef:	5e                                              	pop    rsi
  2e96f0:	5b                                              	pop    rbx
  2e96f1:	5d                                              	pop    rbp
  2e96f2:	c3                                              	ret
  2e96f3:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  2e96f7:	e8 f4 b6 fe ff                                  	call   0x2d4df0
  2e96fc:	48 8b 4d 48                                     	mov    rcx,QWORD PTR [rbp+0x48]
  2e9700:	4c 8b c7                                        	mov    r8,rdi
  2e9703:	48 8b d3                                        	mov    rdx,rbx
  2e9706:	e8 ed e3 fe ff                                  	call   0x2d7af8
  2e970b:	eb a8                                           	jmp    0x2e96b5
  2e970d:	48 8d 0d cc 3d fa ff                            	lea    rcx,[rip+0xfffffffffffa3dcc]        # 0x28d4e0
  2e9714:	e8 37 39 fe ff                                  	call   0x2cd050
  2e9719:	cc                                              	int3
