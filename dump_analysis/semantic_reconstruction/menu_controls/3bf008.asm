
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003bf008 <.data+0x3bf008>:
  3bf008:	48 8b c4                                        	mov    rax,rsp
  3bf00b:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  3bf00f:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3bf013:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3bf017:	55                                              	push   rbp
  3bf018:	53                                              	push   rbx
  3bf019:	56                                              	push   rsi
  3bf01a:	57                                              	push   rdi
  3bf01b:	41 54                                           	push   r12
  3bf01d:	41 55                                           	push   r13
  3bf01f:	41 56                                           	push   r14
  3bf021:	41 57                                           	push   r15
  3bf023:	48 8d a8 e8 fd ff ff                            	lea    rbp,[rax-0x218]
  3bf02a:	48 81 ec d8 02 00 00                            	sub    rsp,0x2d8
  3bf031:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3bf035:	49 8b f0                                        	mov    rsi,r8
  3bf038:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3bf03c:	4c 8b fa                                        	mov    r15,rdx
  3bf03f:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3bf044:	4c 8b f1                                        	mov    r14,rcx
  3bf047:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  3bf04f:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  3bf057:	44 0f 29 98 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm11
  3bf05f:	e8 9c e1 f9 ff                                  	call   0x35d200
  3bf064:	45 33 c0                                        	xor    r8d,r8d
  3bf067:	48 89 45 90                                     	mov    QWORD PTR [rbp-0x70],rax
  3bf06b:	49 8b d6                                        	mov    rdx,r14
  3bf06e:	48 8b c8                                        	mov    rcx,rax
  3bf071:	48 8b d8                                        	mov    rbx,rax
  3bf074:	e8 9b 35 fd ff                                  	call   0x392614
  3bf079:	8b f8                                           	mov    edi,eax
  3bf07b:	e8 24 3c fd ff                                  	call   0x392ca4
  3bf080:	0f 57 c0                                        	xorps  xmm0,xmm0
  3bf083:	48 89 44 24 58                                  	mov    QWORD PTR [rsp+0x58],rax
  3bf088:	48 8d 4d c4                                     	lea    rcx,[rbp-0x3c]
  3bf08c:	c7 45 c0 00 00 00 00                            	mov    DWORD PTR [rbp-0x40],0x0
  3bf093:	0f 11 45 b0                                     	movups XMMWORD PTR [rbp-0x50],xmm0
  3bf097:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  3bf09b:	e8 5c fc f2 ff                                  	call   0x2eecfc
  3bf0a0:	48 8d 4d d4                                     	lea    rcx,[rbp-0x2c]
  3bf0a4:	e8 53 fc f2 ff                                  	call   0x2eecfc
  3bf0a9:	0f 10 45 b0                                     	movups xmm0,XMMWORD PTR [rbp-0x50]
  3bf0ad:	0f b7 45 e5                                     	movzx  eax,WORD PTR [rbp-0x1b]
  3bf0b1:	4c 8d 45 00                                     	lea    r8,[rbp+0x0]
  3bf0b5:	0f 10 4d c4                                     	movups xmm1,XMMWORD PTR [rbp-0x3c]
  3bf0b9:	33 d2                                           	xor    edx,edx
  3bf0bb:	66 89 45 35                                     	mov    WORD PTR [rbp+0x35],ax
  3bf0bf:	0f 29 45 00                                     	movaps XMMWORD PTR [rbp+0x0],xmm0
  3bf0c3:	49 8b ce                                        	mov    rcx,r14
  3bf0c6:	f3 0f 10 45 c0                                  	movss  xmm0,DWORD PTR [rbp-0x40]
  3bf0cb:	8a 45 e7                                        	mov    al,BYTE PTR [rbp-0x19]
  3bf0ce:	f3 0f 11 45 10                                  	movss  DWORD PTR [rbp+0x10],xmm0
  3bf0d3:	0f 10 45 d4                                     	movups xmm0,XMMWORD PTR [rbp-0x2c]
  3bf0d7:	c6 45 34 00                                     	mov    BYTE PTR [rbp+0x34],0x0
  3bf0db:	0f 11 4d 14                                     	movups XMMWORD PTR [rbp+0x14],xmm1
  3bf0df:	88 45 37                                        	mov    BYTE PTR [rbp+0x37],al
  3bf0e2:	0f 11 45 24                                     	movups XMMWORD PTR [rbp+0x24],xmm0
  3bf0e6:	e8 95 c6 ff ff                                  	call   0x3bb780
  3bf0eb:	4c 8b e8                                        	mov    r13,rax
  3bf0ee:	e8 b9 35 fd ff                                  	call   0x3926ac
  3bf0f3:	49 63 17                                        	movsxd rdx,DWORD PTR [r15]
  3bf0f6:	48 8b ce                                        	mov    rcx,rsi
  3bf0f9:	f3 0f 10 70 10                                  	movss  xmm6,DWORD PTR [rax+0x10]
  3bf0fe:	f3 0f 59 35 36 91 ee ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffee9136]        # 0x2a823c
  3bf106:	e8 15 5c f1 ff                                  	call   0x2d4d20
  3bf10b:	48 8b c8                                        	mov    rcx,rax
  3bf10e:	e8 d9 e6 f0 ff                                  	call   0x2cd7ec
  3bf113:	f3 44 0f 10 05 44 41 ed ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffed4144]        # 0x293260
  3bf11c:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3bf123:	48 8b d0                                        	mov    rdx,rax
  3bf126:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3bf12d:	41 b1 01                                        	mov    r9b,0x1
  3bf130:	45 33 c0                                        	xor    r8d,r8d
  3bf133:	e8 64 06 fd ff                                  	call   0x38f79c
  3bf138:	f3 41 0f 10 45 10                               	movss  xmm0,DWORD PTR [r13+0x10]
  3bf13e:	0f 28 d6                                        	movaps xmm2,xmm6
  3bf141:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3bf145:	e8 12 65 f7 ff                                  	call   0x33565c
  3bf14a:	f3 41 0f 11 45 10                               	movss  DWORD PTR [r13+0x10],xmm0
  3bf150:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3bf154:	f2 0f 10 93 00 01 00 00                         	movsd  xmm2,QWORD PTR [rbx+0x100]
  3bf15c:	41 b1 01                                        	mov    r9b,0x1
  3bf15f:	45 33 c0                                        	xor    r8d,r8d
  3bf162:	f2 0f 11 95 38 02 00 00                         	movsd  QWORD PTR [rbp+0x238],xmm2
  3bf16a:	49 8b d6                                        	mov    rdx,r14
  3bf16d:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3bf174:	e8 23 06 fd ff                                  	call   0x38f79c
  3bf179:	e8 4e 34 fd ff                                  	call   0x3925cc
  3bf17e:	48 8b 05 a3 69 04 00                            	mov    rax,QWORD PTR [rip+0x469a3]        # 0x405b28
  3bf185:	bb 00 00 00 00                                  	mov    ebx,0x0
  3bf18a:	f3 0f 10 35 56 9d e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe89d56]        # 0x248ee8
  3bf192:	0f 28 f8                                        	movaps xmm7,xmm0
  3bf195:	f3 0f 59 35 37 40 ed ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffed4037]        # 0x2931d4
  3bf19d:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3bf1a7:	0f 95 c3                                        	setne  bl
  3bf1aa:	e8 c1 01 fd ff                                  	call   0x38f370
  3bf1af:	66 0f 6e cb                                     	movd   xmm1,ebx
  3bf1b3:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bf1b8:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3bf1bb:	0f 28 d7                                        	movaps xmm2,xmm7
  3bf1be:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3bf1c2:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  3bf1c6:	0f 28 c8                                        	movaps xmm1,xmm0
  3bf1c9:	e8 72 d1 f0 ff                                  	call   0x2cc340
  3bf1ce:	4c 8b c0                                        	mov    r8,rax
  3bf1d1:	48 8d 95 38 02 00 00                            	lea    rdx,[rbp+0x238]
  3bf1d8:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bf1dc:	e8 f7 07 f3 ff                                  	call   0x2ef9d8
  3bf1e1:	4c 8b c0                                        	mov    r8,rax
  3bf1e4:	48 8d 95 38 02 00 00                            	lea    rdx,[rbp+0x238]
  3bf1eb:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3bf1ef:	e8 94 c1 f1 ff                                  	call   0x2db388
  3bf1f4:	e8 d3 33 fd ff                                  	call   0x3925cc
  3bf1f9:	48 8b 05 28 69 04 00                            	mov    rax,QWORD PTR [rip+0x46928]        # 0x405b28
  3bf200:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3bf207:	0f 28 d0                                        	movaps xmm2,xmm0
  3bf20a:	f3 0f 10 88 0c 38 00 00                         	movss  xmm1,DWORD PTR [rax+0x380c]
  3bf212:	f3 41 0f 2c 45 10                               	cvttss2si eax,DWORD PTR [r13+0x10]
  3bf218:	f3 0f 58 c9                                     	addss  xmm1,xmm1
  3bf21c:	66 0f 6e d8                                     	movd   xmm3,eax
  3bf220:	0f 5b db                                        	cvtdq2ps xmm3,xmm3
  3bf223:	f3 0f 58 d9                                     	addss  xmm3,xmm1
  3bf227:	f3 0f 10 0d b9 9c e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe89cb9]        # 0x248ee8
  3bf22f:	f3 0f 59 0d e9 e8 ec ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffece8e9]        # 0x28db20
  3bf237:	f3 0f 58 d9                                     	addss  xmm3,xmm1
  3bf23b:	0f 28 cb                                        	movaps xmm1,xmm3
  3bf23e:	e8 fd d0 f0 ff                                  	call   0x2cc340
  3bf243:	4c 8b c0                                        	mov    r8,rax
  3bf246:	48 8d 55 a8                                     	lea    rdx,[rbp-0x58]
  3bf24a:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bf24e:	e8 91 75 f7 ff                                  	call   0x3367e4
  3bf253:	48 8b d0                                        	mov    rdx,rax
  3bf256:	4c 8d 45 a8                                     	lea    r8,[rbp-0x58]
  3bf25a:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bf25f:	e8 24 c1 f1 ff                                  	call   0x2db388
  3bf264:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3bf268:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3bf26c:	e8 0f d8 fb ff                                  	call   0x37ca80
  3bf271:	45 33 c9                                        	xor    r9d,r9d
  3bf274:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3bf278:	45 33 c0                                        	xor    r8d,r8d
  3bf27b:	8b d7                                           	mov    edx,edi
  3bf27d:	e8 5a 56 fd ff                                  	call   0x3948dc
  3bf282:	4c 8d 4c 24 50                                  	lea    r9,[rsp+0x50]
  3bf287:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  3bf28f:	4c 8d 85 38 02 00 00                            	lea    r8,[rbp+0x238]
  3bf296:	8b d7                                           	mov    edx,edi
  3bf298:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bf29d:	e8 3e d5 ff ff                                  	call   0x3bc7e0
  3bf2a2:	41 80 7d 34 00                                  	cmp    BYTE PTR [r13+0x34],0x0
  3bf2a7:	44 8a e0                                        	mov    r12b,al
  3bf2aa:	0f 85 ed 00 00 00                               	jne    0x3bf39d
  3bf2b0:	48 8b 0d 71 68 04 00                            	mov    rcx,QWORD PTR [rip+0x46871]        # 0x405b28
  3bf2b7:	f7 81 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rcx+0x4788],0x800
  3bf2c1:	0f 85 d6 00 00 00                               	jne    0x3bf39d
  3bf2c7:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3bf2ce:	e8 b1 36 fc ff                                  	call   0x382984
  3bf2d3:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bf2d8:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3bf2dd:	e8 4a d0 ff ff                                  	call   0x3bc32c
  3bf2e2:	48 8b c8                                        	mov    rcx,rax
  3bf2e5:	e8 c2 f5 fd ff                                  	call   0x39e8ac
  3bf2ea:	48 8b d0                                        	mov    rdx,rax
  3bf2ed:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3bf2f4:	e8 6f 59 f1 ff                                  	call   0x2d4c68
  3bf2f9:	49 8b d6                                        	mov    rdx,r14
  3bf2fc:	48 8d 8d b0 00 00 00                            	lea    rcx,[rbp+0xb0]
  3bf303:	e8 60 59 f1 ff                                  	call   0x2d4c68
  3bf308:	48 8b ce                                        	mov    rcx,rsi
  3bf30b:	4c 89 bd d8 00 00 00                            	mov    QWORD PTR [rbp+0xd8],r15
  3bf312:	e8 a9 86 f1 ff                                  	call   0x2d79c0
  3bf317:	48 8b ce                                        	mov    rcx,rsi
  3bf31a:	48 8b f8                                        	mov    rdi,rax
  3bf31d:	e8 56 26 f1 ff                                  	call   0x2d1978
  3bf322:	48 8b d8                                        	mov    rbx,rax
  3bf325:	48 3b c7                                        	cmp    rax,rdi
  3bf328:	74 36                                           	je     0x3bf360
  3bf32a:	48 8b cb                                        	mov    rcx,rbx
  3bf32d:	e8 ba e4 f0 ff                                  	call   0x2cd7ec
  3bf332:	48 8b d0                                        	mov    rdx,rax
  3bf335:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf339:	e8 8e cf f0 ff                                  	call   0x2cc2cc
  3bf33e:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3bf342:	48 8d 8d 48 01 00 00                            	lea    rcx,[rbp+0x148]
  3bf349:	e8 aa 9c f1 ff                                  	call   0x2d8ff8
  3bf34e:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf352:	e8 9d d1 f0 ff                                  	call   0x2cc4f4
  3bf357:	48 83 c3 20                                     	add    rbx,0x20
  3bf35b:	48 3b df                                        	cmp    rbx,rdi
  3bf35e:	75 ca                                           	jne    0x3bf32a
  3bf360:	48 8d 0d 89 9b e8 ff                            	lea    rcx,[rip+0xffffffffffe89b89]        # 0x248ef0
  3bf367:	e8 90 9e fc ff                                  	call   0x3891fc
  3bf36c:	48 8d 0d 7d 9b e8 ff                            	lea    rcx,[rip+0xffffffffffe89b7d]        # 0x248ef0
  3bf373:	48 8d 50 ff                                     	lea    rdx,[rax-0x1]
  3bf377:	e8 3c 3a fc ff                                  	call   0x382db8
  3bf37c:	48 8d 95 90 00 00 00                            	lea    rdx,[rbp+0x90]
  3bf383:	48 8d 48 48                                     	lea    rcx,[rax+0x48]
  3bf387:	e8 44 2f fc ff                                  	call   0x3822d0
  3bf38c:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3bf393:	41 c6 45 34 01                                  	mov    BYTE PTR [r13+0x34],0x1
  3bf398:	e8 93 73 f7 ff                                  	call   0x336730
  3bf39d:	48 8b 05 84 67 04 00                            	mov    rax,QWORD PTR [rip+0x46784]        # 0x405b28
  3bf3a4:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3bf3ae:	0f 84 4a 01 00 00                               	je     0x3bf4fe
  3bf3b4:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3bf3bb:	e8 c4 35 fc ff                                  	call   0x382984
  3bf3c0:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bf3c5:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3bf3ca:	e8 21 d0 ff ff                                  	call   0x3bc3f0
  3bf3cf:	48 8b c8                                        	mov    rcx,rax
  3bf3d2:	e8 d5 f4 fd ff                                  	call   0x39e8ac
  3bf3d7:	48 8b d0                                        	mov    rdx,rax
  3bf3da:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3bf3e1:	e8 82 58 f1 ff                                  	call   0x2d4c68
  3bf3e6:	49 8b d6                                        	mov    rdx,r14
  3bf3e9:	48 8d 8d b0 00 00 00                            	lea    rcx,[rbp+0xb0]
  3bf3f0:	e8 73 58 f1 ff                                  	call   0x2d4c68
  3bf3f5:	48 8b ce                                        	mov    rcx,rsi
  3bf3f8:	4c 89 bd d8 00 00 00                            	mov    QWORD PTR [rbp+0xd8],r15
  3bf3ff:	e8 bc 85 f1 ff                                  	call   0x2d79c0
  3bf404:	48 8b ce                                        	mov    rcx,rsi
  3bf407:	48 8b f8                                        	mov    rdi,rax
  3bf40a:	e8 69 25 f1 ff                                  	call   0x2d1978
  3bf40f:	48 8b d8                                        	mov    rbx,rax
  3bf412:	48 3b c7                                        	cmp    rax,rdi
  3bf415:	74 36                                           	je     0x3bf44d
  3bf417:	48 8b cb                                        	mov    rcx,rbx
  3bf41a:	e8 cd e3 f0 ff                                  	call   0x2cd7ec
  3bf41f:	48 8b d0                                        	mov    rdx,rax
  3bf422:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf426:	e8 a1 ce f0 ff                                  	call   0x2cc2cc
  3bf42b:	48 8d 55 b0                                     	lea    rdx,[rbp-0x50]
  3bf42f:	48 8d 8d 48 01 00 00                            	lea    rcx,[rbp+0x148]
  3bf436:	e8 bd 9b f1 ff                                  	call   0x2d8ff8
  3bf43b:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf43f:	e8 b0 d0 f0 ff                                  	call   0x2cc4f4
  3bf444:	48 83 c3 20                                     	add    rbx,0x20
  3bf448:	48 3b df                                        	cmp    rbx,rdi
  3bf44b:	75 ca                                           	jne    0x3bf417
  3bf44d:	f3 0f 10 0d 93 9a e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe89a93]        # 0x248ee8
  3bf455:	0f 57 c0                                        	xorps  xmm0,xmm0
  3bf458:	f3 0f 59 0d bc e6 ec ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffece6bc]        # 0x28db1c
  3bf460:	e8 9f b7 fd ff                                  	call   0x39ac04
  3bf465:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3bf469:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bf46e:	e8 81 94 fb ff                                  	call   0x3788f4
  3bf473:	f3 0f 10 05 6d 9a e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe89a6d]        # 0x248ee8
  3bf47b:	f3 0f 59 05 35 3d ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed3d35]        # 0x2931b8
  3bf483:	f3 0f 10 70 04                                  	movss  xmm6,DWORD PTR [rax+0x4]
  3bf488:	f3 0f 59 05 c0 dd ec ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffecddc0]        # 0x28d250
  3bf490:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3bf494:	e8 67 dd f9 ff                                  	call   0x35d200
  3bf499:	49 8b d6                                        	mov    rdx,r14
  3bf49c:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf4a0:	f3 0f 11 b0 04 01 00 00                         	movss  DWORD PTR [rax+0x104],xmm6
  3bf4a8:	e8 1f ce f0 ff                                  	call   0x2cc2cc
  3bf4ad:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bf4b2:	48 8b d8                                        	mov    rbx,rax
  3bf4b5:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3bf4ba:	e8 95 cf ff ff                                  	call   0x3bc454
  3bf4bf:	48 8b c8                                        	mov    rcx,rax
  3bf4c2:	e8 bd f3 fd ff                                  	call   0x39e884
  3bf4c7:	48 8b d0                                        	mov    rdx,rax
  3bf4ca:	48 8b cb                                        	mov    rcx,rbx
  3bf4cd:	e8 da e2 f0 ff                                  	call   0x2cd7ac
  3bf4d2:	48 8b c8                                        	mov    rcx,rax
  3bf4d5:	e8 12 e3 f0 ff                                  	call   0x2cd7ec
  3bf4da:	48 8b c8                                        	mov    rcx,rax
  3bf4dd:	48 8d 95 90 00 00 00                            	lea    rdx,[rbp+0x90]
  3bf4e4:	e8 7b 81 fc ff                                  	call   0x387664
  3bf4e9:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf4ed:	e8 02 d0 f0 ff                                  	call   0x2cc4f4
  3bf4f2:	48 8d 8d 90 00 00 00                            	lea    rcx,[rbp+0x90]
  3bf4f9:	e8 32 72 f7 ff                                  	call   0x336730
  3bf4fe:	f3 44 0f 10 1d 4d dd ec ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffecdd4d]        # 0x28d254
  3bf507:	45 84 e4                                        	test   r12b,r12b
  3bf50a:	74 1d                                           	je     0x3bf529
  3bf50c:	f3 41 0f 10 45 0c                               	movss  xmm0,DWORD PTR [r13+0xc]
  3bf512:	41 0f 2e c2                                     	ucomiss xmm0,xmm10
  3bf516:	7a 08                                           	jp     0x3bf520
  3bf518:	75 06                                           	jne    0x3bf520
  3bf51a:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3bf51e:	eb 03                                           	jmp    0x3bf523
  3bf520:	0f 57 c0                                        	xorps  xmm0,xmm0
  3bf523:	f3 41 0f 11 45 0c                               	movss  DWORD PTR [r13+0xc],xmm0
  3bf529:	f3 41 0f 10 45 0c                               	movss  xmm0,DWORD PTR [r13+0xc]
  3bf52f:	41 0f 2e c2                                     	ucomiss xmm0,xmm10
  3bf533:	7a 07                                           	jp     0x3bf53c
  3bf535:	75 05                                           	jne    0x3bf53c
  3bf537:	45 33 c9                                        	xor    r9d,r9d
  3bf53a:	eb 03                                           	jmp    0x3bf53f
  3bf53c:	41 b1 01                                        	mov    r9b,0x1
  3bf53f:	f3 0f 10 35 6d 3c ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed3c6d]        # 0x2931b4
  3bf547:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3bf54b:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3bf551:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bf554:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bf55a:	e8 e9 68 f7 ff                                  	call   0x335e48
  3bf55f:	44 8a 8d 38 02 00 00                            	mov    r9b,BYTE PTR [rbp+0x238]
  3bf566:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3bf56a:	f3 41 0f 11 45 00                               	movss  DWORD PTR [r13+0x0],xmm0
  3bf570:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bf573:	f3 41 0f 10 45 08                               	movss  xmm0,DWORD PTR [r13+0x8]
  3bf579:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bf57f:	e8 c4 68 f7 ff                                  	call   0x335e48
  3bf584:	f3 41 0f 10 4d 0c                               	movss  xmm1,DWORD PTR [r13+0xc]
  3bf58a:	41 0f 2e ca                                     	ucomiss xmm1,xmm10
  3bf58e:	f3 41 0f 11 45 08                               	movss  DWORD PTR [r13+0x8],xmm0
  3bf594:	7a 07                                           	jp     0x3bf59d
  3bf596:	75 05                                           	jne    0x3bf59d
  3bf598:	45 33 c9                                        	xor    r9d,r9d
  3bf59b:	eb 03                                           	jmp    0x3bf5a0
  3bf59d:	41 b1 01                                        	mov    r9b,0x1
  3bf5a0:	f3 0f 10 15 80 9e ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffee9e80]        # 0x2a9428
  3bf5a8:	f3 0f 10 0d 74 9e ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffee9e74]        # 0x2a9424
  3bf5b0:	f3 41 0f 10 45 04                               	movss  xmm0,DWORD PTR [r13+0x4]
  3bf5b6:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bf5bc:	e8 87 68 f7 ff                                  	call   0x335e48
  3bf5c1:	f3 45 0f 10 45 00                               	movss  xmm8,DWORD PTR [r13+0x0]
  3bf5c7:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bf5cb:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bf5d0:	f3 41 0f 11 45 04                               	movss  DWORD PTR [r13+0x4],xmm0
  3bf5d6:	e8 bd 2c fd ff                                  	call   0x392298
  3bf5db:	8b d0                                           	mov    edx,eax
  3bf5dd:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3bf5e1:	e8 ee 6e f7 ff                                  	call   0x3364d4
  3bf5e6:	f3 44 0f 10 0d dd 3a ed ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffed3add]        # 0x2930cc
  3bf5ef:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bf5f4:	f3 41 0f 10 7d 08                               	movss  xmm7,DWORD PTR [r13+0x8]
  3bf5fa:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3bf5fe:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3bf602:	e8 91 2c fd ff                                  	call   0x392298
  3bf607:	8b d0                                           	mov    edx,eax
  3bf609:	48 8d 4d 58                                     	lea    rcx,[rbp+0x58]
  3bf60d:	e8 c2 6e f7 ff                                  	call   0x3364d4
  3bf612:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bf616:	b9 02 00 00 00                                  	mov    ecx,0x2
  3bf61b:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf61e:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3bf623:	e8 70 2c fd ff                                  	call   0x392298
  3bf628:	8b d0                                           	mov    edx,eax
  3bf62a:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  3bf62e:	e8 a1 6e f7 ff                                  	call   0x3364d4
  3bf633:	0f 28 df                                        	movaps xmm3,xmm7
  3bf636:	66 0f 7f 75 f0                                  	movdqa XMMWORD PTR [rbp-0x10],xmm6
  3bf63b:	4c 8d 45 80                                     	lea    r8,[rbp-0x80]
  3bf63f:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bf644:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf647:	48 8d 4d 78                                     	lea    rcx,[rbp+0x78]
  3bf64b:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3bf651:	e8 4e 9f fb ff                                  	call   0x3795a4
  3bf656:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3bf65a:	4c 8d 45 f0                                     	lea    r8,[rbp-0x10]
  3bf65e:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3bf662:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf666:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf669:	4d 8d 65 14                                     	lea    r12,[r13+0x14]
  3bf66d:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3bf672:	e8 2d 9f fb ff                                  	call   0x3795a4
  3bf677:	f3 45 0f 10 45 00                               	movss  xmm8,DWORD PTR [r13+0x0]
  3bf67d:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bf681:	33 c9                                           	xor    ecx,ecx
  3bf683:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf686:	f3 41 0f 7f 04 24                               	movdqu XMMWORD PTR [r12],xmm0
  3bf68c:	e8 07 2c fd ff                                  	call   0x392298
  3bf691:	8b d0                                           	mov    edx,eax
  3bf693:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3bf697:	e8 38 6e f7 ff                                  	call   0x3364d4
  3bf69c:	f3 41 0f 10 7d 08                               	movss  xmm7,DWORD PTR [r13+0x8]
  3bf6a2:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3bf6a6:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bf6ab:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3bf6af:	e8 e4 2b fd ff                                  	call   0x392298
  3bf6b4:	8b d0                                           	mov    edx,eax
  3bf6b6:	48 8d 4d 78                                     	lea    rcx,[rbp+0x78]
  3bf6ba:	e8 15 6e f7 ff                                  	call   0x3364d4
  3bf6bf:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bf6c3:	b9 02 00 00 00                                  	mov    ecx,0x2
  3bf6c8:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf6cb:	f3 0f 7f 45 f0                                  	movdqu XMMWORD PTR [rbp-0x10],xmm0
  3bf6d0:	e8 c3 2b fd ff                                  	call   0x392298
  3bf6d5:	8b d0                                           	mov    edx,eax
  3bf6d7:	48 8d 4d 68                                     	lea    rcx,[rbp+0x68]
  3bf6db:	e8 f4 6d f7 ff                                  	call   0x3364d4
  3bf6e0:	0f 28 df                                        	movaps xmm3,xmm7
  3bf6e3:	66 0f 7f 74 24 70                               	movdqa XMMWORD PTR [rsp+0x70],xmm6
  3bf6e9:	4c 8d 45 f0                                     	lea    r8,[rbp-0x10]
  3bf6ed:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3bf6f1:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf6f4:	48 8d 4d 58                                     	lea    rcx,[rbp+0x58]
  3bf6f8:	f3 0f 7f 45 80                                  	movdqu XMMWORD PTR [rbp-0x80],xmm0
  3bf6fd:	e8 a2 9e fb ff                                  	call   0x3795a4
  3bf702:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf705:	f3 0f 7f 45 f0                                  	movdqu XMMWORD PTR [rbp-0x10],xmm0
  3bf70a:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3bf70e:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3bf713:	48 8d 55 f0                                     	lea    rdx,[rbp-0x10]
  3bf717:	48 8d 4d 48                                     	lea    rcx,[rbp+0x48]
  3bf71b:	e8 84 9e fb ff                                  	call   0x3795a4
  3bf720:	48 8b 75 90                                     	mov    rsi,QWORD PTR [rbp-0x70]
  3bf724:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bf728:	4c 8b 7c 24 58                                  	mov    r15,QWORD PTR [rsp+0x58]
  3bf72d:	b9 08 00 00 00                                  	mov    ecx,0x8
  3bf732:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3bf735:	f3 41 0f 7f 45 24                               	movdqu XMMWORD PTR [r13+0x24],xmm0
  3bf73b:	48 8b 9e 98 02 00 00                            	mov    rbx,QWORD PTR [rsi+0x298]
  3bf742:	f3 41 0f 10 77 44                               	movss  xmm6,DWORD PTR [r15+0x44]
  3bf748:	e8 4b 2b fd ff                                  	call   0x392298
  3bf74d:	44 8b c8                                        	mov    r9d,eax
  3bf750:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3bf758:	4c 8d 44 24 68                                  	lea    r8,[rsp+0x68]
  3bf75d:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bf763:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bf768:	48 8b cb                                        	mov    rcx,rbx
  3bf76b:	e8 d4 1a fe ff                                  	call   0x3a1244
  3bf770:	e8 d3 95 fc ff                                  	call   0x388d48
  3bf775:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3bf77c:	49 8d 4d 24                                     	lea    rcx,[r13+0x24]
  3bf780:	e8 87 00 f3 ff                                  	call   0x2ef80c
  3bf785:	f3 0f 10 74 24 68                               	movss  xmm6,DWORD PTR [rsp+0x68]
  3bf78b:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3bf78f:	f3 0f 10 05 51 97 e8 ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffe89751]        # 0x248ee8
  3bf797:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bf79c:	f3 41 0f 5c 77 3c                               	subss  xmm6,DWORD PTR [r15+0x3c]
  3bf7a2:	f3 0f 59 05 fe 39 ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed39fe]        # 0x2931a8
  3bf7aa:	8b d8                                           	mov    ebx,eax
  3bf7ac:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3bf7b0:	e8 3f 91 fb ff                                  	call   0x3788f4
  3bf7b5:	f3 0f 10 3d 2b 97 e8 ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffe8972b]        # 0x248ee8
  3bf7bd:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bf7c2:	0f 28 c7                                        	movaps xmm0,xmm7
  3bf7c5:	0f 28 ce                                        	movaps xmm1,xmm6
  3bf7c8:	f3 0f 59 05 b0 39 ed ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffed39b0]        # 0x293180
  3bf7d0:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bf7d5:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3bf7d9:	e8 62 cb f0 ff                                  	call   0x2cc340
  3bf7de:	f3 0f 59 3d 36 e3 ec ff                         	mulss  xmm7,DWORD PTR [rip+0xffffffffffece336]        # 0x28db1c
  3bf7e6:	48 8d 0d f3 c8 03 00                            	lea    rcx,[rip+0x3c8f3]        # 0x3fc0e0
  3bf7ed:	ba 02 00 00 00                                  	mov    edx,0x2
  3bf7f2:	e8 c1 6f f7 ff                                  	call   0x3367b8
  3bf7f7:	f3 0f 10 0d 1d e3 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffece31d]        # 0x28db1c
  3bf7ff:	48 8b c8                                        	mov    rcx,rax
  3bf802:	e8 e5 52 fa ff                                  	call   0x364aec
  3bf807:	48 c7 44 24 40 00 00 00 00                      	mov    QWORD PTR [rsp+0x40],0x0
  3bf810:	4c 8d 4c 24 70                                  	lea    r9,[rsp+0x70]
  3bf815:	f3 44 0f 11 54 24 38                            	movss  DWORD PTR [rsp+0x38],xmm10
  3bf81c:	48 8b d0                                        	mov    rdx,rax
  3bf81f:	48 8d 05 c6 e0 ee ff                            	lea    rax,[rip+0xffffffffffeee0c6]        # 0x2ad8ec
  3bf826:	48 c7 44 24 30 00 00 00 00                      	mov    QWORD PTR [rsp+0x30],0x0
  3bf82f:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3bf834:	0f 28 d7                                        	movaps xmm2,xmm7
  3bf837:	48 8b ce                                        	mov    rcx,rsi
  3bf83a:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3bf83e:	e8 b5 39 fe ff                                  	call   0x3a31f8
  3bf843:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bf847:	e8 14 95 fc ff                                  	call   0x388d60
  3bf84c:	f3 41 0f 10 45 04                               	movss  xmm0,DWORD PTR [r13+0x4]
  3bf852:	48 8b 10                                        	mov    rdx,QWORD PTR [rax]
  3bf855:	e8 02 94 fc ff                                  	call   0x388c5c
  3bf85a:	48 8b 75 90                                     	mov    rsi,QWORD PTR [rbp-0x70]
  3bf85e:	33 d2                                           	xor    edx,edx
  3bf860:	49 8b ce                                        	mov    rcx,r14
  3bf863:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3bf86a:	e8 e1 23 fd ff                                  	call   0x391c50
  3bf86f:	49 8b cc                                        	mov    rcx,r12
  3bf872:	48 8b f8                                        	mov    rdi,rax
  3bf875:	e8 92 ff f2 ff                                  	call   0x2ef80c
  3bf87a:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3bf87e:	8b d8                                           	mov    ebx,eax
  3bf880:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3bf884:	e8 6b 90 fb ff                                  	call   0x3788f4
  3bf889:	48 8b 15 98 62 04 00                            	mov    rdx,QWORD PTR [rip+0x46298]        # 0x405b28
  3bf890:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3bf895:	f3 0f 10 82 30 3c 00 00                         	movss  xmm0,DWORD PTR [rdx+0x3c30]
  3bf89d:	f3 0f 59 05 ab d9 ec ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffecd9ab]        # 0x28d250
  3bf8a5:	f3 0f 10 4d a0                                  	movss  xmm1,DWORD PTR [rbp-0x60]
  3bf8aa:	f3 0f 5c d0                                     	subss  xmm2,xmm0
  3bf8ae:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bf8b3:	e8 88 ca f0 ff                                  	call   0x2cc340
  3bf8b8:	4d 8b ce                                        	mov    r9,r14
  3bf8bb:	48 89 7c 24 20                                  	mov    QWORD PTR [rsp+0x20],rdi
  3bf8c0:	44 8b c3                                        	mov    r8d,ebx
  3bf8c3:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bf8c8:	48 8b ce                                        	mov    rcx,rsi
  3bf8cb:	e8 ec 38 fe ff                                  	call   0x3a31bc
  3bf8d0:	48 8b 45 90                                     	mov    rax,QWORD PTR [rbp-0x70]
  3bf8d4:	48 8b bd 28 02 00 00                            	mov    rdi,QWORD PTR [rbp+0x228]
  3bf8db:	48 8b 9d 30 02 00 00                            	mov    rbx,QWORD PTR [rbp+0x230]
  3bf8e2:	48 8b cb                                        	mov    rcx,rbx
  3bf8e5:	4c 8b b0 98 02 00 00                            	mov    r14,QWORD PTR [rax+0x298]
  3bf8ec:	48 63 17                                        	movsxd rdx,DWORD PTR [rdi]
  3bf8ef:	e8 2c 54 f1 ff                                  	call   0x2d4d20
  3bf8f4:	48 8b c8                                        	mov    rcx,rax
  3bf8f7:	e8 f0 de f0 ff                                  	call   0x2cd7ec
  3bf8fc:	48 8b c8                                        	mov    rcx,rax
  3bf8ff:	33 d2                                           	xor    edx,edx
  3bf901:	e8 4a 23 fd ff                                  	call   0x391c50
  3bf906:	48 63 17                                        	movsxd rdx,DWORD PTR [rdi]
  3bf909:	48 8b cb                                        	mov    rcx,rbx
  3bf90c:	48 8b f0                                        	mov    rsi,rax
  3bf90f:	e8 0c 54 f1 ff                                  	call   0x2d4d20
  3bf914:	48 8b c8                                        	mov    rcx,rax
  3bf917:	e8 d0 de f0 ff                                  	call   0x2cd7ec
  3bf91c:	49 8b cc                                        	mov    rcx,r12
  3bf91f:	48 8b f8                                        	mov    rdi,rax
  3bf922:	e8 e5 fe f2 ff                                  	call   0x2ef80c
  3bf927:	4d 8d 47 3c                                     	lea    r8,[r15+0x3c]
  3bf92b:	8b d8                                           	mov    ebx,eax
  3bf92d:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bf932:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bf936:	e8 9d 00 f3 ff                                  	call   0x2ef9d8
  3bf93b:	48 8b d0                                        	mov    rdx,rax
  3bf93e:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  3bf943:	4c 8b cf                                        	mov    r9,rdi
  3bf946:	44 8b c3                                        	mov    r8d,ebx
  3bf949:	49 8b ce                                        	mov    rcx,r14
  3bf94c:	e8 6b 38 fe ff                                  	call   0x3a31bc
  3bf951:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3bf957:	0f 2f 05 3a 37 ed ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffed373a]        # 0x293098
  3bf95e:	0f 86 ae 03 00 00                               	jbe    0x3bfd12
  3bf964:	0f 57 d2                                        	xorps  xmm2,xmm2
  3bf967:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bf96c:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bf96f:	e8 cc c9 f0 ff                                  	call   0x2cc340
  3bf974:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3bf979:	b9 0e 00 00 00                                  	mov    ecx,0xe
  3bf97e:	e8 dd 92 fd ff                                  	call   0x398c60
  3bf983:	48 8b 8d 20 02 00 00                            	mov    rcx,QWORD PTR [rbp+0x220]
  3bf98a:	33 d2                                           	xor    edx,edx
  3bf98c:	41 b8 af 00 00 00                               	mov    r8d,0xaf
  3bf992:	e8 0d d6 fc ff                                  	call   0x38cfa4
  3bf997:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  3bf99c:	e8 cf 8f fb ff                                  	call   0x378970
  3bf9a1:	4c 8b b5 30 02 00 00                            	mov    r14,QWORD PTR [rbp+0x230]
  3bf9a8:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3bf9ac:	f3 45 0f 10 45 00                               	movss  xmm8,DWORD PTR [r13+0x0]
  3bf9b2:	49 8b ce                                        	mov    rcx,r14
  3bf9b5:	f3 41 0f 10 7f 44                               	movss  xmm7,DWORD PTR [r15+0x44]
  3bf9bb:	e8 28 9a f1 ff                                  	call   0x2d93e8
  3bf9c0:	48 8b c8                                        	mov    rcx,rax
  3bf9c3:	ba 05 00 00 00                                  	mov    edx,0x5
  3bf9c8:	e8 cf 07 fc ff                                  	call   0x38019c
  3bf9cd:	66 0f 6e f0                                     	movd   xmm6,eax
  3bf9d1:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3bf9d4:	e8 f3 2b fd ff                                  	call   0x3925cc
  3bf9d9:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bf9de:	f3 0f 59 f0                                     	mulss  xmm6,xmm0
  3bf9e2:	f3 0f 58 ff                                     	addss  xmm7,xmm7
  3bf9e6:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3bf9ea:	f3 0f 58 f7                                     	addss  xmm6,xmm7
  3bf9ee:	f3 41 0f 59 f0                                  	mulss  xmm6,xmm8
  3bf9f3:	0f 28 d6                                        	movaps xmm2,xmm6
  3bf9f6:	e8 45 c9 f0 ff                                  	call   0x2cc340
  3bf9fb:	33 d2                                           	xor    edx,edx
  3bf9fd:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfa02:	e8 65 c2 fd ff                                  	call   0x39bc6c
  3bfa07:	f3 0f 10 54 24 6c                               	movss  xmm2,DWORD PTR [rsp+0x6c]
  3bfa0d:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfa12:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3bfa18:	e8 23 c9 f0 ff                                  	call   0x2cc340
  3bfa1d:	33 d2                                           	xor    edx,edx
  3bfa1f:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfa24:	e8 f7 c0 fd ff                                  	call   0x39bb20
  3bfa29:	e8 9e 34 fd ff                                  	call   0x392ecc
  3bfa2e:	f3 41 0f 10 77 44                               	movss  xmm6,DWORD PTR [r15+0x44]
  3bfa34:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bfa38:	b9 04 00 00 00                                  	mov    ecx,0x4
  3bfa3d:	48 8b f0                                        	mov    rsi,rax
  3bfa40:	e8 53 28 fd ff                                  	call   0x392298
  3bfa45:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bfa49:	8b f8                                           	mov    edi,eax
  3bfa4b:	e8 c4 34 fd ff                                  	call   0x392f14
  3bfa50:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bfa54:	48 8b d8                                        	mov    rbx,rax
  3bfa57:	e8 9c 34 fd ff                                  	call   0x392ef8
  3bfa5c:	48 8b d0                                        	mov    rdx,rax
  3bfa5f:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfa64:	4c 8b c3                                        	mov    r8,rbx
  3bfa67:	e8 6c ff f2 ff                                  	call   0x2ef9d8
  3bfa6c:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3bfa71:	48 8b d8                                        	mov    rbx,rax
  3bfa74:	e8 7f 34 fd ff                                  	call   0x392ef8
  3bfa79:	41 bc c0 00 00 00                               	mov    r12d,0xc0
  3bfa7f:	48 8b d0                                        	mov    rdx,rax
  3bfa82:	44 89 64 24 28                                  	mov    DWORD PTR [rsp+0x28],r12d
  3bfa87:	44 8b cf                                        	mov    r9d,edi
  3bfa8a:	4c 8b c3                                        	mov    r8,rbx
  3bfa8d:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bfa93:	48 8b ce                                        	mov    rcx,rsi
  3bfa96:	e8 a9 17 fe ff                                  	call   0x3a1244
  3bfa9b:	e8 2c 34 fd ff                                  	call   0x392ecc
  3bfaa0:	f3 41 0f 10 77 44                               	movss  xmm6,DWORD PTR [r15+0x44]
  3bfaa6:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bfaaa:	b9 06 00 00 00                                  	mov    ecx,0x6
  3bfaaf:	48 8b f0                                        	mov    rsi,rax
  3bfab2:	e8 e1 27 fd ff                                  	call   0x392298
  3bfab7:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bfabb:	8b f8                                           	mov    edi,eax
  3bfabd:	e8 52 34 fd ff                                  	call   0x392f14
  3bfac2:	48 8b d8                                        	mov    rbx,rax
  3bfac5:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bfac9:	e8 2a 34 fd ff                                  	call   0x392ef8
  3bface:	48 8b d0                                        	mov    rdx,rax
  3bfad1:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfad6:	4c 8b c3                                        	mov    r8,rbx
  3bfad9:	e8 fa fe f2 ff                                  	call   0x2ef9d8
  3bfade:	f3 44 0f 11 5c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm11
  3bfae5:	48 8d 54 24 60                                  	lea    rdx,[rsp+0x60]
  3bfaea:	4c 8b c0                                        	mov    r8,rax
  3bfaed:	44 89 64 24 28                                  	mov    DWORD PTR [rsp+0x28],r12d
  3bfaf2:	44 8b cf                                        	mov    r9d,edi
  3bfaf5:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3bfafb:	48 8b ce                                        	mov    rcx,rsi
  3bfafe:	e8 45 16 fe ff                                  	call   0x3a1148
  3bfb03:	48 8b 75 90                                     	mov    rsi,QWORD PTR [rbp-0x70]
  3bfb07:	41 bc 06 00 00 00                               	mov    r12d,0x6
  3bfb0d:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bfb11:	41 8b cc                                        	mov    ecx,r12d
  3bfb14:	48 8b be 98 02 00 00                            	mov    rdi,QWORD PTR [rsi+0x298]
  3bfb1b:	e8 78 27 fd ff                                  	call   0x392298
  3bfb20:	f3 0f 10 74 24 6c                               	movss  xmm6,DWORD PTR [rsp+0x6c]
  3bfb26:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfb2b:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3bfb31:	0f 28 d6                                        	movaps xmm2,xmm6
  3bfb34:	8b d8                                           	mov    ebx,eax
  3bfb36:	e8 05 c8 f0 ff                                  	call   0x2cc340
  3bfb3b:	f3 41 0f 5c 77 44                               	subss  xmm6,DWORD PTR [r15+0x44]
  3bfb41:	f3 0f 10 4c 24 60                               	movss  xmm1,DWORD PTR [rsp+0x60]
  3bfb47:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3bfb4b:	0f 28 d6                                        	movaps xmm2,xmm6
  3bfb4e:	e8 ed c7 f0 ff                                  	call   0x2cc340
  3bfb53:	44 8b cb                                        	mov    r9d,ebx
  3bfb56:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  3bfb5d:	4c 8d 44 24 58                                  	lea    r8,[rsp+0x58]
  3bfb62:	48 8b cf                                        	mov    rcx,rdi
  3bfb65:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3bfb69:	e8 86 06 fe ff                                  	call   0x3a01f4
  3bfb6e:	48 8b b6 98 02 00 00                            	mov    rsi,QWORD PTR [rsi+0x298]
  3bfb75:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bfb79:	41 8b cc                                        	mov    ecx,r12d
  3bfb7c:	e8 17 27 fd ff                                  	call   0x392298
  3bfb81:	0f 57 d2                                        	xorps  xmm2,xmm2
  3bfb84:	48 8d 4d 98                                     	lea    rcx,[rbp-0x68]
  3bfb88:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3bfb8c:	8b f8                                           	mov    edi,eax
  3bfb8e:	e8 ad c7 f0 ff                                  	call   0x2cc340
  3bfb93:	4c 8b c0                                        	mov    r8,rax
  3bfb96:	48 8d 54 24 68                                  	lea    rdx,[rsp+0x68]
  3bfb9b:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3bfb9f:	e8 40 6c f7 ff                                  	call   0x3367e4
  3bfba4:	f3 0f 10 54 24 6c                               	movss  xmm2,DWORD PTR [rsp+0x6c]
  3bfbaa:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3bfbaf:	f3 0f 10 4c 24 68                               	movss  xmm1,DWORD PTR [rsp+0x68]
  3bfbb5:	48 8b d8                                        	mov    rbx,rax
  3bfbb8:	f3 41 0f 5c 57 44                               	subss  xmm2,DWORD PTR [r15+0x44]
  3bfbbe:	f3 41 0f 5c cb                                  	subss  xmm1,xmm11
  3bfbc3:	e8 78 c7 f0 ff                                  	call   0x2cc340
  3bfbc8:	44 8b cf                                        	mov    r9d,edi
  3bfbcb:	f3 44 0f 11 5c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm11
  3bfbd2:	4c 8b c3                                        	mov    r8,rbx
  3bfbd5:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  3bfbda:	48 8b ce                                        	mov    rcx,rsi
  3bfbdd:	e8 12 06 fe ff                                  	call   0x3a01f4
  3bfbe2:	e8 19 d6 f9 ff                                  	call   0x35d200
  3bfbe7:	48 8b c8                                        	mov    rcx,rax
  3bfbea:	e8 71 f5 fc ff                                  	call   0x38f160
  3bfbef:	e8 0c d6 f9 ff                                  	call   0x35d200
  3bfbf4:	48 8b c8                                        	mov    rcx,rax
  3bfbf7:	e8 c0 f4 fc ff                                  	call   0x38f0bc
  3bfbfc:	33 c9                                           	xor    ecx,ecx
  3bfbfe:	e8 e9 4b fd ff                                  	call   0x3947ec
  3bfc03:	45 33 e4                                        	xor    r12d,r12d
  3bfc06:	84 c0                                           	test   al,al
  3bfc08:	75 1a                                           	jne    0x3bfc24
  3bfc0a:	33 d2                                           	xor    edx,edx
  3bfc0c:	33 c9                                           	xor    ecx,ecx
  3bfc0e:	e8 d1 47 fd ff                                  	call   0x3943e4
  3bfc13:	84 c0                                           	test   al,al
  3bfc15:	74 0d                                           	je     0x3bfc24
  3bfc17:	44 38 a5 38 02 00 00                            	cmp    BYTE PTR [rbp+0x238],r12b
  3bfc1e:	75 04                                           	jne    0x3bfc24
  3bfc20:	45 89 65 0c                                     	mov    DWORD PTR [r13+0xc],r12d
  3bfc24:	f3 41 0f 10 47 44                               	movss  xmm0,DWORD PTR [r15+0x44]
  3bfc2a:	e8 1d b8 fd ff                                  	call   0x39b44c
  3bfc2f:	e8 5c f0 fc ff                                  	call   0x38ec90
  3bfc34:	49 8b ce                                        	mov    rcx,r14
  3bfc37:	41 8b fc                                        	mov    edi,r12d
  3bfc3a:	e8 a9 97 f1 ff                                  	call   0x2d93e8
  3bfc3f:	48 85 c0                                        	test   rax,rax
  3bfc42:	74 7f                                           	je     0x3bfcc3
  3bfc44:	48 8b b5 28 02 00 00                            	mov    rsi,QWORD PTR [rbp+0x228]
  3bfc4b:	e8 e4 32 fd ff                                  	call   0x392f34
  3bfc50:	0f 28 f0                                        	movaps xmm6,xmm0
  3bfc53:	e8 74 29 fd ff                                  	call   0x3925cc
  3bfc58:	0f 28 d0                                        	movaps xmm2,xmm0
  3bfc5b:	48 8d 8d 28 02 00 00                            	lea    rcx,[rbp+0x228]
  3bfc62:	0f 28 ce                                        	movaps xmm1,xmm6
  3bfc65:	e8 d6 c6 f0 ff                                  	call   0x2cc340
  3bfc6a:	3b 3e                                           	cmp    edi,DWORD PTR [rsi]
  3bfc6c:	49 8b ce                                        	mov    rcx,r14
  3bfc6f:	48 63 d7                                        	movsxd rdx,edi
  3bfc72:	0f 94 c3                                        	sete   bl
  3bfc75:	e8 a6 50 f1 ff                                  	call   0x2d4d20
  3bfc7a:	48 8b c8                                        	mov    rcx,rax
  3bfc7d:	e8 6a db f0 ff                                  	call   0x2cd7ec
  3bfc82:	48 8b c8                                        	mov    rcx,rax
  3bfc85:	44 88 64 24 28                                  	mov    BYTE PTR [rsp+0x28],r12b
  3bfc8a:	48 8d 05 97 d6 ec ff                            	lea    rax,[rip+0xffffffffffecd697]        # 0x28d328
  3bfc91:	45 33 c0                                        	xor    r8d,r8d
  3bfc94:	4c 8d 8d 28 02 00 00                            	lea    r9,[rbp+0x228]
  3bfc9b:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3bfca0:	8a d3                                           	mov    dl,bl
  3bfca2:	e8 01 3c 00 00                                  	call   0x3c38a8
  3bfca7:	84 c0                                           	test   al,al
  3bfca9:	74 06                                           	je     0x3bfcb1
  3bfcab:	89 3e                                           	mov    DWORD PTR [rsi],edi
  3bfcad:	45 89 65 0c                                     	mov    DWORD PTR [r13+0xc],r12d
  3bfcb1:	49 8b ce                                        	mov    rcx,r14
  3bfcb4:	ff c7                                           	inc    edi
  3bfcb6:	e8 2d 97 f1 ff                                  	call   0x2d93e8
  3bfcbb:	48 63 cf                                        	movsxd rcx,edi
  3bfcbe:	48 3b c8                                        	cmp    rcx,rax
  3bfcc1:	72 88                                           	jb     0x3bfc4b
  3bfcc3:	49 8b ce                                        	mov    rcx,r14
  3bfcc6:	e8 1d 97 f1 ff                                  	call   0x2d93e8
  3bfccb:	48 83 f8 05                                     	cmp    rax,0x5
  3bfccf:	76 2b                                           	jbe    0x3bfcfc
  3bfcd1:	f3 0f 10 15 0f 92 e8 ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffe8920f]        # 0x248ee8
  3bfcd9:	48 8d 8d 28 02 00 00                            	lea    rcx,[rbp+0x228]
  3bfce0:	f3 0f 59 15 b8 34 ed ff                         	mulss  xmm2,DWORD PTR [rip+0xffffffffffed34b8]        # 0x2931a0
  3bfce8:	0f 57 c9                                        	xorps  xmm1,xmm1
  3bfceb:	e8 50 c6 f0 ff                                  	call   0x2cc340
  3bfcf0:	48 8d 8d 28 02 00 00                            	lea    rcx,[rbp+0x228]
  3bfcf7:	e8 50 01 00 00                                  	call   0x3bfe4c
  3bfcfc:	e8 fb 11 fd ff                                  	call   0x390efc
  3bfd01:	e8 8e 0c fd ff                                  	call   0x390994
  3bfd06:	b9 01 00 00 00                                  	mov    ecx,0x1
  3bfd0b:	e8 5c 8c fd ff                                  	call   0x39896c
  3bfd10:	eb 07                                           	jmp    0x3bfd19
  3bfd12:	4c 8b b5 30 02 00 00                            	mov    r14,QWORD PTR [rbp+0x230]
  3bfd19:	49 8b ce                                        	mov    rcx,r14
  3bfd1c:	e8 5f 4d f1 ff                                  	call   0x2d4a80
  3bfd21:	4c 8d 9c 24 d8 02 00 00                         	lea    r11,[rsp+0x2d8]
  3bfd29:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3bfd2e:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3bfd33:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3bfd38:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3bfd3d:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3bfd42:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3bfd47:	49 8b e3                                        	mov    rsp,r11
  3bfd4a:	41 5f                                           	pop    r15
  3bfd4c:	41 5e                                           	pop    r14
  3bfd4e:	41 5d                                           	pop    r13
  3bfd50:	41 5c                                           	pop    r12
  3bfd52:	5f                                              	pop    rdi
  3bfd53:	5e                                              	pop    rsi
  3bfd54:	5b                                              	pop    rbx
  3bfd55:	5d                                              	pop    rbp
  3bfd56:	c3                                              	ret
