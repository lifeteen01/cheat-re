
dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003ad8f8 <.data+0x3ad8f8>:
  3ad8f8:	48 8b c4                                        	mov    rax,rsp
  3ad8fb:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3ad8ff:	48 89 70 10                                     	mov    QWORD PTR [rax+0x10],rsi
  3ad903:	57                                              	push   rdi
  3ad904:	48 81 ec d0 00 00 00                            	sub    rsp,0xd0
  3ad90b:	8b 9c 24 28 01 00 00                            	mov    ebx,DWORD PTR [rsp+0x128]
  3ad912:	48 8b fa                                        	mov    rdi,rdx
  3ad915:	0f 29 70 e8                                     	movaps XMMWORD PTR [rax-0x18],xmm6
  3ad919:	48 8b f1                                        	mov    rsi,rcx
  3ad91c:	0f 29 78 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm7
  3ad920:	44 0f 29 40 c8                                  	movaps XMMWORD PTR [rax-0x38],xmm8
  3ad925:	44 0f 29 48 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm9
  3ad92a:	44 0f 29 50 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm10
  3ad92f:	44 0f 29 58 98                                  	movaps XMMWORD PTR [rax-0x68],xmm11
  3ad934:	44 0f 29 60 88                                  	movaps XMMWORD PTR [rax-0x78],xmm12
  3ad939:	44 0f 29 6c 24 50                               	movaps XMMWORD PTR [rsp+0x50],xmm13
  3ad93f:	83 fb 10                                        	cmp    ebx,0x10
  3ad942:	0f 8f 4c 01 00 00                               	jg     0x3ada94
  3ad948:	f3 0f 10 05 5c 57 ee ff                         	movss  xmm0,DWORD PTR [rip+0xffffffffffee575c]        # 0x2930ac
  3ad950:	0f 28 ca                                        	movaps xmm1,xmm2
  3ad953:	f3 44 0f 10 84 24 00 01 00 00                   	movss  xmm8,DWORD PTR [rsp+0x100]
  3ad95d:	f3 44 0f 10 94 24 08 01 00 00                   	movss  xmm10,DWORD PTR [rsp+0x108]
  3ad967:	45 0f 28 c8                                     	movaps xmm9,xmm8
  3ad96b:	f3 0f 10 b4 24 10 01 00 00                      	movss  xmm6,DWORD PTR [rsp+0x110]
  3ad974:	f3 45 0f 58 c8                                  	addss  xmm9,xmm8
  3ad979:	f3 0f 10 bc 24 18 01 00 00                      	movss  xmm7,DWORD PTR [rsp+0x118]
  3ad982:	f3 0f 58 ce                                     	addss  xmm1,xmm6
  3ad986:	f3 44 0f 10 25 c1 f8 ed ff                      	movss  xmm12,DWORD PTR [rip+0xffffffffffedf8c1]        # 0x28d250
  3ad98f:	45 0f 28 da                                     	movaps xmm11,xmm10
  3ad993:	f3 44 0f 10 ac 24 20 01 00 00                   	movss  xmm13,DWORD PTR [rsp+0x120]
  3ad99d:	f3 45 0f 58 da                                  	addss  xmm11,xmm10
  3ad9a2:	f3 44 0f 58 ca                                  	addss  xmm9,xmm2
  3ad9a7:	f3 41 0f 59 cc                                  	mulss  xmm1,xmm12
  3ad9ac:	f3 44 0f 58 db                                  	addss  xmm11,xmm3
  3ad9b1:	f3 44 0f 58 ce                                  	addss  xmm9,xmm6
  3ad9b6:	f3 44 0f 58 df                                  	addss  xmm11,xmm7
  3ad9bb:	f3 44 0f 59 c8                                  	mulss  xmm9,xmm0
  3ad9c0:	f3 44 0f 59 d8                                  	mulss  xmm11,xmm0
  3ad9c5:	0f 28 c3                                        	movaps xmm0,xmm3
  3ad9c8:	f3 0f 58 c7                                     	addss  xmm0,xmm7
  3ad9cc:	f3 41 0f 5c c9                                  	subss  xmm1,xmm9
  3ad9d1:	f3 41 0f 59 c4                                  	mulss  xmm0,xmm12
  3ad9d6:	f3 0f 59 c9                                     	mulss  xmm1,xmm1
  3ad9da:	f3 41 0f 5c c3                                  	subss  xmm0,xmm11
  3ad9df:	f3 0f 59 c0                                     	mulss  xmm0,xmm0
  3ad9e3:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  3ad9e7:	41 0f 2f c5                                     	comiss xmm0,xmm13
  3ad9eb:	0f 86 94 00 00 00                               	jbe    0x3ada85
  3ad9f1:	0f 28 cb                                        	movaps xmm1,xmm3
  3ad9f4:	0f 28 c2                                        	movaps xmm0,xmm2
  3ad9f7:	f3 41 0f 58 ca                                  	addss  xmm1,xmm10
  3ad9fc:	ff c3                                           	inc    ebx
  3ad9fe:	89 5c 24 48                                     	mov    DWORD PTR [rsp+0x48],ebx
  3ada02:	f3 41 0f 58 c0                                  	addss  xmm0,xmm8
  3ada07:	f3 44 0f 11 6c 24 40                            	movss  DWORD PTR [rsp+0x40],xmm13
  3ada0e:	f3 44 0f 11 5c 24 38                            	movss  DWORD PTR [rsp+0x38],xmm11
  3ada15:	f3 44 0f 11 4c 24 30                            	movss  DWORD PTR [rsp+0x30],xmm9
  3ada1c:	f3 41 0f 59 cc                                  	mulss  xmm1,xmm12
  3ada21:	f3 41 0f 59 c4                                  	mulss  xmm0,xmm12
  3ada26:	f3 0f 11 4c 24 28                               	movss  DWORD PTR [rsp+0x28],xmm1
  3ada2c:	f3 0f 11 44 24 20                               	movss  DWORD PTR [rsp+0x20],xmm0
  3ada32:	e8 c1 fe ff ff                                  	call   0x3ad8f8
  3ada37:	89 5c 24 48                                     	mov    DWORD PTR [rsp+0x48],ebx
  3ada3b:	f3 44 0f 58 d7                                  	addss  xmm10,xmm7
  3ada40:	f3 44 0f 11 6c 24 40                            	movss  DWORD PTR [rsp+0x40],xmm13
  3ada47:	f3 44 0f 58 c6                                  	addss  xmm8,xmm6
  3ada4c:	f3 0f 11 7c 24 38                               	movss  DWORD PTR [rsp+0x38],xmm7
  3ada52:	41 0f 28 db                                     	movaps xmm3,xmm11
  3ada56:	f3 0f 11 74 24 30                               	movss  DWORD PTR [rsp+0x30],xmm6
  3ada5c:	41 0f 28 d1                                     	movaps xmm2,xmm9
  3ada60:	48 8b d7                                        	mov    rdx,rdi
  3ada63:	48 8b ce                                        	mov    rcx,rsi
  3ada66:	f3 45 0f 59 d4                                  	mulss  xmm10,xmm12
  3ada6b:	f3 45 0f 59 c4                                  	mulss  xmm8,xmm12
  3ada70:	f3 44 0f 11 54 24 28                            	movss  DWORD PTR [rsp+0x28],xmm10
  3ada77:	f3 44 0f 11 44 24 20                            	movss  DWORD PTR [rsp+0x20],xmm8
  3ada7e:	e8 75 fe ff ff                                  	call   0x3ad8f8
  3ada83:	eb 0f                                           	jmp    0x3ada94
  3ada85:	8b 12                                           	mov    edx,DWORD PTR [rdx]
  3ada87:	0f 28 df                                        	movaps xmm3,xmm7
  3ada8a:	0f 28 d6                                        	movaps xmm2,xmm6
  3ada8d:	e8 76 d4 ff ff                                  	call   0x3aaf08
  3ada92:	ff 07                                           	inc    DWORD PTR [rdi]
  3ada94:	4c 8d 9c 24 d0 00 00 00                         	lea    r11,[rsp+0xd0]
  3ada9c:	b8 01 00 00 00                                  	mov    eax,0x1
  3adaa1:	49 8b 5b 10                                     	mov    rbx,QWORD PTR [r11+0x10]
  3adaa5:	49 8b 73 18                                     	mov    rsi,QWORD PTR [r11+0x18]
  3adaa9:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3adaae:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3adab3:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3adab8:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3adabd:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3adac2:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3adac7:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3adacc:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3adad1:	49 8b e3                                        	mov    rsp,r11
  3adad4:	5f                                              	pop    rdi
  3adad5:	c3                                              	ret
