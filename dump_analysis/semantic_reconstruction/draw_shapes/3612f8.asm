
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003612f8 <.data+0x3612f8>:
  3612f8:	4c 8b dc                                        	mov    r11,rsp
  3612fb:	53                                              	push   rbx
  3612fc:	48 83 ec 40                                     	sub    rsp,0x40
  361300:	0f 28 c2                                        	movaps xmm0,xmm2
  361303:	49 8d 43 08                                     	lea    rax,[r11+0x8]
  361307:	49 89 43 e0                                     	mov    QWORD PTR [r11-0x20],rax
  36130b:	4d 8d 4b ec                                     	lea    r9,[r11-0x14]
  36130f:	0f 28 e1                                        	movaps xmm4,xmm1
  361312:	49 8d 43 e8                                     	lea    rax,[r11-0x18]
  361316:	0f 28 c8                                        	movaps xmm1,xmm0
  361319:	49 89 43 d8                                     	mov    QWORD PTR [r11-0x28],rax
  36131d:	0f 28 d3                                        	movaps xmm2,xmm3
  361320:	0f 28 c4                                        	movaps xmm0,xmm4
  361323:	48 8b d9                                        	mov    rbx,rcx
  361326:	e8 b5 f1 02 00                                  	call   0x3904e0
  36132b:	f3 0f 10 44 24 70                               	movss  xmm0,DWORD PTR [rsp+0x70]
  361331:	48 8b cb                                        	mov    rcx,rbx
  361334:	f3 0f 10 5c 24 50                               	movss  xmm3,DWORD PTR [rsp+0x50]
  36133a:	f3 0f 10 54 24 30                               	movss  xmm2,DWORD PTR [rsp+0x30]
  361340:	f3 0f 10 4c 24 34                               	movss  xmm1,DWORD PTR [rsp+0x34]
  361346:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  36134c:	e8 fb 34 f7 ff                                  	call   0x2d484c
  361351:	48 8b c3                                        	mov    rax,rbx
  361354:	48 83 c4 40                                     	add    rsp,0x40
  361358:	5b                                              	pop    rbx
  361359:	c3                                              	ret
