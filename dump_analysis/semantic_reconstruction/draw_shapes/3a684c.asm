
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003a684c <.data+0x3a684c>:
  3a684c:	48 8b c4                                        	mov    rax,rsp
  3a684f:	53                                              	push   rbx
  3a6850:	55                                              	push   rbp
  3a6851:	56                                              	push   rsi
  3a6852:	57                                              	push   rdi
  3a6853:	41 54                                           	push   r12
  3a6855:	41 56                                           	push   r14
  3a6857:	41 57                                           	push   r15
  3a6859:	48 81 ec 90 00 00 00                            	sub    rsp,0x90
  3a6860:	f3 0f 10 05 e8 69 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee69e8]        # 0x28d250
  3a6868:	48 8b fa                                        	mov    rdi,rdx
  3a686b:	0f 29 70 b8                                     	movaps XMMWORD PTR [rax-0x48],xmm6
  3a686f:	48 8b f1                                        	mov    rsi,rcx
  3a6872:	0f 29 78 a8                                     	movaps XMMWORD PTR [rax-0x58],xmm7
  3a6876:	44 0f 29 40 98                                  	movaps XMMWORD PTR [rax-0x68],xmm8
  3a687b:	44 0f 29 48 88                                  	movaps XMMWORD PTR [rax-0x78],xmm9
  3a6880:	44 0f 28 ca                                     	movaps xmm9,xmm2
  3a6884:	41 0f 2f c1                                     	comiss xmm0,xmm9
  3a6888:	44 0f 29 54 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm10
  3a688e:	44 0f 28 d3                                     	movaps xmm10,xmm3
  3a6892:	76 09                                           	jbe    0x3a689d
  3a6894:	48 83 c1 78                                     	add    rcx,0x78
  3a6898:	e9 f7 01 00 00                                  	jmp    0x3a6a94
  3a689d:	8b 84 24 f8 00 00 00                            	mov    eax,DWORD PTR [rsp+0xf8]
  3a68a4:	85 c0                                           	test   eax,eax
  3a68a6:	7e 18                                           	jle    0x3a68c0
  3a68a8:	f3 0f 10 84 24 f0 00 00 00                      	movss  xmm0,DWORD PTR [rsp+0xf0]
  3a68b1:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a68b5:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3a68bb:	e9 43 02 00 00                                  	jmp    0x3a6b03
  3a68c0:	48 8b 41 38                                     	mov    rax,QWORD PTR [rcx+0x38]
  3a68c4:	f3 44 0f 10 84 24 f0 00 00 00                   	movss  xmm8,DWORD PTR [rsp+0xf0]
  3a68ce:	f3 0f 10 80 c0 01 00 00                         	movss  xmm0,DWORD PTR [rax+0x1c0]
  3a68d6:	41 0f 2f c1                                     	comiss xmm0,xmm9
  3a68da:	0f 82 bb 01 00 00                               	jb     0x3a6a9b
  3a68e0:	f3 0f 10 05 00 66 f0 ff                         	movss  xmm0,DWORD PTR [rip+0xfffffffffff06600]        # 0x2acee8
  3a68e8:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3a68ec:	f3 0f 59 0d f8 65 f0 ff                         	mulss  xmm1,DWORD PTR [rip+0xfffffffffff065f8]        # 0x2aceec
  3a68f4:	41 0f 28 f0                                     	movaps xmm6,xmm8
  3a68f8:	f3 0f 59 35 ec 65 f0 ff                         	mulss  xmm6,DWORD PTR [rip+0xfffffffffff065ec]        # 0x2aceec
  3a6900:	45 0f 2f d0                                     	comiss xmm10,xmm8
  3a6904:	f3 0f 5e c8                                     	divss  xmm1,xmm0
  3a6908:	40 0f 97 c5                                     	seta   bpl
  3a690c:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3a6910:	0f 28 c1                                        	movaps xmm0,xmm1
  3a6913:	40 84 ed                                        	test   bpl,bpl
  3a6916:	74 13                                           	je     0x3a692b
  3a6918:	e8 cb c7 fe ff                                  	call   0x3930e8
  3a691d:	f3 0f 2c d8                                     	cvttss2si ebx,xmm0
  3a6921:	0f 28 c6                                        	movaps xmm0,xmm6
  3a6924:	e8 ef 1f 02 00                                  	call   0x3c8918
  3a6929:	eb 11                                           	jmp    0x3a693c
  3a692b:	e8 e8 1f 02 00                                  	call   0x3c8918
  3a6930:	f3 0f 2c d8                                     	cvttss2si ebx,xmm0
  3a6934:	0f 28 c6                                        	movaps xmm0,xmm6
  3a6937:	e8 ac c7 fe ff                                  	call   0x3930e8
  3a693c:	f3 44 0f 2c f0                                  	cvttss2si r14d,xmm0
  3a6941:	8b cb                                           	mov    ecx,ebx
  3a6943:	41 8b c6                                        	mov    eax,r14d
  3a6946:	41 2b ce                                        	sub    ecx,r14d
  3a6949:	2b c3                                           	sub    eax,ebx
  3a694b:	40 84 ed                                        	test   bpl,bpl
  3a694e:	0f 44 c8                                        	cmove  ecx,eax
  3a6951:	33 d2                                           	xor    edx,edx
  3a6953:	e8 34 89 ff ff                                  	call   0x39f28c
  3a6958:	f3 0f 10 35 fc c7 ee ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffeec7fc]        # 0x29315c
  3a6960:	44 8b f8                                        	mov    r15d,eax
  3a6963:	66 0f 6e c3                                     	movd   xmm0,ebx
  3a6967:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a696a:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3a696e:	f3 0f 58 c0                                     	addss  xmm0,xmm0
  3a6972:	f3 0f 5e 05 72 65 f0 ff                         	divss  xmm0,DWORD PTR [rip+0xfffffffffff06572]        # 0x2aceec
  3a697a:	f3 41 0f 5c c2                                  	subss  xmm0,xmm10
  3a697f:	e8 a8 cd f3 ff                                  	call   0x2e372c
  3a6984:	66 41 0f 6e ce                                  	movd   xmm1,r14d
  3a6989:	0f 28 f8                                        	movaps xmm7,xmm0
  3a698c:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3a698f:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3a6993:	f3 0f 59 ce                                     	mulss  xmm1,xmm6
  3a6997:	f3 0f 58 c9                                     	addss  xmm1,xmm1
  3a699b:	f3 0f 5e 0d 49 65 f0 ff                         	divss  xmm1,DWORD PTR [rip+0xfffffffffff06549]        # 0x2aceec
  3a69a3:	f3 0f 5c c1                                     	subss  xmm0,xmm1
  3a69a7:	e8 80 cd f3 ff                                  	call   0x2e372c
  3a69ac:	f3 0f 10 35 1c 71 ee ff                         	movss  xmm6,DWORD PTR [rip+0xffffffffffee711c]        # 0x28dad0
  3a69b4:	48 8d 6e 78                                     	lea    rbp,[rsi+0x78]
  3a69b8:	0f 2f c6                                        	comiss xmm0,xmm6
  3a69bb:	48 8b cd                                        	mov    rcx,rbp
  3a69be:	41 0f 93 c4                                     	setae  r12b
  3a69c2:	33 c0                                           	xor    eax,eax
  3a69c4:	0f 2f fe                                        	comiss xmm7,xmm6
  3a69c7:	0f 93 c0                                        	setae  al
  3a69ca:	33 d2                                           	xor    edx,edx
  3a69cc:	ff c0                                           	inc    eax
  3a69ce:	0f 2f c6                                        	comiss xmm0,xmm6
  3a69d1:	0f 93 c2                                        	setae  dl
  3a69d4:	03 d0                                           	add    edx,eax
  3a69d6:	03 55 00                                        	add    edx,DWORD PTR [rbp+0x0]
  3a69d9:	41 03 d7                                        	add    edx,r15d
  3a69dc:	e8 77 3d fd ff                                  	call   0x37a758
  3a69e1:	0f 2f fe                                        	comiss xmm7,xmm6
  3a69e4:	72 43                                           	jb     0x3a6a29
  3a69e6:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3a69ea:	e8 7d 24 02 00                                  	call   0x3c8e6c
  3a69ef:	0f 28 f0                                        	movaps xmm6,xmm0
  3a69f2:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3a69f6:	f3 41 0f 59 f1                                  	mulss  xmm6,xmm9
  3a69fb:	f3 0f 58 77 04                                  	addss  xmm6,DWORD PTR [rdi+0x4]
  3a6a00:	e8 97 1f 02 00                                  	call   0x3c899c
  3a6a05:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  3a6a0a:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a6a0f:	0f 28 d6                                        	movaps xmm2,xmm6
  3a6a12:	f3 0f 58 07                                     	addss  xmm0,DWORD PTR [rdi]
  3a6a16:	0f 28 c8                                        	movaps xmm1,xmm0
  3a6a19:	e8 22 59 f2 ff                                  	call   0x2cc340
  3a6a1e:	48 8b d0                                        	mov    rdx,rax
  3a6a21:	48 8b cd                                        	mov    rcx,rbp
  3a6a24:	e8 2f 3c fd ff                                  	call   0x37a658
  3a6a29:	45 85 ff                                        	test   r15d,r15d
  3a6a2c:	7e 1f                                           	jle    0x3a6a4d
  3a6a2e:	c7 44 24 28 00 00 00 00                         	mov    DWORD PTR [rsp+0x28],0x0
  3a6a36:	44 8b cb                                        	mov    r9d,ebx
  3a6a39:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3a6a3d:	44 89 74 24 20                                  	mov    DWORD PTR [rsp+0x20],r14d
  3a6a42:	48 8b d7                                        	mov    rdx,rdi
  3a6a45:	48 8b ce                                        	mov    rcx,rsi
  3a6a48:	e8 9f 24 00 00                                  	call   0x3a8eec
  3a6a4d:	45 84 e4                                        	test   r12b,r12b
  3a6a50:	0f 84 b2 00 00 00                               	je     0x3a6b08
  3a6a56:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3a6a5a:	e8 0d 24 02 00                                  	call   0x3c8e6c
  3a6a5f:	0f 28 f0                                        	movaps xmm6,xmm0
  3a6a62:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3a6a66:	f3 41 0f 59 f1                                  	mulss  xmm6,xmm9
  3a6a6b:	f3 0f 58 77 04                                  	addss  xmm6,DWORD PTR [rdi+0x4]
  3a6a70:	e8 27 1f 02 00                                  	call   0x3c899c
  3a6a75:	f3 41 0f 59 c1                                  	mulss  xmm0,xmm9
  3a6a7a:	48 8d 4c 24 30                                  	lea    rcx,[rsp+0x30]
  3a6a7f:	0f 28 d6                                        	movaps xmm2,xmm6
  3a6a82:	f3 0f 58 07                                     	addss  xmm0,DWORD PTR [rdi]
  3a6a86:	0f 28 c8                                        	movaps xmm1,xmm0
  3a6a89:	e8 b2 58 f2 ff                                  	call   0x2cc340
  3a6a8e:	48 8b d0                                        	mov    rdx,rax
  3a6a91:	48 8b cd                                        	mov    rcx,rbp
  3a6a94:	e8 bf 3b fd ff                                  	call   0x37a658
  3a6a99:	eb 6d                                           	jmp    0x3a6b08
  3a6a9b:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3a6a9f:	f3 41 0f 5c c2                                  	subss  xmm0,xmm10
  3a6aa4:	e8 83 cc f3 ff                                  	call   0x2e372c
  3a6aa9:	f3 0f 10 3d 37 64 f0 ff                         	movss  xmm7,DWORD PTR [rip+0xfffffffffff06437]        # 0x2acee8
  3a6ab1:	0f 28 f0                                        	movaps xmm6,xmm0
  3a6ab4:	0f 28 cf                                        	movaps xmm1,xmm7
  3a6ab7:	48 8b ce                                        	mov    rcx,rsi
  3a6aba:	f3 0f 5e ce                                     	divss  xmm1,xmm6
  3a6abe:	f3 0f 2c d9                                     	cvttss2si ebx,xmm1
  3a6ac2:	41 0f 28 c9                                     	movaps xmm1,xmm9
  3a6ac6:	e8 e9 21 00 00                                  	call   0x3a8cb4
  3a6acb:	66 0f 6e c0                                     	movd   xmm0,eax
  3a6acf:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3a6ad2:	f3 0f 59 c6                                     	mulss  xmm0,xmm6
  3a6ad6:	f3 0f 5e c7                                     	divss  xmm0,xmm7
  3a6ada:	e8 39 1e 02 00                                  	call   0x3c8918
  3a6adf:	f3 0f 2c c8                                     	cvttss2si ecx,xmm0
  3a6ae3:	8b d3                                           	mov    edx,ebx
  3a6ae5:	e8 a2 87 ff ff                                  	call   0x39f28c
  3a6aea:	89 44 24 28                                     	mov    DWORD PTR [rsp+0x28],eax
  3a6aee:	41 0f 28 da                                     	movaps xmm3,xmm10
  3a6af2:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3a6af9:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3a6afd:	48 8b d7                                        	mov    rdx,rdi
  3a6b00:	48 8b ce                                        	mov    rcx,rsi
  3a6b03:	e8 08 26 00 00                                  	call   0x3a9110
  3a6b08:	0f 28 7c 24 70                                  	movaps xmm7,XMMWORD PTR [rsp+0x70]
  3a6b0d:	4c 8d 9c 24 90 00 00 00                         	lea    r11,[rsp+0x90]
  3a6b15:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3a6b1a:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3a6b1f:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3a6b24:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3a6b29:	49 8b e3                                        	mov    rsp,r11
  3a6b2c:	41 5f                                           	pop    r15
  3a6b2e:	41 5e                                           	pop    r14
  3a6b30:	41 5c                                           	pop    r12
  3a6b32:	5f                                              	pop    rdi
  3a6b33:	5e                                              	pop    rsi
  3a6b34:	5d                                              	pop    rbp
  3a6b35:	5b                                              	pop    rbx
  3a6b36:	c3                                              	ret
