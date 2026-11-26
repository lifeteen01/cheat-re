
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035c30c <.data+0x35c30c>:
  35c30c:	48 8b c4                                        	mov    rax,rsp
  35c30f:	53                                              	push   rbx
  35c310:	55                                              	push   rbp
  35c311:	56                                              	push   rsi
  35c312:	57                                              	push   rdi
  35c313:	41 56                                           	push   r14
  35c315:	48 81 ec b0 00 00 00                            	sub    rsp,0xb0
  35c31c:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  35c320:	49 8b f8                                        	mov    rdi,r8
  35c323:	0f 29 78 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm7
  35c327:	48 8b f2                                        	mov    rsi,rdx
  35c32a:	44 0f 29 40 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm8
  35c32f:	44 0f 29 48 98                                  	movaps XMMWORD PTR [rax-0x68],xmm9
  35c334:	44 0f 29 50 88                                  	movaps XMMWORD PTR [rax-0x78],xmm10
  35c339:	44 0f 29 5c 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm11
  35c33f:	44 0f 29 64 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm12
  35c345:	41 8b d9                                        	mov    ebx,r9d
  35c348:	e8 b3 0e 00 00                                  	call   0x35d200
  35c34d:	f3 0f 10 35 8f 13 f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff3138f]        # 0x28d6e4
  35c355:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c35a:	48 8b e8                                        	mov    rbp,rax
  35c35d:	0f 57 c0                                        	xorps  xmm0,xmm0
  35c360:	8b c3                                           	mov    eax,ebx
  35c362:	0f 57 db                                        	xorps  xmm3,xmm3
  35c365:	c1 e8 18                                        	shr    eax,0x18
  35c368:	0f 57 d2                                        	xorps  xmm2,xmm2
  35c36b:	0f 57 c9                                        	xorps  xmm1,xmm1
  35c36e:	f3 48 0f 2a c0                                  	cvtsi2ss xmm0,rax
  35c373:	8b c3                                           	mov    eax,ebx
  35c375:	c1 e8 10                                        	shr    eax,0x10
  35c378:	0f b6 c0                                        	movzx  eax,al
  35c37b:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35c380:	8b c3                                           	mov    eax,ebx
  35c382:	c1 e8 08                                        	shr    eax,0x8
  35c385:	0f b6 c0                                        	movzx  eax,al
  35c388:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  35c38c:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35c391:	0f b6 c3                                        	movzx  eax,bl
  35c394:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35c399:	f3 0f 5e de                                     	divss  xmm3,xmm6
  35c39d:	f3 0f 5e ce                                     	divss  xmm1,xmm6
  35c3a1:	f3 0f 5e d6                                     	divss  xmm2,xmm6
  35c3a5:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35c3ab:	e8 a0 ff f6 ff                                  	call   0x2cc350
  35c3b0:	48 8b c8                                        	mov    rcx,rax
  35c3b3:	e8 a8 5e 03 00                                  	call   0x392260
  35c3b8:	80 bc 24 10 01 00 00 00                         	cmp    BYTE PTR [rsp+0x110],0x0
  35c3c0:	44 8b f0                                        	mov    r14d,eax
  35c3c3:	f3 0f 10 bc 24 00 01 00 00                      	movss  xmm7,DWORD PTR [rsp+0x100]
  35c3cc:	f3 44 0f 10 05 7f 0e f3 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff30e7f]        # 0x28d254
  35c3d5:	0f 84 fc 00 00 00                               	je     0x35c4d7
  35c3db:	8b 94 24 20 01 00 00                            	mov    edx,DWORD PTR [rsp+0x120]
  35c3e2:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  35c3e6:	8b c2                                           	mov    eax,edx
  35c3e8:	8b ca                                           	mov    ecx,edx
  35c3ea:	c1 e8 08                                        	shr    eax,0x8
  35c3ed:	45 0f 57 db                                     	xorps  xmm11,xmm11
  35c3f1:	0f b6 c0                                        	movzx  eax,al
  35c3f4:	45 0f 57 c9                                     	xorps  xmm9,xmm9
  35c3f8:	c1 e9 10                                        	shr    ecx,0x10
  35c3fb:	0f 57 c0                                        	xorps  xmm0,xmm0
  35c3fe:	0f b6 c9                                        	movzx  ecx,cl
  35c401:	f3 4c 0f 2a d0                                  	cvtsi2ss xmm10,rax
  35c406:	0f b6 c2                                        	movzx  eax,dl
  35c409:	c1 ea 18                                        	shr    edx,0x18
  35c40c:	f3 4c 0f 2a d8                                  	cvtsi2ss xmm11,rax
  35c411:	8b c2                                           	mov    eax,edx
  35c413:	f3 4c 0f 2a c9                                  	cvtsi2ss xmm9,rcx
  35c418:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c41d:	f3 48 0f 2a c0                                  	cvtsi2ss xmm0,rax
  35c422:	f3 44 0f 5e ce                                  	divss  xmm9,xmm6
  35c427:	f3 44 0f 5e d6                                  	divss  xmm10,xmm6
  35c42c:	f3 44 0f 5e de                                  	divss  xmm11,xmm6
  35c431:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  35c435:	41 0f 28 d9                                     	movaps xmm3,xmm9
  35c439:	41 0f 28 d2                                     	movaps xmm2,xmm10
  35c43d:	41 0f 28 cb                                     	movaps xmm1,xmm11
  35c441:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35c447:	e8 04 ff f6 ff                                  	call   0x2cc350
  35c44c:	48 8b c8                                        	mov    rcx,rax
  35c44f:	e8 0c 5e 03 00                                  	call   0x392260
  35c454:	f3 44 0f 10 a4 24 18 01 00 00                   	movss  xmm12,DWORD PTR [rsp+0x118]
  35c45e:	bb 01 00 00 00                                  	mov    ebx,0x1
  35c463:	45 0f 2f e0                                     	comiss xmm12,xmm8
  35c467:	72 6e                                           	jb     0x35c4d7
  35c469:	f3 0f 10 05 37 6c f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff36c37]        # 0x2930a8
  35c471:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c476:	66 0f 6e f3                                     	movd   xmm6,ebx
  35c47a:	41 0f 28 d9                                     	movaps xmm3,xmm9
  35c47e:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  35c481:	41 0f 28 d2                                     	movaps xmm2,xmm10
  35c485:	41 0f 28 cb                                     	movaps xmm1,xmm11
  35c489:	f3 0f 5e c6                                     	divss  xmm0,xmm6
  35c48d:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35c493:	e8 b8 fe f6 ff                                  	call   0x2cc350
  35c498:	48 8b c8                                        	mov    rcx,rax
  35c49b:	e8 c0 5d 03 00                                  	call   0x392260
  35c4a0:	f3 0f 59 b4 24 28 01 00 00                      	mulss  xmm6,DWORD PTR [rsp+0x128]
  35c4a9:	44 8b c8                                        	mov    r9d,eax
  35c4ac:	48 8b 8d 98 02 00 00                            	mov    rcx,QWORD PTR [rbp+0x298]
  35c4b3:	4c 8b c7                                        	mov    r8,rdi
  35c4b6:	48 8b d6                                        	mov    rdx,rsi
  35c4b9:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  35c4bd:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  35c4c3:	e8 2c 3d 04 00                                  	call   0x3a01f4
  35c4c8:	ff c3                                           	inc    ebx
  35c4ca:	66 0f 6e c3                                     	movd   xmm0,ebx
  35c4ce:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  35c4d1:	44 0f 2f e0                                     	comiss xmm12,xmm0
  35c4d5:	73 92                                           	jae    0x35c469
  35c4d7:	80 bc 24 08 01 00 00 00                         	cmp    BYTE PTR [rsp+0x108],0x0
  35c4df:	74 45                                           	je     0x35c526
  35c4e1:	0f 57 db                                        	xorps  xmm3,xmm3
  35c4e4:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  35c4eb:	0f 57 d2                                        	xorps  xmm2,xmm2
  35c4ee:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c4f3:	0f 57 c9                                        	xorps  xmm1,xmm1
  35c4f6:	e8 55 fe f6 ff                                  	call   0x2cc350
  35c4fb:	48 8b c8                                        	mov    rcx,rax
  35c4fe:	e8 5d 5d 03 00                                  	call   0x392260
  35c503:	48 8b 8d 98 02 00 00                            	mov    rcx,QWORD PTR [rbp+0x298]
  35c50a:	0f 28 c7                                        	movaps xmm0,xmm7
  35c50d:	f3 41 0f 58 c0                                  	addss  xmm0,xmm8
  35c512:	44 8b c8                                        	mov    r9d,eax
  35c515:	4c 8b c7                                        	mov    r8,rdi
  35c518:	48 8b d6                                        	mov    rdx,rsi
  35c51b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35c521:	e8 ce 3c 04 00                                  	call   0x3a01f4
  35c526:	48 8b 8d 98 02 00 00                            	mov    rcx,QWORD PTR [rbp+0x298]
  35c52d:	45 8b ce                                        	mov    r9d,r14d
  35c530:	4c 8b c7                                        	mov    r8,rdi
  35c533:	f3 0f 11 bc 24 00 01 00 00                      	movss  DWORD PTR [rsp+0x100],xmm7
  35c53c:	48 8b d6                                        	mov    rdx,rsi
  35c53f:	4c 8d 9c 24 b0 00 00 00                         	lea    r11,[rsp+0xb0]
  35c547:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35c54c:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  35c551:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  35c556:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  35c55b:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  35c560:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  35c565:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  35c56a:	49 8b e3                                        	mov    rsp,r11
  35c56d:	41 5e                                           	pop    r14
  35c56f:	5f                                              	pop    rdi
  35c570:	5e                                              	pop    rsi
  35c571:	5d                                              	pop    rbp
  35c572:	5b                                              	pop    rbx
  35c573:	e9 7c 3c 04 00                                  	jmp    0x3a01f4
