
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b95c4 <.data+0x3b95c4>:
  3b95c4:	48 8b c4                                        	mov    rax,rsp
  3b95c7:	4c 89 48 20                                     	mov    QWORD PTR [rax+0x20],r9
  3b95cb:	53                                              	push   rbx
  3b95cc:	55                                              	push   rbp
  3b95cd:	56                                              	push   rsi
  3b95ce:	57                                              	push   rdi
  3b95cf:	41 54                                           	push   r12
  3b95d1:	41 55                                           	push   r13
  3b95d3:	41 56                                           	push   r14
  3b95d5:	41 57                                           	push   r15
  3b95d7:	48 81 ec 08 01 00 00                            	sub    rsp,0x108
  3b95de:	44 8b bc 24 88 01 00 00                         	mov    r15d,DWORD PTR [rsp+0x188]
  3b95e6:	bd 00 00 00 00                                  	mov    ebp,0x0
  3b95eb:	8b bc 24 88 01 00 00                            	mov    edi,DWORD PTR [rsp+0x188]
  3b95f2:	41 81 e7 00 00 10 00                            	and    r15d,0x100000
  3b95f9:	48 8b 1d 28 c5 04 00                            	mov    rbx,QWORD PTR [rip+0x4c528]        # 0x405b28
  3b9600:	45 8b e8                                        	mov    r13d,r8d
  3b9603:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3b9607:	40 0f 95 c5                                     	setne  bpl
  3b960b:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3b960f:	83 e7 20                                        	and    edi,0x20
  3b9612:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3b9617:	44 8b e2                                        	mov    r12d,edx
  3b961a:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  3b9622:	0f 95 84 24 58 01 00 00                         	setne  BYTE PTR [rsp+0x158]
  3b962a:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  3b9632:	4c 8b f1                                        	mov    r14,rcx
  3b9635:	44 0f 29 98 58 ff ff ff                         	movaps XMMWORD PTR [rax-0xa8],xmm11
  3b963d:	44 0f 29 a0 48 ff ff ff                         	movaps XMMWORD PTR [rax-0xb8],xmm12
  3b9645:	f3 44 0f 10 a4 24 78 01 00 00                   	movss  xmm12,DWORD PTR [rsp+0x178]
  3b964f:	44 0f 29 a8 38 ff ff ff                         	movaps XMMWORD PTR [rax-0xc8],xmm13
  3b9657:	41 8d 40 f8                                     	lea    eax,[r8-0x8]
  3b965b:	44 0f 29 74 24 70                               	movaps XMMWORD PTR [rsp+0x70],xmm14
  3b9661:	44 0f 29 7c 24 60                               	movaps XMMWORD PTR [rsp+0x60],xmm15
  3b9667:	83 f8 01                                        	cmp    eax,0x1
  3b966a:	f3 44 0f 10 ac 24 70 01 00 00                   	movss  xmm13,DWORD PTR [rsp+0x170]
  3b9674:	0f 96 84 24 60 01 00 00                         	setbe  BYTE PTR [rsp+0x160]
  3b967c:	45 0f 2f e5                                     	comiss xmm12,xmm13
  3b9680:	76 0b                                           	jbe    0x3b968d
  3b9682:	41 0f 28 fc                                     	movaps xmm7,xmm12
  3b9686:	f3 41 0f 5c fd                                  	subss  xmm7,xmm13
  3b968b:	eb 09                                           	jmp    0x3b9696
  3b968d:	41 0f 28 fd                                     	movaps xmm7,xmm13
  3b9691:	f3 41 0f 5c fc                                  	subss  xmm7,xmm12
  3b9696:	33 f6                                           	xor    esi,esi
  3b9698:	45 85 ff                                        	test   r15d,r15d
  3b969b:	40 0f 95 c6                                     	setne  sil
  3b969f:	48 83 c1 08                                     	add    rcx,0x8
  3b96a3:	48 8b d6                                        	mov    rdx,rsi
  3b96a6:	e8 29 25 fd ff                                  	call   0x38bbd4
  3b96ab:	48 8b d6                                        	mov    rdx,rsi
  3b96ae:	49 8b ce                                        	mov    rcx,r14
  3b96b1:	0f 28 f0                                        	movaps xmm6,xmm0
  3b96b4:	e8 1b 25 fd ff                                  	call   0x38bbd4
  3b96b9:	80 bc 24 60 01 00 00 00                         	cmp    BYTE PTR [rsp+0x160],0x0
  3b96c1:	f3 0f 5c f0                                     	subss  xmm6,xmm0
  3b96c5:	f3 0f 10 93 4c 38 00 00                         	movss  xmm2,DWORD PTR [rbx+0x384c]
  3b96cd:	45 0f 57 c0                                     	xorps  xmm8,xmm8
  3b96d1:	f3 44 0f 10 15 7a 3b ed ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffed3b7a]        # 0x28d254
  3b96da:	f3 0f 5c 35 96 9a ed ff                         	subss  xmm6,DWORD PTR [rip+0xffffffffffed9a96]        # 0x293178
  3b96e2:	f3 0f 11 74 24 44                               	movss  DWORD PTR [rsp+0x44],xmm6
  3b96e8:	75 20                                           	jne    0x3b970a
  3b96ea:	41 0f 2f f8                                     	comiss xmm7,xmm8
  3b96ee:	72 1a                                           	jb     0x3b970a
  3b96f0:	0f 28 cf                                        	movaps xmm1,xmm7
  3b96f3:	0f 28 c6                                        	movaps xmm0,xmm6
  3b96f6:	f3 41 0f 58 ca                                  	addss  xmm1,xmm10
  3b96fb:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  3b96ff:	0f 28 ca                                        	movaps xmm1,xmm2
  3b9702:	e8 ed 0c fd ff                                  	call   0x38a3f4
  3b9707:	0f 28 d0                                        	movaps xmm2,xmm0
  3b970a:	0f 28 ce                                        	movaps xmm1,xmm6
  3b970d:	0f 28 c2                                        	movaps xmm0,xmm2
  3b9710:	e8 b7 cb fb ff                                  	call   0x3762cc
  3b9715:	44 0f 28 f0                                     	movaps xmm14,xmm0
  3b9719:	44 0f 28 ce                                     	movaps xmm9,xmm6
  3b971d:	f3 0f 10 35 2b 3b ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed3b2b]        # 0x28d250
  3b9725:	f3 45 0f 5c ce                                  	subss  xmm9,xmm14
  3b972a:	f3 44 0f 59 f6                                  	mulss  xmm14,xmm6
  3b972f:	48 8b d6                                        	mov    rdx,rsi
  3b9732:	49 8b ce                                        	mov    rcx,r14
  3b9735:	f3 44 0f 11 74 24 40                            	movss  DWORD PTR [rsp+0x40],xmm14
  3b973c:	e8 93 24 fd ff                                  	call   0x38bbd4
  3b9741:	f3 44 0f 10 1d ea 99 ed ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffed99ea]        # 0x293134
  3b974a:	49 8d 4e 08                                     	lea    rcx,[r14+0x8]
  3b974e:	f3 41 0f 58 c3                                  	addss  xmm0,xmm11
  3b9753:	48 8b d6                                        	mov    rdx,rsi
  3b9756:	f3 41 0f 58 c6                                  	addss  xmm0,xmm14
  3b975b:	f3 0f 11 84 24 70 01 00 00                      	movss  DWORD PTR [rsp+0x170],xmm0
  3b9764:	e8 6b 24 fd ff                                  	call   0x38bbd4
  3b9769:	f3 41 0f 5c c3                                  	subss  xmm0,xmm11
  3b976e:	85 ff                                           	test   edi,edi
  3b9770:	40 8a bc 24 60 01 00 00                         	mov    dil,BYTE PTR [rsp+0x160]
  3b9778:	f3 41 0f 5c c6                                  	subss  xmm0,xmm14
  3b977d:	f3 0f 11 84 24 50 01 00 00                      	movss  DWORD PTR [rsp+0x150],xmm0
  3b9786:	74 58                                           	je     0x3b97e0
  3b9788:	40 84 ff                                        	test   dil,dil
  3b978b:	74 14                                           	je     0x3b97a1
  3b978d:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b9795:	ba 03 00 00 00                                  	mov    edx,0x3
  3b979a:	e8 35 69 00 00                                  	call   0x3c00d4
  3b979f:	eb 05                                           	jmp    0x3b97a6
  3b97a1:	b8 01 00 00 00                                  	mov    eax,0x1
  3b97a6:	f3 0f 10 05 36 43 ed ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffed4336]        # 0x28dae4
  3b97ae:	66 0f 6e c8                                     	movd   xmm1,eax
  3b97b2:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b97b5:	e8 d2 cd fe ff                                  	call   0x3a658c
  3b97ba:	f3 44 0f 10 b3 54 38 00 00                      	movss  xmm14,DWORD PTR [rbx+0x3854]
  3b97c3:	44 0f 28 f8                                     	movaps xmm15,xmm0
  3b97c7:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b97cb:	f3 44 0f 59 f6                                  	mulss  xmm14,xmm6
  3b97d0:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b97d4:	e8 1b 0c fd ff                                  	call   0x38a3f4
  3b97d9:	f3 44 0f 5e f0                                  	divss  xmm14,xmm0
  3b97de:	eb 08                                           	jmp    0x3b97e8
  3b97e0:	45 0f 57 f6                                     	xorps  xmm14,xmm14
  3b97e4:	45 0f 57 ff                                     	xorps  xmm15,xmm15
  3b97e8:	c6 84 24 78 01 00 00 00                         	mov    BYTE PTR [rsp+0x178],0x0
  3b97f0:	44 39 a3 68 3f 00 00                            	cmp    DWORD PTR [rbx+0x3f68],r12d
  3b97f7:	75 1d                                           	jne    0x3b9816
  3b97f9:	8b 83 90 3f 00 00                               	mov    eax,DWORD PTR [rbx+0x3f90]
  3b97ff:	83 f8 01                                        	cmp    eax,0x1
  3b9802:	0f 85 54 01 00 00                               	jne    0x3b995c
  3b9808:	80 bb 10 0e 00 00 00                            	cmp    BYTE PTR [rbx+0xe10],0x0
  3b980f:	75 3d                                           	jne    0x3b984e
  3b9811:	e8 62 68 fd ff                                  	call   0x390078
  3b9816:	44 8a a4 24 58 01 00 00                         	mov    r12b,BYTE PTR [rsp+0x158]
  3b981e:	48 8b b4 24 68 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x168]
  3b9826:	8a 9c 24 78 01 00 00                            	mov    bl,BYTE PTR [rsp+0x178]
  3b982d:	44 0f 2f 54 24 44                               	comiss xmm10,DWORD PTR [rsp+0x44]
  3b9833:	0f 86 11 04 00 00                               	jbe    0x3b9c4a
  3b9839:	4d 8b c6                                        	mov    r8,r14
  3b983c:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3b9841:	49 8b d6                                        	mov    rdx,r14
  3b9844:	e8 3f 1b f2 ff                                  	call   0x2db388
  3b9849:	e9 90 04 00 00                                  	jmp    0x3b9cde
  3b984e:	48 8d 8b 08 0e 00 00                            	lea    rcx,[rbx+0xe08]
  3b9855:	48 8b d6                                        	mov    rdx,rsi
  3b9858:	0f 57 ff                                        	xorps  xmm7,xmm7
  3b985b:	e8 6c 23 fd ff                                  	call   0x38bbcc
  3b9860:	80 bb 74 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f74],0x0
  3b9867:	44 8a a4 24 58 01 00 00                         	mov    r12b,BYTE PTR [rsp+0x158]
  3b986f:	48 8b b4 24 68 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x168]
  3b9877:	f3 0f 10 30                                     	movss  xmm6,DWORD PTR [rax]
  3b987b:	0f 84 97 00 00 00                               	je     0x3b9918
  3b9881:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [rsi]
  3b9885:	41 0f 28 dc                                     	movaps xmm3,xmm12
  3b9889:	f3 44 0f 11 74 24 30                            	movss  DWORD PTR [rsp+0x30],xmm14
  3b9890:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3b9894:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3b989b:	41 8b cd                                        	mov    ecx,r13d
  3b989e:	44 88 64 24 20                                  	mov    BYTE PTR [rsp+0x20],r12b
  3b98a3:	e8 4c cc ff ff                                  	call   0x3b64f4
  3b98a8:	45 85 ff                                        	test   r15d,r15d
  3b98ab:	74 0b                                           	je     0x3b98b8
  3b98ad:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b98b1:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3b98b5:	0f 28 c1                                        	movaps xmm0,xmm1
  3b98b8:	f3 0f 10 ac 24 70 01 00 00                      	movss  xmm5,DWORD PTR [rsp+0x170]
  3b98c1:	0f 28 d0                                        	movaps xmm2,xmm0
  3b98c4:	f3 0f 10 8c 24 50 01 00 00                      	movss  xmm1,DWORD PTR [rsp+0x150]
  3b98cd:	0f 28 c5                                        	movaps xmm0,xmm5
  3b98d0:	e8 87 bd f7 ff                                  	call   0x33565c
  3b98d5:	f3 0f 10 4c 24 40                               	movss  xmm1,DWORD PTR [rsp+0x40]
  3b98db:	0f 28 d8                                        	movaps xmm3,xmm0
  3b98de:	f3 0f 5c d9                                     	subss  xmm3,xmm1
  3b98e2:	0f 28 e0                                        	movaps xmm4,xmm0
  3b98e5:	f3 41 0f 5c da                                  	subss  xmm3,xmm10
  3b98ea:	0f 2f f3                                        	comiss xmm6,xmm3
  3b98ed:	72 1c                                           	jb     0x3b990b
  3b98ef:	f3 0f 58 cc                                     	addss  xmm1,xmm4
  3b98f3:	f3 41 0f 58 ca                                  	addss  xmm1,xmm10
  3b98f8:	0f 2f ce                                        	comiss xmm1,xmm6
  3b98fb:	72 0e                                           	jb     0x3b990b
  3b98fd:	40 84 ff                                        	test   dil,dil
  3b9900:	74 09                                           	je     0x3b990b
  3b9902:	0f 28 c6                                        	movaps xmm0,xmm6
  3b9905:	f3 0f 5c c4                                     	subss  xmm0,xmm4
  3b9909:	eb 03                                           	jmp    0x3b990e
  3b990b:	0f 57 c0                                        	xorps  xmm0,xmm0
  3b990e:	f3 0f 11 83 94 5b 00 00                         	movss  DWORD PTR [rbx+0x5b94],xmm0
  3b9916:	eb 09                                           	jmp    0x3b9921
  3b9918:	f3 0f 10 ac 24 70 01 00 00                      	movss  xmm5,DWORD PTR [rsp+0x170]
  3b9921:	45 0f 2f c8                                     	comiss xmm9,xmm8
  3b9925:	76 1c                                           	jbe    0x3b9943
  3b9927:	f3 0f 5c b3 94 5b 00 00                         	subss  xmm6,DWORD PTR [rbx+0x5b94]
  3b992f:	f3 0f 5c f5                                     	subss  xmm6,xmm5
  3b9933:	f3 41 0f 5e f1                                  	divss  xmm6,xmm9
  3b9938:	0f 28 c6                                        	movaps xmm0,xmm6
  3b993b:	e8 bc f0 fb ff                                  	call   0x3789fc
  3b9940:	0f 28 f8                                        	movaps xmm7,xmm0
  3b9943:	45 85 ff                                        	test   r15d,r15d
  3b9946:	0f 84 91 02 00 00                               	je     0x3b9bdd
  3b994c:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b9950:	f3 0f 5c cf                                     	subss  xmm1,xmm7
  3b9954:	0f 28 f9                                        	movaps xmm7,xmm1
  3b9957:	e9 81 02 00 00                                  	jmp    0x3b9bdd
  3b995c:	83 c0 fe                                        	add    eax,0xfffffffe
  3b995f:	83 f8 01                                        	cmp    eax,0x1
  3b9962:	0f 87 ae fe ff ff                               	ja     0x3b9816
  3b9968:	80 bb 74 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f74],0x0
  3b996f:	74 11                                           	je     0x3b9982
  3b9971:	c7 83 98 5b 00 00 00 00 00 00                   	mov    DWORD PTR [rbx+0x5b98],0x0
  3b997b:	c6 83 9c 5b 00 00 00                            	mov    BYTE PTR [rbx+0x5b9c],0x0
  3b9982:	8b cd                                           	mov    ecx,ebp
  3b9984:	e8 83 8f fd ff                                  	call   0x39290c
  3b9989:	0f 28 f0                                        	movaps xmm6,xmm0
  3b998c:	45 85 ff                                        	test   r15d,r15d
  3b998f:	74 07                                           	je     0x3b9998
  3b9991:	0f 57 35 08 99 ed ff                            	xorps  xmm6,XMMWORD PTR [rip+0xffffffffffed9908]        # 0x2932a0
  3b9998:	41 0f 2e f0                                     	ucomiss xmm6,xmm8
  3b999c:	7a 06                                           	jp     0x3b99a4
  3b999e:	0f 84 d4 00 00 00                               	je     0x3b9a78
  3b99a4:	83 bb 1c 49 00 00 03                            	cmp    DWORD PTR [rbx+0x491c],0x3
  3b99ab:	b9 00 10 00 00                                  	mov    ecx,0x1000
  3b99b0:	b8 73 02 00 00                                  	mov    eax,0x273
  3b99b5:	0f 44 c8                                        	cmove  ecx,eax
  3b99b8:	e8 6b a8 fd ff                                  	call   0x394228
  3b99bd:	83 bb 1c 49 00 00 03                            	cmp    DWORD PTR [rbx+0x491c],0x3
  3b99c4:	40 8a f8                                        	mov    dil,al
  3b99c7:	b8 74 02 00 00                                  	mov    eax,0x274
  3b99cc:	b9 00 20 00 00                                  	mov    ecx,0x2000
  3b99d1:	0f 44 c8                                        	cmove  ecx,eax
  3b99d4:	e8 4f a8 fd ff                                  	call   0x394228
  3b99d9:	40 8a ac 24 60 01 00 00                         	mov    bpl,BYTE PTR [rsp+0x160]
  3b99e1:	40 8a f0                                        	mov    sil,al
  3b99e4:	f3 44 0f 10 0d 2f 41 ed ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffed412f]        # 0x28db1c
  3b99ed:	40 84 ed                                        	test   bpl,bpl
  3b99f0:	74 2a                                           	je     0x3b9a1c
  3b99f2:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b99fa:	ba 03 00 00 00                                  	mov    edx,0x3
  3b99ff:	e8 d0 66 00 00                                  	call   0x3c00d4
  3b9a04:	85 c0                                           	test   eax,eax
  3b9a06:	7e 14                                           	jle    0x3b9a1c
  3b9a08:	f3 0f 5e 35 34 41 ed ff                         	divss  xmm6,DWORD PTR [rip+0xffffffffffed4134]        # 0x28db44
  3b9a10:	40 84 ff                                        	test   dil,dil
  3b9a13:	74 40                                           	je     0x3b9a55
  3b9a15:	f3 41 0f 5e f1                                  	divss  xmm6,xmm9
  3b9a1a:	eb 39                                           	jmp    0x3b9a55
  3b9a1c:	0f 2f 3d 9d 3f ef ff                            	comiss xmm7,DWORD PTR [rip+0xffffffffffef3f9d]        # 0x2ad9c0
  3b9a23:	f3 0f 10 05 19 41 ed ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffed4119]        # 0x28db44
  3b9a2b:	72 05                                           	jb     0x3b9a32
  3b9a2d:	0f 2f c7                                        	comiss xmm0,xmm7
  3b9a30:	73 05                                           	jae    0x3b9a37
  3b9a32:	40 84 ff                                        	test   dil,dil
  3b9a35:	74 1a                                           	je     0x3b9a51
  3b9a37:	44 0f 2f c6                                     	comiss xmm8,xmm6
  3b9a3b:	76 0a                                           	jbe    0x3b9a47
  3b9a3d:	f3 0f 10 35 1b 98 ed ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffed981b]        # 0x293260
  3b9a45:	eb 04                                           	jmp    0x3b9a4b
  3b9a47:	41 0f 28 f2                                     	movaps xmm6,xmm10
  3b9a4b:	f3 0f 5e f7                                     	divss  xmm6,xmm7
  3b9a4f:	eb 04                                           	jmp    0x3b9a55
  3b9a51:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3b9a55:	40 84 f6                                        	test   sil,sil
  3b9a58:	74 05                                           	je     0x3b9a5f
  3b9a5a:	f3 41 0f 59 f1                                  	mulss  xmm6,xmm9
  3b9a5f:	f3 0f 58 b3 98 5b 00 00                         	addss  xmm6,DWORD PTR [rbx+0x5b98]
  3b9a67:	c6 83 9c 5b 00 00 01                            	mov    BYTE PTR [rbx+0x5b9c],0x1
  3b9a6e:	f3 0f 11 b3 98 5b 00 00                         	movss  DWORD PTR [rbx+0x5b98],xmm6
  3b9a76:	eb 08                                           	jmp    0x3b9a80
  3b9a78:	40 8a ac 24 60 01 00 00                         	mov    bpl,BYTE PTR [rsp+0x160]
  3b9a80:	44 39 a3 00 49 00 00                            	cmp    DWORD PTR [rbx+0x4900],r12d
  3b9a87:	75 0d                                           	jne    0x3b9a96
  3b9a89:	80 bb 74 3f 00 00 00                            	cmp    BYTE PTR [rbx+0x3f74],0x0
  3b9a90:	0f 84 7b fd ff ff                               	je     0x3b9811
  3b9a96:	80 bb 9c 5b 00 00 00                            	cmp    BYTE PTR [rbx+0x5b9c],0x0
  3b9a9d:	44 8a a4 24 58 01 00 00                         	mov    r12b,BYTE PTR [rsp+0x158]
  3b9aa5:	48 8b b4 24 68 01 00 00                         	mov    rsi,QWORD PTR [rsp+0x168]
  3b9aad:	0f 84 73 fd ff ff                               	je     0x3b9826
  3b9ab3:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [rsi]
  3b9ab7:	41 0f 28 dc                                     	movaps xmm3,xmm12
  3b9abb:	f3 0f 10 b3 98 5b 00 00                         	movss  xmm6,DWORD PTR [rbx+0x5b98]
  3b9ac3:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3b9ac7:	f3 44 0f 11 74 24 30                            	movss  DWORD PTR [rsp+0x30],xmm14
  3b9ace:	41 8b cd                                        	mov    ecx,r13d
  3b9ad1:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3b9ad8:	44 88 64 24 20                                  	mov    BYTE PTR [rsp+0x20],r12b
  3b9add:	e8 12 ca ff ff                                  	call   0x3b64f4
  3b9ae2:	0f 28 f8                                        	movaps xmm7,xmm0
  3b9ae5:	41 0f 2f fa                                     	comiss xmm7,xmm10
  3b9ae9:	72 06                                           	jb     0x3b9af1
  3b9aeb:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3b9aef:	77 0c                                           	ja     0x3b9afd
  3b9af1:	44 0f 2f c7                                     	comiss xmm8,xmm7
  3b9af5:	72 0e                                           	jb     0x3b9b05
  3b9af7:	44 0f 2f c6                                     	comiss xmm8,xmm6
  3b9afb:	76 08                                           	jbe    0x3b9b05
  3b9afd:	40 32 ff                                        	xor    dil,dil
  3b9b00:	e9 bf 00 00 00                                  	jmp    0x3b9bc4
  3b9b05:	0f 28 c6                                        	movaps xmm0,xmm6
  3b9b08:	40 b7 01                                        	mov    dil,0x1
  3b9b0b:	f3 0f 58 c7                                     	addss  xmm0,xmm7
  3b9b0f:	44 0f 28 df                                     	movaps xmm11,xmm7
  3b9b13:	e8 e4 ee fb ff                                  	call   0x3789fc
  3b9b18:	f3 44 0f 11 74 24 30                            	movss  DWORD PTR [rsp+0x30],xmm14
  3b9b1f:	0f 28 c8                                        	movaps xmm1,xmm0
  3b9b22:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3b9b29:	41 0f 28 dc                                     	movaps xmm3,xmm12
  3b9b2d:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3b9b31:	44 88 64 24 20                                  	mov    BYTE PTR [rsp+0x20],r12b
  3b9b36:	41 8b cd                                        	mov    ecx,r13d
  3b9b39:	0f 28 f8                                        	movaps xmm7,xmm0
  3b9b3c:	e8 07 de ff ff                                  	call   0x3b7948
  3b9b41:	40 84 ed                                        	test   bpl,bpl
  3b9b44:	74 28                                           	je     0x3b9b6e
  3b9b46:	f6 84 24 88 01 00 00 40                         	test   BYTE PTR [rsp+0x188],0x40
  3b9b4e:	75 1e                                           	jne    0x3b9b6e
  3b9b50:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b9b58:	0f 28 d0                                        	movaps xmm2,xmm0
  3b9b5b:	41 8b d5                                        	mov    edx,r13d
  3b9b5e:	e8 55 c1 ff ff                                  	call   0x3b5cb8
  3b9b63:	f3 44 0f 10 8b 98 5b 00 00                      	movss  xmm9,DWORD PTR [rbx+0x5b98]
  3b9b6c:	eb 04                                           	jmp    0x3b9b72
  3b9b6e:	44 0f 28 ce                                     	movaps xmm9,xmm6
  3b9b72:	f3 44 0f 11 74 24 30                            	movss  DWORD PTR [rsp+0x30],xmm14
  3b9b79:	41 0f 28 dc                                     	movaps xmm3,xmm12
  3b9b7d:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3b9b84:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3b9b88:	0f 28 c8                                        	movaps xmm1,xmm0
  3b9b8b:	44 88 64 24 20                                  	mov    BYTE PTR [rsp+0x20],r12b
  3b9b90:	41 8b cd                                        	mov    ecx,r13d
  3b9b93:	e8 5c c9 ff ff                                  	call   0x3b64f4
  3b9b98:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3b9b9c:	f3 41 0f 5c c3                                  	subss  xmm0,xmm11
  3b9ba1:	0f 28 ce                                        	movaps xmm1,xmm6
  3b9ba4:	76 07                                           	jbe    0x3b9bad
  3b9ba6:	e8 21 c7 fb ff                                  	call   0x3762cc
  3b9bab:	eb 05                                           	jmp    0x3b9bb2
  3b9bad:	e8 42 08 fd ff                                  	call   0x38a3f4
  3b9bb2:	f3 44 0f 10 1d 79 95 ed ff                      	movss  xmm11,DWORD PTR [rip+0xffffffffffed9579]        # 0x293134
  3b9bbb:	45 0f 28 c1                                     	movaps xmm8,xmm9
  3b9bbf:	f3 44 0f 5c c0                                  	subss  xmm8,xmm0
  3b9bc4:	f3 44 0f 11 83 98 5b 00 00                      	movss  DWORD PTR [rbx+0x5b98],xmm8
  3b9bcd:	c6 83 9c 5b 00 00 00                            	mov    BYTE PTR [rbx+0x5b9c],0x0
  3b9bd4:	40 84 ff                                        	test   dil,dil
  3b9bd7:	0f 84 49 fc ff ff                               	je     0x3b9826
  3b9bdd:	f3 44 0f 11 74 24 30                            	movss  DWORD PTR [rsp+0x30],xmm14
  3b9be4:	41 0f 28 dc                                     	movaps xmm3,xmm12
  3b9be8:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3b9bef:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3b9bf3:	0f 28 cf                                        	movaps xmm1,xmm7
  3b9bf6:	44 88 64 24 20                                  	mov    BYTE PTR [rsp+0x20],r12b
  3b9bfb:	41 8b cd                                        	mov    ecx,r13d
  3b9bfe:	e8 45 dd ff ff                                  	call   0x3b7948
  3b9c03:	80 bc 24 60 01 00 00 00                         	cmp    BYTE PTR [rsp+0x160],0x0
  3b9c0b:	0f 28 c8                                        	movaps xmm1,xmm0
  3b9c0e:	74 20                                           	je     0x3b9c30
  3b9c10:	f6 84 24 88 01 00 00 40                         	test   BYTE PTR [rsp+0x188],0x40
  3b9c18:	75 16                                           	jne    0x3b9c30
  3b9c1a:	48 8b 8c 24 80 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x180]
  3b9c22:	0f 28 d0                                        	movaps xmm2,xmm0
  3b9c25:	41 8b d5                                        	mov    edx,r13d
  3b9c28:	e8 8b c0 ff ff                                  	call   0x3b5cb8
  3b9c2d:	0f 28 c8                                        	movaps xmm1,xmm0
  3b9c30:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [rsi]
  3b9c34:	0f 2e c1                                        	ucomiss xmm0,xmm1
  3b9c37:	7a 06                                           	jp     0x3b9c3f
  3b9c39:	0f 84 e7 fb ff ff                               	je     0x3b9826
  3b9c3f:	f3 0f 11 0e                                     	movss  DWORD PTR [rsi],xmm1
  3b9c43:	b3 01                                           	mov    bl,0x1
  3b9c45:	e9 e3 fb ff ff                                  	jmp    0x3b982d
  3b9c4a:	f3 0f 10 0e                                     	movss  xmm1,DWORD PTR [rsi]
  3b9c4e:	41 0f 28 dc                                     	movaps xmm3,xmm12
  3b9c52:	f3 44 0f 11 74 24 30                            	movss  DWORD PTR [rsp+0x30],xmm14
  3b9c59:	41 0f 28 d5                                     	movaps xmm2,xmm13
  3b9c5d:	f3 44 0f 11 7c 24 28                            	movss  DWORD PTR [rsp+0x28],xmm15
  3b9c64:	41 8b cd                                        	mov    ecx,r13d
  3b9c67:	44 88 64 24 20                                  	mov    BYTE PTR [rsp+0x20],r12b
  3b9c6c:	e8 83 c8 ff ff                                  	call   0x3b64f4
  3b9c71:	45 85 ff                                        	test   r15d,r15d
  3b9c74:	74 09                                           	je     0x3b9c7f
  3b9c76:	f3 44 0f 5c d0                                  	subss  xmm10,xmm0
  3b9c7b:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3b9c7f:	f3 0f 10 8c 24 50 01 00 00                      	movss  xmm1,DWORD PTR [rsp+0x150]
  3b9c88:	0f 28 d0                                        	movaps xmm2,xmm0
  3b9c8b:	f3 0f 10 84 24 70 01 00 00                      	movss  xmm0,DWORD PTR [rsp+0x170]
  3b9c94:	e8 c3 b9 f7 ff                                  	call   0x33565c
  3b9c99:	48 8d 4c 24 48                                  	lea    rcx,[rsp+0x48]
  3b9c9e:	0f 28 e0                                        	movaps xmm4,xmm0
  3b9ca1:	f3 0f 10 44 24 40                               	movss  xmm0,DWORD PTR [rsp+0x40]
  3b9ca7:	0f 28 e8                                        	movaps xmm5,xmm0
  3b9caa:	f3 0f 58 ec                                     	addss  xmm5,xmm4
  3b9cae:	f3 0f 5c e0                                     	subss  xmm4,xmm0
  3b9cb2:	45 85 ff                                        	test   r15d,r15d
  3b9cb5:	75 38                                           	jne    0x3b9cef
  3b9cb7:	f3 41 0f 10 46 0c                               	movss  xmm0,DWORD PTR [r14+0xc]
  3b9cbd:	0f 28 dd                                        	movaps xmm3,xmm5
  3b9cc0:	f3 41 0f 10 56 04                               	movss  xmm2,DWORD PTR [r14+0x4]
  3b9cc6:	f3 41 0f 5c c3                                  	subss  xmm0,xmm11
  3b9ccb:	f3 41 0f 58 d3                                  	addss  xmm2,xmm11
  3b9cd0:	0f 28 cc                                        	movaps xmm1,xmm4
  3b9cd3:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3b9cd9:	e8 16 1e fd ff                                  	call   0x38baf4
  3b9cde:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3b9ce1:	48 8b 84 24 90 01 00 00                         	mov    rax,QWORD PTR [rsp+0x190]
  3b9ce9:	f3 0f 7f 00                                     	movdqu XMMWORD PTR [rax],xmm0
  3b9ced:	eb 32                                           	jmp    0x3b9d21
  3b9cef:	f3 41 0f 10 5e 08                               	movss  xmm3,DWORD PTR [r14+0x8]
  3b9cf5:	0f 28 d4                                        	movaps xmm2,xmm4
  3b9cf8:	f3 41 0f 10 0e                                  	movss  xmm1,DWORD PTR [r14]
  3b9cfd:	f3 41 0f 5c db                                  	subss  xmm3,xmm11
  3b9d02:	f3 41 0f 58 cb                                  	addss  xmm1,xmm11
  3b9d07:	f3 0f 11 6c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm5
  3b9d0d:	e8 e2 1d fd ff                                  	call   0x38baf4
  3b9d12:	48 8b 8c 24 90 01 00 00                         	mov    rcx,QWORD PTR [rsp+0x190]
  3b9d1a:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3b9d1d:	f3 0f 7f 01                                     	movdqu XMMWORD PTR [rcx],xmm0
  3b9d21:	44 0f 28 74 24 70                               	movaps xmm14,XMMWORD PTR [rsp+0x70]
  3b9d27:	4c 8d 9c 24 08 01 00 00                         	lea    r11,[rsp+0x108]
  3b9d2f:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3b9d34:	8a c3                                           	mov    al,bl
  3b9d36:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3b9d3b:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3b9d40:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3b9d45:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3b9d4a:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3b9d4f:	45 0f 28 63 88                                  	movaps xmm12,XMMWORD PTR [r11-0x78]
  3b9d54:	45 0f 28 ab 78 ff ff ff                         	movaps xmm13,XMMWORD PTR [r11-0x88]
  3b9d5c:	44 0f 28 7c 24 60                               	movaps xmm15,XMMWORD PTR [rsp+0x60]
  3b9d62:	49 8b e3                                        	mov    rsp,r11
  3b9d65:	41 5f                                           	pop    r15
  3b9d67:	41 5e                                           	pop    r14
  3b9d69:	41 5d                                           	pop    r13
  3b9d6b:	41 5c                                           	pop    r12
  3b9d6d:	5f                                              	pop    rdi
  3b9d6e:	5e                                              	pop    rsi
  3b9d6f:	5d                                              	pop    rbp
  3b9d70:	5b                                              	pop    rbx
  3b9d71:	c3                                              	ret
