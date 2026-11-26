
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000035b0fc <.data+0x35b0fc>:
  35b0fc:	48 8b c4                                        	mov    rax,rsp
  35b0ff:	53                                              	push   rbx
  35b100:	56                                              	push   rsi
  35b101:	57                                              	push   rdi
  35b102:	48 81 ec 00 01 00 00                            	sub    rsp,0x100
  35b109:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  35b10d:	0f 28 f3                                        	movaps xmm6,xmm3
  35b110:	0f 29 78 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm7
  35b114:	44 0f 29 40 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm8
  35b119:	44 0f 29 48 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm9
  35b11e:	44 0f 29 50 98                                  	movaps XMMWORD PTR [rax-0x68],xmm10
  35b123:	44 0f 29 58 88                                  	movaps XMMWORD PTR [rax-0x78],xmm11
  35b128:	44 0f 29 a0 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm12
  35b130:	44 0f 29 a8 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm13
  35b138:	44 0f 29 74 24 70                               	movaps XMMWORD PTR [rsp+0x70],xmm14
  35b13e:	44 0f 28 f1                                     	movaps xmm14,xmm1
  35b142:	44 0f 29 7c 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm15
  35b148:	44 0f 28 fa                                     	movaps xmm15,xmm2
  35b14c:	e8 53 74 03 00                                  	call   0x3925a4
  35b151:	f3 44 0f 10 15 f6 20 f3 ff                      	movss  xmm10,DWORD PTR [rip+0xfffffffffff320f6]        # 0x28d250
  35b15a:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  35b15f:	f3 0f 10 8c 24 50 01 00 00                      	movss  xmm1,DWORD PTR [rsp+0x150]
  35b168:	44 0f 28 ee                                     	movaps xmm13,xmm6
  35b16c:	f3 0f 10 94 24 48 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x148]
  35b175:	44 0f 28 e1                                     	movaps xmm12,xmm1
  35b179:	f3 44 0f 5e ac 24 40 01 00 00                   	divss  xmm13,DWORD PTR [rsp+0x140]
  35b183:	48 8b f0                                        	mov    rsi,rax
  35b186:	0f 28 c2                                        	movaps xmm0,xmm2
  35b189:	f3 45 0f 59 e2                                  	mulss  xmm12,xmm10
  35b18e:	f3 41 0f 59 c2                                  	mulss  xmm0,xmm10
  35b193:	f3 45 0f 5c fc                                  	subss  xmm15,xmm12
  35b198:	f3 44 0f 5c f0                                  	subss  xmm14,xmm0
  35b19d:	41 0f 28 c7                                     	movaps xmm0,xmm15
  35b1a1:	41 0f 28 ff                                     	movaps xmm7,xmm15
  35b1a5:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  35b1a9:	41 0f 28 ce                                     	movaps xmm1,xmm14
  35b1ad:	f3 41 0f 58 fa                                  	addss  xmm7,xmm10
  35b1b2:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  35b1b6:	45 0f 28 c6                                     	movaps xmm8,xmm14
  35b1ba:	f3 45 0f 58 c2                                  	addss  xmm8,xmm10
  35b1bf:	f3 0f 11 84 24 40 01 00 00                      	movss  DWORD PTR [rsp+0x140],xmm0
  35b1c8:	f3 41 0f 5c c2                                  	subss  xmm0,xmm10
  35b1cd:	f3 0f 11 bc 24 28 01 00 00                      	movss  DWORD PTR [rsp+0x128],xmm7
  35b1d6:	f3 0f 11 4c 24 44                               	movss  DWORD PTR [rsp+0x44],xmm1
  35b1dc:	f3 41 0f 5c ca                                  	subss  xmm1,xmm10
  35b1e1:	f3 44 0f 11 84 24 30 01 00 00                   	movss  DWORD PTR [rsp+0x130],xmm8
  35b1eb:	0f 28 d0                                        	movaps xmm2,xmm0
  35b1ee:	f3 0f 11 84 24 38 01 00 00                      	movss  DWORD PTR [rsp+0x138],xmm0
  35b1f7:	f3 0f 11 4c 24 40                               	movss  DWORD PTR [rsp+0x40],xmm1
  35b1fd:	e8 3e 11 f7 ff                                  	call   0x2cc340
  35b202:	0f 28 d7                                        	movaps xmm2,xmm7
  35b205:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35b20a:	41 0f 28 c8                                     	movaps xmm1,xmm8
  35b20e:	48 8b d8                                        	mov    rbx,rax
  35b211:	e8 2a 11 f7 ff                                  	call   0x2cc340
  35b216:	33 ff                                           	xor    edi,edi
  35b218:	48 8b d0                                        	mov    rdx,rax
  35b21b:	89 7c 24 28                                     	mov    DWORD PTR [rsp+0x28],edi
  35b21f:	41 b9 28 28 28 c8                               	mov    r9d,0xc8282828
  35b225:	4c 8b c3                                        	mov    r8,rbx
  35b228:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  35b22f:	48 8b ce                                        	mov    rcx,rsi
  35b232:	e8 0d 60 04 00                                  	call   0x3a1244
  35b237:	0f 2f 35 0e 20 f3 ff                            	comiss xmm6,DWORD PTR [rip+0xfffffffffff3200e]        # 0x28d24c
  35b23e:	f3 44 0f 10 1d 0d 20 f3 ff                      	movss  xmm11,DWORD PTR [rip+0xfffffffffff3200d]        # 0x28d254
  35b247:	0f 86 18 01 00 00                               	jbe    0x35b365
  35b24d:	f3 0f 10 8c 24 48 01 00 00                      	movss  xmm1,DWORD PTR [rsp+0x148]
  35b256:	41 0f 28 fe                                     	movaps xmm7,xmm14
  35b25a:	f3 0f 10 05 9a 28 f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff3289a]        # 0x28dafc
  35b262:	f3 0f 10 35 b2 cf f4 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff4cfb2]        # 0x2a821c
  35b26a:	f3 44 0f 10 0d bd cf f4 ff                      	movss  xmm9,DWORD PTR [rip+0xfffffffffff4cfbd]        # 0x2a8230
  35b273:	f3 0f 58 fe                                     	addss  xmm7,xmm6
  35b277:	f3 0f 10 9c 24 40 01 00 00                      	movss  xmm3,DWORD PTR [rsp+0x140]
  35b280:	f3 41 0f 5c c9                                  	subss  xmm1,xmm9
  35b285:	f3 44 0f 10 05 ca 7e f3 ff                      	movss  xmm8,DWORD PTR [rip+0xfffffffffff37eca]        # 0x293158
  35b28e:	f3 0f 5c de                                     	subss  xmm3,xmm6
  35b292:	f3 0f 58 f8                                     	addss  xmm7,xmm0
  35b296:	f3 41 0f 5c c8                                  	subss  xmm1,xmm8
  35b29b:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  35b29f:	0f 28 c1                                        	movaps xmm0,xmm1
  35b2a2:	0f 28 d1                                        	movaps xmm2,xmm1
  35b2a5:	f3 41 0f 59 c5                                  	mulss  xmm0,xmm13
  35b2aa:	41 0f 28 cb                                     	movaps xmm1,xmm11
  35b2ae:	e8 91 a7 f8 ff                                  	call   0x2e5a44
  35b2b3:	f3 0f 58 c7                                     	addss  xmm0,xmm7
  35b2b7:	0f 28 d3                                        	movaps xmm2,xmm3
  35b2ba:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35b2bf:	0f 28 c8                                        	movaps xmm1,xmm0
  35b2c2:	e8 79 10 f7 ff                                  	call   0x2cc340
  35b2c7:	41 0f 28 d7                                     	movaps xmm2,xmm15
  35b2cb:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  35b2d0:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  35b2d4:	0f 28 cf                                        	movaps xmm1,xmm7
  35b2d7:	f3 0f 10 35 1d 28 f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff3281d]        # 0x28dafc
  35b2df:	48 8b d8                                        	mov    rbx,rax
  35b2e2:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  35b2e6:	e8 55 10 f7 ff                                  	call   0x2cc340
  35b2eb:	f3 0f 10 1d f1 23 f3 ff                         	movss  xmm3,DWORD PTR [rip+0xfffffffffff323f1]        # 0x28d6e4
  35b2f3:	41 0f 28 c3                                     	movaps xmm0,xmm11
  35b2f7:	f3 0f 10 8c 24 50 01 00 00                      	movss  xmm1,DWORD PTR [rsp+0x150]
  35b300:	f3 41 0f 5c c5                                  	subss  xmm0,xmm13
  35b305:	f3 41 0f 5c c9                                  	subss  xmm1,xmm9
  35b30a:	89 7c 24 28                                     	mov    DWORD PTR [rsp+0x28],edi
  35b30e:	48 8b d0                                        	mov    rdx,rax
  35b311:	4c 8b c3                                        	mov    r8,rbx
  35b314:	48 8b ce                                        	mov    rcx,rsi
  35b317:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  35b31b:	f3 41 0f 5c c8                                  	subss  xmm1,xmm8
  35b320:	f3 4c 0f 2c c8                                  	cvttss2si r9,xmm0
  35b325:	41 0f 28 c5                                     	movaps xmm0,xmm13
  35b329:	f3 41 0f 59 ca                                  	mulss  xmm1,xmm10
  35b32e:	41 81 c9 00 00 ff ff                            	or     r9d,0xffff0000
  35b335:	f3 0f 59 c3                                     	mulss  xmm0,xmm3
  35b339:	41 c1 e1 08                                     	shl    r9d,0x8
  35b33d:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  35b343:	f3 48 0f 2c c0                                  	cvttss2si rax,xmm0
  35b348:	44 0b c8                                        	or     r9d,eax
  35b34b:	e8 f4 5e 04 00                                  	call   0x3a1244
  35b350:	f3 0f 10 bc 24 28 01 00 00                      	movss  xmm7,DWORD PTR [rsp+0x128]
  35b359:	f3 44 0f 10 84 24 30 01 00 00                   	movss  xmm8,DWORD PTR [rsp+0x130]
  35b363:	eb 08                                           	jmp    0x35b36d
  35b365:	f3 0f 10 35 8f 27 f3 ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffff3278f]        # 0x28dafc
  35b36d:	f3 0f 10 94 24 38 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x138]
  35b376:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35b37b:	f3 0f 10 4c 24 40                               	movss  xmm1,DWORD PTR [rsp+0x40]
  35b381:	e8 ba 0f f7 ff                                  	call   0x2cc340
  35b386:	0f 28 d7                                        	movaps xmm2,xmm7
  35b389:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  35b38e:	41 0f 28 c8                                     	movaps xmm1,xmm8
  35b392:	48 8b d8                                        	mov    rbx,rax
  35b395:	e8 a6 0f f7 ff                                  	call   0x2cc340
  35b39a:	f3 0f 11 74 24 30                               	movss  DWORD PTR [rsp+0x30],xmm6
  35b3a0:	48 8b d0                                        	mov    rdx,rax
  35b3a3:	c7 44 24 28 f0 00 00 00                         	mov    DWORD PTR [rsp+0x28],0xf0
  35b3ab:	41 b9 64 64 64 ff                               	mov    r9d,0xff646464
  35b3b1:	4c 8b c3                                        	mov    r8,rbx
  35b3b4:	f3 44 0f 11 64 24 20                            	movss  DWORD PTR [rsp+0x20],xmm12
  35b3bb:	48 8b ce                                        	mov    rcx,rsi
  35b3be:	e8 85 5d 04 00                                  	call   0x3a1148
  35b3c3:	45 0f 2f ea                                     	comiss xmm13,xmm10
  35b3c7:	0f 86 f7 00 00 00                               	jbe    0x35b4c4
  35b3cd:	e8 da 72 03 00                                  	call   0x3926ac
  35b3d2:	f3 0f 10 05 ea 26 0a 00                         	movss  xmm0,DWORD PTR [rip+0xa26ea]        # 0x3fdac4
  35b3da:	f3 0f 10 48 10                                  	movss  xmm1,DWORD PTR [rax+0x10]
  35b3df:	f3 0f 58 c9                                     	addss  xmm1,xmm1
  35b3e3:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  35b3e7:	f3 0f 11 05 d5 26 0a 00                         	movss  DWORD PTR [rip+0xa26d5],xmm0        # 0x3fdac4
  35b3ef:	e8 a4 4d f8 ff                                  	call   0x2e0198
  35b3f4:	f3 44 0f 10 6c 24 44                            	movss  xmm13,DWORD PTR [rsp+0x44]
  35b3fb:	44 0f 28 c0                                     	movaps xmm8,xmm0
  35b3ff:	f3 45 0f 58 c3                                  	addss  xmm8,xmm11
  35b404:	f3 45 0f 59 c2                                  	mulss  xmm8,xmm10
  35b409:	45 0f 28 c8                                     	movaps xmm9,xmm8
  35b40d:	f3 45 0f 58 cb                                  	addss  xmm9,xmm11
  35b412:	f3 0f 10 94 24 40 01 00 00                      	movss  xmm2,DWORD PTR [rsp+0x140]
  35b41b:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  35b420:	41 0f 28 cd                                     	movaps xmm1,xmm13
  35b424:	66 0f 6e ff                                     	movd   xmm7,edi
  35b428:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  35b42b:	f3 41 0f 59 fa                                  	mulss  xmm7,xmm10
  35b430:	0f 28 f7                                        	movaps xmm6,xmm7
  35b433:	f3 41 0f 58 f1                                  	addss  xmm6,xmm9
  35b438:	f3 0f 58 d6                                     	addss  xmm2,xmm6
  35b43c:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  35b440:	e8 fb 0e f7 ff                                  	call   0x2cc340
  35b445:	41 0f 28 d7                                     	movaps xmm2,xmm15
  35b449:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  35b44e:	41 0f 28 ce                                     	movaps xmm1,xmm14
  35b452:	f3 0f 5c d6                                     	subss  xmm2,xmm6
  35b456:	f3 0f 5c ce                                     	subss  xmm1,xmm6
  35b45a:	48 8b d8                                        	mov    rbx,rax
  35b45d:	e8 de 0e f7 ff                                  	call   0x2cc340
  35b462:	41 0f 28 c3                                     	movaps xmm0,xmm11
  35b466:	41 0f 28 cc                                     	movaps xmm1,xmm12
  35b46a:	f3 0f 5c c7                                     	subss  xmm0,xmm7
  35b46e:	48 8b d0                                        	mov    rdx,rax
  35b471:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  35b475:	4c 8b c3                                        	mov    r8,rbx
  35b478:	48 8b ce                                        	mov    rcx,rsi
  35b47b:	f3 41 0f 59 c0                                  	mulss  xmm0,xmm8
  35b480:	f3 0f 59 05 bc 26 f3 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff326bc]        # 0x28db44
  35b488:	f3 4c 0f 2c c8                                  	cvttss2si r9,xmm0
  35b48d:	f3 0f 10 05 67 26 f3 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff32667]        # 0x28dafc
  35b495:	f3 0f 11 44 24 30                               	movss  DWORD PTR [rsp+0x30],xmm0
  35b49b:	41 c1 e1 18                                     	shl    r9d,0x18
  35b49f:	41 81 c9 ff ff ff 00                            	or     r9d,0xffffff
  35b4a6:	c7 44 24 28 f0 00 00 00                         	mov    DWORD PTR [rsp+0x28],0xf0
  35b4ae:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm1
  35b4b4:	e8 8f 5c 04 00                                  	call   0x3a1148
  35b4b9:	ff c7                                           	inc    edi
  35b4bb:	83 ff 02                                        	cmp    edi,0x2
  35b4be:	0f 8c 4e ff ff ff                               	jl     0x35b412
  35b4c4:	44 0f 28 74 24 70                               	movaps xmm14,XMMWORD PTR [rsp+0x70]
  35b4ca:	4c 8d 9c 24 00 01 00 00                         	lea    r11,[rsp+0x100]
  35b4d2:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  35b4d7:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  35b4dc:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  35b4e1:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  35b4e6:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  35b4eb:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  35b4f0:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  35b4f5:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  35b4fa:	44 0f 28 7c 24 60                               	movaps xmm15,XMMWORD PTR [rsp+0x60]
  35b500:	49 8b e3                                        	mov    rsp,r11
  35b503:	5f                                              	pop    rdi
  35b504:	5e                                              	pop    rsi
  35b505:	5b                                              	pop    rbx
  35b506:	c3                                              	ret
