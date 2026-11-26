
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

000000000036b758 <.data+0x36b758>:
  36b758:	48 8b c4                                        	mov    rax,rsp
  36b75b:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  36b75f:	48 89 68 18                                     	mov    QWORD PTR [rax+0x18],rbp
  36b763:	56                                              	push   rsi
  36b764:	57                                              	push   rdi
  36b765:	41 54                                           	push   r12
  36b767:	41 56                                           	push   r14
  36b769:	41 57                                           	push   r15
  36b76b:	48 81 ec b0 00 00 00                            	sub    rsp,0xb0
  36b772:	0f 29 70 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm6
  36b776:	4c 8b c1                                        	mov    r8,rcx
  36b779:	e8 8a f7 f5 ff                                  	call   0x2caf08
  36b77e:	84 c0                                           	test   al,al
  36b780:	0f 84 8e 01 00 00                               	je     0x36b914
  36b786:	ba 90 00 00 00                                  	mov    edx,0x90
  36b78b:	49 8b c8                                        	mov    rcx,r8
  36b78e:	e8 a9 36 f7 ff                                  	call   0x2dee3c
  36b793:	4c 8b 30                                        	mov    r14,QWORD PTR [rax]
  36b796:	49 8b ce                                        	mov    rcx,r14
  36b799:	e8 6a f7 f5 ff                                  	call   0x2caf08
  36b79e:	84 c0                                           	test   al,al
  36b7a0:	0f 84 6e 01 00 00                               	je     0x36b914
  36b7a6:	45 8b 7e 18                                     	mov    r15d,DWORD PTR [r14+0x18]
  36b7aa:	45 85 ff                                        	test   r15d,r15d
  36b7ad:	0f 8e 61 01 00 00                               	jle    0x36b914
  36b7b3:	33 ff                                           	xor    edi,edi
  36b7b5:	0f 57 f6                                        	xorps  xmm6,xmm6
  36b7b8:	33 f6                                           	xor    esi,esi
  36b7ba:	49 bc 25 23 22 84 e4 9c f2 cb                   	movabs r12,0xcbf29ce484222325
  36b7c4:	49 8b 6e 10                                     	mov    rbp,QWORD PTR [r14+0x10]
  36b7c8:	48 8b cd                                        	mov    rcx,rbp
  36b7cb:	e8 38 f7 f5 ff                                  	call   0x2caf08
  36b7d0:	84 c0                                           	test   al,al
  36b7d2:	0f 84 ed 00 00 00                               	je     0x36b8c5
  36b7d8:	8d 04 f5 00 00 00 00                            	lea    eax,[rsi*8+0x0]
  36b7df:	48 63 c8                                        	movsxd rcx,eax
  36b7e2:	48 8b 6c 29 20                                  	mov    rbp,QWORD PTR [rcx+rbp*1+0x20]
  36b7e7:	48 8b cd                                        	mov    rcx,rbp
  36b7ea:	e8 19 f7 f5 ff                                  	call   0x2caf08
  36b7ef:	84 c0                                           	test   al,al
  36b7f1:	0f 84 ce 00 00 00                               	je     0x36b8c5
  36b7f7:	48 8b cd                                        	mov    rcx,rbp
  36b7fa:	e8 55 a2 f7 ff                                  	call   0x2e5a54
  36b7ff:	48 8b c8                                        	mov    rcx,rax
  36b802:	48 8b d0                                        	mov    rdx,rax
  36b805:	e8 fe f6 f5 ff                                  	call   0x2caf08
  36b80a:	84 c0                                           	test   al,al
  36b80c:	0f 84 b3 00 00 00                               	je     0x36b8c5
  36b812:	48 8b ca                                        	mov    rcx,rdx
  36b815:	e8 3a ab f6 ff                                  	call   0x2d6354
  36b81a:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  36b81f:	48 8b d8                                        	mov    rbx,rax
  36b822:	48 8d 8c 24 e8 00 00 00                         	lea    rcx,[rsp+0xe8]
  36b82a:	e8 1d fb ff ff                                  	call   0x36b34c
  36b82f:	48 8b c8                                        	mov    rcx,rax
  36b832:	e8 5d 4c fb ff                                  	call   0x320494
  36b837:	48 8b c8                                        	mov    rcx,rax
  36b83a:	49 8b d4                                        	mov    rdx,r12
  36b83d:	e8 0a a3 f7 ff                                  	call   0x2e5b4c
  36b842:	48 3b d8                                        	cmp    rbx,rax
  36b845:	75 7e                                           	jne    0x36b8c5
  36b847:	48 8b cd                                        	mov    rcx,rbp
  36b84a:	e8 cd 7d 00 00                                  	call   0x37361c
  36b84f:	48 8b c8                                        	mov    rcx,rax
  36b852:	4c 8b c0                                        	mov    r8,rax
  36b855:	e8 ae f6 f5 ff                                  	call   0x2caf08
  36b85a:	84 c0                                           	test   al,al
  36b85c:	74 67                                           	je     0x36b8c5
  36b85e:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  36b863:	49 8b c8                                        	mov    rcx,r8
  36b866:	e8 ad c5 f6 ff                                  	call   0x2d7e18
  36b86b:	48 8b c8                                        	mov    rcx,rax
  36b86e:	e8 79 1f f6 ff                                  	call   0x2cd7ec
  36b873:	48 8b c8                                        	mov    rcx,rax
  36b876:	e8 d9 aa f6 ff                                  	call   0x2d6354
  36b87b:	48 8d 4c 24 20                                  	lea    rcx,[rsp+0x20]
  36b880:	48 8b d8                                        	mov    rbx,rax
  36b883:	e8 6c 0c f6 ff                                  	call   0x2cc4f4
  36b888:	48 8d 54 24 40                                  	lea    rdx,[rsp+0x40]
  36b88d:	48 8d 8c 24 e8 00 00 00                         	lea    rcx,[rsp+0xe8]
  36b895:	e8 3e fb ff ff                                  	call   0x36b3d8
  36b89a:	48 8b c8                                        	mov    rcx,rax
  36b89d:	e8 e2 0a 00 00                                  	call   0x36c384
  36b8a2:	48 8b c8                                        	mov    rcx,rax
  36b8a5:	49 8b d4                                        	mov    rdx,r12
  36b8a8:	e8 9f a2 f7 ff                                  	call   0x2e5b4c
  36b8ad:	80 bd 30 02 00 00 00                            	cmp    BYTE PTR [rbp+0x230],0x0
  36b8b4:	75 05                                           	jne    0x36b8bb
  36b8b6:	48 3b d8                                        	cmp    rbx,rax
  36b8b9:	75 0a                                           	jne    0x36b8c5
  36b8bb:	f3 0f 58 b5 48 02 00 00                         	addss  xmm6,DWORD PTR [rbp+0x248]
  36b8c3:	ff c7                                           	inc    edi
  36b8c5:	ff c6                                           	inc    esi
  36b8c7:	41 3b f7                                        	cmp    esi,r15d
  36b8ca:	0f 8c f4 fe ff ff                               	jl     0x36b7c4
  36b8d0:	f3 0f 10 0d 7c 19 f2 ff                         	movss  xmm1,DWORD PTR [rip+0xfffffffffff2197c]        # 0x28d254
  36b8d8:	85 ff                                           	test   edi,edi
  36b8da:	74 0d                                           	je     0x36b8e9
  36b8dc:	66 0f 6e c7                                     	movd   xmm0,edi
  36b8e0:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  36b8e3:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  36b8e7:	eb 03                                           	jmp    0x36b8ec
  36b8e9:	0f 28 f1                                        	movaps xmm6,xmm1
  36b8ec:	80 3d f5 c3 06 00 00                            	cmp    BYTE PTR [rip+0x6c3f5],0x0        # 0x3d7ce8
  36b8f3:	74 18                                           	je     0x36b90d
  36b8f5:	0f 2e 35 60 ce f3 ff                            	ucomiss xmm6,DWORD PTR [rip+0xfffffffffff3ce60]        # 0x2a875c
  36b8fc:	7a 0f                                           	jp     0x36b90d
  36b8fe:	75 0d                                           	jne    0x36b90d
  36b900:	f3 0f 5c 35 90 77 f2 ff                         	subss  xmm6,DWORD PTR [rip+0xfffffffffff27790]        # 0x293098
  36b908:	0f 28 c6                                        	movaps xmm0,xmm6
  36b90b:	eb 0a                                           	jmp    0x36b917
  36b90d:	0f 2e f1                                        	ucomiss xmm6,xmm1
  36b910:	7a f6                                           	jp     0x36b908
  36b912:	75 f4                                           	jne    0x36b908
  36b914:	0f 57 c0                                        	xorps  xmm0,xmm0
  36b917:	4c 8d 9c 24 b0 00 00 00                         	lea    r11,[rsp+0xb0]
  36b91f:	49 8b 5b 30                                     	mov    rbx,QWORD PTR [r11+0x30]
  36b923:	49 8b 6b 40                                     	mov    rbp,QWORD PTR [r11+0x40]
  36b927:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  36b92c:	49 8b e3                                        	mov    rsp,r11
  36b92f:	41 5f                                           	pop    r15
  36b931:	41 5e                                           	pop    r14
  36b933:	41 5c                                           	pop    r12
  36b935:	5f                                              	pop    rdi
  36b936:	5e                                              	pop    rsi
  36b937:	c3                                              	ret
