
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035c25c <.data+0x35c25c>:
  35c25c:	40 53                                           	rex push rbx
  35c25e:	55                                              	push   rbp
  35c25f:	56                                              	push   rsi
  35c260:	57                                              	push   rdi
  35c261:	48 83 ec 48                                     	sub    rsp,0x48
  35c265:	41 8b d9                                        	mov    ebx,r9d
  35c268:	49 8b f0                                        	mov    rsi,r8
  35c26b:	48 8b ea                                        	mov    rbp,rdx
  35c26e:	e8 8d 0f 00 00                                  	call   0x35d200
  35c273:	f3 0f 10 05 69 14 f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff31469]        # 0x28d6e4
  35c27b:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  35c280:	0f 57 e4                                        	xorps  xmm4,xmm4
  35c283:	0f 57 db                                        	xorps  xmm3,xmm3
  35c286:	0f 57 d2                                        	xorps  xmm2,xmm2
  35c289:	0f 57 c9                                        	xorps  xmm1,xmm1
  35c28c:	48 8b b8 98 02 00 00                            	mov    rdi,QWORD PTR [rax+0x298]
  35c293:	8b c3                                           	mov    eax,ebx
  35c295:	c1 e8 18                                        	shr    eax,0x18
  35c298:	f3 48 0f 2a e0                                  	cvtsi2ss xmm4,rax
  35c29d:	8b c3                                           	mov    eax,ebx
  35c29f:	c1 e8 10                                        	shr    eax,0x10
  35c2a2:	0f b6 c0                                        	movzx  eax,al
  35c2a5:	f3 48 0f 2a d8                                  	cvtsi2ss xmm3,rax
  35c2aa:	8b c3                                           	mov    eax,ebx
  35c2ac:	c1 e8 08                                        	shr    eax,0x8
  35c2af:	0f b6 c0                                        	movzx  eax,al
  35c2b2:	f3 0f 5e e0                                     	divss  xmm4,xmm0
  35c2b6:	f3 48 0f 2a d0                                  	cvtsi2ss xmm2,rax
  35c2bb:	0f b6 c3                                        	movzx  eax,bl
  35c2be:	f3 48 0f 2a c8                                  	cvtsi2ss xmm1,rax
  35c2c3:	f3 0f 5e d8                                     	divss  xmm3,xmm0
  35c2c7:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  35c2cb:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  35c2cf:	f3 0f 11 64 24 20                               	movss  DWORD PTR [rsp+0x20],xmm4
  35c2d5:	e8 76 00 f7 ff                                  	call   0x2cc350
  35c2da:	48 8b c8                                        	mov    rcx,rax
  35c2dd:	e8 7e 5f 03 00                                  	call   0x392260
  35c2e2:	f3 0f 10 84 24 90 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0x90]
  35c2eb:	44 8b c8                                        	mov    r9d,eax
  35c2ee:	4c 8b c6                                        	mov    r8,rsi
  35c2f1:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  35c2f7:	48 8b d5                                        	mov    rdx,rbp
  35c2fa:	48 8b cf                                        	mov    rcx,rdi
  35c2fd:	e8 f2 3e 04 00                                  	call   0x3a01f4
  35c302:	48 83 c4 48                                     	add    rsp,0x48
  35c306:	5f                                              	pop    rdi
  35c307:	5e                                              	pop    rsi
  35c308:	5d                                              	pop    rbp
  35c309:	5b                                              	pop    rbx
  35c30a:	c3                                              	ret
