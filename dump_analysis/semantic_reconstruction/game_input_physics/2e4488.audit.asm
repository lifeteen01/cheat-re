
/home/john/Desktop/cheat_re/dump_analysis/semantic_reconstruction/game_input_physics/2e4488.audit.bin:     file format binary


Disassembly of section .data:

00000000002e4488 <.data>:
  2e4488:	48 89 5c 24 10                                  	mov    QWORD PTR [rsp+0x10],rbx
  2e448d:	55                                              	push   rbp
  2e448e:	56                                              	push   rsi
  2e448f:	57                                              	push   rdi
  2e4490:	41 56                                           	push   r14
  2e4492:	41 57                                           	push   r15
  2e4494:	48 8b ec                                        	mov    rbp,rsp
  2e4497:	48 83 ec 60                                     	sub    rsp,0x60
  2e449b:	4c 8b f2                                        	mov    r14,rdx
  2e449e:	49 8b d8                                        	mov    rbx,r8
  2e44a1:	49 8b d0                                        	mov    rdx,r8
  2e44a4:	48 8b f1                                        	mov    rsi,rcx
  2e44a7:	e8 38 ac fe ff                                  	call   0x2cf0e4
  2e44ac:	4c 8b c8                                        	mov    r9,rax
  2e44af:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  2e44b3:	4c 8b c3                                        	mov    r8,rbx
  2e44b6:	48 8b ce                                        	mov    rcx,rsi
  2e44b9:	4c 8b f8                                        	mov    r15,rax
  2e44bc:	e8 13 c3 fe ff                                  	call   0x2d07d4
  2e44c1:	48 83 7d d8 00                                  	cmp    QWORD PTR [rbp-0x28],0x0
  2e44c6:	74 19                                           	je     0x2e44e1
  2e44c8:	4c 8d 45 30                                     	lea    r8,[rbp+0x30]
  2e44cc:	c6 45 30 00                                     	mov    BYTE PTR [rbp+0x30],0x0
  2e44d0:	48 8d 55 d8                                     	lea    rdx,[rbp-0x28]
  2e44d4:	49 8b ce                                        	mov    rcx,r14
  2e44d7:	e8 2c a9 fe ff                                  	call   0x2cee08
  2e44dc:	e9 c6 00 00 00                                  	jmp    0x2e45a7
  2e44e1:	48 8b ce                                        	mov    rcx,rsi
  2e44e4:	e8 fb 4e 00 00                                  	call   0x2e93e4
  2e44e9:	48 8b cb                                        	mov    rcx,rbx
  2e44ec:	e8 b3 6e fe ff                                  	call   0x2cb3a4
  2e44f1:	48 8b d0                                        	mov    rdx,rax
  2e44f4:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  2e44f8:	e8 e3 05 00 00                                  	call   0x2e4ae0
  2e44fd:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  2e4501:	48 8b f8                                        	mov    rdi,rax
  2e4504:	e8 9b 6e fe ff                                  	call   0x2cb3a4
  2e4509:	48 8d 4e 08                                     	lea    rcx,[rsi+0x8]
  2e450d:	48 8b d8                                        	mov    rbx,rax
  2e4510:	e8 0f 8e fe ff                                  	call   0x2cd324
  2e4515:	48 8b d0                                        	mov    rdx,rax
  2e4518:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  2e451d:	4c 8b cf                                        	mov    r9,rdi
  2e4520:	4c 8d 05 d5 93 fa ff                            	lea    r8,[rip+0xfffffffffffa93d5]        # 0x28d8fc
  2e4527:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  2e452b:	e8 00 fb ff ff                                  	call   0x2e4030
  2e4530:	48 8b ce                                        	mov    rcx,rsi
  2e4533:	e8 0c 28 ff ff                                  	call   0x2d6d44
  2e4538:	84 c0                                           	test   al,al
  2e453a:	74 2f                                           	je     0x2e456b
  2e453c:	48 8b ce                                        	mov    rcx,rsi
  2e453f:	e8 f4 51 00 00                                  	call   0x2e9738
  2e4544:	48 8b 4d e8                                     	mov    rcx,QWORD PTR [rbp-0x18]
  2e4548:	48 83 c1 10                                     	add    rcx,0x10
  2e454c:	e8 53 6e fe ff                                  	call   0x2cb3a4
  2e4551:	4c 8b c0                                        	mov    r8,rax
  2e4554:	48 8d 55 f0                                     	lea    rdx,[rbp-0x10]
  2e4558:	4d 8b cf                                        	mov    r9,r15
  2e455b:	48 8b ce                                        	mov    rcx,rsi
  2e455e:	e8 71 c2 fe ff                                  	call   0x2d07d4
  2e4563:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  2e4566:	f3 0f 7f 45 d0                                  	movdqu XMMWORD PTR [rbp-0x30],xmm0
  2e456b:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  2e456f:	e8 c4 30 ff ff                                  	call   0x2d7638
  2e4574:	4c 8b 45 d0                                     	mov    r8,QWORD PTR [rbp-0x30]
  2e4578:	4c 8b c8                                        	mov    r9,rax
  2e457b:	49 8b d7                                        	mov    rdx,r15
  2e457e:	48 8b ce                                        	mov    rcx,rsi
  2e4581:	e8 a2 2d ff ff                                  	call   0x2d7328
  2e4586:	4c 8d 45 30                                     	lea    r8,[rbp+0x30]
  2e458a:	48 89 45 40                                     	mov    QWORD PTR [rbp+0x40],rax
  2e458e:	48 8d 55 40                                     	lea    rdx,[rbp+0x40]
  2e4592:	c6 45 30 01                                     	mov    BYTE PTR [rbp+0x30],0x1
  2e4596:	49 8b ce                                        	mov    rcx,r14
  2e4599:	e8 6a a8 fe ff                                  	call   0x2cee08
  2e459e:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  2e45a2:	e8 e1 09 00 00                                  	call   0x2e4f88
  2e45a7:	48 8b 9c 24 98 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x98]
  2e45af:	49 8b c6                                        	mov    rax,r14
  2e45b2:	48 83 c4 60                                     	add    rsp,0x60
  2e45b6:	41 5f                                           	pop    r15
  2e45b8:	41 5e                                           	pop    r14
  2e45ba:	5f                                              	pop    rdi
  2e45bb:	5e                                              	pop    rsi
  2e45bc:	5d                                              	pop    rbp
  2e45bd:	c3                                              	ret
