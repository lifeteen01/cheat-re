
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003333fc <.data+0x3333fc>:
  3333fc:	40 53                                           	rex push rbx
  3333fe:	55                                              	push   rbp
  3333ff:	56                                              	push   rsi
  333400:	57                                              	push   rdi
  333401:	48 83 ec 58                                     	sub    rsp,0x58
  333405:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  33340a:	e8 39 90 f9 ff                                  	call   0x2cc448
  33340f:	48 bd d3 0e 67 00 08 56 51 f6                   	movabs rbp,0xf651560800670ed3
  333419:	48 8b 54 24 20                                  	mov    rdx,QWORD PTR [rsp+0x20]
  33341e:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  333423:	48 8b 52 30                                     	mov    rdx,QWORD PTR [rdx+0x30]
  333427:	e8 b4 8f f9 ff                                  	call   0x2cc3e0
  33342c:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  333431:	e8 0a 91 f9 ff                                  	call   0x2cc540
  333436:	84 c0                                           	test   al,al
  333438:	74 44                                           	je     0x33347e
  33343a:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33343f:	e8 38 b6 f9 ff                                  	call   0x2cea7c
  333444:	8b d8                                           	mov    ebx,eax
  333446:	85 c0                                           	test   eax,eax
  333448:	74 34                                           	je     0x33347e
  33344a:	48 8b cd                                        	mov    rcx,rbp
  33344d:	e8 ea ad f9 ff                                  	call   0x2ce23c
  333452:	48 8b cd                                        	mov    rcx,rbp
  333455:	8b f8                                           	mov    edi,eax
  333457:	e8 dc ad f9 ff                                  	call   0x2ce238
  33345c:	8b f0                                           	mov    esi,eax
  33345e:	ff cb                                           	dec    ebx
  333460:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  333465:	8b d3                                           	mov    edx,ebx
  333467:	e8 94 b2 f9 ff                                  	call   0x2ce700
  33346c:	48 8b c8                                        	mov    rcx,rax
  33346f:	8b d7                                           	mov    edx,edi
  333471:	e8 86 8c f9 ff                                  	call   0x2cc0fc
  333476:	3b c6                                           	cmp    eax,esi
  333478:	74 1d                                           	je     0x333497
  33347a:	85 db                                           	test   ebx,ebx
  33347c:	75 e0                                           	jne    0x33345e
  33347e:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  333483:	e8 08 b3 f9 ff                                  	call   0x2ce790
  333488:	84 c0                                           	test   al,al
  33348a:	75 8d                                           	jne    0x333419
  33348c:	33 c0                                           	xor    eax,eax
  33348e:	48 83 c4 58                                     	add    rsp,0x58
  333492:	5f                                              	pop    rdi
  333493:	5e                                              	pop    rsi
  333494:	5d                                              	pop    rbp
  333495:	5b                                              	pop    rbx
  333496:	c3                                              	ret
  333497:	8b d3                                           	mov    edx,ebx
  333499:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33349e:	e8 b5 a2 f9 ff                                  	call   0x2cd758
  3334a3:	eb e9                                           	jmp    0x33348e
