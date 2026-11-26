
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b8664 <.data+0x3b8664>:
  3b8664:	48 8b c4                                        	mov    rax,rsp
  3b8667:	4c 89 48 20                                     	mov    QWORD PTR [rax+0x20],r9
  3b866b:	53                                              	push   rbx
  3b866c:	55                                              	push   rbp
  3b866d:	56                                              	push   rsi
  3b866e:	57                                              	push   rdi
  3b866f:	41 54                                           	push   r12
  3b8671:	41 55                                           	push   r13
  3b8673:	41 56                                           	push   r14
  3b8675:	41 57                                           	push   r15
  3b8677:	48 81 ec 08 01 00 00                            	sub    rsp,0x108
  3b867e:	8b bc 24 88 01 00 00                            	mov    edi,DWORD PTR [rsp+0x188]
  3b8685:	4c 8b f9                                        	mov    r15,rcx
  3b8688:	8b 8c 24 88 01 00 00                            	mov    ecx,DWORD PTR [rsp+0x188]
  3b868f:	44 8b e2                                        	mov    r12d,edx
  3b8692:	8b 94 24 78 01 00 00                            	mov    edx,DWORD PTR [rsp+0x178]
  3b8699:	81 e1 00 00 10 00                               	and    ecx,0x100000
  3b869f:	48 8b 1d 82 d4 04 00                            	mov    rbx,QWORD PTR [rip+0x4d482]        # 0x405b28
  3b86a6:	45 8b e8                                        	mov    r13d,r8d
  3b86a9:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3b86ad:	41 be 00 00 00 00                               	mov    r14d,0x0
  3b86b3:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3b86b7:	41 0f 95 c6                                     	setne  r14b
  3b86bb:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3b86c0:	83 e7 20                                        	and    edi,0x20
  3b86c3:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  3b86cb:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  3b86d3:	0f 95 84 24 58 01 00 00                         	setne  BYTE PTR [rsp+0x158]
  3b86db:	44 0f 29 98 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm11
  3b86e3:	44 0f 29 a0 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm12
  3b86eb:	44 0f 29 a8 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm13
  3b86f3:	41 8d 40 f8                                     	lea    eax,[r8-0x8]
  3b86f7:	44 0f 29 74 24 70                               	movaps XMMWORD PTR [rsp+0x70],xmm14
  3b86fd:	44 0f 29 7c 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm15
  3b8703:	83 f8 01                                        	cmp    eax,0x1
  3b8706:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b870e:	8b c2                                           	mov    eax,edx
  3b8710:	0f 96 84 24 50 01 00 00                         	setbe  BYTE PTR [rsp+0x150]
  3b8718:	89 4c 24 40                                     	mov    DWORD PTR [rsp+0x40],ecx
  3b871c:	41 2b c0                                        	sub    eax,r8d
  3b871f:	41 8b f0                                        	mov    esi,r8d
  3b8722:	2b f2                                           	sub    esi,edx
  3b8724:	44 3b c2                                        	cmp    r8d,edx
  3b8727:	0f 4c f0                                        	cmovl  esi,eax
  3b872a:	33 ed                                           	xor    ebp,ebp
  3b872c:	85 c9                                           	test   ecx,ecx
  3b872e:	49 8d 4f 08                                     	lea    rcx,[r15+0x8]
  3b8732:	40 0f 95 c5                                     	setne  bpl
  3b8736:	48 8b d5                                        	mov    rdx,rbp
  3b8739:	e8 96 34 fd ff                                  	call   0x38bbd4
  3b873e:	48 8b d5                                        	mov    rdx,rbp
  3b8741:	49 8b cf                                        	mov    rcx,r15
  3b8744:	44 0f 28 d8                                     	movaps xmm11,xmm0
  3b8748:	e8 87 34 fd ff                                  	call   0x38bbd4
  3b874d:	80 bc 24 50 01 00 00 00                         	cmp    BYTE PTR [rsp+0x150],0x0
  3b8755:	f3 44 0f 5c d8                                  	subss  xmm11,xmm0
  3b875a:	f3 0f 10 93 4c 38 00 00                         	movss  xmm2,DWORD PTR [rbx+0x384c]
  3b8762:	f3 44 0f 5c 1d 0d aa ed ff                      	subss  xmm11,DWORD PTR [rip+0xffffffffffedaa0d]        # 0x293178
  3b876b:	f3 44 0f 11 5c 24 48                            	movss  DWORD PTR [rsp+0x48],xmm11
  3b8772:	75 21                                           	jne    0x3b8795
  3b8774:	85 f6                                           	test   esi,esi
  3b8776:	78 1d                                           	js     0x3b8795
  3b8778:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b877c:	8d 46 01                                        	lea    eax,[rsi+0x1]
  3b877f:	66 0f 6e c8                                     	movd   xmm1,eax
  3b8783:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b8786:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  3b878a:	0f 28 ca                                        	movaps xmm1,xmm2
  3b878d:	e8 62 1c fd ff                                  	call   0x38a3f4
  3b8792:	0f 28 d0                                        	movaps xmm2,xmm0
  3b8795:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3b8799:	0f 28 c2                                        	movaps xmm0,xmm2
  3b879c:	e8 2b db fb ff                                  	call   0x3762cc
  3b87a1:	f3 0f 10 35 a7 4a ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed4aa7]        # 0x28d250
  3b87a9:	44 0f 28 f8                                     	movaps xmm15,xmm0
  3b87ad:	45 0f 28 cb                                     	movaps xmm9,xmm11
  3b87b1:	48 8b d5                                        	mov    rdx,rbp
  3b87b4:	f3 45 0f 5c cf                                  	subss  xmm9,xmm15
  3b87b9:	49 8b cf                                        	mov    rcx,r15
  3b87bc:	f3 44 0f 59 fe                                  	mulss  xmm15,xmm6
  3b87c1:	e8 0e 34 fd ff                                  	call   0x38bbd4
  3b87c6:	f3 44 0f 10 35 65 a9 ed ff                      	movss  xmm14,DWORD PTR [rip+0xffffffffffeda965]        # 0x293134
  3b87cf:	49 8d 4f 08                                     	lea    rcx,[r15+0x8]
  3b87d3:	f3 41 0f 58 c6                                  	addss  xmm0,xmm14
  3b87d8:	48 8b d5                                        	mov    rdx,rbp
  3b87db:	f3 41 0f 58 c7                                  	addss  xmm0,xmm15
  3b87e0:	f3 0f 11 44 24 44                               	movss  DWORD PTR [rsp+0x44],xmm0
  3b87e6:	e8 e9 33 fd ff                                  	call   0x38bbd4
  3b87eb:	f3 44 0f 10 15 60 4a ed ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffed4a60]        # 0x28d254
  3b87f4:	f3 41 0f 5c c6                                  	subss  xmm0,xmm14
  3b87f9:	85 ff                                           	test   edi,edi
  3b87fb:	0f 57 ff                                        	xorps  xmm7,xmm7
  3b87fe:	40 8a bc 24 50 01 00 00                         	mov    dil,BYTE PTR [rsp+0x150]
  3b8806:	f3 41 0f 5c c7                                  	subss  xmm0,xmm15
  3b880b:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [rsp+0x4c],xmm0
  3b8811:	74 58                                           	je     0x3b886b
  3b8813:	40 84 ff                                        	test   dil,dil
  3b8816:	74 14                                           	je     0x3b882c
  3b8818:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b8820:	ba 03 00 00 00                                  	mov    edx,0x3
  3b8825:	e8 aa 78 00 00                                  	call   0x3c00d4
  3b882a:	eb 05                                           	jmp    0x3b8831
  3b882c:	b8 01 00 00 00                                  	mov    eax,0x1
  3b8831:	f3 0f 10 05 ab 52 ed ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffed52ab]        # 0x28dae4
  3b8839:	66 0f 6e c8                                     	movd   xmm1,eax
  3b883d:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b8840:	e8 47 dd fe ff                                  	call   0x3a658c
  3b8845:	f3 44 0f 10 a3 54 38 00 00                      	movss  xmm12,DWORD PTR [rbx+0x3854]
  3b884e:	44 0f 28 e8                                     	movaps xmm13,xmm0
  3b8852:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b8856:	f3 44 0f 59 e6                                  	mulss  xmm12,xmm6
  3b885b:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b885f:	e8 90 1b fd ff                                  	call   0x38a3f4
  3b8864:	f3 44 0f 5e e0                                  	divss  xmm12,xmm0
  3b8869:	eb 08                                           	jmp    0x3b8873
  3b886b:	45 0f 57 e4                                     	xorps  xmm12,xmm12
  3b886f:	45 0f 57 ed                                     	xorps  xmm13,xmm13
  3b8873:	c6 84 24 60 01 00 00 00                         	mov    BYTE PTR [rsp+0x160],0x0
  3b887b:	44 39 a3 68 3f 00 00                            	cmp    DWORD PTR [rbx+0x3f68],r12d
  3b8882:	75 1d                                           	jne    0x3b88a1
  3b8884:	8b 83 90 3f 00 00                               	mov    eax,DWORD PTR [rbx+0x3f90]
  3b888a:	83 f8 01                                        	cmp    eax,0x1
  3b888d:	0f 85 58 01 00 00                               	jne    0x3b89eb
  3b8893:	80 bb 10 0e 00 00 00                            	cmp    BYTE PTR [rbx+0xe10],0x0
  3b889a:	75 3b                                           	jne    0x3b88d7
  3b889c:	e8 d7 77 fd ff                                  	call   0x390078
  3b88a1:	40 8a ac 24 58 01 00 00                         	mov    bpl,BYTE PTR [rsp+0x158]
  3b88a9:	48 8b b4 24 68 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x168]
  3b88b1:	8a 9c 24 60 01 00 00                            	mov    bl,BYTE PTR [rsp+0x160]
  3b88b8:	45 0f 2f d3                                     	comiss xmm10,xmm11
  3b88bc:	0f 86 2a 04 00 00                               	jbe    0x3b8cec
  3b88c2:	4d 8b c7                                        	mov    r8,r15
  3b88c5:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3b88ca:	49 8b d7                                        	mov    rdx,r15
  3b88cd:	e8 b6 2a f2 ff                                  	call   0x2db388
  3b88d2:	e9 a7 04 00 00                                  	jmp    0x3b8d7e
  3b88d7:	48 8d 8b 08 0e 00 00                            	lea    rcx,[rbx+0xe08]
  3b88de:	48 8b d5                                        	mov    rdx,rbp
  3b88e1:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3b88e5:	e8 e2 32 fd ff                                  	call   0x38bbcc
  3b88ea:	80 bb 74 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f74],0x0
  3b88f1:	40 8a ac 24 58 01 00 00                         	mov    bpl,BYTE PTR [rsp+0x158]
  3b88f9:	48 8b b4 24 68 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x168]
  3b8901:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [rax]
  3b8905:	0f 84 99 00 00 00                               	je     0x3b89a4
  3b890b:	44 8b 8c 24 78 01 00 00                         	mov    r9d,DWORD PTR [rsp+0x178]
  3b8913:	41 8b cd                                        	mov    ecx,r13d
  3b8916:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b891e:	8b 16                                           	mov    edx,DWORD PTR [rsi]
  3b8920:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3b8927:	f3 44 0f 11 6c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm13
  3b892e:	40 88 6c 24 20                                  	mov    BYTE PTR [rsp+0x20],bpl
  3b8933:	e8 98 d5 ff ff                                  	call   0x3b5ed0
  3b8938:	8b 44 24 40                                     	mov    eax,DWORD PTR [rsp+0x40]
  3b893c:	85 c0                                           	test   eax,eax
  3b893e:	74 0b                                           	je     0x3b894b
  3b8940:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b8944:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3b8948:	0f 28 c1                                        	movaps xmm0,xmm1
  3b894b:	f3 0f 10 6c 24 44                               	movss  xmm5,DWORD PTR [rsp+0x44]
  3b8951:	0f 28 d0                                        	movaps xmm2,xmm0
  3b8954:	f3 0f 10 4c 24 4c                               	movss  xmm1,DWORD PTR [rsp+0x4c]
  3b895a:	0f 28 c5                                        	movaps xmm0,xmm5
  3b895d:	e8 fa cc f7 ff                                  	call   0x33565c
  3b8962:	0f 28 d8                                        	movaps xmm3,xmm0
  3b8965:	0f 28 e0                                        	movaps xmm4,xmm0
  3b8968:	f3 41 0f 5c df                                  	subss  xmm3,xmm15
  3b896d:	f3 41 0f 5c da                                  	subss  xmm3,xmm10
  3b8972:	0f 2f f3                                        	comiss xmm6,xmm3
  3b8975:	72 20                                           	jb     0x3b8997
  3b8977:	41 0f 28 cf                                     	movaps xmm1,xmm15
  3b897b:	f3 0f 58 cc                                     	addss  xmm1,xmm4
  3b897f:	f3 41 0f 58 ca                                  	addss  xmm1,xmm10
  3b8984:	0f 2f ce                                        	comiss xmm1,xmm6
  3b8987:	72 0e                                           	jb     0x3b8997
  3b8989:	40 84 ff                                        	test   dil,dil
  3b898c:	74 09                                           	je     0x3b8997
  3b898e:	0f 28 c6                                        	movaps xmm0,xmm6
  3b8991:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  3b8995:	eb 03                                           	jmp    0x3b899a
  3b8997:	0f 57 c0                                        	xorps  xmm0,xmm0
  3b899a:	f3 0f 11 83 94 5b 00 00                         	movss  DWORD PTR [rbx+0x5b94],xmm0
  3b89a2:	eb 0a                                           	jmp    0x3b89ae
  3b89a4:	f3 0f 10 6c 24 44                               	movss  xmm5,DWORD PTR [rsp+0x44]
  3b89aa:	8b 44 24 40                                     	mov    eax,DWORD PTR [rsp+0x40]
  3b89ae:	44 0f 2f cf                                     	comiss xmm9,xmm7
  3b89b2:	76 1d                                           	jbe    0x3b89d1
  3b89b4:	f3 0f 5c b3 94 5b 00 00                         	subss  xmm6,DWORD PTR [rbx+0x5b94]
  3b89bc:	f3 0f 5c f5                                     	subss  xmm6,xmm5
  3b89c0:	f3 41 0f 5e f1                                  	divss  xmm6,xmm9
  3b89c5:	0f 28 c6                                        	movaps xmm0,xmm6
  3b89c8:	e8 2f 00 fc ff                                  	call   0x3789fc
  3b89cd:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3b89d1:	85 c0                                           	test   eax,eax
  3b89d3:	0f 84 ac 02 00 00                               	je     0x3b8c85
  3b89d9:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b89dd:	f3 41 0f 5c c8                                  	subss  xmm1,xmm8
  3b89e2:	44 0f 28 c1                                     	movaps xmm8,xmm1
  3b89e6:	e9 9a 02 00 00                                  	jmp    0x3b8c85
  3b89eb:	83 c0 fe                                        	add    eax,0xfffffffe
  3b89ee:	83 f8 01                                        	cmp    eax,0x1
  3b89f1:	0f 87 aa fe ff ff                               	ja     0x3b88a1
  3b89f7:	80 bb 74 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f74],0x0
  3b89fe:	74 11                                           	je     0x3b8a11
  3b8a00:	c7 83 98 5b 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x5b98],0x0
  3b8a0a:	c6 83 9c 5b 00 00 00                            	mov    BYTE PTR [rbx+0x5b9c],0x0
  3b8a11:	41 8b ce                                        	mov    ecx,r14d
  3b8a14:	e8 f3 9e fd ff                                  	call   0x39290c
  3b8a19:	83 7c 24 40 00                                  	cmp    DWORD PTR [rsp+0x40],0x0
  3b8a1e:	0f 28 f0                                        	movaps xmm6,xmm0
  3b8a21:	74 07                                           	je     0x3b8a2a
  3b8a23:	0f 57 35 76 a8 ed ff                            	xorps  xmm6,XMMWORD PTR [rip+0xffffffffffeda876]        # 0x2932a0
  3b8a2a:	0f 2e f7                                        	ucomiss xmm6,xmm7
  3b8a2d:	7a 06                                           	jp     0x3b8a35
  3b8a2f:	0f 84 da 00 00 00                               	je     0x3b8b0f
  3b8a35:	83 bb 1c 49 00 00 03                            	cmp    DWORD PTR [rbx+0x491c],0x3
  3b8a3c:	b9 00 10 00 00                                  	mov    ecx,0x1000
  3b8a41:	b8 73 02 00 00                                  	mov    eax,0x273
  3b8a46:	0f 44 c8                                        	cmove  ecx,eax
  3b8a49:	e8 da b7 fd ff                                  	call   0x394228
  3b8a4e:	83 bb 1c 49 00 00 03                            	cmp    DWORD PTR [rbx+0x491c],0x3
  3b8a55:	40 8a f8                                        	mov    dil,al
  3b8a58:	b8 74 02 00 00                                  	mov    eax,0x274
  3b8a5d:	b9 00 20 00 00                                  	mov    ecx,0x2000
  3b8a62:	0f 44 c8                                        	cmove  ecx,eax
  3b8a65:	e8 be b7 fd ff                                  	call   0x394228
  3b8a6a:	44 8a b4 24 50 01 00 00                         	mov    r14b,BYTE PTR [rsp+0x150]
  3b8a72:	40 8a e8                                        	mov    bpl,al
  3b8a75:	f3 44 0f 10 05 9e 50 ed ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffed509e]        # 0x28db1c
  3b8a7e:	45 84 f6                                        	test   r14b,r14b
  3b8a81:	74 2a                                           	je     0x3b8aad
  3b8a83:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b8a8b:	ba 03 00 00 00                                  	mov    edx,0x3
  3b8a90:	e8 3f 76 00 00                                  	call   0x3c00d4
  3b8a95:	85 c0                                           	test   eax,eax
  3b8a97:	7e 14                                           	jle    0x3b8aad
  3b8a99:	f3 0f 5e 35 a3 50 ed ff                         	divss  xmm6,DWORD PTR [rip+0xffffffffffed50a3]        # 0x28db44
  3b8aa1:	40 84 ff                                        	test   dil,dil
  3b8aa4:	74 46                                           	je     0x3b8aec
  3b8aa6:	f3 41 0f 5e f0                                  	divss  xmm6,xmm8
  3b8aab:	eb 3f                                           	jmp    0x3b8aec
  3b8aad:	f3 0f 10 0d 8f 50 ed ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffed508f]        # 0x28db44
  3b8ab5:	66 0f 6e c6                                     	movd   xmm0,esi
  3b8ab9:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3b8abc:	0f 2f 05 fd 4e ef ff                            	comiss xmm0,DWORD PTR [rip+0xffffffffffef4efd]        # 0x2ad9c0
  3b8ac3:	72 05                                           	jb     0x3b8aca
  3b8ac5:	0f 2f c8                                        	comiss xmm1,xmm0
  3b8ac8:	73 05                                           	jae    0x3b8acf
  3b8aca:	40 84 ff                                        	test   dil,dil
  3b8acd:	74 19                                           	je     0x3b8ae8
  3b8acf:	0f 2f fe                                        	comiss xmm7,xmm6
  3b8ad2:	76 0a                                           	jbe    0x3b8ade
  3b8ad4:	f3 0f 10 35 84 a7 ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffeda784]        # 0x293260
  3b8adc:	eb 04                                           	jmp    0x3b8ae2
  3b8ade:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3b8ae2:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3b8ae6:	eb 04                                           	jmp    0x3b8aec
  3b8ae8:	f3 0f 5e f1                                     	divss  xmm6,xmm1
  3b8aec:	40 84 ed                                        	test   bpl,bpl
  3b8aef:	74 05                                           	je     0x3b8af6
  3b8af1:	f3 41 0f 59 f0                                  	mulss  xmm6,xmm8
  3b8af6:	f3 0f 58 b3 98 5b 00 00                         	addss  xmm6,DWORD PTR [rbx+0x5b98]
  3b8afe:	c6 83 9c 5b 00 00 01                            	mov    BYTE PTR [rbx+0x5b9c],0x1
  3b8b05:	f3 0f 11 b3 98 5b 00 00                         	movss  DWORD PTR [rbx+0x5b98],xmm6
  3b8b0d:	eb 08                                           	jmp    0x3b8b17
  3b8b0f:	44 8a b4 24 50 01 00 00                         	mov    r14b,BYTE PTR [rsp+0x150]
  3b8b17:	44 39 a3 00 49 00 00                            	cmp    DWORD PTR [rbx+0x4900],r12d
  3b8b1e:	75 0d                                           	jne    0x3b8b2d
  3b8b20:	80 bb 74 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f74],0x0
  3b8b27:	0f 84 6f fd ff ff                               	je     0x3b889c
  3b8b2d:	80 bb 9c 5b 00 00 00                            	cmp    BYTE PTR [rbx+0x5b9c],0x0
  3b8b34:	40 8a ac 24 58 01 00 00                         	mov    bpl,BYTE PTR [rsp+0x158]
  3b8b3c:	48 8b b4 24 68 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x168]
  3b8b44:	0f 84 67 fd ff ff                               	je     0x3b88b1
  3b8b4a:	44 8b 8c 24 78 01 00 00                         	mov    r9d,DWORD PTR [rsp+0x178]
  3b8b52:	41 8b cd                                        	mov    ecx,r13d
  3b8b55:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b8b5d:	8b 16                                           	mov    edx,DWORD PTR [rsi]
  3b8b5f:	f3 0f 10 b3 98 5b 00 00                         	movss  xmm6,DWORD PTR [rbx+0x5b98]
  3b8b67:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3b8b6e:	f3 44 0f 11 6c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm13
  3b8b75:	40 88 6c 24 20                                  	mov    BYTE PTR [rsp+0x20],bpl
  3b8b7a:	e8 51 d3 ff ff                                  	call   0x3b5ed0
  3b8b7f:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3b8b83:	45 0f 2f c2                                     	comiss xmm8,xmm10
  3b8b87:	72 05                                           	jb     0x3b8b8e
  3b8b89:	0f 2f f7                                        	comiss xmm6,xmm7
  3b8b8c:	77 0b                                           	ja     0x3b8b99
  3b8b8e:	41 0f 2f f8                                     	comiss xmm7,xmm8
  3b8b92:	72 0d                                           	jb     0x3b8ba1
  3b8b94:	0f 2f fe                                        	comiss xmm7,xmm6
  3b8b97:	76 08                                           	jbe    0x3b8ba1
  3b8b99:	40 32 ff                                        	xor    dil,dil
  3b8b9c:	e9 cc 00 00 00                                  	jmp    0x3b8c6d
  3b8ba1:	0f 28 c6                                        	movaps xmm0,xmm6
  3b8ba4:	40 b7 01                                        	mov    dil,0x1
  3b8ba7:	f3 41 0f 58 c0                                  	addss  xmm0,xmm8
  3b8bac:	45 0f 28 d8                                     	movaps xmm11,xmm8
  3b8bb0:	e8 47 fe fb ff                                  	call   0x3789fc
  3b8bb5:	44 8b 8c 24 78 01 00 00                         	mov    r9d,DWORD PTR [rsp+0x178]
  3b8bbd:	0f 28 c8                                        	movaps xmm1,xmm0
  3b8bc0:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b8bc8:	41 8b cd                                        	mov    ecx,r13d
  3b8bcb:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3b8bd2:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3b8bd6:	f3 44 0f 11 6c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm13
  3b8bdd:	40 88 6c 24 20                                  	mov    BYTE PTR [rsp+0x20],bpl
  3b8be2:	e8 71 e7 ff ff                                  	call   0x3b7358
  3b8be7:	45 84 f6                                        	test   r14b,r14b
  3b8bea:	74 28                                           	je     0x3b8c14
  3b8bec:	f6 84 24 88 01 00 00 40                         	test   BYTE PTR [rsp+0x188],0x40
  3b8bf4:	75 1e                                           	jne    0x3b8c14
  3b8bf6:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b8bfe:	44 8b c0                                        	mov    r8d,eax
  3b8c01:	41 8b d5                                        	mov    edx,r13d
  3b8c04:	e8 cb cf ff ff                                  	call   0x3b5bd4
  3b8c09:	f3 44 0f 10 8b 98 5b 00 00                      	movss  xmm9,DWORD PTR [rbx+0x5b98]
  3b8c12:	eb 04                                           	jmp    0x3b8c18
  3b8c14:	44 0f 28 ce                                     	movaps xmm9,xmm6
  3b8c18:	44 8b 8c 24 78 01 00 00                         	mov    r9d,DWORD PTR [rsp+0x178]
  3b8c20:	8b d0                                           	mov    edx,eax
  3b8c22:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b8c2a:	41 8b cd                                        	mov    ecx,r13d
  3b8c2d:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3b8c34:	f3 44 0f 11 6c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm13
  3b8c3b:	40 88 6c 24 20                                  	mov    BYTE PTR [rsp+0x20],bpl
  3b8c40:	e8 8b d2 ff ff                                  	call   0x3b5ed0
  3b8c45:	0f 2f f7                                        	comiss xmm6,xmm7
  3b8c48:	f3 41 0f 5c c3                                  	subss  xmm0,xmm11
  3b8c4d:	0f 28 ce                                        	movaps xmm1,xmm6
  3b8c50:	76 07                                           	jbe    0x3b8c59
  3b8c52:	e8 75 d6 fb ff                                  	call   0x3762cc
  3b8c57:	eb 05                                           	jmp    0x3b8c5e
  3b8c59:	e8 96 17 fd ff                                  	call   0x38a3f4
  3b8c5e:	f3 44 0f 10 5c 24 48                            	movss  xmm11,DWORD PTR [rsp+0x48]
  3b8c65:	41 0f 28 f9                                     	movaps xmm7,xmm9
  3b8c69:	f3 0f 5c f8                                     	subss  xmm7,xmm0
  3b8c6d:	f3 0f 11 bb 98 5b 00 00                         	movss  DWORD PTR [rbx+0x5b98],xmm7
  3b8c75:	c6 83 9c 5b 00 00 00                            	mov    BYTE PTR [rbx+0x5b9c],0x0
  3b8c7c:	40 84 ff                                        	test   dil,dil
  3b8c7f:	0f 84 2c fc ff ff                               	je     0x3b88b1
  3b8c85:	44 8b 8c 24 78 01 00 00                         	mov    r9d,DWORD PTR [rsp+0x178]
  3b8c8d:	41 0f 28 c8                                     	movaps xmm1,xmm8
  3b8c91:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b8c99:	41 8b cd                                        	mov    ecx,r13d
  3b8c9c:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3b8ca3:	f3 44 0f 11 6c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm13
  3b8caa:	40 88 6c 24 20                                  	mov    BYTE PTR [rsp+0x20],bpl
  3b8caf:	e8 a4 e6 ff ff                                  	call   0x3b7358
  3b8cb4:	80 bc 24 50 01 00 00 00                         	cmp    BYTE PTR [rsp+0x150],0x0
  3b8cbc:	74 1d                                           	je     0x3b8cdb
  3b8cbe:	f6 84 24 88 01 00 00 40                         	test   BYTE PTR [rsp+0x188],0x40
  3b8cc6:	75 13                                           	jne    0x3b8cdb
  3b8cc8:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b8cd0:	44 8b c0                                        	mov    r8d,eax
  3b8cd3:	41 8b d5                                        	mov    edx,r13d
  3b8cd6:	e8 f9 ce ff ff                                  	call   0x3b5bd4
  3b8cdb:	39 06                                           	cmp    DWORD PTR [rsi],eax
  3b8cdd:	0f 84 ce fb ff ff                               	je     0x3b88b1
  3b8ce3:	89 06                                           	mov    DWORD PTR [rsi],eax
  3b8ce5:	b3 01                                           	mov    bl,0x1
  3b8ce7:	e9 cc fb ff ff                                  	jmp    0x3b88b8
  3b8cec:	44 8b 8c 24 78 01 00 00                         	mov    r9d,DWORD PTR [rsp+0x178]
  3b8cf4:	41 8b cd                                        	mov    ecx,r13d
  3b8cf7:	44 8b 84 24 70 01 00 00                         	mov    r8d,DWORD PTR [rsp+0x170]
  3b8cff:	8b 16                                           	mov    edx,DWORD PTR [rsi]
  3b8d01:	f3 44 0f 11 64 24 30                            	movss  DWORD PTR [rsp+0x30],xmm12
  3b8d08:	f3 44 0f 11 6c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm13
  3b8d0f:	40 88 6c 24 20                                  	mov    BYTE PTR [rsp+0x20],bpl
  3b8d14:	e8 b7 d1 ff ff                                  	call   0x3b5ed0
  3b8d19:	8b 44 24 40                                     	mov    eax,DWORD PTR [rsp+0x40]
  3b8d1d:	85 c0                                           	test   eax,eax
  3b8d1f:	74 09                                           	je     0x3b8d2a
  3b8d21:	f3 44 0f 5c d0                                  	subss  xmm10,xmm0
  3b8d26:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3b8d2a:	f3 0f 10 4c 24 4c                               	movss  xmm1,DWORD PTR [rsp+0x4c]
  3b8d30:	0f 28 d0                                        	movaps xmm2,xmm0
  3b8d33:	f3 0f 10 44 24 44                               	movss  xmm0,DWORD PTR [rsp+0x44]
  3b8d39:	e8 1e c9 f7 ff                                  	call   0x33565c
  3b8d3e:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3b8d43:	0f 28 e0                                        	movaps xmm4,xmm0
  3b8d46:	41 0f 28 ef                                     	movaps xmm5,xmm15
  3b8d4a:	f3 0f 58 ec                                     	addss  xmm5,xmm4
  3b8d4e:	f3 41 0f 5c e7                                  	subss  xmm4,xmm15
  3b8d53:	85 c0                                           	test   eax,eax
  3b8d55:	75 38                                           	jne    0x3b8d8f
  3b8d57:	f3 41 0f 10 47 0c                               	movss  xmm0,DWORD PTR [r15+0xc]
  3b8d5d:	0f 28 dd                                        	movaps xmm3,xmm5
  3b8d60:	f3 41 0f 10 57 04                               	movss  xmm2,DWORD PTR [r15+0x4]
  3b8d66:	f3 41 0f 5c c6                                  	subss  xmm0,xmm14
  3b8d6b:	f3 41 0f 58 d6                                  	addss  xmm2,xmm14
  3b8d70:	0f 28 cc                                        	movaps xmm1,xmm4
  3b8d73:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3b8d79:	e8 76 2d fd ff                                  	call   0x38baf4
  3b8d7e:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3b8d81:	48 8b 84 24 90 01 00 00                         	mov    rax,QWORD PTR [rsp+0x190]
  3b8d89:	f3 0f 7f 00                                     	movdqu XMMWORD PTR [rax],xmm0
  3b8d8d:	eb 32                                           	jmp    0x3b8dc1
  3b8d8f:	f3 41 0f 10 5f 08                               	movss  xmm3,DWORD PTR [r15+0x8]
  3b8d95:	0f 28 d4                                        	movaps xmm2,xmm4
  3b8d98:	f3 41 0f 10 0f                                  	movss  xmm1,DWORD PTR [r15]
  3b8d9d:	f3 41 0f 5c de                                  	subss  xmm3,xmm14
  3b8da2:	f3 41 0f 58 ce                                  	addss  xmm1,xmm14
  3b8da7:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm5
  3b8dad:	e8 42 2d fd ff                                  	call   0x38baf4
  3b8db2:	48 8b 8c 24 90 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x190]
  3b8dba:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3b8dbd:	f3 0f 7f 01                                     	movdqu XMMWORD PTR [rcx],xmm0
  3b8dc1:	44 0f 28 74 24 70                               	movaps xmm14,XMMWORD PTR [rsp+0x70]
  3b8dc7:	4c 8d 9c 24 08 01 00 00                         	lea    r11,[rsp+0x108]
  3b8dcf:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3b8dd4:	8a c3                                           	mov    al,bl
  3b8dd6:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3b8ddb:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3b8de0:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3b8de5:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3b8dea:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3b8def:	45 0f 28 63 88                                  	movaps xmm12,XMMWORD PTR [r11-0x78]
  3b8df4:	45 0f 28 ab 78 ff ff ff                         	movaps xmm13,XMMWORD PTR [r11-0x88]
  3b8dfc:	44 0f 28 7c 24 60                               	movaps xmm15,XMMWORD PTR [rsp+0x60]
  3b8e02:	49 8b e3                                        	mov    rsp,r11
  3b8e05:	41 5f                                           	pop    r15
  3b8e07:	41 5e                                           	pop    r14
  3b8e09:	41 5d                                           	pop    r13
  3b8e0b:	41 5c                                           	pop    r12
  3b8e0d:	5f                                              	pop    rdi
  3b8e0e:	5e                                              	pop    rsi
  3b8e0f:	5d                                              	pop    rbp
  3b8e10:	5b                                              	pop    rbx
  3b8e11:	c3                                              	ret
