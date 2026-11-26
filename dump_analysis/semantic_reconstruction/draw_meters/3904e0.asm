
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003904e0 <.data+0x3904e0>:
  3904e0:	40 53                                           	rex push rbx
  3904e2:	48 83 ec 50                                     	sub    rsp,0x50
  3904e6:	0f 29 74 24 40                                  	movaps XMMWORD PTR [rsp+0x40],xmm6
  3904eb:	49 8b d9                                        	mov    rbx,r9
  3904ee:	0f 29 7c 24 30                                  	movaps XMMWORD PTR [rsp+0x30],xmm7
  3904f3:	0f 28 f2                                        	movaps xmm6,xmm2
  3904f6:	44 0f 29 44 24 20                               	movaps XMMWORD PTR [rsp+0x20],xmm8
  3904fc:	44 0f 28 c1                                     	movaps xmm8,xmm1
  390500:	44 0f 2e 05 44 cd ef ff                         	ucomiss xmm8,DWORD PTR [rip+0xffffffffffefcd44]        # 0x28d24c
  390508:	7a 24                                           	jp     0x39052e
  39050a:	75 22                                           	jne    0x39052e
  39050c:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  390514:	f3 0f 11 30                                     	movss  DWORD PTR [rax],xmm6
  390518:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  390520:	f3 0f 11 30                                     	movss  DWORD PTR [rax],xmm6
  390524:	f3 41 0f 11 31                                  	movss  DWORD PTR [r9],xmm6
  390529:	e9 e7 00 00 00                                  	jmp    0x390615
  39052e:	f3 0f 10 3d 1e cd ef ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffefcd1e]        # 0x28d254
  390536:	0f 28 cf                                        	movaps xmm1,xmm7
  390539:	e8 2e 85 03 00                                  	call   0x3c8a6c
  39053e:	48 8b 84 24 80 00 00 00                         	mov    rax,QWORD PTR [rsp+0x80]
  390546:	0f 28 d0                                        	movaps xmm2,xmm0
  390549:	f3 0f 5e 15 ef 9b f1 ff                         	divss  xmm2,DWORD PTR [rip+0xfffffffffff19bef]        # 0x2aa140
  390551:	0f 57 c9                                        	xorps  xmm1,xmm1
  390554:	0f 28 c7                                        	movaps xmm0,xmm7
  390557:	f3 0f 2c ca                                     	cvttss2si ecx,xmm2
  39055b:	0f 28 df                                        	movaps xmm3,xmm7
  39055e:	0f 28 e7                                        	movaps xmm4,xmm7
  390561:	f3 41 0f 5c d8                                  	subss  xmm3,xmm8
  390566:	f3 0f 2a c9                                     	cvtsi2ss xmm1,ecx
  39056a:	f3 0f 59 de                                     	mulss  xmm3,xmm6
  39056e:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  390572:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  390576:	0f 28 ca                                        	movaps xmm1,xmm2
  390579:	f3 41 0f 59 c8                                  	mulss  xmm1,xmm8
  39057e:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  390583:	f3 0f 5c e1                                     	subss  xmm4,xmm1
  390587:	f3 0f 5c f8                                     	subss  xmm7,xmm0
  39058b:	f3 0f 59 e6                                     	mulss  xmm4,xmm6
  39058f:	f3 0f 59 fe                                     	mulss  xmm7,xmm6
  390593:	85 c9                                           	test   ecx,ecx
  390595:	74 6a                                           	je     0x390601
  390597:	83 e9 01                                        	sub    ecx,0x1
  39059a:	74 5b                                           	je     0x3905f7
  39059c:	83 e9 01                                        	sub    ecx,0x1
  39059f:	74 40                                           	je     0x3905e1
  3905a1:	83 e9 01                                        	sub    ecx,0x1
  3905a4:	74 25                                           	je     0x3905cb
  3905a6:	83 f9 01                                        	cmp    ecx,0x1
  3905a9:	74 16                                           	je     0x3905c1
  3905ab:	f3 0f 11 33                                     	movss  DWORD PTR [rbx],xmm6
  3905af:	f3 0f 11 18                                     	movss  DWORD PTR [rax],xmm3
  3905b3:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  3905bb:	f3 0f 11 20                                     	movss  DWORD PTR [rax],xmm4
  3905bf:	eb 54                                           	jmp    0x390615
  3905c1:	f3 0f 11 3b                                     	movss  DWORD PTR [rbx],xmm7
  3905c5:	f3 0f 11 18                                     	movss  DWORD PTR [rax],xmm3
  3905c9:	eb 08                                           	jmp    0x3905d3
  3905cb:	f3 0f 11 1b                                     	movss  DWORD PTR [rbx],xmm3
  3905cf:	f3 0f 11 20                                     	movss  DWORD PTR [rax],xmm4
  3905d3:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  3905db:	f3 0f 11 30                                     	movss  DWORD PTR [rax],xmm6
  3905df:	eb 34                                           	jmp    0x390615
  3905e1:	f3 0f 11 1b                                     	movss  DWORD PTR [rbx],xmm3
  3905e5:	f3 0f 11 30                                     	movss  DWORD PTR [rax],xmm6
  3905e9:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  3905f1:	f3 0f 11 38                                     	movss  DWORD PTR [rax],xmm7
  3905f5:	eb 1e                                           	jmp    0x390615
  3905f7:	f3 0f 11 23                                     	movss  DWORD PTR [rbx],xmm4
  3905fb:	f3 0f 11 30                                     	movss  DWORD PTR [rax],xmm6
  3905ff:	eb 08                                           	jmp    0x390609
  390601:	f3 0f 11 33                                     	movss  DWORD PTR [rbx],xmm6
  390605:	f3 0f 11 38                                     	movss  DWORD PTR [rax],xmm7
  390609:	48 8b 84 24 88 00 00 00                         	mov    rax,QWORD PTR [rsp+0x88]
  390611:	f3 0f 11 18                                     	movss  DWORD PTR [rax],xmm3
  390615:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  39061a:	0f 28 7c 24 30                                  	movaps xmm7,XMMWORD PTR [rsp+0x30]
  39061f:	44 0f 28 44 24 20                               	movaps xmm8,XMMWORD PTR [rsp+0x20]
  390625:	48 83 c4 50                                     	add    rsp,0x50
  390629:	5b                                              	pop    rbx
  39062a:	c3                                              	ret
