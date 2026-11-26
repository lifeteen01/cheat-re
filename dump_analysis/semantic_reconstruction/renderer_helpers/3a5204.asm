
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a5204 <.data+0x3a5204>:
  3a5204:	40 55                                           	rex push rbp
  3a5206:	53                                              	push   rbx
  3a5207:	56                                              	push   rsi
  3a5208:	57                                              	push   rdi
  3a5209:	41 54                                           	push   r12
  3a520b:	41 55                                           	push   r13
  3a520d:	41 56                                           	push   r14
  3a520f:	41 57                                           	push   r15
  3a5211:	48 81 ec e8 00 00 00                            	sub    rsp,0xe8
  3a5218:	48 8d 6c 24 30                                  	lea    rbp,[rsp+0x30]
  3a521d:	8b 99 48 05 00 00                               	mov    ebx,DWORD PTR [rcx+0x548]
  3a5223:	4c 8d a1 44 05 00 00                            	lea    r12,[rcx+0x544]
  3a522a:	45 8b 3c 24                                     	mov    r15d,DWORD PTR [r12]
  3a522e:	48 8b f9                                        	mov    rdi,rcx
  3a5231:	0f 29 b5 a0 00 00 00                            	movaps XMMWORD PTR [rbp+0xa0],xmm6
  3a5238:	48 8d 4d 38                                     	lea    rcx,[rbp+0x38]
  3a523c:	0f 29 bd 90 00 00 00                            	movaps XMMWORD PTR [rbp+0x90],xmm7
  3a5243:	44 0f 29 85 80 00 00 00                         	movaps XMMWORD PTR [rbp+0x80],xmm8
  3a524b:	44 0f 29 4d 70                                  	movaps XMMWORD PTR [rbp+0x70],xmm9
  3a5250:	42 8d 34 7b                                     	lea    esi,[rbx+r15*2]
  3a5254:	66 41 0f 6e cf                                  	movd   xmm1,r15d
  3a5259:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a525c:	89 5d 00                                        	mov    DWORD PTR [rbp+0x0],ebx
  3a525f:	44 89 7d 08                                     	mov    DWORD PTR [rbp+0x8],r15d
  3a5263:	44 0f 29 55 60                                  	movaps XMMWORD PTR [rbp+0x60],xmm10
  3a5268:	0f 28 d1                                        	movaps xmm2,xmm1
  3a526b:	44 0f 29 5d 50                                  	movaps XMMWORD PTR [rbp+0x50],xmm11
  3a5270:	e8 cb 70 f2 ff                                  	call   0x2cc340
  3a5275:	42 8d 04 3b                                     	lea    eax,[rbx+r15*1]
  3a5279:	66 0f 6e c8                                     	movd   xmm1,eax
  3a527d:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a5281:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a5284:	0f 28 d1                                        	movaps xmm2,xmm1
  3a5287:	e8 b4 70 f2 ff                                  	call   0x2cc340
  3a528c:	8b 97 9c 04 00 00                               	mov    edx,DWORD PTR [rdi+0x49c]
  3a5292:	48 8d 4f 68                                     	lea    rcx,[rdi+0x68]
  3a5296:	e8 01 69 fe ff                                  	call   0x38bb9c
  3a529b:	49 8b cc                                        	mov    rcx,r12
  3a529e:	48 8b d8                                        	mov    rbx,rax
  3a52a1:	44 0f 10 48 08                                  	movups xmm9,XMMWORD PTR [rax+0x8]
  3a52a6:	f2 44 0f 10 50 18                               	movsd  xmm10,QWORD PTR [rax+0x18]
  3a52ac:	e8 db f6 ff ff                                  	call   0x3a498c
  3a52b1:	0f b7 c8                                        	movzx  ecx,ax
  3a52b4:	44 0f b7 f0                                     	movzx  r14d,ax
  3a52b8:	66 03 4b 04                                     	add    cx,WORD PTR [rbx+0x4]
  3a52bc:	66 03 c0                                        	add    ax,ax
  3a52bf:	66 44 03 73 06                                  	add    r14w,WORD PTR [rbx+0x6]
  3a52c4:	48 ba f0 ff ff ff ff ff ff 0f                   	movabs rdx,0xffffffffffffff0
  3a52ce:	66 89 8d 08 01 00 00                            	mov    WORD PTR [rbp+0x108],cx
  3a52d5:	0f b7 0b                                        	movzx  ecx,WORD PTR [rbx]
  3a52d8:	66 2b c8                                        	sub    cx,ax
  3a52db:	66 44 89 b5 00 01 00 00                         	mov    WORD PTR [rbp+0x100],r14w
  3a52e3:	66 89 8d 10 01 00 00                            	mov    WORD PTR [rbp+0x110],cx
  3a52ea:	0f b7 4b 02                                     	movzx  ecx,WORD PTR [rbx+0x2]
  3a52ee:	66 2b c8                                        	sub    cx,ax
  3a52f1:	8b c6                                           	mov    eax,esi
  3a52f3:	0f af c6                                        	imul   eax,esi
  3a52f6:	66 89 8d 18 01 00 00                            	mov    WORD PTR [rbp+0x118],cx
  3a52fd:	48 63 c8                                        	movsxd rcx,eax
  3a5300:	48 c1 e1 02                                     	shl    rcx,0x2
  3a5304:	48 8d 41 0f                                     	lea    rax,[rcx+0xf]
  3a5308:	48 3b c1                                        	cmp    rax,rcx
  3a530b:	77 03                                           	ja     0x3a5310
  3a530d:	48 8b c2                                        	mov    rax,rdx
  3a5310:	48 83 e0 f0                                     	and    rax,0xfffffffffffffff0
  3a5314:	e8 37 7d f2 ff                                  	call   0x2cd050
  3a5319:	f3 44 0f 10 1d 9e 8e ee ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffee8e9e]        # 0x28e1c0
  3a5322:	48 2b e0                                        	sub    rsp,rax
  3a5325:	f3 44 0f 10 05 26 7f ee ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffee7f26]        # 0x28d254
  3a532e:	33 db                                           	xor    ebx,ebx
  3a5330:	4c 8d 6c 24 30                                  	lea    r13,[rsp+0x30]
  3a5335:	85 f6                                           	test   esi,esi
  3a5337:	0f 8e c5 00 00 00                               	jle    0x3a5402
  3a533d:	45 33 e4                                        	xor    r12d,r12d
  3a5340:	66 0f 6e f3                                     	movd   xmm6,ebx
  3a5344:	44 8b f3                                        	mov    r14d,ebx
  3a5347:	44 0f af f6                                     	imul   r14d,esi
  3a534b:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3a534e:	66 41 0f 6e cc                                  	movd   xmm1,r12d
  3a5353:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a5357:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a535a:	0f 28 d6                                        	movaps xmm2,xmm6
  3a535d:	e8 de 6f f2 ff                                  	call   0x2cc340
  3a5362:	48 8b c8                                        	mov    rcx,rax
  3a5365:	4c 8d 45 10                                     	lea    r8,[rbp+0x10]
  3a5369:	48 8d 55 38                                     	lea    rdx,[rbp+0x38]
  3a536d:	e8 5e f0 ff ff                                  	call   0x3a43d0
  3a5372:	f3 0f 10 9f 50 05 00 00                         	movss  xmm3,DWORD PTR [rdi+0x550]
  3a537a:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a537d:	0f 28 d3                                        	movaps xmm2,xmm3
  3a5380:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a5384:	0f 28 c2                                        	movaps xmm0,xmm2
  3a5387:	e8 68 50 fe ff                                  	call   0x38a3f4
  3a538c:	0f 28 e0                                        	movaps xmm4,xmm0
  3a538f:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a5393:	66 0f 6e 87 44 05 00 00                         	movd   xmm0,DWORD PTR [rdi+0x544]
  3a539b:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a539e:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  3a53a2:	e8 4d 50 fe ff                                  	call   0x38a3f4
  3a53a7:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  3a53ab:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3a53af:	0f 28 c4                                        	movaps xmm0,xmm4
  3a53b2:	e8 15 0f fd ff                                  	call   0x3762cc
  3a53b7:	f3 0f 10 8f 4c 05 00 00                         	movss  xmm1,DWORD PTR [rdi+0x54c]
  3a53bf:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a53c3:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3a53c7:	0f 28 c2                                        	movaps xmm0,xmm2
  3a53ca:	e8 bd 11 00 00                                  	call   0x3a658c
  3a53cf:	43 8d 04 26                                     	lea    eax,[r14+r12*1]
  3a53d3:	41 ff c4                                        	inc    r12d
  3a53d6:	48 63 c8                                        	movsxd rcx,eax
  3a53d9:	f3 41 0f 11 44 8d 00                            	movss  DWORD PTR [r13+rcx*4+0x0],xmm0
  3a53e0:	44 3b e6                                        	cmp    r12d,esi
  3a53e3:	0f 8c 65 ff ff ff                               	jl     0x3a534e
  3a53e9:	ff c3                                           	inc    ebx
  3a53eb:	3b de                                           	cmp    ebx,esi
  3a53ed:	0f 8c 4a ff ff ff                               	jl     0x3a533d
  3a53f3:	44 0f b7 b5 00 01 00 00                         	movzx  r14d,WORD PTR [rbp+0x100]
  3a53fb:	4c 8d a7 44 05 00 00                            	lea    r12,[rdi+0x544]
  3a5402:	80 bf 54 05 00 00 00                            	cmp    BYTE PTR [rdi+0x554],0x0
  3a5409:	74 0a                                           	je     0x3a5415
  3a540b:	8b d6                                           	mov    edx,esi
  3a540d:	49 8b cd                                        	mov    rcx,r13
  3a5410:	e8 9f f1 ff ff                                  	call   0x3a45b4
  3a5415:	8b 5f 40                                        	mov    ebx,DWORD PTR [rdi+0x40]
  3a5418:	49 8b cc                                        	mov    rcx,r12
  3a541b:	89 5d 10                                        	mov    DWORD PTR [rbp+0x10],ebx
  3a541e:	e8 35 e4 ff ff                                  	call   0x3a3858
  3a5423:	f3 0f 10 3d b9 82 ee ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffee82b9]        # 0x28d6e4
  3a542b:	45 33 c0                                        	xor    r8d,r8d
  3a542e:	44 8b d0                                        	mov    r10d,eax
  3a5431:	85 c0                                           	test   eax,eax
  3a5433:	7e 7b                                           	jle    0x3a54b0
  3a5435:	44 0f b7 bd 08 01 00 00                         	movzx  r15d,WORD PTR [rbp+0x108]
  3a543d:	45 0f b7 e6                                     	movzx  r12d,r14w
  3a5441:	47 8d 0c 04                                     	lea    r9d,[r12+r8*1]
  3a5445:	45 8b d8                                        	mov    r11d,r8d
  3a5448:	44 0f af cb                                     	imul   r9d,ebx
  3a544c:	33 d2                                           	xor    edx,edx
  3a544e:	44 0f af de                                     	imul   r11d,esi
  3a5452:	45 03 cf                                        	add    r9d,r15d
  3a5455:	4c 8b 77 30                                     	mov    r14,QWORD PTR [rdi+0x30]
  3a5459:	41 8d 04 13                                     	lea    eax,[r11+rdx*1]
  3a545d:	48 63 c8                                        	movsxd rcx,eax
  3a5460:	41 8d 04 11                                     	lea    eax,[r9+rdx*1]
  3a5464:	8b d8                                           	mov    ebx,eax
  3a5466:	f3 41 0f 10 44 8d 00                            	movss  xmm0,DWORD PTR [r13+rcx*4+0x0]
  3a546d:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3a5471:	f3 0f 2c c8                                     	cvttss2si ecx,xmm0
  3a5475:	4d 85 f6                                        	test   r14,r14
  3a5478:	74 06                                           	je     0x3a5480
  3a547a:	42 88 0c 30                                     	mov    BYTE PTR [rax+r14*1],cl
  3a547e:	eb 13                                           	jmp    0x3a5493
  3a5480:	48 8b 47 38                                     	mov    rax,QWORD PTR [rdi+0x38]
  3a5484:	0f b6 c9                                        	movzx  ecx,cl
  3a5487:	c1 e1 18                                        	shl    ecx,0x18
  3a548a:	81 c9 ff ff ff 00                               	or     ecx,0xffffff
  3a5490:	89 0c 98                                        	mov    DWORD PTR [rax+rbx*4],ecx
  3a5493:	ff c2                                           	inc    edx
  3a5495:	41 3b d2                                        	cmp    edx,r10d
  3a5498:	7c bb                                           	jl     0x3a5455
  3a549a:	8b 5d 10                                        	mov    ebx,DWORD PTR [rbp+0x10]
  3a549d:	41 ff c0                                        	inc    r8d
  3a54a0:	45 3b c2                                        	cmp    r8d,r10d
  3a54a3:	7c 9c                                           	jl     0x3a5441
  3a54a5:	44 8b 7d 08                                     	mov    r15d,DWORD PTR [rbp+0x8]
  3a54a9:	4c 8d a7 44 05 00 00                            	lea    r12,[rdi+0x544]
  3a54b0:	44 0f b7 ad 00 01 00 00                         	movzx  r13d,WORD PTR [rbp+0x100]
  3a54b8:	33 db                                           	xor    ebx,ebx
  3a54ba:	0f b7 85 10 01 00 00                            	movzx  eax,WORD PTR [rbp+0x110]
  3a54c1:	45 32 f6                                        	xor    r14b,r14b
  3a54c4:	44 0f b7 85 08 01 00 00                         	movzx  r8d,WORD PTR [rbp+0x108]
  3a54cc:	40 32 f6                                        	xor    sil,sil
  3a54cf:	66 89 45 18                                     	mov    WORD PTR [rbp+0x18],ax
  3a54d3:	8b cb                                           	mov    ecx,ebx
  3a54d5:	0f b7 85 18 01 00 00                            	movzx  eax,WORD PTR [rbp+0x118]
  3a54dc:	66 89 45 1a                                     	mov    WORD PTR [rbp+0x1a],ax
  3a54e0:	b8 ab aa aa aa                                  	mov    eax,0xaaaaaaab
  3a54e5:	f7 e3                                           	mul    ebx
  3a54e7:	44 0f 11 4d 20                                  	movups XMMWORD PTR [rbp+0x20],xmm9
  3a54ec:	f2 44 0f 11 55 30                               	movsd  QWORD PTR [rbp+0x30],xmm10
  3a54f2:	66 44 89 45 1c                                  	mov    WORD PTR [rbp+0x1c],r8w
  3a54f7:	d1 ea                                           	shr    edx,1
  3a54f9:	66 44 89 6d 1e                                  	mov    WORD PTR [rbp+0x1e],r13w
  3a54fe:	8d 04 52                                        	lea    eax,[rdx+rdx*2]
  3a5501:	2b c8                                           	sub    ecx,eax
  3a5503:	74 23                                           	je     0x3a5528
  3a5505:	83 e9 01                                        	sub    ecx,0x1
  3a5508:	74 0d                                           	je     0x3a5517
  3a550a:	83 f9 01                                        	cmp    ecx,0x1
  3a550d:	8b 4d 00                                        	mov    ecx,DWORD PTR [rbp+0x0]
  3a5510:	75 1e                                           	jne    0x3a5530
  3a5512:	41 b6 01                                        	mov    r14b,0x1
  3a5515:	eb 14                                           	jmp    0x3a552b
  3a5517:	8b 4d 00                                        	mov    ecx,DWORD PTR [rbp+0x0]
  3a551a:	43 8d 04 38                                     	lea    eax,[r8+r15*1]
  3a551e:	66 89 45 1c                                     	mov    WORD PTR [rbp+0x1c],ax
  3a5522:	66 89 4d 18                                     	mov    WORD PTR [rbp+0x18],cx
  3a5526:	eb 08                                           	jmp    0x3a5530
  3a5528:	8b 4d 00                                        	mov    ecx,DWORD PTR [rbp+0x0]
  3a552b:	66 44 89 7d 18                                  	mov    WORD PTR [rbp+0x18],r15w
  3a5530:	85 d2                                           	test   edx,edx
  3a5532:	74 0d                                           	je     0x3a5541
  3a5534:	83 ea 01                                        	sub    edx,0x1
  3a5537:	74 4d                                           	je     0x3a5586
  3a5539:	83 fa 01                                        	cmp    edx,0x1
  3a553c:	75 08                                           	jne    0x3a5546
  3a553e:	40 8a f2                                        	mov    sil,dl
  3a5541:	66 44 89 7d 1a                                  	mov    WORD PTR [rbp+0x1a],r15w
  3a5546:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  3a554d:	e8 1e f3 f2 ff                                  	call   0x2d4870
  3a5552:	48 8d 4d 08                                     	lea    rcx,[rbp+0x8]
  3a5556:	e8 15 f3 f2 ff                                  	call   0x2d4870
  3a555b:	4c 8d 4d 08                                     	lea    r9,[rbp+0x8]
  3a555f:	48 8b cf                                        	mov    rcx,rdi
  3a5562:	4c 8d 85 00 01 00 00                            	lea    r8,[rbp+0x100]
  3a5569:	48 8d 55 18                                     	lea    rdx,[rbp+0x18]
  3a556d:	e8 56 e2 ff ff                                  	call   0x3a37c8
  3a5572:	f3 0f 10 55 0c                                  	movss  xmm2,DWORD PTR [rbp+0xc]
  3a5577:	40 84 f6                                        	test   sil,sil
  3a557a:	74 18                                           	je     0x3a5594
  3a557c:	f3 0f 10 85 04 01 00 00                         	movss  xmm0,DWORD PTR [rbp+0x104]
  3a5584:	eb 11                                           	jmp    0x3a5597
  3a5586:	43 8d 04 2f                                     	lea    eax,[r15+r13*1]
  3a558a:	66 89 4d 1a                                     	mov    WORD PTR [rbp+0x1a],cx
  3a558e:	66 89 45 1e                                     	mov    WORD PTR [rbp+0x1e],ax
  3a5592:	eb b2                                           	jmp    0x3a5546
  3a5594:	0f 28 c2                                        	movaps xmm0,xmm2
  3a5597:	f3 0f 10 4d 08                                  	movss  xmm1,DWORD PTR [rbp+0x8]
  3a559c:	45 84 f6                                        	test   r14b,r14b
  3a559f:	74 0a                                           	je     0x3a55ab
  3a55a1:	f3 0f 10 9d 00 01 00 00                         	movss  xmm3,DWORD PTR [rbp+0x100]
  3a55a9:	eb 03                                           	jmp    0x3a55ae
  3a55ab:	0f 28 d9                                        	movaps xmm3,xmm1
  3a55ae:	40 84 f6                                        	test   sil,sil
  3a55b1:	75 08                                           	jne    0x3a55bb
  3a55b3:	f3 0f 10 95 04 01 00 00                         	movss  xmm2,DWORD PTR [rbp+0x104]
  3a55bb:	45 84 f6                                        	test   r14b,r14b
  3a55be:	75 08                                           	jne    0x3a55c8
  3a55c0:	f3 0f 10 8d 00 01 00 00                         	movss  xmm1,DWORD PTR [rbp+0x100]
  3a55c8:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a55cc:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a55d2:	e8 79 6d f2 ff                                  	call   0x2cc350
  3a55d7:	8b cb                                           	mov    ecx,ebx
  3a55d9:	ff c3                                           	inc    ebx
  3a55db:	48 03 c9                                        	add    rcx,rcx
  3a55de:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3a55e1:	f3 0f 7f 84 cf a4 04 00 00                      	movdqu XMMWORD PTR [rdi+rcx*8+0x4a4],xmm0
  3a55ea:	83 fb 09                                        	cmp    ebx,0x9
  3a55ed:	0f 8c c7 fe ff ff                               	jl     0x3a54ba
  3a55f3:	41 8b 1c 24                                     	mov    ebx,DWORD PTR [r12]
  3a55f7:	49 8b cc                                        	mov    rcx,r12
  3a55fa:	8d 34 1b                                        	lea    esi,[rbx+rbx*1]
  3a55fd:	89 b5 18 01 00 00                               	mov    DWORD PTR [rbp+0x118],esi
  3a5603:	e8 2c f1 ff ff                                  	call   0x3a4734
  3a5608:	8b 97 a0 04 00 00                               	mov    edx,DWORD PTR [rdi+0x4a0]
  3a560e:	48 8d 4f 68                                     	lea    rcx,[rdi+0x68]
  3a5612:	44 8b f0                                        	mov    r14d,eax
  3a5615:	89 85 08 01 00 00                               	mov    DWORD PTR [rbp+0x108],eax
  3a561b:	e8 7c 65 fe ff                                  	call   0x38bb9c
  3a5620:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  3a5627:	0f 10 48 10                                     	movups xmm1,XMMWORD PTR [rax+0x10]
  3a562b:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3a562e:	0f 11 4d 28                                     	movups XMMWORD PTR [rbp+0x28],xmm1
  3a5632:	66 0f 6e ce                                     	movd   xmm1,esi
  3a5636:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a5639:	0f 11 45 18                                     	movups XMMWORD PTR [rbp+0x18],xmm0
  3a563d:	f3 0f 59 0d 0b 7c ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffee7c0b]        # 0x28d250
  3a5645:	0f 28 d1                                        	movaps xmm2,xmm1
  3a5648:	e8 f3 6c f2 ff                                  	call   0x2cc340
  3a564d:	0f af db                                        	imul   ebx,ebx
  3a5650:	c1 e3 02                                        	shl    ebx,0x2
  3a5653:	48 63 c3                                        	movsxd rax,ebx
  3a5656:	48 c1 e0 02                                     	shl    rax,0x2
  3a565a:	48 8d 48 0f                                     	lea    rcx,[rax+0xf]
  3a565e:	48 3b c8                                        	cmp    rcx,rax
  3a5661:	77 0a                                           	ja     0x3a566d
  3a5663:	48 b9 f0 ff ff ff ff ff ff 0f                   	movabs rcx,0xffffffffffffff0
  3a566d:	48 83 e1 f0                                     	and    rcx,0xfffffffffffffff0
  3a5671:	48 8b c1                                        	mov    rax,rcx
  3a5674:	e8 d7 79 f2 ff                                  	call   0x2cd050
  3a5679:	48 2b e1                                        	sub    rsp,rcx
  3a567c:	33 db                                           	xor    ebx,ebx
  3a567e:	4c 8d 6c 24 30                                  	lea    r13,[rsp+0x30]
  3a5683:	4c 89 6d 38                                     	mov    QWORD PTR [rbp+0x38],r13
  3a5687:	85 f6                                           	test   esi,esi
  3a5689:	0f 8e c6 00 00 00                               	jle    0x3a5755
  3a568f:	45 33 e4                                        	xor    r12d,r12d
  3a5692:	66 0f 6e f3                                     	movd   xmm6,ebx
  3a5696:	44 8b fb                                        	mov    r15d,ebx
  3a5699:	44 0f af fe                                     	imul   r15d,esi
  3a569d:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3a56a0:	66 41 0f 6e cc                                  	movd   xmm1,r12d
  3a56a5:	48 8d 8d 10 01 00 00                            	lea    rcx,[rbp+0x110]
  3a56ac:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a56af:	0f 28 d6                                        	movaps xmm2,xmm6
  3a56b2:	e8 89 6c f2 ff                                  	call   0x2cc340
  3a56b7:	48 8b c8                                        	mov    rcx,rax
  3a56ba:	48 8d 95 00 01 00 00                            	lea    rdx,[rbp+0x100]
  3a56c1:	e8 e6 ec ff ff                                  	call   0x3a43ac
  3a56c6:	f3 0f 10 9f 50 05 00 00                         	movss  xmm3,DWORD PTR [rdi+0x550]
  3a56ce:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a56d1:	0f 28 d3                                        	movaps xmm2,xmm3
  3a56d4:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a56d8:	0f 28 c2                                        	movaps xmm0,xmm2
  3a56db:	e8 14 4d fe ff                                  	call   0x38a3f4
  3a56e0:	0f 28 e0                                        	movaps xmm4,xmm0
  3a56e3:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3a56e7:	66 0f 6e 87 44 05 00 00                         	movd   xmm0,DWORD PTR [rdi+0x544]
  3a56ef:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a56f2:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  3a56f6:	e8 f9 4c fe ff                                  	call   0x38a3f4
  3a56fb:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  3a56ff:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3a5703:	0f 28 c4                                        	movaps xmm0,xmm4
  3a5706:	e8 c1 0b fd ff                                  	call   0x3762cc
  3a570b:	f3 0f 10 8f 4c 05 00 00                         	movss  xmm1,DWORD PTR [rdi+0x54c]
  3a5713:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3a5717:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3a571b:	0f 28 c2                                        	movaps xmm0,xmm2
  3a571e:	e8 69 0e 00 00                                  	call   0x3a658c
  3a5723:	43 8d 04 27                                     	lea    eax,[r15+r12*1]
  3a5727:	41 ff c4                                        	inc    r12d
  3a572a:	48 63 c8                                        	movsxd rcx,eax
  3a572d:	f3 41 0f 11 44 8d 00                            	movss  DWORD PTR [r13+rcx*4+0x0],xmm0
  3a5734:	44 3b e6                                        	cmp    r12d,esi
  3a5737:	0f 8c 63 ff ff ff                               	jl     0x3a56a0
  3a573d:	ff c3                                           	inc    ebx
  3a573f:	3b de                                           	cmp    ebx,esi
  3a5741:	0f 8c 48 ff ff ff                               	jl     0x3a568f
  3a5747:	44 8b b5 08 01 00 00                            	mov    r14d,DWORD PTR [rbp+0x108]
  3a574e:	4c 8d a7 44 05 00 00                            	lea    r12,[rdi+0x544]
  3a5755:	80 bf 54 05 00 00 00                            	cmp    BYTE PTR [rdi+0x554],0x0
  3a575c:	74 0a                                           	je     0x3a5768
  3a575e:	8b d6                                           	mov    edx,esi
  3a5760:	49 8b cd                                        	mov    rcx,r13
  3a5763:	e8 4c ee ff ff                                  	call   0x3a45b4
  3a5768:	66 41 0f 6e 34 24                               	movd   xmm6,DWORD PTR [r12]
  3a576e:	f3 0f 10 05 d2 49 f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff049d2]        # 0x2aa148
  3a5776:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3a5779:	e8 1e 32 02 00                                  	call   0x3c899c
  3a577e:	49 8b cc                                        	mov    rcx,r12
  3a5781:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3a5785:	f3 44 0f 2c ee                                  	cvttss2si r13d,xmm6
  3a578a:	45 2b 2c 24                                     	sub    r13d,DWORD PTR [r12]
  3a578e:	45 03 ee                                        	add    r13d,r14d
  3a5791:	44 89 ad 00 01 00 00                            	mov    DWORD PTR [rbp+0x100],r13d
  3a5798:	e8 db df ff ff                                  	call   0x3a3778
  3a579d:	49 8b cc                                        	mov    rcx,r12
  3a57a0:	8b d8                                           	mov    ebx,eax
  3a57a2:	e8 c9 df ff ff                                  	call   0x3a3770
  3a57a7:	44 0f b7 7d 1e                                  	movzx  r15d,WORD PTR [rbp+0x1e]
  3a57ac:	44 8b d8                                        	mov    r11d,eax
  3a57af:	44 0f b7 65 1c                                  	movzx  r12d,WORD PTR [rbp+0x1c]
  3a57b4:	45 33 c9                                        	xor    r9d,r9d
  3a57b7:	89 45 08                                        	mov    DWORD PTR [rbp+0x8],eax
  3a57ba:	8b 47 40                                        	mov    eax,DWORD PTR [rdi+0x40]
  3a57bd:	89 85 10 01 00 00                               	mov    DWORD PTR [rbp+0x110],eax
  3a57c3:	45 85 db                                        	test   r11d,r11d
  3a57c6:	0f 8e b7 00 00 00                               	jle    0x3a5883
  3a57cc:	45 33 d2                                        	xor    r10d,r10d
  3a57cf:	85 db                                           	test   ebx,ebx
  3a57d1:	0f 8e 99 00 00 00                               	jle    0x3a5870
  3a57d7:	44 8d 76 ff                                     	lea    r14d,[rsi-0x1]
  3a57db:	41 8b c9                                        	mov    ecx,r9d
  3a57de:	41 2b cd                                        	sub    ecx,r13d
  3a57e1:	45 8b c6                                        	mov    r8d,r14d
  3a57e4:	33 d2                                           	xor    edx,edx
  3a57e6:	e8 c1 0a fd ff                                  	call   0x3762ac
  3a57eb:	4c 8b 5d 38                                     	mov    r11,QWORD PTR [rbp+0x38]
  3a57ef:	4c 63 e8                                        	movsxd r13,eax
  3a57f2:	48 63 c6                                        	movsxd rax,esi
  3a57f5:	8b b5 00 01 00 00                               	mov    esi,DWORD PTR [rbp+0x100]
  3a57fb:	4c 0f af e8                                     	imul   r13,rax
  3a57ff:	41 8b ca                                        	mov    ecx,r10d
  3a5802:	45 8b c6                                        	mov    r8d,r14d
  3a5805:	2b ce                                           	sub    ecx,esi
  3a5807:	33 d2                                           	xor    edx,edx
  3a5809:	e8 9e 0a fd ff                                  	call   0x3762ac
  3a580e:	48 98                                           	cdqe
  3a5810:	43 8d 0c 39                                     	lea    ecx,[r9+r15*1]
  3a5814:	0f af 8d 10 01 00 00                            	imul   ecx,DWORD PTR [rbp+0x110]
  3a581b:	49 03 c5                                        	add    rax,r13
  3a581e:	f3 41 0f 10 04 83                               	movss  xmm0,DWORD PTR [r11+rax*4]
  3a5824:	48 8b 47 30                                     	mov    rax,QWORD PTR [rdi+0x30]
  3a5828:	41 03 ca                                        	add    ecx,r10d
  3a582b:	41 03 cc                                        	add    ecx,r12d
  3a582e:	f3 0f 59 c7                                     	mulss  xmm0,xmm7
  3a5832:	44 8b c1                                        	mov    r8d,ecx
  3a5835:	f3 0f 2c d0                                     	cvttss2si edx,xmm0
  3a5839:	48 85 c0                                        	test   rax,rax
  3a583c:	74 05                                           	je     0x3a5843
  3a583e:	88 14 01                                        	mov    BYTE PTR [rcx+rax*1],dl
  3a5841:	eb 14                                           	jmp    0x3a5857
  3a5843:	48 8b 47 38                                     	mov    rax,QWORD PTR [rdi+0x38]
  3a5847:	0f b6 ca                                        	movzx  ecx,dl
  3a584a:	c1 e1 18                                        	shl    ecx,0x18
  3a584d:	81 c9 ff ff ff 00                               	or     ecx,0xffffff
  3a5853:	42 89 0c 80                                     	mov    DWORD PTR [rax+r8*4],ecx
  3a5857:	41 ff c2                                        	inc    r10d
  3a585a:	44 3b d3                                        	cmp    r10d,ebx
  3a585d:	7c a0                                           	jl     0x3a57ff
  3a585f:	8b b5 18 01 00 00                               	mov    esi,DWORD PTR [rbp+0x118]
  3a5865:	44 8b 5d 08                                     	mov    r11d,DWORD PTR [rbp+0x8]
  3a5869:	44 8b ad 00 01 00 00                            	mov    r13d,DWORD PTR [rbp+0x100]
  3a5870:	41 ff c1                                        	inc    r9d
  3a5873:	45 3b cb                                        	cmp    r9d,r11d
  3a5876:	0f 8c 50 ff ff ff                               	jl     0x3a57cc
  3a587c:	44 8b b5 08 01 00 00                            	mov    r14d,DWORD PTR [rbp+0x108]
  3a5883:	66 45 03 e6                                     	add    r12w,r14w
  3a5887:	48 8d 8d 08 01 00 00                            	lea    rcx,[rbp+0x108]
  3a588e:	66 45 03 fe                                     	add    r15w,r14w
  3a5892:	66 44 89 65 1c                                  	mov    WORD PTR [rbp+0x1c],r12w
  3a5897:	66 45 03 f6                                     	add    r14w,r14w
  3a589b:	66 44 89 7d 1e                                  	mov    WORD PTR [rbp+0x1e],r15w
  3a58a0:	66 45 2b de                                     	sub    r11w,r14w
  3a58a4:	66 41 2b de                                     	sub    bx,r14w
  3a58a8:	66 89 5d 18                                     	mov    WORD PTR [rbp+0x18],bx
  3a58ac:	66 44 89 5d 1a                                  	mov    WORD PTR [rbp+0x1a],r11w
  3a58b1:	e8 ba ef f2 ff                                  	call   0x2d4870
  3a58b6:	48 8d 8d 00 01 00 00                            	lea    rcx,[rbp+0x100]
  3a58bd:	e8 ae ef f2 ff                                  	call   0x2d4870
  3a58c2:	4c 8d 8d 00 01 00 00                            	lea    r9,[rbp+0x100]
  3a58c9:	48 8b cf                                        	mov    rcx,rdi
  3a58cc:	4c 8d 85 08 01 00 00                            	lea    r8,[rbp+0x108]
  3a58d3:	48 8d 55 18                                     	lea    rdx,[rbp+0x18]
  3a58d7:	e8 ec de ff ff                                  	call   0x3a37c8
  3a58dc:	f3 0f 10 85 04 01 00 00                         	movss  xmm0,DWORD PTR [rbp+0x104]
  3a58e4:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a58e8:	f3 0f 10 9d 00 01 00 00                         	movss  xmm3,DWORD PTR [rbp+0x100]
  3a58f0:	f3 0f 10 95 0c 01 00 00                         	movss  xmm2,DWORD PTR [rbp+0x10c]
  3a58f8:	f3 0f 10 8d 08 01 00 00                         	movss  xmm1,DWORD PTR [rbp+0x108]
  3a5900:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a5906:	e8 45 6a f2 ff                                  	call   0x2cc350
  3a590b:	0f 28 b5 a0 00 00 00                            	movaps xmm6,XMMWORD PTR [rbp+0xa0]
  3a5912:	0f 28 bd 90 00 00 00                            	movaps xmm7,XMMWORD PTR [rbp+0x90]
  3a5919:	44 0f 28 85 80 00 00 00                         	movaps xmm8,XMMWORD PTR [rbp+0x80]
  3a5921:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3a5924:	44 0f 28 4d 70                                  	movaps xmm9,XMMWORD PTR [rbp+0x70]
  3a5929:	44 0f 28 55 60                                  	movaps xmm10,XMMWORD PTR [rbp+0x60]
  3a592e:	44 0f 28 5d 50                                  	movaps xmm11,XMMWORD PTR [rbp+0x50]
  3a5933:	f3 0f 7f 87 34 05 00 00                         	movdqu XMMWORD PTR [rdi+0x534],xmm0
  3a593b:	48 8d a5 b8 00 00 00                            	lea    rsp,[rbp+0xb8]
  3a5942:	41 5f                                           	pop    r15
  3a5944:	41 5e                                           	pop    r14
  3a5946:	41 5d                                           	pop    r13
  3a5948:	41 5c                                           	pop    r12
  3a594a:	5f                                              	pop    rdi
  3a594b:	5e                                              	pop    rsi
  3a594c:	5b                                              	pop    rbx
  3a594d:	5d                                              	pop    rbp
  3a594e:	c3                                              	ret
