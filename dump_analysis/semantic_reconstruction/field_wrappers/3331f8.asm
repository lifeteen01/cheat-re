
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003331f8 <.data+0x3331f8>:
  3331f8:	40 53                                           	rex push rbx
  3331fa:	55                                              	push   rbp
  3331fb:	56                                              	push   rsi
  3331fc:	57                                              	push   rdi
  3331fd:	48 83 ec 58                                     	sub    rsp,0x58
  333201:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  333206:	e8 3d 92 f9 ff                                  	call   0x2cc448
  33320b:	48 bd 45 c6 bf ad 90 b8 54 a9                   	movabs rbp,0xa954b890adbfc645
  333215:	48 8b 54 24 20                                  	mov    rdx,QWORD PTR [rsp+0x20]
  33321a:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33321f:	48 8b 52 30                                     	mov    rdx,QWORD PTR [rdx+0x30]
  333223:	e8 b8 91 f9 ff                                  	call   0x2cc3e0
  333228:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33322d:	e8 0e 93 f9 ff                                  	call   0x2cc540
  333232:	84 c0                                           	test   al,al
  333234:	74 44                                           	je     0x33327a
  333236:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33323b:	e8 3c b8 f9 ff                                  	call   0x2cea7c
  333240:	8b d8                                           	mov    ebx,eax
  333242:	85 c0                                           	test   eax,eax
  333244:	74 34                                           	je     0x33327a
  333246:	48 8b cd                                        	mov    rcx,rbp
  333249:	e8 ee af f9 ff                                  	call   0x2ce23c
  33324e:	48 8b cd                                        	mov    rcx,rbp
  333251:	8b f8                                           	mov    edi,eax
  333253:	e8 e0 af f9 ff                                  	call   0x2ce238
  333258:	8b f0                                           	mov    esi,eax
  33325a:	ff cb                                           	dec    ebx
  33325c:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  333261:	8b d3                                           	mov    edx,ebx
  333263:	e8 98 b4 f9 ff                                  	call   0x2ce700
  333268:	48 8b c8                                        	mov    rcx,rax
  33326b:	8b d7                                           	mov    edx,edi
  33326d:	e8 8a 8e f9 ff                                  	call   0x2cc0fc
  333272:	3b c6                                           	cmp    eax,esi
  333274:	74 1d                                           	je     0x333293
  333276:	85 db                                           	test   ebx,ebx
  333278:	75 e0                                           	jne    0x33325a
  33327a:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  33327f:	e8 0c b5 f9 ff                                  	call   0x2ce790
  333284:	84 c0                                           	test   al,al
  333286:	75 8d                                           	jne    0x333215
  333288:	33 c0                                           	xor    eax,eax
  33328a:	48 83 c4 58                                     	add    rsp,0x58
  33328e:	5f                                              	pop    rdi
  33328f:	5e                                              	pop    rsi
  333290:	5d                                              	pop    rbp
  333291:	5b                                              	pop    rbx
  333292:	c3                                              	ret
  333293:	8b d3                                           	mov    edx,ebx
  333295:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33329a:	e8 b9 a4 f9 ff                                  	call   0x2cd758
  33329f:	eb e9                                           	jmp    0x33328a
  3332a1:	cc                                              	int3
  3332a2:	cc                                              	int3
  3332a3:	cc                                              	int3
  3332a4:	40 53                                           	rex push rbx
  3332a6:	55                                              	push   rbp
  3332a7:	56                                              	push   rsi
  3332a8:	57                                              	push   rdi
  3332a9:	48 83 ec 58                                     	sub    rsp,0x58
  3332ad:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  3332b2:	e8 91 91 f9 ff                                  	call   0x2cc448
  3332b7:	48 bd 40 d5 c6 12 ba f8 aa a6                   	movabs rbp,0xa6aaf8ba12c6d540
  3332c1:	48 8b 54 24 20                                  	mov    rdx,QWORD PTR [rsp+0x20]
  3332c6:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3332cb:	48 8b 52 30                                     	mov    rdx,QWORD PTR [rdx+0x30]
  3332cf:	e8 0c 91 f9 ff                                  	call   0x2cc3e0
  3332d4:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3332d9:	e8 62 92 f9 ff                                  	call   0x2cc540
  3332de:	84 c0                                           	test   al,al
  3332e0:	74 44                                           	je     0x333326
  3332e2:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3332e7:	e8 90 b7 f9 ff                                  	call   0x2cea7c
  3332ec:	8b d8                                           	mov    ebx,eax
  3332ee:	85 c0                                           	test   eax,eax
  3332f0:	74 34                                           	je     0x333326
  3332f2:	48 8b cd                                        	mov    rcx,rbp
  3332f5:	e8 42 af f9 ff                                  	call   0x2ce23c
  3332fa:	48 8b cd                                        	mov    rcx,rbp
  3332fd:	8b f8                                           	mov    edi,eax
  3332ff:	e8 34 af f9 ff                                  	call   0x2ce238
  333304:	8b f0                                           	mov    esi,eax
  333306:	ff cb                                           	dec    ebx
  333308:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  33330d:	8b d3                                           	mov    edx,ebx
  33330f:	e8 ec b3 f9 ff                                  	call   0x2ce700
  333314:	48 8b c8                                        	mov    rcx,rax
  333317:	8b d7                                           	mov    edx,edi
  333319:	e8 de 8d f9 ff                                  	call   0x2cc0fc
  33331e:	3b c6                                           	cmp    eax,esi
  333320:	74 1d                                           	je     0x33333f
  333322:	85 db                                           	test   ebx,ebx
  333324:	75 e0                                           	jne    0x333306
  333326:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  33332b:	e8 60 b4 f9 ff                                  	call   0x2ce790
  333330:	84 c0                                           	test   al,al
  333332:	75 8d                                           	jne    0x3332c1
  333334:	33 c0                                           	xor    eax,eax
  333336:	48 83 c4 58                                     	add    rsp,0x58
  33333a:	5f                                              	pop    rdi
  33333b:	5e                                              	pop    rsi
  33333c:	5d                                              	pop    rbp
  33333d:	5b                                              	pop    rbx
  33333e:	c3                                              	ret
  33333f:	8b d3                                           	mov    edx,ebx
  333341:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  333346:	e8 0d a4 f9 ff                                  	call   0x2cd758
  33334b:	eb e9                                           	jmp    0x333336
  33334d:	cc                                              	int3
  33334e:	cc                                              	int3
  33334f:	cc                                              	int3
