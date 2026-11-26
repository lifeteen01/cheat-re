
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000038f224 <.data+0x38f224>:
  38f224:	48 8b c4                                        	mov    rax,rsp
  38f227:	48 89 58 18                                     	mov    QWORD PTR [rax+0x18],rbx
  38f22b:	57                                              	push   rdi
  38f22c:	48 81 ec 80 00 00 00                            	sub    rsp,0x80
  38f233:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  38f237:	48 8b d9                                        	mov    rbx,rcx
  38f23a:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  38f23e:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  38f243:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  38f248:	66 48 0f 6e f2                                  	movq   xmm6,rdx
  38f24d:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  38f252:	44 0f 28 cb                                     	movaps xmm9,xmm3
  38f256:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  38f25b:	44 0f 28 d2                                     	movaps xmm10,xmm2
  38f25f:	48 8b 05 c2 68 07 00                            	mov    rax,QWORD PTR [rip+0x768c2]        # 0x405b28
  38f266:	f2 0f 11 b4 24 90 00 00 00                      	movsd  QWORD PTR [rsp+0x90],xmm6
  38f26f:	48 8b b8 08 3f 00 00                            	mov    rdi,QWORD PTR [rax+0x3f08]
  38f276:	e8 f5 55 f4 ff                                  	call   0x2d4870
  38f27b:	f3 0f 10 bc 24 94 00 00 00                      	movss  xmm7,DWORD PTR [rsp+0x94]
  38f284:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  38f288:	44 0f 2f c6                                     	comiss xmm8,xmm6
  38f28c:	77 06                                           	ja     0x38f294
  38f28e:	44 0f 2f c7                                     	comiss xmm8,xmm7
  38f292:	76 14                                           	jbe    0x38f2a8
  38f294:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  38f299:	e8 e6 30 00 00                                  	call   0x392384
  38f29e:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  38f2a2:	f2 0f 11 44 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm0
  38f2a8:	41 0f 2e f0                                     	ucomiss xmm6,xmm8
  38f2ac:	f3 0f 10 15 c4 3e f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff03ec4]        # 0x293178
  38f2b4:	7a 14                                           	jp     0x38f2ca
  38f2b6:	75 12                                           	jne    0x38f2ca
  38f2b8:	41 0f 28 f2                                     	movaps xmm6,xmm10
  38f2bc:	0f 14 f7                                        	unpcklps xmm6,xmm7
  38f2bf:	f2 0f 11 b4 24 90 00 00 00                      	movsd  QWORD PTR [rsp+0x90],xmm6
  38f2c8:	eb 2f                                           	jmp    0x38f2f9
  38f2ca:	44 0f 2f c6                                     	comiss xmm8,xmm6
  38f2ce:	76 29                                           	jbe    0x38f2f9
  38f2d0:	f3 0f 10 4c 24 20                               	movss  xmm1,DWORD PTR [rsp+0x20]
  38f2d6:	0f 28 c2                                        	movaps xmm0,xmm2
  38f2d9:	f3 0f 5c 8f 00 01 00 00                         	subss  xmm1,DWORD PTR [rdi+0x100]
  38f2e1:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  38f2e5:	e8 0a b1 ff ff                                  	call   0x38a3f4
  38f2ea:	0f 14 c7                                        	unpcklps xmm0,xmm7
  38f2ed:	0f 28 f0                                        	movaps xmm6,xmm0
  38f2f0:	f2 0f 11 84 24 90 00 00 00                      	movsd  QWORD PTR [rsp+0x90],xmm0
  38f2f9:	41 0f 2e f8                                     	ucomiss xmm7,xmm8
  38f2fd:	7a 0e                                           	jp     0x38f30d
  38f2ff:	75 0c                                           	jne    0x38f30d
  38f301:	f3 44 0f 11 8c 24 94 00 00 00                   	movss  DWORD PTR [rsp+0x94],xmm9
  38f30b:	eb 29                                           	jmp    0x38f336
  38f30d:	44 0f 2f c7                                     	comiss xmm8,xmm7
  38f311:	76 2c                                           	jbe    0x38f33f
  38f313:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [rsp+0x24]
  38f319:	0f 28 c2                                        	movaps xmm0,xmm2
  38f31c:	f3 0f 5c 8f 04 01 00 00                         	subss  xmm1,DWORD PTR [rdi+0x104]
  38f324:	f3 0f 58 cf                                     	addss  xmm1,xmm7
  38f328:	e8 c7 b0 ff ff                                  	call   0x38a3f4
  38f32d:	f3 0f 11 84 24 94 00 00 00                      	movss  DWORD PTR [rsp+0x94],xmm0
  38f336:	f2 0f 10 b4 24 90 00 00 00                      	movsd  xmm6,QWORD PTR [rsp+0x90]
  38f33f:	0f 28 7c 24 60                                  	movaps xmm7,XMMWORD PTR [rsp+0x60]
  38f344:	4c 8d 9c 24 80 00 00 00                         	lea    r11,[rsp+0x80]
  38f34c:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  38f351:	48 8b c3                                        	mov    rax,rbx
  38f354:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  38f359:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  38f35e:	f2 0f 11 33                                     	movsd  QWORD PTR [rbx],xmm6
  38f362:	49 8b 5b 20                                     	mov    rbx,QWORD PTR [r11+0x20]
  38f366:	0f 28 74 24 70                                  	movaps xmm6,XMMWORD PTR [rsp+0x70]
  38f36b:	49 8b e3                                        	mov    rsp,r11
  38f36e:	5f                                              	pop    rdi
  38f36f:	c3                                              	ret
