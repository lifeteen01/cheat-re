
dump_analysis/semantic_reconstruction/movement_main_helpers/329328.bin:     file format binary


Disassembly of section .data:

0000000000329328 <.data>:
  329328:	40 55                                           	rex push rbp
  32932a:	53                                              	push   rbx
  32932b:	56                                              	push   rsi
  32932c:	57                                              	push   rdi
  32932d:	41 54                                           	push   r12
  32932f:	41 56                                           	push   r14
  329331:	41 57                                           	push   r15
  329333:	48 8d 6c 24 d9                                  	lea    rbp,[rsp-0x27]
  329338:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  32933f:	f3 0f 10 0d a9 9d f6 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff69da9]        # 0x2930f0
  329347:	48 8d 0d da b5 0c 00                            	lea    rcx,[rip+0xcb5da]        # 0x3f4928
  32934e:	e8 29 c8 fb ff                                  	call   0x2e5b7c
  329353:	84 c0                                           	test   al,al
  329355:	0f 84 0e 02 00 00                               	je     0x329569
  32935b:	48 8b 05 9e db 0a 00                            	mov    rax,QWORD PTR [rip+0xadb9e]        # 0x3d6f00
  329362:	48 8b 90 98 c0 1f 0f                            	mov    rdx,QWORD PTR [rax+0xf1fc098]
  329369:	48 8b ca                                        	mov    rcx,rdx
  32936c:	e8 97 1b fa ff                                  	call   0x2caf08
  329371:	84 c0                                           	test   al,al
  329373:	0f 84 f0 01 00 00                               	je     0x329569
  329379:	4c 8b 82 b8 00 00 00                            	mov    r8,QWORD PTR [rdx+0xb8]
  329380:	49 8b c8                                        	mov    rcx,r8
  329383:	e8 80 1b fa ff                                  	call   0x2caf08
  329388:	84 c0                                           	test   al,al
  32938a:	0f 84 d9 01 00 00                               	je     0x329569
  329390:	4d 8b 78 20                                     	mov    r15,QWORD PTR [r8+0x20]
  329394:	49 8b cf                                        	mov    rcx,r15
  329397:	e8 6c 1b fa ff                                  	call   0x2caf08
  32939c:	84 c0                                           	test   al,al
  32939e:	0f 84 c5 01 00 00                               	je     0x329569
  3293a4:	4d 8b 7f 30                                     	mov    r15,QWORD PTR [r15+0x30]
  3293a8:	49 8b cf                                        	mov    rcx,r15
  3293ab:	e8 58 1b fa ff                                  	call   0x2caf08
  3293b0:	84 c0                                           	test   al,al
  3293b2:	0f 84 b1 01 00 00                               	je     0x329569
  3293b8:	45 8b 67 18                                     	mov    r12d,DWORD PTR [r15+0x18]
  3293bc:	45 33 f6                                        	xor    r14d,r14d
  3293bf:	45 85 e4                                        	test   r12d,r12d
  3293c2:	0f 8e a1 01 00 00                               	jle    0x329569
  3293c8:	49 8b 57 10                                     	mov    rdx,QWORD PTR [r15+0x10]
  3293cc:	48 8b ca                                        	mov    rcx,rdx
  3293cf:	e8 34 1b fa ff                                  	call   0x2caf08
  3293d4:	84 c0                                           	test   al,al
  3293d6:	0f 84 81 01 00 00                               	je     0x32955d
  3293dc:	42 8d 04 f5 00 00 00 00                         	lea    eax,[r14*8+0x0]
  3293e4:	48 63 c8                                        	movsxd rcx,eax
  3293e7:	48 8b 54 0a 20                                  	mov    rdx,QWORD PTR [rdx+rcx*1+0x20]
  3293ec:	48 8b ca                                        	mov    rcx,rdx
  3293ef:	e8 14 1b fa ff                                  	call   0x2caf08
  3293f4:	84 c0                                           	test   al,al
  3293f6:	0f 84 61 01 00 00                               	je     0x32955d
  3293fc:	41 83 fe 01                                     	cmp    r14d,0x1
  329400:	0f 85 57 01 00 00                               	jne    0x32955d
  329406:	48 83 3d 32 ae 0b 00 00                         	cmp    QWORD PTR [rip+0xbae32],0x0        # 0x3e4240
  32940e:	0f 84 49 01 00 00                               	je     0x32955d
  329414:	8b 52 58                                        	mov    edx,DWORD PTR [rdx+0x58]
  329417:	48 8d 4d 07                                     	lea    rcx,[rbp+0x7]
  32941b:	e8 f0 00 fb ff                                  	call   0x2d9510
  329420:	48 8d 55 d1                                     	lea    rdx,[rbp-0x2f]
  329424:	48 8b d8                                        	mov    rbx,rax
  329427:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  32942b:	e8 30 a5 ff ff                                  	call   0x323960
  329430:	48 8b c8                                        	mov    rcx,rax
  329433:	e8 04 a2 fb ff                                  	call   0x2e363c
  329438:	48 8b d0                                        	mov    rdx,rax
  32943b:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  32943f:	4c 8b c3                                        	mov    r8,rbx
  329442:	e8 95 12 fc ff                                  	call   0x2ea6dc
  329447:	48 8d 4d 07                                     	lea    rcx,[rbp+0x7]
  32944b:	e8 a4 30 fa ff                                  	call   0x2cc4f4
  329450:	8b 05 e2 b4 0c 00                               	mov    eax,DWORD PTR [rip+0xcb4e2]        # 0x3f4938
  329456:	41 84 c6                                        	test   r14b,al
  329459:	0f 85 9d 00 00 00                               	jne    0x3294fc
  32945f:	41 0b c6                                        	or     eax,r14d
  329462:	48 8d 55 6f                                     	lea    rdx,[rbp+0x6f]
  329466:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  32946a:	89 05 c8 b4 0c 00                               	mov    DWORD PTR [rip+0xcb4c8],eax        # 0x3f4938
  329470:	e8 bb 32 fa ff                                  	call   0x2cc730
  329475:	48 8b c8                                        	mov    rcx,rax
  329478:	e8 27 48 fa ff                                  	call   0x2cdca4
  32947d:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  329481:	48 8b f0                                        	mov    rsi,rax
  329484:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  329488:	e8 6f a9 ff ff                                  	call   0x323dfc
  32948d:	48 8b c8                                        	mov    rcx,rax
  329490:	e8 87 48 fa ff                                  	call   0x2cdd1c
  329495:	48 8d 55 77                                     	lea    rdx,[rbp+0x77]
  329499:	48 8b f8                                        	mov    rdi,rax
  32949c:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  3294a0:	e8 8b 32 fa ff                                  	call   0x2cc730
  3294a5:	48 8b c8                                        	mov    rcx,rax
  3294a8:	e8 f7 47 fa ff                                  	call   0x2cdca4
  3294ad:	48 8d 55 d1                                     	lea    rdx,[rbp-0x2f]
  3294b1:	48 8b d8                                        	mov    rbx,rax
  3294b4:	48 8d 4d 67                                     	lea    rcx,[rbp+0x67]
  3294b8:	e8 d3 a6 ff ff                                  	call   0x323b90
  3294bd:	48 8b c8                                        	mov    rcx,rax
  3294c0:	e8 b7 f0 fa ff                                  	call   0x2d857c
  3294c5:	48 8b c8                                        	mov    rcx,rax
  3294c8:	48 8b d3                                        	mov    rdx,rbx
  3294cb:	e8 54 ad 00 00                                  	call   0x334224
  3294d0:	48 8b c8                                        	mov    rcx,rax
  3294d3:	c7 44 24 20 ff ff ff ff                         	mov    DWORD PTR [rsp+0x20],0xffffffff
  3294db:	4c 8b ce                                        	mov    r9,rsi
  3294de:	41 83 c8 ff                                     	or     r8d,0xffffffff
  3294e2:	48 8b d7                                        	mov    rdx,rdi
  3294e5:	e8 c2 b4 00 00                                  	call   0x3349ac
  3294ea:	4c 8b 00                                        	mov    r8,QWORD PTR [rax]
  3294ed:	8b 05 45 b4 0c 00                               	mov    eax,DWORD PTR [rip+0xcb445]        # 0x3f4938
  3294f3:	4c 89 05 36 b4 0c 00                            	mov    QWORD PTR [rip+0xcb436],r8        # 0x3f4930
  3294fa:	eb 07                                           	jmp    0x329503
  3294fc:	4c 8b 05 2d b4 0c 00                            	mov    r8,QWORD PTR [rip+0xcb42d]        # 0x3f4930
  329503:	a8 02                                           	test   al,0x2
  329505:	75 1f                                           	jne    0x329526
  329507:	48 8b 0d 52 c9 0a 00                            	mov    rcx,QWORD PTR [rip+0xac952]        # 0x3d5e60
  32950e:	48 8d 15 2b b4 0c 00                            	lea    rdx,[rip+0xcb42b]        # 0x3f4940
  329515:	83 c8 02                                        	or     eax,0x2
  329518:	45 33 c9                                        	xor    r9d,r9d
  32951b:	89 05 17 b4 0c 00                               	mov    DWORD PTR [rip+0xcb417],eax        # 0x3f4938
  329521:	e8 fe 27 fa ff                                  	call   0x2cbd24
  329526:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  32952a:	e8 bd 42 fa ff                                  	call   0x2cd7ec
  32952f:	48 8b c8                                        	mov    rcx,rax
  329532:	e8 a5 50 fa ff                                  	call   0x2ce5dc
  329537:	4c 8b 05 02 ad 0b 00                            	mov    r8,QWORD PTR [rip+0xbad02]        # 0x3e4240
  32953e:	48 8d 15 fb b3 0c 00                            	lea    rdx,[rip+0xcb3fb]        # 0x3f4940
  329545:	48 8b 0d 14 c9 0a 00                            	mov    rcx,QWORD PTR [rip+0xac914]        # 0x3d5e60
  32954c:	4c 8b c8                                        	mov    r9,rax
  32954f:	e8 40 8b fa ff                                  	call   0x2d2094
  329554:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  329558:	e8 97 2f fa ff                                  	call   0x2cc4f4
  32955d:	41 ff c6                                        	inc    r14d
  329560:	45 3b f4                                        	cmp    r14d,r12d
  329563:	0f 8c 5f fe ff ff                               	jl     0x3293c8
  329569:	48 81 c4 90 00 00 00                            	add    rsp,0x90
  329570:	41 5f                                           	pop    r15
  329572:	41 5e                                           	pop    r14
  329574:	41 5c                                           	pop    r12
  329576:	5f                                              	pop    rdi
  329577:	5e                                              	pop    rsi
  329578:	5b                                              	pop    rbx
  329579:	5d                                              	pop    rbp
  32957a:	c3                                              	ret
