
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035d4c8 <.data+0x35d4c8>:
  35d4c8:	48 8b c4                                        	mov    rax,rsp
  35d4cb:	53                                              	push   rbx
  35d4cc:	55                                              	push   rbp
  35d4cd:	56                                              	push   rsi
  35d4ce:	57                                              	push   rdi
  35d4cf:	48 83 ec 38                                     	sub    rsp,0x38
  35d4d3:	48 8b 9c 24 80 00 00 00                         	mov    rbx,QWORD PTR [rsp+0x80]
  35d4db:	48 8b e9                                        	mov    rbp,rcx
  35d4de:	f2 0f 10 02                                     	movsd  xmm0,QWORD PTR [rdx]
  35d4e2:	48 8d 48 28                                     	lea    rcx,[rax+0x28]
  35d4e6:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  35d4ea:	4d 8b c1                                        	mov    r8,r9
  35d4ed:	0f 28 f2                                        	movaps xmm6,xmm2
  35d4f0:	49 8b f1                                        	mov    rsi,r9
  35d4f3:	f2 0f 10 4b 1c                                  	movsd  xmm1,QWORD PTR [rbx+0x1c]
  35d4f8:	48 8b fa                                        	mov    rdi,rdx
  35d4fb:	0f c6 f6 00                                     	shufps xmm6,xmm6,0x0
  35d4ff:	0f 59 ce                                        	mulps  xmm1,xmm6
  35d502:	0f 58 c8                                        	addps  xmm1,xmm0
  35d505:	f2 0f 11 48 28                                  	movsd  QWORD PTR [rax+0x28],xmm1
  35d50a:	e8 79 d5 ff ff                                  	call   0x35aa88
  35d50f:	48 89 45 00                                     	mov    QWORD PTR [rbp+0x0],rax
  35d513:	48 8d 8c 24 80 00 00 00                         	lea    rcx,[rsp+0x80]
  35d51b:	f2 0f 10 53 14                                  	movsd  xmm2,QWORD PTR [rbx+0x14]
  35d520:	4c 8b c6                                        	mov    r8,rsi
  35d523:	f2 0f 10 07                                     	movsd  xmm0,QWORD PTR [rdi]
  35d527:	48 8b d7                                        	mov    rdx,rdi
  35d52a:	0f 59 d6                                        	mulps  xmm2,xmm6
  35d52d:	0f 58 d0                                        	addps  xmm2,xmm0
  35d530:	f2 0f 11 94 24 80 00 00 00                      	movsd  QWORD PTR [rsp+0x80],xmm2
  35d539:	e8 4a d5 ff ff                                  	call   0x35aa88
  35d53e:	48 89 84 24 80 00 00 00                         	mov    QWORD PTR [rsp+0x80],rax
  35d546:	48 8d 8c 24 80 00 00 00                         	lea    rcx,[rsp+0x80]
  35d54e:	f3 0f 10 84 24 84 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x84]
  35d557:	4c 8b c6                                        	mov    r8,rsi
  35d55a:	f3 0f 11 45 0c                                  	movss  DWORD PTR [rbp+0xc],xmm0
  35d55f:	48 8b d7                                        	mov    rdx,rdi
  35d562:	89 45 08                                        	mov    DWORD PTR [rbp+0x8],eax
  35d565:	f2 0f 10 53 24                                  	movsd  xmm2,QWORD PTR [rbx+0x24]
  35d56a:	f2 0f 10 07                                     	movsd  xmm0,QWORD PTR [rdi]
  35d56e:	0f 59 d6                                        	mulps  xmm2,xmm6
  35d571:	0f 58 d0                                        	addps  xmm2,xmm0
  35d574:	f2 0f 11 94 24 80 00 00 00                      	movsd  QWORD PTR [rsp+0x80],xmm2
  35d57d:	e8 06 d5 ff ff                                  	call   0x35aa88
  35d582:	0f 28 74 24 20                                  	movaps xmm6,XMMWORD PTR [rsp+0x20]
  35d587:	48 89 84 24 80 00 00 00                         	mov    QWORD PTR [rsp+0x80],rax
  35d58f:	f3 0f 10 84 24 84 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x84]
  35d598:	f3 0f 11 45 14                                  	movss  DWORD PTR [rbp+0x14],xmm0
  35d59d:	89 45 10                                        	mov    DWORD PTR [rbp+0x10],eax
  35d5a0:	48 83 c4 38                                     	add    rsp,0x38
  35d5a4:	5f                                              	pop    rdi
  35d5a5:	5e                                              	pop    rsi
  35d5a6:	5d                                              	pop    rbp
  35d5a7:	5b                                              	pop    rbx
  35d5a8:	c3                                              	ret
