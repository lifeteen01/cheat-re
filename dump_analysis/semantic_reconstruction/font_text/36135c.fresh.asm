
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036135c <.data+0x36135c>:
  36135c:	48 8b c4                                        	mov    rax,rsp
  36135f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  361363:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  361367:	55                                              	push   rbp
  361368:	57                                              	push   rdi
  361369:	41 54                                           	push   r12
  36136b:	41 56                                           	push   r14
  36136d:	41 57                                           	push   r15
  36136f:	48 8d 68 b1                                     	lea    rbp,[rax-0x4f]
  361373:	48 81 ec a0 00 00 00                            	sub    rsp,0xa0
  36137a:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  36137e:	49 8b d9                                        	mov    rbx,r9
  361381:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  361385:	4d 8b f0                                        	mov    r14,r8
  361388:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  36138d:	e8 6e be ff ff                                  	call   0x35d200
  361392:	8b 4d 7f                                        	mov    ecx,DWORD PTR [rbp+0x7f]
  361395:	45 33 e4                                        	xor    r12d,r12d
  361398:	4c 8b f8                                        	mov    r15,rax
  36139b:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  36139f:	0f 57 ff                                        	xorps  xmm7,xmm7
  3613a2:	85 c9                                           	test   ecx,ecx
  3613a4:	0f 85 f2 00 00 00                               	jne    0x36149c
  3613aa:	8b 0d c8 b9 09 00                               	mov    ecx,DWORD PTR [rip+0x9b9c8]        # 0x3fcd78
  3613b0:	f3 0f 10 35 04 1e f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff31e04]        # 0x2931bc
  3613b8:	85 c9                                           	test   ecx,ecx
  3613ba:	75 1b                                           	jne    0x3613d7
  3613bc:	8d 51 0d                                        	lea    edx,[rcx+0xd]
  3613bf:	8b 0d 73 d9 08 00                               	mov    ecx,DWORD PTR [rip+0x8d973]        # 0x3eed38
  3613c5:	e8 56 be ff ff                                  	call   0x35d220
  3613ca:	f3 0f 10 3d de 1d f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31dde]        # 0x2931b0
  3613d2:	e9 8a 00 00 00                                  	jmp    0x361461
  3613d7:	83 f9 01                                        	cmp    ecx,0x1
  3613da:	75 13                                           	jne    0x3613ef
  3613dc:	8d 51 0f                                        	lea    edx,[rcx+0xf]
  3613df:	8b 0d 53 d9 08 00                               	mov    ecx,DWORD PTR [rip+0x8d953]        # 0x3eed38
  3613e5:	e8 36 be ff ff                                  	call   0x35d220
  3613ea:	0f 28 fe                                        	movaps xmm7,xmm6
  3613ed:	eb 72                                           	jmp    0x361461
  3613ef:	83 f9 02                                        	cmp    ecx,0x2
  3613f2:	75 18                                           	jne    0x36140c
  3613f4:	8d 51 10                                        	lea    edx,[rcx+0x10]
  3613f7:	8b 0d 3b d9 08 00                               	mov    ecx,DWORD PTR [rip+0x8d93b]        # 0x3eed38
  3613fd:	e8 1e be ff ff                                  	call   0x35d220
  361402:	f3 0f 10 3d b6 1d f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31db6]        # 0x2931c0
  36140a:	eb 55                                           	jmp    0x361461
  36140c:	83 f9 03                                        	cmp    ecx,0x3
  36140f:	75 18                                           	jne    0x361429
  361411:	8d 51 11                                        	lea    edx,[rcx+0x11]
  361414:	8b 0d 1e d9 08 00                               	mov    ecx,DWORD PTR [rip+0x8d91e]        # 0x3eed38
  36141a:	e8 01 be ff ff                                  	call   0x35d220
  36141f:	f3 0f 10 3d f9 c6 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c6f9]        # 0x28db20
  361427:	eb 38                                           	jmp    0x361461
  361429:	83 f9 04                                        	cmp    ecx,0x4
  36142c:	75 18                                           	jne    0x361446
  36142e:	8d 51 12                                        	lea    edx,[rcx+0x12]
  361431:	8b 0d 01 d9 08 00                               	mov    ecx,DWORD PTR [rip+0x8d901]        # 0x3eed38
  361437:	e8 e4 bd ff ff                                  	call   0x35d220
  36143c:	f3 0f 10 3d 84 1d f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31d84]        # 0x2931c8
  361444:	eb 1b                                           	jmp    0x361461
  361446:	83 f9 05                                        	cmp    ecx,0x5
  361449:	75 1d                                           	jne    0x361468
  36144b:	8d 51 13                                        	lea    edx,[rcx+0x13]
  36144e:	8b 0d e4 d8 08 00                               	mov    ecx,DWORD PTR [rip+0x8d8e4]        # 0x3eed38
  361454:	e8 c7 bd ff ff                                  	call   0x35d220
  361459:	f3 0f 10 3d 6f 1d f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31d6f]        # 0x2931d0
  361461:	48 89 05 18 ad 09 00                            	mov    QWORD PTR [rip+0x9ad18],rax        # 0x3fc180
  361468:	8b 05 ca d8 08 00                               	mov    eax,DWORD PTR [rip+0x8d8ca]        # 0x3eed38
  36146e:	83 f8 02                                        	cmp    eax,0x2
  361471:	75 08                                           	jne    0x36147b
  361473:	f3 0f 10 3d 29 1d f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31d29]        # 0x2931a4
  36147b:	85 c0                                           	test   eax,eax
  36147d:	75 08                                           	jne    0x361487
  36147f:	f3 0f 10 3d 95 c6 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c695]        # 0x28db1c
  361487:	83 f8 03                                        	cmp    eax,0x3
  36148a:	75 03                                           	jne    0x36148f
  36148c:	0f 28 fe                                        	movaps xmm7,xmm6
  36148f:	f3 0f 11 3d 39 7a ee ff                         	movss  DWORD PTR [rip+0xffffffffffee7a39],xmm7        # 0x248ed0
  361497:	e9 02 03 00 00                                  	jmp    0x36179e
  36149c:	83 f9 01                                        	cmp    ecx,0x1
  36149f:	0f 85 08 01 00 00                               	jne    0x3615ad
  3614a5:	48 8d 0d f4 d2 08 00                            	lea    rcx,[rip+0x8d2f4]        # 0x3ee7a0
  3614ac:	e8 2b e3 f8 ff                                  	call   0x2ef7dc
  3614b1:	f3 0f 10 35 03 1d f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff31d03]        # 0x2931bc
  3614b9:	85 c0                                           	test   eax,eax
  3614bb:	75 25                                           	jne    0x3614e2
  3614bd:	48 8d 0d 2c d8 08 00                            	lea    rcx,[rip+0x8d82c]        # 0x3eecf0
  3614c4:	e8 13 e3 f8 ff                                  	call   0x2ef7dc
  3614c9:	8b c8                                           	mov    ecx,eax
  3614cb:	ba 0d 00 00 00                                  	mov    edx,0xd
  3614d0:	e8 4b bd ff ff                                  	call   0x35d220
  3614d5:	f3 0f 10 3d d3 1c f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31cd3]        # 0x2931b0
  3614dd:	e9 90 00 00 00                                  	jmp    0x361572
  3614e2:	8b 05 00 d3 08 00                               	mov    eax,DWORD PTR [rip+0x8d300]        # 0x3ee7e8
  3614e8:	83 f8 01                                        	cmp    eax,0x1
  3614eb:	75 13                                           	jne    0x361500
  3614ed:	8b 0d 45 d8 08 00                               	mov    ecx,DWORD PTR [rip+0x8d845]        # 0x3eed38
  3614f3:	8d 50 0f                                        	lea    edx,[rax+0xf]
  3614f6:	e8 25 bd ff ff                                  	call   0x35d220
  3614fb:	0f 28 fe                                        	movaps xmm7,xmm6
  3614fe:	eb 72                                           	jmp    0x361572
  361500:	83 f8 02                                        	cmp    eax,0x2
  361503:	75 18                                           	jne    0x36151d
  361505:	8b 0d 2d d8 08 00                               	mov    ecx,DWORD PTR [rip+0x8d82d]        # 0x3eed38
  36150b:	8d 50 10                                        	lea    edx,[rax+0x10]
  36150e:	e8 0d bd ff ff                                  	call   0x35d220
  361513:	f3 0f 10 3d a5 1c f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31ca5]        # 0x2931c0
  36151b:	eb 55                                           	jmp    0x361572
  36151d:	83 f8 03                                        	cmp    eax,0x3
  361520:	75 18                                           	jne    0x36153a
  361522:	8b 0d 10 d8 08 00                               	mov    ecx,DWORD PTR [rip+0x8d810]        # 0x3eed38
  361528:	8d 50 11                                        	lea    edx,[rax+0x11]
  36152b:	e8 f0 bc ff ff                                  	call   0x35d220
  361530:	f3 0f 10 3d e8 c5 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c5e8]        # 0x28db20
  361538:	eb 38                                           	jmp    0x361572
  36153a:	83 f8 04                                        	cmp    eax,0x4
  36153d:	75 18                                           	jne    0x361557
  36153f:	8b 0d f3 d7 08 00                               	mov    ecx,DWORD PTR [rip+0x8d7f3]        # 0x3eed38
  361545:	8d 50 12                                        	lea    edx,[rax+0x12]
  361548:	e8 d3 bc ff ff                                  	call   0x35d220
  36154d:	f3 0f 10 3d 73 1c f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31c73]        # 0x2931c8
  361555:	eb 1b                                           	jmp    0x361572
  361557:	83 f8 05                                        	cmp    eax,0x5
  36155a:	75 1d                                           	jne    0x361579
  36155c:	8b 0d d6 d7 08 00                               	mov    ecx,DWORD PTR [rip+0x8d7d6]        # 0x3eed38
  361562:	8d 50 13                                        	lea    edx,[rax+0x13]
  361565:	e8 b6 bc ff ff                                  	call   0x35d220
  36156a:	f3 0f 10 3d 5e 1c f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31c5e]        # 0x2931d0
  361572:	48 89 05 07 ac 09 00                            	mov    QWORD PTR [rip+0x9ac07],rax        # 0x3fc180
  361579:	8b 05 b9 d7 08 00                               	mov    eax,DWORD PTR [rip+0x8d7b9]        # 0x3eed38
  36157f:	83 f8 02                                        	cmp    eax,0x2
  361582:	75 08                                           	jne    0x36158c
  361584:	f3 0f 10 3d 18 1c f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31c18]        # 0x2931a4
  36158c:	85 c0                                           	test   eax,eax
  36158e:	75 08                                           	jne    0x361598
  361590:	f3 0f 10 3d 84 c5 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c584]        # 0x28db1c
  361598:	83 f8 03                                        	cmp    eax,0x3
  36159b:	75 03                                           	jne    0x3615a0
  36159d:	0f 28 fe                                        	movaps xmm7,xmm6
  3615a0:	f3 0f 11 3d 30 79 ee ff                         	movss  DWORD PTR [rip+0xffffffffffee7930],xmm7        # 0x248ed8
  3615a8:	e9 f1 01 00 00                                  	jmp    0x36179e
  3615ad:	83 f9 03                                        	cmp    ecx,0x3
  3615b0:	0f 85 f2 00 00 00                               	jne    0x3616a8
  3615b6:	8b 05 0c b8 09 00                               	mov    eax,DWORD PTR [rip+0x9b80c]        # 0x3fcdc8
  3615bc:	f3 0f 10 35 f8 1b f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff31bf8]        # 0x2931bc
  3615c4:	85 c0                                           	test   eax,eax
  3615c6:	75 1b                                           	jne    0x3615e3
  3615c8:	8d 51 0a                                        	lea    edx,[rcx+0xa]
  3615cb:	8b 0d 87 b9 09 00                               	mov    ecx,DWORD PTR [rip+0x9b987]        # 0x3fcf58
  3615d1:	e8 4a bc ff ff                                  	call   0x35d220
  3615d6:	f3 0f 10 3d d2 1b f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31bd2]        # 0x2931b0
  3615de:	e9 8a 00 00 00                                  	jmp    0x36166d
  3615e3:	83 f8 01                                        	cmp    eax,0x1
  3615e6:	75 13                                           	jne    0x3615fb
  3615e8:	8b 0d 6a b9 09 00                               	mov    ecx,DWORD PTR [rip+0x9b96a]        # 0x3fcf58
  3615ee:	8d 50 0f                                        	lea    edx,[rax+0xf]
  3615f1:	e8 2a bc ff ff                                  	call   0x35d220
  3615f6:	0f 28 fe                                        	movaps xmm7,xmm6
  3615f9:	eb 72                                           	jmp    0x36166d
  3615fb:	83 f8 02                                        	cmp    eax,0x2
  3615fe:	75 18                                           	jne    0x361618
  361600:	8b 0d 52 b9 09 00                               	mov    ecx,DWORD PTR [rip+0x9b952]        # 0x3fcf58
  361606:	8d 50 10                                        	lea    edx,[rax+0x10]
  361609:	e8 12 bc ff ff                                  	call   0x35d220
  36160e:	f3 0f 10 3d aa 1b f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31baa]        # 0x2931c0
  361616:	eb 55                                           	jmp    0x36166d
  361618:	83 f8 03                                        	cmp    eax,0x3
  36161b:	75 18                                           	jne    0x361635
  36161d:	8b 0d 35 b9 09 00                               	mov    ecx,DWORD PTR [rip+0x9b935]        # 0x3fcf58
  361623:	8d 50 11                                        	lea    edx,[rax+0x11]
  361626:	e8 f5 bb ff ff                                  	call   0x35d220
  36162b:	f3 0f 10 3d ed c4 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c4ed]        # 0x28db20
  361633:	eb 38                                           	jmp    0x36166d
  361635:	83 f8 04                                        	cmp    eax,0x4
  361638:	75 18                                           	jne    0x361652
  36163a:	8b 0d 18 b9 09 00                               	mov    ecx,DWORD PTR [rip+0x9b918]        # 0x3fcf58
  361640:	8d 50 12                                        	lea    edx,[rax+0x12]
  361643:	e8 d8 bb ff ff                                  	call   0x35d220
  361648:	f3 0f 10 3d 78 1b f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31b78]        # 0x2931c8
  361650:	eb 1b                                           	jmp    0x36166d
  361652:	83 f8 05                                        	cmp    eax,0x5
  361655:	75 1d                                           	jne    0x361674
  361657:	8b 0d fb b8 09 00                               	mov    ecx,DWORD PTR [rip+0x9b8fb]        # 0x3fcf58
  36165d:	8d 50 13                                        	lea    edx,[rax+0x13]
  361660:	e8 bb bb ff ff                                  	call   0x35d220
  361665:	f3 0f 10 3d 63 1b f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31b63]        # 0x2931d0
  36166d:	48 89 05 0c ab 09 00                            	mov    QWORD PTR [rip+0x9ab0c],rax        # 0x3fc180
  361674:	8b 05 be d6 08 00                               	mov    eax,DWORD PTR [rip+0x8d6be]        # 0x3eed38
  36167a:	83 f8 02                                        	cmp    eax,0x2
  36167d:	75 08                                           	jne    0x361687
  36167f:	f3 0f 10 3d 1d 1b f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31b1d]        # 0x2931a4
  361687:	85 c0                                           	test   eax,eax
  361689:	75 08                                           	jne    0x361693
  36168b:	f3 0f 10 3d 89 c4 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c489]        # 0x28db1c
  361693:	83 f8 03                                        	cmp    eax,0x3
  361696:	75 03                                           	jne    0x36169b
  361698:	0f 28 fe                                        	movaps xmm7,xmm6
  36169b:	f3 0f 11 3d 1d 91 09 00                         	movss  DWORD PTR [rip+0x9911d],xmm7        # 0x3fa7c0
  3616a3:	e9 f6 00 00 00                                  	jmp    0x36179e
  3616a8:	83 f9 02                                        	cmp    ecx,0x2
  3616ab:	0f 85 ed 00 00 00                               	jne    0x36179e
  3616b1:	8b 05 61 b7 09 00                               	mov    eax,DWORD PTR [rip+0x9b761]        # 0x3fce18
  3616b7:	f3 0f 10 35 fd 1a f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff31afd]        # 0x2931bc
  3616bf:	85 c0                                           	test   eax,eax
  3616c1:	75 1b                                           	jne    0x3616de
  3616c3:	8d 51 0b                                        	lea    edx,[rcx+0xb]
  3616c6:	8b 0d 6c d6 08 00                               	mov    ecx,DWORD PTR [rip+0x8d66c]        # 0x3eed38
  3616cc:	e8 4f bb ff ff                                  	call   0x35d220
  3616d1:	f3 0f 10 3d d7 1a f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31ad7]        # 0x2931b0
  3616d9:	e9 8a 00 00 00                                  	jmp    0x361768
  3616de:	83 f8 01                                        	cmp    eax,0x1
  3616e1:	75 13                                           	jne    0x3616f6
  3616e3:	8b 0d 4f d6 08 00                               	mov    ecx,DWORD PTR [rip+0x8d64f]        # 0x3eed38
  3616e9:	8d 50 0f                                        	lea    edx,[rax+0xf]
  3616ec:	e8 2f bb ff ff                                  	call   0x35d220
  3616f1:	0f 28 fe                                        	movaps xmm7,xmm6
  3616f4:	eb 72                                           	jmp    0x361768
  3616f6:	83 f8 02                                        	cmp    eax,0x2
  3616f9:	75 18                                           	jne    0x361713
  3616fb:	8b 0d 37 d6 08 00                               	mov    ecx,DWORD PTR [rip+0x8d637]        # 0x3eed38
  361701:	8d 50 10                                        	lea    edx,[rax+0x10]
  361704:	e8 17 bb ff ff                                  	call   0x35d220
  361709:	f3 0f 10 3d af 1a f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31aaf]        # 0x2931c0
  361711:	eb 55                                           	jmp    0x361768
  361713:	83 f8 03                                        	cmp    eax,0x3
  361716:	75 18                                           	jne    0x361730
  361718:	8b 0d 1a d6 08 00                               	mov    ecx,DWORD PTR [rip+0x8d61a]        # 0x3eed38
  36171e:	8d 50 11                                        	lea    edx,[rax+0x11]
  361721:	e8 fa ba ff ff                                  	call   0x35d220
  361726:	f3 0f 10 3d f2 c3 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c3f2]        # 0x28db20
  36172e:	eb 38                                           	jmp    0x361768
  361730:	83 f8 04                                        	cmp    eax,0x4
  361733:	75 18                                           	jne    0x36174d
  361735:	8b 0d fd d5 08 00                               	mov    ecx,DWORD PTR [rip+0x8d5fd]        # 0x3eed38
  36173b:	8d 50 12                                        	lea    edx,[rax+0x12]
  36173e:	e8 dd ba ff ff                                  	call   0x35d220
  361743:	f3 0f 10 3d 7d 1a f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31a7d]        # 0x2931c8
  36174b:	eb 1b                                           	jmp    0x361768
  36174d:	83 f8 05                                        	cmp    eax,0x5
  361750:	75 1d                                           	jne    0x36176f
  361752:	8b 0d e0 d5 08 00                               	mov    ecx,DWORD PTR [rip+0x8d5e0]        # 0x3eed38
  361758:	8d 50 13                                        	lea    edx,[rax+0x13]
  36175b:	e8 c0 ba ff ff                                  	call   0x35d220
  361760:	f3 0f 10 3d 68 1a f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31a68]        # 0x2931d0
  361768:	48 89 05 11 aa 09 00                            	mov    QWORD PTR [rip+0x9aa11],rax        # 0x3fc180
  36176f:	8b 05 c3 d5 08 00                               	mov    eax,DWORD PTR [rip+0x8d5c3]        # 0x3eed38
  361775:	83 f8 02                                        	cmp    eax,0x2
  361778:	75 08                                           	jne    0x361782
  36177a:	f3 0f 10 3d 22 1a f3 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff31a22]        # 0x2931a4
  361782:	85 c0                                           	test   eax,eax
  361784:	75 08                                           	jne    0x36178e
  361786:	f3 0f 10 3d 8e c3 f2 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff2c38e]        # 0x28db1c
  36178e:	83 f8 03                                        	cmp    eax,0x3
  361791:	75 03                                           	jne    0x361796
  361793:	0f 28 fe                                        	movaps xmm7,xmm6
  361796:	f3 0f 11 3d 36 77 ee ff                         	movss  DWORD PTR [rip+0xffffffffffee7736],xmm7        # 0x248ed4
  36179e:	49 8b ce                                        	mov    rcx,r14
  3617a1:	e8 46 c0 f6 ff                                  	call   0x2cd7ec
  3617a6:	f3 0f 10 1d a6 c3 f2 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff2c3a6]        # 0x28db54
  3617ae:	48 8d 55 d7                                     	lea    rdx,[rbp-0x29]
  3617b2:	48 8b 0d c7 a9 09 00                            	mov    rcx,QWORD PTR [rip+0x9a9c7]        # 0x3fc180
  3617b9:	0f 28 d7                                        	movaps xmm2,xmm7
  3617bc:	4c 89 64 24 38                                  	mov    QWORD PTR [rsp+0x38],r12
  3617c1:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  3617c6:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3617cb:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3617d2:	e8 9d 20 04 00                                  	call   0x3a3874
  3617d7:	f3 0f 10 0d 71 ba f2 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff2ba71]        # 0x28d250
  3617df:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  3617e3:	f3 0f 10 45 db                                  	movss  xmm0,DWORD PTR [rbp-0x25]
  3617e8:	f3 0f 10 53 04                                  	movss  xmm2,DWORD PTR [rbx+0x4]
  3617ed:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3617f1:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3617f5:	f3 0f 10 45 d7                                  	movss  xmm0,DWORD PTR [rbp-0x29]
  3617fa:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3617fe:	f3 0f 10 0b                                     	movss  xmm1,DWORD PTR [rbx]
  361802:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  361806:	e8 35 ab f6 ff                                  	call   0x2cc340
  36180b:	45 33 c9                                        	xor    r9d,r9d
  36180e:	c7 44 24 20 ff 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xff
  361816:	45 33 c0                                        	xor    r8d,r8d
  361819:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  36181d:	33 d2                                           	xor    edx,edx
  36181f:	e8 f4 9a f7 ff                                  	call   0x2db318
  361824:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  36182b:	49 8b ce                                        	mov    rcx,r14
  36182e:	e8 b9 bf f6 ff                                  	call   0x2cd7ec
  361833:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  361837:	48 8b f8                                        	mov    rdi,rax
  36183a:	e8 cd df f8 ff                                  	call   0x2ef80c
  36183f:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  361844:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  361848:	f3 0f 10 35 04 ba f2 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff2ba04]        # 0x28d254
  361850:	8b d8                                           	mov    ebx,eax
  361852:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  361857:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  36185b:	e8 e0 aa f6 ff                                  	call   0x2cc340
  361860:	48 8b 15 19 a9 09 00                            	mov    rdx,QWORD PTR [rip+0x9a919]        # 0x3fc180
  361867:	4c 8b c8                                        	mov    r9,rax
  36186a:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  36186f:	0f 28 d7                                        	movaps xmm2,xmm7
  361872:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  361879:	48 8b ce                                        	mov    rcx,rsi
  36187c:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361881:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361886:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  36188a:	e8 69 19 04 00                                  	call   0x3a31f8
  36188f:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  361896:	49 8b ce                                        	mov    rcx,r14
  361899:	e8 4e bf f6 ff                                  	call   0x2cd7ec
  36189e:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  3618a2:	48 8b f8                                        	mov    rdi,rax
  3618a5:	e8 62 df f8 ff                                  	call   0x2ef80c
  3618aa:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  3618af:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  3618b3:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  3618b8:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  3618bc:	8b d8                                           	mov    ebx,eax
  3618be:	e8 7d aa f6 ff                                  	call   0x2cc340
  3618c3:	48 8b 15 b6 a8 09 00                            	mov    rdx,QWORD PTR [rip+0x9a8b6]        # 0x3fc180
  3618ca:	4c 8b c8                                        	mov    r9,rax
  3618cd:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  3618d2:	0f 28 d7                                        	movaps xmm2,xmm7
  3618d5:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  3618dc:	48 8b ce                                        	mov    rcx,rsi
  3618df:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  3618e4:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  3618e9:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3618ed:	e8 06 19 04 00                                  	call   0x3a31f8
  3618f2:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  3618f9:	49 8b ce                                        	mov    rcx,r14
  3618fc:	e8 eb be f6 ff                                  	call   0x2cd7ec
  361901:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  361905:	48 8b f8                                        	mov    rdi,rax
  361908:	e8 ff de f8 ff                                  	call   0x2ef80c
  36190d:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  361912:	8b d8                                           	mov    ebx,eax
  361914:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  361919:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  36191d:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  361921:	e8 1a aa f6 ff                                  	call   0x2cc340
  361926:	48 8b 15 53 a8 09 00                            	mov    rdx,QWORD PTR [rip+0x9a853]        # 0x3fc180
  36192d:	4c 8b c8                                        	mov    r9,rax
  361930:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361935:	0f 28 d7                                        	movaps xmm2,xmm7
  361938:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  36193f:	48 8b ce                                        	mov    rcx,rsi
  361942:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361947:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  36194c:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361950:	e8 a3 18 04 00                                  	call   0x3a31f8
  361955:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  36195c:	49 8b ce                                        	mov    rcx,r14
  36195f:	e8 88 be f6 ff                                  	call   0x2cd7ec
  361964:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  361968:	48 8b f8                                        	mov    rdi,rax
  36196b:	e8 9c de f8 ff                                  	call   0x2ef80c
  361970:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  361975:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  361979:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  36197e:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  361982:	8b d8                                           	mov    ebx,eax
  361984:	e8 b7 a9 f6 ff                                  	call   0x2cc340
  361989:	48 8b 15 f0 a7 09 00                            	mov    rdx,QWORD PTR [rip+0x9a7f0]        # 0x3fc180
  361990:	4c 8b c8                                        	mov    r9,rax
  361993:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361998:	0f 28 d7                                        	movaps xmm2,xmm7
  36199b:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  3619a2:	48 8b ce                                        	mov    rcx,rsi
  3619a5:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  3619aa:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  3619af:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3619b3:	e8 40 18 04 00                                  	call   0x3a31f8
  3619b8:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  3619bf:	49 8b ce                                        	mov    rcx,r14
  3619c2:	e8 25 be f6 ff                                  	call   0x2cd7ec
  3619c7:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  3619cb:	48 8b f8                                        	mov    rdi,rax
  3619ce:	e8 39 de f8 ff                                  	call   0x2ef80c
  3619d3:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  3619d8:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  3619dc:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  3619e1:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  3619e5:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  3619e9:	8b d8                                           	mov    ebx,eax
  3619eb:	e8 50 a9 f6 ff                                  	call   0x2cc340
  3619f0:	48 8b 15 89 a7 09 00                            	mov    rdx,QWORD PTR [rip+0x9a789]        # 0x3fc180
  3619f7:	4c 8b c8                                        	mov    r9,rax
  3619fa:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  3619ff:	0f 28 d7                                        	movaps xmm2,xmm7
  361a02:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  361a09:	48 8b ce                                        	mov    rcx,rsi
  361a0c:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361a11:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361a16:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361a1a:	e8 d9 17 04 00                                  	call   0x3a31f8
  361a1f:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  361a26:	49 8b ce                                        	mov    rcx,r14
  361a29:	e8 be bd f6 ff                                  	call   0x2cd7ec
  361a2e:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  361a32:	48 8b f8                                        	mov    rdi,rax
  361a35:	e8 d2 dd f8 ff                                  	call   0x2ef80c
  361a3a:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  361a3f:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  361a43:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  361a48:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  361a4c:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  361a50:	8b d8                                           	mov    ebx,eax
  361a52:	e8 e9 a8 f6 ff                                  	call   0x2cc340
  361a57:	48 8b 15 22 a7 09 00                            	mov    rdx,QWORD PTR [rip+0x9a722]        # 0x3fc180
  361a5e:	4c 8b c8                                        	mov    r9,rax
  361a61:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361a66:	0f 28 d7                                        	movaps xmm2,xmm7
  361a69:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  361a70:	48 8b ce                                        	mov    rcx,rsi
  361a73:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361a78:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361a7d:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361a81:	e8 72 17 04 00                                  	call   0x3a31f8
  361a86:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  361a8d:	49 8b ce                                        	mov    rcx,r14
  361a90:	e8 57 bd f6 ff                                  	call   0x2cd7ec
  361a95:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  361a99:	48 8b f8                                        	mov    rdi,rax
  361a9c:	e8 6b dd f8 ff                                  	call   0x2ef80c
  361aa1:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  361aa6:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  361aaa:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  361aaf:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  361ab3:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  361ab7:	8b d8                                           	mov    ebx,eax
  361ab9:	e8 82 a8 f6 ff                                  	call   0x2cc340
  361abe:	48 8b 15 bb a6 09 00                            	mov    rdx,QWORD PTR [rip+0x9a6bb]        # 0x3fc180
  361ac5:	4c 8b c8                                        	mov    r9,rax
  361ac8:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361acd:	0f 28 d7                                        	movaps xmm2,xmm7
  361ad0:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  361ad7:	48 8b ce                                        	mov    rcx,rsi
  361ada:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361adf:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361ae4:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361ae8:	e8 0b 17 04 00                                  	call   0x3a31f8
  361aed:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  361af4:	49 8b ce                                        	mov    rcx,r14
  361af7:	e8 f0 bc f6 ff                                  	call   0x2cd7ec
  361afc:	48 8d 4d e7                                     	lea    rcx,[rbp-0x19]
  361b00:	48 8b f8                                        	mov    rdi,rax
  361b03:	e8 04 dd f8 ff                                  	call   0x2ef80c
  361b08:	f3 0f 10 55 73                                  	movss  xmm2,DWORD PTR [rbp+0x73]
  361b0d:	48 8d 4d df                                     	lea    rcx,[rbp-0x21]
  361b11:	f3 0f 10 4d 6f                                  	movss  xmm1,DWORD PTR [rbp+0x6f]
  361b16:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  361b1a:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  361b1e:	8b d8                                           	mov    ebx,eax
  361b20:	e8 1b a8 f6 ff                                  	call   0x2cc340
  361b25:	48 8b 15 54 a6 09 00                            	mov    rdx,QWORD PTR [rip+0x9a654]        # 0x3fc180
  361b2c:	4c 8b c8                                        	mov    r9,rax
  361b2f:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361b34:	0f 28 d7                                        	movaps xmm2,xmm7
  361b37:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  361b3e:	48 8b ce                                        	mov    rcx,rsi
  361b41:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361b46:	48 89 7c 24 28                                  	mov    QWORD PTR [rsp+0x28],rdi
  361b4b:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  361b4f:	e8 a4 16 04 00                                  	call   0x3a31f8
  361b54:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  361b5b:	49 8b ce                                        	mov    rcx,r14
  361b5e:	e8 89 bc f6 ff                                  	call   0x2cd7ec
  361b63:	48 8b 4d 77                                     	mov    rcx,QWORD PTR [rbp+0x77]
  361b67:	48 8b d8                                        	mov    rbx,rax
  361b6a:	e8 9d dc f8 ff                                  	call   0x2ef80c
  361b6f:	48 8b 15 0a a6 09 00                            	mov    rdx,QWORD PTR [rip+0x9a60a]        # 0x3fc180
  361b76:	4c 8d 4d 6f                                     	lea    r9,[rbp+0x6f]
  361b7a:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  361b7f:	0f 28 d7                                        	movaps xmm2,xmm7
  361b82:	f3 44 0f 11 44 24 38                            	movss  DWORD PTR [rsp+0x38],xmm8
  361b89:	48 8b cf                                        	mov    rcx,rdi
  361b8c:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  361b91:	48 89 5c 24 28                                  	mov    QWORD PTR [rsp+0x28],rbx
  361b96:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  361b9a:	e8 59 16 04 00                                  	call   0x3a31f8
  361b9f:	4c 8d 9c 24 a0 00 00 00                         	lea    r11,[rsp+0xa0]
  361ba7:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  361bab:	49 8b 73 38                                     	mov    rsi,QWORD PTR [r11+0x38]
  361baf:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  361bb4:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  361bb9:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  361bbe:	49 8b e3                                        	mov    rsp,r11
  361bc1:	41 5f                                           	pop    r15
  361bc3:	41 5e                                           	pop    r14
  361bc5:	41 5c                                           	pop    r12
  361bc7:	5f                                              	pop    rdi
  361bc8:	5d                                              	pop    rbp
  361bc9:	c3                                              	ret
