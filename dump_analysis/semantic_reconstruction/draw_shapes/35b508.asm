
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035b508 <.data+0x35b508>:
  35b508:	48 8b c4                                        	mov    rax,rsp
  35b50b:	53                                              	push   rbx
  35b50c:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
  35b513:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  35b517:	48 8b d9                                        	mov    rbx,rcx
  35b51a:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  35b51e:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  35b523:	f3 44 0f 10 05 3c 21 09 00                      	movss  xmm8,DWORD PTR [rip+0x9213c]        # 0x3ed668
  35b52c:	f3 44 0f 59 05 13 7d f3 ff                      	mulss  xmm8,DWORD PTR [rip+0xfffffffffff37d13]        # 0x293248
  35b535:	44 0f 29 50 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm10
  35b53a:	44 0f 28 d2                                     	movaps xmm10,xmm2
  35b53e:	44 0f 29 58 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm11
  35b543:	44 0f 28 d9                                     	movaps xmm11,xmm1
  35b547:	41 0f 28 f8                                     	movaps xmm7,xmm8
  35b54b:	44 0f 29 60 98                                  	movaps XMMWORD PTR [rax-0x68],xmm12
  35b550:	f3 0f 5c 3d e0 cc f4 ff                         	subss  xmm7,DWORD PTR [rip+0xfffffffffff4cce0]        # 0x2a8238
  35b558:	44 0f 28 e3                                     	movaps xmm12,xmm3
  35b55c:	44 0f 2f 25 e8 1c f3 ff                         	comiss xmm12,DWORD PTR [rip+0xfffffffffff31ce8]        # 0x28d24c
  35b564:	f3 0f 5f 3d e0 1c f3 ff                         	maxss  xmm7,DWORD PTR [rip+0xfffffffffff31ce0]        # 0x28d24c
  35b56c:	0f 28 f7                                        	movaps xmm6,xmm7
  35b56f:	f3 41 0f 58 f0                                  	addss  xmm6,xmm8
  35b574:	f3 0f 59 35 d4 1c f3 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff31cd4]        # 0x28d250
  35b57c:	76 64                                           	jbe    0x35b5e2
  35b57e:	45 33 c9                                        	xor    r9d,r9d
  35b581:	c7 44 24 20 ff 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xff
  35b589:	33 d2                                           	xor    edx,edx
  35b58b:	48 8d 48 88                                     	lea    rcx,[rax-0x78]
  35b58f:	41 b8 ff 00 00 00                               	mov    r8d,0xff
  35b595:	e8 7e fd f7 ff                                  	call   0x2db318
  35b59a:	c6 44 24 40 01                                  	mov    BYTE PTR [rsp+0x40],0x1
  35b59f:	41 0f 28 dc                                     	movaps xmm3,xmm12
  35b5a3:	41 0f 28 d2                                     	movaps xmm2,xmm10
  35b5a7:	41 0f 28 cb                                     	movaps xmm1,xmm11
  35b5ab:	48 8b cb                                        	mov    rcx,rbx
  35b5ae:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  35b5b1:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
  35b5b6:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  35b5bb:	f3 0f 11 74 24 30                               	movss  DWORD PTR [rsp+0x30],xmm6
  35b5c1:	f3 0f 7f 44 24 50                               	movdqu XMMWORD PTR [rsp+0x50],xmm0
  35b5c7:	f3 0f 10 84 24 00 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x100]
  35b5d0:	f3 44 0f 11 44 24 28                            	movss  DWORD PTR [rsp+0x28],xmm8
  35b5d7:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35b5dd:	e8 56 f6 ff ff                                  	call   0x35ac38
  35b5e2:	41 b9 ff 00 00 00                               	mov    r9d,0xff
  35b5e8:	c7 44 24 20 c0 00 00 00                         	mov    DWORD PTR [rsp+0x20],0xc0
  35b5f0:	45 8b c1                                        	mov    r8d,r9d
  35b5f3:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35b5f8:	33 d2                                           	xor    edx,edx
  35b5fa:	e8 19 fd f7 ff                                  	call   0x2db318
  35b5ff:	f3 0f 10 9c 24 08 01 00 00                      	movss  xmm3,DWORD PTR [rsp+0x108]
  35b608:	0f 2f 1d 3d 1c f3 ff                            	comiss xmm3,DWORD PTR [rip+0xfffffffffff31c3d]        # 0x28d24c
  35b60f:	76 45                                           	jbe    0x35b656
  35b611:	0f 10 44 24 50                                  	movups xmm0,XMMWORD PTR [rsp+0x50]
  35b616:	c6 44 24 40 00                                  	mov    BYTE PTR [rsp+0x40],0x0
  35b61b:	48 8d 44 24 50                                  	lea    rax,[rsp+0x50]
  35b620:	48 89 44 24 38                                  	mov    QWORD PTR [rsp+0x38],rax
  35b625:	41 0f 28 d2                                     	movaps xmm2,xmm10
  35b629:	f3 0f 11 7c 24 30                               	movss  DWORD PTR [rsp+0x30],xmm7
  35b62f:	41 0f 28 cb                                     	movaps xmm1,xmm11
  35b633:	66 0f 7f 44 24 50                               	movdqa XMMWORD PTR [rsp+0x50],xmm0
  35b639:	48 8b cb                                        	mov    rcx,rbx
  35b63c:	f3 0f 10 84 24 10 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x110]
  35b645:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  35b64b:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35b651:	e8 e2 f5 ff ff                                  	call   0x35ac38
  35b656:	4c 8d 9c 24 d0 00 00 00                         	lea    r11,[rsp+0xd0]
  35b65e:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35b663:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  35b668:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  35b66d:	45 0f 28 53 c0                                  	movaps xmm10,XMMWORD PTR [r11-0x40]
  35b672:	45 0f 28 5b b0                                  	movaps xmm11,XMMWORD PTR [r11-0x50]
  35b677:	45 0f 28 63 a0                                  	movaps xmm12,XMMWORD PTR [r11-0x60]
  35b67c:	49 8b e3                                        	mov    rsp,r11
  35b67f:	5b                                              	pop    rbx
  35b680:	c3                                              	ret
