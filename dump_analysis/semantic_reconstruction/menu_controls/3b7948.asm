
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b7948 <.data+0x3b7948>:
  3b7948:	48 8b c4                                        	mov    rax,rsp
  3b794b:	48 81 ec d8 00 00 00                            	sub    rsp,0xd8
  3b7952:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3b7956:	0f 57 f6                                        	xorps  xmm6,xmm6
  3b7959:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3b795d:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3b7962:	44 0f 28 c2                                     	movaps xmm8,xmm2
  3b7966:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3b796b:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3b7970:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  3b7975:	44 0f 28 db                                     	movaps xmm11,xmm3
  3b7979:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3b797e:	44 0f 29 6c 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm13
  3b7984:	44 0f 29 74 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm14
  3b798a:	44 0f 28 f1                                     	movaps xmm14,xmm1
  3b798e:	41 0f 2f f6                                     	comiss xmm6,xmm14
  3b7992:	44 0f 29 7c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm15
  3b7998:	0f 83 67 02 00 00                               	jae    0x3b7c05
  3b799e:	45 0f 2e c3                                     	ucomiss xmm8,xmm11
  3b79a2:	7a 06                                           	jp     0x3b79aa
  3b79a4:	0f 84 5b 02 00 00                               	je     0x3b7c05
  3b79aa:	f3 44 0f 10 2d a1 58 ed ff                      	movss  xmm13,DWORD PTR [rip+0xffffffffffed58a1]        # 0x28d254
  3b79b3:	45 0f 2f f5                                     	comiss xmm14,xmm13
  3b79b7:	72 09                                           	jb     0x3b79c2
  3b79b9:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b79bd:	e9 47 02 00 00                                  	jmp    0x3b7c09
  3b79c2:	80 bc 24 00 01 00 00 00                         	cmp    BYTE PTR [rsp+0x100],0x0
  3b79ca:	0f 84 d9 01 00 00                               	je     0x3b7ba9
  3b79d0:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b79d4:	e8 53 bd f2 ff                                  	call   0x2e372c
  3b79d9:	f3 44 0f 10 a4 24 08 01 00 00                   	movss  xmm12,DWORD PTR [rsp+0x108]
  3b79e3:	44 0f 2f e0                                     	comiss xmm12,xmm0
  3b79e7:	f3 44 0f 10 3d b0 b8 ed ff                      	movss  xmm15,DWORD PTR [rip+0xffffffffffedb8b0]        # 0x2932a0
  3b79f0:	76 10                                           	jbe    0x3b7a02
  3b79f2:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3b79f6:	45 0f 28 cc                                     	movaps xmm9,xmm12
  3b79fa:	76 0a                                           	jbe    0x3b7a06
  3b79fc:	45 0f 57 cf                                     	xorps  xmm9,xmm15
  3b7a00:	eb 04                                           	jmp    0x3b7a06
  3b7a02:	45 0f 28 c8                                     	movaps xmm9,xmm8
  3b7a06:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b7a0a:	f3 44 0f 11 8c 24 e8 00 00 00                   	movss  DWORD PTR [rsp+0xe8],xmm9
  3b7a14:	e8 13 bd f2 ff                                  	call   0x2e372c
  3b7a19:	44 0f 2f e0                                     	comiss xmm12,xmm0
  3b7a1d:	76 10                                           	jbe    0x3b7a2f
  3b7a1f:	41 0f 2f f3                                     	comiss xmm6,xmm11
  3b7a23:	41 0f 28 fc                                     	movaps xmm7,xmm12
  3b7a27:	76 0a                                           	jbe    0x3b7a33
  3b7a29:	41 0f 57 ff                                     	xorps  xmm7,xmm15
  3b7a2d:	eb 04                                           	jmp    0x3b7a33
  3b7a2f:	41 0f 28 fb                                     	movaps xmm7,xmm11
  3b7a33:	45 0f 2f c3                                     	comiss xmm8,xmm11
  3b7a37:	f3 0f 11 7c 24 20                               	movss  DWORD PTR [rsp+0x20],xmm7
  3b7a3d:	41 0f 97 c0                                     	seta   r8b
  3b7a41:	45 84 c0                                        	test   r8b,r8b
  3b7a44:	74 22                                           	je     0x3b7a68
  3b7a46:	48 8d 54 24 20                                  	lea    rdx,[rsp+0x20]
  3b7a4b:	48 8d 8c 24 e8 00 00 00                         	lea    rcx,[rsp+0xe8]
  3b7a53:	e8 a4 29 fd ff                                  	call   0x38a3fc
  3b7a58:	f3 44 0f 10 8c 24 e8 00 00 00                   	movss  xmm9,DWORD PTR [rsp+0xe8]
  3b7a62:	f3 0f 10 7c 24 20                               	movss  xmm7,DWORD PTR [rsp+0x20]
  3b7a68:	44 0f 2e de                                     	ucomiss xmm11,xmm6
  3b7a6c:	7a 10                                           	jp     0x3b7a7e
  3b7a6e:	75 0e                                           	jne    0x3b7a7e
  3b7a70:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3b7a74:	76 08                                           	jbe    0x3b7a7e
  3b7a76:	41 0f 28 fc                                     	movaps xmm7,xmm12
  3b7a7a:	41 0f 57 ff                                     	xorps  xmm7,xmm15
  3b7a7e:	45 84 c0                                        	test   r8b,r8b
  3b7a81:	74 0b                                           	je     0x3b7a8e
  3b7a83:	45 0f 28 d5                                     	movaps xmm10,xmm13
  3b7a87:	f3 45 0f 5c d6                                  	subss  xmm10,xmm14
  3b7a8c:	eb 04                                           	jmp    0x3b7a92
  3b7a8e:	45 0f 28 d6                                     	movaps xmm10,xmm14
  3b7a92:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b7a96:	f3 41 0f 59 c3                                  	mulss  xmm0,xmm11
  3b7a9b:	0f 2f f0                                        	comiss xmm6,xmm0
  3b7a9e:	0f 86 af 00 00 00                               	jbe    0x3b7b53
  3b7aa4:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3b7aa8:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b7aac:	e8 1b e8 fb ff                                  	call   0x3762cc
  3b7ab1:	44 0f 28 f0                                     	movaps xmm14,xmm0
  3b7ab5:	f3 45 0f 5c d8                                  	subss  xmm11,xmm8
  3b7aba:	45 0f 57 f7                                     	xorps  xmm14,xmm15
  3b7abe:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b7ac2:	e8 65 bc f2 ff                                  	call   0x2e372c
  3b7ac7:	f3 44 0f 5e f0                                  	divss  xmm14,xmm0
  3b7acc:	41 0f 28 d6                                     	movaps xmm2,xmm14
  3b7ad0:	41 0f 28 ce                                     	movaps xmm1,xmm14
  3b7ad4:	f3 0f 5c 94 24 10 01 00 00                      	subss  xmm2,DWORD PTR [rsp+0x110]
  3b7add:	f3 0f 58 8c 24 10 01 00 00                      	addss  xmm1,DWORD PTR [rsp+0x110]
  3b7ae6:	44 0f 2f d2                                     	comiss xmm10,xmm2
  3b7aea:	72 0a                                           	jb     0x3b7af6
  3b7aec:	41 0f 2f ca                                     	comiss xmm1,xmm10
  3b7af0:	0f 83 0a 01 00 00                               	jae    0x3b7c00
  3b7af6:	45 0f 2f f2                                     	comiss xmm14,xmm10
  3b7afa:	76 2a                                           	jbe    0x3b7b26
  3b7afc:	45 0f 57 cf                                     	xorps  xmm9,xmm15
  3b7b00:	f3 44 0f 5e d2                                  	divss  xmm10,xmm2
  3b7b05:	f3 45 0f 5e cc                                  	divss  xmm9,xmm12
  3b7b0a:	f3 45 0f 5c ea                                  	subss  xmm13,xmm10
  3b7b0f:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b7b13:	41 0f 28 cd                                     	movaps xmm1,xmm13
  3b7b17:	e8 70 ea fe ff                                  	call   0x3a658c
  3b7b1c:	0f 28 f0                                        	movaps xmm6,xmm0
  3b7b1f:	f3 41 0f 59 f4                                  	mulss  xmm6,xmm12
  3b7b24:	eb 7d                                           	jmp    0x3b7ba3
  3b7b26:	f3 44 0f 5c d1                                  	subss  xmm10,xmm1
  3b7b2b:	f3 44 0f 5c e9                                  	subss  xmm13,xmm1
  3b7b30:	f3 41 0f 5e fc                                  	divss  xmm7,xmm12
  3b7b35:	f3 45 0f 5e d5                                  	divss  xmm10,xmm13
  3b7b3a:	0f 28 c7                                        	movaps xmm0,xmm7
  3b7b3d:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b7b41:	e8 46 ea fe ff                                  	call   0x3a658c
  3b7b46:	0f 28 f0                                        	movaps xmm6,xmm0
  3b7b49:	f3 41 0f 59 f4                                  	mulss  xmm6,xmm12
  3b7b4e:	e9 ad 00 00 00                                  	jmp    0x3b7c00
  3b7b53:	41 0f 2f f0                                     	comiss xmm6,xmm8
  3b7b57:	77 24                                           	ja     0x3b7b7d
  3b7b59:	41 0f 2f f3                                     	comiss xmm6,xmm11
  3b7b5d:	77 1e                                           	ja     0x3b7b7d
  3b7b5f:	f3 41 0f 5e f9                                  	divss  xmm7,xmm9
  3b7b64:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b7b68:	0f 28 c7                                        	movaps xmm0,xmm7
  3b7b6b:	e8 1c ea fe ff                                  	call   0x3a658c
  3b7b70:	0f 28 f0                                        	movaps xmm6,xmm0
  3b7b73:	f3 41 0f 59 f1                                  	mulss  xmm6,xmm9
  3b7b78:	e9 83 00 00 00                                  	jmp    0x3b7c00
  3b7b7d:	45 0f 57 cf                                     	xorps  xmm9,xmm15
  3b7b81:	f3 45 0f 5c ea                                  	subss  xmm13,xmm10
  3b7b86:	41 0f 57 ff                                     	xorps  xmm7,xmm15
  3b7b8a:	f3 44 0f 5e cf                                  	divss  xmm9,xmm7
  3b7b8f:	41 0f 28 cd                                     	movaps xmm1,xmm13
  3b7b93:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b7b97:	e8 f0 e9 fe ff                                  	call   0x3a658c
  3b7b9c:	0f 28 f0                                        	movaps xmm6,xmm0
  3b7b9f:	f3 0f 59 f7                                     	mulss  xmm6,xmm7
  3b7ba3:	41 0f 57 f7                                     	xorps  xmm6,xmm15
  3b7ba7:	eb 57                                           	jmp    0x3b7c00
  3b7ba9:	8d 41 f8                                        	lea    eax,[rcx-0x8]
  3b7bac:	83 f8 01                                        	cmp    eax,0x1
  3b7baf:	77 16                                           	ja     0x3b7bc7
  3b7bb1:	41 0f 28 d6                                     	movaps xmm2,xmm14
  3b7bb5:	41 0f 28 cb                                     	movaps xmm1,xmm11
  3b7bb9:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b7bbd:	e8 9a da f7 ff                                  	call   0x33565c
  3b7bc2:	0f 28 f0                                        	movaps xmm6,xmm0
  3b7bc5:	eb 39                                           	jmp    0x3b7c00
  3b7bc7:	45 0f 2f ee                                     	comiss xmm13,xmm14
  3b7bcb:	76 33                                           	jbe    0x3b7c00
  3b7bcd:	45 0f 2f c3                                     	comiss xmm8,xmm11
  3b7bd1:	41 0f 28 c3                                     	movaps xmm0,xmm11
  3b7bd5:	f3 41 0f 5c c0                                  	subss  xmm0,xmm8
  3b7bda:	f3 41 0f 59 c6                                  	mulss  xmm0,xmm14
  3b7bdf:	76 0a                                           	jbe    0x3b7beb
  3b7be1:	f2 0f 10 0d c7 5d ef ff                         	movsd  xmm1,QWORD PTR [rip+0xffffffffffef5dc7]        # 0x2ad9b0
  3b7be9:	eb 08                                           	jmp    0x3b7bf3
  3b7beb:	f2 0f 10 0d 25 b5 ed ff                         	movsd  xmm1,QWORD PTR [rip+0xffffffffffedb525]        # 0x293118
  3b7bf3:	66 0f 5a f1                                     	cvtpd2ps xmm6,xmm1
  3b7bf7:	f3 0f 58 f0                                     	addss  xmm6,xmm0
  3b7bfb:	f3 41 0f 58 f0                                  	addss  xmm6,xmm8
  3b7c00:	0f 28 c6                                        	movaps xmm0,xmm6
  3b7c03:	eb 04                                           	jmp    0x3b7c09
  3b7c05:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b7c09:	44 0f 28 6c 24 50                               	movaps xmm13,XMMWORD PTR [rsp+0x50]
  3b7c0f:	4c 8d 9c 24 d8 00 00 00                         	lea    r11,[rsp+0xd8]
  3b7c17:	41 0f 28 73 e8                                  	movaps xmm6,XMMWORD PTR [r11-0x18]
  3b7c1c:	41 0f 28 7b d8                                  	movaps xmm7,XMMWORD PTR [r11-0x28]
  3b7c21:	45 0f 28 43 c8                                  	movaps xmm8,XMMWORD PTR [r11-0x38]
  3b7c26:	45 0f 28 4b b8                                  	movaps xmm9,XMMWORD PTR [r11-0x48]
  3b7c2b:	45 0f 28 53 a8                                  	movaps xmm10,XMMWORD PTR [r11-0x58]
  3b7c30:	45 0f 28 5b 98                                  	movaps xmm11,XMMWORD PTR [r11-0x68]
  3b7c35:	45 0f 28 63 88                                  	movaps xmm12,XMMWORD PTR [r11-0x78]
  3b7c3a:	44 0f 28 74 24 40                               	movaps xmm14,XMMWORD PTR [rsp+0x40]
  3b7c40:	44 0f 28 7c 24 30                               	movaps xmm15,XMMWORD PTR [rsp+0x30]
  3b7c46:	49 8b e3                                        	mov    rsp,r11
  3b7c49:	c3                                              	ret
