
dump_analysis/semantic_reconstruction/movement_main_helpers/317194.bin:     file format binary


Disassembly of section .data:

0000000000317194 <.data>:
  317194:	48 8b c4                                        	mov    rax,rsp
  317197:	48 89 58 10                                     	mov    QWORD PTR [rax+0x10],rbx
  31719b:	55                                              	push   rbp
  31719c:	56                                              	push   rsi
  31719d:	57                                              	push   rdi
  31719e:	41 56                                           	push   r14
  3171a0:	41 57                                           	push   r15
  3171a2:	48 8d a8 58 fe ff ff                            	lea    rbp,[rax-0x1a8]
  3171a9:	48 81 ec 80 02 00 00                            	sub    rsp,0x280
  3171b0:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  3171b4:	49 8b d9                                        	mov    rbx,r9
  3171b7:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  3171bb:	49 8b f0                                        	mov    rsi,r8
  3171be:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  3171c3:	4c 8b fa                                        	mov    r15,rdx
  3171c6:	44 0f 29 50 98                                  	movaps XMMWORD PTR [rax-0x68],xmm10
  3171cb:	48 8b f9                                        	mov    rdi,rcx
  3171ce:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3171d3:	44 0f 29 a8 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm13
  3171db:	44 0f 29 b0 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm14
  3171e3:	e8 50 7c fd ff                                  	call   0x2eee38
  3171e8:	4d 8b c7                                        	mov    r8,r15
  3171eb:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3171f0:	48 8b ce                                        	mov    rcx,rsi
  3171f3:	e8 d4 84 fc ff                                  	call   0x2df6cc
  3171f8:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3171fc:	f2 0f 11 47 10                                  	movsd  QWORD PTR [rdi+0x10],xmm0
  317201:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  317204:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  317208:	89 47 18                                        	mov    DWORD PTR [rdi+0x18],eax
  31720b:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  31720e:	f2 0f 11 47 04                                  	movsd  QWORD PTR [rdi+0x4],xmm0
  317213:	89 47 0c                                        	mov    DWORD PTR [rdi+0xc],eax
  317216:	c6 07 00                                        	mov    BYTE PTR [rdi],0x0
  317219:	e8 7e 68 fc ff                                  	call   0x2dda9c
  31721e:	48 8b c8                                        	mov    rcx,rax
  317221:	48 8b d0                                        	mov    rdx,rax
  317224:	e8 df 3c fb ff                                  	call   0x2caf08
  317229:	84 c0                                           	test   al,al
  31722b:	0f 84 4c 04 00 00                               	je     0x31767d
  317231:	48 8b ca                                        	mov    rcx,rdx
  317234:	e8 63 9c fc ff                                  	call   0x2e0e9c
  317239:	84 c0                                           	test   al,al
  31723b:	0f 84 3c 04 00 00                               	je     0x31767d
  317241:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  317246:	e8 71 09 0b 00                                  	call   0x3c7bbc
  31724b:	4c 8d 85 b0 01 00 00                            	lea    r8,[rbp+0x1b0]
  317252:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  317257:	48 8d 8d c0 01 00 00                            	lea    rcx,[rbp+0x1c0]
  31725e:	e8 2d e4 ff ff                                  	call   0x315690
  317263:	84 c0                                           	test   al,al
  317265:	0f 84 12 04 00 00                               	je     0x31767d
  31726b:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  317271:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  317276:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  31727a:	4d 8b c7                                        	mov    r8,r15
  31727d:	f3 44 0f 10 b5 c0 01 00 00                      	movss  xmm14,DWORD PTR [rbp+0x1c0]
  317286:	48 8b ce                                        	mov    rcx,rsi
  317289:	f2 0f 11 47 38                                  	movsd  QWORD PTR [rdi+0x38],xmm0
  31728e:	89 47 40                                        	mov    DWORD PTR [rdi+0x40],eax
  317291:	f3 44 0f 11 77 34                               	movss  DWORD PTR [rdi+0x34],xmm14
  317297:	e8 30 84 fc ff                                  	call   0x2df6cc
  31729c:	48 8b c8                                        	mov    rcx,rax
  31729f:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3172a3:	e8 d0 9f fc ff                                  	call   0x2e1278
  3172a8:	f3 0f 10 95 b0 01 00 00                         	movss  xmm2,DWORD PTR [rbp+0x1b0]
  3172b0:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3172b4:	48 8b c8                                        	mov    rcx,rax
  3172b7:	e8 b0 83 fc ff                                  	call   0x2df66c
  3172bc:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3172c0:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3172c4:	f2 0f 11 47 10                                  	movsd  QWORD PTR [rdi+0x10],xmm0
  3172c9:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  3172cc:	89 47 18                                        	mov    DWORD PTR [rdi+0x18],eax
  3172cf:	e8 c4 7b fd ff                                  	call   0x2eee98
  3172d4:	48 8d 8d b0 00 00 00                            	lea    rcx,[rbp+0xb0]
  3172db:	e8 b8 7b fd ff                                  	call   0x2eee98
  3172e0:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3172e5:	e8 d2 08 0b 00                                  	call   0x3c7bbc
  3172ea:	f3 0f 10 15 62 cf 0c 00                         	movss  xmm2,DWORD PTR [rip+0xccf62]        # 0x3e4254
  3172f2:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  3172f7:	48 8b cb                                        	mov    rcx,rbx
  3172fa:	45 33 f6                                        	xor    r14d,r14d
  3172fd:	e8 6a 83 fc ff                                  	call   0x2df66c
  317302:	48 8b d0                                        	mov    rdx,rax
  317305:	48 8b ce                                        	mov    rcx,rsi
  317308:	e8 bb 08 0b 00                                  	call   0x3c7bc8
  31730d:	f3 0f 10 3d 0f 68 f7 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff7680f]        # 0x28db24
  317315:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  31731a:	4d 8b c7                                        	mov    r8,r15
  31731d:	48 8b ce                                        	mov    rcx,rsi
  317320:	e8 a7 83 fc ff                                  	call   0x2df6cc
  317325:	48 8b c8                                        	mov    rcx,rax
  317328:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  31732c:	e8 47 9f fc ff                                  	call   0x2e1278
  317331:	f3 0f 10 15 1b 5f f7 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff75f1b]        # 0x28d254
  317339:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  31733e:	0f 57 db                                        	xorps  xmm3,xmm3
  317341:	0f 57 c9                                        	xorps  xmm1,xmm1
  317344:	e8 5f 08 0b 00                                  	call   0x3c7ba8
  317349:	4c 8d 44 24 40                                  	lea    r8,[rsp+0x40]
  31734e:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  317353:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  317357:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  31735b:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  31735e:	f2 0f 11 44 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm0
  317364:	f2 0f 10 45 b0                                  	movsd  xmm0,QWORD PTR [rbp-0x50]
  317369:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  31736d:	8b 45 b8                                        	mov    eax,DWORD PTR [rbp-0x48]
  317370:	f2 0f 11 44 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm0
  317376:	89 44 24 38                                     	mov    DWORD PTR [rsp+0x38],eax
  31737a:	e8 71 9c fc ff                                  	call   0x2e0ff0
  31737f:	0f 10 45 a0                                     	movups xmm0,XMMWORD PTR [rbp-0x60]
  317383:	48 8d 55 a0                                     	lea    rdx,[rbp-0x60]
  317387:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  31738b:	66 0f 7f 45 a0                                  	movdqa XMMWORD PTR [rbp-0x60],xmm0
  317390:	e8 77 df ff ff                                  	call   0x31530c
  317395:	f3 0f 10 75 c0                                  	movss  xmm6,DWORD PTR [rbp-0x40]
  31739a:	f3 44 0f 10 25 89 be f7 ff                      	movss  xmm12,DWORD PTR [rip+0xfffffffffff7be89]        # 0x29322c
  3173a3:	41 0f 2f f4                                     	comiss xmm6,xmm12
  3173a7:	76 08                                           	jbe    0x3173b1
  3173a9:	f3 0f 58 35 bf be f7 ff                         	addss  xmm6,DWORD PTR [rip+0xfffffffffff7bebf]        # 0x293270
  3173b1:	44 0f 2f e6                                     	comiss xmm12,xmm6
  3173b5:	f3 44 0f 10 15 ae be f7 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff7beae]        # 0x29326c
  3173be:	f3 44 0f 10 85 d0 01 00 00                      	movss  xmm8,DWORD PTR [rbp+0x1d0]
  3173c7:	0f 86 34 02 00 00                               	jbe    0x317601
  3173cd:	f3 0f 10 55 c4                                  	movss  xmm2,DWORD PTR [rbp-0x3c]
  3173d2:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3173d7:	0f 57 db                                        	xorps  xmm3,xmm3
  3173da:	0f 28 ce                                        	movaps xmm1,xmm6
  3173dd:	e8 c6 07 0b 00                                  	call   0x3c7ba8
  3173e2:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  3173e8:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  3173ec:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  3173f0:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  3173f7:	f2 0f 11 45 d0                                  	movsd  QWORD PTR [rbp-0x30],xmm0
  3173fc:	89 45 d8                                        	mov    DWORD PTR [rbp-0x28],eax
  3173ff:	e8 10 16 00 00                                  	call   0x318a14
  317404:	f3 0f 10 1d 48 5e f7 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff75e48]        # 0x28d254
  31740c:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  317410:	0f 57 d2                                        	xorps  xmm2,xmm2
  317413:	0f 57 c9                                        	xorps  xmm1,xmm1
  317416:	48 8b d8                                        	mov    rbx,rax
  317419:	e8 8a 07 0b 00                                  	call   0x3c7ba8
  31741e:	4c 8d 45 e0                                     	lea    r8,[rbp-0x20]
  317422:	48 8d 54 24 50                                  	lea    rdx,[rsp+0x50]
  317427:	8b 48 08                                        	mov    ecx,DWORD PTR [rax+0x8]
  31742a:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  31742e:	89 4d e8                                        	mov    DWORD PTR [rbp-0x18],ecx
  317431:	48 8b cb                                        	mov    rcx,rbx
  317434:	f2 0f 11 45 e0                                  	movsd  QWORD PTR [rbp-0x20],xmm0
  317439:	e8 f6 83 fd ff                                  	call   0x2ef834
  31743e:	f3 0f 10 95 b0 01 00 00                         	movss  xmm2,DWORD PTR [rbp+0x1b0]
  317446:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  31744b:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  317450:	e8 17 82 fc ff                                  	call   0x2df66c
  317455:	8b 46 08                                        	mov    eax,DWORD PTR [rsi+0x8]
  317458:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  31745c:	f2 0f 10 06                                     	movsd  xmm0,QWORD PTR [rsi]
  317460:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  317464:	89 45 f8                                        	mov    DWORD PTR [rbp-0x8],eax
  317467:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  31746b:	8b 44 24 68                                     	mov    eax,DWORD PTR [rsp+0x68]
  31746f:	41 0f 28 de                                     	movaps xmm3,xmm14
  317473:	89 45 08                                        	mov    DWORD PTR [rbp+0x8],eax
  317476:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  31747a:	f2 0f 11 45 f0                                  	movsd  QWORD PTR [rbp-0x10],xmm0
  31747f:	f2 0f 10 44 24 60                               	movsd  xmm0,QWORD PTR [rsp+0x60]
  317485:	89 45 88                                        	mov    DWORD PTR [rbp-0x78],eax
  317488:	41 8b 47 08                                     	mov    eax,DWORD PTR [r15+0x8]
  31748c:	89 45 98                                        	mov    DWORD PTR [rbp-0x68],eax
  31748f:	48 8d 45 f0                                     	lea    rax,[rbp-0x10]
  317493:	f2 0f 11 45 00                                  	movsd  QWORD PTR [rbp+0x0],xmm0
  317498:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  31749e:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3174a3:	48 8d 45 00                                     	lea    rax,[rbp+0x0]
  3174a7:	f2 0f 11 45 80                                  	movsd  QWORD PTR [rbp-0x80],xmm0
  3174ac:	f2 41 0f 10 07                                  	movsd  xmm0,QWORD PTR [r15]
  3174b1:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3174b6:	f2 0f 11 45 90                                  	movsd  QWORD PTR [rbp-0x70],xmm0
  3174bb:	e8 c8 9a 00 00                                  	call   0x320f88
  3174c0:	0f 28 65 60                                     	movaps xmm4,XMMWORD PTR [rbp+0x60]
  3174c4:	41 ff c6                                        	inc    r14d
  3174c7:	0f 28 9d a0 00 00 00                            	movaps xmm3,XMMWORD PTR [rbp+0xa0]
  3174ce:	32 c9                                           	xor    cl,cl
  3174d0:	0f 28 ad 80 00 00 00                            	movaps xmm5,XMMWORD PTR [rbp+0x80]
  3174d7:	44 0f 28 6d 70                                  	movaps xmm13,XMMWORD PTR [rbp+0x70]
  3174dc:	66 0f 7e e0                                     	movd   eax,xmm4
  3174e0:	84 c0                                           	test   al,al
  3174e2:	8a 45 10                                        	mov    al,BYTE PTR [rbp+0x10]
  3174e5:	0f 84 89 00 00 00                               	je     0x317574
  3174eb:	0f 28 d3                                        	movaps xmm2,xmm3
  3174ee:	0f c6 d3 aa                                     	shufps xmm2,xmm3,0xaa
  3174f2:	84 c0                                           	test   al,al
  3174f4:	74 0a                                           	je     0x317500
  3174f6:	f3 0f 10 4d 58                                  	movss  xmm1,DWORD PTR [rbp+0x58]
  3174fb:	0f 2f ca                                        	comiss xmm1,xmm2
  3174fe:	76 53                                           	jbe    0x317553
  317500:	f2 0f 10 44 24 30                               	movsd  xmm0,QWORD PTR [rsp+0x30]
  317506:	0f 28 cb                                        	movaps xmm1,xmm3
  317509:	8b 44 24 38                                     	mov    eax,DWORD PTR [rsp+0x38]
  31750d:	89 85 9c 00 00 00                               	mov    DWORD PTR [rbp+0x9c],eax
  317513:	8b 44 24 48                                     	mov    eax,DWORD PTR [rsp+0x48]
  317517:	f2 0f 11 85 94 00 00 00                         	movsd  QWORD PTR [rbp+0x94],xmm0
  31751f:	0f 28 85 90 00 00 00                            	movaps xmm0,XMMWORD PTR [rbp+0x90]
  317526:	0f 29 45 40                                     	movaps XMMWORD PTR [rbp+0x40],xmm0
  31752a:	f2 0f 10 44 24 40                               	movsd  xmm0,QWORD PTR [rsp+0x40]
  317530:	89 44 24 78                                     	mov    DWORD PTR [rsp+0x78],eax
  317534:	f2 0f 11 44 24 70                               	movsd  QWORD PTR [rsp+0x70],xmm0
  31753a:	0f 29 65 10                                     	movaps XMMWORD PTR [rbp+0x10],xmm4
  31753e:	44 0f 29 6d 20                                  	movaps XMMWORD PTR [rbp+0x20],xmm13
  317543:	0f 29 6d 30                                     	movaps XMMWORD PTR [rbp+0x30],xmm5
  317547:	0f 29 5d 50                                     	movaps XMMWORD PTR [rbp+0x50],xmm3
  31754b:	0f c6 cb aa                                     	shufps xmm1,xmm3,0xaa
  31754f:	66 0f 7e e0                                     	movd   eax,xmm4
  317553:	38 8d b0 00 00 00                               	cmp    BYTE PTR [rbp+0xb0],cl
  317559:	74 15                                           	je     0x317570
  31755b:	f3 0f 5c 15 5d 6c f7 ff                         	subss  xmm2,DWORD PTR [rip+0xfffffffffff76c5d]        # 0x28e1c0
  317563:	f3 0f 10 85 f8 00 00 00                         	movss  xmm0,DWORD PTR [rbp+0xf8]
  31756b:	0f 2f c2                                        	comiss xmm0,xmm2
  31756e:	72 09                                           	jb     0x317579
  317570:	b1 01                                           	mov    cl,0x1
  317572:	eb 05                                           	jmp    0x317579
  317574:	f3 0f 10 4d 58                                  	movss  xmm1,DWORD PTR [rbp+0x58]
  317579:	41 83 fe 64                                     	cmp    r14d,0x64
  31757d:	0f 8d 86 00 00 00                               	jge    0x317609
  317583:	84 c0                                           	test   al,al
  317585:	74 06                                           	je     0x31758d
  317587:	44 0f 2f c1                                     	comiss xmm8,xmm1
  31758b:	73 7c                                           	jae    0x317609
  31758d:	84 c9                                           	test   cl,cl
  31758f:	74 35                                           	je     0x3175c6
  317591:	0f 28 85 90 00 00 00                            	movaps xmm0,XMMWORD PTR [rbp+0x90]
  317598:	44 0f 28 d6                                     	movaps xmm10,xmm6
  31759c:	0f 29 85 e0 00 00 00                            	movaps XMMWORD PTR [rbp+0xe0],xmm0
  3175a3:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3175a7:	0f 29 a5 b0 00 00 00                            	movaps XMMWORD PTR [rbp+0xb0],xmm4
  3175ae:	44 0f 29 ad c0 00 00 00                         	movaps XMMWORD PTR [rbp+0xc0],xmm13
  3175b6:	0f 29 ad d0 00 00 00                            	movaps XMMWORD PTR [rbp+0xd0],xmm5
  3175bd:	0f 29 9d f0 00 00 00                            	movaps XMMWORD PTR [rbp+0xf0],xmm3
  3175c4:	eb 2f                                           	jmp    0x3175f5
  3175c6:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3175ca:	c6 85 b0 00 00 00 00                            	mov    BYTE PTR [rbp+0xb0],0x0
  3175d1:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  3175d5:	f3 0f 5e 3d 93 bb f7 ff                         	divss  xmm7,DWORD PTR [rip+0xfffffffffff7bb93]        # 0x293170
  3175dd:	f3 0f 5f 35 87 bc f7 ff                         	maxss  xmm6,DWORD PTR [rip+0xfffffffffff7bc87]        # 0x29326c
  3175e5:	f3 0f 5f 3d ab ba f7 ff                         	maxss  xmm7,DWORD PTR [rip+0xfffffffffff7baab]        # 0x293098
  3175ed:	f3 0f 58 35 a3 ba f7 ff                         	addss  xmm6,DWORD PTR [rip+0xfffffffffff7baa3]        # 0x293098
  3175f5:	44 0f 2f e6                                     	comiss xmm12,xmm6
  3175f9:	0f 87 ce fd ff ff                               	ja     0x3173cd
  3175ff:	eb 08                                           	jmp    0x317609
  317601:	f3 0f 10 4d 58                                  	movss  xmm1,DWORD PTR [rbp+0x58]
  317606:	8a 45 10                                        	mov    al,BYTE PTR [rbp+0x10]
  317609:	84 c0                                           	test   al,al
  31760b:	74 66                                           	je     0x317673
  31760d:	44 0f 2f c1                                     	comiss xmm8,xmm1
  317611:	f3 0f 10 45 50                                  	movss  xmm0,DWORD PTR [rbp+0x50]
  317616:	72 08                                           	jb     0x317620
  317618:	f3 0f 11 05 34 cc 0c 00                         	movss  DWORD PTR [rip+0xccc34],xmm0        # 0x3e4254
  317620:	8b 45 4c                                        	mov    eax,DWORD PTR [rbp+0x4c]
  317623:	f3 0f 11 47 28                                  	movss  DWORD PTR [rdi+0x28],xmm0
  317628:	f2 0f 10 45 44                                  	movsd  xmm0,QWORD PTR [rbp+0x44]
  31762d:	f2 0f 11 47 10                                  	movsd  QWORD PTR [rdi+0x10],xmm0
  317632:	0f 28 45 20                                     	movaps xmm0,XMMWORD PTR [rbp+0x20]
  317636:	f2 0f 11 47 04                                  	movsd  QWORD PTR [rdi+0x4],xmm0
  31763b:	66 0f 73 d8 08                                  	psrldq xmm0,0x8
  317640:	66 0f 7e 47 0c                                  	movd   DWORD PTR [rdi+0xc],xmm0
  317645:	f2 0f 10 45 2c                                  	movsd  xmm0,QWORD PTR [rbp+0x2c]
  31764a:	f2 0f 11 47 1c                                  	movsd  QWORD PTR [rdi+0x1c],xmm0
  31764f:	f2 0f 10 44 24 70                               	movsd  xmm0,QWORD PTR [rsp+0x70]
  317655:	89 47 18                                        	mov    DWORD PTR [rdi+0x18],eax
  317658:	8b 45 34                                        	mov    eax,DWORD PTR [rbp+0x34]
  31765b:	89 47 24                                        	mov    DWORD PTR [rdi+0x24],eax
  31765e:	8b 44 24 78                                     	mov    eax,DWORD PTR [rsp+0x78]
  317662:	f2 0f 11 47 44                                  	movsd  QWORD PTR [rdi+0x44],xmm0
  317667:	89 47 4c                                        	mov    DWORD PTR [rdi+0x4c],eax
  31766a:	f3 0f 11 4f 2c                                  	movss  DWORD PTR [rdi+0x2c],xmm1
  31766f:	44 89 77 30                                     	mov    DWORD PTR [rdi+0x30],r14d
  317673:	44 0f 2f 47 2c                                  	comiss xmm8,DWORD PTR [rdi+0x2c]
  317678:	0f 93 c0                                        	setae  al
  31767b:	88 07                                           	mov    BYTE PTR [rdi],al
  31767d:	4c 8d 9c 24 80 02 00 00                         	lea    r11,[rsp+0x280]
  317685:	48 8b c7                                        	mov    rax,rdi
  317688:	49 8b 5b 38                                     	mov    rbx,QWORD PTR [r11+0x38]
  31768c:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  317691:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  317696:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  31769b:	45 0f 28 53 c0                                  	movaps xmm10,XMMWORD PTR [r11-0x40]
  3176a0:	45 0f 28 63 b0                                  	movaps xmm12,XMMWORD PTR [r11-0x50]
  3176a5:	45 0f 28 6b a0                                  	movaps xmm13,XMMWORD PTR [r11-0x60]
  3176aa:	45 0f 28 73 90                                  	movaps xmm14,XMMWORD PTR [r11-0x70]
  3176af:	49 8b e3                                        	mov    rsp,r11
  3176b2:	41 5f                                           	pop    r15
  3176b4:	41 5e                                           	pop    r14
  3176b6:	5f                                              	pop    rdi
  3176b7:	5e                                              	pop    rsi
  3176b8:	5d                                              	pop    rbp
  3176b9:	c3                                              	ret
