
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036232c <.data+0x36232c>:
  36232c:	48 8b c4                                        	mov    rax,rsp
  36232f:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  362333:	55                                              	push   rbp
  362334:	56                                              	push   rsi
  362335:	57                                              	push   rdi
  362336:	41 54                                           	push   r12
  362338:	41 55                                           	push   r13
  36233a:	41 56                                           	push   r14
  36233c:	41 57                                           	push   r15
  36233e:	48 8d 6c 24 b0                                  	lea    rbp,[rsp-0x50]
  362343:	48 81 ec 50 01 00 00                            	sub    rsp,0x150
  36234a:	44 8b ad c8 00 00 00                            	mov    r13d,DWORD PTR [rbp+0xc8]
  362351:	45 8b f8                                        	mov    r15d,r8d
  362354:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  362358:	44 8b e2                                        	mov    r12d,edx
  36235b:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  36235f:	0f 28 f3                                        	movaps xmm6,xmm3
  362362:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  362367:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  36236c:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  362374:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  36237c:	44 0f 29 a0 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm12
  362384:	44 0f 29 a8 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm13
  36238c:	44 0f 29 b0 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm14
  362394:	44 0f 29 b8 28 ff ff ff                         	movaps XMMWORD PTR [rax-0xd8],xmm15
  36239c:	e8 5f ae ff ff                                  	call   0x35d200
  3623a1:	bb ff 00 00 00                                  	mov    ebx,0xff
  3623a6:	48 89 44 24 58                                  	mov    QWORD PTR [rsp+0x58],rax
  3623ab:	8b d3                                           	mov    edx,ebx
  3623ad:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3623b1:	45 33 c9                                        	xor    r9d,r9d
  3623b4:	48 8d 4c 24 68                                  	lea    rcx,[rsp+0x68]
  3623b9:	45 33 c0                                        	xor    r8d,r8d
  3623bc:	48 8b f8                                        	mov    rdi,rax
  3623bf:	e8 54 8f f7 ff                                  	call   0x2db318
  3623c4:	45 33 c9                                        	xor    r9d,r9d
  3623c7:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3623cb:	44 8b c3                                        	mov    r8d,ebx
  3623ce:	48 8d 4d 88                                     	lea    rcx,[rbp-0x78]
  3623d2:	33 d2                                           	xor    edx,edx
  3623d4:	e8 3f 8f f7 ff                                  	call   0x2db318
  3623d9:	ba 1e 00 00 00                                  	mov    edx,0x1e
  3623de:	c7 44 24 20 e6 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xe6
  3623e6:	44 8b ca                                        	mov    r9d,edx
  3623e9:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  3623ee:	44 8b c2                                        	mov    r8d,edx
  3623f1:	e8 22 8f f7 ff                                  	call   0x2db318
  3623f6:	ba 46 00 00 00                                  	mov    edx,0x46
  3623fb:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3623ff:	44 8b ca                                        	mov    r9d,edx
  362402:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  362406:	44 8b c2                                        	mov    r8d,edx
  362409:	e8 0a 8f f7 ff                                  	call   0x2db318
  36240e:	f3 0f 5e b5 b0 00 00 00                         	divss  xmm6,DWORD PTR [rbp+0xb0]
  362416:	44 8b b5 c0 00 00 00                            	mov    r14d,DWORD PTR [rbp+0xc0]
  36241d:	f3 44 0f 10 1d 2e ae f2 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff2ae2e]        # 0x28d254
  362426:	0f 57 c9                                        	xorps  xmm1,xmm1
  362429:	66 45 0f 6e f6                                  	movd   xmm14,r14d
  36242e:	0f 28 c6                                        	movaps xmm0,xmm6
  362431:	45 0f 5b f6                                     	cvtdq2ps xmm14,xmm14
  362435:	41 0f 28 d3                                     	movaps xmm2,xmm11
  362439:	45 0f 28 fe                                     	movaps xmm15,xmm14
  36243d:	f3 44 0f 59 3d 56 0c f3 ff                      	mulss  xmm15,DWORD PTR [rip+0xfffffffffff30c56]        # 0x29309c
  362446:	e8 f9 35 f8 ff                                  	call   0x2e5a44
  36244b:	f3 0f 10 0d e1 0c f3 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff30ce1]        # 0x293134
  362453:	0f 28 f0                                        	movaps xmm6,xmm0
  362456:	8b 9d b8 00 00 00                               	mov    ebx,DWORD PTR [rbp+0xb8]
  36245c:	f3 44 0f 5c f1                                  	subss  xmm14,xmm1
  362461:	66 41 0f 6e c5                                  	movd   xmm0,r13d
  362466:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  362469:	66 44 0f 6e e3                                  	movd   xmm12,ebx
  36246e:	45 0f 5b e4                                     	cvtdq2ps xmm12,xmm12
  362472:	f3 44 0f 11 b5 b8 00 00 00                      	movss  DWORD PTR [rbp+0xb8],xmm14
  36247b:	f3 44 0f 5c e1                                  	subss  xmm12,xmm1
  362480:	45 0f 28 ec                                     	movaps xmm13,xmm12
  362484:	f3 44 0f 11 a5 b0 00 00 00                      	movss  DWORD PTR [rbp+0xb0],xmm12
  36248d:	f3 44 0f 5e e8                                  	divss  xmm13,xmm0
  362492:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  362496:	e8 25 0b 00 00                                  	call   0x362fc0
  36249b:	48 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [rdi+0x298]
  3624a2:	48 8d 4c 24 78                                  	lea    rcx,[rsp+0x78]
  3624a7:	f3 0f 2c c0                                     	cvttss2si eax,xmm0
  3624ab:	89 85 c8 00 00 00                               	mov    DWORD PTR [rbp+0xc8],eax
  3624b1:	e8 56 d3 f8 ff                                  	call   0x2ef80c
  3624b6:	43 8d 0c 37                                     	lea    ecx,[r15+r14*1]
  3624ba:	8b f8                                           	mov    edi,eax
  3624bc:	66 0f 6e c1                                     	movd   xmm0,ecx
  3624c0:	41 8d 0c 1c                                     	lea    ecx,[r12+rbx*1]
  3624c4:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3624c7:	66 0f 6e c9                                     	movd   xmm1,ecx
  3624cb:	f3 0f 11 85 a0 00 00 00                         	movss  DWORD PTR [rbp+0xa0],xmm0
  3624d3:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3624d6:	66 45 0f 6e d7                                  	movd   xmm10,r15d
  3624db:	48 8d 4c 24 44                                  	lea    rcx,[rsp+0x44]
  3624e0:	45 0f 5b d2                                     	cvtdq2ps xmm10,xmm10
  3624e4:	66 41 0f 6e fc                                  	movd   xmm7,r12d
  3624e9:	0f 28 d0                                        	movaps xmm2,xmm0
  3624ec:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3624ef:	f3 44 0f 11 95 98 00 00 00                      	movss  DWORD PTR [rbp+0x98],xmm10
  3624f8:	f3 0f 11 7c 24 40                               	movss  DWORD PTR [rsp+0x40],xmm7
  3624fe:	f3 0f 11 8d a8 00 00 00                         	movss  DWORD PTR [rbp+0xa8],xmm1
  362506:	e8 35 9e f6 ff                                  	call   0x2cc340
  36250b:	41 0f 28 d2                                     	movaps xmm2,xmm10
  36250f:	48 8d 4c 24 4c                                  	lea    rcx,[rsp+0x4c]
  362514:	0f 28 cf                                        	movaps xmm1,xmm7
  362517:	48 8b d8                                        	mov    rbx,rax
  36251a:	e8 21 9e f6 ff                                  	call   0x2cc340
  36251f:	48 8b d0                                        	mov    rdx,rax
  362522:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  36252a:	44 8b cf                                        	mov    r9d,edi
  36252d:	f3 44 0f 11 7c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm15
  362534:	4c 8b c3                                        	mov    r8,rbx
  362537:	48 8b ce                                        	mov    rcx,rsi
  36253a:	e8 05 ed 03 00                                  	call   0x3a1244
  36253f:	4c 8b 7c 24 58                                  	mov    r15,QWORD PTR [rsp+0x58]
  362544:	44 0f 28 c7                                     	movaps xmm8,xmm7
  362548:	f3 45 0f 58 c3                                  	addss  xmm8,xmm11
  36254d:	33 f6                                           	xor    esi,esi
  36254f:	45 0f 28 ca                                     	movaps xmm9,xmm10
  362553:	f3 45 0f 58 cb                                  	addss  xmm9,xmm11
  362558:	f3 44 0f 11 85 c0 00 00 00                      	movss  DWORD PTR [rbp+0xc0],xmm8
  362561:	39 b5 c8 00 00 00                               	cmp    DWORD PTR [rbp+0xc8],esi
  362567:	0f 8e 03 01 00 00                               	jle    0x362670
  36256d:	45 0f 28 d1                                     	movaps xmm10,xmm9
  362571:	45 8d 75 ff                                     	lea    r14d,[r13-0x1]
  362575:	45 0f 28 c3                                     	movaps xmm8,xmm11
  362579:	f3 45 0f 58 d6                                  	addss  xmm10,xmm14
  36257e:	f3 44 0f 10 b5 c0 00 00 00                      	movss  xmm14,DWORD PTR [rbp+0xc0]
  362587:	f3 44 0f 5c c6                                  	subss  xmm8,xmm6
  36258c:	66 0f 6e c6                                     	movd   xmm0,esi
  362590:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  362593:	f3 41 0f 59 c5                                  	mulss  xmm0,xmm13
  362598:	0f 28 f8                                        	movaps xmm7,xmm0
  36259b:	f3 41 0f 58 fe                                  	addss  xmm7,xmm14
  3625a0:	41 3b f6                                        	cmp    esi,r14d
  3625a3:	75 0a                                           	jne    0x3625af
  3625a5:	41 0f 28 f4                                     	movaps xmm6,xmm12
  3625a9:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3625ad:	eb 04                                           	jmp    0x3625b3
  3625af:	41 0f 28 f5                                     	movaps xmm6,xmm13
  3625b3:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3625b7:	4c 8d 45 88                                     	lea    r8,[rbp-0x78]
  3625bb:	48 8d 54 24 68                                  	lea    rdx,[rsp+0x68]
  3625c0:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3625c5:	e8 36 fc ff ff                                  	call   0x362200
  3625ca:	4d 8b a7 98 02 00 00                            	mov    r12,QWORD PTR [r15+0x298]
  3625d1:	85 f6                                           	test   esi,esi
  3625d3:	74 0b                                           	je     0x3625e0
  3625d5:	41 3b f6                                        	cmp    esi,r14d
  3625d8:	74 06                                           	je     0x3625e0
  3625da:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  3625de:	eb 04                                           	jmp    0x3625e4
  3625e0:	45 0f 28 e7                                     	movaps xmm12,xmm15
  3625e4:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3625e9:	e8 1e d2 f8 ff                                  	call   0x2ef80c
  3625ee:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3625f2:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3625f6:	48 8d 4c 24 4c                                  	lea    rcx,[rsp+0x4c]
  3625fb:	8b f8                                           	mov    edi,eax
  3625fd:	f3 41 0f 5c f3                                  	subss  xmm6,xmm11
  362602:	0f 28 ce                                        	movaps xmm1,xmm6
  362605:	e8 36 9d f6 ff                                  	call   0x2cc340
  36260a:	41 0f 28 d1                                     	movaps xmm2,xmm9
  36260e:	48 8d 4c 24 44                                  	lea    rcx,[rsp+0x44]
  362613:	0f 28 cf                                        	movaps xmm1,xmm7
  362616:	48 8b d8                                        	mov    rbx,rax
  362619:	e8 22 9d f6 ff                                  	call   0x2cc340
  36261e:	48 8b d0                                        	mov    rdx,rax
  362621:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  362629:	44 8b cf                                        	mov    r9d,edi
  36262c:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  362633:	4c 8b c3                                        	mov    r8,rbx
  362636:	49 8b cc                                        	mov    rcx,r12
  362639:	e8 06 ec 03 00                                  	call   0x3a1244
  36263e:	f3 44 0f 10 a5 b0 00 00 00                      	movss  xmm12,DWORD PTR [rbp+0xb0]
  362647:	ff c6                                           	inc    esi
  362649:	3b b5 c8 00 00 00                               	cmp    esi,DWORD PTR [rbp+0xc8]
  36264f:	0f 8c 37 ff ff ff                               	jl     0x36258c
  362655:	f3 44 0f 10 b5 b8 00 00 00                      	movss  xmm14,DWORD PTR [rbp+0xb8]
  36265e:	f3 44 0f 10 85 c0 00 00 00                      	movss  xmm8,DWORD PTR [rbp+0xc0]
  362667:	f3 44 0f 10 95 98 00 00 00                      	movss  xmm10,DWORD PTR [rbp+0x98]
  362670:	41 be 01 00 00 00                               	mov    r14d,0x1
  362676:	41 0f 28 f9                                     	movaps xmm7,xmm9
  36267a:	f3 41 0f 58 fe                                  	addss  xmm7,xmm14
  36267f:	45 3b ee                                        	cmp    r13d,r14d
  362682:	0f 8e 8a 00 00 00                               	jle    0x362712
  362688:	45 8d 66 31                                     	lea    r12d,[r14+0x31]
  36268c:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  362693:	48 8d 4c 24 68                                  	lea    rcx,[rsp+0x68]
  362698:	66 41 0f 6e f6                                  	movd   xmm6,r14d
  36269d:	45 8b cc                                        	mov    r9d,r12d
  3626a0:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3626a3:	45 8b c4                                        	mov    r8d,r12d
  3626a6:	c7 44 24 20 96 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x96
  3626ae:	41 8b d4                                        	mov    edx,r12d
  3626b1:	f3 41 0f 59 f5                                  	mulss  xmm6,xmm13
  3626b6:	f3 41 0f 58 f0                                  	addss  xmm6,xmm8
  3626bb:	e8 58 8c f7 ff                                  	call   0x2db318
  3626c0:	48 8b c8                                        	mov    rcx,rax
  3626c3:	e8 44 d1 f8 ff                                  	call   0x2ef80c
  3626c8:	0f 28 d7                                        	movaps xmm2,xmm7
  3626cb:	48 8d 4c 24 4c                                  	lea    rcx,[rsp+0x4c]
  3626d0:	0f 28 ce                                        	movaps xmm1,xmm6
  3626d3:	8b f8                                           	mov    edi,eax
  3626d5:	e8 66 9c f6 ff                                  	call   0x2cc340
  3626da:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3626de:	48 8d 4c 24 44                                  	lea    rcx,[rsp+0x44]
  3626e3:	0f 28 ce                                        	movaps xmm1,xmm6
  3626e6:	48 8b d8                                        	mov    rbx,rax
  3626e9:	e8 52 9c f6 ff                                  	call   0x2cc340
  3626ee:	48 8b d0                                        	mov    rdx,rax
  3626f1:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  3626f8:	44 8b cf                                        	mov    r9d,edi
  3626fb:	4c 8b c3                                        	mov    r8,rbx
  3626fe:	48 8b ce                                        	mov    rcx,rsi
  362701:	e8 ee da 03 00                                  	call   0x3a01f4
  362706:	41 ff c6                                        	inc    r14d
  362709:	45 3b f5                                        	cmp    r14d,r13d
  36270c:	0f 8c 7a ff ff ff                               	jl     0x36268c
  362712:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  362719:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  36271d:	e8 ea d0 f8 ff                                  	call   0x2ef80c
  362722:	f3 0f 10 95 a0 00 00 00                         	movss  xmm2,DWORD PTR [rbp+0xa0]
  36272a:	48 8d 4c 24 4c                                  	lea    rcx,[rsp+0x4c]
  36272f:	f3 0f 10 8d a8 00 00 00                         	movss  xmm1,DWORD PTR [rbp+0xa8]
  362737:	8b f8                                           	mov    edi,eax
  362739:	e8 02 9c f6 ff                                  	call   0x2cc340
  36273e:	f3 0f 10 4c 24 40                               	movss  xmm1,DWORD PTR [rsp+0x40]
  362744:	48 8d 4c 24 44                                  	lea    rcx,[rsp+0x44]
  362749:	41 0f 28 d2                                     	movaps xmm2,xmm10
  36274d:	48 8b d8                                        	mov    rbx,rax
  362750:	e8 eb 9b f6 ff                                  	call   0x2cc340
  362755:	f3 44 0f 11 5c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm11
  36275c:	48 8b d0                                        	mov    rdx,rax
  36275f:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  362767:	44 8b cf                                        	mov    r9d,edi
  36276a:	4c 8b c3                                        	mov    r8,rbx
  36276d:	f3 44 0f 11 7c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm15
  362774:	48 8b ce                                        	mov    rcx,rsi
  362777:	e8 cc e9 03 00                                  	call   0x3a1148
  36277c:	4c 8d 9c 24 50 01 00 00                         	lea    r11,[rsp+0x150]
  362784:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  362788:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  36278d:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  362792:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  362797:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  36279c:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3627a1:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3627a6:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3627ab:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3627b0:	45 0f 28 b3 70 ff ff ff                         	movaps xmm14,XMMWORD PTR [r11-0x90]
  3627b8:	45 0f 28 bb 60 ff ff ff                         	movaps xmm15,XMMWORD PTR [r11-0xa0]
  3627c0:	49 8b e3                                        	mov    rsp,r11
  3627c3:	41 5f                                           	pop    r15
  3627c5:	41 5e                                           	pop    r14
  3627c7:	41 5d                                           	pop    r13
  3627c9:	41 5c                                           	pop    r12
  3627cb:	5f                                              	pop    rdi
  3627cc:	5e                                              	pop    rsi
  3627cd:	5d                                              	pop    rbp
  3627ce:	c3                                              	ret
