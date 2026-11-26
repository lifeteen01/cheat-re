
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a7400 <.data+0x3a7400>:
  3a7400:	48 89 5c 24 18                                  	mov    QWORD PTR [rsp+0x18],rbx
  3a7405:	48 89 74 24 20                                  	mov    QWORD PTR [rsp+0x20],rsi
  3a740a:	55                                              	push   rbp
  3a740b:	57                                              	push   rdi
  3a740c:	41 56                                           	push   r14
  3a740e:	48 8b ec                                        	mov    rbp,rsp
  3a7411:	48 81 ec 80 00 00 00                            	sub    rsp,0x80
  3a7418:	48 8b 41 38                                     	mov    rax,QWORD PTR [rcx+0x38]
  3a741c:	48 8b f1                                        	mov    rsi,rcx
  3a741f:	0f 29 7c 24 70                                  	movaps XMMWORD PTR [rsp+0x70],xmm7
  3a7424:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a7428:	41 8b d9                                        	mov    ebx,r9d
  3a742b:	48 89 55 c8                                     	mov    QWORD PTR [rbp-0x38],rdx
  3a742f:	45 8b f0                                        	mov    r14d,r8d
  3a7432:	f3 0f 10 48 10                                  	movss  xmm1,DWORD PTR [rax+0x10]
  3a7437:	0f 28 f9                                        	movaps xmm7,xmm1
  3a743a:	f3 0f 59 0d 0e 5e ee ff                         	mulss  xmm1,DWORD PTR [rip+0xffffffffffee5e0e]        # 0x28d250
  3a7442:	f3 0f 59 3d 9e 66 ee ff                         	mulss  xmm7,DWORD PTR [rip+0xffffffffffee669e]        # 0x28dae8
  3a744a:	0f 28 d1                                        	movaps xmm2,xmm1
  3a744d:	f3 0f 59 55 40                                  	mulss  xmm2,DWORD PTR [rbp+0x40]
  3a7452:	f3 0f 59 7d 40                                  	mulss  xmm7,DWORD PTR [rbp+0x40]
  3a7457:	e8 e4 4e f2 ff                                  	call   0x2cc340
  3a745c:	4c 8b c0                                        	mov    r8,rax
  3a745f:	48 8d 55 c8                                     	lea    rdx,[rbp-0x38]
  3a7463:	48 8d 4d c0                                     	lea    rcx,[rbp-0x40]
  3a7467:	e8 6c 85 f4 ff                                  	call   0x2ef9d8
  3a746c:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a7470:	e8 fb d3 f2 ff                                  	call   0x2d4870
  3a7475:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3a7479:	e8 f2 d3 f2 ff                                  	call   0x2d4870
  3a747e:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a7482:	e8 e9 d3 f2 ff                                  	call   0x2d4870
  3a7487:	8b cb                                           	mov    ecx,ebx
  3a7489:	85 db                                           	test   ebx,ebx
  3a748b:	0f 84 8d 00 00 00                               	je     0x3a751e
  3a7491:	83 e9 01                                        	sub    ecx,0x1
  3a7494:	0f 84 80 00 00 00                               	je     0x3a751a
  3a749a:	83 e9 01                                        	sub    ecx,0x1
  3a749d:	74 09                                           	je     0x3a74a8
  3a749f:	83 f9 01                                        	cmp    ecx,0x1
  3a74a2:	0f 85 0b 01 00 00                               	jne    0x3a75b3
  3a74a8:	83 fb 02                                        	cmp    ebx,0x2
  3a74ab:	75 07                                           	jne    0x3a74b4
  3a74ad:	0f 57 3d ec bd ee ff                            	xorps  xmm7,XMMWORD PTR [rip+0xffffffffffeebdec]        # 0x2932a0
  3a74b4:	f3 0f 10 15 f8 cc ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeeccf8]        # 0x2941b4
  3a74bc:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a74c0:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a74c3:	e8 78 4e f2 ff                                  	call   0x2cc340
  3a74c8:	48 8b d0                                        	mov    rdx,rax
  3a74cb:	48 8d 4d b8                                     	lea    rcx,[rbp-0x48]
  3a74cf:	0f 28 d7                                        	movaps xmm2,xmm7
  3a74d2:	e8 31 47 fe ff                                  	call   0x38bc08
  3a74d7:	f3 0f 10 15 01 cd ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeecd01]        # 0x2941e0
  3a74df:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a74e3:	f3 0f 10 0d 15 5a f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff05a15]        # 0x2acf00
  3a74eb:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a74ef:	f2 0f 11 45 b8                                  	movsd  QWORD PTR [rbp-0x48],xmm0
  3a74f4:	e8 47 4e f2 ff                                  	call   0x2cc340
  3a74f9:	48 8b d0                                        	mov    rdx,rax
  3a74fc:	48 8d 4d b0                                     	lea    rcx,[rbp-0x50]
  3a7500:	0f 28 d7                                        	movaps xmm2,xmm7
  3a7503:	e8 00 47 fe ff                                  	call   0x38bc08
  3a7508:	f3 0f 10 15 d0 cc ee ff                         	movss  xmm2,DWORD PTR [rip+0xffffffffffeeccd0]        # 0x2941e0
  3a7510:	f3 0f 10 0d bc 59 f0 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff059bc]        # 0x2aced4
  3a7518:	eb 6f                                           	jmp    0x3a7589
  3a751a:	85 db                                           	test   ebx,ebx
  3a751c:	75 07                                           	jne    0x3a7525
  3a751e:	0f 57 3d 7b bd ee ff                            	xorps  xmm7,XMMWORD PTR [rip+0xffffffffffeebd7b]        # 0x2932a0
  3a7525:	f3 0f 10 0d 87 cc ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeecc87]        # 0x2941b4
  3a752d:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a7531:	0f 57 d2                                        	xorps  xmm2,xmm2
  3a7534:	e8 07 4e f2 ff                                  	call   0x2cc340
  3a7539:	48 8b d0                                        	mov    rdx,rax
  3a753c:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a7540:	0f 28 d7                                        	movaps xmm2,xmm7
  3a7543:	e8 c0 46 fe ff                                  	call   0x38bc08
  3a7548:	f3 0f 10 15 84 59 f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff05984]        # 0x2aced4
  3a7550:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a7554:	f3 0f 10 0d 84 cc ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeecc84]        # 0x2941e0
  3a755c:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a7560:	f2 0f 11 45 b8                                  	movsd  QWORD PTR [rbp-0x48],xmm0
  3a7565:	e8 d6 4d f2 ff                                  	call   0x2cc340
  3a756a:	48 8b d0                                        	mov    rdx,rax
  3a756d:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a7571:	0f 28 d7                                        	movaps xmm2,xmm7
  3a7574:	e8 8f 46 fe ff                                  	call   0x38bc08
  3a7579:	f3 0f 10 15 7f 59 f0 ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffff0597f]        # 0x2acf00
  3a7581:	f3 0f 10 0d 57 cc ee ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffeecc57]        # 0x2941e0
  3a7589:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a758d:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a7591:	f2 0f 11 45 b0                                  	movsd  QWORD PTR [rbp-0x50],xmm0
  3a7596:	e8 a5 4d f2 ff                                  	call   0x2cc340
  3a759b:	0f 28 d7                                        	movaps xmm2,xmm7
  3a759e:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a75a2:	48 8b d0                                        	mov    rdx,rax
  3a75a5:	e8 5e 46 fe ff                                  	call   0x38bc08
  3a75aa:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a75ae:	f2 0f 11 45 20                                  	movsd  QWORD PTR [rbp+0x20],xmm0
  3a75b3:	4c 8d 45 20                                     	lea    r8,[rbp+0x20]
  3a75b7:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3a75bb:	48 8d 4d d0                                     	lea    rcx,[rbp-0x30]
  3a75bf:	e8 14 84 f4 ff                                  	call   0x2ef9d8
  3a75c4:	4c 8d 45 b0                                     	lea    r8,[rbp-0x50]
  3a75c8:	48 8b f8                                        	mov    rdi,rax
  3a75cb:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3a75cf:	48 8d 4d d8                                     	lea    rcx,[rbp-0x28]
  3a75d3:	e8 00 84 f4 ff                                  	call   0x2ef9d8
  3a75d8:	4c 8d 45 b8                                     	lea    r8,[rbp-0x48]
  3a75dc:	48 8b d8                                        	mov    rbx,rax
  3a75df:	48 8d 55 c0                                     	lea    rdx,[rbp-0x40]
  3a75e3:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3a75e7:	e8 ec 83 f4 ff                                  	call   0x2ef9d8
  3a75ec:	48 8b d0                                        	mov    rdx,rax
  3a75ef:	44 89 74 24 20                                  	mov    DWORD PTR [rsp+0x20],r14d
  3a75f4:	4c 8b cf                                        	mov    r9,rdi
  3a75f7:	4c 8b c3                                        	mov    r8,rbx
  3a75fa:	48 8b ce                                        	mov    rcx,rsi
  3a75fd:	e8 36 bd ff ff                                  	call   0x3a3338
  3a7602:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  3a7607:	4c 8d 9c 24 80 00 00 00                         	lea    r11,[rsp+0x80]
  3a760f:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  3a7613:	49 8b 73 38                                     	mov    rsi,QWORD PTR [r11+0x38]
  3a7617:	49 8b e3                                        	mov    rsp,r11
  3a761a:	41 5e                                           	pop    r14
  3a761c:	5f                                              	pop    rdi
  3a761d:	5d                                              	pop    rbp
  3a761e:	c3                                              	ret
