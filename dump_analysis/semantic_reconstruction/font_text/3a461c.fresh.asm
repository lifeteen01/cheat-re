
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a461c <.data+0x3a461c>:
  3a461c:	48 8b c4                                        	mov    rax,rsp
  3a461f:	53                                              	push   rbx
  3a4620:	55                                              	push   rbp
  3a4621:	56                                              	push   rsi
  3a4622:	57                                              	push   rdi
  3a4623:	41 54                                           	push   r12
  3a4625:	41 56                                           	push   r14
  3a4627:	41 57                                           	push   r15
  3a4629:	48 83 ec 40                                     	sub    rsp,0x40
  3a462d:	66 0f 6f 05 db 88 f0 ff                         	movdqa xmm0,XMMWORD PTR [rip+0xfffffffffff088db]        # 0x2acf10
  3a4635:	48 8b f9                                        	mov    rdi,rcx
  3a4638:	66 0f 6f 0d f0 88 f0 ff                         	movdqa xmm1,XMMWORD PTR [rip+0xfffffffffff088f0]        # 0x2acf30
  3a4640:	45 84 c9                                        	test   r9b,r9b
  3a4643:	0f 11 04 24                                     	movups XMMWORD PTR [rsp],xmm0
  3a4647:	41 8b c8                                        	mov    ecx,r8d
  3a464a:	41 bc 01 00 00 00                               	mov    r12d,0x1
  3a4650:	66 0f 6f 05 c8 88 f0 ff                         	movdqa xmm0,XMMWORD PTR [rip+0xfffffffffff088c8]        # 0x2acf20
  3a4658:	41 0f 45 cc                                     	cmovne ecx,r12d
  3a465c:	45 33 d2                                        	xor    r10d,r10d
  3a465f:	48 c7 40 b8 9c 53 49 36                         	mov    QWORD PTR [rax-0x48],0x3649539c
  3a4667:	c7 40 c0 00 00 00 00                            	mov    DWORD PTR [rax-0x40],0x0
  3a466e:	45 8a f9                                        	mov    r15b,r9b
  3a4671:	48 8b ea                                        	mov    rbp,rdx
  3a4674:	0f 11 48 98                                     	movups XMMWORD PTR [rax-0x68],xmm1
  3a4678:	0f 11 40 a8                                     	movups XMMWORD PTR [rax-0x58],xmm0
  3a467c:	45 85 c0                                        	test   r8d,r8d
  3a467f:	7e 7c                                           	jle    0x3a46fd
  3a4681:	6b c1 07                                        	imul   eax,ecx,0x7
  3a4684:	48 63 f1                                        	movsxd rsi,ecx
  3a4687:	4d 63 f0                                        	movsxd r14,r8d
  3a468a:	48 63 d8                                        	movsxd rbx,eax
  3a468d:	48 c1 e3 02                                     	shl    rbx,0x2
  3a4691:	48 c1 e6 02                                     	shl    rsi,0x2
  3a4695:	33 d2                                           	xor    edx,edx
  3a4697:	48 8b cf                                        	mov    rcx,rdi
  3a469a:	48 2b cb                                        	sub    rcx,rbx
  3a469d:	45 84 ff                                        	test   r15b,r15b
  3a46a0:	41 8b c2                                        	mov    eax,r10d
  3a46a3:	0f 57 c9                                        	xorps  xmm1,xmm1
  3a46a6:	4c 8b d9                                        	mov    r11,rcx
  3a46a9:	0f 45 c2                                        	cmovne eax,edx
  3a46ac:	83 e8 07                                        	sub    eax,0x7
  3a46af:	45 33 c9                                        	xor    r9d,r9d
  3a46b2:	85 c0                                           	test   eax,eax
  3a46b4:	78 17                                           	js     0x3a46cd
  3a46b6:	41 3b c0                                        	cmp    eax,r8d
  3a46b9:	7d 12                                           	jge    0x3a46cd
  3a46bb:	f3 42 0f 10 04 8c                               	movss  xmm0,DWORD PTR [rsp+r9*4]
  3a46c1:	f3 41 0f 59 03                                  	mulss  xmm0,DWORD PTR [r11]
  3a46c6:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3a46ca:	0f 28 c8                                        	movaps xmm1,xmm0
  3a46cd:	41 03 c4                                        	add    eax,r12d
  3a46d0:	4c 03 de                                        	add    r11,rsi
  3a46d3:	4d 03 cc                                        	add    r9,r12
  3a46d6:	49 83 f9 0f                                     	cmp    r9,0xf
  3a46da:	75 d6                                           	jne    0x3a46b2
  3a46dc:	f3 0f 11 4d 00                                  	movss  DWORD PTR [rbp+0x0],xmm1
  3a46e1:	41 03 d4                                        	add    edx,r12d
  3a46e4:	48 83 c5 04                                     	add    rbp,0x4
  3a46e8:	48 83 c1 04                                     	add    rcx,0x4
  3a46ec:	41 3b d0                                        	cmp    edx,r8d
  3a46ef:	7c ac                                           	jl     0x3a469d
  3a46f1:	45 03 d4                                        	add    r10d,r12d
  3a46f4:	4a 8d 3c b7                                     	lea    rdi,[rdi+r14*4]
  3a46f8:	45 3b d0                                        	cmp    r10d,r8d
  3a46fb:	7c 98                                           	jl     0x3a4695
  3a46fd:	48 83 c4 40                                     	add    rsp,0x40
  3a4701:	41 5f                                           	pop    r15
  3a4703:	41 5e                                           	pop    r14
  3a4705:	41 5c                                           	pop    r12
  3a4707:	5f                                              	pop    rdi
  3a4708:	5e                                              	pop    rsi
  3a4709:	5d                                              	pop    rbp
  3a470a:	5b                                              	pop    rbx
  3a470b:	c3                                              	ret
