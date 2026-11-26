
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ac57c <.data+0x3ac57c>:
  3ac57c:	48 8b c4                                        	mov    rax,rsp
  3ac57f:	48 89 58 20                                     	mov    QWORD PTR [rax+0x20],rbx
  3ac583:	48 89 50 10                                     	mov    QWORD PTR [rax+0x10],rdx
  3ac587:	48 89 48 08                                     	mov    QWORD PTR [rax+0x8],rcx
  3ac58b:	55                                              	push   rbp
  3ac58c:	56                                              	push   rsi
  3ac58d:	57                                              	push   rdi
  3ac58e:	41 54                                           	push   r12
  3ac590:	41 55                                           	push   r13
  3ac592:	41 56                                           	push   r14
  3ac594:	41 57                                           	push   r15
  3ac596:	48 8d a8 38 fe ff ff                            	lea    rbp,[rax-0x1c8]
  3ac59d:	48 81 ec 90 02 00 00                            	sub    rsp,0x290
  3ac5a4:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3ac5a8:	33 ff                                           	xor    edi,edi
  3ac5aa:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3ac5ae:	0f 57 c0                                        	xorps  xmm0,xmm0
  3ac5b1:	8b 01                                           	mov    eax,DWORD PTR [rcx]
  3ac5b3:	4c 8b f2                                        	mov    r14,rdx
  3ac5b6:	4d 63 f8                                        	movsxd r15,r8d
  3ac5b9:	48 8b d9                                        	mov    rbx,rcx
  3ac5bc:	c7 44 24 58 00 00 00 00                         	mov    DWORD PTR [rsp+0x58],0x0
  3ac5c4:	48 89 7c 24 30                                  	mov    QWORD PTR [rsp+0x30],rdi
  3ac5c9:	f3 0f 7f 44 24 48                               	movdqu XMMWORD PTR [rsp+0x48],xmm0
  3ac5cf:	83 f8 40                                        	cmp    eax,0x40
  3ac5d2:	7e 16                                           	jle    0x3ac5ea
  3ac5d4:	03 c0                                           	add    eax,eax
  3ac5d6:	83 c8 01                                        	or     eax,0x1
  3ac5d9:	48 63 c8                                        	movsxd rcx,eax
  3ac5dc:	48 c1 e1 02                                     	shl    rcx,0x2
  3ac5e0:	e8 73 8b fe ff                                  	call   0x395158
  3ac5e5:	48 8b f0                                        	mov    rsi,rax
  3ac5e8:	eb 05                                           	jmp    0x3ac5ef
  3ac5ea:	48 8d 74 24 60                                  	lea    rsi,[rsp+0x60]
  3ac5ef:	8b 43 04                                        	mov    eax,DWORD PTR [rbx+0x4]
  3ac5f2:	4b 8d 0c bf                                     	lea    rcx,[r15+r15*4]
  3ac5f6:	44 8b ad f8 01 00 00                            	mov    r13d,DWORD PTR [rbp+0x1f8]
  3ac5fd:	41 03 c5                                        	add    eax,r13d
  3ac600:	48 63 13                                        	movsxd rdx,DWORD PTR [rbx]
  3ac603:	66 0f 6e c0                                     	movd   xmm0,eax
  3ac607:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3ac60a:	f3 0f 58 05 42 0c ee ff                         	addss  xmm0,DWORD PTR [rip+0xffffffffffee0c42]        # 0x28d254
  3ac612:	f3 41 0f 11 44 8e 04                            	movss  DWORD PTR [r14+rcx*4+0x4],xmm0
  3ac619:	39 7b 04                                        	cmp    DWORD PTR [rbx+0x4],edi
  3ac61c:	0f 8e e1 01 00 00                               	jle    0x3ac803
  3ac622:	48 8d 0c 96                                     	lea    rcx,[rsi+rdx*4]
  3ac626:	45 33 e4                                        	xor    r12d,r12d
  3ac629:	48 89 4c 24 38                                  	mov    QWORD PTR [rsp+0x38],rcx
  3ac62e:	41 8b c5                                        	mov    eax,r13d
  3ac631:	48 83 c1 04                                     	add    rcx,0x4
  3ac635:	89 85 e0 01 00 00                               	mov    DWORD PTR [rbp+0x1e0],eax
  3ac63b:	48 89 4c 24 40                                  	mov    QWORD PTR [rsp+0x40],rcx
  3ac640:	4c 63 03                                        	movsxd r8,DWORD PTR [rbx]
  3ac643:	4c 8d 7c 24 30                                  	lea    r15,[rsp+0x30]
  3ac648:	66 0f 6e f8                                     	movd   xmm7,eax
  3ac64c:	33 d2                                           	xor    edx,edx
  3ac64e:	0f 5b ff                                        	cvtdq2ps xmm7,xmm7
  3ac651:	49 c1 e0 02                                     	shl    r8,0x2
  3ac655:	48 8b ce                                        	mov    rcx,rsi
  3ac658:	0f 28 f7                                        	movaps xmm6,xmm7
  3ac65b:	f3 0f 58 35 e9 0b ee ff                         	addss  xmm6,DWORD PTR [rip+0xffffffffffee0be9]        # 0x28d24c
  3ac663:	f3 0f 58 3d e9 0b ee ff                         	addss  xmm7,DWORD PTR [rip+0xffffffffffee0be9]        # 0x28d254
  3ac66b:	e8 00 c7 01 00                                  	call   0x3c8d70
  3ac670:	8b 03                                           	mov    eax,DWORD PTR [rbx]
  3ac672:	33 d2                                           	xor    edx,edx
  3ac674:	48 8b 4c 24 38                                  	mov    rcx,QWORD PTR [rsp+0x38]
  3ac679:	ff c0                                           	inc    eax
  3ac67b:	4c 63 c0                                        	movsxd r8,eax
  3ac67e:	49 c1 e0 02                                     	shl    r8,0x2
  3ac682:	e8 e9 c6 01 00                                  	call   0x3c8d70
  3ac687:	48 85 ff                                        	test   rdi,rdi
  3ac68a:	74 30                                           	je     0x3ac6bc
  3ac68c:	49 8b 17                                        	mov    rdx,QWORD PTR [r15]
  3ac68f:	0f 2f 72 1c                                     	comiss xmm6,DWORD PTR [rdx+0x1c]
  3ac693:	72 19                                           	jb     0x3ac6ae
  3ac695:	48 8b 02                                        	mov    rax,QWORD PTR [rdx]
  3ac698:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3ac69d:	49 89 07                                        	mov    QWORD PTR [r15],rax
  3ac6a0:	c7 42 14 00 00 00 00                            	mov    DWORD PTR [rdx+0x14],0x0
  3ac6a7:	e8 20 fb ff ff                                  	call   0x3ac1cc
  3ac6ac:	eb 03                                           	jmp    0x3ac6b1
  3ac6ae:	4c 8b fa                                        	mov    r15,rdx
  3ac6b1:	49 83 3f 00                                     	cmp    QWORD PTR [r15],0x0
  3ac6b5:	75 d5                                           	jne    0x3ac68c
  3ac6b7:	48 8b 7c 24 30                                  	mov    rdi,QWORD PTR [rsp+0x30]
  3ac6bc:	41 0f 2f 7e 04                                  	comiss xmm7,DWORD PTR [r14+0x4]
  3ac6c1:	72 73                                           	jb     0x3ac736
  3ac6c3:	48 8b 9d 00 02 00 00                            	mov    rbx,QWORD PTR [rbp+0x200]
  3ac6ca:	f3 41 0f 10 46 04                               	movss  xmm0,DWORD PTR [r14+0x4]
  3ac6d0:	4d 8b fe                                        	mov    r15,r14
  3ac6d3:	41 0f 2e 46 0c                                  	ucomiss xmm0,DWORD PTR [r14+0xc]
  3ac6d8:	7a 02                                           	jp     0x3ac6dc
  3ac6da:	74 3c                                           	je     0x3ac718
  3ac6dc:	44 8b 85 f0 01 00 00                            	mov    r8d,DWORD PTR [rbp+0x1f0]
  3ac6e3:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3ac6e8:	0f 28 de                                        	movaps xmm3,xmm6
  3ac6eb:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  3ac6f0:	49 8b d6                                        	mov    rdx,r14
  3ac6f3:	e8 5c fb ff ff                                  	call   0x3ac254
  3ac6f8:	48 85 c0                                        	test   rax,rax
  3ac6fb:	74 1b                                           	je     0x3ac718
  3ac6fd:	45 85 e4                                        	test   r12d,r12d
  3ac700:	75 10                                           	jne    0x3ac712
  3ac702:	45 85 ed                                        	test   r13d,r13d
  3ac705:	74 0b                                           	je     0x3ac712
  3ac707:	0f 2f 70 1c                                     	comiss xmm6,DWORD PTR [rax+0x1c]
  3ac70b:	76 05                                           	jbe    0x3ac712
  3ac70d:	f3 0f 11 70 1c                                  	movss  DWORD PTR [rax+0x1c],xmm6
  3ac712:	48 89 38                                        	mov    QWORD PTR [rax],rdi
  3ac715:	48 8b f8                                        	mov    rdi,rax
  3ac718:	49 83 c6 14                                     	add    r14,0x14
  3ac71c:	41 0f 2f 7f 18                                  	comiss xmm7,DWORD PTR [r15+0x18]
  3ac721:	73 a7                                           	jae    0x3ac6ca
  3ac723:	48 8b 9d d0 01 00 00                            	mov    rbx,QWORD PTR [rbp+0x1d0]
  3ac72a:	48 89 7c 24 30                                  	mov    QWORD PTR [rsp+0x30],rdi
  3ac72f:	4c 89 b5 d8 01 00 00                            	mov    QWORD PTR [rbp+0x1d8],r14
  3ac736:	48 85 ff                                        	test   rdi,rdi
  3ac739:	74 19                                           	je     0x3ac754
  3ac73b:	44 8b 03                                        	mov    r8d,DWORD PTR [rbx]
  3ac73e:	4c 8b cf                                        	mov    r9,rdi
  3ac741:	48 8b 54 24 40                                  	mov    rdx,QWORD PTR [rsp+0x40]
  3ac746:	48 8b ce                                        	mov    rcx,rsi
  3ac749:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3ac74f:	e8 8c ef ff ff                                  	call   0x3ab6e0
  3ac754:	45 33 ff                                        	xor    r15d,r15d
  3ac757:	0f 57 f6                                        	xorps  xmm6,xmm6
  3ac75a:	44 39 3b                                        	cmp    DWORD PTR [rbx],r15d
  3ac75d:	7e 67                                           	jle    0x3ac7c6
  3ac75f:	4c 8b 6c 24 38                                  	mov    r13,QWORD PTR [rsp+0x38]
  3ac764:	41 be ff 00 00 00                               	mov    r14d,0xff
  3ac76a:	49 63 c7                                        	movsxd rax,r15d
  3ac76d:	f3 41 0f 58 74 85 00                            	addss  xmm6,DWORD PTR [r13+rax*4+0x0]
  3ac774:	0f 28 c6                                        	movaps xmm0,xmm6
  3ac777:	f3 0f 58 04 86                                  	addss  xmm0,DWORD PTR [rsi+rax*4]
  3ac77c:	e8 6f 77 f3 ff                                  	call   0x2e3ef0
  3ac781:	f3 0f 59 05 5b 0f ee ff                         	mulss  xmm0,DWORD PTR [rip+0xffffffffffee0f5b]        # 0x28d6e4
  3ac789:	41 8b c4                                        	mov    eax,r12d
  3ac78c:	f3 0f 58 05 bc 0a ee ff                         	addss  xmm0,DWORD PTR [rip+0xffffffffffee0abc]        # 0x28d250
  3ac794:	f3 0f 2c d0                                     	cvttss2si edx,xmm0
  3ac798:	41 3b d6                                        	cmp    edx,r14d
  3ac79b:	41 0f 4f d6                                     	cmovg  edx,r14d
  3ac79f:	0f af 43 08                                     	imul   eax,DWORD PTR [rbx+0x8]
  3ac7a3:	41 03 c7                                        	add    eax,r15d
  3ac7a6:	41 ff c7                                        	inc    r15d
  3ac7a9:	48 63 c8                                        	movsxd rcx,eax
  3ac7ac:	48 8b 43 10                                     	mov    rax,QWORD PTR [rbx+0x10]
  3ac7b0:	88 14 01                                        	mov    BYTE PTR [rcx+rax*1],dl
  3ac7b3:	44 3b 3b                                        	cmp    r15d,DWORD PTR [rbx]
  3ac7b6:	7c b2                                           	jl     0x3ac76a
  3ac7b8:	4c 8b b5 d8 01 00 00                            	mov    r14,QWORD PTR [rbp+0x1d8]
  3ac7bf:	44 8b ad f8 01 00 00                            	mov    r13d,DWORD PTR [rbp+0x1f8]
  3ac7c6:	48 8d 44 24 30                                  	lea    rax,[rsp+0x30]
  3ac7cb:	48 85 ff                                        	test   rdi,rdi
  3ac7ce:	74 18                                           	je     0x3ac7e8
  3ac7d0:	48 8b 00                                        	mov    rax,QWORD PTR [rax]
  3ac7d3:	f3 0f 10 40 0c                                  	movss  xmm0,DWORD PTR [rax+0xc]
  3ac7d8:	f3 0f 58 40 08                                  	addss  xmm0,DWORD PTR [rax+0x8]
  3ac7dd:	f3 0f 11 40 08                                  	movss  DWORD PTR [rax+0x8],xmm0
  3ac7e2:	48 83 38 00                                     	cmp    QWORD PTR [rax],0x0
  3ac7e6:	75 e8                                           	jne    0x3ac7d0
  3ac7e8:	8b 85 e0 01 00 00                               	mov    eax,DWORD PTR [rbp+0x1e0]
  3ac7ee:	41 ff c4                                        	inc    r12d
  3ac7f1:	ff c0                                           	inc    eax
  3ac7f3:	89 85 e0 01 00 00                               	mov    DWORD PTR [rbp+0x1e0],eax
  3ac7f9:	44 3b 63 04                                     	cmp    r12d,DWORD PTR [rbx+0x4]
  3ac7fd:	0f 8c 3d fe ff ff                               	jl     0x3ac640
  3ac803:	48 8b 95 00 02 00 00                            	mov    rdx,QWORD PTR [rbp+0x200]
  3ac80a:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3ac80f:	e8 90 f9 ff ff                                  	call   0x3ac1a4
  3ac814:	48 8d 44 24 60                                  	lea    rax,[rsp+0x60]
  3ac819:	48 3b f0                                        	cmp    rsi,rax
  3ac81c:	74 08                                           	je     0x3ac826
  3ac81e:	48 8b ce                                        	mov    rcx,rsi
  3ac821:	e8 56 89 fe ff                                  	call   0x39517c
  3ac826:	4c 8d 9c 24 90 02 00 00                         	lea    r11,[rsp+0x290]
  3ac82e:	49 8b 5b 58                                     	mov    rbx,QWORD PTR [r11+0x58]
  3ac832:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3ac837:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3ac83c:	49 8b e3                                        	mov    rsp,r11
  3ac83f:	41 5f                                           	pop    r15
  3ac841:	41 5e                                           	pop    r14
  3ac843:	41 5d                                           	pop    r13
  3ac845:	41 5c                                           	pop    r12
  3ac847:	5f                                              	pop    rdi
  3ac848:	5e                                              	pop    rsi
  3ac849:	5d                                              	pop    rbp
  3ac84a:	c3                                              	ret
