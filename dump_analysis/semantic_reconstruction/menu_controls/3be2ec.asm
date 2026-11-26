
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003be2ec <.data+0x3be2ec>:
  3be2ec:	48 8b c4                                        	mov    rax,rsp
  3be2ef:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  3be2f3:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3be2f7:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3be2fb:	55                                              	push   rbp
  3be2fc:	53                                              	push   rbx
  3be2fd:	56                                              	push   rsi
  3be2fe:	57                                              	push   rdi
  3be2ff:	41 54                                           	push   r12
  3be301:	41 55                                           	push   r13
  3be303:	41 56                                           	push   r14
  3be305:	41 57                                           	push   r15
  3be307:	48 8d a8 e8 fd ff ff                            	lea    rbp,[rax-0x218]
  3be30e:	48 81 ec d8 02 00 00                            	sub    rsp,0x2d8
  3be315:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3be319:	49 8b f0                                        	mov    rsi,r8
  3be31c:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3be320:	4c 8b fa                                        	mov    r15,rdx
  3be323:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3be328:	4c 8b f1                                        	mov    r14,rcx
  3be32b:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  3be333:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  3be33b:	44 0f 29 98 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm11
  3be343:	e8 b8 ee f9 ff                                  	call   0x35d200
  3be348:	45 33 c0                                        	xor    r8d,r8d
  3be34b:	48 89 45 90                                     	mov    QWORD PTR [rbp-0x70],rax
  3be34f:	49 8b d6                                        	mov    rdx,r14
  3be352:	48 8b c8                                        	mov    rcx,rax
  3be355:	48 8b d8                                        	mov    rbx,rax
  3be358:	e8 b7 42 fd ff                                  	call   0x392614
  3be35d:	8b f8                                           	mov    edi,eax
  3be35f:	e8 40 49 fd ff                                  	call   0x392ca4
  3be364:	0f 57 c0                                        	xorps  xmm0,xmm0
  3be367:	48 89 44 24 58                                  	mov    QWORD PTR [rsp+0x58],rax
  3be36c:	48 8d 4d c4                                     	lea    rcx,[rbp-0x3c]
  3be370:	c7 45 c0 00 00 00 00                            	mov    DWORD PTR [rbp-0x40],0x0
  3be377:	0f 11 45 b0                                     	movups XMMWORD PTR [rbp-0x50],xmm0
  3be37b:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  3be37f:	e8 78 09 f3 ff                                  	call   0x2eecfc
  3be384:	48 8d 4d d4                                     	lea    rcx,[rbp-0x2c]
  3be388:	e8 6f 09 f3 ff                                  	call   0x2eecfc
  3be38d:	0f 10 45 b0                                     	movups xmm0,XMMWORD PTR [rbp-0x50]
  3be391:	0f b7 45 e5                                     	movzx  eax,WORD PTR [rbp-0x1b]
  3be395:	4c 8d 45 00                                     	lea    r8,[rbp+0x0]
  3be399:	0f 10 4d c4                                     	movups xmm1,XMMWORD PTR [rbp-0x3c]
  3be39d:	33 d2                                           	xor    edx,edx
  3be39f:	66 89 45 35                                     	mov    WORD PTR [rbp+0x35],ax
  3be3a3:	0f 29 45 00                                     	movaps XMMWORD PTR [rbp+0x0],xmm0
  3be3a7:	49 8b ce                                        	mov    rcx,r14
  3be3aa:	f3 0f 10 45 c0                                  	movss  xmm0,DWORD PTR [rbp-0x40]
  3be3af:	8a 45 e7                                        	mov    al,BYTE PTR [rbp-0x19]
  3be3b2:	f3 0f 11 45 10                                  	movss  DWORD PTR [rbp+0x10],xmm0
  3be3b7:	0f 10 45 d4                                     	movups xmm0,XMMWORD PTR [rbp-0x2c]
  3be3bb:	c6 45 34 00                                     	mov    BYTE PTR [rbp+0x34],0x0
  3be3bf:	0f 11 4d 14                                     	movups XMMWORD PTR [rbp+0x14],xmm1
  3be3c3:	88 45 37                                        	mov    BYTE PTR [rbp+0x37],al
  3be3c6:	0f 11 45 24                                     	movups XMMWORD PTR [rbp+0x24],xmm0
  3be3ca:	e8 d9 d2 ff ff                                  	call   0x3bb6a8
  3be3cf:	4c 8b e8                                        	mov    r13,rax
  3be3d2:	e8 d5 42 fd ff                                  	call   0x3926ac
  3be3d7:	49 63 17                                        	movsxd rdx,DWORD PTR [r15]
  3be3da:	48 8b ce                                        	mov    rcx,rsi
  3be3dd:	f3 0f 10 70 10                                  	movss  xmm6,DWORD PTR [rax+0x10]
  3be3e2:	f3 0f 59 35 52 9e ee ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffee9e52]        # 0x2a823c
  3be3ea:	e8 c5 13 f3 ff                                  	call   0x2ef7b4
  3be3ef:	f3 44 0f 10 05 68 4e ed ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffed4e68]        # 0x293260
  3be3f8:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3be3ff:	41 b1 01                                        	mov    r9b,0x1
  3be402:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3be409:	45 33 c0                                        	xor    r8d,r8d
  3be40c:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  3be40f:	e8 88 13 fd ff                                  	call   0x38f79c
  3be414:	f3 41 0f 10 45 10                               	movss  xmm0,DWORD PTR [r13+0x10]
  3be41a:	0f 28 d6                                        	movaps xmm2,xmm6
  3be41d:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3be421:	e8 36 72 f7 ff                                  	call   0x33565c
  3be426:	f3 41 0f 11 45 10                               	movss  DWORD PTR [r13+0x10],xmm0
  3be42c:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3be430:	f2 0f 10 93 00 01 00 00                         	movsd  xmm2,QWORD PTR [rbx+0x100]
  3be438:	41 b1 01                                        	mov    r9b,0x1
  3be43b:	45 33 c0                                        	xor    r8d,r8d
  3be43e:	f2 0f 11 95 38 02 00 00                         	movsd  QWORD PTR [rbp+0x238],xmm2
  3be446:	49 8b d6                                        	mov    rdx,r14
  3be449:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3be450:	e8 47 13 fd ff                                  	call   0x38f79c
  3be455:	e8 72 41 fd ff                                  	call   0x3925cc
  3be45a:	48 8b 05 c7 76 04 00                            	mov    rax,QWORD PTR [rip+0x476c7]        # 0x405b28
  3be461:	bb 00 00 00 00                                  	mov    ebx,0x0
  3be466:	f3 0f 10 35 7a aa e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe8aa7a]        # 0x248ee8
  3be46e:	0f 28 f8                                        	movaps xmm7,xmm0
  3be471:	f3 0f 59 35 5b 4d ed ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffed4d5b]        # 0x2931d4
  3be479:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3be483:	0f 95 c3                                        	setne  bl
  3be486:	e8 e5 0e fd ff                                  	call   0x38f370
  3be48b:	66 0f 6e cb                                     	movd   xmm1,ebx
  3be48f:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3be492:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3be497:	0f 28 d7                                        	movaps xmm2,xmm7
  3be49a:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3be49e:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  3be4a2:	0f 28 c8                                        	movaps xmm1,xmm0
  3be4a5:	e8 96 de f0 ff                                  	call   0x2cc340
  3be4aa:	4c 8b c0                                        	mov    r8,rax
  3be4ad:	48 8d 95 38 02 00 00                            	lea    rdx,[rbp+0x238]
  3be4b4:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3be4b8:	e8 1b 15 f3 ff                                  	call   0x2ef9d8
  3be4bd:	4c 8b c0                                        	mov    r8,rax
  3be4c0:	48 8d 95 38 02 00 00                            	lea    rdx,[rbp+0x238]
  3be4c7:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3be4cb:	e8 b8 ce f1 ff                                  	call   0x2db388
  3be4d0:	e8 f7 40 fd ff                                  	call   0x3925cc
  3be4d5:	48 8b 05 4c 76 04 00                            	mov    rax,QWORD PTR [rip+0x4764c]        # 0x405b28
  3be4dc:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3be4e3:	0f 28 d0                                        	movaps xmm2,xmm0
  3be4e6:	f3 0f 10 88 0c 38 00 00                         	movss  xmm1,DWORD PTR [rax+0x380c]
  3be4ee:	f3 41 0f 2c 45 10                               	cvttss2si eax,DWORD PTR [r13+0x10]
  3be4f4:	f3 0f 58 c9                                     	addss  xmm1,xmm1
  3be4f8:	66 0f 6e d8                                     	movd   xmm3,eax
  3be4fc:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  3be4ff:	f3 0f 58 d9                                     	addss  xmm3,xmm1
  3be503:	f3 0f 10 0d dd a9 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8a9dd]        # 0x248ee8
  3be50b:	f3 0f 59 0d 0d f6 ec ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffecf60d]        # 0x28db20
  3be513:	f3 0f 58 d9                                     	addss  xmm3,xmm1
  3be517:	0f 28 cb                                        	movaps xmm1,xmm3
  3be51a:	e8 21 de f0 ff                                  	call   0x2cc340
  3be51f:	4c 8b c0                                        	mov    r8,rax
  3be522:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  3be526:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3be52a:	e8 b5 82 f7 ff                                  	call   0x3367e4
  3be52f:	48 8b d0                                        	mov    rdx,rax
  3be532:	4c 8d 45 a8                                     	lea    r8,[rbp-0x58]
  3be536:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3be53b:	e8 48 ce f1 ff                                  	call   0x2db388
  3be540:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3be544:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3be548:	e8 33 e5 fb ff                                  	call   0x37ca80
  3be54d:	45 33 c9                                        	xor    r9d,r9d
  3be550:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3be554:	45 33 c0                                        	xor    r8d,r8d
  3be557:	8b d7                                           	mov    edx,edi
  3be559:	e8 7e 63 fd ff                                  	call   0x3948dc
  3be55e:	4c 8d 4c 24 50                                  	lea    r9,[rsp+0x50]
  3be563:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  3be56b:	4c 8d 85 38 02 00 00                            	lea    r8,[rbp+0x238]
  3be572:	8b d7                                           	mov    edx,edi
  3be574:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3be579:	e8 62 e2 ff ff                                  	call   0x3bc7e0
  3be57e:	41 80 7d 34 00                                  	cmp    BYTE PTR [r13+0x34],0x0
  3be583:	44 8a e0                                        	mov    r12b,al
  3be586:	0f 85 e5 00 00 00                               	jne    0x3be671
  3be58c:	48 8b 0d 95 75 04 00                            	mov    rcx,QWORD PTR [rip+0x47595]        # 0x405b28
  3be593:	f7 81 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rcx+0x4788],0x800
  3be59d:	0f 85 ce 00 00 00                               	jne    0x3be671
  3be5a3:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3be5aa:	e8 d5 43 fc ff                                  	call   0x382984
  3be5af:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3be5b4:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3be5b9:	e8 56 dd ff ff                                  	call   0x3bc314
  3be5be:	48 8b c8                                        	mov    rcx,rax
  3be5c1:	e8 e6 02 fe ff                                  	call   0x39e8ac
  3be5c6:	48 8b d0                                        	mov    rdx,rax
  3be5c9:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3be5d0:	e8 93 66 f1 ff                                  	call   0x2d4c68
  3be5d5:	49 8b d6                                        	mov    rdx,r14
  3be5d8:	48 8d 8d b0 00 00 00                            	lea    rcx,[rbp+0xb0]
  3be5df:	e8 84 66 f1 ff                                  	call   0x2d4c68
  3be5e4:	48 8b ce                                        	mov    rcx,rsi
  3be5e7:	4c 89 bd d8 00 00 00                            	mov    QWORD PTR [rbp+0xd8],r15
  3be5ee:	e8 cd 93 f1 ff                                  	call   0x2d79c0
  3be5f3:	48 8b ce                                        	mov    rcx,rsi
  3be5f6:	48 8b f8                                        	mov    rdi,rax
  3be5f9:	e8 7a 33 f1 ff                                  	call   0x2d1978
  3be5fe:	48 8b d8                                        	mov    rbx,rax
  3be601:	48 3b c7                                        	cmp    rax,rdi
  3be604:	74 2e                                           	je     0x3be634
  3be606:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
  3be609:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be60d:	e8 ba dc f0 ff                                  	call   0x2cc2cc
  3be612:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3be616:	48 8d 8d 48 01 00 00                            	lea    rcx,[rbp+0x148]
  3be61d:	e8 d6 a9 f1 ff                                  	call   0x2d8ff8
  3be622:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be626:	e8 c9 de f0 ff                                  	call   0x2cc4f4
  3be62b:	48 83 c3 08                                     	add    rbx,0x8
  3be62f:	48 3b df                                        	cmp    rbx,rdi
  3be632:	75 d2                                           	jne    0x3be606
  3be634:	48 8d 0d b5 a8 e8 ff                            	lea    rcx,[rip+0xffffffffffe8a8b5]        # 0x248ef0
  3be63b:	e8 bc ab fc ff                                  	call   0x3891fc
  3be640:	48 8d 0d a9 a8 e8 ff                            	lea    rcx,[rip+0xffffffffffe8a8a9]        # 0x248ef0
  3be647:	48 8d 50 ff                                     	lea    rdx,[rax-0x1]
  3be64b:	e8 68 47 fc ff                                  	call   0x382db8
  3be650:	48 8d 95 90 00 00 00                            	lea    rdx,[rbp+0x90]
  3be657:	48 8d 48 48                                     	lea    rcx,[rax+0x48]
  3be65b:	e8 70 3c fc ff                                  	call   0x3822d0
  3be660:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3be667:	41 c6 45 34 01                                  	mov    BYTE PTR [r13+0x34],0x1
  3be66c:	e8 bf 80 f7 ff                                  	call   0x336730
  3be671:	48 8b 05 b0 74 04 00                            	mov    rax,QWORD PTR [rip+0x474b0]        # 0x405b28
  3be678:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3be682:	0f 84 42 01 00 00                               	je     0x3be7ca
  3be688:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3be68f:	e8 f0 42 fc ff                                  	call   0x382984
  3be694:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3be699:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3be69e:	e8 35 dd ff ff                                  	call   0x3bc3d8
  3be6a3:	48 8b c8                                        	mov    rcx,rax
  3be6a6:	e8 01 02 fe ff                                  	call   0x39e8ac
  3be6ab:	48 8b d0                                        	mov    rdx,rax
  3be6ae:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3be6b5:	e8 ae 65 f1 ff                                  	call   0x2d4c68
  3be6ba:	49 8b d6                                        	mov    rdx,r14
  3be6bd:	48 8d 8d b0 00 00 00                            	lea    rcx,[rbp+0xb0]
  3be6c4:	e8 9f 65 f1 ff                                  	call   0x2d4c68
  3be6c9:	48 8b ce                                        	mov    rcx,rsi
  3be6cc:	4c 89 bd d8 00 00 00                            	mov    QWORD PTR [rbp+0xd8],r15
  3be6d3:	e8 e8 92 f1 ff                                  	call   0x2d79c0
  3be6d8:	48 8b ce                                        	mov    rcx,rsi
  3be6db:	48 8b f8                                        	mov    rdi,rax
  3be6de:	e8 95 32 f1 ff                                  	call   0x2d1978
  3be6e3:	48 8b d8                                        	mov    rbx,rax
  3be6e6:	48 3b c7                                        	cmp    rax,rdi
  3be6e9:	74 2e                                           	je     0x3be719
  3be6eb:	48 8b 13                                        	mov    rdx,QWORD PTR [rbx]
  3be6ee:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be6f2:	e8 d5 db f0 ff                                  	call   0x2cc2cc
  3be6f7:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3be6fb:	48 8d 8d 48 01 00 00                            	lea    rcx,[rbp+0x148]
  3be702:	e8 f1 a8 f1 ff                                  	call   0x2d8ff8
  3be707:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be70b:	e8 e4 dd f0 ff                                  	call   0x2cc4f4
  3be710:	48 83 c3 08                                     	add    rbx,0x8
  3be714:	48 3b df                                        	cmp    rbx,rdi
  3be717:	75 d2                                           	jne    0x3be6eb
  3be719:	f3 0f 10 0d c7 a7 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8a7c7]        # 0x248ee8
  3be721:	0f 57 c0                                        	xorps  xmm0,xmm0
  3be724:	f3 0f 59 0d f0 f3 ec ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffecf3f0]        # 0x28db1c
  3be72c:	e8 d3 c4 fd ff                                  	call   0x39ac04
  3be731:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3be735:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3be73a:	e8 b5 a1 fb ff                                  	call   0x3788f4
  3be73f:	f3 0f 10 05 a1 a7 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe8a7a1]        # 0x248ee8
  3be747:	f3 0f 59 05 69 4a ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed4a69]        # 0x2931b8
  3be74f:	f3 0f 10 70 04                                  	movss  xmm6,DWORD PTR [rax+0x4]
  3be754:	f3 0f 59 05 f4 ea ec ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffeceaf4]        # 0x28d250
  3be75c:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3be760:	e8 9b ea f9 ff                                  	call   0x35d200
  3be765:	49 8b d6                                        	mov    rdx,r14
  3be768:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be76c:	f3 0f 11 b0 04 01 00 00                         	movss  DWORD PTR [rax+0x104],xmm6
  3be774:	e8 53 db f0 ff                                  	call   0x2cc2cc
  3be779:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3be77e:	48 8b d8                                        	mov    rbx,rax
  3be781:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3be786:	e8 b1 dc ff ff                                  	call   0x3bc43c
  3be78b:	48 8b c8                                        	mov    rcx,rax
  3be78e:	e8 f1 00 fe ff                                  	call   0x39e884
  3be793:	48 8b d0                                        	mov    rdx,rax
  3be796:	48 8b cb                                        	mov    rcx,rbx
  3be799:	e8 0e f0 f0 ff                                  	call   0x2cd7ac
  3be79e:	48 8b c8                                        	mov    rcx,rax
  3be7a1:	e8 46 f0 f0 ff                                  	call   0x2cd7ec
  3be7a6:	48 8b c8                                        	mov    rcx,rax
  3be7a9:	48 8d 95 90 00 00 00                            	lea    rdx,[rbp+0x90]
  3be7b0:	e8 af 8e fc ff                                  	call   0x387664
  3be7b5:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be7b9:	e8 36 dd f0 ff                                  	call   0x2cc4f4
  3be7be:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3be7c5:	e8 66 7f f7 ff                                  	call   0x336730
  3be7ca:	f3 44 0f 10 1d 81 ea ec ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffecea81]        # 0x28d254
  3be7d3:	45 84 e4                                        	test   r12b,r12b
  3be7d6:	74 1d                                           	je     0x3be7f5
  3be7d8:	f3 41 0f 10 45 0c                               	movss  xmm0,DWORD PTR [r13+0xc]
  3be7de:	41 0f 2e c2                                     	ucomiss xmm0,xmm10
  3be7e2:	7a 08                                           	jp     0x3be7ec
  3be7e4:	75 06                                           	jne    0x3be7ec
  3be7e6:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3be7ea:	eb 03                                           	jmp    0x3be7ef
  3be7ec:	0f 57 c0                                        	xorps  xmm0,xmm0
  3be7ef:	f3 41 0f 11 45 0c                               	movss  DWORD PTR [r13+0xc],xmm0
  3be7f5:	f3 41 0f 10 45 0c                               	movss  xmm0,DWORD PTR [r13+0xc]
  3be7fb:	41 0f 2e c2                                     	ucomiss xmm0,xmm10
  3be7ff:	7a 07                                           	jp     0x3be808
  3be801:	75 05                                           	jne    0x3be808
  3be803:	45 33 c9                                        	xor    r9d,r9d
  3be806:	eb 03                                           	jmp    0x3be80b
  3be808:	41 b1 01                                        	mov    r9b,0x1
  3be80b:	f3 0f 10 35 a1 49 ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed49a1]        # 0x2931b4
  3be813:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3be817:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3be81d:	0f 57 c9                                        	xorps  xmm1,xmm1
  3be820:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3be826:	e8 1d 76 f7 ff                                  	call   0x335e48
  3be82b:	44 8a 8d 38 02 00 00                            	mov    r9b,BYTE PTR [rbp+0x238]
  3be832:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3be836:	f3 41 0f 11 45 00                               	movss  DWORD PTR [r13+0x0],xmm0
  3be83c:	0f 57 c9                                        	xorps  xmm1,xmm1
  3be83f:	f3 41 0f 10 45 08                               	movss  xmm0,DWORD PTR [r13+0x8]
  3be845:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3be84b:	e8 f8 75 f7 ff                                  	call   0x335e48
  3be850:	f3 41 0f 10 4d 0c                               	movss  xmm1,DWORD PTR [r13+0xc]
  3be856:	41 0f 2e ca                                     	ucomiss xmm1,xmm10
  3be85a:	f3 41 0f 11 45 08                               	movss  DWORD PTR [r13+0x8],xmm0
  3be860:	7a 07                                           	jp     0x3be869
  3be862:	75 05                                           	jne    0x3be869
  3be864:	45 33 c9                                        	xor    r9d,r9d
  3be867:	eb 03                                           	jmp    0x3be86c
  3be869:	41 b1 01                                        	mov    r9b,0x1
  3be86c:	f3 0f 10 15 b4 ab ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeeabb4]        # 0x2a9428
  3be874:	f3 0f 10 0d a8 ab ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeeaba8]        # 0x2a9424
  3be87c:	f3 41 0f 10 45 04                               	movss  xmm0,DWORD PTR [r13+0x4]
  3be882:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3be888:	e8 bb 75 f7 ff                                  	call   0x335e48
  3be88d:	f3 45 0f 10 45 00                               	movss  xmm8,DWORD PTR [r13+0x0]
  3be893:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3be897:	b9 01 00 00 00                                  	mov    ecx,0x1
  3be89c:	f3 41 0f 11 45 04                               	movss  DWORD PTR [r13+0x4],xmm0
  3be8a2:	e8 f1 39 fd ff                                  	call   0x392298
  3be8a7:	8b d0                                           	mov    edx,eax
  3be8a9:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3be8ad:	e8 22 7c f7 ff                                  	call   0x3364d4
  3be8b2:	f3 44 0f 10 0d 11 48 ed ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffed4811]        # 0x2930cc
  3be8bb:	b9 01 00 00 00                                  	mov    ecx,0x1
  3be8c0:	f3 41 0f 10 7d 08                               	movss  xmm7,DWORD PTR [r13+0x8]
  3be8c6:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3be8ca:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3be8ce:	e8 c5 39 fd ff                                  	call   0x392298
  3be8d3:	8b d0                                           	mov    edx,eax
  3be8d5:	48 8d 4d 58                                     	lea    rcx,[rbp+0x58]
  3be8d9:	e8 f6 7b f7 ff                                  	call   0x3364d4
  3be8de:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3be8e2:	b9 02 00 00 00                                  	mov    ecx,0x2
  3be8e7:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be8ea:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3be8ef:	e8 a4 39 fd ff                                  	call   0x392298
  3be8f4:	8b d0                                           	mov    edx,eax
  3be8f6:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  3be8fa:	e8 d5 7b f7 ff                                  	call   0x3364d4
  3be8ff:	0f 28 df                                        	movaps xmm3,xmm7
  3be902:	66 0f 7f 75 f0                                  	movdqa XMMWORD PTR [rbp-0x10],xmm6
  3be907:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  3be90b:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3be910:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be913:	48 8d 4d 78                                     	lea    rcx,[rbp+0x78]
  3be917:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3be91d:	e8 82 ac fb ff                                  	call   0x3795a4
  3be922:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3be926:	4c 8d 45 f0                                     	lea    r8,[rbp-0x10]
  3be92a:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3be92e:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be932:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be935:	4d 8d 65 14                                     	lea    r12,[r13+0x14]
  3be939:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3be93e:	e8 61 ac fb ff                                  	call   0x3795a4
  3be943:	f3 45 0f 10 45 00                               	movss  xmm8,DWORD PTR [r13+0x0]
  3be949:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3be94d:	33 c9                                           	xor    ecx,ecx
  3be94f:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be952:	f3 41 0f 7f 04 24                               	movdqu XMMWORD PTR [r12],xmm0
  3be958:	e8 3b 39 fd ff                                  	call   0x392298
  3be95d:	8b d0                                           	mov    edx,eax
  3be95f:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3be963:	e8 6c 7b f7 ff                                  	call   0x3364d4
  3be968:	f3 41 0f 10 7d 08                               	movss  xmm7,DWORD PTR [r13+0x8]
  3be96e:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3be972:	b9 01 00 00 00                                  	mov    ecx,0x1
  3be977:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3be97b:	e8 18 39 fd ff                                  	call   0x392298
  3be980:	8b d0                                           	mov    edx,eax
  3be982:	48 8d 4d 78                                     	lea    rcx,[rbp+0x78]
  3be986:	e8 49 7b f7 ff                                  	call   0x3364d4
  3be98b:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3be98f:	b9 02 00 00 00                                  	mov    ecx,0x2
  3be994:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be997:	f3 0f 7f 45 f0                                  	movdqu XMMWORD PTR [rbp-0x10],xmm0
  3be99c:	e8 f7 38 fd ff                                  	call   0x392298
  3be9a1:	8b d0                                           	mov    edx,eax
  3be9a3:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  3be9a7:	e8 28 7b f7 ff                                  	call   0x3364d4
  3be9ac:	0f 28 df                                        	movaps xmm3,xmm7
  3be9af:	66 0f 7f 74 24 70                               	movdqa XMMWORD PTR [rsp+0x70],xmm6
  3be9b5:	4c 8d 45 f0                                     	lea    r8,[rbp-0x10]
  3be9b9:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3be9bd:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be9c0:	48 8d 4d 58                                     	lea    rcx,[rbp+0x58]
  3be9c4:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3be9c9:	e8 d6 ab fb ff                                  	call   0x3795a4
  3be9ce:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3be9d1:	f3 0f 7f 45 f0                                  	movdqu XMMWORD PTR [rbp-0x10],xmm0
  3be9d6:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3be9da:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3be9df:	48 8d 55 f0                                     	lea    rdx,[rbp-0x10]
  3be9e3:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3be9e7:	e8 b8 ab fb ff                                  	call   0x3795a4
  3be9ec:	48 8b 75 90                                     	mov    rsi,QWORD PTR [rbp-0x70]
  3be9f0:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3be9f4:	4c 8b 7c 24 58                                  	mov    r15,QWORD PTR [rsp+0x58]
  3be9f9:	b9 08 00 00 00                                  	mov    ecx,0x8
  3be9fe:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bea01:	f3 41 0f 7f 45 24                               	movdqu XMMWORD PTR [r13+0x24],xmm0
  3bea07:	48 8b 9e 98 02 00 00                            	mov    rbx,QWORD PTR [rsi+0x298]
  3bea0e:	f3 41 0f 10 77 44                               	movss  xmm6,DWORD PTR [r15+0x44]
  3bea14:	e8 7f 38 fd ff                                  	call   0x392298
  3bea19:	44 8b c8                                        	mov    r9d,eax
  3bea1c:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3bea24:	4c 8d 44 24 68                                  	lea    r8,[rsp+0x68]
  3bea29:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bea2f:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bea34:	48 8b cb                                        	mov    rcx,rbx
  3bea37:	e8 08 28 fe ff                                  	call   0x3a1244
  3bea3c:	e8 07 a3 fc ff                                  	call   0x388d48
  3bea41:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3bea48:	49 8d 4d 24                                     	lea    rcx,[r13+0x24]
  3bea4c:	e8 bb 0d f3 ff                                  	call   0x2ef80c
  3bea51:	f3 0f 10 74 24 68                               	movss  xmm6,DWORD PTR [rsp+0x68]
  3bea57:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3bea5b:	f3 0f 10 05 85 a4 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe8a485]        # 0x248ee8
  3bea63:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bea68:	f3 41 0f 5c 77 3c                               	subss  xmm6,DWORD PTR [r15+0x3c]
  3bea6e:	f3 0f 59 05 32 47 ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed4732]        # 0x2931a8
  3bea76:	8b d8                                           	mov    ebx,eax
  3bea78:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3bea7c:	e8 73 9e fb ff                                  	call   0x3788f4
  3bea81:	f3 0f 10 3d 5f a4 e8 ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffe8a45f]        # 0x248ee8
  3bea89:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bea8e:	0f 28 c7                                        	movaps xmm0,xmm7
  3bea91:	0f 28 ce                                        	movaps xmm1,xmm6
  3bea94:	f3 0f 59 05 e4 46 ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed46e4]        # 0x293180
  3bea9c:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3beaa1:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3beaa5:	e8 96 d8 f0 ff                                  	call   0x2cc340
  3beaaa:	f3 0f 59 3d 6a f0 ec ff                         	mulss  xmm7,DWORD PTR [rip+0xffffffffffecf06a]        # 0x28db1c
  3beab2:	48 8d 0d 27 d6 03 00                            	lea    rcx,[rip+0x3d627]        # 0x3fc0e0
  3beab9:	ba 02 00 00 00                                  	mov    edx,0x2
  3beabe:	e8 f5 7c f7 ff                                  	call   0x3367b8
  3beac3:	f3 0f 10 0d 51 f0 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffecf051]        # 0x28db1c
  3beacb:	48 8b c8                                        	mov    rcx,rax
  3beace:	e8 19 60 fa ff                                  	call   0x364aec
  3bead3:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  3beadc:	4c 8d 4c 24 70                                  	lea    r9,[rsp+0x70]
  3beae1:	f3 44 0f 11 54 24 38                            	movss  DWORD PTR [rsp+0x38],xmm10
  3beae8:	48 8b d0                                        	mov    rdx,rax
  3beaeb:	48 8d 05 fa ed ee ff                            	lea    rax,[rip+0xffffffffffeeedfa]        # 0x2ad8ec
  3beaf2:	48 c7 44 24 30 00 00 00 00                      	mov    QWORD PTR [rsp+0x30],0x0
  3beafb:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3beb00:	0f 28 d7                                        	movaps xmm2,xmm7
  3beb03:	48 8b ce                                        	mov    rcx,rsi
  3beb06:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3beb0a:	e8 e9 46 fe ff                                  	call   0x3a31f8
  3beb0f:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3beb13:	e8 48 a2 fc ff                                  	call   0x388d60
  3beb18:	f3 41 0f 10 45 04                               	movss  xmm0,DWORD PTR [r13+0x4]
  3beb1e:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  3beb21:	e8 36 a1 fc ff                                  	call   0x388c5c
  3beb26:	48 8b 75 90                                     	mov    rsi,QWORD PTR [rbp-0x70]
  3beb2a:	33 d2                                           	xor    edx,edx
  3beb2c:	49 8b ce                                        	mov    rcx,r14
  3beb2f:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3beb36:	e8 15 31 fd ff                                  	call   0x391c50
  3beb3b:	49 8b cc                                        	mov    rcx,r12
  3beb3e:	48 8b f8                                        	mov    rdi,rax
  3beb41:	e8 c6 0c f3 ff                                  	call   0x2ef80c
  3beb46:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3beb4a:	8b d8                                           	mov    ebx,eax
  3beb4c:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3beb50:	e8 9f 9d fb ff                                  	call   0x3788f4
  3beb55:	48 8b 15 cc 6f 04 00                            	mov    rdx,QWORD PTR [rip+0x46fcc]        # 0x405b28
  3beb5c:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3beb61:	f3 0f 10 82 30 3c 00 00                         	movss  xmm0,DWORD PTR [rdx+0x3c30]
  3beb69:	f3 0f 59 05 df e6 ec ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffece6df]        # 0x28d250
  3beb71:	f3 0f 10 4d a0                                  	movss  xmm1,DWORD PTR [rbp-0x60]
  3beb76:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3beb7a:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3beb7f:	e8 bc d7 f0 ff                                  	call   0x2cc340
  3beb84:	4d 8b ce                                        	mov    r9,r14
  3beb87:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  3beb8c:	44 8b c3                                        	mov    r8d,ebx
  3beb8f:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3beb94:	48 8b ce                                        	mov    rcx,rsi
  3beb97:	e8 20 46 fe ff                                  	call   0x3a31bc
  3beb9c:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
  3beba0:	48 8b bd 28 02 00 00                            	mov    rdi,QWORD PTR [rbp+0x228]
  3beba7:	48 8b 9d 30 02 00 00                            	mov    rbx,QWORD PTR [rbp+0x230]
  3bebae:	48 8b cb                                        	mov    rcx,rbx
  3bebb1:	4c 8b b0 98 02 00 00                            	mov    r14,QWORD PTR [rax+0x298]
  3bebb8:	48 63 17                                        	movsxd rdx,DWORD PTR [rdi]
  3bebbb:	e8 f4 0b f3 ff                                  	call   0x2ef7b4
  3bebc0:	33 d2                                           	xor    edx,edx
  3bebc2:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3bebc5:	e8 86 30 fd ff                                  	call   0x391c50
  3bebca:	48 63 17                                        	movsxd rdx,DWORD PTR [rdi]
  3bebcd:	48 8b cb                                        	mov    rcx,rbx
  3bebd0:	48 8b f0                                        	mov    rsi,rax
  3bebd3:	e8 dc 0b f3 ff                                  	call   0x2ef7b4
  3bebd8:	49 8b cc                                        	mov    rcx,r12
  3bebdb:	48 8b 38                                        	mov    rdi,QWORD PTR [rax]
  3bebde:	e8 29 0c f3 ff                                  	call   0x2ef80c
  3bebe3:	4d 8d 47 3c                                     	lea    r8,[r15+0x3c]
  3bebe7:	8b d8                                           	mov    ebx,eax
  3bebe9:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bebee:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bebf2:	e8 e1 0d f3 ff                                  	call   0x2ef9d8
  3bebf7:	48 8b d0                                        	mov    rdx,rax
  3bebfa:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  3bebff:	4c 8b cf                                        	mov    r9,rdi
  3bec02:	44 8b c3                                        	mov    r8d,ebx
  3bec05:	49 8b ce                                        	mov    rcx,r14
  3bec08:	e8 af 45 fe ff                                  	call   0x3a31bc
  3bec0d:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3bec13:	0f 2f 05 7e 44 ed ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffed447e]        # 0x293098
  3bec1a:	0f 86 a2 03 00 00                               	jbe    0x3befc2
  3bec20:	0f 57 d2                                        	xorps  xmm2,xmm2
  3bec23:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bec28:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bec2b:	e8 10 d7 f0 ff                                  	call   0x2cc340
  3bec30:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bec35:	b9 0e 00 00 00                                  	mov    ecx,0xe
  3bec3a:	e8 21 a0 fd ff                                  	call   0x398c60
  3bec3f:	48 8b 8d 20 02 00 00                            	mov    rcx,QWORD PTR [rbp+0x220]
  3bec46:	33 d2                                           	xor    edx,edx
  3bec48:	41 b8 af 00 00 00                               	mov    r8d,0xaf
  3bec4e:	e8 51 e3 fc ff                                  	call   0x38cfa4
  3bec53:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bec58:	e8 13 9d fb ff                                  	call   0x378970
  3bec5d:	4c 8b b5 30 02 00 00                            	mov    r14,QWORD PTR [rbp+0x230]
  3bec64:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3bec68:	f3 45 0f 10 45 00                               	movss  xmm8,DWORD PTR [r13+0x0]
  3bec6e:	49 8b ce                                        	mov    rcx,r14
  3bec71:	f3 41 0f 10 7f 44                               	movss  xmm7,DWORD PTR [r15+0x44]
  3bec77:	e8 4c a7 f1 ff                                  	call   0x2d93c8
  3bec7c:	48 8b c8                                        	mov    rcx,rax
  3bec7f:	ba 05 00 00 00                                  	mov    edx,0x5
  3bec84:	e8 13 15 fc ff                                  	call   0x38019c
  3bec89:	66 0f 6e f0                                     	movd   xmm6,eax
  3bec8d:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3bec90:	e8 37 39 fd ff                                  	call   0x3925cc
  3bec95:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bec9a:	f3 0f 59 f0                                     	mulss  xmm6,xmm0
  3bec9e:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  3beca2:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3beca6:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3becaa:	f3 41 0f 59 f0                                  	mulss  xmm6,xmm8
  3becaf:	0f 28 d6                                        	movaps xmm2,xmm6
  3becb2:	e8 89 d6 f0 ff                                  	call   0x2cc340
  3becb7:	33 d2                                           	xor    edx,edx
  3becb9:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3becbe:	e8 a9 cf fd ff                                  	call   0x39bc6c
  3becc3:	f3 0f 10 54 24 6c                               	movss  xmm2,DWORD PTR [rsp+0x6c]
  3becc9:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3becce:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3becd4:	e8 67 d6 f0 ff                                  	call   0x2cc340
  3becd9:	33 d2                                           	xor    edx,edx
  3becdb:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bece0:	e8 3b ce fd ff                                  	call   0x39bb20
  3bece5:	e8 e2 41 fd ff                                  	call   0x392ecc
  3becea:	f3 41 0f 10 77 44                               	movss  xmm6,DWORD PTR [r15+0x44]
  3becf0:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3becf4:	b9 04 00 00 00                                  	mov    ecx,0x4
  3becf9:	48 8b f0                                        	mov    rsi,rax
  3becfc:	e8 97 35 fd ff                                  	call   0x392298
  3bed01:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bed05:	8b f8                                           	mov    edi,eax
  3bed07:	e8 08 42 fd ff                                  	call   0x392f14
  3bed0c:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bed10:	48 8b d8                                        	mov    rbx,rax
  3bed13:	e8 e0 41 fd ff                                  	call   0x392ef8
  3bed18:	48 8b d0                                        	mov    rdx,rax
  3bed1b:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bed20:	4c 8b c3                                        	mov    r8,rbx
  3bed23:	e8 b0 0c f3 ff                                  	call   0x2ef9d8
  3bed28:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bed2d:	48 8b d8                                        	mov    rbx,rax
  3bed30:	e8 c3 41 fd ff                                  	call   0x392ef8
  3bed35:	41 bc c0 00 00 00                               	mov    r12d,0xc0
  3bed3b:	48 8b d0                                        	mov    rdx,rax
  3bed3e:	44 89 64 24 28                                  	mov    DWORD PTR [rsp+0x28],r12d
  3bed43:	44 8b cf                                        	mov    r9d,edi
  3bed46:	4c 8b c3                                        	mov    r8,rbx
  3bed49:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bed4f:	48 8b ce                                        	mov    rcx,rsi
  3bed52:	e8 ed 24 fe ff                                  	call   0x3a1244
  3bed57:	e8 70 41 fd ff                                  	call   0x392ecc
  3bed5c:	f3 41 0f 10 77 44                               	movss  xmm6,DWORD PTR [r15+0x44]
  3bed62:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bed66:	b9 06 00 00 00                                  	mov    ecx,0x6
  3bed6b:	48 8b f0                                        	mov    rsi,rax
  3bed6e:	e8 25 35 fd ff                                  	call   0x392298
  3bed73:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bed77:	8b f8                                           	mov    edi,eax
  3bed79:	e8 96 41 fd ff                                  	call   0x392f14
  3bed7e:	48 8b d8                                        	mov    rbx,rax
  3bed81:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bed85:	e8 6e 41 fd ff                                  	call   0x392ef8
  3bed8a:	48 8b d0                                        	mov    rdx,rax
  3bed8d:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bed92:	4c 8b c3                                        	mov    r8,rbx
  3bed95:	e8 3e 0c f3 ff                                  	call   0x2ef9d8
  3bed9a:	f3 44 0f 11 5c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm11
  3beda1:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3beda6:	4c 8b c0                                        	mov    r8,rax
  3beda9:	44 89 64 24 28                                  	mov    DWORD PTR [rsp+0x28],r12d
  3bedae:	44 8b cf                                        	mov    r9d,edi
  3bedb1:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bedb7:	48 8b ce                                        	mov    rcx,rsi
  3bedba:	e8 89 23 fe ff                                  	call   0x3a1148
  3bedbf:	48 8b 75 90                                     	mov    rsi,QWORD PTR [rbp-0x70]
  3bedc3:	41 bc 06 00 00 00                               	mov    r12d,0x6
  3bedc9:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bedcd:	41 8b cc                                        	mov    ecx,r12d
  3bedd0:	48 8b be 98 02 00 00                            	mov    rdi,QWORD PTR [rsi+0x298]
  3bedd7:	e8 bc 34 fd ff                                  	call   0x392298
  3beddc:	f3 0f 10 74 24 6c                               	movss  xmm6,DWORD PTR [rsp+0x6c]
  3bede2:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bede7:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3beded:	0f 28 d6                                        	movaps xmm2,xmm6
  3bedf0:	8b d8                                           	mov    ebx,eax
  3bedf2:	e8 49 d5 f0 ff                                  	call   0x2cc340
  3bedf7:	f3 41 0f 5c 77 44                               	subss  xmm6,DWORD PTR [r15+0x44]
  3bedfd:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3bee03:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3bee07:	0f 28 d6                                        	movaps xmm2,xmm6
  3bee0a:	e8 31 d5 f0 ff                                  	call   0x2cc340
  3bee0f:	44 8b cb                                        	mov    r9d,ebx
  3bee12:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  3bee19:	4c 8d 44 24 58                                  	lea    r8,[rsp+0x58]
  3bee1e:	48 8b cf                                        	mov    rcx,rdi
  3bee21:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3bee25:	e8 ca 13 fe ff                                  	call   0x3a01f4
  3bee2a:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3bee31:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bee35:	41 8b cc                                        	mov    ecx,r12d
  3bee38:	e8 5b 34 fd ff                                  	call   0x392298
  3bee3d:	0f 57 d2                                        	xorps  xmm2,xmm2
  3bee40:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bee44:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bee48:	8b f8                                           	mov    edi,eax
  3bee4a:	e8 f1 d4 f0 ff                                  	call   0x2cc340
  3bee4f:	4c 8b c0                                        	mov    r8,rax
  3bee52:	48 8d 54 24 68                                  	lea    rdx,[rsp+0x68]
  3bee57:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bee5b:	e8 84 79 f7 ff                                  	call   0x3367e4
  3bee60:	f3 0f 10 54 24 6c                               	movss  xmm2,DWORD PTR [rsp+0x6c]
  3bee66:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bee6b:	f3 0f 10 4c 24 68                               	movss  xmm1,DWORD PTR [rsp+0x68]
  3bee71:	48 8b d8                                        	mov    rbx,rax
  3bee74:	f3 41 0f 5c 57 44                               	subss  xmm2,DWORD PTR [r15+0x44]
  3bee7a:	f3 41 0f 5c cb                                  	subss  xmm1,xmm11
  3bee7f:	e8 bc d4 f0 ff                                  	call   0x2cc340
  3bee84:	44 8b cf                                        	mov    r9d,edi
  3bee87:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  3bee8e:	4c 8b c3                                        	mov    r8,rbx
  3bee91:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  3bee96:	48 8b ce                                        	mov    rcx,rsi
  3bee99:	e8 56 13 fe ff                                  	call   0x3a01f4
  3bee9e:	e8 5d e3 f9 ff                                  	call   0x35d200
  3beea3:	48 8b c8                                        	mov    rcx,rax
  3beea6:	e8 b5 02 fd ff                                  	call   0x38f160
  3beeab:	e8 50 e3 f9 ff                                  	call   0x35d200
  3beeb0:	48 8b c8                                        	mov    rcx,rax
  3beeb3:	e8 04 02 fd ff                                  	call   0x38f0bc
  3beeb8:	33 c9                                           	xor    ecx,ecx
  3beeba:	e8 2d 59 fd ff                                  	call   0x3947ec
  3beebf:	33 f6                                           	xor    esi,esi
  3beec1:	84 c0                                           	test   al,al
  3beec3:	75 1a                                           	jne    0x3beedf
  3beec5:	33 d2                                           	xor    edx,edx
  3beec7:	33 c9                                           	xor    ecx,ecx
  3beec9:	e8 16 55 fd ff                                  	call   0x3943e4
  3beece:	84 c0                                           	test   al,al
  3beed0:	74 0d                                           	je     0x3beedf
  3beed2:	40 38 b5 38 02 00 00                            	cmp    BYTE PTR [rbp+0x238],sil
  3beed9:	75 04                                           	jne    0x3beedf
  3beedb:	41 89 75 0c                                     	mov    DWORD PTR [r13+0xc],esi
  3beedf:	f3 41 0f 10 47 44                               	movss  xmm0,DWORD PTR [r15+0x44]
  3beee5:	e8 62 c5 fd ff                                  	call   0x39b44c
  3beeea:	e8 a1 fd fc ff                                  	call   0x38ec90
  3beeef:	49 8b ce                                        	mov    rcx,r14
  3beef2:	8b de                                           	mov    ebx,esi
  3beef4:	e8 cf a4 f1 ff                                  	call   0x2d93c8
  3beef9:	48 85 c0                                        	test   rax,rax
  3beefc:	74 75                                           	je     0x3bef73
  3beefe:	48 8b bd 28 02 00 00                            	mov    rdi,QWORD PTR [rbp+0x228]
  3bef05:	e8 2a 40 fd ff                                  	call   0x392f34
  3bef0a:	0f 28 f0                                        	movaps xmm6,xmm0
  3bef0d:	e8 ba 36 fd ff                                  	call   0x3925cc
  3bef12:	0f 28 d0                                        	movaps xmm2,xmm0
  3bef15:	48 8d 8d 28 02 00 00                            	lea    rcx,[rbp+0x228]
  3bef1c:	0f 28 ce                                        	movaps xmm1,xmm6
  3bef1f:	e8 1c d4 f0 ff                                  	call   0x2cc340
  3bef24:	48 63 d3                                        	movsxd rdx,ebx
  3bef27:	49 8b ce                                        	mov    rcx,r14
  3bef2a:	e8 85 08 f3 ff                                  	call   0x2ef7b4
  3bef2f:	3b 1f                                           	cmp    ebx,DWORD PTR [rdi]
  3bef31:	48 8d 0d f0 e3 ec ff                            	lea    rcx,[rip+0xffffffffffece3f0]        # 0x28d328
  3bef38:	40 88 74 24 28                                  	mov    BYTE PTR [rsp+0x28],sil
  3bef3d:	4c 8d 8d 28 02 00 00                            	lea    r9,[rbp+0x228]
  3bef44:	0f 94 c2                                        	sete   dl
  3bef47:	48 89 4c 24 20                                  	mov    QWORD PTR [rsp+0x20],rcx
  3bef4c:	48 8b 08                                        	mov    rcx,QWORD PTR [rax]
  3bef4f:	45 33 c0                                        	xor    r8d,r8d
  3bef52:	e8 51 49 00 00                                  	call   0x3c38a8
  3bef57:	84 c0                                           	test   al,al
  3bef59:	74 06                                           	je     0x3bef61
  3bef5b:	89 1f                                           	mov    DWORD PTR [rdi],ebx
  3bef5d:	41 89 75 0c                                     	mov    DWORD PTR [r13+0xc],esi
  3bef61:	49 8b ce                                        	mov    rcx,r14
  3bef64:	ff c3                                           	inc    ebx
  3bef66:	e8 5d a4 f1 ff                                  	call   0x2d93c8
  3bef6b:	48 63 cb                                        	movsxd rcx,ebx
  3bef6e:	48 3b c8                                        	cmp    rcx,rax
  3bef71:	72 92                                           	jb     0x3bef05
  3bef73:	49 8b ce                                        	mov    rcx,r14
  3bef76:	e8 4d a4 f1 ff                                  	call   0x2d93c8
  3bef7b:	48 83 f8 05                                     	cmp    rax,0x5
  3bef7f:	76 2b                                           	jbe    0x3befac
  3bef81:	f3 0f 10 15 5f 9f e8 ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffe89f5f]        # 0x248ee8
  3bef89:	48 8d 8d 28 02 00 00                            	lea    rcx,[rbp+0x228]
  3bef90:	f3 0f 59 15 08 42 ed ff                         	mulss  xmm2,DWORD PTR [rip+0xffffffffffed4208]        # 0x2931a0
  3bef98:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bef9b:	e8 a0 d3 f0 ff                                  	call   0x2cc340
  3befa0:	48 8d 8d 28 02 00 00                            	lea    rcx,[rbp+0x228]
  3befa7:	e8 a0 0e 00 00                                  	call   0x3bfe4c
  3befac:	e8 4b 1f fd ff                                  	call   0x390efc
  3befb1:	e8 de 19 fd ff                                  	call   0x390994
  3befb6:	b9 01 00 00 00                                  	mov    ecx,0x1
  3befbb:	e8 ac 99 fd ff                                  	call   0x39896c
  3befc0:	eb 07                                           	jmp    0x3befc9
  3befc2:	4c 8b b5 30 02 00 00                            	mov    r14,QWORD PTR [rbp+0x230]
  3befc9:	49 8b ce                                        	mov    rcx,r14
  3befcc:	e8 eb c5 f1 ff                                  	call   0x2db5bc
  3befd1:	4c 8d 9c 24 d8 02 00 00                         	lea    r11,[rsp+0x2d8]
  3befd9:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3befde:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3befe3:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3befe8:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3befed:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3beff2:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3beff7:	49 8b e3                                        	mov    rsp,r11
  3beffa:	41 5f                                           	pop    r15
  3beffc:	41 5e                                           	pop    r14
  3beffe:	41 5d                                           	pop    r13
  3bf000:	41 5c                                           	pop    r12
  3bf002:	5f                                              	pop    rdi
  3bf003:	5e                                              	pop    rsi
  3bf004:	5b                                              	pop    rbx
  3bf005:	5d                                              	pop    rbp
  3bf006:	c3                                              	ret
