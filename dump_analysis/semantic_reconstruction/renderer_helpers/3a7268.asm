
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a7268 <.data+0x3a7268>:
  3a7268:	48 89 5c 24 08                                  	mov    QWORD PTR [rsp+0x8],rbx
  3a726d:	48 89 7c 24 10                                  	mov    QWORD PTR [rsp+0x10],rdi
  3a7272:	55                                              	push   rbp
  3a7273:	48 8b ec                                        	mov    rbp,rsp
  3a7276:	48 83 ec 40                                     	sub    rsp,0x40
  3a727a:	f3 41 0f 10 40 04                               	movss  xmm0,DWORD PTR [r8+0x4]
  3a7280:	48 8b f9                                        	mov    rdi,rcx
  3a7283:	f3 41 0f 10 18                                  	movss  xmm3,DWORD PTR [r8]
  3a7288:	48 8d 4d f0                                     	lea    rcx,[rbp-0x10]
  3a728c:	f3 0f 10 52 04                                  	movss  xmm2,DWORD PTR [rdx+0x4]
  3a7291:	41 8a d9                                        	mov    bl,r9b
  3a7294:	f3 0f 10 0a                                     	movss  xmm1,DWORD PTR [rdx]
  3a7298:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a729e:	e8 ad 50 f2 ff                                  	call   0x2cc350
  3a72a3:	f3 0f 10 45 f0                                  	movss  xmm0,DWORD PTR [rbp-0x10]
  3a72a8:	84 db                                           	test   bl,bl
  3a72aa:	74 5b                                           	je     0x3a7307
  3a72ac:	f3 0f 10 8f 88 00 00 00                         	movss  xmm1,DWORD PTR [rdi+0x88]
  3a72b4:	0f 2f c8                                        	comiss xmm1,xmm0
  3a72b7:	f3 0f 10 9f 8c 00 00 00                         	movss  xmm3,DWORD PTR [rdi+0x8c]
  3a72bf:	f3 0f 10 a7 90 00 00 00                         	movss  xmm4,DWORD PTR [rdi+0x90]
  3a72c7:	f3 0f 10 af 94 00 00 00                         	movss  xmm5,DWORD PTR [rdi+0x94]
  3a72cf:	76 08                                           	jbe    0x3a72d9
  3a72d1:	f3 0f 11 4d f0                                  	movss  DWORD PTR [rbp-0x10],xmm1
  3a72d6:	0f 28 c1                                        	movaps xmm0,xmm1
  3a72d9:	f3 0f 10 55 f4                                  	movss  xmm2,DWORD PTR [rbp-0xc]
  3a72de:	0f 2f da                                        	comiss xmm3,xmm2
  3a72e1:	76 08                                           	jbe    0x3a72eb
  3a72e3:	f3 0f 11 5d f4                                  	movss  DWORD PTR [rbp-0xc],xmm3
  3a72e8:	0f 28 d3                                        	movaps xmm2,xmm3
  3a72eb:	f3 0f 10 4d f8                                  	movss  xmm1,DWORD PTR [rbp-0x8]
  3a72f0:	0f 2f cc                                        	comiss xmm1,xmm4
  3a72f3:	76 03                                           	jbe    0x3a72f8
  3a72f5:	0f 28 cc                                        	movaps xmm1,xmm4
  3a72f8:	f3 0f 10 5d fc                                  	movss  xmm3,DWORD PTR [rbp-0x4]
  3a72fd:	0f 2f dd                                        	comiss xmm3,xmm5
  3a7300:	76 14                                           	jbe    0x3a7316
  3a7302:	0f 28 dd                                        	movaps xmm3,xmm5
  3a7305:	eb 0f                                           	jmp    0x3a7316
  3a7307:	f3 0f 10 5d fc                                  	movss  xmm3,DWORD PTR [rbp-0x4]
  3a730c:	f3 0f 10 4d f8                                  	movss  xmm1,DWORD PTR [rbp-0x8]
  3a7311:	f3 0f 10 55 f4                                  	movss  xmm2,DWORD PTR [rbp-0xc]
  3a7316:	e8 d9 30 fe ff                                  	call   0x38a3f4
  3a731b:	f3 0f 11 45 f8                                  	movss  DWORD PTR [rbp-0x8],xmm0
  3a7320:	0f 28 cb                                        	movaps xmm1,xmm3
  3a7323:	0f 28 c2                                        	movaps xmm0,xmm2
  3a7326:	e8 c9 30 fe ff                                  	call   0x38a3f4
  3a732b:	48 8d 4f 58                                     	lea    rcx,[rdi+0x58]
  3a732f:	f3 0f 11 45 fc                                  	movss  DWORD PTR [rbp-0x4],xmm0
  3a7334:	48 8d 55 f0                                     	lea    rdx,[rbp-0x10]
  3a7338:	e8 f3 7c ff ff                                  	call   0x39f030
  3a733d:	0f 10 45 f0                                     	movups xmm0,XMMWORD PTR [rbp-0x10]
  3a7341:	48 8b cf                                        	mov    rcx,rdi
  3a7344:	f3 0f 7f 87 88 00 00 00                         	movdqu XMMWORD PTR [rdi+0x88],xmm0
  3a734c:	48 8b 5c 24 50                                  	mov    rbx,QWORD PTR [rsp+0x50]
  3a7351:	48 8b 7c 24 58                                  	mov    rdi,QWORD PTR [rsp+0x58]
  3a7356:	48 83 c4 40                                     	add    rsp,0x40
  3a735a:	5d                                              	pop    rbp
  3a735b:	e9 34 1a 00 00                                  	jmp    0x3a8d94
