
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003c4478 <.data+0x3c4478>:
  3c4478:	48 8b c4                                        	mov    rax,rsp
  3c447b:	55                                              	push   rbp
  3c447c:	53                                              	push   rbx
  3c447d:	56                                              	push   rsi
  3c447e:	57                                              	push   rdi
  3c447f:	41 54                                           	push   r12
  3c4481:	41 55                                           	push   r13
  3c4483:	41 56                                           	push   r14
  3c4485:	41 57                                           	push   r15
  3c4487:	48 8d a8 f8 fd ff ff                            	lea    rbp,[rax-0x208]
  3c448e:	48 81 ec c8 02 00 00                            	sub    rsp,0x2c8
  3c4495:	0f 29 70 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm6
  3c4499:	4d 8b e9                                        	mov    r13,r9
  3c449c:	0f 29 78 98                                     	movaps XMMWORD PTR [rax-0x68],xmm7
  3c44a0:	49 8b f0                                        	mov    rsi,r8
  3c44a3:	44 0f 29 40 88                                  	movaps XMMWORD PTR [rax-0x78],xmm8
  3c44a8:	44 8b fa                                        	mov    r15d,edx
  3c44ab:	44 0f 29 88 78 ff ff ff                         	movaps XMMWORD PTR [rax-0x88],xmm9
  3c44b3:	4c 8b f1                                        	mov    r14,rcx
  3c44b6:	44 0f 29 90 68 ff ff ff                         	movaps XMMWORD PTR [rax-0x98],xmm10
  3c44be:	e8 3d 8d f9 ff                                  	call   0x35d200
  3c44c3:	45 33 c0                                        	xor    r8d,r8d
  3c44c6:	48 89 45 a0                                     	mov    QWORD PTR [rbp-0x60],rax
  3c44ca:	49 8b d6                                        	mov    rdx,r14
  3c44cd:	48 8b c8                                        	mov    rcx,rax
  3c44d0:	4c 8b e0                                        	mov    r12,rax
  3c44d3:	e8 3c e1 fc ff                                  	call   0x392614
  3c44d8:	8b f8                                           	mov    edi,eax
  3c44da:	e8 c5 e7 fc ff                                  	call   0x392ca4
  3c44df:	48 8b 05 42 16 04 00                            	mov    rax,QWORD PTR [rip+0x41642]        # 0x405b28
  3c44e6:	48 8d 4d 10                                     	lea    rcx,[rbp+0x10]
  3c44ea:	f2 41 0f 10 84 24 00 01 00 00                   	movsd  xmm0,QWORD PTR [r12+0x100]
  3c44f4:	41 b1 01                                        	mov    r9b,0x1
  3c44f7:	f3 44 0f 10 0d 60 ed ec ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffeced60]        # 0x293260
  3c4500:	45 33 c0                                        	xor    r8d,r8d
  3c4503:	49 8b d6                                        	mov    rdx,r14
  3c4506:	48 89 45 d0                                     	mov    QWORD PTR [rbp-0x30],rax
  3c450a:	f2 0f 11 45 90                                  	movsd  QWORD PTR [rbp-0x70],xmm0
  3c450f:	f3 44 0f 11 4c 24 20                            	movss  DWORD PTR [rsp+0x20],xmm9
  3c4516:	e8 81 b2 fc ff                                  	call   0x38f79c
  3c451b:	48 8b 05 06 16 04 00                            	mov    rax,QWORD PTR [rip+0x41606]        # 0x405b28
  3c4522:	bb 00 00 00 00                                  	mov    ebx,0x0
  3c4527:	f3 0f 10 35 b9 49 e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe849b9]        # 0x248ee8
  3c452f:	f3 0f 59 35 9d ec ec ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffecec9d]        # 0x2931d4
  3c4537:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3c4541:	0f 95 c3                                        	setne  bl
  3c4544:	e8 27 ae fc ff                                  	call   0x38f370
  3c4549:	f3 0f 10 55 14                                  	movss  xmm2,DWORD PTR [rbp+0x14]
  3c454e:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3c4552:	0f 28 c8                                        	movaps xmm1,xmm0
  3c4555:	66 0f 6e c3                                     	movd   xmm0,ebx
  3c4559:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3c455c:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3c4560:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  3c4564:	e8 d7 7d f0 ff                                  	call   0x2cc340
  3c4569:	4c 8b c0                                        	mov    r8,rax
  3c456c:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3c4570:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3c4574:	e8 5f b4 f2 ff                                  	call   0x2ef9d8
  3c4579:	4c 8b c0                                        	mov    r8,rax
  3c457c:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3c4580:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3c4584:	e8 ff 6d f1 ff                                  	call   0x2db388
  3c4589:	48 8d 55 e0                                     	lea    rdx,[rbp-0x20]
  3c458d:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3c4591:	e8 5e 43 fb ff                                  	call   0x3788f4
  3c4596:	f3 44 0f 10 05 49 49 e8 ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffe84949]        # 0x248ee8
  3c459f:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3c45a3:	f3 44 0f 59 05 ac eb ec ff                      	mulss  xmm8,DWORD PTR [rip+0xffffffffffecebac]        # 0x293158
  3c45ac:	f3 0f 10 4d 88                                  	movss  xmm1,DWORD PTR [rbp-0x78]
  3c45b1:	41 0f 28 d0                                     	movaps xmm2,xmm8
  3c45b5:	f3 0f 58 50 04                                  	addss  xmm2,DWORD PTR [rax+0x4]
  3c45ba:	e8 81 7d f0 ff                                  	call   0x2cc340
  3c45bf:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3c45c3:	e8 6c 43 fb ff                                  	call   0x378934
  3c45c8:	f3 0f 10 35 80 8c ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec8c80]        # 0x28d250
  3c45d0:	0f 28 f8                                        	movaps xmm7,xmm0
  3c45d3:	f3 0f 59 fe                                     	mulss  xmm7,xmm6
  3c45d7:	f3 41 0f 58 f8                                  	addss  xmm7,xmm8
  3c45dc:	e8 8f ad fc ff                                  	call   0x38f370
  3c45e1:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3c45e5:	48 8d 4d 20                                     	lea    rcx,[rbp+0x20]
  3c45e9:	0f 28 d7                                        	movaps xmm2,xmm7
  3c45ec:	0f 28 c8                                        	movaps xmm1,xmm0
  3c45ef:	e8 4c 7d f0 ff                                  	call   0x2cc340
  3c45f4:	4c 8b c0                                        	mov    r8,rax
  3c45f7:	48 8d 55 88                                     	lea    rdx,[rbp-0x78]
  3c45fb:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3c4600:	e8 df 21 f7 ff                                  	call   0x3367e4
  3c4605:	48 8b d0                                        	mov    rdx,rax
  3c4608:	4c 8d 45 90                                     	lea    r8,[rbp-0x70]
  3c460c:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3c4611:	e8 72 6d f1 ff                                  	call   0x2db388
  3c4616:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c461a:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3c461e:	e8 5d 84 fb ff                                  	call   0x37ca80
  3c4623:	45 33 c9                                        	xor    r9d,r9d
  3c4626:	48 8d 4d 80                                     	lea    rcx,[rbp-0x80]
  3c462a:	45 33 c0                                        	xor    r8d,r8d
  3c462d:	8b d7                                           	mov    edx,edi
  3c462f:	e8 a8 02 fd ff                                  	call   0x3948dc
  3c4634:	48 8b 9d 38 02 00 00                            	mov    rbx,QWORD PTR [rbp+0x238]
  3c463b:	48 85 db                                        	test   rbx,rbx
  3c463e:	75 0c                                           	jne    0x3c464c
  3c4640:	41 8b cf                                        	mov    ecx,r15d
  3c4643:	e8 f0 b7 ff ff                                  	call   0x3bfe38
  3c4648:	48 8b 58 10                                     	mov    rbx,QWORD PTR [rax+0x10]
  3c464c:	8b d7                                           	mov    edx,edi
  3c464e:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3c4653:	e8 bc 03 fd ff                                  	call   0x394a14
  3c4658:	88 85 38 02 00 00                               	mov    BYTE PTR [rbp+0x238],al
  3c465e:	84 c0                                           	test   al,al
  3c4660:	74 21                                           	je     0x3c4683
  3c4662:	45 33 c0                                        	xor    r8d,r8d
  3c4665:	8b d7                                           	mov    edx,edi
  3c4667:	33 c9                                           	xor    ecx,ecx
  3c4669:	e8 f2 fc fc ff                                  	call   0x394360
  3c466e:	84 c0                                           	test   al,al
  3c4670:	74 11                                           	je     0x3c4683
  3c4672:	45 33 c0                                        	xor    r8d,r8d
  3c4675:	8b d7                                           	mov    edx,edi
  3c4677:	b9 81 02 00 00                                  	mov    ecx,0x281
  3c467c:	e8 03 6f fd ff                                  	call   0x39b584
  3c4681:	eb 0c                                           	jmp    0x3c468f
  3c4683:	48 8b 45 d0                                     	mov    rax,QWORD PTR [rbp-0x30]
  3c4687:	39 b8 f8 48 00 00                               	cmp    DWORD PTR [rax+0x48f8],edi
  3c468d:	75 29                                           	jne    0x3c46b8
  3c468f:	49 8b d4                                        	mov    rdx,r12
  3c4692:	8b cf                                           	mov    ecx,edi
  3c4694:	e8 33 6a fd ff                                  	call   0x39b0cc
  3c4699:	49 8b d4                                        	mov    rdx,r12
  3c469c:	8b cf                                           	mov    ecx,edi
  3c469e:	e8 e5 6d fd ff                                  	call   0x39b488
  3c46a3:	33 d2                                           	xor    edx,edx
  3c46a5:	49 8b cc                                        	mov    rcx,r12
  3c46a8:	e8 4f d8 fc ff                                  	call   0x391efc
  3c46ad:	48 8b 45 d0                                     	mov    rax,QWORD PTR [rbp-0x30]
  3c46b1:	83 88 78 47 00 00 03                            	or     DWORD PTR [rax+0x4778],0x3
  3c46b8:	48 8d 4d e0                                     	lea    rcx,[rbp-0x20]
  3c46bc:	e8 6b 74 fc ff                                  	call   0x38bb2c
  3c46c1:	4c 8b a5 30 02 00 00                            	mov    r12,QWORD PTR [rbp+0x230]
  3c46c8:	48 8d 45 e0                                     	lea    rax,[rbp-0x20]
  3c46cc:	48 89 44 24 40                                  	mov    QWORD PTR [rsp+0x40],rax
  3c46d1:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3c46d6:	c7 44 24 38 00 00 00 00                         	mov    DWORD PTR [rsp+0x38],0x0
  3c46de:	4c 8b ce                                        	mov    r9,rsi
  3c46e1:	48 89 5c 24 30                                  	mov    QWORD PTR [rsp+0x30],rbx
  3c46e6:	45 8b c7                                        	mov    r8d,r15d
  3c46e9:	4c 89 64 24 28                                  	mov    QWORD PTR [rsp+0x28],r12
  3c46ee:	8b d7                                           	mov    edx,edi
  3c46f0:	4c 89 6c 24 20                                  	mov    QWORD PTR [rsp+0x20],r13
  3c46f5:	e8 6a f9 ff ff                                  	call   0x3c4064
  3c46fa:	88 44 24 51                                     	mov    BYTE PTR [rsp+0x51],al
  3c46fe:	84 c0                                           	test   al,al
  3c4700:	74 07                                           	je     0x3c4709
  3c4702:	8b cf                                           	mov    ecx,edi
  3c4704:	e8 27 0a fd ff                                  	call   0x395130
  3c4709:	4c 8b ce                                        	mov    r9,rsi
  3c470c:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  3c4711:	45 8b c7                                        	mov    r8d,r15d
  3c4714:	48 8d 8d 30 01 00 00                            	lea    rcx,[rbp+0x130]
  3c471b:	ba 40 00 00 00                                  	mov    edx,0x40
  3c4720:	e8 7f b6 ff ff                                  	call   0x3bfda4
  3c4725:	48 8d 4d b4                                     	lea    rcx,[rbp-0x4c]
  3c4729:	48 c7 45 a8 00 00 00 00                         	mov    QWORD PTR [rbp-0x58],0x0
  3c4731:	45 0f 57 d2                                     	xorps  xmm10,xmm10
  3c4735:	c7 45 b0 00 00 00 00                            	mov    DWORD PTR [rbp-0x50],0x0
  3c473c:	e8 bb a5 f2 ff                                  	call   0x2eecfc
  3c4741:	f3 0f 10 4d ac                                  	movss  xmm1,DWORD PTR [rbp-0x54]
  3c4746:	4c 8d 45 f0                                     	lea    r8,[rbp-0x10]
  3c474a:	f3 0f 10 45 a8                                  	movss  xmm0,DWORD PTR [rbp-0x58]
  3c474f:	ba 03 00 00 00                                  	mov    edx,0x3
  3c4754:	0f b7 45 c5                                     	movzx  eax,WORD PTR [rbp-0x3b]
  3c4758:	49 8b ce                                        	mov    rcx,r14
  3c475b:	f3 0f 11 4d f4                                  	movss  DWORD PTR [rbp-0xc],xmm1
  3c4760:	0f 10 4d b4                                     	movups xmm1,XMMWORD PTR [rbp-0x4c]
  3c4764:	66 89 45 0d                                     	mov    WORD PTR [rbp+0xd],ax
  3c4768:	8a 45 c7                                        	mov    al,BYTE PTR [rbp-0x39]
  3c476b:	f3 0f 11 45 f0                                  	movss  DWORD PTR [rbp-0x10],xmm0
  3c4770:	f3 0f 10 45 b0                                  	movss  xmm0,DWORD PTR [rbp-0x50]
  3c4775:	f3 0f 7f 4d fc                                  	movdqu XMMWORD PTR [rbp-0x4],xmm1
  3c477a:	c6 45 0c 00                                     	mov    BYTE PTR [rbp+0xc],0x0
  3c477e:	f3 0f 11 45 f8                                  	movss  DWORD PTR [rbp-0x8],xmm0
  3c4783:	88 45 0f                                        	mov    BYTE PTR [rbp+0xf],al
  3c4786:	e8 9d 71 ff ff                                  	call   0x3bb928
  3c478b:	48 8b f8                                        	mov    rdi,rax
  3c478e:	80 78 1c 00                                     	cmp    BYTE PTR [rax+0x1c],0x0
  3c4792:	0f 85 01 01 00 00                               	jne    0x3c4899
  3c4798:	48 8b 0d 89 13 04 00                            	mov    rcx,QWORD PTR [rip+0x41389]        # 0x405b28
  3c479f:	f7 81 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rcx+0x4788],0x800
  3c47a9:	0f 85 ea 00 00 00                               	jne    0x3c4899
  3c47af:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c47b3:	e8 cc e1 fb ff                                  	call   0x382984
  3c47b8:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3c47bd:	41 83 ff 04                                     	cmp    r15d,0x4
  3c47c1:	75 44                                           	jne    0x3c4807
  3c47c3:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3c47c8:	e8 93 7b ff ff                                  	call   0x3bc360
  3c47cd:	48 8b c8                                        	mov    rcx,rax
  3c47d0:	e8 07 a3 fd ff                                  	call   0x39eadc
  3c47d5:	48 8b d0                                        	mov    rdx,rax
  3c47d8:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c47dc:	e8 87 04 f1 ff                                  	call   0x2d4c68
  3c47e1:	49 8b d6                                        	mov    rdx,r14
  3c47e4:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  3c47e8:	e8 7b 04 f1 ff                                  	call   0x2d4c68
  3c47ed:	41 8b 45 00                                     	mov    eax,DWORD PTR [r13+0x0]
  3c47f1:	89 85 80 00 00 00                               	mov    DWORD PTR [rbp+0x80],eax
  3c47f7:	41 8b 04 24                                     	mov    eax,DWORD PTR [r12]
  3c47fb:	89 85 84 00 00 00                               	mov    DWORD PTR [rbp+0x84],eax
  3c4801:	48 89 75 78                                     	mov    QWORD PTR [rbp+0x78],rsi
  3c4805:	eb 4d                                           	jmp    0x3c4854
  3c4807:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3c480c:	e8 87 7b ff ff                                  	call   0x3bc398
  3c4811:	48 8b c8                                        	mov    rcx,rax
  3c4814:	e8 13 a3 fd ff                                  	call   0x39eb2c
  3c4819:	48 8b d0                                        	mov    rdx,rax
  3c481c:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c4820:	e8 43 04 f1 ff                                  	call   0x2d4c68
  3c4825:	49 8b d6                                        	mov    rdx,r14
  3c4828:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  3c482c:	e8 37 04 f1 ff                                  	call   0x2d4c68
  3c4831:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3c4837:	f3 41 0f 10 0c 24                               	movss  xmm1,DWORD PTR [r12]
  3c483d:	f3 0f 11 85 90 00 00 00                         	movss  DWORD PTR [rbp+0x90],xmm0
  3c4845:	f3 0f 11 8d 94 00 00 00                         	movss  DWORD PTR [rbp+0x94],xmm1
  3c484d:	48 89 b5 88 00 00 00                            	mov    QWORD PTR [rbp+0x88],rsi
  3c4854:	48 8b d3                                        	mov    rdx,rbx
  3c4857:	48 8d 8d 98 00 00 00                            	lea    rcx,[rbp+0x98]
  3c485e:	e8 05 04 f1 ff                                  	call   0x2d4c68
  3c4863:	48 8d 0d 86 46 e8 ff                            	lea    rcx,[rip+0xffffffffffe84686]        # 0x248ef0
  3c486a:	e8 8d 49 fc ff                                  	call   0x3891fc
  3c486f:	48 8d 0d 7a 46 e8 ff                            	lea    rcx,[rip+0xffffffffffe8467a]        # 0x248ef0
  3c4876:	48 8d 50 ff                                     	lea    rdx,[rax-0x1]
  3c487a:	e8 39 e5 fb ff                                  	call   0x382db8
  3c487f:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  3c4883:	48 8d 48 48                                     	lea    rcx,[rax+0x48]
  3c4887:	e8 44 da fb ff                                  	call   0x3822d0
  3c488c:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c4890:	e8 9b 1e f7 ff                                  	call   0x336730
  3c4895:	c6 47 1c 01                                     	mov    BYTE PTR [rdi+0x1c],0x1
  3c4899:	48 8b 05 88 12 04 00                            	mov    rax,QWORD PTR [rip+0x41288]        # 0x405b28
  3c48a0:	f3 0f 10 35 74 92 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffec9274]        # 0x28db1c
  3c48a8:	f7 80 88 47 00 00 00 08 00 00                   	test   DWORD PTR [rax+0x4788],0x800
  3c48b2:	0f 84 5c 01 00 00                               	je     0x3c4a14
  3c48b8:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c48bc:	e8 c3 e0 fb ff                                  	call   0x382984
  3c48c1:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3c48c6:	41 83 ff 04                                     	cmp    r15d,0x4
  3c48ca:	0f 85 87 00 00 00                               	jne    0x3c4957
  3c48d0:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3c48d5:	e8 2e 7b ff ff                                  	call   0x3bc408
  3c48da:	48 8b c8                                        	mov    rcx,rax
  3c48dd:	e8 fa a1 fd ff                                  	call   0x39eadc
  3c48e2:	48 8b d0                                        	mov    rdx,rax
  3c48e5:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c48e9:	e8 7a 03 f1 ff                                  	call   0x2d4c68
  3c48ee:	49 8b d6                                        	mov    rdx,r14
  3c48f1:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  3c48f5:	e8 6e 03 f1 ff                                  	call   0x2d4c68
  3c48fa:	41 8b 45 00                                     	mov    eax,DWORD PTR [r13+0x0]
  3c48fe:	48 8d 8d 98 00 00 00                            	lea    rcx,[rbp+0x98]
  3c4905:	89 85 80 00 00 00                               	mov    DWORD PTR [rbp+0x80],eax
  3c490b:	48 8b d3                                        	mov    rdx,rbx
  3c490e:	41 8b 04 24                                     	mov    eax,DWORD PTR [r12]
  3c4912:	89 85 84 00 00 00                               	mov    DWORD PTR [rbp+0x84],eax
  3c4918:	48 89 75 78                                     	mov    QWORD PTR [rbp+0x78],rsi
  3c491c:	e8 47 03 f1 ff                                  	call   0x2d4c68
  3c4921:	f3 0f 10 0d bf 45 e8 ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffe845bf]        # 0x248ee8
  3c4929:	0f 57 c0                                        	xorps  xmm0,xmm0
  3c492c:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3c4930:	e8 cf 62 fd ff                                  	call   0x39ac04
  3c4935:	49 8b d6                                        	mov    rdx,r14
  3c4938:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3c493c:	e8 8b 79 f0 ff                                  	call   0x2cc2cc
  3c4941:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3c4945:	48 8b d8                                        	mov    rbx,rax
  3c4948:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3c494d:	e8 92 7b ff ff                                  	call   0x3bc4e4
  3c4952:	e9 84 00 00 00                                  	jmp    0x3c49db
  3c4957:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3c495c:	e8 7f 7c ff ff                                  	call   0x3bc5e0
  3c4961:	48 8b c8                                        	mov    rcx,rax
  3c4964:	e8 c3 a1 fd ff                                  	call   0x39eb2c
  3c4969:	48 8b d0                                        	mov    rdx,rax
  3c496c:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c4970:	e8 f3 02 f1 ff                                  	call   0x2d4c68
  3c4975:	49 8b d6                                        	mov    rdx,r14
  3c4978:	48 8d 4d 50                                     	lea    rcx,[rbp+0x50]
  3c497c:	e8 e7 02 f1 ff                                  	call   0x2d4c68
  3c4981:	f3 41 0f 10 45 00                               	movss  xmm0,DWORD PTR [r13+0x0]
  3c4987:	48 8d 8d 98 00 00 00                            	lea    rcx,[rbp+0x98]
  3c498e:	f3 41 0f 10 0c 24                               	movss  xmm1,DWORD PTR [r12]
  3c4994:	48 8b d3                                        	mov    rdx,rbx
  3c4997:	f3 0f 11 85 90 00 00 00                         	movss  DWORD PTR [rbp+0x90],xmm0
  3c499f:	f3 0f 11 8d 94 00 00 00                         	movss  DWORD PTR [rbp+0x94],xmm1
  3c49a7:	48 89 b5 88 00 00 00                            	mov    QWORD PTR [rbp+0x88],rsi
  3c49ae:	e8 b5 02 f1 ff                                  	call   0x2d4c68
  3c49b3:	0f 28 ce                                        	movaps xmm1,xmm6
  3c49b6:	0f 57 c0                                        	xorps  xmm0,xmm0
  3c49b9:	e8 46 62 fd ff                                  	call   0x39ac04
  3c49be:	49 8b d6                                        	mov    rdx,r14
  3c49c1:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3c49c5:	e8 02 79 f0 ff                                  	call   0x2cc2cc
  3c49ca:	48 8d 55 90                                     	lea    rdx,[rbp-0x70]
  3c49ce:	48 8b d8                                        	mov    rbx,rax
  3c49d1:	48 8d 4c 24 50                                  	lea    rcx,[rsp+0x50]
  3c49d6:	e8 25 7d ff ff                                  	call   0x3bc700
  3c49db:	48 8b c8                                        	mov    rcx,rax
  3c49de:	e8 a1 9e fd ff                                  	call   0x39e884
  3c49e3:	48 8b d0                                        	mov    rdx,rax
  3c49e6:	48 8b cb                                        	mov    rcx,rbx
  3c49e9:	e8 be 8d f0 ff                                  	call   0x2cd7ac
  3c49ee:	48 8b c8                                        	mov    rcx,rax
  3c49f1:	e8 f6 8d f0 ff                                  	call   0x2cd7ec
  3c49f6:	48 8d 55 30                                     	lea    rdx,[rbp+0x30]
  3c49fa:	48 8b c8                                        	mov    rcx,rax
  3c49fd:	e8 62 2c fc ff                                  	call   0x387664
  3c4a02:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3c4a06:	e8 e9 7a f0 ff                                  	call   0x2cc4f4
  3c4a0b:	48 8d 4d 30                                     	lea    rcx,[rbp+0x30]
  3c4a0f:	e8 1c 1d f7 ff                                  	call   0x336730
  3c4a14:	f3 0f 10 44 24 58                               	movss  xmm0,DWORD PTR [rsp+0x58]
  3c4a1a:	f3 0f 58 c6                                     	addss  xmm0,xmm6
  3c4a1e:	f3 0f 11 44 24 58                               	movss  DWORD PTR [rsp+0x58],xmm0
  3c4a24:	e8 cb f5 fc ff                                  	call   0x393ff4
  3c4a29:	f3 44 0f 10 0d 22 88 ec ff                      	movss  xmm9,DWORD PTR [rip+0xffffffffffec8822]        # 0x28d254
  3c4a32:	44 8a c8                                        	mov    r9b,al
  3c4a35:	f3 0f 10 35 77 e7 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffece777]        # 0x2931b4
  3c4a3d:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3c4a41:	f3 0f 10 07                                     	movss  xmm0,DWORD PTR [rdi]
  3c4a45:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c4a48:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3c4a4e:	4c 8b ef                                        	mov    r13,rdi
  3c4a51:	e8 f2 13 f7 ff                                  	call   0x335e48
  3c4a56:	44 8a 8d 38 02 00 00                            	mov    r9b,BYTE PTR [rbp+0x238]
  3c4a5d:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3c4a61:	f3 0f 11 07                                     	movss  DWORD PTR [rdi],xmm0
  3c4a65:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c4a68:	f3 0f 10 47 04                                  	movss  xmm0,DWORD PTR [rdi+0x4]
  3c4a6d:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3c4a73:	e8 d0 13 f7 ff                                  	call   0x335e48
  3c4a78:	f3 44 0f 10 07                                  	movss  xmm8,DWORD PTR [rdi]
  3c4a7d:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c4a81:	b9 01 00 00 00                                  	mov    ecx,0x1
  3c4a86:	f3 0f 11 47 04                                  	movss  DWORD PTR [rdi+0x4],xmm0
  3c4a8b:	e8 08 d8 fc ff                                  	call   0x392298
  3c4a90:	8b d0                                           	mov    edx,eax
  3c4a92:	48 8d 4d 90                                     	lea    rcx,[rbp-0x70]
  3c4a96:	e8 39 1a f7 ff                                  	call   0x3364d4
  3c4a9b:	f3 0f 10 0d 29 e6 ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffece629]        # 0x2930cc
  3c4aa3:	b9 01 00 00 00                                  	mov    ecx,0x1
  3c4aa8:	f3 0f 10 7f 04                                  	movss  xmm7,DWORD PTR [rdi+0x4]
  3c4aad:	f3 0f 6f 30                                     	movdqu xmm6,XMMWORD PTR [rax]
  3c4ab1:	e8 e2 d7 fc ff                                  	call   0x392298
  3c4ab6:	8b d0                                           	mov    edx,eax
  3c4ab8:	48 8d 8d 10 01 00 00                            	lea    rcx,[rbp+0x110]
  3c4abf:	e8 10 1a f7 ff                                  	call   0x3364d4
  3c4ac4:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c4ac8:	b9 02 00 00 00                                  	mov    ecx,0x2
  3c4acd:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c4ad0:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3c4ad6:	e8 bd d7 fc ff                                  	call   0x392298
  3c4adb:	8b d0                                           	mov    edx,eax
  3c4add:	48 8d 8d 20 01 00 00                            	lea    rcx,[rbp+0x120]
  3c4ae4:	e8 eb 19 f7 ff                                  	call   0x3364d4
  3c4ae9:	0f 28 df                                        	movaps xmm3,xmm7
  3c4aec:	66 0f 7f 75 d0                                  	movdqa XMMWORD PTR [rbp-0x30],xmm6
  3c4af1:	4c 8d 44 24 70                                  	lea    r8,[rsp+0x70]
  3c4af6:	48 8d 55 20                                     	lea    rdx,[rbp+0x20]
  3c4afa:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c4afd:	48 8d 4d f0                                     	lea    rcx,[rbp-0x10]
  3c4b01:	f3 0f 7f 45 20                                  	movdqu XMMWORD PTR [rbp+0x20],xmm0
  3c4b06:	e8 99 4a fb ff                                  	call   0x3795a4
  3c4b0b:	41 0f 28 d8                                     	movaps xmm3,xmm8
  3c4b0f:	4c 8d 45 d0                                     	lea    r8,[rbp-0x30]
  3c4b13:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3c4b18:	48 8d 4d a8                                     	lea    rcx,[rbp-0x58]
  3c4b1c:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c4b1f:	f3 0f 7f 44 24 70                               	movdqu XMMWORD PTR [rsp+0x70],xmm0
  3c4b25:	e8 7a 4a fb ff                                  	call   0x3795a4
  3c4b2a:	0f 10 00                                        	movups xmm0,XMMWORD PTR [rax]
  3c4b2d:	f3 0f 7f 47 0c                                  	movdqu XMMWORD PTR [rdi+0xc],xmm0
  3c4b32:	e8 75 db fc ff                                  	call   0x3926ac
  3c4b37:	f3 0f 10 4d e8                                  	movss  xmm1,DWORD PTR [rbp-0x18]
  3c4b3c:	f3 0f 5c 4c 24 58                               	subss  xmm1,DWORD PTR [rsp+0x58]
  3c4b42:	f3 0f 10 47 08                                  	movss  xmm0,DWORD PTR [rdi+0x8]
  3c4b47:	f3 0f 10 50 10                                  	movss  xmm2,DWORD PTR [rax+0x10]
  3c4b4c:	f3 0f 59 15 e8 36 ee ff                         	mulss  xmm2,DWORD PTR [rip+0xffffffffffee36e8]        # 0x2a823c
  3c4b54:	e8 03 0b f7 ff                                  	call   0x33565c
  3c4b59:	4c 8b 7d a0                                     	mov    r15,QWORD PTR [rbp-0x60]
  3c4b5d:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c4b61:	f3 44 0f 10 05 ca e5 ec ff                      	movss  xmm8,DWORD PTR [rip+0xffffffffffece5ca]        # 0x293134
  3c4b6a:	b9 06 00 00 00                                  	mov    ecx,0x6
  3c4b6f:	f3 0f 11 47 08                                  	movss  DWORD PTR [rdi+0x8],xmm0
  3c4b74:	f3 0f 10 35 6c 43 e8 ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffe8436c]        # 0x248ee8
  3c4b7c:	49 8b 9f 98 02 00 00                            	mov    rbx,QWORD PTR [r15+0x298]
  3c4b83:	f3 41 0f 59 f0                                  	mulss  xmm6,xmm8
  3c4b88:	e8 0b d7 fc ff                                  	call   0x392298
  3c4b8d:	45 33 e4                                        	xor    r12d,r12d
  3c4b90:	f3 44 0f 11 4c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm9
  3c4b97:	44 89 64 24 28                                  	mov    DWORD PTR [rsp+0x28],r12d
  3c4b9c:	44 8b c8                                        	mov    r9d,eax
  3c4b9f:	4c 8d 44 24 60                                  	lea    r8,[rsp+0x60]
  3c4ba4:	f3 0f 11 74 24 20                               	movss  DWORD PTR [rsp+0x20],xmm6
  3c4baa:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  3c4baf:	48 8b cb                                        	mov    rcx,rbx
  3c4bb2:	e8 91 c5 fd ff                                  	call   0x3a1148
  3c4bb7:	f3 0f 10 3d 29 43 e8 ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffe84329]        # 0x248ee8
  3c4bbf:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3c4bc6:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c4bcd:	0f 28 f7                                        	movaps xmm6,xmm7
  3c4bd0:	f3 0f 59 35 64 48 ee ff                         	mulss  xmm6,DWORD PTR [rip+0xffffffffffee4864]        # 0x2a943c
  3c4bd8:	0f 57 d2                                        	xorps  xmm2,xmm2
  3c4bdb:	0f 57 c9                                        	xorps  xmm1,xmm1
  3c4bde:	e8 5d 77 f0 ff                                  	call   0x2cc340
  3c4be3:	f3 0f 10 0d fd 8e ec ff                         	movss  xmm1,DWORD PTR [rip+0xffffffffffec8efd]        # 0x28dae8
  3c4beb:	33 c9                                           	xor    ecx,ecx
  3c4bed:	f3 0f 59 3d 2b 8f ec ff                         	mulss  xmm7,DWORD PTR [rip+0xffffffffffec8f2b]        # 0x28db20
  3c4bf5:	e8 9e d6 fc ff                                  	call   0x392298
  3c4bfa:	f3 0f 10 0d f6 74 03 00                         	movss  xmm1,DWORD PTR [rip+0x374f6]        # 0x3fc0f8
  3c4c02:	48 8d 4d a0                                     	lea    rcx,[rbp-0x60]
  3c4c06:	f3 41 0f 59 4d 08                               	mulss  xmm1,DWORD PTR [r13+0x8]
  3c4c0c:	8b d8                                           	mov    ebx,eax
  3c4c0e:	f3 0f 10 54 24 64                               	movss  xmm2,DWORD PTR [rsp+0x64]
  3c4c14:	f3 0f 59 0d e0 74 03 00                         	mulss  xmm1,DWORD PTR [rip+0x374e0]        # 0x3fc0fc
  3c4c1c:	f3 0f 58 4c 24 58                               	addss  xmm1,DWORD PTR [rsp+0x58]
  3c4c22:	e8 19 77 f0 ff                                  	call   0x2cc340
  3c4c27:	f3 0f 11 74 24 38                               	movss  DWORD PTR [rsp+0x38],xmm6
  3c4c2d:	48 8d 85 38 02 00 00                            	lea    rax,[rbp+0x238]
  3c4c34:	44 89 64 24 30                                  	mov    DWORD PTR [rsp+0x30],r12d
  3c4c39:	4c 8d 45 a0                                     	lea    r8,[rbp-0x60]
  3c4c3d:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3c4c42:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  3c4c47:	44 8b cb                                        	mov    r9d,ebx
  3c4c4a:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  3c4c50:	48 8b cf                                        	mov    rcx,rdi
  3c4c53:	e8 b8 d3 fd ff                                  	call   0x3a2010
  3c4c58:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c4c5f:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c4c63:	33 c9                                           	xor    ecx,ecx
  3c4c65:	e8 2e d6 fc ff                                  	call   0x392298
  3c4c6a:	f3 0f 10 0d 86 74 03 00                         	movss  xmm1,DWORD PTR [rip+0x37486]        # 0x3fc0f8
  3c4c72:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3c4c79:	f3 41 0f 59 4d 08                               	mulss  xmm1,DWORD PTR [r13+0x8]
  3c4c7f:	8b d8                                           	mov    ebx,eax
  3c4c81:	f3 0f 10 54 24 64                               	movss  xmm2,DWORD PTR [rsp+0x64]
  3c4c87:	f3 0f 59 0d 6d 74 03 00                         	mulss  xmm1,DWORD PTR [rip+0x3746d]        # 0x3fc0fc
  3c4c8f:	f3 0f 58 4c 24 58                               	addss  xmm1,DWORD PTR [rsp+0x58]
  3c4c95:	e8 a6 76 f0 ff                                  	call   0x2cc340
  3c4c9a:	44 8b cb                                        	mov    r9d,ebx
  3c4c9d:	44 89 64 24 28                                  	mov    DWORD PTR [rsp+0x28],r12d
  3c4ca2:	4c 8d 85 38 02 00 00                            	lea    r8,[rbp+0x238]
  3c4ca9:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3c4cb0:	48 8d 54 24 58                                  	lea    rdx,[rsp+0x58]
  3c4cb5:	48 8b cf                                        	mov    rcx,rdi
  3c4cb8:	e8 87 c5 fd ff                                  	call   0x3a1244
  3c4cbd:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c4cc4:	41 8d 4c 24 14                                  	lea    ecx,[r12+0x14]
  3c4cc9:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c4ccd:	e8 c6 d5 fc ff                                  	call   0x392298
  3c4cd2:	f3 0f 10 35 1e 74 03 00                         	movss  xmm6,DWORD PTR [rip+0x3741e]        # 0x3fc0f8
  3c4cda:	48 8d 54 24 70                                  	lea    rdx,[rsp+0x70]
  3c4cdf:	f3 41 0f 59 75 08                               	mulss  xmm6,DWORD PTR [r13+0x8]
  3c4ce5:	48 8d 4c 24 58                                  	lea    rcx,[rsp+0x58]
  3c4cea:	8b d8                                           	mov    ebx,eax
  3c4cec:	f3 41 0f 10 7d 00                               	movss  xmm7,DWORD PTR [r13+0x0]
  3c4cf2:	f3 0f 58 3d 7e e4 ec ff                         	addss  xmm7,DWORD PTR [rip+0xffffffffffece47e]        # 0x293178
  3c4cfa:	f3 0f 59 35 fa 73 03 00                         	mulss  xmm6,DWORD PTR [rip+0x373fa]        # 0x3fc0fc
  3c4d02:	f3 0f 58 74 24 58                               	addss  xmm6,DWORD PTR [rsp+0x58]
  3c4d08:	f3 41 0f 58 7d 04                               	addss  xmm7,DWORD PTR [r13+0x4]
  3c4d0e:	e8 e1 3b fb ff                                  	call   0x3788f4
  3c4d13:	0f 28 ce                                        	movaps xmm1,xmm6
  3c4d16:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3c4d1d:	f3 0f 10 50 04                                  	movss  xmm2,DWORD PTR [rax+0x4]
  3c4d22:	e8 19 76 f0 ff                                  	call   0x2cc340
  3c4d27:	44 8b cb                                        	mov    r9d,ebx
  3c4d2a:	44 89 64 24 20                                  	mov    DWORD PTR [rsp+0x20],r12d
  3c4d2f:	0f 28 d7                                        	movaps xmm2,xmm7
  3c4d32:	48 8d 95 38 02 00 00                            	lea    rdx,[rbp+0x238]
  3c4d39:	48 8b cf                                        	mov    rcx,rdi
  3c4d3c:	e8 33 ab fd ff                                  	call   0x39f874
  3c4d41:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c4d48:	33 d2                                           	xor    edx,edx
  3c4d4a:	49 8b ce                                        	mov    rcx,r14
  3c4d4d:	e8 fe ce fc ff                                  	call   0x391c50
  3c4d52:	49 8d 4d 0c                                     	lea    rcx,[r13+0xc]
  3c4d56:	48 8b d8                                        	mov    rbx,rax
  3c4d59:	e8 ae aa f2 ff                                  	call   0x2ef80c
  3c4d5e:	44 8b c0                                        	mov    r8d,eax
  3c4d61:	48 89 5c 24 20                                  	mov    QWORD PTR [rsp+0x20],rbx
  3c4d66:	4d 8b ce                                        	mov    r9,r14
  3c4d69:	48 8d 55 80                                     	lea    rdx,[rbp-0x80]
  3c4d6d:	48 8b cf                                        	mov    rcx,rdi
  3c4d70:	e8 47 e4 fd ff                                  	call   0x3a31bc
  3c4d75:	49 8b bf 98 02 00 00                            	mov    rdi,QWORD PTR [r15+0x298]
  3c4d7c:	41 8d 4c 24 01                                  	lea    ecx,[r12+0x1]
  3c4d81:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3c4d85:	e8 0e d5 fc ff                                  	call   0x392298
  3c4d8a:	f3 0f 10 35 16 e4 ec ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffece416]        # 0x2931a8
  3c4d92:	4c 8d 8d 30 01 00 00                            	lea    r9,[rbp+0x130]
  3c4d99:	0f 28 d6                                        	movaps xmm2,xmm6
  3c4d9c:	48 8d 4c 24 70                                  	lea    rcx,[rsp+0x70]
  3c4da1:	33 d2                                           	xor    edx,edx
  3c4da3:	8b d8                                           	mov    ebx,eax
  3c4da5:	e8 0a 50 fc ff                                  	call   0x389db4
  3c4daa:	f3 0f 10 55 84                                  	movss  xmm2,DWORD PTR [rbp-0x7c]
  3c4daf:	48 8d 8d 38 02 00 00                            	lea    rcx,[rbp+0x238]
  3c4db6:	f3 0f 10 4d 88                                  	movss  xmm1,DWORD PTR [rbp-0x78]
  3c4dbb:	f3 0f 10 3d 25 41 e8 ff                         	movss  xmm7,DWORD PTR [rip+0xffffffffffe84125]        # 0x248ee8
  3c4dc3:	f3 0f 5c 08                                     	subss  xmm1,DWORD PTR [rax]
  3c4dc7:	f3 0f 59 fe                                     	mulss  xmm7,xmm6
  3c4dcb:	f3 0f 5c d7                                     	subss  xmm2,xmm7
  3c4dcf:	e8 6c 75 f0 ff                                  	call   0x2cc340
  3c4dd4:	33 d2                                           	xor    edx,edx
  3c4dd6:	48 8d 0d 03 73 03 00                            	lea    rcx,[rip+0x37303]        # 0x3fc0e0
  3c4ddd:	e8 d6 19 f7 ff                                  	call   0x3367b8
  3c4de2:	48 8b c8                                        	mov    rcx,rax
  3c4de5:	0f 28 ce                                        	movaps xmm1,xmm6
  3c4de8:	e8 ff fc f9 ff                                  	call   0x364aec
  3c4ded:	4c 89 64 24 40                                  	mov    QWORD PTR [rsp+0x40],r12
  3c4df2:	4c 8d 8d 38 02 00 00                            	lea    r9,[rbp+0x238]
  3c4df9:	f3 44 0f 11 54 24 38                            	movss  DWORD PTR [rsp+0x38],xmm10
  3c4e00:	48 8b d0                                        	mov    rdx,rax
  3c4e03:	48 8d 85 30 01 00 00                            	lea    rax,[rbp+0x130]
  3c4e0a:	4c 89 64 24 30                                  	mov    QWORD PTR [rsp+0x30],r12
  3c4e0f:	48 89 44 24 28                                  	mov    QWORD PTR [rsp+0x28],rax
  3c4e14:	0f 28 d7                                        	movaps xmm2,xmm7
  3c4e17:	48 8b cf                                        	mov    rcx,rdi
  3c4e1a:	89 5c 24 20                                     	mov    DWORD PTR [rsp+0x20],ebx
  3c4e1e:	e8 d5 e3 fd ff                                  	call   0x3a31f8
  3c4e23:	8a 44 24 51                                     	mov    al,BYTE PTR [rsp+0x51]
  3c4e27:	4c 8d 9c 24 c8 02 00 00                         	lea    r11,[rsp+0x2c8]
  3c4e2f:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3c4e34:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3c4e39:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3c4e3e:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3c4e43:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3c4e48:	49 8b e3                                        	mov    rsp,r11
  3c4e4b:	41 5f                                           	pop    r15
  3c4e4d:	41 5e                                           	pop    r14
  3c4e4f:	41 5d                                           	pop    r13
  3c4e51:	41 5c                                           	pop    r12
  3c4e53:	5f                                              	pop    rdi
  3c4e54:	5e                                              	pop    rsi
  3c4e55:	5b                                              	pop    rbx
  3c4e56:	5d                                              	pop    rbp
  3c4e57:	c3                                              	ret
