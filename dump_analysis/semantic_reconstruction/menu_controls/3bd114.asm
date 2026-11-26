
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bd114 <.data+0x3bd114>:
  3bd114:	48 8b c4                                        	mov    rax,rsp
  3bd117:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3bd11b:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  3bd11f:	55                                              	push   rbp
  3bd120:	56                                              	push   rsi
  3bd121:	57                                              	push   rdi
  3bd122:	41 54                                           	push   r12
  3bd124:	41 55                                           	push   r13
  3bd126:	41 56                                           	push   r14
  3bd128:	41 57                                           	push   r15
  3bd12a:	48 8d a8 28 fe ff ff                            	lea    rbp,[rax-0x1d8]
  3bd131:	48 81 ec a0 02 00 00                            	sub    rsp,0x2a0
  3bd138:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3bd13c:	4d 8b e9                                        	mov    r13,r9
  3bd13f:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3bd143:	4d 8b f0                                        	mov    r14,r8
  3bd146:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3bd14b:	48 8b f2                                        	mov    rsi,rdx
  3bd14e:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3bd153:	4c 8b e1                                        	mov    r12,rcx
  3bd156:	44 0f 29 90 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm10
  3bd15e:	44 0f 29 98 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm11
  3bd166:	44 0f 29 b8 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm15
  3bd16e:	e8 8d 00 fa ff                                  	call   0x35d200
  3bd173:	45 33 c0                                        	xor    r8d,r8d
  3bd176:	49 8b d4                                        	mov    rdx,r12
  3bd179:	48 8b c8                                        	mov    rcx,rax
  3bd17c:	4c 8b f8                                        	mov    r15,rax
  3bd17f:	e8 90 54 fd ff                                  	call   0x392614
  3bd184:	8b f8                                           	mov    edi,eax
  3bd186:	e8 19 5b fd ff                                  	call   0x392ca4
  3bd18b:	f2 41 0f 10 87 00 01 00 00                      	movsd  xmm0,QWORD PTR [r15+0x100]
  3bd194:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3bd198:	f3 44 0f 10 1d 47 bd e8 ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffe8bd47]        # 0x248ee8
  3bd1a1:	41 b1 01                                        	mov    r9b,0x1
  3bd1a4:	f3 0f 10 3d b4 60 ed ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffed60b4]        # 0x293260
  3bd1ac:	45 33 c0                                        	xor    r8d,r8d
  3bd1af:	f3 44 0f 59 1d 00 60 ed ff                      	mulss  xmm11,DWORD PTR [rip+0xffffffffffed6000]        # 0x2931b8
  3bd1b8:	49 8b d4                                        	mov    rdx,r12
  3bd1bb:	f2 0f 11 85 f8 01 00 00                         	movsd  QWORD PTR [rbp+0x1f8],xmm0
  3bd1c3:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  3bd1c9:	e8 ce 25 fd ff                                  	call   0x38f79c
  3bd1ce:	48 8b 05 53 89 04 00                            	mov    rax,QWORD PTR [rip+0x48953]        # 0x405b28
  3bd1d5:	bb 00 00 00 00                                  	mov    ebx,0x0
  3bd1da:	f3 0f 10 35 06 bd e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe8bd06]        # 0x248ee8
  3bd1e2:	f3 0f 59 35 ea 5f ed ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffed5fea]        # 0x2931d4
  3bd1ea:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3bd1f4:	0f 95 c3                                        	setne  bl
  3bd1f7:	e8 74 21 fd ff                                  	call   0x38f370
  3bd1fc:	66 0f 6e cb                                     	movd   xmm1,ebx
  3bd200:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bd205:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3bd208:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3bd20c:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3bd210:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  3bd214:	0f 28 c8                                        	movaps xmm1,xmm0
  3bd217:	e8 24 f1 f0 ff                                  	call   0x2cc340
  3bd21c:	4c 8b c0                                        	mov    r8,rax
  3bd21f:	48 8d 95 f8 01 00 00                            	lea    rdx,[rbp+0x1f8]
  3bd226:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3bd22a:	e8 a9 27 f3 ff                                  	call   0x2ef9d8
  3bd22f:	4c 8b c0                                        	mov    r8,rax
  3bd232:	48 8d 95 f8 01 00 00                            	lea    rdx,[rbp+0x1f8]
  3bd239:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3bd23d:	e8 46 e1 f1 ff                                  	call   0x2db388
  3bd242:	f3 0f 10 0d 9e bc e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8bc9e]        # 0x248ee8
  3bd24a:	48 8d 8d f8 01 00 00                            	lea    rcx,[rbp+0x1f8]
  3bd251:	f3 0f 59 0d 83 5f ed ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffed5f83]        # 0x2931dc
  3bd259:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3bd25d:	e8 de f0 f0 ff                                  	call   0x2cc340
  3bd262:	4c 8b c0                                        	mov    r8,rax
  3bd265:	48 8d 55 d0                                     	lea    rdx,[rbp-0x30]
  3bd269:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bd26e:	e8 71 95 f7 ff                                  	call   0x3367e4
  3bd273:	48 8b d0                                        	mov    rdx,rax
  3bd276:	4c 8d 45 d0                                     	lea    r8,[rbp-0x30]
  3bd27a:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd27f:	e8 04 e1 f1 ff                                  	call   0x2db388
  3bd284:	0f 28 cf                                        	movaps xmm1,xmm7
  3bd287:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3bd28b:	e8 f0 f7 fb ff                                  	call   0x37ca80
  3bd290:	45 33 c9                                        	xor    r9d,r9d
  3bd293:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3bd297:	45 33 c0                                        	xor    r8d,r8d
  3bd29a:	8b d7                                           	mov    edx,edi
  3bd29c:	e8 3b 76 fd ff                                  	call   0x3948dc
  3bd2a1:	33 db                                           	xor    ebx,ebx
  3bd2a3:	4c 8d 4c 24 40                                  	lea    r9,[rsp+0x40]
  3bd2a8:	88 9d f8 01 00 00                               	mov    BYTE PTR [rbp+0x1f8],bl
  3bd2ae:	4c 8d 44 24 41                                  	lea    r8,[rsp+0x41]
  3bd2b3:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3bd2b7:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3bd2bb:	8b d7                                           	mov    edx,edi
  3bd2bd:	e8 1e f5 ff ff                                  	call   0x3bc7e0
  3bd2c2:	84 c0                                           	test   al,al
  3bd2c4:	74 0e                                           	je     0x3bd2d4
  3bd2c6:	38 1e                                           	cmp    BYTE PTR [rsi],bl
  3bd2c8:	c6 85 f8 01 00 00 01                            	mov    BYTE PTR [rbp+0x1f8],0x1
  3bd2cf:	0f 94 c0                                        	sete   al
  3bd2d2:	88 06                                           	mov    BYTE PTR [rsi],al
  3bd2d4:	33 d2                                           	xor    edx,edx
  3bd2d6:	48 89 5d 80                                     	mov    QWORD PTR [rbp-0x80],rbx
  3bd2da:	48 8d 4d 8c                                     	lea    rcx,[rbp-0x74]
  3bd2de:	89 5d 88                                        	mov    DWORD PTR [rbp-0x78],ebx
  3bd2e1:	e8 ee 91 f7 ff                                  	call   0x3364d4
  3bd2e6:	f3 0f 10 4d 84                                  	movss  xmm1,DWORD PTR [rbp-0x7c]
  3bd2eb:	4c 8d 45 e0                                     	lea    r8,[rbp-0x20]
  3bd2ef:	f3 0f 10 45 80                                  	movss  xmm0,DWORD PTR [rbp-0x80]
  3bd2f4:	33 d2                                           	xor    edx,edx
  3bd2f6:	0f b7 45 a1                                     	movzx  eax,WORD PTR [rbp-0x5f]
  3bd2fa:	49 8b cc                                        	mov    rcx,r12
  3bd2fd:	f3 0f 11 4d e4                                  	movss  DWORD PTR [rbp-0x1c],xmm1
  3bd302:	0f 10 4d 8c                                     	movups xmm1,XMMWORD PTR [rbp-0x74]
  3bd306:	66 89 45 01                                     	mov    WORD PTR [rbp+0x1],ax
  3bd30a:	8a 45 a3                                        	mov    al,BYTE PTR [rbp-0x5d]
  3bd30d:	f3 0f 11 45 e0                                  	movss  DWORD PTR [rbp-0x20],xmm0
  3bd312:	f3 0f 10 45 88                                  	movss  xmm0,DWORD PTR [rbp-0x78]
  3bd317:	f3 0f 7f 4d ec                                  	movdqu XMMWORD PTR [rbp-0x14],xmm1
  3bd31c:	89 5d fc                                        	mov    DWORD PTR [rbp-0x4],ebx
  3bd31f:	f3 0f 11 45 e8                                  	movss  DWORD PTR [rbp-0x18],xmm0
  3bd324:	88 5d 00                                        	mov    BYTE PTR [rbp+0x0],bl
  3bd327:	88 45 03                                        	mov    BYTE PTR [rbp+0x3],al
  3bd32a:	e8 a9 e2 ff ff                                  	call   0x3bb5d8
  3bd32f:	48 8b f8                                        	mov    rdi,rax
  3bd332:	48 89 45 c0                                     	mov    QWORD PTR [rbp-0x40],rax
  3bd336:	38 58 20                                        	cmp    BYTE PTR [rax+0x20],bl
  3bd339:	0f 85 af 00 00 00                               	jne    0x3bd3ee
  3bd33f:	48 8b 0d e2 87 04 00                            	mov    rcx,QWORD PTR [rip+0x487e2]        # 0x405b28
  3bd346:	f7 81 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rcx+0x4788],0x800
  3bd350:	0f 85 98 00 00 00                               	jne    0x3bd3ee
  3bd356:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bd35a:	e8 25 56 fc ff                                  	call   0x382984
  3bd35f:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bd364:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3bd369:	e8 d6 ef ff ff                                  	call   0x3bc344
  3bd36e:	48 8b c8                                        	mov    rcx,rax
  3bd371:	e8 ae 15 fe ff                                  	call   0x39e924
  3bd376:	48 8b d0                                        	mov    rdx,rax
  3bd379:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bd37d:	e8 e6 78 f1 ff                                  	call   0x2d4c68
  3bd382:	49 8b d4                                        	mov    rdx,r12
  3bd385:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd389:	e8 3e ef f0 ff                                  	call   0x2cc2cc
  3bd38e:	48 8b d0                                        	mov    rdx,rax
  3bd391:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  3bd395:	e8 4a 78 f1 ff                                  	call   0x2d4be4
  3bd39a:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd39e:	e8 51 f1 f0 ff                                  	call   0x2cc4f4
  3bd3a3:	48 8d 0d 46 bb e8 ff                            	lea    rcx,[rip+0xffffffffffe8bb46]        # 0x248ef0
  3bd3aa:	4c 89 b5 c8 00 00 00                            	mov    QWORD PTR [rbp+0xc8],r14
  3bd3b1:	4c 89 ad d0 00 00 00                            	mov    QWORD PTR [rbp+0xd0],r13
  3bd3b8:	48 89 b5 80 00 00 00                            	mov    QWORD PTR [rbp+0x80],rsi
  3bd3bf:	e8 38 be fc ff                                  	call   0x3891fc
  3bd3c4:	48 8d 0d 25 bb e8 ff                            	lea    rcx,[rip+0xffffffffffe8bb25]        # 0x248ef0
  3bd3cb:	48 8d 50 ff                                     	lea    rdx,[rax-0x1]
  3bd3cf:	e8 e4 59 fc ff                                  	call   0x382db8
  3bd3d4:	48 8d 55 40                                     	lea    rdx,[rbp+0x40]
  3bd3d8:	48 8d 48 48                                     	lea    rcx,[rax+0x48]
  3bd3dc:	e8 ef 4e fc ff                                  	call   0x3822d0
  3bd3e1:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bd3e5:	c6 47 20 01                                     	mov    BYTE PTR [rdi+0x20],0x1
  3bd3e9:	e8 42 93 f7 ff                                  	call   0x336730
  3bd3ee:	48 8b 05 33 87 04 00                            	mov    rax,QWORD PTR [rip+0x48733]        # 0x405b28
  3bd3f5:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3bd3ff:	0f 84 d0 00 00 00                               	je     0x3bd4d5
  3bd405:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bd409:	e8 76 55 fc ff                                  	call   0x382984
  3bd40e:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bd413:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3bd418:	e8 9f ef ff ff                                  	call   0x3bc3bc
  3bd41d:	48 8b c8                                        	mov    rcx,rax
  3bd420:	e8 ff 14 fe ff                                  	call   0x39e924
  3bd425:	48 8b d0                                        	mov    rdx,rax
  3bd428:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bd42c:	e8 37 78 f1 ff                                  	call   0x2d4c68
  3bd431:	49 8b d4                                        	mov    rdx,r12
  3bd434:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd438:	e8 8f ee f0 ff                                  	call   0x2cc2cc
  3bd43d:	48 8b d0                                        	mov    rdx,rax
  3bd440:	48 8d 4d 60                                     	lea    rcx,[rbp+0x60]
  3bd444:	e8 9b 77 f1 ff                                  	call   0x2d4be4
  3bd449:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd44d:	e8 a2 f0 f0 ff                                  	call   0x2cc4f4
  3bd452:	f3 0f 10 0d 8e ba e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8ba8e]        # 0x248ee8
  3bd45a:	0f 57 c0                                        	xorps  xmm0,xmm0
  3bd45d:	f3 0f 59 0d b7 06 ed ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffed06b7]        # 0x28db1c
  3bd465:	4c 89 b5 c8 00 00 00                            	mov    QWORD PTR [rbp+0xc8],r14
  3bd46c:	4c 89 ad d0 00 00 00                            	mov    QWORD PTR [rbp+0xd0],r13
  3bd473:	48 89 b5 80 00 00 00                            	mov    QWORD PTR [rbp+0x80],rsi
  3bd47a:	e8 85 d7 fd ff                                  	call   0x39ac04
  3bd47f:	49 8b d4                                        	mov    rdx,r12
  3bd482:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd486:	e8 41 ee f0 ff                                  	call   0x2cc2cc
  3bd48b:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3bd48f:	48 8b d8                                        	mov    rbx,rax
  3bd492:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3bd497:	e8 88 ef ff ff                                  	call   0x3bc424
  3bd49c:	48 8b c8                                        	mov    rcx,rax
  3bd49f:	e8 e0 13 fe ff                                  	call   0x39e884
  3bd4a4:	48 8b d0                                        	mov    rdx,rax
  3bd4a7:	48 8b cb                                        	mov    rcx,rbx
  3bd4aa:	e8 fd 02 f1 ff                                  	call   0x2cd7ac
  3bd4af:	48 8b c8                                        	mov    rcx,rax
  3bd4b2:	e8 35 03 f1 ff                                  	call   0x2cd7ec
  3bd4b7:	48 8b c8                                        	mov    rcx,rax
  3bd4ba:	48 8d 55 40                                     	lea    rdx,[rbp+0x40]
  3bd4be:	e8 a1 a1 fc ff                                  	call   0x387664
  3bd4c3:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd4c7:	e8 28 f0 f0 ff                                  	call   0x2cc4f4
  3bd4cc:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bd4d0:	e8 5b 92 f7 ff                                  	call   0x336730
  3bd4d5:	8a 5c 24 41                                     	mov    bl,BYTE PTR [rsp+0x41]
  3bd4d9:	84 db                                           	test   bl,bl
  3bd4db:	75 09                                           	jne    0x3bd4e6
  3bd4dd:	38 1e                                           	cmp    BYTE PTR [rsi],bl
  3bd4df:	75 05                                           	jne    0x3bd4e6
  3bd4e1:	45 33 c9                                        	xor    r9d,r9d
  3bd4e4:	eb 03                                           	jmp    0x3bd4e9
  3bd4e6:	41 b1 01                                        	mov    r9b,0x1
  3bd4e9:	f3 44 0f 10 15 62 fd ec ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffecfd62]        # 0x28d254
  3bd4f2:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bd4f5:	f3 0f 10 35 b7 5c ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed5cb7]        # 0x2931b4
  3bd4fd:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3bd501:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [rdi]
  3bd505:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bd50b:	e8 38 89 f7 ff                                  	call   0x335e48
  3bd510:	f3 0f 11 07                                     	movss  DWORD PTR [rdi],xmm0
  3bd514:	44 8a cb                                        	mov    r9b,bl
  3bd517:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [rdi+0x4]
  3bd51c:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3bd520:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bd523:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bd529:	e8 1a 89 f7 ff                                  	call   0x335e48
  3bd52e:	f3 0f 11 47 04                                  	movss  DWORD PTR [rdi+0x4],xmm0
  3bd533:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3bd537:	44 8a 0e                                        	mov    r9b,BYTE PTR [rsi]
  3bd53a:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bd53d:	f3 0f 10 47 08                                  	movss  xmm0,DWORD PTR [rdi+0x8]
  3bd542:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bd548:	e8 fb 88 f7 ff                                  	call   0x335e48
  3bd54d:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3bd551:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3bd555:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bd55a:	f3 44 0f 11 47 08                               	movss  DWORD PTR [rdi+0x8],xmm8
  3bd560:	e8 33 4d fd ff                                  	call   0x392298
  3bd565:	8b d0                                           	mov    edx,eax
  3bd567:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3bd56b:	e8 64 8f f7 ff                                  	call   0x3364d4
  3bd570:	f3 0f 10 0d 54 5b ed ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffed5b54]        # 0x2930cc
  3bd578:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bd57d:	f3 0f 10 7f 04                                  	movss  xmm7,DWORD PTR [rdi+0x4]
  3bd582:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3bd586:	e8 0d 4d fd ff                                  	call   0x392298
  3bd58b:	8b d0                                           	mov    edx,eax
  3bd58d:	48 8d 8d 20 01 00 00                            	lea    rcx,[rbp+0x120]
  3bd594:	e8 3b 8f f7 ff                                  	call   0x3364d4
  3bd599:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3bd59d:	b9 02 00 00 00                                  	mov    ecx,0x2
  3bd5a2:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bd5a5:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3bd5ab:	e8 e8 4c fd ff                                  	call   0x392298
  3bd5b0:	8b d0                                           	mov    edx,eax
  3bd5b2:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3bd5b6:	e8 19 8f f7 ff                                  	call   0x3364d4
  3bd5bb:	0f 28 df                                        	movaps xmm3,xmm7
  3bd5be:	66 0f 7f 75 b0                                  	movdqa XMMWORD PTR [rbp-0x50],xmm6
  3bd5c3:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3bd5c8:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bd5cd:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bd5d0:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3bd5d4:	f3 0f 7f 44 24 60                               	movdqu XMMWORD PTR [rsp+0x60],xmm0
  3bd5da:	e8 c5 bf fb ff                                  	call   0x3795a4
  3bd5df:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3bd5e3:	4c 8d 45 b0                                     	lea    r8,[rbp-0x50]
  3bd5e7:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bd5ec:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd5f0:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bd5f3:	4c 8d 77 0c                                     	lea    r14,[rdi+0xc]
  3bd5f7:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3bd5fd:	e8 a2 bf fb ff                                  	call   0x3795a4
  3bd602:	f3 0f 10 3d be 5b ed ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffed5bbe]        # 0x2931c8
  3bd60a:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3bd60e:	b9 06 00 00 00                                  	mov    ecx,0x6
  3bd613:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bd616:	f3 41 0f 7f 06                                  	movdqu XMMWORD PTR [r14],xmm0
  3bd61b:	49 8b 9f 98 02 00 00                            	mov    rbx,QWORD PTR [r15+0x298]
  3bd622:	f3 0f 10 35 be b8 e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe8b8be]        # 0x248ee8
  3bd62a:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  3bd62e:	e8 65 4c fd ff                                  	call   0x392298
  3bd633:	f3 44 0f 11 54 24 30                            	movss  DWORD PTR [rsp+0x30],xmm10
  3bd63a:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  3bd63f:	44 8b c8                                        	mov    r9d,eax
  3bd642:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3bd64a:	48 8d 54 24 48                                  	lea    rdx,[rsp+0x48]
  3bd64f:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bd655:	48 8b cb                                        	mov    rcx,rbx
  3bd658:	e8 eb 3a fe ff                                  	call   0x3a1148
  3bd65d:	f3 0f 10 35 83 b8 e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe8b883]        # 0x248ee8
  3bd665:	49 8b 9f 98 02 00 00                            	mov    rbx,QWORD PTR [r15+0x298]
  3bd66c:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  3bd670:	f3 0f 10 4f 08                                  	movss  xmm1,DWORD PTR [rdi+0x8]
  3bd675:	33 c9                                           	xor    ecx,ecx
  3bd677:	f3 0f 10 3d 69 04 ed ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffed0469]        # 0x28dae8
  3bd67f:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  3bd683:	e8 10 4c fd ff                                  	call   0x392298
  3bd688:	44 8b c8                                        	mov    r9d,eax
  3bd68b:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3bd693:	4c 8d 44 24 50                                  	lea    r8,[rsp+0x50]
  3bd698:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bd69e:	48 8d 54 24 48                                  	lea    rdx,[rsp+0x48]
  3bd6a3:	48 8b cb                                        	mov    rcx,rbx
  3bd6a6:	e8 99 3b fe ff                                  	call   0x3a1244
  3bd6ab:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3bd6b2:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bd6b6:	0f 57 d2                                        	xorps  xmm2,xmm2
  3bd6b9:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bd6bc:	e8 7f ec f0 ff                                  	call   0x2cc340
  3bd6c1:	f3 44 0f 10 0d 1e b8 e8 ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffe8b81e]        # 0x248ee8
  3bd6ca:	33 c9                                           	xor    ecx,ecx
  3bd6cc:	f3 44 0f 59 0d 63 04 ed ff                      	mulss  xmm9,DWORD PTR [rip+0xffffffffffed0463]        # 0x28db38
  3bd6d5:	48 8b 75 c0                                     	mov    rsi,QWORD PTR [rbp-0x40]
  3bd6d9:	f3 0f 10 4e 08                                  	movss  xmm1,DWORD PTR [rsi+0x8]
  3bd6de:	f3 44 0f 59 c9                                  	mulss  xmm9,xmm1
  3bd6e3:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  3bd6e7:	e8 ac 4b fd ff                                  	call   0x392298
  3bd6ec:	f3 44 0f 10 05 f3 b7 e8 ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffe8b7f3]        # 0x248ee8
  3bd6f5:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd6fa:	f3 44 0f 59 05 19 04 ed ff                      	mulss  xmm8,DWORD PTR [rip+0xffffffffffed0419]        # 0x28db1c
  3bd703:	8b d8                                           	mov    ebx,eax
  3bd705:	e8 2a b2 fb ff                                  	call   0x378934
  3bd70a:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd70f:	0f 28 f0                                        	movaps xmm6,xmm0
  3bd712:	e8 59 b2 fb ff                                  	call   0x378970
  3bd717:	f3 44 0f 10 3d 30 fb ec ff                      	movss  xmm15,DWORD PTR [rip+0xffffffffffecfb30]        # 0x28d250
  3bd720:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bd725:	0f 28 f8                                        	movaps xmm7,xmm0
  3bd728:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd72d:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  3bd731:	f3 41 0f 59 f7                                  	mulss  xmm6,xmm15
  3bd736:	f3 0f 58 74 24 48                               	addss  xmm6,DWORD PTR [rsp+0x48]
  3bd73c:	f3 0f 59 7e 08                                  	mulss  xmm7,DWORD PTR [rsi+0x8]
  3bd741:	f3 0f 58 fe                                     	addss  xmm7,xmm6
  3bd745:	e8 aa b1 fb ff                                  	call   0x3788f4
  3bd74a:	0f 28 cf                                        	movaps xmm1,xmm7
  3bd74d:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bd752:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bd757:	e8 e4 eb f0 ff                                  	call   0x2cc340
  3bd75c:	c7 44 24 38 0c 00 00 00                         	mov    DWORD PTR [rsp+0x38],0xc
  3bd764:	48 8d 45 b0                                     	lea    rax,[rbp-0x50]
  3bd768:	c7 44 24 30 00 00 00 00                         	mov    DWORD PTR [rsp+0x30],0x0
  3bd770:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bd775:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3bd77a:	44 8b cb                                        	mov    r9d,ebx
  3bd77d:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3bd781:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  3bd788:	48 8b cf                                        	mov    rcx,rdi
  3bd78b:	e8 80 3c fe ff                                  	call   0x3a1410
  3bd790:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3bd797:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3bd79b:	f3 0f 10 76 08                                  	movss  xmm6,DWORD PTR [rsi+0x8]
  3bd7a0:	33 c9                                           	xor    ecx,ecx
  3bd7a2:	e8 f1 4a fd ff                                  	call   0x392298
  3bd7a7:	8b d0                                           	mov    edx,eax
  3bd7a9:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd7ad:	e8 22 8d f7 ff                                  	call   0x3364d4
  3bd7b2:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3bd7b6:	b9 08 00 00 00                                  	mov    ecx,0x8
  3bd7bb:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bd7be:	f3 0f 7f 45 b0                                  	movdqu XMMWORD PTR [rbp-0x50],xmm0
  3bd7c3:	e8 d0 4a fd ff                                  	call   0x392298
  3bd7c8:	8b d0                                           	mov    edx,eax
  3bd7ca:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3bd7ce:	e8 01 8d f7 ff                                  	call   0x3364d4
  3bd7d3:	0f 28 de                                        	movaps xmm3,xmm6
  3bd7d6:	4c 8d 45 b0                                     	lea    r8,[rbp-0x50]
  3bd7da:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3bd7de:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3bd7e2:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bd7e5:	f3 0f 7f 45 20                                  	movdqu XMMWORD PTR [rbp+0x20],xmm0
  3bd7ea:	e8 b5 bd fb ff                                  	call   0x3795a4
  3bd7ef:	48 8b c8                                        	mov    rcx,rax
  3bd7f2:	e8 15 20 f3 ff                                  	call   0x2ef80c
  3bd7f7:	f3 0f 10 05 e9 b6 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe8b6e9]        # 0x248ee8
  3bd7ff:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd804:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3bd808:	8b d8                                           	mov    ebx,eax
  3bd80a:	f3 44 0f 59 05 09 03 ed ff                      	mulss  xmm8,DWORD PTR [rip+0xffffffffffed0309]        # 0x28db1c
  3bd813:	f3 0f 59 46 04                                  	mulss  xmm0,DWORD PTR [rsi+0x4]
  3bd818:	f3 44 0f 5c c0                                  	subss  xmm8,xmm0
  3bd81d:	e8 12 b1 fb ff                                  	call   0x378934
  3bd822:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd827:	0f 28 f0                                        	movaps xmm6,xmm0
  3bd82a:	e8 41 b1 fb ff                                  	call   0x378970
  3bd82f:	0f 28 f8                                        	movaps xmm7,xmm0
  3bd832:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bd837:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  3bd83b:	f3 41 0f 59 f7                                  	mulss  xmm6,xmm15
  3bd840:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bd845:	f3 0f 58 74 24 48                               	addss  xmm6,DWORD PTR [rsp+0x48]
  3bd84b:	f3 0f 59 7e 08                                  	mulss  xmm7,DWORD PTR [rsi+0x8]
  3bd850:	f3 0f 58 fe                                     	addss  xmm7,xmm6
  3bd854:	e8 9b b0 fb ff                                  	call   0x3788f4
  3bd859:	0f 28 cf                                        	movaps xmm1,xmm7
  3bd85c:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bd861:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bd866:	e8 d5 ea f0 ff                                  	call   0x2cc340
  3bd86b:	44 8b cb                                        	mov    r9d,ebx
  3bd86e:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  3bd876:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3bd87a:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bd87f:	48 8b cf                                        	mov    rcx,rdi
  3bd882:	e8 ed 1f fe ff                                  	call   0x39f874
  3bd887:	49 8b b7 98 02 00 00                            	mov    rsi,QWORD PTR [r15+0x298]
  3bd88e:	33 d2                                           	xor    edx,edx
  3bd890:	49 8b cc                                        	mov    rcx,r12
  3bd893:	e8 b8 43 fd ff                                  	call   0x391c50
  3bd898:	49 8b ce                                        	mov    rcx,r14
  3bd89b:	48 8b f8                                        	mov    rdi,rax
  3bd89e:	e8 69 1f f3 ff                                  	call   0x2ef80c
  3bd8a3:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bd8a8:	8b d8                                           	mov    ebx,eax
  3bd8aa:	48 8d 4d c8                                     	lea    rcx,[rbp-0x38]
  3bd8ae:	e8 41 b0 fb ff                                  	call   0x3788f4
  3bd8b3:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [rbp+0x14]
  3bd8b8:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bd8bd:	f3 0f 10 4d c8                                  	movss  xmm1,DWORD PTR [rbp-0x38]
  3bd8c2:	f3 41 0f 59 c7                                  	mulss  xmm0,xmm15
  3bd8c7:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bd8cc:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3bd8d0:	e8 6b ea f0 ff                                  	call   0x2cc340
  3bd8d5:	4d 8b cc                                        	mov    r9,r12
  3bd8d8:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  3bd8dd:	44 8b c3                                        	mov    r8d,ebx
  3bd8e0:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bd8e5:	48 8b ce                                        	mov    rcx,rsi
  3bd8e8:	e8 cf 58 fe ff                                  	call   0x3a31bc
  3bd8ed:	f3 44 0f 10 15 6e b9 ee ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffeeb96e]        # 0x2a9264
  3bd8f6:	be 80 00 00 00                                  	mov    esi,0x80
  3bd8fb:	4d 85 ed                                        	test   r13,r13
  3bd8fe:	0f 84 2c 01 00 00                               	je     0x3bda30
  3bd904:	f3 0f 10 05 dc b5 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe8b5dc]        # 0x248ee8
  3bd90c:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bd911:	f3 0f 10 4c 24 48                               	movss  xmm1,DWORD PTR [rsp+0x48]
  3bd917:	f3 0f 10 55 cc                                  	movss  xmm2,DWORD PTR [rbp-0x34]
  3bd91c:	f2 41 0f 10 bf 00 01 00 00                      	movsd  xmm7,QWORD PTR [r15+0x100]
  3bd925:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  3bd92a:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3bd92e:	e8 0d ea f0 ff                                  	call   0x2cc340
  3bd933:	f3 0f 10 35 95 58 ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed5895]        # 0x2931d0
  3bd93b:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bd940:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3bd944:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3bd948:	f2 41 0f 11 87 00 01 00 00                      	movsd  QWORD PTR [r15+0x100],xmm0
  3bd951:	f3 0f 10 0d 8f b5 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8b58f]        # 0x248ee8
  3bd959:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3bd95d:	e8 de e9 f0 ff                                  	call   0x2cc340
  3bd962:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3bd966:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3bd96b:	e8 8c eb ff ff                                  	call   0x3bc4fc
  3bd970:	48 8b c8                                        	mov    rcx,rax
  3bd973:	e8 bc 0e fe ff                                  	call   0x39e834
  3bd978:	48 8b d0                                        	mov    rdx,rax
  3bd97b:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd97f:	e8 48 e9 f0 ff                                  	call   0x2cc2cc
  3bd984:	48 8b c8                                        	mov    rcx,rax
  3bd987:	49 8b d4                                        	mov    rdx,r12
  3bd98a:	e8 1d fe f0 ff                                  	call   0x2cd7ac
  3bd98f:	48 8b c8                                        	mov    rcx,rax
  3bd992:	e8 55 fe f0 ff                                  	call   0x2cd7ec
  3bd997:	48 8b c8                                        	mov    rcx,rax
  3bd99a:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bd99f:	44 8b ce                                        	mov    r9d,esi
  3bd9a2:	45 33 c0                                        	xor    r8d,r8d
  3bd9a5:	e8 d2 0f fd ff                                  	call   0x38e97c
  3bd9aa:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd9ae:	e8 41 eb f0 ff                                  	call   0x2cc4f4
  3bd9b3:	f3 0f 10 0d 2d b5 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8b52d]        # 0x248ee8
  3bd9bb:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bd9c0:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3bd9c4:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3bd9c8:	e8 73 e9 f0 ff                                  	call   0x2cc340
  3bd9cd:	49 8b d4                                        	mov    rdx,r12
  3bd9d0:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bd9d4:	f2 0f 10 30                                     	movsd  xmm6,QWORD PTR [rax]
  3bd9d8:	e8 ef e8 f0 ff                                  	call   0x2cc2cc
  3bd9dd:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3bd9e1:	48 8b d8                                        	mov    rbx,rax
  3bd9e4:	48 8d 4c 24 40                                  	lea    rcx,[rsp+0x40]
  3bd9e9:	e8 16 ec ff ff                                  	call   0x3bc604
  3bd9ee:	48 8b c8                                        	mov    rcx,rax
  3bd9f1:	e8 3e 0e fe ff                                  	call   0x39e834
  3bd9f6:	48 8b d0                                        	mov    rdx,rax
  3bd9f9:	48 8b cb                                        	mov    rcx,rbx
  3bd9fc:	e8 ab fd f0 ff                                  	call   0x2cd7ac
  3bda01:	48 8b c8                                        	mov    rcx,rax
  3bda04:	e8 e3 fd f0 ff                                  	call   0x2cd7ec
  3bda09:	48 8b c8                                        	mov    rcx,rax
  3bda0c:	66 49 0f 7e f0                                  	movq   r8,xmm6
  3bda11:	49 8b d5                                        	mov    rdx,r13
  3bda14:	e8 1f 8a fc ff                                  	call   0x386438
  3bda19:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bda1d:	e8 d2 ea f0 ff                                  	call   0x2cc4f4
  3bda22:	e8 61 30 fd ff                                  	call   0x390a88
  3bda27:	f2 41 0f 11 bf 00 01 00 00                      	movsd  QWORD PTR [r15+0x100],xmm7
  3bda30:	48 8b bd f0 01 00 00                            	mov    rdi,QWORD PTR [rbp+0x1f0]
  3bda37:	48 85 ff                                        	test   rdi,rdi
  3bda3a:	0f 84 0d 02 00 00                               	je     0x3bdc4d
  3bda40:	8b 17                                           	mov    edx,DWORD PTR [rdi]
  3bda42:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bda46:	e8 05 f9 f9 ff                                  	call   0x35d350
  3bda4b:	f2 45 0f 10 8f 00 01 00 00                      	movsd  xmm9,QWORD PTR [r15+0x100]
  3bda54:	f3 45 0f 10 87 10 01 00 00                      	movss  xmm8,DWORD PTR [r15+0x110]
  3bda5d:	f3 41 0f 10 bf 14 01 00 00                      	movss  xmm7,DWORD PTR [r15+0x114]
  3bda66:	e8 41 4c fd ff                                  	call   0x3926ac
  3bda6b:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bda6f:	f3 0f 10 70 10                                  	movss  xmm6,DWORD PTR [rax+0x10]
  3bda74:	f3 0f 59 35 44 57 ed ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffed5744]        # 0x2931c0
  3bda7c:	e8 6b fd f0 ff                                  	call   0x2cd7ec
  3bda81:	f3 0f 10 15 1f 57 ed ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffed571f]        # 0x2931a8
  3bda89:	48 8d 8d f0 01 00 00                            	lea    rcx,[rbp+0x1f0]
  3bda90:	4c 8b c8                                        	mov    r9,rax
  3bda93:	ba 01 00 00 00                                  	mov    edx,0x1
  3bda98:	e8 17 c3 fc ff                                  	call   0x389db4
  3bda9d:	0f 28 d6                                        	movaps xmm2,xmm6
  3bdaa0:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3bdaa4:	48 8b 45 c0                                     	mov    rax,QWORD PTR [rbp-0x40]
  3bdaa8:	f3 0f 10 40 1c                                  	movss  xmm0,DWORD PTR [rax+0x1c]
  3bdaad:	e8 aa 7b f7 ff                                  	call   0x33565c
  3bdab2:	f3 0f 11 40 1c                                  	movss  DWORD PTR [rax+0x1c],xmm0
  3bdab7:	48 8d 95 f0 01 00 00                            	lea    rdx,[rbp+0x1f0]
  3bdabe:	f3 0f 10 15 22 b4 e8 ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffe8b422]        # 0x248ee8
  3bdac6:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bdacb:	f3 0f 10 74 24 48                               	movss  xmm6,DWORD PTR [rsp+0x48]
  3bdad1:	33 c0                                           	xor    eax,eax
  3bdad3:	0f 28 ca                                        	movaps xmm1,xmm2
  3bdad6:	4d 85 ed                                        	test   r13,r13
  3bdad9:	f3 0f 59 0d f3 56 ed ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffed56f3]        # 0x2931d4
  3bdae1:	0f 95 c0                                        	setne  al
  3bdae4:	f3 41 0f 59 d2                                  	mulss  xmm2,xmm10
  3bdae9:	f3 0f 5c f1                                     	subss  xmm6,xmm1
  3bdaed:	66 0f 6e c0                                     	movd   xmm0,eax
  3bdaf1:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3bdaf4:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  3bdaf8:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3bdafc:	e8 f3 ad fb ff                                  	call   0x3788f4
  3bdb01:	f3 0f 10 05 df b3 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe8b3df]        # 0x248ee8
  3bdb09:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bdb0e:	f3 0f 59 05 a2 56 ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed56a2]        # 0x2931b8
  3bdb16:	0f 28 ce                                        	movaps xmm1,xmm6
  3bdb19:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bdb1e:	f3 41 0f 59 c7                                  	mulss  xmm0,xmm15
  3bdb23:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3bdb27:	e8 14 e8 f0 ff                                  	call   0x2cc340
  3bdb2c:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bdb31:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3bdb35:	f2 41 0f 11 87 00 01 00 00                      	movsd  QWORD PTR [r15+0x100],xmm0
  3bdb3e:	f3 0f 10 0d a2 b3 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8b3a2]        # 0x248ee8
  3bdb46:	f3 0f 59 0d 6a 56 ed ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffed566a]        # 0x2931b8
  3bdb4e:	0f 28 d1                                        	movaps xmm2,xmm1
  3bdb51:	e8 ea e7 f0 ff                                  	call   0x2cc340
  3bdb56:	48 8d 95 f0 01 00 00                            	lea    rdx,[rbp+0x1f0]
  3bdb5d:	48 8d 8d f0 01 00 00                            	lea    rcx,[rbp+0x1f0]
  3bdb64:	e8 7f eb ff ff                                  	call   0x3bc6e8
  3bdb69:	48 8b c8                                        	mov    rcx,rax
  3bdb6c:	e8 13 0d fe ff                                  	call   0x39e884
  3bdb71:	48 8b d0                                        	mov    rdx,rax
  3bdb74:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3bdb78:	e8 4f e7 f0 ff                                  	call   0x2cc2cc
  3bdb7d:	48 8b c8                                        	mov    rcx,rax
  3bdb80:	49 8b d4                                        	mov    rdx,r12
  3bdb83:	e8 24 fc f0 ff                                  	call   0x2cd7ac
  3bdb88:	48 8b c8                                        	mov    rcx,rax
  3bdb8b:	e8 5c fc f0 ff                                  	call   0x2cd7ec
  3bdb90:	48 8b c8                                        	mov    rcx,rax
  3bdb93:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bdb98:	44 8b ce                                        	mov    r9d,esi
  3bdb9b:	45 33 c0                                        	xor    r8d,r8d
  3bdb9e:	e8 d9 0d fd ff                                  	call   0x38e97c
  3bdba3:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3bdba7:	e8 48 e9 f0 ff                                  	call   0x2cc4f4
  3bdbac:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3bdbb0:	48 8d 8d f0 01 00 00                            	lea    rcx,[rbp+0x1f0]
  3bdbb7:	e8 d0 eb ff ff                                  	call   0x3bc78c
  3bdbbc:	48 8b c8                                        	mov    rcx,rax
  3bdbbf:	e8 70 0c fe ff                                  	call   0x39e834
  3bdbc4:	48 8b d0                                        	mov    rdx,rax
  3bdbc7:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3bdbcb:	e8 fc e6 f0 ff                                  	call   0x2cc2cc
  3bdbd0:	48 8b c8                                        	mov    rcx,rax
  3bdbd3:	49 8b d4                                        	mov    rdx,r12
  3bdbd6:	e8 d1 fb f0 ff                                  	call   0x2cd7ac
  3bdbdb:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3bdbdf:	48 8b d8                                        	mov    rbx,rax
  3bdbe2:	48 8d 8d f0 01 00 00                            	lea    rcx,[rbp+0x1f0]
  3bdbe9:	e8 b6 eb ff ff                                  	call   0x3bc7a4
  3bdbee:	48 8b c8                                        	mov    rcx,rax
  3bdbf1:	e8 de 0c fe ff                                  	call   0x39e8d4
  3bdbf6:	48 8b d0                                        	mov    rdx,rax
  3bdbf9:	48 8b cb                                        	mov    rcx,rbx
  3bdbfc:	e8 ab fb f0 ff                                  	call   0x2cd7ac
  3bdc01:	48 8b c8                                        	mov    rcx,rax
  3bdc04:	e8 e3 fb f0 ff                                  	call   0x2cd7ec
  3bdc09:	44 8a 85 08 02 00 00                            	mov    r8b,BYTE PTR [rbp+0x208]
  3bdc10:	48 8b c8                                        	mov    rcx,rax
  3bdc13:	48 8b d7                                        	mov    rdx,rdi
  3bdc16:	e8 55 7f fc ff                                  	call   0x385b70
  3bdc1b:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3bdc1f:	e8 d0 e8 f0 ff                                  	call   0x2cc4f4
  3bdc24:	e8 5f 2e fd ff                                  	call   0x390a88
  3bdc29:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bdc2d:	f3 45 0f 11 87 10 01 00 00                      	movss  DWORD PTR [r15+0x110],xmm8
  3bdc36:	f3 41 0f 11 bf 14 01 00 00                      	movss  DWORD PTR [r15+0x114],xmm7
  3bdc3f:	f2 45 0f 11 8f 00 01 00 00                      	movsd  QWORD PTR [r15+0x100],xmm9
  3bdc48:	e8 a7 e8 f0 ff                                  	call   0x2cc4f4
  3bdc4d:	48 8d 95 f0 01 00 00                            	lea    rdx,[rbp+0x1f0]
  3bdc54:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bdc59:	e8 96 ac fb ff                                  	call   0x3788f4
  3bdc5e:	e8 f9 48 fd ff                                  	call   0x39255c
  3bdc63:	48 8b 9d 00 02 00 00                            	mov    rbx,QWORD PTR [rbp+0x200]
  3bdc6a:	48 85 db                                        	test   rbx,rbx
  3bdc6d:	0f 84 6b 01 00 00                               	je     0x3bddde
  3bdc73:	80 3b 00                                        	cmp    BYTE PTR [rbx],0x0
  3bdc76:	0f 84 62 01 00 00                               	je     0x3bddde
  3bdc7c:	f3 0f 10 15 64 b2 e8 ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffe8b264]        # 0x248ee8
  3bdc84:	48 8d 95 f0 01 00 00                            	lea    rdx,[rbp+0x1f0]
  3bdc8b:	f3 0f 10 74 24 48                               	movss  xmm6,DWORD PTR [rsp+0x48]
  3bdc91:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3bdc96:	f2 45 0f 10 8f 00 01 00 00                      	movsd  xmm9,QWORD PTR [r15+0x100]
  3bdc9f:	33 c0                                           	xor    eax,eax
  3bdca1:	f3 45 0f 10 87 10 01 00 00                      	movss  xmm8,DWORD PTR [r15+0x110]
  3bdcaa:	0f 28 ca                                        	movaps xmm1,xmm2
  3bdcad:	f3 0f 59 0d ab b5 ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffeeb5ab]        # 0x2a9260
  3bdcb5:	4d 85 ed                                        	test   r13,r13
  3bdcb8:	f3 0f 59 15 14 55 ed ff                         	mulss  xmm2,DWORD PTR [rip+0xffffffffffed5514]        # 0x2931d4
  3bdcc0:	0f 95 c0                                        	setne  al
  3bdcc3:	f3 41 0f 10 bf 14 01 00 00                      	movss  xmm7,DWORD PTR [r15+0x114]
  3bdccc:	f3 0f 5c f1                                     	subss  xmm6,xmm1
  3bdcd0:	66 0f 6e c0                                     	movd   xmm0,eax
  3bdcd4:	33 c0                                           	xor    eax,eax
  3bdcd6:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3bdcd9:	48 85 ff                                        	test   rdi,rdi
  3bdcdc:	0f 95 c0                                        	setne  al
  3bdcdf:	f3 0f 59 c1                                     	mulss  xmm0,xmm1
  3bdce3:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3bdce7:	66 0f 6e c0                                     	movd   xmm0,eax
  3bdceb:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3bdcee:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  3bdcf2:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3bdcf6:	e8 f9 ab fb ff                                  	call   0x3788f4
  3bdcfb:	f3 0f 10 05 e5 b1 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe8b1e5]        # 0x248ee8
  3bdd03:	48 8d 8d 00 02 00 00                            	lea    rcx,[rbp+0x200]
  3bdd0a:	f3 0f 59 05 a6 54 ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed54a6]        # 0x2931b8
  3bdd12:	0f 28 ce                                        	movaps xmm1,xmm6
  3bdd15:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bdd1a:	f3 41 0f 59 c7                                  	mulss  xmm0,xmm15
  3bdd1f:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3bdd23:	e8 18 e6 f0 ff                                  	call   0x2cc340
  3bdd28:	48 8d 8d 00 02 00 00                            	lea    rcx,[rbp+0x200]
  3bdd2f:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3bdd33:	f2 41 0f 11 87 00 01 00 00                      	movsd  QWORD PTR [r15+0x100],xmm0
  3bdd3c:	f3 0f 10 0d a4 b1 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe8b1a4]        # 0x248ee8
  3bdd44:	f3 0f 59 0d 70 54 ed ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffed5470]        # 0x2931bc
  3bdd4c:	0f 28 d1                                        	movaps xmm2,xmm1
  3bdd4f:	e8 ec e5 f0 ff                                  	call   0x2cc340
  3bdd54:	48 8d 95 f0 01 00 00                            	lea    rdx,[rbp+0x1f0]
  3bdd5b:	48 8d 8d f0 01 00 00                            	lea    rcx,[rbp+0x1f0]
  3bdd62:	e8 5d ea ff ff                                  	call   0x3bc7c4
  3bdd67:	48 8b c8                                        	mov    rcx,rax
  3bdd6a:	e8 8d 0b fe ff                                  	call   0x39e8fc
  3bdd6f:	48 8b d0                                        	mov    rdx,rax
  3bdd72:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bdd76:	e8 51 e5 f0 ff                                  	call   0x2cc2cc
  3bdd7b:	48 8b c8                                        	mov    rcx,rax
  3bdd7e:	49 8b d4                                        	mov    rdx,r12
  3bdd81:	e8 26 fa f0 ff                                  	call   0x2cd7ac
  3bdd86:	48 8b c8                                        	mov    rcx,rax
  3bdd89:	e8 5e fa f0 ff                                  	call   0x2cd7ec
  3bdd8e:	48 8b c8                                        	mov    rcx,rax
  3bdd91:	48 8d 95 00 02 00 00                            	lea    rdx,[rbp+0x200]
  3bdd98:	44 8b ce                                        	mov    r9d,esi
  3bdd9b:	45 33 c0                                        	xor    r8d,r8d
  3bdd9e:	e8 d9 0b fd ff                                  	call   0x38e97c
  3bdda3:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bdda7:	e8 48 e7 f0 ff                                  	call   0x2cc4f4
  3bddac:	4c 8d 05 15 fb ee ff                            	lea    r8,[rip+0xffffffffffeefb15]        # 0x2ad8c8
  3bddb3:	48 8b d3                                        	mov    rdx,rbx
  3bddb6:	49 8b cc                                        	mov    rcx,r12
  3bddb9:	e8 5a c1 fc ff                                  	call   0x389f18
  3bddbe:	e8 c5 2c fd ff                                  	call   0x390a88
  3bddc3:	f3 45 0f 11 87 10 01 00 00                      	movss  DWORD PTR [r15+0x110],xmm8
  3bddcc:	f3 41 0f 11 bf 14 01 00 00                      	movss  DWORD PTR [r15+0x114],xmm7
  3bddd5:	f2 45 0f 11 8f 00 01 00 00                      	movsd  QWORD PTR [r15+0x100],xmm9
  3bddde:	8a 85 f8 01 00 00                               	mov    al,BYTE PTR [rbp+0x1f8]
  3bdde4:	4c 8d 9c 24 a0 02 00 00                         	lea    r11,[rsp+0x2a0]
  3bddec:	49 8b 5b 40                                     	mov    rbx,QWORD PTR [r11+0x40]
  3bddf0:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3bddf5:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3bddfa:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3bddff:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3bde04:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3bde09:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3bde0e:	45 0f 28 7b 90                                  	movaps xmm15,XMMWORD PTR [r11-0x70]
  3bde13:	49 8b e3                                        	mov    rsp,r11
  3bde16:	41 5f                                           	pop    r15
  3bde18:	41 5e                                           	pop    r14
  3bde1a:	41 5d                                           	pop    r13
  3bde1c:	41 5c                                           	pop    r12
  3bde1e:	5f                                              	pop    rdi
  3bde1f:	5e                                              	pop    rsi
  3bde20:	5d                                              	pop    rbp
  3bde21:	c3                                              	ret
