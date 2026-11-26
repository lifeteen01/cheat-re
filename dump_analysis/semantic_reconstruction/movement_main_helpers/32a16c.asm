
dump_analysis/semantic_reconstruction/movement_main_helpers/32a16c.bin:     file format binary


Disassembly of section .data:

000000000032a16c <.data>:
  32a16c:	48 8b c4                                        	mov    rax,rsp
  32a16f:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  32a173:	55                                              	push   rbp
  32a174:	53                                              	push   rbx
  32a175:	56                                              	push   rsi
  32a176:	57                                              	push   rdi
  32a177:	41 54                                           	push   r12
  32a179:	41 55                                           	push   r13
  32a17b:	41 56                                           	push   r14
  32a17d:	41 57                                           	push   r15
  32a17f:	48 8d 68 b9                                     	lea    rbp,[rax-0x47]
  32a183:	48 81 ec f8 00 00 00                            	sub    rsp,0xf8
  32a18a:	f3 0f 10 45 6f                                  	movss  xmm0,DWORD PTR [rbp+0x6f]
  32a18f:	4d 8b e9                                        	mov    r13,r9
  32a192:	8b 5a 08                                        	mov    ebx,DWORD PTR [rdx+0x8]
  32a195:	4d 8b f8                                        	mov    r15,r8
  32a198:	f3 0f 59 05 40 90 f6 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff69040]        # 0x2931e0
  32a1a0:	4c 8b f2                                        	mov    r14,rdx
  32a1a3:	48 8b f9                                        	mov    rdi,rcx
  32a1a6:	89 5c 24 38                                     	mov    DWORD PTR [rsp+0x38],ebx
  32a1aa:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  32a1ae:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  32a1b2:	f2 0f 10 3a                                     	movsd  xmm7,QWORD PTR [rdx]
  32a1b6:	f2 0f 11 7c 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm7
  32a1bc:	e8 6b 6a ff ff                                  	call   0x320c2c
  32a1c1:	f3 44 0f 2c e0                                  	cvttss2si r12d,xmm0
  32a1c6:	33 f6                                           	xor    esi,esi
  32a1c8:	45 85 e4                                        	test   r12d,r12d
  32a1cb:	0f 8e e3 01 00 00                               	jle    0x32a3b4
  32a1d1:	0f 57 c0                                        	xorps  xmm0,xmm0
  32a1d4:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  32a1d9:	0f 11 44 24 70                                  	movups XMMWORD PTR [rsp+0x70],xmm0
  32a1de:	0f 11 45 8b                                     	movups XMMWORD PTR [rbp-0x75],xmm0
  32a1e2:	0f 11 44 24 60                                  	movups XMMWORD PTR [rsp+0x60],xmm0
  32a1e7:	e8 18 ad fb ff                                  	call   0x2e4f04
  32a1ec:	49 8b d6                                        	mov    rdx,r14
  32a1ef:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  32a1f4:	e8 37 5d fb ff                                  	call   0x2dff30
  32a1f9:	4c 8d 44 24 30                                  	lea    r8,[rsp+0x30]
  32a1fe:	49 8b ce                                        	mov    rcx,r14
  32a201:	48 8d 55 9f                                     	lea    rdx,[rbp-0x61]
  32a205:	0f 28 f0                                        	movaps xmm6,xmm0
  32a208:	e8 bf 54 fb ff                                  	call   0x2df6cc
  32a20d:	44 8b 8d 87 00 00 00                            	mov    r9d,DWORD PTR [rbp+0x87]
  32a214:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  32a219:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  32a221:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  32a226:	0f 28 d6                                        	movaps xmm2,xmm6
  32a229:	f2 0f 11 7c 24 50                               	movsd  QWORD PTR [rsp+0x50],xmm7
  32a22f:	f2 0f 10 08                                     	movsd  xmm1,QWORD PTR [rax]
  32a233:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  32a236:	89 44 24 48                                     	mov    DWORD PTR [rsp+0x48],eax
  32a23a:	48 8d 44 24 60                                  	lea    rax,[rsp+0x60]
  32a23f:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  32a244:	f2 0f 11 4c 24 40                               	movsd  QWORD PTR [rsp+0x40],xmm1
  32a24a:	89 5c 24 58                                     	mov    DWORD PTR [rsp+0x58],ebx
  32a24e:	e8 59 ed fb ff                                  	call   0x2e8fac
  32a253:	84 c0                                           	test   al,al
  32a255:	0f 85 87 00 00 00                               	jne    0x32a2e2
  32a25b:	f2 41 0f 10 3e                                  	movsd  xmm7,QWORD PTR [r14]
  32a260:	48 8d 55 ab                                     	lea    rdx,[rbp-0x55]
  32a264:	41 8b 5e 08                                     	mov    ebx,DWORD PTR [r14+0x8]
  32a268:	49 8b cf                                        	mov    rcx,r15
  32a26b:	f3 0f 10 15 69 38 f6 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff63869]        # 0x28dadc
  32a273:	f2 0f 11 7c 24 30                               	movsd  QWORD PTR [rsp+0x30],xmm7
  32a279:	89 5c 24 38                                     	mov    DWORD PTR [rsp+0x38],ebx
  32a27d:	e8 ea 53 fb ff                                  	call   0x2df66c
  32a282:	48 8b d0                                        	mov    rdx,rax
  32a285:	49 8b ce                                        	mov    rcx,r14
  32a288:	e8 3b d9 09 00                                  	call   0x3c7bc8
  32a28d:	f3 0f 10 15 47 38 f6 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff63847]        # 0x28dadc
  32a295:	48 8d 55 b7                                     	lea    rdx,[rbp-0x49]
  32a299:	48 8b 4d 77                                     	mov    rcx,QWORD PTR [rbp+0x77]
  32a29d:	e8 ca 53 fb ff                                  	call   0x2df66c
  32a2a2:	48 8b d0                                        	mov    rdx,rax
  32a2a5:	49 8b cf                                        	mov    rcx,r15
  32a2a8:	e8 1b d9 09 00                                  	call   0x3c7bc8
  32a2ad:	f3 0f 10 55 7f                                  	movss  xmm2,DWORD PTR [rbp+0x7f]
  32a2b2:	48 8d 55 c3                                     	lea    rdx,[rbp-0x3d]
  32a2b6:	49 8b cf                                        	mov    rcx,r15
  32a2b9:	e8 ae 53 fb ff                                  	call   0x2df66c
  32a2be:	f3 0f 10 15 16 38 f6 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff63816]        # 0x28dadc
  32a2c6:	48 8d 55 cf                                     	lea    rdx,[rbp-0x31]
  32a2ca:	48 8b c8                                        	mov    rcx,rax
  32a2cd:	e8 9a 53 fb ff                                  	call   0x2df66c
  32a2d2:	48 8b d0                                        	mov    rdx,rax
  32a2d5:	49 8b cf                                        	mov    rcx,r15
  32a2d8:	e8 1b d9 09 00                                  	call   0x3c7bf8
  32a2dd:	e9 c7 00 00 00                                  	jmp    0x32a3a9
  32a2e2:	f3 0f 10 45 8b                                  	movss  xmm0,DWORD PTR [rbp-0x75]
  32a2e7:	0f 2e 05 5e 2f f6 ff                            	ucomiss xmm0,DWORD PTR [rip+0xfffffffffff62f5e]        # 0x28d24c
  32a2ee:	7a 06                                           	jp     0x32a2f6
  32a2f0:	0f 84 b3 00 00 00                               	je     0x32a3a9
  32a2f6:	48 8d 4c 24 60                                  	lea    rcx,[rsp+0x60]
  32a2fb:	e8 20 f6 ff ff                                  	call   0x329920
  32a300:	48 8b c8                                        	mov    rcx,rax
  32a303:	4c 8b f8                                        	mov    r15,rax
  32a306:	e8 fd 0b fa ff                                  	call   0x2caf08
  32a30b:	84 c0                                           	test   al,al
  32a30d:	0f 84 92 00 00 00                               	je     0x32a3a5
  32a313:	8b 15 37 a4 0c 00                               	mov    edx,DWORD PTR [rip+0xca437]        # 0x3f4750
  32a319:	f6 c2 01                                        	test   dl,0x1
  32a31c:	75 20                                           	jne    0x32a33e
  32a31e:	4c 8b 05 db cb 0a 00                            	mov    r8,QWORD PTR [rip+0xacbdb]        # 0x3d6f00
  32a325:	83 ca 01                                        	or     edx,0x1
  32a328:	49 81 c0 b0 e7 97 05                            	add    r8,0x597e7b0
  32a32f:	89 15 1b a4 0c 00                               	mov    DWORD PTR [rip+0xca41b],edx        # 0x3f4750
  32a335:	4c 89 05 0c a4 0c 00                            	mov    QWORD PTR [rip+0xca40c],r8        # 0x3f4748
  32a33c:	eb 07                                           	jmp    0x32a345
  32a33e:	4c 8b 05 03 a4 0c 00                            	mov    r8,QWORD PTR [rip+0xca403]        # 0x3f4748
  32a345:	f6 c2 02                                        	test   dl,0x2
  32a348:	75 1f                                           	jne    0x32a369
  32a34a:	48 8b 0d 0f bb 0a 00                            	mov    rcx,QWORD PTR [rip+0xabb0f]        # 0x3d5e60
  32a351:	83 ca 02                                        	or     edx,0x2
  32a354:	89 15 f6 a3 0c 00                               	mov    DWORD PTR [rip+0xca3f6],edx        # 0x3f4750
  32a35a:	45 33 c9                                        	xor    r9d,r9d
  32a35d:	48 8d 15 fc a3 0c 00                            	lea    rdx,[rip+0xca3fc]        # 0x3f4760
  32a364:	e8 bb 19 fa ff                                  	call   0x2cbd24
  32a369:	48 8b 0d f0 ba 0a 00                            	mov    rcx,QWORD PTR [rip+0xabaf0]        # 0x3d5e60
  32a370:	48 8d 15 e9 a3 0c 00                            	lea    rdx,[rip+0xca3e9]        # 0x3f4760
  32a377:	4d 8b c7                                        	mov    r8,r15
  32a37a:	e8 7d 16 fa ff                                  	call   0x2cb9fc
  32a37f:	48 8b c8                                        	mov    rcx,rax
  32a382:	48 8b d0                                        	mov    rdx,rax
  32a385:	e8 7e 0b fa ff                                  	call   0x2caf08
  32a38a:	84 c0                                           	test   al,al
  32a38c:	74 17                                           	je     0x32a3a5
  32a38e:	48 8b ca                                        	mov    rcx,rdx
  32a391:	e8 be b6 fb ff                                  	call   0x2e5a54
  32a396:	48 8b c8                                        	mov    rcx,rax
  32a399:	48 8b d0                                        	mov    rdx,rax
  32a39c:	e8 67 0b fa ff                                  	call   0x2caf08
  32a3a1:	84 c0                                           	test   al,al
  32a3a3:	75 3b                                           	jne    0x32a3e0
  32a3a5:	4c 8b 7d 5f                                     	mov    r15,QWORD PTR [rbp+0x5f]
  32a3a9:	ff c6                                           	inc    esi
  32a3ab:	41 3b f4                                        	cmp    esi,r12d
  32a3ae:	0f 8c 1d fe ff ff                               	jl     0x32a1d1
  32a3b4:	f2 0f 11 3f                                     	movsd  QWORD PTR [rdi],xmm7
  32a3b8:	89 5f 08                                        	mov    DWORD PTR [rdi+0x8],ebx
  32a3bb:	4c 8d 9c 24 f8 00 00 00                         	lea    r11,[rsp+0xf8]
  32a3c3:	48 8b c7                                        	mov    rax,rdi
  32a3c6:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  32a3cb:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  32a3d0:	49 8b e3                                        	mov    rsp,r11
  32a3d3:	41 5f                                           	pop    r15
  32a3d5:	41 5e                                           	pop    r14
  32a3d7:	41 5d                                           	pop    r13
  32a3d9:	41 5c                                           	pop    r12
  32a3db:	5f                                              	pop    rdi
  32a3dc:	5e                                              	pop    rsi
  32a3dd:	5b                                              	pop    rbx
  32a3de:	5d                                              	pop    rbp
  32a3df:	c3                                              	ret
  32a3e0:	48 8b ca                                        	mov    rcx,rdx
  32a3e3:	e8 6c bf fa ff                                  	call   0x2d6354
  32a3e8:	48 8d 54 24 30                                  	lea    rdx,[rsp+0x30]
  32a3ed:	48 8b d8                                        	mov    rbx,rax
  32a3f0:	48 8d 4d 6f                                     	lea    rcx,[rbp+0x6f]
  32a3f4:	e8 8b 94 ff ff                                  	call   0x323884
  32a3f9:	48 8b c8                                        	mov    rcx,rax
  32a3fc:	e8 cb e1 fa ff                                  	call   0x2d85cc
  32a401:	48 8b c8                                        	mov    rcx,rax
  32a404:	48 ba 25 23 22 84 e4 9c f2 cb                   	movabs rdx,0xcbf29ce484222325
  32a40e:	e8 39 b7 fb ff                                  	call   0x2e5b4c
  32a413:	48 3b d8                                        	cmp    rbx,rax
  32a416:	75 2d                                           	jne    0x32a445
  32a418:	0f 10 4c 24 60                                  	movups xmm1,XMMWORD PTR [rsp+0x60]
  32a41d:	66 0f 6e c6                                     	movd   xmm0,esi
  32a421:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  32a424:	f3 0f 59 05 b0 36 f6 ff                         	mulss  xmm0,DWORD PTR [rip+0xfffffffffff636b0]        # 0x28dadc
  32a42c:	f3 41 0f 11 45 00                               	movss  DWORD PTR [r13+0x0],xmm0
  32a432:	f2 0f 11 0f                                     	movsd  QWORD PTR [rdi],xmm1
  32a436:	66 0f 73 d9 08                                  	psrldq xmm1,0x8
  32a43b:	66 0f 7e 4f 08                                  	movd   DWORD PTR [rdi+0x8],xmm1
  32a440:	e9 76 ff ff ff                                  	jmp    0x32a3bb
  32a445:	48 8b cf                                        	mov    rcx,rdi
  32a448:	e8 6f d7 09 00                                  	call   0x3c7bbc
  32a44d:	e9 69 ff ff ff                                  	jmp    0x32a3bb
