
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000002e2474 <.data+0x2e2474>:
  2e2474:	48 8b c4                                        	mov    rax,rsp
  2e2477:	4c 89 48 20                                     	mov    QWORD PTR [rax+0x20],r9
  2e247b:	4c 89 40 18                                     	mov    QWORD PTR [rax+0x18],r8
  2e247f:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  2e2483:	55                                              	push   rbp
  2e2484:	53                                              	push   rbx
  2e2485:	56                                              	push   rsi
  2e2486:	57                                              	push   rdi
  2e2487:	41 54                                           	push   r12
  2e2489:	41 55                                           	push   r13
  2e248b:	41 56                                           	push   r14
  2e248d:	41 57                                           	push   r15
  2e248f:	48 8d 68 b1                                     	lea    rbp,[rax-0x4f]
  2e2493:	48 81 ec c8 00 00 00                            	sub    rsp,0xc8
  2e249a:	f2 41 0f 10 00                                  	movsd  xmm0,QWORD PTR [r8]
  2e249f:	48 8b fa                                        	mov    rdi,rdx
  2e24a2:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  2e24a6:	4c 8b f1                                        	mov    r14,rcx
  2e24a9:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  2e24ad:	33 db                                           	xor    ebx,ebx
  2e24af:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  2e24b4:	41 8b 40 08                                     	mov    eax,DWORD PTR [r8+0x8]
  2e24b8:	89 45 9f                                        	mov    DWORD PTR [rbp-0x61],eax
  2e24bb:	41 8b 41 08                                     	mov    eax,DWORD PTR [r9+0x8]
  2e24bf:	89 45 af                                        	mov    DWORD PTR [rbp-0x51],eax
  2e24c2:	0f b6 45 77                                     	movzx  eax,BYTE PTR [rbp+0x77]
  2e24c6:	f2 0f 11 45 97                                  	movsd  QWORD PTR [rbp-0x69],xmm0
  2e24cb:	f2 41 0f 10 01                                  	movsd  xmm0,QWORD PTR [r9]
  2e24d0:	f2 0f 11 45 a7                                  	movsd  QWORD PTR [rbp-0x59],xmm0
  2e24d5:	f3 0f 10 75 ab                                  	movss  xmm6,DWORD PTR [rbp-0x55]
  2e24da:	66 0f 6e f8                                     	movd   xmm7,eax
  2e24de:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  2e24e1:	c7 81 00 0a 00 00 20 bc be 4c                   	mov    DWORD PTR [rcx+0xa00],0x4cbebc20
  2e24eb:	c7 81 04 0a 00 00 20 bc be cc                   	mov    DWORD PTR [rcx+0xa04],0xccbebc20
  2e24f5:	f3 0f 59 3d 1b b6 fa ff                         	mulss  xmm7,DWORD PTR [rip+0xfffffffffffab61b]        # 0x28db18
  2e24fd:	f3 0f 59 3d d7 b5 fa ff                         	mulss  xmm7,DWORD PTR [rip+0xfffffffffffab5d7]        # 0x28dadc
  2e2505:	f3 0f 10 55 9f                                  	movss  xmm2,DWORD PTR [rbp-0x61]
  2e250a:	48 8d 4d 57                                     	lea    rcx,[rbp+0x57]
  2e250e:	f3 0f 10 4d 97                                  	movss  xmm1,DWORD PTR [rbp-0x69]
  2e2513:	e8 28 9e fe ff                                  	call   0x2cc340
  2e2518:	48 8b c8                                        	mov    rcx,rax
  2e251b:	e8 ac e9 ff ff                                  	call   0x2e0ecc
  2e2520:	f3 0f 10 4d 9b                                  	movss  xmm1,DWORD PTR [rbp-0x65]
  2e2525:	f3 41 0f 11 8c 9e 00 05 00 00                   	movss  DWORD PTR [r14+rbx*4+0x500],xmm1
  2e252f:	f3 41 0f 11 04 9e                               	movss  DWORD PTR [r14+rbx*4],xmm0
  2e2535:	f3 41 0f 10 96 00 0a 00 00                      	movss  xmm2,DWORD PTR [r14+0xa00]
  2e253e:	0f 2f d0                                        	comiss xmm2,xmm0
  2e2541:	76 09                                           	jbe    0x2e254c
  2e2543:	f3 41 0f 11 86 00 0a 00 00                      	movss  DWORD PTR [r14+0xa00],xmm0
  2e254c:	41 0f 2f 86 04 0a 00 00                         	comiss xmm0,DWORD PTR [r14+0xa04]
  2e2554:	76 09                                           	jbe    0x2e255f
  2e2556:	f3 41 0f 11 86 04 0a 00 00                      	movss  DWORD PTR [r14+0xa04],xmm0
  2e255f:	f3 0f 10 15 75 b5 fa ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffffab575]        # 0x28dadc
  2e2567:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  2e256b:	48 8d 4d a7                                     	lea    rcx,[rbp-0x59]
  2e256f:	e8 f8 d0 ff ff                                  	call   0x2df66c
  2e2574:	48 8b d0                                        	mov    rdx,rax
  2e2577:	48 8d 4d 97                                     	lea    rcx,[rbp-0x69]
  2e257b:	e8 48 56 0e 00                                  	call   0x3c7bc8
  2e2580:	f3 0f 5c f7                                     	subss  xmm6,xmm7
  2e2584:	48 ff c3                                        	inc    rbx
  2e2587:	f3 0f 11 75 ab                                  	movss  DWORD PTR [rbp-0x55],xmm6
  2e258c:	48 81 fb 40 01 00 00                            	cmp    rbx,0x140
  2e2593:	0f 85 6c ff ff ff                               	jne    0x2e2505
  2e2599:	4c 8b 65 7f                                     	mov    r12,QWORD PTR [rbp+0x7f]
  2e259d:	49 8b cc                                        	mov    rcx,r12
  2e25a0:	e8 cb 14 00 00                                  	call   0x2e3a70
  2e25a5:	48 8b c8                                        	mov    rcx,rax
  2e25a8:	e8 17 19 00 00                                  	call   0x2e3ec4
  2e25ad:	4c 8b e8                                        	mov    r13,rax
  2e25b0:	85 c0                                           	test   eax,eax
  2e25b2:	0f 8e 64 02 00 00                               	jle    0x2e281c
  2e25b8:	f3 0f 10 35 90 b5 fa ff                         	movss  xmm6,DWORD PTR [rip+0xfffffffffffab590]        # 0x28db50
  2e25c0:	b8 eb a0 0e ea                                  	mov    eax,0xea0ea0eb
  2e25c5:	41 f7 ed                                        	imul   r13d
  2e25c8:	0f 28 fe                                        	movaps xmm7,xmm6
  2e25cb:	33 db                                           	xor    ebx,ebx
  2e25cd:	42 8d 34 2a                                     	lea    esi,[rdx+r13*1]
  2e25d1:	c1 fe 06                                        	sar    esi,0x6
  2e25d4:	8b ce                                           	mov    ecx,esi
  2e25d6:	c1 e9 1f                                        	shr    ecx,0x1f
  2e25d9:	03 f1                                           	add    esi,ecx
  2e25db:	83 c8 ff                                        	or     eax,0xffffffff
  2e25de:	44 8b f8                                        	mov    r15d,eax
  2e25e1:	8b f8                                           	mov    edi,eax
  2e25e3:	41 8d 45 ff                                     	lea    eax,[r13-0x1]
  2e25e7:	89 45 57                                        	mov    DWORD PTR [rbp+0x57],eax
  2e25ea:	4d 8b cc                                        	mov    r9,r12
  2e25ed:	48 8d 55 a7                                     	lea    rdx,[rbp-0x59]
  2e25f1:	44 8b c3                                        	mov    r8d,ebx
  2e25f4:	49 8b ce                                        	mov    rcx,r14
  2e25f7:	e8 78 0a 00 00                                  	call   0x2e3074
  2e25fc:	f3 44 0f 10 45 ab                               	movss  xmm8,DWORD PTR [rbp-0x55]
  2e2602:	44 0f 2f c6                                     	comiss xmm8,xmm6
  2e2606:	76 44                                           	jbe    0x2e264c
  2e2608:	0f 2f fe                                        	comiss xmm7,xmm6
  2e260b:	76 3f                                           	jbe    0x2e264c
  2e260d:	45 33 c0                                        	xor    r8d,r8d
  2e2610:	8d 0c 36                                        	lea    ecx,[rsi+rsi*1]
  2e2613:	8b c3                                           	mov    eax,ebx
  2e2615:	2b c1                                           	sub    eax,ecx
  2e2617:	3b de                                           	cmp    ebx,esi
  2e2619:	44 0f 4f c0                                     	cmovg  r8d,eax
  2e261d:	7f 03                                           	jg     0x2e2622
  2e261f:	0f 28 fe                                        	movaps xmm7,xmm6
  2e2622:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  2e2627:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  2e262b:	f3 44 0f 11 44 24 28                            	movss  DWORD PTR [rsp+0x28],xmm8
  2e2632:	0f 28 df                                        	movaps xmm3,xmm7
  2e2635:	49 8b ce                                        	mov    rcx,r14
  2e2638:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  2e263c:	e8 a3 12 00 00                                  	call   0x2e38e4
  2e2641:	44 8b 38                                        	mov    r15d,DWORD PTR [rax]
  2e2644:	8b 78 08                                        	mov    edi,DWORD PTR [rax+0x8]
  2e2647:	45 85 ff                                        	test   r15d,r15d
  2e264a:	79 61                                           	jns    0x2e26ad
  2e264c:	8b 4d 57                                        	mov    ecx,DWORD PTR [rbp+0x57]
  2e264f:	0f 28 fe                                        	movaps xmm7,xmm6
  2e2652:	41 0f 28 f0                                     	movaps xmm6,xmm8
  2e2656:	3b d9                                           	cmp    ebx,ecx
  2e2658:	74 10                                           	je     0x2e266a
  2e265a:	8d 04 33                                        	lea    eax,[rbx+rsi*1]
  2e265d:	41 3b c5                                        	cmp    eax,r13d
  2e2660:	8b d8                                           	mov    ebx,eax
  2e2662:	0f 4f d9                                        	cmovg  ebx,ecx
  2e2665:	41 3b dd                                        	cmp    ebx,r13d
  2e2668:	7c 80                                           	jl     0x2e25ea
  2e266a:	45 85 ff                                        	test   r15d,r15d
  2e266d:	79 3e                                           	jns    0x2e26ad
  2e266f:	f3 0f 10 05 a5 b4 fa ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffffab4a5]        # 0x28db1c
  2e2677:	0f 2f c6                                        	comiss xmm0,xmm6
  2e267a:	76 31                                           	jbe    0x2e26ad
  2e267c:	44 6b c6 46                                     	imul   r8d,esi,0x46
  2e2680:	44 3b c3                                        	cmp    r8d,ebx
  2e2683:	75 04                                           	jne    0x2e2689
  2e2685:	44 6b c6 45                                     	imul   r8d,esi,0x45
  2e2689:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  2e268e:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  2e2692:	f3 0f 11 74 24 28                               	movss  DWORD PTR [rsp+0x28],xmm6
  2e2698:	0f 28 df                                        	movaps xmm3,xmm7
  2e269b:	49 8b ce                                        	mov    rcx,r14
  2e269e:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  2e26a2:	e8 3d 12 00 00                                  	call   0x2e38e4
  2e26a7:	44 8b 38                                        	mov    r15d,DWORD PTR [rax]
  2e26aa:	8b 78 08                                        	mov    edi,DWORD PTR [rax+0x8]
  2e26ad:	41 83 ff ff                                     	cmp    r15d,0xffffffff
  2e26b1:	0f 84 61 01 00 00                               	je     0x2e2818
  2e26b7:	41 8b d7                                        	mov    edx,r15d
  2e26ba:	49 8b cc                                        	mov    rcx,r12
  2e26bd:	e8 d2 17 00 00                                  	call   0x2e3e94
  2e26c2:	49 8b cc                                        	mov    rcx,r12
  2e26c5:	49 63 df                                        	movsxd rbx,r15d
  2e26c8:	0f 28 f0                                        	movaps xmm6,xmm0
  2e26cb:	e8 a0 13 00 00                                  	call   0x2e3a70
  2e26d0:	48 8b c8                                        	mov    rcx,rax
  2e26d3:	48 8b d3                                        	mov    rdx,rbx
  2e26d6:	e8 5d cf ff ff                                  	call   0x2df638
  2e26db:	44 8b c7                                        	mov    r8d,edi
  2e26de:	44 2b 80 04 0a 00 00                            	sub    r8d,DWORD PTR [rax+0xa04]
  2e26e5:	41 ff c0                                        	inc    r8d
  2e26e8:	45 85 c0                                        	test   r8d,r8d
  2e26eb:	7e 1d                                           	jle    0x2e270a
  2e26ed:	49 8b cc                                        	mov    rcx,r12
  2e26f0:	e8 7b 13 00 00                                  	call   0x2e3a70
  2e26f5:	48 8b c8                                        	mov    rcx,rax
  2e26f8:	48 8b d3                                        	mov    rdx,rbx
  2e26fb:	e8 38 cf ff ff                                  	call   0x2df638
  2e2700:	2b b8 04 0a 00 00                               	sub    edi,DWORD PTR [rax+0xa04]
  2e2706:	ff c7                                           	inc    edi
  2e2708:	eb 02                                           	jmp    0x2e270c
  2e270a:	33 ff                                           	xor    edi,edi
  2e270c:	e8 3b 5b 01 00                                  	call   0x2f824c
  2e2711:	84 c0                                           	test   al,al
  2e2713:	74 26                                           	je     0x2e273b
  2e2715:	80 3d 9c 58 0f 00 00                            	cmp    BYTE PTR [rip+0xf589c],0x0        # 0x3d7fb8
  2e271c:	74 1d                                           	je     0x2e273b
  2e271e:	48 8d 4d c7                                     	lea    rcx,[rbp-0x39]
  2e2722:	e8 95 54 0e 00                                  	call   0x3c7bbc
  2e2727:	48 8b 4d 6f                                     	mov    rcx,QWORD PTR [rbp+0x6f]
  2e272b:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2e272f:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2e2732:	f2 0f 11 01                                     	movsd  QWORD PTR [rcx],xmm0
  2e2736:	89 41 08                                        	mov    DWORD PTR [rcx+0x8],eax
  2e2739:	eb 04                                           	jmp    0x2e273f
  2e273b:	48 8b 4d 6f                                     	mov    rcx,QWORD PTR [rbp+0x6f]
  2e273f:	66 0f 6e d7                                     	movd   xmm2,edi
  2e2743:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  2e2747:	0f 5b d2                                        	cvtdq2ps xmm2,xmm2
  2e274a:	f3 0f 59 15 8a b3 fa ff                         	mulss  xmm2,DWORD PTR [rip+0xfffffffffffab38a]        # 0x28dadc
  2e2752:	e8 15 cf ff ff                                  	call   0x2df66c
  2e2757:	48 8b 4d 67                                     	mov    rcx,QWORD PTR [rbp+0x67]
  2e275b:	48 8d 55 87                                     	lea    rdx,[rbp-0x79]
  2e275f:	4c 8b c0                                        	mov    r8,rax
  2e2762:	e8 a1 cf ff ff                                  	call   0x2df708
  2e2767:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  2e276b:	c7 45 8b 00 00 00 00                            	mov    DWORD PTR [rbp-0x75],0x0
  2e2772:	e8 71 e7 ff ff                                  	call   0x2e0ee8
  2e2777:	0f 2f 05 52 b3 fa ff                            	comiss xmm0,DWORD PTR [rip+0xfffffffffffab352]        # 0x28dad0
  2e277e:	76 28                                           	jbe    0x2e27a8
  2e2780:	f3 0f 10 15 cc aa fa ff                         	movss  xmm2,DWORD PTR [rip+0xfffffffffffaaacc]        # 0x28d254
  2e2788:	48 8d 55 c7                                     	lea    rdx,[rbp-0x39]
  2e278c:	f3 0f 5e d0                                     	divss  xmm2,xmm0
  2e2790:	48 8d 4d 87                                     	lea    rcx,[rbp-0x79]
  2e2794:	e8 d3 ce ff ff                                  	call   0x2df66c
  2e2799:	f2 0f 10 00                                     	movsd  xmm0,QWORD PTR [rax]
  2e279d:	f2 0f 11 45 87                                  	movsd  QWORD PTR [rbp-0x79],xmm0
  2e27a2:	8b 40 08                                        	mov    eax,DWORD PTR [rax+0x8]
  2e27a5:	89 45 8f                                        	mov    DWORD PTR [rbp-0x71],eax
  2e27a8:	f2 0f 5a f6                                     	cvtsd2ss xmm6,xmm6
  2e27ac:	0f 28 c6                                        	movaps xmm0,xmm6
  2e27af:	e8 b4 d7 ff ff                                  	call   0x2dff68
  2e27b4:	0f 57 ff                                        	xorps  xmm7,xmm7
  2e27b7:	f3 0f 5a f8                                     	cvtss2sd xmm7,xmm0
  2e27bb:	0f 28 c6                                        	movaps xmm0,xmm6
  2e27be:	e8 d5 d9 ff ff                                  	call   0x2e0198
  2e27c3:	f3 0f 10 4d 8f                                  	movss  xmm1,DWORD PTR [rbp-0x71]
  2e27c8:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e27cc:	0f 5a c9                                        	cvtps2pd xmm1,xmm1
  2e27cf:	0f 57 d2                                        	xorps  xmm2,xmm2
  2e27d2:	f3 0f 5a d0                                     	cvtss2sd xmm2,xmm0
  2e27d6:	f3 0f 10 45 87                                  	movss  xmm0,DWORD PTR [rbp-0x79]
  2e27db:	0f 5a c0                                        	cvtps2pd xmm0,xmm0
  2e27de:	f2 0f 59 cf                                     	mulsd  xmm1,xmm7
  2e27e2:	f2 0f 59 c7                                     	mulsd  xmm0,xmm7
  2e27e6:	66 0f 5a d2                                     	cvtpd2ps xmm2,xmm2
  2e27ea:	66 0f 5a d9                                     	cvtpd2ps xmm3,xmm1
  2e27ee:	66 0f 5a c8                                     	cvtpd2ps xmm1,xmm0
  2e27f2:	e8 b1 53 0e 00                                  	call   0x3c7ba8
  2e27f7:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e27fb:	e8 e8 e6 ff ff                                  	call   0x2e0ee8
  2e2800:	48 8b 5d 5f                                     	mov    rbx,QWORD PTR [rbp+0x5f]
  2e2804:	48 8d 4d b7                                     	lea    rcx,[rbp-0x49]
  2e2808:	48 8b d3                                        	mov    rdx,rbx
  2e280b:	0f 28 d0                                        	movaps xmm2,xmm0
  2e280e:	e8 31 cf ff ff                                  	call   0x2df744
  2e2813:	48 8b c3                                        	mov    rax,rbx
  2e2816:	eb 0f                                           	jmp    0x2e2827
  2e2818:	48 8b 7d 5f                                     	mov    rdi,QWORD PTR [rbp+0x5f]
  2e281c:	48 8b cf                                        	mov    rcx,rdi
  2e281f:	e8 98 53 0e 00                                  	call   0x3c7bbc
  2e2824:	48 8b c7                                        	mov    rax,rdi
  2e2827:	4c 8d 9c 24 c8 00 00 00                         	lea    r11,[rsp+0xc8]
  2e282f:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  2e2834:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  2e2839:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  2e283e:	49 8b e3                                        	mov    rsp,r11
  2e2841:	41 5f                                           	pop    r15
  2e2843:	41 5e                                           	pop    r14
  2e2845:	41 5d                                           	pop    r13
  2e2847:	41 5c                                           	pop    r12
  2e2849:	5f                                              	pop    rdi
  2e284a:	5e                                              	pop    rsi
  2e284b:	5b                                              	pop    rbx
  2e284c:	5d                                              	pop    rbp
  2e284d:	c3                                              	ret
