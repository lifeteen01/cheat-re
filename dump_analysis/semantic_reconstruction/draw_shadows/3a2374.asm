
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a2374 <.data+0x3a2374>:
  3a2374:	4c 89 4c 24 20                                  	mov    QWORD PTR [rsp+0x20],r9
  3a2379:	4c 89 44 24 18                                  	mov    QWORD PTR [rsp+0x18],r8
  3a237e:	48 89 4c 24 08                                  	mov    QWORD PTR [rsp+0x8],rcx
  3a2383:	55                                              	push   rbp
  3a2384:	53                                              	push   rbx
  3a2385:	56                                              	push   rsi
  3a2386:	57                                              	push   rdi
  3a2387:	41 54                                           	push   r12
  3a2389:	41 55                                           	push   r13
  3a238b:	41 56                                           	push   r14
  3a238d:	41 57                                           	push   r15
  3a238f:	48 81 ec 28 01 00 00                            	sub    rsp,0x128
  3a2396:	48 8d 6c 24 30                                  	lea    rbp,[rsp+0x30]
  3a239b:	f3 0f 10 02                                     	movss  xmm0,DWORD PTR [rdx]
  3a239f:	49 8b d9                                        	mov    rbx,r9
  3a23a2:	41 0f 2f 00                                     	comiss xmm0,DWORD PTR [r8]
  3a23a6:	4d 8b e0                                        	mov    r12,r8
  3a23a9:	4c 8b f2                                        	mov    r14,rdx
  3a23ac:	48 8b f1                                        	mov    rsi,rcx
  3a23af:	0f 29 b5 e0 00 00 00                            	movaps XMMWORD PTR [rbp+0xe0],xmm6
  3a23b6:	0f 29 bd d0 00 00 00                            	movaps XMMWORD PTR [rbp+0xd0],xmm7
  3a23bd:	44 0f 29 85 c0 00 00 00                         	movaps XMMWORD PTR [rbp+0xc0],xmm8
  3a23c5:	44 0f 29 8d b0 00 00 00                         	movaps XMMWORD PTR [rbp+0xb0],xmm9
  3a23cd:	44 0f 29 95 a0 00 00 00                         	movaps XMMWORD PTR [rbp+0xa0],xmm10
  3a23d5:	44 0f 29 9d 90 00 00 00                         	movaps XMMWORD PTR [rbp+0x90],xmm11
  3a23dd:	44 0f 29 a5 80 00 00 00                         	movaps XMMWORD PTR [rbp+0x80],xmm12
  3a23e5:	44 0f 29 6d 70                                  	movaps XMMWORD PTR [rbp+0x70],xmm13
  3a23ea:	44 0f 29 75 60                                  	movaps XMMWORD PTR [rbp+0x60],xmm14
  3a23ef:	0f 83 e9 06 00 00                               	jae    0x3a2ade
  3a23f5:	f3 0f 10 42 04                                  	movss  xmm0,DWORD PTR [rdx+0x4]
  3a23fa:	41 0f 2f 40 04                                  	comiss xmm0,DWORD PTR [r8+0x4]
  3a23ff:	0f 83 d9 06 00 00                               	jae    0x3a2ade
  3a2405:	8b 95 70 01 00 00                               	mov    edx,DWORD PTR [rbp+0x170]
  3a240b:	44 8d 4a 04                                     	lea    r9d,[rdx+0x4]
  3a240f:	49 63 c1                                        	movsxd rax,r9d
  3a2412:	48 c1 e0 03                                     	shl    rax,0x3
  3a2416:	48 8d 48 0f                                     	lea    rcx,[rax+0xf]
  3a241a:	48 3b c8                                        	cmp    rcx,rax
  3a241d:	77 0a                                           	ja     0x3a2429
  3a241f:	48 b9 f0 ff ff ff ff ff ff 0f                   	movabs rcx,0xffffffffffffff0
  3a2429:	48 83 e1 f0                                     	and    rcx,0xfffffffffffffff0
  3a242d:	48 8b c1                                        	mov    rax,rcx
  3a2430:	e8 1b ac f2 ff                                  	call   0x2cd050
  3a2435:	f2 41 0f 10 00                                  	movsd  xmm0,QWORD PTR [r8]
  3a243a:	48 2b e1                                        	sub    rsp,rcx
  3a243d:	f2 41 0f 10 0e                                  	movsd  xmm1,QWORD PTR [r14]
  3a2442:	48 8b 8d 68 01 00 00                            	mov    rcx,QWORD PTR [rbp+0x168]
  3a2449:	4c 8d 6c 24 30                                  	lea    r13,[rsp+0x30]
  3a244e:	f2 0f 11 44 24 28                               	movsd  QWORD PTR [rsp+0x28],xmm0
  3a2454:	4d 8b c5                                        	mov    r8,r13
  3a2457:	4c 89 6d 50                                     	mov    QWORD PTR [rbp+0x50],r13
  3a245b:	f2 0f 11 4c 24 20                               	movsd  QWORD PTR [rsp+0x20],xmm1
  3a2461:	e8 3e 1a 00 00                                  	call   0x3a3ea4
  3a2466:	4c 63 f8                                        	movsxd r15,eax
  3a2469:	48 8b ce                                        	mov    rcx,rsi
  3a246c:	44 89 7d 48                                     	mov    DWORD PTR [rbp+0x48],r15d
  3a2470:	85 c0                                           	test   eax,eax
  3a2472:	75 38                                           	jne    0x3a24ac
  3a2474:	8d 50 06                                        	lea    edx,[rax+0x6]
  3a2477:	44 8d 40 04                                     	lea    r8d,[rax+0x4]
  3a247b:	e8 1c 4d 00 00                                  	call   0x3a719c
  3a2480:	8b 85 78 01 00 00                               	mov    eax,DWORD PTR [rbp+0x178]
  3a2486:	4c 8b cb                                        	mov    r9,rbx
  3a2489:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a248d:	4d 8b c4                                        	mov    r8,r12
  3a2490:	48 8b 85 60 01 00 00                            	mov    rax,QWORD PTR [rbp+0x160]
  3a2497:	49 8b d6                                        	mov    rdx,r14
  3a249a:	48 8b ce                                        	mov    rcx,rsi
  3a249d:	48 89 44 24 20                                  	mov    QWORD PTR [rsp+0x20],rax
  3a24a2:	e8 79 4b 00 00                                  	call   0x3a7020
  3a24a7:	e9 32 06 00 00                                  	jmp    0x3a2ade
  3a24ac:	41 8d 47 04                                     	lea    eax,[r15+0x4]
  3a24b0:	8d 04 40                                        	lea    eax,[rax+rax*2]
  3a24b3:	8b d0                                           	mov    edx,eax
  3a24b5:	89 45 4c                                        	mov    DWORD PTR [rbp+0x4c],eax
  3a24b8:	45 8d 47 04                                     	lea    r8d,[r15+0x4]
  3a24bc:	e8 db 4c 00 00                                  	call   0x3a719c
  3a24c1:	48 8b 46 48                                     	mov    rax,QWORD PTR [rsi+0x48]
  3a24c5:	48 8d 4d 18                                     	lea    rcx,[rbp+0x18]
  3a24c9:	48 8b 7e 50                                     	mov    rdi,QWORD PTR [rsi+0x50]
  3a24cd:	4d 8b c6                                        	mov    r8,r14
  3a24d0:	48 89 45 08                                     	mov    QWORD PTR [rbp+0x8],rax
  3a24d4:	49 8b d4                                        	mov    rdx,r12
  3a24d7:	0f b7 46 34                                     	movzx  eax,WORD PTR [rsi+0x34]
  3a24db:	66 89 85 48 01 00 00                            	mov    WORD PTR [rbp+0x148],ax
  3a24e2:	48 89 7d 00                                     	mov    QWORD PTR [rbp+0x0],rdi
  3a24e6:	e8 f9 42 f9 ff                                  	call   0x3367e4
  3a24eb:	4c 8b 85 58 01 00 00                            	mov    r8,QWORD PTR [rbp+0x158]
  3a24f2:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a24f6:	48 8b 95 60 01 00 00                            	mov    rdx,QWORD PTR [rbp+0x160]
  3a24fd:	48 8b d8                                        	mov    rbx,rax
  3a2500:	e8 df 42 f9 ff                                  	call   0x3367e4
  3a2505:	48 8b d0                                        	mov    rdx,rax
  3a2508:	48 8d 4d 40                                     	lea    rcx,[rbp+0x40]
  3a250c:	4c 8b c3                                        	mov    r8,rbx
  3a250f:	e8 18 97 fe ff                                  	call   0x38bc2c
  3a2514:	48 8b 95 58 01 00 00                            	mov    rdx,QWORD PTR [rbp+0x158]
  3a251b:	4c 8d 45 40                                     	lea    r8,[rbp+0x40]
  3a251f:	48 8d 4d 18                                     	lea    rcx,[rbp+0x18]
  3a2523:	e8 04 97 fe ff                                  	call   0x38bc2c
  3a2528:	48 8b d0                                        	mov    rdx,rax
  3a252b:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3a252f:	4d 8b c6                                        	mov    r8,r14
  3a2532:	e8 ad 42 f9 ff                                  	call   0x3367e4
  3a2537:	c7 45 18 00 00 00 00                            	mov    DWORD PTR [rbp+0x18],0x0
  3a253e:	45 85 ff                                        	test   r15d,r15d
  3a2541:	7e 73                                           	jle    0x3a25b6
  3a2543:	8b 75 18                                        	mov    esi,DWORD PTR [rbp+0x18]
  3a2546:	48 8b 7d 08                                     	mov    rdi,QWORD PTR [rbp+0x8]
  3a254a:	44 8b a5 78 01 00 00                            	mov    r12d,DWORD PTR [rbp+0x178]
  3a2551:	f3 0f 10 55 14                                  	movss  xmm2,DWORD PTR [rbp+0x14]
  3a2556:	48 8d 4d 18                                     	lea    rcx,[rbp+0x18]
  3a255a:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [rbp+0x10]
  3a255f:	8b c6                                           	mov    eax,esi
  3a2561:	f2 41 0f 10 44 c5 00                            	movsd  xmm0,QWORD PTR [r13+rax*8+0x0]
  3a2568:	48 8d 1c 80                                     	lea    rbx,[rax+rax*4]
  3a256c:	f2 0f 11 04 9f                                  	movsd  QWORD PTR [rdi+rbx*4],xmm0
  3a2571:	f3 41 0f 58 54 c5 04                            	addss  xmm2,DWORD PTR [r13+rax*8+0x4]
  3a2578:	f3 41 0f 58 4c c5 00                            	addss  xmm1,DWORD PTR [r13+rax*8+0x0]
  3a257f:	f3 0f 59 55 44                                  	mulss  xmm2,DWORD PTR [rbp+0x44]
  3a2584:	f3 0f 59 4d 40                                  	mulss  xmm1,DWORD PTR [rbp+0x40]
  3a2589:	e8 b2 9d f2 ff                                  	call   0x2cc340
  3a258e:	ff c6                                           	inc    esi
  3a2590:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2594:	f2 0f 11 44 9f 08                               	movsd  QWORD PTR [rdi+rbx*4+0x8],xmm0
  3a259a:	44 89 64 9f 10                                  	mov    DWORD PTR [rdi+rbx*4+0x10],r12d
  3a259f:	41 3b f7                                        	cmp    esi,r15d
  3a25a2:	7c ad                                           	jl     0x3a2551
  3a25a4:	48 8b 7d 00                                     	mov    rdi,QWORD PTR [rbp+0x0]
  3a25a8:	48 8b b5 40 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x140]
  3a25af:	4c 8b a5 50 01 00 00                            	mov    r12,QWORD PTR [rbp+0x150]
  3a25b6:	ba 08 00 00 00                                  	mov    edx,0x8
  3a25bb:	4c 8d 0d ae 22 f3 ff                            	lea    r9,[rip+0xfffffffffff322ae]        # 0x2d4870
  3a25c2:	41 0f b7 c7                                     	movzx  eax,r15w
  3a25c6:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3a25ca:	66 03 85 48 01 00 00                            	add    ax,WORD PTR [rbp+0x148]
  3a25d1:	4b 8d 1c bf                                     	lea    rbx,[r15+r15*4]
  3a25d5:	66 89 85 50 01 00 00                            	mov    WORD PTR [rbp+0x150],ax
  3a25dc:	44 8d 42 fc                                     	lea    r8d,[rdx-0x4]
  3a25e0:	e8 4f d8 f3 ff                                  	call   0x2dfe34
  3a25e5:	f3 41 0f 10 56 04                               	movss  xmm2,DWORD PTR [r14+0x4]
  3a25eb:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a25ef:	f3 41 0f 10 0e                                  	movss  xmm1,DWORD PTR [r14]
  3a25f4:	e8 47 9d f2 ff                                  	call   0x2cc340
  3a25f9:	f3 41 0f 10 56 04                               	movss  xmm2,DWORD PTR [r14+0x4]
  3a25ff:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a2603:	f3 41 0f 10 0c 24                               	movss  xmm1,DWORD PTR [r12]
  3a2609:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [rax]
  3a260d:	f3 0f 10 78 04                                  	movss  xmm7,DWORD PTR [rax+0x4]
  3a2612:	f3 0f 11 75 20                                  	movss  DWORD PTR [rbp+0x20],xmm6
  3a2617:	f3 0f 11 7d 24                                  	movss  DWORD PTR [rbp+0x24],xmm7
  3a261c:	e8 1f 9d f2 ff                                  	call   0x2cc340
  3a2621:	f3 41 0f 10 0c 24                               	movss  xmm1,DWORD PTR [r12]
  3a2627:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a262b:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3a262f:	f3 0f 11 45 28                                  	movss  DWORD PTR [rbp+0x28],xmm0
  3a2634:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3a2639:	f3 0f 11 55 2c                                  	movss  DWORD PTR [rbp+0x2c],xmm2
  3a263e:	f3 41 0f 10 54 24 04                            	movss  xmm2,DWORD PTR [r12+0x4]
  3a2645:	e8 f6 9c f2 ff                                  	call   0x2cc340
  3a264a:	f3 41 0f 10 54 24 04                            	movss  xmm2,DWORD PTR [r12+0x4]
  3a2651:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a2655:	f3 41 0f 10 0e                                  	movss  xmm1,DWORD PTR [r14]
  3a265a:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3a265e:	f3 0f 11 45 30                                  	movss  DWORD PTR [rbp+0x30],xmm0
  3a2663:	f3 0f 10 58 04                                  	movss  xmm3,DWORD PTR [rax+0x4]
  3a2668:	f3 0f 11 5d 34                                  	movss  DWORD PTR [rbp+0x34],xmm3
  3a266d:	e8 ce 9c f2 ff                                  	call   0x2cc340
  3a2672:	4c 8b 75 08                                     	mov    r14,QWORD PTR [rbp+0x8]
  3a2676:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a267a:	4c 8b a5 58 01 00 00                            	mov    r12,QWORD PTR [rbp+0x158]
  3a2681:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [rax]
  3a2685:	f3 0f 11 45 38                                  	movss  DWORD PTR [rbp+0x38],xmm0
  3a268a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [rax+0x4]
  3a268f:	f3 0f 11 4d 3c                                  	movss  DWORD PTR [rbp+0x3c],xmm1
  3a2694:	f3 41 0f 11 34 9e                               	movss  DWORD PTR [r14+rbx*4],xmm6
  3a269a:	f3 41 0f 11 7c 9e 04                            	movss  DWORD PTR [r14+rbx*4+0x4],xmm7
  3a26a1:	f3 41 0f 10 54 24 04                            	movss  xmm2,DWORD PTR [r12+0x4]
  3a26a8:	f3 41 0f 10 0c 24                               	movss  xmm1,DWORD PTR [r12]
  3a26ae:	e8 8d 9c f2 ff                                  	call   0x2cc340
  3a26b3:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a26b7:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a26bb:	8b 85 78 01 00 00                               	mov    eax,DWORD PTR [rbp+0x178]
  3a26c1:	41 89 44 9e 10                                  	mov    DWORD PTR [r14+rbx*4+0x10],eax
  3a26c6:	48 8b 85 60 01 00 00                            	mov    rax,QWORD PTR [rbp+0x160]
  3a26cd:	f2 41 0f 11 44 9e 08                            	movsd  QWORD PTR [r14+rbx*4+0x8],xmm0
  3a26d4:	f3 0f 10 4d 28                                  	movss  xmm1,DWORD PTR [rbp+0x28]
  3a26d9:	f3 41 0f 11 4c 9e 14                            	movss  DWORD PTR [r14+rbx*4+0x14],xmm1
  3a26e0:	f3 0f 10 45 2c                                  	movss  xmm0,DWORD PTR [rbp+0x2c]
  3a26e5:	f3 41 0f 11 44 9e 18                            	movss  DWORD PTR [r14+rbx*4+0x18],xmm0
  3a26ec:	f3 41 0f 10 54 24 04                            	movss  xmm2,DWORD PTR [r12+0x4]
  3a26f3:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3a26f7:	e8 44 9c f2 ff                                  	call   0x2cc340
  3a26fc:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a2700:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2704:	8b 85 78 01 00 00                               	mov    eax,DWORD PTR [rbp+0x178]
  3a270a:	41 89 44 9e 24                                  	mov    DWORD PTR [r14+rbx*4+0x24],eax
  3a270f:	48 8b 85 60 01 00 00                            	mov    rax,QWORD PTR [rbp+0x160]
  3a2716:	f2 41 0f 11 44 9e 1c                            	movsd  QWORD PTR [r14+rbx*4+0x1c],xmm0
  3a271d:	f3 0f 10 4d 30                                  	movss  xmm1,DWORD PTR [rbp+0x30]
  3a2722:	f3 41 0f 11 4c 9e 28                            	movss  DWORD PTR [r14+rbx*4+0x28],xmm1
  3a2729:	f3 0f 10 45 34                                  	movss  xmm0,DWORD PTR [rbp+0x34]
  3a272e:	f3 41 0f 11 44 9e 2c                            	movss  DWORD PTR [r14+rbx*4+0x2c],xmm0
  3a2735:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3a273a:	f3 0f 10 08                                     	movss  xmm1,DWORD PTR [rax]
  3a273e:	e8 fd 9b f2 ff                                  	call   0x2cc340
  3a2743:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a2747:	8b 85 78 01 00 00                               	mov    eax,DWORD PTR [rbp+0x178]
  3a274d:	f2 41 0f 11 44 9e 30                            	movsd  QWORD PTR [r14+rbx*4+0x30],xmm0
  3a2754:	41 89 44 9e 38                                  	mov    DWORD PTR [r14+rbx*4+0x38],eax
  3a2759:	f3 0f 10 4d 38                                  	movss  xmm1,DWORD PTR [rbp+0x38]
  3a275e:	f3 41 0f 11 4c 9e 3c                            	movss  DWORD PTR [r14+rbx*4+0x3c],xmm1
  3a2765:	48 8b 85 60 01 00 00                            	mov    rax,QWORD PTR [rbp+0x160]
  3a276c:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a2770:	f3 0f 10 45 3c                                  	movss  xmm0,DWORD PTR [rbp+0x3c]
  3a2775:	f3 41 0f 11 44 9e 40                            	movss  DWORD PTR [r14+rbx*4+0x40],xmm0
  3a277c:	f3 41 0f 10 0c 24                               	movss  xmm1,DWORD PTR [r12]
  3a2782:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3a2787:	e8 b4 9b f2 ff                                  	call   0x2cc340
  3a278c:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  3a2790:	c7 45 10 00 00 00 00                            	mov    DWORD PTR [rbp+0x10],0x0
  3a2797:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  3a279b:	8b 85 78 01 00 00                               	mov    eax,DWORD PTR [rbp+0x178]
  3a27a1:	41 89 44 9e 4c                                  	mov    DWORD PTR [r14+rbx*4+0x4c],eax
  3a27a6:	41 8d 47 04                                     	lea    eax,[r15+0x4]
  3a27aa:	f2 41 0f 11 44 9e 44                            	movsd  QWORD PTR [r14+rbx*4+0x44],xmm0
  3a27b1:	01 46 34                                        	add    DWORD PTR [rsi+0x34],eax
  3a27b4:	41 8d 47 04                                     	lea    eax,[r15+0x4]
  3a27b8:	48 98                                           	cdqe
  3a27ba:	48 8d 0c 80                                     	lea    rcx,[rax+rax*4]
  3a27be:	48 c1 e1 02                                     	shl    rcx,0x2
  3a27c2:	41 8d 47 ff                                     	lea    eax,[r15-0x1]
  3a27c6:	48 01 4e 48                                     	add    QWORD PTR [rsi+0x48],rcx
  3a27ca:	83 c9 ff                                        	or     ecx,0xffffffff
  3a27cd:	f3 41 0f 10 45 0c                               	movss  xmm0,DWORD PTR [r13+0xc]
  3a27d3:	8b d9                                           	mov    ebx,ecx
  3a27d5:	f3 41 0f 10 55 14                               	movss  xmm2,DWORD PTR [r13+0x14]
  3a27db:	44 8b f1                                        	mov    r14d,ecx
  3a27de:	f3 41 0f 10 4d 04                               	movss  xmm1,DWORD PTR [r13+0x4]
  3a27e4:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3a27e8:	89 45 08                                        	mov    DWORD PTR [rbp+0x8],eax
  3a27eb:	f3 0f 5c c2                                     	subss  xmm0,xmm2
  3a27ef:	48 98                                           	cdqe
  3a27f1:	f3 41 0f 5c 55 04                               	subss  xmm2,DWORD PTR [r13+0x4]
  3a27f7:	f3 45 0f 10 74 c5 00                            	movss  xmm14,DWORD PTR [r13+rax*8+0x0]
  3a27fe:	f3 45 0f 10 54 c5 04                            	movss  xmm10,DWORD PTR [r13+rax*8+0x4]
  3a2805:	8d 41 02                                        	lea    eax,[rcx+0x2]
  3a2808:	f3 41 0f 59 55 08                               	mulss  xmm2,DWORD PTR [r13+0x8]
  3a280e:	f3 41 0f 59 45 00                               	mulss  xmm0,DWORD PTR [r13+0x0]
  3a2814:	f3 41 0f 59 4d 10                               	mulss  xmm1,DWORD PTR [r13+0x10]
  3a281a:	f3 0f 58 d0                                     	addss  xmm2,xmm0
  3a281e:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  3a2822:	44 0f 2f e2                                     	comiss xmm12,xmm2
  3a2826:	0f 47 c1                                        	cmova  eax,ecx
  3a2829:	89 45 18                                        	mov    DWORD PTR [rbp+0x18],eax
  3a282c:	45 85 ff                                        	test   r15d,r15d
  3a282f:	0f 8e 8b 02 00 00                               	jle    0x3a2ac0
  3a2835:	f3 44 0f 10 2d 6a 08 ef ff                      	movss  xmm13,DWORD PTR [rip+0xffffffffffef086a]        # 0x2930a8
  3a283e:	8b 75 10                                        	mov    esi,DWORD PTR [rbp+0x10]
  3a2841:	8b c6                                           	mov    eax,esi
  3a2843:	48 8d 4d 00                                     	lea    rcx,[rbp+0x0]
  3a2847:	f3 45 0f 10 5c c5 00                            	movss  xmm11,DWORD PTR [r13+rax*8+0x0]
  3a284e:	f3 45 0f 10 4c c5 04                            	movss  xmm9,DWORD PTR [r13+rax*8+0x4]
  3a2855:	41 0f 28 d3                                     	movaps xmm2,xmm11
  3a2859:	f3 41 0f 5c d6                                  	subss  xmm2,xmm14
  3a285e:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3a2862:	f3 41 0f 5c ca                                  	subss  xmm1,xmm10
  3a2867:	0f 57 15 32 0a ef ff                            	xorps  xmm2,XMMWORD PTR [rip+0xffffffffffef0a32]        # 0x2932a0
  3a286e:	e8 cd 9a f2 ff                                  	call   0x2cc340
  3a2873:	f3 0f 10 75 00                                  	movss  xmm6,DWORD PTR [rbp+0x0]
  3a2878:	0f 28 c6                                        	movaps xmm0,xmm6
  3a287b:	e8 70 16 f4 ff                                  	call   0x2e3ef0
  3a2880:	f3 0f 10 7d 04                                  	movss  xmm7,DWORD PTR [rbp+0x4]
  3a2885:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3a2889:	0f 28 c7                                        	movaps xmm0,xmm7
  3a288c:	e8 5f 16 f4 ff                                  	call   0x2e3ef0
  3a2891:	33 c0                                           	xor    eax,eax
  3a2893:	41 0f 28 d2                                     	movaps xmm2,xmm10
  3a2897:	41 0f 2f fc                                     	comiss xmm7,xmm12
  3a289b:	f3 41 0f 5c d1                                  	subss  xmm2,xmm9
  3a28a0:	0f 97 c0                                        	seta   al
  3a28a3:	33 d2                                           	xor    edx,edx
  3a28a5:	ff c0                                           	inc    eax
  3a28a7:	41 0f 2f fc                                     	comiss xmm7,xmm12
  3a28ab:	8d 4a 03                                        	lea    ecx,[rdx+0x3]
  3a28ae:	0f 47 d1                                        	cmova  edx,ecx
  3a28b1:	41 0f 2f f4                                     	comiss xmm6,xmm12
  3a28b5:	0f 43 d0                                        	cmovae edx,eax
  3a28b8:	33 c9                                           	xor    ecx,ecx
  3a28ba:	41 0f 2f f4                                     	comiss xmm6,xmm12
  3a28be:	0f 96 c1                                        	setbe  cl
  3a28c1:	33 c0                                           	xor    eax,eax
  3a28c3:	83 c1 02                                        	add    ecx,0x2
  3a28c6:	41 0f 2f f4                                     	comiss xmm6,xmm12
  3a28ca:	0f 97 c0                                        	seta   al
  3a28cd:	41 0f 2f fc                                     	comiss xmm7,xmm12
  3a28d1:	0f 43 c1                                        	cmovae eax,ecx
  3a28d4:	44 0f 2f c0                                     	comiss xmm8,xmm0
  3a28d8:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a28dc:	0f 47 c2                                        	cmova  eax,edx
  3a28df:	44 8b e0                                        	mov    r12d,eax
  3a28e2:	f3 0f 5c 44 c5 24                               	subss  xmm0,DWORD PTR [rbp+rax*8+0x24]
  3a28e8:	f3 0f 10 4c c5 24                               	movss  xmm1,DWORD PTR [rbp+rax*8+0x24]
  3a28ee:	f3 0f 59 54 c5 20                               	mulss  xmm2,DWORD PTR [rbp+rax*8+0x20]
  3a28f4:	f3 41 0f 5c ca                                  	subss  xmm1,xmm10
  3a28f9:	f3 41 0f 59 c6                                  	mulss  xmm0,xmm14
  3a28fe:	f3 41 0f 59 cb                                  	mulss  xmm1,xmm11
  3a2903:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a2907:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3a290b:	e8 e0 15 f4 ff                                  	call   0x2e3ef0
  3a2910:	44 0f 2f e8                                     	comiss xmm13,xmm0
  3a2914:	8b 4d 08                                        	mov    ecx,DWORD PTR [rbp+0x8]
  3a2917:	77 27                                           	ja     0x3a2940
  3a2919:	0f b7 95 48 01 00 00                            	movzx  edx,WORD PTR [rbp+0x148]
  3a2920:	8d 04 0a                                        	lea    eax,[rdx+rcx*1]
  3a2923:	66 89 07                                        	mov    WORD PTR [rdi],ax
  3a2926:	8d 04 32                                        	lea    eax,[rdx+rsi*1]
  3a2929:	66 89 47 02                                     	mov    WORD PTR [rdi+0x2],ax
  3a292d:	41 0f b7 c4                                     	movzx  eax,r12w
  3a2931:	66 03 85 50 01 00 00                            	add    ax,WORD PTR [rbp+0x150]
  3a2938:	66 89 47 04                                     	mov    WORD PTR [rdi+0x4],ax
  3a293c:	48 83 c7 06                                     	add    rdi,0x6
  3a2940:	41 83 fe ff                                     	cmp    r14d,0xffffffff
  3a2944:	75 0b                                           	jne    0x3a2951
  3a2946:	45 8b f4                                        	mov    r14d,r12d
  3a2949:	41 8b dc                                        	mov    ebx,r12d
  3a294c:	e9 af 00 00 00                                  	jmp    0x3a2a00
  3a2951:	44 89 75 40                                     	mov    DWORD PTR [rbp+0x40],r14d
  3a2955:	44 3b e3                                        	cmp    r12d,ebx
  3a2958:	0f 84 a2 00 00 00                               	je     0x3a2a00
  3a295e:	44 8b 6d 08                                     	mov    r13d,DWORD PTR [rbp+0x8]
  3a2962:	44 0f b7 f9                                     	movzx  r15d,cx
  3a2966:	0f b7 b5 50 01 00 00                            	movzx  esi,WORD PTR [rbp+0x150]
  3a296d:	44 0f b7 b5 48 01 00 00                         	movzx  r14d,WORD PTR [rbp+0x148]
  3a2975:	8b 4d 18                                        	mov    ecx,DWORD PTR [rbp+0x18]
  3a2978:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3a297c:	03 cb                                           	add    ecx,ebx
  3a297e:	48 63 c3                                        	movsxd rax,ebx
  3a2981:	83 e1 03                                        	and    ecx,0x3
  3a2984:	48 89 4d 08                                     	mov    QWORD PTR [rbp+0x8],rcx
  3a2988:	f3 0f 5c 44 c5 24                               	subss  xmm0,DWORD PTR [rbp+rax*8+0x24]
  3a298e:	f3 0f 10 4c cd 24                               	movss  xmm1,DWORD PTR [rbp+rcx*8+0x24]
  3a2994:	f3 0f 10 54 c5 24                               	movss  xmm2,DWORD PTR [rbp+rax*8+0x24]
  3a299a:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  3a299e:	f3 41 0f 5c ca                                  	subss  xmm1,xmm10
  3a29a3:	f3 0f 59 44 cd 20                               	mulss  xmm0,DWORD PTR [rbp+rcx*8+0x20]
  3a29a9:	f3 41 0f 59 d6                                  	mulss  xmm2,xmm14
  3a29ae:	f3 0f 59 4c c5 20                               	mulss  xmm1,DWORD PTR [rbp+rax*8+0x20]
  3a29b4:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a29b8:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3a29bc:	e8 2f 15 f4 ff                                  	call   0x2e3ef0
  3a29c1:	44 0f 2f e8                                     	comiss xmm13,xmm0
  3a29c5:	48 8b 4d 08                                     	mov    rcx,QWORD PTR [rbp+0x8]
  3a29c9:	77 1b                                           	ja     0x3a29e6
  3a29cb:	8d 04 0e                                        	lea    eax,[rsi+rcx*1]
  3a29ce:	66 03 de                                        	add    bx,si
  3a29d1:	66 89 47 02                                     	mov    WORD PTR [rdi+0x2],ax
  3a29d5:	43 8d 04 3e                                     	lea    eax,[r14+r15*1]
  3a29d9:	66 89 47 04                                     	mov    WORD PTR [rdi+0x4],ax
  3a29dd:	66 89 1f                                        	mov    WORD PTR [rdi],bx
  3a29e0:	48 83 c7 06                                     	add    rdi,0x6
  3a29e4:	eb 04                                           	jmp    0x3a29ea
  3a29e6:	45 0f b7 fd                                     	movzx  r15d,r13w
  3a29ea:	8b d9                                           	mov    ebx,ecx
  3a29ec:	44 3b e1                                        	cmp    r12d,ecx
  3a29ef:	75 84                                           	jne    0x3a2975
  3a29f1:	44 8b 75 40                                     	mov    r14d,DWORD PTR [rbp+0x40]
  3a29f5:	44 8b 7d 48                                     	mov    r15d,DWORD PTR [rbp+0x48]
  3a29f9:	4c 8b 6d 50                                     	mov    r13,QWORD PTR [rbp+0x50]
  3a29fd:	8b 75 10                                        	mov    esi,DWORD PTR [rbp+0x10]
  3a2a00:	44 8b e6                                        	mov    r12d,esi
  3a2a03:	89 75 08                                        	mov    DWORD PTR [rbp+0x8],esi
  3a2a06:	ff c6                                           	inc    esi
  3a2a08:	45 0f 28 f3                                     	movaps xmm14,xmm11
  3a2a0c:	89 75 10                                        	mov    DWORD PTR [rbp+0x10],esi
  3a2a0f:	45 0f 28 d1                                     	movaps xmm10,xmm9
  3a2a13:	41 3b f7                                        	cmp    esi,r15d
  3a2a16:	0f 8c 25 fe ff ff                               	jl     0x3a2841
  3a2a1c:	48 8b b5 40 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x140]
  3a2a23:	41 83 fe ff                                     	cmp    r14d,0xffffffff
  3a2a27:	0f 84 93 00 00 00                               	je     0x3a2ac0
  3a2a2d:	44 3b f3                                        	cmp    r14d,ebx
  3a2a30:	0f 84 8a 00 00 00                               	je     0x3a2ac0
  3a2a36:	0f b7 b5 50 01 00 00                            	movzx  esi,WORD PTR [rbp+0x150]
  3a2a3d:	44 8b 7d 18                                     	mov    r15d,DWORD PTR [rbp+0x18]
  3a2a41:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3a2a45:	48 63 c3                                        	movsxd rax,ebx
  3a2a48:	44 03 fb                                        	add    r15d,ebx
  3a2a4b:	41 83 e7 03                                     	and    r15d,0x3
  3a2a4f:	f3 0f 5c 44 c5 24                               	subss  xmm0,DWORD PTR [rbp+rax*8+0x24]
  3a2a55:	f3 42 0f 10 4c fd 24                            	movss  xmm1,DWORD PTR [rbp+r15*8+0x24]
  3a2a5c:	f3 0f 10 54 c5 24                               	movss  xmm2,DWORD PTR [rbp+rax*8+0x24]
  3a2a62:	f3 0f 5c d1                                     	subss  xmm2,xmm1
  3a2a66:	f3 41 0f 5c c9                                  	subss  xmm1,xmm9
  3a2a6b:	f3 42 0f 59 44 fd 20                            	mulss  xmm0,DWORD PTR [rbp+r15*8+0x20]
  3a2a72:	f3 41 0f 59 d3                                  	mulss  xmm2,xmm11
  3a2a77:	f3 0f 59 4c c5 20                               	mulss  xmm1,DWORD PTR [rbp+rax*8+0x20]
  3a2a7d:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a2a81:	f3 0f 58 c2                                     	addss  xmm0,xmm2
  3a2a85:	e8 66 14 f4 ff                                  	call   0x2e3ef0
  3a2a8a:	44 0f 2f e8                                     	comiss xmm13,xmm0
  3a2a8e:	77 21                                           	ja     0x3a2ab1
  3a2a90:	42 8d 04 3e                                     	lea    eax,[rsi+r15*1]
  3a2a94:	66 03 de                                        	add    bx,si
  3a2a97:	66 89 47 02                                     	mov    WORD PTR [rdi+0x2],ax
  3a2a9b:	41 0f b7 c4                                     	movzx  eax,r12w
  3a2a9f:	66 03 85 48 01 00 00                            	add    ax,WORD PTR [rbp+0x148]
  3a2aa6:	66 89 47 04                                     	mov    WORD PTR [rdi+0x4],ax
  3a2aaa:	66 89 1f                                        	mov    WORD PTR [rdi],bx
  3a2aad:	48 83 c7 06                                     	add    rdi,0x6
  3a2ab1:	41 8b df                                        	mov    ebx,r15d
  3a2ab4:	45 3b f7                                        	cmp    r14d,r15d
  3a2ab7:	75 84                                           	jne    0x3a2a3d
  3a2ab9:	48 8b b5 40 01 00 00                            	mov    rsi,QWORD PTR [rbp+0x140]
  3a2ac0:	8b 55 4c                                        	mov    edx,DWORD PTR [rbp+0x4c]
  3a2ac3:	48 8b c7                                        	mov    rax,rdi
  3a2ac6:	48 2b 46 50                                     	sub    rax,QWORD PTR [rsi+0x50]
  3a2aca:	45 33 c0                                        	xor    r8d,r8d
  3a2acd:	48 d1 f8                                        	sar    rax,1
  3a2ad0:	48 8b ce                                        	mov    rcx,rsi
  3a2ad3:	2b d0                                           	sub    edx,eax
  3a2ad5:	48 89 7e 50                                     	mov    QWORD PTR [rsi+0x50],rdi
  3a2ad9:	e8 46 47 00 00                                  	call   0x3a7224
  3a2ade:	0f 28 b5 e0 00 00 00                            	movaps xmm6,XMMWORD PTR [rbp+0xe0]
  3a2ae5:	0f 28 bd d0 00 00 00                            	movaps xmm7,XMMWORD PTR [rbp+0xd0]
  3a2aec:	44 0f 28 85 c0 00 00 00                         	movaps xmm8,XMMWORD PTR [rbp+0xc0]
  3a2af4:	44 0f 28 8d b0 00 00 00                         	movaps xmm9,XMMWORD PTR [rbp+0xb0]
  3a2afc:	44 0f 28 95 a0 00 00 00                         	movaps xmm10,XMMWORD PTR [rbp+0xa0]
  3a2b04:	44 0f 28 9d 90 00 00 00                         	movaps xmm11,XMMWORD PTR [rbp+0x90]
  3a2b0c:	44 0f 28 a5 80 00 00 00                         	movaps xmm12,XMMWORD PTR [rbp+0x80]
  3a2b14:	44 0f 28 6d 70                                  	movaps xmm13,XMMWORD PTR [rbp+0x70]
  3a2b19:	44 0f 28 75 60                                  	movaps xmm14,XMMWORD PTR [rbp+0x60]
  3a2b1e:	48 8d a5 f8 00 00 00                            	lea    rsp,[rbp+0xf8]
  3a2b25:	41 5f                                           	pop    r15
  3a2b27:	41 5e                                           	pop    r14
  3a2b29:	41 5d                                           	pop    r13
  3a2b2b:	41 5c                                           	pop    r12
  3a2b2d:	5f                                              	pop    rdi
  3a2b2e:	5e                                              	pop    rsi
  3a2b2f:	5b                                              	pop    rbx
  3a2b30:	5d                                              	pop    rbp
  3a2b31:	c3                                              	ret
