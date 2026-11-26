
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b64f4 <.data+0x3b64f4>:
  3b64f4:	48 8b c4                                        	mov    rax,rsp
  3b64f7:	f3 0f 11 58 20                                  	movss  DWORD PTR [rax+0x20],xmm3
  3b64fc:	f3 0f 11 50 18                                  	movss  DWORD PTR [rax+0x18],xmm2
  3b6501:	f3 0f 11 48 10                                  	movss  DWORD PTR [rax+0x10],xmm1
  3b6506:	53                                              	push   rbx
  3b6507:	48 81 ec c0 00 00 00                            	sub    rsp,0xc0
  3b650e:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3b6512:	0f 28 c1                                        	movaps xmm0,xmm1
  3b6515:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3b6519:	0f 28 f3                                        	movaps xmm6,xmm3
  3b651c:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3b6521:	44 0f 28 c2                                     	movaps xmm8,xmm2
  3b6525:	44 0f 2e c6                                     	ucomiss xmm8,xmm6
  3b6529:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3b652e:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3b6533:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  3b6538:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3b653d:	44 0f 29 6c 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm13
  3b6543:	44 0f 29 74 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm14
  3b6549:	44 0f 29 7c 24 20                               	movaps XMMWORD PTR [rsp+0x20],xmm15
  3b654f:	7a 0a                                           	jp     0x3b655b
  3b6551:	75 08                                           	jne    0x3b655b
  3b6553:	0f 57 c0                                        	xorps  xmm0,xmm0
  3b6556:	e9 5c 02 00 00                                  	jmp    0x3b67b7
  3b655b:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3b655f:	76 09                                           	jbe    0x3b656a
  3b6561:	0f 28 d6                                        	movaps xmm2,xmm6
  3b6564:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3b6568:	eb 03                                           	jmp    0x3b656d
  3b656a:	0f 28 ce                                        	movaps xmm1,xmm6
  3b656d:	e8 4a fd fb ff                                  	call   0x3762bc
  3b6572:	80 bc 24 f0 00 00 00 00                         	cmp    BYTE PTR [rsp+0xf0],0x0
  3b657a:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3b657e:	0f 84 20 02 00 00                               	je     0x3b67a4
  3b6584:	44 0f 2f c6                                     	comiss xmm8,xmm6
  3b6588:	0f 97 c3                                        	seta   bl
  3b658b:	84 db                                           	test   bl,bl
  3b658d:	74 28                                           	je     0x3b65b7
  3b658f:	48 8d 94 24 e8 00 00 00                         	lea    rdx,[rsp+0xe8]
  3b6597:	48 8d 8c 24 e0 00 00 00                         	lea    rcx,[rsp+0xe0]
  3b659f:	e8 58 3e fd ff                                  	call   0x38a3fc
  3b65a4:	f3 0f 10 b4 24 e8 00 00 00                      	movss  xmm6,DWORD PTR [rsp+0xe8]
  3b65ad:	f3 44 0f 10 84 24 e0 00 00 00                   	movss  xmm8,DWORD PTR [rsp+0xe0]
  3b65b7:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b65bb:	e8 6c d1 f2 ff                                  	call   0x2e372c
  3b65c0:	f3 44 0f 10 ac 24 f8 00 00 00                   	movss  xmm13,DWORD PTR [rsp+0xf8]
  3b65ca:	0f 57 ff                                        	xorps  xmm7,xmm7
  3b65cd:	44 0f 2f e8                                     	comiss xmm13,xmm0
  3b65d1:	f3 44 0f 10 3d c6 cc ed ff                      	movss  xmm15,DWORD PTR [rip+0xffffffffffedccc6]        # 0x2932a0
  3b65da:	76 10                                           	jbe    0x3b65ec
  3b65dc:	41 0f 2f f8                                     	comiss xmm7,xmm8
  3b65e0:	45 0f 28 dd                                     	movaps xmm11,xmm13
  3b65e4:	76 0a                                           	jbe    0x3b65f0
  3b65e6:	45 0f 57 df                                     	xorps  xmm11,xmm15
  3b65ea:	eb 04                                           	jmp    0x3b65f0
  3b65ec:	45 0f 28 d8                                     	movaps xmm11,xmm8
  3b65f0:	0f 28 c6                                        	movaps xmm0,xmm6
  3b65f3:	e8 34 d1 f2 ff                                  	call   0x2e372c
  3b65f8:	44 0f 2f e8                                     	comiss xmm13,xmm0
  3b65fc:	76 0f                                           	jbe    0x3b660d
  3b65fe:	0f 2f fe                                        	comiss xmm7,xmm6
  3b6601:	45 0f 28 d5                                     	movaps xmm10,xmm13
  3b6605:	76 0a                                           	jbe    0x3b6611
  3b6607:	45 0f 57 d7                                     	xorps  xmm10,xmm15
  3b660b:	eb 04                                           	jmp    0x3b6611
  3b660d:	44 0f 28 d6                                     	movaps xmm10,xmm6
  3b6611:	44 0f 2e c7                                     	ucomiss xmm8,xmm7
  3b6615:	41 0f 28 c5                                     	movaps xmm0,xmm13
  3b6619:	41 0f 57 c7                                     	xorps  xmm0,xmm15
  3b661d:	7a 0d                                           	jp     0x3b662c
  3b661f:	75 0b                                           	jne    0x3b662c
  3b6621:	0f 2f fe                                        	comiss xmm7,xmm6
  3b6624:	76 06                                           	jbe    0x3b662c
  3b6626:	44 0f 28 d8                                     	movaps xmm11,xmm0
  3b662a:	eb 11                                           	jmp    0x3b663d
  3b662c:	0f 2e f7                                        	ucomiss xmm6,xmm7
  3b662f:	7a 0c                                           	jp     0x3b663d
  3b6631:	75 0a                                           	jne    0x3b663d
  3b6633:	41 0f 2f f8                                     	comiss xmm7,xmm8
  3b6637:	76 04                                           	jbe    0x3b663d
  3b6639:	44 0f 28 d0                                     	movaps xmm10,xmm0
  3b663d:	45 0f 2f d9                                     	comiss xmm11,xmm9
  3b6641:	f3 44 0f 10 25 0a 6c ed ff                      	movss  xmm12,DWORD PTR [rip+0xffffffffffed6c0a]        # 0x28d254
  3b664a:	0f 83 3f 01 00 00                               	jae    0x3b678f
  3b6650:	45 0f 2f ca                                     	comiss xmm9,xmm10
  3b6654:	72 09                                           	jb     0x3b665f
  3b6656:	41 0f 28 fc                                     	movaps xmm7,xmm12
  3b665a:	e9 30 01 00 00                                  	jmp    0x3b678f
  3b665f:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b6663:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3b6667:	0f 2f f8                                        	comiss xmm7,xmm0
  3b666a:	0f 86 b8 00 00 00                               	jbe    0x3b6728
  3b6670:	f3 0f 10 84 24 d8 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xd8]
  3b6679:	f3 41 0f 5c f0                                  	subss  xmm6,xmm8
  3b667e:	0f 2e c7                                        	ucomiss xmm0,xmm7
  3b6681:	45 0f 28 f0                                     	movaps xmm14,xmm8
  3b6685:	45 0f 57 f7                                     	xorps  xmm14,xmm15
  3b6689:	f3 44 0f 5e f6                                  	divss  xmm14,xmm6
  3b668e:	7a 0b                                           	jp     0x3b669b
  3b6690:	75 09                                           	jne    0x3b669b
  3b6692:	41 0f 28 fe                                     	movaps xmm7,xmm14
  3b6696:	e9 f4 00 00 00                                  	jmp    0x3b678f
  3b669b:	0f 2f f8                                        	comiss xmm7,xmm0
  3b669e:	76 47                                           	jbe    0x3b66e7
  3b66a0:	45 0f 57 cf                                     	xorps  xmm9,xmm15
  3b66a4:	f3 45 0f 5e cd                                  	divss  xmm9,xmm13
  3b66a9:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b66ad:	e8 82 99 00 00                                  	call   0x3c0034
  3b66b2:	45 0f 57 df                                     	xorps  xmm11,xmm15
  3b66b6:	0f 28 f0                                        	movaps xmm6,xmm0
  3b66b9:	f3 45 0f 5e dd                                  	divss  xmm11,xmm13
  3b66be:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b66c2:	e8 6d 99 00 00                                  	call   0x3c0034
  3b66c7:	f3 44 0f 5c b4 24 00 01 00 00                   	subss  xmm14,DWORD PTR [rsp+0x100]
  3b66d1:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3b66d5:	41 0f 28 fc                                     	movaps xmm7,xmm12
  3b66d9:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  3b66dd:	f3 41 0f 59 fe                                  	mulss  xmm7,xmm14
  3b66e2:	e9 a8 00 00 00                                  	jmp    0x3b678f
  3b66e7:	f3 44 0f 58 b4 24 00 01 00 00                   	addss  xmm14,DWORD PTR [rsp+0x100]
  3b66f1:	f3 45 0f 5e cd                                  	divss  xmm9,xmm13
  3b66f6:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b66fa:	e8 35 99 00 00                                  	call   0x3c0034
  3b66ff:	f3 45 0f 5e d5                                  	divss  xmm10,xmm13
  3b6704:	0f 28 f8                                        	movaps xmm7,xmm0
  3b6707:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3b670b:	e8 24 99 00 00                                  	call   0x3c0034
  3b6710:	f3 0f 5e f8                                     	divss  xmm7,xmm0
  3b6714:	41 0f 28 cc                                     	movaps xmm1,xmm12
  3b6718:	f3 41 0f 5c ce                                  	subss  xmm1,xmm14
  3b671d:	f3 0f 59 f9                                     	mulss  xmm7,xmm1
  3b6721:	f3 41 0f 58 fe                                  	addss  xmm7,xmm14
  3b6726:	eb 67                                           	jmp    0x3b678f
  3b6728:	41 0f 2f f8                                     	comiss xmm7,xmm8
  3b672c:	77 2a                                           	ja     0x3b6758
  3b672e:	0f 2f fe                                        	comiss xmm7,xmm6
  3b6731:	77 25                                           	ja     0x3b6758
  3b6733:	f3 45 0f 5e cb                                  	divss  xmm9,xmm11
  3b6738:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b673c:	e8 f3 98 00 00                                  	call   0x3c0034
  3b6741:	f3 45 0f 5e d3                                  	divss  xmm10,xmm11
  3b6746:	0f 28 f8                                        	movaps xmm7,xmm0
  3b6749:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3b674d:	e8 e2 98 00 00                                  	call   0x3c0034
  3b6752:	f3 0f 5e f8                                     	divss  xmm7,xmm0
  3b6756:	eb 37                                           	jmp    0x3b678f
  3b6758:	45 0f 57 cf                                     	xorps  xmm9,xmm15
  3b675c:	45 0f 57 d7                                     	xorps  xmm10,xmm15
  3b6760:	f3 45 0f 5e ca                                  	divss  xmm9,xmm10
  3b6765:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b6769:	e8 c6 98 00 00                                  	call   0x3c0034
  3b676e:	45 0f 57 df                                     	xorps  xmm11,xmm15
  3b6772:	0f 28 f0                                        	movaps xmm6,xmm0
  3b6775:	f3 45 0f 5e da                                  	divss  xmm11,xmm10
  3b677a:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b677e:	e8 b1 98 00 00                                  	call   0x3c0034
  3b6783:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3b6787:	41 0f 28 fc                                     	movaps xmm7,xmm12
  3b678b:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  3b678f:	84 db                                           	test   bl,bl
  3b6791:	74 07                                           	je     0x3b679a
  3b6793:	f3 44 0f 5c e7                                  	subss  xmm12,xmm7
  3b6798:	eb 04                                           	jmp    0x3b679e
  3b679a:	44 0f 28 e7                                     	movaps xmm12,xmm7
  3b679e:	41 0f 28 c4                                     	movaps xmm0,xmm12
  3b67a2:	eb 13                                           	jmp    0x3b67b7
  3b67a4:	f3 45 0f 5c c8                                  	subss  xmm9,xmm8
  3b67a9:	f3 41 0f 5c f0                                  	subss  xmm6,xmm8
  3b67ae:	f3 44 0f 5e ce                                  	divss  xmm9,xmm6
  3b67b3:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b67b7:	44 0f 28 74 24 30                               	movaps xmm14,XMMWORD PTR [rsp+0x30]
  3b67bd:	4c 8d 9c 24 c0 00 00 00                         	lea    r11,[rsp+0xc0]
  3b67c5:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3b67ca:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3b67cf:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3b67d4:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3b67d9:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3b67de:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3b67e3:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3b67e8:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3b67ed:	44 0f 28 7c 24 20                               	movaps xmm15,XMMWORD PTR [rsp+0x20]
  3b67f3:	49 8b e3                                        	mov    rsp,r11
  3b67f6:	5b                                              	pop    rbx
  3b67f7:	c3                                              	ret
