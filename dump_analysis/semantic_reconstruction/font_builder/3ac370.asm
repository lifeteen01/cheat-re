
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac370 <.data+0x3ac370>:
  3ac370:	48 8b c4                                        	mov    rax,rsp
  3ac373:	48 89 58 18                                     	mov    QWORD PTR [rax+0x18],rbx
  3ac377:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3ac37b:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3ac37f:	55                                              	push   rbp
  3ac380:	56                                              	push   rsi
  3ac381:	57                                              	push   rdi
  3ac382:	41 54                                           	push   r12
  3ac384:	41 55                                           	push   r13
  3ac386:	41 56                                           	push   r14
  3ac388:	41 57                                           	push   r15
  3ac38a:	48 83 ec 50                                     	sub    rsp,0x50
  3ac38e:	83 bc 24 e0 00 00 00 00                         	cmp    DWORD PTR [rsp+0xe0],0x0
  3ac396:	41 8b f9                                        	mov    edi,r9d
  3ac399:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3ac39d:	4d 8b f0                                        	mov    r14,r8
  3ac3a0:	f3 0f 10 b4 24 b8 00 00 00                      	movss  xmm6,DWORD PTR [rsp+0xb8]
  3ac3a9:	4c 8b e2                                        	mov    r12,rdx
  3ac3ac:	74 07                                           	je     0x3ac3b5
  3ac3ae:	0f 57 35 eb 6e ee ff                            	xorps  xmm6,XMMWORD PTR [rip+0xffffffffffee6eeb]        # 0x2932a0
  3ac3b5:	33 d2                                           	xor    edx,edx
  3ac3b7:	33 c9                                           	xor    ecx,ecx
  3ac3b9:	85 ff                                           	test   edi,edi
  3ac3bb:	7e 0a                                           	jle    0x3ac3c7
  3ac3bd:	41 03 14 88                                     	add    edx,DWORD PTR [r8+rcx*4]
  3ac3c1:	ff c1                                           	inc    ecx
  3ac3c3:	3b cf                                           	cmp    ecx,edi
  3ac3c5:	7c f6                                           	jl     0x3ac3bd
  3ac3c7:	48 63 c2                                        	movsxd rax,edx
  3ac3ca:	48 8d 0c 80                                     	lea    rcx,[rax+rax*4]
  3ac3ce:	48 8d 0c 8d 14 00 00 00                         	lea    rcx,[rcx*4+0x14]
  3ac3d6:	e8 7d 8d fe ff                                  	call   0x395158
  3ac3db:	48 8b d8                                        	mov    rbx,rax
  3ac3de:	48 85 c0                                        	test   rax,rax
  3ac3e1:	0f 84 78 01 00 00                               	je     0x3ac55f
  3ac3e7:	33 f6                                           	xor    esi,esi
  3ac3e9:	45 33 ff                                        	xor    r15d,r15d
  3ac3ec:	33 d2                                           	xor    edx,edx
  3ac3ee:	85 ff                                           	test   edi,edi
  3ac3f0:	0f 8e 1b 01 00 00                               	jle    0x3ac511
  3ac3f6:	49 63 c7                                        	movsxd rax,r15d
  3ac3f9:	33 c9                                           	xor    ecx,ecx
  3ac3fb:	4d 8d 0c c4                                     	lea    r9,[r12+rax*8]
  3ac3ff:	41 8b 04 96                                     	mov    eax,DWORD PTR [r14+rdx*4]
  3ac403:	44 03 f8                                        	add    r15d,eax
  3ac406:	44 8d 40 ff                                     	lea    r8d,[rax-0x1]
  3ac40a:	85 c0                                           	test   eax,eax
  3ac40c:	0f 8e f5 00 00 00                               	jle    0x3ac507
  3ac412:	4d 63 d8                                        	movsxd r11,r8d
  3ac415:	48 63 e9                                        	movsxd rbp,ecx
  3ac418:	f3 43 0f 10 44 d9 04                            	movss  xmm0,DWORD PTR [r9+r11*8+0x4]
  3ac41f:	41 0f 2e 44 e9 04                               	ucomiss xmm0,DWORD PTR [r9+rbp*8+0x4]
  3ac425:	7a 06                                           	jp     0x3ac42d
  3ac427:	0f 84 c3 00 00 00                               	je     0x3ac4f0
  3ac42d:	48 63 c6                                        	movsxd rax,esi
  3ac430:	44 8b e1                                        	mov    r12d,ecx
  3ac433:	4c 8d 14 80                                     	lea    r10,[rax+rax*4]
  3ac437:	33 c0                                           	xor    eax,eax
  3ac439:	42 c7 44 93 10 00 00 00 00                      	mov    DWORD PTR [rbx+r10*4+0x10],0x0
  3ac442:	f3 43 0f 10 44 d9 04                            	movss  xmm0,DWORD PTR [r9+r11*8+0x4]
  3ac449:	f3 41 0f 10 4c e9 04                            	movss  xmm1,DWORD PTR [r9+rbp*8+0x4]
  3ac450:	39 84 24 e0 00 00 00                            	cmp    DWORD PTR [rsp+0xe0],eax
  3ac457:	74 05                                           	je     0x3ac45e
  3ac459:	0f 2f c1                                        	comiss xmm0,xmm1
  3ac45c:	eb 03                                           	jmp    0x3ac461
  3ac45e:	0f 2f c8                                        	comiss xmm1,xmm0
  3ac461:	0f 97 c0                                        	seta   al
  3ac464:	85 c0                                           	test   eax,eax
  3ac466:	74 0f                                           	je     0x3ac477
  3ac468:	45 8b e0                                        	mov    r12d,r8d
  3ac46b:	42 c7 44 93 10 01 00 00 00                      	mov    DWORD PTR [rbx+r10*4+0x10],0x1
  3ac474:	44 8b c1                                        	mov    r8d,ecx
  3ac477:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xb0]
  3ac480:	0f 28 ce                                        	movaps xmm1,xmm6
  3ac483:	49 63 c4                                        	movsxd rax,r12d
  3ac486:	ff c6                                           	inc    esi
  3ac488:	f3 41 0f 59 04 c1                               	mulss  xmm0,DWORD PTR [r9+rax*8]
  3ac48e:	f3 0f 58 84 24 c0 00 00 00                      	addss  xmm0,DWORD PTR [rsp+0xc0]
  3ac497:	f3 42 0f 11 04 93                               	movss  DWORD PTR [rbx+r10*4],xmm0
  3ac49d:	f3 41 0f 59 4c c1 04                            	mulss  xmm1,DWORD PTR [r9+rax*8+0x4]
  3ac4a4:	49 63 c0                                        	movsxd rax,r8d
  3ac4a7:	f3 0f 10 84 24 b0 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xb0]
  3ac4b0:	f3 0f 58 8c 24 c8 00 00 00                      	addss  xmm1,DWORD PTR [rsp+0xc8]
  3ac4b9:	f3 42 0f 11 4c 93 04                            	movss  DWORD PTR [rbx+r10*4+0x4],xmm1
  3ac4c0:	0f 28 ce                                        	movaps xmm1,xmm6
  3ac4c3:	f3 41 0f 59 04 c1                               	mulss  xmm0,DWORD PTR [r9+rax*8]
  3ac4c9:	f3 0f 58 84 24 c0 00 00 00                      	addss  xmm0,DWORD PTR [rsp+0xc0]
  3ac4d2:	f3 42 0f 11 44 93 08                            	movss  DWORD PTR [rbx+r10*4+0x8],xmm0
  3ac4d9:	f3 41 0f 59 4c c1 04                            	mulss  xmm1,DWORD PTR [r9+rax*8+0x4]
  3ac4e0:	f3 0f 58 8c 24 c8 00 00 00                      	addss  xmm1,DWORD PTR [rsp+0xc8]
  3ac4e9:	f3 42 0f 11 4c 93 0c                            	movss  DWORD PTR [rbx+r10*4+0xc],xmm1
  3ac4f0:	44 8b c1                                        	mov    r8d,ecx
  3ac4f3:	ff c1                                           	inc    ecx
  3ac4f5:	41 3b 0c 96                                     	cmp    ecx,DWORD PTR [r14+rdx*4]
  3ac4f9:	0f 8c 13 ff ff ff                               	jl     0x3ac412
  3ac4ff:	4c 8b a4 24 98 00 00 00                         	mov    r12,QWORD PTR [rsp+0x98]
  3ac507:	ff c2                                           	inc    edx
  3ac509:	3b d7                                           	cmp    edx,edi
  3ac50b:	0f 8c e5 fe ff ff                               	jl     0x3ac3f6
  3ac511:	8b d6                                           	mov    edx,esi
  3ac513:	48 8b cb                                        	mov    rcx,rbx
  3ac516:	e8 b5 0d 00 00                                  	call   0x3ad2d0
  3ac51b:	48 8b 84 24 e8 00 00 00                         	mov    rax,QWORD PTR [rsp+0xe8]
  3ac523:	41 b9 01 00 00 00                               	mov    r9d,0x1
  3ac529:	48 8b 8c 24 90 00 00 00                         	mov    rcx,QWORD PTR [rsp+0x90]
  3ac531:	44 8b c6                                        	mov    r8d,esi
  3ac534:	48 89 44 24 30                                  	mov    QWORD PTR [rsp+0x30],rax
  3ac539:	48 8b d3                                        	mov    rdx,rbx
  3ac53c:	8b 84 24 d8 00 00 00                            	mov    eax,DWORD PTR [rsp+0xd8]
  3ac543:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3ac547:	8b 84 24 d0 00 00 00                            	mov    eax,DWORD PTR [rsp+0xd0]
  3ac54e:	89 44 24 20                                     	mov    DWORD PTR [rsp+0x20],eax
  3ac552:	e8 25 00 00 00                                  	call   0x3ac57c
  3ac557:	48 8b cb                                        	mov    rcx,rbx
  3ac55a:	e8 1d 8c fe ff                                  	call   0x39517c
  3ac55f:	48 8b 9c 24 a0 00 00 00                         	mov    rbx,QWORD PTR [rsp+0xa0]
  3ac567:	0f 28 74 24 40                                  	movaps xmm6,XMMWORD PTR [rsp+0x40]
  3ac56c:	48 83 c4 50                                     	add    rsp,0x50
  3ac570:	41 5f                                           	pop    r15
  3ac572:	41 5e                                           	pop    r14
  3ac574:	41 5d                                           	pop    r13
  3ac576:	41 5c                                           	pop    r12
  3ac578:	5f                                              	pop    rdi
  3ac579:	5e                                              	pop    rsi
  3ac57a:	5d                                              	pop    rbp
  3ac57b:	c3                                              	ret
