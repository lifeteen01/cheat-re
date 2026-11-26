
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035c578 <.data+0x35c578>:
  35c578:	48 8b c4                                        	mov    rax,rsp
  35c57b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  35c57f:	48 89 70 18                                     	mov    QWORD PTR [rax+0x18],rsi
  35c583:	55                                              	push   rbp
  35c584:	57                                              	push   rdi
  35c585:	41 56                                           	push   r14
  35c587:	48 8d 68 b1                                     	lea    rbp,[rax-0x4f]
  35c58b:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
  35c592:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  35c596:	41 8b d9                                        	mov    ebx,r9d
  35c599:	0f 29 78 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm7
  35c59d:	48 8b fa                                        	mov    rdi,rdx
  35c5a0:	0f 28 fa                                        	movaps xmm7,xmm2
  35c5a3:	e8 58 0c 00 00                                  	call   0x35d200
  35c5a8:	48 8b f0                                        	mov    rsi,rax
  35c5ab:	4c 8b 80 98 02 00 00                            	mov    r8,QWORD PTR [rax+0x298]
  35c5b2:	45 8b 70 30                                     	mov    r14d,DWORD PTR [r8+0x30]
  35c5b6:	41 8b ce                                        	mov    ecx,r14d
  35c5b9:	83 e1 fd                                        	and    ecx,0xfffffffd
  35c5bc:	83 c9 05                                        	or     ecx,0x5
  35c5bf:	41 89 48 30                                     	mov    DWORD PTR [r8+0x30],ecx
  35c5c3:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  35c5c7:	e8 a4 5c 00 00                                  	call   0x362270
  35c5cc:	48 8b 8e 98 02 00 00                            	mov    rcx,QWORD PTR [rsi+0x298]
  35c5d3:	44 8b cb                                        	mov    r9d,ebx
  35c5d6:	48 8b d7                                        	mov    rdx,rdi
  35c5d9:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  35c5e1:	0f 10 30                                        	movups xmm6,XMMWORD PTR [rax]
  35c5e4:	0f 10 40 10                                     	movups xmm0,XMMWORD PTR [rax+0x10]
  35c5e8:	0f 10 48 1c                                     	movups xmm1,XMMWORD PTR [rax+0x1c]
  35c5ec:	0f 11 45 f7                                     	movups XMMWORD PTR [rbp-0x9],xmm0
  35c5f0:	f2 0f 10 07                                     	movsd  xmm0,QWORD PTR [rdi]
  35c5f4:	0f 28 d6                                        	movaps xmm2,xmm6
  35c5f7:	f3 0f 59 d7                                     	mulss  xmm2,xmm7
  35c5fb:	0f 11 75 e7                                     	movups XMMWORD PTR [rbp-0x19],xmm6
  35c5ff:	0f 11 4d 03                                     	movups XMMWORD PTR [rbp+0x3],xmm1
  35c603:	f2 0f 11 45 af                                  	movsd  QWORD PTR [rbp-0x51],xmm0
  35c608:	e8 67 32 04 00                                  	call   0x39f874
  35c60d:	48 8b 8e 98 02 00 00                            	mov    rcx,QWORD PTR [rsi+0x298]
  35c614:	0f 28 c6                                        	movaps xmm0,xmm6
  35c617:	0f c6 c6 aa                                     	shufps xmm0,xmm6,0xaa
  35c61b:	0f 28 d6                                        	movaps xmm2,xmm6
  35c61e:	0f c6 d6 55                                     	shufps xmm2,xmm6,0x55
  35c622:	0f 28 c8                                        	movaps xmm1,xmm0
  35c625:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  35c629:	bb 00 00 00 ff                                  	mov    ebx,0xff000000
  35c62e:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  35c632:	44 8b cb                                        	mov    r9d,ebx
  35c635:	48 8b d7                                        	mov    rdx,rdi
  35c638:	f3 0f 59 cf                                     	mulss  xmm1,xmm7
  35c63c:	f3 0f 59 d7                                     	mulss  xmm2,xmm7
  35c640:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  35c646:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  35c64e:	f3 0f 59 15 fa 0b f3 ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffff30bfa]        # 0x28d250
  35c656:	e8 51 31 04 00                                  	call   0x39f7ac
  35c65b:	80 7d 77 00                                     	cmp    BYTE PTR [rbp+0x77],0x0
  35c65f:	0f 84 a4 00 00 00                               	je     0x35c709
  35c665:	f3 0f 10 45 f7                                  	movss  xmm0,DWORD PTR [rbp-0x9]
  35c66a:	f3 0f 5c 45 7f                                  	subss  xmm0,DWORD PTR [rbp+0x7f]
  35c66f:	e8 4c 5c 00 00                                  	call   0x3622c0
  35c674:	48 89 45 5f                                     	mov    QWORD PTR [rbp+0x5f],rax
  35c678:	4c 8d 4d 5f                                     	lea    r9,[rbp+0x5f]
  35c67c:	48 8d 45 e7                                     	lea    rax,[rbp-0x19]
  35c680:	0f 28 d7                                        	movaps xmm2,xmm7
  35c683:	48 8d 55 af                                     	lea    rdx,[rbp-0x51]
  35c687:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  35c68c:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  35c690:	e8 33 0e 00 00                                  	call   0x35d4c8
  35c695:	f3 0f 10 55 9b                                  	movss  xmm2,DWORD PTR [rbp-0x65]
  35c69a:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  35c69e:	f3 0f 10 4d 97                                  	movss  xmm1,DWORD PTR [rbp-0x69]
  35c6a3:	e8 98 fc f6 ff                                  	call   0x2cc340
  35c6a8:	f3 0f 10 55 a3                                  	movss  xmm2,DWORD PTR [rbp-0x5d]
  35c6ad:	48 8d 4d bf                                     	lea    rcx,[rbp-0x41]
  35c6b1:	f3 0f 10 4d 9f                                  	movss  xmm1,DWORD PTR [rbp-0x61]
  35c6b6:	e8 85 fc f6 ff                                  	call   0x2cc340
  35c6bb:	f3 0f 10 55 ab                                  	movss  xmm2,DWORD PTR [rbp-0x55]
  35c6c0:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  35c6c4:	f3 0f 10 4d a7                                  	movss  xmm1,DWORD PTR [rbp-0x59]
  35c6c9:	e8 72 fc f6 ff                                  	call   0x2cc340
  35c6ce:	f3 0f 10 05 5e 6a f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff36a5e]        # 0x293134
  35c6d6:	48 8d 55 b7                                     	lea    rdx,[rbp-0x49]
  35c6da:	48 8b 8e 98 02 00 00                            	mov    rcx,QWORD PTR [rsi+0x298]
  35c6e1:	44 8b cb                                        	mov    r9d,ebx
  35c6e4:	0f c6 f6 ff                                     	shufps xmm6,xmm6,0xff
  35c6e8:	41 b8 03 00 00 00                               	mov    r8d,0x3
  35c6ee:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  35c6f2:	f3 0f 5f c6                                     	maxss  xmm0,xmm6
  35c6f6:	f3 0f 11 44 24 28                               	movss  DWORD PTR [rsp+0x28],xmm0
  35c6fc:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [rsp+0x20],0x0
  35c704:	e8 8b 3b 04 00                                  	call   0x3a0294
  35c709:	48 8b 86 98 02 00 00                            	mov    rax,QWORD PTR [rsi+0x298]
  35c710:	4c 8d 9c 24 d0 00 00 00                         	lea    r11,[rsp+0xd0]
  35c718:	49 8b 5b 20                                     	mov    rbx,QWORD PTR [r11+0x20]
  35c71c:	49 8b 73 30                                     	mov    rsi,QWORD PTR [r11+0x30]
  35c720:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35c725:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  35c72a:	44 89 70 30                                     	mov    DWORD PTR [rax+0x30],r14d
  35c72e:	49 8b e3                                        	mov    rsp,r11
  35c731:	41 5e                                           	pop    r14
  35c733:	5f                                              	pop    rdi
  35c734:	5d                                              	pop    rbp
  35c735:	c3                                              	ret
