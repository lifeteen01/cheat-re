
/home/john/Desktop/cheat_re/dump_analysis/unpacked/cheat.unpacked.dll:     file format binary


Disassembly of section .data:

00000000003b5ed0 <.data+0x3b5ed0>:
  3b5ed0:	48 8b c4                                        	mov    rax,rsp
  3b5ed3:	48 89 58 08                                     	mov    QWORD PTR [rax+0x8],rbx
  3b5ed7:	48 89 68 10                                     	mov    QWORD PTR [rax+0x10],rbp
  3b5edb:	44 89 48 20                                     	mov    DWORD PTR [rax+0x20],r9d
  3b5edf:	44 89 40 18                                     	mov    DWORD PTR [rax+0x18],r8d
  3b5ee3:	56                                              	push   rsi
  3b5ee4:	57                                              	push   rdi
  3b5ee5:	41 56                                           	push   r14
  3b5ee7:	48 81 ec b0 00 00 00                            	sub    rsp,0xb0
  3b5eee:	0f 29 70 d8                                     	movaps XMMWORD PTR [rax-0x28],xmm6
  3b5ef2:	41 8b f9                                        	mov    edi,r9d
  3b5ef5:	0f 29 78 c8                                     	movaps XMMWORD PTR [rax-0x38],xmm7
  3b5ef9:	41 8b d8                                        	mov    ebx,r8d
  3b5efc:	44 0f 29 40 b8                                  	movaps XMMWORD PTR [rax-0x48],xmm8
  3b5f01:	8b ea                                           	mov    ebp,edx
  3b5f03:	44 0f 29 48 a8                                  	movaps XMMWORD PTR [rax-0x58],xmm9
  3b5f08:	44 0f 29 50 98                                  	movaps XMMWORD PTR [rax-0x68],xmm10
  3b5f0d:	44 0f 29 58 88                                  	movaps XMMWORD PTR [rax-0x78],xmm11
  3b5f12:	44 0f 29 64 24 40                               	movaps XMMWORD PTR [rsp+0x40],xmm12
  3b5f18:	44 0f 29 6c 24 30                               	movaps XMMWORD PTR [rsp+0x30],xmm13
  3b5f1e:	44 0f 29 74 24 20                               	movaps XMMWORD PTR [rsp+0x20],xmm14
  3b5f24:	45 3b c1                                        	cmp    r8d,r9d
  3b5f27:	75 08                                           	jne    0x3b5f31
  3b5f29:	0f 57 c0                                        	xorps  xmm0,xmm0
  3b5f2c:	e9 64 02 00 00                                  	jmp    0x3b6195
  3b5f31:	8b cd                                           	mov    ecx,ebp
  3b5f33:	7d 07                                           	jge    0x3b5f3c
  3b5f35:	44 8b c7                                        	mov    r8d,edi
  3b5f38:	8b d3                                           	mov    edx,ebx
  3b5f3a:	eb 02                                           	jmp    0x3b5f3e
  3b5f3c:	8b d7                                           	mov    edx,edi
  3b5f3e:	e8 69 03 fc ff                                  	call   0x3762ac
  3b5f43:	80 bc 24 f0 00 00 00 00                         	cmp    BYTE PTR [rsp+0xf0],0x0
  3b5f4b:	8b f0                                           	mov    esi,eax
  3b5f4d:	0f 84 2c 02 00 00                               	je     0x3b617f
  3b5f53:	3b fb                                           	cmp    edi,ebx
  3b5f55:	41 0f 9c c6                                     	setl   r14b
  3b5f59:	7d 23                                           	jge    0x3b5f7e
  3b5f5b:	48 8d 94 24 e8 00 00 00                         	lea    rdx,[rsp+0xe8]
  3b5f63:	48 8d 8c 24 e0 00 00 00                         	lea    rcx,[rsp+0xe0]
  3b5f6b:	e8 38 fc ff ff                                  	call   0x3b5ba8
  3b5f70:	8b bc 24 e8 00 00 00                            	mov    edi,DWORD PTR [rsp+0xe8]
  3b5f77:	8b 9c 24 e0 00 00 00                            	mov    ebx,DWORD PTR [rsp+0xe0]
  3b5f7e:	66 44 0f 6e eb                                  	movd   xmm13,ebx
  3b5f83:	45 0f 5b ed                                     	cvtdq2ps xmm13,xmm13
  3b5f87:	41 0f 28 c5                                     	movaps xmm0,xmm13
  3b5f8b:	e8 9c d7 f2 ff                                  	call   0x2e372c
  3b5f90:	f3 44 0f 10 a4 24 f8 00 00 00                   	movss  xmm12,DWORD PTR [rsp+0xf8]
  3b5f9a:	0f 57 ff                                        	xorps  xmm7,xmm7
  3b5f9d:	44 0f 2f e0                                     	comiss xmm12,xmm0
  3b5fa1:	f3 44 0f 10 35 f6 d2 ed ff                      	movss  xmm14,DWORD PTR [rip+0xffffffffffedd2f6]        # 0x2932a0
  3b5faa:	76 10                                           	jbe    0x3b5fbc
  3b5fac:	41 0f 2f fd                                     	comiss xmm7,xmm13
  3b5fb0:	45 0f 28 cc                                     	movaps xmm9,xmm12
  3b5fb4:	76 0a                                           	jbe    0x3b5fc0
  3b5fb6:	45 0f 57 ce                                     	xorps  xmm9,xmm14
  3b5fba:	eb 04                                           	jmp    0x3b5fc0
  3b5fbc:	45 0f 28 cd                                     	movaps xmm9,xmm13
  3b5fc0:	66 0f 6e f7                                     	movd   xmm6,edi
  3b5fc4:	0f 5b f6                                        	cvtdq2ps xmm6,xmm6
  3b5fc7:	0f 28 c6                                        	movaps xmm0,xmm6
  3b5fca:	e8 5d d7 f2 ff                                  	call   0x2e372c
  3b5fcf:	44 0f 2f e0                                     	comiss xmm12,xmm0
  3b5fd3:	76 0f                                           	jbe    0x3b5fe4
  3b5fd5:	0f 2f fe                                        	comiss xmm7,xmm6
  3b5fd8:	45 0f 28 c4                                     	movaps xmm8,xmm12
  3b5fdc:	76 0a                                           	jbe    0x3b5fe8
  3b5fde:	45 0f 57 c6                                     	xorps  xmm8,xmm14
  3b5fe2:	eb 04                                           	jmp    0x3b5fe8
  3b5fe4:	44 0f 28 c6                                     	movaps xmm8,xmm6
  3b5fe8:	44 0f 2e ef                                     	ucomiss xmm13,xmm7
  3b5fec:	41 0f 28 c4                                     	movaps xmm0,xmm12
  3b5ff0:	41 0f 57 c6                                     	xorps  xmm0,xmm14
  3b5ff4:	7a 0d                                           	jp     0x3b6003
  3b5ff6:	75 0b                                           	jne    0x3b6003
  3b5ff8:	0f 2f fe                                        	comiss xmm7,xmm6
  3b5ffb:	76 06                                           	jbe    0x3b6003
  3b5ffd:	44 0f 28 c8                                     	movaps xmm9,xmm0
  3b6001:	eb 11                                           	jmp    0x3b6014
  3b6003:	0f 2e f7                                        	ucomiss xmm6,xmm7
  3b6006:	7a 0c                                           	jp     0x3b6014
  3b6008:	75 0a                                           	jne    0x3b6014
  3b600a:	41 0f 2f fd                                     	comiss xmm7,xmm13
  3b600e:	76 04                                           	jbe    0x3b6014
  3b6010:	44 0f 28 c0                                     	movaps xmm8,xmm0
  3b6014:	f3 44 0f 10 15 37 72 ed ff                      	movss  xmm10,DWORD PTR [rip+0xffffffffffed7237]        # 0x28d254
  3b601d:	66 0f 6e ce                                     	movd   xmm1,esi
  3b6021:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b6024:	44 0f 2f c9                                     	comiss xmm9,xmm1
  3b6028:	0f 83 3b 01 00 00                               	jae    0x3b6169
  3b602e:	41 0f 2f c8                                     	comiss xmm1,xmm8
  3b6032:	72 09                                           	jb     0x3b603d
  3b6034:	41 0f 28 fa                                     	movaps xmm7,xmm10
  3b6038:	e9 2c 01 00 00                                  	jmp    0x3b6169
  3b603d:	0f af df                                        	imul   ebx,edi
  3b6040:	66 0f 6e c3                                     	movd   xmm0,ebx
  3b6044:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3b6047:	0f 2f f8                                        	comiss xmm7,xmm0
  3b604a:	0f 86 b4 00 00 00                               	jbe    0x3b6104
  3b6050:	66 0f 6e c5                                     	movd   xmm0,ebp
  3b6054:	f3 41 0f 5c f5                                  	subss  xmm6,xmm13
  3b6059:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3b605c:	45 0f 28 dd                                     	movaps xmm11,xmm13
  3b6060:	0f 2e c7                                        	ucomiss xmm0,xmm7
  3b6063:	45 0f 57 de                                     	xorps  xmm11,xmm14
  3b6067:	f3 44 0f 5e de                                  	divss  xmm11,xmm6
  3b606c:	7a 0b                                           	jp     0x3b6079
  3b606e:	75 09                                           	jne    0x3b6079
  3b6070:	41 0f 28 fb                                     	movaps xmm7,xmm11
  3b6074:	e9 f0 00 00 00                                  	jmp    0x3b6169
  3b6079:	0f 2f f8                                        	comiss xmm7,xmm0
  3b607c:	76 46                                           	jbe    0x3b60c4
  3b607e:	41 0f 57 ce                                     	xorps  xmm1,xmm14
  3b6082:	f3 41 0f 5e cc                                  	divss  xmm1,xmm12
  3b6087:	0f 28 c1                                        	movaps xmm0,xmm1
  3b608a:	e8 a5 9f 00 00                                  	call   0x3c0034
  3b608f:	45 0f 57 ce                                     	xorps  xmm9,xmm14
  3b6093:	0f 28 f0                                        	movaps xmm6,xmm0
  3b6096:	f3 45 0f 5e cc                                  	divss  xmm9,xmm12
  3b609b:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b609f:	e8 90 9f 00 00                                  	call   0x3c0034
  3b60a4:	f3 44 0f 5c 9c 24 00 01 00 00                   	subss  xmm11,DWORD PTR [rsp+0x100]
  3b60ae:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3b60b2:	41 0f 28 fa                                     	movaps xmm7,xmm10
  3b60b6:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  3b60ba:	f3 41 0f 59 fb                                  	mulss  xmm7,xmm11
  3b60bf:	e9 a5 00 00 00                                  	jmp    0x3b6169
  3b60c4:	f3 44 0f 58 9c 24 00 01 00 00                   	addss  xmm11,DWORD PTR [rsp+0x100]
  3b60ce:	f3 41 0f 5e cc                                  	divss  xmm1,xmm12
  3b60d3:	0f 28 c1                                        	movaps xmm0,xmm1
  3b60d6:	e8 59 9f 00 00                                  	call   0x3c0034
  3b60db:	f3 45 0f 5e c4                                  	divss  xmm8,xmm12
  3b60e0:	0f 28 f8                                        	movaps xmm7,xmm0
  3b60e3:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b60e7:	e8 48 9f 00 00                                  	call   0x3c0034
  3b60ec:	f3 0f 5e f8                                     	divss  xmm7,xmm0
  3b60f0:	41 0f 28 ca                                     	movaps xmm1,xmm10
  3b60f4:	f3 41 0f 5c cb                                  	subss  xmm1,xmm11
  3b60f9:	f3 0f 59 f9                                     	mulss  xmm7,xmm1
  3b60fd:	f3 41 0f 58 fb                                  	addss  xmm7,xmm11
  3b6102:	eb 65                                           	jmp    0x3b6169
  3b6104:	41 0f 2f fd                                     	comiss xmm7,xmm13
  3b6108:	77 29                                           	ja     0x3b6133
  3b610a:	0f 2f fe                                        	comiss xmm7,xmm6
  3b610d:	77 24                                           	ja     0x3b6133
  3b610f:	f3 41 0f 5e c9                                  	divss  xmm1,xmm9
  3b6114:	0f 28 c1                                        	movaps xmm0,xmm1
  3b6117:	e8 18 9f 00 00                                  	call   0x3c0034
  3b611c:	f3 45 0f 5e c1                                  	divss  xmm8,xmm9
  3b6121:	0f 28 f8                                        	movaps xmm7,xmm0
  3b6124:	41 0f 28 c0                                     	movaps xmm0,xmm8
  3b6128:	e8 07 9f 00 00                                  	call   0x3c0034
  3b612d:	f3 0f 5e f8                                     	divss  xmm7,xmm0
  3b6131:	eb 36                                           	jmp    0x3b6169
  3b6133:	41 0f 57 ce                                     	xorps  xmm1,xmm14
  3b6137:	45 0f 57 c6                                     	xorps  xmm8,xmm14
  3b613b:	f3 41 0f 5e c8                                  	divss  xmm1,xmm8
  3b6140:	0f 28 c1                                        	movaps xmm0,xmm1
  3b6143:	e8 ec 9e 00 00                                  	call   0x3c0034
  3b6148:	45 0f 57 ce                                     	xorps  xmm9,xmm14
  3b614c:	0f 28 f0                                        	movaps xmm6,xmm0
  3b614f:	f3 45 0f 5e c8                                  	divss  xmm9,xmm8
  3b6154:	41 0f 28 c1                                     	movaps xmm0,xmm9
  3b6158:	e8 d7 9e 00 00                                  	call   0x3c0034
  3b615d:	f3 0f 5e f0                                     	divss  xmm6,xmm0
  3b6161:	41 0f 28 fa                                     	movaps xmm7,xmm10
  3b6165:	f3 0f 5c fe                                     	subss  xmm7,xmm6
  3b6169:	45 84 f6                                        	test   r14b,r14b
  3b616c:	74 07                                           	je     0x3b6175
  3b616e:	f3 44 0f 5c d7                                  	subss  xmm10,xmm7
  3b6173:	eb 04                                           	jmp    0x3b6179
  3b6175:	44 0f 28 d7                                     	movaps xmm10,xmm7
  3b6179:	41 0f 28 c2                                     	movaps xmm0,xmm10
  3b617d:	eb 16                                           	jmp    0x3b6195
  3b617f:	2b f3                                           	sub    esi,ebx
  3b6181:	2b fb                                           	sub    edi,ebx
  3b6183:	66 0f 6e c6                                     	movd   xmm0,esi
  3b6187:	66 0f 6e cf                                     	movd   xmm1,edi
  3b618b:	0f 5b c9                                        	cvtdq2ps xmm1,xmm1
  3b618e:	0f 5b c0                                        	cvtdq2ps xmm0,xmm0
  3b6191:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  3b6195:	44 0f 28 74 24 20                               	movaps xmm14,XMMWORD PTR [rsp+0x20]
  3b619b:	4c 8d 9c 24 b0 00 00 00                         	lea    r11,[rsp+0xb0]
  3b61a3:	49 8b 5b 20                                     	mov    rbx,QWORD PTR [r11+0x20]
  3b61a7:	49 8b 6b 28                                     	mov    rbp,QWORD PTR [r11+0x28]
  3b61ab:	41 0f 28 73 f0                                  	movaps xmm6,XMMWORD PTR [r11-0x10]
  3b61b0:	41 0f 28 7b e0                                  	movaps xmm7,XMMWORD PTR [r11-0x20]
  3b61b5:	45 0f 28 43 d0                                  	movaps xmm8,XMMWORD PTR [r11-0x30]
  3b61ba:	45 0f 28 4b c0                                  	movaps xmm9,XMMWORD PTR [r11-0x40]
  3b61bf:	45 0f 28 53 b0                                  	movaps xmm10,XMMWORD PTR [r11-0x50]
  3b61c4:	45 0f 28 5b a0                                  	movaps xmm11,XMMWORD PTR [r11-0x60]
  3b61c9:	45 0f 28 63 90                                  	movaps xmm12,XMMWORD PTR [r11-0x70]
  3b61ce:	45 0f 28 6b 80                                  	movaps xmm13,XMMWORD PTR [r11-0x80]
  3b61d3:	49 8b e3                                        	mov    rsp,r11
  3b61d6:	41 5e                                           	pop    r14
  3b61d8:	5f                                              	pop    rdi
  3b61d9:	5e                                              	pop    rsi
  3b61da:	c3                                              	ret
